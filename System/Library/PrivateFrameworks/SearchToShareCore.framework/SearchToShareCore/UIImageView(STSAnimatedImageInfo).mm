@interface UIImageView(STSAnimatedImageInfo)
- (void)sts_addAnimationsForSTSAnimatedImageInfo:()STSAnimatedImageInfo;
@end

@implementation UIImageView(STSAnimatedImageInfo)

- (void)sts_addAnimationsForSTSAnimatedImageInfo:()STSAnimatedImageInfo
{
  v4 = a3;
  frames = [v4 frames];
  v6 = [frames count];

  if (v6)
  {
    [v4 duration];
    v8 = v7;
    if (v7 == 0.0)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v7 / v6 / v7;
    }

    frames2 = [v4 frames];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__UIImageView_STSAnimatedImageInfo__sts_addAnimationsForSTSAnimatedImageInfo___block_invoke;
    v16[3] = &__block_descriptor_40_e11__24__0_8Q16l;
    *&v16[4] = v9;
    v11 = [frames2 sts_map:v16];

    v12 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"contents"];
    [v12 setCalculationMode:*MEMORY[0x277CDA068]];
    LODWORD(v13) = 2139095040;
    [v12 setRepeatCount:v13];
    frames3 = [v4 frames];
    [v12 setValues:frames3];

    [v12 setKeyTimes:v11];
    [v12 setDuration:v8];
    [v12 setRemovedOnCompletion:0];
    layer = [self layer];
    [layer addAnimation:v12 forKey:@"contents"];

    [MEMORY[0x277CD9FF0] flush];
  }
}

@end