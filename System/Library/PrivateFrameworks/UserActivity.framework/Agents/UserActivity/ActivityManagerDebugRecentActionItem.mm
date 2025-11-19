@interface ActivityManagerDebugRecentActionItem
- (ActivityManagerDebugRecentActionItem)initWithString:(id)a3;
@end

@implementation ActivityManagerDebugRecentActionItem

- (ActivityManagerDebugRecentActionItem)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ActivityManagerDebugRecentActionItem;
  v5 = [(ActivityManagerDebugRecentActionItem *)&v9 init];
  if (v5)
  {
    v6 = +[NSDate date];
    [(ActivityManagerDebugRecentActionItem *)v5 setWhen:v6];

    v7 = [v4 copy];
    [(ActivityManagerDebugRecentActionItem *)v5 setStr:v7];
  }

  return v5;
}

@end