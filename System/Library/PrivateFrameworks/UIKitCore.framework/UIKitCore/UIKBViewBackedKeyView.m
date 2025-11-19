@interface UIKBViewBackedKeyView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)retestSelectedVariantIndexForKey:(id)a3 atPoint:(CGPoint)a4 phase:(int64_t)a5;
- (UIKBViewBackedKeyView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5;
- (UIView)touchForwardingView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)renderFlagsForTraits:(id)a3;
- (void)layoutSubviews;
- (void)setContentView:(id)a3;
- (void)setDrawFrame:(CGRect)a3;
- (void)setRenderConfig:(id)a3;
- (void)updateForKeyplane:(id)a3 key:(id)a4;
@end

@implementation UIKBViewBackedKeyView

- (UIKBViewBackedKeyView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5
{
  v8.receiver = self;
  v8.super_class = UIKBViewBackedKeyView;
  v5 = [(UIKBKeyView *)&v8 initWithFrame:a4 keyplane:a5 key:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(UIView *)v5 setUserInteractionEnabled:1];
  }

  return v6;
}

- (id)renderFlagsForTraits:(id)a3
{
  v4 = a3;
  v5 = [v4 geometry];
  v6 = [v5 detachedVariants];

  if (v6)
  {
    v9.receiver = self;
    v9.super_class = UIKBViewBackedKeyView;
    v7 = [(UIKBKeyView *)&v9 renderFlagsForTraits:v4];
  }

  else
  {
    v7 = &unk_1EFE2DE58;
  }

  return v7;
}

- (void)setRenderConfig:(id)a3
{
  v4 = a3;
  v5 = [(UIKBKeyView *)self factory];
  v6 = [(UIKBKeyView *)self key];
  v7 = [(UIKBKeyView *)self keyplane];
  v8 = [v5 traitsForKey:v6 onKeyplane:v7];

  if (([v8 blurBlending] & 1) != 0 || (objc_msgSend(v8, "variantTraits"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "blurBlending"), v9, v10))
  {
    if (!self->_backdropView)
    {
      v11 = +[UIKBRenderConfig defaultConfig];
      v12 = [v11 variantSelectorBackdropStyle];

      v13 = [UIKBBackdropView alloc];
      [(UIView *)self bounds];
      v14 = [(UIKBBackdropView *)v13 initWithFrame:v12 style:?];
      [(UIKBViewBackedKeyView *)self setBackdropView:v14];

      v15 = [(UIKBViewBackedKeyView *)self backdropView];
      [(UIView *)self addSubview:v15];
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __41__UIKBViewBackedKeyView_setRenderConfig___block_invoke;
    v19[3] = &unk_1E70F35B8;
    v19[4] = self;
    v16 = v4;
    v20 = v16;
    [UIView performWithoutAnimation:v19];
    v17 = [(UIKBViewBackedKeyView *)self backdropView];
    [(UIKBKeyView *)self configureBackdropView:v17 forRenderConfig:v16];
  }

  [(UIKBKeyViewContentView *)self->_contentView updateRenderConfig:v4];
  v18.receiver = self;
  v18.super_class = UIKBViewBackedKeyView;
  [(UIKBKeyView *)&v18 setRenderConfig:v4];
}

void __41__UIKBViewBackedKeyView_setRenderConfig___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backdropView];
  [v2 transitionToStyle:{objc_msgSend(*(a1 + 40), "variantSelectorBackdropStyle")}];
}

- (void)setDrawFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = UIKBViewBackedKeyView;
  [(UIKBKeyView *)&v4 setDrawFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(UIView *)self setNeedsLayout];
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v7 = v5;
    [(UIKBKeyViewContentView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    [(UIView *)self addSubview:v7];
    [(UIView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)updateForKeyplane:(id)a3 key:(id)a4
{
  v8.receiver = self;
  v8.super_class = UIKBViewBackedKeyView;
  v6 = a4;
  v7 = a3;
  [(UIKBKeyView *)&v8 updateForKeyplane:v7 key:v6];
  [(UIKBKeyViewContentView *)self->_contentView updateForKeyplane:v7 key:v6, v8.receiver, v8.super_class];
}

- (BOOL)retestSelectedVariantIndexForKey:(id)a3 atPoint:(CGPoint)a4 phase:(int64_t)a5
{
  y = a4.y;
  x = a4.x;
  contentView = self->_contentView;
  v10 = a3;
  [(UIView *)self convertPoint:contentView toView:x, y];
  LOBYTE(a5) = [(UIKBKeyViewContentView *)self->_contentView retestSelectedVariantIndexForKey:v10 atPoint:a5 phase:?];

  return a5;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIKBViewBackedKeyView *)self touchForwardingView];
  if (v8)
  {
    [(UIView *)self convertPoint:v8 toView:x, y];
    v9 = [v8 pointInside:v7 withEvent:?];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UIKBViewBackedKeyView;
    v9 = [(UIView *)&v12 pointInside:v7 withEvent:x, y];
  }

  v10 = v9;

  return v10;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIKBViewBackedKeyView *)self touchForwardingView];
  if (v8)
  {
    [(UIView *)self convertPoint:v8 toView:x, y];
    v9 = [v8 hitTest:v7 withEvent:?];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UIKBViewBackedKeyView;
    v9 = [(UIView *)&v12 hitTest:v7 withEvent:x, y];
  }

  v10 = v9;

  return v10;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = UIKBViewBackedKeyView;
  [(UIKBKeyView *)&v20 layoutSubviews];
  v3 = [(UIKBKeyView *)self factory];
  v4 = [(UIKBKeyView *)self key];
  v5 = [(UIKBKeyView *)self keyplane];
  v6 = [v3 traitsForKey:v4 onKeyplane:v5];

  v7 = [v6 variantTraits];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 geometry];
    [v9 symbolFrame];
    [(UIKBKeyViewContentView *)self->_contentView setFrame:?];
  }

  [(UIView *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(UIKBViewBackedKeyView *)self backdropView];
  [v18 setFrame:{v11, v13, v15, v17}];

  v19 = [(UIKBViewBackedKeyView *)self backdropView];
  [(UIView *)self sendSubviewToBack:v19];
}

- (UIView)touchForwardingView
{
  WeakRetained = objc_loadWeakRetained(&self->_touchForwardingView);

  return WeakRetained;
}

@end