@interface ICSystemPaperDismissAction
- (ICSystemPaperDismissAction)initWithReason:(id)reason;
- (NSString)dismissalReason;
- (id)keyDescriptionForSetting:(unint64_t)setting;
@end

@implementation ICSystemPaperDismissAction

- (ICSystemPaperDismissAction)initWithReason:(id)reason
{
  v4 = MEMORY[0x277CF0C80];
  reasonCopy = reason;
  v6 = objc_alloc_init(v4);
  [v6 setObject:reasonCopy forSetting:1];

  v9.receiver = self;
  v9.super_class = ICSystemPaperDismissAction;
  v7 = [(ICSystemPaperDismissAction *)&v9 initWithInfo:v6 responder:0];

  return v7;
}

- (NSString)dismissalReason
{
  info = [(ICSystemPaperDismissAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    return @"dismissalReason";
  }

  else
  {
    return 0;
  }
}

@end