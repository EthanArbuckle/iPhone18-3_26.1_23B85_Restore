@interface _PUWallpaperDebugMutablePreferences
- (CGRect)px_preferredSalientContentRectangle;
- (CGRect)px_preferredTitleBounds;
@end

@implementation _PUWallpaperDebugMutablePreferences

- (CGRect)px_preferredSalientContentRectangle
{
  x = self->_px_preferredSalientContentRectangle.origin.x;
  y = self->_px_preferredSalientContentRectangle.origin.y;
  width = self->_px_preferredSalientContentRectangle.size.width;
  height = self->_px_preferredSalientContentRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)px_preferredTitleBounds
{
  x = self->_px_preferredTitleBounds.origin.x;
  y = self->_px_preferredTitleBounds.origin.y;
  width = self->_px_preferredTitleBounds.size.width;
  height = self->_px_preferredTitleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end