@interface UIRecentInputTableCell
+ (id)backgroundColorForBlurEffectStyle:(int64_t)style;
+ (id)focusedTextColorForBlurEffectStyle:(int64_t)style;
+ (id)unfocusedTextColorForBlurEffectStyle:(int64_t)style;
- (BOOL)_tvIsDarkMode;
- (void)_updateAppearance;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setInputText:(id)text withBlurStyle:(int64_t)style;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UIRecentInputTableCell

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = UIRecentInputTableCell;
  [(UITableViewCell *)&v5 layoutSubviews];
  floatingLabel = [(UIRecentInputTableCell *)self floatingLabel];
  floatingContentView = [(UIRecentInputTableCell *)self floatingContentView];
  [floatingContentView bounds];
  [floatingLabel setFrame:?];
}

- (void)setInputText:(id)text withBlurStyle:(int64_t)style
{
  textCopy = text;
  floatingLabel = [(UIRecentInputTableCell *)self floatingLabel];

  if (!floatingLabel)
  {
    v8 = [_UIFloatingContentView alloc];
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
    v13 = [(_UIFloatingContentView *)v8 initWithFrame:*MEMORY[0x1E695F058], v10, v11, v12];
    [(_UIFloatingContentView *)v13 setContentMotionRotation:0.0 translation:0.0698131701, 0.0, 4.0];
    [(UITableViewCell *)self setBackgroundView:v13];
    [(UIRecentInputTableCell *)self setBlurEffectStyle:style];
    v14 = [[UILabel alloc] initWithFrame:v9, v10, v11, v12];
    [(UIRecentInputTableCell *)self setFloatingLabel:v14];

    v15 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline"];
    floatingLabel2 = [(UIRecentInputTableCell *)self floatingLabel];
    [floatingLabel2 setFont:v15];

    floatingLabel3 = [(UIRecentInputTableCell *)self floatingLabel];
    [floatingLabel3 setTextAlignment:1];

    contentView = [(_UIFloatingContentView *)v13 contentView];
    floatingLabel4 = [(UIRecentInputTableCell *)self floatingLabel];
    [contentView addSubview:floatingLabel4];
  }

  floatingLabel5 = [(UIRecentInputTableCell *)self floatingLabel];
  [floatingLabel5 setText:textCopy];

  [(UIRecentInputTableCell *)self _updateAppearance];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v18.receiver = self;
  v18.super_class = UIRecentInputTableCell;
  coordinatorCopy = coordinator;
  contextCopy = context;
  [(UITableViewCell *)&v18 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
  _tvIsDarkMode = [(UIRecentInputTableCell *)self _tvIsDarkMode];
  nextFocusedView = [contextCopy nextFocusedView];

  LODWORD(contextCopy) = [nextFocusedView isDescendantOfView:self];
  floatingContentView = [(UIRecentInputTableCell *)self floatingContentView];
  v11 = floatingContentView;
  if (contextCopy)
  {
    [floatingContentView setControlState:8 animated:1];

    v12 = v17;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v13 = __75__UIRecentInputTableCell_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
  }

  else
  {
    [floatingContentView setControlState:0 animated:1];

    v12 = &v15;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v13 = __75__UIRecentInputTableCell_didUpdateFocusInContext_withAnimationCoordinator___block_invoke_2;
  }

  v12[2] = v13;
  v12[3] = &unk_1E70F32F0;
  if (_tvIsDarkMode)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v12[4] = self;
  v12[5] = v14;
  [coordinatorCopy addCoordinatedAnimations:v15 completion:v16];
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
  blurEffectStyle = [(UIRecentInputTableCell *)self blurEffectStyle];
  backgroundView = [(UITableViewCell *)self backgroundView];

  if (backgroundView)
  {
    v5 = [objc_opt_class() backgroundColorForBlurEffectStyle:blurEffectStyle];
    backgroundView2 = [(UITableViewCell *)self backgroundView];
    [backgroundView2 setBackgroundColor:v5 forState:0];
  }

  floatingLabel = [(UIRecentInputTableCell *)self floatingLabel];

  if (floatingLabel)
  {
    isFocused = [(UIView *)self isFocused];
    v9 = objc_opt_class();
    if (isFocused)
    {
      [v9 focusedTextColorForBlurEffectStyle:blurEffectStyle];
    }

    else
    {
      [v9 unfocusedTextColorForBlurEffectStyle:blurEffectStyle];
    }
    v11 = ;
    floatingLabel2 = [(UIRecentInputTableCell *)self floatingLabel];
    [floatingLabel2 setTextColor:v11];
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  highlightedCopy = highlighted;
  v8.receiver = self;
  v8.super_class = UIRecentInputTableCell;
  [(UITableViewCell *)&v8 setHighlighted:highlighted animated:animated];
  if (highlightedCopy)
  {
    v6 = 9;
  }

  else
  {
    v6 = 0;
  }

  floatingContentView = [(UIRecentInputTableCell *)self floatingContentView];
  [floatingContentView setControlState:v6 animated:1];
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = UIRecentInputTableCell;
  changeCopy = change;
  [(UITableViewCell *)&v6 traitCollectionDidChange:changeCopy];
  v5 = [(UIView *)self traitCollection:v6.receiver];
}

+ (id)unfocusedTextColorForBlurEffectStyle:(int64_t)style
{
  if (style <= 0xD && ((1 << style) & 0x2003) != 0 || style == 4002)
  {
    v3 = [UIColor colorWithWhite:0.0 alpha:0.6];
  }

  else
  {
    v3 = +[UIColor whiteColor];
  }

  return v3;
}

+ (id)focusedTextColorForBlurEffectStyle:(int64_t)style
{
  if (style <= 0xD && ((1 << style) & 0x2003) != 0 || style == 4002)
  {
    v3 = [UIColor colorWithWhite:0.0 alpha:0.6];
  }

  else
  {
    v3 = +[UIColor blackColor];
  }

  return v3;
}

+ (id)backgroundColorForBlurEffectStyle:(int64_t)style
{
  v5 = 0.0;
  if ((style > 0xD || ((1 << style) & 0x2003) == 0) && style != 4002)
  {
    v5 = 1.0;
  }

  v6 = [UIColor colorWithWhite:v5 alpha:0.1, v3];

  return v6;
}

- (BOOL)_tvIsDarkMode
{
  textInputTraits = [(UIRecentInputTableCell *)self textInputTraits];
  keyboardAppearance = [textInputTraits keyboardAppearance];

  traitCollection = [(UIView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  return userInterfaceStyle == 2 || userInterfaceStyle == 1000 || keyboardAppearance == 1;
}

@end