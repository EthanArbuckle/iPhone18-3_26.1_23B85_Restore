@interface UIStatusBarCarPlayDockAppItemButton
- (BOOL)itemHasBundleIdentifier;
- (BOOL)shouldShowBadge;
- (UIStatusBarCarPlayDockAppItemButton)initWithFrame:(CGRect)frame;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_buttonPressed:(id)pressed;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setActive:(BOOL)active;
- (void)setBadgeHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setCharge:(float)charge;
@end

@implementation UIStatusBarCarPlayDockAppItemButton

- (UIStatusBarCarPlayDockAppItemButton)initWithFrame:(CGRect)frame
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
    widthAnchor = [(UIView *)v7->_iconImageView widthAnchor];
    v16 = [widthAnchor constraintEqualToConstant:23.0];
    widthConstraint = v7->_widthConstraint;
    v7->_widthConstraint = v16;

    heightAnchor = [(UIView *)v7->_iconImageView heightAnchor];
    v19 = [heightAnchor constraintEqualToConstant:23.0];
    heightConstraint = v7->_heightConstraint;
    v7->_heightConstraint = v19;

    v50[0] = v7->_widthConstraint;
    v50[1] = v7->_heightConstraint;
    centerXAnchor = [(UIView *)v7->_iconImageView centerXAnchor];
    centerXAnchor2 = [(UIView *)v7 centerXAnchor];
    v46 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v50[2] = v46;
    centerYAnchor = [(UIView *)v7->_iconImageView centerYAnchor];
    centerYAnchor2 = [(UIView *)v7 centerYAnchor];
    v43 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v50[3] = v43;
    widthAnchor2 = [(UIView *)v7->_iconHighlightImageView widthAnchor];
    v41 = [widthAnchor2 constraintEqualToConstant:31.0];
    v50[4] = v41;
    heightAnchor2 = [(UIView *)v7->_iconHighlightImageView heightAnchor];
    v39 = [heightAnchor2 constraintEqualToConstant:31.0];
    v50[5] = v39;
    centerXAnchor3 = [(UIView *)v7->_iconHighlightImageView centerXAnchor];
    centerXAnchor4 = [(UIView *)v7 centerXAnchor];
    v36 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v50[6] = v36;
    centerYAnchor3 = [(UIView *)v7->_iconHighlightImageView centerYAnchor];
    centerYAnchor4 = [(UIView *)v7 centerYAnchor];
    v33 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v50[7] = v33;
    widthAnchor3 = [(UIView *)v7->_badgeView widthAnchor];
    v21 = [widthAnchor3 constraintEqualToConstant:9.0];
    v50[8] = v21;
    heightAnchor3 = [(UIView *)v7->_badgeView heightAnchor];
    v23 = [heightAnchor3 constraintEqualToConstant:9.0];
    v50[9] = v23;
    centerXAnchor5 = [(UIView *)v7->_badgeView centerXAnchor];
    trailingAnchor = [(UIView *)v7->_iconImageView trailingAnchor];
    v26 = [centerXAnchor5 constraintEqualToAnchor:trailingAnchor constant:-1.0];
    v50[10] = v26;
    centerYAnchor5 = [(UIView *)v7->_badgeView centerYAnchor];
    topAnchor = [(UIView *)v7->_iconImageView topAnchor];
    v29 = [centerYAnchor5 constraintEqualToAnchor:topAnchor constant:1.0];
    v50[11] = v29;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:12];

    [MEMORY[0x1E69977A0] activateConstraints:v31];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UIStatusBarCarPlayDockAppItemButton alloc];
  v5 = [(UIStatusBarCarPlayDockAppItemButton *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  bundleIdentifier = [(UIStatusBarCarPlayDockAppItemButton *)self bundleIdentifier];
  [(UIStatusBarCarPlayDockAppItemButton *)v5 setBundleIdentifier:bundleIdentifier];

  iconImageView = [(UIStatusBarCarPlayDockAppItemButton *)self iconImageView];
  image = [iconImageView image];
  iconImageView2 = [(UIStatusBarCarPlayDockAppItemButton *)v5 iconImageView];
  [iconImageView2 setImage:image];

  iconHighlightImageView = [(UIStatusBarCarPlayDockAppItemButton *)self iconHighlightImageView];
  image2 = [iconHighlightImageView image];
  iconHighlightImageView2 = [(UIStatusBarCarPlayDockAppItemButton *)v5 iconHighlightImageView];
  [iconHighlightImageView2 setImage:image2];

  [(UIStatusBarCarPlayDockAppItemButton *)v5 setActive:[(UIStatusBarCarPlayDockAppItemButton *)self isActive]];
  iconHighlightImageView3 = [(UIStatusBarCarPlayDockAppItemButton *)self iconHighlightImageView];
  isHidden = [iconHighlightImageView3 isHidden];
  iconHighlightImageView4 = [(UIStatusBarCarPlayDockAppItemButton *)v5 iconHighlightImageView];
  [iconHighlightImageView4 setHidden:isHidden];

  [(UIStatusBarCarPlayDockAppItemButton *)v5 setHasBadge:[(UIStatusBarCarPlayDockAppItemButton *)self hasBadge]];
  badgeView = [(UIStatusBarCarPlayDockAppItemButton *)self badgeView];
  image3 = [badgeView image];
  badgeView2 = [(UIStatusBarCarPlayDockAppItemButton *)v5 badgeView];
  [badgeView2 setImage:image3];

  return v5;
}

- (void)setCharge:(float)charge
{
  v4.receiver = self;
  v4.super_class = UIStatusBarCarPlayDockAppItemButton;
  LODWORD(v3) = -1102263091;
  [(UIView *)&v4 setCharge:v3];
}

- (BOOL)itemHasBundleIdentifier
{
  bundleIdentifier = [(UIStatusBarCarPlayDockAppItemButton *)self bundleIdentifier];
  v3 = bundleIdentifier != 0;

  return v3;
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    v13 = v7;
    v14 = v3;
    self->_active = active;
    widthConstraint = self->_widthConstraint;
    if (active)
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
  hasBadge = [(UIStatusBarCarPlayDockAppItemButton *)self hasBadge];
  if (hasBadge)
  {
    if ([(UIView *)self isFocused])
    {
      LOBYTE(hasBadge) = 0;
    }

    else
    {
      LOBYTE(hasBadge) = ![(UIStatusBarCarPlayDockAppItemButton *)self isActive];
    }
  }

  return hasBadge;
}

- (void)setBadgeHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  badgeView = [(UIStatusBarCarPlayDockAppItemButton *)self badgeView];
  isHidden = [badgeView isHidden];

  if (isHidden != hiddenCopy)
  {
    badgeView2 = [(UIStatusBarCarPlayDockAppItemButton *)self badgeView];
    [badgeView2 setHidden:hiddenCopy];

    if (animatedCopy)
    {
      if (hiddenCopy)
      {
        v10 = [UIImageView alloc];
        badgeView3 = [(UIStatusBarCarPlayDockAppItemButton *)self badgeView];
        image = [badgeView3 image];
        v13 = [(UIImageView *)v10 initWithImage:image];

        badgeView4 = [(UIStatusBarCarPlayDockAppItemButton *)self badgeView];
        [badgeView4 frame];
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
        badgeView5 = [(UIStatusBarCarPlayDockAppItemButton *)self badgeView];
        CGAffineTransformMakeScale(&v18, 0.01, 0.01);
        [badgeView5 setTransform:&v18];

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

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = UIStatusBarCarPlayDockAppItemButton;
  beganCopy = began;
  [(UIResponder *)&v9 pressesBegan:beganCopy withEvent:event];
  LODWORD(event) = _UIPressesContainsPressType(beganCopy, 4);

  if (event)
  {
    if ([(UIView *)self isUserInteractionEnabled:v9.receiver])
    {
      layer = [(UIView *)self layer];
      LODWORD(v8) = 1058642330;
      [layer setOpacity:v8];
    }
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = UIStatusBarCarPlayDockAppItemButton;
  cancelledCopy = cancelled;
  [(UIResponder *)&v9 pressesChanged:cancelledCopy withEvent:event];
  LODWORD(event) = _UIPressesContainsPressType(cancelledCopy, 4);

  if (event)
  {
    v7 = [(UIView *)self layer:v9.receiver];
    LODWORD(v8) = 1.0;
    [v7 setOpacity:v8];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = UIStatusBarCarPlayDockAppItemButton;
  endedCopy = ended;
  [(UIResponder *)&v9 pressesEnded:endedCopy withEvent:event];
  LODWORD(event) = _UIPressesContainsPressType(endedCopy, 4);

  if (event)
  {
    v7 = [(UIView *)self layer:v9.receiver];
    LODWORD(v8) = 1.0;
    [v7 setOpacity:v8];
  }
}

- (void)_buttonPressed:(id)pressed
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(__UILogGetCategoryCachedImpl("UIStatusBar", &_buttonPressed____s_category) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    bundleIdentifier = [(UIStatusBarCarPlayDockAppItemButton *)self bundleIdentifier];
    *buf = 138543362;
    v14 = bundleIdentifier;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "CarPlayDock item pressed; bundleIdentifier: %{public}@", buf, 0xCu);
  }

  bundleIdentifier2 = [(UIStatusBarCarPlayDockAppItemButton *)self bundleIdentifier];

  if (bundleIdentifier2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = [(UIStatusBarCarPlayDockAppItemButton *)self bundleIdentifier:0x1EFB19190];
    v12[2] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:3];
    [defaultCenter postNotificationName:0x1EFB9C690 object:self userInfo:v10];
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];

  iconHighlightImageView = [(UIStatusBarCarPlayDockAppItemButton *)self iconHighlightImageView];
  v7 = iconHighlightImageView;
  if (nextFocusedItem == self)
  {
    [iconHighlightImageView setHidden:0];

    badgeView = [(UIStatusBarCarPlayDockAppItemButton *)self badgeView];
    badgeView2 = badgeView;
    v8 = 1;
  }

  else
  {
    [iconHighlightImageView setHidden:1];

    badgeView2 = [(UIStatusBarCarPlayDockAppItemButton *)self badgeView];
    v8 = [(UIStatusBarCarPlayDockAppItemButton *)self shouldShowBadge]^ 1;
    badgeView = badgeView2;
  }

  [badgeView setHidden:v8];
}

@end