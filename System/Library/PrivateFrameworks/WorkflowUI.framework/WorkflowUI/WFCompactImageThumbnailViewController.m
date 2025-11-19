@interface WFCompactImageThumbnailViewController
- (UIImageView)imageView;
- (WFCompactImageThumbnailViewController)initWithAspectRatio:(double)a3 imageGenerator:(id)a4;
- (double)contentHeightForWidth:(double)a3;
- (void)loadView;
- (void)redrawImage;
- (void)traitCollectionDidChange:(id)a3;
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
  v3 = [(WFCompactImageThumbnailViewController *)self traitCollection];
  [v3 displayScale];
  v5 = v4;

  v6 = [(WFCompactImageThumbnailViewController *)self view];
  [v6 bounds];
  v8 = v7;

  [(WFCompactImageThumbnailViewController *)self aspectRatio];
  v10 = v5 * v8;
  v11 = v5 * (v8 / v9);
  v12 = [(WFCompactImageThumbnailViewController *)self imageGenerator];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__WFCompactImageThumbnailViewController_redrawImage__block_invoke;
  v13[3] = &unk_279EE84C8;
  v13[4] = self;
  *&v13[5] = v8;
  (v12)[2](v12, v13, v10, v11);
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

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = WFCompactImageThumbnailViewController;
  v4 = a3;
  [(WFCompactImageThumbnailViewController *)&v10 traitCollectionDidChange:v4];
  [v4 displayScale];
  v6 = v5;

  v7 = [(WFCompactImageThumbnailViewController *)self traitCollection];
  [v7 displayScale];
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
  v3 = [(WFCompactImageThumbnailViewController *)self view];
  [v3 bounds];
  v5 = v4;

  [(WFCompactImageThumbnailViewController *)self lastViewWidth];
  if (vabdd_f64(v5, v6) >= 2.22044605e-16)
  {
    [(WFCompactImageThumbnailViewController *)self setLastViewWidth:v5];
    [(WFCompactImageThumbnailViewController *)self redrawImage];
  }
}

- (double)contentHeightForWidth:(double)a3
{
  [(WFCompactImageThumbnailViewController *)self aspectRatio];
  v5 = 0.0;
  if (v6 > 0.0)
  {
    [(WFCompactImageThumbnailViewController *)self aspectRatio];
    v5 = 1.0 / v7;
  }

  return v5 * a3;
}

- (void)loadView
{
  v14.receiver = self;
  v14.super_class = WFCompactImageThumbnailViewController;
  [(WFCompactImageThumbnailViewController *)&v14 loadView];
  v3 = [(WFCompactImageThumbnailViewController *)self view];
  v4 = [v3 traitCollection];
  [v4 displayScale];
  v6 = v5;

  v7 = [(WFCompactImageThumbnailViewController *)self view];
  [v7 bounds];
  v16 = CGRectInset(v15, -1.0 / v6, -1.0 / v6);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;

  v12 = objc_alloc_init(MEMORY[0x277D755E8]);
  [v12 setContentMode:1];
  [v12 setFrame:{x, y, width, height}];
  [v12 setAutoresizingMask:18];
  v13 = [(WFCompactImageThumbnailViewController *)self view];
  [v13 addSubview:v12];

  [(WFCompactImageThumbnailViewController *)self setImageView:v12];
}

- (WFCompactImageThumbnailViewController)initWithAspectRatio:(double)a3 imageGenerator:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFCompactImageThumbnailViewController.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"imageGenerator"}];
  }

  v15.receiver = self;
  v15.super_class = WFCompactImageThumbnailViewController;
  v8 = [(WFCompactImageThumbnailViewController *)&v15 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    v8->_aspectRatio = a3;
    v10 = [v7 copy];
    imageGenerator = v9->_imageGenerator;
    v9->_imageGenerator = v10;

    v12 = v9;
  }

  return v9;
}

@end