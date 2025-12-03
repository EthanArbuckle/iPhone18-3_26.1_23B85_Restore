@interface PUWallpaperPosterMotionEffect
- (CGPoint)parallaxVectorFromKeyPathsAndRelativeValues:(id)values;
- (PUWallpaperPosterMotionEffect)init;
@end

@implementation PUWallpaperPosterMotionEffect

- (CGPoint)parallaxVectorFromKeyPathsAndRelativeValues:(id)values
{
  valuesCopy = values;
  v4 = [valuesCopy objectForKeyedSubscript:@"focusDirectionX"];
  [v4 doubleValue];
  v6 = v5;
  v7 = [valuesCopy objectForKeyedSubscript:@"focusDirectionY"];

  [v7 doubleValue];
  v9 = v8;

  v10 = v6;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (PUWallpaperPosterMotionEffect)init
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = PUWallpaperPosterMotionEffect;
  v2 = [(UIMotionEffect *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCB10]) initWithKeyPath:@"focusDirectionX" type:0];
    [v3 setMinimumRelativeValue:&unk_1F2B7F538];
    [v3 setMaximumRelativeValue:&unk_1F2B7F548];
    v4 = [objc_alloc(MEMORY[0x1E69DCB10]) initWithKeyPath:@"focusDirectionY" type:1];
    [v4 setMinimumRelativeValue:&unk_1F2B7F538];
    [v4 setMaximumRelativeValue:&unk_1F2B7F548];
    v8[0] = v3;
    v8[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
    [(UIMotionEffectGroup *)v2 setMotionEffects:v5];
  }

  return v2;
}

@end