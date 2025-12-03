@interface RBSurfaceContents
- (id).cxx_construct;
- (void)initWithIOSurface:(void *)surface;
@end

@implementation RBSurfaceContents

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)initWithIOSurface:(void *)surface
{
  if (!surface)
  {
    return 0;
  }

  v10.receiver = surface;
  v10.super_class = RBSurfaceContents;
  v3 = objc_msgSendSuper2(&v10, sel_init);
  v4 = v3;
  if (v3)
  {
    v5 = v3[1];
    if (v5 != a2)
    {
      if (v5)
      {
        CFRelease(v5);
      }

      if (a2)
      {
        v6 = CFRetain(a2);
      }

      else
      {
        v6 = 0;
      }

      v4[1] = v6;
    }

    cA_copyRenderValue = [a2 CA_copyRenderValue];
    v8 = v4[2];
    v4[2] = cA_copyRenderValue;
    if (v8)
    {
      CARenderRelease();
    }
  }

  return v4;
}

@end