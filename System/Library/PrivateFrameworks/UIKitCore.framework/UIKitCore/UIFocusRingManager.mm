@interface UIFocusRingManager
+ (BOOL)focusRingAvailableInBehavior:(uint64_t)behavior;
+ (id)_currentFocusItemForClient:(id)client;
+ (id)manager;
+ (void)_removeActiveFocusLayers;
+ (void)_updateActiveFocusLayers;
+ (void)moveRingToFocusItem:(id)item forClient:(id)client;
+ (void)removeRingFromFocusItem:(id)item forClient:(id)client;
+ (void)updateRingForFocusItem:(id)item forClient:(id)client;
- (BOOL)_focusItemWantsFocusRing:(id)ring forClient:(id)client;
- (id)_focusRingPathForItem:(id)item inView:(id)view;
- (id)_viewToAddFocusLayerForItem:(id)item forClient:(id)client;
- (id)activeFocusLayersForClient:(id)client;
- (id)activeFocusLayersToItemsForClient:(id)client;
- (id)description;
- (void)_addFocusLayer:(id)layer toView:(id)view forItem:(id)item;
- (void)_removeActiveFocusLayersForClient:(id)client;
- (void)_updateFocusLayerFrames;
- (void)addFocusRingForItem:(id)item forClient:(id)client;
- (void)addParentFocusRingForItem:(id)item forClient:(id)client;
- (void)addSelectedFocusRingForItem:(id)item forClient:(id)client;
- (void)addSelectedParentFocusRingForItem:(id)item forClient:(id)client;
@end

@implementation UIFocusRingManager

+ (id)manager
{
  if (_MergedGlobals_1228 != -1)
  {
    dispatch_once(&_MergedGlobals_1228, &__block_literal_global_439);
  }

  v3 = qword_1ED49FBA0;

  return v3;
}

- (void)_updateFocusLayerFrames
{
  v53 = *MEMORY[0x1E69E9840];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  focusRingStateForClient = [(UIFocusRingManager *)self focusRingStateForClient];
  allValues = [focusRingStateForClient allValues];

  obj = allValues;
  v37 = [allValues countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v37)
  {
    v36 = *v48;
    v4 = *MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F060] + 8);
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v48 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v47 + 1) + 8 * i);
        activeFocusLayersToItems = [v7 activeFocusLayersToItems];
        v9 = [activeFocusLayersToItems copy];

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        keyEnumerator = [v9 keyEnumerator];
        v10 = [keyEnumerator countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (!v10)
        {
          clientID = keyEnumerator;
          goto LABEL_35;
        }

        v11 = v10;
        v38 = v7;
        v39 = i;
        v40 = 0;
        v12 = *v44;
        while (2)
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v44 != v12)
            {
              objc_enumerationMutation(keyEnumerator);
            }

            v14 = *(*(&v43 + 1) + 8 * j);
            superlayer = [v14 superlayer];

            if (!superlayer)
            {
              continue;
            }

            v16 = [v9 objectForKey:v14];
            v17 = _UIFocusEnvironmentContainingView(v16);
            v18 = v17;
            if (!v16)
            {

              i = v39;
              goto LABEL_34;
            }

            [v17 alpha];
            if (v19 == 0.0)
            {
              [v18 alpha];
              *&v20 = v20;
            }

            else
            {
              [v14 opacity];
              v21 = *&v20;
              LODWORD(v20) = 1.0;
              if (v21 != 0.0)
              {
                goto LABEL_17;
              }
            }

            [v14 setOpacity:v20];
LABEL_17:
            superlayer2 = [v14 superlayer];
            v23 = CALayerGetDelegate();

            if ((_IsKindOfUIView(v23) & 1) == 0)
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler handleFailureInMethod:a2 object:self file:@"UIFocusRingManager.m" lineNumber:396 description:@"Internal inconsistency: the layer owning the focus ring is no longer associated with a UIView."];
            }

            v24 = v23;
            _window = [v24 _window];

            if (_window)
            {
              v26 = v11;
              v27 = v12;
              v28 = [(UIFocusRingManager *)self _focusRingPathForItem:v16 inView:v24];
              [v28 bounds];
              if (v4 != v30 || v5 != v29)
              {
                [MEMORY[0x1E6979518] setDisableActions:1];
                [v14 setPath:{objc_msgSend(v28, "CGPath")}];
                [MEMORY[0x1E6979518] setDisableActions:0];
              }

              v12 = v27;
              v11 = v26;
            }

            else
            {
              v40 = 1;
            }

            if (!_window)
            {
              goto LABEL_30;
            }
          }

          v11 = [keyEnumerator countByEnumeratingWithState:&v43 objects:v51 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }

LABEL_30:

        i = v39;
        if ((v40 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_34:
        clientID = [v38 clientID];
        [(UIFocusRingManager *)self _removeActiveFocusLayersForClient:clientID];
LABEL_35:

LABEL_36:
      }

      v37 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v37);
  }
}

+ (BOOL)focusRingAvailableInBehavior:(uint64_t)behavior
{
  v2 = a2;
  objc_opt_self();
  focusRingVisibility = [v2 focusRingVisibility];

  return focusRingVisibility == 1;
}

void __29__UIFocusRingManager_manager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1ED49FBA0;
  qword_1ED49FBA0 = v0;
}

- (id)activeFocusLayersToItemsForClient:(id)client
{
  clientCopy = client;
  v5 = [(NSMutableDictionary *)self->_focusRingStateForClient objectForKeyedSubscript:clientCopy];
  activeFocusLayersToItems = [v5 activeFocusLayersToItems];

  if (!activeFocusLayersToItems)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v8 = [(NSMutableDictionary *)self->_focusRingStateForClient objectForKeyedSubscript:clientCopy];
    [v8 setActiveFocusLayersToItems:weakToWeakObjectsMapTable];
  }

  v9 = [(NSMutableDictionary *)self->_focusRingStateForClient objectForKeyedSubscript:clientCopy];
  activeFocusLayersToItems2 = [v9 activeFocusLayersToItems];

  return activeFocusLayersToItems2;
}

- (id)activeFocusLayersForClient:(id)client
{
  clientCopy = client;
  v5 = [(NSMutableDictionary *)self->_focusRingStateForClient objectForKeyedSubscript:clientCopy];
  activeFocusLayers = [v5 activeFocusLayers];

  if (!activeFocusLayers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v8 = [(NSMutableDictionary *)self->_focusRingStateForClient objectForKeyedSubscript:clientCopy];
    [v8 setActiveFocusLayers:array];
  }

  v9 = [(NSMutableDictionary *)self->_focusRingStateForClient objectForKeyedSubscript:clientCopy];
  activeFocusLayers2 = [v9 activeFocusLayers];

  return activeFocusLayers2;
}

+ (void)moveRingToFocusItem:(id)item forClient:(id)client
{
  itemCopy = item;
  clientCopy = client;
  manager = [self manager];
  focusRingStateForClient = [manager focusRingStateForClient];

  if (!focusRingStateForClient)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [manager setFocusRingStateForClient:dictionary];
  }

  focusRingStateForClient2 = [manager focusRingStateForClient];
  v12 = [focusRingStateForClient2 objectForKeyedSubscript:clientCopy];

  if (!v12)
  {
    focusRingStateForClient3 = [manager focusRingStateForClient];
    v14 = [[UIFocusRingClientState alloc] initWithClientID:clientCopy];
    [focusRingStateForClient3 setObject:v14 forKey:clientCopy];
  }

  focusRingStateForClient4 = [manager focusRingStateForClient];
  v16 = [focusRingStateForClient4 objectForKey:clientCopy];
  [v16 setCurrentFocusItem:itemCopy];

  [manager _removeActiveFocusLayersForClient:clientCopy];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v17 = _UIFocusBehaviorForEnvironment(itemCopy);
  LODWORD(v16) = [v17 supportsParentFocusRings];

  if (v16)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __52__UIFocusRingManager_moveRingToFocusItem_forClient___block_invoke;
    v18[3] = &unk_1E7119FF8;
    v21 = &v22;
    v19 = manager;
    v20 = clientCopy;
    _UIFocusEnvironmentEnumerateAncestorEnvironments(itemCopy, v18);
  }

  if (*(v23 + 24) == 1)
  {
    [manager addSelectedFocusRingForItem:itemCopy forClient:clientCopy];
  }

  else
  {
    [manager addFocusRingForItem:itemCopy forClient:clientCopy];
  }

  [manager _updateFocusLayerFrames];
  _Block_object_dispose(&v22, 8);
}

void __52__UIFocusRingManager_moveRingToFocusItem_forClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = _UIFocusItemSafeCast(a2);
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 _focusRingManagerShouldDrawFocusRingWhenChildrenFocused])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      [*(a1 + 32) addSelectedParentFocusRingForItem:v6 forClient:*(a1 + 40)];
    }

    else
    {
      v5 = [v6 canBecomeFocused];
      v4 = v6;
      if (!v5)
      {
        goto LABEL_8;
      }

      [*(a1 + 32) addParentFocusRingForItem:v6 forClient:*(a1 + 40)];
    }

    v4 = v6;
  }

LABEL_8:
}

+ (void)removeRingFromFocusItem:(id)item forClient:(id)client
{
  v32 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  clientCopy = client;
  manager = [self manager];
  focusRingStateForClient = [manager focusRingStateForClient];
  if (focusRingStateForClient && (v10 = focusRingStateForClient, [manager focusRingStateForClient], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKey:", clientCopy), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "currentFocusItem"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v11, v10, v13 == itemCopy))
  {
    [manager _removeActiveFocusLayersForClient:clientCopy];
  }

  else
  {
    v14 = [manager activeFocusLayersForClient:clientCopy];
    v15 = [v14 count];

    if (v15)
    {
      v16 = [manager activeFocusLayersForClient:clientCopy];
      v17 = [v16 copy];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v28;
        do
        {
          v22 = 0;
          do
          {
            if (*v28 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v27 + 1) + 8 * v22);
            v24 = [manager activeFocusLayersToItemsForClient:{clientCopy, v27}];
            v25 = [v24 objectForKey:v23];

            if (!v25)
            {
              [v23 removeFromSuperlayer];
              v26 = [manager activeFocusLayersForClient:clientCopy];
              [v26 removeObject:v23];
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v20);
      }
    }
  }
}

+ (void)updateRingForFocusItem:(id)item forClient:(id)client
{
  itemCopy = item;
  v7 = [self _currentFocusItemForClient:client];
  v8 = [itemCopy isEqual:v7];

  if (v8)
  {
    manager = [self manager];
    [manager _updateFocusLayerFrames];
  }
}

- (void)addFocusRingForItem:(id)item forClient:(id)client
{
  itemCopy = item;
  clientCopy = client;
  v7 = [(UIFocusRingManager *)self _viewToAddFocusLayerForItem:itemCopy forClient:clientCopy];
  if (v7)
  {
    v8 = [objc_opt_class() shapeLayerClassForItem:itemCopy client:clientCopy];
    traitCollection = [v7 traitCollection];
    v10 = [v8 focusLayerForUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

    [(UIFocusRingManager *)self _addFocusLayer:v10 toView:v7 forItem:itemCopy];
    v11 = [(UIFocusRingManager *)self activeFocusLayersToItemsForClient:clientCopy];
    [v11 setObject:itemCopy forKey:v10];

    v12 = [(UIFocusRingManager *)self activeFocusLayersForClient:clientCopy];
    [v12 addObject:v10];
  }
}

- (void)addParentFocusRingForItem:(id)item forClient:(id)client
{
  itemCopy = item;
  clientCopy = client;
  v7 = [(UIFocusRingManager *)self _viewToAddFocusLayerForItem:itemCopy forClient:clientCopy];
  if (v7)
  {
    v8 = [objc_opt_class() shapeLayerClassForItem:itemCopy client:clientCopy];
    traitCollection = [v7 traitCollection];
    v10 = [v8 parentLayerForUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

    [(UIFocusRingManager *)self _addFocusLayer:v10 toView:v7 forItem:itemCopy];
    v11 = [(UIFocusRingManager *)self activeFocusLayersToItemsForClient:clientCopy];
    [v11 setObject:itemCopy forKey:v10];

    v12 = [(UIFocusRingManager *)self activeFocusLayersForClient:clientCopy];
    [v12 addObject:v10];
  }
}

- (void)addSelectedFocusRingForItem:(id)item forClient:(id)client
{
  itemCopy = item;
  clientCopy = client;
  v7 = [(UIFocusRingManager *)self _viewToAddFocusLayerForItem:itemCopy forClient:clientCopy];
  if (v7)
  {
    v8 = [objc_opt_class() shapeLayerClassForItem:itemCopy client:clientCopy];
    traitCollection = [v7 traitCollection];
    v10 = [v8 selectedLayerForUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

    layer = [v7 layer];
    [layer addSublayer:v10];

    v12 = [(UIFocusRingManager *)self activeFocusLayersToItemsForClient:clientCopy];
    [v12 setObject:itemCopy forKey:v10];

    v13 = [(UIFocusRingManager *)self activeFocusLayersForClient:clientCopy];
    [v13 addObject:v10];
  }
}

- (void)addSelectedParentFocusRingForItem:(id)item forClient:(id)client
{
  itemCopy = item;
  clientCopy = client;
  v7 = [(UIFocusRingManager *)self _viewToAddFocusLayerForItem:itemCopy forClient:clientCopy];
  if (v7)
  {
    v8 = [objc_opt_class() shapeLayerClassForItem:itemCopy client:clientCopy];
    traitCollection = [v7 traitCollection];
    v10 = [v8 selectedParentLayerForUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

    [(UIFocusRingManager *)self _addFocusLayer:v10 toView:v7 forItem:itemCopy];
    v11 = [(UIFocusRingManager *)self activeFocusLayersToItemsForClient:clientCopy];
    [v11 setObject:itemCopy forKey:v10];

    v12 = [(UIFocusRingManager *)self activeFocusLayersForClient:clientCopy];
    [v12 addObject:v10];
  }
}

- (void)_addFocusLayer:(id)layer toView:(id)view forItem:(id)item
{
  layerCopy = layer;
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    tintColor = [viewCopy tintColor];
    [layerCopy _updateWithTintColor:tintColor];
  }

  layer = [viewCopy layer];
  [layer addSublayer:layerCopy];
}

- (void)_removeActiveFocusLayersForClient:(id)client
{
  v3 = [(UIFocusRingManager *)self activeFocusLayersForClient:client];
  if ([v3 count])
  {
    [v3 makeObjectsPerformSelector:sel_removeFromSuperlayer];
    [v3 removeAllObjects];
  }
}

- (BOOL)_focusItemWantsFocusRing:(id)ring forClient:(id)client
{
  ringCopy = ring;
  v5 = _UIFocusBehaviorForEnvironment(ringCopy);
  focusRingVisibility = [v5 focusRingVisibility];

  if ((focusRingVisibility - 2) >= 2)
  {
    v8 = focusRingVisibility == 1;
  }

  else
  {
    v7 = _UIFocusItemHaloEffect(ringCopy);
    v8 = v7 != 0;
  }

  return v8;
}

- (id)_viewToAddFocusLayerForItem:(id)item forClient:(id)client
{
  itemCopy = item;
  clientCopy = client;
  if (itemCopy && [(UIFocusRingManager *)self _focusItemWantsFocusRing:itemCopy forClient:clientCopy])
  {
    if (!_IsKindOfUIView(itemCopy) || ([itemCopy _containerViewForLegacyFocusRing], (superview = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v9 = _UIFocusEnvironmentContainingView(itemCopy);
      [(UIView *)v9 _addGeometryChangeObserver:?];
      superview = [v9 superview];
    }
  }

  else
  {
    superview = 0;
  }

  return superview;
}

- (id)_focusRingPathForItem:(id)item inView:(id)view
{
  itemCopy = item;
  viewCopy = view;
  v7 = _UIFocusItemHaloEffect(itemCopy);
  v8 = v7;
  if (v7)
  {
    _shape = [v7 _shape];
    v10 = _UIFocusEnvironmentContainingView(itemCopy);
    coordinateSpace = [v10 coordinateSpace];

    v12 = [_shape shapeConvertedFromCoordinateSpace:coordinateSpace toCoordinateSpace:viewCopy];

    outline = [v12 outline];

    goto LABEL_14;
  }

  coordinateSpace2 = [viewCopy coordinateSpace];
  v15 = _UIFocusItemFrameInCoordinateSpace(itemCopy, coordinateSpace2);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  +[UIFocusRingStyle cornerRadius];
  v23 = v22;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    layer = itemCopy;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = 0;
LABEL_12:
      v29 = [UIBezierPath bezierPathWithRoundedRect:v15 cornerRadius:v17, v19, v21, v23];
      goto LABEL_13;
    }

    layer = [itemCopy layer];
  }

  v12 = layer;
  if (!layer)
  {
    goto LABEL_12;
  }

  [layer cornerRadius];
  if (v25 <= 0.0)
  {
    goto LABEL_12;
  }

  [v12 cornerRadius];
  v23 = v26;
  cornerCurve = [v12 cornerCurve];
  v28 = [cornerCurve isEqualToString:*MEMORY[0x1E69796E8]];

  if (!v28)
  {
    goto LABEL_12;
  }

  v29 = [UIBezierPath _bezierPathWithPillRect:v15 cornerRadius:v17, v19, v21, v23];
LABEL_13:
  outline = v29;
LABEL_14:

  return outline;
}

+ (id)_currentFocusItemForClient:(id)client
{
  clientCopy = client;
  manager = [self manager];
  focusRingStateForClient = [manager focusRingStateForClient];
  v7 = [focusRingStateForClient objectForKey:clientCopy];

  currentFocusItem = [v7 currentFocusItem];

  return currentFocusItem;
}

+ (void)_removeActiveFocusLayers
{
  manager = [self manager];
  [manager _removeActiveFocusLayersForClient:@"FocusEngineClient"];
}

+ (void)_updateActiveFocusLayers
{
  manager = [self manager];
  v3 = [self _currentFocusItemForClient:@"FocusEngineClient"];
  if (v3)
  {
    [self moveRingToFocusItem:v3];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  focusRingStateForClient = [(UIFocusRingManager *)self focusRingStateForClient];
  v7 = [v3 stringWithFormat:@"<%@: %p, state: %@>", v5, self, focusRingStateForClient];

  return v7;
}

@end