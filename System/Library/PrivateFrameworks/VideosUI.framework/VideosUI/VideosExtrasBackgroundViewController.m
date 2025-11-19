@interface VideosExtrasBackgroundViewController
+ (id)vignetteImageForType:(unint64_t)a3;
- (VideosExtrasBackgroundViewController)initWithBackgroundElement:(id)a3;
- (VideosExtrasBackgroundViewController)initWithBackgroundElements:(id)a3;
- (void)_didReceiveImage:(id)a3;
- (void)_initVignette;
- (void)_invalidateTimer;
- (void)_scheduleTimerIfNeeded;
- (void)_updateConstraintsForImageSize:(CGSize)a3 position:(unint64_t)a4;
- (void)_updateImage;
- (void)dealloc;
- (void)setVignetteType:(unint64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation VideosExtrasBackgroundViewController

- (VideosExtrasBackgroundViewController)initWithBackgroundElement:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = VideosExtrasBackgroundViewController;
  v5 = [(VideosExtrasBackgroundViewController *)&v10 init];
  v6 = v5;
  if (v4 && v5)
  {
    v11[0] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    backgroundElements = v6->_backgroundElements;
    v6->_backgroundElements = v7;
  }

  return v6;
}

- (VideosExtrasBackgroundViewController)initWithBackgroundElements:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VideosExtrasBackgroundViewController;
  v6 = [(VideosExtrasBackgroundViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backgroundElements, a3);
  }

  return v7;
}

- (void)dealloc
{
  [(VideosExtrasBackgroundViewController *)self _invalidateTimer];
  v3.receiver = self;
  v3.super_class = VideosExtrasBackgroundViewController;
  [(VideosExtrasBackgroundViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = VideosExtrasBackgroundViewController;
  [(VideosExtrasBackgroundViewController *)&v9 viewDidLoad];
  v3 = [(VideosExtrasBackgroundViewController *)self view];
  v4 = [(NSArray *)self->_backgroundElements firstObject];
  v5 = [v4 backgroundColor];
  if (v5)
  {
    [v3 setBackgroundColor:v5];
  }

  else
  {
    v6 = [MEMORY[0x1E69DC888] blackColor];
    [v3 setBackgroundColor:v6];
  }

  [v3 setClipsToBounds:1];
  v7 = [objc_alloc(MEMORY[0x1E69B0870]) initForAutolayout];
  imageView = self->_imageView;
  self->_imageView = v7;

  [(MPUArtworkView *)self->_imageView setAutomaticallyApplyAspectConstraints:1];
  [v3 addSubview:self->_imageView];
  [(VideosExtrasBackgroundViewController *)self _updateImage];
  [(VideosExtrasBackgroundViewController *)self _initVignette];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VideosExtrasBackgroundViewController;
  [(VideosExtrasBackgroundViewController *)&v4 viewDidAppear:a3];
  [(VideosExtrasBackgroundViewController *)self _scheduleTimerIfNeeded];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VideosExtrasBackgroundViewController;
  [(VideosExtrasBackgroundViewController *)&v4 viewWillDisappear:a3];
  [(VideosExtrasBackgroundViewController *)self _invalidateTimer];
  [(MPUArtworkView *)self->_imageView clearArtworkCatalogs];
}

- (void)_updateConstraintsForImageSize:(CGSize)a3 position:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [(VideosExtrasBackgroundViewController *)self view];
  v22 = v7;
  if (self->_imageConstraints)
  {
    [v7 removeConstraints:?];
    v7 = v22;
  }

  if (width != *MEMORY[0x1E695F060] || height != *(MEMORY[0x1E695F060] + 8))
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (MEMORY[0x1E6913230]() && [MEMORY[0x1E69DF6F0] isPhone])
    {
      v10 = MEMORY[0x1E696ACD8];
      imageView = self->_imageView;
      v12 = 10.0;
      v13 = 0.0;
      v14 = 0.0;
      v15 = 0.0;
      v16 = v22;
      v17 = 11;
    }

    else
    {
      v10 = MEMORY[0x1E696ACD8];
      imageView = self->_imageView;
      v12 = *MEMORY[0x1E69DDCE0];
      v13 = *(MEMORY[0x1E69DDCE0] + 8);
      v14 = *(MEMORY[0x1E69DDCE0] + 16);
      v15 = *(MEMORY[0x1E69DDCE0] + 24);
      v16 = v22;
      v17 = 10;
    }

    v18 = [v10 constraintsByAttachingView:imageView toView:v16 alongEdges:v17 insets:{v12, v13, v14, v15}];
    [(NSArray *)v9 addObjectsFromArray:v18];

    v19 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_imageView attribute:7 relatedBy:0 toItem:v22 attribute:7 multiplier:1.0 constant:0.0];
    [(NSArray *)v9 addObject:v19];

    imageConstraints = self->_imageConstraints;
    self->_imageConstraints = v9;
    v21 = v9;

    [v22 addConstraints:self->_imageConstraints];
    v7 = v22;
  }
}

- (void)_updateImage
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = self->_backgroundElements;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v4)
  {
    v5 = *v32;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v32 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v31 + 1) + 8 * i);
        v8 = [v7 images];
        v9 = [v8 count] == 0;

        if (!v9)
        {
          v4 = [v7 images];
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if ([v4 count])
  {
    displayedImageElement = self->_displayedImageElement;
    if (displayedImageElement)
    {
      v11 = [v4 indexOfObject:?];
      displayedImageElement = (v11 + 1) % [v4 count];
    }

    v12 = [v4 objectAtIndex:displayedImageElement];
    v13 = self->_displayedImageElement;
    self->_displayedImageElement = v12;

    v14 = [(IKImageElement *)self->_displayedImageElement artworkCatalog];
    v15 = [(VideosExtrasBackgroundViewController *)self view];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v37.origin.x = v17;
    v37.origin.y = v19;
    v37.size.width = v21;
    v37.size.height = v23;
    if (CGRectIsEmpty(v37))
    {
      v24 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v24 bounds];
      v21 = v25;
      v23 = v26;
    }

    [v14 setFittingSize:{v21, v23}];
    objc_initWeak(&location, self);
    imageView = self->_imageView;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __52__VideosExtrasBackgroundViewController__updateImage__block_invoke;
    v28[3] = &unk_1E8731840;
    objc_copyWeak(&v29, &location);
    [v14 setDestination:imageView configurationBlock:v28];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }
}

void __52__VideosExtrasBackgroundViewController__updateImage__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReceiveImage:v4];
}

- (void)_didReceiveImage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MPUArtworkView *)self->_imageView layer];
    v6 = [v5 animationKeys];
    v7 = [v6 count];

    if (!v7)
    {
      [v4 size];
      [(VideosExtrasBackgroundViewController *)self _updateConstraintsForImageSize:[(IKImageElement *)self->_displayedImageElement position] position:v8, v9];
      v10 = MEMORY[0x1E69DD250];
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __57__VideosExtrasBackgroundViewController__didReceiveImage___block_invoke;
      v14 = &unk_1E872D990;
      v15 = self;
      v16 = v4;
      [v10 animateWithDuration:&v11 animations:1.0];
      [(VideosExtrasBackgroundViewController *)self _scheduleTimerIfNeeded:v11];
    }
  }
}

uint64_t __57__VideosExtrasBackgroundViewController__didReceiveImage___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1016) _setAnimatesContents:1];
  [*(*(a1 + 32) + 1016) setImage:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 1016);

  return [v2 _setAnimatesContents:0];
}

- (void)_scheduleTimerIfNeeded
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  updateTimer = self->_backgroundElements;
  v4 = [(NSArray *)updateTimer countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(updateTimer);
        }

        v8 = [*(*(&v16 + 1) + 8 * i) images];
        v9 = [v8 count];

        if (v9 > 1)
        {

          v10 = [(NSArray *)self->_backgroundElements firstObject];
          [v10 transitionInterval];
          v12 = v11;

          v13 = 3.0;
          if (v12 <= 3.0)
          {
            v13 = v12;
          }

          if (v13 >= 2.22044605e-16)
          {
            v14 = v13;
          }

          else
          {
            v14 = 10.0;
          }

          [(NSTimer *)self->_updateTimer invalidate];
          v15 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__updateImage selector:0 userInfo:0 repeats:v14];
          updateTimer = self->_updateTimer;
          self->_updateTimer = v15;
          goto LABEL_16;
        }
      }

      v5 = [(NSArray *)updateTimer countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

- (void)_invalidateTimer
{
  [(NSTimer *)self->_updateTimer invalidate];
  updateTimer = self->_updateTimer;
  self->_updateTimer = 0;
}

- (void)_initVignette
{
  v3 = [objc_alloc(MEMORY[0x1E69DCAE0]) initForAutolayout];
  vignetteView = self->_vignetteView;
  self->_vignetteView = v3;

  v5 = [(VideosExtrasBackgroundViewController *)self view];
  [v5 addSubview:self->_vignetteView];

  v6 = MEMORY[0x1E696ACD8];
  v7 = self->_vignetteView;
  v8 = [(VideosExtrasBackgroundViewController *)self view];
  v10 = [v6 constraintsByAttachingView:v7 toView:v8 alongEdges:15 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  v9 = [(VideosExtrasBackgroundViewController *)self view];
  [v9 addConstraints:v10];
}

- (void)setVignetteType:(unint64_t)a3
{
  if (self->_vignetteType != a3)
  {
    self->_vignetteType = a3;
    if (a3 && !self->_vignetteView)
    {
      [(VideosExtrasBackgroundViewController *)self _initVignette];
    }

    v4 = [objc_opt_class() vignetteImageForType:self->_vignetteType];
    [(UIImageView *)self->_vignetteView setImage:v4];
    [(UIImageView *)self->_vignetteView setHidden:v4 == 0];
  }
}

+ (id)vignetteImageForType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E69DCAB8] vui_videosUIImageNamed:{off_1E8731860[a3 - 1], v3}];
  }

  return v5;
}

@end