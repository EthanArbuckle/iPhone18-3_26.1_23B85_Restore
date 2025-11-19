@interface SBSAppSwitcherSystemService
- (void)requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier:(id)a3 completion:(id)a4;
- (void)requestResetLayoutAttributesWithCompletion:(id)a3;
- (void)requestUpdateWindowingMode:(int)a3 withCompletion:(id)a4;
@end

@implementation SBSAppSwitcherSystemService

- (void)requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBSAbstractSystemService *)self client];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __111__SBSAppSwitcherSystemService_requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier_completion___block_invoke;
  v11[3] = &unk_1E735FC30;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier:v10 reacquiringExistingAssertion:0 completion:v11];
}

void __111__SBSAppSwitcherSystemService_requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5 && a3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __111__SBSAppSwitcherSystemService_requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier_completion___block_invoke_2;
    v6[3] = &unk_1E735FBB8;
    v7 = *(a1 + 32);
    [v5 addHandler:v6 forDeathOfServerPort:a3];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)requestResetLayoutAttributesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SBSAbstractSystemService *)self client];
  [v5 requestResetLayoutAttributesWithCompletion:v4];
}

- (void)requestUpdateWindowingMode:(int)a3 withCompletion:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [(SBSAbstractSystemService *)self client];
  [v7 requestUpdateSwitcherWindowingMode:v4 withCompletion:v6];
}

@end