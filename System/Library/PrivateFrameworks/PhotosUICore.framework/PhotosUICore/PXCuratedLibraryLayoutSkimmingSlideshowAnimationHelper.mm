@interface PXCuratedLibraryLayoutSkimmingSlideshowAnimationHelper
@end

@implementation PXCuratedLibraryLayoutSkimmingSlideshowAnimationHelper

uint64_t __170___PXCuratedLibraryLayoutSkimmingSlideshowAnimationHelper_animation_doubleSidedAnimatedSpriteIndexesForModifiedSpriteIndexes_rootLayout_presentedGeometries_styles_infos___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48) + 40 * a2;
  v6 = *(v4 + 56);
  v8[0] = *(v4 + 40);
  v8[1] = v6;
  result = [v4 _shoulAnimateSpriteWithInfo:v5 matchingSectionIndexPath:v8 spriteKind:&v9];
  if (result)
  {
    return [*(a1 + 40) addIndex:a2];
  }

  return result;
}

@end