@interface WFCompactPreviewThumbnailViewController
- (UIView)hostedView;
- (WFCompactPreviewThumbnailViewController)initWithContentItem:(id)a3;
- (double)contentHeightForWidth:(double)a3;
- (void)loadView;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WFCompactPreviewThumbnailViewController

- (UIView)hostedView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostedView);

  return WeakRetained;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFCompactPreviewThumbnailViewController;
  v4 = a3;
  [(WFCompactPreviewThumbnailViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [(WFCompactPreviewThumbnailViewController *)self traitCollection:v8.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    [(WFCompactThumbnailViewController *)self invalidateContentSize];
  }
}

- (double)contentHeightForWidth:(double)a3
{
  [(WFCompactPreviewThumbnailViewController *)self loadViewIfNeeded];
  v5 = [(WFCompactPreviewThumbnailViewController *)self hostedView];
  [v5 sizeThatFits:{a3, 1.79769313e308}];
  v7 = v6;

  return v7;
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = WFCompactPreviewThumbnailViewController;
  [(WFCompactPreviewThumbnailViewController *)&v11 loadView];
  v3 = [(WFCompactPreviewThumbnailViewController *)self contentItem];
  v4 = [v3 generatePagePreviewUIView];

  v5 = [(WFCompactPreviewThumbnailViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v8 = [(WFCompactPreviewThumbnailViewController *)self view];
  [v8 bounds];
  [v4 setFrame:{0.0, 0.0, v7}];

  [v4 setAutoresizingMask:18];
  v9 = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:v9];

  v10 = [(WFCompactPreviewThumbnailViewController *)self view];
  [v10 addSubview:v4];

  [(WFCompactPreviewThumbnailViewController *)self setHostedView:v4];
}

- (WFCompactPreviewThumbnailViewController)initWithContentItem:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFCompactPreviewThumbnailViewController;
  v6 = [(WFCompactPreviewThumbnailViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentItem, a3);
    v8 = v7;
  }

  return v7;
}

@end