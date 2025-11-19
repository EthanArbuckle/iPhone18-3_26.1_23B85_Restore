@interface SXImageView
- (BOOL)containsAnimatedImage;
- (BOOL)hasLoadedImage;
- (BOOL)isAccessibilityElement;
- (BOOL)isVisible;
- (BOOL)objectHasQualityInterest:(id)a3 quality:(int *)a4;
- (BOOL)paused;
- (CGPoint)previousPoint;
- (CGSize)loadedImageSize;
- (CGSize)preferredImageSize;
- (CGSize)preferredQualityLoadingImageSize;
- (NSString)dragIdentifier;
- (SXImageView)initWithImageResource:(id)a3 resourceDataSource:(id)a4 reachabilityProvider:(id)a5;
- (SXImageViewDelegate)delegate;
- (SXResourceDataSource)resourceDataSource;
- (UIImage)highQualityImage;
- (UIImage)preferredQualityImage;
- (id)copyWithZone:(_NSZone *)a3;
- (id)itemsForCustomRotor:(id)a3;
- (id)stringForAXDragAction;
- (id)supportedCustomRotors;
- (int64_t)loadingIndicatorStyle;
- (void)addInterestInImageQuality:(int)a3 forObject:(id)a4;
- (void)animatedImage:(id)a3 madeImageAvailableForFrameAtIndex:(unint64_t)a4;
- (void)dealloc;
- (void)didLoadAnimatedImage:(id)a3;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)didReceiveMemoryWarning;
- (void)fadeInImageWhenVisible:(id)a3;
- (void)giveUpInterestForObject:(id)a3;
- (void)handleScrubGesture:(id)a3;
- (void)layoutActivityIndicator;
- (void)layoutSubviews;
- (void)loadHighQualityImage;
- (void)loadPreferredQualityImage;
- (void)pause;
- (void)reachabilityChanged:(BOOL)a3;
- (void)resume;
- (void)setAnimatedImage:(id)a3;
- (void)setFrameIndex:(unint64_t)a3 allowNearest:(BOOL)a4;
- (void)setLoadingIndicatorStyle:(int64_t)a3;
- (void)setPreferredImageSize:(CGSize)a3;
- (void)setScrubbingEnabled:(BOOL)a3;
- (void)setShouldShowLoadingIndicator:(BOOL)a3;
- (void)showNextFrame;
- (void)validateLoadedImage;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation SXImageView

- (SXImageView)initWithImageResource:(id)a3 resourceDataSource:(id)a4 reachabilityProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = SXImageView;
  v12 = [(SXImageView *)&v18 init];
  v13 = v12;
  if (v12)
  {
    v12->_autoPlayEnabled = 1;
    v12->_paused = 1;
    objc_storeStrong(&v12->_imageResource, a3);
    objc_storeWeak(&v13->_resourceDataSource, v10);
    v14 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:5 valueOptions:0];
    interestTable = v13->_interestTable;
    v13->_interestTable = v14;

    v13->_intendedFrameIndex = -1;
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v13 selector:sel_didReceiveMemoryWarning name:*MEMORY[0x1E69DDAD8] object:0];

    [v11 addReachabilityObserver:v13];
  }

  return v13;
}

- (void)dealloc
{
  v3 = [(SXImageView *)self activeTimer];
  [v3 invalidate];

  [(SXImageView *)self setActiveTimer:0];
  v4.receiver = self;
  v4.super_class = SXImageView;
  [(SXImageView *)&v4 dealloc];
}

- (void)setShouldShowLoadingIndicator:(BOOL)a3
{
  self->_shouldShowLoadingIndicator = a3;
  v4 = [(SXImageView *)self activityIndicatorView];
  if (v4)
  {

    goto LABEL_8;
  }

  if (![(SXImageView *)self shouldShowLoadingIndicator])
  {
LABEL_8:
    if (![(SXImageView *)self shouldShowLoadingIndicator])
    {
      v8 = [(SXImageView *)self activityIndicatorView];
      [v8 removeFromSuperview];

      [(SXImageView *)self setActivityIndicatorView:0];
    }

    return;
  }

  v5 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  [(SXImageView *)self setActivityIndicatorView:v5];

  v6 = [(SXImageView *)self activityIndicatorView];
  [v6 setHidesWhenStopped:1];

  [(SXImageView *)self layoutActivityIndicator];
  v7 = [(SXImageView *)self activityIndicatorView];
  [(SXImageView *)self addSubview:v7];

  if (![(SXImageView *)self hasLoadedImage])
  {
    v9 = [(SXImageView *)self activityIndicatorView];
    [v9 startAnimating];
  }
}

- (void)setLoadingIndicatorStyle:(int64_t)a3
{
  v4 = [(SXImageView *)self activityIndicatorView];
  [v4 setActivityIndicatorViewStyle:a3];
}

- (int64_t)loadingIndicatorStyle
{
  v2 = [(SXImageView *)self activityIndicatorView];
  v3 = [v2 activityIndicatorViewStyle];

  return v3;
}

- (void)layoutActivityIndicator
{
  [(SXImageView *)self bounds];
  v4 = v3 * 0.5;
  [(SXImageView *)self bounds];
  v6 = v5 * 0.5;
  v7 = [(SXImageView *)self activityIndicatorView];
  [v7 setCenter:{v4, v6}];
}

- (void)addInterestInImageQuality:(int)a3 forObject:(id)a4
{
  v4 = *&a3;
  v11 = a4;
  v6 = [(SXImageView *)self interestTable];
  v7 = [v6 objectForKey:v11];

  if (v7)
  {
    if ([v7 intValue] != v4)
    {
      [(SXImageView *)self giveUpInterestForObject:v11];
      [(SXImageView *)self addInterestInImageQuality:v4 forObject:v11];
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
    v9 = [(SXImageView *)self interestTable];
    v10 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    [v9 setObject:v10 forKey:v11];

    [(SXImageView *)self validateLoadedImage];
  }
}

- (void)giveUpInterestForObject:(id)a3
{
  v17 = a3;
  v4 = [(SXImageView *)self interestTable];
  v5 = [v4 objectForKey:v17];

  if (v5)
  {
    v6 = [v5 intValue];
    v7 = &OBJC_IVAR___SXImageView__highQualityInterest;
    if (!v6)
    {
      v7 = &OBJC_IVAR___SXImageView__preferredQualityInterest;
    }

    --*(&self->super.super.super.super.isa + *v7);
    if (![(SXImageView *)self prefersHighQuality])
    {
      v8 = [(SXImageView *)self highQualityImage];

      if (v8)
      {
        [(SXImageView *)self setHighQualityImage:0];
      }
    }

    v9 = [(SXImageView *)self interestTable];
    [v9 removeObjectForKey:v17];

    if ([(SXImageView *)self hasInterest])
    {
      if (![(SXImageView *)self prefersHighQuality])
      {
        v10 = [(SXImageView *)self highQualityImageRequestCancelHandler];

        if (v10)
        {
          v11 = [(SXImageView *)self highQualityImageRequestCancelHandler];
          v11[2]();

          [(SXImageView *)self setHighQualityImageRequestCancelHandler:0];
        }
      }
    }

    else
    {
      v12 = [(SXImageView *)self preferredQualityImageRequestCancelHandler];

      if (v12)
      {
        v13 = [(SXImageView *)self preferredQualityImageRequestCancelHandler];
        v13[2]();

        [(SXImageView *)self setPreferredQualityImageRequestCancelHandler:0];
        [(SXImageView *)self setPreferredQualityLoadingImageSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      }

      v14 = [(SXImageView *)self highQualityImageRequestCancelHandler];

      if (v14)
      {
        v15 = [(SXImageView *)self highQualityImageRequestCancelHandler];
        v15[2]();

        [(SXImageView *)self setHighQualityImageRequestCancelHandler:0];
      }

      if ([(SXImageView *)self containsAnimatedImage])
      {
        v16 = [(SXImageView *)self animatedImage];
        [v16 setPreloadType:0 currentFrameIndex:0];
      }
    }
  }
}

- (BOOL)objectHasQualityInterest:(id)a3 quality:(int *)a4
{
  v6 = a3;
  v7 = [(SXImageView *)self interestTable];
  v8 = [v7 objectForKey:v6];

  if (a4 && v8)
  {
    *a4 = [v8 intValue];
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
    v9 = [(SXImageView *)self preferredQualityImage];
    [v9 size];
    v11 = v10;
    v13 = v12;

    v14 = [(SXImageView *)self preferredQualityImage];
    if (!v14)
    {
      goto LABEL_14;
    }

    v15 = v14;
    v16 = [(SXImageView *)self preferredQualityImage];
    if (v16)
    {
      v17 = v16;
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

    v29 = [(SXImageView *)self image];
    v30 = [(SXImageView *)self preferredQualityImage];

    if (v29 == v30)
    {
      return;
    }

    v8 = [(SXImageView *)self preferredQualityImage];
    goto LABEL_25;
  }

  v5 = [(SXImageView *)self highQualityImage];

  if (v5)
  {
    v6 = [(SXImageView *)self highQualityImage];
    v7 = [(SXImageView *)self image];

    if (v6 == v7)
    {
      return;
    }

    v8 = [(SXImageView *)self highQualityImage];
LABEL_25:
    v31 = v8;
    [(SXImageView *)self crossfadeToImage:v8];

    return;
  }

  [(SXImageView *)self loadHighQualityImage];
}

- (void)loadPreferredQualityImage
{
  [(SXImageView *)self preferredImageSize];
  v4 = v3;
  v6 = v5;
  v7 = [(SXImageView *)self preferredQualityImageRequestCancelHandler];

  if (v7)
  {
    v8 = [(SXImageView *)self preferredQualityImageRequestCancelHandler];
    v8[2]();

    [(SXImageView *)self setPreferredQualityImageRequestCancelHandler:0];
  }

  if (![(SXImageView *)self hasLoadedImage])
  {
    v9 = [(SXImageView *)self activityIndicatorView];
    [v9 startAnimating];
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
  v12 = [v11 wideColorSpace];

  v13 = [SXImageRequest alloc];
  v14 = [(SXImageView *)self imageResource];
  v15 = [v14 imageIdentifier];
  v16 = [(SXImageView *)self imageResource];
  v17 = [v16 URL];
  v18 = [(SXImageRequest *)v13 initWithImageIdentifier:v15 imageQualities:6 url:v17 size:v12 preserveColorspace:v10 loadingBlock:v4, v6];

  v19 = [(SXImageView *)self resourceDataSource];
  v20 = [v19 loadImagesForImageRequest:v18 completionBlock:0];
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
    v3 = [(SXImageView *)self activityIndicatorView];
    [v3 startAnimating];
  }

  objc_initWeak(&location, self);
  v4 = [(SXImageView *)self highQualityImageRequestCancelHandler];
  if (!v4)
  {
    v5 = [(SXImageView *)self highQualityImage];

    if (v5)
    {
      goto LABEL_6;
    }

    v4 = objc_loadWeakRetained(&location);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __35__SXImageView_loadHighQualityImage__block_invoke;
    v17[3] = &unk_1E84FEFB0;
    v17[4] = v4;
    v6 = MEMORY[0x1DA716BE0](v17);
    v7 = [(SXImageView *)self imageResource];
    v8 = [v7 wideColorSpace];

    v9 = [SXImageRequest alloc];
    v10 = [(SXImageView *)self imageResource];
    v11 = [v10 imageIdentifier];
    v12 = [(SXImageView *)self imageResource];
    v13 = [v12 URL];
    v14 = [(SXImageRequest *)v9 initWithImageIdentifier:v11 imageQualities:6 url:v13 size:v8 preserveColorspace:v6 loadingBlock:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

    v15 = [(SXImageView *)self resourceDataSource];
    v16 = [v15 loadImagesForImageRequest:v14 completionBlock:0];
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

- (void)didLoadAnimatedImage:(id)a3
{
  [(SXImageView *)self setAnimatedImage:a3];
  v4 = [(SXImageView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(SXImageView *)self delegate];
    v6 = [(SXImageView *)self animatedImage];
    [v7 imageView:self didLoadAnimatedImage:v6];
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
  v3 = [(SXImageView *)self image];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SXImageView *)self animatedImage];
    v4 = v5 != 0;
  }

  return v4;
}

- (CGSize)loadedImageSize
{
  if ([(SXImageView *)self containsAnimatedImage])
  {
    v3 = [(SXImageView *)self animatedImage];
    [v3 imageSize];
  }

  else
  {
    v3 = [(SXImageView *)self image];
    [v3 size];
  }

  v6 = v4;
  v7 = v5;

  v8 = v6;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)fadeInImageWhenVisible:(id)a3
{
  [(SXImageView *)self setImage:a3];
  if ([(SXImageView *)self isVisible])
  {
    v5 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v5 setFromValue:&unk_1F538A190];
    [v5 setToValue:&unk_1F538A1A8];
    [v5 setDuration:0.2];
    v4 = [(SXImageView *)self layer];
    [v4 addAnimation:v5 forKey:@"fadeIn"];
  }
}

- (BOOL)isVisible
{
  v3 = [(SXImageView *)self superview];
  [(SXImageView *)self frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SXImageView *)self window];
  [v3 convertRect:v12 toView:{v5, v7, v9, v11}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [(SXImageView *)self window];
  [v21 bounds];
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
    v30 = [(SXImageView *)self window];
    v31 = v30 != 0;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (void)setPreferredImageSize:(CGSize)a3
{
  self->_preferredImageSize.width = ceil(a3.width);
  self->_preferredImageSize.height = ceil(a3.height);
  [(SXImageView *)self validateLoadedImage];
}

- (void)reachabilityChanged:(BOOL)a3
{
  if (a3)
  {
    [(SXImageView *)self validateLoadedImage];
  }
}

- (void)setScrubbingEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(SXImageView *)self containsAnimatedImage])
  {
    self->_scrubbingEnabled = v3;
    if (v3 && ([(SXImageView *)self scrubGesture], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
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
      v6 = [(SXImageView *)self scrubGesture];

      if (v6)
      {
        [(SXImageView *)self setUserInteractionEnabled:0];
        v7 = [(SXImageView *)self scrubGesture];
        [(SXImageView *)self removeGestureRecognizer:v7];

        [(SXImageView *)self setScrubGesture:0];
      }
    }
  }

  else
  {
    self->_scrubbingEnabled = 0;
  }
}

- (void)handleScrubGesture:(id)a3
{
  v30 = a3;
  if ([v30 state] == 1)
  {
    [(SXImageView *)self pause];
    [v30 locationInView:self];
    [(SXImageView *)self setPreviousPoint:?];
    v4 = self;
    v5 = 1;
LABEL_17:
    [(SXImageView *)v4 setIsScrubbing:v5];
LABEL_18:
    v26 = v30;
    goto LABEL_19;
  }

  if ([v30 state] == 2)
  {
    v6 = [(SXImageView *)self animatedImage];
    v7 = [v6 numberOfFrames];

    [v30 locationInView:self];
    v9 = v8;
    v11 = v10;
    [(SXImageView *)self previousPoint];
    v13 = v12;
    v14 = [(SXImageView *)self frameIndex];
    v15 = [(SXImageView *)self animatedImage];
    v16 = [v15 numberOfFrames];
    v17 = [(SXImageView *)self frameIndex];

    [(SXImageView *)self frame];
    Width = CGRectGetWidth(v32);
    v19 = [(SXImageView *)self frameIndex];
    if (v9 <= v13)
    {
      [(SXImageView *)self previousPoint];
      v28 = v27 / v14;
      [(SXImageView *)self previousPoint];
      v20 = ((__PAIR128__(v19, *&v9) - COERCE_UNSIGNED_INT64(v29 - v28 + 20.0)) >> 64) & ~(((__PAIR128__(v19, *&v9) - COERCE_UNSIGNED_INT64(v29 - v28 + 20.0)) >> 64) >> 63);
    }

    else
    {
      v20 = v7 - 1;
      [(SXImageView *)self previousPoint];
      v22 = (Width - v21) / (v16 - v17);
      [(SXImageView *)self previousPoint];
      if (v9 <= v23 + v22)
      {
        v24 = v19;
      }

      else
      {
        v24 = v19 + 1;
      }

      if (v20 >= v24)
      {
        v20 = v24;
      }
    }

    v25 = [(SXImageView *)self frameIndex]== v20;
    v26 = v30;
    if (!v25)
    {
      [(SXImageView *)self setFrameIndex:v20 allowNearest:1];
      [(SXImageView *)self setPreviousPoint:v9, v11];
      goto LABEL_18;
    }
  }

  else if ([v30 state] == 3 || (v25 = objc_msgSend(v30, "state") == 4, v26 = v30, v25))
  {
    if ([(SXImageView *)self autoPlayEnabled])
    {
      [(SXImageView *)self resume];
    }

    v4 = self;
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

- (void)willMoveToSuperview:(id)a3
{
  v5.receiver = self;
  v5.super_class = SXImageView;
  [(SXImageView *)&v5 willMoveToSuperview:?];
  if (a3)
  {
    [(SXImageView *)self setShouldResume:[(SXImageView *)self autoPlayEnabled]];
  }
}

- (void)didMoveToSuperview
{
  v6.receiver = self;
  v6.super_class = SXImageView;
  [(SXImageView *)&v6 didMoveToSuperview];
  v3 = [(SXImageView *)self superview];
  if (v3)
  {
    v4 = v3;
    v5 = [(SXImageView *)self shouldResume];

    if (v5)
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
  v3 = [(SXImageView *)self window];

  if (!v3)
  {
    [(SXImageView *)self pause];
    goto LABEL_6;
  }

  v4 = [(SXImageView *)self superview];
  if (v4)
  {
    v5 = v4;
    v6 = [(SXImageView *)self shouldResume];

    if (v6)
    {
      [(SXImageView *)self resume];
LABEL_6:
      [(SXImageView *)self setShouldResume:v3 == 0];
    }
  }
}

- (BOOL)containsAnimatedImage
{
  v2 = [(SXImageView *)self animatedImage];
  v3 = v2 != 0;

  return v3;
}

- (void)setAnimatedImage:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_animatedImage != v5)
  {
    v11 = v5;
    v7 = [(SXImageView *)self scrubbingEnabled]? 2 : 1;
    [v11 setPreloadType:v7 currentFrameIndex:{-[SXImageView frameIndex](self, "frameIndex")}];
    [(SXAnimatedImage *)self->_animatedImage setDelegate:0];
    [v11 setDelegate:self];
    objc_storeStrong(&self->_animatedImage, a3);
    v8 = [v11 loopCount];
    v9 = [v11 loopCount];
    v10 = v8 == -1 ? v9 : v9 + 1;
    self->_playCount = v10;
    v5 = [(SXImageView *)self shouldResumeAfterLoad];
    v6 = v11;
    if (v5)
    {
      [(SXImageView *)self resume];
      v5 = [(SXImageView *)self setShouldResumeAfterLoad:0];
      v6 = v11;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)showNextFrame
{
  v3 = [(SXImageView *)self window];

  if (!v3)
  {
    v4 = [(SXImageView *)self activeTimer];
    [v4 invalidate];

    [(SXImageView *)self setActiveTimer:0];
    v5 = [(SXImageView *)self animatedImage];
    [v5 suspendPreloading];

    [(SXImageView *)self setPaused:1];
  }

  v6 = [(SXImageView *)self animatedImage];
  v26 = [v6 frameAtIndex:{-[SXImageView frameIndex](self, "frameIndex")}];

  v7 = [(SXAnimatedImageFrame *)v26 index]+ 1;
  v8 = [(SXImageView *)self animatedImage];
  v9 = [v8 numberOfFrames];

  if (v7 >= v9)
  {
    [(SXImageView *)self setPlayCount:[(SXImageView *)self playCount]- 1];
    if (![(SXImageView *)self playCount])
    {
      [(SXImageView *)self pause];
      goto LABEL_14;
    }

    v7 = 0;
  }

  v10 = [(SXImageView *)self animatedImage];
  v11 = [v10 frameAtIndex:v7];

  v12 = [(SXAnimatedImageFrame *)v11 image];

  if (v12)
  {
    self->_frameIndex = v7;
    v13 = [(SXAnimatedImageFrame *)v11 image];
    [(SXImageView *)self setImage:v13];

    v14 = [(SXImageView *)self frameChangeBlock];

    if (v14)
    {
      v15 = [(SXImageView *)self frameChangeBlock];
      v16 = [(SXImageView *)self frameIndex];
      v17 = [(SXImageView *)self animatedImage];
      (v15)[2](v15, self, v16, [v17 numberOfFrames]);
    }

    v18 = [(SXImageView *)self activeTimer];
    v19 = [v18 isValid];

    if (v19)
    {
      v20 = [(SXImageView *)self activeTimer];
      [v20 invalidate];
    }

    v21 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel_showNextFrame selector:0 userInfo:0 repeats:-[SXAnimatedImageFrame duration](v11)];
    [(SXImageView *)self setActiveTimer:v21];

    v22 = [MEMORY[0x1E695DFD0] currentRunLoop];
    v23 = [(SXImageView *)self activeTimer];
    [v22 addTimer:v23 forMode:*MEMORY[0x1E695DA28]];

    v24 = self;
    v25 = -1;
  }

  else
  {
    v25 = [(SXAnimatedImageFrame *)v11 index];
    v24 = self;
  }

  [(SXImageView *)v24 setIntendedFrameIndex:v25];

LABEL_14:
}

- (void)setFrameIndex:(unint64_t)a3 allowNearest:(BOOL)a4
{
  v4 = a4;
  self->_frameIndex = a3;
  v6 = [(SXImageView *)self animatedImage];
  v7 = [v6 frameAtIndex:-[SXImageView frameIndex](self returnNearestPreloaded:{"frameIndex"), v4}];
  v9 = [(SXAnimatedImageFrame *)v7 image];

  v8 = v9;
  if (v9)
  {
    [(SXImageView *)self setImage:v9];
    v8 = v9;
  }
}

- (BOOL)paused
{
  v2 = [(SXImageView *)self activeTimer];
  v3 = v2 == 0;

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
    v3 = [(SXImageView *)self activeTimer];
    [v3 invalidate];

    [(SXImageView *)self setActiveTimer:0];
    v4 = [(SXImageView *)self animatedImage];
    [v4 suspendPreloading];
  }
}

- (void)resume
{
  if ([(SXImageView *)self paused]&& [(SXImageView *)self playCount]&& [(SXImageView *)self containsAnimatedImage])
  {
    v3 = [(SXImageView *)self animatedImage];
    [v3 resumePreloading];

    [(SXImageView *)self showNextFrame];
  }

  else if ([(SXImageView *)self paused])
  {

    [(SXImageView *)self setShouldResumeAfterLoad:1];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SXImageView);
  v5 = [(SXImageView *)self animatedImage];

  if (v5)
  {
    v6 = [(SXImageView *)self animatedImage];
    [(SXImageView *)v4 setAnimatedImage:v6];
  }

  else
  {
    v6 = [(SXImageView *)self image];
    [(SXImageView *)v4 setImage:v6];
  }

  return v4;
}

- (void)animatedImage:(id)a3 madeImageAvailableForFrameAtIndex:(unint64_t)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__SXImageView_animatedImage_madeImageAvailableForFrameAtIndex___block_invoke;
  v4[3] = &unk_1E84FEFD8;
  v4[4] = self;
  v4[5] = a4;
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

- (id)itemsForCustomRotor:(id)a3
{
  v4 = a3;
  v5 = +[SXAXCustomRotorDefinition imagesRotor];
  v6 = [SXAXCustomRotor rotorWithName:v5];

  if (v6 == v4)
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
  v2 = [(SXImageView *)self imageResource];
  v3 = [v2 imageIdentifier];

  return v3;
}

- (id)stringForAXDragAction
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Drag Image" value:&stru_1F532F6C0 table:0];

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