@interface UIActiveViewServiceSessionTracker
@end

@implementation UIActiveViewServiceSessionTracker

void __51___UIActiveViewServiceSessionTracker_sharedTracker__block_invoke()
{
  v0 = [_UIActiveViewServiceSessionTracker alloc];
  if (v0)
  {
    v8.receiver = v0;
    v8.super_class = _UIActiveViewServiceSessionTracker;
    v1 = objc_msgSendSuper2(&v8, sel_init);
    if (v1)
    {
      objc_initWeak(&location, v1);
      v2 = MEMORY[0x1E69E96A0];
      objc_copyWeak(&v6, &location);
      v3 = BSLogAddStateCaptureBlockWithTitle();
      v4 = v1[2];
      v1[2] = v3;

      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v1 = 0;
  }

  v5 = qword_1ED49C788;
  qword_1ED49C788 = v1;
}

id __43___UIActiveViewServiceSessionTracker__init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained descriptionBuilderWithMultilinePrefix:&stru_1EFB14550];
  v3 = [v2 build];

  return v3;
}

uint64_t __65___UIActiveViewServiceSessionTracker__createEvaluatedObjectCache__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a2)
    {
      v4 = *(a2 + 40);
      v5 = [*(a2 + 8) count];
      v6 = *(a2 + 40) != 2;
      v7 = *(a2 + 20);
      if (v4)
      {
        v8 = v5 == 0;
      }

      else
      {
        v8 = 1;
      }

      v9 = !v8;
    }

    else
    {
      v9 = 0;
      v7 = 0;
      v6 = 1;
    }

    v11 = v7 != 3 && v7 != 0;
    v12 = v9 & (v6 | v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __78___UIActiveViewServiceSessionTracker__removeViewServiceSessionActivityRecord___block_invoke(uint64_t a1)
{
  [(_UIEvaluatedObjectCache *)*(a1 + 32) removeObject:?];
  v2 = *(a1 + 40);
  if (v2)
  {

    objc_storeWeak((v2 + 24), 0);
  }
}

void __117___UIActiveViewServiceSessionTracker_handleViewServiceActivity_inHostedWindow_fromProvider_forSessionActivityRecord___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      objc_storeWeak((v2 + 24), *(a1 + 48));
    }
  }

  v3 = [(_UIEvaluatedObjectCache *)*(a1 + 56) sortedObjects];
  [v3 containsObject:*(a1 + 40)];

  if (*(a1 + 80) == 1 && (*(a1 + 81) & 1) == 0)
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 40);

    [(_UIEvaluatedObjectCache *)v6 demoteObject:v7];
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 40);

    [(_UIEvaluatedObjectCache *)v4 promoteObject:v5];
  }
}

void __76___UIActiveViewServiceSessionTracker_descriptionBuilderWithMultilinePrefix___block_invoke(int8x16_t *a1)
{
  v2 = a1[2].i64[0];
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76___UIActiveViewServiceSessionTracker_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v5 = a1[2];
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  [v2 appendBodySectionWithName:@"sortedActivityRecordsByIdiom" multilinePrefix:v3 block:v6];
}

void __76___UIActiveViewServiceSessionTracker_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 8) objectForKey:v7];
        v9 = v8;
        if (v8 && [*(v8 + 24) count])
        {
          v10 = [v7 integerValue];
          v11 = *(a1 + 40);
          v12 = _NSStringFromUIUserInterfaceIdiom(v10);
          v13 = [*(a1 + 40) activeMultilinePrefix];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __76___UIActiveViewServiceSessionTracker_descriptionBuilderWithMultilinePrefix___block_invoke_3;
          v14[3] = &unk_1E70F35B8;
          v15 = v9;
          v16 = *(a1 + 40);
          [v11 appendBodySectionWithName:v12 multilinePrefix:v13 block:v14];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }
}

void __76___UIActiveViewServiceSessionTracker_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(_UIEvaluatedObjectCache *)*(a1 + 32) sortedObjects];
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