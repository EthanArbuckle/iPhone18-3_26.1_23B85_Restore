@interface UISceneAsynchronousRenderingOptions
- (BOOL)isEqual:(id)equal;
- (UISceneAsynchronousRenderingOptions)init;
- (UISceneAsynchronousRenderingOptions)initWithOptions:(id)options;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation UISceneAsynchronousRenderingOptions

- (UISceneAsynchronousRenderingOptions)init
{
  v6.receiver = self;
  v6.super_class = UISceneAsynchronousRenderingOptions;
  v2 = [(UISceneAsynchronousRenderingOptions *)&v6 init];
  v3 = v2;
  if (v2)
  {
    renderTimes = v2->_renderTimes;
    v2->_renderTimes = 0;

    v3->_renderPeriod = 0.0;
    v3->_renderMaxAPL = INFINITY;
    v3->_opaque = 0;
  }

  return v3;
}

- (UISceneAsynchronousRenderingOptions)initWithOptions:(id)options
{
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = UISceneAsynchronousRenderingOptions;
  v5 = [(UISceneAsynchronousRenderingOptions *)&v12 init];
  if (v5)
  {
    renderTimes = [optionsCopy renderTimes];
    v7 = [renderTimes copy];
    renderTimes = v5->_renderTimes;
    v5->_renderTimes = v7;

    [optionsCopy renderPeriod];
    v5->_renderPeriod = v9;
    [optionsCopy renderMaxAPL];
    v5->_renderMaxAPL = v10;
    v5->_opaque = [optionsCopy opaque];
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [UIMutableSceneAsynchronousRenderingOptions alloc];

  return [(UISceneAsynchronousRenderingOptions *)v4 initWithOptions:self];
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  renderTimes = [(UISceneAsynchronousRenderingOptions *)self renderTimes];
  v5 = [builder appendObject:renderTimes];

  [(UISceneAsynchronousRenderingOptions *)self renderPeriod];
  v6 = [builder appendDouble:?];
  [(UISceneAsynchronousRenderingOptions *)self renderMaxAPL];
  v7 = [builder appendFloat:?];
  v8 = [builder appendBool:{-[UISceneAsynchronousRenderingOptions opaque](self, "opaque")}];
  v9 = [builder hash];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v18 = 1;
  }

  else
  {
    v6 = equalCopy;
    v7 = [MEMORY[0x1E698E6A0] builderWithObject:v6 ofExpectedClass:objc_opt_class()];
    [(UISceneAsynchronousRenderingOptions *)self renderPeriod];
    v9 = v8;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __47__UISceneAsynchronousRenderingOptions_isEqual___block_invoke;
    v35[3] = &unk_1E70F66A0;
    v10 = v6;
    v36 = v10;
    v11 = [v7 appendDouble:v35 counterpart:v9];
    [(UISceneAsynchronousRenderingOptions *)self renderMaxAPL];
    if (fabsf(v12) == INFINITY)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __47__UISceneAsynchronousRenderingOptions_isEqual___block_invoke_2;
      v33[3] = &unk_1E70F3CB0;
      v15 = &v34;
      v34 = v10;
      v19 = [v7 appendBool:1 counterpart:v33];
    }

    else
    {
      [(UISceneAsynchronousRenderingOptions *)self renderMaxAPL];
      v14 = v13;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __47__UISceneAsynchronousRenderingOptions_isEqual___block_invoke_3;
      v31[3] = &unk_1E70F66C8;
      v15 = &v32;
      v32 = v10;
      LODWORD(v16) = v14;
      v17 = [v7 appendFloat:v31 counterpart:v16];
    }

    renderTimes = [(UISceneAsynchronousRenderingOptions *)self renderTimes];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __47__UISceneAsynchronousRenderingOptions_isEqual___block_invoke_4;
    v29[3] = &unk_1E70F66F0;
    v21 = v10;
    v30 = v21;
    v22 = [v7 appendObject:renderTimes counterpart:v29];

    opaque = [(UISceneAsynchronousRenderingOptions *)self opaque];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __47__UISceneAsynchronousRenderingOptions_isEqual___block_invoke_5;
    v27[3] = &unk_1E70F3CB0;
    v28 = v21;
    v24 = v21;
    v25 = [v7 appendBool:opaque counterpart:v27];
    v18 = [v7 isEqual];
  }

  return v18;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [(UISceneAsynchronousRenderingOptions *)self renderPeriod];
  v4 = [v3 appendDouble:@"renderPeriod" withName:3 decimalPrecision:?];
  [(UISceneAsynchronousRenderingOptions *)self renderMaxAPL];
  v6 = [v3 appendFloat:@"renderMaxAPL" withName:3 decimalPrecision:v5];
  renderTimes = [(UISceneAsynchronousRenderingOptions *)self renderTimes];
  v8 = [renderTimes count];

  if (v8)
  {
    renderTimes2 = [(UISceneAsynchronousRenderingOptions *)self renderTimes];
    v10 = [v3 appendUnsignedInteger:objc_msgSend(renderTimes2 withName:{"count"), @"renderTimes.count"}];
  }

  v11 = [v3 appendBool:-[UISceneAsynchronousRenderingOptions opaque](self withName:"opaque") ifEqualTo:{@"opaque", 1}];

  return v3;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UISceneAsynchronousRenderingOptions *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [(UISceneAsynchronousRenderingOptions *)self renderPeriod];
  v6 = [v5 appendDouble:@"renderPeriod" withName:3 decimalPrecision:?];
  [(UISceneAsynchronousRenderingOptions *)self renderMaxAPL];
  v8 = [v5 appendFloat:@"renderMaxAPL" withName:3 decimalPrecision:v7];
  renderTimes = [(UISceneAsynchronousRenderingOptions *)self renderTimes];

  if (renderTimes)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __77__UISceneAsynchronousRenderingOptions_descriptionBuilderWithMultilinePrefix___block_invoke;
    v15 = &unk_1E70F35B8;
    v16 = v5;
    selfCopy = self;
    [v16 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:&v12];
  }

  v10 = [v5 appendBool:-[UISceneAsynchronousRenderingOptions opaque](self withName:{"opaque", v12, v13, v14, v15), @"opaque"}];

  return v5;
}

void __77__UISceneAsynchronousRenderingOptions_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) renderTimes];
  v3 = [*(a1 + 32) activeMultilinePrefix];
  [v2 appendArraySection:v4 withName:@"renderTimes" multilinePrefix:v3 skipIfEmpty:0];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UISceneAsynchronousRenderingOptions *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end