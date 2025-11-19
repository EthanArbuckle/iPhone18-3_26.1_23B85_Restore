@interface UIPageViewController
+ (BOOL)_isSpineLocation:(int64_t)a3 supportedForTransitionStyle:(int64_t)a4;
+ (BOOL)doesOverridePreferredInterfaceOrientationForPresentation;
+ (id)_incomingViewControllerKeys;
+ (id)_outgoingViewControllerKeys;
+ (id)stringForSpineLocation:(int64_t)a3;
- (BOOL)_canHandleGestures;
- (BOOL)_child:(id)a3 canBeginAppearanceTransition:(BOOL)a4;
- (BOOL)_childCanEndAppearanceTransition:(id)a3;
- (BOOL)_gestureRecognizerShouldBegin:(id)a3;
- (BOOL)_hasPreferredInterfaceOrientationForPresentation;
- (BOOL)_isCurrentViewControllerStateValid;
- (BOOL)_shouldBeginNavigationInDirection:(int64_t *)a3 inResponseToPanGestureRecognizer:(id)a4;
- (BOOL)_shouldCompleteManualCurlWithSuggestedVelocity:(double *)a3;
- (BOOL)_shouldFlipInRightToLeft;
- (BOOL)_shouldGenerateAppearanceCallbacksWhenScrolling;
- (BOOL)_shouldNavigateInDirection:(int64_t *)a3 inResponseToTapGestureRecognizer:(id)a4;
- (BOOL)_shouldNavigateInDirection:(int64_t *)a3 inResponseToVelocity:(double *)a4 ofGestureRecognizedByPanGestureRecognizer:(id)a5;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (CGRect)_disabledScrollingRegion;
- (CGRect)_tapRegions;
- (CGSize)_contentSizeForSize:(CGSize)a3;
- (CGSize)_effectiveTapRegionBreadths;
- (NSArray)viewControllers;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (UIEdgeInsets)_effectiveTapRegionInsets;
- (UIPageViewController)initWithCoder:(NSCoder *)coder;
- (UIPageViewController)initWithTransitionStyle:(UIPageViewControllerTransitionStyle)style navigationOrientation:(UIPageViewControllerNavigationOrientation)navigationOrientation options:(NSDictionary *)options;
- (_NSRange)_validRangeForPresentationOfViewControllersWithSpineLocation:(int64_t)a3;
- (_UIPageViewControllerContentView)_contentView;
- (_UIQueuingScrollView)_scrollView;
- (id)_deepestActionResponder;
- (id)_incomingViewControllersForGestureDrivenCurlInDirection:(int64_t)a3;
- (id)_pageControl;
- (id)_queuingScrollView:(id)a3 viewBefore:(BOOL)a4 view:(id)a5;
- (id)_validatedViewControllersForPresentationOfViewControllers:(id)a3 validRange:(_NSRange)a4;
- (id)_validatedViewControllersForTransitionWithViewControllers:(id)a3 animated:(BOOL)a4;
- (id)_viewControllerBefore:(BOOL)a3 viewController:(id)a4;
- (id)_viewControllersForCurlWithViewControllers:(id)a3 direction:(int64_t)a4;
- (id)_viewControllersForPendingSpineLocation:(int64_t)a3;
- (id)dataSource;
- (id)delegate;
- (int64_t)_navigationEndDirectionInResponseToPanGestureRecognizer:(id)a3 suggestedVelocity:(double *)a4;
- (int64_t)_requestSpineLocationForInterfaceOrientationAndUpdateStashedViewControllers:(int64_t)a3;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (unint64_t)supportedInterfaceOrientations;
- (void)_beginDisablingInterfaceAutorotation;
- (void)_cacheViewControllerForScroll:(id)a3;
- (void)_child:(id)a3 beginAppearanceTransition:(BOOL)a4 animated:(BOOL)a5;
- (void)_child:(id)a3 beginAppearanceTransitionIfPossible:(BOOL)a4 animated:(BOOL)a5;
- (void)_child:(id)a3 didRotateFromInterfaceOrientation:(int64_t)a4;
- (void)_child:(id)a3 endAppearanceTransitionIfPossible:(BOOL)a4;
- (void)_child:(id)a3 willAnimateRotationToInterfaceOrientation:(int64_t)a4 duration:(double)a5;
- (void)_child:(id)a3 willRotateToInterfaceOrientation:(int64_t)a4 duration:(double)a5;
- (void)_childEndAppearanceTransition:(id)a3;
- (void)_contentViewFrameOrBoundsDidChange;
- (void)_endDisablingInterfaceAutorotation;
- (void)_flushViewController:(id)a3 animated:(BOOL)a4;
- (void)_handlePagingInDirection:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_handlePanGesture:(id)a3;
- (void)_handleTapGesture:(id)a3;
- (void)_invalidateEffectiveTapRegions;
- (void)_invalidatePageCurl;
- (void)_marginInfoForChild:(id)a3 leftMargin:(double *)a4 rightMargin:(double *)a5;
- (void)_pageControlValueChanged:(id)a3;
- (void)_populateIncomingViewControllersInMap:(id)a3 withViewControllers:(id)a4 forCurlInDirection:(int64_t)a5;
- (void)_populateOutgoingViewControllersInMap:(id)a3;
- (void)_sendChildViewWill:(BOOL)a3 appear:(BOOL)a4 animated:(BOOL)a5;
- (void)_setDisabledScrollingRegion:(CGRect)a3;
- (void)_setPageSpacing:(double)a3;
- (void)_setSpineLocation:(int64_t)a3;
- (void)_setTapRegionBreadths:(CGSize)a3;
- (void)_setTapRegionInsets:(UIEdgeInsets)a3;
- (void)_setViewControllers:(id)a3 withCurlOfType:(int64_t)a4 fromLocation:(CGPoint)a5 direction:(int64_t)a6 animated:(BOOL)a7 notifyDelegate:(BOOL)a8 completion:(id)a9;
- (void)_setViewControllers:(id)a3 withScrollInDirection:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)_updatePageControlViaDataSourceIfNecessary;
- (void)dealloc;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)loadView;
- (void)queuingScrollView:(id)a3 attemptToPageInDirection:(int64_t)a4;
- (void)queuingScrollView:(id)a3 didBailoutOfScrollAndRevealedView:(id)a4;
- (void)queuingScrollView:(id)a3 didCommitManualScroll:(BOOL)a4 toRevealView:(id)a5 concealView:(id)a6 direction:(int64_t)a7 animated:(BOOL)a8 canComplete:(BOOL)a9;
- (void)queuingScrollView:(id)a3 didEndManualScroll:(BOOL)a4 toRevealView:(id)a5 direction:(int64_t)a6 animated:(BOOL)a7 didFinish:(BOOL)a8 didComplete:(BOOL)a9;
- (void)queuingScrollView:(id)a3 didFlushView:(id)a4 animated:(BOOL)a5;
- (void)queuingScrollView:(id)a3 willManuallyScroll:(BOOL)a4 toRevealView:(id)a5 concealView:(id)a6 animated:(BOOL)a7;
- (void)queuingScrollViewDidFinishScrolling:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setDataSource:(id)dataSource;
- (void)setDelegate:(id)delegate;
- (void)setDoubleSided:(BOOL)doubleSided;
- (void)setViewControllers:(NSArray *)viewControllers direction:(UIPageViewControllerNavigationDirection)direction animated:(BOOL)animated completion:(void *)completion;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillUnload;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
@end

@implementation UIPageViewController

+ (BOOL)_isSpineLocation:(int64_t)a3 supportedForTransitionStyle:(int64_t)a4
{
  v5 = a3 == 101 || (a3 - 1) < 3;
  if (a4)
  {
    return a3 == 0;
  }

  else
  {
    return v5;
  }
}

+ (BOOL)doesOverridePreferredInterfaceOrientationForPresentation
{
  v3 = objc_opt_class();

  return [a1 doesOverrideViewControllerMethod:sel_preferredInterfaceOrientationForPresentation inBaseClass:v3];
}

- (UIPageViewController)initWithTransitionStyle:(UIPageViewControllerTransitionStyle)style navigationOrientation:(UIPageViewControllerNavigationOrientation)navigationOrientation options:(NSDictionary *)options
{
  v8 = options;
  v17.receiver = self;
  v17.super_class = UIPageViewController;
  v9 = [(UIViewController *)&v17 initWithNibName:0 bundle:0];
  if (v9)
  {
    if (![objc_opt_class() _isSupportedTransitionStyle:style])
    {
      style = UIPageViewControllerTransitionStylePageCurl;
    }

    if ([objc_opt_class() _isNavigationOrientation:navigationOrientation supportedForTransitionStyle:style])
    {
      v10 = navigationOrientation;
    }

    else
    {
      v10 = UIPageViewControllerNavigationOrientationHorizontal;
    }

    UIPageViewControllerCommonInitWithTransitionStyleAndNavigationOrientation(v9, style, v10);
    if (v8)
    {
      if (style == UIPageViewControllerTransitionStyleScroll)
      {
        v14 = [(NSDictionary *)v8 objectForKey:@"UIPageViewControllerOptionInterPageSpacingKey"];
        [v14 floatValue];
        [(UIPageViewController *)v9 _setPageSpacing:v15];
      }

      else if (style == UIPageViewControllerTransitionStylePageCurl)
      {
        v11 = [(NSDictionary *)v8 objectForKey:@"UIPageViewControllerOptionSpineLocationKey"];

        if (v11)
        {
          v12 = [(NSDictionary *)v8 objectForKey:@"UIPageViewControllerOptionSpineLocationKey"];
          v13 = [v12 integerValue];

          if ([objc_opt_class() _isSpineLocation:v13 supportedForTransitionStyle:v9->_transitionStyle])
          {
            [(UIPageViewController *)v9 _setSpineLocation:v13];
          }
        }
      }
    }
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UIPageViewController;
  [(UIViewController *)&v11 encodeWithCoder:v4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v4 encodeConditionalObject:v6 forKey:@"UIDelegate"];
  }

  v7 = objc_loadWeakRetained(&self->_dataSource);

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v4 encodeConditionalObject:v8 forKey:@"UIDataSource"];
  }

  [v4 encodeInteger:self->_transitionStyle forKey:@"UITransitionStyle"];
  [v4 encodeInteger:self->_navigationOrientation forKey:@"UINavigationOrientation"];
  [v4 encodeInteger:self->_spineLocation forKey:@"UISpineLocation"];
  [v4 encodeBool:self->_doubleSided forKey:@"UIDoubleSided"];
  viewControllers = self->_viewControllers;
  v10 = [(UIViewController *)self childViewControllers];
  LODWORD(viewControllers) = [(NSArray *)viewControllers isEqual:v10];

  if (viewControllers)
  {
    [v4 encodeBool:1 forKey:@"UIViewControllersAreChildren"];
  }

  else
  {
    [v4 encodeObject:self->_viewControllers forKey:@"UIViewControllers"];
  }

  [v4 encodeInteger:self->_pageSpacing forKey:@"UIPageSpacing"];
}

- (UIPageViewController)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v15.receiver = self;
  v15.super_class = UIPageViewController;
  v5 = [(UIViewController *)&v15 initWithCoder:v4];
  if (v5)
  {
    if ([(NSCoder *)v4 containsValueForKey:@"UITransitionStyle"])
    {
      v6 = [(NSCoder *)v4 decodeIntegerForKey:@"UITransitionStyle"];
      if (![objc_opt_class() _isSupportedTransitionStyle:v6])
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    if ([(NSCoder *)v4 containsValueForKey:@"UINavigationOrientation"])
    {
      v7 = [(NSCoder *)v4 decodeIntegerForKey:@"UINavigationOrientation"];
      if ([objc_opt_class() _isNavigationOrientation:v7 supportedForTransitionStyle:v6])
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    UIPageViewControllerCommonInitWithTransitionStyleAndNavigationOrientation(v5, v6, v8);
    v5->_doubleSided = [(NSCoder *)v4 decodeBoolForKey:@"UIDoubleSided"];
    if ([(NSCoder *)v4 containsValueForKey:@"UISpineLocation"])
    {
      v9 = [(NSCoder *)v4 decodeIntegerForKey:@"UISpineLocation"];
      if ([objc_opt_class() _isSpineLocation:v9 supportedForTransitionStyle:v5->_transitionStyle])
      {
        [(UIPageViewController *)v5 _setSpineLocation:v9];
      }
    }

    if ([(NSCoder *)v4 decodeBoolForKey:@"UIViewControllersAreChildren"])
    {
      [(UIViewController *)v5 childViewControllers];
    }

    else
    {
      [(NSCoder *)v4 decodeObjectForKey:@"UIViewControllers"];
    }
    v10 = ;
    viewControllers = v5->_viewControllers;
    v5->_viewControllers = v10;

    v12 = [(NSCoder *)v4 decodeObjectForKey:@"UIDelegate"];
    [(UIPageViewController *)v5 setDelegate:v12];

    v13 = [(NSCoder *)v4 decodeObjectForKey:@"UIDataSource"];
    [(UIPageViewController *)v5 setDataSource:v13];

    [(UIPageViewController *)v5 _setPageSpacing:[(NSCoder *)v4 decodeIntegerForKey:@"UIPageSpacing"]];
  }

  return v5;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    objc_setAssociatedObject(WeakRetained, &self->super.super.super.isa + 2, 0, 1);
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = v5;
  if (v5)
  {
    objc_setAssociatedObject(v5, &self->super.super.super.isa + 1, 0, 1);
  }

  v7 = [(UIGestureRecognizer *)self->_panGestureRecognizer view];
  [v7 removeGestureRecognizer:self->_panGestureRecognizer];

  [(UIGestureRecognizer *)self->_panGestureRecognizer removeTarget:self action:sel__handlePanGesture_];
  v8 = [(UIGestureRecognizer *)self->_tapGestureRecognizer view];
  [v8 removeGestureRecognizer:self->_tapGestureRecognizer];

  [(UIGestureRecognizer *)self->_tapGestureRecognizer removeTarget:self action:sel__handleTapGesture_];
  tapRegions = self->_tapRegions;
  if (tapRegions)
  {
    free(tapRegions);
    self->_tapRegions = 0;
  }

  v10 = [(UIPageViewController *)self _contentView];
  v11 = v10;
  if (v10)
  {
    [v10 invalidatePageViewController];
    v12 = [v11 scrollView];
    [v12 setDelegate:0];
  }

  v13.receiver = self;
  v13.super_class = UIPageViewController;
  [(UIViewController *)&v13 dealloc];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  if (!v4)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v5 = dyld_program_sdk_at_least();
  v6 = v4;
  if ((v5 & 1) == 0)
  {
    v7 = [v4 allowsWeakReference];
    v6 = v4;
    if ((v7 & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__UIPageViewController_setDelegate___block_invoke;
      block[3] = &unk_1E70F35B8;
      v34 = v4;
      v35 = self;
      if (setDelegate__once_1 != -1)
      {
        dispatch_once(&setDelegate__once_1, block);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v8 = v6;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = WeakRetained;
  if (self->_unsafeUnretainedDelegate != v8)
  {
    self->_unsafeUnretainedDelegate = v8;
    if (WeakRetained)
    {
      objc_setAssociatedObject(WeakRetained, &self->super.super.super.isa + 1, 0, 1);
    }

    objc_storeWeak(&self->_delegate, v8);
    v11 = v8;
    v12 = [(UIPageViewController *)self delegate];
    v13 = v12;
    if (v11 == v12)
    {
      v14 = [(UIPageViewController *)self allowsWeakReference];

      if (v11 && v14)
      {
        objc_initWeak(&location, self);
        v15 = [_UIWeakHelper alloc];
        v27 = MEMORY[0x1E69E9820];
        v28 = 3221225472;
        v29 = __36__UIPageViewController_setDelegate___block_invoke_92;
        v30 = &unk_1E70F5A28;
        objc_copyWeak(&v31, &location);
        v16 = [(_UIWeakHelper *)v15 initWithDeallocationBlock:&v27];
        objc_setAssociatedObject(v11, &self->super.super.super.isa + 1, v16, 1);

        objc_destroyWeak(&v31);
        objc_destroyWeak(&location);
      }
    }

    else
    {
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFFD | v17;
    if (objc_opt_respondsToSelector())
    {
      v18 = 4;
    }

    else
    {
      v18 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFFB | v18;
    v19 = objc_opt_respondsToSelector();
    if (v19)
    {
      v20 = 8;
    }

    else
    {
      v20 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFF7 | v20;
    if (v19)
    {
      v21 = [(UIPageViewController *)self _contentView];
      v22 = [v21 scrollView];
      v23 = [v21 pageViewController];
      [v22 setDelegate:v23];
    }

    if (self->_transitionStyle)
    {
      v24 = 0;
    }

    else if (objc_opt_respondsToSelector())
    {
      v24 = 16;
    }

    else
    {
      v24 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFEF | v24;
    if (objc_opt_respondsToSelector())
    {
      v25 = 32;
    }

    else
    {
      v25 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFDF | v25;
    if (objc_opt_respondsToSelector())
    {
      v26 = 64;
    }

    else
    {
      v26 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFFBF | v26;
    [(UIPageViewController *)self _updatePageControlViaDataSourceIfNecessary:v27];
  }
}

void __36__UIPageViewController_setDelegate___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &kUIPageViewControllerNavigationDirectionUndetermined_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "You are trying to set a deallocating object as a delegate. This will be a hard crash in the future. Offending object: %@ hostObject: %@", &v5, 0x16u);
  }
}

void __36__UIPageViewController_setDelegate___block_invoke_92(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    if (!v2)
    {
      [v3 setDelegate:0];
    }

    WeakRetained = v3;
  }
}

- (id)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)setDataSource:(id)dataSource
{
  v4 = dataSource;
  if (!v4)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v5 = dyld_program_sdk_at_least();
  v6 = v4;
  if ((v5 & 1) == 0)
  {
    v7 = [v4 allowsWeakReference];
    v6 = v4;
    if ((v7 & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __38__UIPageViewController_setDataSource___block_invoke;
      block[3] = &unk_1E70F35B8;
      v34 = v4;
      v35 = self;
      if (setDataSource__once_0 != -1)
      {
        dispatch_once(&setDataSource__once_0, block);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
  v8 = v6;

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v10 = WeakRetained;
  if (self->_unsafeUnretainedDataSource != v8)
  {
    self->_unsafeUnretainedDataSource = v8;
    if (WeakRetained)
    {
      objc_setAssociatedObject(WeakRetained, &self->super.super.super.isa + 2, 0, 1);
    }

    objc_storeWeak(&self->_dataSource, v8);
    v11 = v8;
    v12 = [(UIPageViewController *)self dataSource];
    v13 = v12;
    if (v11 == v12)
    {
      v14 = [(UIPageViewController *)self allowsWeakReference];

      if (v11 && v14)
      {
        objc_initWeak(&location, self);
        v15 = [_UIWeakHelper alloc];
        v27 = MEMORY[0x1E69E9820];
        v28 = 3221225472;
        v29 = __38__UIPageViewController_setDataSource___block_invoke_107;
        v30 = &unk_1E70F5A28;
        objc_copyWeak(&v31, &location);
        v16 = [(_UIWeakHelper *)v15 initWithDeallocationBlock:&v27];
        objc_setAssociatedObject(v11, &self->super.super.super.isa + 2, v16, 1);

        objc_destroyWeak(&v31);
        objc_destroyWeak(&location);
      }
    }

    else
    {
    }

    if (objc_opt_respondsToSelector())
    {
      v17 = 128;
    }

    else
    {
      v17 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFF7F | v17;
    if (objc_opt_respondsToSelector())
    {
      v18 = 256;
    }

    else
    {
      v18 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFEFF | v18;
    if (objc_opt_respondsToSelector())
    {
      v19 = 512;
    }

    else
    {
      v19 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFDFF | v19;
    if (objc_opt_respondsToSelector())
    {
      v20 = 1024;
    }

    else
    {
      v20 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFBFF | v20;
    if ([(UIViewController *)self isViewLoaded:v27])
    {
      v21 = [(UIPageViewController *)self _canHandleGestures];
      v22 = [(UIPageViewController *)self _scrollView];
      v23 = [v22 isScrollEnabled];

      if (v21 != v23)
      {
        v24 = [(UIPageViewController *)self _scrollView];
        [v24 setScrollEnabled:{-[UIPageViewController _canHandleGestures](self, "_canHandleGestures")}];
      }

      v25 = [(UIPageViewController *)self _scrollView];
      [v25 _invalidateOffscreenViews];

      v26 = [(UIPageViewController *)self _contentView];
      [v26 setNeedsLayout];
    }
  }
}

void __38__UIPageViewController_setDataSource___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &kUIPageViewControllerNavigationDirectionUndetermined_block_invoke_2___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "You are trying to set a deallocating object as dataSource. This will be a hard crash in the future. Offending object: %@ hosting object: %@", &v5, 0x16u);
  }
}

void __38__UIPageViewController_setDataSource___block_invoke_107(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained dataSource];
    if (!v2)
    {
      [v3 setDataSource:0];
    }

    WeakRetained = v3;
  }
}

- (void)_setSpineLocation:(int64_t)a3
{
  if (self->_transitionStyle)
  {
    v3 = 0;
    self->_spineLocation = 0;
LABEL_3:
    self->_doubleSided = v3;
    return;
  }

  if (self->_spineLocation != a3)
  {
    self->_spineLocation = a3;
    if (a3 == 2)
    {
      v3 = 1;
      goto LABEL_3;
    }
  }
}

- (void)setDoubleSided:(BOOL)doubleSided
{
  if (!self->_transitionStyle && self->_doubleSided != doubleSided)
  {
    self->_doubleSided = doubleSided;
    if (!self->_stashingViewControllersForRotation && !doubleSided && self->_spineLocation == 2)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"If 'UIPageViewControllerSpineLocationMid' is specified, 'doubleSided' must be 'YES'."}];
    }
  }
}

- (NSArray)viewControllers
{
  transitionStyle = self->_transitionStyle;
  if (transitionStyle == 1)
  {
    v6 = MEMORY[0x1E695DEC8];
    v7 = [(NSArray *)self->_viewControllers _ui_onlyObject];
    v8 = [v6 arrayWithObjects:{v7, 0}];
  }

  else if (transitionStyle)
  {
    v8 = 0;
  }

  else
  {
    if (self->_stashingViewControllersForRotation && [(NSArray *)self->_viewControllersStashedForRotation count])
    {
      v4 = MEMORY[0x1E695DEC8];
      viewControllersStashedForRotation = self->_viewControllersStashedForRotation;
    }

    else
    {
      v4 = MEMORY[0x1E695DEC8];
      viewControllersStashedForRotation = self->_viewControllers;
    }

    v8 = [v4 arrayWithArray:viewControllersStashedForRotation];
  }

  return v8;
}

- (void)_invalidateEffectiveTapRegions
{
  *&self->_effectiveTapRegionInsets.top = 0u;
  *&self->_effectiveTapRegionInsets.bottom = 0u;
  self->_effectiveTapRegionBreadths = *MEMORY[0x1E695F060];
  tapRegions = self->_tapRegions;
  if (tapRegions)
  {
    free(tapRegions);
    self->_tapRegions = 0;
  }
}

- (UIEdgeInsets)_effectiveTapRegionInsets
{
  p_effectiveTapRegionInsets = &self->_effectiveTapRegionInsets;
  v3 = *&self->_effectiveTapRegionInsets.top;
  v4 = *&self->_effectiveTapRegionInsets.bottom;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v3), vceqzq_f64(v4))))))
  {
    left = self->_effectiveTapRegionInsets.left;
    right = self->_effectiveTapRegionInsets.right;
  }

  else
  {
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*&self->_tapRegionInsets.top), vceqzq_f64(*&self->_tapRegionInsets.bottom))))))
    {
      v8 = *&self->_tapRegionInsets.bottom;
      *p_effectiveTapRegionInsets = *&self->_tapRegionInsets.top;
      *&self->_effectiveTapRegionInsets.bottom = v8;
    }

    v9 = [(UIGestureRecognizer *)self->_tapGestureRecognizer view];
    [v9 bounds];
    Height = CGRectGetHeight(v16);

    v10 = [(UIGestureRecognizer *)self->_tapGestureRecognizer view];
    [v10 bounds];
    Width = CGRectGetWidth(v17);

    v12 = fmax(p_effectiveTapRegionInsets[1].f64[0], 0.0);
    v13 = fmax(p_effectiveTapRegionInsets[1].f64[1], 0.0);
    if (Width <= v13)
    {
      right = Width;
    }

    else
    {
      right = v13;
    }

    v4 = vmaxnmq_f64(*p_effectiveTapRegionInsets, 0);
    v14.f64[0] = Height;
    v14.f64[1] = Width - right;
    v3 = vbslq_s8(vcgtq_f64(v14, v4), v4, v14);
    v4.f64[0] = Height - v3.f64[0];
    if (Height - v3.f64[0] > v12)
    {
      v4.f64[0] = v12;
    }

    p_effectiveTapRegionInsets[1].f64[0] = v4.f64[0];
    p_effectiveTapRegionInsets[1].f64[1] = right;
    *p_effectiveTapRegionInsets = v3;
    left = v3.f64[1];
  }

  result.bottom = v4.f64[0];
  result.top = v3.f64[0];
  result.right = right;
  result.left = left;
  return result;
}

- (void)_setTapRegionInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_tapRegionInsets.top, v3), vceqq_f64(*&self->_tapRegionInsets.bottom, v4)))) & 1) == 0)
  {
    self->_tapRegionInsets = a3;
    [(UIPageViewController *)self _invalidateEffectiveTapRegions];
  }
}

- (CGSize)_effectiveTapRegionBreadths
{
  p_effectiveTapRegionBreadths = &self->_effectiveTapRegionBreadths;
  width = self->_effectiveTapRegionBreadths.width;
  height = self->_effectiveTapRegionBreadths.height;
  if (width == 0.0 && height == 0.0)
  {
    if (self->_tapRegionBreadths.width == 0.0 && self->_tapRegionBreadths.height == 0.0)
    {
      v6 = +[UIDevice currentDevice];
      v7 = [v6 userInterfaceIdiom];

      v8 = 80.0;
      if (self->_spineLocation == 2)
      {
        v8 = 60.0;
      }

      if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v9 = dbl_18A679320[self->_spineLocation == 2];
      }

      else
      {
        v9 = v8;
      }

      p_effectiveTapRegionBreadths->width = v9;
      p_effectiveTapRegionBreadths->height = v9;
    }

    else
    {
      *p_effectiveTapRegionBreadths = self->_tapRegionBreadths;
      v9 = p_effectiveTapRegionBreadths->width;
    }

    v10 = [(UIGestureRecognizer *)self->_tapGestureRecognizer view];
    [v10 bounds];
    v11 = CGRectGetWidth(v17) * 0.5;

    if (v9 <= v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    p_effectiveTapRegionBreadths->width = v12;
    v13 = p_effectiveTapRegionBreadths->height;
    v14 = [(UIGestureRecognizer *)self->_tapGestureRecognizer view];
    [v14 bounds];
    v15 = CGRectGetHeight(v18) * 0.5;

    if (v13 <= v15)
    {
      height = v13;
    }

    else
    {
      height = v15;
    }

    p_effectiveTapRegionBreadths->height = height;
    width = p_effectiveTapRegionBreadths->width;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)_setTapRegionBreadths:(CGSize)a3
{
  if (self->_tapRegionBreadths.width != a3.width || self->_tapRegionBreadths.height != a3.height)
  {
    self->_tapRegionBreadths = a3;
    [(UIPageViewController *)self _invalidateEffectiveTapRegions];
  }
}

- (CGRect)_disabledScrollingRegion
{
  v3 = [(UIPageViewController *)self _scrollView];
  if (v3)
  {
    v4 = [(UIPageViewController *)self _scrollView];
    [v4 disabledScrollingRegion];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_setDisabledScrollingRegion:(CGRect)a3
{
  if (self->_transitionStyle == 1)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v8 = [(UIPageViewController *)self _scrollView];
    [v8 setDisabledScrollingRegion:{x, y, width, height}];
  }
}

- (_UIPageViewControllerContentView)_contentView
{
  if ([(UIViewController *)self isViewLoaded])
  {
    v3 = [(UIViewController *)self view];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UIQueuingScrollView)_scrollView
{
  v2 = [(UIPageViewController *)self _contentView];
  v3 = [v2 scrollView];

  return v3;
}

- (id)_pageControl
{
  v2 = [(UIPageViewController *)self _contentView];
  v3 = [v2 pageControl];

  return v3;
}

- (CGSize)_contentSizeForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(UIPageViewController *)self _navigationOrientation];
  if (v5)
  {
    v6 = width;
  }

  else
  {
    v6 = width * 3.0;
  }

  if (v5)
  {
    v7 = height * 3.0;
  }

  else
  {
    v7 = height;
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (void)_setPageSpacing:(double)a3
{
  if (self->_transitionStyle == 1)
  {
    v4 = fmax(ceil(a3 * 0.5), 0.0);
    v5 = v4 + v4;
    if (self->_pageSpacing != v5)
    {
      self->_pageSpacing = v5;
      v6 = [(UIPageViewController *)self _contentView];
      [v6 setNeedsLayout];
    }
  }
}

- (void)loadView
{
  v3 = [_UIPageViewControllerContentView alloc];
  [(UIViewController *)self _defaultInitialViewFrame];
  v14 = [(_UIPageViewControllerContentView *)v3 initWithFrame:self andPageViewController:?];
  [(UIViewController *)self setView:v14];
  [(UIView *)v14 setOpaque:0];
  transitionStyle = self->_transitionStyle;
  if (transitionStyle == 1)
  {
    v7 = [(UIPageViewController *)self _canHandleGestures];
    v8 = [(UIPageViewController *)self _scrollView];
    v9 = [v8 isScrollEnabled];

    if (v7 != v9)
    {
      v10 = [(UIPageViewController *)self _scrollView];
      [v10 setScrollEnabled:{-[UIPageViewController _canHandleGestures](self, "_canHandleGestures")}];
    }

    v11 = [(UIPageViewController *)self _scrollView];
    v12 = [v11 visibleView];
    if (v12)
    {
    }

    else
    {
      v13 = [(NSArray *)self->_viewControllers count];

      if (v13)
      {
        [(UIPageViewController *)self _setViewControllers:self->_viewControllers withScrollInDirection:0 animated:0 completion:0];
      }
    }
  }

  else if (!transitionStyle)
  {
    v5 = [(UIGestureRecognizer *)self->_panGestureRecognizer view];

    if (!v5)
    {
      [(UIView *)v14 addGestureRecognizer:self->_panGestureRecognizer];
    }

    v6 = [(UIGestureRecognizer *)self->_tapGestureRecognizer view];

    if (!v6)
    {
      [(UIView *)v14 addGestureRecognizer:self->_tapGestureRecognizer];
    }

    if (!self->_pageCurl && [(NSArray *)self->_viewControllers count])
    {
      [(UIPageViewController *)self _setViewControllers:self->_viewControllers withCurlOfType:1 fromLocation:0 direction:0 animated:0 notifyDelegate:0 completion:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    }
  }
}

- (void)viewWillUnload
{
  v4.receiver = self;
  v4.super_class = UIPageViewController;
  [(UIViewController *)&v4 viewWillUnload];
  v3 = [(UIPageViewController *)self _contentView];
  [v3 invalidatePageViewController];
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  *a4 = 1;
  [(UIViewController *)self _contentOverlayInsets];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (void)_marginInfoForChild:(id)a3 leftMargin:(double *)a4 rightMargin:(double *)a5
{
  v8 = [(UIViewController *)self _existingView];
  v9 = [v8 _shouldReverseLayoutDirection];

  [(UIViewController *)self systemMinimumLayoutMargins];
  if (v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  *a4 = v12;
  if (v9)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  *a5 = v13;
}

- (void)_child:(id)a3 beginAppearanceTransition:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  if (![(UIViewController *)self _forwardAppearanceMethods])
  {
    v8 = [v9 view];
    [v9 beginAppearanceTransition:v6 animated:v5];
  }
}

- (BOOL)_child:(id)a3 canBeginAppearanceTransition:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6 && ![(UIViewController *)self _forwardAppearanceMethods])
  {
    v9 = [v6 _appearState];
    if (v4)
    {
      if (v9 != 3)
      {
        v10 = 0;
LABEL_11:
        v7 = [v6 _appearState] == v10;
        goto LABEL_4;
      }
    }

    else if (v9 != 1)
    {
      v10 = 2;
      goto LABEL_11;
    }

    v7 = 1;
    goto LABEL_4;
  }

  v7 = 0;
LABEL_4:

  return v7;
}

- (void)_child:(id)a3 beginAppearanceTransitionIfPossible:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if ([UIPageViewController _child:"_child:canBeginAppearanceTransition:" canBeginAppearanceTransition:?])
  {
    [(UIPageViewController *)self _child:v8 beginAppearanceTransition:v6 animated:v5];
  }
}

- (void)_childEndAppearanceTransition:(id)a3
{
  v4 = a3;
  if (![(UIViewController *)self _forwardAppearanceMethods])
  {
    [v4 endAppearanceTransition];
  }
}

- (BOOL)_childCanEndAppearanceTransition:(id)a3
{
  v4 = a3;
  v5 = v4 && !-[UIViewController _forwardAppearanceMethods](self, "_forwardAppearanceMethods") && ([v4 _appearState] == 3 || objc_msgSend(v4, "_appearState") == 1);

  return v5;
}

- (void)_child:(id)a3 endAppearanceTransitionIfPossible:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  v10 = v6;
  if (v6)
  {
    v8 = [v6 _appearState];
    v9 = v4 ? v8 == 3 : v8 == 1;
    v7 = v10;
    if (v9)
    {
      [(UIPageViewController *)self _child:v10 beginAppearanceTransitionIfPossible:v4 animated:0];
      v7 = v10;
    }
  }

  if ([(UIPageViewController *)self _childCanEndAppearanceTransition:v7])
  {
    [(UIPageViewController *)self _childEndAppearanceTransition:v10];
  }
}

- (void)_child:(id)a3 willRotateToInterfaceOrientation:(int64_t)a4 duration:(double)a5
{
  v8 = a3;
  if (![(UIViewController *)self _forwardRotationMethods])
  {
    [v8 willRotateToInterfaceOrientation:a4 duration:a5];
  }
}

- (void)_child:(id)a3 willAnimateRotationToInterfaceOrientation:(int64_t)a4 duration:(double)a5
{
  v8 = a3;
  if (![(UIViewController *)self _forwardRotationMethods])
  {
    [v8 willAnimateRotationToInterfaceOrientation:a4 duration:a5];
  }
}

- (void)_child:(id)a3 didRotateFromInterfaceOrientation:(int64_t)a4
{
  v6 = a3;
  if (![(UIViewController *)self _forwardRotationMethods])
  {
    [v6 didRotateFromInterfaceOrientation:a4];
  }
}

- (void)_sendChildViewWill:(BOOL)a3 appear:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v20 = *MEMORY[0x1E69E9840];
  if ([(UIViewController *)self isViewLoaded]&& [(NSArray *)self->_viewControllers count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = self->_viewControllers;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * i);
          if ([v14 isViewLoaded])
          {
            if (v7)
            {
              [(UIPageViewController *)self _child:v14 beginAppearanceTransitionIfPossible:v6 animated:v5];
            }

            else
            {
              [(UIPageViewController *)self _child:v14 endAppearanceTransitionIfPossible:v6];
            }
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v13.receiver = self;
  v13.super_class = UIPageViewController;
  [(UIViewController *)&v13 viewWillAppear:?];
  if (!self->_transitionStyle)
  {
    v5 = [(UIViewController *)self _window];

    if (!v5)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v11 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *v12 = 0;
          _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Window should be nonnil here unless a subclass is mistakenly sending this to a child when no window can be found", v12, 2u);
        }
      }

      else
      {
        v10 = *(__UILogGetCategoryCachedImpl("Assert", &viewWillAppear____s_category) + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *v12 = 0;
          _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Window should be nonnil here unless a subclass is mistakenly sending this to a child when no window can be found", v12, 2u);
        }
      }
    }

    v6 = [(UIViewController *)self _window];
    if (v6)
    {
      v7 = UIApp;
      v8 = [(UIViewController *)self _window];
      v9 = -[UIPageViewController _requestSpineLocationForInterfaceOrientationAndUpdateStashedViewControllers:](self, "_requestSpineLocationForInterfaceOrientationAndUpdateStashedViewControllers:", [v7 _sceneInterfaceOrientationFromWindow:v8]);
    }

    else
    {
      v9 = [(UIPageViewController *)self _requestSpineLocationForInterfaceOrientationAndUpdateStashedViewControllers:0];
    }

    if (v9 && v9 != self->_spineLocation)
    {
      [(UIPageViewController *)self _setSpineLocation:v9];
      [(UIPageViewController *)self _invalidatePageCurl];
      [(UIPageViewController *)self _setViewControllers:self->_viewControllersStashedForRotation withCurlOfType:1 fromLocation:0 direction:0 animated:0 notifyDelegate:0 completion:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    }

    [(UIPageViewController *)self _setViewControllersStashedForRotation:0];
  }

  [(UIPageViewController *)self _sendChildViewWill:1 appear:1 animated:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UIPageViewController;
  [(UIViewController *)&v5 viewDidAppear:?];
  [(UIPageViewController *)self _sendChildViewWill:0 appear:1 animated:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UIPageViewController;
  [(UIViewController *)&v5 viewWillDisappear:?];
  [(UIPageViewController *)self _sendChildViewWill:1 appear:0 animated:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UIPageViewController;
  [(UIViewController *)&v5 viewDidDisappear:?];
  [(UIPageViewController *)self _sendChildViewWill:0 appear:0 animated:v3];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  viewControllers = self->_viewControllers;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__UIPageViewController_shouldAutorotateToInterfaceOrientation___block_invoke;
  v6[3] = &unk_1E70F7AA8;
  v6[4] = &v7;
  v6[5] = a3;
  [(NSArray *)viewControllers enumerateObjectsUsingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __63__UIPageViewController_shouldAutorotateToInterfaceOrientation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 shouldAutorotateToInterfaceOrientation:*(a1 + 40)];
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
  return result;
}

- (unint64_t)supportedInterfaceOrientations
{
  if ((*&self->_delegateFlags & 0x20) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained pageViewControllerSupportedInterfaceOrientations:self];

    return v5;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPageViewController;
    return [(UIViewController *)&v6 supportedInterfaceOrientations];
  }
}

- (BOOL)_hasPreferredInterfaceOrientationForPresentation
{
  v5.receiver = self;
  v5.super_class = UIPageViewController;
  if ([(UIViewController *)&v5 _hasPreferredInterfaceOrientationForPresentation])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = dyld_program_sdk_at_least();
    if (v3)
    {
      return (*&self->_delegateFlags >> 6) & 1;
    }
  }

  return v3;
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  if ((*&self->_delegateFlags & 0x40) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained pageViewControllerPreferredInterfaceOrientationForPresentation:self];

    return v5;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UIPageViewController;
    return [(UIViewController *)&v6 preferredInterfaceOrientationForPresentation];
  }
}

+ (id)stringForSpineLocation:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown Spine Location (%ld)", a3];
  if (a3 <= 3)
  {
    v5 = off_1E7103078[a3];

    v4 = v5;
  }

  return v4;
}

- (_NSRange)_validRangeForPresentationOfViewControllersWithSpineLocation:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = 0;
  result.length = v3;
  result.location = v4;
  return result;
}

- (id)_validatedViewControllersForPresentationOfViewControllers:(id)a3 validRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  if ([v6 count] == length)
  {
    v7 = [v6 subarrayWithRange:{location, length}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_viewControllersForPendingSpineLocation:(int64_t)a3
{
  v5 = [(UIPageViewController *)self _validRangeForPresentationOfViewControllersWithSpineLocation:?];
  v7 = v6;
  if ([(NSArray *)self->_viewControllersStashedForRotation count])
  {
    v8 = self->_viewControllersStashedForRotation;
    v9 = [(UIPageViewController *)self _validatedViewControllersForPresentationOfViewControllers:v8 validRange:v5, v7];
    if (v9)
    {
      goto LABEL_9;
    }

    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if ([(NSArray *)self->_viewControllersStashedForRotation count])
  {
    v8 = v10;
LABEL_7:
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = [(NSArray *)v10 count];
    v14 = [objc_opt_class() stringForSpineLocation:a3];
    [v11 raise:v12 format:{@"The number of provided view controllers (%ld) doesn't match the number required (%ld) for the requested spine location (%@)", v13, v7, v14}];

    v15 = 0;
    goto LABEL_10;
  }

  v8 = self->_viewControllers;

  v9 = [(UIPageViewController *)self _validatedViewControllersForPresentationOfViewControllers:v8 validRange:v5, v7];
  if (!v9)
  {
    v10 = v8;
    goto LABEL_7;
  }

LABEL_9:
  v15 = v9;
LABEL_10:

  return v15;
}

- (void)_invalidatePageCurl
{
  [(_UIPageCurl *)self->_pageCurl _cancelAllActiveTransitionsAndAbandonCallbacks:1];
  pageCurl = self->_pageCurl;
  self->_pageCurl = 0;
}

- (int64_t)_requestSpineLocationForInterfaceOrientationAndUpdateStashedViewControllers:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (WeakRetained && (*&self->_delegateFlags & 0x10) != 0)
  {
    self->_stashingViewControllersForRotation = 1;
    v7 = [WeakRetained pageViewController:self spineLocationForInterfaceOrientation:a3];
    if (([objc_opt_class() _isSpineLocation:v7 supportedForTransitionStyle:self->_transitionStyle] & 1) == 0)
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v10 = [objc_opt_class() stringForSpineLocation:v7];
      [v8 raise:v9 format:{@"'%@' is not a valid spine location", v10}];
    }

    self->_stashingViewControllersForRotation = 0;
    v11 = [(UIPageViewController *)self _viewControllersForPendingSpineLocation:v7];
    [(UIPageViewController *)self _setViewControllersStashedForRotation:v11];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v85 = *MEMORY[0x1E69E9840];
  self->_interfaceRotating = 1;
  [(UIPageViewController *)self _invalidatePageCurl];
  if (self->_transitionStyle)
  {
    goto LABEL_2;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    goto LABEL_2;
  }

  delegateFlags = self->_delegateFlags;

  if ((delegateFlags & 0x10) == 0)
  {
    goto LABEL_2;
  }

  v14 = [UISnapshotView alloc];
  v15 = [(UIViewController *)self view];
  [v15 bounds];
  v16 = [(UISnapshotView *)v14 initWithFrame:?];

  rotationSnapshotViews = self->_rotationSnapshotViews;
  if (!rotationSnapshotViews)
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    v19 = self->_rotationSnapshotViews;
    self->_rotationSnapshotViews = v18;

    rotationSnapshotViews = self->_rotationSnapshotViews;
  }

  [(NSMutableArray *)rotationSnapshotViews addObject:v16];
  v20 = [(UIViewController *)self view];
  [(UISnapshotView *)v16 captureSnapshotOfView:v20 withSnapshotType:1];

  v21 = [(UIPageViewController *)self _requestSpineLocationForInterfaceOrientationAndUpdateStashedViewControllers:a3];
  v22 = self->_viewControllersStashedForRotation;
  spineLocation = self->_spineLocation;
  if (spineLocation == 2 || v21 != 2)
  {
    if (spineLocation == 2 && v21 != 2)
    {
      spineLocation = 2;
      goto LABEL_23;
    }

    if (([(NSArray *)self->_viewControllers isEqual:v22]& 1) == 0)
    {
      spineLocation = self->_spineLocation;
      goto LABEL_23;
    }

LABEL_2:
    [(UIPageViewController *)self _setViewControllersStashedForRotation:self->_viewControllers];
    [(NSMutableArray *)self->_rotationSnapshotViews removeAllObjects];
    goto LABEL_3;
  }

LABEL_23:
  v79 = v16;
  self->_spineLocationPriorToInterfaceRotation = spineLocation;
  [(UIPageViewController *)self _setSpineLocation:v21];
  v24 = self->_viewControllers;
  v25 = [UISnapshotView alloc];
  v26 = [(UIViewController *)self view];
  [v26 bounds];
  v27 = [(UISnapshotView *)v25 initWithFrame:?];

  [(NSMutableArray *)self->_rotationSnapshotViews addObject:v27];
  if (self->_spineLocationPriorToInterfaceRotation == 2 && self->_spineLocation != 2)
  {
    v28 = [(NSArray *)v22 _ui_onlyObject];
    v29 = [(NSArray *)v24 containsObject:v28];

    if (v29)
    {
      v30 = [(NSArray *)v22 _ui_onlyObject];
      v31 = [v30 view];
      [v31 frame];
      [(UISnapshotView *)v27 setFrame:?];
    }
  }

  v32 = [(UIViewController *)self view];
  [v32 bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = self->_spineLocation;
  if (self->_spineLocationPriorToInterfaceRotation == 2)
  {
    if (v41 != 2)
    {
      v42 = [(NSArray *)v22 _ui_onlyObject];
      v43 = [(NSArray *)v24 indexOfObject:v42];

      v86.origin.x = v34;
      v86.origin.y = v36;
      v86.size.width = v38;
      v86.size.height = v40;
      MinX = CGRectGetMinX(v86);
      Height = 0.0;
      Width = 0.0;
      if (!self->_navigationOrientation && v43 == 1)
      {
        v87.origin.x = v34;
        v87.origin.y = v36;
        v87.size.width = v38;
        v87.size.height = v40;
        Width = CGRectGetWidth(v87);
      }

      v88.origin.x = v34;
      v88.origin.y = v36;
      v88.size.width = v38;
      v88.size.height = v40;
      MinY = CGRectGetMinY(v88);
      if (self->_navigationOrientation == 1 && v43 == 1)
      {
        v89.origin.x = v34;
        v89.origin.y = v36;
        v89.size.width = v38;
        v89.size.height = v40;
        Height = CGRectGetHeight(v89);
      }

      v77 = MinX + Width;
      v47 = MinY + Height;
      v90.origin.x = v34;
      v90.origin.y = v36;
      v90.size.width = v38;
      v90.size.height = v40;
      v48 = CGRectGetWidth(v90);
      v49 = 1.0;
      if (!self->_navigationOrientation)
      {
        v49 = 2.0;
      }

      v50 = v48 / v49;
      v91.origin.x = v34;
      v91.origin.y = v36;
      v91.size.width = v38;
      v91.size.height = v40;
      v51 = CGRectGetHeight(v91);
      v52 = 1.0;
      if (self->_navigationOrientation == 1)
      {
        v52 = 2.0;
      }

      v40 = v51 / v52;
      v36 = v47;
      v38 = v50;
LABEL_54:
      v34 = v77;
    }
  }

  else if (v41 == 2)
  {
    v53 = [(NSArray *)v24 _ui_onlyObject];
    v54 = [(NSArray *)v22 indexOfObject:v53];

    v92.origin.x = v34;
    v92.origin.y = v36;
    v92.size.width = v38;
    v92.size.height = v40;
    v78 = CGRectGetMinX(v92);
    v55 = 0.0;
    v56 = 0.0;
    if (!self->_navigationOrientation && v54 == 1)
    {
      v93.origin.x = v34;
      v93.origin.y = v36;
      v93.size.width = v38;
      v93.size.height = v40;
      v56 = CGRectGetWidth(v93);
    }

    v94.origin.x = v34;
    v94.origin.y = v36;
    v94.size.width = v38;
    v94.size.height = v40;
    v57 = CGRectGetMinY(v94);
    if (self->_navigationOrientation == 1 && v54 == 1)
    {
      v95.origin.x = v34;
      v95.origin.y = v36;
      v95.size.width = v38;
      v95.size.height = v40;
      v55 = CGRectGetHeight(v95);
    }

    v75 = v57 - v55;
    v77 = v78 - v56;
    v96.origin.x = v34;
    v96.origin.y = v36;
    v96.size.width = v38;
    v96.size.height = v40;
    v58 = CGRectGetWidth(v96);
    if (self->_navigationOrientation)
    {
      v59 = 1.0;
    }

    else
    {
      v59 = 2.0;
    }

    v60 = v58 * v59;
    v97.origin.x = v34;
    v97.origin.y = v36;
    v97.size.width = v38;
    v97.size.height = v40;
    v61 = CGRectGetHeight(v97);
    if (self->_navigationOrientation == 1)
    {
      v62 = 2.0;
    }

    else
    {
      v62 = 1.0;
    }

    v40 = v61 * v62;
    v63 = [(NSArray *)v22 objectAtIndex:v54 == 0];
    v64 = [v63 view];
    [v64 setAlpha:0.0];

    v36 = v75;
    v38 = v60;
    goto LABEL_54;
  }

  v65 = [_UIPageCurl alloc];
  v66 = self->_spineLocation;
  if (v66 == 101)
  {
    v67 = 3;
  }

  else
  {
    v68 = 2;
    if (v66 == 2)
    {
      v68 = 8;
    }

    if (v66 == 3)
    {
      v68 = 32;
    }

    v69 = 4;
    if (v66 != 2)
    {
      v69 = 1;
    }

    v70 = v66 == 3;
    v71 = 16;
    if (!v70)
    {
      v71 = v69;
    }

    if (self->_navigationOrientation)
    {
      v67 = v68;
    }

    else
    {
      v67 = v71;
    }
  }

  v72 = [(UIViewController *)self view];
  v73 = [(_UIPageCurl *)v65 initWithSpineLocation:v67 andContentRect:v72 inContentView:v34, v36, v38, v40];
  pageCurl = self->_pageCurl;
  self->_pageCurl = v73;

  [(UIPageViewController *)self _setViewControllers:v22 withCurlOfType:1 fromLocation:0 direction:0 animated:0 notifyDelegate:0 completion:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  [(UIPageViewController *)self _setViewControllersStashedForRotation:v24];

LABEL_3:
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v7 = self->_viewControllers;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v80 objects:v84 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v81;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v81 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(UIPageViewController *)self _child:*(*(&v80 + 1) + 8 * i) willRotateToInterfaceOrientation:a3 duration:a4];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v80 objects:v84 count:16];
    }

    while (v9);
  }

  [(UIPageViewController *)self _invalidatePageCurl];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v103 = *MEMORY[0x1E69E9840];
  if (self->_transitionStyle)
  {
    goto LABEL_53;
  }

  if (![(NSArray *)self->_viewControllersStashedForRotation count])
  {
    v83 = [MEMORY[0x1E696AAA8] currentHandler];
    [v83 handleFailureInMethod:a2 object:self file:@"UIPageViewController.m" lineNumber:1071 description:@"No view controllers"];
  }

  v8 = self->_viewControllersStashedForRotation;
  v85 = self->_viewControllers;
  [UIPageViewController _setViewControllers:"_setViewControllers:withCurlOfType:fromLocation:direction:animated:notifyDelegate:completion:" withCurlOfType:*MEMORY[0x1E695EFF8] fromLocation:*(MEMORY[0x1E695EFF8] + 8) direction:? animated:? notifyDelegate:? completion:?];
  [(UIPageViewController *)self _setViewControllersStashedForRotation:v8];
  spineLocation = self->_spineLocation;
  if (self->_spineLocationPriorToInterfaceRotation == 2)
  {
    v10 = v85;
    if (spineLocation != 2 && [(NSArray *)v8 count])
    {
      v11 = 0;
      do
      {
        v12 = [(NSArray *)v8 objectAtIndex:v11];
        if (![(NSArray *)v85 containsObject:v12])
        {
          v13 = [(NSArray *)v85 _ui_onlyObject];
          v14 = [v13 view];
          [v14 frame];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v22 = v21;

          if (self->_navigationOrientation)
          {
            v104.origin.x = v16;
            v104.origin.y = v18;
            v104.size.width = v20;
            v104.size.height = v22;
            Height = CGRectGetHeight(v104);
            if (!v11)
            {
              Height = -Height;
            }

            v18 = v18 + Height;
          }

          else
          {
            v105.origin.x = v16;
            v105.origin.y = v18;
            v105.size.width = v20;
            v105.size.height = v22;
            Width = CGRectGetWidth(v105);
            if (!v11)
            {
              Width = -Width;
            }

            v16 = v16 + Width;
          }

          v25 = [v12 view];
          [v25 setFrame:{v16, v18, v20, v22}];

          v26 = [v12 view];
          [v26 setAlpha:0.0];
        }

        ++v11;
      }

      while (v11 < [(NSArray *)v8 count]);
    }
  }

  else
  {
    v10 = v85;
    if (spineLocation == 2)
    {
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v27 = v85;
      v28 = [(NSArray *)v27 countByEnumeratingWithState:&v96 objects:v102 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v97;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v97 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v96 + 1) + 8 * i);
            if (![(NSArray *)v8 containsObject:v32])
            {
              v33 = [v32 view];
              [v33 setAlpha:1.0];
            }
          }

          v29 = [(NSArray *)v27 countByEnumeratingWithState:&v96 objects:v102 count:16];
        }

        while (v29);
      }
    }
  }

  if ([(NSMutableArray *)self->_rotationSnapshotViews count])
  {
    v34 = [(UIViewController *)self view];
    [v34 layoutBelowIfNeeded];

    v35 = [(NSMutableArray *)self->_rotationSnapshotViews lastObject];
    v36 = [(UIViewController *)self view];
    [v35 captureSnapshotOfView:v36 withSnapshotType:0];

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v37 = [(UIViewController *)self view];
    v38 = [v37 subviews];

    v39 = [v38 countByEnumeratingWithState:&v92 objects:v101 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v93;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v93 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v92 + 1) + 8 * j);
          v44 = [(NSMutableArray *)self->_rotationSnapshotViews _ui_firstObject];

          if (v43 != v44)
          {
            [v43 setHidden:1];
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v92 objects:v101 count:16];
      }

      while (v40);
    }

    if (self->_spineLocationPriorToInterfaceRotation == 2 || self->_spineLocation != 2)
    {
      v74 = [(UIViewController *)self view];
      v75 = [(NSMutableArray *)self->_rotationSnapshotViews _ui_firstObject];
      [v74 addSubview:v75];

      v72 = [(UIViewController *)self view];
      v73 = [(NSMutableArray *)self->_rotationSnapshotViews lastObject];
    }

    else
    {
      viewControllers = self->_viewControllers;
      v46 = [(NSArray *)v8 _ui_onlyObject];
      LODWORD(viewControllers) = [(NSArray *)viewControllers containsObject:v46];

      if (viewControllers)
      {
        v47 = [(NSArray *)v8 _ui_onlyObject];
        v48 = [v47 view];
        [v48 frame];
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v56 = v55;

        v57 = [(NSMutableArray *)self->_rotationSnapshotViews lastObject];
        [v57 frame];
        v58 = CGRectGetWidth(v106);
        v107.origin.x = v50;
        v107.origin.y = v52;
        v107.size.width = v54;
        v107.size.height = v56;
        v59 = v58 / CGRectGetWidth(v107);

        v60 = [(NSMutableArray *)self->_rotationSnapshotViews lastObject];
        [v60 frame];
        v61 = CGRectGetHeight(v108);
        v109.origin.x = v50;
        v109.origin.y = v52;
        v109.size.width = v54;
        v109.size.height = v56;
        v62 = v61 / CGRectGetHeight(v109);

        navigationOrientation = self->_navigationOrientation;
        v110.origin.x = v50;
        v110.origin.y = v52;
        v110.size.width = v54;
        v110.size.height = v56;
        v64 = v59 * CGRectGetWidth(v110);
        if (!navigationOrientation)
        {
          v64 = v64 + v64;
        }

        v84 = v64;
        v65 = self->_navigationOrientation;
        v111.origin.x = v50;
        v111.origin.y = v52;
        v111.size.width = v54;
        v111.size.height = v56;
        v66 = v62 * CGRectGetHeight(v111);
        if (v65 == 1)
        {
          v67 = v66 + v66;
        }

        else
        {
          v67 = v66;
        }

        v68 = [(NSMutableArray *)self->_rotationSnapshotViews lastObject];
        v112.origin.x = v50;
        v112.origin.y = v52;
        v112.size.width = v54;
        v112.size.height = v56;
        v69 = -(CGRectGetMinX(v112) * v59);
        v113.origin.x = v50;
        v113.origin.y = v52;
        v113.size.width = v54;
        v113.size.height = v56;
        [v68 setFrame:{v69, -(CGRectGetMinY(v113) * v62), v84, v67}];
      }

      v70 = [(UIViewController *)self view];
      v71 = [(NSMutableArray *)self->_rotationSnapshotViews lastObject];
      [v70 addSubview:v71];

      v72 = [(UIViewController *)self view];
      v73 = [(NSMutableArray *)self->_rotationSnapshotViews _ui_firstObject];
    }

    v76 = v73;
    [v72 addSubview:v73];
    v10 = v85;

    v77 = [(NSMutableArray *)self->_rotationSnapshotViews lastObject];
    [v77 setAlpha:0.0];

    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __75__UIPageViewController_willAnimateRotationToInterfaceOrientation_duration___block_invoke;
    v90[3] = &unk_1E70F35B8;
    v90[4] = self;
    v91 = v8;
    [UIView animateWithDuration:v90 animations:a4];
  }

  if (self->_transitionStyle || ![(NSMutableArray *)self->_rotationSnapshotViews count])
  {
LABEL_53:
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v78 = self->_viewControllers;
    v79 = [(NSArray *)v78 countByEnumeratingWithState:&v86 objects:v100 count:16];
    if (v79)
    {
      v80 = v79;
      v81 = *v87;
      do
      {
        for (k = 0; k != v80; ++k)
        {
          if (*v87 != v81)
          {
            objc_enumerationMutation(v78);
          }

          [(UIPageViewController *)self _child:*(*(&v86 + 1) + 8 * k) willAnimateRotationToInterfaceOrientation:a3 duration:a4];
        }

        v80 = [(NSArray *)v78 countByEnumeratingWithState:&v86 objects:v100 count:16];
      }

      while (v80);
    }
  }
}

void __75__UIPageViewController_willAnimateRotationToInterfaceOrientation_duration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *(a1 + 32);
  v12 = *(v11 + 1024);
  if (*(v11 + 1104) == 2)
  {
    if (v12 == 2)
    {
      goto LABEL_17;
    }

    v13 = *(a1 + 40);
    v14 = [*(v11 + 1040) _ui_onlyObject];
    LOBYTE(v13) = [v13 containsObject:v14];

    if (v13)
    {
      v15 = [*(*(a1 + 32) + 1096) lastObject];
      [v15 frame];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v24 = [*(a1 + 32) view];
      [v24 bounds];
      Width = CGRectGetWidth(v49);
      v50.origin.x = v17;
      v50.origin.y = v19;
      v50.size.width = v21;
      v50.size.height = v23;
      v26 = Width / CGRectGetWidth(v50);

      v27 = [*(a1 + 32) view];
      [v27 bounds];
      Height = CGRectGetHeight(v51);
      v52.origin.x = v17;
      v52.origin.y = v19;
      v52.size.width = v21;
      v52.size.height = v23;
      v29 = Height / CGRectGetHeight(v52);

      v30 = *(*(a1 + 32) + 1016);
      v53.origin.x = v17;
      v53.origin.y = v19;
      v53.size.width = v21;
      v53.size.height = v23;
      v31 = v26 * CGRectGetWidth(v53);
      if (v30)
      {
        v8 = v31;
      }

      else
      {
        v8 = v31 + v31;
      }

      v32 = *(*(a1 + 32) + 1016);
      v54.origin.x = v17;
      v54.origin.y = v19;
      v54.size.width = v21;
      v54.size.height = v23;
      v33 = v29 * CGRectGetHeight(v54);
      if (v32 == 1)
      {
        v10 = v33 + v33;
      }

      else
      {
        v10 = v33;
      }

      v55.origin.x = v17;
      v55.origin.y = v19;
      v55.size.width = v21;
      v55.size.height = v23;
      v4 = -(CGRectGetMinX(v55) * v26);
      v56.origin.x = v17;
      v56.origin.y = v19;
      v56.size.width = v21;
      v56.size.height = v23;
      v6 = -(CGRectGetMinY(v56) * v29);
    }

    v34 = (*(a1 + 32) + 1096);
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_17;
    }

    v35 = *(v11 + 1040);
    v36 = [*(a1 + 40) _ui_onlyObject];
    LODWORD(v35) = [v35 containsObject:v36];

    if (v35)
    {
      v37 = [*(a1 + 40) _ui_onlyObject];
      v38 = [v37 view];
      [v38 frame];
      v4 = v39;
      v6 = v40;
      v8 = v41;
      v10 = v42;
    }

    v34 = (*(a1 + 32) + 1096);
  }

  v43 = [*v34 _ui_firstObject];
  [v43 setAlpha:0.0];

  v11 = *(a1 + 32);
LABEL_17:
  v44 = [*(v11 + 1096) lastObject];
  [v44 setAlpha:1.0];

  v45 = [*(*(a1 + 32) + 1096) _ui_firstObject];
  [v45 setFrame:{v4, v6, v8, v10}];

  v47 = [*(*(a1 + 32) + 1096) lastObject];
  v46 = [*(a1 + 32) view];
  [v46 bounds];
  [v47 setFrame:?];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (!self->_transitionStyle)
  {
    if (!self->_pageCurl)
    {
      [(UIPageViewController *)self _setViewControllers:self->_viewControllers withCurlOfType:1 fromLocation:0 direction:0 animated:0 notifyDelegate:0 completion:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    }

    [(UIPageViewController *)self _invalidateEffectiveTapRegions];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [(UIViewController *)self view];
    v6 = [v5 subviews];

    v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          if ([(NSMutableArray *)self->_rotationSnapshotViews containsObject:v11])
          {
            [v11 removeFromSuperview];
          }

          else
          {
            [v11 setHidden:0];
            [v11 setAlpha:1.0];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v8);
    }

    [(NSMutableArray *)self->_rotationSnapshotViews removeAllObjects];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = self->_viewControllers;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(UIPageViewController *)self _child:*(*(&v17 + 1) + 8 * j) didRotateFromInterfaceOrientation:a3, v17];
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }

  self->_interfaceRotating = 0;
  [(UIPageViewController *)self _setViewControllersStashedForRotation:0];
}

- (void)_contentViewFrameOrBoundsDidChange
{
  if (!self->_transitionStyle && ![(NSMutableArray *)self->_rotationSnapshotViews count])
  {
    pageCurl = self->_pageCurl;
    if (pageCurl)
    {
      v4 = [(UIViewController *)self view];
      [v4 bounds];
      [(_UIPageCurl *)pageCurl _setContentRect:?];

      if ([(NSArray *)self->_viewControllers count])
      {
        v5 = 0;
        do
        {
          v6 = [(NSArray *)self->_viewControllers objectAtIndex:v5];
          if ([v6 isViewLoaded])
          {
            v7 = [v6 view];
            if (v5)
            {
              v8 = 0;
            }

            else
            {
              v8 = (self->_spineLocation & 0xFFFFFFFFFFFFFFFELL) == 2;
            }

            [(_UIPageCurl *)self->_pageCurl _pageViewFrame:v8];
            [v7 setFrame:?];
          }

          ++v5;
        }

        while (v5 < [(NSArray *)self->_viewControllers count]);
      }
    }

    [(UIPageViewController *)self _invalidateEffectiveTapRegions];
  }
}

- (BOOL)_isCurrentViewControllerStateValid
{
  if (self->_transitionStyle)
  {
    return 0;
  }

  spineLocation = self->_spineLocation;
  v4 = [(NSArray *)self->_viewControllers count];
  if (spineLocation == 2)
  {
    return v4 == 2;
  }

  else
  {
    return v4 == 1;
  }
}

- (id)_validatedViewControllersForTransitionWithViewControllers:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  transitionStyle = self->_transitionStyle;
  if (transitionStyle == 1)
  {
    if ([v6 count] == 1)
    {
      v12 = v7;
      v10 = 1;
      if (v12)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else if (transitionStyle)
  {
    v10 = 0;
  }

  else if (v4)
  {
    doubleSided = self->_doubleSided;
    if (doubleSided)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    if ([v6 count] == v10)
    {
      v11 = doubleSided ? 2 : 1;
      v12 = [v7 subarrayWithRange:{0, v11}];
      if (v12)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v13 = [(UIPageViewController *)self _validRangeForPresentationOfViewControllersWithSpineLocation:self->_spineLocation];
    v10 = v14;
    v12 = [(UIPageViewController *)self _validatedViewControllersForPresentationOfViewControllers:v7 validRange:v13, v14];
    if (v12)
    {
      goto LABEL_21;
    }

    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = [v7 count];
    v18 = [objc_opt_class() stringForSpineLocation:self->_spineLocation];
    [v15 raise:v16 format:{@"The number of provided view controllers (%ld) doesn't match the number required (%ld) for the requested spine location (%@)", v17, v10, v18}];
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The number of view controllers provided (%ld) doesn't match the number required (%ld) for the requested transition", objc_msgSend(v7, "count"), v10}];
  v12 = 0;
LABEL_21:

  return v12;
}

- (BOOL)_canHandleGestures
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (WeakRetained)
  {
    delegateFlags = self->_delegateFlags;
    if ((*&delegateFlags & 0x80) != 0)
    {
      v5 = (*&delegateFlags >> 8) & 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)_viewControllerBefore:(BOOL)a3 viewController:(id)a4
{
  v6 = a4;
  if ([(UIPageViewController *)self _canHandleGestures])
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v8 = WeakRetained;
    if (a3)
    {
      [WeakRetained pageViewController:self viewControllerBeforeViewController:v6];
    }

    else
    {
      [WeakRetained pageViewController:self viewControllerAfterViewController:v6];
    }
    v9 = ;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_viewControllersForCurlWithViewControllers:(id)a3 direction:(int64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  spineLocation = self->_spineLocation;
  if (spineLocation == 1 || spineLocation == 101)
  {
    if (!a4)
    {
      v9 = [v6 objectForKey:@"UIPageCurlControllerOutgoingRightViewControllerKey"];
      if (self->_doubleSided)
      {
        goto LABEL_18;
      }

LABEL_13:
      v10 = 0;
      if (!v9)
      {
        goto LABEL_21;
      }

LABEL_20:
      [v7 setObject:v9 forKey:@"UIPageCurlControllerFrontViewControllerKey"];
      goto LABEL_21;
    }

    if (self->_doubleSided)
    {
      v10 = [v6 objectForKey:@"UIPageCurlControllerIncomingLeftViewControllerKey"];
    }

    else
    {
      v10 = 0;
    }

    v12 = @"UIPageCurlControllerIncomingRightViewControllerKey";
  }

  else
  {
    if (spineLocation == 2)
    {
      if (a4)
      {
        v9 = [v6 objectForKey:@"UIPageCurlControllerOutgoingLeftViewControllerKey"];
LABEL_11:
        v11 = @"UIPageCurlControllerIncomingRightViewControllerKey";
        goto LABEL_19;
      }

      v9 = [v6 objectForKey:@"UIPageCurlControllerOutgoingRightViewControllerKey"];
LABEL_18:
      v11 = @"UIPageCurlControllerIncomingLeftViewControllerKey";
LABEL_19:
      v10 = [v6 objectForKey:v11];
      if (!v9)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (a4)
    {
      v9 = [v6 objectForKey:@"UIPageCurlControllerOutgoingLeftViewControllerKey"];
      if (self->_doubleSided)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    if (self->_doubleSided)
    {
      v10 = [v6 objectForKey:@"UIPageCurlControllerIncomingRightViewControllerKey"];
    }

    else
    {
      v10 = 0;
    }

    v12 = @"UIPageCurlControllerIncomingLeftViewControllerKey";
  }

  v9 = [v6 objectForKey:v12];
  if (v9)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (v10)
  {
    [v7 setObject:v10 forKey:@"UIPageCurlControllerBackViewControllerKey"];
  }

  return v7;
}

- (void)_populateOutgoingViewControllersInMap:(id)a3
{
  v10 = a3;
  spineLocation = self->_spineLocation;
  if ((spineLocation & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v5 = [(NSArray *)self->_viewControllers objectAtIndex:0];
    if (v5)
    {
      v6 = v5;
      [v10 setObject:v5 forKey:@"UIPageCurlControllerOutgoingLeftViewControllerKey"];
    }

    spineLocation = self->_spineLocation;
  }

  v7 = 0;
  if (spineLocation != 1 && spineLocation != 101)
  {
    if (spineLocation != 2)
    {
      goto LABEL_11;
    }

    v7 = 1;
  }

  v8 = [(NSArray *)self->_viewControllers objectAtIndex:v7];
  if (v8)
  {
    v9 = v8;
    [v10 setObject:v8 forKey:@"UIPageCurlControllerOutgoingRightViewControllerKey"];
  }

LABEL_11:
}

- (void)_populateIncomingViewControllersInMap:(id)a3 withViewControllers:(id)a4 forCurlInDirection:(int64_t)a5
{
  v15 = a3;
  v7 = a4;
  v8 = v7;
  spineLocation = self->_spineLocation;
  if (spineLocation == 101 || spineLocation == 1)
  {
    v11 = [v7 objectAtIndex:0];
    [v15 setObject:v11 forKey:@"UIPageCurlControllerIncomingRightViewControllerKey"];

    if (!self->_doubleSided)
    {
      goto LABEL_11;
    }

    v12 = @"UIPageCurlControllerIncomingLeftViewControllerKey";
    goto LABEL_10;
  }

  v13 = [v7 objectAtIndex:0];
  [v15 setObject:v13 forKey:@"UIPageCurlControllerIncomingLeftViewControllerKey"];

  if (self->_doubleSided)
  {
    v12 = @"UIPageCurlControllerIncomingRightViewControllerKey";
LABEL_10:
    v14 = [v8 objectAtIndex:1];
    [v15 setObject:v14 forKey:v12];
  }

LABEL_11:
}

+ (id)_outgoingViewControllerKeys
{
  v2 = _outgoingViewControllerKeys___outgoingViewControllerKeys;
  if (!_outgoingViewControllerKeys___outgoingViewControllerKeys)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"UIPageCurlControllerOutgoingLeftViewControllerKey", @"UIPageCurlControllerOutgoingRightViewControllerKey", 0}];
    v4 = _outgoingViewControllerKeys___outgoingViewControllerKeys;
    _outgoingViewControllerKeys___outgoingViewControllerKeys = v3;

    v2 = _outgoingViewControllerKeys___outgoingViewControllerKeys;
  }

  return v2;
}

+ (id)_incomingViewControllerKeys
{
  v2 = _incomingViewControllerKeys___incomingViewControllerKeys;
  if (!_incomingViewControllerKeys___incomingViewControllerKeys)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"UIPageCurlControllerIncomingLeftViewControllerKey", @"UIPageCurlControllerIncomingRightViewControllerKey", 0}];
    v4 = _incomingViewControllerKeys___incomingViewControllerKeys;
    _incomingViewControllerKeys___incomingViewControllerKeys = v3;

    v2 = _incomingViewControllerKeys___incomingViewControllerKeys;
  }

  return v2;
}

- (void)_beginDisablingInterfaceAutorotation
{
  if (![(_UIPageCurl *)self->_pageCurl _areAnimationsInFlightOrPending])
  {
    ++self->_disableAutorotationCount;
    v3.receiver = self;
    v3.super_class = UIPageViewController;
    [(UIViewController *)&v3 _beginDisablingInterfaceAutorotation];
  }
}

- (void)_endDisablingInterfaceAutorotation
{
  if (![(_UIPageCurl *)self->_pageCurl _areAnimationsInFlightOrPending])
  {
    for (i = self->_disableAutorotationCount; i; i = self->_disableAutorotationCount)
    {
      self->_disableAutorotationCount = i - 1;
      v4.receiver = self;
      v4.super_class = UIPageViewController;
      [(UIViewController *)&v4 _endDisablingInterfaceAutorotation];
    }
  }
}

- (void)_setViewControllers:(id)a3 withCurlOfType:(int64_t)a4 fromLocation:(CGPoint)a5 direction:(int64_t)a6 animated:(BOOL)a7 notifyDelegate:(BOOL)a8 completion:(id)a9
{
  LODWORD(WeakRetained) = a8;
  v11 = a7;
  y = a5.y;
  x = a5.x;
  v113 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a9;
  if (self->_transitionStyle)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v83 = v82 = v18;
    [v83 handleFailureInMethod:a2 object:self file:@"UIPageViewController.m" lineNumber:1405 description:@"Invalid transition style"];

    v18 = v82;
  }

  if (self->_stashingViewControllersForRotation)
  {
    [(UIPageViewController *)self _setViewControllersStashedForRotation:v18];
  }

  else
  {
    if (!self->_pageCurl)
    {
      v93 = a6;
      v20 = a4;
      v21 = v18;
      v22 = [_UIPageCurl alloc];
      spineLocation = self->_spineLocation;
      v24 = WeakRetained;
      if (spineLocation == 101)
      {
        v25 = 3;
      }

      else
      {
        v26 = 2;
        if (spineLocation == 2)
        {
          v26 = 8;
        }

        if (spineLocation == 3)
        {
          v26 = 32;
        }

        v27 = 4;
        if (spineLocation != 2)
        {
          v27 = 1;
        }

        v28 = spineLocation == 3;
        v29 = 16;
        if (!v28)
        {
          v29 = v27;
        }

        if (self->_navigationOrientation)
        {
          v25 = v26;
        }

        else
        {
          v25 = v29;
        }
      }

      v30 = [(UIViewController *)self view];
      [v30 bounds];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;
      WeakRetained = [(UIViewController *)self view];
      v39 = [(_UIPageCurl *)v22 initWithSpineLocation:v25 andContentRect:WeakRetained inContentView:v32, v34, v36, v38];
      pageCurl = self->_pageCurl;
      self->_pageCurl = v39;

      v18 = v21;
      LODWORD(WeakRetained) = v24;
      a4 = v20;
      a6 = v93;
    }

    if ([(UIPageViewController *)self _isCurrentViewControllerStateValid]&& v11)
    {
      v41 = [(UIPageViewController *)self _validatedViewControllersForTransitionWithViewControllers:v18 animated:1];
      if ([v41 count] && -[_UIPageCurl _isPreviousCurlCompatibleWithCurlOfType:inDirection:](self->_pageCurl, "_isPreviousCurlCompatibleWithCurlOfType:inDirection:", a4, a6))
      {
        v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [(UIPageViewController *)self _populateOutgoingViewControllersInMap:v42];
        if (self->_spineLocation == 2)
        {
          v43 = v41;
        }

        else
        {
          v43 = [v41 subarrayWithRange:{0, 1}];
        }

        v90 = v43;
        if (WeakRetained && (*&self->_delegateFlags & 1) != 0)
        {
          v65 = WeakRetained;
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained pageViewController:self willTransitionToViewControllers:v90];

          LOBYTE(WeakRetained) = v65;
        }

        [(UIPageViewController *)self _populateIncomingViewControllersInMap:v42 withViewControllers:v41 forCurlInDirection:a6];
        v89 = v41;
        if (a4 == 4 || a4 == 1)
        {
          [(UIPageViewController *)self _setViewControllers:v90];
        }

        else
        {
          objc_storeStrong(&self->_incomingAndOutgoingViewControllersForManualTransition, v42);
        }

        v66 = [(UIPageViewController *)self _viewControllersForCurlWithViewControllers:v42 direction:a6];
        v91 = [v66 objectForKey:@"UIPageCurlControllerFrontViewControllerKey"];
        v85 = [v66 objectForKey:@"UIPageCurlControllerBackViewControllerKey"];
        v67 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __117__UIPageViewController__setViewControllers_withCurlOfType_fromLocation_direction_animated_notifyDelegate_completion___block_invoke;
        aBlock[3] = &unk_1E7102F18;
        aBlock[4] = self;
        v111 = v11;
        v84 = v67;
        v110 = v84;
        v68 = _Block_copy(aBlock);
        v69 = [v42 objectForKey:@"UIPageCurlControllerIncomingRightViewControllerKey"];
        if (a6)
        {
          v70 = 0;
        }

        else
        {
          v71 = self->_spineLocation;
          v72 = v71 - 1;
          v73 = v71 == 101;
          v70 = v72 < 2 || v73;
        }

        v86 = WeakRetained;
        v95 = v18;
        v68[2](v68, v69, v70, 0);

        v74 = [v42 objectForKey:@"UIPageCurlControllerIncomingLeftViewControllerKey"];
        v75 = 0;
        if (a6 == 1)
        {
          v75 = (self->_spineLocation & 0xFFFFFFFFFFFFFFFELL) == 2;
        }

        v68[2](v68, v74, v75, 1);

        v76 = [v42 objectForKey:@"UIPageCurlControllerOutgoingLeftViewControllerKey"];
        [(UIPageViewController *)self _child:v76 beginAppearanceTransition:0 animated:1];

        v77 = [v42 objectForKey:@"UIPageCurlControllerOutgoingRightViewControllerKey"];
        [(UIPageViewController *)self _child:v77 beginAppearanceTransition:0 animated:1];

        [(UIPageViewController *)self _beginDisablingInterfaceAutorotation];
        v96 = self->_pageCurl;
        v78 = [v91 view];
        v79 = [v85 view];
        v102[0] = MEMORY[0x1E69E9820];
        v102[1] = 3221225472;
        v102[2] = __117__UIPageViewController__setViewControllers_withCurlOfType_fromLocation_direction_animated_notifyDelegate_completion___block_invoke_2;
        v102[3] = &unk_1E7102FE0;
        v102[4] = self;
        v103 = v42;
        v104 = v84;
        v106 = a6;
        v107 = a4;
        v105 = v19;
        v108 = v86;
        v101[0] = MEMORY[0x1E69E9820];
        v101[1] = 3221225472;
        v101[2] = __117__UIPageViewController__setViewControllers_withCurlOfType_fromLocation_direction_animated_notifyDelegate_completion___block_invoke_7;
        v101[3] = &unk_1E70F3590;
        v101[4] = self;
        v80 = v84;
        v81 = v42;
        [(_UIPageCurl *)v96 _enqueueCurlOfType:a4 fromLocation:a6 inDirection:v78 withView:v79 revealingView:v102 completion:v101 finally:x, y];

        v18 = v95;
        v41 = v89;
      }
    }

    else
    {
      v44 = [(UIGestureRecognizer *)self->_tapGestureRecognizer isEnabled];
      v45 = [(UIGestureRecognizer *)self->_panGestureRecognizer isEnabled];
      [(UIGestureRecognizer *)self->_tapGestureRecognizer setEnabled:0];
      [(UIGestureRecognizer *)self->_panGestureRecognizer setEnabled:0];
      [(_UIPageCurl *)self->_pageCurl _cancelAllActiveTransitionsAndAbandonCallbacks:0];
      if (-[NSArray count](self->_viewControllers, "count") || [v18 count])
      {
        v46 = [(UIPageViewController *)self _validatedViewControllersForTransitionWithViewControllers:v18 animated:0];
        if (v46)
        {
          v47 = v46;
          v87 = v45;
          v88 = v44;
          v92 = v19;
          v94 = v18;
          v48 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v49 = self->_viewControllers;
          v50 = [(NSArray *)v49 countByEnumeratingWithState:&v97 objects:v112 count:16];
          if (v50)
          {
            v51 = v50;
            v52 = *v98;
            do
            {
              for (i = 0; i != v51; ++i)
              {
                if (*v98 != v52)
                {
                  objc_enumerationMutation(v49);
                }

                v54 = *(*(&v97 + 1) + 8 * i);
                if ([v47 containsObject:v54])
                {
                  [v48 addObject:v54];
                }

                else
                {
                  [v54 willMoveToParentViewController:0];
                  if ([v54 isViewLoaded])
                  {
                    [(UIPageViewController *)self _child:v54 beginAppearanceTransition:0 animated:0];
                    v55 = [v54 view];
                    [v55 removeFromSuperview];

                    [(UIPageViewController *)self _childEndAppearanceTransition:v54];
                  }

                  [v54 removeFromParentViewController];
                }
              }

              v51 = [(NSArray *)v49 countByEnumeratingWithState:&v97 objects:v112 count:16];
            }

            while (v51);
          }

          [(UIPageViewController *)self _setViewControllers:v47];
          v19 = v92;
          if ([(NSArray *)self->_viewControllers count])
          {
            v56 = 0;
            do
            {
              v57 = [(NSArray *)self->_viewControllers objectAtIndex:v56];
              if (([v48 containsObject:v57] & 1) == 0)
              {
                [(UIViewController *)self addChildViewController:v57];
              }

              v58 = [v57 view];
              v59 = [v58 superview];
              v60 = [(UIViewController *)self view];

              if (v59 != v60)
              {
                [(UIPageViewController *)self _child:v57 beginAppearanceTransition:1 animated:0];
                v61 = [(UIViewController *)self view];
                v62 = [v57 view];
                [v61 addSubview:v62];

                [(UIPageViewController *)self _childEndAppearanceTransition:v57];
              }

              if (([v48 containsObject:v57] & 1) == 0)
              {
                [v57 didMoveToParentViewController:self];
              }

              v63 = [v57 view];
              if (v56)
              {
                v64 = 0;
              }

              else
              {
                v64 = (self->_spineLocation & 0xFFFFFFFFFFFFFFFELL) == 2;
              }

              [(_UIPageCurl *)self->_pageCurl _pageViewFrame:v64];
              [v63 setFrame:?];

              ++v56;
            }

            while (v56 < [(NSArray *)self->_viewControllers count]);
          }

          v18 = v94;
          v44 = v88;
          v45 = v87;
        }
      }

      if (v19)
      {
        (*(v19 + 2))(v19, 1);
      }

      [(UIGestureRecognizer *)self->_tapGestureRecognizer setEnabled:v44];
      [(UIGestureRecognizer *)self->_panGestureRecognizer setEnabled:v45];
    }
  }

  [(UIPageViewController *)self _invalidateViewControllersStashedForCurlFromDataSource];
}

void __117__UIPageViewController__setViewControllers_withCurlOfType_fromLocation_direction_animated_notifyDelegate_completion___block_invoke(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v11 = v7;
    v8 = [v7 view];
    [*(*(a1 + 32) + 1048) _pageViewFrame:a4];
    [v8 setFrame:?];

    [*(a1 + 32) _child:v11 beginAppearanceTransition:1 animated:*(a1 + 48)];
    v7 = v11;
    if (a3)
    {
      [*(a1 + 32) addChildViewController:v11];
      v9 = [*(a1 + 32) view];
      v10 = [v11 view];
      [v9 insertSubview:v10 atIndex:0];

      [v11 didMoveToParentViewController:*(a1 + 32)];
      [*(a1 + 40) addObject:v11];
      v7 = v11;
    }
  }
}

void __117__UIPageViewController__setViewControllers_withCurlOfType_fromLocation_direction_animated_notifyDelegate_completion___block_invoke_2(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v6 = [objc_opt_class() _outgoingViewControllerKeys];
  v7 = [v6 countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v61;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v61 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(a1 + 40) objectForKey:*(*(&v60 + 1) + 8 * i)];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v8);
  }

  if (a3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __117__UIPageViewController__setViewControllers_withCurlOfType_fromLocation_direction_animated_notifyDelegate_completion___block_invoke_3;
    aBlock[3] = &unk_1E7102F40;
    aBlock[4] = *(a1 + 32);
    v12 = _Block_copy(aBlock);
    v13 = [*(a1 + 40) objectForKey:@"UIPageCurlControllerOutgoingLeftViewControllerKey"];
    v12[2](v12, v13);

    v14 = [*(a1 + 40) objectForKey:@"UIPageCurlControllerOutgoingRightViewControllerKey"];
    v12[2](v12, v14);

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __117__UIPageViewController__setViewControllers_withCurlOfType_fromLocation_direction_animated_notifyDelegate_completion___block_invoke_4;
    v56[3] = &unk_1E7102F68;
    v15 = *(a1 + 48);
    v16 = *(a1 + 32);
    v57 = v15;
    v58 = v16;
    v17 = _Block_copy(v56);
    v18 = [*(a1 + 40) objectForKey:@"UIPageCurlControllerIncomingLeftViewControllerKey"];
    if (*(a1 + 64))
    {
      v19 = 0;
    }

    else
    {
      v19 = (*(*(a1 + 32) + 1024) & 0xFFFFFFFFFFFFFFFELL) == 2;
    }

    v17[2](v17, v18, v19, 1);

    v37 = [*(a1 + 40) objectForKey:@"UIPageCurlControllerIncomingRightViewControllerKey"];
    if (*(a1 + 64) != 1 || (v38 = *(*(a1 + 32) + 1024), v39 = 1, (v38 - 1) >= 2) && v38 != 101)
    {
      v39 = 0;
    }

    v17[2](v17, v37, v39, 0);
  }

  else
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __117__UIPageViewController__setViewControllers_withCurlOfType_fromLocation_direction_animated_notifyDelegate_completion___block_invoke_5;
    v53[3] = &unk_1E7102F90;
    v20 = *(a1 + 48);
    v21 = *(a1 + 32);
    v54 = v20;
    v55 = v21;
    v22 = _Block_copy(v53);
    v23 = [*(a1 + 40) objectForKey:@"UIPageCurlControllerIncomingLeftViewControllerKey"];
    v22[2](v22, v23);

    v24 = [*(a1 + 40) objectForKey:@"UIPageCurlControllerIncomingRightViewControllerKey"];
    v44 = v22;
    v22[2](v22, v24);

    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __117__UIPageViewController__setViewControllers_withCurlOfType_fromLocation_direction_animated_notifyDelegate_completion___block_invoke_6;
    v52[3] = &unk_1E7102FB8;
    v52[4] = *(a1 + 32);
    v25 = _Block_copy(v52);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v45 = v5;
    obj = v5;
    v26 = [obj countByEnumeratingWithState:&v48 objects:v64 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v49;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v49 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v48 + 1) + 8 * j);
          v31 = [*(*(a1 + 32) + 1040) objectAtIndex:0];
          v32 = v30 == v31 || *(*(a1 + 32) + 1024) == 2;

          v33 = [*(*(a1 + 32) + 1040) objectAtIndex:0];
          if (v30 == v33)
          {
            v35 = *(*(a1 + 32) + 1024);
            v34 = v35 != 1 && v35 != 101;
          }

          else
          {
            v34 = 0;
          }

          (v25)[2](v25, v30, v32, v34);
        }

        v27 = [obj countByEnumeratingWithState:&v48 objects:v64 count:16];
      }

      while (v27);
    }

    a3 = 0;
    v5 = v45;
  }

  v40 = *(a1 + 72);
  if (v40 == 4 || v40 == 1)
  {
    v41 = *(a1 + 56);
    if (v41)
    {
      (*(v41 + 16))(v41, a2);
    }
  }

  if (*(a1 + 80) == 1)
  {
    v42 = *(a1 + 32);
    if ((*(v42 + 1264) & 2) != 0)
    {
      WeakRetained = objc_loadWeakRetained((v42 + 992));
      [WeakRetained pageViewController:*(a1 + 32) didFinishAnimating:a2 previousViewControllers:v5 transitionCompleted:a3];
    }
  }
}

void __117__UIPageViewController__setViewControllers_withCurlOfType_fromLocation_direction_animated_notifyDelegate_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 willMoveToParentViewController:0];
  v3 = [v4 view];
  [v3 removeFromSuperview];

  [*(a1 + 32) _childEndAppearanceTransition:v4];
  [v4 removeFromParentViewController];
}

void __117__UIPageViewController__setViewControllers_withCurlOfType_fromLocation_direction_animated_notifyDelegate_completion___block_invoke_4(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (v7)
  {
    v13 = v7;
    if (a3)
    {
      if (([*(a1 + 32) containsObject:v7] & 1) == 0)
      {
        [*(a1 + 40) addChildViewController:v13];
      }

      v9 = [v13 view];
      [*(*(a1 + 40) + 1048) _pageViewFrame:a4];
      [v9 setFrame:?];

      v10 = [*(a1 + 40) view];
      v11 = [v13 view];
      [v10 insertSubview:v11 atIndex:0];

      v12 = [*(a1 + 32) containsObject:v13];
      v8 = v13;
      if ((v12 & 1) == 0)
      {
        [v13 didMoveToParentViewController:*(a1 + 40)];
        v8 = v13;
      }
    }

    [*(a1 + 40) _childEndAppearanceTransition:v8];
    v8 = v13;
  }
}

void __117__UIPageViewController__setViewControllers_withCurlOfType_fromLocation_direction_animated_notifyDelegate_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    if ([*(a1 + 32) containsObject:v3])
    {
      [v5 willMoveToParentViewController:0];
      v4 = [v5 view];
      [v4 removeFromSuperview];

      [v5 removeFromParentViewController];
    }

    [*(a1 + 40) _childEndAppearanceTransition:v5];
    v3 = v5;
  }
}

void __117__UIPageViewController__setViewControllers_withCurlOfType_fromLocation_direction_animated_notifyDelegate_completion___block_invoke_6(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v14 = v7;
    if (a3)
    {
      v8 = [v7 view];
      v9 = [v8 superview];
      v10 = [*(a1 + 32) view];

      if (v9 != v10)
      {
        v11 = [v14 view];
        [*(*(a1 + 32) + 1048) _pageViewFrame:a4];
        [v11 setFrame:?];

        v12 = [*(a1 + 32) view];
        v13 = [v14 view];
        [v12 addSubview:v13];
      }
    }

    [*(a1 + 32) _childEndAppearanceTransition:v14];
    v7 = v14;
  }
}

- (void)_cacheViewControllerForScroll:(id)a3
{
  v4 = a3;
  if (![(NSHashTable *)self->_cachedViewControllersForScroll containsObject:?])
  {
    [(UIViewController *)self addChildViewController:v4];
    [v4 didMoveToParentViewController:self];
    [(NSHashTable *)self->_cachedViewControllersForScroll addObject:v4];
  }
}

- (void)_setViewControllers:(id)a3 withScrollInDirection:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = [(UIPageViewController *)self _validatedViewControllersForTransitionWithViewControllers:a3 animated:v6];
  v12 = [(NSArray *)self->_viewControllers _ui_onlyObject];
  v13 = [v11 _ui_onlyObject];
  if (v13)
  {
    v14 = [(UIPageViewController *)self _scrollView];
    v15 = [v14 visibleView];
    if (!v15)
    {

      v17 = a4;
      goto LABEL_8;
    }

    v16 = v15;
    if (v13 == v12 && v6)
    {

LABEL_11:
      goto LABEL_12;
    }

    [(UIPageViewController *)self _scrollView];
    v18 = v23 = v10;
    v22 = [v18 isPreviousScrollCompatibleWithScrollInDirection:a4];

    v10 = v23;
    v17 = a4;

    if (v22)
    {
LABEL_8:
      if (v6)
      {
        v6 = [(NSArray *)self->_viewControllers count]!= 0;
      }

      [v12 willMoveToParentViewController:0];
      [(UIPageViewController *)self _cacheViewControllerForScroll:v13];
      v19 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v13, 0}];
      viewControllers = self->_viewControllers;
      self->_viewControllers = v19;

      v14 = [(UIPageViewController *)self _scrollView];
      v21 = [v13 view];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __86__UIPageViewController__setViewControllers_withScrollInDirection_animated_completion___block_invoke;
      v24[3] = &unk_1E7103008;
      v24[4] = self;
      v25 = v10;
      [v14 setView:v21 direction:v17 animated:v6 completion:v24];

      goto LABEL_11;
    }
  }

LABEL_12:
}

void __86__UIPageViewController__setViewControllers_withScrollInDirection_animated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) _contentView];
  [v3 setNeedsLayout];
}

- (void)setViewControllers:(NSArray *)viewControllers direction:(UIPageViewControllerNavigationDirection)direction animated:(BOOL)animated completion:(void *)completion
{
  v7 = animated;
  v10 = viewControllers;
  v11 = completion;
  v12 = v11;
  transitionStyle = self->_transitionStyle;
  if (transitionStyle == 1)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__UIPageViewController_setViewControllers_direction_animated_completion___block_invoke;
    v14[3] = &unk_1E7103030;
    v15 = v11;
    [(UIPageViewController *)self _setViewControllers:v10 withScrollInDirection:direction animated:v7 completion:v14];
    [(UIPageViewController *)self _updatePageControlViaDataSourceIfNecessary];
  }

  else if (!transitionStyle && (!self->_interfaceRotating || self->_stashingViewControllersForRotation))
  {
    [(UIPageViewController *)self _setViewControllers:v10 withCurlOfType:1 fromLocation:direction direction:v7 animated:0 notifyDelegate:v11 completion:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  }
}

uint64_t __73__UIPageViewController_setViewControllers_direction_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_deepestActionResponder
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__UIPageViewController__deepestActionResponder__block_invoke;
  v4[3] = &unk_1E71005E0;
  v4[4] = self;
  v2 = [(UIViewController *)self _deepestPresentedActionResponderOrBlock:v4];

  return v2;
}

id __47__UIPageViewController__deepestActionResponder__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) viewControllers];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 _hasDeepestActionResponder])
        {
          if (v5)
          {

            goto LABEL_14;
          }

          v5 = v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

    if (v5)
    {
      v9 = [v5 _deepestActionResponder];

      goto LABEL_16;
    }
  }

  else
  {
LABEL_14:
  }

  v11.receiver = *(a1 + 32);
  v11.super_class = UIPageViewController;
  v9 = objc_msgSendSuper2(&v11, sel__deepestActionResponder);
LABEL_16:

  return v9;
}

- (id)_incomingViewControllersForGestureDrivenCurlInDirection:(int64_t)a3
{
  cachedViewControllersForCurl = self->_cachedViewControllersForCurl;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)cachedViewControllersForCurl objectForKey:v6];

  if (!v7)
  {
    [(NSMutableDictionary *)self->_cachedViewControllersForCurl removeAllObjects];
    if (a3)
    {
      v8 = [(NSArray *)self->_viewControllers objectAtIndex:0];
      v9 = [(UIPageViewController *)self _viewControllerBeforeViewController:v8];

      if (v9)
      {
        v10 = MEMORY[0x1E695DEC8];
        if (self->_doubleSided)
        {
          v11 = [(UIPageViewController *)self _viewControllerBeforeViewController:v9];
LABEL_12:
          v15 = v11;
          [v10 arrayWithObjects:{v11, v9, 0}];
          goto LABEL_13;
        }

        goto LABEL_15;
      }
    }

    else
    {
      viewControllers = self->_viewControllers;
      if (self->_spineLocation == 2)
      {
        v13 = [(NSArray *)viewControllers objectAtIndex:1];
        v9 = [(UIPageViewController *)self _viewControllerAfterViewController:v13];

        if (v9)
        {
          v14 = MEMORY[0x1E695DEC8];
          v15 = [(UIPageViewController *)self _viewControllerAfterViewController:v9];
          [v14 arrayWithObjects:{v9, v15, 0}];
          v7 = LABEL_13:;

LABEL_16:
          v17 = self->_cachedViewControllersForCurl;
          v18 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
          [(NSMutableDictionary *)v17 setObject:v7 forKey:v18];

          goto LABEL_17;
        }
      }

      else
      {
        v16 = [(NSArray *)viewControllers objectAtIndex:0];
        v9 = [(UIPageViewController *)self _viewControllerAfterViewController:v16];

        if (v9)
        {
          v10 = MEMORY[0x1E695DEC8];
          if (self->_doubleSided)
          {
            v11 = [(UIPageViewController *)self _viewControllerAfterViewController:v9];
            goto LABEL_12;
          }

LABEL_15:
          v7 = [v10 arrayWithObjects:{v9, 0}];
          goto LABEL_16;
        }
      }
    }

    v7 = 0;
LABEL_17:
  }

  return v7;
}

- (CGRect)_tapRegions
{
  result = self->_tapRegions;
  if (!result)
  {
    self->_tapRegions = malloc_type_malloc(0x40uLL, 0x1000040E0EAB150uLL);
    [(UIPageViewController *)self _effectiveTapRegionInsets];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(UIPageViewController *)self _effectiveTapRegionBreadths];
    v13 = v12;
    v15 = v14;
    navigationOrientation = self->_navigationOrientation;
    tapRegions = self->_tapRegions;
    v18 = [(UIGestureRecognizer *)self->_tapGestureRecognizer view];
    [v18 bounds];
    MinX = CGRectGetMinX(v36);
    [(UIGestureRecognizer *)self->_tapGestureRecognizer view];
    if (navigationOrientation)
      v20 = {;
      [v20 bounds];
      MinY = CGRectGetMinY(v37);
      v22 = [(UIGestureRecognizer *)self->_tapGestureRecognizer view];
      [v22 bounds];
      Width = CGRectGetWidth(v38);
      tapRegions->origin.x = v7 + MinX;
      tapRegions->origin.y = MinY;
      tapRegions->size.width = Width - v7 - v11;
      tapRegions->size.height = v15;

      v24 = self->_tapRegions;
      v25 = [(UIGestureRecognizer *)self->_tapGestureRecognizer view];
      [v25 bounds];
      v26 = v7 + CGRectGetMinX(v39);
      v27 = [(UIGestureRecognizer *)self->_tapGestureRecognizer view];
      [v27 bounds];
      v28 = CGRectGetMaxY(v40) - v15;
      v29 = [(UIGestureRecognizer *)self->_tapGestureRecognizer view];
      [v29 bounds];
      v30 = CGRectGetWidth(v41);
      v24[1].origin.x = v26;
      v24[1].origin.y = v28;
      v24[1].size.width = v30 - v7 - v11;
      v24[1].size.height = v15;
    }

    else
      v31 = {;
      [v31 bounds];
      Height = CGRectGetHeight(v42);
      tapRegions->origin.x = MinX;
      tapRegions->origin.y = v5;
      tapRegions->size.width = v13;
      tapRegions->size.height = Height - v5 - v9;

      v33 = self->_tapRegions;
      v25 = [(UIGestureRecognizer *)self->_tapGestureRecognizer view];
      [v25 bounds];
      v34 = CGRectGetMaxX(v43) - v13;
      v27 = [(UIGestureRecognizer *)self->_tapGestureRecognizer view];
      [v27 bounds];
      v35 = CGRectGetHeight(v44);
      v33[1].origin.x = v34;
      v33[1].origin.y = v5;
      v33[1].size.width = v13;
      v33[1].size.height = v35 - v5 - v9;
    }

    return self->_tapRegions;
  }

  return result;
}

- (BOOL)_shouldNavigateInDirection:(int64_t *)a3 inResponseToTapGestureRecognizer:(id)a4
{
  v6 = a4;
  if (self->_transitionStyle)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v8 = [(UIPageViewController *)self _tapRegions];
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = [v6 view];
      [v6 locationInView:v11];
      v16.x = v12;
      v16.y = v13;
      v7 = CGRectContainsPoint(v8[v10], v16);

      if (a3)
      {
        if (v7)
        {
          break;
        }
      }

      v14 = v9 | v7;
      v9 = 1;
      v10 = 1;
      if (v14)
      {
        goto LABEL_9;
      }
    }

    *a3 = v10 ^ 1;
    LOBYTE(v7) = 1;
  }

LABEL_9:

  return v7;
}

- (BOOL)_shouldFlipInRightToLeft
{
  if ([(UIPageViewController *)self navigationOrientation]== UIPageViewControllerNavigationOrientationVertical || [(UIPageViewController *)self transitionStyle]== UIPageViewControllerTransitionStylePageCurl)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v3 = [(UIViewController *)self view];
    v4 = (v3[13] >> 22) & 1;
  }

  return v4;
}

- (BOOL)_shouldNavigateInDirection:(int64_t *)a3 inResponseToVelocity:(double *)a4 ofGestureRecognizedByPanGestureRecognizer:(id)a5
{
  v8 = a5;
  v9 = [(UIViewController *)self view];
  [v8 velocityInView:v9];
  v11 = v10;
  v13 = v12;

  navigationOrientation = self->_navigationOrientation;
  if (navigationOrientation == 1)
  {
    v17 = -v13;
    if (v13 >= 0.0)
    {
      v17 = v13;
    }

    if (v17 > 300.0)
    {
      v11 = v13;
      if (!a4)
      {
LABEL_8:
        if ([(UIPageViewController *)self _shouldFlipInRightToLeft])
        {
          if (a3)
          {
            v16 = v11 < 0.0;
LABEL_20:
            *a3 = v16;
          }
        }

        else if (a3)
        {
          v16 = v11 >= 0.0;
          goto LABEL_20;
        }

        return 1;
      }

LABEL_7:
      *a4 = v11;
      goto LABEL_8;
    }
  }

  else if (!navigationOrientation)
  {
    v15 = -v11;
    if (v11 >= 0.0)
    {
      v15 = v11;
    }

    if (v15 > 300.0)
    {
      if (!a4)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  result = 0;
  if (a4)
  {
    *a4 = 0.0;
  }

  return result;
}

- (BOOL)_shouldBeginNavigationInDirection:(int64_t *)a3 inResponseToPanGestureRecognizer:(id)a4
{
  v6 = a4;
  if (!self->_transitionStyle)
  {
    v22 = 0;
    if ([(UIPageViewController *)self _shouldNavigateInDirection:&v22 inResponseToVelocity:0 ofGestureRecognizedByPanGestureRecognizer:v6])
    {
      if (!a3)
      {
LABEL_7:
        v7 = 1;
        goto LABEL_8;
      }

      v8 = v22;
LABEL_6:
      *a3 = v8;
      goto LABEL_7;
    }

    v10 = [(UIViewController *)self view];
    v11 = [v10 superview];
    [v6 translationInView:v11];
    v13 = v12;
    v15 = v14;

    if (self->_navigationOrientation)
    {
      v16 = -v15;
      if (v15 >= 0.0)
      {
        v16 = v15;
      }

      v17 = -v13;
      if (v13 >= 0.0)
      {
        v17 = v13;
      }

      if (v16 <= v17)
      {
        goto LABEL_2;
      }

      if ([(UIPageViewController *)self _shouldFlipInRightToLeft])
      {
        if (!a3)
        {
          goto LABEL_7;
        }

        v18 = v15 < 0.0;
        goto LABEL_26;
      }

      if (!a3)
      {
        goto LABEL_7;
      }

      v21 = v15 < 0.0;
    }

    else
    {
      v19 = -v13;
      if (v13 >= 0.0)
      {
        v19 = v13;
      }

      v20 = -v15;
      if (v15 >= 0.0)
      {
        v20 = v15;
      }

      if (v19 <= v20)
      {
        goto LABEL_2;
      }

      if ([(UIPageViewController *)self _shouldFlipInRightToLeft])
      {
        if (!a3)
        {
          goto LABEL_7;
        }

        v18 = v13 < 0.0;
LABEL_26:
        v8 = v18;
        goto LABEL_6;
      }

      if (!a3)
      {
        goto LABEL_7;
      }

      v21 = v13 < 0.0;
    }

    v8 = !v21;
    goto LABEL_6;
  }

LABEL_2:
  v7 = 0;
LABEL_8:

  return v7;
}

- (BOOL)_gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = v4;
  v14 = -1;
  panGestureRecognizer = self->_panGestureRecognizer;
  if (panGestureRecognizer)
  {
    v7 = panGestureRecognizer == v4;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    tapGestureRecognizer = self->_tapGestureRecognizer;
    if (!tapGestureRecognizer || tapGestureRecognizer != v4)
    {
      goto LABEL_16;
    }
  }

  if (![(UIPageViewController *)self _canHandleGestures]|| ![(UIPageViewController *)self _isCurrentViewControllerStateValid])
  {
    goto LABEL_17;
  }

  if (self->_tapGestureRecognizer != v5)
  {
    [(UIPageViewController *)self _shouldBeginNavigationInDirection:&v14 inResponseToPanGestureRecognizer:self->_panGestureRecognizer];
    goto LABEL_15;
  }

  if (![(UIPageViewController *)self _shouldNavigateInDirection:&v14 inResponseToTapGestureRecognizer:?])
  {
LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

LABEL_15:
  v10 = [(UIPageViewController *)self _incomingViewControllersForGestureDrivenCurlInDirection:v14];
  v11 = [v10 count];

  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_16:
  v12 = [(UIGestureRecognizer *)v5 state]== UIGestureRecognizerStatePossible;
LABEL_18:

  return v12;
}

- (int64_t)_navigationEndDirectionInResponseToPanGestureRecognizer:(id)a3 suggestedVelocity:(double *)a4
{
  v6 = a3;
  if (self->_transitionStyle)
  {
    v7 = 1;
  }

  else
  {
    v26 = 0;
    if ([(UIPageViewController *)self _shouldNavigateInDirection:&v26 inResponseToVelocity:a4 ofGestureRecognizedByPanGestureRecognizer:v6])
    {
      v7 = v26;
    }

    else
    {
      if (a4)
      {
        *a4 = 0.0;
      }

      v8 = [(UIViewController *)self view];
      [v6 locationInView:v8];
      v10 = v9;
      v12 = v11;

      navigationOrientation = self->_navigationOrientation;
      v14 = [(UIPageViewController *)self _shouldFlipInRightToLeft];
      v15 = [(UIViewController *)self view];
      [v15 bounds];
      if (navigationOrientation)
      {
        MidY = CGRectGetMidY(*&v16);

        v21 = v12 <= MidY;
      }

      else
      {
        MidX = CGRectGetMidX(*&v16);

        v21 = v10 <= MidX;
      }

      v23 = v21;
      v24 = !v21;
      if (!v14)
      {
        v23 = v24;
      }

      v7 = v23;
    }
  }

  return v7;
}

- (BOOL)_shouldCompleteManualCurlWithSuggestedVelocity:(double *)a3
{
  v5 = [(_UIPageCurl *)self->_pageCurl _wrappedManualPageCurlDirection];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];
    v8 = v7 == [(UIPageViewController *)self _navigationEndDirectionInResponseToPanGestureRecognizer:self->_panGestureRecognizer suggestedVelocity:a3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_handlePanGesture:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  panGestureRecognizer = self->_panGestureRecognizer;
  if (panGestureRecognizer)
  {
    v6 = panGestureRecognizer == v4;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

  if ([(UIGestureRecognizer *)panGestureRecognizer state]== UIGestureRecognizerStateBegan)
  {
    v56 = 0;
    if ([(_UIPageCurl *)self->_pageCurl _isManualPageCurlInProgressAndUncommitted]|| ![(UIPageViewController *)self _shouldBeginNavigationInDirection:&v56 inResponseToPanGestureRecognizer:self->_panGestureRecognizer])
    {
      goto LABEL_5;
    }

LABEL_9:
    v7 = [(UIPageViewController *)self _incomingViewControllersForGestureDrivenCurlInDirection:v56];
    v8 = self->_panGestureRecognizer;
    v9 = [(UIViewController *)self view];
    [(UIPanGestureRecognizer *)v8 locationInView:v9];
    [(UIPageViewController *)self _setViewControllers:v7 withCurlOfType:0 fromLocation:v56 direction:1 animated:1 notifyDelegate:0 completion:?];

    goto LABEL_5;
  }

  if ([(UIGestureRecognizer *)self->_panGestureRecognizer state]!= UIGestureRecognizerStateChanged)
  {
    if ([(UIGestureRecognizer *)self->_panGestureRecognizer state]!= UIGestureRecognizerStateEnded && [(UIGestureRecognizer *)self->_panGestureRecognizer state]!= UIGestureRecognizerStateCancelled)
    {
      goto LABEL_5;
    }

    v56 = 0;
    if (![(UIGestureRecognizer *)v4 isEnabled]|| ![(UIPageViewController *)self _shouldCompleteManualCurlWithSuggestedVelocity:&v56])
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v25 = [objc_opt_class() _incomingViewControllerKeys];
      v26 = [v25 countByEnumeratingWithState:&v48 objects:v58 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v49;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v49 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = [(NSDictionary *)self->_incomingAndOutgoingViewControllersForManualTransition objectForKey:*(*(&v48 + 1) + 8 * i)];
            [(UIPageViewController *)self _child:v30 beginAppearanceTransition:0 animated:1];
          }

          v27 = [v25 countByEnumeratingWithState:&v48 objects:v58 count:16];
        }

        while (v27);
      }

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v31 = [objc_opt_class() _outgoingViewControllerKeys];
      v32 = [v31 countByEnumeratingWithState:&v44 objects:v57 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v45;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v45 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = [(NSDictionary *)self->_incomingAndOutgoingViewControllersForManualTransition objectForKey:*(*(&v44 + 1) + 8 * j)];
            [(UIPageViewController *)self _child:v36 beginAppearanceTransition:1 animated:1];
          }

          v33 = [v31 countByEnumeratingWithState:&v44 objects:v57 count:16];
        }

        while (v33);
      }

      pageCurl = self->_pageCurl;
      v38 = self->_panGestureRecognizer;
      v21 = [(UIViewController *)self view];
      [(UIPanGestureRecognizer *)v38 locationInView:v21];
      [_UIPageCurl _abortManualCurlAtLocation:"_abortManualCurlAtLocation:withSuggestedVelocity:" withSuggestedVelocity:?];
LABEL_49:

      incomingAndOutgoingViewControllersForManualTransition = self->_incomingAndOutgoingViewControllersForManualTransition;
      self->_incomingAndOutgoingViewControllersForManualTransition = 0;

      goto LABEL_5;
    }

    v42 = v4;
    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v13 = [objc_opt_class() _incomingViewControllerKeys];
    v14 = [v13 countByEnumeratingWithState:&v52 objects:v59 count:16];
    if (!v14)
    {
      goto LABEL_33;
    }

    v15 = v14;
    v16 = *v53;
LABEL_19:
    v17 = 0;
    while (1)
    {
      if (*v53 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v52 + 1) + 8 * v17);
      v19 = [(NSDictionary *)self->_incomingAndOutgoingViewControllersForManualTransition objectForKey:v18];
      if (!v19)
      {
        goto LABEL_31;
      }

      spineLocation = self->_spineLocation;
      if (spineLocation != 101)
      {
        if (spineLocation == 2)
        {
          goto LABEL_30;
        }

        if (spineLocation != 1)
        {
          goto LABEL_28;
        }
      }

      if (([v18 isEqual:@"UIPageCurlControllerIncomingRightViewControllerKey"] & 1) == 0)
      {
        spineLocation = self->_spineLocation;
LABEL_28:
        if (spineLocation != 3 || ![v18 isEqual:@"UIPageCurlControllerIncomingLeftViewControllerKey"])
        {
          goto LABEL_31;
        }
      }

LABEL_30:
      [v43 addObject:v19];
LABEL_31:

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v52 objects:v59 count:16];
        if (!v15)
        {
LABEL_33:

          v21 = v43;
          [(UIPageViewController *)self _setViewControllers:v43];
          v22 = self->_pageCurl;
          v23 = self->_panGestureRecognizer;
          v24 = [(UIViewController *)self view];
          [(UIPanGestureRecognizer *)v23 locationInView:v24];
          [_UIPageCurl _completeManualCurlAtLocation:v22 withSuggestedVelocity:"_completeManualCurlAtLocation:withSuggestedVelocity:"];

          v4 = v42;
          goto LABEL_49;
        }

        goto LABEL_19;
      }
    }
  }

  if ([(_UIPageCurl *)self->_pageCurl _isManualPageCurlInProgressAndUncommitted])
  {
    v10 = self->_pageCurl;
    v11 = self->_panGestureRecognizer;
    v12 = [(UIViewController *)self view];
    [(UIPanGestureRecognizer *)v11 locationInView:v12];
    [(_UIPageCurl *)v10 _updateManualCurlToLocation:?];

    goto LABEL_5;
  }

  v56 = 0;
  if ([(UIPageViewController *)self _shouldBeginNavigationInDirection:&v56 inResponseToPanGestureRecognizer:self->_panGestureRecognizer])
  {
    if ([(_UIPageCurl *)self->_pageCurl _isPreviousCurlCompatibleWithCurlOfType:0 inDirection:v56])
    {
      v40 = [(UIPageViewController *)self _incomingViewControllersForGestureDrivenCurlInDirection:v56];
      v41 = [v40 count];

      if (v41)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_5:
}

- (void)_handleTapGesture:(id)a3
{
  tapGestureRecognizer = self->_tapGestureRecognizer;
  if (tapGestureRecognizer)
  {
    v5 = tapGestureRecognizer == a3;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && [(UIGestureRecognizer *)tapGestureRecognizer state]== UIGestureRecognizerStateEnded)
  {
    v7 = 0;
    if ([(UIPageViewController *)self _shouldNavigateInDirection:&v7 inResponseToTapGestureRecognizer:self->_tapGestureRecognizer])
    {
      v6 = [(UIPageViewController *)self _incomingViewControllersForGestureDrivenCurlInDirection:v7];
      [(UIPageViewController *)self _setViewControllers:v6 withCurlOfType:1 fromLocation:v7 direction:1 animated:1 notifyDelegate:0 completion:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    }
  }
}

- (void)_handlePagingInDirection:(int64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(UIPageViewController *)self _scrollView];
  if ([v9 isTracking])
  {
LABEL_8:

    goto LABEL_9;
  }

  v10 = [(UIPageViewController *)self _scrollView];
  v11 = [v10 isDecelerating];

  if ((v11 & 1) == 0)
  {
    v9 = [(NSArray *)self->_viewControllers _ui_onlyObject];
    v12 = [(UIPageViewController *)self _viewControllerBefore:a3 == 1 viewController:v9];
    if (v12)
    {
      v13 = [MEMORY[0x1E695DEC8] arrayWithObject:v12];
      if (*&self->_delegateFlags)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained pageViewController:self willTransitionToViewControllers:v13];
      }

      objc_initWeak(&location, self);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __69__UIPageViewController__handlePagingInDirection_animated_completion___block_invoke;
      v15[3] = &unk_1E7103058;
      objc_copyWeak(&v18, &location);
      v16 = v9;
      v17 = v8;
      [(UIPageViewController *)self _setViewControllers:v13 withScrollInDirection:a3 animated:v5 completion:v15];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    goto LABEL_8;
  }

LABEL_9:
}

void __69__UIPageViewController__handlePagingInDirection_animated_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  v11 = WeakRetained;
  if (WeakRetained && (WeakRetained[158] & 2) != 0)
  {
    v8 = objc_loadWeakRetained(WeakRetained + 124);
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*(a1 + 32), 0}];
    [v8 pageViewController:v11 didFinishAnimating:a2 previousViewControllers:v9 transitionCompleted:a3];

    v7 = v11;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, a3);
    v7 = v11;
  }
}

- (void)_updatePageControlViaDataSourceIfNecessary
{
  if ([(UIPageViewController *)self _isPageControlVisible])
  {
    v3 = [(UIPageViewController *)self _pageControl];
    v4 = [v3 numberOfPages];

    v5 = [(UIPageViewController *)self _pageControl];
    v6 = [v5 currentPage];

    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v8 = [WeakRetained presentationCountForPageViewController:self];
    v9 = [WeakRetained presentationIndexForPageViewController:self];
    v10 = v9;
    if (v4 == v8)
    {
      if (v9 < 0 || v6 == v9 || v4 < 1 || v9 >= v4)
      {
        goto LABEL_12;
      }
    }

    else if (v8 < 1 || v9 < 0 || v9 >= v8)
    {
      goto LABEL_12;
    }

    v11 = [(UIPageViewController *)self _pageControl];
    [v11 setNumberOfPages:v8];

    v12 = [(UIPageViewController *)self _pageControl];
    [v12 setCurrentPage:v10];

LABEL_12:
  }

  self->_pageControlRequiresValidation = 0;
}

- (void)queuingScrollView:(id)a3 willManuallyScroll:(BOOL)a4 toRevealView:(id)a5 concealView:(id)a6 animated:(BOOL)a7
{
  v7 = a7;
  v9 = a4;
  v36 = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = a6;
  v14 = [UIViewController viewControllerForView:v12];
  if (!v14)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"UIPageViewController.m" lineNumber:1976 description:{@"No view controller managing revealed view %@", v12}];
  }

  if (![(NSHashTable *)self->_cachedViewControllersForScroll containsObject:v14])
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"UIPageViewController.m" lineNumber:1977 description:{@"Unexpected view controller: %@", v14}];
  }

  v15 = [UIViewController viewControllerForView:v13];
  if (v15 && ![(NSHashTable *)self->_cachedViewControllersForScroll containsObject:v15])
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v28 = v27 = v12;
    [v28 handleFailureInMethod:a2 object:self file:@"UIPageViewController.m" lineNumber:1979 description:{@"Unexpected view controller: %@", v15}];

    v12 = v27;
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  else if (!v9)
  {
    goto LABEL_11;
  }

  if (v14 && (*&self->_delegateFlags & 1) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v17 = [MEMORY[0x1E695DEC8] arrayWithObject:v14];
    [WeakRetained pageViewController:self willTransitionToViewControllers:v17];
  }

LABEL_11:
  if ([(UIPageViewController *)self _shouldGenerateAppearanceCallbacksWhenScrolling])
  {
    v29 = v15;
    v30 = v12;
    [(UIPageViewController *)self _child:v14 beginAppearanceTransitionIfPossible:1 animated:v7];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = self->_cachedViewControllersForScroll;
    v19 = [(NSHashTable *)v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v31 + 1) + 8 * i);
          if (v23 != v14)
          {
            if (![*(*(&v31 + 1) + 8 * i) isViewLoaded] || (objc_msgSend(v23, "view"), v24 = objc_claimAutoreleasedReturnValue(), v24, v24 == v13))
            {
              [(UIPageViewController *)self _child:v23 beginAppearanceTransitionIfPossible:0 animated:v7];
            }

            else
            {
              [(UIPageViewController *)self _child:v23 endAppearanceTransitionIfPossible:0];
            }
          }
        }

        v20 = [(NSHashTable *)v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v20);
    }

    v15 = v29;
    v12 = v30;
  }
}

- (BOOL)_shouldGenerateAppearanceCallbacksWhenScrolling
{
  if (self)
  {
    v2 = (*&self->super._viewControllerFlags & 3u) - 1 < 2;
  }

  else
  {
    v2 = 0;
  }

  NSClassFromString(&cfstr_Qlpageviewcont.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = dyld_program_sdk_at_least();
  v5 = v2 | ~isKindOfClass;
  if (v4)
  {
    v5 = v2;
  }

  return v5 & 1;
}

- (void)queuingScrollView:(id)a3 didCommitManualScroll:(BOOL)a4 toRevealView:(id)a5 concealView:(id)a6 direction:(int64_t)a7 animated:(BOOL)a8 canComplete:(BOOL)a9
{
  v9 = a8;
  v11 = a4;
  v53 = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a6;
  v15 = [(NSArray *)self->_viewControllers _ui_onlyObject];
  v16 = [UIViewController viewControllerForView:v13];
  if (!v16)
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"UIPageViewController.m" lineNumber:2010 description:{@"No view controller managing revealed view %@", v13}];
  }

  if (v11 && a9)
  {
    v17 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v16, 0}];
    viewControllers = self->_viewControllers;
    self->_viewControllers = v17;
  }

  v19 = [UIViewController viewControllerForView:v14];
  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v21 = v20;
  v45 = v11;
  if (v11 && v19)
  {
    [v20 setObject:v19 forKey:@"UIPageCurlControllerOutgoingLeftViewControllerKey"];
  }

  v47 = v21;
  objc_storeStrong(&self->_incomingAndOutgoingViewControllersForManualTransition, v21);
  v22 = v15;
  if ([(UIPageViewController *)self _shouldGenerateAppearanceCallbacksWhenScrolling])
  {
    v41 = v19;
    v42 = v15;
    v43 = v13;
    [(UIPageViewController *)self _child:v16 beginAppearanceTransitionIfPossible:1 animated:v9];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v23 = self->_cachedViewControllersForScroll;
    v24 = [(NSHashTable *)v23 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v49;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v49 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v48 + 1) + 8 * i);
          if (v28 != v16)
          {
            if (![*(*(&v48 + 1) + 8 * i) isViewLoaded] || (objc_msgSend(v28, "view"), v29 = objc_claimAutoreleasedReturnValue(), v29, v29 == v14))
            {
              [(UIPageViewController *)self _child:v28 beginAppearanceTransitionIfPossible:0 animated:v9];
            }

            else
            {
              [(UIPageViewController *)self _child:v28 endAppearanceTransitionIfPossible:0];
            }
          }
        }

        v25 = [(NSHashTable *)v23 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v25);
    }

    v22 = v42;
    v13 = v43;
    v19 = v41;
  }

  v30 = [(UIPageViewController *)self _pageControl];
  v31 = [v30 numberOfPages];

  if (a9 && [(UIPageViewController *)self _isPageControlVisible]&& v31)
  {
    if (self->_pageControlRequiresValidation)
    {
      [(UIPageViewController *)self _updatePageControlViaDataSourceIfNecessary];
    }

    else if (v45 && v22 != v16)
    {
      v32 = v19;
      if ([(UIPageViewController *)self _shouldFlipInRightToLeft])
      {
        v33 = a7 == 0;
      }

      else
      {
        v33 = a7;
      }

      v34 = [(UIPageViewController *)self _pageControl];
      v35 = [v34 currentPage];
      v36 = v35 - 1;
      if (!v33)
      {
        v36 = v35 + 1;
      }

      v37 = v36 % v31;

      v38 = [(UIPageViewController *)self _pageControl];
      v39 = (v31 & (v37 >> 63)) + v37;
      v19 = v32;
      [v38 setCurrentPage:v39];
    }
  }
}

- (void)queuingScrollView:(id)a3 didEndManualScroll:(BOOL)a4 toRevealView:(id)a5 direction:(int64_t)a6 animated:(BOOL)a7 didFinish:(BOOL)a8 didComplete:(BOOL)a9
{
  v9 = a8;
  v10 = a7;
  v12 = a4;
  v39 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a5;
  if (!v12 || a9)
  {
    v17 = [UIViewController viewControllerForView:v16];
  }

  else
  {
    v17 = [(NSDictionary *)self->_incomingAndOutgoingViewControllersForManualTransition objectForKey:@"UIPageCurlControllerOutgoingLeftViewControllerKey"];
  }

  v18 = v17;
  if (!v17)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"UIPageViewController.m" lineNumber:2064 description:{@"No view controller managing visible view %@", v16}];
  }

  v32 = v16;
  v33 = v15;
  if ([(UIPageViewController *)self _shouldGenerateAppearanceCallbacksWhenScrolling])
  {
    [(UIPageViewController *)self _child:v18 beginAppearanceTransitionIfPossible:1 animated:v10];
    if (v9)
    {
      [(UIPageViewController *)self _child:v18 endAppearanceTransitionIfPossible:1];
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = self->_cachedViewControllersForScroll;
  v20 = [(NSHashTable *)v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v34 + 1) + 8 * i);
        if (v24 != v18)
        {
          [(UIPageViewController *)self _child:*(*(&v34 + 1) + 8 * i) beginAppearanceTransitionIfPossible:0 animated:v10];
          if (v9)
          {
            [(UIPageViewController *)self _child:v24 endAppearanceTransitionIfPossible:0];
          }
        }
      }

      v21 = [(NSHashTable *)v19 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v21);
  }

  if (v12 && (*&self->_delegateFlags & 2) != 0)
  {
    v25 = [(NSDictionary *)self->_incomingAndOutgoingViewControllersForManualTransition objectForKey:@"UIPageCurlControllerOutgoingLeftViewControllerKey"];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v25, 0}];
    [WeakRetained pageViewController:self didFinishAnimating:v10 previousViewControllers:v27 transitionCompleted:a9];

    incomingAndOutgoingViewControllersForManualTransition = self->_incomingAndOutgoingViewControllersForManualTransition;
    self->_incomingAndOutgoingViewControllersForManualTransition = 0;
  }

  if ([(UIPageViewController *)self _isPageControlVisible])
  {
    v29 = [(UIPageViewController *)self _pageControl];
    if (![v29 numberOfPages] || v12 || a9)
    {
    }

    else
    {
      v30 = [v33 isManualScrollInProgress];

      if (v30)
      {
        self->_pageControlRequiresValidation = 1;
      }
    }
  }
}

- (void)queuingScrollView:(id)a3 didBailoutOfScrollAndRevealedView:(id)a4
{
  v12 = a4;
  v6 = [UIViewController viewControllerForView:?];
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UIPageViewController.m" lineNumber:2093 description:{@"No view controller managing visible view %@", v12}];
  }

  v7 = [(UIPageViewController *)self _viewControllers];
  v8 = [v7 _ui_onlyObject];

  if (v8 != v6)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v6, 0}];
    viewControllers = self->_viewControllers;
    self->_viewControllers = v9;
  }

  [(UIPageViewController *)self _updatePageControlViaDataSourceIfNecessary];
}

- (void)queuingScrollViewDidFinishScrolling:(id)a3
{
  if ((*&self->_delegateFlags & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained _pageViewControllerDidFinishTransitions:self];
  }
}

- (id)_queuingScrollView:(id)a3 viewBefore:(BOOL)a4 view:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (([v8 isTracking] & 1) != 0 || objc_msgSend(v8, "isManualScrollInProgress"))
  {
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v10 = @"kUIFaultingViewSentinel";
  }

  v12 = v10;
  v13 = [UIViewController viewControllerForView:v9];
  if ([(UIPageViewController *)self _shouldFlipInRightToLeft])
  {
    if (!v11)
    {
      goto LABEL_11;
    }

    v6 = v6 ^ 1;
  }

  else if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = [(UIPageViewController *)self _viewControllerBefore:v6 viewController:v13];
  if (v14)
  {
    v15 = v14;
    [(UIPageViewController *)self _cacheViewControllerForScroll:v14];
    v16 = [v15 view];

    v12 = v16;
  }

LABEL_11:

  return v12;
}

- (void)_flushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v11 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIPageViewController.m" lineNumber:2135 description:{@"Invalid parameter not satisfying: %@", @"viewController"}];

    v7 = 0;
  }

  if (![(NSHashTable *)self->_cachedViewControllersForScroll containsObject:v7])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [v11 view];
    [v9 handleFailureInMethod:a2 object:self file:@"UIPageViewController.m" lineNumber:2136 description:{@"Don't know about flushed view %@", v10}];
  }

  [(UIPageViewController *)self _child:v11 beginAppearanceTransitionIfPossible:0 animated:v4];
  [(UIPageViewController *)self _child:v11 endAppearanceTransitionIfPossible:v4];
  [v11 willMoveToParentViewController:0];
  [(UIViewController *)self removeChildViewController:v11];
  [(NSHashTable *)self->_cachedViewControllersForScroll removeObject:v11];
}

- (void)queuingScrollView:(id)a3 didFlushView:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v9 = [UIViewController viewControllerForView:a4];
  if (v9)
  {
    v7 = [(UIPageViewController *)self viewControllers];
    v8 = [v7 indexOfObjectIdenticalTo:v9];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(UIPageViewController *)self _flushViewController:v9 animated:v5];
    }
  }
}

- (void)queuingScrollView:(id)a3 attemptToPageInDirection:(int64_t)a4
{
  v8 = [(UIPageViewController *)self _pageControl];
  v6 = [v8 currentPage];
  if (a4)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6 + 1;
  }

  [v8 setCurrentPage:v7];
  [(UIPageViewController *)self _handlePagingInDirection:a4 animated:1 completion:0];
}

- (void)scrollViewDidScroll:(id)a3
{
  if ((*&self->_delegateFlags & 8) != 0)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [v5 contentOffset];
    v7 = v6;
    v9 = v8;

    [WeakRetained _pageViewController:self didScrollTo:{v7, v9}];
  }
}

- (void)_pageControlValueChanged:(id)a3
{
  v11 = a3;
  v4 = [(UIPageViewController *)self _scrollView];
  if ([v4 isTracking])
  {

    goto LABEL_17;
  }

  v5 = [(UIPageViewController *)self _scrollView];
  v6 = [v5 isDecelerating];

  if ((v6 & 1) == 0)
  {
    v7 = [v11 currentPage];
    v8 = [v11 previousPage];
    v9 = [v11 interactionState];
    if ([(UIPageViewController *)self _shouldFlipInRightToLeft])
    {
      if (v7 < v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = -1;
      }

      if (v7 > v8)
      {
        v10 = 1;
LABEL_16:
        [(UIPageViewController *)self _handlePagingInDirection:v10 animated:v9 == 1 completion:0];
        goto LABEL_17;
      }
    }

    else
    {
      if (v7 < v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = -1;
      }

      if (v7 > v8)
      {
        v10 = 0;
        goto LABEL_16;
      }
    }

    if (v10 != -1)
    {
      goto LABEL_16;
    }

    [(UIPageViewController *)self _updatePageControlViaDataSourceIfNecessary];
  }

LABEL_17:
}

@end