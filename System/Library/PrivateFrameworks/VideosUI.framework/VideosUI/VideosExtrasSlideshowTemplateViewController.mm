@interface VideosExtrasSlideshowTemplateViewController
- (BOOL)prefersStatusBarHidden;
- (BOOL)shouldPerformZoomingImageTransitionFromImageElement:(id)a3 toImageAtIndex:(unint64_t)a4;
- (IKSlideshowElement)templateElement;
- (VideosExtrasSlideshowTemplateViewController)initWithDocument:(id)a3 options:(id)a4 context:(id)a5;
- (unint64_t)numberOfImagesForSlideshowViewController:(id)a3;
- (void)_firstImageLoadedHideNavigationBar;
- (void)_toggleVisibilityOfNavigationBar;
- (void)dealloc;
- (void)finalizeZoomingImageTransitionWithContext:(id)a3 transitionFinished:(BOOL)a4;
- (void)performZoomingImageTransitionWithContext:(id)a3;
- (void)prepareZoomingImageTransitionWithContext:(id)a3;
- (void)slideshowViewController:(id)a3 loadImageAtIndex:(unint64_t)a4 withCompletionHandler:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation VideosExtrasSlideshowTemplateViewController

- (VideosExtrasSlideshowTemplateViewController)initWithDocument:(id)a3 options:(id)a4 context:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = VideosExtrasSlideshowTemplateViewController;
  v5 = [(VideosExtrasTemplateViewController *)&v27 initWithDocument:a3 options:a4 context:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(VideosExtrasSlideshowTemplateViewController *)v5 templateElement];
    v8 = [v7 transition];
    if ((v8 - 2) >= 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 - 1;
    }

    [v7 transitionInterval];
    if (v10 >= 2.22044605e-16)
    {
      v11 = v10;
    }

    else
    {
      v11 = 3.0;
    }

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = [v7 images];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
            objc_enumerationMutation(v13);
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
        v15 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
    v20 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
    v21 = [v20 localizedStringForKey:@"SLIDESHOW_TITLE" value:0 table:@"VideosExtras"];
    [(VideosExtrasSlideshowTemplateViewController *)v6 setTitle:v21];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [(VideosExtrasSlideshowTemplateViewController *)self slideshowViewController];
  [v3 willMoveToParentViewController:0];
  if ([v3 isViewLoaded])
  {
    v4 = [v3 view];
    [v4 removeFromSuperview];
  }

  [v3 removeFromParentViewController];
  [v3 setDataSource:0];
  v5 = [(VideosExtrasSlideshowTemplateViewController *)self tapGestureRecognizer];
  [v5 removeTarget:self action:0];

  v6.receiver = self;
  v6.super_class = VideosExtrasSlideshowTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v6 dealloc];
}

- (BOOL)prefersStatusBarHidden
{
  v2 = [(VideosExtrasSlideshowTemplateViewController *)self navigationController];
  v3 = [v2 isNavigationBarHidden];

  return v3;
}

- (void)viewWillAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = VideosExtrasSlideshowTemplateViewController;
  [(VideosExtrasElementViewController *)&v12 viewWillAppear:a3];
  v4 = [(VideosExtrasSlideshowTemplateViewController *)self navigationController];
  v5 = [v4 viewControllers];
  v6 = [v5 mutableCopy];

  v7 = [v6 lastObject];

  if (v7 == self)
  {
    [v6 removeLastObject];
  }

  v8 = [v6 lastObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    v10 = [(VideosExtrasSlideshowTemplateViewController *)self slideshowViewController];
    v11 = [v9 indexOfVisibleItem];

    [v10 setVisibleImageIndex:v11];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = VideosExtrasSlideshowTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v3 viewDidAppear:a3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = VideosExtrasSlideshowTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v5 viewDidDisappear:a3];
  v4 = [(VideosExtrasSlideshowTemplateViewController *)self view];
  [v4 clearArtworkCatalogs];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = VideosExtrasSlideshowTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v10 viewDidLoad];
  v3 = [(VideosExtrasSlideshowTemplateViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [(VideosExtrasSlideshowTemplateViewController *)self slideshowViewController];
  v6 = [v5 view];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v6];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v6 toView:v3 alongEdges:15 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  [v7 addObjectsFromArray:v8];

  [v3 addConstraints:v7];
  v9 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTap_];
  [v3 addGestureRecognizer:v9];
  [(VideosExtrasSlideshowTemplateViewController *)self setTapGestureRecognizer:v9];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VideosExtrasSlideshowTemplateViewController;
  [(VideosExtrasSlideshowTemplateViewController *)&v4 viewWillDisappear:a3];
  if (self->_overlayHidden)
  {
    [(VideosExtrasSlideshowTemplateViewController *)self _toggleVisibilityOfNavigationBar];
  }
}

- (IKSlideshowElement)templateElement
{
  v2 = [(VideosExtrasTemplateViewController *)self document];
  v3 = [v2 templateElement];

  return v3;
}

- (unint64_t)numberOfImagesForSlideshowViewController:(id)a3
{
  v3 = [(VideosExtrasSlideshowTemplateViewController *)self imageElements];
  v4 = [v3 count];

  return v4;
}

- (void)slideshowViewController:(id)a3 loadImageAtIndex:(unint64_t)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(VideosExtrasSlideshowTemplateViewController *)self imageElements];
  v11 = [v10 objectAtIndex:a4];

  v12 = [(VideosExtrasSlideshowTemplateViewController *)self view];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  [v12 clearArtworkCatalogs];
  v17 = [v11 artworkCatalog];
  [v17 setFittingSize:{v14, v16}];
  v18 = objc_alloc_init(VideosExtrasSlideshowArtworkCatalogHelper);
  [(VideosExtrasSlideshowArtworkCatalogHelper *)v18 setArtworkCatalog:v17];
  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __110__VideosExtrasSlideshowTemplateViewController_slideshowViewController_loadImageAtIndex_withCompletionHandler___block_invoke;
  v21[3] = &unk_1E8731888;
  v19 = v18;
  v22 = v19;
  v20 = v9;
  v23 = v20;
  objc_copyWeak(&v24, &location);
  [v17 setDestination:v12 configurationBlock:v21];
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

- (void)prepareZoomingImageTransitionWithContext:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasSlideshowTemplateViewController *)self slideshowViewController];
  [v5 prepareZoomingImageTransitionWithContext:v4];
}

- (void)performZoomingImageTransitionWithContext:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasSlideshowTemplateViewController *)self slideshowViewController];
  [v5 performZoomingImageTransitionWithContext:v4];
}

- (void)finalizeZoomingImageTransitionWithContext:(id)a3 transitionFinished:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(VideosExtrasSlideshowTemplateViewController *)self slideshowViewController];
  [v7 finalizeZoomingImageTransitionWithContext:v6 transitionFinished:v4];
}

- (BOOL)shouldPerformZoomingImageTransitionFromImageElement:(id)a3 toImageAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(VideosExtrasSlideshowTemplateViewController *)self slideshowViewController];
  if ([v7 isAnimatingTransition])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(VideosExtrasSlideshowTemplateViewController *)self imageElements];
    if ([v9 count] <= a4)
    {
      v8 = 0;
    }

    else
    {
      v10 = [v9 objectAtIndex:a4];
      v11 = [v10 bestURL];
      v12 = [v6 bestURL];
      v8 = [v11 isEqual:v12];
    }
  }

  return v8;
}

- (void)_firstImageLoadedHideNavigationBar
{
  if (!self->_preventNavbarAutohide)
  {
    self->_preventNavbarAutohide = 1;
    v4 = [(VideosExtrasSlideshowTemplateViewController *)self navigationController];
    v5 = v4;
    if (v4)
    {
      v7 = v4;
      v6 = [v4 isNavigationBarHidden];
      v5 = v7;
      if ((v6 & 1) == 0)
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
  v6 = [(VideosExtrasSlideshowTemplateViewController *)self navigationController];
  if (v6)
  {
    [v6 _setNavigationBarHidden:self->_overlayHidden edge:15 duration:0.3];
    [(VideosExtrasSlideshowTemplateViewController *)self setNeedsStatusBarAppearanceUpdate];
    self->_preventNavbarAutohide = 1;
  }

  v3 = [(VideosExtrasTemplateViewController *)self context];
  v4 = [v3 extrasRootViewController];
  v5 = [v4 mainMenuBar];
  [v5 setHidden:self->_overlayHidden];
}

@end