@interface UIKBViewBackedKeyView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)retestSelectedVariantIndexForKey:(id)key atPoint:(CGPoint)point phase:(int64_t)phase;
- (UIKBViewBackedKeyView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key;
- (UIView)touchForwardingView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)renderFlagsForTraits:(id)traits;
- (void)layoutSubviews;
- (void)setContentView:(id)view;
- (void)setDrawFrame:(CGRect)frame;
- (void)setRenderConfig:(id)config;
- (void)updateForKeyplane:(id)keyplane key:(id)key;
@end

@implementation UIKBViewBackedKeyView

- (UIKBViewBackedKeyView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key
{
  v8.receiver = self;
  v8.super_class = UIKBViewBackedKeyView;
  v5 = [(UIKBKeyView *)&v8 initWithFrame:keyplane keyplane:key key:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(UIView *)v5 setUserInteractionEnabled:1];
  }

  return v6;
}

- (id)renderFlagsForTraits:(id)traits
{
  traitsCopy = traits;
  geometry = [traitsCopy geometry];
  detachedVariants = [geometry detachedVariants];

  if (detachedVariants)
  {
    v9.receiver = self;
    v9.super_class = UIKBViewBackedKeyView;
    v7 = [(UIKBKeyView *)&v9 renderFlagsForTraits:traitsCopy];
  }

  else
  {
    v7 = &unk_1EFE2DE58;
  }

  return v7;
}

- (void)setRenderConfig:(id)config
{
  configCopy = config;
  factory = [(UIKBKeyView *)self factory];
  v6 = [(UIKBKeyView *)self key];
  keyplane = [(UIKBKeyView *)self keyplane];
  v8 = [factory traitsForKey:v6 onKeyplane:keyplane];

  if (([v8 blurBlending] & 1) != 0 || (objc_msgSend(v8, "variantTraits"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "blurBlending"), v9, v10))
  {
    if (!self->_backdropView)
    {
      v11 = +[UIKBRenderConfig defaultConfig];
      variantSelectorBackdropStyle = [v11 variantSelectorBackdropStyle];

      v13 = [UIKBBackdropView alloc];
      [(UIView *)self bounds];
      v14 = [(UIKBBackdropView *)v13 initWithFrame:variantSelectorBackdropStyle style:?];
      [(UIKBViewBackedKeyView *)self setBackdropView:v14];

      backdropView = [(UIKBViewBackedKeyView *)self backdropView];
      [(UIView *)self addSubview:backdropView];
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __41__UIKBViewBackedKeyView_setRenderConfig___block_invoke;
    v19[3] = &unk_1E70F35B8;
    v19[4] = self;
    v16 = configCopy;
    v20 = v16;
    [UIView performWithoutAnimation:v19];
    backdropView2 = [(UIKBViewBackedKeyView *)self backdropView];
    [(UIKBKeyView *)self configureBackdropView:backdropView2 forRenderConfig:v16];
  }

  [(UIKBKeyViewContentView *)self->_contentView updateRenderConfig:configCopy];
  v18.receiver = self;
  v18.super_class = UIKBViewBackedKeyView;
  [(UIKBKeyView *)&v18 setRenderConfig:configCopy];
}

void __41__UIKBViewBackedKeyView_setRenderConfig___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backdropView];
  [v2 transitionToStyle:{objc_msgSend(*(a1 + 40), "variantSelectorBackdropStyle")}];
}

- (void)setDrawFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = UIKBViewBackedKeyView;
  [(UIKBKeyView *)&v4 setDrawFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(UIView *)self setNeedsLayout];
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v7 = viewCopy;
    [(UIKBKeyViewContentView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    [(UIView *)self addSubview:v7];
    [(UIView *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)updateForKeyplane:(id)keyplane key:(id)key
{
  v8.receiver = self;
  v8.super_class = UIKBViewBackedKeyView;
  keyCopy = key;
  keyplaneCopy = keyplane;
  [(UIKBKeyView *)&v8 updateForKeyplane:keyplaneCopy key:keyCopy];
  [(UIKBKeyViewContentView *)self->_contentView updateForKeyplane:keyplaneCopy key:keyCopy, v8.receiver, v8.super_class];
}

- (BOOL)retestSelectedVariantIndexForKey:(id)key atPoint:(CGPoint)point phase:(int64_t)phase
{
  y = point.y;
  x = point.x;
  contentView = self->_contentView;
  keyCopy = key;
  [(UIView *)self convertPoint:contentView toView:x, y];
  LOBYTE(phase) = [(UIKBKeyViewContentView *)self->_contentView retestSelectedVariantIndexForKey:keyCopy atPoint:phase phase:?];

  return phase;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  touchForwardingView = [(UIKBViewBackedKeyView *)self touchForwardingView];
  if (touchForwardingView)
  {
    [(UIView *)self convertPoint:touchForwardingView toView:x, y];
    v9 = [touchForwardingView pointInside:eventCopy withEvent:?];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UIKBViewBackedKeyView;
    v9 = [(UIView *)&v12 pointInside:eventCopy withEvent:x, y];
  }

  v10 = v9;

  return v10;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  touchForwardingView = [(UIKBViewBackedKeyView *)self touchForwardingView];
  if (touchForwardingView)
  {
    [(UIView *)self convertPoint:touchForwardingView toView:x, y];
    v9 = [touchForwardingView hitTest:eventCopy withEvent:?];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UIKBViewBackedKeyView;
    v9 = [(UIView *)&v12 hitTest:eventCopy withEvent:x, y];
  }

  v10 = v9;

  return v10;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = UIKBViewBackedKeyView;
  [(UIKBKeyView *)&v20 layoutSubviews];
  factory = [(UIKBKeyView *)self factory];
  v4 = [(UIKBKeyView *)self key];
  keyplane = [(UIKBKeyView *)self keyplane];
  v6 = [factory traitsForKey:v4 onKeyplane:keyplane];

  variantTraits = [v6 variantTraits];
  v8 = variantTraits;
  if (variantTraits)
  {
    geometry = [variantTraits geometry];
    [geometry symbolFrame];
    [(UIKBKeyViewContentView *)self->_contentView setFrame:?];
  }

  [(UIView *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  backdropView = [(UIKBViewBackedKeyView *)self backdropView];
  [backdropView setFrame:{v11, v13, v15, v17}];

  backdropView2 = [(UIKBViewBackedKeyView *)self backdropView];
  [(UIView *)self sendSubviewToBack:backdropView2];
}

- (UIView)touchForwardingView
{
  WeakRetained = objc_loadWeakRetained(&self->_touchForwardingView);

  return WeakRetained;
}

@end