@interface PUVFXScannerLayer
- (void)animateFrom:(CGPoint)a3;
- (void)layoutSublayers;
@end

@implementation PUVFXScannerLayer

- (void)animateFrom:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_1B387A7BC(x, y);
}

- (void)layoutSublayers
{
  v2 = self;
  sub_1B387AE7C();
}

@end