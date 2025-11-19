@interface _UIUCBGroupBarButtonVisualProviderIOS
+ (id)darkKeyboardProvider;
+ (id)lightKeyboardProvider;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldLift;
- (CGPoint)menuAnchorPoint;
- (id)copyWithZone:(_NSZone *)a3;
- (id)imageSymbolConfiguration;
- (void)configureButton:(id)a3 withAppearanceDelegate:(id)a4 fromBarItem:(id)a5;
- (void)updateButton:(id)a3 forSelectedState:(BOOL)a4;
@end

@implementation _UIUCBGroupBarButtonVisualProviderIOS

+ (id)darkKeyboardProvider
{
  v2 = objc_alloc_init(a1);
  v2[88] = 0;

  return v2;
}

+ (id)lightKeyboardProvider
{
  v2 = objc_alloc_init(a1);
  v2[88] = 1;

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UIUCBGroupBarButtonVisualProviderIOS;
  if ([(_UIButtonBarButtonVisualProvider *)&v12 isEqual:v4])
  {
    v5 = v4;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _UIUCBGroupBarButtonVisualProviderIOS;
  v4 = [(_UIButtonBarButtonVisualProvider *)&v6 copyWithZone:a3];
  *(v4 + 88) = self->_lightKeyboard;
  objc_storeStrong(v4 + 12, self->_tintColor);
  return v4;
}

- (void)updateButton:(id)a3 forSelectedState:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  if (v4)
  {
    v6 = +[UIColor systemBlueColor];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->super.super._barButtonItem);
    v8 = [WeakRetained isKeyboardItem];

    if (v8)
    {
      v6 = 0;
    }

    else
    {
      v6 = objc_loadWeakRetained(&self->_appearanceDelegate);

      if (v6)
      {
        v9 = objc_loadWeakRetained(&self->_appearanceDelegate);
        v6 = [v9 tintColor];
      }
    }
  }

  [(UIButton *)self->super._contentButton setTintColor:v6];
}

- (id)imageSymbolConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
  if (WeakRetained && (v4 = WeakRetained, v5 = objc_loadWeakRetained(&self->_appearanceDelegate), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    v7 = objc_loadWeakRetained(&self->_appearanceDelegate);
    v8 = [v7 imageSymbolConfiguration];
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
  v9 = a5;
  v10 = a4;
  objc_storeWeak(&self->_appearanceDelegate, v10);
  v28.receiver = self;
  v28.super_class = _UIUCBGroupBarButtonVisualProviderIOS;
  [(_UIUCBBarButtonVisualProviderIOS *)&v28 configureButton:v8 withAppearanceDelegate:v10 fromBarItem:v9];

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
      [v8 insertSubview:v13 belowSubview:?];
    }

    else
    {
      [v8 addSubview:v13];
    }

    v14 = [(UIView *)self->_selectionBackgroundView leadingAnchor];
    v15 = [v8 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v16 setActive:1];

    v17 = [(UIView *)self->_selectionBackgroundView trailingAnchor];
    v18 = [v8 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v19 setActive:1];

    v20 = [(UIView *)self->_selectionBackgroundView topAnchor];
    v21 = [v8 topAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:6.0];

    LODWORD(v23) = 1144750080;
    [v22 setPriority:v23];
    [v22 setActive:1];
    v24 = [(UIView *)self->_selectionBackgroundView bottomAnchor];
    v25 = [v8 bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:-6.0];

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
    v9 = [(UIView *)self->super.super._button superview];
    [(UIView *)self->super.super._button center];
    v11 = v10;
    v13 = v12;
    v14 = [(UIView *)self->super.super._button window];
    [v9 convertPoint:v14 toView:{v11, v13}];
    v16 = v15;

    v17 = [(UIView *)self->super.super._button window];
    [v17 bounds];
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