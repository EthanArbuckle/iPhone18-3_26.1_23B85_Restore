@interface SBAppSwitcherPageView
- (BOOL)_supportsAsymmetricalCornerRadii;
- (BOOL)blocksTouches;
- (BOOL)isActive;
- (BOOL)isVisible;
- (BOOL)shouldBeginPointerInteractionRequest:(id)a3 atLocation:(CGPoint)a4 forView:(id)a5;
- (CGRect)_contentViewFrame;
- (CGRect)contentClippingFrame;
- (CGSize)fullyPresentedSize;
- (CGSize)overlayViewSize;
- (SBAppSwitcherPageView)initWithFrame:(CGRect)a3;
- (SBAppSwitcherPageViewDelegate)delegate;
- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributes;
- (UIEdgeInsets)pointerInteractionHitTestInsetsForView:(id)a3;
- (UIRectCornerRadii)cornerRadii;
- (UIView)slideOverTonguePortalSourceView;
- (id)regionAtLocation:(CGPoint)a3 forView:(id)a4;
- (id)styleForRegion:(id)a3 forView:(id)a4;
- (void)_createOrDestroyWallpaperGradientView;
- (void)_createOrDestroyWallpaperOverlayView;
- (void)_layoutOverlayView;
- (void)_orderSubviews;
- (void)_updateCornerRadius;
- (void)_updateEffectOverlayViews;
- (void)_updateGrabberVisibilities;
- (void)_updateShadowPresence;
- (void)_updateSlideOverGlass;
- (void)_updateTintStyle;
- (void)_updateWallpaperGradientAttributes;
- (void)invalidate;
- (void)layoutSubviews;
- (void)pointerWillExitRegion;
- (void)setActive:(BOOL)a3;
- (void)setBlocksTouches:(BOOL)a3;
- (void)setContentClippingFrame:(CGRect)a3;
- (void)setCornerRadii:(UIRectCornerRadii)a3;
- (void)setDimmingAlpha:(double)a3;
- (void)setFullyPresentedSize:(CGSize)a3;
- (void)setHighlightType:(unint64_t)a3;
- (void)setLighteningAlpha:(double)a3;
- (void)setMaskedCorners:(unint64_t)a3;
- (void)setNeedsBackgroundWallpaperTreatment:(BOOL)a3;
- (void)setNeedsWallpaperGradientTreatment:(BOOL)a3;
- (void)setOccludedInContinuousExposeStage:(BOOL)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setOverlay:(id)a3 animated:(BOOL)a4;
- (void)setOverlayViewSize:(CGSize)a3;
- (void)setResizingAllowed:(BOOL)a3;
- (void)setShadowAlpha:(double)a3;
- (void)setShadowOffset:(double)a3;
- (void)setShadowStyle:(int64_t)a3;
- (void)setShouldClipContentView:(BOOL)a3;
- (void)setShouldScaleOverlayToFillBounds:(BOOL)a3;
- (void)setSlideOverBorderWidth:(double)a3;
- (void)setSlideOverTonguePortalSourceView:(id)a3;
- (void)setSwitcherCardScale:(double)a3;
- (void)setTintStyle:(int64_t)a3;
- (void)setView:(id)a3 animated:(BOOL)a4;
- (void)setVisible:(BOOL)a3;
- (void)setVisibleTouchResizeCorners:(unint64_t)a3;
- (void)setWallpaperGradientAttributes:(SBSwitcherWallpaperGradientAttributes)a3;
- (void)setWallpaperOverlayAlpha:(double)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation SBAppSwitcherPageView

- (void)_layoutOverlayView
{
  if (self->_shouldClipContentView)
  {
    width = self->_contentClippingFrame.size.width;
    height = self->_contentClippingFrame.size.height;
  }

  else
  {
    [(SBAppSwitcherPageView *)self bounds];
    width = v5;
    height = v6;
  }

  SBRectWithSize();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  UIRectGetCenter();
  v16 = v15;
  v18 = v17;
  v19 = *(MEMORY[0x277CBF2C0] + 16);
  *&v24.a = *MEMORY[0x277CBF2C0];
  *&v24.c = v19;
  *&v24.tx = *(MEMORY[0x277CBF2C0] + 32);
  if (self->_shouldScaleOverlayToFillBounds)
  {
    [(UIView *)self->_overlayClippingView bounds];
    UIRectGetCenter();
    v16 = v20;
    v18 = v21;
    CGAffineTransformMakeScale(&v24, width / v12, height / v14);
  }

  [(UIView *)self->_overlayView setBounds:v8, v10, v12, v14];
  [(UIView *)self->_overlayView setCenter:v16, v18];
  overlayView = self->_overlayView;
  v23 = v24;
  [(UIView *)overlayView setTransform:&v23];
}

- (void)_updateCornerRadius
{
  v44 = *MEMORY[0x277D85DE8];
  p_cornerRadii = &self->_cornerRadii;
  v5 = *&self->_cornerRadii.topLeft;
  v4 = *&self->_cornerRadii.bottomRight;
  v38 = v5;
  v39 = v4;
  for (i = 8; i != 32; i += 8)
  {
    if (*&v5 < *(&v38 + i))
    {
      *&v5 = *(&v38 + i);
    }
  }

  v37 = *&v5;
  if ([(SBAppSwitcherPageView *)self _supportsAsymmetricalCornerRadii])
  {
    maskedCorners = self->_maskedCorners;
    topRight = 0.0;
    topLeft = 0.0;
    if (maskedCorners)
    {
      topLeft = p_cornerRadii->topLeft;
    }

    if ((maskedCorners & 2) != 0)
    {
      topRight = p_cornerRadii->topRight;
    }

    bottomRight = 0.0;
    bottomLeft = 0.0;
    if ((maskedCorners & 4) != 0)
    {
      bottomLeft = p_cornerRadii->bottomLeft;
    }

    if ((maskedCorners & 8) != 0)
    {
      bottomRight = p_cornerRadii->bottomRight;
    }

    v12 = [(SBAppSwitcherPageView *)self view];
    v13 = [v12 layer];
    *&v38 = bottomLeft;
    *(&v38 + 1) = bottomLeft;
    *&v39 = bottomRight;
    *(&v39 + 1) = bottomRight;
    v40 = topRight;
    v41 = topRight;
    v42 = topLeft;
    v43 = topLeft;
    [v13 setCornerRadii:&v38];

    v14 = [(UIView *)self->_contentContainerView layer];
    *&v38 = bottomLeft;
    *(&v38 + 1) = bottomLeft;
    *&v39 = bottomRight;
    *(&v39 + 1) = bottomRight;
    v40 = topRight;
    v41 = topRight;
    v42 = topLeft;
    v43 = topLeft;
    [v14 setCornerRadii:&v38];

    v15 = [(UIView *)self->_overlayClippingView layer];
    *&v38 = bottomLeft;
    *(&v38 + 1) = bottomLeft;
    *&v39 = bottomRight;
    *(&v39 + 1) = bottomRight;
    v40 = topRight;
    v41 = topRight;
    v42 = topLeft;
    v43 = topLeft;
    [v15 setCornerRadii:&v38];

    v16 = [(SBAppSwitcherPageShadowView *)self->_shadowView layer];
    *&v38 = bottomLeft;
    *(&v38 + 1) = bottomLeft;
    *&v39 = bottomRight;
    *(&v39 + 1) = bottomRight;
    v40 = topRight;
    v41 = topRight;
    v42 = topLeft;
    v43 = topLeft;
    [v16 setCornerRadii:&v38];

    v17 = [(UIView *)self->_overlayView layer];
    *&v38 = bottomLeft;
    *(&v38 + 1) = bottomLeft;
    *&v39 = bottomRight;
    *(&v39 + 1) = bottomRight;
    v40 = topRight;
    v41 = topRight;
    v42 = topLeft;
    v43 = topLeft;
    [v17 setCornerRadii:&v38];

    v18 = [(UIView *)self->_viewClippingView layer];
    *&v38 = bottomLeft;
    *(&v38 + 1) = bottomLeft;
    *&v39 = bottomRight;
    *(&v39 + 1) = bottomRight;
    v40 = topRight;
    v41 = topRight;
    v42 = topLeft;
    v43 = topLeft;
    [v18 setCornerRadii:&v38];

    v19 = [(UIView *)self->_dimmingView layer];
    *&v38 = bottomLeft;
    *(&v38 + 1) = bottomLeft;
    *&v39 = bottomRight;
    *(&v39 + 1) = bottomRight;
    v40 = topRight;
    v41 = topRight;
    v42 = topLeft;
    v43 = topLeft;
    [v19 setCornerRadii:&v38];

    v20 = [(SBWallpaperEffectView *)self->_wallpaperOverlayView layer];
    *&v38 = bottomLeft;
    *(&v38 + 1) = bottomLeft;
    *&v39 = bottomRight;
    *(&v39 + 1) = bottomRight;
    v40 = topRight;
    v41 = topRight;
    v42 = topLeft;
    v43 = topLeft;
    [v20 setCornerRadii:&v38];

    wallpaperGradientView = self->_wallpaperGradientView;
    *&v38 = bottomLeft;
    *(&v38 + 1) = bottomLeft;
    *&v39 = bottomRight;
    *(&v39 + 1) = bottomRight;
    v40 = topRight;
    v41 = topRight;
    v42 = topLeft;
    v43 = topLeft;
    [(SBAppSwitcherWallpaperGradientView *)wallpaperGradientView setCornerRadii:&v38];
    v22 = [(UIView *)self->_tintView layer];
    *&v38 = bottomLeft;
    *(&v38 + 1) = bottomLeft;
    *&v39 = bottomRight;
    *(&v39 + 1) = bottomRight;
    v40 = topRight;
    v41 = topRight;
    v42 = topLeft;
    v43 = topLeft;
    [v22 setCornerRadii:&v38];

    [(SBSDFElementView *)self->_destinationSDFElementView _setContinuousCornerRadius:v37 + self->_slideOverBorderWidth];
  }

  else
  {
    v23 = [(UIView *)self->_contentContainerView layer];
    [v23 setMaskedCorners:self->_maskedCorners];

    v24 = [(SBAppSwitcherPageView *)self view];
    [v24 setMaskedCorners:self->_maskedCorners];

    v25 = [(SBAppSwitcherPageView *)self view];
    [v25 setCornerRadius:v37];

    [(UIView *)self->_dimmingView _setContinuousCornerRadius:v37];
    [(SBWallpaperEffectView *)self->_wallpaperOverlayView _setContinuousCornerRadius:v37];
    [(_UIBackdropView *)self->_wallpaperGradientView _setContinuousCornerRadius:v37];
    [(UIView *)self->_tintView _setContinuousCornerRadius:v37];
    [(UIView *)self->_overlayClippingView _setContinuousCornerRadius:v37];
    [(SBAppSwitcherPageShadowView *)self->_shadowView _setContinuousCornerRadius:v37];
    v26 = [(SBAppSwitcherPageShadowView *)self->_shadowView layer];
    [v26 setMaskedCorners:self->_maskedCorners];

    v27 = [(UIView *)self->_overlayClippingView layer];
    [v27 setMaskedCorners:self->_maskedCorners];

    [(SBSDFElementView *)self->_destinationSDFElementView _setContinuousCornerRadius:v37 + self->_slideOverBorderWidth];
    if (self->_shouldClipContentView)
    {
      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
      {
        v28 = 10;
      }

      else
      {
        v28 = 5;
      }

      v29 = [(UIView *)self->_dimmingView layer];
      [v29 setMaskedCorners:v28];

      v30 = [(SBWallpaperEffectView *)self->_wallpaperOverlayView layer];
      [v30 setMaskedCorners:v28];

      v31 = [(SBAppSwitcherWallpaperGradientView *)self->_wallpaperGradientView layer];
      [v31 setMaskedCorners:v28];

      v32 = [(UIView *)self->_tintView layer];
      [v32 setMaskedCorners:v28];
    }

    else
    {
      v33 = [(UIView *)self->_dimmingView layer];
      [v33 setMaskedCorners:self->_maskedCorners];

      v34 = [(SBWallpaperEffectView *)self->_wallpaperOverlayView layer];
      [v34 setMaskedCorners:self->_maskedCorners];

      v35 = [(SBAppSwitcherWallpaperGradientView *)self->_wallpaperGradientView layer];
      [v35 setMaskedCorners:self->_maskedCorners];

      v36 = [(UIView *)self->_tintView layer];
      [v36 setMaskedCorners:self->_maskedCorners];
    }
  }

  [(SBAppResizeGrabberView *)self->_topLeftResizeGrabberPillView setCornerRadius:p_cornerRadii->topLeft];
  [(SBAppResizeGrabberView *)self->_topRightResizeGrabberPillView setCornerRadius:p_cornerRadii->topRight];
  [(SBAppResizeGrabberView *)self->_bottomLeftResizeGrabberPillView setCornerRadius:p_cornerRadii->bottomLeft];
  [(SBAppResizeGrabberView *)self->_bottomRightResizeGrabberPillView setCornerRadius:p_cornerRadii->bottomRight];
}

- (BOOL)_supportsAsymmetricalCornerRadii
{
  if (__sb__runningInSpringBoard())
  {
    return SBFEffectiveDeviceClass() == 2;
  }

  v3 = [MEMORY[0x277D75418] currentDevice];
  v2 = [v3 userInterfaceIdiom] == 1;

  return v2;
}

- (void)layoutSubviews
{
  [(SBAppSwitcherPageView *)self _orderSubviews];
  [(SBAppSwitcherPageView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v50 = v9;
  [(SBAppSwitcherPageView *)self _contentViewFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v47 = v16;
  v48 = v12;
  v18 = v14;
  v49 = v10;
  if (!self->_shouldClipContentView)
  {
    SBRectWithSize();
    v11 = v19;
    v13 = v20;
    v18 = v21;
    v17 = v22;
  }

  [(UIView *)self->_hitTestBlocker alpha];
  v23 = SBFloatGreaterThanFloat();
  v24 = v17;
  v25 = v13;
  if (v23)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained currentStatusBarHeight];
    v46 = v8;
    v27 = v6;
    v28 = v4;
    v30 = v29;

    v25 = v13 + v30;
    v24 = v17 - v30;
    v4 = v28;
    v6 = v27;
    v8 = v46;
  }

  [(UIView *)self->_hitTestBlocker setFrame:v11, v25, v18, v24];
  [(UIView *)self->_viewClippingView setFrame:v11, v13, v18, v17];
  [(UIView *)self->_contentContainerView setFrame:v4, v6, v8, v50];
  [(UIView *)self->_dimmingView setFrame:v49, v48, v15, v47];
  [(UIView *)self->_tintView setFrame:v49, v48, v15, v47];
  [(SBWallpaperEffectView *)self->_wallpaperOverlayView setFrame:v49, v48, v15, v47];
  [(SBAppSwitcherWallpaperGradientView *)self->_wallpaperGradientView setFrame:v49, v48, v15, v47];
  view = self->_view;
  v32 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  v33 = v15 - v8;
  if (v32 != 1)
  {
    v33 = 0.0;
  }

  [(SBAppSwitcherPageContentView *)view setFrame:v33, 0.0, v8, v50];
  [(UIView *)self->_overlayClippingView setFrame:v49, v48, v15, v47];
  [(SBAppSwitcherPageView *)self _layoutOverlayView];
  topLeftResizeGrabberPillView = self->_topLeftResizeGrabberPillView;
  if (topLeftResizeGrabberPillView)
  {
    [(SBAppResizeGrabberView *)topLeftResizeGrabberPillView frameInContentRect:v49, v48, v15, v47];
    [(SBAppResizeGrabberView *)self->_topLeftResizeGrabberPillView sb_setBoundsAndPositionFromFrame:?];
  }

  topRightResizeGrabberPillView = self->_topRightResizeGrabberPillView;
  if (topRightResizeGrabberPillView)
  {
    [(SBAppResizeGrabberView *)topRightResizeGrabberPillView frameInContentRect:v49, v48, v15, v47];
    [(SBAppResizeGrabberView *)self->_topRightResizeGrabberPillView sb_setBoundsAndPositionFromFrame:?];
  }

  bottomLeftResizeGrabberPillView = self->_bottomLeftResizeGrabberPillView;
  if (bottomLeftResizeGrabberPillView)
  {
    [(SBAppResizeGrabberView *)bottomLeftResizeGrabberPillView frameInContentRect:v49, v48, v15, v47];
    [(SBAppResizeGrabberView *)self->_bottomLeftResizeGrabberPillView sb_setBoundsAndPositionFromFrame:?];
  }

  bottomRightResizeGrabberPillView = self->_bottomRightResizeGrabberPillView;
  if (bottomRightResizeGrabberPillView)
  {
    [(SBAppResizeGrabberView *)bottomRightResizeGrabberPillView frameInContentRect:v49, v48, v15, v47];
    [(SBAppResizeGrabberView *)self->_bottomRightResizeGrabberPillView sb_setBoundsAndPositionFromFrame:?];
  }

  [(SBAppSwitcherPageShadowView *)self->_shadowView setFrame:v4, v6, v8, v50];
  if (self->_slideOverTonguePortalView)
  {
    v52.origin.x = v4;
    v52.origin.y = v6;
    v52.size.width = v8;
    v52.size.height = v50;
    CGRectInset(v52, -self->_slideOverBorderWidth, -self->_slideOverBorderWidth);
    SBRectWithSize();
    [(UIView *)self->_slideOverTonguePortalView setBounds:?];
    slideOverTonguePortalView = self->_slideOverTonguePortalView;
    UIRectGetCenter();
    [(UIView *)slideOverTonguePortalView setCenter:?];
  }

  if (self->_glassView)
  {
    v53.origin.x = v4;
    v53.origin.y = v6;
    v53.size.width = v8;
    v53.size.height = v50;
    CGRectInset(v53, -self->_slideOverBorderWidth, -self->_slideOverBorderWidth);
    SBRectWithSize();
    x = v54.origin.x;
    y = v54.origin.y;
    width = v54.size.width;
    height = v54.size.height;
    CGRectInset(v54, -50.0, -50.0);
    SBRectWithSize();
    [(SBSlideOverGlassMaterialView *)self->_glassView setBounds:?];
    glassView = self->_glassView;
    UIRectGetCenter();
    [(SBSlideOverGlassMaterialView *)glassView setCenter:?];
    [(UIView *)self->_sdfElementContainerView setBounds:x, y, width, height];
    sdfElementContainerView = self->_sdfElementContainerView;
    UIRectGetCenter();
    [(UIView *)sdfElementContainerView setCenter:?];
    [(SBSDFElementView *)self->_destinationSDFElementView setBounds:x, y, width, height];
    destinationSDFElementView = self->_destinationSDFElementView;
    UIRectGetCenter();

    [(SBSDFElementView *)destinationSDFElementView setCenter:?];
  }
}

- (void)_orderSubviews
{
  [(SBAppSwitcherPageView *)self bringSubviewToFront:self->_shadowView];
  [(SBAppSwitcherPageView *)self bringSubviewToFront:self->_contentContainerView];
  [(SBAppSwitcherPageView *)self bringSubviewToFront:self->_topLeftResizeGrabberPillView];
  [(SBAppSwitcherPageView *)self bringSubviewToFront:self->_topRightResizeGrabberPillView];
  [(SBAppSwitcherPageView *)self bringSubviewToFront:self->_bottomLeftResizeGrabberPillView];
  [(SBAppSwitcherPageView *)self bringSubviewToFront:self->_bottomRightResizeGrabberPillView];
  [(SBAppSwitcherPageView *)self bringSubviewToFront:self->_pointerHitTestBlocker];
  v5 = [(UIView *)self->_contentContainerView subviews];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:8];
  v4 = v3;
  if (self->_overlayClippingView)
  {
    [v3 addObject:?];
  }

  if (self->_viewClippingView)
  {
    [v4 addObject:?];
  }

  if (self->_topLeftResizeGrabberPillView)
  {
    [v4 addObject:?];
  }

  if (self->_topRightResizeGrabberPillView)
  {
    [v4 addObject:?];
  }

  if (self->_bottomLeftResizeGrabberPillView)
  {
    [v4 addObject:?];
  }

  if (self->_bottomRightResizeGrabberPillView)
  {
    [v4 addObject:?];
  }

  if (self->_tintView)
  {
    [v4 addObject:?];
  }

  if (self->_dimmingView)
  {
    [v4 addObject:?];
  }

  if (self->_wallpaperOverlayView)
  {
    [v4 addObject:?];
  }

  if (self->_wallpaperGradientView)
  {
    [v4 addObject:?];
  }

  if (self->_hitTestBlocker)
  {
    [v4 addObject:?];
  }

  if (([v5 isEqual:v4] & 1) == 0)
  {
    [(UIView *)self->_contentContainerView bringSubviewToFront:self->_overlayClippingView];
    [(UIView *)self->_contentContainerView bringSubviewToFront:self->_viewClippingView];
    [(UIView *)self->_contentContainerView bringSubviewToFront:self->_tintView];
    [(UIView *)self->_contentContainerView bringSubviewToFront:self->_dimmingView];
    [(UIView *)self->_contentContainerView bringSubviewToFront:self->_wallpaperOverlayView];
    [(UIView *)self->_contentContainerView bringSubviewToFront:self->_wallpaperGradientView];
    [(UIView *)self->_contentContainerView bringSubviewToFront:self->_hitTestBlocker];
  }
}

- (CGRect)_contentViewFrame
{
  if (self->_shouldClipContentView)
  {
    x = self->_contentClippingFrame.origin.x;
    y = self->_contentClippingFrame.origin.y;
    width = self->_contentClippingFrame.size.width;
    height = self->_contentClippingFrame.size.height;
  }

  else
  {
    [(SBAppSwitcherPageView *)self bounds:v2];
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_updateWallpaperGradientAttributes
{
  [(SBAppSwitcherWallpaperGradientView *)self->_wallpaperGradientView setAttributes:self->_wallpaperGradientAttributes.leadingAlpha, self->_wallpaperGradientAttributes.trailingAlpha];
  if (!BSFloatIsZero() || (IsZero = BSFloatIsZero(), v4 = 0.0, (IsZero & 1) == 0))
  {
    v4 = 1.0;
  }

  wallpaperGradientView = self->_wallpaperGradientView;

  [(SBAppSwitcherWallpaperGradientView *)wallpaperGradientView setAlpha:v4];
}

- (void)_updateGrabberVisibilities
{
  if (self->_resizeGrabbersVisible)
  {
    visibleTouchResizeCorners = self->_visibleTouchResizeCorners;
    topLeftResizeGrabberPillView = self->_topLeftResizeGrabberPillView;
    if (visibleTouchResizeCorners)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }

    [(SBAppResizeGrabberView *)topLeftResizeGrabberPillView setAlpha:v5];
    if ((visibleTouchResizeCorners & 2) != 0)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    [(SBAppResizeGrabberView *)self->_topRightResizeGrabberPillView setAlpha:v6];
    if ((visibleTouchResizeCorners & 4) != 0)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    [(SBAppResizeGrabberView *)self->_bottomLeftResizeGrabberPillView setAlpha:v7];
    bottomRightResizeGrabberPillView = self->_bottomRightResizeGrabberPillView;
    if ((visibleTouchResizeCorners & 8) != 0)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.0;
    }
  }

  else
  {
    [(SBAppResizeGrabberView *)self->_topLeftResizeGrabberPillView setAlpha:0.0];
    [(SBAppResizeGrabberView *)self->_topRightResizeGrabberPillView setAlpha:0.0];
    [(SBAppResizeGrabberView *)self->_bottomLeftResizeGrabberPillView setAlpha:0.0];
    bottomRightResizeGrabberPillView = self->_bottomRightResizeGrabberPillView;
    v9 = 0.0;
  }

  [(SBAppResizeGrabberView *)bottomRightResizeGrabberPillView setAlpha:v9];
}

- (void)_updateEffectOverlayViews
{
  [(SBAppSwitcherPageView *)self _updateDimmingViewAlpha];
  [(SBAppSwitcherPageView *)self _updateTintViewAlpha];
  [(SBAppSwitcherPageView *)self _updateWallpaperOverlayAlpha];

  [(SBAppSwitcherPageView *)self _updateWallpaperGradientAttributes];
}

- (void)_updateTintStyle
{
  v10 = +[SBAppSwitcherDomain rootSettings];
  tintStyle = self->_tintStyle;
  if (tintStyle <= 1)
  {
    if (tintStyle)
    {
      if (tintStyle != 1)
      {
        goto LABEL_13;
      }

      p_tintView = &self->_tintView;
      tintView = self->_tintView;
      v6 = [MEMORY[0x277D75348] systemBlackColor];
      [v10 tintStyleDimmingAlphaInFocusForLightMode];
      goto LABEL_11;
    }
  }

  else
  {
    if (tintStyle == 2)
    {
      p_tintView = &self->_tintView;
      tintView = self->_tintView;
      v6 = [MEMORY[0x277D75348] systemGray2Color];
      [v10 tintStyleDimmingAlphaInFocusForDarkMode];
LABEL_11:
      v9 = [v6 colorWithAlphaComponent:?];
      [(UIView *)tintView setBackgroundColor:v9];

      v8 = 1.0;
      goto LABEL_12;
    }

    if (tintStyle != 3)
    {
      if (tintStyle != 4)
      {
        goto LABEL_13;
      }

      p_tintView = &self->_tintView;
      tintView = self->_tintView;
      v6 = [MEMORY[0x277D75348] systemGrayColor];
      [v10 tintStyleDimmingAlphaUnFocusForDarkMode];
      goto LABEL_11;
    }
  }

  p_tintView = &self->_tintView;
  v7 = self->_tintView;
  v6 = [MEMORY[0x277D75348] clearColor];
  [(UIView *)v7 setBackgroundColor:v6];
  v8 = 0.0;
LABEL_12:

  [(UIView *)*p_tintView setAlpha:v8];
LABEL_13:
}

- (void)_updateShadowPresence
{
  v3 = [(SBAppSwitcherSettings *)self->_settings shouldSimplifyForOptions:32];
  shadowView = self->_shadowView;
  if (v3)
  {
    if (shadowView)
    {
      [(SBAppSwitcherPageShadowView *)shadowView removeFromSuperview];
      v5 = self->_shadowView;
      self->_shadowView = 0;
    }
  }

  else if (!shadowView)
  {
    v6 = [SBAppSwitcherPageShadowView alloc];
    [(SBAppSwitcherPageView *)self bounds];
    v7 = [(SBAppSwitcherPageShadowView *)v6 initWithFrame:self->_shadowStyle style:?];
    v8 = self->_shadowView;
    self->_shadowView = v7;

    v9 = self->_shadowView;

    [(SBAppSwitcherPageView *)self addSubview:v9];
  }
}

- (void)_createOrDestroyWallpaperOverlayView
{
  if (!self->_needsBackgroundWallpaperTreatment || !self->_wallpaperOverlayView && (v5[0] = MEMORY[0x277D85DD0], v5[1] = 3221225472, v5[2] = __61__SBAppSwitcherPageView__createOrDestroyWallpaperOverlayView__block_invoke, v5[3] = &unk_2783A8C18, v5[4] = self, [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v5], !self->_needsBackgroundWallpaperTreatment))
  {
    wallpaperOverlayView = self->_wallpaperOverlayView;
    if (wallpaperOverlayView)
    {
      [(SBWallpaperEffectView *)wallpaperOverlayView removeFromSuperview];
      v4 = self->_wallpaperOverlayView;
      self->_wallpaperOverlayView = 0;
    }
  }
}

uint64_t __61__SBAppSwitcherPageView__createOrDestroyWallpaperOverlayView__block_invoke(uint64_t a1)
{
  v2 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:1];
  v3 = *(a1 + 32);
  v4 = *(v3 + 432);
  *(v3 + 432) = v2;

  v5 = *(a1 + 32);
  v6 = v5[54];
  [v5 _contentViewFrame];
  [v6 setFrame:?];
  [*(*(a1 + 32) + 432) setStyle:14];
  v7 = [*(*(a1 + 32) + 432) layer];
  [v7 setAllowsHitTesting:0];

  [*(*(a1 + 32) + 432) setClipsToBounds:1];
  [*(a1 + 32) _addContentView:*(*(a1 + 32) + 432)];
  [*(a1 + 32) _updateWallpaperOverlayAlpha];
  v8 = *(a1 + 32);

  return [v8 _updateCornerRadius];
}

- (SBAppSwitcherPageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v59.receiver = self;
  v59.super_class = SBAppSwitcherPageView;
  v5 = [(SBHitTestExtendedView *)&v59 initWithFrame:a3.origin.x, a3.origin.y];
  if (v5)
  {
    v6 = +[SBAppSwitcherDomain rootSettings];
    settings = v5->_settings;
    v5->_settings = v6;

    v8 = [MEMORY[0x277D75348] clearColor];
    [(SBAppSwitcherPageView *)v5 setBackgroundColor:v8];

    [(SBHitTestExtendedView *)v5 setHitTestsSubviewsOutsideBounds:0];
    v9 = objc_alloc_init(MEMORY[0x277D75D18]);
    contentContainerView = v5->_contentContainerView;
    v5->_contentContainerView = v9;

    [(SBAppSwitcherPageView *)v5 addSubview:v5->_contentContainerView];
    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    hitTestBlocker = v5->_hitTestBlocker;
    v5->_hitTestBlocker = v11;

    v13 = v5->_hitTestBlocker;
    v14 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v13 setBackgroundColor:v14];

    v15 = [(UIView *)v5->_hitTestBlocker layer];
    [v15 setHitTestsAsOpaque:1];

    v16 = [(UIView *)v5->_hitTestBlocker layer];
    [v16 setAllowsHitTesting:1];

    [(SBAppSwitcherPageView *)v5 _addContentView:v5->_hitTestBlocker];
    v17 = objc_alloc_init(MEMORY[0x277D75D18]);
    dimmingView = v5->_dimmingView;
    v5->_dimmingView = v17;

    v19 = v5->_dimmingView;
    v20 = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v19 setBackgroundColor:v20];

    [(UIView *)v5->_dimmingView setClipsToBounds:1];
    v21 = [(UIView *)v5->_dimmingView layer];
    [v21 setAllowsHitTesting:0];

    [(SBAppSwitcherPageView *)v5 _addContentView:v5->_dimmingView];
    v22 = objc_alloc_init(MEMORY[0x277D75D18]);
    tintView = v5->_tintView;
    v5->_tintView = v22;

    v24 = v5->_tintView;
    v25 = [MEMORY[0x277D75348] whiteColor];
    [(UIView *)v24 setBackgroundColor:v25];

    v26 = [(UIView *)v5->_tintView layer];
    [v26 setAllowsHitTesting:0];

    [(UIView *)v5->_tintView setClipsToBounds:1];
    v5->_tintStyle = 0;
    [(SBAppSwitcherPageView *)v5 _updateTintStyle];
    [(SBAppSwitcherPageView *)v5 _addContentView:v5->_tintView];
    v27 = MEMORY[0x277CBF3A0];
    v28 = *(MEMORY[0x277CBF3A0] + 16);
    v5->_contentClippingFrame.origin = *MEMORY[0x277CBF3A0];
    v5->_contentClippingFrame.size = v28;
    v5->_overlayViewSize.width = width;
    v5->_overlayViewSize.height = height;
    v29 = objc_alloc_init(MEMORY[0x277D75D18]);
    viewClippingView = v5->_viewClippingView;
    v5->_viewClippingView = v29;

    [(UIView *)v5->_viewClippingView setClipsToBounds:1];
    [(SBAppSwitcherPageView *)v5 _addContentView:v5->_viewClippingView];
    v31 = objc_alloc_init(SBHitTestExtendedView);
    overlayClippingView = v5->_overlayClippingView;
    v5->_overlayClippingView = &v31->super;

    [(UIView *)v5->_overlayClippingView setClipsToBounds:1];
    [(SBAppSwitcherPageView *)v5 _addContentView:v5->_overlayClippingView];
    [(SBAppSwitcherPageView *)v5 _updateShadowPresence];
    [(SBAppSwitcherPageView *)v5 setShadowStyle:1];
    [(SBAppSwitcherPageView *)v5 setShadowAlpha:1.0];
    [(SBAppSwitcherPageView *)v5 _updateEffectOverlayViews];
    [(SBAppSwitcherPageView *)v5 _updateCornerRadius];
    [(SBAppSwitcherPageView *)v5 setResizeGrabbersVisible:1];
    if (SBFIsFlexibleWindowingUIAvailable())
    {
      v33 = [[SBAppResizeGrabberView alloc] initWithCorner:0];
      topLeftResizeGrabberPillView = v5->_topLeftResizeGrabberPillView;
      v5->_topLeftResizeGrabberPillView = v33;

      [(SBAppSwitcherPageView *)v5 addSubview:v5->_topLeftResizeGrabberPillView];
      v35 = [[SBAppResizeGrabberView alloc] initWithCorner:1];
      topRightResizeGrabberPillView = v5->_topRightResizeGrabberPillView;
      v5->_topRightResizeGrabberPillView = v35;

      [(SBAppSwitcherPageView *)v5 addSubview:v5->_topRightResizeGrabberPillView];
      v37 = [[SBAppResizeGrabberView alloc] initWithCorner:2];
      bottomLeftResizeGrabberPillView = v5->_bottomLeftResizeGrabberPillView;
      v5->_bottomLeftResizeGrabberPillView = v37;

      [(SBAppSwitcherPageView *)v5 addSubview:v5->_bottomLeftResizeGrabberPillView];
      v39 = [[SBAppResizeGrabberView alloc] initWithCorner:3];
      bottomRightResizeGrabberPillView = v5->_bottomRightResizeGrabberPillView;
      v5->_bottomRightResizeGrabberPillView = v39;

      [(SBAppSwitcherPageView *)v5 addSubview:v5->_bottomRightResizeGrabberPillView];
      v41 = objc_alloc_init(MEMORY[0x277D75D18]);
      pointerHitTestBlocker = v5->_pointerHitTestBlocker;
      v5->_pointerHitTestBlocker = v41;

      v43 = v5->_pointerHitTestBlocker;
      v44 = [MEMORY[0x277D75348] clearColor];
      [(UIView *)v43 setBackgroundColor:v44];

      v45 = [(UIView *)v5->_pointerHitTestBlocker layer];
      [v45 setHitTestsAsOpaque:1];

      v46 = [(UIView *)v5->_pointerHitTestBlocker layer];
      [v46 setAllowsHitTesting:1];

      [(SBAppSwitcherPageView *)v5 addSubview:v5->_pointerHitTestBlocker];
      v47 = [SBSlideOverGlassMaterialView alloc];
      v48 = *v27;
      v49 = v27[1];
      v50 = v27[2];
      v51 = v27[3];
      v52 = [(SBSlideOverGlassMaterialView *)v47 initWithFrame:*v27, v49, v50, v51];
      glassView = v5->_glassView;
      v5->_glassView = v52;

      [(SBAppSwitcherPageView *)v5 _addContentView:v5->_glassView];
      v54 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v48, v49, v50, v51}];
      sdfElementContainerView = v5->_sdfElementContainerView;
      v5->_sdfElementContainerView = v54;

      [(SBAppSwitcherPageView *)v5 _addContentView:v5->_sdfElementContainerView];
      [(UIView *)v5->_contentContainerView sendSubviewToBack:v5->_sdfElementContainerView];
      v56 = [[SBSDFElementView alloc] initWithFrame:v48, v49, v50, v51];
      destinationSDFElementView = v5->_destinationSDFElementView;
      v5->_destinationSDFElementView = v56;

      [(UIView *)v5->_sdfElementContainerView addSubview:v5->_destinationSDFElementView];
      [(SBSlideOverGlassMaterialView *)v5->_glassView addSDFElementView:v5->_sdfElementContainerView];
      [(SBAppSwitcherPageView *)v5 _updateSlideOverGlass];
    }

    [(PTSettings *)v5->_settings addKeyObserver:v5];
  }

  return v5;
}

- (void)willMoveToWindow:(id)a3
{
  v8 = a3;
  if ((SBFIsChamoisWindowingUIAvailable() & 1) != 0 || SBFIsFlexibleWindowingUIAvailable())
  {
    v4 = [(UIView *)self _sbWindowScene];
    v5 = [v4 systemPointerInteractionManager];

    v6 = [v8 _sbWindowScene];
    v7 = [v6 systemPointerInteractionManager];

    if (v5 != v7)
    {
      [v5 unregisterView:self];
      [v7 registerView:self delegate:self];
      objc_storeWeak(&self->_systemPointerInteractionManager, v7);
    }
  }
}

- (void)setView:(id)a3 animated:(BOOL)a4
{
  v7 = a3;
  v8 = v7;
  view = self->_view;
  if (view != v7)
  {
    if (a4)
    {
      v10 = view;
      objc_storeStrong(&self->_view, a3);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __42__SBAppSwitcherPageView_setView_animated___block_invoke_2;
      v17[3] = &unk_2783A8C18;
      v17[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v17];
      v11 = MEMORY[0x277D75D18];
      v15 = v10;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __42__SBAppSwitcherPageView_setView_animated___block_invoke_3;
      v16[3] = &unk_2783A8C18;
      v16[4] = self;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __42__SBAppSwitcherPageView_setView_animated___block_invoke_4;
      v14[3] = &unk_2783A9398;
      v12 = v10;
      [v11 animateWithDuration:v16 animations:v14 completion:0.35];
    }

    else
    {
      v13 = MEMORY[0x277D75D18];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __42__SBAppSwitcherPageView_setView_animated___block_invoke;
      v18[3] = &unk_2783A92D8;
      v18[4] = self;
      v19 = v7;
      [v13 performWithoutAnimation:v18];
    }
  }
}

void __42__SBAppSwitcherPageView_setView_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 456) removeFromSuperview];
  v2 = *(*(a1 + 32) + 456);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];
  objc_storeStrong((*(a1 + 32) + 456), *(a1 + 40));
  v4 = *(a1 + 32);
  if (*(v4 + 456))
  {
    [*(v4 + 448) addSubview:?];
    [*(*(a1 + 32) + 456) setOrientation:{objc_msgSend(*(a1 + 32), "orientation")}];
    [*(a1 + 32) _updateCornerRadius];
    [*(a1 + 32) setNeedsLayout];
    [*(a1 + 32) layoutIfNeeded];
  }
}

uint64_t __42__SBAppSwitcherPageView_setView_animated___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 456) setAlpha:0.0];
  [*(*(a1 + 32) + 448) addSubview:*(*(a1 + 32) + 456)];
  [*(*(a1 + 32) + 456) setOrientation:{objc_msgSend(*(a1 + 32), "orientation")}];
  [*(a1 + 32) _updateCornerRadius];
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __42__SBAppSwitcherPageView_setView_animated___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v2 setTransform:v5];
}

- (void)setTintStyle:(int64_t)a3
{
  if (self->_tintStyle != a3)
  {
    self->_tintStyle = a3;
    [(SBAppSwitcherPageView *)self _updateTintStyle];
  }
}

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBAppSwitcherPageView *)self view];
  [v4 setActive:v3];
}

- (BOOL)isActive
{
  v2 = [(SBAppSwitcherPageView *)self view];
  v3 = [v2 isActive];

  return v3;
}

- (void)setVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBAppSwitcherPageView *)self view];
  [v4 setVisible:v3];
}

- (BOOL)isVisible
{
  v2 = [(SBAppSwitcherPageView *)self view];
  v3 = [v2 isVisible];

  return v3;
}

- (void)setOccludedInContinuousExposeStage:(BOOL)a3
{
  if (self->_occludedInContinuousExposeStage != a3)
  {
    self->_occludedInContinuousExposeStage = a3;
  }
}

- (void)setVisibleTouchResizeCorners:(unint64_t)a3
{
  if (self->_visibleTouchResizeCorners != a3)
  {
    self->_visibleTouchResizeCorners = a3;
    [(SBAppSwitcherPageView *)self _updateGrabberVisibilities];
  }
}

- (void)setResizingAllowed:(BOOL)a3
{
  if (self->_resizingAllowed != a3)
  {
    self->_resizingAllowed = a3;
  }
}

- (BOOL)blocksTouches
{
  v3 = [(UIView *)self->_hitTestBlocker layer];
  if ([v3 hitTestsAsOpaque])
  {
    v4 = [(UIView *)self->_hitTestBlocker isUserInteractionEnabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setBlocksTouches:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIView *)self->_hitTestBlocker layer];
  [v5 setAllowsHitTesting:v3];

  hitTestBlocker = self->_hitTestBlocker;

  [(UIView *)hitTestBlocker setUserInteractionEnabled:v3];
}

- (void)setOverlay:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  overlayView = self->_overlayView;
  if (overlayView != v7)
  {
    v9 = *(MEMORY[0x277CBF2C0] + 16);
    v19[0] = *MEMORY[0x277CBF2C0];
    v19[1] = v9;
    v19[2] = *(MEMORY[0x277CBF2C0] + 32);
    [(UIView *)overlayView setTransform:v19];
    v10 = self->_overlayView;
    objc_storeStrong(&self->_overlayView, a3);
    if (self->_overlayView)
    {
      [(UIView *)self->_overlayClippingView addSubview:?];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __45__SBAppSwitcherPageView_setOverlay_animated___block_invoke;
      v18[3] = &unk_2783A8C18;
      v18[4] = self;
      [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v18];
    }

    v11 = 0.0;
    if (v4)
    {
      v12 = [(SBAppSwitcherPageContentView *)self->_view layer];
      [v12 setAllowsGroupOpacity:{-[SBAppSwitcherPageContentView contentRequiresGroupOpacity](self->_view, "contentRequiresGroupOpacity")}];

      v11 = 0.35;
    }

    v13 = MEMORY[0x277D75D18];
    v16 = v10;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __45__SBAppSwitcherPageView_setOverlay_animated___block_invoke_2;
    v17[3] = &unk_2783A8C18;
    v17[4] = self;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __45__SBAppSwitcherPageView_setOverlay_animated___block_invoke_3;
    v15[3] = &unk_2783A8BF0;
    v15[4] = self;
    v14 = v10;
    [v13 animateWithDuration:v17 animations:v15 completion:v11];
  }
}

uint64_t __45__SBAppSwitcherPageView_setOverlay_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _layoutOverlayView];
  v2 = *(*(a1 + 32) + 472);

  return [v2 layoutIfNeeded];
}

uint64_t __45__SBAppSwitcherPageView_setOverlay_animated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0.0;
  if (!v2[59])
  {
    v3 = 1.0;
  }

  [v2 setContentAlpha:v3];
  v4 = *(a1 + 32);
  v5 = *(v4 + 448);
  v6 = *(v4 + 472) != 0;

  return [v5 bs_setHitTestingDisabled:v6];
}

void *__45__SBAppSwitcherPageView_setOverlay_animated___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 456) layer];
  [v2 setAllowsGroupOpacity:0];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(a1 + 32);
    if (*(v4 + 472) != result)
    {
      result = [result isDescendantOfView:*(v4 + 464)];
      if (result)
      {
        v5 = *(a1 + 40);

        return [v5 removeFromSuperview];
      }
    }
  }

  return result;
}

- (void)setCornerRadii:(UIRectCornerRadii)a3
{
  v3.f64[0] = a3.topLeft;
  v3.f64[1] = a3.bottomLeft;
  v4.f64[0] = a3.bottomRight;
  v4.f64[1] = a3.topRight;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_cornerRadii.topLeft), vceqq_f64(v4, *&self->_cornerRadii.bottomRight)))) & 1) == 0)
  {
    self->_cornerRadii = a3;
    [(SBAppSwitcherPageView *)self _updateCornerRadius];
  }
}

- (void)setMaskedCorners:(unint64_t)a3
{
  if (self->_maskedCorners != a3)
  {
    self->_maskedCorners = a3;
    [(SBAppSwitcherPageView *)self _updateCornerRadius];
  }
}

- (void)setShadowStyle:(int64_t)a3
{
  if (self->_shadowStyle != a3)
  {
    self->_shadowStyle = a3;
    [(SBAppSwitcherPageShadowView *)self->_shadowView setStyle:?];
  }
}

- (void)setShadowAlpha:(double)a3
{
  if (self->_shadowAlpha != a3)
  {
    self->_shadowAlpha = a3;
    [(SBAppSwitcherPageShadowView *)self->_shadowView setAlpha:?];
  }
}

- (void)setShadowOffset:(double)a3
{
  if (self->_shadowOffset != a3)
  {
    self->_shadowOffset = a3;
    [(SBAppSwitcherPageShadowView *)self->_shadowView setShadowOffset:?];
  }
}

- (void)setDimmingAlpha:(double)a3
{
  if (self->_dimmingAlpha != a3)
  {
    self->_dimmingAlpha = a3;
    [(SBAppSwitcherPageView *)self _updateDimmingViewAlpha];
  }
}

- (void)setNeedsBackgroundWallpaperTreatment:(BOOL)a3
{
  if (self->_needsBackgroundWallpaperTreatment != a3)
  {
    self->_needsBackgroundWallpaperTreatment = a3;
    [(SBAppSwitcherPageView *)self _createOrDestroyWallpaperOverlayView];
  }
}

- (void)setWallpaperOverlayAlpha:(double)a3
{
  if (self->_wallpaperOverlayAlpha != a3)
  {
    self->_wallpaperOverlayAlpha = a3;
    [(SBAppSwitcherPageView *)self _updateWallpaperOverlayAlpha];
  }
}

- (void)setNeedsWallpaperGradientTreatment:(BOOL)a3
{
  if (self->_needsWallpaperGradientTreatment != a3)
  {
    self->_needsWallpaperGradientTreatment = a3;
    [(SBAppSwitcherPageView *)self _createOrDestroyWallpaperGradientView];
  }
}

- (void)setWallpaperGradientAttributes:(SBSwitcherWallpaperGradientAttributes)a3
{
  trailingAlpha = a3.trailingAlpha;
  leadingAlpha = a3.leadingAlpha;
  p_wallpaperGradientAttributes = &self->_wallpaperGradientAttributes;
  if ((SBSwitcherWallpaperGradientAttributesEqual() & 1) == 0)
  {
    p_wallpaperGradientAttributes->leadingAlpha = leadingAlpha;
    p_wallpaperGradientAttributes->trailingAlpha = trailingAlpha;

    [(SBAppSwitcherPageView *)self _updateWallpaperGradientAttributes];
  }
}

- (void)setLighteningAlpha:(double)a3
{
  if (self->_lighteningAlpha != a3)
  {
    self->_lighteningAlpha = a3;
    [(SBAppSwitcherPageView *)self _updateTintViewAlpha];
  }
}

- (void)setOrientation:(int64_t)a3
{
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
    v4 = [(SBAppSwitcherPageView *)self view];
    [v4 setOrientation:self->_orientation];

    [(SBAppSwitcherPageView *)self setNeedsLayout];
  }
}

- (void)setHighlightType:(unint64_t)a3
{
  if (self->_highlightType != a3)
  {
    self->_highlightType = a3;
    [(SBAppSwitcherPageShadowView *)self->_shadowView setHighlightType:?];
  }
}

- (void)setShouldClipContentView:(BOOL)a3
{
  if (self->_shouldClipContentView != a3)
  {
    self->_shouldClipContentView = a3;
    [(SBAppSwitcherPageView *)self _updateCornerRadius];
    [(SBAppSwitcherPageView *)self setNeedsLayout];

    [(SBAppSwitcherPageView *)self layoutIfNeeded];
  }
}

- (void)setContentClippingFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_contentClippingFrame = &self->_contentClippingFrame;
  if (!CGRectEqualToRect(self->_contentClippingFrame, a3))
  {
    p_contentClippingFrame->origin.x = x;
    p_contentClippingFrame->origin.y = y;
    p_contentClippingFrame->size.width = width;
    p_contentClippingFrame->size.height = height;
    [(SBAppSwitcherPageView *)self setNeedsLayout];

    [(SBAppSwitcherPageView *)self layoutIfNeeded];
  }
}

- (void)setOverlayViewSize:(CGSize)a3
{
  if (self->_overlayViewSize.width != a3.width || self->_overlayViewSize.height != a3.height)
  {
    self->_overlayViewSize = a3;
    [(SBAppSwitcherPageView *)self setNeedsLayout];
  }
}

- (void)setFullyPresentedSize:(CGSize)a3
{
  if (self->_fullyPresentedSize.width != a3.width || self->_fullyPresentedSize.height != a3.height)
  {
    self->_fullyPresentedSize = a3;
    [(SBAppSwitcherPageView *)self setNeedsLayout];
  }
}

- (void)setSwitcherCardScale:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_switcherCardScale = a3;
    shadowView = self->_shadowView;

    [(SBAppSwitcherPageShadowView *)shadowView setSwitcherCardScale:a3];
  }
}

- (void)setShouldScaleOverlayToFillBounds:(BOOL)a3
{
  if (self->_shouldScaleOverlayToFillBounds != a3)
  {
    self->_shouldScaleOverlayToFillBounds = a3;
    [(SBAppSwitcherPageView *)self setNeedsLayout];
  }
}

- (void)setSlideOverBorderWidth:(double)a3
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_slideOverBorderWidth = a3;
    [(SBAppSwitcherPageView *)self _updateCornerRadius];
    if (![(SBAppSwitcherPageView *)self _inSlideOver])
    {
      [(SBAppSwitcherPageView *)self setSlideOverTonguePortalSourceView:0];
    }

    [(SBAppSwitcherPageView *)self _updateSlideOverGlass];

    [(SBAppSwitcherPageView *)self setNeedsLayout];
  }
}

- (UIView)slideOverTonguePortalSourceView
{
  v2 = [(UIView *)self->_slideOverTonguePortalView layer];
  v3 = [v2 sourceLayer];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 delegate];

  return v8;
}

- (void)setSlideOverTonguePortalSourceView:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 layer];
  v6 = [(UIView *)self->_slideOverTonguePortalView layer];
  v7 = [v6 sourceLayer];
  v8 = [v4 layer];

  if (v7 != v8)
  {
    [(UIView *)self->_slideOverTonguePortalView removeFromSuperview];
    slideOverTonguePortalView = self->_slideOverTonguePortalView;
    self->_slideOverTonguePortalView = 0;

    if (v5)
    {
      v10 = objc_alloc_init(MEMORY[0x277D76180]);
      v11 = [(UIView *)v10 layer];
      [v11 setSourceLayer:v5];

      [(UIView *)v10 setHidesSourceView:1];
      [(UIView *)v10 setMatchesPosition:0];
      [(UIView *)v10 setMatchesTransform:0];
      [(UIView *)v10 setAllowsHitTesting:1];
      [(UIView *)v10 setForwardsClientHitTestingToSourceView:1];
      v12 = self->_slideOverTonguePortalView;
      self->_slideOverTonguePortalView = v10;
      v13 = v10;

      [(SBAppSwitcherPageView *)self _addContentView:self->_slideOverTonguePortalView];
      v14 = [MEMORY[0x277CD9EE8] animation];
      v15 = [(UIView *)self->_contentContainerView layer];
      [v14 setSourceLayer:v15];

      [v14 setDuration:INFINITY];
      [v14 setFillMode:*MEMORY[0x277CDA230]];
      [v14 setRemovedOnCompletion:0];
      [v14 setAppliesX:1];
      [v14 setAppliesY:1];
      [v14 setUsesNormalizedCoordinates:1];
      v16 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.5, 0.5}];
      v19[0] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
      [v14 setSourcePoints:v17];

      v18 = [(UIView *)self->_slideOverTonguePortalView layer];

      [v18 addAnimation:v14 forKey:@"MatchMove"];
    }

    [(SBAppSwitcherPageView *)self _updateSlideOverGlass];
    [(SBAppSwitcherPageView *)self setNeedsLayout];
  }
}

- (void)_updateSlideOverGlass
{
  if ([(SBAppSwitcherPageView *)self _inSlideOver])
  {
    v3 = self->_slideOverTonguePortalView != 0;
  }

  else
  {
    v3 = 1;
  }

  [(SBSlideOverGlassMaterialView *)self->_glassView setHidden:v3];
  sdfElementContainerView = self->_sdfElementContainerView;

  [(UIView *)sdfElementContainerView setHidden:v3];
}

- (void)invalidate
{
  v3 = [(SBAppSwitcherPageView *)self view];
  [v3 invalidate];

  [(SBAppSwitcherPageView *)self setView:0];
  [(SBAppSwitcherPageView *)self pointerWillExitRegion];
  WeakRetained = objc_loadWeakRetained(&self->_systemPointerInteractionManager);
  [WeakRetained unregisterView:self];

  objc_storeWeak(&self->_systemPointerInteractionManager, 0);
}

- (void)_createOrDestroyWallpaperGradientView
{
  needsWallpaperGradientTreatment = self->_needsWallpaperGradientTreatment;
  wallpaperGradientView = self->_wallpaperGradientView;
  if (needsWallpaperGradientTreatment)
  {
    if (!wallpaperGradientView)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __62__SBAppSwitcherPageView__createOrDestroyWallpaperGradientView__block_invoke;
      v6[3] = &unk_2783A8C18;
      v6[4] = self;
      [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v6];
    }
  }

  else if (wallpaperGradientView)
  {
    [(SBAppSwitcherWallpaperGradientView *)wallpaperGradientView removeFromSuperview];
    v5 = self->_wallpaperGradientView;
    self->_wallpaperGradientView = 0;
  }
}

void __62__SBAppSwitcherPageView__createOrDestroyWallpaperGradientView__block_invoke(uint64_t a1)
{
  v2 = [[SBAppSwitcherWallpaperGradientView alloc] initWithPrivateStyle:-2];
  v3 = *(a1 + 32);
  v4 = *(v3 + 568);
  *(v3 + 568) = v2;

  v5 = [*(*(a1 + 32) + 568) inputSettings];
  [v5 setScale:0.1];
  [v5 setBlurRadius:50.0];
  [v5 setBackdropVisible:1];
  [*(*(a1 + 32) + 568) bs_setHitTestingDisabled:1];
  [*(*(a1 + 32) + 568) setGroupName:@"AppSwitcherWallpaperGradient"];
  [*(a1 + 32) _addContentView:*(*(a1 + 32) + 568)];
  [*(a1 + 32) _updateWallpaperGradientAttributes];
  [*(a1 + 32) _updateCornerRadius];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBAppSwitcherPageView;
  v4 = a3;
  [(SBAppSwitcherPageView *)&v8 traitCollectionDidChange:v4];
  v5 = [(SBAppSwitcherPageView *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(SBAppSwitcherPageView *)self _updateEffectOverlayViews];
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  if (self->_settings == a3)
  {
    block[5] = v4;
    block[6] = v5;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__SBAppSwitcherPageView_settings_changedValueForKey___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __53__SBAppSwitcherPageView_settings_changedValueForKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateShadowPresence];
  v2 = *(a1 + 32);

  return [v2 _updateEffectOverlayViews];
}

- (BOOL)shouldBeginPointerInteractionRequest:(id)a3 atLocation:(CGPoint)a4 forView:(id)a5
{
  y = a4.y;
  x = a4.x;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v37 = 0;
  v9 = *MEMORY[0x277CBF3A0];
  v10 = *(MEMORY[0x277CBF3A0] + 16);
  v35 = *MEMORY[0x277CBF3A0];
  v36 = v10;
  if (!self->_resizingAllowed)
  {
    goto LABEL_8;
  }

  if (self->_occludedInContinuousExposeStage)
  {
    goto LABEL_8;
  }

  v33 = v10;
  v34 = v9;
  v11 = [(SBAppSwitcherPageView *)self window];
  [v11 convertPoint:self fromView:{x, y}];
  v13 = v12;
  v15 = v14;

  v16 = [(SBAppSwitcherPageView *)self window];
  v17 = [WeakRetained appSwitcherPageView:self shouldBeginPointerInteractionAtLocation:v16 window:{v13, v15}];

  v10 = v33;
  v9 = v34;
  if (!v17)
  {
    goto LABEL_8;
  }

  [(SBAppSwitcherPageView *)self _contentViewFrame:v34.x];
  v19 = v18;
  v21 = v20;
  width = v22;
  height = v24;
  if ([(SBAppSwitcherPageView *)self _inSlideOver])
  {
    v38.origin.x = v19;
    v38.origin.y = v21;
    v38.size.width = width;
    v38.size.height = height;
    v39 = CGRectInset(v38, -self->_slideOverBorderWidth, -self->_slideOverBorderWidth);
    v19 = v39.origin.x;
    v21 = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
  }

  [(SBAppSwitcherSettings *)self->_settings liveResizePointerInteractionRegionInnerLength];
  v27 = v26;
  [(SBAppSwitcherSettings *)self->_settings liveResizePointerInteractionRegionOuterLength];
  v29 = [SBEdgeResizeSystemPointerInteractionHelper shouldBeginPointerInteractionAtLocation:[(SBAppSwitcherPageView *)self visibleTouchResizeCorners] frame:&v37 innerLengthOfInteractionRegion:&v35 outerLengthOfInteractionRegion:x cornerLengthOfInteractionRegion:y occupiedCorners:v19 hoveringOverEdge:v21 pointerRegion:width, height, v27, v28, 0x4039000000000000];
  v10 = v33;
  v9 = v34;
  if (v29)
  {
    self->_hoveringOverEdge = v37;
    v30 = v36;
    self->_pointerRegion.origin = v35;
    self->_pointerRegion.size = v30;
    v31 = 1;
  }

  else
  {
LABEL_8:
    v31 = 0;
    self->_hoveringOverEdge = 0;
    self->_pointerRegion.origin = v9;
    self->_pointerRegion.size = v10;
  }

  [WeakRetained appSwitcherPageView:self pointerIsHoveringOverEdge:self->_hoveringOverEdge];

  return v31;
}

- (void)pointerWillExitRegion
{
  v3 = MEMORY[0x277CBF3A0];
  [(UIView *)self->_pointerHitTestBlocker setFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v4 = *(v3 + 16);
  self->_pointerRegion.origin = *v3;
  self->_pointerRegion.size = v4;
  self->_hoveringOverEdge = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained appSwitcherPageView:self pointerIsHoveringOverEdge:self->_hoveringOverEdge];
}

- (UIEdgeInsets)pointerInteractionHitTestInsetsForView:(id)a3
{
  [(SBAppSwitcherPageView *)self _inSlideOver];

  UIEdgeInsetsMakeWithEdges();
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (id)regionAtLocation:(CGPoint)a3 forView:(id)a4
{
  v5 = MEMORY[0x277D75880];
  p_pointerRegion = &self->_pointerRegion;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v5 regionWithRect:v8 identifier:{p_pointerRegion->origin.x, p_pointerRegion->origin.y, p_pointerRegion->size.width, p_pointerRegion->size.height}];

  [v9 setLatchingAxes:{+[SBEdgeResizeSystemPointerInteractionHelper latchingAxesForHoveredEdge:](SBEdgeResizeSystemPointerInteractionHelper, "latchingAxesForHoveredEdge:", self->_hoveringOverEdge)}];

  return v9;
}

- (id)styleForRegion:(id)a3 forView:(id)a4
{
  pointerHitTestBlocker = self->_pointerHitTestBlocker;
  [a3 rect];
  [(UIView *)pointerHitTestBlocker setFrame:?];
  hoveringOverEdge = self->_hoveringOverEdge;
  [(SBAppSwitcherSettings *)self->_settings liveResizePointerInteractionRegionInnerLength];
  v8 = v7;
  [(SBAppSwitcherSettings *)self->_settings liveResizePointerInteractionRegionOuterLength];
  v10 = [SBEdgeResizeSystemPointerInteractionHelper fancyResizePointerShapeHoveringOverEdge:hoveringOverEdge innerLengthOfInteractionRegion:v8 outerLengthOfInteractionRegion:v9 cornerRadii:self->_cornerRadii.topLeft, self->_cornerRadii.bottomLeft, self->_cornerRadii.bottomRight, self->_cornerRadii.topRight];
  v11 = [MEMORY[0x277D75890] styleWithShape:v10 constrainedAxes:0];

  return v11;
}

- (UIRectCornerRadii)cornerRadii
{
  topLeft = self->_cornerRadii.topLeft;
  bottomLeft = self->_cornerRadii.bottomLeft;
  bottomRight = self->_cornerRadii.bottomRight;
  topRight = self->_cornerRadii.topRight;
  result.topRight = topRight;
  result.bottomRight = bottomRight;
  result.bottomLeft = bottomLeft;
  result.topLeft = topLeft;
  return result;
}

- (CGRect)contentClippingFrame
{
  x = self->_contentClippingFrame.origin.x;
  y = self->_contentClippingFrame.origin.y;
  width = self->_contentClippingFrame.size.width;
  height = self->_contentClippingFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)overlayViewSize
{
  width = self->_overlayViewSize.width;
  height = self->_overlayViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)fullyPresentedSize
{
  width = self->_fullyPresentedSize.width;
  height = self->_fullyPresentedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (SBSwitcherWallpaperGradientAttributes)wallpaperGradientAttributes
{
  leadingAlpha = self->_wallpaperGradientAttributes.leadingAlpha;
  trailingAlpha = self->_wallpaperGradientAttributes.trailingAlpha;
  result.trailingAlpha = trailingAlpha;
  result.leadingAlpha = leadingAlpha;
  return result;
}

- (SBAppSwitcherPageViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end