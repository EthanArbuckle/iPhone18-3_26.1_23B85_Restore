@interface STUIStatusBarSignalViewCacheKey
- (BOOL)isEqual:(id)equal;
- (double)initWithClass:(double)class size:(double)size rect:(double)rect radius:(double)radius lineWidth:(double)width secondarySize:(double)secondarySize secondaryRect:(double)secondaryRect alternate:(uint64_t)self0 scale:(uint64_t)self1;
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation STUIStatusBarSignalViewCacheKey

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendClass:self->_classType];
  v5 = [builder appendCGSize:{self->_size.width, self->_size.height}];
  v6 = [builder appendCGRect:{self->_rect.origin.x, self->_rect.origin.y, self->_rect.size.width, self->_rect.size.height}];
  v7 = [builder appendCGFloat:self->_radius];
  v8 = [builder appendCGFloat:self->_lineWidth];
  v9 = [builder appendCGSize:{self->_secondarySize.width, self->_secondarySize.height}];
  v10 = [builder appendCGRect:{self->_secondaryRect.origin.x, self->_secondaryRect.origin.y, self->_secondaryRect.size.width, self->_secondaryRect.size.height}];
  v11 = [builder appendBool:self->_alternate];
  v12 = [builder appendCGFloat:self->_scale];
  v13 = [builder hash];

  return v13;
}

- (double)initWithClass:(double)class size:(double)size rect:(double)rect radius:(double)radius lineWidth:(double)width secondarySize:(double)secondarySize secondaryRect:(double)secondaryRect alternate:(uint64_t)self0 scale:(uint64_t)self1
{
  v34.receiver = self;
  v34.super_class = STUIStatusBarSignalViewCacheKey;
  result = objc_msgSendSuper2(&v34, sel_init);
  if (result)
  {
    *(result + 1) = scale;
    result[2] = a2;
    result[3] = class;
    result[4] = size;
    result[5] = rect;
    result[6] = radius;
    result[7] = width;
    result[8] = secondarySize;
    result[9] = secondaryRect;
    *(result + 10) = a17;
    *(result + 11) = a18;
    *(result + 12) = a19;
    *(result + 13) = a20;
    *(result + 14) = a21;
    *(result + 15) = a22;
    *(result + 128) = a12;
    *(result + 17) = a23;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = equalCopy;
  classType = self->_classType;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __43__STUIStatusBarSignalViewCacheKey_isEqual___block_invoke;
  v47[3] = &unk_279D38088;
  v8 = v6;
  v48 = v8;
  v9 = [v5 appendClass:classType counterpart:v47];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __43__STUIStatusBarSignalViewCacheKey_isEqual___block_invoke_2;
  v45[3] = &unk_279D380B0;
  v10 = v8;
  v46 = v10;
  v11 = [v5 appendCGSize:v45 counterpart:{self->_size.width, self->_size.height}];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __43__STUIStatusBarSignalViewCacheKey_isEqual___block_invoke_3;
  v43[3] = &unk_279D380D8;
  v12 = v10;
  v44 = v12;
  v13 = [v5 appendCGRect:v43 counterpart:{self->_rect.origin.x, self->_rect.origin.y, self->_rect.size.width, self->_rect.size.height}];
  radius = self->_radius;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __43__STUIStatusBarSignalViewCacheKey_isEqual___block_invoke_4;
  v41[3] = &unk_279D38100;
  v15 = v12;
  v42 = v15;
  v16 = [v5 appendCGFloat:v41 counterpart:radius];
  lineWidth = self->_lineWidth;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __43__STUIStatusBarSignalViewCacheKey_isEqual___block_invoke_5;
  v39[3] = &unk_279D38100;
  v18 = v15;
  v40 = v18;
  v19 = [v5 appendCGFloat:v39 counterpart:lineWidth];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __43__STUIStatusBarSignalViewCacheKey_isEqual___block_invoke_6;
  v37[3] = &unk_279D380B0;
  v20 = v18;
  v38 = v20;
  v21 = [v5 appendCGSize:v37 counterpart:{self->_secondarySize.width, self->_secondarySize.height}];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __43__STUIStatusBarSignalViewCacheKey_isEqual___block_invoke_7;
  v35[3] = &unk_279D380D8;
  v22 = v20;
  v36 = v22;
  v23 = [v5 appendCGRect:v35 counterpart:{self->_secondaryRect.origin.x, self->_secondaryRect.origin.y, self->_secondaryRect.size.width, self->_secondaryRect.size.height}];
  alternate = self->_alternate;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __43__STUIStatusBarSignalViewCacheKey_isEqual___block_invoke_8;
  v33[3] = &unk_279D38128;
  v25 = v22;
  v34 = v25;
  v26 = [v5 appendBool:alternate counterpart:v33];
  scale = self->_scale;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __43__STUIStatusBarSignalViewCacheKey_isEqual___block_invoke_9;
  v31[3] = &unk_279D38100;
  v32 = v25;
  v28 = v25;
  v29 = [v5 appendCGFloat:v31 counterpart:scale];
  LOBYTE(v25) = [v5 isEqual];

  return v25;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STUIStatusBarSignalViewCacheKey *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarSignalViewCacheKey *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarSignalViewCacheKey *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug
{
  debugCopy = debug;
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STUIStatusBarSignalViewCacheKey *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setUseDebugDescription:debugCopy];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__STUIStatusBarSignalViewCacheKey__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
  v11[3] = &unk_279D38150;
  v8 = succinctDescriptionBuilder;
  v12 = v8;
  selfCopy = self;
  [v8 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v11];

  v9 = v8;
  return v8;
}

id __83__STUIStatusBarSignalViewCacheKey__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendClass:*(*(a1 + 40) + 8) withName:@"class"];
  v3 = [*(a1 + 32) appendSize:@"size" withName:{*(*(a1 + 40) + 16), *(*(a1 + 40) + 24)}];
  v4 = [*(a1 + 32) appendRect:@"rect" withName:{*(*(a1 + 40) + 32), *(*(a1 + 40) + 40), *(*(a1 + 40) + 48), *(*(a1 + 40) + 56)}];
  v5 = [*(a1 + 32) appendDouble:@"radius" withName:10 decimalPrecision:*(*(a1 + 40) + 64)];
  v6 = [*(a1 + 32) appendDouble:@"lineWidth" withName:10 decimalPrecision:*(*(a1 + 40) + 72)];
  v7 = [*(a1 + 32) appendSize:@"secondarySize" withName:{*(*(a1 + 40) + 80), *(*(a1 + 40) + 88)}];
  v8 = [*(a1 + 32) appendRect:@"secondaryRect" withName:{*(*(a1 + 40) + 96), *(*(a1 + 40) + 104), *(*(a1 + 40) + 112), *(*(a1 + 40) + 120)}];
  LOBYTE(v9) = *(*(a1 + 40) + 128);
  v10 = [*(a1 + 32) appendDouble:@"alternate" withName:10 decimalPrecision:v9];
  return [*(a1 + 32) appendDouble:@"scale" withName:10 decimalPrecision:*(*(a1 + 40) + 136)];
}

@end