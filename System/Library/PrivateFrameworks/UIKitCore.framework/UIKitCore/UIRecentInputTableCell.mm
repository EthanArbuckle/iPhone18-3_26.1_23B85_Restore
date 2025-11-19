@interface UIRecentInputTableCell
+ (id)backgroundColorForBlurEffectStyle:(int64_t)a3;
+ (id)focusedTextColorForBlurEffectStyle:(int64_t)a3;
+ (id)unfocusedTextColorForBlurEffectStyle:(int64_t)a3;
- (BOOL)_tvIsDarkMode;
- (void)_updateAppearance;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setInputText:(id)a3 withBlurStyle:(int64_t)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UIRecentInputTableCell

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = UIRecentInputTableCell;
  [(UITableViewCell *)&v5 layoutSubviews];
  v3 = [(UIRecentInputTableCell *)self floatingLabel];
  v4 = [(UIRecentInputTableCell *)self floatingContentView];
  [v4 bounds];
  [v3 setFrame:?];
}

- (void)setInputText:(id)a3 withBlurStyle:(int64_t)a4
{
  v6 = a3;
  v7 = [(UIRecentInputTableCell *)self floatingLabel];

  if (!v7)
  {
    v8 = [_UIFloatingContentView alloc];
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
    v13 = [(_UIFloatingContentView *)v8 initWithFrame:*MEMORY[0x1E695F058], v10, v11, v12];
    [(_UIFloatingContentView *)v13 setContentMotionRotation:0.0 translation:0.0698131701, 0.0, 4.0];
    [(UITableViewCell *)self setBackgroundView:v13];
    [(UIRecentInputTableCell *)self setBlurEffectStyle:a4];
    v14 = [[UILabel alloc] initWithFrame:v9, v10, v11, v12];
    [(UIRecentInputTableCell *)self setFloatingLabel:v14];

    v15 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline"];
    v16 = [(UIRecentInputTableCell *)self floatingLabel];
    [v16 setFont:v15];

    v17 = [(UIRecentInputTableCell *)self floatingLabel];
    [v17 setTextAlignment:1];

    v18 = [(_UIFloatingContentView *)v13 contentView];
    v19 = [(UIRecentInputTableCell *)self floatingLabel];
    [v18 addSubview:v19];
  }

  v20 = [(UIRecentInputTableCell *)self floatingLabel];
  [v20 setText:v6];

  [(UIRecentInputTableCell *)self _updateAppearance];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v18.receiver = self;
  v18.super_class = UIRecentInputTableCell;
  v6 = a4;
  v7 = a3;
  [(UITableViewCell *)&v18 didUpdateFocusInContext:v7 withAnimationCoordinator:v6];
  v8 = [(UIRecentInputTableCell *)self _tvIsDarkMode];
  v9 = [v7 nextFocusedView];

  LODWORD(v7) = [v9 isDescendantOfView:self];
  v10 = [(UIRecentInputTableCell *)self floatingContentView];
  v11 = v10;
  if (v7)
  {
    [v10 setControlState:8 animated:1];

    v12 = v17;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v13 = __75__UIRecentInputTableCell_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
  }

  else
  {
    [v10 setControlState:0 animated:1];

    v12 = &v15;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v13 = __75__UIRecentInputTableCell_didUpdateFocusInContext_withAnimationCoordinator___block_invoke_2;
  }

  v12[2] = v13;
  v12[3] = &unk_1E70F32F0;
  if (v8)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v12[4] = self;
  v12[5] = v14;
  [v6 addCoordinatedAnimations:v15 completion:v16];
}

void __75__UIRecentInputTableCell_didUpdateFocusInContext_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  v3 = [objc_opt_class() focusedTextColorForBlurEffectStyle:*(a1 + 40)];
  v2 = [*(a1 + 32) floatingLabel];
  [v2 setTextColor:v3];
}

void __75__UIRecentInputTableCell_didUpdateFocusInContext_withAnimationCoordinator___block_invoke_2(uint64_t a1)
{
  v3 = [objc_opt_class() unfocusedTextColorForBlurEffectStyle:*(a1 + 40)];
  v2 = [*(a1 + 32) floatingLabel];
  [v2 setTextColor:v3];
}

- (void)_updateAppearance
{
  v3 = [(UIRecentInputTableCell *)self blurEffectStyle];
  v4 = [(UITableViewCell *)self backgroundView];

  if (v4)
  {
    v5 = [objc_opt_class() backgroundColorForBlurEffectStyle:v3];
    v6 = [(UITableViewCell *)self backgroundView];
    [v6 setBackgroundColor:v5 forState:0];
  }

  v7 = [(UIRecentInputTableCell *)self floatingLabel];

  if (v7)
  {
    v8 = [(UIView *)self isFocused];
    v9 = objc_opt_class();
    if (v8)
    {
      [v9 focusedTextColorForBlurEffectStyle:v3];
    }

    else
    {
      [v9 unfocusedTextColorForBlurEffectStyle:v3];
    }
    v11 = ;
    v10 = [(UIRecentInputTableCell *)self floatingLabel];
    [v10 setTextColor:v11];
  }
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIRecentInputTableCell;
  [(UITableViewCell *)&v8 setHighlighted:a3 animated:a4];
  if (v4)
  {
    v6 = 9;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(UIRecentInputTableCell *)self floatingContentView];
  [v7 setControlState:v6 animated:1];
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIRecentInputTableCell;
  v4 = a3;
  [(UITableViewCell *)&v6 traitCollectionDidChange:v4];
  v5 = [(UIView *)self traitCollection:v6.receiver];
}

+ (id)unfocusedTextColorForBlurEffectStyle:(int64_t)a3
{
  if (a3 <= 0xD && ((1 << a3) & 0x2003) != 0 || a3 == 4002)
  {
    v3 = [UIColor colorWithWhite:0.0 alpha:0.6];
  }

  else
  {
    v3 = +[UIColor whiteColor];
  }

  return v3;
}

+ (id)focusedTextColorForBlurEffectStyle:(int64_t)a3
{
  if (a3 <= 0xD && ((1 << a3) & 0x2003) != 0 || a3 == 4002)
  {
    v3 = [UIColor colorWithWhite:0.0 alpha:0.6];
  }

  else
  {
    v3 = +[UIColor blackColor];
  }

  return v3;
}

+ (id)backgroundColorForBlurEffectStyle:(int64_t)a3
{
  v5 = 0.0;
  if ((a3 > 0xD || ((1 << a3) & 0x2003) == 0) && a3 != 4002)
  {
    v5 = 1.0;
  }

  v6 = [UIColor colorWithWhite:v5 alpha:0.1, v3];

  return v6;
}

- (BOOL)_tvIsDarkMode
{
  v3 = [(UIRecentInputTableCell *)self textInputTraits];
  v4 = [v3 keyboardAppearance];

  v5 = [(UIView *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  return v6 == 2 || v6 == 1000 || v4 == 1;
}

@end