@interface WFCompactPreviewThumbnailViewController
- (UIView)hostedView;
- (WFCompactPreviewThumbnailViewController)initWithContentItem:(id)item;
- (double)contentHeightForWidth:(double)width;
- (void)loadView;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WFCompactPreviewThumbnailViewController

- (UIView)hostedView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostedView);

  return WeakRetained;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = WFCompactPreviewThumbnailViewController;
  changeCopy = change;
  [(WFCompactPreviewThumbnailViewController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(WFCompactPreviewThumbnailViewController *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(WFCompactThumbnailViewController *)self invalidateContentSize];
  }
}

- (double)contentHeightForWidth:(double)width
{
  [(WFCompactPreviewThumbnailViewController *)self loadViewIfNeeded];
  hostedView = [(WFCompactPreviewThumbnailViewController *)self hostedView];
  [hostedView sizeThatFits:{width, 1.79769313e308}];
  v7 = v6;

  return v7;
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = WFCompactPreviewThumbnailViewController;
  [(WFCompactPreviewThumbnailViewController *)&v11 loadView];
  contentItem = [(WFCompactPreviewThumbnailViewController *)self contentItem];
  generatePagePreviewUIView = [contentItem generatePagePreviewUIView];

  view = [(WFCompactPreviewThumbnailViewController *)self view];
  [view bounds];
  v7 = v6;
  view2 = [(WFCompactPreviewThumbnailViewController *)self view];
  [view2 bounds];
  [generatePagePreviewUIView setFrame:{0.0, 0.0, v7}];

  [generatePagePreviewUIView setAutoresizingMask:18];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [generatePagePreviewUIView setBackgroundColor:clearColor];

  view3 = [(WFCompactPreviewThumbnailViewController *)self view];
  [view3 addSubview:generatePagePreviewUIView];

  [(WFCompactPreviewThumbnailViewController *)self setHostedView:generatePagePreviewUIView];
}

- (WFCompactPreviewThumbnailViewController)initWithContentItem:(id)item
{
  itemCopy = item;
  v10.receiver = self;
  v10.super_class = WFCompactPreviewThumbnailViewController;
  v6 = [(WFCompactPreviewThumbnailViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentItem, item);
    v8 = v7;
  }

  return v7;
}

@end