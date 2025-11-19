@interface SSContactEntityBelowFoldSectionHeader
- (BOOL)shouldSkipSection;
@end

@implementation SSContactEntityBelowFoldSectionHeader

- (BOOL)shouldSkipSection
{
  v4.receiver = self;
  v4.super_class = SSContactEntityBelowFoldSectionHeader;
  return [(SSContactEntitySectionBuilder *)&v4 shouldSkipSection]|| [(SSSectionBuilder *)self renderState]!= 4;
}

@end