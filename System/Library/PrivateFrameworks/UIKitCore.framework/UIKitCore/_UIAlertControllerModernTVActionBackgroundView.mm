@interface _UIAlertControllerModernTVActionBackgroundView
+ (CGSize)backgroundInsetAmount;
- (BOOL)vibrantCompositing:(unint64_t)compositing;
- (CGSize)_shadowOffset;
- (_UIAlertControllerModernTVActionBackgroundView)initWithFrame:(CGRect)frame;
- (void)_updateBackgroundColor;
- (void)_userInterfaceStyleChanged;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setVibrantCompositing:(BOOL)compositing forState:(unint64_t)state;
- (void)updateCompositingForHighlighted:(BOOL)highlighted;
@end

@implementation _UIAlertControllerModernTVActionBackgroundView

+ (CGSize)backgroundInsetAmount
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (_UIAlertControllerModernTVActionBackgroundView)initWithFrame:(CGRect)frame
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _UIAlertControllerModernTVActionBackgroundView;
  v3 = [(_UIAlertControllerTVBackgroundView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    shadowView = [(_UIAlertControllerTVBackgroundView *)v3 shadowView];
    [shadowView setShadowExpansion:35.0];

    [(_UIAlertControllerTVBackgroundView *)v4 setAlpha:0 forState:1.0];
    [(_UIAlertControllerTVBackgroundView *)v4 setAlpha:1 forState:0.75];
    v6 = objc_opt_self();
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v8 = [(UIView *)v4 registerForTraitChanges:v7 withAction:sel__userInterfaceStyleChanged];
  }

  return v4;
}

- (void)_updateBackgroundColor
{
  isHighlighted = [(_UIAlertControllerTVBackgroundView *)self isHighlighted];
  backgroundView = [(_UIAlertControllerTVBackgroundView *)self backgroundView];
  if (isHighlighted && ![(_UIAlertControllerModernTVActionBackgroundView *)self shouldUseTintColorAsHighlightColor])
  {
    tintColor = +[UIColor whiteColor];
  }

  else
  {
    tintColor = [(UIView *)self tintColor];
  }

  v5 = tintColor;
  [backgroundView setBackgroundColor:tintColor];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(_UIAlertControllerTVBackgroundView *)self isHighlighted]!= highlighted)
  {
    [(_UIAlertControllerTVBackgroundView *)self _alphaForHighlighted:[(_UIAlertControllerTVBackgroundView *)self isHighlighted] pressed:[(_UIAlertControllerTVBackgroundView *)self isPressed]];
    v6 = v5;
    [(_UIAlertControllerTVBackgroundView *)self _alphaForHighlighted:highlightedCopy pressed:[(_UIAlertControllerTVBackgroundView *)self isPressed]];
    v8 = v7;
    if ([(_UIAlertControllerModernTVActionBackgroundView *)self shouldUseTintColorAsHighlightColor])
    {
      [(UIView *)self tintColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v9 = ;
    v10 = v9;
    if (highlightedCopy)
    {
      tintColor = v9;
    }

    else
    {
      tintColor = [(UIView *)self tintColor];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __65___UIAlertControllerModernTVActionBackgroundView_setHighlighted___block_invoke;
    aBlock[3] = &unk_1E7102A70;
    aBlock[4] = self;
    v12 = tintColor;
    v19 = v12;
    v21 = highlightedCopy;
    v20 = v8;
    v13 = _Block_copy(aBlock);
    if (+[UIView areAnimationsEnabled])
    {
      if (highlightedCopy)
      {
        v14 = 0.1;
      }

      else
      {
        v14 = 0.2;
      }

      backgroundView = [(_UIAlertControllerTVBackgroundView *)self backgroundView];
      [backgroundView setAlpha:v6];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __65___UIAlertControllerModernTVActionBackgroundView_setHighlighted___block_invoke_2;
      v16[3] = &unk_1E70F0F78;
      v17 = v13;
      [UIView animateWithDuration:v16 animations:v14];
    }

    else
    {
      v13[2](v13);
    }

    [(_UIAlertControllerTVBackgroundView *)self setIsHighlighted:highlightedCopy];
  }
}

- (void)updateCompositingForHighlighted:(BOOL)highlighted
{
  if (highlighted || ![(_UIAlertControllerModernTVActionBackgroundView *)self vibrantCompositing:0])
  {
    backgroundView = [(_UIAlertControllerTVBackgroundView *)self backgroundView];
    layer = [backgroundView layer];
    [layer setCompositingFilter:0];
    v11 = 1;
  }

  else
  {
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    v6 = userInterfaceStyle == 1000 || userInterfaceStyle == 2;
    v7 = MEMORY[0x1E6979CF8];
    if (!v6)
    {
      v7 = MEMORY[0x1E6979CE8];
    }

    v8 = *v7;
    backgroundView = [(_UIAlertControllerTVBackgroundView *)self backgroundView];
    layer = [backgroundView layer];
    [layer setCompositingFilter:v8];

    v11 = 0;
  }

  layer2 = [(UIView *)self layer];
  [layer2 setAllowsGroupOpacity:v11];

  layer3 = [(UIView *)self layer];
  [layer3 setAllowsGroupBlending:v11];
}

- (void)_userInterfaceStyleChanged
{
  isHighlighted = [(_UIAlertControllerTVBackgroundView *)self isHighlighted];

  [(_UIAlertControllerModernTVActionBackgroundView *)self updateCompositingForHighlighted:isHighlighted];
}

- (void)setVibrantCompositing:(BOOL)compositing forState:(unint64_t)state
{
  compositingCopy = compositing;
  vibrancies = self->_vibrancies;
  if (!vibrancies)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_vibrancies;
    self->_vibrancies = v8;

    vibrancies = self->_vibrancies;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:compositingCopy];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [(NSMutableDictionary *)vibrancies setObject:v10 forKey:v11];

  isHighlighted = [(_UIAlertControllerTVBackgroundView *)self isHighlighted];

  [(_UIAlertControllerModernTVActionBackgroundView *)self updateCompositingForHighlighted:isHighlighted];
}

- (BOOL)vibrantCompositing:(unint64_t)compositing
{
  vibrancies = self->_vibrancies;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:compositing];
  v5 = [(NSMutableDictionary *)vibrancies objectForKey:v4];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (CGSize)_shadowOffset
{
  v2 = 0.0;
  v3 = 11.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end