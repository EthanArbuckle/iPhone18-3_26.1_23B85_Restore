@interface UIScreen(NCAdditions)
+ (CGAffineTransform)nc_transformForScreenOriginRotation:()NCAdditions;
+ (uint64_t)nc_counterTransformForActiveInterfaceOrientation;
+ (uint64_t)nc_transformForInterfaceOrientation:()NCAdditions;
- (void)nc_bounds;
@end

@implementation UIScreen(NCAdditions)

- (void)nc_bounds
{
  [a1 _referenceBounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = objc_opt_class();
  v10 = [*MEMORY[0x277D76620] activeInterfaceOrientation];
  if (v9)
  {
    [v9 nc_transformForInterfaceOrientation:v10];
  }

  else
  {
    memset(&v11, 0, sizeof(v11));
  }

  v12.origin.x = v2;
  v12.origin.y = v4;
  v12.size.width = v6;
  v12.size.height = v8;
  CGRectApplyAffineTransform(v12, &v11);
}

+ (CGAffineTransform)nc_transformForScreenOriginRotation:()NCAdditions
{
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 _referenceBounds];
  v6 = v5;
  v8 = v7;

  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeTranslation(&v10, v6 * 0.5, v8 * 0.5);
  CGAffineTransformRotate(&v11, &v10, a2);
  v10 = v11;
  return CGAffineTransformTranslate(a1, &v10, v6 * -0.5, v8 * -0.5);
}

+ (uint64_t)nc_transformForInterfaceOrientation:()NCAdditions
{
  switch(a3)
  {
    case 1:
      v3 = 0.0;
      break;
    case 3:
      v3 = 1.57079633;
      break;
    case 4:
      v3 = -1.57079633;
      break;
    default:
      v3 = 3.14159265;
      if (a3 != 2)
      {
        v3 = 0.0;
      }

      break;
  }

  return [a1 nc_transformForScreenOriginRotation:v3];
}

+ (uint64_t)nc_counterTransformForActiveInterfaceOrientation
{
  v2 = [*MEMORY[0x277D76620] activeInterfaceOrientation];
  v3 = 3;
  if (v2 != 4)
  {
    v3 = 4;
  }

  if ((v2 - 3) >= 2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  return [a1 nc_transformForInterfaceOrientation:v4];
}

@end