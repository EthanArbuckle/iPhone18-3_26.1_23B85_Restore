@interface ICSystemPaperDismissAction
- (ICSystemPaperDismissAction)initWithReason:(id)a3;
- (NSString)dismissalReason;
- (id)keyDescriptionForSetting:(unint64_t)a3;
@end

@implementation ICSystemPaperDismissAction

- (ICSystemPaperDismissAction)initWithReason:(id)a3
{
  v4 = MEMORY[0x277CF0C80];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:v5 forSetting:1];

  v9.receiver = self;
  v9.super_class = ICSystemPaperDismissAction;
  v7 = [(ICSystemPaperDismissAction *)&v9 initWithInfo:v6 responder:0];

  return v7;
}

- (NSString)dismissalReason
{
  v2 = [(ICSystemPaperDismissAction *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  if (a3 == 1)
  {
    return @"dismissalReason";
  }

  else
  {
    return 0;
  }
}

@end