@interface _PLViewControllerOneToOneTransitionContext
- (CGAffineTransform)targetTransform;
- (void)setTargetTransform:(CGAffineTransform *)transform;
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

- (void)setTargetTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_targetTransform.a = *&transform->a;
  *&self->_targetTransform.c = v4;
  *&self->_targetTransform.tx = v3;
}

@end