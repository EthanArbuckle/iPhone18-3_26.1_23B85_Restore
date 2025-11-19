@interface _UIStatusBarCycleLayerAnimation
+ (id)cycleAnimationWithLayer:(id)a3 animation:(id)a4 key:(id)a5;
- (id)description;
@end

@implementation _UIStatusBarCycleLayerAnimation

+ (id)cycleAnimationWithLayer:(id)a3 animation:(id)a4 key:(id)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(a1);
  v12 = [MEMORY[0x1E6979308] animation];
  v16[0] = v9;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [v12 setAnimations:v13];

  [v9 duration];
  [v12 setDuration:?];
  [v12 setAutoreverses:{objc_msgSend(v9, "autoreverses")}];
  [v11 setLayer:v10];

  [v11 setAnimation:v12];
  [v11 setOriginalAnimation:v9];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%p", v8, v11];

  [v11 setKey:v14];

  return v11;
}

- (id)description
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(sel_layer);
  v8[0] = v3;
  v4 = NSStringFromSelector("key");
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [UIDescriptionBuilder descriptionForObject:self keys:v5];

  return v6;
}

@end