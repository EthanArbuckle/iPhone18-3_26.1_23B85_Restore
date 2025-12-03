@interface _UIStatusBarDisplayItemState
+ (id)stateForDisplayItemWithIdentifier:(id)identifier statusBar:(id)bar;
+ (void)setupRelationsBetweenDisplayItemStates:(id)states visualProvider:(id)provider;
- (BOOL)_resolveDependentItemStatesWithBlock:(id)block;
- (BOOL)_updatePlacementWithRecursionBlock:(id)block;
- (BOOL)_updateToNextPlacementStateIfNeeded;
- (BOOL)isCurrentPlacement:(id)placement;
- (BOOL)isEnabled;
- (BOOL)isEnabledIgnoringAnimations;
- (BOOL)prepareAnimation:(id)animation;
- (BOOL)updatePlacement;
- (NSArray)potentialPlacementRegionIdentifiers;
- (_UIStatusBar)statusBar;
- (_UIStatusBarDisplayItem)displayItem;
- (_UIStatusBarDisplayItemPlacementState)currentPlacementState;
- (_UIStatusBarItem)item;
- (id)_animationWithUpdateAnimation:(id)animation;
- (id)_effectiveStyleAttributesFromStyleAttributes:(id)attributes data:(id)data styleAttributesChanged:(BOOL *)changed;
- (id)_updateForItem:(id)item data:(id)data styleAttributes:(id)attributes;
- (id)_updateForUpdatedData:(id)data updatedStyleAttributes:(id)attributes updatedEnability:(id)enability;
- (id)description;
- (id)placementStateForPlacement:(id)placement;
- (id)updateWithData:(id)data styleAttributes:(id)attributes;
- (int64_t)_animationType;
- (int64_t)priority;
- (void)_cancelObsoleteAnimations;
- (void)_updateStatuses;
- (void)addPlacement:(id)placement inRegion:(id)region;
- (void)prepareForDataUpdate;
- (void)updateToNextEnabledPlacement;
@end

@implementation _UIStatusBarDisplayItemState

+ (id)stateForDisplayItemWithIdentifier:(id)identifier statusBar:(id)bar
{
  identifierCopy = identifier;
  barCopy = bar;
  v8 = objc_alloc_init(self);
  v9 = *(v8 + 3);
  *(v8 + 3) = identifierCopy;
  v10 = identifierCopy;

  objc_storeWeak(v8 + 4, barCopy);
  array = [MEMORY[0x1E695DF70] array];
  v12 = *(v8 + 6);
  *(v8 + 6) = array;

  v13 = [MEMORY[0x1E695DFA8] set];
  v14 = *(v8 + 17);
  *(v8 + 17) = v13;

  v15 = [_UIStatusBarItem itemIdentifierForDisplayItemIdentifier:v10];
  v16 = [barCopy itemWithIdentifier:v15];

  objc_storeWeak(v8 + 5, v16);
  WeakRetained = objc_loadWeakRetained(v8 + 5);
  v18 = [WeakRetained displayItemForIdentifier:v10];

  objc_storeWeak(v8 + 2, v18);

  return v8;
}

- (BOOL)isEnabled
{
  if (self->_dataUpdateStatus != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemState.m" lineNumber:199 description:{@"%@ should have been updated before checking if it's enabled (instead of %ld)", self, self->_dataUpdateStatus}];
  }

  if ([(_UIStatusBarDisplayItemState *)self hasRunningAnimations]|| self->_floating)
  {
    return 1;
  }

  return [(_UIStatusBarDisplayItemState *)self isEnabledIgnoringAnimations];
}

- (BOOL)isEnabledIgnoringAnimations
{
  if (!self->_dataEnabled)
  {
    return 0;
  }

  currentPlacementState = [(_UIStatusBarDisplayItemState *)self currentPlacementState];

  if (!currentPlacementState)
  {
    return 0;
  }

  currentPlacementState2 = [(_UIStatusBarDisplayItemState *)self currentPlacementState];
  isEnabled = [currentPlacementState2 isEnabled];

  return isEnabled;
}

- (_UIStatusBarDisplayItemPlacementState)currentPlacementState
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

- (void)updateToNextEnabledPlacement
{
  ++self->_currentPlacementStateIndex;
    ;
  }
}

- (BOOL)_updateToNextPlacementStateIfNeeded
{
  currentPlacementState = [(_UIStatusBarDisplayItemState *)self currentPlacementState];
  if (currentPlacementState)
  {
    v4 = currentPlacementState;
    currentPlacementState2 = [(_UIStatusBarDisplayItemState *)self currentPlacementState];
    isEnabled = [currentPlacementState2 isEnabled];

    if (isEnabled)
    {
      LOBYTE(currentPlacementState) = 0;
    }

    else
    {
      ++self->_currentPlacementStateIndex;
      LOBYTE(currentPlacementState) = 1;
    }
  }

  return currentPlacementState;
}

- (void)addPlacement:(id)placement inRegion:(id)region
{
  v6 = [_UIStatusBarDisplayItemPlacementState stateForDisplayItemPlacement:placement region:region];
  placementStates = self->_placementStates;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __54___UIStatusBarDisplayItemState_addPlacement_inRegion___block_invoke;
  v18 = &unk_1E7121FA0;
  v8 = v6;
  v19 = v8;
  v9 = [(NSMutableArray *)placementStates indexOfObjectPassingTest:&v15];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_placementStates addObject:v8];
  }

  else
  {
    v10 = v9;
    priority = [v8 priority];
    v12 = [(NSMutableArray *)self->_placementStates objectAtIndexedSubscript:v10];
    priority2 = [v12 priority];

    if (priority == priority2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemState.m" lineNumber:257 description:{@"2 placements have the same priority for display item identifier %@", self->_identifier, v15, v16, v17, v18}];
    }

    [(NSMutableArray *)self->_placementStates insertObject:v8 atIndex:v10];
  }
}

- (id)placementStateForPlacement:(id)placement
{
  v18 = *MEMORY[0x1E69E9840];
  placementCopy = placement;
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
        placement = [v9 placement];
        v11 = [placement isEqual:placementCopy];

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

+ (void)setupRelationsBetweenDisplayItemStates:(id)states visualProvider:(id)provider
{
  statesCopy = states;
  providerCopy = provider;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86___UIStatusBarDisplayItemState_setupRelationsBetweenDisplayItemStates_visualProvider___block_invoke;
  v11[3] = &unk_1E7121FC8;
  v14 = a2;
  selfCopy = self;
  v12 = providerCopy;
  v13 = statesCopy;
  v9 = statesCopy;
  v10 = providerCopy;
  [v9 enumerateKeysAndObjectsUsingBlock:v11];
}

- (void)prepareForDataUpdate
{
  self->_dataUpdateStatus = 0;
  self->_currentPlacementStateIndex = 0;
  self->_enabilityStatus = 0;
  self->_visibilityStatus = 0;
}

- (void)_updateStatuses
{
  isEnabledIgnoringAnimations = [(_UIStatusBarDisplayItemState *)self isEnabledIgnoringAnimations];
  v4 = isEnabledIgnoringAnimations;
  wasEnabled = self->_wasEnabled;
  v6 = !isEnabledIgnoringAnimations;
  if (wasEnabled || v6)
  {
    v8 = isEnabledIgnoringAnimations | ~wasEnabled;
    v9 = wasEnabled & isEnabledIgnoringAnimations;
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

  [(_UIStatusBarDisplayItemState *)self setEnabilityStatus:v7];
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

  [(_UIStatusBarDisplayItemState *)self setVisibilityStatus:v15];
}

- (BOOL)_resolveDependentItemStatesWithBlock:(id)block
{
  v29 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  currentPlacementState = [(_UIStatusBarDisplayItemState *)self currentPlacementState];
  relations = [currentPlacementState relations];

  v7 = [relations countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(relations);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        itemStates = [v11 itemStates];
        v13 = [itemStates countByEnumeratingWithState:&v19 objects:v27 count:16];
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
                objc_enumerationMutation(itemStates);
              }

              if (!blockCopy[2](blockCopy, *(*(&v19 + 1) + 8 * j)))
              {

                v17 = 0;
                goto LABEL_19;
              }
            }

            v14 = [itemStates countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [relations countByEnumeratingWithState:&v23 objects:v28 count:16];
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

- (BOOL)_updatePlacementWithRecursionBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_displayItem);
  -[_UIStatusBarDisplayItemState setFloating:](self, "setFloating:", [WeakRetained floating]);

  if ([(_UIStatusBarDisplayItemState *)self floating])
  {
    self->_currentPlacementStateIndex = -1;
LABEL_5:
    [(_UIStatusBarDisplayItemState *)self _updateStatuses];
    v7 = 1;
    goto LABEL_6;
  }

  removingAnimation = [(_UIStatusBarDisplayItemState *)self removingAnimation];

  if (removingAnimation)
  {
    self->_currentPlacementStateIndex = self->_previousPlacementStateIndex;
    [(_UIStatusBarDisplayItemState *)self _resolveDependentItemStatesWithBlock:blockCopy];
    goto LABEL_5;
  }

  currentPlacementState = [(_UIStatusBarDisplayItemState *)self currentPlacementState];

  if (!currentPlacementState)
  {
    goto LABEL_5;
  }

  while (1)
  {
    currentPlacementState2 = [(_UIStatusBarDisplayItemState *)self currentPlacementState];
    canBeEnabled = [currentPlacementState2 canBeEnabled];

    if (canBeEnabled)
    {
      if (![(_UIStatusBarDisplayItemState *)self _resolveDependentItemStatesWithBlock:blockCopy])
      {
        break;
      }
    }

    if (![(_UIStatusBarDisplayItemState *)self _updateToNextPlacementStateIfNeeded])
    {
      goto LABEL_5;
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (BOOL)updatePlacement
{
  if (self->_dataUpdateStatus != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemState.m" lineNumber:425 description:@"The item state should have been data updated before updating its placement"];
  }

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

  return [(_UIStatusBarDisplayItemState *)self _updatePlacementWithRecursionBlock:&__block_literal_global_532];
}

- (id)updateWithData:(id)data styleAttributes:(id)attributes
{
  dataCopy = data;
  attributesCopy = attributes;
  dataUpdateStatus = self->_dataUpdateStatus;
  if ((dataUpdateStatus & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemState.m" lineNumber:446 description:@"The update status must be needsUpdate or updated"];

    dataUpdateStatus = self->_dataUpdateStatus;
  }

  if (dataUpdateStatus == 2)
  {
    array = [MEMORY[0x1E695DEC8] array];
    goto LABEL_25;
  }

  self->_dataUpdateStatus = 1;
  array2 = [MEMORY[0x1E695DF70] array];
  WeakRetained = objc_loadWeakRetained(&self->_displayItem);
  clearPreviousTokenDisablementIfNecessary = [WeakRetained clearPreviousTokenDisablementIfNecessary];

  if (clearPreviousTokenDisablementIfNecessary)
  {
    [(_UIStatusBarDisplayItemState *)self setWasEnabled:0];
  }

  else
  {
    v14 = objc_loadWeakRetained(&self->_displayItem);
    -[_UIStatusBarDisplayItemState setWasEnabled:](self, "setWasEnabled:", [v14 isEnabled]);
  }

  v15 = objc_loadWeakRetained(&self->_displayItem);
  -[_UIStatusBarDisplayItemState setWasVisible:](self, "setWasVisible:", [v15 visible]);

  [(_UIStatusBarDisplayItemState *)self setPreviousPlacementStateIndex:[(_UIStatusBarDisplayItemState *)self currentPlacementStateIndex]];
  v16 = objc_loadWeakRetained(&self->_displayItem);
  -[_UIStatusBarDisplayItemState setFloating:](self, "setFloating:", [v16 floating]);

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __63___UIStatusBarDisplayItemState_updateWithData_styleAttributes___block_invoke;
  v42[3] = &unk_1E7122010;
  v17 = dataCopy;
  v43 = v17;
  v18 = attributesCopy;
  v44 = v18;
  v19 = array2;
  v45 = v19;
  if ([(_UIStatusBarDisplayItemState *)self _updatePlacementWithRecursionBlock:v42])
  {
    v20 = objc_loadWeakRetained(&self->_item);
    v21 = objc_loadWeakRetained(&self->_displayItem);
    v22 = objc_loadWeakRetained(&self->_statusBar);
    currentAggregatedData = [v22 currentAggregatedData];
    -[_UIStatusBarDisplayItemState setDataEnabled:](self, "setDataEnabled:", [v20 canEnableDisplayItem:v21 fromData:currentAggregatedData]);

    [(_UIStatusBarDisplayItemState *)self _updateStatuses];
    enabilityStatus = [(_UIStatusBarDisplayItemState *)self enabilityStatus];
    switch(enabilityStatus)
    {
      case 1:
        v30 = objc_loadWeakRetained(&self->_item);
        v29 = [(_UIStatusBarDisplayItemState *)self _updateForItem:v30 data:v17 styleAttributes:v18];

        if (v29)
        {
          goto LABEL_18;
        }

        break;
      case 3:
        v29 = [(_UIStatusBarDisplayItemState *)self _updateForUpdatedData:0 updatedStyleAttributes:0 updatedEnability:MEMORY[0x1E695E110]];
        if (!v29)
        {
          break;
        }

        goto LABEL_18;
      case 2:
        v25 = objc_loadWeakRetained(&self->_statusBar);
        currentAggregatedData2 = [v25 currentAggregatedData];
        v27 = objc_loadWeakRetained(&self->_statusBar);
        styleAttributes = [v27 styleAttributes];
        v29 = [(_UIStatusBarDisplayItemState *)self _updateForUpdatedData:currentAggregatedData2 updatedStyleAttributes:styleAttributes updatedEnability:MEMORY[0x1E695E118]];

        if (!v29)
        {
          break;
        }

LABEL_18:
        currentPlacementState = [(_UIStatusBarDisplayItemState *)self currentPlacementState];
        placement = [currentPlacementState placement];
        itemInfo = [placement itemInfo];
        [v29 setPlacementInfo:itemInfo];

        v34 = objc_loadWeakRetained(&self->_item);
        v35 = objc_loadWeakRetained(&self->_displayItem);
        v36 = [v34 _applyUpdate:v29 toDisplayItem:v35];

        v37 = objc_loadWeakRetained(&self->_displayItem);
        -[_UIStatusBarDisplayItemState setDataEnabled:](self, "setDataEnabled:", [v37 isEnabled]);

LABEL_21:
        [(_UIStatusBarDisplayItemState *)self _updateStatuses];
        [(_UIStatusBarDisplayItemState *)self _cancelObsoleteAnimations];
        v38 = [(_UIStatusBarDisplayItemState *)self _animationWithUpdateAnimation:v36];

        if (v38)
        {
          identifier = [(_UIStatusBarDisplayItemState *)self identifier];
          [v38 setDisplayItemIdentifier:identifier];

          [v19 addObject:v38];
        }

        *&self->_dataUpdateStatus = xmmword_18A65B690;
        self->_preferredPlacementStateIndex = self->_currentPlacementStateIndex;
        array = v19;

        goto LABEL_24;
      default:
        v29 = 0;
        break;
    }

    v36 = 0;
    goto LABEL_21;
  }

  self->_dataUpdateStatus = 0;
  array = MEMORY[0x1E695E0F0];
LABEL_24:

LABEL_25:

  return array;
}

- (id)_updateForItem:(id)item data:(id)data styleAttributes:(id)attributes
{
  v28 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  dataCopy = data;
  attributesCopy = attributes;
  needsUpdate = [itemCopy needsUpdate];
  if (dataCopy)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    dependentEntryKeys = [itemCopy dependentEntryKeys];
    v13 = [dependentEntryKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(dependentEntryKeys);
        }

        v17 = [dataCopy valueForKey:*(*(&v23 + 1) + 8 * v16)];

        if (v17)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [dependentEntryKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      selfCopy3 = self;
      v19 = dataCopy;
      if (!attributesCopy)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

LABEL_10:
  }

  if (attributesCopy)
  {
    selfCopy3 = self;
    v19 = 0;
LABEL_14:
    v20 = attributesCopy;
LABEL_18:
    v21 = [(_UIStatusBarDisplayItemState *)selfCopy3 _updateForUpdatedData:v19 updatedStyleAttributes:v20 updatedEnability:0];
    goto LABEL_19;
  }

  if (needsUpdate)
  {
    selfCopy3 = self;
    v19 = 0;
LABEL_17:
    v20 = 0;
    goto LABEL_18;
  }

  v21 = 0;
LABEL_19:

  return v21;
}

- (id)_updateForUpdatedData:(id)data updatedStyleAttributes:(id)attributes updatedEnability:(id)enability
{
  dataCopy = data;
  enabilityCopy = enability;
  WeakRetained = _UIStatusBarItemUpdate;
  attributesCopy = attributes;
  v12 = objc_alloc_init(_UIStatusBarItemUpdate);
  [(_UIStatusBarItemUpdate *)v12 setDataChanged:dataCopy != 0];
  if (dataCopy)
  {
    [(_UIStatusBarItemUpdate *)v12 setData:dataCopy];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_statusBar);
    currentAggregatedData = [(__objc2_class *)WeakRetained currentAggregatedData];
    [(_UIStatusBarItemUpdate *)v12 setData:currentAggregatedData];
  }

  v19 = attributesCopy != 0;
  styleAttributes = attributesCopy;
  if (!attributesCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_statusBar);
    styleAttributes = [(__objc2_class *)WeakRetained styleAttributes];
  }

  data = [(_UIStatusBarItemUpdate *)v12 data];
  v16 = [(_UIStatusBarDisplayItemState *)self _effectiveStyleAttributesFromStyleAttributes:styleAttributes data:data styleAttributesChanged:&v19];

  [(_UIStatusBarItemUpdate *)v12 setStyleAttributes:v16];
  if (!attributesCopy)
  {
  }

  [(_UIStatusBarItemUpdate *)v12 setStyleAttributesChanged:v19];
  [(_UIStatusBarItemUpdate *)v12 setEnabilityChanged:enabilityCopy != 0];
  if (enabilityCopy)
  {
    bOOLValue = [enabilityCopy BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  [(_UIStatusBarItemUpdate *)v12 setEnabled:bOOLValue];

  return v12;
}

- (id)_effectiveStyleAttributesFromStyleAttributes:(id)attributes data:(id)data styleAttributesChanged:(BOOL *)changed
{
  attributesCopy = attributes;
  dataCopy = data;
  v10 = attributesCopy;
  currentPlacementState = [(_UIStatusBarDisplayItemState *)self currentPlacementState];
  region = [currentPlacementState region];

  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__186;
  v44 = __Block_byref_object_dispose__186;
  v45 = 0;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v37 = __105___UIStatusBarDisplayItemState__effectiveStyleAttributesFromStyleAttributes_data_styleAttributesChanged___block_invoke;
  v38 = &unk_1E7122038;
  v39 = &v40;
  effectiveStyle = [region effectiveStyle];
  if (effectiveStyle != 4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_statusBar);
    v15 = [WeakRetained styleAttributesForStyle:effectiveStyle];
    v37(v36, v15);
  }

  overriddenStyleAttributes = [region overriddenStyleAttributes];
  v37(v36, overriddenStyleAttributes);

  v17 = objc_loadWeakRetained(&self->_displayItem);
  overriddenStyleAttributes2 = [v17 overriddenStyleAttributes];
  v37(v36, overriddenStyleAttributes2);

  v19 = objc_loadWeakRetained(&self->_item);
  v20 = [v19 overriddenStyleAttributesForData:dataCopy identifier:self->_identifier];
  v37(v36, v20);

  v21 = objc_loadWeakRetained(&self->_statusBar);
  visualProvider = [v21 visualProvider];
  v23 = objc_opt_respondsToSelector();

  if (v23)
  {
    v24 = objc_loadWeakRetained(&self->_statusBar);
    visualProvider2 = [v24 visualProvider];
    identifier = [(_UIStatusBarDisplayItemState *)self identifier];
    v27 = [visualProvider2 overriddenStyleAttributesForDisplayItemWithIdentifier:identifier];
    v37(v36, v27);
  }

  overriddenStyleAttributes = self->_overriddenStyleAttributes;
  p_overriddenStyleAttributes = &self->_overriddenStyleAttributes;
  v30 = v41[5];
  v31 = overriddenStyleAttributes;
  v32 = v31;
  if (v30 == v31)
  {

    goto LABEL_13;
  }

  if (!v30 || !v31)
  {

    goto LABEL_12;
  }

  v33 = [(_UIStatusBarStyleAttributes *)v30 isEqual:v31];

  if (!v33)
  {
LABEL_12:
    objc_storeStrong(p_overriddenStyleAttributes, v41[5]);
    *changed = 1;
  }

LABEL_13:
  v34 = [v10 styleAttributesWithOverrides:v41[5]];

  _Block_object_dispose(&v40, 8);

  return v34;
}

- (int64_t)_animationType
{
  result = [(_UIStatusBarDisplayItemState *)self visibilityStatus];
  if (result)
  {
    if (result == 3)
    {
      return 2;
    }

    else if (result == 2)
    {
      if ([(_UIStatusBarDisplayItemState *)self enabilityStatus]== 2)
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

- (void)_cancelObsoleteAnimations
{
  _animationType = [(_UIStatusBarDisplayItemState *)self _animationType];
  if (_animationType == 2)
  {
    addingAnimation = [(_UIStatusBarDisplayItemState *)self addingAnimation];

    if (addingAnimation)
    {
      addingAnimation2 = [(_UIStatusBarDisplayItemState *)self addingAnimation];
      [addingAnimation2 cancel];

      [(_UIStatusBarDisplayItemState *)self setAddingAnimation:0];
    }

    animations = [(_UIStatusBarDisplayItemState *)self animations];
    v9 = [animations count];

    if (v9)
    {
      animations2 = [(_UIStatusBarDisplayItemState *)self animations];
      v12 = [animations2 copy];

      [v12 makeObjectsPerformSelector:sel_cancel];
      animations3 = [(_UIStatusBarDisplayItemState *)self animations];
      [animations3 removeAllObjects];
    }
  }

  else if (_animationType == 1)
  {
    removingAnimation = [(_UIStatusBarDisplayItemState *)self removingAnimation];

    if (removingAnimation)
    {
      removingAnimation2 = [(_UIStatusBarDisplayItemState *)self removingAnimation];
      [removingAnimation2 cancel];

      [(_UIStatusBarDisplayItemState *)self setRemovingAnimation:0];
    }
  }
}

- (id)_animationWithUpdateAnimation:(id)animation
{
  animationCopy = animation;
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);
  areAnimationsEnabled = [WeakRetained areAnimationsEnabled];

  if (!areAnimationsEnabled)
  {
    goto LABEL_7;
  }

  v7 = animationCopy;
  if (v7)
  {
    goto LABEL_8;
  }

  _animationType = [(_UIStatusBarDisplayItemState *)self _animationType];
  if (_animationType != 2)
  {
    if (_animationType == 1)
    {
      v9 = objc_loadWeakRetained(&self->_item);
      v7 = [v9 additionAnimationForDisplayItemWithIdentifier:self->_identifier];

      v10 = objc_loadWeakRetained(&self->_statusBar);
      visualProvider = [v10 visualProvider];
      v12 = objc_opt_respondsToSelector();

      if ((v12 & 1) == 0)
      {
        goto LABEL_8;
      }

      v13 = objc_loadWeakRetained(&self->_statusBar);
      visualProvider2 = [v13 visualProvider];
      v15 = [visualProvider2 additionAnimationForDisplayItemWithIdentifier:self->_identifier itemAnimation:v7];
      goto LABEL_13;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v17 = objc_loadWeakRetained(&self->_item);
  v7 = [v17 removalAnimationForDisplayItemWithIdentifier:self->_identifier];

  v18 = objc_loadWeakRetained(&self->_statusBar);
  visualProvider3 = [v18 visualProvider];
  v20 = objc_opt_respondsToSelector();

  if ((v20 & 1) == 0)
  {
    goto LABEL_8;
  }

  v13 = objc_loadWeakRetained(&self->_statusBar);
  visualProvider2 = [v13 visualProvider];
  v15 = [visualProvider2 removalAnimationForDisplayItemWithIdentifier:self->_identifier itemAnimation:v7];
LABEL_13:
  v21 = v15;

  v7 = v21;
LABEL_8:

  return v7;
}

- (BOOL)prepareAnimation:(id)animation
{
  animationCopy = animation;
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);
  animationContextId = [WeakRetained animationContextId];

  _animationType = [(_UIStatusBarDisplayItemState *)self _animationType];
  v8 = 0;
  if (_animationType > 1)
  {
    if (_animationType == 2)
    {
      [animationCopy setType:2];
      v14 = objc_loadWeakRetained(&self->_item);
      v15 = objc_loadWeakRetained(&self->_displayItem);
      [v14 prepareAnimation:animationCopy forDisplayItem:v15];

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __49___UIStatusBarDisplayItemState_prepareAnimation___block_invoke_2;
      v24[3] = &unk_1E7122060;
      v24[4] = self;
      v25 = animationContextId;
      [animationCopy addCompletionHandler:v24];
      [(_UIStatusBarDisplayItemState *)self setRemovingAnimation:animationCopy];
    }

    else
    {
      if (_animationType != 3)
      {
        goto LABEL_11;
      }

      [animationCopy setType:3];
      v11 = objc_loadWeakRetained(&self->_item);
      v12 = objc_loadWeakRetained(&self->_displayItem);
      [v11 prepareAnimation:animationCopy forDisplayItem:v12];

      objc_initWeak(&location, animationCopy);
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __49___UIStatusBarDisplayItemState_prepareAnimation___block_invoke_3;
      v20 = &unk_1E711B400;
      selfCopy = self;
      objc_copyWeak(&v22, &location);
      [animationCopy addCompletionHandler:&v17];
      v13 = [(_UIStatusBarDisplayItemState *)self animations:v17];
      [v13 addObject:animationCopy];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    v8 = 1;
    goto LABEL_11;
  }

  if (_animationType)
  {
    if (_animationType == 1)
    {
      v8 = 1;
      [animationCopy setType:1];
      v9 = objc_loadWeakRetained(&self->_item);
      v10 = objc_loadWeakRetained(&self->_displayItem);
      [v9 prepareAnimation:animationCopy forDisplayItem:v10];

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __49___UIStatusBarDisplayItemState_prepareAnimation___block_invoke;
      v26[3] = &unk_1E70F5DB8;
      v26[4] = self;
      [animationCopy addCompletionHandler:v26];
      [(_UIStatusBarDisplayItemState *)self setAddingAnimation:animationCopy];
    }
  }

  else
  {
    [animationCopy cancel];
    v8 = 0;
  }

LABEL_11:

  return v8;
}

- (BOOL)isCurrentPlacement:(id)placement
{
  placementCopy = placement;
  currentPlacementState = [(_UIStatusBarDisplayItemState *)self currentPlacementState];
  placement = [currentPlacementState placement];
  priority = [placement priority];
  priority2 = [placementCopy priority];

  v9 = priority == priority2 && [(_UIStatusBarDisplayItemState *)self isEnabled];
  return v9;
}

- (NSArray)potentialPlacementRegionIdentifiers
{
  v23 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  placementStates = self->_placementStates;
  v5 = _UIStatusBarGetPriorityComparator();
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
        region = [v12 region];
        isEnabled = [region isEnabled];

        if (isEnabled)
        {
          region2 = [v12 region];
          identifier = [region2 identifier];
          [array addObject:identifier];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return array;
}

- (int64_t)priority
{
  if (![(_UIStatusBarDisplayItemState *)self isEnabled])
  {
    return 0;
  }

  currentPlacementState = [(_UIStatusBarDisplayItemState *)self currentPlacementState];
  priority = [currentPlacementState priority];

  return priority;
}

- (id)description
{
  v16[7] = *MEMORY[0x1E69E9840];
  v15[0] = @"identifier";
  identifier = [(_UIStatusBarDisplayItemState *)self identifier];
  v16[0] = identifier;
  v15[1] = @"enabled";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_UIStatusBarDisplayItemState isEnabled](self, "isEnabled")}];
  v16[1] = v4;
  v15[2] = @"enabilityStatus";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_UIStatusBarDisplayItemState enabilityStatus](self, "enabilityStatus")}];
  v16[2] = v5;
  v15[3] = @"visibilityStatus";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_UIStatusBarDisplayItemState visibilityStatus](self, "visibilityStatus")}];
  v16[3] = v6;
  v15[4] = @"currentPlacementState";
  currentPlacementState = [(_UIStatusBarDisplayItemState *)self currentPlacementState];
  v8 = currentPlacementState;
  v9 = @"none";
  if (currentPlacementState)
  {
    v9 = currentPlacementState;
  }

  v16[4] = v9;
  v15[5] = @"dataEnabled";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_UIStatusBarDisplayItemState dataEnabled](self, "dataEnabled")}];
  v16[5] = v10;
  v15[6] = @"floating";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_UIStatusBarDisplayItemState floating](self, "floating")}];
  v16[6] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:7];
  v13 = [UIDescriptionBuilder descriptionForObject:self namesAndObjects:v12];

  return v13;
}

- (_UIStatusBarDisplayItem)displayItem
{
  WeakRetained = objc_loadWeakRetained(&self->_displayItem);

  return WeakRetained;
}

- (_UIStatusBar)statusBar
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBar);

  return WeakRetained;
}

- (_UIStatusBarItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

@end