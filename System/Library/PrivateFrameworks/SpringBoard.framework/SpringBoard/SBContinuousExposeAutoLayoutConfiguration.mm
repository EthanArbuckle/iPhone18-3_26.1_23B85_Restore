@interface SBContinuousExposeAutoLayoutConfiguration
- (CGRect)containerBounds;
- (CGRect)leftStatusBarPartIntersectionRegion;
- (CGRect)rightStatusBarPartIntersectionRegion;
- (id)initWithContainerBounds:(void *)a3 screenScale:(double)a4 dockHeightWithBottomEdgePadding:(double)a5 leftStatusBarPartIntersectionRegion:(double)a6 rightStatusBarPartIntersectionRegion:(double)a7 windowingConfiguration:(double)a8;
@end

@implementation SBContinuousExposeAutoLayoutConfiguration

- (id)initWithContainerBounds:(void *)a3 screenScale:(double)a4 dockHeightWithBottomEdgePadding:(double)a5 leftStatusBarPartIntersectionRegion:(double)a6 rightStatusBarPartIntersectionRegion:(double)a7 windowingConfiguration:(double)a8
{
  v31 = a3;
  v40.receiver = a1;
  v40.super_class = SBContinuousExposeAutoLayoutConfiguration;
  v32 = objc_msgSendSuper2(&v40, sel_init);
  if (v32)
  {
    v33 = a17;
    v34 = a18;
    v35 = a19;
    v36 = a20;
    v37 = a21;
    v38 = a22;
    if (!v31)
    {
      [SBContinuousExposeAutoLayoutConfiguration initWithContainerBounds:a2 screenScale:v32 dockHeightWithBottomEdgePadding:? leftStatusBarPartIntersectionRegion:? rightStatusBarPartIntersectionRegion:? windowingConfiguration:?];
      v38 = a22;
      v37 = a21;
      v36 = a20;
      v35 = a19;
      v34 = a18;
      v33 = a17;
    }

    *(v32 + 4) = a4;
    *(v32 + 5) = a5;
    *(v32 + 6) = a6;
    *(v32 + 7) = a7;
    *(v32 + 1) = a8;
    *(v32 + 2) = a9;
    *(v32 + 8) = a15;
    *(v32 + 9) = a16;
    *(v32 + 10) = v33;
    *(v32 + 11) = v34;
    *(v32 + 12) = v35;
    *(v32 + 13) = v36;
    *(v32 + 14) = v37;
    *(v32 + 15) = v38;
    objc_storeStrong(v32 + 3, a3);
  }

  return v32;
}

- (CGRect)containerBounds
{
  x = self->_containerBounds.origin.x;
  y = self->_containerBounds.origin.y;
  width = self->_containerBounds.size.width;
  height = self->_containerBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)leftStatusBarPartIntersectionRegion
{
  x = self->_leftStatusBarPartIntersectionRegion.origin.x;
  y = self->_leftStatusBarPartIntersectionRegion.origin.y;
  width = self->_leftStatusBarPartIntersectionRegion.size.width;
  height = self->_leftStatusBarPartIntersectionRegion.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)rightStatusBarPartIntersectionRegion
{
  x = self->_rightStatusBarPartIntersectionRegion.origin.x;
  y = self->_rightStatusBarPartIntersectionRegion.origin.y;
  width = self->_rightStatusBarPartIntersectionRegion.size.width;
  height = self->_rightStatusBarPartIntersectionRegion.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)initWithContainerBounds:(uint64_t)a1 screenScale:(uint64_t)a2 dockHeightWithBottomEdgePadding:leftStatusBarPartIntersectionRegion:rightStatusBarPartIntersectionRegion:windowingConfiguration:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposeAutoLayoutConfiguration.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"windowingConfiguration"}];
}

@end