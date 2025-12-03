@interface UISceneActivationRequestOptions
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation UISceneActivationRequestOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  requestingScene = [(UISceneActivationRequestOptions *)self requestingScene];
  [v4 setRequestingScene:requestingScene];

  [v4 setPreserveLayout:{-[UISceneActivationRequestOptions preserveLayout](self, "preserveLayout")}];
  [v4 _setRequestFullscreen:{-[UISceneActivationRequestOptions _requestFullscreen](self, "_requestFullscreen")}];
  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UISceneActivationRequestOptions *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(UISceneActivationRequestOptions *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__UISceneActivationRequestOptions_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:&stru_1EFB14550 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

void __73__UISceneActivationRequestOptions_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) requestingScene];
  v2 = [v1 appendObject:v3 withName:@"requestingScene" skipIfNil:1];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UISceneActivationRequestOptions *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UISceneActivationRequestOptions *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end