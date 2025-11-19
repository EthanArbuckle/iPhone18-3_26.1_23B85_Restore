@interface AmbientPhotoFramePlayergroundViewController.PlaygroundPosterPreferences
- (CGRect)px_preferredSalientContentRectangle;
@end

@implementation AmbientPhotoFramePlayergroundViewController.PlaygroundPosterPreferences

- (CGRect)px_preferredSalientContentRectangle
{
  v2 = sub_1B3897580();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end