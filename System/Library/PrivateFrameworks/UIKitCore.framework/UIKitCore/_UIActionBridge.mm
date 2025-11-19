@interface _UIActionBridge
+ (id)_validatedCommandMenuElementForLeaf:(void *)a3 context:(void *)a4 validator:(uint64_t)a5 includeCommandsWithoutTargets:;
+ (id)actionMenuForMenu:(id)a3 firstTarget:(id)a4 includeHidden:(BOOL)a5;
+ (id)actionMenuForMenu:(id)a3 firstTarget:(id)a4 includeHidden:(BOOL)a5 validator:(id)a6;
+ (id)validatedCommandMenuForMenu:(id)a3 context:(id)a4;
+ (id)validatedCommandMenuForMenu:(id)a3 context:(id)a4 validator:(id)a5;
@end

@implementation _UIActionBridge

+ (id)actionMenuForMenu:(id)a3 firstTarget:(id)a4 includeHidden:(BOOL)a5 validator:(id)a6
{
  v50 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v29 = a4;
  v28 = a6;
  shouldAlwaysShowCommandsWithout = [(UIMenu *)v9 _shouldAlwaysShowCommandsWithoutTargets];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v23 = v9;
  obj = [v9 children];
  v11 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v11)
  {
    v12 = v11;
    v25 = *v46;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v46 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v45 + 1) + 8 * i);
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __73___UIActionBridge_actionMenuForMenu_firstTarget_includeHidden_validator___block_invoke;
        v39[3] = &unk_1E71045C0;
        v43 = a1;
        v15 = v29;
        v40 = v15;
        v44 = a5;
        v16 = v28;
        v41 = v16;
        v17 = v10;
        v18 = v10;
        v42 = v18;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __73___UIActionBridge_actionMenuForMenu_firstTarget_includeHidden_validator___block_invoke_2;
        v33[3] = &unk_1E7104610;
        v34 = v15;
        v35 = v16;
        v37 = a5;
        v38 = shouldAlwaysShowCommandsWithout;
        v19 = v18;
        v10 = v17;
        v36 = v19;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __73___UIActionBridge_actionMenuForMenu_firstTarget_includeHidden_validator___block_invoke_5;
        v30[3] = &unk_1E7104638;
        v32 = a5;
        v31 = v19;
        [v14 _acceptMenuVisit:v39 commandVisit:v33 actionVisit:v30 deferredElementVisit:0];
      }

      v12 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v12);
  }

  if ([v10 count])
  {
    v20 = v23;
    v21 = [v23 menuByReplacingChildren:v10];
  }

  else
  {
    v21 = 0;
    v20 = v23;
  }

  return v21;
}

+ (id)actionMenuForMenu:(id)a3 firstTarget:(id)a4 includeHidden:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(_UIMenuLeafValidator);
  v11 = [a1 actionMenuForMenu:v9 firstTarget:v8 includeHidden:v5 validator:v10];

  return v11;
}

+ (id)validatedCommandMenuForMenu:(id)a3 context:(id)a4 validator:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v24 = a4;
  v23 = a5;
  shouldAlwaysShowCommandsWithout = [(UIMenu *)v8 _shouldAlwaysShowCommandsWithoutTargets];
  shouldShowAlternatesInContext = [(UIMenu *)v8 _shouldShowAlternatesInContextMenus];
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [v8 children];
  v9 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v38;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __65___UIActionBridge_validatedCommandMenuForMenu_context_validator___block_invoke;
        v32[3] = &unk_1E7104660;
        v36 = a1;
        v14 = v24;
        v33 = v14;
        v15 = v23;
        v34 = v15;
        v16 = v22;
        v35 = v16;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __65___UIActionBridge_validatedCommandMenuForMenu_context_validator___block_invoke_2;
        v25[3] = &unk_1E71046B0;
        v29 = a1;
        v26 = v14;
        v27 = v15;
        v30 = shouldAlwaysShowCommandsWithout;
        v31 = shouldShowAlternatesInContext;
        v28 = v16;
        [v13 _acceptMenuVisit:v32 leafVisit:v25];
      }

      v10 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v10);
  }

  [v8 _resolveElementSizeWithContext:v24];
  v17 = [v8 menuByReplacingChildren:v22];

  return v17;
}

+ (id)_validatedCommandMenuElementForLeaf:(void *)a3 context:(void *)a4 validator:(uint64_t)a5 includeCommandsWithoutTargets:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v8;
    [v12 set_useSenderForResolvingTarget:{objc_msgSend(v9, "useSenderAsResponderSender")}];
    v30 = 0;
    v13 = [v9 firstResponderTarget];
    v14 = [v9 sender];
    v15 = [v12 _resolvedTargetFromFirstTarget:v13 sender:v14 shouldUseFallbackActionOut:&v30];

    if ([v9 useSenderAsResponderSender])
    {
      if (v15)
      {
        v16 = v12;
        v17 = 0;
        v18 = 1;
LABEL_20:
        if (v16 && ([v16 attributes] & 4) == 0)
        {
          v27 = v18 ^ 1;
          if (v16 != v12)
          {
            v27 = 1;
          }

          if (v27)
          {
            v21 = [v12 copyWithZone:0];
            _UIMenuLeafCopyValidatablePropertiesFromValidatedLeaf(v21, v16);
            [v21 setAttributes:{objc_msgSend(v21, "attributes") | v17}];
            v28 = [v12 _getStateObservers];
            [v21 _setStateObservers:v28];
          }

          else
          {
            v21 = v12;
          }

          goto LABEL_30;
        }

LABEL_27:
        v21 = 0;
        goto LABEL_30;
      }

      v16 = 0;
    }

    else
    {
      v23 = [v9 sender];
      v16 = [v10 validatedCommandForTarget:v15 command:v12 sender:v23];
    }

    v17 = 0;
    v18 = 1;
    if (!v15 && a5)
    {
      v26 = v12;

      v18 = 0;
      v17 = 1;
      v16 = v26;
    }

    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v25 = v8;
    v21 = v25;
    if ((isKindOfClass & 1) == 0 || ([v25 attributes] & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v19 = v8;
  if (([v9 supportsCustomViewMenuElements] & 1) != 0 || (objc_msgSend(v19, "menuElementRepresentation"), v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
  {
    v21 = v19;
  }

  else
  {
    v21 = [v19 menuElementRepresentation];
    if ([v21 _isLeaf])
    {
      v22 = [(_UIActionBridge *)v11 _validatedCommandMenuElementForLeaf:v21 context:v9 validator:v10 includeCommandsWithoutTargets:a5];

      v21 = v22;
    }
  }

LABEL_30:

  return v21;
}

+ (id)validatedCommandMenuForMenu:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(_UIMenuLeafValidator);
  v9 = [a1 validatedCommandMenuForMenu:v7 context:v6 validator:v8];

  return v9;
}

@end