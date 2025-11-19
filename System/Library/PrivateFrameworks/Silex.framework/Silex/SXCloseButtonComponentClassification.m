@interface SXCloseButtonComponentClassification
- (id)accessibilityContextualLabel;
@end

@implementation SXCloseButtonComponentClassification

- (id)accessibilityContextualLabel
{
  v2 = SXBundle();
  v3 = [v2 localizedStringForKey:@"Close Button" value:&stru_1F532F6C0 table:0];

  return v3;
}

@end