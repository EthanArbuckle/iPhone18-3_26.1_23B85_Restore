@interface UIPhysicalButtonConfigurationResolutionContext
@end

@implementation UIPhysicalButtonConfigurationResolutionContext

void __89___UIPhysicalButtonConfigurationResolutionContext_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89___UIPhysicalButtonConfigurationResolutionContext_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

void __89___UIPhysicalButtonConfigurationResolutionContext_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _UIPhysicalButtonSuccinctConfigurationsDescriptionForSet(*(*(a1 + 40) + 8));
  v4 = [v2 appendObject:v3 withName:@"configurations"];

  v5 = [*(*(a1 + 40) + 16) count];
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [*(a1 + 32) activeMultilinePrefix];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __89___UIPhysicalButtonConfigurationResolutionContext_descriptionBuilderWithMultilinePrefix___block_invoke_3;
    v11[3] = &unk_1E70F35B8;
    v10 = *(a1 + 32);
    v8 = v10.i64[0];
    v12 = vextq_s8(v10, v10, 8uLL);
    [v6 appendBodySectionWithName:@"configurationToInteractionMap" multilinePrefix:v7 block:v11];
  }

  else
  {
    v9 = [*(a1 + 32) appendObject:0 withName:@"configurationToInteractionMap"];
  }
}

void __89___UIPhysicalButtonConfigurationResolutionContext_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(*(a1 + 32) + 16);
  v18 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v18)
  {
    v17 = *v20;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v19 + 1) + 8 * i);
        v4 = [*(*(a1 + 32) + 16) objectForKey:v3];
        v5 = *(a1 + 40);
        if (v4)
        {
          v6 = MEMORY[0x1E696AEC0];
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          v9 = [v6 stringWithFormat:@"<%@: %p>", v8, v4];

          if (v3)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v9 = @"(nil)";
          if (v3)
          {
LABEL_8:
            v10 = MEMORY[0x1E696AEC0];
            v11 = v3;
            v12 = objc_opt_class();
            v13 = NSStringFromClass(v12);
            v14 = [v10 stringWithFormat:@"<%@: %p>", v13, v11];

            goto LABEL_11;
          }
        }

        v14 = @"(nil)";
LABEL_11:
        v15 = [v5 appendObject:v9 withName:v14];
      }

      v18 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v18);
  }
}

@end