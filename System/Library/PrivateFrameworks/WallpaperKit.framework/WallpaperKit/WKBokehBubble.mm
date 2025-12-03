@interface WKBokehBubble
+ (id)_newFadeAnimationWithSeed:(uint64_t)seed;
- (void)_configureAnimationsWithSeed:(void *)seed;
- (void)_configureAppearanceWithSeed:(void *)seed;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)initWithSeed:(void *)seed;
@end

@implementation WKBokehBubble

+ (id)_newFadeAnimationWithSeed:(uint64_t)seed
{
  v14[4] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = ((vcvts_n_f32_s32(rand_r(a2), 0x1FuLL) * 3.0) + 5.0) + 0.0;
  v4 = v3 + ((vcvts_n_f32_s32(rand_r(a2), 0x1FuLL) * 14.0) + 3.0);
  v5 = v4 + ((vcvts_n_f32_s32(rand_r(a2), 0x1FuLL) * 3.0) + 5.0);
  v6 = objc_alloc_init(MEMORY[0x1E6979390]);
  [v6 setAdditive:1];
  [v6 setValues:&unk_1F5EAA790];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:0.0 / v5];
  v14[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v3 / v5];
  v14[1] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v4 / v5];
  v14[2] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v5 / v5];
  v14[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
  [v6 setKeyTimes:v11];

  [v6 setDuration:v5];
  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (finished)
  {
    [WKBokehBubble animationDidStop:? finished:?];
  }
}

- (void)initWithSeed:(void *)seed
{
  if (!seed)
  {
    return 0;
  }

  v6.receiver = seed;
  v6.super_class = WKBokehBubble;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    [v3 setCompositingFilter:*MEMORY[0x1E6979C30]];
    [(WKBokehBubble *)v4 _configureAppearanceWithSeed:a2];
    [(WKBokehBubble *)v4 _configureAnimationsWithSeed:a2];
  }

  return v4;
}

- (void)_configureAppearanceWithSeed:(void *)seed
{
  if (seed)
  {
    v4 = ((vcvts_n_f32_s32(rand_r(a2), 0x1FuLL) * 2.0) + -1.0);
    v5 = ((vcvts_n_f32_s32(rand_r(a2), 0x1FuLL) * 2.0) + -1.0);
    v6 = ((vcvts_n_f32_s32(rand_r(a2), 0x1FuLL) * 1.2) + -1.5);
    [seed setPosition:{v4 * v6, v5 * v6}];
    [seed setZPosition:v6];
    v11 = [WKBokehImageArbiter imageForZ:v6];
    [v11 size];
    v9 = sqrt(v7 * v8) * 0.15 * 0.0078125;
    v10 = v11;
    [seed setContents:{objc_msgSend(v11, "CGImage")}];
    [seed setBounds:{0.0, 0.0, v9, v9}];
    [seed setOpacity:0.0];
  }
}

- (void)_configureAnimationsWithSeed:(void *)seed
{
  if (seed)
  {
    [seed removeAllAnimations];
    v4 = OUTLINED_FUNCTION_0_0();
    v12 = [(WKBokehBubble *)v4 _newFadeAnimationWithSeed:v5];
    [v12 setKeyPath:@"opacity"];
    [v12 setDelegate:seed];
    [seed addAnimation:v12 forKey:@"fade"];
    v6 = OUTLINED_FUNCTION_0_0();
    v7 = [WKBokehBubble _newFlickerAnimationWithSeed:v6];
    [v7 setKeyPath:@"opacity"];
    [seed addAnimation:v7 forKey:@"flicker"];
    if (vcvts_n_f32_s32(rand_r(a2), 0x1FuLL) < 0.5)
    {
      v8 = OUTLINED_FUNCTION_0_0();
      v9 = [WKBokehBubble _newScaleAnimationWithSeed:v8];
      [v9 setKeyPath:@"transform.scale.x"];
      [seed addAnimation:v9 forKey:@"squish"];
      v10 = OUTLINED_FUNCTION_0_0();
      v11 = [WKBokehBubble _newScaleAnimationWithSeed:v10];
      [v11 setKeyPath:@"transform.scale.y"];
      [seed addAnimation:v11 forKey:@"squash"];
    }
  }
}

- (uint64_t)animationDidStop:(void *)a1 finished:.cold.1(void *a1)
{
  v3 = rand();
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(WKBokehBubble *)a1 _configureAppearanceWithSeed:?];
  [(WKBokehBubble *)a1 _configureAnimationsWithSeed:?];
  return [MEMORY[0x1E6979518] commit];
}

@end