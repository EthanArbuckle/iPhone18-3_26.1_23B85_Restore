@interface PBFPosterGalleryPreviewView
- (CGRect)posterPreviewFrame;
- (CGSize)intrinsicContentSize;
- (PBFPosterGalleryPreviewView)initWithFrame:(CGRect)frame;
- (id)makeComplicationsPortalView;
- (id)pbf_displayContext;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setReusableViewMap:(id)map;
- (void)setShowsLoadingIndicator:(BOOL)indicator;
- (void)sizeToFit;
- (void)updatePreview:(id)preview posterPreviewView:(id)view layoutOrientation:(int64_t)orientation index:(unint64_t)index;
@end

@implementation PBFPosterGalleryPreviewView

- (PBFPosterGalleryPreviewView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = PBFPosterGalleryPreviewView;
  v3 = [(PBFPosterGalleryPreviewView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    window = [(PBFPosterGalleryPreviewView *)v3 window];
    screen = [window screen];
    v7 = [PBFPosterGalleryViewSpec specForScreen:screen];
    [v7 posterCornerRadius];
    v9 = v8;

    v10 = objc_alloc_init(PBFPosterGalleryPreviewContentView);
    posterPreviewContentView = v4->_posterPreviewContentView;
    v4->_posterPreviewContentView = v10;

    v12 = objc_alloc_init(PBFShadowView);
    shadowView = v4->_shadowView;
    v4->_shadowView = v12;

    [(PBFShadowView *)v4->_shadowView setCornerRadius:v9];
    [(PBFShadowView *)v4->_shadowView setShadowType:2];
    v14 = [[PBFPosterGalleryShadowContainerView alloc] initWithContentView:v4->_posterPreviewContentView shadowView:v4->_shadowView perspectiveEnabled:0];
    shadowContainerView = v4->_shadowContainerView;
    v4->_shadowContainerView = v14;

    v16 = v4->_shadowContainerView;
    [(PBFPosterGalleryPreviewView *)v4 bounds];
    [(PBFPosterGalleryShadowContainerView *)v16 setFrame:?];
    [(PBFPosterGalleryPreviewView *)v4 addSubview:v4->_shadowContainerView];
    v17 = [PBFPosterGalleryPreviewComplicationContentView alloc];
    [(PBFPosterGalleryPreviewView *)v4 bounds];
    v18 = [(PBFPosterGalleryPreviewComplicationContentView *)v17 initWithFrame:?];
    posterPreviewComplicationContentView = v4->_posterPreviewComplicationContentView;
    v4->_posterPreviewComplicationContentView = v18;

    [(PBFPosterGalleryPreviewComplicationContentView *)v4->_posterPreviewComplicationContentView setPreferredCornerRadius:v9 != 0.0];
    [(PBFPosterGalleryPreviewView *)v4 addSubview:v4->_posterPreviewComplicationContentView];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v8 = *MEMORY[0x277CBF2C0];
  v9 = v3;
  v10 = *(MEMORY[0x277CBF2C0] + 32);
  [(PBFPosterGalleryPreviewView *)self setTransform:&v8];
  v4 = *(MEMORY[0x277CD9DE8] + 80);
  v12 = *(MEMORY[0x277CD9DE8] + 64);
  v13 = v4;
  v5 = *(MEMORY[0x277CD9DE8] + 112);
  v14 = *(MEMORY[0x277CD9DE8] + 96);
  v15 = v5;
  v6 = *(MEMORY[0x277CD9DE8] + 16);
  v8 = *MEMORY[0x277CD9DE8];
  v9 = v6;
  v7 = *(MEMORY[0x277CD9DE8] + 48);
  v10 = *(MEMORY[0x277CD9DE8] + 32);
  v11 = v7;
  [(PBFPosterGalleryPreviewView *)self setTransform3D:&v8];
  self->_layoutOrientation = 1;
  [(PBFPosterGalleryPreviewContentView *)self->_posterPreviewContentView prepareForReuse];
  [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView prepareForReuse];
  [(PBFPosterGalleryPreviewView *)self setReusableViewMap:0];
}

- (void)didMoveToWindow
{
  v14.receiver = self;
  v14.super_class = PBFPosterGalleryPreviewView;
  [(PBFPosterGalleryPreviewView *)&v14 didMoveToWindow];
  window = [(PBFPosterGalleryPreviewView *)self window];
  screen = [window screen];
  v5 = [PBFPosterGalleryViewSpec specForScreen:screen];
  [v5 posterCornerRadius];
  v7 = v6;

  v8 = v7;
  if (self->_previewType == PBFPreviewTypeHero)
  {
    window2 = [(PBFPosterGalleryPreviewView *)self window];
    screen2 = [window2 screen];
    v11 = [PBFPosterGalleryViewSpec specForScreen:screen2];
    [v11 posterHeroContentSize];
    v13 = v12;

    v8 = v13 / 7.0;
  }

  [(PBFShadowView *)self->_shadowView setCornerRadius:v8];
  [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView setPreferredCornerRadius:v7 != 0.0];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = PBFPosterGalleryPreviewView;
  [(PBFPosterGalleryPreviewView *)&v8 layoutSubviews];
  pbf_displayContext = [(PBFPosterGalleryPreviewView *)self pbf_displayContext];
  [pbf_displayContext pbf_frame];

  [(PBFPosterGalleryPreviewView *)self bounds];
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  if (!CGRectEqualToRect(v9, *MEMORY[0x277CBF3A0]))
  {
    [(PBFPosterGalleryShadowContainerView *)self->_shadowContainerView setFrame:x, y, width, height];
    [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView setFrame:x, y, width, height];
  }
}

- (void)sizeToFit
{
  [(PBFPosterGalleryPreviewView *)self frame];
  v4 = v3;
  v6 = v5;
  [(PBFPosterGalleryPreviewView *)self intrinsicContentSize];

  [(PBFPosterGalleryPreviewView *)self setFrame:v4, v6, v7, v8];
}

- (CGSize)intrinsicContentSize
{
  window = [(PBFPosterGalleryPreviewView *)self window];
  screen = [window screen];
  v5 = [PBFPosterGalleryViewSpec specForScreen:screen];

  if (self->_previewType == PBFPreviewTypeHero)
  {
    [v5 posterHeroContentSize];
  }

  else
  {
    [v5 posterContentSizeForOrientation:{-[PBFPosterGalleryPreviewView layoutOrientation](self, "layoutOrientation")}];
  }

  v8 = v6;
  v9 = v7;

  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)updatePreview:(id)preview posterPreviewView:(id)view layoutOrientation:(int64_t)orientation index:(unint64_t)index
{
  previewCopy = preview;
  viewCopy = view;
  [(PBFPosterGalleryPreviewContentView *)self->_posterPreviewContentView updatePreview:previewCopy posterPreviewView:viewCopy layoutOrientation:orientation index:index];
  if (self->_layoutOrientation != orientation)
  {
    goto LABEL_5;
  }

  posterPreviewView = [(PBFPosterGalleryPreviewContentView *)self->_posterPreviewContentView posterPreviewView];
  if (posterPreviewView != viewCopy || self->_preview != previewCopy)
  {

LABEL_5:
    self->_index = index;
    objc_storeStrong(&self->_preview, preview);
    self->_previewType = [(PBFPosterPreview *)previewCopy type];
    self->_layoutOrientation = orientation;
    [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView setLayoutOrientation:orientation];
    [(PBFPosterGalleryPreviewView *)self invalidateIntrinsicContentSize];
    [(PBFPosterGalleryPreviewView *)self setNeedsLayout];
    goto LABEL_6;
  }

  index = self->_index;

  if (index != index)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (CGRect)posterPreviewFrame
{
  [(PBFPosterGalleryPreviewContentView *)self->_posterPreviewContentView previewImageFrame];
  posterPreviewContentView = self->_posterPreviewContentView;

  [(PBFPosterGalleryPreviewView *)self convertRect:posterPreviewContentView fromView:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)setShowsLoadingIndicator:(BOOL)indicator
{
  v37[6] = *MEMORY[0x277D85DE8];
  if (self->_showsLoadingIndicator != indicator)
  {
    self->_showsLoadingIndicator = indicator;
    if (indicator)
    {
      v4 = objc_alloc_init(MEMORY[0x277D75D18]);
      v5 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
      [v4 setBackgroundColor:v5];

      layer = [v4 layer];
      [layer setCompositingFilter:*MEMORY[0x277CDA610]];

      [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
      v7 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [v7 setColor:whiteColor];

      [v7 startAnimating];
      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v4 addSubview:v7];
      [v4 setAlpha:0.0];
      [(PBFPosterGalleryPreviewView *)self addSubview:v4];
      v25 = MEMORY[0x277CCAAD0];
      v34 = v7;
      centerXAnchor = [v7 centerXAnchor];
      centerXAnchor2 = [v4 centerXAnchor];
      v31 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v37[0] = v31;
      centerYAnchor = [v7 centerYAnchor];
      centerYAnchor2 = [v4 centerYAnchor];
      v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v37[1] = v28;
      topAnchor = [v4 topAnchor];
      topAnchor2 = [(PBFPosterGalleryPreviewView *)self topAnchor];
      v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v37[2] = v24;
      bottomAnchor = [v4 bottomAnchor];
      bottomAnchor2 = [(PBFPosterGalleryPreviewView *)self bottomAnchor];
      v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v37[3] = v9;
      leadingAnchor = [v4 leadingAnchor];
      leadingAnchor2 = [(PBFPosterGalleryPreviewView *)self leadingAnchor];
      v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v37[4] = v12;
      trailingAnchor = [v4 trailingAnchor];
      trailingAnchor2 = [(PBFPosterGalleryPreviewView *)self trailingAnchor];
      v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v37[5] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:6];
      [v25 activateConstraints:v16];

      v17 = MEMORY[0x277D75D18];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __56__PBFPosterGalleryPreviewView_setShowsLoadingIndicator___block_invoke;
      v35[3] = &unk_2782C5888;
      v18 = v4;
      v36 = v18;
      [v17 animateWithDuration:v35 animations:0.2];
      loadingIndicatorContainerView = self->_loadingIndicatorContainerView;
      self->_loadingIndicatorContainerView = v18;
      v20 = v18;
    }

    else
    {
      [(UIView *)self->_loadingIndicatorContainerView removeFromSuperview];
      v21 = self->_loadingIndicatorContainerView;
      self->_loadingIndicatorContainerView = 0;
    }
  }
}

- (void)setReusableViewMap:(id)map
{
  mapCopy = map;
  if (([(PUIReusableViewMap *)self->_reusableViewMap isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_reusableViewMap, map);
    [(PBFPosterGalleryPreviewComplicationContentView *)self->_posterPreviewComplicationContentView setReusableViewMap:mapCopy];
  }
}

- (id)pbf_displayContext
{
  v6.receiver = self;
  v6.super_class = PBFPosterGalleryPreviewView;
  pbf_displayContext = [(UIView *)&v6 pbf_displayContext];
  v4 = [pbf_displayContext displayContextWithUpdatedInterfaceOrientation:{-[PBFPosterGalleryPreviewView layoutOrientation](self, "layoutOrientation")}];

  return v4;
}

- (id)makeComplicationsPortalView
{
  v2 = [objc_alloc(MEMORY[0x277D76180]) initWithSourceView:self->_posterPreviewComplicationContentView];
  [v2 setHidesSourceView:0];
  [v2 setMatchesPosition:0];
  [v2 setMatchesTransform:0];
  [v2 setAllowsBackdropGroups:1];

  return v2;
}

@end