@interface UIHomeAffordanceSceneNotifierProxy
@end

@implementation UIHomeAffordanceSceneNotifierProxy

id __53___UIHomeAffordanceSceneNotifierProxy_initWithScene___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained debugDescription];

  return v2;
}

uint64_t __65___UIHomeAffordanceSceneNotifierProxy_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasSuccinctStyle];
  v3 = *(a1 + 32);
  if ((v2 & 1) == 0)
  {
    result = [*(a1 + 32) hasDebugStyle];
    if (result)
    {
      return result;
    }

    v3 = *(a1 + 32);
  }

  return [v3 appendUnsignedInteger:objc_msgSend(*(*(a1 + 40) + 32) withName:{"count"), @"observers.count"}];
}

void __65___UIHomeAffordanceSceneNotifierProxy_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendRect:@"lastReceivedHomeAffordanceSceneReferenceFrame" withName:{*(*(a1 + 40) + 56), *(*(a1 + 40) + 64), *(*(a1 + 40) + 72), *(*(a1 + 40) + 80)}];
  v3 = [*(*(a1 + 40) + 32) count];
  v4 = *(a1 + 32);
  if (v3)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65___UIHomeAffordanceSceneNotifierProxy_appendDescriptionToStream___block_invoke_3;
    v11[3] = &unk_1E70F35B8;
    v11[4] = *(a1 + 40);
    v11[5] = v4;
    [v4 appendBodySectionWithName:@"observers" block:v11];
  }

  else
  {
    v5 = [v4 appendObject:0 withName:@"observers"];
  }

  v6 = *(*(a1 + 40) + 48);
  v7 = *(a1 + 32);
  v8 = [v6 succinctDescription];
  v9 = [v7 appendObject:v8 withName:@"targetNotifier" skipIfNil:1];

  v10 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"targetNotifierRegistrationToken" skipIfNil:1];
}

void __65___UIHomeAffordanceSceneNotifierProxy_appendDescriptionToStream___block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(*(a1 + 32) + 32);
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v7 = *(a1 + 40);
        if (v6 && (v8 = objc_loadWeakRetained((v6 + 8))) != 0)
        {
          v9 = v8;
          v10 = MEMORY[0x1E696AEC0];
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          v13 = [v10 stringWithFormat:@"<%@: %p>", v12, v9];
        }

        else
        {
          v13 = @"(nil)";
        }

        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __65___UIHomeAffordanceSceneNotifierProxy_appendDescriptionToStream___block_invoke_4;
        v15[3] = &unk_1E70F35B8;
        v15[4] = *(a1 + 40);
        v15[5] = v6;
        [v7 appendBodySectionWithName:v13 block:v15];

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }
}

@end