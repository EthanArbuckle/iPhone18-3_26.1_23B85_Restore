@interface VisionCoreSparseOpticalFlowResultPoint
- (CGPoint)point;
- (VisionCoreSparseOpticalFlowResultPoint)initWithX:(double)x Y:(double)y inlier:(BOOL)inlier reprojError:(float)error;
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

- (VisionCoreSparseOpticalFlowResultPoint)initWithX:(double)x Y:(double)y inlier:(BOOL)inlier reprojError:(float)error
{
  v11.receiver = self;
  v11.super_class = VisionCoreSparseOpticalFlowResultPoint;
  result = [(VisionCoreSparseOpticalFlowResultPoint *)&v11 init];
  if (result)
  {
    result->_reprojError = error;
    result->_point.x = x;
    result->_point.y = y;
    result->_isInlier = inlier;
  }

  return result;
}

@end