@interface CRNeuralTextDetectorDelegateFacade
- (BOOL)shouldRunTileForRect:(CGRect)rect imageSize:(CGSize)size;
@end

@implementation CRNeuralTextDetectorDelegateFacade

- (BOOL)shouldRunTileForRect:(CGRect)rect imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = rect.size.height;
  v7 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;

  v10 = sub_1B40E2914(x, y, v7, v6, width, height);

  return v10 & 1;
}

@end