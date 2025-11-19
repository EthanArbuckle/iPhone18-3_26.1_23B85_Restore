@interface STUIStatusBarCycleLayerAnimation
+ (id)cycleAnimationWithLayer:(id)a3 animation:(id)a4 key:(id)a5;
- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation STUIStatusBarCycleLayerAnimation

+ (id)cycleAnimationWithLayer:(id)a3 animation:(id)a4 key:(id)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(a1);
  v12 = [MEMORY[0x277CD9E00] animation];
  v16[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v12 setAnimations:v13];

  [v9 duration];
  [v12 setDuration:?];
  [v12 setAutoreverses:{objc_msgSend(v9, "autoreverses")}];
  [v11 setLayer:v10];

  [v11 setAnimation:v12];
  [v11 setOriginalAnimation:v9];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", v8, v11];

  [v11 setKey:v14];

  return v11;
}

- (id)succinctDescription
{
  v2 = [(STUIStatusBarCycleLayerAnimation *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarCycleLayerAnimation *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarCycleLayerAnimation *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(STUIStatusBarCycleLayerAnimation *)self succinctDescriptionBuilder];
  [v7 setUseDebugDescription:v4];
  [v7 setActiveMultilinePrefix:v6];

  v8 = [v7 activeMultilinePrefix];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__STUIStatusBarCycleLayerAnimation__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
  v12[3] = &unk_279D38150;
  v9 = v7;
  v13 = v9;
  v14 = self;
  [v9 appendBodySectionWithName:0 multilinePrefix:v8 block:v12];

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