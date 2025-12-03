@interface VideosExtrasSlideshowTemplateViewController
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldPerformZoomingImageTransitionFromImageElement:(id)element toImageAtIndex:(unint64_t)index;
- (IKSlideshowElement)templateElement;
- (VideosExtrasSlideshowTemplateViewController)initWithDocument:(id)document options:(id)options context:(id)context;
- (unint64_t)numberOfImagesForSlideshowViewController:(id)controller;
- (void)_firstImageLoadedHideNavigationBar;
- (void)_toggleVisibilityOfNavigationBar;
- (void)dealloc;
- (void)finalizeZoomingImageTransitionWithContext:(id)context transitionFinished:(BOOL)finished;
- (void)performZoomingImageTransitionWithContext:(id)context;
- (void)prepareZoomingImageTransitionWithContext:(id)context;
- (void)slideshowViewController:(id)controller loadImageAtIndex:(unint64_t)index withCompletionHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation VideosExtrasSlideshowTemplateViewController

- (VideosExtrasSlideshowTemplateViewController)initWithDocument:(id)document options:(id)options context:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = VideosExtrasSlideshowTemplateViewController;
  v5 = [(VideosExtrasTemplateViewController *)&v27 initWithDocument:document options:options context:context];
  v6 = v5;
  if (v5)
  {
    templateElement = [(VideosExtrasSlideshowTemplateViewController *)v5 templateElement];
    transition = [templateElement transition];
    if ((transition - 2) >= 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = transition - 1;
    }

    [templateElement transitionInterval];
    if (v10 >= 2.22044605e-16)
    {
      v11 = v10;
    }

    else
    {
      v11 = 3.0;
    }

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    images = [templateElement images];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = [images countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        v17 = 0;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(images);
          }

          v18 = *(*(&v23 + 1) + 8 * v17);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v12 addObject:v18];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [images countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v15);
    }

    [(VideosExtrasSlideshowTemplateViewController *)v6 setImageElements:v12];
    v19 = objc_alloc_init(VideosExtrasSlideshowViewController);
    [(VideosExtrasSlideshowViewController *)v19 setDataSource:v6];
    [(VideosExtrasSlideshowViewController *)v19 setTransitionStyle:v9];
    [(VideosExtrasSlideshowViewController *)v19 setTransitionInterval:v11];
    [(VideosExtrasSlideshowViewController *)v19 setVisibleImageIndex:0];
    [(VideosExtrasSlideshowTemplateViewController *)v6 addChildViewController:v19];
    [(VideosExtrasSlideshowViewController *)v19 didMoveToParentViewController:v6];
    [(VideosExtrasSlideshowTemplateViewController *)v6 setSlideshowViewController:v19];
    vui_videosUIBundle = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
    v21 = [vui_videosUIBundle localizedStringForKey:@"SLIDESHOW_TITLE" value:0 table:@"VideosExtras"];
    [(VideosExtrasSlideshowTemplateViewController *)v6 setTitle:v21];
  }

  return v6;
}

- (void)dealloc
{
  slideshowViewController = [(VideosExtrasSlideshowTemplateViewController *)self slideshowViewController];
  [slideshowViewController willMoveToParentViewController:0];
  if ([slideshowViewController isViewLoaded])
  {
    view = [slideshowViewController view];
    [view removeFromSuperview];
  }

  [slideshowViewController removeFromParentViewController];
  [slideshowViewController setDataSource:0];
  tapGestureRecognizer = [(VideosExtrasSlideshowTemplateViewController *)self tapGestureRecognizer];
  [tapGestureRecognizer removeTarget:self action:0];

  v6.receiver = self;
  v6.super_class = VideosExtrasSlideshowTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v6 dealloc];
}

- (BOOL)prefersStatusBarHidden
{
  navigationController = [(VideosExtrasSlideshowTemplateViewController *)self navigationController];
  isNavigationBarHidden = [navigationController isNavigationBarHidden];

  return isNavigationBarHidden;
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = VideosExtrasSlideshowTemplateViewController;
  [(VideosExtrasElementViewController *)&v12 viewWillAppear:appear];
  navigationController = [(VideosExtrasSlideshowTemplateViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v6 = [viewControllers mutableCopy];

  lastObject = [v6 lastObject];

  if (lastObject == self)
  {
    [v6 removeLastObject];
  }

  lastObject2 = [v6 lastObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = lastObject2;
    slideshowViewController = [(VideosExtrasSlideshowTemplateViewController *)self slideshowViewController];
    indexOfVisibleItem = [v9 indexOfVisibleItem];

    [slideshowViewController setVisibleImageIndex:indexOfVisibleItem];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = VideosExtrasSlideshowTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v3 viewDidAppear:appear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = VideosExtrasSlideshowTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v5 viewDidDisappear:disappear];
  view = [(VideosExtrasSlideshowTemplateViewController *)self view];
  [view clearArtworkCatalogs];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = VideosExtrasSlideshowTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v10 viewDidLoad];
  view = [(VideosExtrasSlideshowTemplateViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];

  slideshowViewController = [(VideosExtrasSlideshowTemplateViewController *)self slideshowViewController];
  view2 = [slideshowViewController view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:view2];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:view2 toView:view alongEdges:15 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [v7 addObjectsFromArray:v8];

  [view addConstraints:v7];
  v9 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTap_];
  [view addGestureRecognizer:v9];
  [(VideosExtrasSlideshowTemplateViewController *)self setTapGestureRecognizer:v9];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = VideosExtrasSlideshowTemplateViewController;
  [(VideosExtrasSlideshowTemplateViewController *)&v4 viewWillDisappear:disappear];
  if (self->_overlayHidden)
  {
    [(VideosExtrasSlideshowTemplateViewController *)self _toggleVisibilityOfNavigationBar];
  }
}

- (IKSlideshowElement)templateElement
{
  document = [(VideosExtrasTemplateViewController *)self document];
  templateElement = [document templateElement];

  return templateElement;
}

- (unint64_t)numberOfImagesForSlideshowViewController:(id)controller
{
  imageElements = [(VideosExtrasSlideshowTemplateViewController *)self imageElements];
  v4 = [imageElements count];

  return v4;
}

- (void)slideshowViewController:(id)controller loadImageAtIndex:(unint64_t)index withCompletionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  imageElements = [(VideosExtrasSlideshowTemplateViewController *)self imageElements];
  v11 = [imageElements objectAtIndex:index];

  view = [(VideosExtrasSlideshowTemplateViewController *)self view];
  [view bounds];
  v14 = v13;
  v16 = v15;
  [view clearArtworkCatalogs];
  artworkCatalog = [v11 artworkCatalog];
  [artworkCatalog setFittingSize:{v14, v16}];
  v18 = objc_alloc_init(VideosExtrasSlideshowArtworkCatalogHelper);
  [(VideosExtrasSlideshowArtworkCatalogHelper *)v18 setArtworkCatalog:artworkCatalog];
  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __110__VideosExtrasSlideshowTemplateViewController_slideshowViewController_loadImageAtIndex_withCompletionHandler___block_invoke;
  v21[3] = &unk_1E8731888;
  v19 = v18;
  v22 = v19;
  v20 = handlerCopy;
  v23 = v20;
  objc_copyWeak(&v24, &location);
  [artworkCatalog setDestination:view configurationBlock:v21];
  objc_destroyWeak(&v24);

  objc_destroyWeak(&location);
}

void __110__VideosExtrasSlideshowTemplateViewController_slideshowViewController_loadImageAtIndex_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) artworkCatalog];

    if (v6)
    {
      (*(*(a1 + 40) + 16))();
      [*(a1 + 32) setArtworkCatalog:0];
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      [WeakRetained _firstImageLoadedHideNavigationBar];
    }
  }
}

- (void)prepareZoomingImageTransitionWithContext:(id)context
{
  contextCopy = context;
  slideshowViewController = [(VideosExtrasSlideshowTemplateViewController *)self slideshowViewController];
  [slideshowViewController prepareZoomingImageTransitionWithContext:contextCopy];
}

- (void)performZoomingImageTransitionWithContext:(id)context
{
  contextCopy = context;
  slideshowViewController = [(VideosExtrasSlideshowTemplateViewController *)self slideshowViewController];
  [slideshowViewController performZoomingImageTransitionWithContext:contextCopy];
}

- (void)finalizeZoomingImageTransitionWithContext:(id)context transitionFinished:(BOOL)finished
{
  finishedCopy = finished;
  contextCopy = context;
  slideshowViewController = [(VideosExtrasSlideshowTemplateViewController *)self slideshowViewController];
  [slideshowViewController finalizeZoomingImageTransitionWithContext:contextCopy transitionFinished:finishedCopy];
}

- (BOOL)shouldPerformZoomingImageTransitionFromImageElement:(id)element toImageAtIndex:(unint64_t)index
{
  elementCopy = element;
  slideshowViewController = [(VideosExtrasSlideshowTemplateViewController *)self slideshowViewController];
  if ([slideshowViewController isAnimatingTransition])
  {
    v8 = 0;
  }

  else
  {
    imageElements = [(VideosExtrasSlideshowTemplateViewController *)self imageElements];
    if ([imageElements count] <= index)
    {
      v8 = 0;
    }

    else
    {
      v10 = [imageElements objectAtIndex:index];
      bestURL = [v10 bestURL];
      bestURL2 = [elementCopy bestURL];
      v8 = [bestURL isEqual:bestURL2];
    }
  }

  return v8;
}

- (void)_firstImageLoadedHideNavigationBar
{
  if (!self->_preventNavbarAutohide)
  {
    self->_preventNavbarAutohide = 1;
    navigationController = [(VideosExtrasSlideshowTemplateViewController *)self navigationController];
    v5 = navigationController;
    if (navigationController)
    {
      v7 = navigationController;
      isNavigationBarHidden = [navigationController isNavigationBarHidden];
      v5 = v7;
      if ((isNavigationBarHidden & 1) == 0)
      {
        [(VideosExtrasSlideshowTemplateViewController *)self _toggleVisibilityOfNavigationBar];
        v5 = v7;
      }
    }
  }
}

- (void)_toggleVisibilityOfNavigationBar
{
  self->_overlayHidden ^= 1u;
  navigationController = [(VideosExtrasSlideshowTemplateViewController *)self navigationController];
  if (navigationController)
  {
    [navigationController _setNavigationBarHidden:self->_overlayHidden edge:15 duration:0.3];
    [(VideosExtrasSlideshowTemplateViewController *)self setNeedsStatusBarAppearanceUpdate];
    self->_preventNavbarAutohide = 1;
  }

  context = [(VideosExtrasTemplateViewController *)self context];
  extrasRootViewController = [context extrasRootViewController];
  mainMenuBar = [extrasRootViewController mainMenuBar];
  [mainMenuBar setHidden:self->_overlayHidden];
}

@end