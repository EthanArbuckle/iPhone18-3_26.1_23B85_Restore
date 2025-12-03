@interface _PXUIContainerView
- (void)didMoveToWindow;
@end

@implementation _PXUIContainerView

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = _PXUIContainerView;
  [(_PXUIContainerView *)&v5 didMoveToWindow];
  deferredAppearingAnimation = [(_PXUIContainerView *)self deferredAppearingAnimation];

  if (deferredAppearingAnimation)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37___PXUIContainerView_didMoveToWindow__block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

@end