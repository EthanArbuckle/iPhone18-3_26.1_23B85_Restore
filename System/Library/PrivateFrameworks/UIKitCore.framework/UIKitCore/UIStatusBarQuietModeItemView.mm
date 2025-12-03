@interface UIStatusBarQuietModeItemView
- (BOOL)updateForNewData:(id)data actions:(int)actions;
- (double)_visibleAlpha;
- (id)accessibilityHUDRepresentation;
- (void)_triggerAction:(id)action;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)setVisible:(BOOL)visible;
- (void)setVisible:(BOOL)visible frame:(CGRect)frame duration:(double)duration;
@end

@implementation UIStatusBarQuietModeItemView

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_UIStatusBarActionChangeQuietMode" object:0];

  v4.receiver = self;
  v4.super_class = UIStatusBarQuietModeItemView;
  [(UIStatusBarItemView *)&v4 dealloc];
}

- (BOOL)updateForNewData:(id)data actions:(int)actions
{
  v4 = *&actions;
  dataCopy = data;
  v7 = *([dataCopy rawData] + 2529);
  if (self->_inactive != v7 >> 7)
  {
    self->_inactive = v7 >> 7;
    [(UIStatusBarQuietModeItemView *)self setVisible:[(UIStatusBarItemView *)self isVisible]];
  }

  if (!self->_registeredForNotifications)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__triggerAction_ name:@"_UIStatusBarActionChangeQuietMode" object:0];

    self->_registeredForNotifications = 1;
  }

  self->_hideForAction = (v4 & 0x20) != 0;
  v11.receiver = self;
  v11.super_class = UIStatusBarQuietModeItemView;
  v9 = [(UIStatusBarItemView *)&v11 updateForNewData:dataCopy actions:v4];

  return v9;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (self->_hideForAction)
  {
    [(UIView *)self setAlpha:stop, finished, 0.0];
  }

  else
  {
    v5 = [(UIView *)self layer:stop];
    [v5 setMask:0];
  }

  [(UIStatusBarItemView *)self endDisablingRasterization];
}

- (void)_triggerAction:(id)action
{
  object = [action object];
  if ([(UIView *)self isDescendantOfView:object])
  {
    [(UIStatusBarItemView *)self beginDisablingRasterization];
    hideForAction = self->_hideForAction;
    self->_hideForAction = !hideForAction;
    v6 = [UIImage kitImageNamed:@"Item_QuietModeAnimationMask.png"];
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
    _UIGraphicsBeginImageContextWithOptions(0, 0, 14.0, 14.0, v8);

    v9 = +[UIColor blackColor];
    [v9 setFill];

    v35.origin.x = 0.0;
    v35.origin.y = 0.0;
    v35.size.width = 14.0;
    v35.size.height = 14.0;
    UIRectFillUsingBlendMode(v35, kCGBlendModeCopy);
    [v6 drawInRect:23 blendMode:5.0 alpha:{0.0, 9.0, 9.0, 1.0}];
    v10 = _UIGraphicsGetImageFromCurrentImageContext(0);

    UIGraphicsEndImageContext();
    foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
    [foregroundStyle sizeForMoonMaskVisible:1];
    v13 = v12 / 9.0;

    foregroundStyle2 = [(UIStatusBarItemView *)self foregroundStyle];
    [foregroundStyle2 sizeForMoonMaskVisible:0];
    v16 = v15 / 9.0;

    if (hideForAction)
    {
      v17 = v16;
    }

    else
    {
      v17 = v13;
    }

    memset(&v34.m41, 0, 32);
    if (hideForAction)
    {
      v18 = v13;
    }

    else
    {
      v18 = v16;
    }

    memset(&v34, 0, 96);
    if (hideForAction)
    {
      v19 = @"Reveal Moon";
    }

    else
    {
      v19 = @"Hide Moon";
    }

    CATransform3DMakeScale(&v34, v18, v18, 1.0);
    v20 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
    [v20 setDelegate:self];
    [v20 setDuration:0.5];
    v21 = MEMORY[0x1E696B098];
    CATransform3DMakeScale(&v33, v17, v17, 1.0);
    v22 = [v21 valueWithCATransform3D:&v33];
    [v20 setFromValue:v22];

    v33 = v34;
    v23 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v33];
    [v20 setToValue:v23];

    layer = [MEMORY[0x1E6979398] layer];
    [layer setContents:{objc_msgSend(v10, "CGImage")}];
    [v10 scale];
    [layer setContentsScale:?];
    [layer setAnchorPoint:{1.0, 0.0}];
    v25 = *MEMORY[0x1E695EFF8];
    v26 = *(MEMORY[0x1E695EFF8] + 8);
    [v10 size];
    [layer setBounds:{v25, v26, v27, v28}];
    foregroundStyle3 = [(UIStatusBarItemView *)self foregroundStyle];
    [(UIView *)self bounds];
    [foregroundStyle3 positionForMoonMaskInBounds:?];
    [layer setPosition:?];

    v33 = v34;
    [layer setTransform:&v33];
    [layer addAnimation:v20 forKey:v19];
    layer2 = [(UIView *)self layer];
    [layer2 setMask:layer];

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __47__UIStatusBarQuietModeItemView__triggerAction___block_invoke;
    v31[3] = &unk_1E70F35E0;
    v31[4] = self;
    v32 = hideForAction;
    [UIView performWithoutAnimation:v31];
  }
}

uint64_t __47__UIStatusBarQuietModeItemView__triggerAction___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setVisible:*(a1 + 40)];
  v2 = *(a1 + 32);
  [v2 _visibleAlpha];

  return [v2 setAlpha:?];
}

- (void)setVisible:(BOOL)visible frame:(CGRect)frame duration:(double)duration
{
  hideForAction = self->_hideForAction;
  v6.receiver = self;
  v6.super_class = UIStatusBarQuietModeItemView;
  [(UIStatusBarItemView *)&v6 setVisible:visible & ~hideForAction frame:frame.origin.x duration:frame.origin.y, frame.size.width, frame.size.height, duration];
}

- (double)_visibleAlpha
{
  result = 0.3;
  if (!self->_inactive)
  {
    return 1.0;
  }

  return result;
}

- (void)setVisible:(BOOL)visible
{
  visibleCopy = visible;
  v6.receiver = self;
  v6.super_class = UIStatusBarQuietModeItemView;
  [(UIStatusBarItemView *)&v6 setVisible:?];
  v5 = 0.0;
  if (visibleCopy)
  {
    [(UIStatusBarQuietModeItemView *)self _visibleAlpha];
  }

  [(UIView *)self setAlpha:v5];
}

- (id)accessibilityHUDRepresentation
{
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  v4 = [foregroundStyle accessibilityHUDImageNamed:@"QuietMode"];

  v5 = [[UIAccessibilityHUDItem alloc] initWithTitle:0 image:v4 imageInsets:1 scaleImage:0.0, 0.0, 0.0, 0.0];
  [(UIAccessibilityHUDItem *)v5 setDisabledAppearance:self->_inactive];

  return v5;
}

@end