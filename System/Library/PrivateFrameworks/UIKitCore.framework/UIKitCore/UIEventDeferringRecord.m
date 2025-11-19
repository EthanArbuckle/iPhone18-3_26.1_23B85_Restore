@interface UIEventDeferringRecord
@end

@implementation UIEventDeferringRecord

void __65___UIEventDeferringRecord_descriptionBuilderWithMultilinePrefix___block_invoke(int8x16_t *a1)
{
  v2 = a1[2].i64[0];
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65___UIEventDeferringRecord_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v5 = a1[2];
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

id __65___UIEventDeferringRecord_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8))
  {
    v3 = *(a1 + 40);
    v4 = [v3 activeMultilinePrefix];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __65___UIEventDeferringRecord_descriptionBuilderWithMultilinePrefix___block_invoke_3;
    v15 = &unk_1E70F35B8;
    v5 = *(a1 + 40);
    v16 = *(a1 + 32);
    v17 = v5;
    [v3 appendBodySectionWithName:@"recreationReasons" multilinePrefix:v4 block:&v12];

    v2 = *(a1 + 32);
  }

  v6 = [*(a1 + 40) appendObject:*(v2 + 16) withName:{@"descriptor", v12, v13, v14, v15, v16}];
  v7 = [*(a1 + 40) appendObject:*(*(a1 + 32) + 24) withName:@"invalidationToken"];
  v8 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v10 = [v8 appendObject:WeakRetained withName:@"deferringToken"];

  return [*(a1 + 40) appendPointer:*(*(a1 + 32) + 40) withName:@"recordingManagerPointer"];
}

void __65___UIEventDeferringRecord_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(*(a1 + 32) + 8);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 40);
        v9 = _UIEventDeferringShorterRecreationReasonStringForReason(*(*(&v11 + 1) + 8 * v7));
        v10 = [v8 appendObject:v9 withName:{0, v11}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

@end