@interface UIPhysicalButtonInteraction
@end

@implementation UIPhysicalButtonInteraction

void __70___UIPhysicalButtonInteraction_descriptionBuilderWithMultilinePrefix___block_invoke(int8x16_t *a1)
{
  v2 = a1[2].i64[0];
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70___UIPhysicalButtonInteraction_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F5AF0;
  v5 = a1[2];
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  v8 = a1[3].i8[0];
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

void __70___UIPhysicalButtonInteraction_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  if ([*(*(a1 + 32) + 72) length])
  {
    [*(a1 + 40) appendString:*(*(a1 + 32) + 72) withName:@"name"];
  }

  v2 = [*(a1 + 40) appendBool:*(*(a1 + 32) + 36) withName:@"enabled"];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 80);
  if (*(a1 + 48) == 1)
  {
    v5 = [v3 appendObject:v4 withName:@"registrationToken"];
  }

  else
  {
    v6 = [v3 appendBool:v4 != 0 withName:@"hasRegistered"];
  }

  v7 = [*(a1 + 40) appendBool:*(*(a1 + 32) + 32) & 1 withName:@"registrationPendingDidMoveToWindow"];
  v8 = [*(a1 + 40) appendBool:(*(*(a1 + 32) + 32) >> 1) & 1 withName:@"registrationPendingWindowMoveToScene"];
  v9 = [*(a1 + 40) appendBool:(*(*(a1 + 32) + 32) >> 2) & 1 withName:@"wantsRelaxedVisibilityRequirement" ifEqualTo:1];
  v10 = [*(a1 + 40) appendBool:(*(*(a1 + 32) + 32) >> 3) & 1 withName:@"wantsSystemShellExclusivePriority" ifEqualTo:1];
  if (*(a1 + 48) == 1)
  {
    v11 = [*(a1 + 40) appendBool:(*(*(a1 + 32) + 32) >> 4) & 1 withName:@"hasExclusiveBehaviorConfiguration"];
    v12 = [*(a1 + 40) appendBool:(*(*(a1 + 32) + 32) >> 5) & 1 withName:@"isWithinSceneBounds"];
  }

  v13 = [*(a1 + 40) appendObject:*(*(a1 + 32) + 48) withName:@"configurations"];
  if (*(a1 + 48) == 1)
  {
    v14 = [*(*(a1 + 32) + 24) count];
    v15 = *(a1 + 40);
    if (v14)
    {
      v16 = [*(a1 + 40) activeMultilinePrefix];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __70___UIPhysicalButtonInteraction_descriptionBuilderWithMultilinePrefix___block_invoke_3;
      v23[3] = &unk_1E70F35B8;
      v17 = *(a1 + 40);
      v23[4] = *(a1 + 32);
      v24 = v17;
      [v15 appendBodySectionWithName:@"activeActions" multilinePrefix:v16 block:v23];
    }

    else
    {
      v22 = [*(a1 + 40) appendObject:0 withName:@"activeActions"];
    }
  }

  else
  {
    v18 = *(a1 + 40);
    v19 = _UIPhysicalButtonSuccinctConfigurationsDescriptionForSet(*(*(a1 + 32) + 48));
    v20 = [v18 appendObject:v19 withName:@"configurations"];

    v21 = [*(a1 + 40) appendUnsignedInteger:objc_msgSend(*(*(a1 + 32) + 24) withName:{"count"), @"activeActions"}];
  }
}

void __70___UIPhysicalButtonInteraction_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) appendObject:*(*(&v8 + 1) + 8 * v6++) withName:{0, v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

@end