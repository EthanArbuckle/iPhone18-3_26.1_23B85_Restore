@interface UIWindowSceneOrderedPlacement
@end

@implementation UIWindowSceneOrderedPlacement

void __72___UIWindowSceneOrderedPlacement_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) config];
  v4 = [v3 relativeScenePersistenceIdentifier];
  [v2 appendString:v4 withName:@"relativeScenePersistenceIdentifier"];

  v5 = *(a1 + 32);
  v7 = [*(a1 + 40) config];
  v6 = [v5 appendInt:objc_msgSend(v7 withName:{"order"), @"order"}];
}

@end