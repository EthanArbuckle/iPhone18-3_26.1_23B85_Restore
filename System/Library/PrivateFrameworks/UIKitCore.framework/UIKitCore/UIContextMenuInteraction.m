@interface UIContextMenuInteraction
- ($9BEB610D0CE1B1EDC3D89DA2464F985F)_testing_metdataForMenuElements:(id)a3;
- (BOOL)_clickPresentationInteraction:(id)a3 shouldBeDelayedByGestureRecognizer:(id)a4;
- (BOOL)_clickPresentationInteraction:(id)a3 shouldMaintainKeyboardAssertionForFirstResponder:(id)a4 presentation:(id)a5;
- (BOOL)_clickPresentationInteractionShouldAllowDragAfterDismiss:(id)a3;
- (BOOL)_clickPresentationInteractionShouldAssociateWithDrag:(id)a3;
- (BOOL)_hasVisibleMenu;
- (BOOL)_reachedForceThreshold;
- (BOOL)_shouldKeepInputViewVisibleForStyle:(id)a3;
- (BOOL)allowSimultaneousRecognition;
- (BOOL)contextMenuPresentationShouldAllowSwipeToDismissForBeginningPanInteraction:(id)a3;
- (CGPoint)locationInView:(UIView *)view;
- (NSSet)_internalIdentifiersForDismissingMenu;
- (UIContextMenuInteraction)initWithDelegate:(id)delegate;
- (UIContextMenuInteractionAppearance)menuAppearance;
- (UIGestureRecognizer)_gestureRecognizerForBeginningDragRelationships;
- (UIGestureRecognizer)gestureRecognizerForFailureRelationships;
- (UIMenuLeaf)_selectedMenuLeaf;
- (UIView)view;
- (_UIClickPresentationInteraction)presentationInteraction;
- (id)_clickPresentationInteraction:(id)a3 interactionEffectForTargetedPreview:(id)a4;
- (id)_clickPresentationInteraction:(id)a3 liveDragPreviewForPresentation:(id)a4 dragItem:(id)a5;
- (id)_clickPresentationInteraction:(id)a3 previewForCancellingDragItem:(id)a4;
- (id)_defaultPreparationContextWithFirstResponderTarget:(id)a3;
- (id)_delegate_configurationForMenuAtLocation:(CGPoint)a3;
- (id)_delegate_contextMenuInteractionWillDisplayForConfiguration:(id)a3;
- (id)_delegate_contextMenuInteractionWillEndForConfiguration:(id)a3 presentation:(id)a4;
- (id)_delegate_getAccessoryViewsForConfiguration:(id)a3;
- (id)_delegate_previewForDismissingForConfiguration:(id)a3 clientReturnedPreview:(BOOL *)a4;
- (id)_delegate_previewForHighlightingForConfiguration:(id)a3;
- (id)_fulfilledConfigurationForConfiguration:(id)a3 atLocation:(CGPoint)a4;
- (id)_menuPreparedForDisplayWithMenu:(id)a3 firstResponder:(id)a4;
- (id)_proxySender;
- (id)_secondaryPreviewsForClickPresentationInteraction:(id)a3;
- (id)_suggestedMenuForConfiguration:(id)a3 atLocation:(CGPoint)a4 inCoordinateSpace:(id)a5;
- (id)clickPresentationInteraction:(id)a3 presentationForPresentingViewController:(id)a4;
- (id)clickPresentationInteraction:(id)a3 previewForHighlightingAtLocation:(CGPoint)a4;
- (id)contextMenuPresentation:(id)a3 dismissalPreviewForItem:(id)a4 clientReturnedPreview:(BOOL *)a5;
- (id)contextMenuPresentation:(id)a3 willDisplayMenu:(id)a4;
- (id)delegate;
- (id)gestureRecognizerForExclusionRelationships;
- (unint64_t)_actualLayoutForPreferredLayout:(unint64_t)a3 withConfiguration:(id)a4;
- (unint64_t)_fallbackDriverStyle;
- (unint64_t)_inputPrecision;
- (unint64_t)activationStyleForClickPresentationInteraction:(id)a3;
- (void)_clickPresentationInteraction:(id)a3 dragSessionDidEndForItems:(id)a4;
- (void)_clickPresentationInteraction:(id)a3 item:(id)a4 willAnimateDragCancelWithAnimator:(id)a5;
- (void)_clickPresentationInteraction:(id)a3 shouldBeginWithTouch:(id)a4 completion:(id)a5;
- (void)_clickPresentationInteraction:(id)a3 shouldPresentWithCompletion:(id)a4;
- (void)_clickPresentationInteractionEnded:(id)a3 forPresentation:(id)a4 reason:(unint64_t)a5;
- (void)_contextMenuPresentationPreviewWasTapped:(id)a3;
- (void)_delegate_performPreviewActionCommitAnimation:(id)a3;
- (void)_delegate_tappedPreviewForConfiguration:(id)a3 withAnimator:(id)a4;
- (void)_interactionShouldBeginAtPoint:(CAPoint3D)a3 completion:(id)a4;
- (void)_performCleanupForConfigurationWithIdentifier:(id)a3;
- (void)_prepareSceneActivationConfiguration:(id)a3;
- (void)_presentMenuAtLocation3D:(CAPoint3D)a3;
- (void)_requestSceneActivationWithConfiguration:(id)a3 animated:(BOOL)a4 sender:(id)a5 errorHandler:(id)a6;
- (void)_retargetDismissingMenuWithInternalIdentifier:(id)a3 toPreview:(id)a4 force:(BOOL)a5;
- (void)_setFallbackDriverStyle:(unint64_t)a3;
- (void)_viewTraitCollectionDidChange:(id)a3;
- (void)contextMenuPresentation:(id)a3 didBeginDragWithTouch:(id)a4;
- (void)contextMenuPresentation:(id)a3 didRequestDismissalWithReason:(unint64_t)a4 alongsideActions:(id)a5 completion:(id)a6;
- (void)contextMenuPresentation:(id)a3 didSelectMenuLeaf:(id)a4;
- (void)contextMenuPresentationDidEndPanInteraction:(id)a3;
- (void)dealloc;
- (void)deferredMenuElementWasFulfilled:(id)a3;
- (void)didMoveToView:(id)a3;
- (void)dismissMenu;
- (void)setAllowSimultaneousRecognition:(BOOL)a3;
- (void)setDrivers:(id)a3;
- (void)updateVisibleMenuWithBlock:(void *)block;
- (void)willMoveToView:(id)a3;
@end

@implementation UIContextMenuInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (_UIClickPresentationInteraction)presentationInteraction
{
  presentationInteraction = self->_presentationInteraction;
  if (!presentationInteraction)
  {
    v4 = [[_UIClickPresentationInteraction alloc] initWithDelegate:self];
    v5 = self->_presentationInteraction;
    self->_presentationInteraction = v4;

    [(_UIClickPresentationInteraction *)self->_presentationInteraction setDebugIdentifier:@"com.apple.UIKit.ContextMenuPresentation"];
    [(_UIClickPresentationInteraction *)self->_presentationInteraction setPresentationTypeDebugString:@"UIContextMenuInteraction"];
    presentationInteraction = self->_presentationInteraction;
  }

  return presentationInteraction;
}

- (BOOL)_hasVisibleMenu
{
  v2 = [(UIContextMenuInteraction *)self presentationsByIdentifier];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)dismissMenu
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(UIContextMenuInteraction *)self presentationInteraction];
  v4 = [v3 _isActive];

  if (v4)
  {
    v5 = [(UIContextMenuInteraction *)self presentationsByIdentifier];
    v6 = [v5 allKeys];
    v7 = [v6 copy];

    if ([v7 count])
    {
      if (!self->_delegateImplements.shouldAllowDragAfterDismiss || (-[UIContextMenuInteraction delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 _contextMenuInteractionShouldAllowDragAfterDismiss:self], v8, !v9) || (-[UIContextMenuInteraction presentationInteraction](self, "presentationInteraction"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "beginDragIfPossibleWithTouch:", 0), v10, (v11 & 1) == 0))
      {
        v12 = [(UIContextMenuInteraction *)self presentationInteraction];
        [v12 _cancelWithReason:8 alongsideActions:0 completion:0];

        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v13 = v7;
        v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v19;
          do
          {
            v17 = 0;
            do
            {
              if (*v19 != v16)
              {
                objc_enumerationMutation(v13);
              }

              [(UIContextMenuInteraction *)self _performCleanupForConfigurationWithIdentifier:*(*(&v18 + 1) + 8 * v17++), v18];
            }

            while (v15 != v17);
            v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
          }

          while (v15);
        }
      }
    }
  }
}

- (void)dealloc
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__UIContextMenuInteraction_dealloc__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [UIView performWithoutAnimation:v4];
  v3.receiver = self;
  v3.super_class = UIContextMenuInteraction;
  [(UIContextMenuInteraction *)&v3 dealloc];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_proxySender
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->__proxySender);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v2 = WeakRetained;
  }

  v5 = v2;

  return v2;
}

- (UIContextMenuInteraction)initWithDelegate:(id)delegate
{
  v4 = delegate;
  v30.receiver = self;
  v30.super_class = UIContextMenuInteraction;
  v5 = [(UIContextMenuInteraction *)&v30 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_delegate, v4);
    v6->_delegateImplements.highlightPreviewForItemWithIdentifier = objc_opt_respondsToSelector() & 1;

    WeakRetained = objc_loadWeakRetained(&v6->_delegate);
    v6->_delegateImplements.dismissalPreviewForItemWithIdentifier = objc_opt_respondsToSelector() & 1;

    v9 = objc_loadWeakRetained(&v6->_delegate);
    v6->_delegateImplements.willPerformPreviewAction = objc_opt_respondsToSelector() & 1;

    v10 = objc_loadWeakRetained(&v6->_delegate);
    v6->_delegateImplements.willDisplay = objc_opt_respondsToSelector() & 1;

    v11 = objc_loadWeakRetained(&v6->_delegate);
    v6->_delegateImplements.willEndForConfiguration = objc_opt_respondsToSelector() & 1;

    v12 = objc_loadWeakRetained(&v6->_delegate);
    v6->_delegateImplements.styleForMenu = objc_opt_respondsToSelector() & 1;

    v13 = objc_loadWeakRetained(&v6->_delegate);
    v6->_delegateImplements.accessoriesForMenu = objc_opt_respondsToSelector() & 1;

    v14 = objc_loadWeakRetained(&v6->_delegate);
    v6->_delegateImplements.shouldByDelayedByGestureRecognizer = objc_opt_respondsToSelector() & 1;

    v15 = objc_loadWeakRetained(&v6->_delegate);
    v6->_delegateImplements.asyncConfigurationForMenuAtLocation = objc_opt_respondsToSelector() & 1;

    v16 = objc_loadWeakRetained(&v6->_delegate);
    v6->_delegateImplements.overrideSuggestedActions = objc_opt_respondsToSelector() & 1;

    v17 = objc_loadWeakRetained(&v6->_delegate);
    v6->_delegateImplements.shouldPresent = objc_opt_respondsToSelector() & 1;

    v18 = objc_loadWeakRetained(&v6->_delegate);
    v6->_delegateImplements.shouldAllowDragAfterDismiss = objc_opt_respondsToSelector() & 1;

    v19 = objc_loadWeakRetained(&v6->_delegate);
    v6->_delegateImplements.shouldAllowSwipeToDismiss = objc_opt_respondsToSelector() & 1;

    v20 = objc_loadWeakRetained(&v6->_delegate);
    v6->_delegateImplements.shouldDeferCommitAnimation = objc_opt_respondsToSelector() & 1;

    v21 = objc_loadWeakRetained(&v6->_delegate);
    v6->_delegateImplements.interactionEffectForTargetedPreview = objc_opt_respondsToSelector() & 1;

    v22 = objc_loadWeakRetained(&v6->_delegate);
    v6->_delegateImplements.shouldAttemptToPresentConfiguration = objc_opt_respondsToSelector() & 1;

    v23 = objc_loadWeakRetained(&v6->_delegate);
    v6->_delegateImplements.didPerformMenuLeaf = objc_opt_respondsToSelector() & 1;

    if (!v6->_delegateImplements.highlightPreviewForItemWithIdentifier)
    {
      v24 = objc_loadWeakRetained(&v6->_delegate);
      v6->_delegateImplements.previewForHighlighting = objc_opt_respondsToSelector() & 1;

      v25 = objc_loadWeakRetained(&v6->_delegate);
      v6->_delegateImplements.previewForDismissing = objc_opt_respondsToSelector() & 1;
    }

    if (_UIIsPrivateMainBundle())
    {
      v26 = objc_loadWeakRetained(&v6->_delegate);
      v6->_delegateImplements.willCommit = objc_opt_respondsToSelector() & 1;
    }

    v27 = [MEMORY[0x1E695DF90] dictionary];
    [(UIContextMenuInteraction *)v6 setPresentationsByIdentifier:v27];

    v28 = [MEMORY[0x1E695DF90] dictionary];
    [(UIContextMenuInteraction *)v6 setConfigurationsByIdentifier:v28];

    _UIContextMenuRegisterDefaultPlatformMetricsIfNecessary();
  }

  return v6;
}

- (void)willMoveToView:(id)a3
{
  if (self->_presentationInteraction)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__UIContextMenuInteraction_willMoveToView___block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [UIView performWithoutAnimation:v5];
    v4 = [(_UIClickPresentationInteraction *)self->_presentationInteraction view];
    [v4 removeInteraction:self->_presentationInteraction];
  }

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)a3
{
  v4 = objc_storeWeak(&self->_view, a3);
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v6 = [(UIContextMenuInteraction *)self presentationInteraction];
    [WeakRetained addInteraction:v6];
  }
}

- (void)_viewTraitCollectionDidChange:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(UIContextMenuInteraction *)self presentationsByIdentifier:a3];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) viewTraitCollectionDidChange];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (UIContextMenuInteractionAppearance)menuAppearance
{
  v2 = [(UIContextMenuInteraction *)self presentationInteraction];
  v3 = [v2 activatedDriverStyle];

  if (v3 == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (CGPoint)locationInView:(UIView *)view
{
  v4 = view;
  v5 = [(UIContextMenuInteraction *)self presentationInteraction];
  [v5 locationInView:v4];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)updateVisibleMenuWithBlock:(void *)block
{
  v43[1] = *MEMORY[0x1E69E9840];
  v4 = block;
  if ([(_UIClickPresentationInteraction *)self->_presentationInteraction _isActive])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__UIContextMenuInteraction_updateVisibleMenuWithBlock___block_invoke;
    aBlock[3] = &unk_1E712C7C0;
    v41 = v4;
    v34 = _Block_copy(aBlock);
    v5 = [(UIContextMenuInteraction *)self presentationsByIdentifier];
    v6 = [v5 allValues];
    v7 = [v6 firstObject];

    if (!v7)
    {
      v23 = *(__UILogGetCategoryCachedImpl("UILog", &updateVisibleMenuWithBlock____s_category) + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "Called [UIContextMenuInteraction updateVisibleMenuWithBlock:] while no context menu is visible. This won't do anything.", buf, 2u);
      }

      goto LABEL_26;
    }

    v8 = [v7 visibleMenus];
    if (v8)
    {
      v9 = v8;
      if (dyld_program_sdk_at_least())
      {
        if (![v9 count])
        {
          v10 = [UIMenu menuWithChildren:MEMORY[0x1E695E0F0]];
          v43[0] = v10;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];

          v9 = v11;
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v12 = v9;
        v13 = [v12 countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v13)
        {
          v14 = v13;
          v31 = v4;
          obj = v12;
          v33 = *v37;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v37 != v33)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v36 + 1) + 8 * i);
              v17 = v34[2](v34, v16);
              if (v17)
              {
                v18 = v17;
                v19 = [v7 menuConfiguration];
                [v19 firstResponderTarget];
                v21 = v20 = v7;
                v22 = [(UIContextMenuInteraction *)self _menuPreparedForDisplayWithMenu:v18 firstResponder:v21];

                v7 = v20;
                [v20 displayMenu:v22 inPlaceOfMenu:v16];
              }
            }

            v14 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
          }

          while (v14);
          v4 = v31;
          v12 = obj;
        }

        v9 = v12;
        goto LABEL_24;
      }

      v30 = [v9 lastObject];
      v12 = (v34)[2](v34, v30);

      if (!v12)
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
      v24 = [v7 uiController];
      v25 = [v24 menuConfiguration];
      v9 = [v25 menu];

      v26 = (v34)[2](v34, v9);
      if (!v26)
      {
LABEL_25:

LABEL_26:
        goto LABEL_27;
      }

      v27 = v26;
      v28 = [v7 menuConfiguration];
      v29 = [v28 firstResponderTarget];
      v12 = [(UIContextMenuInteraction *)self _menuPreparedForDisplayWithMenu:v27 firstResponder:v29];
    }

    [v7 displayMenu:v12 inPlaceOfMenu:0];
    goto LABEL_24;
  }

LABEL_27:
}

id __55__UIContextMenuInteraction_updateVisibleMenuWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = (*(*(a1 + 32) + 16))();
  v5 = v4;
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 _copyPreservingMetadataAndSharingLeafObserversIfNeeded];
  }

  return v6;
}

- (void)setDrivers:(id)a3
{
  v4 = a3;
  v5 = [(UIContextMenuInteraction *)self presentationInteraction];
  [v5 setOverrideDrivers:v4];
}

- (unint64_t)_inputPrecision
{
  v2 = [(UIContextMenuInteraction *)self presentationInteraction];
  v3 = [v2 inputPrecision];

  return v3;
}

- (NSSet)_internalIdentifiersForDismissingMenu
{
  v2 = [(UIContextMenuInteraction *)self outgoingPresentation];
  v3 = [v2 menuConfiguration];
  v4 = [v3 internalIdentifiers];

  return v4;
}

- (void)_retargetDismissingMenuWithInternalIdentifier:(id)a3 toPreview:(id)a4 force:(BOOL)a5
{
  v14 = a3;
  v8 = a4;
  v9 = [(UIContextMenuInteraction *)self outgoingPresentation];
  v10 = v9;
  if (v9)
  {
    if (a5 || ([v9 menuConfiguration], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "internalIdentifiers"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "containsObject:", v14), v12, v11, v13))
    {
      [v10 retargetDismissingMenuToPreview:v8];
      [(UIContextMenuInteraction *)self setOutgoingPresentation:0];
    }
  }
}

- (unint64_t)_fallbackDriverStyle
{
  v2 = [(UIContextMenuInteraction *)self presentationInteraction];
  v3 = [v2 fallbackDriverStyle];

  return v3;
}

- (void)_setFallbackDriverStyle:(unint64_t)a3
{
  v4 = [(UIContextMenuInteraction *)self presentationInteraction];
  [v4 setFallbackDriverStyle:a3];
}

- (void)deferredMenuElementWasFulfilled:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__UIContextMenuInteraction_deferredMenuElementWasFulfilled___block_invoke;
  v6[3] = &unk_1E70F6A48;
  v7 = v4;
  v5 = v4;
  [(UIContextMenuInteraction *)self updateVisibleMenuWithBlock:v6];
}

id __60__UIContextMenuInteraction_deferredMenuElementWasFulfilled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (isDeferredElementVisibleInMenu_0(*(a1 + 32), v3))
  {
    v4 = [v3 copy];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (void)_presentMenuAtLocation3D:(CAPoint3D)a3
{
  z = a3.z;
  y = a3.y;
  x = a3.x;
  v10 = *MEMORY[0x1E69E9840];
  v8 = [(UIContextMenuInteraction *)self configurationsByIdentifier];
  if ([v8 count])
  {
  }

  else
  {
    v7 = [(UIContextMenuInteraction *)self pendingConfiguration];

    if (!v7)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __53__UIContextMenuInteraction__presentMenuAtLocation3D___block_invoke;
      v9[3] = &unk_1E7105EF8;
      v9[4] = self;
      [(UIContextMenuInteraction *)self _interactionShouldBeginAtPoint:v9 completion:x, y, z];
    }
  }
}

void __53__UIContextMenuInteraction__presentMenuAtLocation3D___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = [*(a1 + 32) presentationInteraction];
    [v3 present];
  }
}

- (void)setAllowSimultaneousRecognition:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIContextMenuInteraction *)self presentationInteraction];
  [v4 setAllowSimultaneousRecognition:v3];
}

- (BOOL)allowSimultaneousRecognition
{
  v2 = [(UIContextMenuInteraction *)self presentationInteraction];
  v3 = [v2 allowSimultaneousRecognition];

  return v3;
}

- (UIGestureRecognizer)gestureRecognizerForFailureRelationships
{
  v2 = [(UIContextMenuInteraction *)self presentationInteraction];
  v3 = [v2 gestureRecognizerForExclusionRelationship];

  return v3;
}

- (id)gestureRecognizerForExclusionRelationships
{
  v2 = [(UIContextMenuInteraction *)self presentationInteraction];
  v3 = [v2 gestureRecognizerForFailureRelationship];

  return v3;
}

- (UIGestureRecognizer)_gestureRecognizerForBeginningDragRelationships
{
  v2 = [(UIContextMenuInteraction *)self presentationInteraction];
  v3 = [v2 gestureRecognizerForBeginningDragRelationships];

  return v3;
}

- (BOOL)_reachedForceThreshold
{
  v2 = [(UIContextMenuInteraction *)self presentationInteraction];
  v3 = [v2 _reachedForceThreshold];

  return v3;
}

- (unint64_t)activationStyleForClickPresentationInteraction:(id)a3
{
  v4 = [(UIContextMenuInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = [(UIContextMenuInteraction *)self delegate];
  v7 = [v6 _activationMethodForContextMenuInteraction:self];

  return v7 == 1;
}

- (void)_clickPresentationInteraction:(id)a3 shouldBeginWithTouch:(id)a4 completion:(id)a5
{
  v16 = a4;
  v7 = a5;
  if (-[UIContextMenuInteraction _requiresTouchAuthentication](self, "_requiresTouchAuthentication") && ([v16 _touchAuthenticationRecord], v8 = objc_claimAutoreleasedReturnValue(), v8, v8) && (objc_msgSend(v16, "_touchAuthenticationRecord"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "shouldAllowEvents"), v9, (v10 & 1) == 0))
  {
    v7[2](v7, 2);
  }

  else
  {
    v11 = [(UIContextMenuInteraction *)self view];
    [(UIContextMenuInteraction *)self locationInView:v11];
    v13 = v12;
    v15 = v14;

    [(UIContextMenuInteraction *)self _interactionShouldBeginAtPoint:v7 completion:v13, v15, 0.0];
  }
}

- (BOOL)_clickPresentationInteractionShouldAssociateWithDrag:(id)a3
{
  v4 = [(UIContextMenuInteraction *)self menuAppearance];
  if (v4 != UIContextMenuInteractionAppearanceRich)
  {
    v5 = [(UIContextMenuInteraction *)self pendingConfiguration];
    v6 = [v5 _isMultiItemMenu];

    LOBYTE(v4) = v6;
  }

  return v4;
}

- (BOOL)_clickPresentationInteractionShouldAllowDragAfterDismiss:(id)a3
{
  if (!self->_delegateImplements.shouldAllowDragAfterDismiss)
  {
    return 0;
  }

  v3 = self;
  v4 = [(UIContextMenuInteraction *)self delegate];
  LOBYTE(v3) = [v4 _contextMenuInteractionShouldAllowDragAfterDismiss:v3];

  return v3;
}

- (id)clickPresentationInteraction:(id)a3 previewForHighlightingAtLocation:(CGPoint)a4
{
  v5 = [(UIContextMenuInteraction *)self pendingConfiguration:a3];
  v6 = [(UIContextMenuInteraction *)self _delegate_previewForHighlightingForConfiguration:v5];
  if (!v6)
  {
    v7 = [UITargetedPreview alloc];
    v8 = [(UIContextMenuInteraction *)self view];
    v6 = [(UITargetedPreview *)v7 initWithView:v8];
  }

  v9 = [(UIContextMenuInteraction *)self view];
  v10 = [v9 traitCollection];
  v11 = [v10 userInterfaceIdiom];
  v12 = v6;
  v13 = _UIContextMenuGetPlatformMetrics(v11);
  v14 = [v13 shouldApplyShadowHandler];

  if (v14)
  {
    v15 = (v14)[2](v14, v12);
  }

  else
  {
    v15 = 1;
  }

  v16 = [(UITargetedPreview *)v12 parameters];
  [v16 setAppliesShadow:v15];

  v17 = [v5 identifier];
  [(UITargetedPreview *)v12 set_internalIdentifier:v17];

  [v5 set_primarySourcePreview:v12];
  [(UITargetedPreview *)v12 _frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [(UITargetedPreview *)v12 target];
  v27 = [v26 container];
  v28 = [(UIView *)v27 _constrainRectWithinSceneBounds:v19 additionalInsets:v21, v23, v25, 0.0];
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v47.origin.x = v19;
  v47.origin.y = v21;
  v47.size.width = v23;
  v47.size.height = v25;
  v48.origin.x = v28;
  v48.origin.y = v30;
  v48.size.width = v32;
  v48.size.height = v34;
  if (!CGRectIntersectsRect(v47, v48))
  {
    v35 = v28 + v32 * 0.5;
    v36 = v30 + v34 * 0.5;
    v37 = [UIPreviewTarget alloc];
    v38 = [(UITargetedPreview *)v12 target];
    v39 = [v38 container];
    v40 = [(UITargetedPreview *)v12 target];
    v41 = v40;
    if (v40)
    {
      [v40 transform];
    }

    else
    {
      memset(v45, 0, sizeof(v45));
    }

    v42 = [(UIPreviewTarget *)v37 initWithContainer:v39 center:v45 transform:v35, v36];

    v43 = [(UITargetedPreview *)v12 retargetedPreviewWithTarget:v42];

    v12 = v43;
  }

  return v12;
}

- (id)_secondaryPreviewsForClickPresentationInteraction:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [(UIContextMenuInteraction *)self pendingConfiguration];
  v5 = v4;
  if (!v4 || !self->_delegateImplements.highlightPreviewForItemWithIdentifier && !self->_delegateImplements._dci_secondaryHighlightPreview)
  {
    goto LABEL_17;
  }

  v6 = [v4 _effectiveSecondaryItemIdentifiers];
  if (![v6 count])
  {

LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

  v7 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (self->_delegateImplements.highlightPreviewForItemWithIdentifier)
        {
          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [(UIContextMenuInteraction *)self delegate];
          v15 = [v14 contextMenuInteraction:self configuration:v5 highlightPreviewForItemWithIdentifier:v13];

          if (v15)
          {
            [v15 set_internalIdentifier:v13];
            [v7 addObject:v15];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

LABEL_18:

  return v7;
}

- (id)_clickPresentationInteraction:(id)a3 interactionEffectForTargetedPreview:(id)a4
{
  if (self->_delegateImplements.interactionEffectForTargetedPreview)
  {
    v5 = a4;
    v6 = [(UIContextMenuInteraction *)self pendingConfiguration];
    v7 = [(UIContextMenuInteraction *)self delegate];
    v8 = [v7 _contextMenuInteraction:self configuration:v6 interactionEffectForTargetedPreview:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)clickPresentationInteraction:(id)a3 presentationForPresentingViewController:(id)a4
{
  v5 = a4;
  v6 = [(UIContextMenuInteraction *)self pendingConfiguration];
  if (self->_delegateImplements.shouldAttemptToPresentConfiguration)
  {
    v7 = [(UIContextMenuInteraction *)self delegate];
    v8 = [v7 _contextMenuInteraction:self shouldAttemptToPresentConfiguration:v6];

    if (!v8)
    {
      v28 = 0;
      goto LABEL_55;
    }
  }

  v9 = [(UIContextMenuInteraction *)self view];
  [(UIContextMenuInteraction *)self locationInView:v9];
  v11 = v10;
  v13 = v12;

  v14 = [(UIContextMenuInteraction *)self _fulfilledConfigurationForConfiguration:v6 atLocation:v11, v13];
  if ([v14 isPresentable])
  {
    [(UIContextMenuInteraction *)self setPendingConfiguration:0];
    v15 = [(UIContextMenuInteraction *)self view];
    v16 = [v15 _window];
    v17 = [v16 windowScene];

    _UIFocusBehaviorSetOverrideFocusSystemEnabled(1, v17, self);
    v18 = [(UIContextMenuInteraction *)self view];
    _UIGameControllerNotifyRelevantSystemUIWillShow(v17, v18);

    v19 = [(UIContextMenuInteraction *)self _delegate_contextMenuInteractionWillDisplayForConfiguration:v6];
    if (!self->_delegateImplements.styleForMenu || (-[UIContextMenuInteraction delegate](self, "delegate"), v20 = objc_claimAutoreleasedReturnValue(), [v20 _contextMenuInteraction:self styleForMenuWithConfiguration:v6], v21 = objc_claimAutoreleasedReturnValue(), v20, !v21))
    {
      v21 = +[_UIContextMenuStyle defaultStyle];
    }

    if ([v21 showsAccessoriesForCompactMenu] && -[UIContextMenuInteraction menuAppearance](self, "menuAppearance") == UIContextMenuInteractionAppearanceCompact)
    {
      v22 = [(UIContextMenuInteraction *)self _delegate_getAccessoryViewsForConfiguration:v6];
      [v14 setAccessoryViews:v22];
    }

    if ([v21 shouldMenuOverlapSourcePreview] && _UIContextMenuMagicMorphAnimationEnabled())
    {
      v23 = [v14 sourcePreview];
      v24 = [v23 _resolvedMorphablePreview];
      [v14 setSourcePreview:v24];
    }

    if ([(UIContextMenuInteraction *)self menuAppearance]== UIContextMenuInteractionAppearanceCompact)
    {
      [v21 setPreferredLayout:3];
      if (v21)
      {
        [v21 _preferredAnchor];
        if (v55 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (*(&v55 + 1) == 0x7FFFFFFFFFFFFFFFLL)
          {
            v25 = [v6 _primarySourcePreview];
            v26 = [v25 target];
            v27 = [v26 container];

            [(UIContextMenuInteraction *)self locationInView:v27];
            [v21 set_preferredMenuAttachmentPoint:?];
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v55 = xmmword_18A683DD0;
            [v21 set_preferredAnchor:&v55];
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
      [v21 setPreferredLayout:{-[UIContextMenuInteraction _actualLayoutForPreferredLayout:withConfiguration:](self, "_actualLayoutForPreferredLayout:withConfiguration:", objc_msgSend(v21, "preferredLayout"), v14)}];
    }

    if (!v21)
    {
      goto LABEL_33;
    }

LABEL_22:
    [v21 _preferredAnchor];
    if (v55 != __PAIR128__(0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL) || ![v6 preferredMenuAlignment])
    {
LABEL_33:
      v35 = [v6 preferredMenuElementOrder];
      if (v35 == 2)
      {
        v36 = 0;
      }

      else
      {
        if (v35 != 1)
        {
          goto LABEL_38;
        }

        v36 = 1;
      }

      [v21 set_orderMenuBasedOnPriority:v36];
LABEL_38:
      v37 = [(UIContextMenuInteraction *)self _shouldKeepInputViewVisibleForStyle:v21];
      if (v37)
      {
        [v21 set_shouldAvoidInputViews:1];
      }

      v38 = !v37;
      v39 = [v21 containerView];

      if (v39)
      {
        goto LABEL_51;
      }

      v40 = [(UIContextMenuInteraction *)self view];
      v41 = [v40 _window];

      if (+[_UIRemoteKeyboards enabled])
      {
        if (([v41 _isRemoteKeyboardWindow] & 1) != 0 || objc_msgSend(v41, "_isRemoteInputHostWindow"))
        {
          v42 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
          v43 = [v42 keyboardWindow];

          if (v43)
          {
            if (([v43 isHidden] & 1) == 0)
            {
              v54 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
              v44 = [v54 visualModeManager];
              v53 = [v44 shouldShowWithinAppWindow];

              if ((v53 & 1) == 0)
              {
                v45 = v43;

                v41 = v45;
              }
            }
          }
        }

        else if (![v41 _isTextEffectsWindow])
        {
          goto LABEL_50;
        }

        [v21 set_shouldAvoidInputViews:{+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI")}];
        v38 = 0;
      }

LABEL_50:
      [v21 setContainerView:v41];

LABEL_51:
      v46 = [v14 previewViewController];

      if (v46)
      {
        v47 = [v14 previewViewController];
        [v21 setHasInteractivePreview:{objc_msgSend(v47, "_allowsUserInteractionWhenPreviewedInContextMenu") | objc_msgSend(v21, "hasInteractivePreview")}];
      }

      v48 = [_UIContextMenuPresentation alloc];
      v49 = [(UIContextMenuInteraction *)self outgoingPresentation];
      v28 = [(_UIContextMenuPresentation *)v48 initWithPresentingViewController:v5 configuration:v14 style:v21 outgoingPresentation:v49];

      [(_UIContextMenuPresentation *)v28 setDelegate:self];
      [(_UIContextMenuPresentation *)v28 setSuppressInputViewDuringPresentation:v38];
      [(_UIContextMenuPresentation *)v28 setAlongsideAnimatorForPresentation:v19];
      v50 = [(UIContextMenuInteraction *)self presentationsByIdentifier];
      v51 = [v14 identifier];
      [v50 setObject:v28 forKeyedSubscript:v51];

      goto LABEL_54;
    }

    v29 = [(UIContextMenuInteraction *)self view];
    v30 = [v29 effectiveUserInterfaceLayoutDirection];

    v31 = [v6 preferredMenuAlignment];
    if (v31 == 3)
    {
      v32 = v30 == 0;
      v33 = 2;
      v34 = 8;
    }

    else
    {
      if (v31 != 1)
      {
        v33 = 0;
LABEL_32:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *&v55 = 0x7FFFFFFFFFFFFFFFLL;
        *(&v55 + 1) = v33;
        [v21 set_preferredAnchor:&v55];
        goto LABEL_33;
      }

      v32 = v30 == 0;
      v33 = 8;
      v34 = 2;
    }

    if (v32)
    {
      v33 = v34;
    }

    goto LABEL_32;
  }

  v28 = 0;
LABEL_54:

LABEL_55:

  return v28;
}

- (BOOL)_shouldKeepInputViewVisibleForStyle:(id)a3
{
  v4 = a3;
  v5 = [v4 inputViewVisibility];
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (v5 || [v4 preferredLayout] != 3)
  {
    LOBYTE(v8) = 0;
    goto LABEL_7;
  }

  v6 = +[UIDevice currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
LABEL_5:
    LOBYTE(v8) = 1;
  }

  else
  {
    v10 = [(UIContextMenuInteraction *)self view];
    v11 = [v10 _window];
    v12 = [v11 traitCollection];

    if ([v12 verticalSizeClass] == 1)
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v13 = [v12 preferredContentSizeCategory];
      v8 = _UIContentSizeCategoryIsAccessibilityContentSizeCategory(v13, v14) ^ 1;
    }
  }

LABEL_7:

  return v8;
}

- (unint64_t)_actualLayoutForPreferredLayout:(unint64_t)a3 withConfiguration:(id)a4
{
  v4 = a3;
  if (a3 == 100)
  {
    v5 = [a4 previewViewController];
    v4 = v5 == 0;
  }

  return v4;
}

- (id)_fulfilledConfigurationForConfiguration:(id)a3 atLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v7 identifier];
  [v8 setIdentifier:v9];

  v10 = [v7 _internalIdentifier];
  v11 = [v7 _internalSecondaryItemIdentifiers];
  [v8 setPrimaryInternalIdentifier:v10 secondaryIdentifiers:v11];

  v12 = [v7 firstResponderTarget];
  if (v12)
  {
    [v8 setFirstResponderTarget:v12];
  }

  else
  {
    v13 = [(UIContextMenuInteraction *)self view];
    [v8 setFirstResponderTarget:v13];
  }

  v14 = [v7 _primarySourcePreview];
  [v8 setSourcePreview:v14];

  v15 = [v7 actionProvider];
  if (v15)
  {
    v16 = dyld_program_sdk_at_least();
    v17 = [(UIContextMenuInteraction *)self view];
    v18 = [(UIContextMenuInteraction *)self _suggestedMenuForConfiguration:v7 atLocation:v17 inCoordinateSpace:x, y];

    if (v16)
    {
      v19 = [v18 children];
      v20 = (v15)[2](v15, v19);

      v21 = [v8 firstResponderTarget];
      v22 = [(UIContextMenuInteraction *)self _menuPreparedForDisplayWithMenu:v20 firstResponder:v21];
    }

    else
    {
      v23 = [v8 firstResponderTarget];
      v41 = [_UIActionBridge actionMenuForMenu:v18 firstTarget:v23 includeHidden:1];
      v24 = [v41 children];
      v40 = (v15)[2](v15, v24);

      v25 = [_UIActionBridge actionMenuForMenu:v40 firstTarget:v23 includeHidden:0];
      v26 = [(UIContextMenuInteraction *)self _defaultPreparationContextWithFirstResponderTarget:v23];
      BYTE4(location) = 0;
      LODWORD(location) = 0;
      [v25 _resolveElementSizeWithContext:v26];
      [v25 children];
      v39 = v18;
      v28 = v27 = v15;
      v29 = _menuElementsPreparedForDisplay(v28, [v25 _resolvedElementSize], v26, &location);
      v22 = [v25 menuByReplacingChildren:v29];

      v15 = v27;
      LOBYTE(location) = 1;
      [v22 setMetadata:location | (BYTE4(location) << 32)];
    }

    [v8 setMenu:v22];
  }

  v30 = [v7 previewProvider];
  v31 = [v7 _effectiveSecondaryItemIdentifiers];
  [v8 setRepresentedItemCount:{objc_msgSend(v31, "count") + 1}];

  v32 = [(UIContextMenuInteraction *)self presentationInteraction];
  v33 = [v32 secondaryEffectPreviews];
  [v8 setSecondarySourcePreviews:v33];

  if ([v7 _clientDidSetBadgeCount])
  {
    v34 = [v7 badgeCount];
  }

  else
  {
    v34 = [v8 representedItemCount];
  }

  [v8 setBadgeCount:v34];
  if ([(UIContextMenuInteraction *)self menuAppearance]== UIContextMenuInteractionAppearanceRich)
  {
    if (([v8 isMultiItemMenu] & 1) == 0)
    {
      if (v30)
      {
        v35 = v30[2](v30);
        [v8 setPreviewViewController:v35];
      }

      if (self->_delegateImplements.willCommit || self->_delegateImplements.willPerformPreviewAction)
      {
        objc_initWeak(&location, self);
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __79__UIContextMenuInteraction__fulfilledConfigurationForConfiguration_atLocation___block_invoke;
        v42[3] = &unk_1E70F7450;
        objc_copyWeak(&v43, &location);
        v36 = [UIAction actionWithHandler:v42];
        [v8 setPreviewAction:v36];

        objc_destroyWeak(&v43);
        objc_destroyWeak(&location);
      }
    }

    v37 = [(UIContextMenuInteraction *)self _delegate_getAccessoryViewsForConfiguration:v7];
    [v8 setAccessoryViews:v37];
  }

  return v8;
}

void __79__UIContextMenuInteraction__fulfilledConfigurationForConfiguration_atLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _contextMenuPresentationPreviewWasTapped:v4];
}

- (id)_defaultPreparationContextWithFirstResponderTarget:(id)a3
{
  v4 = [_UIMenuPreparationContext contextWithPreparer:self firstResponderTarget:a3];
  [v4 setDeferredElementDelegate:self];
  [v4 setSupportsCustomViewMenuElements:1];
  [v4 setShouldTrackVisibleSelection:&__block_literal_global_732];
  v5 = [(UIContextMenuInteraction *)self view];
  v6 = [v5 traitCollection];
  v7 = _UIContextMenuGetPlatformMetrics([v6 userInterfaceIdiom]);
  v8 = [v7 overrideElementSize];

  if (v8)
  {
    v9 = [v4 elementSizeSolver];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__UIContextMenuInteraction__defaultPreparationContextWithFirstResponderTarget___block_invoke_2;
    v12[3] = &unk_1E712C808;
    v13 = v9;
    v14 = v8;
    v10 = v9;
    [v4 setElementSizeSolver:v12];
  }

  return v4;
}

BOOL __79__UIContextMenuInteraction__defaultPreparationContextWithFirstResponderTarget___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = _UIContextMenuCellSizeForElementSize(a3);
  v5 = 3;
  if (v4 != 1)
  {
    v5 = 0;
  }

  if (!v4)
  {
    v5 = 4;
  }

  return v5 <= a2;
}

uint64_t __79__UIContextMenuInteraction__defaultPreparationContextWithFirstResponderTarget___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)_menuPreparedForDisplayWithMenu:(id)a3 firstResponder:(id)a4
{
  v6 = a3;
  v7 = [(UIContextMenuInteraction *)self _defaultPreparationContextWithFirstResponderTarget:a4];
  [v7 setSupportsHeaderView:1];
  v8 = [(UIContextMenuInteraction *)self _proxySender];
  [v7 setSender:v8];

  [v7 setUseSenderAsResponderSender:{-[UIContextMenuInteraction _useSenderAsResponderSender](self, "_useSenderAsResponderSender")}];
  v9 = v6;
  v10 = v7;
  if ([v9 metadata])
  {
    v11 = v9;
  }

  else
  {
    [v10 setTracksSelection:{(objc_msgSend(v9, "options") & 0x80) == 0}];
    v19 = 0;
    v18 = 0;
    v12 = [_UIActionBridge validatedCommandMenuForMenu:v9 context:v10];
    v13 = [v12 _resolvedElementSize];
    v14 = [v12 children];
    v15 = _menuElementsPreparedForDisplay(v14, v13, v10, &v18);
    v11 = [v12 menuByReplacingChildren:v15];

    LOBYTE(v18) = 1;
    if ([v10 supportsHeaderView])
    {
      v16 = [v9 headerView];
      HIBYTE(v18) |= v16 != 0;
    }

    [v11 setMetadata:v18 | (v19 << 32)];
  }

  return v11;
}

- (void)_clickPresentationInteractionEnded:(id)a3 forPresentation:(id)a4 reason:(unint64_t)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 menuConfiguration];
    v12 = [(UIContextMenuInteraction *)self configurationsByIdentifier];
    v13 = [v11 identifier];
    v14 = [v12 objectForKeyedSubscript:v13];

    goto LABEL_5;
  }

  v15 = [(UIContextMenuInteraction *)self pendingConfiguration];

  if (v15)
  {
    v14 = [(UIContextMenuInteraction *)self pendingConfiguration];
    [(UIContextMenuInteraction *)self setPendingConfiguration:0];
LABEL_5:
    v16 = [(UIContextMenuInteraction *)self view];
    v17 = [v16 _window];
    v18 = [v17 windowScene];
    _UIFocusBehaviorSetOverrideFocusSystemEnabled(0, v18, self);

    v19 = [(UIContextMenuInteraction *)self _delegate_contextMenuInteractionWillEndForConfiguration:v14 presentation:v10];
    if (a5 != 10)
    {
      if (v10)
      {
        [v10 setAlongsideAnimatorForDismissal:v19];
        if (a5 == 9)
        {
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __86__UIContextMenuInteraction__clickPresentationInteractionEnded_forPresentation_reason___block_invoke;
          v24[3] = &unk_1E70F35B8;
          v24[4] = self;
          v25 = v14;
          [v19 addAnimations:v24];
        }

        goto LABEL_15;
      }

LABEL_14:
      v23 = [v14 identifier];
      [(UIContextMenuInteraction *)self _performCleanupForConfigurationWithIdentifier:v23];

      [v19 performAllAnimations];
      [v19 performAllCompletions];
LABEL_15:

      goto LABEL_16;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v21 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_13;
      }

      v22 = [v14 identifier];
      *buf = 138412290;
      v27 = v22;
      _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "Failed to present a context menu for configuration with identifier %@. This is likely due to a different presentation occuring during the lifecycle of the interaction.", buf, 0xCu);
    }

    else
    {
      v20 = *(__UILogGetCategoryCachedImpl("Assert", &_clickPresentationInteractionEnded_forPresentation_reason____s_category) + 8);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v21 = v20;
      v22 = [v14 identifier];
      *buf = 138412290;
      v27 = v22;
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Failed to present a context menu for configuration with identifier %@. This is likely due to a different presentation occuring during the lifecycle of the interaction.", buf, 0xCu);
    }

LABEL_13:
    goto LABEL_14;
  }

LABEL_16:
}

void __86__UIContextMenuInteraction__clickPresentationInteractionEnded_forPresentation_reason___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) identifier];
  [v1 _performCleanupForConfigurationWithIdentifier:v2];
}

- (void)_clickPresentationInteraction:(id)a3 dragSessionDidEndForItems:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__252;
  v23 = __Block_byref_object_dispose__252;
  v24 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v8)
  {
    v9 = *v16;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = [*(*(&v15 + 1) + 8 * v10) _uicmi_getAssociatedMenuIdentifier];
      v12 = v20[5];
      v20[5] = v11;

      if (v20[5])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v25 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (v20[5])
  {
    v13 = dispatch_time(0, 2000000000);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __84__UIContextMenuInteraction__clickPresentationInteraction_dragSessionDidEndForItems___block_invoke;
    v14[3] = &unk_1E70FE3F8;
    v14[4] = self;
    v14[5] = &v19;
    dispatch_after(v13, MEMORY[0x1E69E96A0], v14);
  }

  _Block_object_dispose(&v19, 8);
}

- (void)_clickPresentationInteraction:(id)a3 shouldPresentWithCompletion:(id)a4
{
  if (self->_delegateImplements.shouldPresent)
  {
    v5 = a4;
    v7 = [(UIContextMenuInteraction *)self delegate];
    [v7 _contextMenuInteraction:self shouldPresentWithCompletion:v5];
  }

  else
  {
    v6 = *(a4 + 2);
    v7 = a4;
    v6();
  }
}

- (BOOL)_clickPresentationInteraction:(id)a3 shouldBeDelayedByGestureRecognizer:(id)a4
{
  if (!self->_delegateImplements.shouldByDelayedByGestureRecognizer)
  {
    return 0;
  }

  v4 = self;
  v5 = a4;
  v6 = [(UIContextMenuInteraction *)v4 delegate];
  LOBYTE(v4) = [v6 _contextMenuInteraction:v4 shouldBeDelayedByGestureRecognizer:v5];

  return v4;
}

- (BOOL)_clickPresentationInteraction:(id)a3 shouldMaintainKeyboardAssertionForFirstResponder:(id)a4 presentation:(id)a5
{
  v6 = a4;
  v7 = [a5 uiController];
  v8 = [v7 shouldMaintainKeyboardAssertionForFirstResponder:v6];

  return v8;
}

- (BOOL)contextMenuPresentationShouldAllowSwipeToDismissForBeginningPanInteraction:(id)a3
{
  v4 = [(UIContextMenuInteraction *)self presentationInteraction];
  [v4 beginPanInteraction];

  if (!self->_delegateImplements.shouldAllowSwipeToDismiss)
  {
    return 1;
  }

  v5 = [(UIContextMenuInteraction *)self delegate];
  v6 = [v5 _contextMenuInteractionShouldAllowSwipeToDismiss:self];

  return v6;
}

- (void)contextMenuPresentationDidEndPanInteraction:(id)a3
{
  v3 = [(UIContextMenuInteraction *)self presentationInteraction];
  [v3 endPanInteraction];
}

- (void)contextMenuPresentation:(id)a3 didRequestDismissalWithReason:(unint64_t)a4 alongsideActions:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(UIContextMenuInteraction *)self presentationInteraction];
  v14 = [v13 _isActive];

  if (v14)
  {
    v15 = [(UIContextMenuInteraction *)self presentationsByIdentifier];
    v16 = [v10 menuConfiguration];
    v17 = [v16 identifier];
    v18 = [v15 objectForKeyedSubscript:v17];

    v19 = 1;
    if (a4 <= 1)
    {
      v22 = 5;
      if (a4 != 1)
      {
        v22 = 0;
      }

      v19 = 1;
      if (a4)
      {
        v20 = v22;
      }

      else
      {
        v20 = 3;
      }
    }

    else
    {
      switch(a4)
      {
        case 2uLL:
          v20 = 6;
          break;
        case 3uLL:
          v20 = 7;
          break;
        case 6uLL:

          v18 = 0;
          v19 = 0;
          v20 = 2;
          break;
        default:
          v20 = 0;
          break;
      }
    }

    [(UIContextMenuInteraction *)self setOutgoingPresentation:v18];
    v23 = [(UIContextMenuInteraction *)self presentationInteraction];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __110__UIContextMenuInteraction_contextMenuPresentation_didRequestDismissalWithReason_alongsideActions_completion___block_invoke;
    v27[3] = &unk_1E70FD548;
    v29 = v12;
    v27[4] = self;
    v24 = v18;
    v28 = v24;
    [v23 _cancelWithReason:v20 alongsideActions:v11 completion:v27];

    if (v19)
    {
      v25 = [v24 menuConfiguration];
      v26 = [v25 identifier];
      [(UIContextMenuInteraction *)self _performCleanupForConfigurationWithIdentifier:v26];
    }
  }

  else
  {
    v21 = *(__UILogGetCategoryCachedImpl("UILog", &contextMenuPresentation_didRequestDismissalWithReason_alongsideActions_completion____s_category) + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "Ignoring attempt to dismiss a context menu. This might be due to a re-entrant dismiss call.", buf, 2u);
    }
  }
}

void __110__UIContextMenuInteraction_contextMenuPresentation_didRequestDismissalWithReason_alongsideActions_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) outgoingPresentation];
  v4 = *(a1 + 40);

  if (v3 == v4)
  {
    v5 = *(a1 + 32);

    [v5 setOutgoingPresentation:0];
  }
}

- (void)contextMenuPresentation:(id)a3 didBeginDragWithTouch:(id)a4
{
  v5 = a4;
  v6 = [(UIContextMenuInteraction *)self presentationInteraction];
  [v6 beginDragIfPossibleWithTouch:v5];
}

- (id)_clickPresentationInteraction:(id)a3 liveDragPreviewForPresentation:(id)a4 dragItem:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v7)
  {
    v9 = [a3 associatedDragInteraction];
    v10 = [v8 _dragDropSession];
    v11 = [v9 _sessionPrefersFullSizePreviews:v10];

    v12 = [v7 livePreviewForDragItem:v8 preferringFullSize:v11];
    if (v12)
    {
      v13 = [v7 menuConfiguration];
      v14 = [v13 identifier];

      [v8 _uicmi_setAssociatedMenuIdentifier:v14];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_clickPresentationInteraction:(id)a3 previewForCancellingDragItem:(id)a4
{
  v5 = a4;
  v6 = [v5 _uicmi_getAssociatedMenuIdentifier];
  if (v6 && (-[UIContextMenuInteraction presentationsByIdentifier](self, "presentationsByIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKeyedSubscript:v6], v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    v9 = [v8 previewForCancellingDragItem:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_clickPresentationInteraction:(id)a3 item:(id)a4 willAnimateDragCancelWithAnimator:(id)a5
{
  v10 = a5;
  v7 = [a4 _uicmi_getAssociatedMenuIdentifier];
  if (v7)
  {
    v8 = [(UIContextMenuInteraction *)self presentationsByIdentifier];
    v9 = [v8 objectForKeyedSubscript:v7];

    [v9 dragWillCancelWithAnimator:v10];
  }
}

- (void)_performCleanupForConfigurationWithIdentifier:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    if (!os_variant_has_internal_diagnostics())
    {
      goto LABEL_4;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v10 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }

      v11 = [(UIContextMenuInteraction *)self presentationsByIdentifier];
      v12 = 138412290;
      v13 = v11;
      _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Somehow made it to cleanup step with a nil identifier. Current presentations: %@.", &v12, 0xCu);
    }

    else
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &_performCleanupForConfigurationWithIdentifier____s_category) + 8);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      v10 = v9;
      v11 = [(UIContextMenuInteraction *)self presentationsByIdentifier];
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Somehow made it to cleanup step with a nil identifier. Current presentations: %@.", &v12, 0xCu);
    }

LABEL_9:
    goto LABEL_4;
  }

  v5 = [(UIContextMenuInteraction *)self presentationsByIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [(UIContextMenuInteraction *)self presentationsByIdentifier];
  [v7 removeObjectForKey:v4];

  v8 = [(UIContextMenuInteraction *)self configurationsByIdentifier];
  [v8 removeObjectForKey:v4];

LABEL_4:
}

- (void)_contextMenuPresentationPreviewWasTapped:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_delegateImplements.willCommit || self->_delegateImplements.willPerformPreviewAction)
  {
    v6 = [v4 menuConfiguration];
    v7 = [v6 previewViewController];

    v8 = [_UIContextMenuAnimator animatorWithViewController:v7];
    [(UIContextMenuInteraction *)self setPendingCommitAnimator:v8];
    v9 = [(UIContextMenuInteraction *)self configurationsByIdentifier];
    v10 = [v5 menuConfiguration];
    v11 = [v10 identifier];
    v12 = [v9 objectForKeyedSubscript:v11];

    [(UIContextMenuInteraction *)self _delegate_tappedPreviewForConfiguration:v12 withAnimator:v8];
    if ([v8 preferredCommitStyle] == 1 && objc_msgSend(v8, "hasAnyActions"))
    {
      v13 = [v5 uiController];
      v14 = [v13 platterContainerView];
      v15 = [v14 window];

      v16 = [_UIContextMenuCommitAnimation alloc];
      v17 = [v5 uiController];
      v18 = [v17 contentPlatterView];
      v19 = [(_UIContextMenuCommitAnimation *)v16 initWithSource:v18 container:v15];

      v28[0] = 0;
      v28[1] = v28;
      v28[2] = 0x2020000000;
      v29 = 0;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __69__UIContextMenuInteraction__contextMenuPresentationPreviewWasTapped___block_invoke;
      v24[3] = &unk_1E70FB728;
      v27 = v28;
      v20 = v19;
      v25 = v20;
      v26 = self;
      [(UIContextMenuInteraction *)self _delegate_performPreviewActionCommitAnimation:v24];

      _Block_object_dispose(v28, 8);
    }

    else
    {
      if ([v8 hasAnyActions])
      {
        v21 = 4;
      }

      else
      {
        v21 = 3;
      }

      v22 = [(UIContextMenuInteraction *)self presentationInteraction];
      [v22 _cancelWithReason:v21 alongsideActions:0 completion:0];
    }

    v23 = [v12 identifier];
    [(UIContextMenuInteraction *)self _performCleanupForConfigurationWithIdentifier:v23];
  }
}

void __69__UIContextMenuInteraction__contextMenuPresentationPreviewWasTapped___block_invoke(void *a1)
{
  v1 = *(a1[6] + 8);
  if (*(v1 + 24) == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "The context menu commit animation cannot be performed more than once.", buf, 2u);
      }
    }

    else
    {
      v2 = *(__UILogGetCategoryCachedImpl("Assert", &kClickPresentationInteractionTypeDebugString_block_invoke___s_category) + 8);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "The context menu commit animation cannot be performed more than once.", buf, 2u);
      }
    }
  }

  else
  {
    *(v1 + 24) = 1;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __69__UIContextMenuInteraction__contextMenuPresentationPreviewWasTapped___block_invoke_123;
    v5[3] = &unk_1E70F3590;
    v3 = a1[4];
    v5[4] = a1[5];
    [v3 animateWithAlongsideActions:v5 completion:0];
  }
}

void __69__UIContextMenuInteraction__contextMenuPresentationPreviewWasTapped___block_invoke_123(uint64_t a1)
{
  v1 = [*(a1 + 32) presentationInteraction];
  [v1 _cancelWithReason:4 alongsideActions:0 completion:0];
}

- (void)contextMenuPresentation:(id)a3 didSelectMenuLeaf:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_storeWeak(&self->__selectedMenuLeaf, v7);
  v8 = [(UIContextMenuInteraction *)self _proxySender];
  v14 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v10 = [v6 menuConfiguration];
    v11 = [v10 firstResponderTarget];
    v12 = [v9 _resolvedTargetFromFirstTarget:v11 sender:v8 shouldUseFallbackActionOut:&v14];

    if (!v12)
    {
      goto LABEL_10;
    }

    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v9 _performFallbackActionWithSender:v8 target:v12];
        goto LABEL_8;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  [v7 performWithSender:v8 target:v12];
LABEL_8:
  if (self->_delegateImplements.didPerformMenuLeaf)
  {
    v13 = [(UIContextMenuInteraction *)self delegate];
    [v13 _contextMenuInteraction:self didPerformMenuLeaf:v7 target:v12];
  }

LABEL_10:
  objc_storeWeak(&self->__selectedMenuLeaf, 0);
}

- (id)contextMenuPresentation:(id)a3 willDisplayMenu:(id)a4
{
  v6 = a4;
  v7 = [a3 menuConfiguration];
  v8 = [v7 firstResponderTarget];
  v9 = [(UIContextMenuInteraction *)self _menuPreparedForDisplayWithMenu:v6 firstResponder:v8];

  return v9;
}

- (id)contextMenuPresentation:(id)a3 dismissalPreviewForItem:(id)a4 clientReturnedPreview:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(UIContextMenuInteraction *)self configurationsByIdentifier];
  v11 = [v10 objectForKeyedSubscript:v9];

  if (v11)
  {
    v12 = [(UIContextMenuInteraction *)self _delegate_previewForDismissingForConfiguration:v11 clientReturnedPreview:a5];
  }

  else if (self->_delegateImplements.dismissalPreviewForItemWithIdentifier || self->_delegateImplements._dci_secondaryDismissalPreview)
  {
    v13 = [v8 menuConfiguration];
    v14 = [(UIContextMenuInteraction *)self configurationsByIdentifier];
    v15 = [v13 identifier];
    v16 = [v14 objectForKeyedSubscript:v15];

    if (v16 && self->_delegateImplements.dismissalPreviewForItemWithIdentifier)
    {
      v17 = [(UIContextMenuInteraction *)self delegate];
      v12 = [v17 contextMenuInteraction:self configuration:v16 dismissalPreviewForItemWithIdentifier:v9];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_interactionShouldBeginAtPoint:(CAPoint3D)a3 completion:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIContextMenuInteraction *)self presentationInteraction];
  [v8 activatedDriverStyle];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__UIContextMenuInteraction__interactionShouldBeginAtPoint_completion___block_invoke;
  aBlock[3] = &unk_1E7125190;
  aBlock[4] = self;
  v9 = v7;
  v20 = v9;
  v10 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__UIContextMenuInteraction__interactionShouldBeginAtPoint_completion___block_invoke_2;
  v17[3] = &unk_1E71251B8;
  v11 = v10;
  v18 = v11;
  v12 = _Block_copy(v17);
  if (self->_delegateImplements.asyncConfigurationForMenuAtLocation)
  {
    v13 = [(UIContextMenuInteraction *)self delegate];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__UIContextMenuInteraction__interactionShouldBeginAtPoint_completion___block_invoke_4;
    v15[3] = &unk_1E71251B8;
    v16 = v12;
    [v13 _contextMenuInteraction:self configurationForMenuAtLocation:v15 completion:{x, y}];

    v14 = v16;
  }

  else
  {
    v14 = [(UIContextMenuInteraction *)self _delegate_configurationForMenuAtLocation:x, y];
    (*(v12 + 2))(v12, v14);
  }
}

void __70__UIContextMenuInteraction__interactionShouldBeginAtPoint_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = [*(a1 + 32) configurationsByIdentifier];
    v4 = [v8 identifier];
    v5 = [v3 objectForKeyedSubscript:v4];

    [*(a1 + 32) setPendingConfiguration:v8];
    if (!v5)
    {
      v6 = [*(a1 + 32) configurationsByIdentifier];
      v7 = [v8 identifier];
      [v6 setObject:v8 forKeyedSubscript:v7];

      [*(a1 + 32) _willBeginWithConfiguration:v8];
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __70__UIContextMenuInteraction__interactionShouldBeginAtPoint_completion___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __70__UIContextMenuInteraction__interactionShouldBeginAtPoint_completion___block_invoke_3;
    v5[3] = &unk_1E71251B8;
    v6 = *(a1 + 32);
    [a2 _prepareWithCompletion:v5];
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

- (id)_delegate_configurationForMenuAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UIContextMenuInteraction *)self delegate];
  v7 = [v6 contextMenuInteraction:self configurationForMenuAtLocation:{x, y}];

  return v7;
}

- (id)_delegate_previewForHighlightingForConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_delegateImplements.highlightPreviewForItemWithIdentifier)
  {
    v6 = [v4 _effectiveInternalIdentifier];
    v7 = [(UIContextMenuInteraction *)self delegate];
    v8 = [v7 contextMenuInteraction:self configuration:v5 highlightPreviewForItemWithIdentifier:v6];

LABEL_5:
    goto LABEL_7;
  }

  if (self->_delegateImplements.previewForHighlighting)
  {
    v6 = [(UIContextMenuInteraction *)self delegate];
    v8 = [v6 contextMenuInteraction:self previewForHighlightingMenuWithConfiguration:v5];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)_delegate_previewForDismissingForConfiguration:(id)a3 clientReturnedPreview:(BOOL *)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_delegateImplements.dismissalPreviewForItemWithIdentifier)
  {
    v8 = [v6 _effectiveInternalIdentifier];
    v9 = [(UIContextMenuInteraction *)self delegate];
    v10 = [v9 contextMenuInteraction:self configuration:v7 dismissalPreviewForItemWithIdentifier:v8];

    *a4 = 1;
  }

  else if (self->_delegateImplements.previewForDismissing && ![(UIContextMenuInteraction *)self _ignorePreviewForDismissingDelegate])
  {
    v20 = [(UIContextMenuInteraction *)self delegate];
    v10 = [v20 contextMenuInteraction:self previewForDismissingMenuWithConfiguration:v7];

    if (dyld_program_sdk_at_least())
    {
      *a4 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [(UIContextMenuInteraction *)self view];
  v12 = [v11 traitCollection];
  v13 = [v12 userInterfaceIdiom];
  v14 = v10;
  v15 = _UIContextMenuGetPlatformMetrics(v13);
  v16 = [v15 shouldApplyShadowHandler];

  if (v16)
  {
    v17 = (v16)[2](v16, v14);
  }

  else
  {
    v17 = 1;
  }

  v18 = [v14 parameters];
  [v18 setAppliesShadow:v17];

  return v14;
}

- (void)_delegate_tappedPreviewForConfiguration:(id)a3 withAnimator:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (self->_delegateImplements.willPerformPreviewAction)
  {
    v7 = [(UIContextMenuInteraction *)self delegate];
    [v7 contextMenuInteraction:self willPerformPreviewActionForMenuWithConfiguration:v8 animator:v6];
  }

  else
  {
    if (!self->_delegateImplements.willCommit)
    {
      goto LABEL_6;
    }

    v7 = [(UIContextMenuInteraction *)self delegate];
    [v7 contextMenuInteraction:self willCommitWithAnimator:v6];
  }

LABEL_6:
}

- (id)_delegate_contextMenuInteractionWillDisplayForConfiguration:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if (self->_delegateImplements.willDisplay)
  {
    v6 = [(UIContextMenuInteraction *)self delegate];
    [v6 contextMenuInteraction:self willDisplayMenuForConfiguration:v4 animator:v5];
  }

  return v5;
}

- (id)_delegate_contextMenuInteractionWillEndForConfiguration:(id)a3 presentation:(id)a4
{
  v5 = a3;
  v6 = [(UIContextMenuInteraction *)self pendingCommitAnimator];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  [(UIContextMenuInteraction *)self setPendingCommitAnimator:0];
  if (self->_delegateImplements.willEndForConfiguration)
  {
    v10 = [(UIContextMenuInteraction *)self delegate];
    [v10 contextMenuInteraction:self willEndForConfiguration:v5 animator:v9];
  }

  return v9;
}

- (id)_delegate_getAccessoryViewsForConfiguration:(id)a3
{
  v4 = a3;
  if (self->_delegateImplements.accessoriesForMenu && _UIIsPrivateMainBundle())
  {
    v5 = [(UIContextMenuInteraction *)self delegate];
    v6 = [v5 _contextMenuInteraction:self accessoriesForMenuWithConfiguration:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_delegate_performPreviewActionCommitAnimation:(id)a3
{
  v6 = a3;
  if (!self->_delegateImplements.shouldDeferCommitAnimation || (-[UIContextMenuInteraction delegate](self, "delegate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 _contextMenuInteraction:self shouldDeferPreviewActionCommitAnimation:v6], v4, (v5 & 1) == 0))
  {
    v6[2]();
  }
}

- (id)_suggestedMenuForConfiguration:(id)a3 atLocation:(CGPoint)a4 inCoordinateSpace:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  if (!self->_delegateImplements.overrideSuggestedActions || (-[UIContextMenuInteraction delegate](self, "delegate"), v11 = objc_claimAutoreleasedReturnValue(), [v11 _contextMenuInteraction:self overrideSuggestedActionsForConfiguration:v9], v12 = objc_claimAutoreleasedReturnValue(), +[UIMenu menuWithTitle:image:identifier:options:children:](UIMenu, "menuWithTitle:image:identifier:options:children:", &stru_1EFB14550, 0, @"com.apple.menu.root", 0, v12), v13 = objc_claimAutoreleasedReturnValue(), v12, v11, !v13))
  {
    v14 = +[UIMenuSystem contextSystem];
    v15 = [(UIContextMenuInteraction *)self view];
    v16 = [v14 _newBuilderFromResponderChain:v15 atLocation:v10 inCoordinateSpace:{x, y}];
    v13 = [v16 menuForIdentifier:@"com.apple.menu.root"];
  }

  return v13;
}

- (void)_prepareSceneActivationConfiguration:(id)a3
{
  v16 = a3;
  v4 = [(UIContextMenuInteraction *)self presentationsByIdentifier];
  v5 = [v4 allValues];
  v6 = [v5 firstObject];

  v7 = [v6 windowSceneActivationPreview];
  if (v7)
  {
    v8 = v7;
    v9 = 1;
  }

  else
  {
    v10 = [v16 preview];
    if (v10)
    {
      v8 = v10;
    }

    else
    {
      v11 = [(UIContextMenuInteraction *)self _proxySender];

      if (v11 == self && ([v6 menuConfiguration], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "sourcePreview"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "_isVisible"), v13, v12, v14))
      {
        v15 = [v6 menuConfiguration];
        v8 = [v15 sourcePreview];
      }

      else
      {
        v8 = 0;
      }
    }

    v9 = 0;
  }

  [v16 setPreview:v8];
  [v16 _setAnimationSource:v9];
}

- (void)_requestSceneActivationWithConfiguration:(id)a3 animated:(BOOL)a4 sender:(id)a5 errorHandler:(id)a6
{
  v8 = a4;
  location[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(UIContextMenuInteraction *)self presentationsByIdentifier];
  v14 = [v13 allValues];
  v15 = [v14 firstObject];

  if (v8)
  {
    v16 = [v10 preview];

    if (v16 && v15)
    {
      v17 = [[_UIWindowSceneActivationAnimator alloc] initWithConfiguration:v10];
      v18 = [v15 uiController];
      v19 = [_UIContextMenuDismissToWindowSceneActivationAnimation animationWithUIController:v18];

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __98__UIContextMenuInteraction__requestSceneActivationWithConfiguration_animated_sender_errorHandler___block_invoke;
      v34[3] = &unk_1E712B978;
      v20 = v19;
      v35 = v20;
      [(_UIWindowSceneActivationAnimator *)v17 addAnimations:v34];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __98__UIContextMenuInteraction__requestSceneActivationWithConfiguration_animated_sender_errorHandler___block_invoke_2;
      v32[3] = &unk_1E70F35B8;
      v32[4] = self;
      v21 = v15;
      v33 = v21;
      [(_UIWindowSceneActivationAnimator *)v17 addCompletion:v32];
      objc_initWeak(location, self);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __98__UIContextMenuInteraction__requestSceneActivationWithConfiguration_animated_sender_errorHandler___block_invoke_4;
      v25[3] = &unk_1E712C830;
      v22 = v17;
      v26 = v22;
      v27 = v10;
      v28 = v11;
      v30 = v12;
      objc_copyWeak(&v31, location);
      v29 = v21;
      [(_UIWindowSceneActivationAnimator *)v22 prewarmWithCompletion:v25];

      objc_destroyWeak(&v31);
      objc_destroyWeak(location);
    }

    else
    {
      if (os_variant_has_internal_diagnostics())
      {
        v24 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = v10;
          _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "The configuration either has no preview or there is no current context menu presentation; configuration = %@", location, 0xCu);
        }
      }

      else
      {
        v23 = *(__UILogGetCategoryCachedImpl("Assert", &_requestSceneActivationWithConfiguration_animated_sender_errorHandler____s_category) + 8);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = v10;
          _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "The configuration either has no preview or there is no current context menu presentation; configuration = %@", location, 0xCu);
        }
      }

      [UIApp _requestSceneActivationWithConfiguration:v10 animated:0 sender:v11 errorHandler:v12];
    }
  }

  else
  {
    if (v15)
    {
      [(UIContextMenuInteraction *)self contextMenuPresentation:v15 didRequestDismissalWithReason:1 alongsideActions:0 completion:0];
    }

    [UIApp _requestSceneActivationWithConfiguration:v10 animated:0 sender:v11 errorHandler:v12];
  }
}

void __98__UIContextMenuInteraction__requestSceneActivationWithConfiguration_animated_sender_errorHandler___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __98__UIContextMenuInteraction__requestSceneActivationWithConfiguration_animated_sender_errorHandler___block_invoke_3;
  v2[3] = &unk_1E70F35B8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  [UIView performWithoutAnimation:v2];
}

void __98__UIContextMenuInteraction__requestSceneActivationWithConfiguration_animated_sender_errorHandler___block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    v6 = [*(a1 + 40) preview];
    [v5 animateWithSourcePreview:v6 velocity:0.0];
  }

  else
  {
    [*(a1 + 32) cancel];
  }

  [UIApp _requestSceneActivationWithConfiguration:*(a1 + 40) animated:0 sender:*(a1 + 48) errorHandler:*(a1 + 64)];
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained contextMenuPresentation:*(a1 + 56) didRequestDismissalWithReason:1 alongsideActions:0 completion:0];
  }
}

- ($9BEB610D0CE1B1EDC3D89DA2464F985F)_testing_metdataForMenuElements:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = 0;
  v5 = [_UIMenuPreparationContext contextWithPreparer:self firstResponderTarget:0];
  [v5 setDeferredElementDelegate:self];
  [v5 setSupportsCustomViewMenuElements:1];
  v6 = _menuElementsPreparedForDisplay(v4, 2, v5, &v8);

  return (v8 | (v9 << 32));
}

- (UIMenuLeaf)_selectedMenuLeaf
{
  WeakRetained = objc_loadWeakRetained(&self->__selectedMenuLeaf);

  return WeakRetained;
}

@end