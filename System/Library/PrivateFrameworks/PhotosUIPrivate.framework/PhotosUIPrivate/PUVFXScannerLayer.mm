@interface PUVFXScannerLayer
- (void)animateFrom:(CGPoint)from;
- (void)layoutSublayers;
@end

@implementation PUVFXScannerLayer

- (void)animateFrom:(CGPoint)from
{
  y = from.y;
  x = from.x;
  selfCopy = self;
  sub_1B387A7BC(x, y);
}

- (void)layoutSublayers
{
  selfCopy = self;
  sub_1B387AE7C();
}

@end