@interface VideosExtrasGalleryTemplateViewController
- (id)templateElement;
- (void)_prepareLayout;
- (void)viewDidLoad;
@end

@implementation VideosExtrasGalleryTemplateViewController

- (id)templateElement
{
  document = [(VideosExtrasTemplateViewController *)self document];
  templateElement = [document templateElement];

  return templateElement;
}

- (void)viewDidLoad
{
  v34.receiver = self;
  v34.super_class = VideosExtrasGalleryTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v34 viewDidLoad];
  templateElement = [(VideosExtrasGalleryTemplateViewController *)self templateElement];
  background = [templateElement background];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = v5;
  if (background)
  {
    [v5 addObject:background];
  }

  [(VideosExtrasTemplateViewController *)self configureBackgroundWithElements:v6];
  templateElement2 = [(VideosExtrasGalleryTemplateViewController *)self templateElement];
  documentBanner = [templateElement2 documentBanner];
  [(VideosExtrasElementViewController *)self _configureBannerWithElement:documentBanner];

  v9 = [VideosExtrasGridElementViewController alloc];
  templateElement3 = [(VideosExtrasGalleryTemplateViewController *)self templateElement];
  grid = [templateElement3 grid];
  v12 = [(VideosExtrasGridElementViewController *)v9 initWithViewElement:grid];
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
  view = [(VideosExtrasGalleryTemplateViewController *)self view];
  view2 = [(VideosExtrasGridElementViewController *)self->_gridViewController view];
  [view addSubview:view2];

  v21 = MEMORY[0x1E696ACD8];
  view3 = [(VideosExtrasGridElementViewController *)self->_gridViewController view];
  view4 = [(VideosExtrasGalleryTemplateViewController *)self view];
  v24 = [v21 constraintsByAttachingView:view3 toView:view4 alongEdges:15 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  view5 = [(VideosExtrasGalleryTemplateViewController *)self view];
  [view5 addConstraints:v24];

  [(VideosExtrasGridElementViewController *)self->_gridViewController didMoveToParentViewController:self];
  v26 = [VideosExtrasBannerController alloc];
  templateElement4 = [(VideosExtrasGalleryTemplateViewController *)self templateElement];
  documentBanner2 = [templateElement4 documentBanner];
  v29 = [(VideosExtrasBannerController *)v26 initWithBannerElement:documentBanner2];
  bannerController = self->_bannerController;
  self->_bannerController = v29;

  [(VideosExtrasBannerController *)self->_bannerController setVignetteType:4];
  v31 = self->_bannerController;
  view6 = [(VideosExtrasGridElementViewController *)self->_gridViewController view];
  contentScrollView = [(VideosExtrasGridElementViewController *)self->_gridViewController contentScrollView];
  [(VideosExtrasBannerController *)v31 installBannerOnView:view6 anchoredToScrollView:contentScrollView];
}

- (void)_prepareLayout
{
  v3.receiver = self;
  v3.super_class = VideosExtrasGalleryTemplateViewController;
  [(VideosExtrasElementViewController *)&v3 _prepareLayout];
  [(VideosExtrasGridElementViewController *)self->_gridViewController _prepareLayout];
}

@end