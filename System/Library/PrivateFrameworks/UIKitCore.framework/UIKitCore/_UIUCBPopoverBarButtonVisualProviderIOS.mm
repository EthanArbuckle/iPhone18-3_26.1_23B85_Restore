@interface _UIUCBPopoverBarButtonVisualProviderIOS
- (BOOL)isEqual:(id)a3;
- (_UIUCBPopoverBarButtonVisualProviderIOS)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)configureButton:(id)a3 withAppearanceDelegate:(id)a4 fromBarItem:(id)a5;
- (void)updateButton:(id)a3 forSelectedState:(BOOL)a4;
@end

@implementation _UIUCBPopoverBarButtonVisualProviderIOS

- (_UIUCBPopoverBarButtonVisualProviderIOS)init
{
  v8.receiver = self;
  v8.super_class = _UIUCBPopoverBarButtonVisualProviderIOS;
  v2 = [(_UIButtonBarButtonVisualProvider *)&v8 init];
  if (v2)
  {
    v3 = +[UIColor whiteColor];
    selectionTintColor = v2->_selectionTintColor;
    v2->_selectionTintColor = v3;

    v5 = [UIColor colorWithRed:0.0901960784 green:0.494117647 blue:0.984313725 alpha:1.0];
    selectionBackgroundTintColor = v2->_selectionBackgroundTintColor;
    v2->_selectionBackgroundTintColor = v5;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _UIUCBPopoverBarButtonVisualProviderIOS;
  v4 = [(_UIButtonBarButtonVisualProvider *)&v6 copyWithZone:a3];
  [v4 setSelectionBackgroundTintColor:self->_selectionBackgroundTintColor];
  [v4 setSelectionTintColor:self->_selectionTintColor];
  return v4;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = _UIUCBPopoverBarButtonVisualProviderIOS;
  v3 = [(_UIButtonBarButtonVisualProvider *)&v6 hash];
  v4 = [(UIColor *)self->_selectionBackgroundTintColor hash]^ v3;
  return v4 ^ [(UIColor *)self->_selectionTintColor hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UIUCBPopoverBarButtonVisualProviderIOS;
  if ([(_UIButtonBarButtonVisualProvider *)&v12 isEqual:v4])
  {
    v5 = v4;
    selectionTintColor = self->_selectionTintColor;
    if (selectionTintColor == v5[11])
    {
      v7 = 1;
    }

    else
    {
      v7 = [(UIColor *)selectionTintColor isEqual:?];
    }

    selectionBackgroundTintColor = self->_selectionBackgroundTintColor;
    if (selectionBackgroundTintColor == v5[10])
    {
      v10 = 1;
    }

    else
    {
      v10 = [(UIColor *)selectionBackgroundTintColor isEqual:?];
    }

    v8 = v7 & v10;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)configureButton:(id)a3 withAppearanceDelegate:(id)a4 fromBarItem:(id)a5
{
  v8 = a3;
  v25.receiver = self;
  v25.super_class = _UIUCBPopoverBarButtonVisualProviderIOS;
  [(_UIUCBBarButtonVisualProviderIOS *)&v25 configureButton:v8 withAppearanceDelegate:a4 fromBarItem:a5];
  if (!self->_selectionBackgroundView)
  {
    v9 = objc_alloc_init(UIView);
    selectionBackgroundView = self->_selectionBackgroundView;
    self->_selectionBackgroundView = v9;

    [(UIView *)self->_selectionBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_selectionBackgroundView setUserInteractionEnabled:0];
    [(UIView *)self->_selectionBackgroundView setBackgroundColor:self->_selectionBackgroundTintColor];
    [(UIView *)self->_selectionBackgroundView _setContinuousCornerRadius:2.0];
    v11 = [v8 isSelected];
    v12 = 0.0;
    if (v11)
    {
      v12 = 1.0;
    }

    [(UIView *)self->_selectionBackgroundView setAlpha:v12];
    [v8 insertSubview:self->_selectionBackgroundView belowSubview:self->super._contentButton];
    v13 = [(UIView *)self->_selectionBackgroundView leadingAnchor];
    v14 = [v8 leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    [v15 setActive:1];

    v16 = [(UIView *)self->_selectionBackgroundView trailingAnchor];
    v17 = [v8 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    [v18 setActive:1];

    v19 = [(UIView *)self->_selectionBackgroundView topAnchor];
    v20 = [v8 topAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v22 = [(UIView *)self->_selectionBackgroundView bottomAnchor];
    v23 = [v8 bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v24 setActive:1];
  }
}

- (void)updateButton:(id)a3 forSelectedState:(BOOL)a4
{
  if (a4)
  {
    selectionTintColor = self->_selectionTintColor;
  }

  else
  {
    selectionTintColor = 0;
  }

  contentButton = self->super._contentButton;
  v7 = a3;
  [(UIButton *)contentButton setTintColor:selectionTintColor];
  v8 = [v7 isSelected];

  v9 = 0.0;
  if (v8)
  {
    v9 = 1.0;
  }

  selectionBackgroundView = self->_selectionBackgroundView;

  [(UIView *)selectionBackgroundView setAlpha:v9];
}

@end