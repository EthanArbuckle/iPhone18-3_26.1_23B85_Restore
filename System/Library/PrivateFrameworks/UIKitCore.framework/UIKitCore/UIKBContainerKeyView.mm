@interface UIKBContainerKeyView
- (CGRect)drawFrame;
- (UIKBContainerKeyView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key;
- (void)setDrawFrame:(CGRect)frame;
- (void)setFactory:(id)factory;
- (void)setNeedsDisplay;
- (void)setScreenTraits:(id)traits;
- (void)updateSpecialtyKeyViewForKey:(id)key inKeyplane:(id)keyplane;
@end

@implementation UIKBContainerKeyView

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = UIKBContainerKeyView;
  [(UIView *)&v3 setNeedsDisplay];
  [(UIView *)self->_keyView setNeedsDisplay];
}

- (UIKBContainerKeyView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  keyplaneCopy = keyplane;
  keyCopy = key;
  v19.receiver = self;
  v19.super_class = UIKBContainerKeyView;
  height = [(UIView *)&v19 initWithFrame:x, y, width, height];
  v14 = height;
  if (height)
  {
    [(UIView *)height setOpaque:0];
    [(UIView *)v14 setUserInteractionEnabled:0];
    v15 = [UIKBKeyView alloc];
    [(UIView *)v14 bounds];
    v16 = [(UIKBKeyView *)v15 initWithFrame:keyplaneCopy keyplane:keyCopy key:?];
    keyView = v14->_keyView;
    v14->_keyView = v16;

    [(UIKBKeyView *)v14->_keyView setContainedInDynamicKey:[(UIKBKeyView *)v14 isDynamicKey]];
    [(UIView *)v14 addSubview:v14->_keyView];
  }

  return v14;
}

- (void)updateSpecialtyKeyViewForKey:(id)key inKeyplane:(id)keyplane
{
  keyCopy = key;
  keyplaneCopy = keyplane;
  factory = [(UIKBContainerKeyView *)self factory];
  v8 = [factory traitsForKey:keyCopy onKeyplane:keyplaneCopy];

  screenTraits = [(UIKBKeyView *)self->_keyView screenTraits];
  v10 = objc_alloc_init(UIKBKeyViewAnimator);
  v11 = [(UIKBKeyViewAnimator *)v10 keyViewClassForKey:keyCopy renderTraits:v8 screenTraits:screenTraits];
  keyView = self->_keyView;
  if (!keyView || ([(UIKBKeyView *)keyView isMemberOfClass:v11]& 1) == 0)
  {
    v13 = [v11 alloc];
    [(UIView *)self->_keyView frame];
    v14 = [v13 initWithFrame:keyplaneCopy keyplane:keyCopy key:?];
    [(UIKBKeyView *)v14 updateForKeyplane:keyplaneCopy key:keyCopy];
    v15 = self->_keyView;
    self->_keyView = v14;
    v16 = v14;
  }
}

- (void)setScreenTraits:(id)traits
{
  v5.receiver = self;
  v5.super_class = UIKBContainerKeyView;
  traitsCopy = traits;
  [(UIKBKeyView *)&v5 setScreenTraits:traitsCopy];
  [(UIKBKeyView *)self->_keyView setScreenTraits:traitsCopy, v5.receiver, v5.super_class];
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

- (void)setDrawFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setFactory:(id)factory
{
  factoryCopy = factory;
  if ([(UIKBKeyView *)self isDynamicKey])
  {
    [(UIKBKeyView *)self->_keyView resetRenderedKeyState];
  }

  [(UIKBKeyView *)self->_keyView setFactory:factoryCopy];
}

@end