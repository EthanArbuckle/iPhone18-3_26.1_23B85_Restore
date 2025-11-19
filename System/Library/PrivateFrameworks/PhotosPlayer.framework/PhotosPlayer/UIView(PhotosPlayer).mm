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
    v4 = [a1 layer];
    v5 = [v4 valueForKeyPath:@"filters.LivePhotoBlur.inputRadius"];
    v6 = [v4 presentationLayer];
    v7 = [v6 valueForKeyPath:@"filters.LivePhotoBlur.inputRadius"];

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
  v1 = [a1 layer];
  [v1 is_blurRadius];
  v3 = v2;

  return v3;
}

- (void)is_setBlurRadius:()PhotosPlayer
{
  v3 = [a1 layer];
  [v3 is_setBlurRadius:a2];
}

@end