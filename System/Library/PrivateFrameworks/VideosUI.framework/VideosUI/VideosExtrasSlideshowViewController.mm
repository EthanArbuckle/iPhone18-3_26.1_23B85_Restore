@interface VideosExtrasSlideshowViewController
- (VideosExtrasSlideshowViewController)initWithNibName:(id)name bundle:(id)bundle;
- (VideosExtrasSlideshowViewControllerDataSource)dataSource;
- (double)transitionInterval;
- (unint64_t)_numberOfImages;
- (void)_invalidateTransitionTimer;
- (void)_loadImageContainerViewIfAppropriateWithImage:(id)image;
- (void)_performDissolveTransition;
- (void)_performInstantaneousTransition;
- (void)_performPushTransition;
- (void)_performWipeTransition;
- (void)_prepareNextImageAndScheduleTransitionTimerIfAppropriate;
- (void)_reload;
- (void)_scheduleTransitionTimer;
- (void)_transitionDidComplete;
- (void)_transitionTimerDidFire:(id)fire;
- (void)_transitionToNextImageIfAppropriate;
- (void)dealloc;
- (void)finalizeZoomingImageTransitionWithContext:(id)context transitionFinished:(BOOL)finished;
- (void)performZoomingImageTransitionWithContext:(id)context;
- (void)prepareZoomingImageTransitionWithContext:(id)context;
- (void)setDataSource:(id)source;
- (void)setVisibleImageIndex:(unint64_t)index;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation VideosExtrasSlideshowViewController

- (VideosExtrasSlideshowViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = VideosExtrasSlideshowViewController;
  result = [(VideosExtrasSlideshowViewController *)&v5 initWithNibName:name bundle:bundle];
  if (result)
  {
    result->_visibleImageIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (void)dealloc
{
  [(VideosExtrasSlideshowViewController *)self _invalidateTransitionTimer];
  v3.receiver = self;
  v3.super_class = VideosExtrasSlideshowViewController;
  [(VideosExtrasSlideshowViewController *)&v3 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = VideosExtrasSlideshowViewController;
  [(VideosExtrasSlideshowViewController *)&v4 viewDidAppear:appear];
  [(VideosExtrasSlideshowViewController *)self setViewVisible:1];
  [(VideosExtrasSlideshowViewController *)self _prepareNextImageAndScheduleTransitionTimerIfAppropriate];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = VideosExtrasSlideshowViewController;
  [(VideosExtrasSlideshowViewController *)&v4 viewDidDisappear:disappear];
  [(VideosExtrasSlideshowViewController *)self setViewVisible:0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = VideosExtrasSlideshowViewController;
  [(VideosExtrasSlideshowViewController *)&v3 viewDidLoad];
  [(VideosExtrasSlideshowViewController *)self _loadImageContainerViewIfAppropriateWithImage:0];
}

- (void)prepareZoomingImageTransitionWithContext:(id)context
{
  contextCopy = context;
  imageContainerView = [(VideosExtrasSlideshowViewController *)self imageContainerView];
  artworkView = [imageContainerView artworkView];

  if ([contextCopy appearState] == 1)
  {
    zoomingImageView = [contextCopy zoomingImageView];
    [zoomingImageView replicateStateFromImageView:artworkView];
  }

  view = [(VideosExtrasSlideshowViewController *)self view];
  [view setHidden:1];
}

- (void)performZoomingImageTransitionWithContext:(id)context
{
  contextCopy = context;
  if (![contextCopy appearState])
  {
    zoomingImageView = [contextCopy zoomingImageView];
    imageContainerView = [(VideosExtrasSlideshowViewController *)self imageContainerView];
    artworkView = [imageContainerView artworkView];
    [zoomingImageView replicateStateFromImageView:artworkView];
  }
}

- (void)finalizeZoomingImageTransitionWithContext:(id)context transitionFinished:(BOOL)finished
{
  v4 = [(VideosExtrasSlideshowViewController *)self view:context];
  [v4 setHidden:0];
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(VideosExtrasSlideshowViewController *)self _reload];
    v5 = obj;
  }
}

- (void)setVisibleImageIndex:(unint64_t)index
{
  if (self->_visibleImageIndex != index)
  {
    self->_visibleImageIndex = index;
    [(VideosExtrasSlideshowViewController *)self _reload];
  }
}

- (double)transitionInterval
{
  result = self->_transitionInterval;
  if (result < 2.22044605e-16)
  {
    return 3.0;
  }

  return result;
}

- (void)_invalidateTransitionTimer
{
  transitionTimer = [(VideosExtrasSlideshowViewController *)self transitionTimer];
  [transitionTimer invalidate];

  [(VideosExtrasSlideshowViewController *)self setTransitionTimer:0];
}

- (void)_scheduleTransitionTimer
{
  [(VideosExtrasSlideshowViewController *)self _invalidateTransitionTimer];
  v3 = MEMORY[0x1E695DFF0];
  [(VideosExtrasSlideshowViewController *)self transitionInterval];
  v4 = [v3 scheduledTimerWithTimeInterval:self target:sel__transitionTimerDidFire_ selector:0 userInfo:0 repeats:?];
  [(VideosExtrasSlideshowViewController *)self setTransitionTimer:v4];
}

- (void)_transitionTimerDidFire:(id)fire
{
  [(VideosExtrasSlideshowViewController *)self _invalidateTransitionTimer];

  [(VideosExtrasSlideshowViewController *)self _transitionToNextImageIfAppropriate];
}

- (void)_performDissolveTransition
{
  imageContainerView = [(VideosExtrasSlideshowViewController *)self imageContainerView];
  [(VideosExtrasSlideshowViewController *)self setDisappearingImageContainerView:imageContainerView];
  nextImage = [(VideosExtrasSlideshowViewController *)self nextImage];
  [(VideosExtrasSlideshowViewController *)self _loadImageContainerViewIfAppropriateWithImage:nextImage];

  view = [(VideosExtrasSlideshowViewController *)self view];
  [view bringSubviewToFront:imageContainerView];

  layer = [imageContainerView layer];
  [layer bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = objc_alloc_init(MEMORY[0x1E6979398]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v14 setBackgroundColor:{objc_msgSend(clearColor, "CGColor")}];

  [v14 setFrame:{v7, v9, v11, v13}];
  [layer setMask:v14];
  v16 = [MEMORY[0x1E6979318] animationWithKeyPath:@"backgroundColor"];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [v16 setFromValue:{objc_msgSend(blackColor, "CGColor")}];

  [v16 setToValue:{objc_msgSend(v14, "backgroundColor")}];
  [v16 setDuration:0.5];
  v18 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v16 setTimingFunction:v18];

  [v16 setDelegate:self];
  [v14 addAnimation:v16 forKey:@"dissolve"];
}

- (void)_performInstantaneousTransition
{
  imageContainerView = [(VideosExtrasSlideshowViewController *)self imageContainerView];
  [(VideosExtrasSlideshowViewController *)self setDisappearingImageContainerView:imageContainerView];

  nextImage = [(VideosExtrasSlideshowViewController *)self nextImage];
  [(VideosExtrasSlideshowViewController *)self _loadImageContainerViewIfAppropriateWithImage:nextImage];

  [(VideosExtrasSlideshowViewController *)self _transitionDidComplete];
}

- (void)_performPushTransition
{
  imageContainerView = [(VideosExtrasSlideshowViewController *)self imageContainerView];
  [(VideosExtrasSlideshowViewController *)self setDisappearingImageContainerView:imageContainerView];
  nextImage = [(VideosExtrasSlideshowViewController *)self nextImage];
  [(VideosExtrasSlideshowViewController *)self _loadImageContainerViewIfAppropriateWithImage:nextImage];

  imageContainerView2 = [(VideosExtrasSlideshowViewController *)self imageContainerView];
  view = [(VideosExtrasSlideshowViewController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v26);

  v8 = Width + 60.0;
  [imageContainerView2 center];
  v10 = v9;
  v12 = v8 + v11;
  [imageContainerView2 setCenter:v8 + v11];
  [imageContainerView center];
  v13 = MEMORY[0x1E69DD250];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__VideosExtrasSlideshowViewController__performPushTransition__block_invoke;
  v19[3] = &unk_1E8730238;
  v22 = v12 - v8;
  v23 = v10;
  v20 = imageContainerView2;
  v21 = imageContainerView;
  v24 = v14 - v8;
  v25 = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__VideosExtrasSlideshowViewController__performPushTransition__block_invoke_2;
  v18[3] = &unk_1E872F758;
  v18[4] = self;
  v16 = imageContainerView;
  v17 = imageContainerView2;
  [v13 animateWithDuration:v19 animations:v18 completion:0.5];
}

uint64_t __61__VideosExtrasSlideshowViewController__performPushTransition__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCenter:{*(a1 + 48), *(a1 + 56)}];
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);

  return [v2 setCenter:{v3, v4}];
}

- (void)_performWipeTransition
{
  v28[2] = *MEMORY[0x1E69E9840];
  imageContainerView = [(VideosExtrasSlideshowViewController *)self imageContainerView];
  [(VideosExtrasSlideshowViewController *)self setDisappearingImageContainerView:imageContainerView];
  nextImage = [(VideosExtrasSlideshowViewController *)self nextImage];
  [(VideosExtrasSlideshowViewController *)self _loadImageContainerViewIfAppropriateWithImage:nextImage];

  view = [(VideosExtrasSlideshowViewController *)self view];
  [view bringSubviewToFront:imageContainerView];

  layer = [imageContainerView layer];
  [layer bounds];
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v11 = 20.0 / CGRectGetWidth(v29);
  v12 = v11 + 1.0;
  v13 = -v11;
  v14 = objc_alloc_init(MEMORY[0x1E6979380]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v28[0] = [clearColor CGColor];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v28[1] = [blackColor CGColor];
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  [v14 setColors:v17];

  [v14 setStartPoint:{0.0, 0.5}];
  [v14 setEndPoint:{v13, 0.5}];
  [v14 setFrame:{x, y, width, height}];
  [layer setMask:v14];
  v18 = [MEMORY[0x1E6979318] animationWithKeyPath:@"startPoint"];
  v19 = [MEMORY[0x1E696B098] valueWithCGPoint:{v12, 0.5}];
  [v18 setFromValue:v19];

  v20 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.0, 0.5}];
  [v18 setToValue:v20];

  v21 = [MEMORY[0x1E6979318] animationWithKeyPath:@"endPoint"];
  v22 = [MEMORY[0x1E696B098] valueWithCGPoint:{1.0, 0.5}];
  [v21 setFromValue:v22];

  v23 = [MEMORY[0x1E696B098] valueWithCGPoint:{v13, 0.5}];
  [v21 setToValue:v23];

  v24 = objc_alloc_init(MEMORY[0x1E6979308]);
  v27[0] = v18;
  v27[1] = v21;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  [v24 setAnimations:v25];

  [v24 setDuration:0.5];
  v26 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v24 setTimingFunction:v26];

  [v24 setDelegate:self];
  [v14 addAnimation:v24 forKey:@"wipe"];
}

- (void)_transitionDidComplete
{
  disappearingImageContainerView = [(VideosExtrasSlideshowViewController *)self disappearingImageContainerView];
  [disappearingImageContainerView removeFromSuperview];

  [(VideosExtrasSlideshowViewController *)self setDisappearingImageContainerView:0];

  [(VideosExtrasSlideshowViewController *)self setAnimatingTransition:0];
}

- (void)_loadImageContainerViewIfAppropriateWithImage:(id)image
{
  imageCopy = image;
  visibleImageIndex = [(VideosExtrasSlideshowViewController *)self visibleImageIndex];
  _numberOfImages = [(VideosExtrasSlideshowViewController *)self _numberOfImages];
  if (imageCopy || visibleImageIndex < _numberOfImages)
  {
    view = [(VideosExtrasSlideshowViewController *)self view];
    [view bounds];
    v12 = [[VideosExtrasConstrainedArtworkContainerView alloc] initWithFrame:v8, v9, v10, v11];
    [(VideosExtrasConstrainedArtworkContainerView *)v12 setAutoresizingMask:18];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(VideosExtrasConstrainedArtworkContainerView *)v12 setBackgroundColor:blackColor];

    [(VideosExtrasConstrainedArtworkContainerView *)v12 setShouldAutoresizeMaskLayerToFillBounds:1];
    [view addSubview:v12];
    [(VideosExtrasSlideshowViewController *)self setImageContainerView:v12];
    if (imageCopy)
    {
      artworkView = [(VideosExtrasConstrainedArtworkContainerView *)v12 artworkView];
      [artworkView setImage:imageCopy];
    }

    else
    {
      dataSource = [(VideosExtrasSlideshowViewController *)self dataSource];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __85__VideosExtrasSlideshowViewController__loadImageContainerViewIfAppropriateWithImage___block_invoke;
      v16[3] = &unk_1E872FCC0;
      v17 = v12;
      [dataSource slideshowViewController:self loadImageAtIndex:visibleImageIndex withCompletionHandler:v16];
    }
  }
}

void __85__VideosExtrasSlideshowViewController__loadImageContainerViewIfAppropriateWithImage___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 artworkView];
  [v4 setImage:v3];
}

- (unint64_t)_numberOfImages
{
  dataSource = [(VideosExtrasSlideshowViewController *)self dataSource];
  v4 = [dataSource numberOfImagesForSlideshowViewController:self];

  return v4;
}

- (void)_prepareNextImageAndScheduleTransitionTimerIfAppropriate
{
  if ([(VideosExtrasSlideshowViewController *)self isViewVisible])
  {
    visibleImageIndex = [(VideosExtrasSlideshowViewController *)self visibleImageIndex];
    _numberOfImages = [(VideosExtrasSlideshowViewController *)self _numberOfImages];
    if (visibleImageIndex < _numberOfImages)
    {
      v5 = _numberOfImages;
      [(VideosExtrasSlideshowViewController *)self setNextImage:0];
      [(VideosExtrasSlideshowViewController *)self _scheduleTransitionTimer];
      if (visibleImageIndex + 1 == v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = visibleImageIndex + 1;
      }

      dataSource = [(VideosExtrasSlideshowViewController *)self dataSource];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __95__VideosExtrasSlideshowViewController__prepareNextImageAndScheduleTransitionTimerIfAppropriate__block_invoke;
      v9[3] = &unk_1E8730260;
      v10 = dataSource;
      v11 = visibleImageIndex;
      v9[4] = self;
      v8 = dataSource;
      [v8 slideshowViewController:self loadImageAtIndex:v6 withCompletionHandler:v9];
    }
  }
}

void __95__VideosExtrasSlideshowViewController__prepareNextImageAndScheduleTransitionTimerIfAppropriate__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([*(a1 + 32) visibleImageIndex] == *(a1 + 48))
  {
    v3 = [*(a1 + 32) dataSource];
    v4 = *(a1 + 40);

    if (v3 == v4)
    {
      [*(a1 + 32) setNextImage:v6];
      v5 = [*(a1 + 32) transitionTimer];

      if (!v5)
      {
        [*(a1 + 32) _transitionToNextImageIfAppropriate];
      }
    }
  }
}

- (void)_reload
{
  if ([(VideosExtrasSlideshowViewController *)self isViewLoaded])
  {
    imageContainerView = [(VideosExtrasSlideshowViewController *)self imageContainerView];
    [imageContainerView removeFromSuperview];

    [(VideosExtrasSlideshowViewController *)self setImageContainerView:0];
    [(VideosExtrasSlideshowViewController *)self _invalidateTransitionTimer];
    [(VideosExtrasSlideshowViewController *)self _loadImageContainerViewIfAppropriateWithImage:0];

    [(VideosExtrasSlideshowViewController *)self _prepareNextImageAndScheduleTransitionTimerIfAppropriate];
  }
}

- (void)_transitionToNextImageIfAppropriate
{
  nextImage = [(VideosExtrasSlideshowViewController *)self nextImage];
  _numberOfImages = [(VideosExtrasSlideshowViewController *)self _numberOfImages];
  v4 = nextImage;
  if (nextImage)
  {
    v5 = _numberOfImages;
    if (self->_visibleImageIndex < _numberOfImages)
    {
      isViewVisible = [(VideosExtrasSlideshowViewController *)self isViewVisible];
      v4 = nextImage;
      if (isViewVisible)
      {
        self->_visibleImageIndex = (self->_visibleImageIndex + 1) % v5;
        [(VideosExtrasSlideshowViewController *)self setAnimatingTransition:1];
        transitionStyle = [(VideosExtrasSlideshowViewController *)self transitionStyle];
        if (transitionStyle > 1)
        {
          if (transitionStyle == 2)
          {
            [(VideosExtrasSlideshowViewController *)self _performPushTransition];
          }

          else if (transitionStyle == 3)
          {
            [(VideosExtrasSlideshowViewController *)self _performWipeTransition];
          }
        }

        else if (transitionStyle)
        {
          if (transitionStyle == 1)
          {
            [(VideosExtrasSlideshowViewController *)self _performDissolveTransition];
          }
        }

        else
        {
          [(VideosExtrasSlideshowViewController *)self _performInstantaneousTransition];
        }

        [(VideosExtrasSlideshowViewController *)self _prepareNextImageAndScheduleTransitionTimerIfAppropriate];
        v4 = nextImage;
      }
    }
  }
}

- (VideosExtrasSlideshowViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end