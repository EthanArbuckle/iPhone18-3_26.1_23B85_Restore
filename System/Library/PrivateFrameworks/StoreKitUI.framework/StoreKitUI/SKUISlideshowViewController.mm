@interface SKUISlideshowViewController
- (SKUISlideshowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SKUISlideshowViewControllerDataSource)dataSource;
- (SKUISlideshowViewControllerDelegate)delegate;
- (id)_itemViewControllerForIndex:(int64_t)index;
- (id)animatorForDismissedController:(id)controller;
- (id)animatorForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)currentItemViewController;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (void)_contentViewTapped:(id)tapped;
- (void)_doneButtonTapped:(id)tapped;
- (void)_fadeOutOverlayAfterDelay:(unint64_t)delay;
- (void)_restoreStatusBarAppearanceState;
- (void)_saveStatusBarAppearanceState;
- (void)_setOverlayVisible:(BOOL)visible animated:(BOOL)animated;
- (void)_toggleFadeOverlay;
- (void)_updateTitleWithIndex:(int64_t)index;
- (void)dealloc;
- (void)loadView;
- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed;
- (void)setCurrentIndex:(int64_t)index;
- (void)slideshowItemViewControllerDidDismissWithPinchGesture:(id)gesture ratio:(double)ratio;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation SKUISlideshowViewController

- (SKUISlideshowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISlideshowViewController initWithNibName:bundle:];
  }

  v19.receiver = self;
  v19.super_class = SKUISlideshowViewController;
  v8 = [(SKUISlideshowViewController *)&v19 initWithNibName:nameCopy bundle:bundleCopy];
  v9 = v8;
  if (v8)
  {
    v8->_currentIndex = 0;
    v10 = objc_alloc_init(MEMORY[0x277CCABD8]);
    remoteLoadQueue = v9->_remoteLoadQueue;
    v9->_remoteLoadQueue = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    itemViewControllersCache = v9->_itemViewControllersCache;
    v9->_itemViewControllersCache = v12;

    v14 = [objc_alloc(MEMORY[0x277D757F0]) initWithTransitionStyle:1 navigationOrientation:0 options:0];
    pageViewController = v9->_pageViewController;
    v9->_pageViewController = v14;

    [(UIPageViewController *)v9->_pageViewController setDataSource:v9];
    [(UIPageViewController *)v9->_pageViewController setDelegate:v9];
    [(SKUISlideshowViewController *)v9 addChildViewController:v9->_pageViewController];
    v9->_shouldCancelDelayedOverlayVisibilityChange = 0;
    v9->_overlayVisibilityWillChangeWithDelay = 0;
    v9->_lockOverlayControlsVisible = 0;
    v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v9 action:sel__doneButtonTapped_];
    navigationItem = [(SKUISlideshowViewController *)v9 navigationItem];
    [navigationItem setRightBarButtonItem:v16];
  }

  return v9;
}

- (void)dealloc
{
  [(UIPageViewController *)self->_pageViewController setDataSource:0];
  [(UIPageViewController *)self->_pageViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUISlideshowViewController;
  [(SKUISlideshowViewController *)&v3 dealloc];
}

- (id)animatorForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v6 = objc_alloc_init(SKUISlideshowAnimator);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = [v9 slideshowViewController:self poppedImageViewAtIndex:self->_currentIndex];

    [(SKUISlideshowAnimator *)v6 setImageView:v10];
  }

  return v6;
}

- (id)animatorForDismissedController:(id)controller
{
  v4 = objc_alloc_init(SKUISlideshowDismissalAnimator);
  currentItemViewController = [(SKUISlideshowViewController *)self currentItemViewController];
  imageScrollView = [currentItemViewController imageScrollView];
  imageView = [imageScrollView imageView];

  image = [imageView image];

  view = [(SKUISlideshowViewController *)self view];
  v10 = view;
  if (image)
  {
    [imageView frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    superview = [imageView superview];
    [v10 convertRect:superview fromView:{v12, v14, v16, v18}];
    [(SKUISlideshowDismissalAnimator *)v4 setImageRect:?];
  }

  else
  {
    [view bounds];
    [(SKUISlideshowDismissalAnimator *)v4 setImageRect:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = objc_loadWeakRetained(&self->_delegate);
    [v22 slideshowViewController:self scrollToImageAtIndex:self->_currentIndex];
  }

  v23 = objc_loadWeakRetained(&self->_delegate);
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    v25 = objc_loadWeakRetained(&self->_delegate);
    v26 = [v25 slideshowViewController:self poppedImageViewAtIndex:self->_currentIndex];

    [(SKUISlideshowDismissalAnimator *)v4 setImageView:v26];
  }

  return v4;
}

- (void)setCurrentIndex:(int64_t)index
{
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = [(SKUISlideshowViewController *)self _itemViewControllerForIndex:?];
  pageViewController = self->_pageViewController;
  v8[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(UIPageViewController *)pageViewController setViewControllers:v7 direction:0 animated:0 completion:0];

  self->_currentIndex = index;
  [(SKUISlideshowViewController *)self _updateCurrentIndex];
}

- (id)currentItemViewController
{
  viewControllers = [(UIPageViewController *)self->_pageViewController viewControllers];
  v4 = [viewControllers count];

  if (v4)
  {
    viewControllers2 = [(UIPageViewController *)self->_pageViewController viewControllers];
    v6 = [viewControllers2 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v10 = [v3 initWithFrame:?];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [v10 setBackgroundColor:clearColor];

  v6 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2020];
  [v6 setAutoresizingMask:18];
  [v10 addSubview:v6];
  view = [(UIPageViewController *)self->_pageViewController view];
  [v10 bounds];
  [view setFrame:?];
  [v10 addSubview:view];
  v8 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__contentViewTapped_];
  [v8 setNumberOfTapsRequired:2];
  [view addGestureRecognizer:v8];
  v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__contentViewTapped_];
  [v9 requireGestureRecognizerToFail:v8];
  [view addGestureRecognizer:v9];
  [(SKUISlideshowViewController *)self setView:v10];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SKUISlideshowViewController;
  [(SKUISlideshowViewController *)&v3 viewDidLoad];
  [(SKUISlideshowViewController *)self setCurrentIndex:self->_currentIndex];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SKUISlideshowViewController;
  [(SKUISlideshowViewController *)&v4 viewWillAppear:appear];
  [(SKUISlideshowViewController *)self _saveStatusBarAppearanceState];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SKUISlideshowViewController;
  [(SKUISlideshowViewController *)&v4 viewWillDisappear:disappear];
  [(SKUISlideshowViewController *)self _restoreStatusBarAppearanceState];
  self->_shouldCancelDelayedOverlayVisibilityChange = 1;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SKUISlideshowViewController;
  [(SKUISlideshowViewController *)&v4 viewDidAppear:appear];
  [(SKUISlideshowViewController *)self _setOverlayVisible:1 animated:1];
  [(SKUISlideshowViewController *)self _fadeOutOverlayAfterDelay:2];
}

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  if (!self->_overlayVisible)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] setStatusBarHidden:0];
  }

  v8.receiver = self;
  v8.super_class = SKUISlideshowViewController;
  [(SKUISlideshowViewController *)&v8 willRotateToInterfaceOrientation:orientation duration:duration];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  if (!self->_overlayVisible)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] setStatusBarHidden:1];
  }

  v8.receiver = self;
  v8.super_class = SKUISlideshowViewController;
  [(SKUISlideshowViewController *)&v8 willAnimateRotationToInterfaceOrientation:orientation duration:duration];
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  v5 = [viewController indexInCollection] + 1;

  return [(SKUISlideshowViewController *)self _itemViewControllerForIndex:v5];
}

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  v5 = [viewController indexInCollection] - 1;

  return [(SKUISlideshowViewController *)self _itemViewControllerForIndex:v5];
}

- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed
{
  if (completed)
  {
    viewControllers = [controller viewControllers];
    v8 = [viewControllers objectAtIndexedSubscript:0];

    self->_currentIndex = [v8 indexInCollection];
    [(SKUISlideshowViewController *)self _updateCurrentIndex];
  }
}

- (void)slideshowItemViewControllerDidDismissWithPinchGesture:(id)gesture ratio:(double)ratio
{
  if (ratio > 0.0)
  {
    delegate = [(SKUISlideshowViewController *)self delegate];
    [(SKUISlideshowViewController *)self _restoreStatusBarAppearanceState];
    if (objc_opt_respondsToSelector())
    {
      [delegate slideshowViewControllerDidFinish:self];
    }

    else
    {
      [(SKUISlideshowViewController *)self dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (id)_itemViewControllerForIndex:(int64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = WeakRetained;
  if (index < 0 || !WeakRetained)
  {

    goto LABEL_11;
  }

  v7 = objc_loadWeakRetained(&self->_dataSource);
  v8 = [v7 numberOfItemsInSlideshowViewController:self];

  if (v8 <= index)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  itemViewControllersCache = self->_itemViewControllersCache;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v11 = [(NSMutableDictionary *)itemViewControllersCache objectForKeyedSubscript:v10];

  if (!v11)
  {
    v11 = objc_alloc_init(SKUISlideshowItemViewController);
    [(SKUISlideshowItemViewController *)v11 setClientContext:self->_clientContext];
    [(SKUISlideshowItemViewController *)v11 setIndexInCollection:index];
    [(SKUISlideshowItemViewController *)v11 setDelegate:self];
    v12 = objc_loadWeakRetained(&self->_dataSource);
    v13 = [v12 slideshowViewController:self placeholderImageAtIndex:index];

    if (v13)
    {
      [(SKUISlideshowItemViewController *)v11 setItemImage:v13];
    }

    v14 = objc_loadWeakRetained(&self->_dataSource);
    v15 = [v14 slideshowViewController:self dataConsumerAtIndex:index];

    v16 = objc_loadWeakRetained(&self->_dataSource);
    v17 = [v16 slideshowViewController:self imageURLAtIndex:index];

    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v17];
      [v18 setITunesStoreRequest:0];
      [v18 setDataConsumer:v15];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __59__SKUISlideshowViewController__itemViewControllerForIndex___block_invoke;
      v22[3] = &unk_2781FE438;
      v23 = v11;
      [v18 setOutputBlock:v22];
      [(NSOperationQueue *)self->_remoteLoadQueue addOperation:v18];
    }

    v19 = self->_itemViewControllersCache;
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:index];
    [(NSMutableDictionary *)v19 setObject:v11 forKeyedSubscript:v20];
  }

LABEL_12:

  return v11;
}

void __59__SKUISlideshowViewController__itemViewControllerForIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__SKUISlideshowViewController__itemViewControllerForIndex___block_invoke_2;
  v5[3] = &unk_2781F80C8;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

- (void)_updateTitleWithIndex:(int64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained)
  {
    v15 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v15 setNumberStyle:1];
    v6 = MEMORY[0x277CCABB0];
    v7 = objc_loadWeakRetained(&self->_dataSource);
    v8 = [v6 numberWithInteger:{objc_msgSend(v7, "numberOfItemsInSlideshowViewController:", self)}];
    v9 = [v15 stringFromNumber:v8];

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:index + 1];
    v11 = [v15 stringFromNumber:v10];

    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"SCREENSHOTS_INDEX_STRING"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"SCREENSHOTS_INDEX_STRING" inBundles:0];
    }
    v13 = ;
    v14 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@%@" error:0, v11, v9];
    [(SKUISlideshowViewController *)self setTitle:v14];
  }

  else
  {

    [(SKUISlideshowViewController *)self setTitle:0];
  }
}

- (void)_contentViewTapped:(id)tapped
{
  tappedCopy = tapped;
  if ([tappedCopy numberOfTapsRequired] == 1)
  {
    if ([tappedCopy numberOfTouches] == 1)
    {
      if (self->_overlayVisible)
      {
        if (self->_overlayVisibilityWillChangeWithDelay)
        {
          self->_shouldCancelDelayedOverlayVisibilityChange = 1;
        }
      }

      else
      {
        [(SKUISlideshowViewController *)self _fadeOutOverlayAfterDelay:4];
      }

      [(SKUISlideshowViewController *)self _toggleFadeOverlay];
    }
  }

  else if ([tappedCopy numberOfTapsRequired] == 2)
  {
    viewControllers = [(UIPageViewController *)self->_pageViewController viewControllers];
    v5 = [viewControllers objectAtIndexedSubscript:0];

    imageScrollView = [v5 imageScrollView];
    [tappedCopy locationInView:imageScrollView];
    [imageScrollView zoomIntoPoint:?];
  }
}

- (void)_doneButtonTapped:(id)tapped
{
  delegate = [(SKUISlideshowViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate slideshowViewControllerDidFinish:self];
  }

  else
  {
    [(SKUISlideshowViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_toggleFadeOverlay
{
  navigationController = [(SKUISlideshowViewController *)self navigationController];

  if (navigationController)
  {
    v4 = !self->_overlayVisible;

    [(SKUISlideshowViewController *)self _setOverlayVisible:v4 animated:1];
  }
}

- (void)_fadeOutOverlayAfterDelay:(unint64_t)delay
{
  if (!self->_overlayVisibilityWillChangeWithDelay)
  {
    self->_overlayVisibilityWillChangeWithDelay = 1;
    objc_initWeak(&location, self);
    v4 = dispatch_time(0, 1000000000 * delay);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SKUISlideshowViewController__fadeOutOverlayAfterDelay___block_invoke;
    block[3] = &unk_2781FB180;
    objc_copyWeak(v6, &location);
    v6[1] = delay;
    dispatch_after(v4, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(v6);
    objc_destroyWeak(&location);
  }
}

void __57__SKUISlideshowViewController__fadeOutOverlayAfterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1026] = 0;
    if (WeakRetained[1027] == 1)
    {
      v3 = WeakRetained;
      [WeakRetained _fadeOutOverlayAfterDelay:*(a1 + 40)];
      WeakRetained = v3;
    }

    else
    {
      if ((WeakRetained[1025] & 1) == 0)
      {
        v4 = WeakRetained;
        [WeakRetained _setOverlayVisible:0 animated:1];
        WeakRetained = v4;
      }

      WeakRetained[1025] = 0;
    }
  }
}

- (void)_setOverlayVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_overlayVisible != visible)
  {
    animatedCopy = animated;
    visibleCopy = visible;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] setStatusBarHidden:!visibleCopy withAnimation:1];

    navigationController = [(SKUISlideshowViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];

    v10 = 0.0;
    if (visibleCopy)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }

    [navigationBar setAlpha:!visibleCopy];
    v12 = MEMORY[0x277D75D18];
    if (animatedCopy)
    {
      v10 = 0.349999994;
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__SKUISlideshowViewController__setOverlayVisible_animated___block_invoke;
    v14[3] = &unk_2781FC960;
    v15 = navigationBar;
    v16 = v11;
    v13 = navigationBar;
    [v12 animateWithDuration:2 delay:v14 options:0 animations:v10 completion:0.0];
    self->_overlayVisible = visibleCopy;
  }
}

- (void)_saveStatusBarAppearanceState
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  self = (self + 1032);
  *&self->super.super._responderFlags = [mEMORY[0x277D75128] isStatusBarHidden];
  self->super.super.super.isa = [mEMORY[0x277D75128] statusBarStyle];
}

- (void)_restoreStatusBarAppearanceState
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  p_savedStatusBarState = &self->_savedStatusBarState;
  if (p_savedStatusBarState->hidden != [mEMORY[0x277D75128] isStatusBarHidden])
  {
    [mEMORY[0x277D75128] setStatusBarHidden:?];
  }

  if ([mEMORY[0x277D75128] statusBarStyle] != p_savedStatusBarState->style)
  {
    [mEMORY[0x277D75128] setStatusBarStyle:?];
  }
}

- (SKUISlideshowViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (SKUISlideshowViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithNibName:bundle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISlideshowViewController initWithNibName:bundle:]";
}

@end