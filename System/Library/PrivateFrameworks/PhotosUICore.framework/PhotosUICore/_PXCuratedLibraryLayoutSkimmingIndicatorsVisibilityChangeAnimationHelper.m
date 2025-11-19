@interface _PXCuratedLibraryLayoutSkimmingIndicatorsVisibilityChangeAnimationHelper
- (id)animation:(id)a3 doubleSidedAnimatedSpriteIndexesForModifiedSpriteIndexes:(id)a4 rootLayout:(id)a5 presentedGeometries:(id *)a6 styles:(id *)a7 infos:(id *)a8;
@end

@implementation _PXCuratedLibraryLayoutSkimmingIndicatorsVisibilityChangeAnimationHelper

- (id)animation:(id)a3 doubleSidedAnimatedSpriteIndexesForModifiedSpriteIndexes:(id)a4 rootLayout:(id)a5 presentedGeometries:(id *)a6 styles:(id *)a7 infos:(id *)a8
{
  v9 = MEMORY[0x1E696AD50];
  v10 = a4;
  v11 = objc_alloc_init(v9);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __187___PXCuratedLibraryLayoutSkimmingIndicatorsVisibilityChangeAnimationHelper_animation_doubleSidedAnimatedSpriteIndexesForModifiedSpriteIndexes_rootLayout_presentedGeometries_styles_infos___block_invoke;
  v14[3] = &unk_1E77434E8;
  v16 = a8;
  v12 = v11;
  v15 = v12;
  [v10 enumerateIndexesUsingBlock:v14];

  return v12;
}

@end