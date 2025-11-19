@interface PLTile
- (CGRect)imageRect;
- (void)dealloc;
- (void)setDecodedSurface:(__IOSurface *)a3;
- (void)setTileId:(id)a3;
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

- (void)setTileId:(id)a3
{
  if (self->_tileId != a3)
  {
    v5 = a3;

    self->_tileId = a3;
  }
}

- (void)setDecodedSurface:(__IOSurface *)a3
{
  decodedSurface = self->_decodedSurface;
  if (decodedSurface != a3)
  {
    if (a3)
    {
      CFRetain(a3);
      decodedSurface = self->_decodedSurface;
    }

    if (decodedSurface)
    {
      IOSurfaceDecrementUseCount(decodedSurface);
      CFRelease(self->_decodedSurface);
    }

    self->_decodedSurface = a3;
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