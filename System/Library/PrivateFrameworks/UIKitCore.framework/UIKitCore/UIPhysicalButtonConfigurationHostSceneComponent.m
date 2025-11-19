@interface UIPhysicalButtonConfigurationHostSceneComponent
@end

@implementation UIPhysicalButtonConfigurationHostSceneComponent

uint64_t __78___UIPhysicalButtonConfigurationHostSceneComponent_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasSuccinctStyle])
  {
    return [*(a1 + 32) appendBool:(*(*(a1 + 40) + 24) >> 1) & 1 withName:@"sceneIsEligibleForProxyInteraction"];
  }

  result = [*(a1 + 32) hasDebugStyle];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) appendBool:(*(*(a1 + 40) + 24) >> 1) & 1 withName:@"sceneIsEligibleForProxyInteraction"];
  }

  return result;
}

void __78___UIPhysicalButtonConfigurationHostSceneComponent_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 24) & 1 withName:@"needsSceneEligibilityEvaluation"];
  v3 = [*(a1 + 32) appendBool:(*(*(a1 + 40) + 24) >> 1) & 1 withName:@"sceneIsEligibleForProxyInteraction"];
  v4 = *(a1 + 40);
  v5 = *(v4 + 32);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = MEMORY[0x1E696AEC0];
    v8 = v5;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v7 stringWithFormat:@"<%@: %p>", v10, v8];

    v12 = [v6 appendObject:v11 withName:@"clientPhysicalButtonConfigurations"];
    v4 = *(a1 + 40);
  }

  v13 = *(v4 + 40);
  if (v13)
  {
    v14 = *(a1 + 32);
    v15 = MEMORY[0x1E696AEC0];
    v16 = v13;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v20 = [v15 stringWithFormat:@"<%@: %p>", v18, v16];

    v19 = [v14 appendObject:v20 withName:@"proxyPhysicalButtonInteraction"];
  }
}

@end