@interface PLTile
- (CGRect)imageRect;
- (void)dealloc;
- (void)setDecodedSurface:(__IOSurface *)surface;
- (void)setTileId:(id)id;
@end

@implementation PLTile

- (void)dealloc
{
  decodedSurface = self->_decodedSurface;
  if (decodedSurface)
  {
    IOSurfaceDecrementUseCount(decodedSurface);
    CFRelease(self->_decodedSurface);
  }

  v4.receiver = self;
  v4.super_class = PLTile;
  [(PLTile *)&v4 dealloc];
}

- (void)setTileId:(id)id
{
  if (self->_tileId != id)
  {
    idCopy = id;

    self->_tileId = id;
  }
}

- (void)setDecodedSurface:(__IOSurface *)surface
{
  decodedSurface = self->_decodedSurface;
  if (decodedSurface != surface)
  {
    if (surface)
    {
      CFRetain(surface);
      decodedSurface = self->_decodedSurface;
    }

    if (decodedSurface)
    {
      IOSurfaceDecrementUseCount(decodedSurface);
      CFRelease(self->_decodedSurface);
    }

    self->_decodedSurface = surface;
  }
}

- (CGRect)imageRect
{
  x = self->_imageRect.origin.x;
  y = self->_imageRect.origin.y;
  width = self->_imageRect.size.width;
  height = self->_imageRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end