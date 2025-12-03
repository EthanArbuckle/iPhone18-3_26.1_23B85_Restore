@interface UIScreen(NCAdditions)
+ (CGAffineTransform)nc_transformForScreenOriginRotation:()NCAdditions;
+ (uint64_t)nc_counterTransformForActiveInterfaceOrientation;
+ (uint64_t)nc_transformForInterfaceOrientation:()NCAdditions;
- (void)nc_bounds;
@end

@implementation UIScreen(NCAdditions)

- (void)nc_bounds
{
  [self _referenceBounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = objc_opt_class();
  activeInterfaceOrientation = [*MEMORY[0x277D76620] activeInterfaceOrientation];
  if (v9)
  {
    [v9 nc_transformForInterfaceOrientation:activeInterfaceOrientation];
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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  v6 = v5;
  v8 = v7;

  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeTranslation(&v10, v6 * 0.5, v8 * 0.5);
  CGAffineTransformRotate(&v11, &v10, a2);
  v10 = v11;
  return CGAffineTransformTranslate(self, &v10, v6 * -0.5, v8 * -0.5);
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

  return [self nc_transformForScreenOriginRotation:v3];
}

+ (uint64_t)nc_counterTransformForActiveInterfaceOrientation
{
  activeInterfaceOrientation = [*MEMORY[0x277D76620] activeInterfaceOrientation];
  v3 = 3;
  if (activeInterfaceOrientation != 4)
  {
    v3 = 4;
  }

  if ((activeInterfaceOrientation - 3) >= 2)
  {
    v4 = activeInterfaceOrientation;
  }

  else
  {
    v4 = v3;
  }

  return [self nc_transformForInterfaceOrientation:v4];
}

@end