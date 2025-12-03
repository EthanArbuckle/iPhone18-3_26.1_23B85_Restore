@interface PVEffectDebugRect
- (CGRect)frame;
- (PVEffectDebugRect)init;
@end

@implementation PVEffectDebugRect

- (PVEffectDebugRect)init
{
  v6.receiver = self;
  v6.super_class = PVEffectDebugRect;
  v2 = [(PVEffectDebugRect *)&v6 init];
  if (v2)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(PVEffectDebugRect *)v2 setFillColor:clearColor];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(PVEffectDebugRect *)v2 setStrokeColor:clearColor2];
  }

  return v2;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end