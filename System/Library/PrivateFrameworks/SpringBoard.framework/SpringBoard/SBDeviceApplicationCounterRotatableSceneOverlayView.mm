@interface SBDeviceApplicationCounterRotatableSceneOverlayView
- (SBDeviceApplicationCounterRotatableSceneOverlayView)initWithFrame:(CGRect)a3 contentNeedsCounterRotation:(BOOL)a4 delegate:(id)a5;
- (SBDeviceApplicationCounterRotatableSceneOverlayViewDelegate)delegate;
- (void)_createCounterRotationView;
- (void)containingSceneWillRotateFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4 animationSettings:(id)a5;
- (void)layoutSubviews;
- (void)setContentNeedsCounterRotation:(BOOL)a3;
- (void)setContentView:(id)a3;
@end

@implementation SBDeviceApplicationCounterRotatableSceneOverlayView

- (SBDeviceApplicationCounterRotatableSceneOverlayView)initWithFrame:(CGRect)a3 contentNeedsCounterRotation:(BOOL)a4 delegate:(id)a5
{
  v5 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SBDeviceApplicationCounterRotatableSceneOverlayView;
  v12 = [(SBDeviceApplicationCounterRotatableSceneOverlayView *)&v15 initWithFrame:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, v11);
    v13->_contentNeedsCounterRotation = v5;
    if (v5)
    {
      [(SBDeviceApplicationCounterRotatableSceneOverlayView *)v13 _createCounterRotationView];
    }
  }

  return v13;
}

- (void)setContentView:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_contentView, a3);
  if (self->_contentNeedsCounterRotation)
  {
    counterRotationView = self->_counterRotationView;
    contentView = self->_contentView;
  }

  else
  {
    contentView = self->_contentView;
    counterRotationView = self;
  }

  [counterRotationView addSubview:contentView];
}

- (void)setContentNeedsCounterRotation:(BOOL)a3
{
  if (self->_contentNeedsCounterRotation != a3)
  {
    self->_contentNeedsCounterRotation = a3;
    [(UIView *)self->_contentView removeFromSuperview];
    if (self->_contentNeedsCounterRotation)
    {
      [(SBDeviceApplicationCounterRotatableSceneOverlayView *)self _createCounterRotationView];
      counterRotationView = self->_counterRotationView;
      contentView = self->_contentView;
    }

    else
    {
      [(_UIDirectionalRotationView *)self->_counterRotationView removeFromSuperview];
      v6 = self->_counterRotationView;
      self->_counterRotationView = 0;

      contentView = self->_contentView;
      counterRotationView = self;
    }

    [counterRotationView addSubview:contentView];

    [(SBDeviceApplicationCounterRotatableSceneOverlayView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = SBDeviceApplicationCounterRotatableSceneOverlayView;
  [(SBDeviceApplicationCounterRotatableSceneOverlayView *)&v22 layoutSubviews];
  [(SBDeviceApplicationCounterRotatableSceneOverlayView *)self center];
  v4 = v3;
  v6 = v5;
  if (self->_contentNeedsCounterRotation)
  {
    v7 = [(SBDeviceApplicationCounterRotatableSceneOverlayView *)self delegate];
    v8 = [v7 containerOrientation];

    [(SBDeviceApplicationCounterRotatableSceneOverlayView *)self bounds];
    v12 = v11;
    v14 = v13;
    if ((v8 - 3) <= 1)
    {
      BSSizeSwap();
      v9 = v15;
      v10 = v16;
    }

    [(_UIDirectionalRotationView *)self->_counterRotationView setBounds:v12, v14, v9, v10];
    [(_UIDirectionalRotationView *)self->_counterRotationView setCenter:v4, v6];
    counterRotationView = self->_counterRotationView;
    SBFTransformFromOrientationToOrientation();
    [(_UIDirectionalRotationView *)counterRotationView setTransform:&v21];
  }

  v18 = [(SBDeviceApplicationCounterRotatableSceneOverlayView *)self contentViewHasFixedSize];
  contentView = self->_contentView;
  if (v18)
  {
    [(SBDeviceApplicationCounterRotatableSceneOverlayView *)self convertPoint:self->_counterRotationView toView:v4, v6];
    [(UIView *)contentView setCenter:?];
  }

  else
  {
    v20 = [(UIView *)self->_contentView superview];
    [v20 bounds];
    [(UIView *)contentView setFrame:?];
  }
}

- (void)containingSceneWillRotateFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4 animationSettings:(id)a5
{
  v8 = a5;
  v9 = [(SBDeviceApplicationCounterRotatableSceneOverlayView *)self delegate];
  v10 = [v9 containerOrientation];

  if (a3 != a4 && self->_contentNeedsCounterRotation && v10 == a4)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __146__SBDeviceApplicationCounterRotatableSceneOverlayView_containingSceneWillRotateFromInterfaceOrientation_toInterfaceOrientation_animationSettings___block_invoke;
    v11[3] = &unk_2783A8BC8;
    v11[4] = self;
    v11[5] = a4;
    [MEMORY[0x277D75D18] _animateWithAnimationSettings:v8 animations:v11 completion:0];
  }
}

uint64_t __146__SBDeviceApplicationCounterRotatableSceneOverlayView_containingSceneWillRotateFromInterfaceOrientation_toInterfaceOrientation_animationSettings___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 408);
  SBFTransformFromOrientationToOrientation();
  return [v1 setTransform:&v3];
}

- (void)_createCounterRotationView
{
  v3 = [SBTouchPassthroughCounterRotationView alloc];
  v4 = [(SBTouchPassthroughCounterRotationView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  counterRotationView = self->_counterRotationView;
  self->_counterRotationView = v4;

  [(_UIDirectionalRotationView *)self->_counterRotationView setCounterTransformView:1];
  v6 = self->_counterRotationView;

  [(SBDeviceApplicationCounterRotatableSceneOverlayView *)self addSubview:v6];
}

- (SBDeviceApplicationCounterRotatableSceneOverlayViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end