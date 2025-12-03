@interface STUIStatusBarCycleLayerAnimation
+ (id)cycleAnimationWithLayer:(id)layer animation:(id)animation key:(id)key;
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation STUIStatusBarCycleLayerAnimation

+ (id)cycleAnimationWithLayer:(id)layer animation:(id)animation key:(id)key
{
  v16[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  animationCopy = animation;
  layerCopy = layer;
  v11 = objc_alloc_init(self);
  animation = [MEMORY[0x277CD9E00] animation];
  v16[0] = animationCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [animation setAnimations:v13];

  [animationCopy duration];
  [animation setDuration:?];
  [animation setAutoreverses:{objc_msgSend(animationCopy, "autoreverses")}];
  [v11 setLayer:layerCopy];

  [v11 setAnimation:animation];
  [v11 setOriginalAnimation:animationCopy];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", keyCopy, v11];

  [v11 setKey:v14];

  return v11;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STUIStatusBarCycleLayerAnimation *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarCycleLayerAnimation *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarCycleLayerAnimation *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug
{
  debugCopy = debug;
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STUIStatusBarCycleLayerAnimation *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setUseDebugDescription:debugCopy];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];

  activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__STUIStatusBarCycleLayerAnimation__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
  v12[3] = &unk_279D38150;
  v9 = succinctDescriptionBuilder;
  v13 = v9;
  selfCopy = self;
  [v9 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v12];

  v10 = v9;
  return v9;
}

void __84__STUIStatusBarCycleLayerAnimation__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) key];
  [v2 appendString:v3 withName:@"key"];

  v4 = *(a1 + 32);
  v6 = [*(a1 + 40) animation];
  v5 = [v4 appendObject:v6 withName:@"animation"];
}

@end