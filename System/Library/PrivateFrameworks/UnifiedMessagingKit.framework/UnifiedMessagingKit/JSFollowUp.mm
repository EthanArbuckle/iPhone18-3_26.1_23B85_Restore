@interface JSFollowUp
- (id)clearFollowUpWithBackingIdentifier:(id)a3;
- (id)pendingFollowUps:(id)a3;
@end

@implementation JSFollowUp

- (id)clearFollowUpWithBackingIdentifier:(id)a3
{
  sub_2705D7564();
  v4 = self;
  v5 = sub_270595570();

  return v5;
}

- (id)pendingFollowUps:(id)a3
{
  if (a3)
  {
    sub_2705D7464();
  }

  v4 = self;
  v5 = sub_270597F38();

  return v5;
}

@end