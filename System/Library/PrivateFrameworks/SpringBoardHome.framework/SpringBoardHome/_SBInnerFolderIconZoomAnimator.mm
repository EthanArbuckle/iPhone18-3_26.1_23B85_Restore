@interface _SBInnerFolderIconZoomAnimator
- (_SBInnerFolderIconZoomAnimator)initWithFolderController:(id)a3 iconView:(id)a4 iconZoomScaleDimension:(CGPoint)a5;
- (unint64_t)_numberOfSignificantAnimations;
- (void)_animateToFraction:(double)a3 afterDelay:(double)a4 withSharedCompletion:(id)a5;
- (void)_applyIconCornerRadiusForZoomFraction:(double)a3;
- (void)_applyIconCrossfadeForZoomFraction:(double)a3;
- (void)_applyIconTransformForZoomFraction:(double)a3;
- (void)_calculateZoomedOffset:(CGPoint *)a3 scale:(CGPoint *)a4 forIcon:(id)a5 withView:(id)a6;
- (void)_cleanupAnimation;
- (void)_prepareAnimation;
- (void)_setAnimationFraction:(double)a3;
@end

@implementation _SBInnerFolderIconZoomAnimator

- (void)_cleanupAnimation
{
  [(SBIconZoomAnimator *)self enumerateIconsAndIconViewsWithHandler:&__block_literal_global_32];
  [(UIView *)self->_glassView removeFromSuperview];
  glassView = self->_glassView;
  self->_glassView = 0;

  v4 = [(SBIconView *)self->_folderIconView _iconImageView];
  [v4 applyOrRemoveGlassIfNecessary];
  v5.receiver = self;
  v5.super_class = _SBInnerFolderIconZoomAnimator;
  [(SBIconZoomAnimator *)&v5 _cleanupAnimation];
}

- (_SBInnerFolderIconZoomAnimator)initWithFolderController:(id)a3 iconView:(id)a4 iconZoomScaleDimension:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  v19.receiver = self;
  v19.super_class = _SBInnerFolderIconZoomAnimator;
  v11 = [(SBIconZoomAnimator *)&v19 initWithAnimationContainer:v9];
  if (v11)
  {
    v12 = [v9 contentView];
    v13 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong(v11 + 19, v14);

    objc_storeStrong(v11 + 20, a4);
    CGAffineTransformMakeScale(&v18, x, y);
    v15 = *&v18.a;
    v16 = *&v18.tx;
    *(v11 + 184) = *&v18.c;
    *(v11 + 200) = v16;
    *(v11 + 168) = v15;
  }

  return v11;
}

- (void)_prepareAnimation
{
  v37.receiver = self;
  v37.super_class = _SBInnerFolderIconZoomAnimator;
  [(SBIconZoomAnimator *)&v37 _prepareAnimation];
  v3 = [(SBIconView *)self->_folderIconView listLayoutProvider];
  v4 = [v3 layoutForIconLocation:@"SBIconLocationFolder"];

  v5 = [(SBIconView *)self->_folderIconView _iconImageView];
  v6 = [(SBIconView *)self->_folderIconView folderIconImageCache];
  v7 = [(SBIconView *)self->_folderIconView traitCollection];
  v8 = SBHIconListLayoutFolderIconGridCellSize(v4);
  v10 = v9;
  [v4 iconImageInfo];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v5 usesLayersForMiniIcons];
  }

  else
  {
    v20 = 0;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __51___SBInnerFolderIconZoomAnimator__prepareAnimation__block_invoke;
  v27[3] = &unk_1E808BBD8;
  v36 = v20;
  v30 = v12;
  v31 = v14;
  v32 = v16;
  v33 = v18;
  v28 = v7;
  v29 = v6;
  v34 = v8;
  v35 = v10;
  v21 = v6;
  v22 = v7;
  [(SBIconZoomAnimator *)self enumerateIconsAndIconViewsWithHandler:v27];
  [v5 sbh_removeGlass];
  v23 = objc_alloc(MEMORY[0x1E69DD250]);
  [v5 bounds];
  v24 = [v23 initWithFrame:?];
  glassView = self->_glassView;
  self->_glassView = v24;

  [(UIView *)self->_glassView sbh_applyFolderGlass];
  [v5 iconImageInfo];
  [(UIView *)self->_glassView _setContinuousCornerRadius:v26];
  [v5 insertSubview:self->_glassView atIndex:0];
}

- (void)_setAnimationFraction:(double)a3
{
  v5.receiver = self;
  v5.super_class = _SBInnerFolderIconZoomAnimator;
  [(SBIconZoomAnimator *)&v5 _setAnimationFraction:?];
  [(_SBInnerFolderIconZoomAnimator *)self _applyIconCrossfadeForZoomFraction:a3];
  [(_SBInnerFolderIconZoomAnimator *)self _applyIconTransformForZoomFraction:a3];
  [(_SBInnerFolderIconZoomAnimator *)self _applyIconCornerRadiusForZoomFraction:a3];
}

- (unint64_t)_numberOfSignificantAnimations
{
  v3.receiver = self;
  v3.super_class = _SBInnerFolderIconZoomAnimator;
  return [(SBIconZoomAnimator *)&v3 _numberOfSignificantAnimations]+ 2;
}

- (void)_animateToFraction:(double)a3 afterDelay:(double)a4 withSharedCompletion:(id)a5
{
  v8 = a5;
  v9 = [(SBIconAnimator *)self isAnimating];
  v21.receiver = self;
  v21.super_class = _SBInnerFolderIconZoomAnimator;
  [(SBIconZoomAnimator *)&v21 _animateToFraction:v8 afterDelay:a3 withSharedCompletion:a4];
  v10 = [(SBIconAnimator *)self settings];
  v11 = v10;
  if (v9)
  {
    v12 = 6;
  }

  else
  {
    v12 = 2;
  }

  v13 = MEMORY[0x1E698E7D0];
  v14 = [v10 effectiveCrossfadeAnimationSettings];
  v15 = [v14 BSAnimationSettings];
  v16 = [v13 factoryWithSettings:v15];

  [v16 setAllowsAdditiveAnimations:1];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85___SBInnerFolderIconZoomAnimator__animateToFraction_afterDelay_withSharedCompletion___block_invoke;
  v20[3] = &unk_1E8088CB8;
  v20[4] = self;
  *&v20[5] = a3;
  [MEMORY[0x1E698E7D0] animateWithFactory:v16 additionalDelay:v12 options:v20 actions:v8 completion:a4];
  v17 = MEMORY[0x1E698E7D0];
  v18 = [(SBIconAnimator *)self centralAnimationFactory];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __85___SBInnerFolderIconZoomAnimator__animateToFraction_afterDelay_withSharedCompletion___block_invoke_2;
  v19[3] = &unk_1E8088CB8;
  v19[4] = self;
  *&v19[5] = a3;
  [v17 animateWithFactory:v18 additionalDelay:v12 options:v19 actions:v8 completion:a4];
}

- (void)_applyIconCrossfadeForZoomFraction:(double)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69___SBInnerFolderIconZoomAnimator__applyIconCrossfadeForZoomFraction___block_invoke;
  v16[3] = &__block_descriptor_40_e34_v28__0__SBIcon_8__SBIconView_16B24l;
  *&v16[4] = a3;
  [(SBIconZoomAnimator *)self enumerateIconsAndIconViewsWithHandler:v16];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(SBFolderView *)self->_folderView iconListViews];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [(SBFolderView *)self->_folderView currentIconListView];

        if (v10 != v11)
        {
          [v10 setAlpha:1.0 - a3];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  [(UIView *)self->_glassView setAlpha:a3];
}

- (void)_applyIconTransformForZoomFraction:(double)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69___SBInnerFolderIconZoomAnimator__applyIconTransformForZoomFraction___block_invoke;
  v3[3] = &unk_1E808BC40;
  v3[4] = self;
  *&v3[5] = a3;
  [(SBIconZoomAnimator *)self enumerateIconsAndIconViewsWithHandler:v3];
}

- (void)_calculateZoomedOffset:(CGPoint *)a3 scale:(CGPoint *)a4 forIcon:(id)a5 withView:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [(SBIconZoomAnimator *)self iconListView];
  -[SBIconView visibleImageRelativeFrameForMiniIconAtIndex:](self->_folderIconView, "visibleImageRelativeFrameForMiniIconAtIndex:", [v12 indexOfIcon:v10]);
  v13 = *&self->_folderIconViewScaleTransform.c;
  *&v26.a = *&self->_folderIconViewScaleTransform.a;
  *&v26.c = v13;
  *&v26.tx = *&self->_folderIconViewScaleTransform.tx;
  v28 = CGRectApplyAffineTransform(v27, &v26);
  width = v28.size.width;
  height = v28.size.height;
  if (a4)
  {
    v16 = self->_folderIconViewScaleTransform.d / self->_folderIconViewScaleTransform.a;
    [v11 iconImageVisibleSize];
    v18 = width / v17;
    a4->x = v18;
    if (v16 > 1.0)
    {
      [v11 iconImageVisibleSize];
      v18 = height / v19;
    }

    a4->y = v18;
  }

  UIRectGetCenter();
  v21 = v20;
  v23 = v22;
  [(SBFloatyFolderView *)self->_folderView visibleFolderRelativeImageCenterForIcon:v10];
  if (a3)
  {
    a3->x = v21 - v24;
    a3->y = v23 - v25;
  }
}

- (void)_applyIconCornerRadiusForZoomFraction:(double)a3
{
  v5 = [(SBIconView *)self->_folderIconView _iconImageView];
  [v5 iconImageInfo];
  v7 = v6;
  [(SBFloatyFolderView *)self->_folderView cornerRadius];
  v9 = v8 + (v7 - v8) * a3 - v7;
  v10 = *&self->_folderIconViewScaleTransform.c;
  *&v11.a = *&self->_folderIconViewScaleTransform.a;
  *&v11.c = v10;
  *&v11.tx = *&self->_folderIconViewScaleTransform.tx;
  CGAffineTransformInvert(&v12, &v11);
  [(UIView *)self->_glassView _setContinuousCornerRadius:v7 + v12.tx + v9 * v12.c + v12.a * v9];
}

@end