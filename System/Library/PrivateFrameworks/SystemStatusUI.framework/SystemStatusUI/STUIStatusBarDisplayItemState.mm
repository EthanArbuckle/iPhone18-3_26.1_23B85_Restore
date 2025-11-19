@interface STUIStatusBarDisplayItemState
+ (id)stateForDisplayItemWithIdentifier:(id)a3 statusBar:(id)a4;
+ (void)setupRelationsBetweenDisplayItemStates:(id)a3 visualProvider:(id)a4;
- (BOOL)_resolveDependentItemStatesWithBlock:(id)a3;
- (BOOL)_updatePlacementWithRecursionBlock:(id)a3;
- (BOOL)_updateToNextPlacementStateIfNeeded;
- (BOOL)isCurrentPlacement:(id)a3;
- (BOOL)isEnabled;
- (BOOL)isEnabledIgnoringAnimations;
- (BOOL)prepareAnimation:(id)a3;
- (BOOL)updatePlacement;
- (NSArray)potentialPlacementRegionIdentifiers;
- (STUIStatusBar)statusBar;
- (STUIStatusBarDisplayItem)displayItem;
- (STUIStatusBarDisplayItemPlacementState)currentPlacementState;
- (STUIStatusBarItem)item;
- (id)_animationWithUpdateAnimation:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4;
- (id)_effectiveStyleAttributesFromStyleAttributes:(id)a3 data:(id)a4 styleAttributesChanged:(BOOL *)a5;
- (id)_updateForItem:(id)a3 data:(id)a4 styleAttributes:(id)a5;
- (id)_updateForUpdatedData:(id)a3 updatedStyleAttributes:(id)a4 updatedEnability:(id)a5;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)placementStateForPlacement:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)updateWithData:(id)a3 styleAttributes:(id)a4;
- (int64_t)_animationType;
- (int64_t)priority;
- (void)_cancelObsoleteAnimations;
- (void)_updateStatuses;
- (void)addPlacement:(id)a3 inRegion:(id)a4;
- (void)prepareForDataUpdate;
- (void)updateToNextEnabledPlacement;
@end

@implementation STUIStatusBarDisplayItemState

- (void)prepareForDataUpdate
{
  self->_dataUpdateStatus = 0;
  self->_currentPlacementStateIndex = 0;
  self->_enabilityStatus = 0;
  self->_visibilityStatus = 0;
}

- (STUIStatusBarDisplayItemPlacementState)currentPlacementState
{
  currentPlacementStateIndex = self->_currentPlacementStateIndex;
  if (currentPlacementStateIndex >= [(NSMutableArray *)self->_placementStates count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSMutableArray *)self->_placementStates objectAtIndexedSubscript:self->_currentPlacementStateIndex];
  }

  return v4;
}

- (BOOL)_updateToNextPlacementStateIfNeeded
{
  v3 = [(STUIStatusBarDisplayItemState *)self currentPlacementState];
  if (v3)
  {
    v4 = v3;
    v5 = [(STUIStatusBarDisplayItemState *)self currentPlacementState];
    v6 = [v5 isEnabled];

    if (v6)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      ++self->_currentPlacementStateIndex;
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)_updateStatuses
{
  v3 = [(STUIStatusBarDisplayItemState *)self isEnabledIgnoringAnimations];
  v4 = v3;
  wasEnabled = self->_wasEnabled;
  v6 = !v3;
  if (wasEnabled || v6)
  {
    v8 = v3 | ~wasEnabled;
    v9 = wasEnabled & v3;
    if (v8)
    {
      v7 = v9;
    }

    else
    {
      v7 = 3;
    }
  }

  else
  {
    v7 = 2;
  }

  [(STUIStatusBarDisplayItemState *)self setEnabilityStatus:v7];
  wasVisible = self->_wasVisible;
  if ((wasVisible | v6))
  {
    v11 = !wasVisible;
    v12 = v11 || v4;
    v13 = ((v11 | v6) & 1) == 0;
    v14 = 2;
    if (!v13)
    {
      v14 = 0;
    }

    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = 3;
    }
  }

  else
  {
    v15 = 1;
  }

  [(STUIStatusBarDisplayItemState *)self setVisibilityStatus:v15];
}

- (BOOL)isEnabledIgnoringAnimations
{
  if (!self->_dataEnabled)
  {
    return 0;
  }

  v3 = [(STUIStatusBarDisplayItemState *)self currentPlacementState];

  if (!v3)
  {
    return 0;
  }

  v4 = [(STUIStatusBarDisplayItemState *)self currentPlacementState];
  v5 = [v4 isEnabled];

  return v5;
}

- (void)_cancelObsoleteAnimations
{
  v3 = [(STUIStatusBarDisplayItemState *)self _animationType];
  if (v3 == 2)
  {
    v6 = [(STUIStatusBarDisplayItemState *)self addingAnimation];

    if (v6)
    {
      v7 = [(STUIStatusBarDisplayItemState *)self addingAnimation];
      [v7 cancel];

      [(STUIStatusBarDisplayItemState *)self setAddingAnimation:0];
    }

    v8 = [(STUIStatusBarDisplayItemState *)self animations];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [(STUIStatusBarDisplayItemState *)self animations];
      v12 = [v10 copy];

      [v12 makeObjectsPerformSelector:sel_cancel];
      v11 = [(STUIStatusBarDisplayItemState *)self animations];
      [v11 removeAllObjects];
    }
  }

  else if (v3 == 1)
  {
    v4 = [(STUIStatusBarDisplayItemState *)self removingAnimation];

    if (v4)
    {
      v5 = [(STUIStatusBarDisplayItemState *)self removingAnimation];
      [v5 cancel];

      [(STUIStatusBarDisplayItemState *)self setRemovingAnimation:0];
    }
  }
}

- (int64_t)_animationType
{
  result = [(STUIStatusBarDisplayItemState *)self visibilityStatus];
  if (result)
  {
    if (result == 3)
    {
      return 2;
    }

    else if (result == 2)
    {
      if ([(STUIStatusBarDisplayItemState *)self enabilityStatus]== 2)
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)isEnabled
{
  if ([(STUIStatusBarDisplayItemState *)self hasRunningAnimations]|| self->_floating)
  {
    return 1;
  }

  return [(STUIStatusBarDisplayItemState *)self isEnabledIgnoringAnimations];
}

- (BOOL)updatePlacement
{
  placementUpdateStatus = self->_placementUpdateStatus;
  if (placementUpdateStatus == 2)
  {
    return 1;
  }

  if (placementUpdateStatus == 1)
  {
    return 0;
  }

  self->_placementUpdateStatus = 1;
  return [(STUIStatusBarDisplayItemState *)self _updatePlacementWithRecursionBlock:&__block_literal_global_1];
}

- (NSArray)potentialPlacementRegionIdentifiers
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  placementStates = self->_placementStates;
  v5 = STUIStatusBarGetPriorityComparator();
  v6 = [(NSMutableArray *)placementStates sortedArrayUsingComparator:v5];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 region];
        v14 = [v13 isEnabled];

        if (v14)
        {
          v15 = [v12 region];
          v16 = [v15 identifier];
          [v3 addObject:v16];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return v3;
}

- (STUIStatusBarDisplayItem)displayItem
{
  WeakRetained = objc_loadWeakRetained(&self->_displayItem);

  return WeakRetained;
}

+ (id)stateForDisplayItemWithIdentifier:(id)a3 statusBar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(a1);
  v9 = *(v8 + 3);
  *(v8 + 3) = v6;
  v10 = v6;

  objc_storeWeak(v8 + 4, v7);
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = *(v8 + 6);
  *(v8 + 6) = v11;

  v13 = [MEMORY[0x277CBEB58] set];
  v14 = *(v8 + 17);
  *(v8 + 17) = v13;

  v15 = [STUIStatusBarItem itemIdentifierForDisplayItemIdentifier:v10];
  v16 = [v7 itemWithIdentifier:v15];

  objc_storeWeak(v8 + 5, v16);
  WeakRetained = objc_loadWeakRetained(v8 + 5);
  v18 = [WeakRetained displayItemForIdentifier:v10];

  objc_storeWeak(v8 + 2, v18);

  return v8;
}

- (void)updateToNextEnabledPlacement
{
  ++self->_currentPlacementStateIndex;
    ;
  }
}

- (void)addPlacement:(id)a3 inRegion:(id)a4
{
  v5 = [STUIStatusBarDisplayItemPlacementState stateForDisplayItemPlacement:a3 region:a4];
  placementStates = self->_placementStates;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__STUIStatusBarDisplayItemState_addPlacement_inRegion___block_invoke;
  v10[3] = &unk_279D382E0;
  v11 = v5;
  v7 = v5;
  v8 = [(NSMutableArray *)placementStates indexOfObjectPassingTest:v10];
  v9 = self->_placementStates;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)v9 addObject:v7];
  }

  else
  {
    [(NSMutableArray *)v9 insertObject:v7 atIndex:?];
  }
}

- (id)placementStateForPlacement:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_placementStates;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 placement];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

+ (void)setupRelationsBetweenDisplayItemStates:(id)a3 visualProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__STUIStatusBarDisplayItemState_setupRelationsBetweenDisplayItemStates_visualProvider___block_invoke;
  v9[3] = &unk_279D38308;
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
}

void __87__STUIStatusBarDisplayItemState_setupRelationsBetweenDisplayItemStates_visualProvider___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v96 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = [v3 placementStates];
  v58 = [obj countByEnumeratingWithState:&v86 objects:v95 count:16];
  if (v58)
  {
    v57 = *v87;
    v59 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v87 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v60 = v4;
        v63 = *(*(&v86 + 1) + 8 * v4);
        v5 = [v63 placement];
        v6 = [MEMORY[0x277CBEB58] set];
        v7 = [v5 excludedPlacements];
        v8 = [v7 allObjects];
        [v6 addObjectsFromArray:v8];

        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v61 = [v5 excludedRegionIdentifiers];
        v64 = [v61 countByEnumeratingWithState:&v82 objects:v94 count:16];
        if (v64)
        {
          v62 = *v83;
          do
          {
            for (i = 0; i != v64; ++i)
            {
              if (*v83 != v62)
              {
                objc_enumerationMutation(v61);
              }

              v10 = [*(a1 + 32) orderedDisplayItemPlacementsInRegionWithIdentifier:*(*(&v82 + 1) + 8 * i)];
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              v81 = 0u;
              v11 = [v10 countByEnumeratingWithState:&v78 objects:v93 count:16];
              if (v11)
              {
                v12 = v11;
                v13 = *v79;
                do
                {
                  for (j = 0; j != v12; ++j)
                  {
                    if (*v79 != v13)
                    {
                      objc_enumerationMutation(v10);
                    }

                    v15 = *(*(&v78 + 1) + 8 * j);
                    v16 = [v5 includedPlacements];
                    v17 = [v16 containsObject:v15];

                    if ((v17 & 1) == 0)
                    {
                      [v6 addObject:v15];
                    }
                  }

                  v12 = [v10 countByEnumeratingWithState:&v78 objects:v93 count:16];
                }

                while (v12);
              }
            }

            v64 = [v61 countByEnumeratingWithState:&v82 objects:v94 count:16];
          }

          while (v64);
        }

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v18 = v6;
        v19 = [v18 countByEnumeratingWithState:&v74 objects:v92 count:16];
        v3 = v59;
        if (v19)
        {
          v20 = v19;
          v21 = *v75;
          do
          {
            for (k = 0; k != v20; ++k)
            {
              if (*v75 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v74 + 1) + 8 * k);
              v24 = [STUIStatusBarDisplayItemRelation exclusionWithDisplayItemState:v59 placement:v5];
              v25 = *(a1 + 40);
              v26 = [v23 identifier];
              v27 = [v25 objectForKeyedSubscript:v26];

              v28 = [v27 placementStateForPlacement:v23];
              v29 = [v28 relations];
              [v29 addObject:v24];
            }

            v20 = [v18 countByEnumeratingWithState:&v74 objects:v92 count:16];
          }

          while (v20);
        }

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v30 = [v5 allRequiredPlacements];
        v31 = [v30 countByEnumeratingWithState:&v70 objects:v91 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v71;
          do
          {
            for (m = 0; m != v32; ++m)
            {
              if (*v71 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v70 + 1) + 8 * m);
              v36 = *(a1 + 40);
              v37 = [v35 identifier];
              v38 = [v36 objectForKeyedSubscript:v37];

              v39 = [STUIStatusBarDisplayItemRelation requirementWithDisplayItemState:v38 placement:v35];
              v40 = [v63 relations];
              [v40 addObject:v39];
            }

            v32 = [v30 countByEnumeratingWithState:&v70 objects:v91 count:16];
          }

          while (v32);
        }

        v41 = [v5 anyRequiredPlacements];
        v42 = [v41 count];

        if (v42)
        {
          v43 = [MEMORY[0x277CBEB18] array];
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v44 = [v5 anyRequiredPlacements];
          v45 = [v44 countByEnumeratingWithState:&v66 objects:v90 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v67;
            do
            {
              for (n = 0; n != v46; ++n)
              {
                if (*v67 != v47)
                {
                  objc_enumerationMutation(v44);
                }

                v49 = *(*(&v66 + 1) + 8 * n);
                v50 = *(a1 + 40);
                v51 = [v49 identifier];
                v52 = [v50 objectForKeyedSubscript:v51];

                v53 = [STUIStatusBarDisplayItemRelation requirementWithDisplayItemState:v52 placement:v49];
                [v43 addObject:v53];
              }

              v46 = [v44 countByEnumeratingWithState:&v66 objects:v90 count:16];
            }

            while (v46);
          }

          v54 = [v63 relations];
          v55 = [STUIStatusBarDisplayItemRelation anyRelationWithRelations:v43];
          [v54 addObject:v55];

          v3 = v59;
        }

        v4 = v60 + 1;
      }

      while (v60 + 1 != v58);
      v58 = [obj countByEnumeratingWithState:&v86 objects:v95 count:16];
    }

    while (v58);
  }
}

- (BOOL)_resolveDependentItemStatesWithBlock:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(STUIStatusBarDisplayItemState *)self currentPlacementState];
  v6 = [v5 relations];

  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v12 = [v11 itemStates];
        v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v20;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v20 != v15)
              {
                objc_enumerationMutation(v12);
              }

              if (!v4[2](v4, *(*(&v19 + 1) + 8 * j)))
              {

                v17 = 0;
                goto LABEL_19;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v17 = 1;
    }

    while (v8);
  }

  else
  {
    v17 = 1;
  }

LABEL_19:

  return v17;
}

- (BOOL)_updatePlacementWithRecursionBlock:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_displayItem);
  -[STUIStatusBarDisplayItemState setFloating:](self, "setFloating:", [WeakRetained floating]);

  if ([(STUIStatusBarDisplayItemState *)self isFloating])
  {
    self->_currentPlacementStateIndex = -1;
LABEL_5:
    [(STUIStatusBarDisplayItemState *)self _updateStatuses];
    v7 = 1;
    goto LABEL_6;
  }

  v6 = [(STUIStatusBarDisplayItemState *)self removingAnimation];

  if (v6)
  {
    self->_currentPlacementStateIndex = self->_previousPlacementStateIndex;
    [(STUIStatusBarDisplayItemState *)self _resolveDependentItemStatesWithBlock:v4];
    goto LABEL_5;
  }

  v9 = [(STUIStatusBarDisplayItemState *)self currentPlacementState];

  if (!v9)
  {
    goto LABEL_5;
  }

  while (1)
  {
    v10 = [(STUIStatusBarDisplayItemState *)self currentPlacementState];
    v11 = [v10 canBeEnabled];

    if (v11)
    {
      if (![(STUIStatusBarDisplayItemState *)self _resolveDependentItemStatesWithBlock:v4])
      {
        break;
      }
    }

    if (![(STUIStatusBarDisplayItemState *)self _updateToNextPlacementStateIfNeeded])
    {
      goto LABEL_5;
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (id)updateWithData:(id)a3 styleAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_dataUpdateStatus == 2)
  {
    v8 = [MEMORY[0x277CBEA60] array];
    goto LABEL_23;
  }

  self->_dataUpdateStatus = 1;
  v9 = [MEMORY[0x277CBEB18] array];
  WeakRetained = objc_loadWeakRetained(&self->_displayItem);
  v11 = [WeakRetained clearPreviousTokenDisablementIfNecessary];

  if (v11)
  {
    [(STUIStatusBarDisplayItemState *)self setWasEnabled:0];
  }

  else
  {
    v12 = objc_loadWeakRetained(&self->_displayItem);
    -[STUIStatusBarDisplayItemState setWasEnabled:](self, "setWasEnabled:", [v12 isEnabled]);
  }

  v13 = objc_loadWeakRetained(&self->_displayItem);
  -[STUIStatusBarDisplayItemState setWasVisible:](self, "setWasVisible:", [v13 visible]);

  [(STUIStatusBarDisplayItemState *)self setPreviousPlacementStateIndex:[(STUIStatusBarDisplayItemState *)self currentPlacementStateIndex]];
  v14 = objc_loadWeakRetained(&self->_displayItem);
  -[STUIStatusBarDisplayItemState setFloating:](self, "setFloating:", [v14 floating]);

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __64__STUIStatusBarDisplayItemState_updateWithData_styleAttributes___block_invoke;
  v39[3] = &unk_279D38350;
  v15 = v6;
  v40 = v15;
  v16 = v7;
  v41 = v16;
  v17 = v9;
  v42 = v17;
  if ([(STUIStatusBarDisplayItemState *)self _updatePlacementWithRecursionBlock:v39])
  {
    v18 = objc_loadWeakRetained(&self->_item);
    v19 = objc_loadWeakRetained(&self->_displayItem);
    v20 = objc_loadWeakRetained(&self->_statusBar);
    v21 = [v20 currentAggregatedData];
    -[STUIStatusBarDisplayItemState setDataEnabled:](self, "setDataEnabled:", [v18 canEnableDisplayItem:v19 fromData:v21]);

    [(STUIStatusBarDisplayItemState *)self _updateStatuses];
    v22 = [(STUIStatusBarDisplayItemState *)self enabilityStatus];
    switch(v22)
    {
      case 1:
        v28 = objc_loadWeakRetained(&self->_item);
        v27 = [(STUIStatusBarDisplayItemState *)self _updateForItem:v28 data:v15 styleAttributes:v16];

        if (v27)
        {
          goto LABEL_16;
        }

        break;
      case 3:
        v27 = [(STUIStatusBarDisplayItemState *)self _updateForUpdatedData:0 updatedStyleAttributes:0 updatedEnability:MEMORY[0x277CBEC28]];
        if (!v27)
        {
          break;
        }

        goto LABEL_16;
      case 2:
        v23 = objc_loadWeakRetained(&self->_statusBar);
        v24 = [v23 currentAggregatedData];
        v25 = objc_loadWeakRetained(&self->_statusBar);
        v26 = [v25 styleAttributes];
        v27 = [(STUIStatusBarDisplayItemState *)self _updateForUpdatedData:v24 updatedStyleAttributes:v26 updatedEnability:MEMORY[0x277CBEC38]];

        if (!v27)
        {
          break;
        }

LABEL_16:
        v29 = [(STUIStatusBarDisplayItemState *)self currentPlacementState];
        v30 = [v29 placement];
        v31 = [v30 itemInfo];
        [v27 setPlacementInfo:v31];

        v32 = objc_loadWeakRetained(&self->_item);
        v33 = objc_loadWeakRetained(&self->_displayItem);
        v34 = [v32 _applyUpdate:v27 toDisplayItem:v33];

        v35 = objc_loadWeakRetained(&self->_displayItem);
        -[STUIStatusBarDisplayItemState setDataEnabled:](self, "setDataEnabled:", [v35 isEnabled]);

LABEL_19:
        [(STUIStatusBarDisplayItemState *)self _updateStatuses];
        [(STUIStatusBarDisplayItemState *)self _cancelObsoleteAnimations];
        v36 = [(STUIStatusBarDisplayItemState *)self _animationWithUpdateAnimation:v34];

        if (v36)
        {
          v37 = [(STUIStatusBarDisplayItemState *)self identifier];
          [v36 setDisplayItemIdentifier:v37];

          [v17 addObject:v36];
        }

        *&self->_dataUpdateStatus = xmmword_26C581630;
        self->_preferredPlacementStateIndex = self->_currentPlacementStateIndex;
        v8 = v17;

        goto LABEL_22;
      default:
        v27 = 0;
        break;
    }

    v34 = 0;
    goto LABEL_19;
  }

  self->_dataUpdateStatus = 0;
  v8 = MEMORY[0x277CBEBF8];
LABEL_22:

LABEL_23:

  return v8;
}

uint64_t __64__STUIStatusBarDisplayItemState_updateWithData_styleAttributes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dataUpdateStatus];
  if (v4 != 2)
  {
    if (v4)
    {
      v6 = 0;
      goto LABEL_6;
    }

    v5 = [v3 updateWithData:*(a1 + 32) styleAttributes:*(a1 + 40)];
    [*(a1 + 48) addObjectsFromArray:v5];
  }

  v6 = 1;
LABEL_6:

  return v6;
}

- (id)_updateForItem:(id)a3 data:(id)a4 styleAttributes:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 needsUpdate];
  if (v9)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [v8 dependentEntryKeys];
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [v9 valueForKey:*(*(&v23 + 1) + 8 * v16)];

        if (v17)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v18 = self;
      v19 = v9;
      if (!v10)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

LABEL_10:
  }

  if (v10)
  {
    v18 = self;
    v19 = 0;
LABEL_14:
    v20 = v10;
LABEL_18:
    v21 = [(STUIStatusBarDisplayItemState *)v18 _updateForUpdatedData:v19 updatedStyleAttributes:v20 updatedEnability:0];
    goto LABEL_19;
  }

  if (v11)
  {
    v18 = self;
    v19 = 0;
LABEL_17:
    v20 = 0;
    goto LABEL_18;
  }

  v21 = 0;
LABEL_19:

  return v21;
}

- (id)_updateForUpdatedData:(id)a3 updatedStyleAttributes:(id)a4 updatedEnability:(id)a5
{
  v8 = a3;
  v9 = a5;
  WeakRetained = STUIStatusBarItemUpdate;
  v11 = a4;
  v12 = objc_alloc_init(STUIStatusBarItemUpdate);
  [(STUIStatusBarItemUpdate *)v12 setDataChanged:v8 != 0];
  if (v8)
  {
    [(STUIStatusBarItemUpdate *)v12 setData:v8];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_statusBar);
    v13 = [(__objc2_class *)WeakRetained currentAggregatedData];
    [(STUIStatusBarItemUpdate *)v12 setData:v13];
  }

  v19 = v11 != 0;
  v14 = v11;
  if (!v11)
  {
    WeakRetained = objc_loadWeakRetained(&self->_statusBar);
    v14 = [(__objc2_class *)WeakRetained styleAttributes];
  }

  v15 = [(STUIStatusBarItemUpdate *)v12 data];
  v16 = [(STUIStatusBarDisplayItemState *)self _effectiveStyleAttributesFromStyleAttributes:v14 data:v15 styleAttributesChanged:&v19];

  [(STUIStatusBarItemUpdate *)v12 setStyleAttributes:v16];
  if (!v11)
  {
  }

  [(STUIStatusBarItemUpdate *)v12 setStyleAttributesChanged:v19];
  [(STUIStatusBarItemUpdate *)v12 setEnablementChanged:v9 != 0];
  if (v9)
  {
    v17 = [v9 BOOLValue];
  }

  else
  {
    v17 = 1;
  }

  [(STUIStatusBarItemUpdate *)v12 setEnabled:v17];

  return v12;
}

- (id)_effectiveStyleAttributesFromStyleAttributes:(id)a3 data:(id)a4 styleAttributesChanged:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = [(STUIStatusBarDisplayItemState *)self currentPlacementState];
  v12 = [v11 region];

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__0;
  v39 = __Block_byref_object_dispose__0;
  v40 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v32 = __106__STUIStatusBarDisplayItemState__effectiveStyleAttributesFromStyleAttributes_data_styleAttributesChanged___block_invoke;
  v33 = &unk_279D38378;
  v34 = &v35;
  v13 = [v12 effectiveStyle];
  if (v13 != 4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_statusBar);
    v15 = [WeakRetained styleAttributesForStyle:v13];
    v32(v31, v15);
  }

  v16 = [v12 overriddenStyleAttributes];
  v32(v31, v16);

  v17 = objc_loadWeakRetained(&self->_displayItem);
  v18 = [v17 overriddenStyleAttributes];
  v32(v31, v18);

  v19 = objc_loadWeakRetained(&self->_item);
  v20 = [v19 overriddenStyleAttributesForData:v9 identifier:self->_identifier];
  v32(v31, v20);

  v21 = objc_loadWeakRetained(&self->_statusBar);
  v22 = [v21 visualProvider];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    v24 = objc_loadWeakRetained(&self->_statusBar);
    v25 = [v24 visualProvider];
    v26 = [(STUIStatusBarDisplayItemState *)self identifier];
    v27 = [v25 overriddenStyleAttributesForDisplayItemWithIdentifier:v26];
    v32(v31, v27);
  }

  p_overriddenStyleAttributes = &self->_overriddenStyleAttributes;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(p_overriddenStyleAttributes, v36[5]);
    *a5 = 1;
  }

  v29 = [v10 styleAttributesWithOverrides:v36[5]];

  _Block_object_dispose(&v35, 8);

  return v29;
}

uint64_t __106__STUIStatusBarDisplayItemState__effectiveStyleAttributesFromStyleAttributes_data_styleAttributesChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    v12 = v4;
    if (v6)
    {
      v7 = [v6 styleAttributesWithOverrides:v4];
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    else
    {
      v10 = v4;
      v9 = *(v5 + 40);
      *(v5 + 40) = v10;
    }

    v4 = v12;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (id)_animationWithUpdateAnimation:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);
  v6 = [WeakRetained areAnimationsEnabled];

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v4;
  if (v7)
  {
    goto LABEL_8;
  }

  v8 = [(STUIStatusBarDisplayItemState *)self _animationType];
  if (v8 != 2)
  {
    if (v8 == 1)
    {
      v9 = objc_loadWeakRetained(&self->_item);
      v7 = [v9 additionAnimationForDisplayItemWithIdentifier:self->_identifier];

      v10 = objc_loadWeakRetained(&self->_statusBar);
      v11 = [v10 visualProvider];
      v12 = objc_opt_respondsToSelector();

      if ((v12 & 1) == 0)
      {
        goto LABEL_8;
      }

      v13 = objc_loadWeakRetained(&self->_statusBar);
      v14 = [v13 visualProvider];
      v15 = [v14 additionAnimationForDisplayItemWithIdentifier:self->_identifier itemAnimation:v7];
      goto LABEL_13;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v17 = objc_loadWeakRetained(&self->_item);
  v7 = [v17 removalAnimationForDisplayItemWithIdentifier:self->_identifier];

  v18 = objc_loadWeakRetained(&self->_statusBar);
  v19 = [v18 visualProvider];
  v20 = objc_opt_respondsToSelector();

  if ((v20 & 1) == 0)
  {
    goto LABEL_8;
  }

  v13 = objc_loadWeakRetained(&self->_statusBar);
  v14 = [v13 visualProvider];
  v15 = [v14 removalAnimationForDisplayItemWithIdentifier:self->_identifier itemAnimation:v7];
LABEL_13:
  v21 = v15;

  v7 = v21;
LABEL_8:

  return v7;
}

- (BOOL)prepareAnimation:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);
  v6 = [WeakRetained animationContextId];

  v7 = [(STUIStatusBarDisplayItemState *)self _animationType];
  v8 = 0;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      [v4 setType:2];
      v14 = objc_loadWeakRetained(&self->_item);
      v15 = objc_loadWeakRetained(&self->_displayItem);
      [v14 prepareAnimation:v4 forDisplayItem:v15];

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __50__STUIStatusBarDisplayItemState_prepareAnimation___block_invoke_2;
      v24[3] = &unk_279D383A0;
      v24[4] = self;
      v25 = v6;
      [v4 addCompletionHandler:v24];
      [(STUIStatusBarDisplayItemState *)self setRemovingAnimation:v4];
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_11;
      }

      [v4 setType:3];
      v11 = objc_loadWeakRetained(&self->_item);
      v12 = objc_loadWeakRetained(&self->_displayItem);
      [v11 prepareAnimation:v4 forDisplayItem:v12];

      objc_initWeak(&location, v4);
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __50__STUIStatusBarDisplayItemState_prepareAnimation___block_invoke_3;
      v20 = &unk_279D383C8;
      v21 = self;
      objc_copyWeak(&v22, &location);
      [v4 addCompletionHandler:&v17];
      v13 = [(STUIStatusBarDisplayItemState *)self animations:v17];
      [v13 addObject:v4];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    v8 = 1;
    goto LABEL_11;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      v8 = 1;
      [v4 setType:1];
      v9 = objc_loadWeakRetained(&self->_item);
      v10 = objc_loadWeakRetained(&self->_displayItem);
      [v9 prepareAnimation:v4 forDisplayItem:v10];

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __50__STUIStatusBarDisplayItemState_prepareAnimation___block_invoke;
      v26[3] = &unk_279D37E28;
      v26[4] = self;
      [v4 addCompletionHandler:v26];
      [(STUIStatusBarDisplayItemState *)self setAddingAnimation:v4];
    }
  }

  else
  {
    [v4 cancel];
    v8 = 0;
  }

LABEL_11:

  return v8;
}

void __50__STUIStatusBarDisplayItemState_prepareAnimation___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v5 = [WeakRetained animationContextId];

  if (a2 != 1 || !v5)
  {
    [*(a1 + 32) setRemovingAnimation:0];
    v8 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v8 setFloating:0];

    goto LABEL_6;
  }

  v6 = *(a1 + 40);
  [*(a1 + 32) setRemovingAnimation:0];
  v7 = objc_loadWeakRetained((*(a1 + 32) + 16));
  [v7 setFloating:0];

  if (v5 != v6)
  {
LABEL_6:
    v9 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v9 setContainerView:0];

    v10 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v10 setAlpha:1.0];

    v11 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v12 = *(MEMORY[0x277CBF2C0] + 16);
    v13[0] = *MEMORY[0x277CBF2C0];
    v13[1] = v12;
    v13[2] = *(MEMORY[0x277CBF2C0] + 32);
    [v11 setTransform:v13];
  }
}

void __50__STUIStatusBarDisplayItemState_prepareAnimation___block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) animations];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 removeObject:WeakRetained];
}

- (BOOL)isCurrentPlacement:(id)a3
{
  v4 = a3;
  v5 = [(STUIStatusBarDisplayItemState *)self currentPlacementState];
  v6 = [v5 placement];
  v7 = [v6 priority];
  v8 = [v4 priority];

  v9 = v7 == v8 && [(STUIStatusBarDisplayItemState *)self isEnabled];
  return v9;
}

- (int64_t)priority
{
  if (![(STUIStatusBarDisplayItemState *)self isEnabled])
  {
    return 0;
  }

  v3 = [(STUIStatusBarDisplayItemState *)self currentPlacementState];
  v4 = [v3 priority];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(STUIStatusBarDisplayItemState *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(STUIStatusBarDisplayItemState *)self identifier];
  v5 = [v3 appendObject:v4 withName:@"identifier"];

  v6 = [v3 appendBool:-[STUIStatusBarDisplayItemState isEnabled](self withName:{"isEnabled"), @"enabled"}];
  v7 = [(STUIStatusBarDisplayItemState *)self enabilityStatus];
  if (v7 > 3)
  {
    v8 = @"(unknown)";
  }

  else
  {
    v8 = off_279D383E8[v7];
  }

  [v3 appendString:v8 withName:@"enabilityStatus"];
  v9 = [(STUIStatusBarDisplayItemState *)self visibilityStatus];
  if (v9 > 3)
  {
    v10 = @"(unknown)";
  }

  else
  {
    v10 = off_279D38408[v9];
  }

  [v3 appendString:v10 withName:@"visibilityStatus"];
  v11 = [v3 appendBool:-[STUIStatusBarDisplayItemState isDataEnabled](self withName:{"isDataEnabled"), @"dataEnabled"}];
  v12 = [v3 appendBool:-[STUIStatusBarDisplayItemState isFloating](self withName:{"isFloating"), @"floating"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarDisplayItemState *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarDisplayItemState *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4
{
  v4 = a4;
  v6 = [(STUIStatusBarDisplayItemState *)self succinctDescriptionBuilder];
  [v6 setUseDebugDescription:v4];
  v7 = [(STUIStatusBarDisplayItemState *)self currentPlacementState];
  v8 = [v6 appendObject:v7 withName:@"currentPlacementState" skipIfNil:1];

  return v6;
}

- (STUIStatusBar)statusBar
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);

  return WeakRetained;
}

- (STUIStatusBarItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

@end