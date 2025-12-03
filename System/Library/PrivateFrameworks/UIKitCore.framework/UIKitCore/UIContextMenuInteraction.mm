@interface UIContextMenuInteraction
- ($9BEB610D0CE1B1EDC3D89DA2464F985F)_testing_metdataForMenuElements:(id)elements;
- (BOOL)_clickPresentationInteraction:(id)interaction shouldBeDelayedByGestureRecognizer:(id)recognizer;
- (BOOL)_clickPresentationInteraction:(id)interaction shouldMaintainKeyboardAssertionForFirstResponder:(id)responder presentation:(id)presentation;
- (BOOL)_clickPresentationInteractionShouldAllowDragAfterDismiss:(id)dismiss;
- (BOOL)_clickPresentationInteractionShouldAssociateWithDrag:(id)drag;
- (BOOL)_hasVisibleMenu;
- (BOOL)_reachedForceThreshold;
- (BOOL)_shouldKeepInputViewVisibleForStyle:(id)style;
- (BOOL)allowSimultaneousRecognition;
- (BOOL)contextMenuPresentationShouldAllowSwipeToDismissForBeginningPanInteraction:(id)interaction;
- (CGPoint)locationInView:(UIView *)view;
- (NSSet)_internalIdentifiersForDismissingMenu;
- (UIContextMenuInteraction)initWithDelegate:(id)delegate;
- (UIContextMenuInteractionAppearance)menuAppearance;
- (UIGestureRecognizer)_gestureRecognizerForBeginningDragRelationships;
- (UIGestureRecognizer)gestureRecognizerForFailureRelationships;
- (UIMenuLeaf)_selectedMenuLeaf;
- (UIView)view;
- (_UIClickPresentationInteraction)presentationInteraction;
- (id)_clickPresentationInteraction:(id)interaction interactionEffectForTargetedPreview:(id)preview;
- (id)_clickPresentationInteraction:(id)interaction liveDragPreviewForPresentation:(id)presentation dragItem:(id)item;
- (id)_clickPresentationInteraction:(id)interaction previewForCancellingDragItem:(id)item;
- (id)_defaultPreparationContextWithFirstResponderTarget:(id)target;
- (id)_delegate_configurationForMenuAtLocation:(CGPoint)location;
- (id)_delegate_contextMenuInteractionWillDisplayForConfiguration:(id)configuration;
- (id)_delegate_contextMenuInteractionWillEndForConfiguration:(id)configuration presentation:(id)presentation;
- (id)_delegate_getAccessoryViewsForConfiguration:(id)configuration;
- (id)_delegate_previewForDismissingForConfiguration:(id)configuration clientReturnedPreview:(BOOL *)preview;
- (id)_delegate_previewForHighlightingForConfiguration:(id)configuration;
- (id)_fulfilledConfigurationForConfiguration:(id)configuration atLocation:(CGPoint)location;
- (id)_menuPreparedForDisplayWithMenu:(id)menu firstResponder:(id)responder;
- (id)_proxySender;
- (id)_secondaryPreviewsForClickPresentationInteraction:(id)interaction;
- (id)_suggestedMenuForConfiguration:(id)configuration atLocation:(CGPoint)location inCoordinateSpace:(id)space;
- (id)clickPresentationInteraction:(id)interaction presentationForPresentingViewController:(id)controller;
- (id)clickPresentationInteraction:(id)interaction previewForHighlightingAtLocation:(CGPoint)location;
- (id)contextMenuPresentation:(id)presentation dismissalPreviewForItem:(id)item clientReturnedPreview:(BOOL *)preview;
- (id)contextMenuPresentation:(id)presentation willDisplayMenu:(id)menu;
- (id)delegate;
- (id)gestureRecognizerForExclusionRelationships;
- (unint64_t)_actualLayoutForPreferredLayout:(unint64_t)layout withConfiguration:(id)configuration;
- (unint64_t)_fallbackDriverStyle;
- (unint64_t)_inputPrecision;
- (unint64_t)activationStyleForClickPresentationInteraction:(id)interaction;
- (void)_clickPresentationInteraction:(id)interaction dragSessionDidEndForItems:(id)items;
- (void)_clickPresentationInteraction:(id)interaction item:(id)item willAnimateDragCancelWithAnimator:(id)animator;
- (void)_clickPresentationInteraction:(id)interaction shouldBeginWithTouch:(id)touch completion:(id)completion;
- (void)_clickPresentationInteraction:(id)interaction shouldPresentWithCompletion:(id)completion;
- (void)_clickPresentationInteractionEnded:(id)ended forPresentation:(id)presentation reason:(unint64_t)reason;
- (void)_contextMenuPresentationPreviewWasTapped:(id)tapped;
- (void)_delegate_performPreviewActionCommitAnimation:(id)animation;
- (void)_delegate_tappedPreviewForConfiguration:(id)configuration withAnimator:(id)animator;
- (void)_interactionShouldBeginAtPoint:(CAPoint3D)point completion:(id)completion;
- (void)_performCleanupForConfigurationWithIdentifier:(id)identifier;
- (void)_prepareSceneActivationConfiguration:(id)configuration;
- (void)_presentMenuAtLocation3D:(CAPoint3D)d;
- (void)_requestSceneActivationWithConfiguration:(id)configuration animated:(BOOL)animated sender:(id)sender errorHandler:(id)handler;
- (void)_retargetDismissingMenuWithInternalIdentifier:(id)identifier toPreview:(id)preview force:(BOOL)force;
- (void)_setFallbackDriverStyle:(unint64_t)style;
- (void)_viewTraitCollectionDidChange:(id)change;
- (void)contextMenuPresentation:(id)presentation didBeginDragWithTouch:(id)touch;
- (void)contextMenuPresentation:(id)presentation didRequestDismissalWithReason:(unint64_t)reason alongsideActions:(id)actions completion:(id)completion;
- (void)contextMenuPresentation:(id)presentation didSelectMenuLeaf:(id)leaf;
- (void)contextMenuPresentationDidEndPanInteraction:(id)interaction;
- (void)dealloc;
- (void)deferredMenuElementWasFulfilled:(id)fulfilled;
- (void)didMoveToView:(id)view;
- (void)dismissMenu;
- (void)setAllowSimultaneousRecognition:(BOOL)recognition;
- (void)setDrivers:(id)drivers;
- (void)updateVisibleMenuWithBlock:(void *)block;
- (void)willMoveToView:(id)view;
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
  presentationsByIdentifier = [(UIContextMenuInteraction *)self presentationsByIdentifier];
  v3 = [presentationsByIdentifier count] != 0;

  return v3;
}

- (void)dismissMenu
{
  v23 = *MEMORY[0x1E69E9840];
  presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
  _isActive = [presentationInteraction _isActive];

  if (_isActive)
  {
    presentationsByIdentifier = [(UIContextMenuInteraction *)self presentationsByIdentifier];
    allKeys = [presentationsByIdentifier allKeys];
    v7 = [allKeys copy];

    if ([v7 count])
    {
      if (!self->_delegateImplements.shouldAllowDragAfterDismiss || (-[UIContextMenuInteraction delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 _contextMenuInteractionShouldAllowDragAfterDismiss:self], v8, !v9) || (-[UIContextMenuInteraction presentationInteraction](self, "presentationInteraction"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "beginDragIfPossibleWithTouch:", 0), v10, (v11 & 1) == 0))
      {
        presentationInteraction2 = [(UIContextMenuInteraction *)self presentationInteraction];
        [presentationInteraction2 _cancelWithReason:8 alongsideActions:0 completion:0];

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
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->__proxySender);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    selfCopy = WeakRetained;
  }

  v5 = selfCopy;

  return selfCopy;
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

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(UIContextMenuInteraction *)v6 setPresentationsByIdentifier:dictionary];

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [(UIContextMenuInteraction *)v6 setConfigurationsByIdentifier:dictionary2];

    _UIContextMenuRegisterDefaultPlatformMetricsIfNecessary();
  }

  return v6;
}

- (void)willMoveToView:(id)view
{
  if (self->_presentationInteraction)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__UIContextMenuInteraction_willMoveToView___block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [UIView performWithoutAnimation:v5];
    view = [(_UIClickPresentationInteraction *)self->_presentationInteraction view];
    [view removeInteraction:self->_presentationInteraction];
  }

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)view
{
  v4 = objc_storeWeak(&self->_view, view);
  if (view)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
    [WeakRetained addInteraction:presentationInteraction];
  }
}

- (void)_viewTraitCollectionDidChange:(id)change
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(UIContextMenuInteraction *)self presentationsByIdentifier:change];
  allValues = [v3 allValues];

  v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v9 + 1) + 8 * v8++) viewTraitCollectionDidChange];
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (UIContextMenuInteractionAppearance)menuAppearance
{
  presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
  activatedDriverStyle = [presentationInteraction activatedDriverStyle];

  if (activatedDriverStyle == 1)
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
  presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
  [presentationInteraction locationInView:v4];
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
    presentationsByIdentifier = [(UIContextMenuInteraction *)self presentationsByIdentifier];
    allValues = [presentationsByIdentifier allValues];
    firstObject = [allValues firstObject];

    if (!firstObject)
    {
      v23 = *(__UILogGetCategoryCachedImpl("UILog", &updateVisibleMenuWithBlock____s_category) + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "Called [UIContextMenuInteraction updateVisibleMenuWithBlock:] while no context menu is visible. This won't do anything.", buf, 2u);
      }

      goto LABEL_26;
    }

    visibleMenus = [firstObject visibleMenus];
    if (visibleMenus)
    {
      menu = visibleMenus;
      if (dyld_program_sdk_at_least())
      {
        if (![menu count])
        {
          v10 = [UIMenu menuWithChildren:MEMORY[0x1E695E0F0]];
          v43[0] = v10;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];

          menu = v11;
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v12 = menu;
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
                menuConfiguration = [firstObject menuConfiguration];
                [menuConfiguration firstResponderTarget];
                v21 = v20 = firstObject;
                v22 = [(UIContextMenuInteraction *)self _menuPreparedForDisplayWithMenu:v18 firstResponder:v21];

                firstObject = v20;
                [v20 displayMenu:v22 inPlaceOfMenu:v16];
              }
            }

            v14 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
          }

          while (v14);
          v4 = v31;
          v12 = obj;
        }

        menu = v12;
        goto LABEL_24;
      }

      lastObject = [menu lastObject];
      v12 = (v34)[2](v34, lastObject);

      if (!v12)
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
      uiController = [firstObject uiController];
      menuConfiguration2 = [uiController menuConfiguration];
      menu = [menuConfiguration2 menu];

      v26 = (v34)[2](v34, menu);
      if (!v26)
      {
LABEL_25:

LABEL_26:
        goto LABEL_27;
      }

      v27 = v26;
      menuConfiguration3 = [firstObject menuConfiguration];
      firstResponderTarget = [menuConfiguration3 firstResponderTarget];
      v12 = [(UIContextMenuInteraction *)self _menuPreparedForDisplayWithMenu:v27 firstResponder:firstResponderTarget];
    }

    [firstObject displayMenu:v12 inPlaceOfMenu:0];
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

- (void)setDrivers:(id)drivers
{
  driversCopy = drivers;
  presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
  [presentationInteraction setOverrideDrivers:driversCopy];
}

- (unint64_t)_inputPrecision
{
  presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
  inputPrecision = [presentationInteraction inputPrecision];

  return inputPrecision;
}

- (NSSet)_internalIdentifiersForDismissingMenu
{
  outgoingPresentation = [(UIContextMenuInteraction *)self outgoingPresentation];
  menuConfiguration = [outgoingPresentation menuConfiguration];
  internalIdentifiers = [menuConfiguration internalIdentifiers];

  return internalIdentifiers;
}

- (void)_retargetDismissingMenuWithInternalIdentifier:(id)identifier toPreview:(id)preview force:(BOOL)force
{
  identifierCopy = identifier;
  previewCopy = preview;
  outgoingPresentation = [(UIContextMenuInteraction *)self outgoingPresentation];
  v10 = outgoingPresentation;
  if (outgoingPresentation)
  {
    if (force || ([outgoingPresentation menuConfiguration], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "internalIdentifiers"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "containsObject:", identifierCopy), v12, v11, v13))
    {
      [v10 retargetDismissingMenuToPreview:previewCopy];
      [(UIContextMenuInteraction *)self setOutgoingPresentation:0];
    }
  }
}

- (unint64_t)_fallbackDriverStyle
{
  presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
  fallbackDriverStyle = [presentationInteraction fallbackDriverStyle];

  return fallbackDriverStyle;
}

- (void)_setFallbackDriverStyle:(unint64_t)style
{
  presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
  [presentationInteraction setFallbackDriverStyle:style];
}

- (void)deferredMenuElementWasFulfilled:(id)fulfilled
{
  fulfilledCopy = fulfilled;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__UIContextMenuInteraction_deferredMenuElementWasFulfilled___block_invoke;
  v6[3] = &unk_1E70F6A48;
  v7 = fulfilledCopy;
  v5 = fulfilledCopy;
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

- (void)_presentMenuAtLocation3D:(CAPoint3D)d
{
  z = d.z;
  y = d.y;
  x = d.x;
  v10 = *MEMORY[0x1E69E9840];
  configurationsByIdentifier = [(UIContextMenuInteraction *)self configurationsByIdentifier];
  if ([configurationsByIdentifier count])
  {
  }

  else
  {
    pendingConfiguration = [(UIContextMenuInteraction *)self pendingConfiguration];

    if (!pendingConfiguration)
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

- (void)setAllowSimultaneousRecognition:(BOOL)recognition
{
  recognitionCopy = recognition;
  presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
  [presentationInteraction setAllowSimultaneousRecognition:recognitionCopy];
}

- (BOOL)allowSimultaneousRecognition
{
  presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
  allowSimultaneousRecognition = [presentationInteraction allowSimultaneousRecognition];

  return allowSimultaneousRecognition;
}

- (UIGestureRecognizer)gestureRecognizerForFailureRelationships
{
  presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
  gestureRecognizerForExclusionRelationship = [presentationInteraction gestureRecognizerForExclusionRelationship];

  return gestureRecognizerForExclusionRelationship;
}

- (id)gestureRecognizerForExclusionRelationships
{
  presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
  gestureRecognizerForFailureRelationship = [presentationInteraction gestureRecognizerForFailureRelationship];

  return gestureRecognizerForFailureRelationship;
}

- (UIGestureRecognizer)_gestureRecognizerForBeginningDragRelationships
{
  presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
  gestureRecognizerForBeginningDragRelationships = [presentationInteraction gestureRecognizerForBeginningDragRelationships];

  return gestureRecognizerForBeginningDragRelationships;
}

- (BOOL)_reachedForceThreshold
{
  presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
  _reachedForceThreshold = [presentationInteraction _reachedForceThreshold];

  return _reachedForceThreshold;
}

- (unint64_t)activationStyleForClickPresentationInteraction:(id)interaction
{
  delegate = [(UIContextMenuInteraction *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(UIContextMenuInteraction *)self delegate];
  v7 = [delegate2 _activationMethodForContextMenuInteraction:self];

  return v7 == 1;
}

- (void)_clickPresentationInteraction:(id)interaction shouldBeginWithTouch:(id)touch completion:(id)completion
{
  touchCopy = touch;
  completionCopy = completion;
  if (-[UIContextMenuInteraction _requiresTouchAuthentication](self, "_requiresTouchAuthentication") && ([touchCopy _touchAuthenticationRecord], v8 = objc_claimAutoreleasedReturnValue(), v8, v8) && (objc_msgSend(touchCopy, "_touchAuthenticationRecord"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "shouldAllowEvents"), v9, (v10 & 1) == 0))
  {
    completionCopy[2](completionCopy, 2);
  }

  else
  {
    view = [(UIContextMenuInteraction *)self view];
    [(UIContextMenuInteraction *)self locationInView:view];
    v13 = v12;
    v15 = v14;

    [(UIContextMenuInteraction *)self _interactionShouldBeginAtPoint:completionCopy completion:v13, v15, 0.0];
  }
}

- (BOOL)_clickPresentationInteractionShouldAssociateWithDrag:(id)drag
{
  menuAppearance = [(UIContextMenuInteraction *)self menuAppearance];
  if (menuAppearance != UIContextMenuInteractionAppearanceRich)
  {
    pendingConfiguration = [(UIContextMenuInteraction *)self pendingConfiguration];
    _isMultiItemMenu = [pendingConfiguration _isMultiItemMenu];

    LOBYTE(menuAppearance) = _isMultiItemMenu;
  }

  return menuAppearance;
}

- (BOOL)_clickPresentationInteractionShouldAllowDragAfterDismiss:(id)dismiss
{
  if (!self->_delegateImplements.shouldAllowDragAfterDismiss)
  {
    return 0;
  }

  selfCopy = self;
  delegate = [(UIContextMenuInteraction *)self delegate];
  LOBYTE(selfCopy) = [delegate _contextMenuInteractionShouldAllowDragAfterDismiss:selfCopy];

  return selfCopy;
}

- (id)clickPresentationInteraction:(id)interaction previewForHighlightingAtLocation:(CGPoint)location
{
  v5 = [(UIContextMenuInteraction *)self pendingConfiguration:interaction];
  v6 = [(UIContextMenuInteraction *)self _delegate_previewForHighlightingForConfiguration:v5];
  if (!v6)
  {
    v7 = [UITargetedPreview alloc];
    view = [(UIContextMenuInteraction *)self view];
    v6 = [(UITargetedPreview *)v7 initWithView:view];
  }

  view2 = [(UIContextMenuInteraction *)self view];
  traitCollection = [view2 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  v12 = v6;
  v13 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  shouldApplyShadowHandler = [v13 shouldApplyShadowHandler];

  if (shouldApplyShadowHandler)
  {
    v15 = (shouldApplyShadowHandler)[2](shouldApplyShadowHandler, v12);
  }

  else
  {
    v15 = 1;
  }

  parameters = [(UITargetedPreview *)v12 parameters];
  [parameters setAppliesShadow:v15];

  identifier = [v5 identifier];
  [(UITargetedPreview *)v12 set_internalIdentifier:identifier];

  [v5 set_primarySourcePreview:v12];
  [(UITargetedPreview *)v12 _frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  target = [(UITargetedPreview *)v12 target];
  container = [target container];
  v28 = [(UIView *)container _constrainRectWithinSceneBounds:v19 additionalInsets:v21, v23, v25, 0.0];
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
    target2 = [(UITargetedPreview *)v12 target];
    container2 = [target2 container];
    target3 = [(UITargetedPreview *)v12 target];
    v41 = target3;
    if (target3)
    {
      [target3 transform];
    }

    else
    {
      memset(v45, 0, sizeof(v45));
    }

    v42 = [(UIPreviewTarget *)v37 initWithContainer:container2 center:v45 transform:v35, v36];

    v43 = [(UITargetedPreview *)v12 retargetedPreviewWithTarget:v42];

    v12 = v43;
  }

  return v12;
}

- (id)_secondaryPreviewsForClickPresentationInteraction:(id)interaction
{
  v22 = *MEMORY[0x1E69E9840];
  pendingConfiguration = [(UIContextMenuInteraction *)self pendingConfiguration];
  v5 = pendingConfiguration;
  if (!pendingConfiguration || !self->_delegateImplements.highlightPreviewForItemWithIdentifier && !self->_delegateImplements._dci_secondaryHighlightPreview)
  {
    goto LABEL_17;
  }

  _effectiveSecondaryItemIdentifiers = [pendingConfiguration _effectiveSecondaryItemIdentifiers];
  if (![_effectiveSecondaryItemIdentifiers count])
  {

LABEL_17:
    array = 0;
    goto LABEL_18;
  }

  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = _effectiveSecondaryItemIdentifiers;
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
          delegate = [(UIContextMenuInteraction *)self delegate];
          v15 = [delegate contextMenuInteraction:self configuration:v5 highlightPreviewForItemWithIdentifier:v13];

          if (v15)
          {
            [v15 set_internalIdentifier:v13];
            [array addObject:v15];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

LABEL_18:

  return array;
}

- (id)_clickPresentationInteraction:(id)interaction interactionEffectForTargetedPreview:(id)preview
{
  if (self->_delegateImplements.interactionEffectForTargetedPreview)
  {
    previewCopy = preview;
    pendingConfiguration = [(UIContextMenuInteraction *)self pendingConfiguration];
    delegate = [(UIContextMenuInteraction *)self delegate];
    v8 = [delegate _contextMenuInteraction:self configuration:pendingConfiguration interactionEffectForTargetedPreview:previewCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)clickPresentationInteraction:(id)interaction presentationForPresentingViewController:(id)controller
{
  controllerCopy = controller;
  pendingConfiguration = [(UIContextMenuInteraction *)self pendingConfiguration];
  if (self->_delegateImplements.shouldAttemptToPresentConfiguration)
  {
    delegate = [(UIContextMenuInteraction *)self delegate];
    v8 = [delegate _contextMenuInteraction:self shouldAttemptToPresentConfiguration:pendingConfiguration];

    if (!v8)
    {
      v28 = 0;
      goto LABEL_55;
    }
  }

  view = [(UIContextMenuInteraction *)self view];
  [(UIContextMenuInteraction *)self locationInView:view];
  v11 = v10;
  v13 = v12;

  v14 = [(UIContextMenuInteraction *)self _fulfilledConfigurationForConfiguration:pendingConfiguration atLocation:v11, v13];
  if ([v14 isPresentable])
  {
    [(UIContextMenuInteraction *)self setPendingConfiguration:0];
    view2 = [(UIContextMenuInteraction *)self view];
    _window = [view2 _window];
    windowScene = [_window windowScene];

    _UIFocusBehaviorSetOverrideFocusSystemEnabled(1, windowScene, self);
    view3 = [(UIContextMenuInteraction *)self view];
    _UIGameControllerNotifyRelevantSystemUIWillShow(windowScene, view3);

    v19 = [(UIContextMenuInteraction *)self _delegate_contextMenuInteractionWillDisplayForConfiguration:pendingConfiguration];
    if (!self->_delegateImplements.styleForMenu || (-[UIContextMenuInteraction delegate](self, "delegate"), v20 = objc_claimAutoreleasedReturnValue(), [v20 _contextMenuInteraction:self styleForMenuWithConfiguration:pendingConfiguration], v21 = objc_claimAutoreleasedReturnValue(), v20, !v21))
    {
      v21 = +[_UIContextMenuStyle defaultStyle];
    }

    if ([v21 showsAccessoriesForCompactMenu] && -[UIContextMenuInteraction menuAppearance](self, "menuAppearance") == UIContextMenuInteractionAppearanceCompact)
    {
      v22 = [(UIContextMenuInteraction *)self _delegate_getAccessoryViewsForConfiguration:pendingConfiguration];
      [v14 setAccessoryViews:v22];
    }

    if ([v21 shouldMenuOverlapSourcePreview] && _UIContextMenuMagicMorphAnimationEnabled())
    {
      sourcePreview = [v14 sourcePreview];
      _resolvedMorphablePreview = [sourcePreview _resolvedMorphablePreview];
      [v14 setSourcePreview:_resolvedMorphablePreview];
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
            _primarySourcePreview = [pendingConfiguration _primarySourcePreview];
            target = [_primarySourcePreview target];
            container = [target container];

            [(UIContextMenuInteraction *)self locationInView:container];
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
    if (v55 != __PAIR128__(0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL) || ![pendingConfiguration preferredMenuAlignment])
    {
LABEL_33:
      preferredMenuElementOrder = [pendingConfiguration preferredMenuElementOrder];
      if (preferredMenuElementOrder == 2)
      {
        v36 = 0;
      }

      else
      {
        if (preferredMenuElementOrder != 1)
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
      containerView = [v21 containerView];

      if (containerView)
      {
        goto LABEL_51;
      }

      view4 = [(UIContextMenuInteraction *)self view];
      _window2 = [view4 _window];

      if (+[_UIRemoteKeyboards enabled])
      {
        if (([_window2 _isRemoteKeyboardWindow] & 1) != 0 || objc_msgSend(_window2, "_isRemoteInputHostWindow"))
        {
          v42 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
          keyboardWindow = [v42 keyboardWindow];

          if (keyboardWindow)
          {
            if (([keyboardWindow isHidden] & 1) == 0)
            {
              v54 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
              visualModeManager = [v54 visualModeManager];
              shouldShowWithinAppWindow = [visualModeManager shouldShowWithinAppWindow];

              if ((shouldShowWithinAppWindow & 1) == 0)
              {
                v45 = keyboardWindow;

                _window2 = v45;
              }
            }
          }
        }

        else if (![_window2 _isTextEffectsWindow])
        {
          goto LABEL_50;
        }

        [v21 set_shouldAvoidInputViews:{+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI")}];
        v38 = 0;
      }

LABEL_50:
      [v21 setContainerView:_window2];

LABEL_51:
      previewViewController = [v14 previewViewController];

      if (previewViewController)
      {
        previewViewController2 = [v14 previewViewController];
        [v21 setHasInteractivePreview:{objc_msgSend(previewViewController2, "_allowsUserInteractionWhenPreviewedInContextMenu") | objc_msgSend(v21, "hasInteractivePreview")}];
      }

      v48 = [_UIContextMenuPresentation alloc];
      outgoingPresentation = [(UIContextMenuInteraction *)self outgoingPresentation];
      v28 = [(_UIContextMenuPresentation *)v48 initWithPresentingViewController:controllerCopy configuration:v14 style:v21 outgoingPresentation:outgoingPresentation];

      [(_UIContextMenuPresentation *)v28 setDelegate:self];
      [(_UIContextMenuPresentation *)v28 setSuppressInputViewDuringPresentation:v38];
      [(_UIContextMenuPresentation *)v28 setAlongsideAnimatorForPresentation:v19];
      presentationsByIdentifier = [(UIContextMenuInteraction *)self presentationsByIdentifier];
      identifier = [v14 identifier];
      [presentationsByIdentifier setObject:v28 forKeyedSubscript:identifier];

      goto LABEL_54;
    }

    view5 = [(UIContextMenuInteraction *)self view];
    effectiveUserInterfaceLayoutDirection = [view5 effectiveUserInterfaceLayoutDirection];

    preferredMenuAlignment = [pendingConfiguration preferredMenuAlignment];
    if (preferredMenuAlignment == 3)
    {
      v32 = effectiveUserInterfaceLayoutDirection == 0;
      v33 = 2;
      v34 = 8;
    }

    else
    {
      if (preferredMenuAlignment != 1)
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

      v32 = effectiveUserInterfaceLayoutDirection == 0;
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

- (BOOL)_shouldKeepInputViewVisibleForStyle:(id)style
{
  styleCopy = style;
  inputViewVisibility = [styleCopy inputViewVisibility];
  if (inputViewVisibility == 1)
  {
    goto LABEL_5;
  }

  if (inputViewVisibility || [styleCopy preferredLayout] != 3)
  {
    LOBYTE(v8) = 0;
    goto LABEL_7;
  }

  v6 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v6 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
LABEL_5:
    LOBYTE(v8) = 1;
  }

  else
  {
    view = [(UIContextMenuInteraction *)self view];
    _window = [view _window];
    traitCollection = [_window traitCollection];

    if ([traitCollection verticalSizeClass] == 1)
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
      v8 = _UIContentSizeCategoryIsAccessibilityContentSizeCategory(preferredContentSizeCategory, v14) ^ 1;
    }
  }

LABEL_7:

  return v8;
}

- (unint64_t)_actualLayoutForPreferredLayout:(unint64_t)layout withConfiguration:(id)configuration
{
  layoutCopy = layout;
  if (layout == 100)
  {
    previewViewController = [configuration previewViewController];
    layoutCopy = previewViewController == 0;
  }

  return layoutCopy;
}

- (id)_fulfilledConfigurationForConfiguration:(id)configuration atLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  configurationCopy = configuration;
  v8 = objc_opt_new();
  identifier = [configurationCopy identifier];
  [v8 setIdentifier:identifier];

  _internalIdentifier = [configurationCopy _internalIdentifier];
  _internalSecondaryItemIdentifiers = [configurationCopy _internalSecondaryItemIdentifiers];
  [v8 setPrimaryInternalIdentifier:_internalIdentifier secondaryIdentifiers:_internalSecondaryItemIdentifiers];

  firstResponderTarget = [configurationCopy firstResponderTarget];
  if (firstResponderTarget)
  {
    [v8 setFirstResponderTarget:firstResponderTarget];
  }

  else
  {
    view = [(UIContextMenuInteraction *)self view];
    [v8 setFirstResponderTarget:view];
  }

  _primarySourcePreview = [configurationCopy _primarySourcePreview];
  [v8 setSourcePreview:_primarySourcePreview];

  actionProvider = [configurationCopy actionProvider];
  if (actionProvider)
  {
    v16 = dyld_program_sdk_at_least();
    view2 = [(UIContextMenuInteraction *)self view];
    v18 = [(UIContextMenuInteraction *)self _suggestedMenuForConfiguration:configurationCopy atLocation:view2 inCoordinateSpace:x, y];

    if (v16)
    {
      children = [v18 children];
      v20 = (actionProvider)[2](actionProvider, children);

      firstResponderTarget2 = [v8 firstResponderTarget];
      v22 = [(UIContextMenuInteraction *)self _menuPreparedForDisplayWithMenu:v20 firstResponder:firstResponderTarget2];
    }

    else
    {
      firstResponderTarget3 = [v8 firstResponderTarget];
      v41 = [_UIActionBridge actionMenuForMenu:v18 firstTarget:firstResponderTarget3 includeHidden:1];
      children2 = [v41 children];
      v40 = (actionProvider)[2](actionProvider, children2);

      v25 = [_UIActionBridge actionMenuForMenu:v40 firstTarget:firstResponderTarget3 includeHidden:0];
      v26 = [(UIContextMenuInteraction *)self _defaultPreparationContextWithFirstResponderTarget:firstResponderTarget3];
      BYTE4(location) = 0;
      LODWORD(location) = 0;
      [v25 _resolveElementSizeWithContext:v26];
      [v25 children];
      v39 = v18;
      v28 = v27 = actionProvider;
      v29 = _menuElementsPreparedForDisplay(v28, [v25 _resolvedElementSize], v26, &location);
      v22 = [v25 menuByReplacingChildren:v29];

      actionProvider = v27;
      LOBYTE(location) = 1;
      [v22 setMetadata:location | (BYTE4(location) << 32)];
    }

    [v8 setMenu:v22];
  }

  previewProvider = [configurationCopy previewProvider];
  _effectiveSecondaryItemIdentifiers = [configurationCopy _effectiveSecondaryItemIdentifiers];
  [v8 setRepresentedItemCount:{objc_msgSend(_effectiveSecondaryItemIdentifiers, "count") + 1}];

  presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
  secondaryEffectPreviews = [presentationInteraction secondaryEffectPreviews];
  [v8 setSecondarySourcePreviews:secondaryEffectPreviews];

  if ([configurationCopy _clientDidSetBadgeCount])
  {
    badgeCount = [configurationCopy badgeCount];
  }

  else
  {
    badgeCount = [v8 representedItemCount];
  }

  [v8 setBadgeCount:badgeCount];
  if ([(UIContextMenuInteraction *)self menuAppearance]== UIContextMenuInteractionAppearanceRich)
  {
    if (([v8 isMultiItemMenu] & 1) == 0)
    {
      if (previewProvider)
      {
        v35 = previewProvider[2](previewProvider);
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

    v37 = [(UIContextMenuInteraction *)self _delegate_getAccessoryViewsForConfiguration:configurationCopy];
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

- (id)_defaultPreparationContextWithFirstResponderTarget:(id)target
{
  v4 = [_UIMenuPreparationContext contextWithPreparer:self firstResponderTarget:target];
  [v4 setDeferredElementDelegate:self];
  [v4 setSupportsCustomViewMenuElements:1];
  [v4 setShouldTrackVisibleSelection:&__block_literal_global_732];
  view = [(UIContextMenuInteraction *)self view];
  traitCollection = [view traitCollection];
  v7 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
  overrideElementSize = [v7 overrideElementSize];

  if (overrideElementSize)
  {
    elementSizeSolver = [v4 elementSizeSolver];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__UIContextMenuInteraction__defaultPreparationContextWithFirstResponderTarget___block_invoke_2;
    v12[3] = &unk_1E712C808;
    v13 = elementSizeSolver;
    v14 = overrideElementSize;
    v10 = elementSizeSolver;
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

- (id)_menuPreparedForDisplayWithMenu:(id)menu firstResponder:(id)responder
{
  menuCopy = menu;
  v7 = [(UIContextMenuInteraction *)self _defaultPreparationContextWithFirstResponderTarget:responder];
  [v7 setSupportsHeaderView:1];
  _proxySender = [(UIContextMenuInteraction *)self _proxySender];
  [v7 setSender:_proxySender];

  [v7 setUseSenderAsResponderSender:{-[UIContextMenuInteraction _useSenderAsResponderSender](self, "_useSenderAsResponderSender")}];
  v9 = menuCopy;
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
    _resolvedElementSize = [v12 _resolvedElementSize];
    children = [v12 children];
    v15 = _menuElementsPreparedForDisplay(children, _resolvedElementSize, v10, &v18);
    v11 = [v12 menuByReplacingChildren:v15];

    LOBYTE(v18) = 1;
    if ([v10 supportsHeaderView])
    {
      headerView = [v9 headerView];
      HIBYTE(v18) |= headerView != 0;
    }

    [v11 setMetadata:v18 | (v19 << 32)];
  }

  return v11;
}

- (void)_clickPresentationInteractionEnded:(id)ended forPresentation:(id)presentation reason:(unint64_t)reason
{
  v28 = *MEMORY[0x1E69E9840];
  endedCopy = ended;
  presentationCopy = presentation;
  v10 = presentationCopy;
  if (presentationCopy)
  {
    menuConfiguration = [presentationCopy menuConfiguration];
    configurationsByIdentifier = [(UIContextMenuInteraction *)self configurationsByIdentifier];
    identifier = [menuConfiguration identifier];
    pendingConfiguration2 = [configurationsByIdentifier objectForKeyedSubscript:identifier];

    goto LABEL_5;
  }

  pendingConfiguration = [(UIContextMenuInteraction *)self pendingConfiguration];

  if (pendingConfiguration)
  {
    pendingConfiguration2 = [(UIContextMenuInteraction *)self pendingConfiguration];
    [(UIContextMenuInteraction *)self setPendingConfiguration:0];
LABEL_5:
    view = [(UIContextMenuInteraction *)self view];
    _window = [view _window];
    windowScene = [_window windowScene];
    _UIFocusBehaviorSetOverrideFocusSystemEnabled(0, windowScene, self);

    v19 = [(UIContextMenuInteraction *)self _delegate_contextMenuInteractionWillEndForConfiguration:pendingConfiguration2 presentation:v10];
    if (reason != 10)
    {
      if (v10)
      {
        [v10 setAlongsideAnimatorForDismissal:v19];
        if (reason == 9)
        {
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __86__UIContextMenuInteraction__clickPresentationInteractionEnded_forPresentation_reason___block_invoke;
          v24[3] = &unk_1E70F35B8;
          v24[4] = self;
          v25 = pendingConfiguration2;
          [v19 addAnimations:v24];
        }

        goto LABEL_15;
      }

LABEL_14:
      identifier2 = [pendingConfiguration2 identifier];
      [(UIContextMenuInteraction *)self _performCleanupForConfigurationWithIdentifier:identifier2];

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

      identifier3 = [pendingConfiguration2 identifier];
      *buf = 138412290;
      v27 = identifier3;
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
      identifier3 = [pendingConfiguration2 identifier];
      *buf = 138412290;
      v27 = identifier3;
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

- (void)_clickPresentationInteraction:(id)interaction dragSessionDidEndForItems:(id)items
{
  v26 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
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
  itemsCopy = items;
  v8 = [itemsCopy countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v8)
  {
    v9 = *v16;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(itemsCopy);
      }

      _uicmi_getAssociatedMenuIdentifier = [*(*(&v15 + 1) + 8 * v10) _uicmi_getAssociatedMenuIdentifier];
      v12 = v20[5];
      v20[5] = _uicmi_getAssociatedMenuIdentifier;

      if (v20[5])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [itemsCopy countByEnumeratingWithState:&v15 objects:v25 count:16];
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

- (void)_clickPresentationInteraction:(id)interaction shouldPresentWithCompletion:(id)completion
{
  if (self->_delegateImplements.shouldPresent)
  {
    completionCopy = completion;
    completionCopy2 = [(UIContextMenuInteraction *)self delegate];
    [completionCopy2 _contextMenuInteraction:self shouldPresentWithCompletion:completionCopy];
  }

  else
  {
    v6 = *(completion + 2);
    completionCopy2 = completion;
    v6();
  }
}

- (BOOL)_clickPresentationInteraction:(id)interaction shouldBeDelayedByGestureRecognizer:(id)recognizer
{
  if (!self->_delegateImplements.shouldByDelayedByGestureRecognizer)
  {
    return 0;
  }

  selfCopy = self;
  recognizerCopy = recognizer;
  delegate = [(UIContextMenuInteraction *)selfCopy delegate];
  LOBYTE(selfCopy) = [delegate _contextMenuInteraction:selfCopy shouldBeDelayedByGestureRecognizer:recognizerCopy];

  return selfCopy;
}

- (BOOL)_clickPresentationInteraction:(id)interaction shouldMaintainKeyboardAssertionForFirstResponder:(id)responder presentation:(id)presentation
{
  responderCopy = responder;
  uiController = [presentation uiController];
  v8 = [uiController shouldMaintainKeyboardAssertionForFirstResponder:responderCopy];

  return v8;
}

- (BOOL)contextMenuPresentationShouldAllowSwipeToDismissForBeginningPanInteraction:(id)interaction
{
  presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
  [presentationInteraction beginPanInteraction];

  if (!self->_delegateImplements.shouldAllowSwipeToDismiss)
  {
    return 1;
  }

  delegate = [(UIContextMenuInteraction *)self delegate];
  v6 = [delegate _contextMenuInteractionShouldAllowSwipeToDismiss:self];

  return v6;
}

- (void)contextMenuPresentationDidEndPanInteraction:(id)interaction
{
  presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
  [presentationInteraction endPanInteraction];
}

- (void)contextMenuPresentation:(id)presentation didRequestDismissalWithReason:(unint64_t)reason alongsideActions:(id)actions completion:(id)completion
{
  presentationCopy = presentation;
  actionsCopy = actions;
  completionCopy = completion;
  presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
  _isActive = [presentationInteraction _isActive];

  if (_isActive)
  {
    presentationsByIdentifier = [(UIContextMenuInteraction *)self presentationsByIdentifier];
    menuConfiguration = [presentationCopy menuConfiguration];
    identifier = [menuConfiguration identifier];
    v18 = [presentationsByIdentifier objectForKeyedSubscript:identifier];

    v19 = 1;
    if (reason <= 1)
    {
      v22 = 5;
      if (reason != 1)
      {
        v22 = 0;
      }

      v19 = 1;
      if (reason)
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
      switch(reason)
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
    presentationInteraction2 = [(UIContextMenuInteraction *)self presentationInteraction];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __110__UIContextMenuInteraction_contextMenuPresentation_didRequestDismissalWithReason_alongsideActions_completion___block_invoke;
    v27[3] = &unk_1E70FD548;
    v29 = completionCopy;
    v27[4] = self;
    v24 = v18;
    v28 = v24;
    [presentationInteraction2 _cancelWithReason:v20 alongsideActions:actionsCopy completion:v27];

    if (v19)
    {
      menuConfiguration2 = [v24 menuConfiguration];
      identifier2 = [menuConfiguration2 identifier];
      [(UIContextMenuInteraction *)self _performCleanupForConfigurationWithIdentifier:identifier2];
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

- (void)contextMenuPresentation:(id)presentation didBeginDragWithTouch:(id)touch
{
  touchCopy = touch;
  presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
  [presentationInteraction beginDragIfPossibleWithTouch:touchCopy];
}

- (id)_clickPresentationInteraction:(id)interaction liveDragPreviewForPresentation:(id)presentation dragItem:(id)item
{
  presentationCopy = presentation;
  itemCopy = item;
  if (presentationCopy)
  {
    associatedDragInteraction = [interaction associatedDragInteraction];
    _dragDropSession = [itemCopy _dragDropSession];
    v11 = [associatedDragInteraction _sessionPrefersFullSizePreviews:_dragDropSession];

    v12 = [presentationCopy livePreviewForDragItem:itemCopy preferringFullSize:v11];
    if (v12)
    {
      menuConfiguration = [presentationCopy menuConfiguration];
      identifier = [menuConfiguration identifier];

      [itemCopy _uicmi_setAssociatedMenuIdentifier:identifier];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_clickPresentationInteraction:(id)interaction previewForCancellingDragItem:(id)item
{
  itemCopy = item;
  _uicmi_getAssociatedMenuIdentifier = [itemCopy _uicmi_getAssociatedMenuIdentifier];
  if (_uicmi_getAssociatedMenuIdentifier && (-[UIContextMenuInteraction presentationsByIdentifier](self, "presentationsByIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKeyedSubscript:_uicmi_getAssociatedMenuIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    v9 = [v8 previewForCancellingDragItem:itemCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_clickPresentationInteraction:(id)interaction item:(id)item willAnimateDragCancelWithAnimator:(id)animator
{
  animatorCopy = animator;
  _uicmi_getAssociatedMenuIdentifier = [item _uicmi_getAssociatedMenuIdentifier];
  if (_uicmi_getAssociatedMenuIdentifier)
  {
    presentationsByIdentifier = [(UIContextMenuInteraction *)self presentationsByIdentifier];
    v9 = [presentationsByIdentifier objectForKeyedSubscript:_uicmi_getAssociatedMenuIdentifier];

    [v9 dragWillCancelWithAnimator:animatorCopy];
  }
}

- (void)_performCleanupForConfigurationWithIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
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

      presentationsByIdentifier = [(UIContextMenuInteraction *)self presentationsByIdentifier];
      v12 = 138412290;
      v13 = presentationsByIdentifier;
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
      presentationsByIdentifier = [(UIContextMenuInteraction *)self presentationsByIdentifier];
      v12 = 138412290;
      v13 = presentationsByIdentifier;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Somehow made it to cleanup step with a nil identifier. Current presentations: %@.", &v12, 0xCu);
    }

LABEL_9:
    goto LABEL_4;
  }

  presentationsByIdentifier2 = [(UIContextMenuInteraction *)self presentationsByIdentifier];
  v6 = [presentationsByIdentifier2 objectForKeyedSubscript:identifierCopy];

  presentationsByIdentifier3 = [(UIContextMenuInteraction *)self presentationsByIdentifier];
  [presentationsByIdentifier3 removeObjectForKey:identifierCopy];

  configurationsByIdentifier = [(UIContextMenuInteraction *)self configurationsByIdentifier];
  [configurationsByIdentifier removeObjectForKey:identifierCopy];

LABEL_4:
}

- (void)_contextMenuPresentationPreviewWasTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = tappedCopy;
  if (self->_delegateImplements.willCommit || self->_delegateImplements.willPerformPreviewAction)
  {
    menuConfiguration = [tappedCopy menuConfiguration];
    previewViewController = [menuConfiguration previewViewController];

    v8 = [_UIContextMenuAnimator animatorWithViewController:previewViewController];
    [(UIContextMenuInteraction *)self setPendingCommitAnimator:v8];
    configurationsByIdentifier = [(UIContextMenuInteraction *)self configurationsByIdentifier];
    menuConfiguration2 = [v5 menuConfiguration];
    identifier = [menuConfiguration2 identifier];
    v12 = [configurationsByIdentifier objectForKeyedSubscript:identifier];

    [(UIContextMenuInteraction *)self _delegate_tappedPreviewForConfiguration:v12 withAnimator:v8];
    if ([v8 preferredCommitStyle] == 1 && objc_msgSend(v8, "hasAnyActions"))
    {
      uiController = [v5 uiController];
      platterContainerView = [uiController platterContainerView];
      window = [platterContainerView window];

      v16 = [_UIContextMenuCommitAnimation alloc];
      uiController2 = [v5 uiController];
      contentPlatterView = [uiController2 contentPlatterView];
      v19 = [(_UIContextMenuCommitAnimation *)v16 initWithSource:contentPlatterView container:window];

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
      selfCopy = self;
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

      presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
      [presentationInteraction _cancelWithReason:v21 alongsideActions:0 completion:0];
    }

    identifier2 = [v12 identifier];
    [(UIContextMenuInteraction *)self _performCleanupForConfigurationWithIdentifier:identifier2];
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

- (void)contextMenuPresentation:(id)presentation didSelectMenuLeaf:(id)leaf
{
  presentationCopy = presentation;
  leafCopy = leaf;
  objc_storeWeak(&self->__selectedMenuLeaf, leafCopy);
  _proxySender = [(UIContextMenuInteraction *)self _proxySender];
  v14 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = leafCopy;
    menuConfiguration = [presentationCopy menuConfiguration];
    firstResponderTarget = [menuConfiguration firstResponderTarget];
    v12 = [v9 _resolvedTargetFromFirstTarget:firstResponderTarget sender:_proxySender shouldUseFallbackActionOut:&v14];

    if (!v12)
    {
      goto LABEL_10;
    }

    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v9 _performFallbackActionWithSender:_proxySender target:v12];
        goto LABEL_8;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  [leafCopy performWithSender:_proxySender target:v12];
LABEL_8:
  if (self->_delegateImplements.didPerformMenuLeaf)
  {
    delegate = [(UIContextMenuInteraction *)self delegate];
    [delegate _contextMenuInteraction:self didPerformMenuLeaf:leafCopy target:v12];
  }

LABEL_10:
  objc_storeWeak(&self->__selectedMenuLeaf, 0);
}

- (id)contextMenuPresentation:(id)presentation willDisplayMenu:(id)menu
{
  menuCopy = menu;
  menuConfiguration = [presentation menuConfiguration];
  firstResponderTarget = [menuConfiguration firstResponderTarget];
  v9 = [(UIContextMenuInteraction *)self _menuPreparedForDisplayWithMenu:menuCopy firstResponder:firstResponderTarget];

  return v9;
}

- (id)contextMenuPresentation:(id)presentation dismissalPreviewForItem:(id)item clientReturnedPreview:(BOOL *)preview
{
  presentationCopy = presentation;
  itemCopy = item;
  configurationsByIdentifier = [(UIContextMenuInteraction *)self configurationsByIdentifier];
  v11 = [configurationsByIdentifier objectForKeyedSubscript:itemCopy];

  if (v11)
  {
    v12 = [(UIContextMenuInteraction *)self _delegate_previewForDismissingForConfiguration:v11 clientReturnedPreview:preview];
  }

  else if (self->_delegateImplements.dismissalPreviewForItemWithIdentifier || self->_delegateImplements._dci_secondaryDismissalPreview)
  {
    menuConfiguration = [presentationCopy menuConfiguration];
    configurationsByIdentifier2 = [(UIContextMenuInteraction *)self configurationsByIdentifier];
    identifier = [menuConfiguration identifier];
    v16 = [configurationsByIdentifier2 objectForKeyedSubscript:identifier];

    if (v16 && self->_delegateImplements.dismissalPreviewForItemWithIdentifier)
    {
      delegate = [(UIContextMenuInteraction *)self delegate];
      v12 = [delegate contextMenuInteraction:self configuration:v16 dismissalPreviewForItemWithIdentifier:itemCopy];
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

- (void)_interactionShouldBeginAtPoint:(CAPoint3D)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  completionCopy = completion;
  presentationInteraction = [(UIContextMenuInteraction *)self presentationInteraction];
  [presentationInteraction activatedDriverStyle];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__UIContextMenuInteraction__interactionShouldBeginAtPoint_completion___block_invoke;
  aBlock[3] = &unk_1E7125190;
  aBlock[4] = self;
  v9 = completionCopy;
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
    delegate = [(UIContextMenuInteraction *)self delegate];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__UIContextMenuInteraction__interactionShouldBeginAtPoint_completion___block_invoke_4;
    v15[3] = &unk_1E71251B8;
    v16 = v12;
    [delegate _contextMenuInteraction:self configurationForMenuAtLocation:v15 completion:{x, y}];

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

- (id)_delegate_configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  delegate = [(UIContextMenuInteraction *)self delegate];
  v7 = [delegate contextMenuInteraction:self configurationForMenuAtLocation:{x, y}];

  return v7;
}

- (id)_delegate_previewForHighlightingForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (self->_delegateImplements.highlightPreviewForItemWithIdentifier)
  {
    _effectiveInternalIdentifier = [configurationCopy _effectiveInternalIdentifier];
    delegate = [(UIContextMenuInteraction *)self delegate];
    v8 = [delegate contextMenuInteraction:self configuration:v5 highlightPreviewForItemWithIdentifier:_effectiveInternalIdentifier];

LABEL_5:
    goto LABEL_7;
  }

  if (self->_delegateImplements.previewForHighlighting)
  {
    _effectiveInternalIdentifier = [(UIContextMenuInteraction *)self delegate];
    v8 = [_effectiveInternalIdentifier contextMenuInteraction:self previewForHighlightingMenuWithConfiguration:v5];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)_delegate_previewForDismissingForConfiguration:(id)configuration clientReturnedPreview:(BOOL *)preview
{
  configurationCopy = configuration;
  v7 = configurationCopy;
  if (self->_delegateImplements.dismissalPreviewForItemWithIdentifier)
  {
    _effectiveInternalIdentifier = [configurationCopy _effectiveInternalIdentifier];
    delegate = [(UIContextMenuInteraction *)self delegate];
    v10 = [delegate contextMenuInteraction:self configuration:v7 dismissalPreviewForItemWithIdentifier:_effectiveInternalIdentifier];

    *preview = 1;
  }

  else if (self->_delegateImplements.previewForDismissing && ![(UIContextMenuInteraction *)self _ignorePreviewForDismissingDelegate])
  {
    delegate2 = [(UIContextMenuInteraction *)self delegate];
    v10 = [delegate2 contextMenuInteraction:self previewForDismissingMenuWithConfiguration:v7];

    if (dyld_program_sdk_at_least())
    {
      *preview = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  view = [(UIContextMenuInteraction *)self view];
  traitCollection = [view traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  v14 = v10;
  v15 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  shouldApplyShadowHandler = [v15 shouldApplyShadowHandler];

  if (shouldApplyShadowHandler)
  {
    v17 = (shouldApplyShadowHandler)[2](shouldApplyShadowHandler, v14);
  }

  else
  {
    v17 = 1;
  }

  parameters = [v14 parameters];
  [parameters setAppliesShadow:v17];

  return v14;
}

- (void)_delegate_tappedPreviewForConfiguration:(id)configuration withAnimator:(id)animator
{
  configurationCopy = configuration;
  animatorCopy = animator;
  if (self->_delegateImplements.willPerformPreviewAction)
  {
    delegate = [(UIContextMenuInteraction *)self delegate];
    [delegate contextMenuInteraction:self willPerformPreviewActionForMenuWithConfiguration:configurationCopy animator:animatorCopy];
  }

  else
  {
    if (!self->_delegateImplements.willCommit)
    {
      goto LABEL_6;
    }

    delegate = [(UIContextMenuInteraction *)self delegate];
    [delegate contextMenuInteraction:self willCommitWithAnimator:animatorCopy];
  }

LABEL_6:
}

- (id)_delegate_contextMenuInteractionWillDisplayForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = objc_opt_new();
  if (self->_delegateImplements.willDisplay)
  {
    delegate = [(UIContextMenuInteraction *)self delegate];
    [delegate contextMenuInteraction:self willDisplayMenuForConfiguration:configurationCopy animator:v5];
  }

  return v5;
}

- (id)_delegate_contextMenuInteractionWillEndForConfiguration:(id)configuration presentation:(id)presentation
{
  configurationCopy = configuration;
  pendingCommitAnimator = [(UIContextMenuInteraction *)self pendingCommitAnimator];
  v7 = pendingCommitAnimator;
  if (pendingCommitAnimator)
  {
    v8 = pendingCommitAnimator;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  [(UIContextMenuInteraction *)self setPendingCommitAnimator:0];
  if (self->_delegateImplements.willEndForConfiguration)
  {
    delegate = [(UIContextMenuInteraction *)self delegate];
    [delegate contextMenuInteraction:self willEndForConfiguration:configurationCopy animator:v9];
  }

  return v9;
}

- (id)_delegate_getAccessoryViewsForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_delegateImplements.accessoriesForMenu && _UIIsPrivateMainBundle())
  {
    delegate = [(UIContextMenuInteraction *)self delegate];
    v6 = [delegate _contextMenuInteraction:self accessoriesForMenuWithConfiguration:configurationCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_delegate_performPreviewActionCommitAnimation:(id)animation
{
  animationCopy = animation;
  if (!self->_delegateImplements.shouldDeferCommitAnimation || (-[UIContextMenuInteraction delegate](self, "delegate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 _contextMenuInteraction:self shouldDeferPreviewActionCommitAnimation:animationCopy], v4, (v5 & 1) == 0))
  {
    animationCopy[2]();
  }
}

- (id)_suggestedMenuForConfiguration:(id)configuration atLocation:(CGPoint)location inCoordinateSpace:(id)space
{
  y = location.y;
  x = location.x;
  configurationCopy = configuration;
  spaceCopy = space;
  if (!self->_delegateImplements.overrideSuggestedActions || (-[UIContextMenuInteraction delegate](self, "delegate"), v11 = objc_claimAutoreleasedReturnValue(), [v11 _contextMenuInteraction:self overrideSuggestedActionsForConfiguration:configurationCopy], v12 = objc_claimAutoreleasedReturnValue(), +[UIMenu menuWithTitle:image:identifier:options:children:](UIMenu, "menuWithTitle:image:identifier:options:children:", &stru_1EFB14550, 0, @"com.apple.menu.root", 0, v12), v13 = objc_claimAutoreleasedReturnValue(), v12, v11, !v13))
  {
    v14 = +[UIMenuSystem contextSystem];
    view = [(UIContextMenuInteraction *)self view];
    v16 = [v14 _newBuilderFromResponderChain:view atLocation:spaceCopy inCoordinateSpace:{x, y}];
    v13 = [v16 menuForIdentifier:@"com.apple.menu.root"];
  }

  return v13;
}

- (void)_prepareSceneActivationConfiguration:(id)configuration
{
  configurationCopy = configuration;
  presentationsByIdentifier = [(UIContextMenuInteraction *)self presentationsByIdentifier];
  allValues = [presentationsByIdentifier allValues];
  firstObject = [allValues firstObject];

  windowSceneActivationPreview = [firstObject windowSceneActivationPreview];
  if (windowSceneActivationPreview)
  {
    sourcePreview = windowSceneActivationPreview;
    v9 = 1;
  }

  else
  {
    preview = [configurationCopy preview];
    if (preview)
    {
      sourcePreview = preview;
    }

    else
    {
      _proxySender = [(UIContextMenuInteraction *)self _proxySender];

      if (_proxySender == self && ([firstObject menuConfiguration], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "sourcePreview"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "_isVisible"), v13, v12, v14))
      {
        menuConfiguration = [firstObject menuConfiguration];
        sourcePreview = [menuConfiguration sourcePreview];
      }

      else
      {
        sourcePreview = 0;
      }
    }

    v9 = 0;
  }

  [configurationCopy setPreview:sourcePreview];
  [configurationCopy _setAnimationSource:v9];
}

- (void)_requestSceneActivationWithConfiguration:(id)configuration animated:(BOOL)animated sender:(id)sender errorHandler:(id)handler
{
  animatedCopy = animated;
  location[3] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  senderCopy = sender;
  handlerCopy = handler;
  presentationsByIdentifier = [(UIContextMenuInteraction *)self presentationsByIdentifier];
  allValues = [presentationsByIdentifier allValues];
  firstObject = [allValues firstObject];

  if (animatedCopy)
  {
    preview = [configurationCopy preview];

    if (preview && firstObject)
    {
      v17 = [[_UIWindowSceneActivationAnimator alloc] initWithConfiguration:configurationCopy];
      uiController = [firstObject uiController];
      v19 = [_UIContextMenuDismissToWindowSceneActivationAnimation animationWithUIController:uiController];

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
      v21 = firstObject;
      v33 = v21;
      [(_UIWindowSceneActivationAnimator *)v17 addCompletion:v32];
      objc_initWeak(location, self);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __98__UIContextMenuInteraction__requestSceneActivationWithConfiguration_animated_sender_errorHandler___block_invoke_4;
      v25[3] = &unk_1E712C830;
      v22 = v17;
      v26 = v22;
      v27 = configurationCopy;
      v28 = senderCopy;
      v30 = handlerCopy;
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
          *(location + 4) = configurationCopy;
          _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "The configuration either has no preview or there is no current context menu presentation; configuration = %@", location, 0xCu);
        }
      }

      else
      {
        v23 = *(__UILogGetCategoryCachedImpl("Assert", &_requestSceneActivationWithConfiguration_animated_sender_errorHandler____s_category) + 8);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = configurationCopy;
          _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "The configuration either has no preview or there is no current context menu presentation; configuration = %@", location, 0xCu);
        }
      }

      [UIApp _requestSceneActivationWithConfiguration:configurationCopy animated:0 sender:senderCopy errorHandler:handlerCopy];
    }
  }

  else
  {
    if (firstObject)
    {
      [(UIContextMenuInteraction *)self contextMenuPresentation:firstObject didRequestDismissalWithReason:1 alongsideActions:0 completion:0];
    }

    [UIApp _requestSceneActivationWithConfiguration:configurationCopy animated:0 sender:senderCopy errorHandler:handlerCopy];
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

- ($9BEB610D0CE1B1EDC3D89DA2464F985F)_testing_metdataForMenuElements:(id)elements
{
  elementsCopy = elements;
  v8 = 0;
  v9 = 0;
  v5 = [_UIMenuPreparationContext contextWithPreparer:self firstResponderTarget:0];
  [v5 setDeferredElementDelegate:self];
  [v5 setSupportsCustomViewMenuElements:1];
  v6 = _menuElementsPreparedForDisplay(elementsCopy, 2, v5, &v8);

  return (v8 | (v9 << 32));
}

- (UIMenuLeaf)_selectedMenuLeaf
{
  WeakRetained = objc_loadWeakRetained(&self->__selectedMenuLeaf);

  return WeakRetained;
}

@end