@interface VideosExtrasBannerController
- (UIScrollView)trackingScrollView;
- (UIView)installedView;
- (VideosExtrasBannerController)initWithBannerElement:(id)a3;
- (void)_configureBanner;
- (void)_doAllSetup;
- (void)_updateVignetteImage;
- (void)installBannerOnView:(id)a3 anchoredToScrollView:(id)a4;
- (void)setVignetteType:(unint64_t)a3;
@end

@implementation VideosExtrasBannerController

- (VideosExtrasBannerController)initWithBannerElement:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = VideosExtrasBannerController;
  v6 = [(VideosExtrasBannerController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bannerElement, a3);
    v8 = [objc_alloc(MEMORY[0x1E69DD250]) initForAutolayout];
    maskView = v7->_maskView;
    v7->_maskView = v8;

    v10 = v7->_maskView;
    v11 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v10 setBackgroundColor:v11];
  }

  return v7;
}

- (void)_configureBanner
{
  v3 = [(IKDocumentBannerElement *)self->_bannerElement background];
  v4 = [v3 images];
  if ([v4 count])
  {
    v5 = [v4 firstObject];
    v6 = [v5 artworkCatalog];
    WeakRetained = objc_loadWeakRetained(&self->_installedView);
    [WeakRetained frame];
    [v6 setFittingSize:{v8, v9}];

    bannerImageView = self->_bannerImageView;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__VideosExtrasBannerController__configureBanner__block_invoke;
    v11[3] = &unk_1E8733900;
    v11[4] = self;
    [v6 setDestination:bannerImageView configurationBlock:v11];
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

  v3 = [(UIImageView *)self->_bannerImageView superview];

  if (v3)
  {
    [(UIImageView *)self->_bannerImageView removeFromSuperview];
  }

  v4 = [(UIImageView *)self->_vignetteImageView superview];

  if (v4)
  {
    [(UIImageView *)self->_vignetteImageView removeFromSuperview];
  }

  v5 = [(UIView *)self->_maskView superview];

  if (v5)
  {
    [(UIView *)self->_maskView removeFromSuperview];
  }

  v6 = [(VideosExtrasBannerController *)self trackingScrollView];
  v7 = [(VideosExtrasBannerController *)self installedView];
  v8 = [(VideosExtrasBannerController *)self maskView];
  v9 = [objc_alloc(MEMORY[0x1E69DCAE0]) initForAutolayout];
  bannerImageView = self->_bannerImageView;
  self->_bannerImageView = v9;

  LODWORD(v11) = 1132068864;
  [(UIImageView *)self->_bannerImageView setContentCompressionResistancePriority:0 forAxis:v11];
  LODWORD(v12) = 1132068864;
  [(UIImageView *)self->_bannerImageView setContentCompressionResistancePriority:1 forAxis:v12];
  [(UIImageView *)self->_bannerImageView setUserInteractionEnabled:0];
  v13 = [objc_alloc(MEMORY[0x1E69DCAE0]) initForAutolayout];
  vignetteImageView = self->_vignetteImageView;
  self->_vignetteImageView = v13;

  [(VideosExtrasBannerController *)self _updateVignetteImage];
  v15 = [v6 superview];

  v16 = self->_bannerImageView;
  if (v15 == v7)
  {
    [v7 insertSubview:v16 belowSubview:v6];
  }

  else
  {
    [v7 addSubview:v16];
  }

  [v7 insertSubview:self->_vignetteImageView aboveSubview:self->_bannerImageView];
  [v7 insertSubview:v8 aboveSubview:self->_vignetteImageView];
  v17 = [(UIImageView *)self->_bannerImageView topAnchor];
  [v6 topAnchor];
  v18 = v6;
  v19 = v36 = v6;
  v35 = [v17 constraintEqualToAnchor:v19];

  v37 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_bannerImageView attribute:3 relatedBy:-1 toItem:v7 attribute:3 multiplier:1.0 constant:0.0];
  v20 = *MEMORY[0x1E69DDCE0];
  v21 = *(MEMORY[0x1E69DDCE0] + 8);
  v22 = *(MEMORY[0x1E69DDCE0] + 16);
  v23 = *(MEMORY[0x1E69DDCE0] + 24);
  v33 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:self->_bannerImageView toView:v18 alongEdges:10 insets:{*MEMORY[0x1E69DDCE0], v21, v22, v23}];
  v34 = v8;
  v24 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:self->_vignetteImageView toView:self->_bannerImageView alongEdges:11 insets:{v20, v21, v22, v23}];
  v25 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_vignetteImageView attribute:8 relatedBy:0 toItem:v7 attribute:8 multiplier:1.0 constant:0.0];
  v26 = [MEMORY[0x1E696ACD8] constraintWithItem:v8 attribute:3 relatedBy:0 toItem:self->_vignetteImageView attribute:4 multiplier:1.0 constant:0.0];
  v27 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v8 toView:v7 alongEdges:14 insets:{v20, v21, v22, v23}];
  v28 = [MEMORY[0x1E695DF70] array];
  [(NSArray *)v28 addObjectsFromArray:v33];
  [(NSArray *)v28 addObjectsFromArray:v24];
  [(NSArray *)v28 addObjectsFromArray:v27];
  v38[0] = v37;
  v38[1] = v25;
  v29 = v25;
  v38[2] = v35;
  v38[3] = v26;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  [(NSArray *)v28 addObjectsFromArray:v30];

  installedConstraints = self->_installedConstraints;
  self->_installedConstraints = v28;
  v32 = v28;

  [MEMORY[0x1E696ACD8] activateConstraints:v32];
  [(VideosExtrasBannerController *)self _configureBanner];
}

- (void)installBannerOnView:(id)a3 anchoredToScrollView:(id)a4
{
  v6 = a3;
  objc_storeWeak(&self->_trackingScrollView, a4);
  objc_storeWeak(&self->_installedView, v6);

  [(VideosExtrasBannerController *)self _doAllSetup];
}

- (void)setVignetteType:(unint64_t)a3
{
  if (self->_vignetteType != a3)
  {
    self->_vignetteType = a3;
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