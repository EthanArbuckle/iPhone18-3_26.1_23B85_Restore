@interface _UIAlertControllerModernTVActionBackgroundView
+ (CGSize)backgroundInsetAmount;
- (BOOL)vibrantCompositing:(unint64_t)a3;
- (CGSize)_shadowOffset;
- (_UIAlertControllerModernTVActionBackgroundView)initWithFrame:(CGRect)a3;
- (void)_updateBackgroundColor;
- (void)_userInterfaceStyleChanged;
- (void)setHighlighted:(BOOL)a3;
- (void)setVibrantCompositing:(BOOL)a3 forState:(unint64_t)a4;
- (void)updateCompositingForHighlighted:(BOOL)a3;
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

- (_UIAlertControllerModernTVActionBackgroundView)initWithFrame:(CGRect)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _UIAlertControllerModernTVActionBackgroundView;
  v3 = [(_UIAlertControllerTVBackgroundView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(_UIAlertControllerTVBackgroundView *)v3 shadowView];
    [v5 setShadowExpansion:35.0];

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
  v3 = [(_UIAlertControllerTVBackgroundView *)self isHighlighted];
  v6 = [(_UIAlertControllerTVBackgroundView *)self backgroundView];
  if (v3 && ![(_UIAlertControllerModernTVActionBackgroundView *)self shouldUseTintColorAsHighlightColor])
  {
    v4 = +[UIColor whiteColor];
  }

  else
  {
    v4 = [(UIView *)self tintColor];
  }

  v5 = v4;
  [v6 setBackgroundColor:v4];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(_UIAlertControllerTVBackgroundView *)self isHighlighted]!= a3)
  {
    [(_UIAlertControllerTVBackgroundView *)self _alphaForHighlighted:[(_UIAlertControllerTVBackgroundView *)self isHighlighted] pressed:[(_UIAlertControllerTVBackgroundView *)self isPressed]];
    v6 = v5;
    [(_UIAlertControllerTVBackgroundView *)self _alphaForHighlighted:v3 pressed:[(_UIAlertControllerTVBackgroundView *)self isPressed]];
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
    if (v3)
    {
      v11 = v9;
    }

    else
    {
      v11 = [(UIView *)self tintColor];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __65___UIAlertControllerModernTVActionBackgroundView_setHighlighted___block_invoke;
    aBlock[3] = &unk_1E7102A70;
    aBlock[4] = self;
    v12 = v11;
    v19 = v12;
    v21 = v3;
    v20 = v8;
    v13 = _Block_copy(aBlock);
    if (+[UIView areAnimationsEnabled])
    {
      if (v3)
      {
        v14 = 0.1;
      }

      else
      {
        v14 = 0.2;
      }

      v15 = [(_UIAlertControllerTVBackgroundView *)self backgroundView];
      [v15 setAlpha:v6];

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

    [(_UIAlertControllerTVBackgroundView *)self setIsHighlighted:v3];
  }
}

- (void)updateCompositingForHighlighted:(BOOL)a3
{
  if (a3 || ![(_UIAlertControllerModernTVActionBackgroundView *)self vibrantCompositing:0])
  {
    v9 = [(_UIAlertControllerTVBackgroundView *)self backgroundView];
    v10 = [v9 layer];
    [v10 setCompositingFilter:0];
    v11 = 1;
  }

  else
  {
    v4 = [(UIView *)self traitCollection];
    v5 = [v4 userInterfaceStyle];

    v6 = v5 == 1000 || v5 == 2;
    v7 = MEMORY[0x1E6979CF8];
    if (!v6)
    {
      v7 = MEMORY[0x1E6979CE8];
    }

    v8 = *v7;
    v9 = [(_UIAlertControllerTVBackgroundView *)self backgroundView];
    v10 = [v9 layer];
    [v10 setCompositingFilter:v8];

    v11 = 0;
  }

  v12 = [(UIView *)self layer];
  [v12 setAllowsGroupOpacity:v11];

  v13 = [(UIView *)self layer];
  [v13 setAllowsGroupBlending:v11];
}

- (void)_userInterfaceStyleChanged
{
  v3 = [(_UIAlertControllerTVBackgroundView *)self isHighlighted];

  [(_UIAlertControllerModernTVActionBackgroundView *)self updateCompositingForHighlighted:v3];
}

- (void)setVibrantCompositing:(BOOL)a3 forState:(unint64_t)a4
{
  v5 = a3;
  vibrancies = self->_vibrancies;
  if (!vibrancies)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_vibrancies;
    self->_vibrancies = v8;

    vibrancies = self->_vibrancies;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)vibrancies setObject:v10 forKey:v11];

  v12 = [(_UIAlertControllerTVBackgroundView *)self isHighlighted];

  [(_UIAlertControllerModernTVActionBackgroundView *)self updateCompositingForHighlighted:v12];
}

- (BOOL)vibrantCompositing:(unint64_t)a3
{
  vibrancies = self->_vibrancies;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)vibrancies objectForKey:v4];
  v6 = [v5 BOOLValue];

  return v6;
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