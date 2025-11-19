@interface UIEvaluatedObjectCache
@end

@implementation UIEvaluatedObjectCache

void __65___UIEvaluatedObjectCache_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___UIEvaluatedObjectCache_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

void __65___UIEvaluatedObjectCache_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(*(a1 + 40) + 24) withName:{"count"), @"sortedObjects.count"}];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"topEvaluatedObject"];
  if (*(*(a1 + 40) + 24))
  {
    v4 = *(a1 + 32);
    v5 = [v4 activeMultilinePrefix];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65___UIEvaluatedObjectCache_descriptionBuilderWithMultilinePrefix___block_invoke_3;
    v8[3] = &unk_1E70F35B8;
    v7 = *(a1 + 32);
    v6 = v7.i64[0];
    v9 = vextq_s8(v7, v7, 8uLL);
    [v4 appendBodySectionWithName:@"sortedObjects" multilinePrefix:v5 block:v8];
  }
}

void __65___UIEvaluatedObjectCache_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
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

void __44___UIEvaluatedObjectCache_evaluateTopObject__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ((*(*(*(a1 + 32) + 16) + 16))())
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end