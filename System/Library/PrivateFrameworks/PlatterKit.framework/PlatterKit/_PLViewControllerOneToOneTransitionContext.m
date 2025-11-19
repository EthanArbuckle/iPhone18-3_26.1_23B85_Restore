@interface _PLViewControllerOneToOneTransitionContext
- (CGAffineTransform)targetTransform;
- (void)setTargetTransform:(CGAffineTransform *)a3;
@end

@implementation _PLViewControllerOneToOneTransitionContext

- (CGAffineTransform)targetTransform
{
  v3 = *&self[9].d;
  *&retstr->a = *&self[9].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[9].ty;
  return self;
}

- (void)setTargetTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_targetTransform.a = *&a3->a;
  *&self->_targetTransform.c = v4;
  *&self->_targetTransform.tx = v3;
}

@end