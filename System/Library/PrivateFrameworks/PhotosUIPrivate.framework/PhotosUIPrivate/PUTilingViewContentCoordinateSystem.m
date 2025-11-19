@interface PUTilingViewContentCoordinateSystem
- (CGPoint)coordinateSystemOrigin;
@end

@implementation PUTilingViewContentCoordinateSystem

- (CGPoint)coordinateSystemOrigin
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

@end