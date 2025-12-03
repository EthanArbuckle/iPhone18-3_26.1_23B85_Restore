@interface _TVCardFloatingContentView
- (CGSize)focusedShadowCardSize;
- (CGSize)unfocusedShadowCardSize;
- (UIEdgeInsets)selectionMarginsForSize:(CGSize)size;
- (_TVCardFloatingContentView)initWithFrame:(CGRect)frame;
- (void)_updateForAccessibilityChange;
- (void)dealloc;
- (void)floatingContentView:(id)view didFinishTransitioningToState:(unint64_t)state;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBgColor:(id)color highlightBgColor:(id)bgColor cornerRadius:(double)radius;
- (void)setFocusedShadowImage:(id)image;
- (void)setPressed:(BOOL)pressed animated:(BOOL)animated completion:(id)completion;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator;
- (void)setUnfocusedShadowImage:(id)image;
@end

@implementation _TVCardFloatingContentView

- (_TVCardFloatingContentView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _TVCardFloatingContentView;
  v3 = [(_UIFloatingContentView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIFloatingContentView *)v3 setContentOpaque:1];
    [(_UIFloatingContentView *)v4 setContentMotionRotation:0.08 translation:0.08, 12.0, 12.0];
    if (objc_opt_respondsToSelector())
    {
      [(_UIFloatingContentView *)v4 setHighlightStyle:1];
    }

    [(_UIFloatingContentView *)v4 setFloatingContentDelegate:v4];
    [(_TVCardFloatingContentView *)v4 setFocusedShadowCardSize:200.0, 200.0];
    [(_TVCardFloatingContentView *)v4 setUnfocusedShadowCardSize:26.0, 26.0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__updateForAccessibilityChange name:*MEMORY[0x277D81CF8] object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _TVCardFloatingContentView;
  [(_UIFloatingContentView *)&v4 dealloc];
}

- (void)_updateForAccessibilityChange
{
  v3 = _AXSHighContrastFocusIndicatorsEnabled() != 0;

  [(_UIFloatingContentView *)self setShowsHighContrastFocusIndicator:v3];
}

- (void)setBgColor:(id)color highlightBgColor:(id)bgColor cornerRadius:(double)radius
{
  colorCopy = color;
  bgColorCopy = bgColor;
  self->_unfocusedAlpha = 1.0;
  [(_UIFloatingContentView *)self setCornerRadius:0.0];
  [(_UIFloatingContentView *)self setBackgroundColor:0 forState:0];
  [(_UIFloatingContentView *)self setBackgroundColor:0 forState:8];
  [(_UIFloatingContentView *)self setBackgroundColor:0 forState:1];
  [(_UIFloatingContentView *)self setBackgroundColor:0 forState:4];
  if (colorCopy | bgColorCopy)
  {
    [(_TVCardFloatingContentView *)self setAlpha:1.0];
    [(_UIFloatingContentView *)self setCornerRadius:radius];
    [(_UIFloatingContentView *)self setBackgroundColor:colorCopy forState:0];
    if (bgColorCopy)
    {
      [(_UIFloatingContentView *)self setBackgroundColor:bgColorCopy forState:8];
      [(_UIFloatingContentView *)self setBackgroundColor:bgColorCopy forState:1];
      [(_UIFloatingContentView *)self setBackgroundColor:bgColorCopy forState:4];
    }
  }
}

- (void)prepareForReuse
{
  contentView = [(_UIFloatingContentView *)self contentView];
  subviews = [contentView subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

  unfocusedShadowView = self->_unfocusedShadowView;
  self->_unfocusedShadowView = 0;

  focusedShadowView = self->_focusedShadowView;
  self->_focusedShadowView = 0;
}

- (void)setUnfocusedShadowImage:(id)image
{
  imageCopy = image;
  objc_storeStrong(&self->_unfocusedShadowImage, image);
  [imageCopy size];
  v6 = v5;
  v8 = v7;
  [(_TVCardFloatingContentView *)self bounds];
  Width = CGRectGetWidth(v26);
  v10 = self->_unfocusedShadowCardSize.width;
  [(_TVCardFloatingContentView *)self bounds];
  Height = CGRectGetHeight(v27);
  v12 = self->_unfocusedShadowCardSize.height;
  [(_TVCardFloatingContentView *)self bounds];
  v13 = CGRectGetWidth(v28);
  [(_TVCardFloatingContentView *)self bounds];
  v14 = CGRectGetHeight(v29);
  unfocusedShadowView = self->_unfocusedShadowView;
  if (!unfocusedShadowView)
  {
    v16 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{floor((v13 - (v6 + Width - v10)) * 0.5), floor((v14 - (v8 + Height - v12)) * 0.5), v6 + Width - v10, v8 + Height - v12}];
    v17 = self->_unfocusedShadowView;
    self->_unfocusedShadowView = v16;

    contentView = [(_UIFloatingContentView *)self contentView];
    [contentView insertSubview:self->_unfocusedShadowView atIndex:0];

    unfocusedShadowView = self->_unfocusedShadowView;
  }

  layer = [(UIView *)unfocusedShadowView layer];
  v20 = imageCopy;
  [layer setContents:{objc_msgSend(imageCopy, "CGImage")}];

  layer2 = [(UIView *)self->_unfocusedShadowView layer];
  [imageCopy scale];
  [layer2 setContentsScale:?];

  layer3 = [(UIView *)self->_unfocusedShadowView layer];
  [layer3 setContentsCenter:{0.5, 0.5, 0.1, 0.1}];

  unfocusedShadowAlpha = 0.0;
  if (!self->_isSelected)
  {
    unfocusedShadowAlpha = self->_unfocusedShadowAlpha;
  }

  [(UIView *)self->_unfocusedShadowView setAlpha:unfocusedShadowAlpha];
}

- (void)setFocusedShadowImage:(id)image
{
  imageCopy = image;
  objc_storeStrong(&self->_focusedShadowImage, image);
  [imageCopy size];
  v6 = v5;
  v8 = v7;
  [(_TVCardFloatingContentView *)self bounds];
  Width = CGRectGetWidth(v26);
  v10 = self->_focusedShadowCardSize.width;
  [(_TVCardFloatingContentView *)self bounds];
  Height = CGRectGetHeight(v27);
  v12 = self->_focusedShadowCardSize.height;
  [(_TVCardFloatingContentView *)self bounds];
  v13 = CGRectGetWidth(v28);
  [(_TVCardFloatingContentView *)self bounds];
  v14 = CGRectGetHeight(v29);
  focusedShadowView = self->_focusedShadowView;
  if (!focusedShadowView)
  {
    v16 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{floor((v13 - (v6 + Width - v10)) * 0.5), floor((v14 - (v8 + Height - v12)) * 0.5), v6 + Width - v10, v8 + Height - v12}];
    v17 = self->_focusedShadowView;
    self->_focusedShadowView = v16;

    contentView = [(_UIFloatingContentView *)self contentView];
    [contentView insertSubview:self->_focusedShadowView atIndex:0];

    focusedShadowView = self->_focusedShadowView;
  }

  layer = [(UIView *)focusedShadowView layer];
  v20 = imageCopy;
  [layer setContents:{objc_msgSend(imageCopy, "CGImage")}];

  layer2 = [(UIView *)self->_focusedShadowView layer];
  [imageCopy scale];
  [layer2 setContentsScale:?];

  layer3 = [(UIView *)self->_focusedShadowView layer];
  [layer3 setContentsCenter:{0.5, 0.5, 0.1, 0.1}];

  focusedShadowAlpha = 0.0;
  if (self->_isSelected)
  {
    focusedShadowAlpha = self->_focusedShadowAlpha;
  }

  [(UIView *)self->_focusedShadowView setAlpha:focusedShadowAlpha];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated withAnimationCoordinator:(id)coordinator
{
  animatedCopy = animated;
  selectedCopy = selected;
  coordinatorCopy = coordinator;
  self->_isSelected = selectedCopy;
  if (selectedCopy)
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  [(_UIFloatingContentView *)self setControlState:v9 withAnimationCoordinator:coordinatorCopy];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __76___TVCardFloatingContentView_setSelected_animated_withAnimationCoordinator___block_invoke;
  v21[3] = &unk_279D6E6D0;
  v21[4] = self;
  v22 = selectedCopy;
  v10 = MEMORY[0x26D6AFBB0](v21);
  v11 = v10;
  if (animatedCopy)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76___TVCardFloatingContentView_setSelected_animated_withAnimationCoordinator___block_invoke_3;
    v19[3] = &unk_279D6E6F8;
    v20 = v10;
    [coordinatorCopy addCoordinatedAnimationsForAnimation:!selectedCopy animations:v19 completion:0];
  }

  else
  {
    v10[2](v10);
  }

  contentView = [(_UIFloatingContentView *)self contentView];
  subviews = [contentView subviews];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76___TVCardFloatingContentView_setSelected_animated_withAnimationCoordinator___block_invoke_4;
  v15[3] = &unk_279D6E720;
  v17 = selectedCopy;
  v18 = animatedCopy;
  v16 = coordinatorCopy;
  v14 = coordinatorCopy;
  [subviews enumerateObjectsUsingBlock:v15];
}

- (void)setPressed:(BOOL)pressed animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  if (self->_isSelected)
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  pressedCopy = pressed;
  completionCopy = completion;
  [(_UIFloatingContentView *)self setControlState:v7 | pressedCopy animated:animatedCopy];
  [(_TVCardFloatingContentView *)self setPressCompletionBlock:completionCopy];
}

- (void)floatingContentView:(id)view didFinishTransitioningToState:(unint64_t)state
{
  v5 = [(_TVCardFloatingContentView *)self pressCompletionBlock:view];

  if (v5)
  {
    pressCompletionBlock = [(_TVCardFloatingContentView *)self pressCompletionBlock];
    pressCompletionBlock[2]();

    [(_TVCardFloatingContentView *)self setPressCompletionBlock:0];
  }
}

- (UIEdgeInsets)selectionMarginsForSize:(CGSize)size
{
  if (size.width == 0.0 || (height = size.height, size.height == 0.0))
  {
    [(_TVCardFloatingContentView *)self bounds];
    width = v6;
    height = v7;
  }

  else
  {
    width = size.width;
  }

  layer = [(_TVCardFloatingContentView *)self layer];
  [layer anchorPoint];
  v10 = v9;
  v12 = v11;

  if (width <= height)
  {
    v13 = height;
  }

  else
  {
    v13 = width;
  }

  [(_UIFloatingContentView *)self focusedSizeIncrease];
  v15 = (v13 + v14) / v13;
  v16 = width * v15 - width;
  v17 = height * v15 - height;
  v18 = floor(v12 * v17);
  v19 = floor(v10 * v16);
  v20 = floor((1.0 - v12) * v17);
  v21 = floor((1.0 - v10) * v16);
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = _TVCardFloatingContentView;
  [(_UIFloatingContentView *)&v27 layoutSubviews];
  unfocusedShadowImage = [(_TVCardFloatingContentView *)self unfocusedShadowImage];
  [unfocusedShadowImage size];
  v5 = v4;
  v7 = v6;

  [(_TVCardFloatingContentView *)self bounds];
  v8 = v5 + CGRectGetWidth(v28);
  [(_TVCardFloatingContentView *)self unfocusedShadowCardSize];
  v10 = v8 - v9;
  [(_TVCardFloatingContentView *)self bounds];
  v11 = v7 + CGRectGetHeight(v29);
  [(_TVCardFloatingContentView *)self unfocusedShadowCardSize];
  v13 = v11 - v12;
  [(_TVCardFloatingContentView *)self bounds];
  v14 = floor((CGRectGetWidth(v30) - v10) * 0.5);
  [(_TVCardFloatingContentView *)self bounds];
  [(UIView *)self->_unfocusedShadowView setFrame:v14, floor((CGRectGetHeight(v31) - v13) * 0.5), v10, v13];
  focusedShadowImage = [(_TVCardFloatingContentView *)self focusedShadowImage];
  [focusedShadowImage size];
  v17 = v16;
  v19 = v18;

  [(_TVCardFloatingContentView *)self bounds];
  v20 = v17 + CGRectGetWidth(v32);
  [(_TVCardFloatingContentView *)self focusedShadowCardSize];
  v22 = v20 - v21;
  [(_TVCardFloatingContentView *)self bounds];
  v23 = v19 + CGRectGetHeight(v33);
  [(_TVCardFloatingContentView *)self focusedShadowCardSize];
  v25 = v23 - v24;
  [(_TVCardFloatingContentView *)self bounds];
  v26 = floor((CGRectGetWidth(v34) - v22) * 0.5);
  [(_TVCardFloatingContentView *)self bounds];
  [(UIView *)self->_focusedShadowView setFrame:v26, floor((CGRectGetHeight(v35) - v25) * 0.5), v22, v25];
}

- (CGSize)focusedShadowCardSize
{
  width = self->_focusedShadowCardSize.width;
  height = self->_focusedShadowCardSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)unfocusedShadowCardSize
{
  width = self->_unfocusedShadowCardSize.width;
  height = self->_unfocusedShadowCardSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end