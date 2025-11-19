@interface _PUWallpaperPosterEditorDebugPreferences
- (CGRect)pu_preferredSalientContentRectangle;
@end

@implementation _PUWallpaperPosterEditorDebugPreferences

- (CGRect)pu_preferredSalientContentRectangle
{
  x = self->_pu_preferredSalientContentRectangle.origin.x;
  y = self->_pu_preferredSalientContentRectangle.origin.y;
  width = self->_pu_preferredSalientContentRectangle.size.width;
  height = self->_pu_preferredSalientContentRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end