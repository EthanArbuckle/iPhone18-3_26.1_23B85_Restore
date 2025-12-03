@interface _UIStatusBarAnimationFactory
+ (id)fadeAnimationWithDuration:(double)duration scale:(double)scale offset:(UIOffset)offset;
+ (id)noAnimation;
+ (id)pulseAnimationWithDuration:(double)duration scale:(double)scale;
@end

@implementation _UIStatusBarAnimationFactory

+ (id)noAnimation
{
  if (qword_1ED4A0A30 != -1)
  {
    dispatch_once(&qword_1ED4A0A30, &__block_literal_global_530);
  }

  v3 = _MergedGlobals_1286;

  return v3;
}

+ (id)fadeAnimationWithDuration:(double)duration scale:(double)scale offset:(UIOffset)offset
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__185;
  v22[4] = __Block_byref_object_dispose__185;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v9 = *MEMORY[0x1E695EFD0];
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  *&v21.a = *MEMORY[0x1E695EFD0];
  *&v21.c = v10;
  v11 = *(MEMORY[0x1E695EFD0] + 32);
  *&v21.tx = v11;
  if (horizontal != 0.0 || vertical != 0.0)
  {
    *&v20.a = v9;
    *&v20.c = v10;
    *&v20.tx = v11;
    CGAffineTransformTranslate(&v21, &v20, horizontal, vertical);
  }

  if (scale != 1.0)
  {
    v19 = v21;
    CGAffineTransformScale(&v20, &v19, scale, scale);
    v21 = v20;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v17 = v21;
  v16[2] = __71___UIStatusBarAnimationFactory_fadeAnimationWithDuration_scale_offset___block_invoke;
  v16[3] = &unk_1E7121D88;
  v16[4] = v22;
  durationCopy = duration;
  v12 = [_UIStatusBarAnimation animationWithBlock:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71___UIStatusBarAnimationFactory_fadeAnimationWithDuration_scale_offset___block_invoke_3;
  v15[3] = &unk_1E711CD00;
  v15[4] = v22;
  [v12 setPrepareBlock:v15];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fadeAnimation[%.2f]", *&duration];
  [v12 setIdentifier:v13];

  _Block_object_dispose(v22, 8);

  return v12;
}

+ (id)pulseAnimationWithDuration:(double)duration scale:(double)scale
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___UIStatusBarAnimationFactory_pulseAnimationWithDuration_scale___block_invoke;
  v6[3] = &__block_descriptor_48_e69_v32__0___UIStatusBarAnimation_8___UIStatusBarDisplayItem_16___v__B_24l;
  *&v6[4] = duration;
  *&v6[5] = scale;
  v4 = [_UIStatusBarAnimation animationWithBlock:v6];

  return v4;
}

@end