@interface _UIUCBGroupBarButtonVisualProviderIOS
+ (id)darkKeyboardProvider;
+ (id)lightKeyboardProvider;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldLift;
- (CGPoint)menuAnchorPoint;
- (id)copyWithZone:(_NSZone *)zone;
- (id)imageSymbolConfiguration;
- (void)configureButton:(id)button withAppearanceDelegate:(id)delegate fromBarItem:(id)item;
- (void)updateButton:(id)button forSelectedState:(BOOL)state;
@end

@implementation _UIUCBGroupBarButtonVisualProviderIOS

+ (id)darkKeyboardProvider
{
  v2 = objc_alloc_init(self);
  v2[88] = 0;

  return v2;
}

+ (id)lightKeyboardProvider
{
  v2 = objc_alloc_init(self);
  v2[88] = 1;

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = _UIUCBGroupBarButtonVisualProviderIOS;
  if ([(_UIButtonBarButtonVisualProvider *)&v12 isEqual:equalCopy])
  {
    v5 = equalCopy;
    v6 = v5;
    if (*(v5 + 88) != self->_lightKeyboard)
    {
      goto LABEL_9;
    }

    v7 = v5[12];
    tintColor = self->_tintColor;
    if (v7 == tintColor)
    {
      v10 = 1;
      goto LABEL_12;
    }

    if (!v7 || tintColor == 0)
    {
LABEL_9:
      v10 = 0;
    }

    else
    {
      v10 = [(UIColor *)v7 isEqual:?];
    }

LABEL_12:

    goto LABEL_13;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIUCBGroupBarButtonVisualProviderIOS;
  v4 = [(_UIButtonBarButtonVisualProvider *)&v6 copyWithZone:zone];
  *(v4 + 88) = self->_lightKeyboard;
  objc_storeStrong(v4 + 12, self->_tintColor);
  return v4;
}

- (void)updateButton:(id)button forSelectedState:(BOOL)state
{
  stateCopy = state;
  buttonCopy = button;
  if (stateCopy)
  {
    tintColor = +[UIColor systemBlueColor];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->super.super._barButtonItem);
    isKeyboardItem = [WeakRetained isKeyboardItem];

    if (isKeyboardItem)
    {
      tintColor = 0;
    }

    else
    {
      tintColor = objc_loadWeakRetained(&self->_appearanceDelegate);

      if (tintColor)
      {
        v9 = objc_loadWeakRetained(&self->_appearanceDelegate);
        tintColor = [v9 tintColor];
      }
    }
  }

  [(UIButton *)self->super._contentButton setTintColor:tintColor];
}

- (id)imageSymbolConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
  if (WeakRetained && (v4 = WeakRetained, v5 = objc_loadWeakRetained(&self->_appearanceDelegate), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    v7 = objc_loadWeakRetained(&self->_appearanceDelegate);
    imageSymbolConfiguration = [v7 imageSymbolConfiguration];
  }

  else
  {
    imageSymbolConfiguration = 0;
  }

  return imageSymbolConfiguration;
}

- (void)configureButton:(id)button withAppearanceDelegate:(id)delegate fromBarItem:(id)item
{
  buttonCopy = button;
  itemCopy = item;
  delegateCopy = delegate;
  objc_storeWeak(&self->_appearanceDelegate, delegateCopy);
  v28.receiver = self;
  v28.super_class = _UIUCBGroupBarButtonVisualProviderIOS;
  [(_UIUCBBarButtonVisualProviderIOS *)&v28 configureButton:buttonCopy withAppearanceDelegate:delegateCopy fromBarItem:itemCopy];

  if (!self->_selectionBackgroundView)
  {
    v11 = objc_alloc_init(_UIUCBKBSelectionBackground);
    selectionBackgroundView = self->_selectionBackgroundView;
    self->_selectionBackgroundView = v11;

    [(UIView *)self->_selectionBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_selectionBackgroundView setUserInteractionEnabled:0];
    [(_UIUCBKBSelectionBackground *)self->_selectionBackgroundView setShowButtonShape:0];
    v13 = self->_selectionBackgroundView;
    if (self->super._contentButton)
    {
      [buttonCopy insertSubview:v13 belowSubview:?];
    }

    else
    {
      [buttonCopy addSubview:v13];
    }

    leadingAnchor = [(UIView *)self->_selectionBackgroundView leadingAnchor];
    leadingAnchor2 = [buttonCopy leadingAnchor];
    v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v16 setActive:1];

    trailingAnchor = [(UIView *)self->_selectionBackgroundView trailingAnchor];
    trailingAnchor2 = [buttonCopy trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v19 setActive:1];

    topAnchor = [(UIView *)self->_selectionBackgroundView topAnchor];
    topAnchor2 = [buttonCopy topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:6.0];

    LODWORD(v23) = 1144750080;
    [v22 setPriority:v23];
    [v22 setActive:1];
    bottomAnchor = [(UIView *)self->_selectionBackgroundView bottomAnchor];
    bottomAnchor2 = [buttonCopy bottomAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-6.0];

    LODWORD(v27) = 1144750080;
    [v26 setPriority:v27];
    [v26 setActive:1];
  }
}

- (BOOL)shouldLift
{
  selectionBackgroundView = self->_selectionBackgroundView;
  if (selectionBackgroundView)
  {
    LOBYTE(selectionBackgroundView) = [(_UIUCBKBSelectionBackground *)selectionBackgroundView showButtonShape];
  }

  return selectionBackgroundView;
}

- (CGPoint)menuAnchorPoint
{
  v22.receiver = self;
  v22.super_class = _UIUCBGroupBarButtonVisualProviderIOS;
  [(_UIUCBBarButtonVisualProviderIOS *)&v22 menuAnchorPoint];
  v4 = v3;
  v6 = v5;
  WeakRetained = objc_loadWeakRetained(&self->super.super._barButtonItem);
  v8 = [WeakRetained tag];

  if (v8 == 1735287116)
  {
    superview = [(UIView *)self->super.super._button superview];
    [(UIView *)self->super.super._button center];
    v11 = v10;
    v13 = v12;
    window = [(UIView *)self->super.super._button window];
    [superview convertPoint:window toView:{v11, v13}];
    v16 = v15;

    window2 = [(UIView *)self->super.super._button window];
    [window2 bounds];
    MidX = CGRectGetMidX(v24);

    v4 = 0.0;
    if (v16 <= MidX)
    {
      [(UIView *)self->super.super._button bounds];
      v4 = v19;
    }
  }

  v20 = v4;
  v21 = v6;
  result.y = v21;
  result.x = v20;
  return result;
}

@end