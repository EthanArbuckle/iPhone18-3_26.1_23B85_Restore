@interface WFCompactMediaThumbnailViewController
- (WFCompactMediaThumbnailViewController)initWithAVPlayerItem:(id)a3;
- (double)contentHeightForWidth:(double)a3;
- (void)dealloc;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation WFCompactMediaThumbnailViewController

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (WFMediaThumbnailPresentationSizeContext == a6)
  {

    [(WFCompactThumbnailViewController *)self invalidateContentSize:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = WFCompactMediaThumbnailViewController;
    [(WFCompactMediaThumbnailViewController *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (double)contentHeightForWidth:(double)a3
{
  v4 = [(WFCompactMediaThumbnailViewController *)self playerItem];
  [v4 presentationSize];
  v6 = v5;
  v8 = v7;

  if (v6 == *MEMORY[0x277CBF3A8] && v8 == *(MEMORY[0x277CBF3A8] + 8))
  {
    return 200.0;
  }

  v10 = 0.0;
  if (v6 > 0.0 && v8 > 0.0)
  {
    v10 = v8 / v6;
  }

  return v10 * a3;
}

- (void)loadView
{
  v10.receiver = self;
  v10.super_class = WFCompactMediaThumbnailViewController;
  [(WFCompactMediaThumbnailViewController *)&v10 loadView];
  v3 = objc_alloc_init(MEMORY[0x277CB85E0]);
  v4 = MEMORY[0x277CE6598];
  v5 = [(WFCompactMediaThumbnailViewController *)self playerItem];
  v6 = [v4 playerWithPlayerItem:v5];
  [v3 setPlayer:v6];

  [v3 setOverrideParentApplicationDisplayIdentifier:*MEMORY[0x277D7A300]];
  [v3 setRequiresLinearPlayback:0];
  [(WFCompactMediaThumbnailViewController *)self addChildViewController:v3];
  v7 = [v3 view];
  v8 = [(WFCompactMediaThumbnailViewController *)self view];
  [v8 bounds];
  [v7 setFrame:?];

  [v7 setAutoresizingMask:18];
  v9 = [(WFCompactMediaThumbnailViewController *)self view];
  [v9 addSubview:v7];

  [v3 didMoveToParentViewController:self];
}

- (void)dealloc
{
  v3 = [(WFCompactMediaThumbnailViewController *)self playerItem];
  [v3 removeObserver:self forKeyPath:@"presentationSize" context:WFMediaThumbnailPresentationSizeContext];

  v4.receiver = self;
  v4.super_class = WFCompactMediaThumbnailViewController;
  [(WFCompactMediaThumbnailViewController *)&v4 dealloc];
}

- (WFCompactMediaThumbnailViewController)initWithAVPlayerItem:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFCompactMediaThumbnailViewController;
  v6 = [(WFCompactMediaThumbnailViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playerItem, a3);
    [v5 addObserver:v7 forKeyPath:@"presentationSize" options:0 context:WFMediaThumbnailPresentationSizeContext];
    v8 = v7;
  }

  return v7;
}

@end