@interface UISceneLayerPresentationContext
- (BOOL)_isEqualToDefaultContext;
- (BOOL)isEqual:(id)a3;
- (UISceneLayerPresentationContext)init;
- (id)_initWithSceneLayerPresentationContext:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation UISceneLayerPresentationContext

- (UISceneLayerPresentationContext)init
{
  v7.receiver = self;
  v7.super_class = UISceneLayerPresentationContext;
  v2 = [(UISceneLayerPresentationContext *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_hidden = 0;
    transformer = v2->_transformer;
    v2->_transformer = 0;
    v2->_alpha = 1.0;

    v3->_clippingDisabled = 0;
    minificationFilterName = v3->_minificationFilterName;
    v3->_renderingMode = 0;
    v3->_minificationFilterName = 0;
  }

  return v3;
}

- (id)_initWithSceneLayerPresentationContext:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UISceneLayerPresentationContext;
  v5 = [(UISceneLayerPresentationContext *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_alpha = *(v4 + 2);
    v5->_hidden = *(v4 + 24);
    objc_storeStrong(&v5->_transformer, *(v4 + 1));
    v6->_clippingDisabled = *(v4 + 25);
    v6->_renderingMode = *(v4 + 4);
    v7 = [*(v4 + 5) copy];
    minificationFilterName = v6->_minificationFilterName;
    v6->_minificationFilterName = v7;
  }

  return v6;
}

- (BOOL)_isEqualToDefaultContext
{
  if (qword_1ED49E0B8 != -1)
  {
    dispatch_once(&qword_1ED49E0B8, &__block_literal_global_261);
  }

  v3 = _MergedGlobals_1111;

  return [v3 isEqual:self];
}

void __59__UISceneLayerPresentationContext__isEqualToDefaultContext__block_invoke()
{
  v0 = objc_alloc_init(UISceneLayerPresentationContext);
  v1 = _MergedGlobals_1111;
  _MergedGlobals_1111 = v0;
}

- (id)succinctDescription
{
  v2 = [(UISceneLayerPresentationContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_alpha];
  v5 = [v3 appendObject:v4 withName:@"alpha"];

  v6 = [v3 appendObject:self->_transformer withName:@"transformer"];
  v7 = [v3 appendBool:self->_hidden withName:@"hidden"];
  v8 = [v3 appendBool:self->_clippingDisabled withName:@"clippingDisabled"];
  v9 = NSStringFromUISceneRenderingMode([(UISceneLayerPresentationContext *)self renderingMode]);
  v10 = [v3 appendObject:v9 withName:@"renderMode"];

  v11 = [v3 appendObject:self->_minificationFilterName withName:@"minificationFilterName" skipIfNil:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UISceneLayerPresentationContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (unint64_t)hash
{
  alpha = self->_alpha;
  v4 = self->_hidden + self->_clippingDisabled;
  v5 = v4 + [(UITransformer *)self->_transformer hash]+ alpha;
  v6 = [(UISceneLayerPresentationContext *)self renderingMode];
  v7 = v5 - v6 + 8 * v6;
  v8 = [(UISceneLayerPresentationContext *)self _minificationFilterName];
  v9 = [v8 hash];

  return v7 + v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  transformer = self->_transformer;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __43__UISceneLayerPresentationContext_isEqual___block_invoke;
  v38[3] = &unk_1E70F66F0;
  v7 = v4;
  v39 = v7;
  v8 = [v5 appendObject:transformer counterpart:v38];
  hidden = self->_hidden;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __43__UISceneLayerPresentationContext_isEqual___block_invoke_2;
  v36[3] = &unk_1E70F3CB0;
  v10 = v7;
  v37 = v10;
  v11 = [v5 appendBool:hidden counterpart:v36];
  clippingDisabled = self->_clippingDisabled;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __43__UISceneLayerPresentationContext_isEqual___block_invoke_3;
  v34[3] = &unk_1E70F3CB0;
  v13 = v10;
  v35 = v13;
  v14 = [v5 appendBool:clippingDisabled counterpart:v34];
  alpha = self->_alpha;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __43__UISceneLayerPresentationContext_isEqual___block_invoke_4;
  v32[3] = &unk_1E70F66A0;
  v16 = v13;
  v33 = v16;
  v17 = [v5 appendCGFloat:v32 counterpart:alpha];
  v18 = [(UISceneLayerPresentationContext *)self renderingMode];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __43__UISceneLayerPresentationContext_isEqual___block_invoke_5;
  v30[3] = &unk_1E7109EE0;
  v19 = v16;
  v31 = v19;
  v20 = [v5 appendUnsignedInteger:v18 counterpart:v30];
  v21 = [(UISceneLayerPresentationContext *)self _minificationFilterName];
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __43__UISceneLayerPresentationContext_isEqual___block_invoke_6;
  v28 = &unk_1E70F66F0;
  v29 = v19;
  v22 = v19;
  v23 = [v5 appendObject:v21 counterpart:&v25];

  LOBYTE(v21) = [v5 isEqual];
  return v21;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [UIMutableSceneLayerPresentationContext alloc];

  return [(UISceneLayerPresentationContext *)v4 _initWithSceneLayerPresentationContext:self];
}

@end