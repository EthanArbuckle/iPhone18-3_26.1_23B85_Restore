@interface SBInnerFolderIconZoomAnimator
@end

@implementation SBInnerFolderIconZoomAnimator

void __51___SBInnerFolderIconZoomAnimator__prepareAnimation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 96) == 1)
  {
    v7 = [v5 iconLayerViewWithInfo:*(a1 + 32) traitCollection:1 options:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  }

  else
  {
    v8 = [*(a1 + 40) gridCellImageOfSize:v5 forIcon:*(a1 + 32) iconImageInfo:*(a1 + 80) compatibleWithTraitCollection:{*(a1 + 88), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v8];
  }

  if (([v5 isTimedOut] & 1) != 0 || objc_msgSend(v5, "progressState"))
  {
    v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
    v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
    v11 = [v10 CGColor];
    [v9 setValue:v11 forKey:*MEMORY[0x1E6979AA0]];

    v12 = [v7 layer];
    v14[0] = v9;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v12 setFilters:v13];
  }

  [v6 prepareToCrossfadeImageWithView:v7 options:2];
}

uint64_t __85___SBInnerFolderIconZoomAnimator__animateToFraction_afterDelay_withSharedCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _applyIconTransformForZoomFraction:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _applyIconCornerRadiusForZoomFraction:v3];
}

void __69___SBInnerFolderIconZoomAnimator__applyIconTransformForZoomFraction___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = 0uLL;
  v10 = 0.0;
  v11 = 0.0;
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 _calculateZoomedOffset:&v12 scale:&v10 forIcon:a2 withView:v6];
  memset(&v9, 0, sizeof(v9));
  v7 = *(a1 + 40);
  CGAffineTransformMakeScale(&v9, v7 * (v10 + -1.0) + 1.0, v7 * (v11 + -1.0) + 1.0);
  *&v9.tx = vmulq_n_f64(v12, v7);
  v8 = v9;
  [v6 setTransform:&v8];
}

@end