@interface _UIDragSetDownAnimation
+ (BOOL)canAnimateItems:(id)a3 forSource:(BOOL)a4 policyDriven:(BOOL)a5;
+ (id)defaultDropAnimationForPlatterView:(id)a3;
+ (id)defaultMultiItemAnimationForPlatterView:(id)a3;
+ (id)defaultSetDownPropertyAnimator;
+ (id)defaultSingleItemAnimationForPlatterView:(id)a3;
- (_UIDragSetDownAnimation)initWithVisibleDroppedItems:(id)a3 items:(id)a4 forSource:(BOOL)a5 policyDriven:(BOOL)a6 completion:(id)a7;
- (id)_targetLayerDescriptor;
- (void)_allItemAnimationsCompleted;
- (void)addCompletion:(id)a3;
- (void)begin;
- (void)dirtyTargetedDragPreviewForDragItem:(id)a3;
- (void)itemAnimationCompleted:(id)a3;
- (void)itemAnimationReachedTarget:(id)a3;
- (void)previewContainerAnimationDidCompleteForDragItem:(id)a3;
- (void)updateInFlightAnimationTick:(id)a3;
- (void)updateTargetedDragPreview:(id)a3 forDragItem:(id)a4;
- (void)updateVisibleDroppedItems:(id)a3;
@end

@implementation _UIDragSetDownAnimation

+ (BOOL)canAnimateItems:(id)a3 forSource:(BOOL)a4 policyDriven:(BOOL)a5
{
  v5 = windowSceneForItems(a3, a4, a5);
  v6 = v5 != 0;

  return v6;
}

- (_UIDragSetDownAnimation)initWithVisibleDroppedItems:(id)a3 items:(id)a4 forSource:(BOOL)a5 policyDriven:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v9 = a5;
  v95 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v91.receiver = self;
  v91.super_class = _UIDragSetDownAnimation;
  v15 = [(_UIDragSetDownAnimation *)&v91 init];
  if (!v15)
  {
    goto LABEL_55;
  }

  v16 = objc_alloc_init(_UIGroupCompletion);
  groupCompletion = v15->_groupCompletion;
  v15->_groupCompletion = v16;

  [(_UIGroupCompletion *)v15->_groupCompletion addCompletion:v14];
  v18 = windowForItems(v13, v9);
  v19 = windowSceneForItems(v13, v9, v8);
  v73 = v13;
  v77 = v9;
  if (os_variant_has_internal_diagnostics())
  {
    if (v19)
    {
      goto LABEL_4;
    }

    v60 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v60, OS_LOG_TYPE_FAULT, "Should have found a scene for the set down animation", buf, 2u);
    }
  }

  else
  {
    if (v19)
    {
      goto LABEL_4;
    }

    v62 = *(__UILogGetCategoryCachedImpl("Assert", &initWithVisibleDroppedItems_items_forSource_policyDriven_completion____s_category) + 8);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v62, OS_LOG_TYPE_ERROR, "Should have found a scene for the set down animation", buf, 2u);
    }
  }

  v63 = [objc_opt_self() mainScreen];
  v64 = [_UISceneLifecycleMultiplexer mostActiveWindowSceneOnScreen:v63];

  v19 = v64;
  v65 = [v64 keyWindow];

  v18 = v65;
LABEL_4:
  if ([v18 _isHostedInAnotherProcess] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = [UIView alloc];
    [v18 bounds];
    v21 = [(UIView *)v20 initWithFrame:?];
    [(UIView *)v21 setAutoresizingMask:18];
    [(UIView *)v21 setUserInteractionEnabled:0];
    v22 = [(UIView *)v21 layer];
    [v22 setAllowsHitTesting:0];

    [(UIWindow *)v21 setHidden:1];
    [v18 addSubview:v21];
  }

  else
  {
    v21 = [(UIWindow *)[_UIDragSetDownAnimationWindow alloc] initWithWindowScene:v19];
    [(UIWindow *)v21 setBecomeKeyOnOrderFront:0];
    v23 = [(UIView *)v21 layer];
    [v23 setAllowsHitTesting:0];

    [(UIView *)v21 setUserInteractionEnabled:0];
    [(UIView *)v21 setBackgroundColor:0];
    [(UIWindow *)v21 setWindowLevel:1120.0];
    v24 = objc_opt_new();
    [v24 setSizesWindowToScene:1];
    [(UIWindow *)v21 setRootViewController:v24];
    [(UIWindow *)v21 setHidden:1];
  }

  objc_storeStrong(&v15->_containerView, v21);
  v72 = [v13 count];
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v25 = _UIInternalPreferencesRevisionVar;
  v67 = v18;
  v68 = v14;
  v66 = v19;
  v74 = v21;
  if (_UIInternalPreferencesRevisionVar < 1 || (v61 = _UIInternalPreference_DNDSetDownItemLimit, _UIInternalPreferencesRevisionVar == _UIInternalPreference_DNDSetDownItemLimit))
  {
    v71 = 5;
  }

  else
  {
    v71 = 5;
    while (v25 >= v61)
    {
      _UIInternalPreferenceSync(v25, &_UIInternalPreference_DNDSetDownItemLimit, @"DNDSetDownItemLimit", _UIInternalPreferenceUpdateInteger);
      v61 = _UIInternalPreference_DNDSetDownItemLimit;
      if (v25 == _UIInternalPreference_DNDSetDownItemLimit)
      {
        goto LABEL_12;
      }
    }

    v71 = qword_1EA95E318;
  }

LABEL_12:
  v76 = objc_opt_new();
  v70 = [v13 mutableCopy];
  v75 = [MEMORY[0x1E696AD50] indexSet];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v69 = v12;
  v26 = [v12 reverseObjectEnumerator];
  v27 = [v26 countByEnumeratingWithState:&v86 objects:v94 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = *v87;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v87 != v30)
        {
          objc_enumerationMutation(v26);
        }

        v32 = *(*(&v86 + 1) + 8 * i);
        v33 = [v32 imageComponent];

        if (v33)
        {
          v34 = [v13 objectAtIndexedSubscript:{objc_msgSend(v32, "itemIndex")}];
          v35 = [[_UIDragSetDownItemAnimation alloc] initWithDragItem:v34 droppedItem:v32 dropContainerView:v74 defaultAnimation:v72 > v71 sourceAnimation:v77 delegate:v15];
          [(NSArray *)v76 addObject:v35];
          [v75 addIndex:{objc_msgSend(v32, "itemIndex")}];
          if (v77)
          {
            [v34 _sourceVisualTarget];
          }

          else
          {
            [v34 _destinationVisualTarget];
          }
          v36 = ;
          v37 = [v36 _setDownAnimation:v15 customSpringAnimationBehaviorForSetDownOfDragItem:v34];
          [(_UIDragSetDownItemAnimation *)v35 setCustomSpringAnimationBehavior:v37];
          if (!v29)
          {
            v29 = [(_UIDragSetDownItemAnimation *)v35 targetContainerWindow];
            if (!v29)
            {
              v29 = [v36 _windowForSetDownOfDragItem:v34];
            }
          }

          v13 = v73;
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v86 objects:v94 count:16];
    }

    while (v28);
  }

  else
  {
    v29 = 0;
  }

  v38 = v70;
  [v70 removeObjectsAtIndexes:v75];
  v39 = v77;
  if (!v29)
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v40 = v70;
    v41 = [v40 countByEnumeratingWithState:&v82 objects:v93 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v83;
      while (2)
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v83 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v82 + 1) + 8 * j);
          if (v77)
          {
            [*(*(&v82 + 1) + 8 * j) _sourceVisualTarget];
          }

          else
          {
            [*(*(&v82 + 1) + 8 * j) _destinationVisualTarget];
          }
          v46 = ;
          v29 = [v46 _windowForSetDownOfDragItem:{v45, v66}];

          if (v29)
          {

            v39 = v77;
            goto LABEL_43;
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v82 objects:v93 count:16];
        v39 = v77;
        if (v42)
        {
          continue;
        }

        break;
      }
    }

    [(UIView *)v15->_containerView setHidden:0];
    v29 = [(UIView *)v15->_containerView _window];
LABEL_43:
    v38 = v70;
  }

  objc_storeStrong(&v15->_coordinateContainerWindow, v29);
  [(NSArray *)v76 makeObjectsPerformSelector:sel_prepareToBeginAnimation];
  v47 = [v13 objectAtIndexedSubscript:0];
  v48 = v47;
  if (v39)
  {
    [v47 _sourceVisualTarget];
  }

  else
  {
    [v47 _destinationVisualTarget];
  }
  v49 = ;

  v50 = [objc_opt_class() defaultSetDownPropertyAnimator];
  remainingItemsPropertyAnimator = v15->_remainingItemsPropertyAnimator;
  v15->_remainingItemsPropertyAnimator = v50;

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v52 = v38;
  v53 = [v52 countByEnumeratingWithState:&v78 objects:v92 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v79;
    do
    {
      for (k = 0; k != v54; ++k)
      {
        if (*v79 != v55)
        {
          objc_enumerationMutation(v52);
        }

        [v49 _setDownAnimation:v15 willAnimateSetDownOfDragItem:*(*(&v78 + 1) + 8 * k) withAnimator:v15->_remainingItemsPropertyAnimator preview:{0, v66}];
      }

      v54 = [v52 countByEnumeratingWithState:&v78 objects:v92 count:16];
    }

    while (v54);
  }

  itemAnimations = v15->_itemAnimations;
  v15->_itemAnimations = v76;
  v58 = v76;

  v14 = v68;
  v12 = v69;
LABEL_55:

  return v15;
}

- (id)_targetLayerDescriptor
{
  v3 = [(_UIDragSetDownAnimation *)self coordinateContainerWindow];
  v4 = [v3 layer];

  v5 = objc_alloc_init(_DUITargetLayerDescriptor);
  v6 = [v4 context];
  -[_DUITargetLayerDescriptor setContextID:](v5, "setContextID:", [v6 contextId]);

  [(_DUITargetLayerDescriptor *)v5 setRenderID:CALayerGetRenderId()];
  v7 = [(_UIDragSetDownAnimation *)self containerView];
  v8 = [v7 layer];
  v9 = [v8 context];
  -[_DUITargetLayerDescriptor setSetDownAnimationContextID:](v5, "setSetDownAnimationContextID:", [v9 contextId]);

  v10 = [v7 layer];
  [(_DUITargetLayerDescriptor *)v5 setSetDownAnimationRenderID:CALayerGetRenderId()];

  v11 = [(_UIDragSetDownAnimation *)self coordinateContainerWindow];
  v12 = [v11 windowScene];

  v13 = [v12 systemShellHostingEnvironment];
  v14 = [v13 systemShellHostingSpaceIdentifier];
  [(_DUITargetLayerDescriptor *)v5 setSystemShellHostingSpaceIdentifier:v14];

  return v5;
}

- (void)updateVisibleDroppedItems:(id)a3
{
  v4 = a3;
  itemAnimations = self->_itemAnimations;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53___UIDragSetDownAnimation_updateVisibleDroppedItems___block_invoke;
  v7[3] = &unk_1E7106958;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(NSArray *)itemAnimations enumerateObjectsWithOptions:2 usingBlock:v7];
}

- (void)updateTargetedDragPreview:(id)a3 forDragItem:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_itemAnimations;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [v13 item];

        if (v14 == v7)
        {
          [v13 updateTargetedDropPreview:v6];
          goto LABEL_11;
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)dirtyTargetedDragPreviewForDragItem:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_itemAnimations;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v10 item];

        if (v11 == v4)
        {
          [v10 dirtyTargetedDropPreview];
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)begin
{
  if (!self->_hasBegun)
  {
    self->_hasBegun = 1;
    if ([(NSArray *)self->_itemAnimations count])
    {
      [(UIView *)self->_containerView setHidden:0];
      v3 = [(UIView *)self->_containerView _window];
      v4 = [v3 screen];

      if (os_variant_has_internal_diagnostics())
      {
        if (!v4)
        {
          v10 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
          {
            LOWORD(location[0]) = 0;
            _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Drop animation has no associated screen", location, 2u);
          }
        }
      }

      else if (!v4)
      {
        v11 = *(__UILogGetCategoryCachedImpl("Assert", &begin___s_category) + 8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          LOWORD(location[0]) = 0;
          _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Drop animation has no associated screen", location, 2u);
        }
      }

      v5 = [v4 displayLinkWithTarget:self selector:sel_updateInFlightAnimationTick_];
      displayLink = self->_displayLink;
      self->_displayLink = v5;

      v7 = self->_displayLink;
      v8 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [(CADisplayLink *)v7 addToRunLoop:v8 forMode:*MEMORY[0x1E695DA28]];

      [(NSArray *)self->_itemAnimations makeObjectsPerformSelector:sel_beginAnimation];
    }

    else
    {
      objc_initWeak(location, self);
      remainingItemsPropertyAnimator = self->_remainingItemsPropertyAnimator;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __32___UIDragSetDownAnimation_begin__block_invoke;
      v12[3] = &unk_1E70F5DE0;
      objc_copyWeak(&v13, location);
      [(UIViewPropertyAnimator *)remainingItemsPropertyAnimator addCompletion:v12];
      objc_destroyWeak(&v13);
      objc_destroyWeak(location);
    }

    [(UIViewPropertyAnimator *)self->_remainingItemsPropertyAnimator addAnimations:&__block_literal_global_192];
    [(UIViewPropertyAnimator *)self->_remainingItemsPropertyAnimator startAnimation];
  }
}

- (void)updateInFlightAnimationTick:(id)a3
{
  if ([(NSArray *)self->_itemAnimations count])
  {
    itemAnimations = self->_itemAnimations;

    [(NSArray *)itemAnimations makeObjectsPerformSelector:sel_updateAnimationTargeting];
  }

  else
  {

    [(_UIDragSetDownAnimation *)self _allItemAnimationsCompleted];
  }
}

- (void)previewContainerAnimationDidCompleteForDragItem:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_itemAnimations;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v10 item];

        if (v11 == v4)
        {
          [v10 previewContainerAnimationDidComplete];
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)itemAnimationReachedTarget:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  displayLink = self->_itemAnimations;
  v5 = [(NSArray *)displayLink countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v10 != v7)
      {
        objc_enumerationMutation(displayLink);
      }

      if (![*(*(&v9 + 1) + 8 * v8) reachedTarget])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSArray *)displayLink countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    [(CADisplayLink *)self->_displayLink invalidate];
    displayLink = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (void)itemAnimationCompleted:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_itemAnimations;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![*(*(&v9 + 1) + 8 * v8) done])
        {

          return;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  [(_UIDragSetDownAnimation *)self _allItemAnimationsCompleted];
}

- (void)addCompletion:(id)a3
{
  if (a3)
  {
    [(_UIGroupCompletion *)self->_groupCompletion addNonIncrementingCompletion:?];
  }
}

- (void)_allItemAnimationsCompleted
{
  v7 = self;
  groupCompletion = v7->_groupCompletion;
  if (groupCompletion)
  {
    [(_UIGroupCompletion *)groupCompletion complete];
    v3 = v7->_groupCompletion;
    v7->_groupCompletion = 0;
  }

  v7->_hasBegun = 0;
  [(UIView *)v7->_containerView removeFromSuperview];
  [(UIView *)v7->_containerView setHidden:1];
  itemAnimations = v7->_itemAnimations;
  v7->_itemAnimations = 0;

  containerView = v7->_containerView;
  v7->_containerView = 0;

  [(CADisplayLink *)v7->_displayLink invalidate];
  displayLink = v7->_displayLink;
  v7->_displayLink = 0;
}

+ (id)defaultSetDownPropertyAnimator
{
  v2 = [[UISpringTimingParameters alloc] initWithMass:2.0 stiffness:300.0 damping:400.0 initialVelocity:0.0, 0.0];
  v3 = [[UIViewPropertyAnimator alloc] initWithDuration:v2 timingParameters:0.91];

  return v3;
}

+ (id)defaultSingleItemAnimationForPlatterView:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68___UIDragSetDownAnimation_defaultSingleItemAnimationForPlatterView___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);

  return v5;
}

+ (id)defaultMultiItemAnimationForPlatterView:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67___UIDragSetDownAnimation_defaultMultiItemAnimationForPlatterView___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);

  return v5;
}

+ (id)defaultDropAnimationForPlatterView:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62___UIDragSetDownAnimation_defaultDropAnimationForPlatterView___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);

  return v5;
}

@end