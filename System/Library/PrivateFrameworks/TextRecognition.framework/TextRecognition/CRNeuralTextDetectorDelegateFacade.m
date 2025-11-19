@interface CRNeuralTextDetectorDelegateFacade
- (BOOL)shouldRunTileForRect:(CGRect)a3 imageSize:(CGSize)a4;
@end

@implementation CRNeuralTextDetectorDelegateFacade

- (BOOL)shouldRunTileForRect:(CGRect)a3 imageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.size.height;
  v7 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;

  v10 = sub_1B40E2914(x, y, v7, v6, width, height);

  return v10 & 1;
}

@end