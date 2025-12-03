@interface UIView(PhotosPlayer)
- (double)is_blurRadius;
- (id)is_actionForKey:()PhotosPlayer;
- (void)is_setBlurRadius:()PhotosPlayer;
@end

@implementation UIView(PhotosPlayer)

- (id)is_actionForKey:()PhotosPlayer
{
  if ([a3 isEqualToString:@"filters.LivePhotoBlur.inputRadius"])
  {
    layer = [self layer];
    v5 = [layer valueForKeyPath:@"filters.LivePhotoBlur.inputRadius"];
    presentationLayer = [layer presentationLayer];
    v7 = [presentationLayer valueForKeyPath:@"filters.LivePhotoBlur.inputRadius"];

    v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"filters.LivePhotoBlur.inputRadius"];
    [v8 setFromValue:v7];
    [v8 setToValue:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)is_blurRadius
{
  layer = [self layer];
  [layer is_blurRadius];
  v3 = v2;

  return v3;
}

- (void)is_setBlurRadius:()PhotosPlayer
{
  layer = [self layer];
  [layer is_setBlurRadius:a2];
}

@end