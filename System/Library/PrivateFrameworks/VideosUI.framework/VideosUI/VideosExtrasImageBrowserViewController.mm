@interface VideosExtrasImageBrowserViewController
- (VideosExtrasImageBrowserViewController)initWithNibName:(id)name bundle:(id)bundle;
- (VideosExtrasImageBrowserViewControllerDataSource)dataSource;
- (VideosExtrasImageBrowserViewControllerDelegate)delegate;
- (VideosExtrasZoomingImageInteractiveTransitionSource)zoomingImageInteractiveTransitionSource;
- (id)_imageViewControllerAtIndex:(unint64_t)index;
- (id)_visibleImageViewController;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (unint64_t)_numberOfImages;
- (void)_addPageViewForController:(id)controller toView:(id)view;
- (void)_removePageViewController;
- (void)_updatePageViewController;
- (void)_updateTitle;
- (void)dealloc;
- (void)finalizeZoomingImageTransitionWithContext:(id)context transitionFinished:(BOOL)finished;
- (void)handlePinchGestureForZoomingImageInteractiveTransitionWithContext:(id)context;
- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed;
- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers;
- (void)performZoomingImageTransitionWithContext:(id)context;
- (void)prepareZoomingImageTransitionWithContext:(id)context;
- (void)setAllowsPinchingImageForInteractiveZoomingImageTransition:(BOOL)transition;
- (void)setDataSource:(id)source;
- (void)setVisibleImageIndex:(unint64_t)index;
- (void)viewDidLoad;
@end

@implementation VideosExtrasImageBrowserViewController

- (VideosExtrasImageBrowserViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = VideosExtrasImageBrowserViewController;
  v4 = [(VideosExtrasImageBrowserViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(VideosExtrasImageBrowserViewController *)v4 setAutomaticallyAdjustsScrollViewInsets:0];
    v5->_visibleImageIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (void)dealloc
{
  [(VideosExtrasImageBrowserViewController *)self _removePageViewController];
  v3.receiver = self;
  v3.super_class = VideosExtrasImageBrowserViewController;
  [(VideosExtrasImageBrowserViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = VideosExtrasImageBrowserViewController;
  [(VideosExtrasImageBrowserViewController *)&v6 viewDidLoad];
  view = [(VideosExtrasImageBrowserViewController *)self view];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [view setBackgroundColor:blackColor];

  pageViewController = [(VideosExtrasImageBrowserViewController *)self pageViewController];
  if (pageViewController)
  {
    [(VideosExtrasImageBrowserViewController *)self _addPageViewForController:pageViewController toView:view];
  }
}

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  imageIndex = [viewController imageIndex];
  if (imageIndex)
  {
    imageIndex = [(VideosExtrasImageBrowserViewController *)self _imageViewControllerAtIndex:imageIndex - 1];
  }

  return imageIndex;
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  v5 = [viewController imageIndex] + 1;
  if (v5 >= [(VideosExtrasImageBrowserViewController *)self _numberOfImages])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(VideosExtrasImageBrowserViewController *)self _imageViewControllerAtIndex:v5];
  }

  return v6;
}

- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers
{
  firstObject = [controllers firstObject];
  [firstObject setAllowsPinchingImageForInteractiveZoomingImageTransition:{-[VideosExtrasImageBrowserViewController allowsPinchingImageForInteractiveZoomingImageTransition](self, "allowsPinchingImageForInteractiveZoomingImageTransition")}];
  delegate = [(VideosExtrasImageBrowserViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate imageBrowserViewController:self willTransitionToImageAtIndex:{objc_msgSend(firstObject, "imageIndex")}];
  }
}

- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed
{
  completedCopy = completed;
  viewControllers = [controller viewControllers];
  firstObject = [viewControllers firstObject];

  [firstObject setAllowsPinchingImageForInteractiveZoomingImageTransition:{-[VideosExtrasImageBrowserViewController allowsPinchingImageForInteractiveZoomingImageTransition](self, "allowsPinchingImageForInteractiveZoomingImageTransition")}];
  self->_visibleImageIndex = [firstObject imageIndex];
  [(VideosExtrasImageBrowserViewController *)self _updateTitle];
  delegate = [(VideosExtrasImageBrowserViewController *)self delegate];
  if (completedCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      [delegate imageBrowserViewController:self didCompleteTransitionToImageAtIndex:{objc_msgSend(firstObject, "imageIndex")}];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [delegate imageBrowserViewControllerDidCancelTransition:self];
  }
}

- (void)prepareZoomingImageTransitionWithContext:(id)context
{
  contextCopy = context;
  -[VideosExtrasImageBrowserViewController setVisibleImageIndex:](self, "setVisibleImageIndex:", [contextCopy itemIndex]);
  view = [(VideosExtrasImageBrowserViewController *)self view];
  [view setHidden:1];

  _visibleImageViewController = [(VideosExtrasImageBrowserViewController *)self _visibleImageViewController];
  [_visibleImageViewController prepareZoomingImageTransitionWithContext:contextCopy];
}

- (void)performZoomingImageTransitionWithContext:(id)context
{
  contextCopy = context;
  _visibleImageViewController = [(VideosExtrasImageBrowserViewController *)self _visibleImageViewController];
  [_visibleImageViewController performZoomingImageTransitionWithContext:contextCopy];
}

- (void)finalizeZoomingImageTransitionWithContext:(id)context transitionFinished:(BOOL)finished
{
  finishedCopy = finished;
  contextCopy = context;
  _visibleImageViewController = [(VideosExtrasImageBrowserViewController *)self _visibleImageViewController];
  [_visibleImageViewController finalizeZoomingImageTransitionWithContext:contextCopy transitionFinished:finishedCopy];

  view = [(VideosExtrasImageBrowserViewController *)self view];
  [view setHidden:0];
}

- (void)handlePinchGestureForZoomingImageInteractiveTransitionWithContext:(id)context
{
  contextCopy = context;
  zoomingImageInteractiveTransitionSource = [(VideosExtrasImageBrowserViewController *)self zoomingImageInteractiveTransitionSource];
  [zoomingImageInteractiveTransitionSource handlePinchGestureForZoomingImageInteractiveTransitionWithContext:contextCopy];
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(VideosExtrasImageBrowserViewController *)self _updatePageViewController];
    v5 = obj;
  }
}

- (void)setAllowsPinchingImageForInteractiveZoomingImageTransition:(BOOL)transition
{
  if (self->_allowsPinchingImageForInteractiveZoomingImageTransition != transition)
  {
    transitionCopy = transition;
    self->_allowsPinchingImageForInteractiveZoomingImageTransition = transition;
    _visibleImageViewController = [(VideosExtrasImageBrowserViewController *)self _visibleImageViewController];
    [_visibleImageViewController setAllowsPinchingImageForInteractiveZoomingImageTransition:transitionCopy];
  }
}

- (void)setVisibleImageIndex:(unint64_t)index
{
  if (self->_visibleImageIndex != index)
  {
    self->_visibleImageIndex = index;
    [(VideosExtrasImageBrowserViewController *)self _updatePageViewController];

    [(VideosExtrasImageBrowserViewController *)self _updateTitle];
  }
}

- (void)_addPageViewForController:(id)controller toView:(id)view
{
  viewCopy = view;
  view = [controller view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [viewCopy addSubview:view];
  v6 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:view toView:viewCopy alongEdges:15 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [viewCopy addConstraints:v6];
}

- (id)_imageViewControllerAtIndex:(unint64_t)index
{
  v5 = objc_alloc_init(VideosExtrasImageViewController);
  [(VideosExtrasImageViewController *)v5 setImageIndex:index];
  [(VideosExtrasImageViewController *)v5 setZoomingImageTransitionIdentifier:@"VideosExtrasImageBrowserZoomingImageTransitionIdentifier"];
  dataSource = [(VideosExtrasImageBrowserViewController *)self dataSource];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __70__VideosExtrasImageBrowserViewController__imageViewControllerAtIndex___block_invoke;
  v23[3] = &unk_1E872FCC0;
  v7 = v5;
  v24 = v7;
  [dataSource imageBrowserViewController:self loadImageAtIndex:index withCompletionHandler:v23];

  dataSource2 = [(VideosExtrasImageBrowserViewController *)self dataSource];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__VideosExtrasImageBrowserViewController__imageViewControllerAtIndex___block_invoke_2;
  v21[3] = &unk_1E872FCE8;
  v9 = v7;
  v22 = v9;
  [dataSource2 imageBrowserViewController:self loadTitleAtIndex:index withCompletionHandler:v21];

  dataSource3 = [(VideosExtrasImageBrowserViewController *)self dataSource];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __70__VideosExtrasImageBrowserViewController__imageViewControllerAtIndex___block_invoke_3;
  v19[3] = &unk_1E872FCE8;
  v11 = v9;
  v20 = v11;
  [dataSource3 imageBrowserViewController:self loadSubtitleAtIndex:index withCompletionHandler:v19];

  dataSource4 = [(VideosExtrasImageBrowserViewController *)self dataSource];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__VideosExtrasImageBrowserViewController__imageViewControllerAtIndex___block_invoke_4;
  v17[3] = &unk_1E872FCE8;
  v13 = v11;
  v18 = v13;
  [dataSource4 imageBrowserViewController:self loadDescriptionAtIndex:index withCompletionHandler:v17];

  v14 = v18;
  v15 = v13;

  return v13;
}

- (unint64_t)_numberOfImages
{
  dataSource = [(VideosExtrasImageBrowserViewController *)self dataSource];
  v4 = [dataSource numberOfImagesForBrowserViewController:self];

  return v4;
}

- (void)_removePageViewController
{
  pageViewController = [(VideosExtrasImageBrowserViewController *)self pageViewController];
  if (pageViewController)
  {
    [pageViewController willMoveToParentViewController:0];
    if ([(VideosExtrasImageBrowserViewController *)self isViewLoaded])
    {
      view = [pageViewController view];
      [view removeFromSuperview];
    }

    [pageViewController removeFromParentViewController];
    [pageViewController setDataSource:0];
    [pageViewController setDelegate:0];
    [(VideosExtrasImageBrowserViewController *)self setPageViewController:0];
  }
}

- (void)_updatePageViewController
{
  v13[1] = *MEMORY[0x1E69E9840];
  dataSource = [(VideosExtrasImageBrowserViewController *)self dataSource];
  visibleImageIndex = [(VideosExtrasImageBrowserViewController *)self visibleImageIndex];
  if (!dataSource || (v5 = visibleImageIndex, visibleImageIndex == 0x7FFFFFFFFFFFFFFFLL))
  {
    [(VideosExtrasImageBrowserViewController *)self _removePageViewController];
  }

  else
  {
    pageViewController = [(VideosExtrasImageBrowserViewController *)self pageViewController];
    if (!pageViewController)
    {
      v12 = *MEMORY[0x1E69DE260];
      v13[0] = &unk_1F5E5EBE0;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      pageViewController = [objc_alloc(MEMORY[0x1E69DCD20]) initWithTransitionStyle:1 navigationOrientation:0 options:v7];
      [pageViewController setDataSource:self];
      [pageViewController setDelegate:self];
      [(VideosExtrasImageBrowserViewController *)self addChildViewController:pageViewController];
      if ([(VideosExtrasImageBrowserViewController *)self isViewLoaded])
      {
        view = [(VideosExtrasImageBrowserViewController *)self view];
        [(VideosExtrasImageBrowserViewController *)self _addPageViewForController:pageViewController toView:view];
      }

      [pageViewController didMoveToParentViewController:self];
      [(VideosExtrasImageBrowserViewController *)self setPageViewController:pageViewController];
    }

    v9 = [(VideosExtrasImageBrowserViewController *)self _imageViewControllerAtIndex:v5];
    v11 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    [pageViewController setViewControllers:v10 direction:0 animated:0 completion:0];
  }
}

- (void)_updateTitle
{
  v3 = MEMORY[0x1E696AEC0];
  vui_videosUIBundle = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
  v5 = [vui_videosUIBundle localizedStringForKey:@"PAGE_NUMBER_WITH_COUNT_%lu_%lu" value:0 table:@"VideosExtras"];
  v6 = [v3 localizedStringWithFormat:v5, -[VideosExtrasImageBrowserViewController visibleImageIndex](self, "visibleImageIndex") + 1, -[VideosExtrasImageBrowserViewController _numberOfImages](self, "_numberOfImages")];

  [(VideosExtrasImageBrowserViewController *)self setTitle:v6];
}

- (id)_visibleImageViewController
{
  pageViewController = [(VideosExtrasImageBrowserViewController *)self pageViewController];
  viewControllers = [pageViewController viewControllers];
  firstObject = [viewControllers firstObject];

  return firstObject;
}

- (VideosExtrasImageBrowserViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (VideosExtrasImageBrowserViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (VideosExtrasZoomingImageInteractiveTransitionSource)zoomingImageInteractiveTransitionSource
{
  WeakRetained = objc_loadWeakRetained(&self->_zoomingImageInteractiveTransitionSource);

  return WeakRetained;
}

@end