@interface SXIssueCoverComponentClassification
- (id)accessibilityContextualLabel;
@end

@implementation SXIssueCoverComponentClassification

- (id)accessibilityContextualLabel
{
  v2 = SXBundle();
  v3 = [v2 localizedStringForKey:@"Issue Cover" value:&stru_1F532F6C0 table:0];

  return v3;
}

@end