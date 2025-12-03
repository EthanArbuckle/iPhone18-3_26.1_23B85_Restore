@interface UIInterfaceActionSelectionTrackingController
- (BOOL)_allowSelectionForCurrentGestureLocationWithGestureRecognizer:(id)recognizer;
- (BOOL)_gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)_gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)_isPresentedAndVisible;
- (BOOL)_shouldDisableSelectionTrackingIfScrollingScrollView:(id)view;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (CGPoint)actionSelectionInitialLocationInContainerView;
- (UIInterfaceActionSelectionTrackingController)initWithTrackableContainerView:(id)view actionsScrollView:(id)scrollView;
- (UIScrollView)actionsScrollView;
- (UIView)trackableContainerView;
- (id)_actionViewAtCurrentLocationForGestureRecognizer:(id)recognizer;
- (id)_actionViewIncludingCooperatingActionViewsAtCurrentLocationForGestureRecognizer:(id)recognizer;
- (id)_allActionViewsIncludingCooperatingActionViews;
- (id)_allGestureRecognizers;
- (id)_interfaceActionOfFocusedRepresentationView;
- (void)_handleActionSelectionGestureRecognizer:(id)recognizer;
- (void)_initializeSelectionGestureRecognizer;
- (void)_noteScrollView:(id)view isUserScrolling:(BOOL)scrolling;
- (void)_performRecursivelyWithVisitedCooperatingControllers:(id)controllers block:(id)block;
- (void)_registerForScrollViewNotifications;
- (void)_rolloverActionChanged:(id)changed;
- (void)_setSystemProvidedGestureRecognizer:(id)recognizer;
- (void)_unregisterForScrollViewNotifications;
- (void)beginTrackingSessionByTakingOverForSystemProvidedGestureRecognizer:(id)recognizer;
- (void)dealloc;
- (void)deselectAllActions;
- (void)setCooperatingSelectionTrackingControllers:(id)controllers;
- (void)setScrubbingEnabled:(BOOL)enabled;
- (void)setSelectByIndirectPointerTouchEnabled:(BOOL)enabled;
- (void)setSelectByPressGestureEnabled:(BOOL)enabled;
- (void)setSelectByPressGestureRecognizer:(id)recognizer;
- (void)setSelectionFeedbackEnabled:(BOOL)enabled;
@end

@implementation UIInterfaceActionSelectionTrackingController

- (UIInterfaceActionSelectionTrackingController)initWithTrackableContainerView:(id)view actionsScrollView:(id)scrollView
{
  viewCopy = view;
  scrollViewCopy = scrollView;
  v13.receiver = self;
  v13.super_class = UIInterfaceActionSelectionTrackingController;
  v8 = [(UIInterfaceActionSelectionTrackingController *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_trackableContainerView, viewCopy);
    [(UIInterfaceActionSelectionTrackingController *)v9 _initializeSelectionGestureRecognizer];
    objc_storeWeak(&v9->_actionsScrollView, scrollViewCopy);
    v10 = [MEMORY[0x1E695DFA8] set];
    viewsRequiringSelectionGestureDisabling = v9->_viewsRequiringSelectionGestureDisabling;
    v9->_viewsRequiringSelectionGestureDisabling = v10;

    [(UIInterfaceActionSelectionTrackingController *)v9 _registerForScrollViewNotifications];
    v9->_scrubbingEnabled = 1;
  }

  return v9;
}

- (void)dealloc
{
  [(UIInterfaceActionSelectionTrackingController *)self _unregisterForScrollViewNotifications];
  v3.receiver = self;
  v3.super_class = UIInterfaceActionSelectionTrackingController;
  [(UIInterfaceActionSelectionTrackingController *)&v3 dealloc];
}

- (void)setCooperatingSelectionTrackingControllers:(id)controllers
{
  v16 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = controllersCopy;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [weakObjectsPointerArray addPointer:{*(*(&v11 + 1) + 8 * v10++), v11}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(UIInterfaceActionSelectionTrackingController *)self setWeakCooperatingSelectionTrackingControllers:weakObjectsPointerArray];
}

- (void)setScrubbingEnabled:(BOOL)enabled
{
  if (self->_scrubbingEnabled != enabled)
  {
    self->_scrubbingEnabled = enabled;
    selectionGestureRecognizer = self->_selectionGestureRecognizer;
    if (enabled)
    {
      [(UILongPressGestureRecognizer *)selectionGestureRecognizer setAllowableMovement:1.79769313e308];
      [(UILongPressGestureRecognizer *)self->_selectionGestureRecognizer setCancelPastAllowableMovement:0];
      view = [(UIGestureRecognizer *)self->_selectionDelayGestureRecognizer view];
      [view removeGestureRecognizer:self->_selectionDelayGestureRecognizer];

      selectionDelayGestureRecognizer = self->_selectionDelayGestureRecognizer;
      self->_selectionDelayGestureRecognizer = 0;
    }

    else
    {
      [(UILongPressGestureRecognizer *)selectionGestureRecognizer setAllowableMovement:10.0];
      [(UILongPressGestureRecognizer *)self->_selectionGestureRecognizer setCancelPastAllowableMovement:1];
      v8 = objc_opt_new();
      v9 = self->_selectionDelayGestureRecognizer;
      self->_selectionDelayGestureRecognizer = v8;

      [(UIGestureRecognizer *)self->_selectionDelayGestureRecognizer setDelegate:self];
      [(UIGestureRecognizer *)self->_selectionDelayGestureRecognizer setName:@"UIInterfaceAction.selectionDelay"];
      view2 = [(UIGestureRecognizer *)self->_selectionGestureRecognizer view];
      [(_UIInterfaceActionSelectionDelayGestureRecognizer *)view2 addGestureRecognizer:self->_selectionDelayGestureRecognizer];
      selectionDelayGestureRecognizer = view2;
    }
  }
}

- (void)setSelectByPressGestureEnabled:(BOOL)enabled
{
  if (self->_selectByPressGestureEnabled != enabled)
  {
    self->_selectByPressGestureEnabled = enabled;
    if (enabled)
    {
      v5 = [[_UIInterfaceActionSelectByPressGestureRecognizer alloc] initWithFocusedInterfaceActionPressDelegate:self];
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    [(UIInterfaceActionSelectionTrackingController *)self setSelectByPressGestureRecognizer:v5];
  }
}

- (void)setSelectionFeedbackEnabled:(BOOL)enabled
{
  if (self->_selectionFeedbackEnabled != enabled)
  {
    self->_selectionFeedbackEnabled = enabled;
    if (enabled)
    {
      v5 = +[_UISelectionFeedbackGeneratorConfiguration defaultConfiguration];
      v6 = [v5 tweakedConfigurationForClass:objc_opt_class() usage:@"retarget"];

      v7 = [UISelectionFeedbackGenerator alloc];
      trackableContainerView = [(UIInterfaceActionSelectionTrackingController *)self trackableContainerView];
      v9 = [(UIFeedbackGenerator *)v7 initWithConfiguration:v6 view:trackableContainerView];
    }

    else
    {
      v9 = 0;
    }

    [(UIInterfaceActionSelectionTrackingController *)self setSelectionRetargetFeedbackGenerator:v9];
  }
}

- (void)setSelectByIndirectPointerTouchEnabled:(BOOL)enabled
{
  if (self->_selectByIndirectPointerTouchEnabled != enabled)
  {
    self->_selectByIndirectPointerTouchEnabled = enabled;
    selectionGestureRecognizer = self->_selectionGestureRecognizer;
    if (enabled)
    {
      v4 = &unk_1EFE2B320;
    }

    else
    {
      v4 = &unk_1EFE2B308;
    }

    [(UIGestureRecognizer *)selectionGestureRecognizer setAllowedTouchTypes:v4];
  }
}

- (void)setSelectByPressGestureRecognizer:(id)recognizer
{
  p_selectByPressGestureRecognizer = &self->_selectByPressGestureRecognizer;
  recognizerCopy = recognizer;
  if (([(_UIInterfaceActionSelectByPressGestureRecognizer *)*p_selectByPressGestureRecognizer isEqual:?]& 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_trackableContainerView);
    [WeakRetained removeGestureRecognizer:self->_selectByPressGestureRecognizer];

    objc_storeStrong(&self->_selectByPressGestureRecognizer, recognizer);
    selectByPressGestureRecognizer = self->_selectByPressGestureRecognizer;
    if (selectByPressGestureRecognizer)
    {
      [(UIGestureRecognizer *)selectByPressGestureRecognizer setCancelsTouchesInView:0];
      v8 = objc_loadWeakRetained(&self->_trackableContainerView);
      [v8 addGestureRecognizer:*p_selectByPressGestureRecognizer];
    }
  }
}

- (id)_interfaceActionOfFocusedRepresentationView
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  _allActionViewsIncludingCooperatingActionViews = [(UIInterfaceActionSelectionTrackingController *)self _allActionViewsIncludingCooperatingActionViews];
  action = [_allActionViewsIncludingCooperatingActionViews countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (action)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != action; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(_allActionViewsIncludingCooperatingActionViews);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isFocused])
        {
          action = [v6 action];
          goto LABEL_11;
        }
      }

      action = [_allActionViewsIncludingCooperatingActionViews countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (action)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return action;
}

- (void)beginTrackingSessionByTakingOverForSystemProvidedGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  [(UIInterfaceActionSelectionTrackingController *)self _setSystemProvidedGestureRecognizer:recognizerCopy];
  [(UIInterfaceActionSelectionTrackingController *)self _handleActionSelectionGestureRecognizer:recognizerCopy];
}

- (void)_setSystemProvidedGestureRecognizer:(id)recognizer
{
  v17 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  p_systemProvidedGestureRecognizer = &self->_systemProvidedGestureRecognizer;
  systemProvidedGestureRecognizer = self->_systemProvidedGestureRecognizer;
  if (systemProvidedGestureRecognizer != recognizerCopy)
  {
    if (systemProvidedGestureRecognizer)
    {
      [(UIGestureRecognizer *)systemProvidedGestureRecognizer removeTarget:self action:0];
    }

    objc_storeStrong(&self->_systemProvidedGestureRecognizer, recognizer);
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    v8 = [(UIInterfaceActionSelectionTrackingController *)self _allGestureRecognizers:0];
    v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v13;
      while (1)
      {
        if (*v13 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (*p_systemProvidedGestureRecognizer != recognizerCopy)
        {
          [recognizerCopy setEnabled:*p_systemProvidedGestureRecognizer == 0];
        }

        if (!--v10)
        {
          v10 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (!v10)
          {
            break;
          }
        }
      }
    }

    if (*p_systemProvidedGestureRecognizer)
    {
      [*p_systemProvidedGestureRecognizer addTarget:self action:sel__handleSystemProvidedGestureRecognizer_];
    }
  }
}

- (BOOL)_gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  allowedTouchTypes = [recognizer allowedTouchTypes];
  v7 = MEMORY[0x1E696AD98];
  type = [touchCopy type];

  v9 = [v7 numberWithInteger:type];
  LOBYTE(v7) = [allowedTouchTypes containsObject:v9];

  return v7;
}

- (BOOL)_gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v8 = gestureRecognizerCopy;
  selectionGestureRecognizer = self->_selectionGestureRecognizer;
  if (self->_selectionDelayGestureRecognizer == recognizerCopy)
  {
    v10 = selectionGestureRecognizer != gestureRecognizerCopy;
  }

  else if (selectionGestureRecognizer == recognizerCopy)
  {
    view = [(UIGestureRecognizer *)gestureRecognizerCopy view];
    trackableContainerView = [(UIInterfaceActionSelectionTrackingController *)self trackableContainerView];
    if ([view isDescendantOfView:trackableContainerView])
    {
      v10 = 1;
    }

    else
    {
      v10 = _UISheetInteractionGestureIsForInteractiveDismiss(v8);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v8 = gestureRecognizerCopy;
  if (self->_selectionGestureRecognizer != recognizerCopy)
  {
    goto LABEL_2;
  }

  if (self->_selectionDelayGestureRecognizer == gestureRecognizerCopy)
  {
LABEL_8:
    v9 = 1;
    goto LABEL_3;
  }

  if ([(UIGestureRecognizer *)gestureRecognizerCopy _isGestureType:9])
  {
    view = [(UIGestureRecognizer *)v8 view];
    trackableContainerView = [(UIInterfaceActionSelectionTrackingController *)self trackableContainerView];
    if ([view isDescendantOfView:trackableContainerView])
    {
      view2 = [(UIGestureRecognizer *)v8 view];
      actionsScrollView = [(UIInterfaceActionSelectionTrackingController *)self actionsScrollView];

      if (view2 != actionsScrollView)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

LABEL_2:
  v9 = 0;
LABEL_3:

  return v9;
}

- (void)deselectAllActions
{
  _allActionViewsIncludingCooperatingActionViews = [(UIInterfaceActionSelectionTrackingController *)self _allActionViewsIncludingCooperatingActionViews];
  [_allActionViewsIncludingCooperatingActionViews enumerateObjectsUsingBlock:&__block_literal_global_11];
}

- (void)_rolloverActionChanged:(id)changed
{
  changedCopy = changed;
  if ([(UIInterfaceActionSelectionTrackingController *)self _isPresentedAndVisible])
  {
    if ([changedCopy state] == 3)
    {
      v5 = 0;
    }

    else
    {
      v5 = [(UIInterfaceActionSelectionTrackingController *)self _actionViewIncludingCooperatingActionViewsAtCurrentLocationForGestureRecognizer:changedCopy];
    }

    _allActionViewsIncludingCooperatingActionViews = [(UIInterfaceActionSelectionTrackingController *)self _allActionViewsIncludingCooperatingActionViews];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71__UIInterfaceActionSelectionTrackingController__rolloverActionChanged___block_invoke;
    v9[3] = &unk_1E70F3BE8;
    v10 = v5;
    v7 = v5;
    [_allActionViewsIncludingCooperatingActionViews enumerateObjectsUsingBlock:v9];

    action = [v7 action];
    [v7 setHighlighted:{objc_msgSend(action, "isEnabled")}];
  }
}

uint64_t __71__UIInterfaceActionSelectionTrackingController__rolloverActionChanged___block_invoke(uint64_t result, void *a2)
{
  if (*(result + 32) != a2)
  {
    return [a2 setHighlighted:0];
  }

  return result;
}

- (void)_handleActionSelectionGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([(UIInterfaceActionSelectionTrackingController *)self _isPresentedAndVisible])
  {
    if (!self->_scrubbingEnabled || self->_selectionGestureRecognizer == recognizerCopy || (v5 = objc_loadWeakRetained(&self->_actionsScrollView), [v5 bounds], v7 = v6, v8 = objc_loadWeakRetained(&self->_actionsScrollView), objc_msgSend(v8, "contentSize"), v10 = v9, v8, v5, v7 >= v10))
    {
      if ([(UIInterfaceActionSelectionTrackingController *)self _allowSelectionForCurrentGestureLocationWithGestureRecognizer:recognizerCopy])
      {
        v11 = [(UIInterfaceActionSelectionTrackingController *)self _actionViewIncludingCooperatingActionViewsAtCurrentLocationForGestureRecognizer:recognizerCopy];
      }

      else
      {
        v11 = 0;
      }

      action = [v11 action];
      isEnabled = [action isEnabled];
      WeakRetained = objc_loadWeakRetained(&self->_trackableContainerView);
      traitCollection = [WeakRetained traitCollection];
      preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

      if (preferredContentSizeCategory)
      {
        v17 = !UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
      }

      else
      {
        v17 = 1;
      }

      v32 = v17;
      trackableContainerView = [(UIInterfaceActionSelectionTrackingController *)self trackableContainerView];
      [(UILongPressGestureRecognizer *)recognizerCopy locationInView:trackableContainerView];
      v20 = v19;
      v22 = v21;

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __88__UIInterfaceActionSelectionTrackingController__handleActionSelectionGestureRecognizer___block_invoke;
      aBlock[3] = &unk_1E70F3C10;
      v47 = isEnabled;
      v23 = v11;
      v43 = v23;
      selfCopy = self;
      v45 = v20;
      v46 = v22;
      v24 = _Block_copy(aBlock);
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __88__UIInterfaceActionSelectionTrackingController__handleActionSelectionGestureRecognizer___block_invoke_2;
      v40[3] = &unk_1E70F3C60;
      v40[4] = self;
      v25 = v23;
      v41 = v25;
      v26 = _Block_copy(v40);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __88__UIInterfaceActionSelectionTrackingController__handleActionSelectionGestureRecognizer___block_invoke_4;
      v39[3] = &unk_1E70F3CB0;
      v39[4] = self;
      v27 = _Block_copy(v39);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v34 = __88__UIInterfaceActionSelectionTrackingController__handleActionSelectionGestureRecognizer___block_invoke_6;
      v35 = &unk_1E70F3CD8;
      selfCopy2 = self;
      v37 = v20;
      v38 = v22;
      if ([(UIGestureRecognizer *)recognizerCopy state]== UIGestureRecognizerStateBegan)
      {
        v24[2](v24, 0);
        goto LABEL_13;
      }

      if ([(UIGestureRecognizer *)recognizerCopy state]== UIGestureRecognizerStateChanged)
      {
        v29 = v27[2](v27);
        v26[2](v26, 0);
        if ((v32 | v29))
        {
          v28 = 1;
          v24[2](v24, 1);
          goto LABEL_27;
        }

LABEL_13:
        v28 = 1;
LABEL_27:
        v34(v33, v28);
        goto LABEL_28;
      }

      if ([(UIGestureRecognizer *)recognizerCopy state]== UIGestureRecognizerStateEnded)
      {
        if (isEnabled)
        {
          isHighlighted = [v25 isHighlighted];
          if ((isHighlighted & 1) == 0 || self->_scrubbingEnabled)
          {
            v26[2](v26, 1);
          }

          [(UIInterfaceActionSelectionTrackingController *)self _clearSystemProvidedGestureRecognizer];
          if (isHighlighted)
          {
            v31 = +[_UIStatistics alertButtonTapCount];
            [v31 incrementValueBy:1];

            [(UIInterfaceActionSelectionTrackingController *)self _invokeHandlerForInterfaceAction:action];
          }

          goto LABEL_26;
        }
      }

      else if ([(UIGestureRecognizer *)recognizerCopy state]!= UIGestureRecognizerStateCancelled)
      {
LABEL_28:

        goto LABEL_29;
      }

      v26[2](v26, 1);
      [(UIInterfaceActionSelectionTrackingController *)self _clearSystemProvidedGestureRecognizer];
LABEL_26:
      v28 = 0;
      goto LABEL_27;
    }
  }

LABEL_29:
}

void __88__UIInterfaceActionSelectionTrackingController__handleActionSelectionGestureRecognizer___block_invoke(uint64_t a1, int a2)
{
  if (*(a1 + 64) == 1)
  {
    v4 = [*(a1 + 32) isHighlighted];
    [*(a1 + 32) setHighlighted:1];
    if ((v4 & 1) == 0)
    {
      if (a2)
      {
        v5 = [*(a1 + 40) selectionRetargetFeedbackGenerator];
        [v5 selectionChangedAtLocation:{*(a1 + 48), *(a1 + 56)}];
      }
    }
  }
}

void __88__UIInterfaceActionSelectionTrackingController__handleActionSelectionGestureRecognizer___block_invoke_2(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) _allActionViewsIncludingCooperatingActionViews];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__UIInterfaceActionSelectionTrackingController__handleActionSelectionGestureRecognizer___block_invoke_3;
  v5[3] = &unk_1E70F3C38;
  v7 = a2;
  v6 = *(a1 + 40);
  [v4 enumerateObjectsUsingBlock:v5];
}

void __88__UIInterfaceActionSelectionTrackingController__handleActionSelectionGestureRecognizer___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(a1 + 40) & 1) != 0 || *(a1 + 32) != v3)
  {
    v4 = v3;
    [v3 setHighlighted:0];
    v3 = v4;
  }
}

uint64_t __88__UIInterfaceActionSelectionTrackingController__handleActionSelectionGestureRecognizer___block_invoke_4(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = [*(a1 + 32) _allActionViewsIncludingCooperatingActionViews];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __88__UIInterfaceActionSelectionTrackingController__handleActionSelectionGestureRecognizer___block_invoke_5;
  v4[3] = &unk_1E70F3C88;
  v4[4] = &v5;
  [v1 enumerateObjectsUsingBlock:v4];

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __88__UIInterfaceActionSelectionTrackingController__handleActionSelectionGestureRecognizer___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isHighlighted];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t __88__UIInterfaceActionSelectionTrackingController__handleActionSelectionGestureRecognizer___block_invoke_6(double *a1, int a2)
{
  result = [*(*(a1 + 4) + 80) isActive];
  if (a2)
  {
    if ((result & 1) == 0)
    {
      v5 = *(*(a1 + 4) + 80);
      v6 = a1[5];
      v7 = a1[6];

      return [v5 userInteractionStartedAtLocation:{v6, v7}];
    }
  }

  else if (result)
  {
    v8 = *(*(a1 + 4) + 80);
    v9 = a1[5];
    v10 = a1[6];

    return [v8 userInteractionEndedAtLocation:{v9, v10}];
  }

  return result;
}

- (BOOL)_isPresentedAndVisible
{
  WeakRetained = objc_loadWeakRetained(&self->_trackableContainerView);
  window = [WeakRetained window];
  v4 = window != 0;

  return v4;
}

- (BOOL)_allowSelectionForCurrentGestureLocationWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  WeakRetained = objc_loadWeakRetained(&self->_trackableContainerView);
  [recognizerCopy locationInView:WeakRetained];
  v7 = v6;
  v9 = v8;

  x = self->_actionSelectionInitialLocationInContainerView.x;
  y = self->_actionSelectionInitialLocationInContainerView.y;
  p_actionSelectionInitialLocationInContainerView = &self->_actionSelectionInitialLocationInContainerView;
  if (x == *MEMORY[0x1E695EFF8] && y == *(MEMORY[0x1E695EFF8] + 8))
  {
    return 1;
  }

  if (sqrt((v7 - x) * (v7 - x) + (v9 - y) * (v9 - y)) > 15.0)
  {
    *p_actionSelectionInitialLocationInContainerView = *MEMORY[0x1E695EFF8];
    return 1;
  }

  return 0;
}

- (id)_actionViewIncludingCooperatingActionViewsAtCurrentLocationForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __128__UIInterfaceActionSelectionTrackingController__actionViewIncludingCooperatingActionViewsAtCurrentLocationForGestureRecognizer___block_invoke;
  v8[3] = &unk_1E70F3D00;
  v10 = &v11;
  v5 = recognizerCopy;
  v9 = v5;
  [(UIInterfaceActionSelectionTrackingController *)self _performRecursivelyWithVisitedCooperatingControllers:0 block:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __128__UIInterfaceActionSelectionTrackingController__actionViewIncludingCooperatingActionViewsAtCurrentLocationForGestureRecognizer___block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v5 = [a2 _actionViewAtCurrentLocationForGestureRecognizer:*(a1 + 32)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *a3 = *(*(*(a1 + 40) + 8) + 40) != 0;
}

- (id)_actionViewAtCurrentLocationForGestureRecognizer:(id)recognizer
{
  v34 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  WeakRetained = objc_loadWeakRetained(&self->_trackableContainerView);
  [recognizerCopy locationInView:WeakRetained];
  v7 = v6;
  v9 = v8;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = self->_representationViews;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        _containingScrollView = [v15 _containingScrollView];
        if (!_containingScrollView || (v17 = objc_loadWeakRetained(&self->_trackableContainerView), [_containingScrollView convertPoint:v17 fromView:{v7, v9}], v19 = v18, v21 = v20, v17, objc_msgSend(_containingScrollView, "pointInside:withEvent:", 0, v19, v21)))
        {
          v22 = objc_loadWeakRetained(&self->_trackableContainerView);
          [v15 convertPoint:v22 fromView:{v7, v9}];
          v24 = v23;
          v26 = v25;

          if ([v15 pointInside:0 withEvent:{v24, v26}])
          {
            v27 = v15;

            goto LABEL_13;
          }
        }
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v27 = 0;
LABEL_13:

  return v27;
}

- (void)_initializeSelectionGestureRecognizer
{
  v3 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel__handleActionSelectionGestureRecognizer_];
  selectionGestureRecognizer = self->_selectionGestureRecognizer;
  self->_selectionGestureRecognizer = v3;

  [(UILongPressGestureRecognizer *)self->_selectionGestureRecognizer setAllowableMovement:1.79769313e308];
  [(UILongPressGestureRecognizer *)self->_selectionGestureRecognizer setMinimumPressDuration:0.0];
  [(UIGestureRecognizer *)self->_selectionGestureRecognizer setCancelsTouchesInView:0];
  [(UIGestureRecognizer *)self->_selectionGestureRecognizer setDelegate:self];
  [(UIGestureRecognizer *)self->_selectionGestureRecognizer setAllowedTouchTypes:&unk_1EFE2B308];
  [(UIGestureRecognizer *)self->_selectionGestureRecognizer setAllowedPressTypes:MEMORY[0x1E695E0F0]];
  [(UIGestureRecognizer *)self->_selectionGestureRecognizer setName:@"UIInterfaceAction.selection"];
  WeakRetained = objc_loadWeakRetained(&self->_trackableContainerView);
  [WeakRetained addGestureRecognizer:self->_selectionGestureRecognizer];

  v6 = [[UIHoverGestureRecognizer alloc] initWithTarget:self action:sel__rolloverActionChanged_];
  [(UIInterfaceActionSelectionTrackingController *)self setHoverGestureRecognizer:v6];

  hoverGestureRecognizer = [(UIInterfaceActionSelectionTrackingController *)self hoverGestureRecognizer];
  [hoverGestureRecognizer setDelegate:self];

  v9 = objc_loadWeakRetained(&self->_trackableContainerView);
  hoverGestureRecognizer2 = [(UIInterfaceActionSelectionTrackingController *)self hoverGestureRecognizer];
  [v9 addGestureRecognizer:hoverGestureRecognizer2];
}

- (void)_registerForScrollViewNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__UIInterfaceActionSelectionTrackingController__registerForScrollViewNotifications__block_invoke;
  v15[3] = &unk_1E70F3D28;
  objc_copyWeak(&v16, &location);
  v5 = [defaultCenter addObserverForName:@"_UIScrollViewWillBeginDraggingNotification" object:0 queue:mainQueue usingBlock:v15];
  scrollViewWillBeginDraggingNotificationToken = self->_scrollViewWillBeginDraggingNotificationToken;
  self->_scrollViewWillBeginDraggingNotificationToken = v5;

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__UIInterfaceActionSelectionTrackingController__registerForScrollViewNotifications__block_invoke_2;
  v13[3] = &unk_1E70F3D28;
  objc_copyWeak(&v14, &location);
  v7 = [defaultCenter addObserverForName:@"_UIScrollViewDidEndDraggingNotification" object:0 queue:mainQueue usingBlock:v13];
  scrollViewDidEndDraggingNotificationToken = self->_scrollViewDidEndDraggingNotificationToken;
  self->_scrollViewDidEndDraggingNotificationToken = v7;

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__UIInterfaceActionSelectionTrackingController__registerForScrollViewNotifications__block_invoke_3;
  v11[3] = &unk_1E70F3D28;
  objc_copyWeak(&v12, &location);
  v9 = [defaultCenter addObserverForName:@"_UIScrollViewDidEndDeceleratingNotification" object:0 queue:mainQueue usingBlock:v11];
  scrollViewDidEndDeceleratingNotificationToken = self->_scrollViewDidEndDeceleratingNotificationToken;
  self->_scrollViewDidEndDeceleratingNotificationToken = v9;

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __83__UIInterfaceActionSelectionTrackingController__registerForScrollViewNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 object];

  [WeakRetained _noteScrollView:v4 isUserScrolling:1];
}

void __83__UIInterfaceActionSelectionTrackingController__registerForScrollViewNotifications__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 userInfo];
  v4 = [v3 objectForKey:@"_UIScrollViewDidEndDraggingWillDecelerateUserInfoKey"];
  v5 = [v4 BOOLValue];

  if ((v5 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [v8 object];
    [WeakRetained _noteScrollView:v7 isUserScrolling:0];
  }
}

void __83__UIInterfaceActionSelectionTrackingController__registerForScrollViewNotifications__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 object];

  [WeakRetained _noteScrollView:v4 isUserScrolling:0];
}

- (void)_unregisterForScrollViewNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_scrollViewWillBeginDraggingNotificationToken];
  [defaultCenter removeObserver:self->_scrollViewDidEndDraggingNotificationToken];
  [defaultCenter removeObserver:self->_scrollViewDidEndDeceleratingNotificationToken];
}

- (void)_noteScrollView:(id)view isUserScrolling:(BOOL)scrolling
{
  scrollingCopy = scrolling;
  viewCopy = view;
  if ([(UIInterfaceActionSelectionTrackingController *)self _shouldDisableSelectionTrackingIfScrollingScrollView:?])
  {
    viewsRequiringSelectionGestureDisabling = self->_viewsRequiringSelectionGestureDisabling;
    if (scrollingCopy)
    {
      [(NSMutableSet *)viewsRequiringSelectionGestureDisabling addObject:viewCopy];
    }

    else
    {
      [(NSMutableSet *)viewsRequiringSelectionGestureDisabling removeObject:viewCopy];
    }

    [(UIGestureRecognizer *)self->_selectionGestureRecognizer setEnabled:[(NSMutableSet *)self->_viewsRequiringSelectionGestureDisabling count]== 0];
  }
}

- (BOOL)_shouldDisableSelectionTrackingIfScrollingScrollView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_actionsScrollView);
  if (WeakRetained == viewCopy)
  {
    v7 = 1;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_trackableContainerView);
    v7 = [v6 isDescendantOfView:viewCopy];
  }

  return v7;
}

- (void)_performRecursivelyWithVisitedCooperatingControllers:(id)controllers block:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  blockCopy = block;
  if (([controllersCopy containsObject:self] & 1) == 0)
  {
    if (!controllersCopy)
    {
      controllersCopy = [MEMORY[0x1E695DF70] array];
    }

    [controllersCopy addObject:self];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23[0] = 0;
    blockCopy[2](blockCopy, self, v23);
    if ((v21[3] & 1) == 0)
    {
      [(NSPointerArray *)self->_weakCooperatingSelectionTrackingControllers compact];
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = self->_weakCooperatingSelectionTrackingControllers;
      v9 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v9)
      {
        v10 = *v17;
LABEL_7:
        v11 = 0;
        while (1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __107__UIInterfaceActionSelectionTrackingController__performRecursivelyWithVisitedCooperatingControllers_block___block_invoke;
          v13[3] = &unk_1E70F3D50;
          v14 = blockCopy;
          v15 = &v20;
          [v12 _performRecursivelyWithVisitedCooperatingControllers:controllersCopy block:v13];
          LOBYTE(v12) = *(v21 + 24);

          if (v12)
          {
            break;
          }

          if (v9 == ++v11)
          {
            v9 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v9)
            {
              goto LABEL_7;
            }

            break;
          }
        }
      }
    }

    _Block_object_dispose(&v20, 8);
  }
}

uint64_t __107__UIInterfaceActionSelectionTrackingController__performRecursivelyWithVisitedCooperatingControllers_block___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a3;
  return result;
}

- (id)_allActionViewsIncludingCooperatingActionViews
{
  array = [MEMORY[0x1E695DF70] array];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __94__UIInterfaceActionSelectionTrackingController__allActionViewsIncludingCooperatingActionViews__block_invoke;
  v6[3] = &unk_1E70F3D78;
  v4 = array;
  v7 = v4;
  [(UIInterfaceActionSelectionTrackingController *)self _performRecursivelyWithVisitedCooperatingControllers:0 block:v6];

  return v4;
}

- (id)_allGestureRecognizers
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_selectionGestureRecognizer)
  {
    [array addObject:?];
  }

  if (self->_selectByPressGestureRecognizer)
  {
    [v4 addObject:?];
  }

  if (self->_systemProvidedGestureRecognizer)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (UIView)trackableContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_trackableContainerView);

  return WeakRetained;
}

- (UIScrollView)actionsScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_actionsScrollView);

  return WeakRetained;
}

- (CGPoint)actionSelectionInitialLocationInContainerView
{
  x = self->_actionSelectionInitialLocationInContainerView.x;
  y = self->_actionSelectionInitialLocationInContainerView.y;
  result.y = y;
  result.x = x;
  return result;
}

@end