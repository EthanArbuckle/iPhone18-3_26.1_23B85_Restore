@interface WFCompactMediaThumbnailViewController
- (WFCompactMediaThumbnailViewController)initWithAVPlayerItem:(id)item;
- (double)contentHeightForWidth:(double)width;
- (void)dealloc;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation WFCompactMediaThumbnailViewController

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (WFMediaThumbnailPresentationSizeContext == context)
  {

    [(WFCompactThumbnailViewController *)self invalidateContentSize:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = WFCompactMediaThumbnailViewController;
    [(WFCompactMediaThumbnailViewController *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (double)contentHeightForWidth:(double)width
{
  playerItem = [(WFCompactMediaThumbnailViewController *)self playerItem];
  [playerItem presentationSize];
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

  return v10 * width;
}

- (void)loadView
{
  v10.receiver = self;
  v10.super_class = WFCompactMediaThumbnailViewController;
  [(WFCompactMediaThumbnailViewController *)&v10 loadView];
  v3 = objc_alloc_init(MEMORY[0x277CB85E0]);
  v4 = MEMORY[0x277CE6598];
  playerItem = [(WFCompactMediaThumbnailViewController *)self playerItem];
  v6 = [v4 playerWithPlayerItem:playerItem];
  [v3 setPlayer:v6];

  [v3 setOverrideParentApplicationDisplayIdentifier:*MEMORY[0x277D7A300]];
  [v3 setRequiresLinearPlayback:0];
  [(WFCompactMediaThumbnailViewController *)self addChildViewController:v3];
  view = [v3 view];
  view2 = [(WFCompactMediaThumbnailViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  [view setAutoresizingMask:18];
  view3 = [(WFCompactMediaThumbnailViewController *)self view];
  [view3 addSubview:view];

  [v3 didMoveToParentViewController:self];
}

- (void)dealloc
{
  playerItem = [(WFCompactMediaThumbnailViewController *)self playerItem];
  [playerItem removeObserver:self forKeyPath:@"presentationSize" context:WFMediaThumbnailPresentationSizeContext];

  v4.receiver = self;
  v4.super_class = WFCompactMediaThumbnailViewController;
  [(WFCompactMediaThumbnailViewController *)&v4 dealloc];
}

- (WFCompactMediaThumbnailViewController)initWithAVPlayerItem:(id)item
{
  itemCopy = item;
  v10.receiver = self;
  v10.super_class = WFCompactMediaThumbnailViewController;
  v6 = [(WFCompactMediaThumbnailViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playerItem, item);
    [itemCopy addObserver:v7 forKeyPath:@"presentationSize" options:0 context:WFMediaThumbnailPresentationSizeContext];
    v8 = v7;
  }

  return v7;
}

@end