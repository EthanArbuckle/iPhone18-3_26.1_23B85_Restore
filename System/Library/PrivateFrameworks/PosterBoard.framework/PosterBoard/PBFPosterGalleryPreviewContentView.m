@interface PBFPosterGalleryPreviewContentView
- (BOOL)_shouldShowAsStack;
- (CGRect)previewImageFrame;
- (PBFPosterGalleryPreviewContentView)initWithFrame:(CGRect)a3;
- (void)_createHiddenViewsIfNeeded;
- (void)_updateHiddenImages;
- (void)layoutSubviews;
- (void)prepareForFullScreenTransitionWithContentView:(id)a3;
- (void)prepareForReuse;
- (void)setPosterPreviewView:(id)a3;
- (void)updatePreview:(id)a3 posterPreviewView:(id)a4 layoutOrientation:(int64_t)a5 index:(unint64_t)a6;
@end

@implementation PBFPosterGalleryPreviewContentView

- (PBFPosterGalleryPreviewContentView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = PBFPosterGalleryPreviewContentView;
  v3 = [(PBFPosterGalleryPreviewContentView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [PBFPosterGalleryViewSpec specForScreen:0];
    v5 = objc_opt_new();
    contentContainerView = v3->_contentContainerView;
    v3->_contentContainerView = v5;

    [(UIView *)v3->_contentContainerView setClipsToBounds:1];
    [(UIView *)v3->_contentContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    if ((PUIFeatureEnabled() & 1) == 0)
    {
      v7 = v3->_contentContainerView;
      v8 = [v4 contentContainerBackgroundColor];
      [(UIView *)v7 setBackgroundColor:v8];
    }

    [(PBFPosterGalleryPreviewContentView *)v3 addSubview:v3->_contentContainerView];
  }

  return v3;
}

- (void)prepareForReuse
{
  if ([(UIView *)self->_fullScreenTransitionView isDescendantOfView:self])
  {
    [(UIView *)self->_fullScreenTransitionView removeFromSuperview];
  }

  fullScreenTransitionView = self->_fullScreenTransitionView;
  self->_fullScreenTransitionView = 0;

  self->_index = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)updatePreview:(id)a3 posterPreviewView:(id)a4 layoutOrientation:(int64_t)a5 index:(unint64_t)a6
{
  v17 = a3;
  v11 = a4;
  if (self->_posterPreview != v17 || !BSEqualObjects() || self->_layoutOrientation != a5 || self->_index != a6)
  {
    self->_index = a6;
    objc_storeStrong(&self->_posterPreview, a3);
    v12 = [(PBFPosterPreview *)v17 type];
    previewType = self->_previewType;
    self->_previewType = v12;

    if (self->_previewType == PBFPreviewTypeHero && PUIFeatureEnabled())
    {
      [(UIView *)self->_contentContainerView pui_setPosterSwitcherGlassBackground];
    }

    else if ((PUIFeatureEnabled() & 1) == 0)
    {
      v14 = [PBFPosterGalleryViewSpec specForScreen:0];
      contentContainerView = self->_contentContainerView;
      v16 = [v14 contentContainerBackgroundColor];
      [(UIView *)contentContainerView setBackgroundColor:v16];
    }

    [(PBFPosterGalleryPreviewContentView *)self setPosterPreviewView:v11];
    self->_layoutOrientation = a5;
    [(PBFPosterGalleryPreviewContentView *)self _createHiddenViewsIfNeeded];
    [(PBFPosterGalleryPreviewContentView *)self invalidateIntrinsicContentSize];
    [(PBFPosterGalleryPreviewContentView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v35.receiver = self;
  v35.super_class = PBFPosterGalleryPreviewContentView;
  [(PBFPosterGalleryPreviewContentView *)&v35 layoutSubviews];
  [(PBFPosterGalleryPreviewContentView *)self bounds];
  v6 = v5;
  v8 = v7;
  if (v3 != *MEMORY[0x277CBF3A8] || v4 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v10 = v3;
    v11 = v4;
    v12 = [(PBFPosterGalleryPreviewContentView *)self traitCollection];
    [v12 displayScale];

    v13 = [(PBFPosterGalleryPreviewContentView *)self _shouldShowAsStack];
    previewType = self->_previewType;
    v15 = PBFPreviewTypeHero;
    v16 = v11;
    v17 = v10;
    v18 = v8;
    v19 = v6;
    if (v13)
    {
      UIRectRoundToScale();
      v19 = v20;
      v18 = v21;
      v17 = v22;
      v16 = v23;
    }

    v24 = [(PBFPosterGalleryPreviewContentView *)self window];
    v25 = [v24 screen];
    v26 = [PBFPosterGalleryViewSpec specForScreen:v25];

    [v26 posterCornerRadius];
    v34 = v27;
    [(UIView *)self->_contentContainerView setFrame:v19, v18, v17, v16];
    portalView = self->_portalView;
    [(UIView *)self->_contentContainerView bounds];
    [(_UIPortalView *)portalView setFrame:?];
    fullScreenTransitionView = self->_fullScreenTransitionView;
    [(UIView *)self->_contentContainerView bounds];
    [(UIView *)fullScreenTransitionView setFrame:?];
    if (self->_fullScreenTransitionView)
    {
      [(UIView *)self->_contentContainerView bringSubviewToFront:?];
    }

    if (v13)
    {
      [(UIImageView *)self->_frontHiddenImageView setFrame:v6, v8, v10, v11];
      UIRectRoundToScale();
      [(UIImageView *)self->_frontHiddenImageView setFrame:?];
      [(UIImageView *)self->_frontHiddenImageView _setContinuousCornerRadius:v34 * 0.839999974];
      UIRectRoundToScale();
      [(UIImageView *)self->_backHiddenImageView setFrame:?];
      [(UIImageView *)self->_backHiddenImageView _setContinuousCornerRadius:v34 * 0.720000029];
      contentContainerView = self->_contentContainerView;
      v31 = v34 * 0.964999974;
    }

    else
    {
      v32 = self->_contentContainerView;
      if (previewType == v15)
      {
        [v26 posterHeroContentSize];
        [(UIView *)v32 _setCornerRadius:v33 * 0.5];
        goto LABEL_14;
      }

      [v26 posterCornerRadius];
      contentContainerView = v32;
    }

    [(UIView *)contentContainerView _setContinuousCornerRadius:v31];
LABEL_14:
  }
}

- (void)setPosterPreviewView:(id)a3
{
  v5 = a3;
  if (self->_posterPreviewView != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_posterPreviewView, a3);
    v6 = [(UIView *)v11 accessibilityIdentifier];
    [(PBFPosterGalleryPreviewContentView *)self setAccessibilityIdentifier:v6];

    portalView = self->_portalView;
    if (portalView)
    {
      [(_UIPortalView *)portalView setSourceView:v11];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277D76180]) initWithSourceView:v11];
      v9 = self->_portalView;
      self->_portalView = v8;

      [(_UIPortalView *)self->_portalView setHidesSourceView:0];
      [(_UIPortalView *)self->_portalView setMatchesPosition:0];
      [(_UIPortalView *)self->_portalView setMatchesTransform:0];
      [(_UIPortalView *)self->_portalView setAllowsBackdropGroups:1];
      [(UIView *)self->_contentContainerView addSubview:self->_portalView];
    }

    posterPreviewView = self->_posterPreviewView;
    if (posterPreviewView)
    {
      if (self->_portalView && ![(UIView *)posterPreviewView isHidden])
      {
        [(PBFPosterGalleryPreviewContentView *)self setNeedsLayout];
        [(PBFPosterGalleryPreviewContentView *)self layoutIfNeeded];
      }
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)prepareForFullScreenTransitionWithContentView:(id)a3
{
  objc_storeStrong(&self->_fullScreenTransitionView, a3);
  v6 = a3;
  fullScreenTransitionView = self->_fullScreenTransitionView;
  [(UIView *)self->_contentContainerView bounds];
  [(UIView *)fullScreenTransitionView setFrame:?];
  [(UIView *)self->_contentContainerView addSubview:v6];
}

- (CGRect)previewImageFrame
{
  [(UIView *)self->_contentContainerView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)_shouldShowAsStack
{
  if (self->_previewType == PBFPreviewTypeSmartAlbum)
  {
    return PUIFeatureEnabled() ^ 1;
  }

  else
  {
    return 0;
  }
}

- (void)_createHiddenViewsIfNeeded
{
  if ([(PBFPosterGalleryPreviewContentView *)self _shouldShowAsStack])
  {
    v3 = [(PBFPosterGalleryPreviewContentView *)self window];
    v4 = [v3 screen];
    v13 = [PBFPosterGalleryViewSpec specForScreen:v4];

    if (!self->_frontHiddenImageView)
    {
      v5 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
      frontHiddenImageView = self->_frontHiddenImageView;
      self->_frontHiddenImageView = v5;

      [(UIImageView *)self->_frontHiddenImageView setContentMode:0];
      [(UIImageView *)self->_frontHiddenImageView setClipsToBounds:1];
      v7 = self->_frontHiddenImageView;
      [(UIImageView *)v13 posterCornerRadius];
      [(UIImageView *)v7 _setContinuousCornerRadius:?];
      [(UIImageView *)self->_frontHiddenImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PBFPosterGalleryPreviewContentView *)self insertSubview:self->_frontHiddenImageView belowSubview:self->_contentContainerView];
    }

    if (!self->_backHiddenImageView)
    {
      v8 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
      backHiddenImageView = self->_backHiddenImageView;
      self->_backHiddenImageView = v8;

      [(UIImageView *)self->_backHiddenImageView setContentMode:0];
      [(UIImageView *)self->_backHiddenImageView setClipsToBounds:1];
      v10 = self->_backHiddenImageView;
      [(UIImageView *)v13 posterCornerRadius];
      [(UIImageView *)v10 _setContinuousCornerRadius:?];
      [(UIImageView *)self->_backHiddenImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIImageView *)self->_backHiddenImageView setAlpha:0.959999979];
      [(PBFPosterGalleryPreviewContentView *)self insertSubview:self->_backHiddenImageView belowSubview:self->_frontHiddenImageView];
    }

    [(PBFPosterGalleryPreviewContentView *)self _updateHiddenImages];
    v11 = v13;
  }

  else
  {
    [(UIImageView *)self->_frontHiddenImageView removeFromSuperview];
    v12 = self->_frontHiddenImageView;
    self->_frontHiddenImageView = 0;

    [(UIImageView *)self->_backHiddenImageView removeFromSuperview];
    v11 = self->_backHiddenImageView;
    self->_backHiddenImageView = 0;
  }
}

- (void)_updateHiddenImages
{
  v3 = 2 * self->_index % 6;
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"shuffle-top-%tu", v3 | 1];
  v4 = MEMORY[0x277D755B8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v4 imageNamed:v11 inBundle:v5 compatibleWithTraitCollection:0];

  if (v6)
  {
    [(UIImageView *)self->_frontHiddenImageView setImage:v6];
  }

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"shuffle-top-%tu", v3 + 2];
  v8 = MEMORY[0x277D755B8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v8 imageNamed:v7 inBundle:v9 compatibleWithTraitCollection:0];

  if (v10)
  {
    [(UIImageView *)self->_backHiddenImageView setImage:v10];
  }
}

@end