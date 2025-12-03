@interface VGArchivedSurface
+ (id)archivedSurfaceWithSurface:(id)surface;
- (VGArchivedSurface)initWithCoder:(id)coder;
@end

@implementation VGArchivedSurface

+ (id)archivedSurfaceWithSurface:(id)surface
{
  surfaceCopy = surface;
  v5 = surfaceCopy;
  if (surfaceCopy)
  {
    v6 = objc_getAssociatedObject(surfaceCopy, self);
    if (!v6)
    {
      v6 = objc_opt_new();
      v6[1] = v5;
      objc_setAssociatedObject(v5, self, v6, 1);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (VGArchivedSurface)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = VGArchivedSurface;
  v5 = [(VGArchivedSurface *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy _vg_decodeSurfaceForKey:@"surface"];
    decodedSurface = v5->_decodedSurface;
    v5->_decodedSurface = v6;

    v8 = v5;
  }

  return v5;
}

@end