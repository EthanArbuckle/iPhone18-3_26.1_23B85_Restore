@interface PUDefaultUpdateTileTransitionCoordinator
- (CGAffineTransform)_adjustDefaultDisappearanceTransform:(SEL)transform;
@end

@implementation PUDefaultUpdateTileTransitionCoordinator

- (CGAffineTransform)_adjustDefaultDisappearanceTransform:(SEL)transform
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v4 = *&a4->c;
  *&v6.a = *&a4->a;
  *&v6.c = v4;
  *&v6.tx = *&a4->tx;
  return CGAffineTransformScale(retstr, &v6, 0.75, 0.75);
}

@end