@interface _UIStatusBarCycleLayerAnimation
+ (id)cycleAnimationWithLayer:(id)layer animation:(id)animation key:(id)key;
- (id)description;
@end

@implementation _UIStatusBarCycleLayerAnimation

+ (id)cycleAnimationWithLayer:(id)layer animation:(id)animation key:(id)key
{
  v16[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  animationCopy = animation;
  layerCopy = layer;
  v11 = objc_alloc_init(self);
  animation = [MEMORY[0x1E6979308] animation];
  v16[0] = animationCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [animation setAnimations:v13];

  [animationCopy duration];
  [animation setDuration:?];
  [animation setAutoreverses:{objc_msgSend(animationCopy, "autoreverses")}];
  [v11 setLayer:layerCopy];

  [v11 setAnimation:animation];
  [v11 setOriginalAnimation:animationCopy];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%p", keyCopy, v11];

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