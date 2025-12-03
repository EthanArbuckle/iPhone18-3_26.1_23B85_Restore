@interface PLIOSurfaceData
+ (id)dataWithIOSurface:(void *)surface;
- (PLIOSurfaceData)initWithIOSurface:(void *)surface length:(unint64_t)length;
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

- (PLIOSurfaceData)initWithIOSurface:(void *)surface length:(unint64_t)length
{
  v13.receiver = self;
  v13.super_class = PLIOSurfaceData;
  v6 = [(PLIOSurfaceData *)&v13 init];
  if (v6)
  {
    if (!surface || (v7 = CFGetTypeID(surface), v7 != IOSurfaceGetTypeID()))
    {
      v11 = 0;
      goto LABEL_12;
    }

    v8 = CFRetain(surface);
    v6->_surface = v8;
    AllocSize = IOSurfaceGetAllocSize(v8);
    if (AllocSize >= length)
    {
      lengthCopy = length;
    }

    else
    {
      lengthCopy = AllocSize;
    }

    if (!length)
    {
      lengthCopy = AllocSize;
    }

    v6->_length = lengthCopy;
  }

  v11 = v6;
LABEL_12:

  return v11;
}

+ (id)dataWithIOSurface:(void *)surface
{
  v3 = [[self alloc] initWithIOSurface:surface];

  return v3;
}

@end