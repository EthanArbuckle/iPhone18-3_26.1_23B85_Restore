@interface VUIImageProxyAnimator
- (NSTimer)transitionTimer;
- (VUIImageProxyAnimator)init;
- (VUIImageProxyAnimator)initWithImageView:(id)view andProxies:(id)proxies;
- (void)_displayIntervalTimerFired:(id)fired;
- (void)_fetchNext;
- (void)_setImage:(id)image animated:(BOOL)animated;
- (void)_updateImageWithIndex:(unint64_t)index;
- (void)loadImageProxy:(id)proxy withWeakObject:(id)object completionHandler:(id)handler;
- (void)startAnimation;
- (void)stopAnimation;
@end

@implementation VUIImageProxyAnimator

- (VUIImageProxyAnimator)init
{
  v3 = objc_alloc_init(MEMORY[0x1E69D5998]);
  v4 = [(VUIImageProxyAnimator *)self initWithImageView:v3 andProxies:0];

  return v4;
}

- (VUIImageProxyAnimator)initWithImageView:(id)view andProxies:(id)proxies
{
  viewCopy = view;
  proxiesCopy = proxies;
  v12.receiver = self;
  v12.super_class = VUIImageProxyAnimator;
  v9 = [(VUIImageProxyAnimator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_cachingEnabled = 1;
    objc_storeStrong(&v9->_imageProxies, proxies);
    *&v10->_displayImageIndex = xmmword_1E4296DA0;
    objc_storeStrong(&v10->_imageView, view);
    v10->_animating = 0;
    v10->_animationOptions = 5243008;
    *&v10->_animationDuration = xmmword_1E4296DB0;
    [(VUIImageProxyAnimator *)v10 _fetchNext];
  }

  return v10;
}

- (void)startAnimation
{
  imageProxies = [(VUIImageProxyAnimator *)self imageProxies];
  v4 = [imageProxies count];

  if (v4 >= 2)
  {
    [(VUIImageProxyAnimator *)self setAnimating:1];
    v5 = MEMORY[0x1E695DFF0];
    [(VUIImageProxyAnimator *)self transitionInterval];
    v6 = [v5 scheduledTimerWithTimeInterval:self target:sel__displayIntervalTimerFired_ selector:0 userInfo:0 repeats:?];
    [(VUIImageProxyAnimator *)self setTransitionTimer:v6];
  }
}

- (void)stopAnimation
{
  transitionTimer = [(VUIImageProxyAnimator *)self transitionTimer];
  [transitionTimer invalidate];

  [(VUIImageProxyAnimator *)self setTransitionTimer:0];

  [(VUIImageProxyAnimator *)self setAnimating:0];
}

- (void)_setImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  imageCopy = image;
  imageView = [(VUIImageProxyAnimator *)self imageView];

  if (imageView)
  {
    if (animatedCopy)
    {
      v8 = MEMORY[0x1E69DD250];
      imageView2 = [(VUIImageProxyAnimator *)self imageView];
      [(VUIImageProxyAnimator *)self animationDuration];
      v11 = v10;
      animationOptions = [(VUIImageProxyAnimator *)self animationOptions];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __44__VUIImageProxyAnimator__setImage_animated___block_invoke;
      v14[3] = &unk_1E872D990;
      v14[4] = self;
      v15 = imageCopy;
      [v8 transitionWithView:imageView2 duration:animationOptions options:v14 animations:0 completion:v11];
    }

    else
    {
      imageView3 = [(VUIImageProxyAnimator *)self imageView];
      [imageView3 setImage:imageCopy];
    }
  }
}

void __44__VUIImageProxyAnimator__setImage_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageView];
  [v2 setImage:*(a1 + 40)];
}

- (void)loadImageProxy:(id)proxy withWeakObject:(id)object completionHandler:(id)handler
{
  proxyCopy = proxy;
  objectCopy = object;
  handlerCopy = handler;
  objc_initWeak(&location, objectCopy);
  objc_initWeak(&from, proxyCopy);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__VUIImageProxyAnimator_loadImageProxy_withWeakObject_completionHandler___block_invoke;
  v11[3] = &unk_1E872F9C0;
  objc_copyWeak(&v13, &from);
  objc_copyWeak(&v14, &location);
  v10 = handlerCopy;
  v12 = v10;
  [proxyCopy setCompletionHandler:v11];
  [proxyCopy load];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __73__VUIImageProxyAnimator_loadImageProxy_withWeakObject_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v11 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCompletionHandler:0];

  v9 = objc_loadWeakRetained((a1 + 48));
  if (v9)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))(v10, v9, v11, v7, a4);
    }
  }
}

- (void)_updateImageWithIndex:(unint64_t)index
{
  imageProxies = [(VUIImageProxyAnimator *)self imageProxies];
  v6 = [imageProxies count];

  if (v6 > index)
  {
    imageProxies2 = [(VUIImageProxyAnimator *)self imageProxies];
    v8 = [imageProxies2 objectAtIndexedSubscript:index];

    if ([(VUIImageProxyAnimator *)self isCachingEnabled])
    {
      [v8 setLoadSynchronouslyIfCached:1];
      [v8 setCacheOnLoad:1];
    }

    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__VUIImageProxyAnimator__updateImageWithIndex___block_invoke;
    v9[3] = &unk_1E872FA10;
    v10[1] = index;
    v9[4] = self;
    objc_copyWeak(v10, &location);
    [(VUIImageProxyAnimator *)self loadImageProxy:v8 withWeakObject:self completionHandler:v9];
    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }
}

void __47__VUIImageProxyAnimator__updateImageWithIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__VUIImageProxyAnimator__updateImageWithIndex___block_invoke_2;
  block[3] = &unk_1E872F9E8;
  v11 = v6;
  v12 = v5;
  v7 = *(a1 + 32);
  v14[1] = *(a1 + 48);
  v13 = v7;
  v8 = v5;
  v9 = v6;
  objc_copyWeak(v14, (a1 + 40));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v14);
}

void __47__VUIImageProxyAnimator__updateImageWithIndex___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [v2 uiImage];
    [v3 _setImage:v4 animated:1];

    [*(a1 + 40) setDisplayImageIndex:*(a1 + 64)];
    if (![*(a1 + 48) isAnimating])
    {
      return;
    }

    v5 = [*(a1 + 40) transitionTimer];
    if (v5)
    {
      goto LABEL_14;
    }

    v6 = [*(a1 + 40) imageProxies];
    v7 = [v6 count];

    if (v7 < 2)
    {
      return;
    }

    v8 = MEMORY[0x1E695DFF0];
    [*(a1 + 40) transitionInterval];
    v16 = [v8 scheduledTimerWithTimeInterval:*(a1 + 40) target:sel__displayIntervalTimerFired_ selector:0 userInfo:0 repeats:?];
    [*(a1 + 40) setTransitionTimer:v16];
  }

  else
  {
    v9 = *(a1 + 64);
    v10 = [*(a1 + 40) imageProxies];
    v11 = [v10 count];

    if (v9 >= v11)
    {
      return;
    }

    v12 = [*(a1 + 40) imageProxies];
    v16 = [v12 mutableCopy];

    [v16 removeObjectAtIndex:*(a1 + 64)];
    [*(a1 + 40) setImageProxies:v16];
    v13 = *(a1 + 64);
    if (v13 >= [v16 count])
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a1 + 64);
    }

    if ([v16 count])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      [WeakRetained _updateImageWithIndex:v14];
    }
  }

  v5 = v16;
LABEL_14:
}

- (void)_fetchNext
{
  if ([(VUIImageProxyAnimator *)self indexOfFetchedImage]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(VUIImageProxyAnimator *)self indexOfFetchedImage]+ 1;
  }

  imageProxies = [(VUIImageProxyAnimator *)self imageProxies];
  v5 = [imageProxies count];

  if (v3 < v5)
  {
    while (1)
    {
      imageProxies2 = [(VUIImageProxyAnimator *)self imageProxies];
      v7 = [imageProxies2 objectAtIndex:v3];

      if (([v7 isImageAvailable] & 1) == 0)
      {
        break;
      }

      ++v3;

      if (v5 == v3)
      {
        return;
      }
    }

    objc_initWeak(&location, v7);
    [(VUIImageProxyAnimator *)self setIndexOfFetchedImage:v3];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __35__VUIImageProxyAnimator__fetchNext__block_invoke;
    v11 = &unk_1E872FA38;
    objc_copyWeak(&v12, &location);
    [(VUIImageProxyAnimator *)self loadImageProxy:v7 withWeakObject:self completionHandler:&v8];
    [v7 load];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __35__VUIImageProxyAnimator__fetchNext__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__VUIImageProxyAnimator__fetchNext__block_invoke_2;
  block[3] = &unk_1E872D9B8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __35__VUIImageProxyAnimator__fetchNext__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!*(a1 + 32) && [*(a1 + 40) indexOfFetchedImage] != 0x7FFFFFFFFFFFFFFFLL && WeakRetained != 0)
  {
    v3 = [*(a1 + 40) imageProxies];
    v4 = [v3 mutableCopy];

    v5 = [v4 indexOfObjectIdenticalTo:WeakRetained];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v4 removeObjectAtIndex:v5];
      [*(a1 + 40) setImageProxies:v4];
    }
  }

  [*(a1 + 40) _fetchNext];
}

- (void)_displayIntervalTimerFired:(id)fired
{
  transitionTimer = [(VUIImageProxyAnimator *)self transitionTimer];
  [transitionTimer invalidate];

  [(VUIImageProxyAnimator *)self setTransitionTimer:0];
  v5 = [(VUIImageProxyAnimator *)self displayImageIndex]+ 1;
  imageProxies = [(VUIImageProxyAnimator *)self imageProxies];
  v7 = 0;
  if (v5 < [imageProxies count])
  {
    v7 = [(VUIImageProxyAnimator *)self displayImageIndex]+ 1;
  }

  [(VUIImageProxyAnimator *)self _updateImageWithIndex:v7];
}

- (NSTimer)transitionTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionTimer);

  return WeakRetained;
}

@end