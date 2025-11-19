@interface UIStatusBarCarPlayDockAppItemButton
- (BOOL)itemHasBundleIdentifier;
- (BOOL)shouldShowBadge;
- (UIStatusBarCarPlayDockAppItemButton)initWithFrame:(CGRect)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_buttonPressed:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setActive:(BOOL)a3;
- (void)setBadgeHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setCharge:(float)a3;
@end

@implementation UIStatusBarCarPlayDockAppItemButton

- (UIStatusBarCarPlayDockAppItemButton)initWithFrame:(CGRect)a3
{
  v50[12] = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = UIStatusBarCarPlayDockAppItemButton;
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v7 = [(UIButton *)&v49 initWithFrame:*MEMORY[0x1E695F058], v4, v5, v6];
  if (v7)
  {
    v8 = [[UIImageView alloc] initWithFrame:v3, v4, v5, v6];
    iconImageView = v7->_iconImageView;
    v7->_iconImageView = v8;

    [(UIImageView *)v7->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v7 addSubview:v7->_iconImageView];
    v10 = [[UIImageView alloc] initWithFrame:v3, v4, v5, v6];
    iconHighlightImageView = v7->_iconHighlightImageView;
    v7->_iconHighlightImageView = v10;

    [(UIImageView *)v7->_iconHighlightImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v7 addSubview:v7->_iconHighlightImageView];
    [(UIImageView *)v7->_iconHighlightImageView setHidden:1];
    v12 = [[UIImageView alloc] initWithFrame:v3, v4, v5, v6];
    badgeView = v7->_badgeView;
    v7->_badgeView = v12;

    [(UIImageView *)v7->_badgeView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v7 addSubview:v7->_badgeView];
    [(UIImageView *)v7->_badgeView setHidden:1];
    [(UIButton *)v7 setShowsTouchWhenHighlighted:1];
    [(UIControl *)v7 addTarget:v7 action:sel__buttonPressed_ forControlEvents:0x2000];
    [(UIView *)v7 setUserInteractionEnabled:1];
    LODWORD(v14) = -1102263091;
    [(UIStatusBarCarPlayDockAppItemButton *)v7 setCharge:v14];
    v15 = [(UIView *)v7->_iconImageView widthAnchor];
    v16 = [v15 constraintEqualToConstant:23.0];
    widthConstraint = v7->_widthConstraint;
    v7->_widthConstraint = v16;

    v18 = [(UIView *)v7->_iconImageView heightAnchor];
    v19 = [v18 constraintEqualToConstant:23.0];
    heightConstraint = v7->_heightConstraint;
    v7->_heightConstraint = v19;

    v50[0] = v7->_widthConstraint;
    v50[1] = v7->_heightConstraint;
    v48 = [(UIView *)v7->_iconImageView centerXAnchor];
    v47 = [(UIView *)v7 centerXAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v50[2] = v46;
    v45 = [(UIView *)v7->_iconImageView centerYAnchor];
    v44 = [(UIView *)v7 centerYAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v50[3] = v43;
    v42 = [(UIView *)v7->_iconHighlightImageView widthAnchor];
    v41 = [v42 constraintEqualToConstant:31.0];
    v50[4] = v41;
    v40 = [(UIView *)v7->_iconHighlightImageView heightAnchor];
    v39 = [v40 constraintEqualToConstant:31.0];
    v50[5] = v39;
    v38 = [(UIView *)v7->_iconHighlightImageView centerXAnchor];
    v37 = [(UIView *)v7 centerXAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v50[6] = v36;
    v35 = [(UIView *)v7->_iconHighlightImageView centerYAnchor];
    v34 = [(UIView *)v7 centerYAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v50[7] = v33;
    v32 = [(UIView *)v7->_badgeView widthAnchor];
    v21 = [v32 constraintEqualToConstant:9.0];
    v50[8] = v21;
    v22 = [(UIView *)v7->_badgeView heightAnchor];
    v23 = [v22 constraintEqualToConstant:9.0];
    v50[9] = v23;
    v24 = [(UIView *)v7->_badgeView centerXAnchor];
    v25 = [(UIView *)v7->_iconImageView trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:-1.0];
    v50[10] = v26;
    v27 = [(UIView *)v7->_badgeView centerYAnchor];
    v28 = [(UIView *)v7->_iconImageView topAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:1.0];
    v50[11] = v29;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:12];

    [MEMORY[0x1E69977A0] activateConstraints:v31];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UIStatusBarCarPlayDockAppItemButton alloc];
  v5 = [(UIStatusBarCarPlayDockAppItemButton *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = [(UIStatusBarCarPlayDockAppItemButton *)self bundleIdentifier];
  [(UIStatusBarCarPlayDockAppItemButton *)v5 setBundleIdentifier:v6];

  v7 = [(UIStatusBarCarPlayDockAppItemButton *)self iconImageView];
  v8 = [v7 image];
  v9 = [(UIStatusBarCarPlayDockAppItemButton *)v5 iconImageView];
  [v9 setImage:v8];

  v10 = [(UIStatusBarCarPlayDockAppItemButton *)self iconHighlightImageView];
  v11 = [v10 image];
  v12 = [(UIStatusBarCarPlayDockAppItemButton *)v5 iconHighlightImageView];
  [v12 setImage:v11];

  [(UIStatusBarCarPlayDockAppItemButton *)v5 setActive:[(UIStatusBarCarPlayDockAppItemButton *)self isActive]];
  v13 = [(UIStatusBarCarPlayDockAppItemButton *)self iconHighlightImageView];
  v14 = [v13 isHidden];
  v15 = [(UIStatusBarCarPlayDockAppItemButton *)v5 iconHighlightImageView];
  [v15 setHidden:v14];

  [(UIStatusBarCarPlayDockAppItemButton *)v5 setHasBadge:[(UIStatusBarCarPlayDockAppItemButton *)self hasBadge]];
  v16 = [(UIStatusBarCarPlayDockAppItemButton *)self badgeView];
  v17 = [v16 image];
  v18 = [(UIStatusBarCarPlayDockAppItemButton *)v5 badgeView];
  [v18 setImage:v17];

  return v5;
}

- (void)setCharge:(float)a3
{
  v4.receiver = self;
  v4.super_class = UIStatusBarCarPlayDockAppItemButton;
  LODWORD(v3) = -1102263091;
  [(UIView *)&v4 setCharge:v3];
}

- (BOOL)itemHasBundleIdentifier
{
  v2 = [(UIStatusBarCarPlayDockAppItemButton *)self bundleIdentifier];
  v3 = v2 != 0;

  return v3;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v13 = v7;
    v14 = v3;
    self->_active = a3;
    widthConstraint = self->_widthConstraint;
    if (a3)
    {
      v11 = 29.0;
    }

    else
    {
      v11 = 23.0;
    }

    [(NSLayoutConstraint *)widthConstraint setConstant:v11, v8, v13, v4, v14, v5];
    heightConstraint = self->_heightConstraint;

    [(NSLayoutConstraint *)heightConstraint setConstant:v11];
  }
}

- (BOOL)shouldShowBadge
{
  v3 = [(UIStatusBarCarPlayDockAppItemButton *)self hasBadge];
  if (v3)
  {
    if ([(UIView *)self isFocused])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(UIStatusBarCarPlayDockAppItemButton *)self isActive];
    }
  }

  return v3;
}

- (void)setBadgeHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(UIStatusBarCarPlayDockAppItemButton *)self badgeView];
  v8 = [v7 isHidden];

  if (v8 != v5)
  {
    v9 = [(UIStatusBarCarPlayDockAppItemButton *)self badgeView];
    [v9 setHidden:v5];

    if (v4)
    {
      if (v5)
      {
        v10 = [UIImageView alloc];
        v11 = [(UIStatusBarCarPlayDockAppItemButton *)self badgeView];
        v12 = [v11 image];
        v13 = [(UIImageView *)v10 initWithImage:v12];

        v14 = [(UIStatusBarCarPlayDockAppItemButton *)self badgeView];
        [v14 frame];
        [(UIImageView *)v13 setFrame:?];

        [(UIView *)self addSubview:v13];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __63__UIStatusBarCarPlayDockAppItemButton_setBadgeHidden_animated___block_invoke;
        v21[3] = &unk_1E70F3590;
        v22 = v13;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __63__UIStatusBarCarPlayDockAppItemButton_setBadgeHidden_animated___block_invoke_2;
        v19[3] = &unk_1E70F5AC0;
        v20 = v22;
        v15 = v22;
        [UIView animateWithDuration:v21 animations:v19 completion:0.3];
      }

      else
      {
        v16 = [(UIStatusBarCarPlayDockAppItemButton *)self badgeView];
        CGAffineTransformMakeScale(&v18, 0.01, 0.01);
        [v16 setTransform:&v18];

        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __63__UIStatusBarCarPlayDockAppItemButton_setBadgeHidden_animated___block_invoke_3;
        v17[3] = &unk_1E70F3590;
        v17[4] = self;
        [UIView animateWithDuration:v17 animations:0.3];
      }
    }
  }
}

uint64_t __63__UIStatusBarCarPlayDockAppItemButton_setBadgeHidden_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  CGAffineTransformMakeScale(&v3, 0.01, 0.01);
  return [v1 setTransform:&v3];
}

void __63__UIStatusBarCarPlayDockAppItemButton_setBadgeHidden_animated___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) badgeView];
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v3[0] = *MEMORY[0x1E695EFD0];
  v3[1] = v2;
  v3[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v1 setTransform:v3];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = UIStatusBarCarPlayDockAppItemButton;
  v6 = a3;
  [(UIResponder *)&v9 pressesBegan:v6 withEvent:a4];
  LODWORD(a4) = _UIPressesContainsPressType(v6, 4);

  if (a4)
  {
    if ([(UIView *)self isUserInteractionEnabled:v9.receiver])
    {
      v7 = [(UIView *)self layer];
      LODWORD(v8) = 1058642330;
      [v7 setOpacity:v8];
    }
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = UIStatusBarCarPlayDockAppItemButton;
  v6 = a3;
  [(UIResponder *)&v9 pressesChanged:v6 withEvent:a4];
  LODWORD(a4) = _UIPressesContainsPressType(v6, 4);

  if (a4)
  {
    v7 = [(UIView *)self layer:v9.receiver];
    LODWORD(v8) = 1.0;
    [v7 setOpacity:v8];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = UIStatusBarCarPlayDockAppItemButton;
  v6 = a3;
  [(UIResponder *)&v9 pressesEnded:v6 withEvent:a4];
  LODWORD(a4) = _UIPressesContainsPressType(v6, 4);

  if (a4)
  {
    v7 = [(UIView *)self layer:v9.receiver];
    LODWORD(v8) = 1.0;
    [v7 setOpacity:v8];
  }
}

- (void)_buttonPressed:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(__UILogGetCategoryCachedImpl("UIStatusBar", &_buttonPressed____s_category) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = [(UIStatusBarCarPlayDockAppItemButton *)self bundleIdentifier];
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "CarPlayDock item pressed; bundleIdentifier: %{public}@", buf, 0xCu);
  }

  v7 = [(UIStatusBarCarPlayDockAppItemButton *)self bundleIdentifier];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = [(UIStatusBarCarPlayDockAppItemButton *)self bundleIdentifier:0x1EFB19190];
    v12[2] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:3];
    [v8 postNotificationName:0x1EFB9C690 object:self userInfo:v10];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = [a3 nextFocusedItem];

  v6 = [(UIStatusBarCarPlayDockAppItemButton *)self iconHighlightImageView];
  v7 = v6;
  if (v5 == self)
  {
    [v6 setHidden:0];

    v9 = [(UIStatusBarCarPlayDockAppItemButton *)self badgeView];
    v10 = v9;
    v8 = 1;
  }

  else
  {
    [v6 setHidden:1];

    v10 = [(UIStatusBarCarPlayDockAppItemButton *)self badgeView];
    v8 = [(UIStatusBarCarPlayDockAppItemButton *)self shouldShowBadge]^ 1;
    v9 = v10;
  }

  [v9 setHidden:v8];
}

@end