@interface UIScenePresenterOwner
@end

@implementation UIScenePresenterOwner

void __74___UIScenePresenterOwner__updateHostingStateForScenePresentersIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 identifier];
  v4 = [*(*(a1 + 32) + 48) identifier];
  v5 = [v3 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    [v6 updateHostingStateIfNecessary];
  }
}

uint64_t __56___UIScenePresenterOwner_enumeratePresentersUsingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

void __64___UIScenePresenterOwner_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"prioritizedPresenter"];
  v3 = *(a1 + 32);
  v4 = [*(*(a1 + 40) + 32) array];
  [v3 appendArraySection:v4 withName:@"activePresenters" skipIfEmpty:0];

  v5 = *(a1 + 32);
  v6 = [*(*(a1 + 40) + 40) allObjects];
  [v5 appendArraySection:v6 withName:@"inactivePresenters" skipIfEmpty:0];
}

@end