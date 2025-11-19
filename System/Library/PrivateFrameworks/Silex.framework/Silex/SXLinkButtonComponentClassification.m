@interface SXLinkButtonComponentClassification
- (id)accessibilityContextualLabel;
@end

@implementation SXLinkButtonComponentClassification

- (id)accessibilityContextualLabel
{
  v2 = SXBundle();
  v3 = [v2 localizedStringForKey:@"Link Button" value:&stru_1F532F6C0 table:0];

  return v3;
}

@end