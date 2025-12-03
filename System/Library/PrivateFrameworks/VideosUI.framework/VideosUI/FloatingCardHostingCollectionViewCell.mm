@interface FloatingCardHostingCollectionViewCell
- (BOOL)_disableRasterizeInAnimations;
- (void)vui_prepareForReuse;
@end

@implementation FloatingCardHostingCollectionViewCell

- (BOOL)_disableRasterizeInAnimations
{
  selfCopy = self;
  v3 = sub_1E39C4A08();

  return v3 & 1;
}

- (void)vui_prepareForReuse
{
  selfCopy = self;
  sub_1E39C4C94();
}

@end