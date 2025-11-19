@interface UIPencilEvent
@end

@implementation UIPencilEvent

void __38___UIPencilEvent_registerInteraction___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && v2)
  {
    v3 = *(a1 + 32);
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("PencilInteraction", &_unregisterInteraction_withRegistrationToken____s_category);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        if (v3)
        {
          v10 = MEMORY[0x1E696AEC0];
          v11 = v3;
          v12 = objc_opt_class();
          v13 = NSStringFromClass(v12);
          v14 = [v10 stringWithFormat:@"<%@: %p>", v13, v11];
        }

        else
        {
          v14 = @"(nil)";
        }

        v15 = MEMORY[0x1E696AEC0];
        v16 = WeakRetained;
        v17 = v14;
        v18 = v14;
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = [v15 stringWithFormat:@"<%@: %p>", v20, v16];

        *buf = 138412546;
        *&buf[4] = v17;
        *&buf[12] = 2112;
        *&buf[14] = v21;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unregistering interaction: %@; with event: %@", buf, 0x16u);
      }
    }

    [WeakRetained[22] removeObject:v3];
    v5 = [v3 view];
    v6 = [v5 _window];
    if (!v3 || (*(v3 + 8) < 0 ? (v7 = *(v3 + 32)) : (v7 = [v3 _dispatchBehavior], *(v3 + 32) = v7), v7 != 2))
    {
      v8 = [MEMORY[0x1E696B098] valueWithPointer:v6];
      [WeakRetained[23] removeObject:v8];
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __61___UIPencilEvent__cancelAndRemoveInteractionFromDescriptors___block_invoke;
    v24 = &unk_1E7102170;
    v25 = v3;
    [(_UIPencilEvent *)WeakRetained _cancelAndRemoveInteractionsInAllDeliveryRecordsFromFilter:buf];
  }
}

id __61___UIPencilEvent__cancelAndRemoveInteractionFromDescriptors___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 containsObject:*(a1 + 32)])
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 32)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __56___UIPencilEvent_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56___UIPencilEvent_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

void __56___UIPencilEvent_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 160);
  if (v3 > 4)
  {
    v4 = @"(unknown)";
  }

  else
  {
    v4 = off_1E71021E0[v3];
  }

  [v2 appendString:v4 withName:@"phase"];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = *(a1 + 40);
  if (has_internal_diagnostics)
  {
    v16 = [*(a1 + 32) appendFloat:@"normalizedForceVelocity" withName:1 decimalPrecision:*(v6 + 168)];
    v6 = *(a1 + 40);
  }

  v7 = [*(v6 + 176) count];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [*(a1 + 32) activeMultilinePrefix];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __56___UIPencilEvent_descriptionBuilderWithMultilinePrefix___block_invoke_3;
    v21[3] = &unk_1E70F35B8;
    v17 = *(a1 + 32);
    v10 = v17.i64[0];
    v22 = vextq_s8(v17, v17, 8uLL);
    [v8 appendBodySectionWithName:@"registeredInteractions" multilinePrefix:v9 block:v21];

    v11 = *(a1 + 32);
    v12 = [v11 activeMultilinePrefix];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __56___UIPencilEvent_descriptionBuilderWithMultilinePrefix___block_invoke_4;
    v19[3] = &unk_1E70F35B8;
    v18 = *(a1 + 32);
    v13 = v18.i64[0];
    v20 = vextq_s8(v18, v18, 8uLL);
    [v11 appendBodySectionWithName:@"fallbackInteractions" multilinePrefix:v12 block:v19];
  }

  else
  {
    v14 = [*(a1 + 32) appendObject:0 withName:@"registeredInteractions"];
    v15 = [*(a1 + 32) appendObject:0 withName:@"fallbackInteractions"];
  }
}

void __56___UIPencilEvent_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 176);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v10 + 1) + 8 * v6) succinctDescription];
        v9 = [v7 appendObject:v8 withName:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void __56___UIPencilEvent_descriptionBuilderWithMultilinePrefix___block_invoke_4(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 176);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        if (v7)
        {
          if (*(v7 + 8) < 0)
          {
            v8 = *(v7 + 32);
          }

          else
          {
            v8 = [*(*(&v12 + 1) + 8 * v6) _dispatchBehavior];
            *(v7 + 32) = v8;
          }

          if (v8 == 1)
          {
            v9 = *(a1 + 40);
            v10 = [v7 succinctDescription];
            v11 = [v9 appendObject:v10 withName:0];
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

id __50___UIPencilEvent__registerForStateCaptureIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained descriptionBuilderWithMultilinePrefix:&stru_1EFB14550];
  v3 = [v2 build];

  return v3;
}

@end