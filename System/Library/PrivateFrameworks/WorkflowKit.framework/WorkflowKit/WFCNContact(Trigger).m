@interface WFCNContact(Trigger)
- (id)triggerDisplayName;
@end

@implementation WFCNContact(Trigger)

- (id)triggerDisplayName
{
  if ([a1 hasValueForPropertyID:19] && (objc_msgSend(a1, "nickname"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "length"), v2, v3))
  {
    v4 = [a1 nickname];
  }

  else
  {
    v4 = [a1 formattedName];
  }

  return v4;
}

@end