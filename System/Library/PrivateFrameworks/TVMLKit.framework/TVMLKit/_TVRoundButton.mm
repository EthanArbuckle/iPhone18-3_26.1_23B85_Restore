@interface _TVRoundButton
+ (id)_buttonContentWithFrame:(CGRect)frame blurEffectStyle:(int64_t)style blurEnabled:(BOOL)enabled;
- (_TVRoundButton)initWithFrame:(CGRect)frame blurEffectStyle:(int64_t)style blurEnabled:(BOOL)enabled;
- (void)_imageViewDidLoadImage:(id)image;
- (void)_updateBackgroundColorForState:(unint64_t)state;
- (void)_updateFloaingViewFocusState:(BOOL)state coordinator:(id)coordinator;
- (void)_updateFloatingViewFocusStateIfNeeded;
- (void)_updateFocusStateWithCoordinator:(id)coordinator;
- (void)_updateImageMask;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setImageView:(id)view;
- (void)setShouldPunchThroughImage:(BOOL)image;
@end

@implementation _TVRoundButton

+ (id)_buttonContentWithFrame:(CGRect)frame blurEffectStyle:(int64_t)style blurEnabled:(BOOL)enabled
{
  v5 = [(TVButtonContent *)[_TVRoundButtonContent alloc] initWithFrame:style blurEffectStyle:enabled blurEnabled:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  return v5;
}

- (_TVRoundButton)initWithFrame:(CGRect)frame blurEffectStyle:(int64_t)style blurEnabled:(BOOL)enabled
{
  v12.receiver = self;
  v12.super_class = _TVRoundButton;
  v5 = [(TVButton *)&v12 initWithFrame:style blurEffectStyle:enabled blurEnabled:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_shouldPunchThroughImage = 0;
    floatingView = [(TVButton *)v5 floatingView];
    [floatingView setUseShadowImage:0];

    floatingView2 = [(TVButton *)v6 floatingView];
    [floatingView2 setShadowVerticalOffset:12.0];

    floatingView3 = [(TVButton *)v6 floatingView];
    [floatingView3 setShadowRadius:5.0];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__imageViewDidLoadImage_ name:@"TVMLImageViewImageDidLoadNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _TVRoundButton;
  [(_TVRoundButton *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = _TVRoundButton;
  [(TVButton *)&v18 layoutSubviews];
  [(_TVRoundButton *)self bounds];
  v5 = v4;
  v6 = v3 > 0.0 && v3 == v4;
  v7 = v3 * 0.5;
  if (!v6)
  {
    v7 = 0.0;
  }

  v17.receiver = self;
  v17.super_class = _TVRoundButton;
  [(TVButton *)&v17 setCornerRadius:v7];
  if (fabs(-(floor(v5 * 0.5) - v5 * 0.5)) <= 2.22044605e-16)
  {
    floatingView = [(TVButton *)self floatingView];
    [floatingView center];
    v10 = v9;
    v12 = v11;

    floatingView2 = [(TVButton *)self floatingView];
    [floatingView2 setCenter:{v10, v12 + -0.5}];
  }

  imageMask = self->_imageMask;
  buttonContent = [(TVButton *)self buttonContent];
  imageView = [(TVButton *)self imageView];
  [buttonContent _frameForImageView:imageView];
  [(CALayer *)imageMask setFrame:?];

  [(_TVRoundButton *)self _updateFloatingViewFocusStateIfNeeded];
}

- (void)setShouldPunchThroughImage:(BOOL)image
{
  if (self->_shouldPunchThroughImage != image)
  {
    self->_shouldPunchThroughImage = image;
    imageView = [(TVButton *)self imageView];
    image = [imageView image];

    if (image)
    {

      [(_TVRoundButton *)self _updateImageMask];
    }
  }
}

- (void)setImageView:(id)view
{
  v6.receiver = self;
  v6.super_class = _TVRoundButton;
  [(TVButton *)&v6 setImageView:view];
  imageView = [(TVButton *)self imageView];
  image = [imageView image];

  if (image)
  {
    [(_TVRoundButton *)self _updateImageMask];
  }
}

- (void)_imageViewDidLoadImage:(id)image
{
  object = [image object];
  imageView = [(TVButton *)self imageView];

  if (object == imageView)
  {

    [(_TVRoundButton *)self _updateImageMask];
  }
}

- (void)_updateImageMask
{
  [(CALayer *)self->_imageMask removeFromSuperlayer];
  overlayView = [(TVButton *)self overlayView];
  [overlayView setHidden:1];

  if ([(_TVRoundButton *)self shouldPunchThroughImage])
  {
    imageView = [(TVButton *)self imageView];
    image = [imageView image];

    if (image)
    {
      imageView2 = [(TVButton *)self imageView];
      image2 = [imageView2 image];
      blackColor = [MEMORY[0x277D75348] blackColor];
      v9 = [image2 _flatImageWithColor:blackColor];

      layer = [MEMORY[0x277CD9ED0] layer];
      imageMask = self->_imageMask;
      self->_imageMask = layer;

      [(CALayer *)self->_imageMask setCompositingFilter:*MEMORY[0x277CDA310]];
      overlayView2 = [(TVButton *)self overlayView];
      layer2 = [overlayView2 layer];
      [layer2 addSublayer:self->_imageMask];

      -[CALayer setContents:](self->_imageMask, "setContents:", [v9 CGImage]);
      imageView3 = [(TVButton *)self imageView];
      [imageView3 frame];
      [(CALayer *)self->_imageMask setFrame:?];
    }
  }

  state = [(_TVRoundButton *)self state];

  [(_TVRoundButton *)self _updateBackgroundColorForState:state];
}

- (void)_updateBackgroundColorForState:(unint64_t)state
{
  v11.receiver = self;
  v11.super_class = _TVRoundButton;
  [(TVButton *)&v11 _updateBackgroundColorForState:state];
  if ([(_TVRoundButton *)self shouldPunchThroughImage])
  {
    imageView = [(TVButton *)self imageView];
    image = [imageView image];

    if (image)
    {
      floatingView = [(TVButton *)self floatingView];
      [floatingView setBackgroundColor:0 forState:8];

      floatingView2 = [(TVButton *)self floatingView];
      [floatingView2 setBackgroundColor:0 forState:1];

      overlayView = [(TVButton *)self overlayView];
      highlightColor = [(TVButton *)self highlightColor];
      [overlayView setBackgroundColor:highlightColor];

      overlayView2 = [(TVButton *)self overlayView];
      [overlayView2 setHidden:0];
    }
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = _TVRoundButton;
  [(_TVRoundButton *)&v3 didMoveToWindow];
  [(_TVRoundButton *)self _updateFloatingViewFocusStateIfNeeded];
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = _TVRoundButton;
  [(_TVRoundButton *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(_TVRoundButton *)self _updateFloatingViewFocusStateIfNeeded];
}

- (void)_updateFloatingViewFocusStateIfNeeded
{
  window = [(_TVRoundButton *)self window];
  if (window)
  {
    v4 = window;
    [(_TVRoundButton *)self bounds];
    v6 = v5;
    v8 = v7;
    v9 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);

    if (v6 != v9 || v8 != v10)
    {
      block = MEMORY[0x26D6AFBB0](self->_updateFloatingViewFocusStateBlock);
      updateFloatingViewFocusStateBlock = self->_updateFloatingViewFocusStateBlock;
      self->_updateFloatingViewFocusStateBlock = 0;

      v13 = block;
      if (block)
      {
        dispatch_async(MEMORY[0x277D85CD0], block);
        v13 = block;
      }
    }
  }
}

- (void)_updateFloaingViewFocusState:(BOOL)state coordinator:(id)coordinator
{
  stateCopy = state;
  coordinatorCopy = coordinator;
  window = [(_TVRoundButton *)self window];
  if (!window || ((v8 = window, [(_TVRoundButton *)self bounds], v10 = v9, v12 = v11, v13 = *MEMORY[0x277CBF3A8], v14 = *(MEMORY[0x277CBF3A8] + 8), v8, v10 == v13) ? (v15 = v12 == v14) : (v15 = 0), v15))
  {
    objc_initWeak(&location, self);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __59___TVRoundButton__updateFloaingViewFocusState_coordinator___block_invoke;
    v21[3] = &unk_279D6FC18;
    objc_copyWeak(&v23, &location);
    v24 = stateCopy;
    v22 = coordinatorCopy;
    v19 = [v21 copy];
    updateFloatingViewFocusStateBlock = self->_updateFloatingViewFocusStateBlock;
    self->_updateFloatingViewFocusStateBlock = v19;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    floatingView = [(TVButton *)self floatingView];
    v17 = floatingView;
    if (stateCopy)
    {
      v18 = 8;
    }

    else
    {
      v18 = 0;
    }

    [floatingView setControlState:v18 withAnimationCoordinator:coordinatorCopy];
  }
}

- (void)_updateFocusStateWithCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = _TVRoundButton;
  [(TVButton *)&v8 _updateFocusStateWithCoordinator:coordinator];
  isFocused = [(_TVRoundButton *)self isFocused];
  imageView = [(TVButton *)self imageView];
  shouldPunchThroughImage = [(_TVRoundButton *)self shouldPunchThroughImage];
  v7 = 1.0;
  if ((shouldPunchThroughImage & isFocused) != 0)
  {
    v7 = 0.0;
  }

  [imageView setAlpha:v7];
}

@end