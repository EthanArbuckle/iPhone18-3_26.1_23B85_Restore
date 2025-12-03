@interface SBSAppSwitcherSystemService
- (void)requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier:(id)identifier completion:(id)completion;
- (void)requestResetLayoutAttributesWithCompletion:(id)completion;
- (void)requestUpdateWindowingMode:(int)mode withCompletion:(id)completion;
@end

@implementation SBSAppSwitcherSystemService

- (void)requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  client = [(SBSAbstractSystemService *)self client];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __111__SBSAppSwitcherSystemService_requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier_completion___block_invoke;
  v11[3] = &unk_1E735FC30;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  [client requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier:v10 reacquiringExistingAssertion:0 completion:v11];
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

- (void)requestResetLayoutAttributesWithCompletion:(id)completion
{
  completionCopy = completion;
  client = [(SBSAbstractSystemService *)self client];
  [client requestResetLayoutAttributesWithCompletion:completionCopy];
}

- (void)requestUpdateWindowingMode:(int)mode withCompletion:(id)completion
{
  v4 = *&mode;
  completionCopy = completion;
  client = [(SBSAbstractSystemService *)self client];
  [client requestUpdateSwitcherWindowingMode:v4 withCompletion:completionCopy];
}

@end