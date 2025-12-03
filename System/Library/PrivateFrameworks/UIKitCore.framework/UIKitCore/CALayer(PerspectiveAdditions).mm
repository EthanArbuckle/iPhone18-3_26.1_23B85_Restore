@interface CALayer(PerspectiveAdditions)
- (uint64_t)setPerspectiveDistance:()PerspectiveAdditions;
@end

@implementation CALayer(PerspectiveAdditions)

- (uint64_t)setPerspectiveDistance:()PerspectiveAdditions
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  [self sublayerTransform];
  *(&v11 + 1) = -1.0 / a2;
  v5[4] = v10;
  v5[5] = v11;
  v5[6] = v12;
  v5[7] = v13;
  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  v5[3] = v9;
  return [self setSublayerTransform:v5];
}

@end