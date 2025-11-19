@interface SXChapterComponentClassification
- (id)accessibilityContextualLabel;
@end

@implementation SXChapterComponentClassification

- (id)accessibilityContextualLabel
{
  v2 = SXBundle();
  v3 = [v2 localizedStringForKey:@"Chapter" value:&stru_1F532F6C0 table:0];

  return v3;
}

@end