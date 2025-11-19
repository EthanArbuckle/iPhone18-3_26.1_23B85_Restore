@interface UIFocusRingManager
+ (BOOL)focusRingAvailableInBehavior:(uint64_t)a1;
+ (id)_currentFocusItemForClient:(id)a3;
+ (id)manager;
+ (void)_removeActiveFocusLayers;
+ (void)_updateActiveFocusLayers;
+ (void)moveRingToFocusItem:(id)a3 forClient:(id)a4;
+ (void)removeRingFromFocusItem:(id)a3 forClient:(id)a4;
+ (void)updateRingForFocusItem:(id)a3 forClient:(id)a4;
- (BOOL)_focusItemWantsFocusRing:(id)a3 forClient:(id)a4;
- (id)_focusRingPathForItem:(id)a3 inView:(id)a4;
- (id)_viewToAddFocusLayerForItem:(id)a3 forClient:(id)a4;
- (id)activeFocusLayersForClient:(id)a3;
- (id)activeFocusLayersToItemsForClient:(id)a3;
- (id)description;
- (void)_addFocusLayer:(id)a3 toView:(id)a4 forItem:(id)a5;
- (void)_removeActiveFocusLayersForClient:(id)a3;
- (void)_updateFocusLayerFrames;
- (void)addFocusRingForItem:(id)a3 forClient:(id)a4;
- (void)addParentFocusRingForItem:(id)a3 forClient:(id)a4;
- (void)addSelectedFocusRingForItem:(id)a3 forClient:(id)a4;
- (void)addSelectedParentFocusRingForItem:(id)a3 forClient:(id)a4;
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
  v2 = [(UIFocusRingManager *)self focusRingStateForClient];
  v3 = [v2 allValues];

  obj = v3;
  v37 = [v3 countByEnumeratingWithState:&v47 objects:v52 count:16];
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
        v8 = [v7 activeFocusLayersToItems];
        v9 = [v8 copy];

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v42 = [v9 keyEnumerator];
        v10 = [v42 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (!v10)
        {
          v33 = v42;
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
              objc_enumerationMutation(v42);
            }

            v14 = *(*(&v43 + 1) + 8 * j);
            v15 = [v14 superlayer];

            if (!v15)
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
            v22 = [v14 superlayer];
            v23 = CALayerGetDelegate();

            if ((_IsKindOfUIView(v23) & 1) == 0)
            {
              v32 = [MEMORY[0x1E696AAA8] currentHandler];
              [v32 handleFailureInMethod:a2 object:self file:@"UIFocusRingManager.m" lineNumber:396 description:@"Internal inconsistency: the layer owning the focus ring is no longer associated with a UIView."];
            }

            v24 = v23;
            v25 = [v24 _window];

            if (v25)
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

            if (!v25)
            {
              goto LABEL_30;
            }
          }

          v11 = [v42 countByEnumeratingWithState:&v43 objects:v51 count:16];
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
        v33 = [v38 clientID];
        [(UIFocusRingManager *)self _removeActiveFocusLayersForClient:v33];
LABEL_35:

LABEL_36:
      }

      v37 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v37);
  }
}

+ (BOOL)focusRingAvailableInBehavior:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 focusRingVisibility];

  return v3 == 1;
}

void __29__UIFocusRingManager_manager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1ED49FBA0;
  qword_1ED49FBA0 = v0;
}

- (id)activeFocusLayersToItemsForClient:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_focusRingStateForClient objectForKeyedSubscript:v4];
  v6 = [v5 activeFocusLayersToItems];

  if (!v6)
  {
    v7 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v8 = [(NSMutableDictionary *)self->_focusRingStateForClient objectForKeyedSubscript:v4];
    [v8 setActiveFocusLayersToItems:v7];
  }

  v9 = [(NSMutableDictionary *)self->_focusRingStateForClient objectForKeyedSubscript:v4];
  v10 = [v9 activeFocusLayersToItems];

  return v10;
}

- (id)activeFocusLayersForClient:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_focusRingStateForClient objectForKeyedSubscript:v4];
  v6 = [v5 activeFocusLayers];

  if (!v6)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [(NSMutableDictionary *)self->_focusRingStateForClient objectForKeyedSubscript:v4];
    [v8 setActiveFocusLayers:v7];
  }

  v9 = [(NSMutableDictionary *)self->_focusRingStateForClient objectForKeyedSubscript:v4];
  v10 = [v9 activeFocusLayers];

  return v10;
}

+ (void)moveRingToFocusItem:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 manager];
  v9 = [v8 focusRingStateForClient];

  if (!v9)
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    [v8 setFocusRingStateForClient:v10];
  }

  v11 = [v8 focusRingStateForClient];
  v12 = [v11 objectForKeyedSubscript:v7];

  if (!v12)
  {
    v13 = [v8 focusRingStateForClient];
    v14 = [[UIFocusRingClientState alloc] initWithClientID:v7];
    [v13 setObject:v14 forKey:v7];
  }

  v15 = [v8 focusRingStateForClient];
  v16 = [v15 objectForKey:v7];
  [v16 setCurrentFocusItem:v6];

  [v8 _removeActiveFocusLayersForClient:v7];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v17 = _UIFocusBehaviorForEnvironment(v6);
  LODWORD(v16) = [v17 supportsParentFocusRings];

  if (v16)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __52__UIFocusRingManager_moveRingToFocusItem_forClient___block_invoke;
    v18[3] = &unk_1E7119FF8;
    v21 = &v22;
    v19 = v8;
    v20 = v7;
    _UIFocusEnvironmentEnumerateAncestorEnvironments(v6, v18);
  }

  if (*(v23 + 24) == 1)
  {
    [v8 addSelectedFocusRingForItem:v6 forClient:v7];
  }

  else
  {
    [v8 addFocusRingForItem:v6 forClient:v7];
  }

  [v8 _updateFocusLayerFrames];
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

+ (void)removeRingFromFocusItem:(id)a3 forClient:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [a1 manager];
  v9 = [v8 focusRingStateForClient];
  if (v9 && (v10 = v9, [v8 focusRingStateForClient], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKey:", v7), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "currentFocusItem"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v11, v10, v13 == v6))
  {
    [v8 _removeActiveFocusLayersForClient:v7];
  }

  else
  {
    v14 = [v8 activeFocusLayersForClient:v7];
    v15 = [v14 count];

    if (v15)
    {
      v16 = [v8 activeFocusLayersForClient:v7];
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
            v24 = [v8 activeFocusLayersToItemsForClient:{v7, v27}];
            v25 = [v24 objectForKey:v23];

            if (!v25)
            {
              [v23 removeFromSuperlayer];
              v26 = [v8 activeFocusLayersForClient:v7];
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

+ (void)updateRingForFocusItem:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = [a1 _currentFocusItemForClient:a4];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [a1 manager];
    [v9 _updateFocusLayerFrames];
  }
}

- (void)addFocusRingForItem:(id)a3 forClient:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(UIFocusRingManager *)self _viewToAddFocusLayerForItem:v13 forClient:v6];
  if (v7)
  {
    v8 = [objc_opt_class() shapeLayerClassForItem:v13 client:v6];
    v9 = [v7 traitCollection];
    v10 = [v8 focusLayerForUserInterfaceStyle:{objc_msgSend(v9, "userInterfaceStyle")}];

    [(UIFocusRingManager *)self _addFocusLayer:v10 toView:v7 forItem:v13];
    v11 = [(UIFocusRingManager *)self activeFocusLayersToItemsForClient:v6];
    [v11 setObject:v13 forKey:v10];

    v12 = [(UIFocusRingManager *)self activeFocusLayersForClient:v6];
    [v12 addObject:v10];
  }
}

- (void)addParentFocusRingForItem:(id)a3 forClient:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(UIFocusRingManager *)self _viewToAddFocusLayerForItem:v13 forClient:v6];
  if (v7)
  {
    v8 = [objc_opt_class() shapeLayerClassForItem:v13 client:v6];
    v9 = [v7 traitCollection];
    v10 = [v8 parentLayerForUserInterfaceStyle:{objc_msgSend(v9, "userInterfaceStyle")}];

    [(UIFocusRingManager *)self _addFocusLayer:v10 toView:v7 forItem:v13];
    v11 = [(UIFocusRingManager *)self activeFocusLayersToItemsForClient:v6];
    [v11 setObject:v13 forKey:v10];

    v12 = [(UIFocusRingManager *)self activeFocusLayersForClient:v6];
    [v12 addObject:v10];
  }
}

- (void)addSelectedFocusRingForItem:(id)a3 forClient:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(UIFocusRingManager *)self _viewToAddFocusLayerForItem:v14 forClient:v6];
  if (v7)
  {
    v8 = [objc_opt_class() shapeLayerClassForItem:v14 client:v6];
    v9 = [v7 traitCollection];
    v10 = [v8 selectedLayerForUserInterfaceStyle:{objc_msgSend(v9, "userInterfaceStyle")}];

    v11 = [v7 layer];
    [v11 addSublayer:v10];

    v12 = [(UIFocusRingManager *)self activeFocusLayersToItemsForClient:v6];
    [v12 setObject:v14 forKey:v10];

    v13 = [(UIFocusRingManager *)self activeFocusLayersForClient:v6];
    [v13 addObject:v10];
  }
}

- (void)addSelectedParentFocusRingForItem:(id)a3 forClient:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(UIFocusRingManager *)self _viewToAddFocusLayerForItem:v13 forClient:v6];
  if (v7)
  {
    v8 = [objc_opt_class() shapeLayerClassForItem:v13 client:v6];
    v9 = [v7 traitCollection];
    v10 = [v8 selectedParentLayerForUserInterfaceStyle:{objc_msgSend(v9, "userInterfaceStyle")}];

    [(UIFocusRingManager *)self _addFocusLayer:v10 toView:v7 forItem:v13];
    v11 = [(UIFocusRingManager *)self activeFocusLayersToItemsForClient:v6];
    [v11 setObject:v13 forKey:v10];

    v12 = [(UIFocusRingManager *)self activeFocusLayersForClient:v6];
    [v12 addObject:v10];
  }
}

- (void)_addFocusLayer:(id)a3 toView:(id)a4 forItem:(id)a5
{
  v9 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 tintColor];
    [v9 _updateWithTintColor:v7];
  }

  v8 = [v6 layer];
  [v8 addSublayer:v9];
}

- (void)_removeActiveFocusLayersForClient:(id)a3
{
  v3 = [(UIFocusRingManager *)self activeFocusLayersForClient:a3];
  if ([v3 count])
  {
    [v3 makeObjectsPerformSelector:sel_removeFromSuperlayer];
    [v3 removeAllObjects];
  }
}

- (BOOL)_focusItemWantsFocusRing:(id)a3 forClient:(id)a4
{
  v4 = a3;
  v5 = _UIFocusBehaviorForEnvironment(v4);
  v6 = [v5 focusRingVisibility];

  if ((v6 - 2) >= 2)
  {
    v8 = v6 == 1;
  }

  else
  {
    v7 = _UIFocusItemHaloEffect(v4);
    v8 = v7 != 0;
  }

  return v8;
}

- (id)_viewToAddFocusLayerForItem:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [(UIFocusRingManager *)self _focusItemWantsFocusRing:v6 forClient:v7])
  {
    if (!_IsKindOfUIView(v6) || ([v6 _containerViewForLegacyFocusRing], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v9 = _UIFocusEnvironmentContainingView(v6);
      [(UIView *)v9 _addGeometryChangeObserver:?];
      v8 = [v9 superview];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_focusRingPathForItem:(id)a3 inView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _UIFocusItemHaloEffect(v5);
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _shape];
    v10 = _UIFocusEnvironmentContainingView(v5);
    v11 = [v10 coordinateSpace];

    v12 = [v9 shapeConvertedFromCoordinateSpace:v11 toCoordinateSpace:v6];

    v13 = [v12 outline];

    goto LABEL_14;
  }

  v14 = [v6 coordinateSpace];
  v15 = _UIFocusItemFrameInCoordinateSpace(v5, v14);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  +[UIFocusRingStyle cornerRadius];
  v23 = v22;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v5;
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

    v24 = [v5 layer];
  }

  v12 = v24;
  if (!v24)
  {
    goto LABEL_12;
  }

  [v24 cornerRadius];
  if (v25 <= 0.0)
  {
    goto LABEL_12;
  }

  [v12 cornerRadius];
  v23 = v26;
  v27 = [v12 cornerCurve];
  v28 = [v27 isEqualToString:*MEMORY[0x1E69796E8]];

  if (!v28)
  {
    goto LABEL_12;
  }

  v29 = [UIBezierPath _bezierPathWithPillRect:v15 cornerRadius:v17, v19, v21, v23];
LABEL_13:
  v13 = v29;
LABEL_14:

  return v13;
}

+ (id)_currentFocusItemForClient:(id)a3
{
  v4 = a3;
  v5 = [a1 manager];
  v6 = [v5 focusRingStateForClient];
  v7 = [v6 objectForKey:v4];

  v8 = [v7 currentFocusItem];

  return v8;
}

+ (void)_removeActiveFocusLayers
{
  v2 = [a1 manager];
  [v2 _removeActiveFocusLayersForClient:@"FocusEngineClient"];
}

+ (void)_updateActiveFocusLayers
{
  v4 = [a1 manager];
  v3 = [a1 _currentFocusItemForClient:@"FocusEngineClient"];
  if (v3)
  {
    [a1 moveRingToFocusItem:v3];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(UIFocusRingManager *)self focusRingStateForClient];
  v7 = [v3 stringWithFormat:@"<%@: %p, state: %@>", v5, self, v6];

  return v7;
}

@end