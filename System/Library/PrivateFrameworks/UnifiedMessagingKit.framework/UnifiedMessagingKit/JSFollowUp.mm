@interface JSFollowUp
- (id)clearFollowUpWithBackingIdentifier:(id)identifier;
- (id)pendingFollowUps:(id)ups;
@end

@implementation JSFollowUp

- (id)clearFollowUpWithBackingIdentifier:(id)identifier
{
  sub_2705D7564();
  selfCopy = self;
  v5 = sub_270595570();

  return v5;
}

- (id)pendingFollowUps:(id)ups
{
  if (ups)
  {
    sub_2705D7464();
  }

  selfCopy = self;
  v5 = sub_270597F38();

  return v5;
}

@end