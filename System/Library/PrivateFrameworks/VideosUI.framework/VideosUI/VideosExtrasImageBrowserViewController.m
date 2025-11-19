@interface VideosExtrasImageBrowserViewController
- (VideosExtrasImageBrowserViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (VideosExtrasImageBrowserViewControllerDataSource)dataSource;
- (VideosExtrasImageBrowserViewControllerDelegate)delegate;
- (VideosExtrasZoomingImageInteractiveTransitionSource)zoomingImageInteractiveTransitionSource;
- (id)_imageViewControllerAtIndex:(unint64_t)a3;
- (id)_visibleImageViewController;
- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4;
- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4;
- (unint64_t)_numberOfImages;
- (void)_addPageViewForController:(id)a3 toView:(id)a4;
- (void)_removePageViewController;
- (void)_updatePageViewController;
- (void)_updateTitle;
- (void)dealloc;
- (void)finalizeZoomingImageTransitionWithContext:(id)a3 transitionFinished:(BOOL)a4;
- (void)handlePinchGestureForZoomingImageInteractiveTransitionWithContext:(id)a3;
- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6;
- (void)pageViewController:(id)a3 willTransitionToViewControllers:(id)a4;
- (void)performZoomingImageTransitionWithContext:(id)a3;
- (void)prepareZoomingImageTransitionWithContext:(id)a3;
- (void)setAllowsPinchingImageForInteractiveZoomingImageTransition:(BOOL)a3;
- (void)setDataSource:(id)a3;
- (void)setVisibleImageIndex:(unint64_t)a3;
- (void)viewDidLoad;
@end

@implementation VideosExtrasImageBrowserViewController

- (VideosExtrasImageBrowserViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = VideosExtrasImageBrowserViewController;
  v4 = [(VideosExtrasImageBrowserViewController *)&v7 initWithNibName:a3 bundle:a4];
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
  v3 = [(VideosExtrasImageBrowserViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] blackColor];
  [v3 setBackgroundColor:v4];

  v5 = [(VideosExtrasImageBrowserViewController *)self pageViewController];
  if (v5)
  {
    [(VideosExtrasImageBrowserViewController *)self _addPageViewForController:v5 toView:v3];
  }
}

- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4
{
  v5 = [a4 imageIndex];
  if (v5)
  {
    v5 = [(VideosExtrasImageBrowserViewController *)self _imageViewControllerAtIndex:v5 - 1];
  }

  return v5;
}

- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4
{
  v5 = [a4 imageIndex] + 1;
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

- (void)pageViewController:(id)a3 willTransitionToViewControllers:(id)a4
{
  v6 = [a4 firstObject];
  [v6 setAllowsPinchingImageForInteractiveZoomingImageTransition:{-[VideosExtrasImageBrowserViewController allowsPinchingImageForInteractiveZoomingImageTransition](self, "allowsPinchingImageForInteractiveZoomingImageTransition")}];
  v5 = [(VideosExtrasImageBrowserViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 imageBrowserViewController:self willTransitionToImageAtIndex:{objc_msgSend(v6, "imageIndex")}];
  }
}

- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6
{
  v6 = a6;
  v8 = [a3 viewControllers];
  v10 = [v8 firstObject];

  [v10 setAllowsPinchingImageForInteractiveZoomingImageTransition:{-[VideosExtrasImageBrowserViewController allowsPinchingImageForInteractiveZoomingImageTransition](self, "allowsPinchingImageForInteractiveZoomingImageTransition")}];
  self->_visibleImageIndex = [v10 imageIndex];
  [(VideosExtrasImageBrowserViewController *)self _updateTitle];
  v9 = [(VideosExtrasImageBrowserViewController *)self delegate];
  if (v6)
  {
    if (objc_opt_respondsToSelector())
    {
      [v9 imageBrowserViewController:self didCompleteTransitionToImageAtIndex:{objc_msgSend(v10, "imageIndex")}];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [v9 imageBrowserViewControllerDidCancelTransition:self];
  }
}

- (void)prepareZoomingImageTransitionWithContext:(id)a3
{
  v4 = a3;
  -[VideosExtrasImageBrowserViewController setVisibleImageIndex:](self, "setVisibleImageIndex:", [v4 itemIndex]);
  v5 = [(VideosExtrasImageBrowserViewController *)self view];
  [v5 setHidden:1];

  v6 = [(VideosExtrasImageBrowserViewController *)self _visibleImageViewController];
  [v6 prepareZoomingImageTransitionWithContext:v4];
}

- (void)performZoomingImageTransitionWithContext:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasImageBrowserViewController *)self _visibleImageViewController];
  [v5 performZoomingImageTransitionWithContext:v4];
}

- (void)finalizeZoomingImageTransitionWithContext:(id)a3 transitionFinished:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(VideosExtrasImageBrowserViewController *)self _visibleImageViewController];
  [v7 finalizeZoomingImageTransitionWithContext:v6 transitionFinished:v4];

  v8 = [(VideosExtrasImageBrowserViewController *)self view];
  [v8 setHidden:0];
}

- (void)handlePinchGestureForZoomingImageInteractiveTransitionWithContext:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasImageBrowserViewController *)self zoomingImageInteractiveTransitionSource];
  [v5 handlePinchGestureForZoomingImageInteractiveTransitionWithContext:v4];
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(VideosExtrasImageBrowserViewController *)self _updatePageViewController];
    v5 = obj;
  }
}

- (void)setAllowsPinchingImageForInteractiveZoomingImageTransition:(BOOL)a3
{
  if (self->_allowsPinchingImageForInteractiveZoomingImageTransition != a3)
  {
    v4 = a3;
    self->_allowsPinchingImageForInteractiveZoomingImageTransition = a3;
    v5 = [(VideosExtrasImageBrowserViewController *)self _visibleImageViewController];
    [v5 setAllowsPinchingImageForInteractiveZoomingImageTransition:v4];
  }
}

- (void)setVisibleImageIndex:(unint64_t)a3
{
  if (self->_visibleImageIndex != a3)
  {
    self->_visibleImageIndex = a3;
    [(VideosExtrasImageBrowserViewController *)self _updatePageViewController];

    [(VideosExtrasImageBrowserViewController *)self _updateTitle];
  }
}

- (void)_addPageViewForController:(id)a3 toView:(id)a4
{
  v5 = a4;
  v7 = [a3 view];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addSubview:v7];
  v6 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v7 toView:v5 alongEdges:15 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [v5 addConstraints:v6];
}

- (id)_imageViewControllerAtIndex:(unint64_t)a3
{
  v5 = objc_alloc_init(VideosExtrasImageViewController);
  [(VideosExtrasImageViewController *)v5 setImageIndex:a3];
  [(VideosExtrasImageViewController *)v5 setZoomingImageTransitionIdentifier:@"VideosExtrasImageBrowserZoomingImageTransitionIdentifier"];
  v6 = [(VideosExtrasImageBrowserViewController *)self dataSource];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __70__VideosExtrasImageBrowserViewController__imageViewControllerAtIndex___block_invoke;
  v23[3] = &unk_1E872FCC0;
  v7 = v5;
  v24 = v7;
  [v6 imageBrowserViewController:self loadImageAtIndex:a3 withCompletionHandler:v23];

  v8 = [(VideosExtrasImageBrowserViewController *)self dataSource];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__VideosExtrasImageBrowserViewController__imageViewControllerAtIndex___block_invoke_2;
  v21[3] = &unk_1E872FCE8;
  v9 = v7;
  v22 = v9;
  [v8 imageBrowserViewController:self loadTitleAtIndex:a3 withCompletionHandler:v21];

  v10 = [(VideosExtrasImageBrowserViewController *)self dataSource];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __70__VideosExtrasImageBrowserViewController__imageViewControllerAtIndex___block_invoke_3;
  v19[3] = &unk_1E872FCE8;
  v11 = v9;
  v20 = v11;
  [v10 imageBrowserViewController:self loadSubtitleAtIndex:a3 withCompletionHandler:v19];

  v12 = [(VideosExtrasImageBrowserViewController *)self dataSource];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__VideosExtrasImageBrowserViewController__imageViewControllerAtIndex___block_invoke_4;
  v17[3] = &unk_1E872FCE8;
  v13 = v11;
  v18 = v13;
  [v12 imageBrowserViewController:self loadDescriptionAtIndex:a3 withCompletionHandler:v17];

  v14 = v18;
  v15 = v13;

  return v13;
}

- (unint64_t)_numberOfImages
{
  v3 = [(VideosExtrasImageBrowserViewController *)self dataSource];
  v4 = [v3 numberOfImagesForBrowserViewController:self];

  return v4;
}

- (void)_removePageViewController
{
  v4 = [(VideosExtrasImageBrowserViewController *)self pageViewController];
  if (v4)
  {
    [v4 willMoveToParentViewController:0];
    if ([(VideosExtrasImageBrowserViewController *)self isViewLoaded])
    {
      v3 = [v4 view];
      [v3 removeFromSuperview];
    }

    [v4 removeFromParentViewController];
    [v4 setDataSource:0];
    [v4 setDelegate:0];
    [(VideosExtrasImageBrowserViewController *)self setPageViewController:0];
  }
}

- (void)_updatePageViewController
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [(VideosExtrasImageBrowserViewController *)self dataSource];
  v4 = [(VideosExtrasImageBrowserViewController *)self visibleImageIndex];
  if (!v3 || (v5 = v4, v4 == 0x7FFFFFFFFFFFFFFFLL))
  {
    [(VideosExtrasImageBrowserViewController *)self _removePageViewController];
  }

  else
  {
    v6 = [(VideosExtrasImageBrowserViewController *)self pageViewController];
    if (!v6)
    {
      v12 = *MEMORY[0x1E69DE260];
      v13[0] = &unk_1F5E5EBE0;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v6 = [objc_alloc(MEMORY[0x1E69DCD20]) initWithTransitionStyle:1 navigationOrientation:0 options:v7];
      [v6 setDataSource:self];
      [v6 setDelegate:self];
      [(VideosExtrasImageBrowserViewController *)self addChildViewController:v6];
      if ([(VideosExtrasImageBrowserViewController *)self isViewLoaded])
      {
        v8 = [(VideosExtrasImageBrowserViewController *)self view];
        [(VideosExtrasImageBrowserViewController *)self _addPageViewForController:v6 toView:v8];
      }

      [v6 didMoveToParentViewController:self];
      [(VideosExtrasImageBrowserViewController *)self setPageViewController:v6];
    }

    v9 = [(VideosExtrasImageBrowserViewController *)self _imageViewControllerAtIndex:v5];
    v11 = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    [v6 setViewControllers:v10 direction:0 animated:0 completion:0];
  }
}

- (void)_updateTitle
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
  v5 = [v4 localizedStringForKey:@"PAGE_NUMBER_WITH_COUNT_%lu_%lu" value:0 table:@"VideosExtras"];
  v6 = [v3 localizedStringWithFormat:v5, -[VideosExtrasImageBrowserViewController visibleImageIndex](self, "visibleImageIndex") + 1, -[VideosExtrasImageBrowserViewController _numberOfImages](self, "_numberOfImages")];

  [(VideosExtrasImageBrowserViewController *)self setTitle:v6];
}

- (id)_visibleImageViewController
{
  v2 = [(VideosExtrasImageBrowserViewController *)self pageViewController];
  v3 = [v2 viewControllers];
  v4 = [v3 firstObject];

  return v4;
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