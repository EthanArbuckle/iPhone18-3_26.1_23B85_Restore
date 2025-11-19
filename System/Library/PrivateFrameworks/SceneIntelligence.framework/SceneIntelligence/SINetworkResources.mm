@interface SINetworkResources
- (SIIOSurfaceAllocator)surfaceAllocator;
@end

@implementation SINetworkResources

- (SIIOSurfaceAllocator)surfaceAllocator
{
  surfaceAllocator = self->_surfaceAllocator;
  if (!surfaceAllocator)
  {
    v4 = objc_alloc_init(SIIOSurfaceAllocator);
    v5 = self->_surfaceAllocator;
    self->_surfaceAllocator = v4;

    surfaceAllocator = self->_surfaceAllocator;
  }

  return surfaceAllocator;
}

@end