@interface UILayoutContainerView
- (BOOL)assertionActivationStateForType:(unint64_t)type;
- (UILayoutContainerView)initWithCoder:(id)coder;
- (UILayoutContainerView)initWithFrame:(CGRect)frame;
- (UILayoutContainerViewDelegate)delegate;
- (id)_systemDefaultFocusGroupIdentifier;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_commonInit;
- (void)_installShadowViews;
- (void)_setFlagsFromDelegate:(id)delegate;
- (void)_tearDownShadowViews;
- (void)_updateShadowViews;
- (void)addSubview:(id)subview;
- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setBounds:(CGRect)bounds;
- (void)setDefaultBackgroundColor:(id)color;
- (void)setDelegate:(id)delegate;
- (void)setFrame:(CGRect)frame;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setUsesInnerShadow:(BOOL)shadow;
- (void)setUsesRoundedCorners:(BOOL)corners;
- (void)willMoveToWindow:(id)window;
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
    layer = [(UIView *)self layer];
    mask = [layer mask];
    [mask setFrame:{v4, v6, v8, v10}];
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
    window = [(UIView *)self window];
    [WeakRetained _layoutContainerViewDidMoveToWindow:window];
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

- (UILayoutContainerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UILayoutContainerView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UILayoutContainerView *)v3 _commonInit];
  }

  return v4;
}

- (UILayoutContainerView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = UILayoutContainerView;
  v5 = [(UIView *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UIDelegate"];
    objc_storeWeak(&v5->_delegate, v6);
    [(UILayoutContainerView *)v5 _setFlagsFromDelegate:v6];
    if ([coderCopy decodeBoolForKey:@"backgroundColorIsDefault"])
    {
      v7 = 16;
    }

    else
    {
      v7 = 0;
    }

    *&v5->_layoutContainerViewFlags = *&v5->_layoutContainerViewFlags & 0xEF | v7;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultBackgroundColor"];
    defaultBackgroundColor = v5->_defaultBackgroundColor;
    v5->_defaultBackgroundColor = v8;

    [(UILayoutContainerView *)v5 _commonInit];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = UILayoutContainerView;
  [(UIView *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:(*&self->_layoutContainerViewFlags >> 4) & 1 forKey:@"backgroundColorIsDefault"];
  defaultBackgroundColor = self->_defaultBackgroundColor;
  if (defaultBackgroundColor)
  {
    [coderCopy encodeObject:defaultBackgroundColor forKey:@"defaultBackgroundColor"];
  }

  delegate = [(UILayoutContainerView *)self delegate];
  if (delegate)
  {
    [coderCopy encodeConditionalObject:delegate forKey:@"UIDelegate"];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(UILayoutContainerView *)self _setFlagsFromDelegate:obj];
  }
}

- (void)_setFlagsFromDelegate:(id)delegate
{
  delegateCopy = delegate;
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

- (void)setBackgroundColor:(id)color
{
  *&self->_layoutContainerViewFlags &= ~0x10u;
  v3.receiver = self;
  v3.super_class = UILayoutContainerView;
  [(UIView *)&v3 setBackgroundColor:color];
}

- (void)setDefaultBackgroundColor:(id)color
{
  objc_storeStrong(&self->_defaultBackgroundColor, color);
  colorCopy = color;
  [(UILayoutContainerView *)self setBackgroundColor:colorCopy];

  *&self->_layoutContainerViewFlags |= 0x10u;
}

- (void)setFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = UILayoutContainerView;
  [(UIView *)&v14 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (self->_usesRoundedCorners)
  {
    [(UIView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    layer = [(UIView *)self layer];
    mask = [layer mask];
    [mask setFrame:{v5, v7, v9, v11}];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10.receiver = self;
  v10.super_class = UILayoutContainerView;
  [(UIView *)&v10 setBounds:?];
  if (self->_usesRoundedCorners)
  {
    layer = [(UIView *)self layer];
    mask = [layer mask];
    [mask setFrame:{x, y, width, height}];
  }
}

- (void)willMoveToWindow:(id)window
{
  if ((*&self->_layoutContainerViewFlags & 4) != 0)
  {
    windowCopy = window;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained _layoutContainerViewWillMoveToWindow:windowCopy];
  }
}

- (void)setUsesRoundedCorners:(BOOL)corners
{
  if (self->_usesRoundedCorners != corners)
  {
    cornersCopy = corners;
    self->_usesRoundedCorners = corners;
    layer = [(UIView *)self layer];
    v7 = layer;
    if (cornersCopy)
    {
      [layer setCornerRadius:5.0];

      layer2 = [(UIView *)self layer];
      [layer2 setMasksToBounds:1];

      [(UIView *)self setOpaque:0];
    }

    else
    {
      [layer setCornerRadius:0.0];

      layer3 = [(UIView *)self layer];
      [layer3 setMasksToBounds:0];
    }

    [(UILayoutContainerView *)self _updateShadowViews];
  }
}

- (void)setUsesInnerShadow:(BOOL)shadow
{
  if (self->_usesInnerShadow != shadow)
  {
    self->_usesInnerShadow = shadow;
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

- (void)addSubview:(id)subview
{
  shadowView = self->_shadowView;
  if (shadowView)
  {
    v6 = shadowView == subview;
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
    [(UIView *)&v7 addSubview:subview];
  }

  else
  {

    [(UIView *)self insertSubview:subview belowSubview:?];
  }
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v5.receiver = self;
  v5.super_class = UILayoutContainerView;
  [(UIView *)&v5 setSemanticContentAttribute:attribute];
  if (*&self->_layoutContainerViewFlags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained _layoutContainerViewSemanticContentAttributeChanged:self];
  }
}

- (id)_systemDefaultFocusGroupIdentifier
{
  _focusBehavior = [(UIView *)self _focusBehavior];
  focusGroupContainmentBehavior = [_focusBehavior focusGroupContainmentBehavior];

  if (focusGroupContainmentBehavior < 0)
  {
    _systemDefaultFocusGroupIdentifier = _UIFocusGroupIdentifierForInstance(self);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UILayoutContainerView;
    _systemDefaultFocusGroupIdentifier = [(UIView *)&v7 _systemDefaultFocusGroupIdentifier];
  }

  return _systemDefaultFocusGroupIdentifier;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  if ((*&self->_layoutContainerViewFlags & 0x20) != 0)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UILayoutContainerView;
    v5 = [(UIView *)&v7 hitTest:event withEvent:test.x, test.y];
  }

  return v5;
}

- (BOOL)assertionActivationStateForType:(unint64_t)type
{
  if (type)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UILayoutContainerView.m" lineNumber:364 description:{@"Unknown _UIAssertionType %lu", type}];

    LOBYTE(v7) = 0;
  }

  else
  {
    return (*&self->_layoutContainerViewFlags >> 5) & 1;
  }

  return v7;
}

- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type
{
  stateCopy = state;
  if (pthread_main_np() == 1)
  {
    if (type)
    {
LABEL_3:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UILayoutContainerView.m" lineNumber:379 description:{@"Unknown _UIAssertionType %lu", type}];

      return;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UILayoutContainerView.m" lineNumber:371 description:@"Call must be made on main thread"];

    if (type)
    {
      goto LABEL_3;
    }
  }

  if (stateCopy)
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