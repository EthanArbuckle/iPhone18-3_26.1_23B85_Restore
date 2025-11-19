@interface UIApplicationSceneDeactivationAssertion(SBWindowScene)
- (void)sb_acquireWithPredicate:()SBWindowScene transitionContext:displayIdentity:;
@end

@implementation UIApplicationSceneDeactivationAssertion(SBWindowScene)

- (void)sb_acquireWithPredicate:()SBWindowScene transitionContext:displayIdentity:
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __116__UIApplicationSceneDeactivationAssertion_SBWindowScene__sb_acquireWithPredicate_transitionContext_displayIdentity___block_invoke;
  v12[3] = &unk_2783BDF50;
  v13 = v9;
  v14 = v8;
  v10 = v9;
  v11 = v8;
  [a1 acquireWithPredicate:v12 transitionContext:a4];
}

@end