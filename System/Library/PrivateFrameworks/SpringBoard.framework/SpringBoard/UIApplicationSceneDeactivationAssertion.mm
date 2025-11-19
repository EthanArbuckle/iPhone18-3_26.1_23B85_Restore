@interface UIApplicationSceneDeactivationAssertion
@end

@implementation UIApplicationSceneDeactivationAssertion

uint64_t __116__UIApplicationSceneDeactivationAssertion_SBWindowScene__sb_acquireWithPredicate_transitionContext_displayIdentity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7 && !(*(v7 + 16))(v7, v5, v6))
  {
    v9 = 0;
  }

  else if (*(a1 + 32))
  {
    v8 = [v6 sb_displayIdentityForSceneManagers];
    v9 = [v8 isEqual:*(a1 + 32)];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

@end