@interface SPUISContactEntityBelowFoldSectionHeader
- (BOOL)shouldSkipSection;
@end

@implementation SPUISContactEntityBelowFoldSectionHeader

- (BOOL)shouldSkipSection
{
  v4.receiver = self;
  v4.super_class = SPUISContactEntityBelowFoldSectionHeader;
  return [(SPUISContactEntitySectionBuilder *)&v4 shouldSkipSection]|| [(SPUISSectionBuilder *)self renderState]!= 4;
}

@end