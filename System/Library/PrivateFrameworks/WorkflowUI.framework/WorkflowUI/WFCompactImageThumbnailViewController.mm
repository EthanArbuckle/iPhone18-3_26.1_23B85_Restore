@interface WFCompactImageThumbnailViewController
- (UIImageView)imageView;
- (WFCompactImageThumbnailViewController)initWithAspectRatio:(double)ratio imageGenerator:(id)generator;
- (double)contentHeightForWidth:(double)width;
- (void)loadView;
- (void)redrawImage;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
@end

@implementation WFCompactImageThumbnailViewController

- (UIImageView)imageView
{
  WeakRetained = objc_loadWeakRetained(&self->_imageView);

  return WeakRetained;
}

- (void)redrawImage
{
  traitCollection = [(WFCompactImageThumbnailViewController *)self traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  view = [(WFCompactImageThumbnailViewController *)self view];
  [view bounds];
  v8 = v7;

  [(WFCompactImageThumbnailViewController *)self aspectRatio];
  v10 = v5 * v8;
  v11 = v5 * (v8 / v9);
  imageGenerator = [(WFCompactImageThumbnailViewController *)self imageGenerator];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__WFCompactImageThumbnailViewController_redrawImage__block_invoke;
  v13[3] = &unk_279EE84C8;
  v13[4] = self;
  *&v13[5] = v8;
  (imageGenerator)[2](imageGenerator, v13, v10, v11);
}

void __52__WFCompactImageThumbnailViewController_redrawImage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__WFCompactImageThumbnailViewController_redrawImage__block_invoke_2;
  block[3] = &unk_279EE84A0;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  block[4] = v4;
  v7 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __52__WFCompactImageThumbnailViewController_redrawImage__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 bounds];
  v4 = v3;
  v5 = *(a1 + 48);

  if (v4 == v5)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) imageView];
    [v7 setImage:v6];

    v8 = [*(a1 + 32) imageView];
    [v8 startAnimating];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = WFCompactImageThumbnailViewController;
  changeCopy = change;
  [(WFCompactImageThumbnailViewController *)&v10 traitCollectionDidChange:changeCopy];
  [changeCopy displayScale];
  v6 = v5;

  traitCollection = [(WFCompactImageThumbnailViewController *)self traitCollection];
  [traitCollection displayScale];
  v9 = v8;

  if (v6 != v9)
  {
    [(WFCompactImageThumbnailViewController *)self redrawImage];
  }
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = WFCompactImageThumbnailViewController;
  [(WFCompactImageThumbnailViewController *)&v7 viewDidLayoutSubviews];
  view = [(WFCompactImageThumbnailViewController *)self view];
  [view bounds];
  v5 = v4;

  [(WFCompactImageThumbnailViewController *)self lastViewWidth];
  if (vabdd_f64(v5, v6) >= 2.22044605e-16)
  {
    [(WFCompactImageThumbnailViewController *)self setLastViewWidth:v5];
    [(WFCompactImageThumbnailViewController *)self redrawImage];
  }
}

- (double)contentHeightForWidth:(double)width
{
  [(WFCompactImageThumbnailViewController *)self aspectRatio];
  v5 = 0.0;
  if (v6 > 0.0)
  {
    [(WFCompactImageThumbnailViewController *)self aspectRatio];
    v5 = 1.0 / v7;
  }

  return v5 * width;
}

- (void)loadView
{
  v14.receiver = self;
  v14.super_class = WFCompactImageThumbnailViewController;
  [(WFCompactImageThumbnailViewController *)&v14 loadView];
  view = [(WFCompactImageThumbnailViewController *)self view];
  traitCollection = [view traitCollection];
  [traitCollection displayScale];
  v6 = v5;

  view2 = [(WFCompactImageThumbnailViewController *)self view];
  [view2 bounds];
  v16 = CGRectInset(v15, -1.0 / v6, -1.0 / v6);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;

  v12 = objc_alloc_init(MEMORY[0x277D755E8]);
  [v12 setContentMode:1];
  [v12 setFrame:{x, y, width, height}];
  [v12 setAutoresizingMask:18];
  view3 = [(WFCompactImageThumbnailViewController *)self view];
  [view3 addSubview:v12];

  [(WFCompactImageThumbnailViewController *)self setImageView:v12];
}

- (WFCompactImageThumbnailViewController)initWithAspectRatio:(double)ratio imageGenerator:(id)generator
{
  generatorCopy = generator;
  if (!generatorCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCompactImageThumbnailViewController.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"imageGenerator"}];
  }

  v15.receiver = self;
  v15.super_class = WFCompactImageThumbnailViewController;
  v8 = [(WFCompactImageThumbnailViewController *)&v15 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    v8->_aspectRatio = ratio;
    v10 = [generatorCopy copy];
    imageGenerator = v9->_imageGenerator;
    v9->_imageGenerator = v10;

    v12 = v9;
  }

  return v9;
}

@end