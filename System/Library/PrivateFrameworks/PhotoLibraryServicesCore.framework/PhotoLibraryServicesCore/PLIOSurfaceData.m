@interface PLIOSurfaceData
+ (id)dataWithIOSurface:(void *)a3;
- (PLIOSurfaceData)initWithIOSurface:(void *)a3 length:(unint64_t)a4;
- (const)bytes;
- (void)dealloc;
@end

@implementation PLIOSurfaceData

- (void)dealloc
{
  surface = self->_surface;
  if (surface)
  {
    if (self->_bytes)
    {
      IOSurfaceUnlock(surface, 1u, 0);
      self->_bytes = 0;
      surface = self->_surface;
    }

    CFRelease(surface);
    self->_surface = 0;
  }

  v4.receiver = self;
  v4.super_class = PLIOSurfaceData;
  [(PLIOSurfaceData *)&v4 dealloc];
}

- (const)bytes
{
  result = self->_bytes;
  if (!result)
  {
    IOSurfaceLock(self->_surface, 1u, 0);
    result = IOSurfaceGetBaseAddress(self->_surface);
    self->_bytes = result;
  }

  return result;
}

- (PLIOSurfaceData)initWithIOSurface:(void *)a3 length:(unint64_t)a4
{
  v13.receiver = self;
  v13.super_class = PLIOSurfaceData;
  v6 = [(PLIOSurfaceData *)&v13 init];
  if (v6)
  {
    if (!a3 || (v7 = CFGetTypeID(a3), v7 != IOSurfaceGetTypeID()))
    {
      v11 = 0;
      goto LABEL_12;
    }

    v8 = CFRetain(a3);
    v6->_surface = v8;
    AllocSize = IOSurfaceGetAllocSize(v8);
    if (AllocSize >= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = AllocSize;
    }

    if (!a4)
    {
      v10 = AllocSize;
    }

    v6->_length = v10;
  }

  v11 = v6;
LABEL_12:

  return v11;
}

+ (id)dataWithIOSurface:(void *)a3
{
  v3 = [[a1 alloc] initWithIOSurface:a3];

  return v3;
}

@end