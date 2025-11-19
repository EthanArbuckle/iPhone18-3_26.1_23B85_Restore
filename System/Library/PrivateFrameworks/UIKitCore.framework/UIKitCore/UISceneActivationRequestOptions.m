@interface UISceneActivationRequestOptions
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation UISceneActivationRequestOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(UISceneActivationRequestOptions *)self requestingScene];
  [v4 setRequestingScene:v5];

  [v4 setPreserveLayout:{-[UISceneActivationRequestOptions preserveLayout](self, "preserveLayout")}];
  [v4 _setRequestFullscreen:{-[UISceneActivationRequestOptions _requestFullscreen](self, "_requestFullscreen")}];
  return v4;
}

- (id)succinctDescription
{
  v2 = [(UISceneActivationRequestOptions *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(UISceneActivationRequestOptions *)self succinctDescriptionBuilder];
  [v5 setActiveMultilinePrefix:v4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__UISceneActivationRequestOptions_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:&stru_1EFB14550 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __73__UISceneActivationRequestOptions_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) requestingScene];
  v2 = [v1 appendObject:v3 withName:@"requestingScene" skipIfNil:1];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UISceneActivationRequestOptions *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UISceneActivationRequestOptions *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end