@interface SXArticleLinkComponentClassification
- (id)accessibilityContextualLabel;
@end

@implementation SXArticleLinkComponentClassification

- (id)accessibilityContextualLabel
{
  v2 = SXBundle();
  v3 = [v2 localizedStringForKey:@"Article Link" value:&stru_1F532F6C0 table:0];

  return v3;
}

@end