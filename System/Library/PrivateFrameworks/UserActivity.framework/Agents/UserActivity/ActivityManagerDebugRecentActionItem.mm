@interface ActivityManagerDebugRecentActionItem
- (ActivityManagerDebugRecentActionItem)initWithString:(id)string;
@end

@implementation ActivityManagerDebugRecentActionItem

- (ActivityManagerDebugRecentActionItem)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = ActivityManagerDebugRecentActionItem;
  v5 = [(ActivityManagerDebugRecentActionItem *)&v9 init];
  if (v5)
  {
    v6 = +[NSDate date];
    [(ActivityManagerDebugRecentActionItem *)v5 setWhen:v6];

    v7 = [stringCopy copy];
    [(ActivityManagerDebugRecentActionItem *)v5 setStr:v7];
  }

  return v5;
}

@end