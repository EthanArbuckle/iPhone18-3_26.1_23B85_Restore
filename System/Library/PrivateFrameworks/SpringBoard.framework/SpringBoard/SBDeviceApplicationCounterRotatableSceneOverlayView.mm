@interface SBDeviceApplicationCounterRotatableSceneOverlayView
- (SBDeviceApplicationCounterRotatableSceneOverlayView)initWithFrame:(CGRect)frame contentNeedsCounterRotation:(BOOL)rotation delegate:(id)delegate;
- (SBDeviceApplicationCounterRotatableSceneOverlayViewDelegate)delegate;
- (void)_createCounterRotationView;
- (void)containingSceneWillRotateFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation animationSettings:(id)settings;
- (void)layoutSubviews;
- (void)setContentNeedsCounterRotation:(BOOL)rotation;
- (void)setContentView:(id)view;
@end

@implementation SBDeviceApplicationCounterRotatableSceneOverlayView

- (SBDeviceApplicationCounterRotatableSceneOverlayView)initWithFrame:(CGRect)frame contentNeedsCounterRotation:(BOOL)rotation delegate:(id)delegate
{
  rotationCopy = rotation;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = SBDeviceApplicationCounterRotatableSceneOverlayView;
  height = [(SBDeviceApplicationCounterRotatableSceneOverlayView *)&v15 initWithFrame:x, y, width, height];
  v13 = height;
  if (height)
  {
    objc_storeWeak(&height->_delegate, delegateCopy);
    v13->_contentNeedsCounterRotation = rotationCopy;
    if (rotationCopy)
    {
      [(SBDeviceApplicationCounterRotatableSceneOverlayView *)v13 _createCounterRotationView];
    }
  }

  return v13;
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  objc_storeStrong(&self->_contentView, view);
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

- (void)setContentNeedsCounterRotation:(BOOL)rotation
{
  if (self->_contentNeedsCounterRotation != rotation)
  {
    self->_contentNeedsCounterRotation = rotation;
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
    delegate = [(SBDeviceApplicationCounterRotatableSceneOverlayView *)self delegate];
    containerOrientation = [delegate containerOrientation];

    [(SBDeviceApplicationCounterRotatableSceneOverlayView *)self bounds];
    v12 = v11;
    v14 = v13;
    if ((containerOrientation - 3) <= 1)
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

  contentViewHasFixedSize = [(SBDeviceApplicationCounterRotatableSceneOverlayView *)self contentViewHasFixedSize];
  contentView = self->_contentView;
  if (contentViewHasFixedSize)
  {
    [(SBDeviceApplicationCounterRotatableSceneOverlayView *)self convertPoint:self->_counterRotationView toView:v4, v6];
    [(UIView *)contentView setCenter:?];
  }

  else
  {
    superview = [(UIView *)self->_contentView superview];
    [superview bounds];
    [(UIView *)contentView setFrame:?];
  }
}

- (void)containingSceneWillRotateFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation animationSettings:(id)settings
{
  settingsCopy = settings;
  delegate = [(SBDeviceApplicationCounterRotatableSceneOverlayView *)self delegate];
  containerOrientation = [delegate containerOrientation];

  if (orientation != interfaceOrientation && self->_contentNeedsCounterRotation && containerOrientation == interfaceOrientation)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __146__SBDeviceApplicationCounterRotatableSceneOverlayView_containingSceneWillRotateFromInterfaceOrientation_toInterfaceOrientation_animationSettings___block_invoke;
    v11[3] = &unk_2783A8BC8;
    v11[4] = self;
    v11[5] = interfaceOrientation;
    [MEMORY[0x277D75D18] _animateWithAnimationSettings:settingsCopy animations:v11 completion:0];
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