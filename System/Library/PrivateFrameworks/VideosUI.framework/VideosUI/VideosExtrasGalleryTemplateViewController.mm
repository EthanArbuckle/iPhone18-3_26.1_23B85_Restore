@interface VideosExtrasGalleryTemplateViewController
- (id)templateElement;
- (void)_prepareLayout;
- (void)viewDidLoad;
@end

@implementation VideosExtrasGalleryTemplateViewController

- (id)templateElement
{
  v2 = [(VideosExtrasTemplateViewController *)self document];
  v3 = [v2 templateElement];

  return v3;
}

- (void)viewDidLoad
{
  v34.receiver = self;
  v34.super_class = VideosExtrasGalleryTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v34 viewDidLoad];
  v3 = [(VideosExtrasGalleryTemplateViewController *)self templateElement];
  v4 = [v3 background];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = v5;
  if (v4)
  {
    [v5 addObject:v4];
  }

  [(VideosExtrasTemplateViewController *)self configureBackgroundWithElements:v6];
  v7 = [(VideosExtrasGalleryTemplateViewController *)self templateElement];
  v8 = [v7 documentBanner];
  [(VideosExtrasElementViewController *)self _configureBannerWithElement:v8];

  v9 = [VideosExtrasGridElementViewController alloc];
  v10 = [(VideosExtrasGalleryTemplateViewController *)self templateElement];
  v11 = [v10 grid];
  v12 = [(VideosExtrasGridElementViewController *)v9 initWithViewElement:v11];
  gridViewController = self->_gridViewController;
  self->_gridViewController = v12;

  v14 = +[VideosExtrasGridElementViewController smallGalleryStyle];
  [(VideosExtrasGridElementViewController *)self->_gridViewController setSmallStyle:v14];

  v15 = +[VideosExtrasGridElementViewController mediumGalleryStyle];
  [(VideosExtrasGridElementViewController *)self->_gridViewController setMediumStyle:v15];

  v16 = +[VideosExtrasGridElementViewController largeGalleryStyle];
  [(VideosExtrasGridElementViewController *)self->_gridViewController setLargeStyle:v16];

  v17 = +[VideosExtrasGridElementViewController extraLargeGalleryStyle];
  [(VideosExtrasGridElementViewController *)self->_gridViewController setExtraLargeStyle:v17];

  v18 = +[VideosExtrasGridElementViewController wideGalleryStyle];
  [(VideosExtrasGridElementViewController *)self->_gridViewController setWideStyle:v18];

  [(VideosExtrasGalleryTemplateViewController *)self addChildViewController:self->_gridViewController];
  v19 = [(VideosExtrasGalleryTemplateViewController *)self view];
  v20 = [(VideosExtrasGridElementViewController *)self->_gridViewController view];
  [v19 addSubview:v20];

  v21 = MEMORY[0x1E696ACD8];
  v22 = [(VideosExtrasGridElementViewController *)self->_gridViewController view];
  v23 = [(VideosExtrasGalleryTemplateViewController *)self view];
  v24 = [v21 constraintsByAttachingView:v22 toView:v23 alongEdges:15 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  v25 = [(VideosExtrasGalleryTemplateViewController *)self view];
  [v25 addConstraints:v24];

  [(VideosExtrasGridElementViewController *)self->_gridViewController didMoveToParentViewController:self];
  v26 = [VideosExtrasBannerController alloc];
  v27 = [(VideosExtrasGalleryTemplateViewController *)self templateElement];
  v28 = [v27 documentBanner];
  v29 = [(VideosExtrasBannerController *)v26 initWithBannerElement:v28];
  bannerController = self->_bannerController;
  self->_bannerController = v29;

  [(VideosExtrasBannerController *)self->_bannerController setVignetteType:4];
  v31 = self->_bannerController;
  v32 = [(VideosExtrasGridElementViewController *)self->_gridViewController view];
  v33 = [(VideosExtrasGridElementViewController *)self->_gridViewController contentScrollView];
  [(VideosExtrasBannerController *)v31 installBannerOnView:v32 anchoredToScrollView:v33];
}

- (void)_prepareLayout
{
  v3.receiver = self;
  v3.super_class = VideosExtrasGalleryTemplateViewController;
  [(VideosExtrasElementViewController *)&v3 _prepareLayout];
  [(VideosExtrasGridElementViewController *)self->_gridViewController _prepareLayout];
}

@end