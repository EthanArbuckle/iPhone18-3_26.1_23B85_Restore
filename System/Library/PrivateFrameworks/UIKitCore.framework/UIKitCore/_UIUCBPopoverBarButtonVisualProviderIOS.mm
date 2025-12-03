@interface _UIUCBPopoverBarButtonVisualProviderIOS
- (BOOL)isEqual:(id)equal;
- (_UIUCBPopoverBarButtonVisualProviderIOS)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)configureButton:(id)button withAppearanceDelegate:(id)delegate fromBarItem:(id)item;
- (void)updateButton:(id)button forSelectedState:(BOOL)state;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIUCBPopoverBarButtonVisualProviderIOS;
  v4 = [(_UIButtonBarButtonVisualProvider *)&v6 copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = _UIUCBPopoverBarButtonVisualProviderIOS;
  if ([(_UIButtonBarButtonVisualProvider *)&v12 isEqual:equalCopy])
  {
    v5 = equalCopy;
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

- (void)configureButton:(id)button withAppearanceDelegate:(id)delegate fromBarItem:(id)item
{
  buttonCopy = button;
  v25.receiver = self;
  v25.super_class = _UIUCBPopoverBarButtonVisualProviderIOS;
  [(_UIUCBBarButtonVisualProviderIOS *)&v25 configureButton:buttonCopy withAppearanceDelegate:delegate fromBarItem:item];
  if (!self->_selectionBackgroundView)
  {
    v9 = objc_alloc_init(UIView);
    selectionBackgroundView = self->_selectionBackgroundView;
    self->_selectionBackgroundView = v9;

    [(UIView *)self->_selectionBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_selectionBackgroundView setUserInteractionEnabled:0];
    [(UIView *)self->_selectionBackgroundView setBackgroundColor:self->_selectionBackgroundTintColor];
    [(UIView *)self->_selectionBackgroundView _setContinuousCornerRadius:2.0];
    isSelected = [buttonCopy isSelected];
    v12 = 0.0;
    if (isSelected)
    {
      v12 = 1.0;
    }

    [(UIView *)self->_selectionBackgroundView setAlpha:v12];
    [buttonCopy insertSubview:self->_selectionBackgroundView belowSubview:self->super._contentButton];
    leadingAnchor = [(UIView *)self->_selectionBackgroundView leadingAnchor];
    leadingAnchor2 = [buttonCopy leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v15 setActive:1];

    trailingAnchor = [(UIView *)self->_selectionBackgroundView trailingAnchor];
    trailingAnchor2 = [buttonCopy trailingAnchor];
    v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v18 setActive:1];

    topAnchor = [(UIView *)self->_selectionBackgroundView topAnchor];
    topAnchor2 = [buttonCopy topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v21 setActive:1];

    bottomAnchor = [(UIView *)self->_selectionBackgroundView bottomAnchor];
    bottomAnchor2 = [buttonCopy bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v24 setActive:1];
  }
}

- (void)updateButton:(id)button forSelectedState:(BOOL)state
{
  if (state)
  {
    selectionTintColor = self->_selectionTintColor;
  }

  else
  {
    selectionTintColor = 0;
  }

  contentButton = self->super._contentButton;
  buttonCopy = button;
  [(UIButton *)contentButton setTintColor:selectionTintColor];
  isSelected = [buttonCopy isSelected];

  v9 = 0.0;
  if (isSelected)
  {
    v9 = 1.0;
  }

  selectionBackgroundView = self->_selectionBackgroundView;

  [(UIView *)selectionBackgroundView setAlpha:v9];
}

@end