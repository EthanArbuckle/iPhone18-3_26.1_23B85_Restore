@interface UIKeyboardFloatingTransitionState
- (CGAffineTransform)finalInputViewTransform;
- (CGAffineTransform)initialInputViewTransform;
- (CGPoint)scale;
- (CGRect)inputViewFrame;
- (CGRect)platterViewFrame;
- (UIEdgeInsets)platterInsets;
- (void)setFinalInputViewTransform:(CGAffineTransform *)a3;
- (void)setInitialInputViewTransform:(CGAffineTransform *)a3;
@end

@implementation UIKeyboardFloatingTransitionState

- (CGRect)inputViewFrame
{
  x = self->_inputViewFrame.origin.x;
  y = self->_inputViewFrame.origin.y;
  width = self->_inputViewFrame.size.width;
  height = self->_inputViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)platterViewFrame
{
  x = self->_platterViewFrame.origin.x;
  y = self->_platterViewFrame.origin.y;
  width = self->_platterViewFrame.size.width;
  height = self->_platterViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)platterInsets
{
  top = self->_platterInsets.top;
  left = self->_platterInsets.left;
  bottom = self->_platterInsets.bottom;
  right = self->_platterInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)scale
{
  x = self->_scale.x;
  y = self->_scale.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)initialInputViewTransform
{
  v3 = *&self[3].d;
  *&retstr->a = *&self[3].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].ty;
  return self;
}

- (void)setInitialInputViewTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_initialInputViewTransform.tx = *&a3->tx;
  *&self->_initialInputViewTransform.c = v4;
  *&self->_initialInputViewTransform.a = v3;
}

- (CGAffineTransform)finalInputViewTransform
{
  v3 = *&self[4].d;
  *&retstr->a = *&self[4].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].ty;
  return self;
}

- (void)setFinalInputViewTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_finalInputViewTransform.tx = *&a3->tx;
  *&self->_finalInputViewTransform.c = v4;
  *&self->_finalInputViewTransform.a = v3;
}

@end