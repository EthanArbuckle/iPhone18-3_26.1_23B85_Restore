@interface UIInterfaceOrientationFromCATransform3D
@end

@implementation UIInterfaceOrientationFromCATransform3D

CGFloat ___UIInterfaceOrientationFromCATransform3D_block_invoke()
{
  CATransform3DMakeRotation(&v1, 0.0, 0.0, 0.0, 1.0);
  *byte_1ED4A2D88 = v1;
  CATransform3DMakeRotation(&v1, -1.57079633, 0.0, 0.0, 1.0);
  *byte_1ED4A2E88 = v1;
  CATransform3DMakeRotation(&v1, 1.57079633, 0.0, 0.0, 1.0);
  *byte_1ED4A2F08 = v1;
  CATransform3DMakeRotation(&v1, 3.14159265, 0.0, 0.0, 1.0);
  *byte_1ED4A2E08 = v1;
  return v1.m21;
}

@end