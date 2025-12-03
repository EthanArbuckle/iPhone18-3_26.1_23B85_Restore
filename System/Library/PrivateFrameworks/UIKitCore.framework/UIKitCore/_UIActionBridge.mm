@interface _UIActionBridge
+ (id)_validatedCommandMenuElementForLeaf:(void *)leaf context:(void *)context validator:(uint64_t)validator includeCommandsWithoutTargets:;
+ (id)actionMenuForMenu:(id)menu firstTarget:(id)target includeHidden:(BOOL)hidden;
+ (id)actionMenuForMenu:(id)menu firstTarget:(id)target includeHidden:(BOOL)hidden validator:(id)validator;
+ (id)validatedCommandMenuForMenu:(id)menu context:(id)context;
+ (id)validatedCommandMenuForMenu:(id)menu context:(id)context validator:(id)validator;
@end

@implementation _UIActionBridge

+ (id)actionMenuForMenu:(id)menu firstTarget:(id)target includeHidden:(BOOL)hidden validator:(id)validator
{
  v50 = *MEMORY[0x1E69E9840];
  menuCopy = menu;
  targetCopy = target;
  validatorCopy = validator;
  shouldAlwaysShowCommandsWithout = [(UIMenu *)menuCopy _shouldAlwaysShowCommandsWithoutTargets];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v23 = menuCopy;
  obj = [menuCopy children];
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
        selfCopy = self;
        v15 = targetCopy;
        v40 = v15;
        hiddenCopy = hidden;
        v16 = validatorCopy;
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
        hiddenCopy2 = hidden;
        v38 = shouldAlwaysShowCommandsWithout;
        v19 = v18;
        v10 = v17;
        v36 = v19;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __73___UIActionBridge_actionMenuForMenu_firstTarget_includeHidden_validator___block_invoke_5;
        v30[3] = &unk_1E7104638;
        hiddenCopy3 = hidden;
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

+ (id)actionMenuForMenu:(id)menu firstTarget:(id)target includeHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  targetCopy = target;
  menuCopy = menu;
  v10 = objc_alloc_init(_UIMenuLeafValidator);
  v11 = [self actionMenuForMenu:menuCopy firstTarget:targetCopy includeHidden:hiddenCopy validator:v10];

  return v11;
}

+ (id)validatedCommandMenuForMenu:(id)menu context:(id)context validator:(id)validator
{
  v42 = *MEMORY[0x1E69E9840];
  menuCopy = menu;
  contextCopy = context;
  validatorCopy = validator;
  shouldAlwaysShowCommandsWithout = [(UIMenu *)menuCopy _shouldAlwaysShowCommandsWithoutTargets];
  shouldShowAlternatesInContext = [(UIMenu *)menuCopy _shouldShowAlternatesInContextMenus];
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [menuCopy children];
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
        selfCopy = self;
        v14 = contextCopy;
        v33 = v14;
        v15 = validatorCopy;
        v34 = v15;
        v16 = v22;
        v35 = v16;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __65___UIActionBridge_validatedCommandMenuForMenu_context_validator___block_invoke_2;
        v25[3] = &unk_1E71046B0;
        selfCopy2 = self;
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

  [menuCopy _resolveElementSizeWithContext:contextCopy];
  v17 = [menuCopy menuByReplacingChildren:v22];

  return v17;
}

+ (id)_validatedCommandMenuElementForLeaf:(void *)leaf context:(void *)context validator:(uint64_t)validator includeCommandsWithoutTargets:
{
  v8 = a2;
  leafCopy = leaf;
  contextCopy = context;
  v11 = objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v8;
    [v12 set_useSenderForResolvingTarget:{objc_msgSend(leafCopy, "useSenderAsResponderSender")}];
    v30 = 0;
    firstResponderTarget = [leafCopy firstResponderTarget];
    sender = [leafCopy sender];
    v15 = [v12 _resolvedTargetFromFirstTarget:firstResponderTarget sender:sender shouldUseFallbackActionOut:&v30];

    if ([leafCopy useSenderAsResponderSender])
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
            menuElementRepresentation = [v12 copyWithZone:0];
            _UIMenuLeafCopyValidatablePropertiesFromValidatedLeaf(menuElementRepresentation, v16);
            [menuElementRepresentation setAttributes:{objc_msgSend(menuElementRepresentation, "attributes") | v17}];
            _getStateObservers = [v12 _getStateObservers];
            [menuElementRepresentation _setStateObservers:_getStateObservers];
          }

          else
          {
            menuElementRepresentation = v12;
          }

          goto LABEL_30;
        }

LABEL_27:
        menuElementRepresentation = 0;
        goto LABEL_30;
      }

      v16 = 0;
    }

    else
    {
      sender2 = [leafCopy sender];
      v16 = [contextCopy validatedCommandForTarget:v15 command:v12 sender:sender2];
    }

    v17 = 0;
    v18 = 1;
    if (!v15 && validator)
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
    menuElementRepresentation = v25;
    if ((isKindOfClass & 1) == 0 || ([v25 attributes] & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v19 = v8;
  if (([leafCopy supportsCustomViewMenuElements] & 1) != 0 || (objc_msgSend(v19, "menuElementRepresentation"), v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
  {
    menuElementRepresentation = v19;
  }

  else
  {
    menuElementRepresentation = [v19 menuElementRepresentation];
    if ([menuElementRepresentation _isLeaf])
    {
      v22 = [(_UIActionBridge *)v11 _validatedCommandMenuElementForLeaf:menuElementRepresentation context:leafCopy validator:contextCopy includeCommandsWithoutTargets:validator];

      menuElementRepresentation = v22;
    }
  }

LABEL_30:

  return menuElementRepresentation;
}

+ (id)validatedCommandMenuForMenu:(id)menu context:(id)context
{
  contextCopy = context;
  menuCopy = menu;
  v8 = objc_alloc_init(_UIMenuLeafValidator);
  v9 = [self validatedCommandMenuForMenu:menuCopy context:contextCopy validator:v8];

  return v9;
}

@end