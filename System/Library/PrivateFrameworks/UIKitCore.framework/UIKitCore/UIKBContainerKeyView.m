@interface UIKBContainerKeyView
- (CGRect)drawFrame;
- (UIKBContainerKeyView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5;
- (void)setDrawFrame:(CGRect)a3;
- (void)setFactory:(id)a3;
- (void)setNeedsDisplay;
- (void)setScreenTraits:(id)a3;
- (void)updateSpecialtyKeyViewForKey:(id)a3 inKeyplane:(id)a4;
@end

@implementation UIKBContainerKeyView

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = UIKBContainerKeyView;
  [(UIView *)&v3 setNeedsDisplay];
  [(UIView *)self->_keyView setNeedsDisplay];
}

- (UIKBContainerKeyView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v19.receiver = self;
  v19.super_class = UIKBContainerKeyView;
  v13 = [(UIView *)&v19 initWithFrame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    [(UIView *)v13 setOpaque:0];
    [(UIView *)v14 setUserInteractionEnabled:0];
    v15 = [UIKBKeyView alloc];
    [(UIView *)v14 bounds];
    v16 = [(UIKBKeyView *)v15 initWithFrame:v11 keyplane:v12 key:?];
    keyView = v14->_keyView;
    v14->_keyView = v16;

    [(UIKBKeyView *)v14->_keyView setContainedInDynamicKey:[(UIKBKeyView *)v14 isDynamicKey]];
    [(UIView *)v14 addSubview:v14->_keyView];
  }

  return v14;
}

- (void)updateSpecialtyKeyViewForKey:(id)a3 inKeyplane:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(UIKBContainerKeyView *)self factory];
  v8 = [v7 traitsForKey:v17 onKeyplane:v6];

  v9 = [(UIKBKeyView *)self->_keyView screenTraits];
  v10 = objc_alloc_init(UIKBKeyViewAnimator);
  v11 = [(UIKBKeyViewAnimator *)v10 keyViewClassForKey:v17 renderTraits:v8 screenTraits:v9];
  keyView = self->_keyView;
  if (!keyView || ([(UIKBKeyView *)keyView isMemberOfClass:v11]& 1) == 0)
  {
    v13 = [v11 alloc];
    [(UIView *)self->_keyView frame];
    v14 = [v13 initWithFrame:v6 keyplane:v17 key:?];
    [(UIKBKeyView *)v14 updateForKeyplane:v6 key:v17];
    v15 = self->_keyView;
    self->_keyView = v14;
    v16 = v14;
  }
}

- (void)setScreenTraits:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIKBContainerKeyView;
  v4 = a3;
  [(UIKBKeyView *)&v5 setScreenTraits:v4];
  [(UIKBKeyView *)self->_keyView setScreenTraits:v4, v5.receiver, v5.super_class];
}

- (CGRect)drawFrame
{
  [(UIKBKeyView *)self->_keyView drawFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setDrawFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if ([(UIKBKeyView *)self isDynamicKey])
  {
    [(UIKBKeyView *)self->_keyView drawFrame];
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    if (!CGRectEqualToRect(v10, v11))
    {
      [(UIKBKeyView *)self->_keyView resetRenderedKeyState];
    }
  }

  keyView = self->_keyView;

  [(UIKBKeyView *)keyView setDrawFrame:x, y, width, height];
}

- (void)setFactory:(id)a3
{
  v4 = a3;
  if ([(UIKBKeyView *)self isDynamicKey])
  {
    [(UIKBKeyView *)self->_keyView resetRenderedKeyState];
  }

  [(UIKBKeyView *)self->_keyView setFactory:v4];
}

@end