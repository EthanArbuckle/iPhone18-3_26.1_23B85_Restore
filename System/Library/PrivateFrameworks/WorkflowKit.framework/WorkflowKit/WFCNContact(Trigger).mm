@interface WFCNContact(Trigger)
- (id)triggerDisplayName;
@end

@implementation WFCNContact(Trigger)

- (id)triggerDisplayName
{
  if ([self hasValueForPropertyID:19] && (objc_msgSend(self, "nickname"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "length"), v2, v3))
  {
    nickname = [self nickname];
  }

  else
  {
    nickname = [self formattedName];
  }

  return nickname;
}

@end