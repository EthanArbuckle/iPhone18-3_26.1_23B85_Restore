@interface UILayoutContainerView
- (BOOL)assertionActivationStateForType:(unint64_t)a3;
- (UILayoutContainerView)initWithCoder:(id)a3;
- (UILayoutContainerView)initWithFrame:(CGRect)a3;
- (UILayoutContainerViewDelegate)delegate;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_commonInit;
- (void)_installShadowViews;
- (void)_setFlagsFromDelegate:(id)a3;
- (void)_tearDownShadowViews;
- (void)_updateShadowViews;
- (void)addSubview:(id)a3;
- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(unint64_t)a4;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setDefaultBackgroundColor:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setUsesInnerShadow:(BOOL)a3;
- (void)setUsesRoundedCorners:(BOOL)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation UILayoutContainerView

- (void)_commonInit
{
  v3 = [[_UIAssertionController alloc] initWithAssertionSubject:self];
  assertionController = self->_assertionController;
  self->_assertionController = v3;
}

- (void)layoutSubviews
{
  if (self->_usesRoundedCorners)
  {
    [(UIView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(UIView *)self layer];
    v12 = [v11 mask];
    [v12 setFrame:{v4, v6, v8, v10}];
  }

  if ((*&self->_layoutContainerViewFlags & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained __viewWillLayoutSubviews];
  }

  v14.receiver = self;
  v14.super_class = UILayoutContainerView;
  [(UIView *)&v14 layoutSubviews];
}

- (void)didMoveToWindow
{
  if ((*&self->_layoutContainerViewFlags & 8) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = [(UIView *)self window];
    [WeakRetained _layoutContainerViewDidMoveToWindow:v4];
  }
}

- (UILayoutContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_tearDownShadowViews
{
  [(UIView *)self->_shadowView removeFromSuperview];
  shadowView = self->_shadowView;
  self->_shadowView = 0;
}

- (void)dealloc
{
  [(UILayoutContainerView *)self _tearDownShadowViews];
  v3.receiver = self;
  v3.super_class = UILayoutContainerView;
  [(UIView *)&v3 dealloc];
}

- (UILayoutContainerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UILayoutContainerView;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UILayoutContainerView *)v3 _commonInit];
  }

  return v4;
}

- (UILayoutContainerView)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UILayoutContainerView;
  v5 = [(UIView *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UIDelegate"];
    objc_storeWeak(&v5->_delegate, v6);
    [(UILayoutContainerView *)v5 _setFlagsFromDelegate:v6];
    if ([v4 decodeBoolForKey:@"backgroundColorIsDefault"])
    {
      v7 = 16;
    }

    else
    {
      v7 = 0;
    }

    *&v5->_layoutContainerViewFlags = *&v5->_layoutContainerViewFlags & 0xEF | v7;
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultBackgroundColor"];
    defaultBackgroundColor = v5->_defaultBackgroundColor;
    v5->_defaultBackgroundColor = v8;

    [(UILayoutContainerView *)v5 _commonInit];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UILayoutContainerView;
  [(UIView *)&v7 encodeWithCoder:v4];
  [v4 encodeBool:(*&self->_layoutContainerViewFlags >> 4) & 1 forKey:@"backgroundColorIsDefault"];
  defaultBackgroundColor = self->_defaultBackgroundColor;
  if (defaultBackgroundColor)
  {
    [v4 encodeObject:defaultBackgroundColor forKey:@"defaultBackgroundColor"];
  }

  v6 = [(UILayoutContainerView *)self delegate];
  if (v6)
  {
    [v4 encodeConditionalObject:v6 forKey:@"UIDelegate"];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(UILayoutContainerView *)self _setFlagsFromDelegate:obj];
  }
}

- (void)_setFlagsFromDelegate:(id)a3
{
  v4 = a3;
  *&self->_layoutContainerViewFlags = *&self->_layoutContainerViewFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_layoutContainerViewFlags = *&self->_layoutContainerViewFlags & 0xFD | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *&self->_layoutContainerViewFlags = *&self->_layoutContainerViewFlags & 0xFB | v6;
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  *&self->_layoutContainerViewFlags = *&self->_layoutContainerViewFlags & 0xF7 | v8;
}

- (void)setBackgroundColor:(id)a3
{
  *&self->_layoutContainerViewFlags &= ~0x10u;
  v3.receiver = self;
  v3.super_class = UILayoutContainerView;
  [(UIView *)&v3 setBackgroundColor:a3];
}

- (void)setDefaultBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_defaultBackgroundColor, a3);
  v5 = a3;
  [(UILayoutContainerView *)self setBackgroundColor:v5];

  *&self->_layoutContainerViewFlags |= 0x10u;
}

- (void)setFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = UILayoutContainerView;
  [(UIView *)&v14 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (self->_usesRoundedCorners)
  {
    [(UIView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(UIView *)self layer];
    v13 = [v12 mask];
    [v13 setFrame:{v5, v7, v9, v11}];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = UILayoutContainerView;
  [(UIView *)&v10 setBounds:?];
  if (self->_usesRoundedCorners)
  {
    v8 = [(UIView *)self layer];
    v9 = [v8 mask];
    [v9 setFrame:{x, y, width, height}];
  }
}

- (void)willMoveToWindow:(id)a3
{
  if ((*&self->_layoutContainerViewFlags & 4) != 0)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained _layoutContainerViewWillMoveToWindow:v5];
  }
}

- (void)setUsesRoundedCorners:(BOOL)a3
{
  if (self->_usesRoundedCorners != a3)
  {
    v4 = a3;
    self->_usesRoundedCorners = a3;
    v6 = [(UIView *)self layer];
    v7 = v6;
    if (v4)
    {
      [v6 setCornerRadius:5.0];

      v8 = [(UIView *)self layer];
      [v8 setMasksToBounds:1];

      [(UIView *)self setOpaque:0];
    }

    else
    {
      [v6 setCornerRadius:0.0];

      v9 = [(UIView *)self layer];
      [v9 setMasksToBounds:0];
    }

    [(UILayoutContainerView *)self _updateShadowViews];
  }
}

- (void)setUsesInnerShadow:(BOOL)a3
{
  if (self->_usesInnerShadow != a3)
  {
    self->_usesInnerShadow = a3;
    [(UILayoutContainerView *)self _updateShadowViews];
  }
}

- (void)_updateShadowViews
{
  if (self->_usesRoundedCorners && self->_usesInnerShadow)
  {
    [(UILayoutContainerView *)self _installShadowViews];
  }

  else
  {
    [(UILayoutContainerView *)self _tearDownShadowViews];
  }
}

- (void)_installShadowViews
{
  if (!self->_shadowView)
  {
    v3 = [UIImageView alloc];
    [(UIView *)self bounds];
    v4 = [(UIImageView *)v3 initWithFrame:?];
    shadowView = self->_shadowView;
    self->_shadowView = v4;

    [(UIView *)self->_shadowView setAutoresizingMask:18];
    [(UIView *)self bounds];
    v7 = v6;
    v9 = v8;
    v16 = _UIImageWithName(@"UISheetViewButtonTableShadow.png");
    v10 = _shadowImageInRectForSlice(v16, 0x24u, 0.0, 0.0, 5.0, 6.0, 0.0, 0.0, 5.0, 6.0);
    [(UIView *)self->_shadowView addSubview:v10];
    v11 = _shadowImageInRectForSlice(v16, 0x22u, 5.0, 0.0, v7 + -10.0, 4.0, 5.0, 0.0, 1.0, 4.0);

    [(UIView *)self->_shadowView addSubview:v11];
    v12 = _shadowImageInRectForSlice(v16, 0x21u, v7 + -5.0, 0.0, 5.0, 6.0, 6.0, 0.0, 5.0, 6.0);

    [(UIView *)self->_shadowView addSubview:v12];
    v13 = v9 + -8.0;
    v14 = _shadowImageInRectForSlice(v16, 0x14u, 0.0, 6.0, 2.0, v13, 0.0, 6.0, 2.0, 1.0);

    [(UIView *)self->_shadowView addSubview:v14];
    v15 = _shadowImageInRectForSlice(v16, 0x11u, v7 + -2.0, 6.0, 2.0, v13, 9.0, 6.0, 2.0, 1.0);

    [(UIView *)self->_shadowView addSubview:v15];
    [(UILayoutContainerView *)self addSubview:self->_shadowView];
  }
}

- (void)addSubview:(id)a3
{
  shadowView = self->_shadowView;
  if (shadowView)
  {
    v6 = shadowView == a3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = UILayoutContainerView;
    [(UIView *)&v7 addSubview:a3];
  }

  else
  {

    [(UIView *)self insertSubview:a3 belowSubview:?];
  }
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = UILayoutContainerView;
  [(UIView *)&v5 setSemanticContentAttribute:a3];
  if (*&self->_layoutContainerViewFlags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained _layoutContainerViewSemanticContentAttributeChanged:self];
  }
}

- (id)_systemDefaultFocusGroupIdentifier
{
  v3 = [(UIView *)self _focusBehavior];
  v4 = [v3 focusGroupContainmentBehavior];

  if (v4 < 0)
  {
    v5 = _UIFocusGroupIdentifierForInstance(self);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UILayoutContainerView;
    v5 = [(UIView *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return v5;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  if ((*&self->_layoutContainerViewFlags & 0x20) != 0)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UILayoutContainerView;
    v5 = [(UIView *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
  }

  return v5;
}

- (BOOL)assertionActivationStateForType:(unint64_t)a3
{
  if (a3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UILayoutContainerView.m" lineNumber:364 description:{@"Unknown _UIAssertionType %lu", a3}];

    LOBYTE(v7) = 0;
  }

  else
  {
    return (*&self->_layoutContainerViewFlags >> 5) & 1;
  }

  return v7;
}

- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(unint64_t)a4
{
  v5 = a3;
  if (pthread_main_np() == 1)
  {
    if (a4)
    {
LABEL_3:
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"UILayoutContainerView.m" lineNumber:379 description:{@"Unknown _UIAssertionType %lu", a4}];

      return;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UILayoutContainerView.m" lineNumber:371 description:@"Call must be made on main thread"];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  if (v5)
  {
    v9 = 32;
  }

  else
  {
    v9 = 0;
  }

  *&self->_layoutContainerViewFlags = *&self->_layoutContainerViewFlags & 0xDF | v9;
}

@end