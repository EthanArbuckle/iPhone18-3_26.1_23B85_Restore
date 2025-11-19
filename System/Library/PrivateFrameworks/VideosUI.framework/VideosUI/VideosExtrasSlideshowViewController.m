@interface VideosExtrasSlideshowViewController
- (VideosExtrasSlideshowViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (VideosExtrasSlideshowViewControllerDataSource)dataSource;
- (double)transitionInterval;
- (unint64_t)_numberOfImages;
- (void)_invalidateTransitionTimer;
- (void)_loadImageContainerViewIfAppropriateWithImage:(id)a3;
- (void)_performDissolveTransition;
- (void)_performInstantaneousTransition;
- (void)_performPushTransition;
- (void)_performWipeTransition;
- (void)_prepareNextImageAndScheduleTransitionTimerIfAppropriate;
- (void)_reload;
- (void)_scheduleTransitionTimer;
- (void)_transitionDidComplete;
- (void)_transitionTimerDidFire:(id)a3;
- (void)_transitionToNextImageIfAppropriate;
- (void)dealloc;
- (void)finalizeZoomingImageTransitionWithContext:(id)a3 transitionFinished:(BOOL)a4;
- (void)performZoomingImageTransitionWithContext:(id)a3;
- (void)prepareZoomingImageTransitionWithContext:(id)a3;
- (void)setDataSource:(id)a3;
- (void)setVisibleImageIndex:(unint64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation VideosExtrasSlideshowViewController

- (VideosExtrasSlideshowViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = VideosExtrasSlideshowViewController;
  result = [(VideosExtrasSlideshowViewController *)&v5 initWithNibName:a3 bundle:a4];
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

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VideosExtrasSlideshowViewController;
  [(VideosExtrasSlideshowViewController *)&v4 viewDidAppear:a3];
  [(VideosExtrasSlideshowViewController *)self setViewVisible:1];
  [(VideosExtrasSlideshowViewController *)self _prepareNextImageAndScheduleTransitionTimerIfAppropriate];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VideosExtrasSlideshowViewController;
  [(VideosExtrasSlideshowViewController *)&v4 viewDidDisappear:a3];
  [(VideosExtrasSlideshowViewController *)self setViewVisible:0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = VideosExtrasSlideshowViewController;
  [(VideosExtrasSlideshowViewController *)&v3 viewDidLoad];
  [(VideosExtrasSlideshowViewController *)self _loadImageContainerViewIfAppropriateWithImage:0];
}

- (void)prepareZoomingImageTransitionWithContext:(id)a3
{
  v8 = a3;
  v4 = [(VideosExtrasSlideshowViewController *)self imageContainerView];
  v5 = [v4 artworkView];

  if ([v8 appearState] == 1)
  {
    v6 = [v8 zoomingImageView];
    [v6 replicateStateFromImageView:v5];
  }

  v7 = [(VideosExtrasSlideshowViewController *)self view];
  [v7 setHidden:1];
}

- (void)performZoomingImageTransitionWithContext:(id)a3
{
  v7 = a3;
  if (![v7 appearState])
  {
    v4 = [v7 zoomingImageView];
    v5 = [(VideosExtrasSlideshowViewController *)self imageContainerView];
    v6 = [v5 artworkView];
    [v4 replicateStateFromImageView:v6];
  }
}

- (void)finalizeZoomingImageTransitionWithContext:(id)a3 transitionFinished:(BOOL)a4
{
  v4 = [(VideosExtrasSlideshowViewController *)self view:a3];
  [v4 setHidden:0];
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(VideosExtrasSlideshowViewController *)self _reload];
    v5 = obj;
  }
}

- (void)setVisibleImageIndex:(unint64_t)a3
{
  if (self->_visibleImageIndex != a3)
  {
    self->_visibleImageIndex = a3;
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
  v3 = [(VideosExtrasSlideshowViewController *)self transitionTimer];
  [v3 invalidate];

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

- (void)_transitionTimerDidFire:(id)a3
{
  [(VideosExtrasSlideshowViewController *)self _invalidateTransitionTimer];

  [(VideosExtrasSlideshowViewController *)self _transitionToNextImageIfAppropriate];
}

- (void)_performDissolveTransition
{
  v19 = [(VideosExtrasSlideshowViewController *)self imageContainerView];
  [(VideosExtrasSlideshowViewController *)self setDisappearingImageContainerView:v19];
  v3 = [(VideosExtrasSlideshowViewController *)self nextImage];
  [(VideosExtrasSlideshowViewController *)self _loadImageContainerViewIfAppropriateWithImage:v3];

  v4 = [(VideosExtrasSlideshowViewController *)self view];
  [v4 bringSubviewToFront:v19];

  v5 = [v19 layer];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = objc_alloc_init(MEMORY[0x1E6979398]);
  v15 = [MEMORY[0x1E69DC888] clearColor];
  [v14 setBackgroundColor:{objc_msgSend(v15, "CGColor")}];

  [v14 setFrame:{v7, v9, v11, v13}];
  [v5 setMask:v14];
  v16 = [MEMORY[0x1E6979318] animationWithKeyPath:@"backgroundColor"];
  v17 = [MEMORY[0x1E69DC888] blackColor];
  [v16 setFromValue:{objc_msgSend(v17, "CGColor")}];

  [v16 setToValue:{objc_msgSend(v14, "backgroundColor")}];
  [v16 setDuration:0.5];
  v18 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v16 setTimingFunction:v18];

  [v16 setDelegate:self];
  [v14 addAnimation:v16 forKey:@"dissolve"];
}

- (void)_performInstantaneousTransition
{
  v3 = [(VideosExtrasSlideshowViewController *)self imageContainerView];
  [(VideosExtrasSlideshowViewController *)self setDisappearingImageContainerView:v3];

  v4 = [(VideosExtrasSlideshowViewController *)self nextImage];
  [(VideosExtrasSlideshowViewController *)self _loadImageContainerViewIfAppropriateWithImage:v4];

  [(VideosExtrasSlideshowViewController *)self _transitionDidComplete];
}

- (void)_performPushTransition
{
  v3 = [(VideosExtrasSlideshowViewController *)self imageContainerView];
  [(VideosExtrasSlideshowViewController *)self setDisappearingImageContainerView:v3];
  v4 = [(VideosExtrasSlideshowViewController *)self nextImage];
  [(VideosExtrasSlideshowViewController *)self _loadImageContainerViewIfAppropriateWithImage:v4];

  v5 = [(VideosExtrasSlideshowViewController *)self imageContainerView];
  v6 = [(VideosExtrasSlideshowViewController *)self view];
  [v6 bounds];
  Width = CGRectGetWidth(v26);

  v8 = Width + 60.0;
  [v5 center];
  v10 = v9;
  v12 = v8 + v11;
  [v5 setCenter:v8 + v11];
  [v3 center];
  v13 = MEMORY[0x1E69DD250];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__VideosExtrasSlideshowViewController__performPushTransition__block_invoke;
  v19[3] = &unk_1E8730238;
  v22 = v12 - v8;
  v23 = v10;
  v20 = v5;
  v21 = v3;
  v24 = v14 - v8;
  v25 = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__VideosExtrasSlideshowViewController__performPushTransition__block_invoke_2;
  v18[3] = &unk_1E872F758;
  v18[4] = self;
  v16 = v3;
  v17 = v5;
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
  v3 = [(VideosExtrasSlideshowViewController *)self imageContainerView];
  [(VideosExtrasSlideshowViewController *)self setDisappearingImageContainerView:v3];
  v4 = [(VideosExtrasSlideshowViewController *)self nextImage];
  [(VideosExtrasSlideshowViewController *)self _loadImageContainerViewIfAppropriateWithImage:v4];

  v5 = [(VideosExtrasSlideshowViewController *)self view];
  [v5 bringSubviewToFront:v3];

  v6 = [v3 layer];
  [v6 bounds];
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v11 = 20.0 / CGRectGetWidth(v29);
  v12 = v11 + 1.0;
  v13 = -v11;
  v14 = objc_alloc_init(MEMORY[0x1E6979380]);
  v15 = [MEMORY[0x1E69DC888] clearColor];
  v28[0] = [v15 CGColor];
  v16 = [MEMORY[0x1E69DC888] blackColor];
  v28[1] = [v16 CGColor];
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  [v14 setColors:v17];

  [v14 setStartPoint:{0.0, 0.5}];
  [v14 setEndPoint:{v13, 0.5}];
  [v14 setFrame:{x, y, width, height}];
  [v6 setMask:v14];
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
  v3 = [(VideosExtrasSlideshowViewController *)self disappearingImageContainerView];
  [v3 removeFromSuperview];

  [(VideosExtrasSlideshowViewController *)self setDisappearingImageContainerView:0];

  [(VideosExtrasSlideshowViewController *)self setAnimatingTransition:0];
}

- (void)_loadImageContainerViewIfAppropriateWithImage:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasSlideshowViewController *)self visibleImageIndex];
  v6 = [(VideosExtrasSlideshowViewController *)self _numberOfImages];
  if (v4 || v5 < v6)
  {
    v7 = [(VideosExtrasSlideshowViewController *)self view];
    [v7 bounds];
    v12 = [[VideosExtrasConstrainedArtworkContainerView alloc] initWithFrame:v8, v9, v10, v11];
    [(VideosExtrasConstrainedArtworkContainerView *)v12 setAutoresizingMask:18];
    v13 = [MEMORY[0x1E69DC888] blackColor];
    [(VideosExtrasConstrainedArtworkContainerView *)v12 setBackgroundColor:v13];

    [(VideosExtrasConstrainedArtworkContainerView *)v12 setShouldAutoresizeMaskLayerToFillBounds:1];
    [v7 addSubview:v12];
    [(VideosExtrasSlideshowViewController *)self setImageContainerView:v12];
    if (v4)
    {
      v14 = [(VideosExtrasConstrainedArtworkContainerView *)v12 artworkView];
      [v14 setImage:v4];
    }

    else
    {
      v15 = [(VideosExtrasSlideshowViewController *)self dataSource];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __85__VideosExtrasSlideshowViewController__loadImageContainerViewIfAppropriateWithImage___block_invoke;
      v16[3] = &unk_1E872FCC0;
      v17 = v12;
      [v15 slideshowViewController:self loadImageAtIndex:v5 withCompletionHandler:v16];
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
  v3 = [(VideosExtrasSlideshowViewController *)self dataSource];
  v4 = [v3 numberOfImagesForSlideshowViewController:self];

  return v4;
}

- (void)_prepareNextImageAndScheduleTransitionTimerIfAppropriate
{
  if ([(VideosExtrasSlideshowViewController *)self isViewVisible])
  {
    v3 = [(VideosExtrasSlideshowViewController *)self visibleImageIndex];
    v4 = [(VideosExtrasSlideshowViewController *)self _numberOfImages];
    if (v3 < v4)
    {
      v5 = v4;
      [(VideosExtrasSlideshowViewController *)self setNextImage:0];
      [(VideosExtrasSlideshowViewController *)self _scheduleTransitionTimer];
      if (v3 + 1 == v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = v3 + 1;
      }

      v7 = [(VideosExtrasSlideshowViewController *)self dataSource];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __95__VideosExtrasSlideshowViewController__prepareNextImageAndScheduleTransitionTimerIfAppropriate__block_invoke;
      v9[3] = &unk_1E8730260;
      v10 = v7;
      v11 = v3;
      v9[4] = self;
      v8 = v7;
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
    v3 = [(VideosExtrasSlideshowViewController *)self imageContainerView];
    [v3 removeFromSuperview];

    [(VideosExtrasSlideshowViewController *)self setImageContainerView:0];
    [(VideosExtrasSlideshowViewController *)self _invalidateTransitionTimer];
    [(VideosExtrasSlideshowViewController *)self _loadImageContainerViewIfAppropriateWithImage:0];

    [(VideosExtrasSlideshowViewController *)self _prepareNextImageAndScheduleTransitionTimerIfAppropriate];
  }
}

- (void)_transitionToNextImageIfAppropriate
{
  v8 = [(VideosExtrasSlideshowViewController *)self nextImage];
  v3 = [(VideosExtrasSlideshowViewController *)self _numberOfImages];
  v4 = v8;
  if (v8)
  {
    v5 = v3;
    if (self->_visibleImageIndex < v3)
    {
      v6 = [(VideosExtrasSlideshowViewController *)self isViewVisible];
      v4 = v8;
      if (v6)
      {
        self->_visibleImageIndex = (self->_visibleImageIndex + 1) % v5;
        [(VideosExtrasSlideshowViewController *)self setAnimatingTransition:1];
        v7 = [(VideosExtrasSlideshowViewController *)self transitionStyle];
        if (v7 > 1)
        {
          if (v7 == 2)
          {
            [(VideosExtrasSlideshowViewController *)self _performPushTransition];
          }

          else if (v7 == 3)
          {
            [(VideosExtrasSlideshowViewController *)self _performWipeTransition];
          }
        }

        else if (v7)
        {
          if (v7 == 1)
          {
            [(VideosExtrasSlideshowViewController *)self _performDissolveTransition];
          }
        }

        else
        {
          [(VideosExtrasSlideshowViewController *)self _performInstantaneousTransition];
        }

        [(VideosExtrasSlideshowViewController *)self _prepareNextImageAndScheduleTransitionTimerIfAppropriate];
        v4 = v8;
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