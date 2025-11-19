@interface PVEffectDebugPoint
- (CGPoint)center;
- (PVEffectDebugPoint)init;
@end

@implementation PVEffectDebugPoint

- (PVEffectDebugPoint)init
{
  v6.receiver = self;
  v6.super_class = PVEffectDebugPoint;
  v2 = [(PVEffectDebugPoint *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75348] clearColor];
    [(PVEffectDebugPoint *)v2 setFillColor:v3];

    v4 = [MEMORY[0x277D75348] clearColor];
    [(PVEffectDebugPoint *)v2 setStrokeColor:v4];
  }

  return v2;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

@end