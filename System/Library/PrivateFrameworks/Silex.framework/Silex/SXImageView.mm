@interface SXImageView
- (BOOL)containsAnimatedImage;
- (BOOL)hasLoadedImage;
- (BOOL)isAccessibilityElement;
- (BOOL)isVisible;
- (BOOL)objectHasQualityInterest:(id)interest quality:(int *)quality;
- (BOOL)paused;
- (CGPoint)previousPoint;
- (CGSize)loadedImageSize;
- (CGSize)preferredImageSize;
- (CGSize)preferredQualityLoadingImageSize;
- (NSString)dragIdentifier;
- (SXImageView)initWithImageResource:(id)resource resourceDataSource:(id)source reachabilityProvider:(id)provider;
- (SXImageViewDelegate)delegate;
- (SXResourceDataSource)resourceDataSource;
- (UIImage)highQualityImage;
- (UIImage)preferredQualityImage;
- (id)copyWithZone:(_NSZone *)zone;
- (id)itemsForCustomRotor:(id)rotor;
- (id)stringForAXDragAction;
- (id)supportedCustomRotors;
- (int64_t)loadingIndicatorStyle;
- (void)addInterestInImageQuality:(int)quality forObject:(id)object;
- (void)animatedImage:(id)image madeImageAvailableForFrameAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)didLoadAnimatedImage:(id)image;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)didReceiveMemoryWarning;
- (void)fadeInImageWhenVisible:(id)visible;
- (void)giveUpInterestForObject:(id)object;
- (void)handleScrubGesture:(id)gesture;
- (void)layoutActivityIndicator;
- (void)layoutSubviews;
- (void)loadHighQualityImage;
- (void)loadPreferredQualityImage;
- (void)pause;
- (void)reachabilityChanged:(BOOL)changed;
- (void)resume;
- (void)setAnimatedImage:(id)image;
- (void)setFrameIndex:(unint64_t)index allowNearest:(BOOL)nearest;
- (void)setLoadingIndicatorStyle:(int64_t)style;
- (void)setPreferredImageSize:(CGSize)size;
- (void)setScrubbingEnabled:(BOOL)enabled;
- (void)setShouldShowLoadingIndicator:(BOOL)indicator;
- (void)showNextFrame;
- (void)validateLoadedImage;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation SXImageView

- (SXImageView)initWithImageResource:(id)resource resourceDataSource:(id)source reachabilityProvider:(id)provider
{
  resourceCopy = resource;
  sourceCopy = source;
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = SXImageView;
  v12 = [(SXImageView *)&v18 init];
  v13 = v12;
  if (v12)
  {
    v12->_autoPlayEnabled = 1;
    v12->_paused = 1;
    objc_storeStrong(&v12->_imageResource, resource);
    objc_storeWeak(&v13->_resourceDataSource, sourceCopy);
    v14 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:5 valueOptions:0];
    interestTable = v13->_interestTable;
    v13->_interestTable = v14;

    v13->_intendedFrameIndex = -1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel_didReceiveMemoryWarning name:*MEMORY[0x1E69DDAD8] object:0];

    [providerCopy addReachabilityObserver:v13];
  }

  return v13;
}

- (void)dealloc
{
  activeTimer = [(SXImageView *)self activeTimer];
  [activeTimer invalidate];

  [(SXImageView *)self setActiveTimer:0];
  v4.receiver = self;
  v4.super_class = SXImageView;
  [(SXImageView *)&v4 dealloc];
}

- (void)setShouldShowLoadingIndicator:(BOOL)indicator
{
  self->_shouldShowLoadingIndicator = indicator;
  activityIndicatorView = [(SXImageView *)self activityIndicatorView];
  if (activityIndicatorView)
  {

    goto LABEL_8;
  }

  if (![(SXImageView *)self shouldShowLoadingIndicator])
  {
LABEL_8:
    if (![(SXImageView *)self shouldShowLoadingIndicator])
    {
      activityIndicatorView2 = [(SXImageView *)self activityIndicatorView];
      [activityIndicatorView2 removeFromSuperview];

      [(SXImageView *)self setActivityIndicatorView:0];
    }

    return;
  }

  v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  [(SXImageView *)self setActivityIndicatorView:v5];

  activityIndicatorView3 = [(SXImageView *)self activityIndicatorView];
  [activityIndicatorView3 setHidesWhenStopped:1];

  [(SXImageView *)self layoutActivityIndicator];
  activityIndicatorView4 = [(SXImageView *)self activityIndicatorView];
  [(SXImageView *)self addSubview:activityIndicatorView4];

  if (![(SXImageView *)self hasLoadedImage])
  {
    activityIndicatorView5 = [(SXImageView *)self activityIndicatorView];
    [activityIndicatorView5 startAnimating];
  }
}

- (void)setLoadingIndicatorStyle:(int64_t)style
{
  activityIndicatorView = [(SXImageView *)self activityIndicatorView];
  [activityIndicatorView setActivityIndicatorViewStyle:style];
}

- (int64_t)loadingIndicatorStyle
{
  activityIndicatorView = [(SXImageView *)self activityIndicatorView];
  activityIndicatorViewStyle = [activityIndicatorView activityIndicatorViewStyle];

  return activityIndicatorViewStyle;
}

- (void)layoutActivityIndicator
{
  [(SXImageView *)self bounds];
  v4 = v3 * 0.5;
  [(SXImageView *)self bounds];
  v6 = v5 * 0.5;
  activityIndicatorView = [(SXImageView *)self activityIndicatorView];
  [activityIndicatorView setCenter:{v4, v6}];
}

- (void)addInterestInImageQuality:(int)quality forObject:(id)object
{
  v4 = *&quality;
  objectCopy = object;
  interestTable = [(SXImageView *)self interestTable];
  v7 = [interestTable objectForKey:objectCopy];

  if (v7)
  {
    if ([v7 intValue] != v4)
    {
      [(SXImageView *)self giveUpInterestForObject:objectCopy];
      [(SXImageView *)self addInterestInImageQuality:v4 forObject:objectCopy];
    }
  }

  else
  {
    v8 = &OBJC_IVAR___SXImageView__highQualityInterest;
    if (!v4)
    {
      v8 = &OBJC_IVAR___SXImageView__preferredQualityInterest;
    }

    ++*(&self->super.super.super.super.isa + *v8);
    interestTable2 = [(SXImageView *)self interestTable];
    v10 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    [interestTable2 setObject:v10 forKey:objectCopy];

    [(SXImageView *)self validateLoadedImage];
  }
}

- (void)giveUpInterestForObject:(id)object
{
  objectCopy = object;
  interestTable = [(SXImageView *)self interestTable];
  v5 = [interestTable objectForKey:objectCopy];

  if (v5)
  {
    intValue = [v5 intValue];
    v7 = &OBJC_IVAR___SXImageView__highQualityInterest;
    if (!intValue)
    {
      v7 = &OBJC_IVAR___SXImageView__preferredQualityInterest;
    }

    --*(&self->super.super.super.super.isa + *v7);
    if (![(SXImageView *)self prefersHighQuality])
    {
      highQualityImage = [(SXImageView *)self highQualityImage];

      if (highQualityImage)
      {
        [(SXImageView *)self setHighQualityImage:0];
      }
    }

    interestTable2 = [(SXImageView *)self interestTable];
    [interestTable2 removeObjectForKey:objectCopy];

    if ([(SXImageView *)self hasInterest])
    {
      if (![(SXImageView *)self prefersHighQuality])
      {
        highQualityImageRequestCancelHandler = [(SXImageView *)self highQualityImageRequestCancelHandler];

        if (highQualityImageRequestCancelHandler)
        {
          highQualityImageRequestCancelHandler2 = [(SXImageView *)self highQualityImageRequestCancelHandler];
          highQualityImageRequestCancelHandler2[2]();

          [(SXImageView *)self setHighQualityImageRequestCancelHandler:0];
        }
      }
    }

    else
    {
      preferredQualityImageRequestCancelHandler = [(SXImageView *)self preferredQualityImageRequestCancelHandler];

      if (preferredQualityImageRequestCancelHandler)
      {
        preferredQualityImageRequestCancelHandler2 = [(SXImageView *)self preferredQualityImageRequestCancelHandler];
        preferredQualityImageRequestCancelHandler2[2]();

        [(SXImageView *)self setPreferredQualityImageRequestCancelHandler:0];
        [(SXImageView *)self setPreferredQualityLoadingImageSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      }

      highQualityImageRequestCancelHandler3 = [(SXImageView *)self highQualityImageRequestCancelHandler];

      if (highQualityImageRequestCancelHandler3)
      {
        highQualityImageRequestCancelHandler4 = [(SXImageView *)self highQualityImageRequestCancelHandler];
        highQualityImageRequestCancelHandler4[2]();

        [(SXImageView *)self setHighQualityImageRequestCancelHandler:0];
      }

      if ([(SXImageView *)self containsAnimatedImage])
      {
        animatedImage = [(SXImageView *)self animatedImage];
        [animatedImage setPreloadType:0 currentFrameIndex:0];
      }
    }
  }
}

- (BOOL)objectHasQualityInterest:(id)interest quality:(int *)quality
{
  interestCopy = interest;
  interestTable = [(SXImageView *)self interestTable];
  v8 = [interestTable objectForKey:interestCopy];

  if (quality && v8)
  {
    *quality = [v8 intValue];
  }

  return v8 != 0;
}

- (void)validateLoadedImage
{
  [(SXImageView *)self bounds];
  if (v4 <= 0.0 || v3 <= 0.0 || ![(SXImageView *)self hasInterest]|| [(SXImageView *)self containsAnimatedImage])
  {
    return;
  }

  if (![(SXImageView *)self prefersHighQuality])
  {
    preferredQualityImage = [(SXImageView *)self preferredQualityImage];
    [preferredQualityImage size];
    v11 = v10;
    v13 = v12;

    preferredQualityImage2 = [(SXImageView *)self preferredQualityImage];
    if (!preferredQualityImage2)
    {
      goto LABEL_14;
    }

    v15 = preferredQualityImage2;
    preferredQualityImage3 = [(SXImageView *)self preferredQualityImage];
    if (preferredQualityImage3)
    {
      v17 = preferredQualityImage3;
      v18 = ceil(v11);
      [(SXImageView *)self preferredImageSize];
      v20 = v19;
      v22 = v21;

      if (v20 != v18 || v22 != ceil(v13))
      {
LABEL_14:
        [(SXImageView *)self preferredImageSize];
        v24 = v23;
        v26 = v25;
        [(SXImageView *)self preferredQualityLoadingImageSize];
        if (v24 != v28 || v26 != v27)
        {

          [(SXImageView *)self loadPreferredQualityImage];
        }

        return;
      }
    }

    else
    {
    }

    image = [(SXImageView *)self image];
    preferredQualityImage4 = [(SXImageView *)self preferredQualityImage];

    if (image == preferredQualityImage4)
    {
      return;
    }

    preferredQualityImage5 = [(SXImageView *)self preferredQualityImage];
    goto LABEL_25;
  }

  highQualityImage = [(SXImageView *)self highQualityImage];

  if (highQualityImage)
  {
    highQualityImage2 = [(SXImageView *)self highQualityImage];
    image2 = [(SXImageView *)self image];

    if (highQualityImage2 == image2)
    {
      return;
    }

    preferredQualityImage5 = [(SXImageView *)self highQualityImage];
LABEL_25:
    v31 = preferredQualityImage5;
    [(SXImageView *)self crossfadeToImage:preferredQualityImage5];

    return;
  }

  [(SXImageView *)self loadHighQualityImage];
}

- (void)loadPreferredQualityImage
{
  [(SXImageView *)self preferredImageSize];
  v4 = v3;
  v6 = v5;
  preferredQualityImageRequestCancelHandler = [(SXImageView *)self preferredQualityImageRequestCancelHandler];

  if (preferredQualityImageRequestCancelHandler)
  {
    preferredQualityImageRequestCancelHandler2 = [(SXImageView *)self preferredQualityImageRequestCancelHandler];
    preferredQualityImageRequestCancelHandler2[2]();

    [(SXImageView *)self setPreferredQualityImageRequestCancelHandler:0];
  }

  if (![(SXImageView *)self hasLoadedImage])
  {
    activityIndicatorView = [(SXImageView *)self activityIndicatorView];
    [activityIndicatorView startAnimating];
  }

  self->_preferredQualityLoadingImageSize.width = v4;
  self->_preferredQualityLoadingImageSize.height = v6;
  objc_initWeak(&location, self);
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __40__SXImageView_loadPreferredQualityImage__block_invoke;
  v24 = &unk_1E84FEF88;
  objc_copyWeak(&v25, &location);
  v10 = MEMORY[0x1DA716BE0](&v21);
  v11 = [(SXImageView *)self imageResource:v21];
  wideColorSpace = [v11 wideColorSpace];

  v13 = [SXImageRequest alloc];
  imageResource = [(SXImageView *)self imageResource];
  imageIdentifier = [imageResource imageIdentifier];
  imageResource2 = [(SXImageView *)self imageResource];
  v17 = [imageResource2 URL];
  v18 = [(SXImageRequest *)v13 initWithImageIdentifier:imageIdentifier imageQualities:6 url:v17 size:wideColorSpace preserveColorspace:v10 loadingBlock:v4, v6];

  resourceDataSource = [(SXImageView *)self resourceDataSource];
  v20 = [resourceDataSource loadImagesForImageRequest:v18 completionBlock:0];
  [(SXImageView *)self setPreferredQualityImageRequestCancelHandler:v20];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __40__SXImageView_loadPreferredQualityImage__block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = MEMORY[0x1E695F060];
  if (isKindOfClass)
  {
    v6 = [v16 animatedImage];
    [WeakRetained didLoadAnimatedImage:v6];
  }

  else
  {
    v6 = v16;
    v7 = [WeakRetained activityIndicatorView];
    [v7 stopAnimating];

    v8 = [v6 image];

    if (v8)
    {
      v9 = [v6 image];
      [WeakRetained setPreferredQualityImage:v9];

      v10 = [WeakRetained image];

      v11 = [WeakRetained preferredQualityImage];
      if (v10)
      {
        [WeakRetained crossfadeToImage:v11];
      }

      else
      {
        [WeakRetained fadeInImageWhenVisible:v11];
      }

      [WeakRetained setPreferredQualityLoadingImageSize:{*v5, v5[1]}];
      v12 = [WeakRetained delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v14 = [WeakRetained delegate];
        v15 = [WeakRetained preferredQualityImage];
        [v14 imageView:WeakRetained didLoadImage:v15 ofQuality:0];
      }
    }
  }

  [WeakRetained setPreferredQualityLoadingImageSize:{*v5, v5[1]}];
  [WeakRetained setPreferredQualityImageRequestCancelHandler:0];
}

- (void)loadHighQualityImage
{
  if (![(SXImageView *)self hasLoadedImage])
  {
    activityIndicatorView = [(SXImageView *)self activityIndicatorView];
    [activityIndicatorView startAnimating];
  }

  objc_initWeak(&location, self);
  highQualityImageRequestCancelHandler = [(SXImageView *)self highQualityImageRequestCancelHandler];
  if (!highQualityImageRequestCancelHandler)
  {
    highQualityImage = [(SXImageView *)self highQualityImage];

    if (highQualityImage)
    {
      goto LABEL_6;
    }

    highQualityImageRequestCancelHandler = objc_loadWeakRetained(&location);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __35__SXImageView_loadHighQualityImage__block_invoke;
    v17[3] = &unk_1E84FEFB0;
    v17[4] = highQualityImageRequestCancelHandler;
    v6 = MEMORY[0x1DA716BE0](v17);
    imageResource = [(SXImageView *)self imageResource];
    wideColorSpace = [imageResource wideColorSpace];

    v9 = [SXImageRequest alloc];
    imageResource2 = [(SXImageView *)self imageResource];
    imageIdentifier = [imageResource2 imageIdentifier];
    imageResource3 = [(SXImageView *)self imageResource];
    v13 = [imageResource3 URL];
    v14 = [(SXImageRequest *)v9 initWithImageIdentifier:imageIdentifier imageQualities:6 url:v13 size:wideColorSpace preserveColorspace:v6 loadingBlock:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

    resourceDataSource = [(SXImageView *)self resourceDataSource];
    v16 = [resourceDataSource loadImagesForImageRequest:v14 completionBlock:0];
    [(SXImageView *)self setHighQualityImageRequestCancelHandler:v16];
  }

LABEL_6:
  objc_destroyWeak(&location);
}

void __35__SXImageView_loadHighQualityImage__block_invoke(uint64_t a1, void *a2)
{
  v25 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v25;
    v4 = [v3 animatedImage];
    [v4 imageSize];
    v6 = v5;
    v8 = v7;
    v9 = [*(a1 + 32) animatedImage];
    [v9 imageSize];
    v11 = v10;
    v13 = v12;

    if (v6 == v11 && v8 == v13)
    {
      goto LABEL_13;
    }

    v15 = *(a1 + 32);
    v16 = [v3 animatedImage];
    [v15 didLoadAnimatedImage:v16];
  }

  else
  {
    v17 = [*(a1 + 32) activityIndicatorView];
    [v17 stopAnimating];

    v18 = [v25 image];
    [*(a1 + 32) setHighQualityImage:v18];

    v19 = [*(a1 + 32) image];

    v20 = *(a1 + 32);
    v21 = [v20 highQualityImage];
    if (v19)
    {
      [v20 crossfadeToImage:v21];
    }

    else
    {
      [v20 fadeInImageWhenVisible:v21];
    }

    v22 = [*(a1 + 32) delegate];
    v23 = objc_opt_respondsToSelector();

    if ((v23 & 1) == 0)
    {
      goto LABEL_14;
    }

    v3 = [*(a1 + 32) delegate];
    v24 = *(a1 + 32);
    v16 = [v24 highQualityImage];
    [v3 imageView:v24 didLoadImage:v16 ofQuality:1];
  }

LABEL_13:
LABEL_14:
  [*(a1 + 32) setHighQualityImageRequestCancelHandler:0];
}

- (void)didLoadAnimatedImage:(id)image
{
  [(SXImageView *)self setAnimatedImage:image];
  delegate = [(SXImageView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SXImageView *)self delegate];
    animatedImage = [(SXImageView *)self animatedImage];
    [delegate2 imageView:self didLoadAnimatedImage:animatedImage];
  }
}

- (void)didReceiveMemoryWarning
{
  if (![(SXImageView *)self hasInterest])
  {
    [(SXImageView *)self setHighQualityImage:0];

    [(SXImageView *)self setPreferredQualityImage:0];
  }
}

- (BOOL)hasLoadedImage
{
  image = [(SXImageView *)self image];
  if (image)
  {
    v4 = 1;
  }

  else
  {
    animatedImage = [(SXImageView *)self animatedImage];
    v4 = animatedImage != 0;
  }

  return v4;
}

- (CGSize)loadedImageSize
{
  if ([(SXImageView *)self containsAnimatedImage])
  {
    animatedImage = [(SXImageView *)self animatedImage];
    [animatedImage imageSize];
  }

  else
  {
    animatedImage = [(SXImageView *)self image];
    [animatedImage size];
  }

  v6 = v4;
  v7 = v5;

  v8 = v6;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)fadeInImageWhenVisible:(id)visible
{
  [(SXImageView *)self setImage:visible];
  if ([(SXImageView *)self isVisible])
  {
    v5 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v5 setFromValue:&unk_1F538A190];
    [v5 setToValue:&unk_1F538A1A8];
    [v5 setDuration:0.2];
    layer = [(SXImageView *)self layer];
    [layer addAnimation:v5 forKey:@"fadeIn"];
  }
}

- (BOOL)isVisible
{
  superview = [(SXImageView *)self superview];
  [(SXImageView *)self frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  window = [(SXImageView *)self window];
  [superview convertRect:window toView:{v5, v7, v9, v11}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  window2 = [(SXImageView *)self window];
  [window2 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v33.origin.x = v14;
  v33.origin.y = v16;
  v33.size.width = v18;
  v33.size.height = v20;
  v35 = CGRectInset(v33, -10.0, -10.0);
  v34.origin.x = v23;
  v34.origin.y = v25;
  v34.size.width = v27;
  v34.size.height = v29;
  if (CGRectIntersectsRect(v34, v35))
  {
    window3 = [(SXImageView *)self window];
    v31 = window3 != 0;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (void)setPreferredImageSize:(CGSize)size
{
  self->_preferredImageSize.width = ceil(size.width);
  self->_preferredImageSize.height = ceil(size.height);
  [(SXImageView *)self validateLoadedImage];
}

- (void)reachabilityChanged:(BOOL)changed
{
  if (changed)
  {
    [(SXImageView *)self validateLoadedImage];
  }
}

- (void)setScrubbingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(SXImageView *)self containsAnimatedImage])
  {
    self->_scrubbingEnabled = enabledCopy;
    if (enabledCopy && ([(SXImageView *)self scrubGesture], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
    {
      [(SXImageView *)self setUserInteractionEnabled:1];
      v8 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel_handleScrubGesture_];
      [v8 setMinimumPressDuration:0.1];
      [v8 setNumberOfTouchesRequired:1];
      [(SXImageView *)self addGestureRecognizer:v8];
      [(SXImageView *)self setScrubGesture:v8];
    }

    else
    {
      scrubGesture = [(SXImageView *)self scrubGesture];

      if (scrubGesture)
      {
        [(SXImageView *)self setUserInteractionEnabled:0];
        scrubGesture2 = [(SXImageView *)self scrubGesture];
        [(SXImageView *)self removeGestureRecognizer:scrubGesture2];

        [(SXImageView *)self setScrubGesture:0];
      }
    }
  }

  else
  {
    self->_scrubbingEnabled = 0;
  }
}

- (void)handleScrubGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 1)
  {
    [(SXImageView *)self pause];
    [gestureCopy locationInView:self];
    [(SXImageView *)self setPreviousPoint:?];
    selfCopy2 = self;
    v5 = 1;
LABEL_17:
    [(SXImageView *)selfCopy2 setIsScrubbing:v5];
LABEL_18:
    v26 = gestureCopy;
    goto LABEL_19;
  }

  if ([gestureCopy state] == 2)
  {
    animatedImage = [(SXImageView *)self animatedImage];
    numberOfFrames = [animatedImage numberOfFrames];

    [gestureCopy locationInView:self];
    v9 = v8;
    v11 = v10;
    [(SXImageView *)self previousPoint];
    v13 = v12;
    frameIndex = [(SXImageView *)self frameIndex];
    animatedImage2 = [(SXImageView *)self animatedImage];
    numberOfFrames2 = [animatedImage2 numberOfFrames];
    frameIndex2 = [(SXImageView *)self frameIndex];

    [(SXImageView *)self frame];
    Width = CGRectGetWidth(v32);
    frameIndex3 = [(SXImageView *)self frameIndex];
    if (v9 <= v13)
    {
      [(SXImageView *)self previousPoint];
      v28 = v27 / frameIndex;
      [(SXImageView *)self previousPoint];
      v20 = ((__PAIR128__(frameIndex3, *&v9) - COERCE_UNSIGNED_INT64(v29 - v28 + 20.0)) >> 64) & ~(((__PAIR128__(frameIndex3, *&v9) - COERCE_UNSIGNED_INT64(v29 - v28 + 20.0)) >> 64) >> 63);
    }

    else
    {
      v20 = numberOfFrames - 1;
      [(SXImageView *)self previousPoint];
      v22 = (Width - v21) / (numberOfFrames2 - frameIndex2);
      [(SXImageView *)self previousPoint];
      if (v9 <= v23 + v22)
      {
        v24 = frameIndex3;
      }

      else
      {
        v24 = frameIndex3 + 1;
      }

      if (v20 >= v24)
      {
        v20 = v24;
      }
    }

    v25 = [(SXImageView *)self frameIndex]== v20;
    v26 = gestureCopy;
    if (!v25)
    {
      [(SXImageView *)self setFrameIndex:v20 allowNearest:1];
      [(SXImageView *)self setPreviousPoint:v9, v11];
      goto LABEL_18;
    }
  }

  else if ([gestureCopy state] == 3 || (v25 = objc_msgSend(gestureCopy, "state") == 4, v26 = gestureCopy, v25))
  {
    if ([(SXImageView *)self autoPlayEnabled])
    {
      [(SXImageView *)self resume];
    }

    selfCopy2 = self;
    v5 = 0;
    goto LABEL_17;
  }

LABEL_19:
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SXImageView;
  [(SXImageView *)&v3 layoutSubviews];
  [(SXImageView *)self layoutActivityIndicator];
  [(SXImageView *)self validateLoadedImage];
}

- (void)willMoveToSuperview:(id)superview
{
  v5.receiver = self;
  v5.super_class = SXImageView;
  [(SXImageView *)&v5 willMoveToSuperview:?];
  if (superview)
  {
    [(SXImageView *)self setShouldResume:[(SXImageView *)self autoPlayEnabled]];
  }
}

- (void)didMoveToSuperview
{
  v6.receiver = self;
  v6.super_class = SXImageView;
  [(SXImageView *)&v6 didMoveToSuperview];
  superview = [(SXImageView *)self superview];
  if (superview)
  {
    v4 = superview;
    shouldResume = [(SXImageView *)self shouldResume];

    if (shouldResume)
    {
      [(SXImageView *)self resume];
      [(SXImageView *)self setShouldResume:0];
      [(SXImageView *)self validateLoadedImage];
    }
  }
}

- (void)didMoveToWindow
{
  v7.receiver = self;
  v7.super_class = SXImageView;
  [(SXImageView *)&v7 didMoveToWindow];
  window = [(SXImageView *)self window];

  if (!window)
  {
    [(SXImageView *)self pause];
    goto LABEL_6;
  }

  superview = [(SXImageView *)self superview];
  if (superview)
  {
    v5 = superview;
    shouldResume = [(SXImageView *)self shouldResume];

    if (shouldResume)
    {
      [(SXImageView *)self resume];
LABEL_6:
      [(SXImageView *)self setShouldResume:window == 0];
    }
  }
}

- (BOOL)containsAnimatedImage
{
  animatedImage = [(SXImageView *)self animatedImage];
  v3 = animatedImage != 0;

  return v3;
}

- (void)setAnimatedImage:(id)image
{
  imageCopy = image;
  v6 = imageCopy;
  if (self->_animatedImage != imageCopy)
  {
    v11 = imageCopy;
    v7 = [(SXImageView *)self scrubbingEnabled]? 2 : 1;
    [v11 setPreloadType:v7 currentFrameIndex:{-[SXImageView frameIndex](self, "frameIndex")}];
    [(SXAnimatedImage *)self->_animatedImage setDelegate:0];
    [v11 setDelegate:self];
    objc_storeStrong(&self->_animatedImage, image);
    loopCount = [v11 loopCount];
    loopCount2 = [v11 loopCount];
    v10 = loopCount == -1 ? loopCount2 : loopCount2 + 1;
    self->_playCount = v10;
    imageCopy = [(SXImageView *)self shouldResumeAfterLoad];
    v6 = v11;
    if (imageCopy)
    {
      [(SXImageView *)self resume];
      imageCopy = [(SXImageView *)self setShouldResumeAfterLoad:0];
      v6 = v11;
    }
  }

  MEMORY[0x1EEE66BB8](imageCopy, v6);
}

- (void)showNextFrame
{
  window = [(SXImageView *)self window];

  if (!window)
  {
    activeTimer = [(SXImageView *)self activeTimer];
    [activeTimer invalidate];

    [(SXImageView *)self setActiveTimer:0];
    animatedImage = [(SXImageView *)self animatedImage];
    [animatedImage suspendPreloading];

    [(SXImageView *)self setPaused:1];
  }

  animatedImage2 = [(SXImageView *)self animatedImage];
  v26 = [animatedImage2 frameAtIndex:{-[SXImageView frameIndex](self, "frameIndex")}];

  v7 = [(SXAnimatedImageFrame *)v26 index]+ 1;
  animatedImage3 = [(SXImageView *)self animatedImage];
  numberOfFrames = [animatedImage3 numberOfFrames];

  if (v7 >= numberOfFrames)
  {
    [(SXImageView *)self setPlayCount:[(SXImageView *)self playCount]- 1];
    if (![(SXImageView *)self playCount])
    {
      [(SXImageView *)self pause];
      goto LABEL_14;
    }

    v7 = 0;
  }

  animatedImage4 = [(SXImageView *)self animatedImage];
  v11 = [animatedImage4 frameAtIndex:v7];

  image = [(SXAnimatedImageFrame *)v11 image];

  if (image)
  {
    self->_frameIndex = v7;
    image2 = [(SXAnimatedImageFrame *)v11 image];
    [(SXImageView *)self setImage:image2];

    frameChangeBlock = [(SXImageView *)self frameChangeBlock];

    if (frameChangeBlock)
    {
      frameChangeBlock2 = [(SXImageView *)self frameChangeBlock];
      frameIndex = [(SXImageView *)self frameIndex];
      animatedImage5 = [(SXImageView *)self animatedImage];
      (frameChangeBlock2)[2](frameChangeBlock2, self, frameIndex, [animatedImage5 numberOfFrames]);
    }

    activeTimer2 = [(SXImageView *)self activeTimer];
    isValid = [activeTimer2 isValid];

    if (isValid)
    {
      activeTimer3 = [(SXImageView *)self activeTimer];
      [activeTimer3 invalidate];
    }

    v21 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel_showNextFrame selector:0 userInfo:0 repeats:-[SXAnimatedImageFrame duration](v11)];
    [(SXImageView *)self setActiveTimer:v21];

    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    activeTimer4 = [(SXImageView *)self activeTimer];
    [currentRunLoop addTimer:activeTimer4 forMode:*MEMORY[0x1E695DA28]];

    selfCopy2 = self;
    index = -1;
  }

  else
  {
    index = [(SXAnimatedImageFrame *)v11 index];
    selfCopy2 = self;
  }

  [(SXImageView *)selfCopy2 setIntendedFrameIndex:index];

LABEL_14:
}

- (void)setFrameIndex:(unint64_t)index allowNearest:(BOOL)nearest
{
  nearestCopy = nearest;
  self->_frameIndex = index;
  animatedImage = [(SXImageView *)self animatedImage];
  v7 = [animatedImage frameAtIndex:-[SXImageView frameIndex](self returnNearestPreloaded:{"frameIndex"), nearestCopy}];
  image = [(SXAnimatedImageFrame *)v7 image];

  v8 = image;
  if (image)
  {
    [(SXImageView *)self setImage:image];
    v8 = image;
  }
}

- (BOOL)paused
{
  activeTimer = [(SXImageView *)self activeTimer];
  v3 = activeTimer == 0;

  return v3;
}

- (void)pause
{
  if ([(SXImageView *)self paused]|| ![(SXImageView *)self containsAnimatedImage])
  {
    if (![(SXImageView *)self paused])
    {

      [(SXImageView *)self setShouldResumeAfterLoad:0];
    }
  }

  else
  {
    activeTimer = [(SXImageView *)self activeTimer];
    [activeTimer invalidate];

    [(SXImageView *)self setActiveTimer:0];
    animatedImage = [(SXImageView *)self animatedImage];
    [animatedImage suspendPreloading];
  }
}

- (void)resume
{
  if ([(SXImageView *)self paused]&& [(SXImageView *)self playCount]&& [(SXImageView *)self containsAnimatedImage])
  {
    animatedImage = [(SXImageView *)self animatedImage];
    [animatedImage resumePreloading];

    [(SXImageView *)self showNextFrame];
  }

  else if ([(SXImageView *)self paused])
  {

    [(SXImageView *)self setShouldResumeAfterLoad:1];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SXImageView);
  animatedImage = [(SXImageView *)self animatedImage];

  if (animatedImage)
  {
    animatedImage2 = [(SXImageView *)self animatedImage];
    [(SXImageView *)v4 setAnimatedImage:animatedImage2];
  }

  else
  {
    animatedImage2 = [(SXImageView *)self image];
    [(SXImageView *)v4 setImage:animatedImage2];
  }

  return v4;
}

- (void)animatedImage:(id)image madeImageAvailableForFrameAtIndex:(unint64_t)index
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__SXImageView_animatedImage_madeImageAvailableForFrameAtIndex___block_invoke;
  v4[3] = &unk_1E84FEFD8;
  v4[4] = self;
  v4[5] = index;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

uint64_t __63__SXImageView_animatedImage_madeImageAvailableForFrameAtIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) intendedFrameIndex];
  if (result == *(a1 + 40))
  {
    v3 = *(a1 + 32);

    return [v3 showNextFrame];
  }

  return result;
}

- (id)supportedCustomRotors
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = +[SXAXCustomRotorDefinition imagesRotor];
  v4 = [SXAXCustomRotor rotorWithName:v3];
  v5 = [v2 orderedSetWithObject:v4];

  return v5;
}

- (id)itemsForCustomRotor:(id)rotor
{
  rotorCopy = rotor;
  v5 = +[SXAXCustomRotorDefinition imagesRotor];
  v6 = [SXAXCustomRotor rotorWithName:v5];

  if (v6 == rotorCopy)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DC5F8]) initWithTargetElement:self targetRange:0];
    v7 = [MEMORY[0x1E695DFB8] orderedSetWithObject:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)dragIdentifier
{
  imageResource = [(SXImageView *)self imageResource];
  imageIdentifier = [imageResource imageIdentifier];

  return imageIdentifier;
}

- (id)stringForAXDragAction
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Drag Image" value:&stru_1F532F6C0 table:0];

  return v3;
}

- (BOOL)isAccessibilityElement
{
  if ([(SXImageView *)self isDecorative])
  {
    return 0;
  }

  else
  {
    return ![self sxax_shouldBeOccluded];
  }
}

- (CGSize)preferredImageSize
{
  width = self->_preferredImageSize.width;
  height = self->_preferredImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (SXImageViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SXResourceDataSource)resourceDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_resourceDataSource);

  return WeakRetained;
}

- (CGSize)preferredQualityLoadingImageSize
{
  width = self->_preferredQualityLoadingImageSize.width;
  height = self->_preferredQualityLoadingImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIImage)preferredQualityImage
{
  WeakRetained = objc_loadWeakRetained(&self->_preferredQualityImage);

  return WeakRetained;
}

- (UIImage)highQualityImage
{
  WeakRetained = objc_loadWeakRetained(&self->_highQualityImage);

  return WeakRetained;
}

- (CGPoint)previousPoint
{
  x = self->_previousPoint.x;
  y = self->_previousPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end