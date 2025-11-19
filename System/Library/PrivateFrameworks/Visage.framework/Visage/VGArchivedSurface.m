@interface VGArchivedSurface
+ (id)archivedSurfaceWithSurface:(id)a3;
- (VGArchivedSurface)initWithCoder:(id)a3;
@end

@implementation VGArchivedSurface

+ (id)archivedSurfaceWithSurface:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = objc_getAssociatedObject(v4, a1);
    if (!v6)
    {
      v6 = objc_opt_new();
      v6[1] = v5;
      objc_setAssociatedObject(v5, a1, v6, 1);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (VGArchivedSurface)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = VGArchivedSurface;
  v5 = [(VGArchivedSurface *)&v10 init];
  if (v5)
  {
    v6 = [v4 _vg_decodeSurfaceForKey:@"surface"];
    decodedSurface = v5->_decodedSurface;
    v5->_decodedSurface = v6;

    v8 = v5;
  }

  return v5;
}

@end