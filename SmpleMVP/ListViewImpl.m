//
//  ListViewImpl.m
//  SmpleMVP
//
//  Created by Raja on 20/09/15.
//  Copyright © 2015 CTS. All rights reserved.
//

#import "ListViewImpl.h"

@implementation ListViewImpl

- (instancetype)initWithListViewPresenter:(id<ListViewDelegate>)listPresenter
{
    if (self = [super init]) {
        self.listPresenter = listPresenter;
    }
    
    return self;
}

- (void)loadListFromPlist
{
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"ListSample" ofType:@"plist"];
    NSMutableArray *listArray = [NSMutableArray arrayWithContentsOfFile:plistPath];
    
    [self.listPresenter displaycontent:listArray];
}

@end
