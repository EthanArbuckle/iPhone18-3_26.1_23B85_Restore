@interface PXLivePhotoTrimScrubberHiddenAnimationHelper
- (PXLivePhotoTrimScrubberHiddenAnimationHelper)initWithAnimationBlock:(id)block;
- (void)_setHidden:(BOOL)hidden animated:(BOOL)animated afterDelay:(double)delay;
- (void)_setHidden:(BOOL)hidden animated:(BOOL)animated withRequstID:(int64_t)d;
@end

@implementation PXLivePhotoTrimScrubberHiddenAnimationHelper

- (void)_setHidden:(BOOL)hidden animated:(BOOL)animated withRequstID:(int64_t)d
{
  if (self->_hideRequestCounter == d)
  {
    hiddenCopy = hidden;
    if (self->_hidden != hidden)
    {
      self->_hidden = hidden;
      if (animated)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __81__PXLivePhotoTrimScrubberHiddenAnimationHelper__setHidden_animated_withRequstID___block_invoke;
        v7[3] = &unk_1E7749428;
        v7[4] = self;
        hiddenCopy2 = hidden;
        [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0 animations:v7 completion:0];
      }

      else
      {
        animationBlock = [(PXLivePhotoTrimScrubberHiddenAnimationHelper *)self animationBlock];
        animationBlock[2](animationBlock, hiddenCopy);
      }
    }
  }
}

void __81__PXLivePhotoTrimScrubberHiddenAnimationHelper__setHidden_animated_withRequstID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) animationBlock];
  v2[2](v2, *(a1 + 40));
}

- (void)_setHidden:(BOOL)hidden animated:(BOOL)animated afterDelay:(double)delay
{
  hideRequestCounter = self->_hideRequestCounter;
  v8 = (hideRequestCounter + 1);
  self->_hideRequestCounter = hideRequestCounter + 1;
  if (delay <= 0.0)
  {

    [(PXLivePhotoTrimScrubberHiddenAnimationHelper *)self _setHidden:hidden animated:animated withRequstID:hideRequestCounter + 1];
  }

  else
  {
    objc_initWeak(&location, self);
    v10 = dispatch_time(0, (delay * 1000000000.0));
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__PXLivePhotoTrimScrubberHiddenAnimationHelper__setHidden_animated_afterDelay___block_invoke;
    v11[3] = &unk_1E77471B8;
    objc_copyWeak(v12, &location);
    hiddenCopy = hidden;
    animatedCopy = animated;
    v12[1] = v8;
    dispatch_after(v10, MEMORY[0x1E69E96A0], v11);
    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

void __79__PXLivePhotoTrimScrubberHiddenAnimationHelper__setHidden_animated_afterDelay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setHidden:*(a1 + 48) animated:*(a1 + 49) withRequstID:*(a1 + 40)];
}

- (PXLivePhotoTrimScrubberHiddenAnimationHelper)initWithAnimationBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = PXLivePhotoTrimScrubberHiddenAnimationHelper;
  v5 = [(PXLivePhotoTrimScrubberHiddenAnimationHelper *)&v9 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    animationBlock = v5->_animationBlock;
    v5->_animationBlock = v6;
  }

  return v5;
}

@end