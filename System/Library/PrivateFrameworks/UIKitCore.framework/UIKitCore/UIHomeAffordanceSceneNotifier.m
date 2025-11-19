@interface UIHomeAffordanceSceneNotifier
@end

@implementation UIHomeAffordanceSceneNotifier

id __48___UIHomeAffordanceSceneNotifier_initWithScene___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained debugDescription];

  return v2;
}

uint64_t __94___UIHomeAffordanceSceneNotifier__viewServiceWindow_didAssociateWithLegacyViewServiceSession___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a2 + 16));
    if (WeakRetained != *(a1 + 32))
    {
LABEL_3:
      v5 = 0;
      goto LABEL_11;
    }

    v6 = *(a2 + 24);
  }

  else
  {
    WeakRetained = 0;
    if (*(a1 + 32))
    {
      goto LABEL_3;
    }

    v6 = 0;
  }

  v7 = v6;
  v8 = *(a1 + 40);
  v9 = v7;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
    if (v9 && v10)
    {
      v5 = [v9 isEqual:v10];
    }
  }

LABEL_11:
  return v5;
}

uint64_t __97___UIHomeAffordanceSceneNotifier__viewServiceWindow_didDisassociateFromLegacyViewServiceSession___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a2 + 16));
    if (WeakRetained != *(a1 + 32))
    {
LABEL_3:
      v5 = 0;
      goto LABEL_11;
    }

    v6 = *(a2 + 24);
  }

  else
  {
    WeakRetained = 0;
    if (*(a1 + 32))
    {
      goto LABEL_3;
    }

    v6 = 0;
  }

  v7 = v6;
  v8 = *(a1 + 40);
  v9 = v7;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
    if (v9 && v10)
    {
      v5 = [v9 isEqual:v10];
    }
  }

LABEL_11:
  return v5;
}

uint64_t __94___UIHomeAffordanceSceneNotifier__homeAffordanceLegacyViewServiceUpdateSource_frameDidChange___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (v6 && v7)
    {
      v9 = [v6 isEqual:v7];
    }
  }

  return v9;
}

uint64_t __106___UIHomeAffordanceSceneNotifier__homeAffordanceLegacyViewServiceUpdateSource_doubleTapGestureDidSucceed___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (v6 && v7)
    {
      v9 = [v6 isEqual:v7];
    }
  }

  return v9;
}

uint64_t __60___UIHomeAffordanceSceneNotifier_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasSuccinctStyle];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = a1 + 40;
  }

  else
  {
    result = [*(a1 + 32) hasDebugStyle];
    if (result)
    {
      return result;
    }

    v6 = *(a1 + 40);
    v4 = a1 + 40;
    v7 = [*(v4 - 8) appendBool:(*(v6 + 8) >> 1) & 1 withName:@"expectsLegacyViewServiceObservers"];
    v3 = *(v4 - 8);
  }

  return [v3 appendUnsignedInteger:objc_msgSend(*(*v4 + 40) withName:{"count"), @"observers.count"}];
}

id __60___UIHomeAffordanceSceneNotifier_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:(*(*(a1 + 40) + 8) >> 1) & 1 withName:@"expectsLegacyViewServiceObservers"];
  v3 = *(a1 + 40);
  if ((*(v3 + 8) & 2) == 0)
  {
    v4 = [*(a1 + 32) appendRect:@"homeAffordanceSceneReferenceFrame" withName:{*(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96)}];
    v3 = *(a1 + 40);
  }

  v5 = [*(v3 + 40) count];
  v6 = *(a1 + 32);
  if (!v5)
  {
    return [v6 appendObject:0 withName:@"observers"];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60___UIHomeAffordanceSceneNotifier_appendDescriptionToStream___block_invoke_3;
  v8[3] = &unk_1E70F35B8;
  v8[4] = *(a1 + 40);
  v8[5] = v6;
  return [v6 appendBodySectionWithName:@"observers" block:v8];
}

void __60___UIHomeAffordanceSceneNotifier_appendDescriptionToStream___block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(*(a1 + 32) + 40);
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
        v15[2] = __60___UIHomeAffordanceSceneNotifier_appendDescriptionToStream___block_invoke_4;
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