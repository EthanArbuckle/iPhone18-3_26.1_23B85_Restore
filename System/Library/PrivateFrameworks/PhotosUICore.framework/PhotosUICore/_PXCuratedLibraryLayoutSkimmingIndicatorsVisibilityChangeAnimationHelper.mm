@interface _PXCuratedLibraryLayoutSkimmingIndicatorsVisibilityChangeAnimationHelper
- (id)animation:(id)animation doubleSidedAnimatedSpriteIndexesForModifiedSpriteIndexes:(id)indexes rootLayout:(id)layout presentedGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos;
@end

@implementation _PXCuratedLibraryLayoutSkimmingIndicatorsVisibilityChangeAnimationHelper

- (id)animation:(id)animation doubleSidedAnimatedSpriteIndexesForModifiedSpriteIndexes:(id)indexes rootLayout:(id)layout presentedGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos
{
  v9 = MEMORY[0x1E696AD50];
  indexesCopy = indexes;
  v11 = objc_alloc_init(v9);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __187___PXCuratedLibraryLayoutSkimmingIndicatorsVisibilityChangeAnimationHelper_animation_doubleSidedAnimatedSpriteIndexesForModifiedSpriteIndexes_rootLayout_presentedGeometries_styles_infos___block_invoke;
  v14[3] = &unk_1E77434E8;
  infosCopy = infos;
  v12 = v11;
  v15 = v12;
  [indexesCopy enumerateIndexesUsingBlock:v14];

  return v12;
}

@end