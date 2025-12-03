@interface UISceneWindowLayerPresentationContext
- (BOOL)isEqual:(id)equal;
- (UISceneWindowLayerPresentationContext)init;
- (id)_initWithSceneWindowLayerPresentationContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation UISceneWindowLayerPresentationContext

- (UISceneWindowLayerPresentationContext)init
{
  v5.receiver = self;
  v5.super_class = UISceneWindowLayerPresentationContext;
  v2 = [(UISceneWindowLayerPresentationContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_ignoreAnimations = 0;
    v2->_postCommitDuration = 1.0;
    objc_storeStrong(&v2->_flattenMode, *MEMORY[0x1E697A080]);
  }

  return v3;
}

- (id)_initWithSceneWindowLayerPresentationContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = UISceneWindowLayerPresentationContext;
  v5 = [(UISceneWindowLayerPresentationContext *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_ignoreAnimations = *(contextCopy + 32);
    v5->_fullyOccluded = *(contextCopy + 33);
    v5->_postCommitDuration = *(contextCopy + 5);
    v7 = [*(contextCopy + 3) copy];
    flattenMode = v6->_flattenMode;
    v6->_flattenMode = v7;
  }

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UISceneWindowLayerPresentationContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendBool:self->_ignoreAnimations withName:@"ignoreAnimations"];
  v5 = [v3 appendBool:self->_fullyOccluded withName:@"fullyOccluded"];
  v6 = [v3 appendDouble:@"postCommitDuration" withName:3 decimalPrecision:self->_postCommitDuration];
  [v3 appendString:self->_flattenMode withName:@"flattenMode"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UISceneWindowLayerPresentationContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendBool:{-[UISceneWindowLayerPresentationContext ignoreAnimations](self, "ignoreAnimations")}];
  v5 = [builder appendBool:{-[UISceneWindowLayerPresentationContext fullyOccluded](self, "fullyOccluded")}];
  [(UISceneWindowLayerPresentationContext *)self postCommitDuration];
  v6 = [builder appendDouble:?];
  flattenMode = [(UISceneWindowLayerPresentationContext *)self flattenMode];
  v8 = [builder appendString:flattenMode];

  v9 = [builder hash];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  ignoreAnimations = self->_ignoreAnimations;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __49__UISceneWindowLayerPresentationContext_isEqual___block_invoke;
  v28[3] = &unk_1E70F3CB0;
  v7 = equalCopy;
  v29 = v7;
  v8 = [v5 appendBool:ignoreAnimations counterpart:v28];
  fullyOccluded = self->_fullyOccluded;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __49__UISceneWindowLayerPresentationContext_isEqual___block_invoke_2;
  v26[3] = &unk_1E70F3CB0;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendBool:fullyOccluded counterpart:v26];
  postCommitDuration = self->_postCommitDuration;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __49__UISceneWindowLayerPresentationContext_isEqual___block_invoke_3;
  v24[3] = &unk_1E70F66A0;
  v13 = v10;
  v25 = v13;
  v14 = [v5 appendDouble:v24 counterpart:postCommitDuration];
  flattenMode = self->_flattenMode;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __49__UISceneWindowLayerPresentationContext_isEqual___block_invoke_4;
  v22 = &unk_1E70F7FE0;
  v23 = v13;
  v16 = v13;
  v17 = [v5 appendString:flattenMode counterpart:&v19];
  LOBYTE(flattenMode) = [v5 isEqual];

  return flattenMode;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UISceneWindowLayerPresentationContext alloc];

  return [(UISceneWindowLayerPresentationContext *)v4 _initWithSceneWindowLayerPresentationContext:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [UIMutableSceneWindowLayerPresentationContext alloc];

  return [(UISceneWindowLayerPresentationContext *)v4 _initWithSceneWindowLayerPresentationContext:self];
}

@end