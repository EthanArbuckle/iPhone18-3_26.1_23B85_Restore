@interface VisionCoreSparseOpticalFlowResultPoint
- (CGPoint)point;
- (VisionCoreSparseOpticalFlowResultPoint)initWithX:(double)a3 Y:(double)a4 inlier:(BOOL)a5 reprojError:(float)a6;
@end

@implementation VisionCoreSparseOpticalFlowResultPoint

- (CGPoint)point
{
  x = self->_point.x;
  y = self->_point.y;
  result.y = y;
  result.x = x;
  return result;
}

- (VisionCoreSparseOpticalFlowResultPoint)initWithX:(double)a3 Y:(double)a4 inlier:(BOOL)a5 reprojError:(float)a6
{
  v11.receiver = self;
  v11.super_class = VisionCoreSparseOpticalFlowResultPoint;
  result = [(VisionCoreSparseOpticalFlowResultPoint *)&v11 init];
  if (result)
  {
    result->_reprojError = a6;
    result->_point.x = a3;
    result->_point.y = a4;
    result->_isInlier = a5;
  }

  return result;
}

@end