@interface PXActionMenuController
- (BOOL)sectionDisplaysInline:(int64_t)a3;
- (BOOL)shouldAllowPerformanceOfActionType:(id)a3;
- (NSArray)actions;
- (NSArray)availableActionTypes;
- (PXActionMenuController)init;
- (PXActionMenuController)initWithActionManagers:(id)a3;
- (id)_actionableActionManagerForActionType:(id)a3;
- (id)_menuElementsForSection:(int64_t)a3;
- (id)availableActionTypesInSection:(int64_t)a3;
- (id)iconForSection:(int64_t)a3;
- (id)titleForSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (void)_updateActionsIfNeeded;
- (void)_updateActionsUsingActivityTypeOrder;
- (void)_updateSectionedActions;
- (void)setDefaultActivityTypeOrder:(id)a3;
- (void)setDisabledActionTypes:(id)a3;
- (void)setExcludedActionTypes:(id)a3;
- (void)updateActions;
@end

@implementation PXActionMenuController

- (id)_menuElementsForSection:(int64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [(PXActionMenuController *)self availableActionTypesInSection:a3];
  v5 = [(PXActionMenuController *)self disabledActionTypes];
  v6 = [(PXActionMenuController *)self excludedActionTypes];
  v7 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if (([v6 containsObject:{v13, v18}] & 1) == 0 && (objc_msgSend(v5, "containsObject:", v13) & 1) == 0 && -[PXActionMenuController shouldAllowPerformanceOfActionType:](self, "shouldAllowPerformanceOfActionType:", v13))
        {
          v14 = [(PXActionMenuController *)self _actionableActionManagerForActionType:v13];
          v15 = v14;
          if (v14)
          {
            v16 = [v14 standardActionForActionType:v13];
            [v7 addObject:v16];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)_updateSectionedActions
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = [(PXActionMenuController *)self numberOfSections];
  v4 = [MEMORY[0x1E695DF70] array];
  if (v3 >= 1)
  {
    v5 = 0;
    v6 = 0x1E69DC000uLL;
    v20 = v3;
    do
    {
      v7 = [(PXActionMenuController *)self _menuElementsForSection:v5];
      if ([v7 count])
      {
        v8 = [(PXActionMenuController *)self titleForSection:v5];
        v9 = [(PXActionMenuController *)self iconForSection:v5];
        v10 = [(PXActionMenuController *)self sectionDisplaysInline:v5];
        v11 = *(v6 + 3168);
        if (v10)
        {
          v12 = [v11 menuWithTitle:v8 image:v9 identifier:0 options:1 children:v7];
        }

        else
        {
          v13 = [v11 menuWithTitle:v8 image:v9 identifier:0 options:0 children:v7];
          v14 = *(v6 + 3168);
          v21[0] = v13;
          [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
          v15 = v4;
          v17 = v16 = v6;
          v12 = [v14 menuWithTitle:&stru_1F1741150 image:0 identifier:0 options:1 children:v17];

          v6 = v16;
          v4 = v15;
          v3 = v20;
        }

        [v4 addObject:v12];
      }

      ++v5;
    }

    while (v3 != v5);
  }

  v18 = [v4 copy];
  actions = self->_actions;
  self->_actions = v18;
}

- (void)_updateActionsUsingActivityTypeOrder
{
  v106 = *MEMORY[0x1E69E9840];
  v4 = [(PXActionMenuController *)self availableActionTypes];
  v5 = [(PXActionMenuController *)self availableInternalActionTypes];
  v6 = [(PXActionMenuController *)self availableDestructiveActionTypes];
  v65 = [(PXActionMenuController *)self disabledActionTypes];
  if ([(PXActionMenuController *)self actionsAreExcludedWhenCustomized])
  {
    v63 = 0;
  }

  else
  {
    v63 = [(PXActionMenuController *)self excludedActionTypes];
  }

  v67 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v11 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PXActionMenuController__updateActionsUsingActivityTypeOrder__block_invoke;
  aBlock[3] = &unk_1E77388E0;
  aBlock[4] = self;
  v12 = v11;
  v99 = v12;
  v100 = a2;
  v69 = _Block_copy(aBlock);
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __62__PXActionMenuController__updateActionsUsingActivityTypeOrder__block_invoke_3;
  v86[3] = &unk_1E7738908;
  v59 = v63;
  v61 = self;
  v87 = v59;
  v88 = self;
  v57 = v65;
  v89 = v57;
  v55 = v12;
  v90 = v55;
  v66 = v8;
  v91 = v66;
  v13 = v10;
  v92 = v13;
  v14 = v5;
  v93 = v14;
  v64 = v7;
  v94 = v64;
  v15 = v6;
  v95 = v15;
  v62 = v9;
  v96 = v62;
  v68 = v67;
  v97 = v68;
  v16 = _Block_copy(v86);
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v17 = v4;
  v18 = [v17 countByEnumeratingWithState:&v82 objects:v105 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v83;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v83 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v16[2](v16, *(*(&v82 + 1) + 8 * i));
      }

      v19 = [v17 countByEnumeratingWithState:&v82 objects:v105 count:16];
    }

    while (v19);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v22 = v14;
  v23 = [v22 countByEnumeratingWithState:&v78 objects:v104 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v79;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v79 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v16[2](v16, *(*(&v78 + 1) + 8 * j));
      }

      v24 = [v22 countByEnumeratingWithState:&v78 objects:v104 count:16];
    }

    while (v24);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v27 = v15;
  v28 = [v27 countByEnumeratingWithState:&v74 objects:v103 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v75;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v75 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v16[2](v16, *(*(&v74 + 1) + 8 * k));
      }

      v29 = [v27 countByEnumeratingWithState:&v74 objects:v103 count:16];
    }

    while (v29);
  }

  v32 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v17, "count")}];
  v33 = v61;
  v34 = [(PXActionMenuController *)v61 defaultActivityTypeOrder];
  v35 = [v34 count];

  if (v35)
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v36 = [(PXActionMenuController *)v61 defaultActivityTypeOrder:v17];
    v37 = [v36 countByEnumeratingWithState:&v70 objects:v102 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v71;
      do
      {
        for (m = 0; m != v38; ++m)
        {
          if (*v71 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = [v13 objectForKeyedSubscript:*(*(&v70 + 1) + 8 * m)];
          if (v41)
          {
            [v32 addObject:v41];
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v70 objects:v102 count:16];
      }

      while (v38);
      v33 = v61;
    }
  }

  else
  {
    v36 = [v13 allValues];
    [v32 addObjectsFromArray:v36];
  }

  [v32 addObjectsFromArray:v68];
  v69[2](v69, v32);
  v42 = v66;
  v43 = v62;
  if ([v66 count])
  {
    v44 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 image:0 identifier:0 options:1 children:v66];
    [v32 insertObject:v44 atIndex:0];
  }

  if ([v62 count])
  {
    v45 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 image:0 identifier:0 options:1 children:v62];
    [v32 addObject:v45];
  }

  v46 = v64;
  if ([v64 count])
  {
    v47 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"apple.logo"];
    v48 = [MEMORY[0x1E69DCC60] menuWithTitle:@"Internal" image:v47 identifier:0 options:0 children:v64];
    v49 = MEMORY[0x1E69DCC60];
    v101 = v48;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
    v51 = [v49 menuWithTitle:&stru_1F1741150 image:0 identifier:0 options:1 children:v50];
    [v32 addObject:v51];

    v43 = v62;
    v46 = v64;

    v42 = v66;
  }

  v52 = [v32 copy];
  actions = v33->_actions;
  v33->_actions = v52;
}

void __62__PXActionMenuController__updateActionsUsingActivityTypeOrder__block_invoke(uint64_t a1, uint64_t a2)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__PXActionMenuController__updateActionsUsingActivityTypeOrder__block_invoke_2;
  v8[3] = &unk_1E77388B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v9 = v5;
  v10 = v7;
  v11 = v6;
  [v4 customizeActions:a2 withActionTypes:v8];
}

void __62__PXActionMenuController__updateActionsUsingActivityTypeOrder__block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([*(a1 + 32) containsObject:v3] & 1) == 0 && objc_msgSend(*(a1 + 40), "shouldAllowPerformanceOfActionType:", v3))
  {
    v4 = [*(a1 + 40) _actionableActionManagerForActionType:v3];
    if (!v4 || ([*(a1 + 48) containsObject:v3] & 1) != 0)
    {
      goto LABEL_22;
    }

    v5 = [v4 activityTypeForActionType:v3];
    v6 = [v4 standardActionForActionType:v3];
    if (v6)
    {
      [*(a1 + 56) setObject:v3 forKey:v6];
      v7 = PLUIActionsGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v11 = 138412802;
        v12 = v3;
        v13 = 2112;
        v14 = v5;
        v15 = 2112;
        v16 = v6;
        _os_log_debug_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "actionType:%@ activityType:%@ action:%@", &v11, 0x20u);
      }

      if (v5 == @"PXActivityTypeSetAllLibrariesFilter" || v5 == @"PXActivityTypeSetPersonalLibraryFilter" || v5 == @"PXActivityTypeSetSharedLibraryFilter")
      {
        v10 = *(a1 + 64);
      }

      else
      {
        if (v5)
        {
          v8 = [*(a1 + 40) defaultActivityTypeOrder];
          v9 = [v8 containsObject:v5];

          if (v9)
          {
            [*(a1 + 72) setObject:v6 forKeyedSubscript:v5];
            goto LABEL_21;
          }
        }

        if ([*(a1 + 80) containsObject:v3])
        {
          v10 = *(a1 + 88);
        }

        else if ([*(a1 + 96) containsObject:v3])
        {
          v10 = *(a1 + 104);
        }

        else
        {
          v10 = *(a1 + 112);
        }
      }

      [v10 addObject:v6];
    }

LABEL_21:

LABEL_22:
  }
}

id __62__PXActionMenuController__updateActionsUsingActivityTypeOrder__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];
  if (!v4)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"PXActionMenuController.m" lineNumber:169 description:{@"couldn't determine action type for %@", v3}];
  }

  return v4;
}

- (void)_updateActionsIfNeeded
{
  if (self->_actionsNeedsUpdate)
  {
    self->_actionsNeedsUpdate = 0;
    [(PXActionMenuController *)self updateActions];
  }
}

- (id)_actionableActionManagerForActionType:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(PXActionMenuController *)self actionManagers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 canPerformActionType:v4])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)updateActions
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = PLUIActionsGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[PXActionMenuController updateActions]";
    _os_log_debug_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "=== %s ===", &v4, 0xCu);
  }

  if ([(PXActionMenuController *)self enableSectionedMenus])
  {
    [(PXActionMenuController *)self _updateSectionedActions];
  }

  else
  {
    [(PXActionMenuController *)self _updateActionsUsingActivityTypeOrder];
  }
}

- (BOOL)sectionDisplaysInline:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXActionMenuController.m" lineNumber:113 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionMenuController sectionDisplaysInline:]", v7}];

  abort();
}

- (id)iconForSection:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXActionMenuController.m" lineNumber:109 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionMenuController iconForSection:]", v7}];

  abort();
}

- (id)titleForSection:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXActionMenuController.m" lineNumber:105 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionMenuController titleForSection:]", v7}];

  abort();
}

- (id)availableActionTypesInSection:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXActionMenuController.m" lineNumber:101 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionMenuController availableActionTypesInSection:]", v7}];

  abort();
}

- (int64_t)numberOfSections
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXActionMenuController.m" lineNumber:97 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionMenuController numberOfSections]", v6}];

  abort();
}

- (BOOL)shouldAllowPerformanceOfActionType:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXActionMenuController.m" lineNumber:89 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionMenuController shouldAllowPerformanceOfActionType:]", v8}];

  abort();
}

- (NSArray)availableActionTypes
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXActionMenuController.m" lineNumber:81 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionMenuController availableActionTypes]", v6}];

  abort();
}

- (NSArray)actions
{
  [(PXActionMenuController *)self _updateActionsIfNeeded];
  actions = self->_actions;

  return actions;
}

- (void)setExcludedActionTypes:(id)a3
{
  if (self->_excludedActionTypes != a3)
  {
    v5 = [a3 copy];
    excludedActionTypes = self->_excludedActionTypes;
    self->_excludedActionTypes = v5;

    [(PXActionMenuController *)self invalidateActions];
  }
}

- (void)setDisabledActionTypes:(id)a3
{
  if (self->_disabledActionTypes != a3)
  {
    v5 = [a3 copy];
    disabledActionTypes = self->_disabledActionTypes;
    self->_disabledActionTypes = v5;

    [(PXActionMenuController *)self invalidateActions];
  }
}

- (void)setDefaultActivityTypeOrder:(id)a3
{
  if (self->_defaultActivityTypeOrder != a3)
  {
    v5 = [a3 copy];
    defaultActivityTypeOrder = self->_defaultActivityTypeOrder;
    self->_defaultActivityTypeOrder = v5;

    [(PXActionMenuController *)self invalidateActions];
  }
}

- (PXActionMenuController)initWithActionManagers:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXActionMenuController;
  v6 = [(PXActionMenuController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actionManagers, a3);
    [(PXActionMenuController *)v7 invalidateActions];
  }

  return v7;
}

- (PXActionMenuController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXActionMenuController.m" lineNumber:34 description:{@"%s is not available as initializer", "-[PXActionMenuController init]"}];

  abort();
}

@end