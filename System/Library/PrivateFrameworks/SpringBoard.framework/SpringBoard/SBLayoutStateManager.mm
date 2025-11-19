@interface SBLayoutStateManager
- (id)_layoutStateForApplicationTransitionContext:(id)a3;
- (id)layoutStateForApplicationTransitionContext:(id)a3;
@end

@implementation SBLayoutStateManager

- (id)layoutStateForApplicationTransitionContext:(id)a3
{
  v33 = self;
  v49 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v36 = [v3 previousLayoutState];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [v3 previousEntities];
  v4 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v44;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v44 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v43 + 1) + 8 * i);
        v9 = [v8 layoutRole];
        v10 = v8;
        v11 = [v36 elements];
        v12 = [v36 elementWithRole:v9];
        if (v12)
        {
          v13 = [v10 uniqueIdentifier];
          v14 = [v12 uniqueIdentifier];
          v15 = [v13 isEqualToString:v14];

          if ((v15 & 1) == 0)
          {
            v16 = [v12 workspaceEntity];

            v10 = v16;
          }
        }

        [v3 setPreviousEntity:v10 forLayoutRole:v9];
      }

      v5 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v5);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v17 = [v36 elements];
  v18 = [v17 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v40;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v39 + 1) + 8 * j);
        v23 = [v22 layoutRole];
        v24 = [v3 previousEntityForLayoutRole:v23];

        if (!v24)
        {
          v25 = [v22 workspaceEntity];
          [v3 setPreviousEntity:v25 forLayoutRole:v23];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v19);
  }

  v26 = [v3 previousEntityForLayoutRole:1];

  if (!v26)
  {
    v27 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
    [v3 setPreviousEntity:v27 forLayoutRole:1];
  }

  if (([v3 _alreadyPopulatedRequestedWorkspaceEntities] & 1) == 0)
  {
    v28 = [v3 activatingEntity];
    [v3 _setRequestedActivatingWorkspaceEntity:v28];

    v29 = [v3 entitiesByKey];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __67__SBLayoutStateManager_layoutStateForApplicationTransitionContext___block_invoke;
    v37[3] = &unk_2783BA1B8;
    v30 = v3;
    v38 = v30;
    [v29 enumerateKeysAndObjectsUsingBlock:v37];

    [v30 _setAlreadyPopulatedRequestedWorkspaceEntities:1];
  }

  v31 = [v34 _layoutStateForApplicationTransitionContext:v3];

  return v31;
}

void __67__SBLayoutStateManager_layoutStateForApplicationTransitionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = SBLayoutRoleForIdentifier(a2);
  if (SBLayoutRoleIsValid(v3))
  {
    v4 = [*(a1 + 32) entityForLayoutRole:v3];
    [*(a1 + 32) _setRequestedWorkspaceEntity:v4 forLayoutRole:v3];
  }
}

- (id)_layoutStateForApplicationTransitionContext:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 previousLayoutState];
  if ([v5 isBackground])
  {
    v7 = v6;
    goto LABEL_38;
  }

  v8 = [v5 activatingEntity];
  v9 = [v5 entityForLayoutRole:1];
  v10 = [v5 previousEntityForLayoutRole:1];
  v11 = [v6 interfaceOrientation];
  if (!v9)
  {
    v12 = v8;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
      if (!v9)
      {
        [(SBLayoutStateManager *)a2 _layoutStateForApplicationTransitionContext:?];
      }
    }
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __68__SBLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke;
  v42[3] = &unk_2783B9E68;
  v13 = v10;
  v43 = v13;
  v14 = MEMORY[0x223D6F7F0](v42);
  v37 = v14;
  if ([v9 isPreviousWorkspaceEntity])
  {
    v15 = (*(v14 + 16))(v14, v9, v13);

    v9 = v15;
  }

  if ([v9 isEmptyWorkspaceEntity])
  {

LABEL_13:
    v9 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
    goto LABEL_14;
  }

  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_14:
  if ([v9 isPreviousWorkspaceEntity])
  {
    [(SBLayoutStateManager *)a2 _layoutStateForApplicationTransitionContext:?];
  }

  if ([v9 isEmptyWorkspaceEntity])
  {
    [(SBLayoutStateManager *)a2 _layoutStateForApplicationTransitionContext:?];
  }

  [v5 setActivatingEntity:0];
  [v5 setEntity:v9 forLayoutRole:1];
  [v5 setEntity:0 forLayoutRole:2];
  [v5 setEntity:0 forLayoutRole:3];
  [v5 setEntity:0 forLayoutRole:4];
  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v17 = v16;
  if (v9)
  {
    v18 = __68__SBLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_2(v16, v9);
    if (v18)
    {
      [v17 addObject:v18];
    }
  }

  if ([v17 count])
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  v21 = [v5 interfaceOrientation];
  if (v21)
  {
    v11 = v21;
  }

  if ([v20 count])
  {
    v32 = v17;
    v33 = v13;
    v34 = v9;
    v35 = v8;
    v36 = v6;
    v22 = [MEMORY[0x277CBEB38] dictionary];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v31 = v20;
    v23 = v20;
    v24 = [v23 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v39;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v39 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v38 + 1) + 8 * i);
          v29 = [MEMORY[0x277CCABB0] numberWithInteger:{v11, v31}];
          [v22 setObject:v29 forKey:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v25);
    }

    v8 = v35;
    v6 = v36;
    v9 = v34;
    v17 = v32;
    v13 = v33;
    v20 = v31;
  }

  else
  {
    v22 = 0;
  }

  v7 = [objc_alloc(objc_msgSend(objc_opt_class() "_layoutStateClass"))];

LABEL_38:

  return v7;
}

id __68__SBLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![v5 isPreviousWorkspaceEntity])
  {
    goto LABEL_7;
  }

  v7 = [v5 previousLayoutRole];
  v8 = v6;
  if (v7)
  {
    if (v7 != 1)
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 32);
  }

  v9 = [v8 copy];
  if (v9)
  {
    v10 = v9;
    [v9 clearActivationSettings];
    v11 = [v5 activationSettings];
    [v10 applyActivationSettings:v11];

    [v10 clearDeactivationSettings];
    v12 = [v5 deactivationSettings];
    [v10 applyDeactivationSettings:v12];

    goto LABEL_8;
  }

LABEL_7:
  v10 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
LABEL_8:

  return v10;
}

id __68__SBLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isHomeScreenEntity])
  {
    v3 = 0;
  }

  else
  {
    v3 = [SBLayoutElement elementWithDescriptor:v2];
  }

  return v3;
}

- (void)_layoutStateForApplicationTransitionContext:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBLayoutStateManager.m" lineNumber:107 description:@"Primary workspace entity may not be nil at this point!"];
}

- (void)_layoutStateForApplicationTransitionContext:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBLayoutStateManager.m" lineNumber:151 description:@"Primary workspace entity may not be previous entity at this point!"];
}

- (void)_layoutStateForApplicationTransitionContext:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBLayoutStateManager.m" lineNumber:153 description:@"Primary workspace entity may not be empty entity at this point!"];
}

@end