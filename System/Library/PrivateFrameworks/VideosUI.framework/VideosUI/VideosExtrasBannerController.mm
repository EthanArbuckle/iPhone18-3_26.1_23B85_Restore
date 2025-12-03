@interface VideosExtrasBannerController
- (UIScrollView)trackingScrollView;
- (UIView)installedView;
- (VideosExtrasBannerController)initWithBannerElement:(id)element;
- (void)_configureBanner;
- (void)_doAllSetup;
- (void)_updateVignetteImage;
- (void)installBannerOnView:(id)view anchoredToScrollView:(id)scrollView;
- (void)setVignetteType:(unint64_t)type;
@end

@implementation VideosExtrasBannerController

- (VideosExtrasBannerController)initWithBannerElement:(id)element
{
  elementCopy = element;
  v13.receiver = self;
  v13.super_class = VideosExtrasBannerController;
  v6 = [(VideosExtrasBannerController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bannerElement, element);
    initForAutolayout = [objc_alloc(MEMORY[0x1E69DD250]) initForAutolayout];
    maskView = v7->_maskView;
    v7->_maskView = initForAutolayout;

    v10 = v7->_maskView;
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v10 setBackgroundColor:blackColor];
  }

  return v7;
}

- (void)_configureBanner
{
  background = [(IKDocumentBannerElement *)self->_bannerElement background];
  images = [background images];
  if ([images count])
  {
    firstObject = [images firstObject];
    artworkCatalog = [firstObject artworkCatalog];
    WeakRetained = objc_loadWeakRetained(&self->_installedView);
    [WeakRetained frame];
    [artworkCatalog setFittingSize:{v8, v9}];

    bannerImageView = self->_bannerImageView;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__VideosExtrasBannerController__configureBanner__block_invoke;
    v11[3] = &unk_1E8733900;
    v11[4] = self;
    [artworkCatalog setDestination:bannerImageView configurationBlock:v11];
  }
}

void __48__VideosExtrasBannerController__configureBanner__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [v5 size];
    v9 = v8 / v7;
    v10 = v7 <= 0.0;
    v11 = 1.0;
    if (!v10)
    {
      v11 = v9;
    }

    v12 = [MEMORY[0x1E696ACD8] constraintWithItem:*(*(a1 + 32) + 48) attribute:8 relatedBy:0 toItem:*(*(a1 + 32) + 48) attribute:7 multiplier:v11 constant:0.0];
    v13 = *(a1 + 32);
    v14 = *(v13 + 64);
    *(v13 + 64) = v12;

    [*(*(a1 + 32) + 64) setActive:1];
    [v15 setImage:v6];
  }

  else
  {
    [*(*(a1 + 32) + 64) setActive:0];
  }
}

- (void)_doAllSetup
{
  v38[4] = *MEMORY[0x1E69E9840];
  if (self->_installedConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
  }

  superview = [(UIImageView *)self->_bannerImageView superview];

  if (superview)
  {
    [(UIImageView *)self->_bannerImageView removeFromSuperview];
  }

  superview2 = [(UIImageView *)self->_vignetteImageView superview];

  if (superview2)
  {
    [(UIImageView *)self->_vignetteImageView removeFromSuperview];
  }

  superview3 = [(UIView *)self->_maskView superview];

  if (superview3)
  {
    [(UIView *)self->_maskView removeFromSuperview];
  }

  trackingScrollView = [(VideosExtrasBannerController *)self trackingScrollView];
  installedView = [(VideosExtrasBannerController *)self installedView];
  maskView = [(VideosExtrasBannerController *)self maskView];
  initForAutolayout = [objc_alloc(MEMORY[0x1E69DCAE0]) initForAutolayout];
  bannerImageView = self->_bannerImageView;
  self->_bannerImageView = initForAutolayout;

  LODWORD(v11) = 1132068864;
  [(UIImageView *)self->_bannerImageView setContentCompressionResistancePriority:0 forAxis:v11];
  LODWORD(v12) = 1132068864;
  [(UIImageView *)self->_bannerImageView setContentCompressionResistancePriority:1 forAxis:v12];
  [(UIImageView *)self->_bannerImageView setUserInteractionEnabled:0];
  initForAutolayout2 = [objc_alloc(MEMORY[0x1E69DCAE0]) initForAutolayout];
  vignetteImageView = self->_vignetteImageView;
  self->_vignetteImageView = initForAutolayout2;

  [(VideosExtrasBannerController *)self _updateVignetteImage];
  superview4 = [trackingScrollView superview];

  v16 = self->_bannerImageView;
  if (superview4 == installedView)
  {
    [installedView insertSubview:v16 belowSubview:trackingScrollView];
  }

  else
  {
    [installedView addSubview:v16];
  }

  [installedView insertSubview:self->_vignetteImageView aboveSubview:self->_bannerImageView];
  [installedView insertSubview:maskView aboveSubview:self->_vignetteImageView];
  topAnchor = [(UIImageView *)self->_bannerImageView topAnchor];
  [trackingScrollView topAnchor];
  v18 = trackingScrollView;
  v19 = v36 = trackingScrollView;
  v35 = [topAnchor constraintEqualToAnchor:v19];

  v37 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_bannerImageView attribute:3 relatedBy:-1 toItem:installedView attribute:3 multiplier:1.0 constant:0.0];
  v20 = *MEMORY[0x1E69DDCE0];
  v21 = *(MEMORY[0x1E69DDCE0] + 8);
  v22 = *(MEMORY[0x1E69DDCE0] + 16);
  v23 = *(MEMORY[0x1E69DDCE0] + 24);
  v33 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:self->_bannerImageView toView:v18 alongEdges:10 insets:{*MEMORY[0x1E69DDCE0], v21, v22, v23}];
  v34 = maskView;
  v24 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:self->_vignetteImageView toView:self->_bannerImageView alongEdges:11 insets:{v20, v21, v22, v23}];
  v25 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_vignetteImageView attribute:8 relatedBy:0 toItem:installedView attribute:8 multiplier:1.0 constant:0.0];
  v26 = [MEMORY[0x1E696ACD8] constraintWithItem:maskView attribute:3 relatedBy:0 toItem:self->_vignetteImageView attribute:4 multiplier:1.0 constant:0.0];
  v27 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:maskView toView:installedView alongEdges:14 insets:{v20, v21, v22, v23}];
  array = [MEMORY[0x1E695DF70] array];
  [(NSArray *)array addObjectsFromArray:v33];
  [(NSArray *)array addObjectsFromArray:v24];
  [(NSArray *)array addObjectsFromArray:v27];
  v38[0] = v37;
  v38[1] = v25;
  v29 = v25;
  v38[2] = v35;
  v38[3] = v26;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  [(NSArray *)array addObjectsFromArray:v30];

  installedConstraints = self->_installedConstraints;
  self->_installedConstraints = array;
  v32 = array;

  [MEMORY[0x1E696ACD8] activateConstraints:v32];
  [(VideosExtrasBannerController *)self _configureBanner];
}

- (void)installBannerOnView:(id)view anchoredToScrollView:(id)scrollView
{
  viewCopy = view;
  objc_storeWeak(&self->_trackingScrollView, scrollView);
  objc_storeWeak(&self->_installedView, viewCopy);

  [(VideosExtrasBannerController *)self _doAllSetup];
}

- (void)setVignetteType:(unint64_t)type
{
  if (self->_vignetteType != type)
  {
    self->_vignetteType = type;
    [(VideosExtrasBannerController *)self _updateVignetteImage];
  }
}

- (void)_updateVignetteImage
{
  v3 = [VideosExtrasBackgroundViewController vignetteImageForType:self->_vignetteType];
  [(UIImageView *)self->_vignetteImageView setImage:v3];
}

- (UIView)installedView
{
  WeakRetained = objc_loadWeakRetained(&self->_installedView);

  return WeakRetained;
}

- (UIScrollView)trackingScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_trackingScrollView);

  return WeakRetained;
}

@end