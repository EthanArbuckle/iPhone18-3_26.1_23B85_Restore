@interface SXSubscriptionButtonComponentClassification
- (id)accessibilityContextualLabel;
@end

@implementation SXSubscriptionButtonComponentClassification

- (id)accessibilityContextualLabel
{
  v2 = SXBundle();
  v3 = [v2 localizedStringForKey:@"Subscription Button" value:&stru_1F532F6C0 table:0];

  return v3;
}

@end