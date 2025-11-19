@interface UIActionBridge
@end

@implementation UIActionBridge

void __73___UIActionBridge_actionMenuForMenu_firstTarget_includeHidden_validator___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 56) actionMenuForMenu:a2 firstTarget:*(a1 + 32) includeHidden:*(a1 + 64) validator:*(a1 + 40)];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 48) addObject:v3];
    v3 = v4;
  }
}

void __73___UIActionBridge_actionMenuForMenu_firstTarget_includeHidden_validator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v27 = 0;
  v4 = [v3 _resolvedTargetFromFirstTarget:*(a1 + 32) sender:0 shouldUseFallbackActionOut:&v27];
  v5 = [*(a1 + 40) validatedCommandForTarget:v4 command:v3 sender:0];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;
  v9 = [v8 attributes];
  v10 = [v8 attributes];
  if ((*(a1 + 56) & 1) != 0 || (v10 & 4) == 0) && (v4 || (*(a1 + 57)))
  {
    if (v4 && ((v9 & 1) == 0 ? (v11 = (v10 & 4) == 0) : (v11 = 0), v11))
    {
      objc_initWeak(&location, v4);
      aBlock = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __73___UIActionBridge_actionMenuForMenu_firstTarget_includeHidden_validator___block_invoke_4;
      v22 = &unk_1E71045E8;
      objc_copyWeak(&v24, &location);
      v25 = v27;
      v23 = v3;
      v12 = _Block_copy(&aBlock);

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
      [v8 _identifier];
    }

    else
    {
      v12 = &__block_literal_global_156;
      [v8 _identifier];
    }
    v13 = ;
    v14 = [v13 description];

    v15 = [v8 title];
    v16 = [v8 image];
    v17 = [UIAction actionWithTitle:v15 image:v16 identifier:v14 handler:v12];

    _UIMenuLeafCopyValidatablePropertiesFromValidatedLeaf(v17, v6);
    [v17 setAttributes:{objc_msgSend(v17, "attributes") | v18}];
    [*(a1 + 48) addObject:v17];
  }
}

void __73___UIActionBridge_actionMenuForMenu_firstTarget_includeHidden_validator___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = WeakRetained;
  if (*(a1 + 48) == 1)
  {
    [v3 _performFallbackActionWithSender:0 target:WeakRetained];
  }

  else
  {
    [v3 performWithSender:0 target:WeakRetained];
  }
}

void __73___UIActionBridge_actionMenuForMenu_firstTarget_includeHidden_validator___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 attributes];
  if ((*(a1 + 40) & 1) != 0 || (v3 & 4) == 0)
  {
    [*(a1 + 32) addObject:v4];
  }
}

void __65___UIActionBridge_validatedCommandMenuForMenu_context_validator___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 56) validatedCommandMenuForMenu:a2 context:*(a1 + 32) validator:*(a1 + 40)];
  if (v3)
  {
    v6 = v3;
    v4 = [v3 children];
    v5 = [v4 count];

    v3 = v6;
    if (v5)
    {
      [*(a1 + 48) addObject:v6];
      v3 = v6;
    }
  }
}

void __65___UIActionBridge_validatedCommandMenuForMenu_context_validator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [(_UIActionBridge *)*(a1 + 56) _validatedCommandMenuElementForLeaf:a2 context:*(a1 + 32) validator:*(a1 + 40) includeCommandsWithoutTargets:*(a1 + 64)];
  if (v3)
  {
    v4 = v3;
    if ([v3 _isLeaf] && *(a1 + 65) == 1)
    {
      v5 = v4;
      v6 = [v5 _leafAlternates];
      v7 = [v6 count];

      v4 = v5;
      if (v7)
      {
        v8 = [v5 _leafAlternates];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __65___UIActionBridge_validatedCommandMenuForMenu_context_validator___block_invoke_3;
        v12[3] = &unk_1E7104688;
        v9 = *(a1 + 56);
        v13 = v5;
        v16 = v9;
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        v17 = *(a1 + 64);
        v10 = v5;
        v11 = [v8 bs_compactMap:v12];

        v4 = [v10 copy];
        [v4 _setLeafAlternates:v11];
      }
    }

    [*(a1 + 48) addObject:v4];
  }
}

id __65___UIActionBridge_validatedCommandMenuForMenu_context_validator___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 alternateLeafWithBaseLeaf:*(a1 + 32)];
  v5 = [(_UIActionBridge *)*(a1 + 56) _validatedCommandMenuElementForLeaf:v4 context:*(a1 + 40) validator:*(a1 + 48) includeCommandsWithoutTargets:*(a1 + 64)];
  if ([v5 _isLeaf])
  {
    v6 = [v3 _alternateWithMenuLeaf:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end