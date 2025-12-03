@interface _SBInnerFolderIconZoomAnimator
- (_SBInnerFolderIconZoomAnimator)initWithFolderController:(id)controller iconView:(id)view iconZoomScaleDimension:(CGPoint)dimension;
- (unint64_t)_numberOfSignificantAnimations;
- (void)_animateToFraction:(double)fraction afterDelay:(double)delay withSharedCompletion:(id)completion;
- (void)_applyIconCornerRadiusForZoomFraction:(double)fraction;
- (void)_applyIconCrossfadeForZoomFraction:(double)fraction;
- (void)_applyIconTransformForZoomFraction:(double)fraction;
- (void)_calculateZoomedOffset:(CGPoint *)offset scale:(CGPoint *)scale forIcon:(id)icon withView:(id)view;
- (void)_cleanupAnimation;
- (void)_prepareAnimation;
- (void)_setAnimationFraction:(double)fraction;
@end

@implementation _SBInnerFolderIconZoomAnimator

- (void)_cleanupAnimation
{
  [(SBIconZoomAnimator *)self enumerateIconsAndIconViewsWithHandler:&__block_literal_global_32];
  [(UIView *)self->_glassView removeFromSuperview];
  glassView = self->_glassView;
  self->_glassView = 0;

  _iconImageView = [(SBIconView *)self->_folderIconView _iconImageView];
  [_iconImageView applyOrRemoveGlassIfNecessary];
  v5.receiver = self;
  v5.super_class = _SBInnerFolderIconZoomAnimator;
  [(SBIconZoomAnimator *)&v5 _cleanupAnimation];
}

- (_SBInnerFolderIconZoomAnimator)initWithFolderController:(id)controller iconView:(id)view iconZoomScaleDimension:(CGPoint)dimension
{
  y = dimension.y;
  x = dimension.x;
  controllerCopy = controller;
  viewCopy = view;
  v19.receiver = self;
  v19.super_class = _SBInnerFolderIconZoomAnimator;
  v11 = [(SBIconZoomAnimator *)&v19 initWithAnimationContainer:controllerCopy];
  if (v11)
  {
    contentView = [controllerCopy contentView];
    v13 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v14 = contentView;
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong(v11 + 19, v14);

    objc_storeStrong(v11 + 20, view);
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
  listLayoutProvider = [(SBIconView *)self->_folderIconView listLayoutProvider];
  v4 = [listLayoutProvider layoutForIconLocation:@"SBIconLocationFolder"];

  _iconImageView = [(SBIconView *)self->_folderIconView _iconImageView];
  folderIconImageCache = [(SBIconView *)self->_folderIconView folderIconImageCache];
  traitCollection = [(SBIconView *)self->_folderIconView traitCollection];
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
    usesLayersForMiniIcons = [_iconImageView usesLayersForMiniIcons];
  }

  else
  {
    usesLayersForMiniIcons = 0;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __51___SBInnerFolderIconZoomAnimator__prepareAnimation__block_invoke;
  v27[3] = &unk_1E808BBD8;
  v36 = usesLayersForMiniIcons;
  v30 = v12;
  v31 = v14;
  v32 = v16;
  v33 = v18;
  v28 = traitCollection;
  v29 = folderIconImageCache;
  v34 = v8;
  v35 = v10;
  v21 = folderIconImageCache;
  v22 = traitCollection;
  [(SBIconZoomAnimator *)self enumerateIconsAndIconViewsWithHandler:v27];
  [_iconImageView sbh_removeGlass];
  v23 = objc_alloc(MEMORY[0x1E69DD250]);
  [_iconImageView bounds];
  v24 = [v23 initWithFrame:?];
  glassView = self->_glassView;
  self->_glassView = v24;

  [(UIView *)self->_glassView sbh_applyFolderGlass];
  [_iconImageView iconImageInfo];
  [(UIView *)self->_glassView _setContinuousCornerRadius:v26];
  [_iconImageView insertSubview:self->_glassView atIndex:0];
}

- (void)_setAnimationFraction:(double)fraction
{
  v5.receiver = self;
  v5.super_class = _SBInnerFolderIconZoomAnimator;
  [(SBIconZoomAnimator *)&v5 _setAnimationFraction:?];
  [(_SBInnerFolderIconZoomAnimator *)self _applyIconCrossfadeForZoomFraction:fraction];
  [(_SBInnerFolderIconZoomAnimator *)self _applyIconTransformForZoomFraction:fraction];
  [(_SBInnerFolderIconZoomAnimator *)self _applyIconCornerRadiusForZoomFraction:fraction];
}

- (unint64_t)_numberOfSignificantAnimations
{
  v3.receiver = self;
  v3.super_class = _SBInnerFolderIconZoomAnimator;
  return [(SBIconZoomAnimator *)&v3 _numberOfSignificantAnimations]+ 2;
}

- (void)_animateToFraction:(double)fraction afterDelay:(double)delay withSharedCompletion:(id)completion
{
  completionCopy = completion;
  isAnimating = [(SBIconAnimator *)self isAnimating];
  v21.receiver = self;
  v21.super_class = _SBInnerFolderIconZoomAnimator;
  [(SBIconZoomAnimator *)&v21 _animateToFraction:completionCopy afterDelay:fraction withSharedCompletion:delay];
  settings = [(SBIconAnimator *)self settings];
  v11 = settings;
  if (isAnimating)
  {
    v12 = 6;
  }

  else
  {
    v12 = 2;
  }

  v13 = MEMORY[0x1E698E7D0];
  effectiveCrossfadeAnimationSettings = [settings effectiveCrossfadeAnimationSettings];
  bSAnimationSettings = [effectiveCrossfadeAnimationSettings BSAnimationSettings];
  v16 = [v13 factoryWithSettings:bSAnimationSettings];

  [v16 setAllowsAdditiveAnimations:1];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85___SBInnerFolderIconZoomAnimator__animateToFraction_afterDelay_withSharedCompletion___block_invoke;
  v20[3] = &unk_1E8088CB8;
  v20[4] = self;
  *&v20[5] = fraction;
  [MEMORY[0x1E698E7D0] animateWithFactory:v16 additionalDelay:v12 options:v20 actions:completionCopy completion:delay];
  v17 = MEMORY[0x1E698E7D0];
  centralAnimationFactory = [(SBIconAnimator *)self centralAnimationFactory];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __85___SBInnerFolderIconZoomAnimator__animateToFraction_afterDelay_withSharedCompletion___block_invoke_2;
  v19[3] = &unk_1E8088CB8;
  v19[4] = self;
  *&v19[5] = fraction;
  [v17 animateWithFactory:centralAnimationFactory additionalDelay:v12 options:v19 actions:completionCopy completion:delay];
}

- (void)_applyIconCrossfadeForZoomFraction:(double)fraction
{
  v18 = *MEMORY[0x1E69E9840];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69___SBInnerFolderIconZoomAnimator__applyIconCrossfadeForZoomFraction___block_invoke;
  v16[3] = &__block_descriptor_40_e34_v28__0__SBIcon_8__SBIconView_16B24l;
  *&v16[4] = fraction;
  [(SBIconZoomAnimator *)self enumerateIconsAndIconViewsWithHandler:v16];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  iconListViews = [(SBFolderView *)self->_folderView iconListViews];
  v6 = [iconListViews countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(iconListViews);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        currentIconListView = [(SBFolderView *)self->_folderView currentIconListView];

        if (v10 != currentIconListView)
        {
          [v10 setAlpha:1.0 - fraction];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [iconListViews countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  [(UIView *)self->_glassView setAlpha:fraction];
}

- (void)_applyIconTransformForZoomFraction:(double)fraction
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69___SBInnerFolderIconZoomAnimator__applyIconTransformForZoomFraction___block_invoke;
  v3[3] = &unk_1E808BC40;
  v3[4] = self;
  *&v3[5] = fraction;
  [(SBIconZoomAnimator *)self enumerateIconsAndIconViewsWithHandler:v3];
}

- (void)_calculateZoomedOffset:(CGPoint *)offset scale:(CGPoint *)scale forIcon:(id)icon withView:(id)view
{
  iconCopy = icon;
  viewCopy = view;
  iconListView = [(SBIconZoomAnimator *)self iconListView];
  -[SBIconView visibleImageRelativeFrameForMiniIconAtIndex:](self->_folderIconView, "visibleImageRelativeFrameForMiniIconAtIndex:", [iconListView indexOfIcon:iconCopy]);
  v13 = *&self->_folderIconViewScaleTransform.c;
  *&v26.a = *&self->_folderIconViewScaleTransform.a;
  *&v26.c = v13;
  *&v26.tx = *&self->_folderIconViewScaleTransform.tx;
  v28 = CGRectApplyAffineTransform(v27, &v26);
  width = v28.size.width;
  height = v28.size.height;
  if (scale)
  {
    v16 = self->_folderIconViewScaleTransform.d / self->_folderIconViewScaleTransform.a;
    [viewCopy iconImageVisibleSize];
    v18 = width / v17;
    scale->x = v18;
    if (v16 > 1.0)
    {
      [viewCopy iconImageVisibleSize];
      v18 = height / v19;
    }

    scale->y = v18;
  }

  UIRectGetCenter();
  v21 = v20;
  v23 = v22;
  [(SBFloatyFolderView *)self->_folderView visibleFolderRelativeImageCenterForIcon:iconCopy];
  if (offset)
  {
    offset->x = v21 - v24;
    offset->y = v23 - v25;
  }
}

- (void)_applyIconCornerRadiusForZoomFraction:(double)fraction
{
  _iconImageView = [(SBIconView *)self->_folderIconView _iconImageView];
  [_iconImageView iconImageInfo];
  v7 = v6;
  [(SBFloatyFolderView *)self->_folderView cornerRadius];
  v9 = v8 + (v7 - v8) * fraction - v7;
  v10 = *&self->_folderIconViewScaleTransform.c;
  *&v11.a = *&self->_folderIconViewScaleTransform.a;
  *&v11.c = v10;
  *&v11.tx = *&self->_folderIconViewScaleTransform.tx;
  CGAffineTransformInvert(&v12, &v11);
  [(UIView *)self->_glassView _setContinuousCornerRadius:v7 + v12.tx + v9 * v12.c + v12.a * v9];
}

@end