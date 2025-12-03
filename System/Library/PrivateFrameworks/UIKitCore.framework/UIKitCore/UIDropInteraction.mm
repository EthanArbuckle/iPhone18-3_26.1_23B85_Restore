@interface UIDropInteraction
- (BOOL)_canHandleDragEvent:(id)event;
- (BOOL)_gestureRecognizer:(id)recognizer shouldReceiveDragEvent:(id)event;
- (UIDropInteraction)initWithDelegate:(id)delegate;
- (UIDropInteractionContextImpl)context;
- (UIView)view;
- (_UIDropInteractionOwning)owner;
- (id)_dynamicGestureRecognizersForEvent:(id)event;
- (id)_initWithPasteConfiguration:(id)configuration;
- (id)_setDownAnimation:(id)animation customSpringAnimationBehaviorForSetDownOfDragItem:(id)item;
- (id)_setDownAnimation:(id)animation prepareForSetDownOfDragItem:(id)item visibleDroppedItem:(id)droppedItem;
- (id)_setDownAnimation:(id)animation updatedSetDownOfDragItem:(id)item preview:(id)preview;
- (id)_windowForSetDownOfDragItem:(id)item;
- (id)delegate;
- (unint64_t)_setLastDragOperation:(unint64_t)operation forbidden:(BOOL)forbidden precise:(BOOL)precise prefersFullSizePreview:(BOOL)preview preferredBadgeStyle:(int64_t)style onSession:(id)session;
- (unint64_t)_validateDragOperation:(unint64_t)operation forSelector:(SEL)selector delegate:(id)delegate dropSession:(id)session onSession:(id)onSession forbidden:(BOOL *)forbidden;
- (void)_dragDestinationGestureStateChanged:(id)changed;
- (void)_dropSessionEntered:(id)entered withSessionDestination:(id)destination;
- (void)_prepareItemsInSessionForDrop:(id)drop;
- (void)_sendSessionDidEnd:(id)end;
- (void)_setDownAnimation:(id)animation willAnimateSetDownOfDragItem:(id)item withAnimator:(id)animator preview:(id)preview;
- (void)_setWantsDefaultVisualBehavior:(BOOL)behavior;
- (void)didMoveToOwner:(id)owner;
- (void)willMoveToOwner:(id)owner;
@end

@implementation UIDropInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  IsKindOfUIView = _IsKindOfUIView(WeakRetained);

  if (IsKindOfUIView)
  {
    v5 = objc_loadWeakRetained(&self->_owner);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIDropInteraction)initWithDelegate:(id)delegate
{
  v4 = delegate;
  v19.receiver = self;
  v19.super_class = UIDropInteraction;
  v5 = [(UIDropInteraction *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    _UIValidateAccountBasedDelegateRespondsToSelector(v4, sel__dropInteraction_dataOwnerForSession_);
    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFFFD | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFFFB | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFFF7 | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 16;
    }

    else
    {
      v10 = 0;
    }

    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFFEF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 32;
    }

    else
    {
      v11 = 0;
    }

    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFFDF | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 64;
    }

    else
    {
      v12 = 0;
    }

    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFFBF | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 128;
    }

    else
    {
      v13 = 0;
    }

    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFF7F | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFEFF | v14;
    if (objc_opt_respondsToSelector())
    {
      v15 = 512;
    }

    else
    {
      v15 = 0;
    }

    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFDFF | v15;
    if (objc_opt_respondsToSelector())
    {
      v16 = 1024;
    }

    else
    {
      v16 = 0;
    }

    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xFBFF | v16;
    if (objc_opt_respondsToSelector())
    {
      v17 = 2048;
    }

    else
    {
      v17 = 0;
    }

    *&v6->_delegateImplements = *&v6->_delegateImplements & 0xF7FF | v17;
  }

  return v6;
}

- (id)_initWithPasteConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = UIDropInteraction;
  v6 = [(UIDropInteraction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pasteConfiguration, configuration);
  }

  return v7;
}

- (id)_dynamicGestureRecognizersForEvent:(id)event
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = [(UIDragGestureRecognizer *)[UIDropInteractionGestureRecognizer alloc] initWithTarget:self action:sel__dragDestinationGestureStateChanged_];
  [(UIGestureRecognizer *)v4 setDelegate:self];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  return v5;
}

- (void)willMoveToOwner:(id)owner
{
  [(UIDropInteractionContextImpl *)self->_context setState:0];
  interactionEffect = [(UIDropInteraction *)self interactionEffect];
  [interactionEffect interaction:self didChangeWithContext:self->_context];
}

- (void)didMoveToOwner:(id)owner
{
  v20 = *MEMORY[0x1E69E9840];
  ownerCopy = owner;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  objc_storeWeak(&self->_owner, ownerCopy);
  if (!ownerCopy && WeakRetained)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    gestureRecognizers = [WeakRetained gestureRecognizers];
    v7 = [gestureRecognizers countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(gestureRecognizers);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            delegate = [v11 delegate];

            if (delegate == self)
            {
              [WeakRetained removeGestureRecognizer:v11];
              sessionDestination = [v11 sessionDestination];
              activeDragEvent = [sessionDestination activeDragEvent];
              [activeDragEvent _removeQueriedOwnerForDynamicGesturesIfNeeded:WeakRetained];
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [gestureRecognizers countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }
}

- (UIDropInteractionContextImpl)context
{
  context = self->_context;
  if (!context)
  {
    v4 = objc_opt_new();
    v5 = self->_context;
    self->_context = v4;

    context = self->_context;
  }

  return context;
}

- (void)_setWantsDefaultVisualBehavior:(BOOL)behavior
{
  if (self->_wantsDefaultVisualBehavior != behavior)
  {
    self->_wantsDefaultVisualBehavior = behavior;
    if (behavior)
    {
      v4 = objc_opt_new();
      [(UIDropInteraction *)self setInteractionEffect:v4];
    }

    else
    {

      [(UIDropInteraction *)self setInteractionEffect:0];
    }
  }
}

- (BOOL)_gestureRecognizer:(id)recognizer shouldReceiveDragEvent:(id)event
{
  recognizerCopy = recognizer;
  eventCopy = event;
  if ((([(NSMutableSet *)self->_activeDragGestureRecognizers containsObject:recognizerCopy]& 1) != 0 || ![(NSMutableSet *)self->_activeDragGestureRecognizers count]|| [(UIDropInteraction *)self _allowsSimultaneousDragWithEvent:eventCopy]) && [(UIDropInteraction *)self _canHandleDragEvent:eventCopy])
  {
    activeDragGestureRecognizers = self->_activeDragGestureRecognizers;
    if (!activeDragGestureRecognizers)
    {
      v9 = objc_opt_new();
      v10 = self->_activeDragGestureRecognizers;
      self->_activeDragGestureRecognizers = v9;

      activeDragGestureRecognizers = self->_activeDragGestureRecognizers;
    }

    [(NSMutableSet *)activeDragGestureRecognizers addObject:recognizerCopy];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_dragDestinationGestureStateChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(UIDropInteraction *)self delegate];
  sessionDestination = [changedCopy sessionDestination];
  dropSession = [changedCopy dropSession];
  owner = [(UIDropInteraction *)self owner];
  v45[0] = 0;
  state = [changedCopy state];
  if (state > 2)
  {
    if (state == 3)
    {
      context = [(UIDropInteraction *)self context];
      [context setState:3];

      interactionEffect = [(UIDropInteraction *)self interactionEffect];
      context2 = [(UIDropInteraction *)self context];
      [interactionEffect interaction:self didChangeWithContext:context2];

      if (self->_potentialDragOperation)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __57__UIDropInteraction__dragDestinationGestureStateChanged___block_invoke;
        aBlock[3] = &unk_1E70F8868;
        v26 = delegate;
        v40 = v26;
        selfCopy = self;
        v27 = dropSession;
        v42 = v27;
        v28 = sessionDestination;
        v43 = v28;
        v29 = owner;
        v44 = v29;
        v30 = _Block_copy(aBlock);
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __57__UIDropInteraction__dragDestinationGestureStateChanged___block_invoke_2;
        v36[3] = &unk_1E70F6228;
        v36[4] = self;
        v37 = v26;
        v38 = v27;
        v31 = _Block_copy(v36);
        [v28 requestDropOnOwner:v29 withOperation:self->_potentialDragOperation perform:v30 completion:v31];
      }
    }

    else
    {
      if (state != 4)
      {
        goto LABEL_26;
      }

      context3 = [(UIDropInteraction *)self context];
      [context3 setState:0];

      interactionEffect2 = [(UIDropInteraction *)self interactionEffect];
      context4 = [(UIDropInteraction *)self context];
      [interactionEffect2 interaction:self didChangeWithContext:context4];

      if ((*&self->_delegateImplements & 8) != 0)
      {
        [delegate dropInteraction:self sessionDidExit:dropSession];
      }
    }

    [(NSMutableSet *)self->_activeDragGestureRecognizers removeObject:changedCopy];
    goto LABEL_26;
  }

  if (state == 1)
  {
    context5 = [(UIDropInteraction *)self context];
    [context5 setState:1];

    interactionEffect3 = [(UIDropInteraction *)self interactionEffect];
    context6 = [(UIDropInteraction *)self context];
    [interactionEffect3 interaction:self didChangeWithContext:context6];

    [(UIDropInteraction *)self _dropSessionEntered:dropSession withSessionDestination:sessionDestination];
    if ((*&self->_delegateImplements & 2) != 0)
    {
      [delegate dropInteraction:self sessionDidEnter:dropSession];
    }
  }

  else if (state != 2)
  {
    goto LABEL_26;
  }

  if ((*&self->_delegateImplements & 4) != 0)
  {
    v19 = [delegate dropInteraction:self sessionDidUpdate:dropSession];
    if (v19)
    {
      v20 = v19;
      delegateImplements = self->_delegateImplements;
      operation = [v19 operation];
      if (operation == 3)
      {
        v17 = 16;
      }

      else if (operation == 2)
      {
        v17 = 1;
      }

      else
      {
        v17 = 0;
        if (operation == 1)
        {
          v45[0] = 1;
        }
      }

      isPrecise = [v20 isPrecise];
      prefersFullSizePreview = [v20 prefersFullSizePreview];
      _preferredBadgeStyle = [v20 _preferredBadgeStyle];

      if ((delegateImplements & 0x10) != 0)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    _pasteConfiguration = [(UIDropInteraction *)self _pasteConfiguration];

    if (_pasteConfiguration)
    {
      isPrecise = 0;
      _preferredBadgeStyle = 0;
      v17 = [sessionDestination sourceOperationMask] & 1;
      prefersFullSizePreview = 1;
LABEL_25:
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v33 = [(UIDropInteraction *)self _validateDragOperation:v17 forSelector:sel_dropInteraction_sessionDidUpdate_ delegate:WeakRetained dropSession:dropSession onSession:sessionDestination forbidden:v45];

      [(UIDropInteraction *)self _setLastDragOperation:v33 forbidden:v45[0] precise:isPrecise prefersFullSizePreview:prefersFullSizePreview preferredBadgeStyle:_preferredBadgeStyle onSession:sessionDestination];
    }
  }

LABEL_26:
}

void __57__UIDropInteraction__dragDestinationGestureStateChanged___block_invoke(id *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v2 = objc_opt_class();
    v3 = NSStringFromClass(v2);
    v4 = [v3 isEqualToString:@"WKContentView"];

    if (v4)
    {
      [_UIKitDragAndDropStatistics incrementUIKitScalarValueBy:1 forKey:@"dropOnWebContent"];
    }
  }

  [a1[5] _prepareItemsInSessionForDrop:a1[6]];
  v5 = a1[5];
  if ((v5[16] & 0x10) != 0)
  {
    v7 = a1[7];
    v8 = a1[6];
    v9 = [v7 dropItemProviders];
    v10 = [v9 count];
    v11 = [v8 items];
    v12 = [v11 count];
    if (v10)
    {
      v13 = v12;
      for (i = 0; i != v10; ++i)
      {
        if (i < v13)
        {
          v15 = [v9 objectAtIndexedSubscript:i];
          v16 = [v11 objectAtIndexedSubscript:i];
          [v16 _setDropItemProvider:v15];
        }
      }
    }

    [a1[4] dropInteraction:a1[5] performDrop:a1[6]];
    v17 = a1[6];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = [v17 items];
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v25;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v24 + 1) + 8 * j) _setDropItemProvider:0];
        }

        v20 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v6 = [v5 _pasteConfiguration];

    if (v6)
    {
      v23 = [a1[7] dropItemProviders];
      _UIDragEventPasteItemProvidersForOwner(v23, a1[8]);
    }
  }
}

uint64_t __57__UIDropInteraction__dragDestinationGestureStateChanged___block_invoke_2(uint64_t result)
{
  if ((*(*(result + 32) + 32) & 0x20) != 0)
  {
    return [*(result + 40) dropInteraction:? concludeDrop:?];
  }

  return result;
}

- (void)_prepareItemsInSessionForDrop:(id)drop
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  items = [drop items];
  v5 = [items countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(items);
        }

        [*(*(&v9 + 1) + 8 * v8++) _setDestinationVisualTarget:self];
      }

      while (v6 != v8);
      v6 = [items countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_windowForSetDownOfDragItem:(id)item
{
  view = [(UIDropInteraction *)self view];
  _window = [view _window];

  return _window;
}

- (id)_setDownAnimation:(id)animation updatedSetDownOfDragItem:(id)item preview:(id)preview
{
  previewCopy = preview;
  itemCopy = item;
  delegate = [(UIDropInteraction *)self delegate];
  v10 = [delegate dropInteraction:self previewForDroppingItem:itemCopy withDefault:previewCopy];

  if (v10)
  {
    target = [v10 target];
    container = [target container];

    _window = [container _window];
    if (!_window || (v14 = _window, v15 = [container isHiddenOrHasHiddenAncestor], v14, v15))
    {

      v10 = 0;
    }
  }

  return v10;
}

- (id)_setDownAnimation:(id)animation prepareForSetDownOfDragItem:(id)item visibleDroppedItem:(id)droppedItem
{
  v57 = *MEMORY[0x1E69E9840];
  animationCopy = animation;
  itemCopy = item;
  droppedItemCopy = droppedItem;
  containerView = [animationCopy containerView];
  v11 = itemCopy;
  if (os_variant_has_internal_diagnostics())
  {
    if (!droppedItemCopy)
    {
      v42 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v11;
        _os_log_fault_impl(&dword_188A29000, v42, OS_LOG_TYPE_FAULT, "droppedItem for draggingItem (%@) is nil", &buf, 0xCu);
      }

      goto LABEL_33;
    }
  }

  else if (!droppedItemCopy)
  {
    v43 = *(__UILogGetCategoryCachedImpl("Assert", &_setDownAnimation_prepareForSetDownOfDragItem_visibleDroppedItem____s_category) + 8);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_188A29000, v43, OS_LOG_TYPE_ERROR, "droppedItem for draggingItem (%@) is nil", &buf, 0xCu);
    }

    goto LABEL_33;
  }

  if (!v11)
  {
LABEL_33:
    v13 = 0;
    goto LABEL_34;
  }

  delegate = [(UIDropInteraction *)self delegate];
  if ((*&self->_delegateImplements & 0x80) != 0)
  {
    createSnapshotView = [droppedItemCopy createSnapshotView];
    preview = [droppedItemCopy preview];
    parameters = [preview parameters];
    v15 = parameters;
    if (parameters)
    {
      v16 = parameters;
    }

    else
    {
      v16 = objc_alloc_init(UIDragPreviewParameters);
    }

    v46 = v16;

    view = [(UIDropInteraction *)self view];
    window = [view window];
    if (window && (v19 = [view isHiddenOrHasHiddenAncestor], window, !v19))
    {
      superview = [view superview];
      [droppedItemCopy center];
      v25 = v24;
      v27 = v26;
      containerView2 = [animationCopy containerView];
      [superview convertPoint:containerView2 fromCoordinateSpace:{v25, v27}];
      v30 = v29;
      v32 = v31;

      v33 = [UIDragPreviewTarget alloc];
      superview2 = [view superview];
      v21 = [(UIPreviewTarget *)v33 initWithContainer:superview2 center:v30, v32];

      v22 = 1;
    }

    else
    {
      v20 = [UIDragPreviewTarget alloc];
      [droppedItemCopy center];
      v21 = [(UIPreviewTarget *)v20 initWithContainer:containerView center:?];
      v22 = 0;
    }

    v45 = v21;
    v35 = [[UITargetedDragPreview alloc] initWithView:createSnapshotView parameters:v46 target:v21];
    [(UITargetedPreview *)v35 _setDefaultPreview:1];
    v36 = [delegate dropInteraction:self previewForDroppingItem:v11 withDefault:v35];
    v13 = v36;
    if (v36 == v35)
    {
      v37 = v22;
    }

    else
    {
      v37 = 1;
    }

    if ((v37 & 1) == 0)
    {

      v13 = 0;
    }

    if ((*&self->_delegateImplements & 0x400) != 0)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v55 = 0x2020000000;
      v56 = 0;
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __86__UIDropInteraction__setDownAnimation_prepareForSetDownOfDragItem_visibleDroppedItem___block_invoke;
      v50[3] = &unk_1E71062D0;
      p_buf = &buf;
      v51 = animationCopy;
      v52 = v11;
      [delegate _dropInteraction:self delayedPreviewProviderForDroppingItem:v52 previewProvider:v50];

      _Block_object_dispose(&buf, 8);
    }

    if (v13)
    {
      target = [(UITargetedPreview *)v13 target];
      container = [target container];

      _window = [container _window];
      if (!_window || (v41 = [container isHiddenOrHasHiddenAncestor], _window, v41))
      {

        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_34:

  return v13;
}

uint64_t __86__UIDropInteraction__setDownAnimation_prepareForSetDownOfDragItem_visibleDroppedItem___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(*(result + 48) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    return [*(result + 32) updateTargetedDragPreview:a2 forDragItem:*(result + 40)];
  }

  return result;
}

- (void)_setDownAnimation:(id)animation willAnimateSetDownOfDragItem:(id)item withAnimator:(id)animator preview:(id)preview
{
  animationCopy = animation;
  itemCopy = item;
  animatorCopy = animator;
  previewCopy = preview;
  if (itemCopy)
  {
    delegate = [(UIDropInteraction *)self delegate];
    if ((*&self->_delegateImplements & 0x100) != 0)
    {
      v15 = [[_UIDragAnimatingWrapper alloc] initWithPropertyAnimator:animatorCopy];
      [delegate dropInteraction:self item:itemCopy willAnimateDropWithAnimator:v15];
    }

    else
    {
      v15 = 0;
    }

    _previewContainer = [previewCopy _previewContainer];

    if (_previewContainer)
    {
      if (!v15)
      {
        v15 = [[_UIDragAnimatingWrapper alloc] initWithPropertyAnimator:animatorCopy];
      }

      _previewContainer2 = [previewCopy _previewContainer];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __89__UIDropInteraction__setDownAnimation_willAnimateSetDownOfDragItem_withAnimator_preview___block_invoke;
      v18[3] = &unk_1E70F35B8;
      v19 = animationCopy;
      v20 = itemCopy;
      [_previewContainer2 _animateDropAlongsideAnimator:v15 completion:v18];
    }
  }
}

- (id)_setDownAnimation:(id)animation customSpringAnimationBehaviorForSetDownOfDragItem:(id)item
{
  itemCopy = item;
  delegate = [(UIDropInteraction *)self delegate];
  v7 = delegate;
  if ((*&self->_delegateImplements & 0x800) != 0)
  {
    v8 = [delegate _dropInteraction:self customSpringAnimationBehaviorForDroppingItem:itemCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_canHandleDragEvent:(id)event
{
  eventCopy = event;
  delegate = [(UIDropInteraction *)self delegate];
  if (*&self->_delegateImplements)
  {
    _dropSession = [eventCopy _dropSession];
    CanPasteItemProvidersForOwner = [delegate dropInteraction:self canHandleSession:_dropSession];
  }

  else
  {
    _pasteConfiguration = [(UIDropInteraction *)self _pasteConfiguration];

    if (!_pasteConfiguration)
    {
      CanPasteItemProvidersForOwner = 1;
      goto LABEL_6;
    }

    _sessionDestination = [eventCopy _sessionDestination];
    _dropSession = [_sessionDestination preDropItemProviders];

    owner = [(UIDropInteraction *)self owner];
    CanPasteItemProvidersForOwner = _UIDragEventCanPasteItemProvidersForOwner(_dropSession, owner);
  }

LABEL_6:
  return CanPasteItemProvidersForOwner;
}

- (unint64_t)_validateDragOperation:(unint64_t)operation forSelector:(SEL)selector delegate:(id)delegate dropSession:(id)session onSession:(id)onSession forbidden:(BOOL *)forbidden
{
  v35 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  sessionCopy = session;
  onSessionCopy = onSession;
  v17 = onSessionCopy;
  if (operation)
  {
    sourceOperationMask = [onSessionCopy sourceOperationMask];
    if ((operation & ~sourceOperationMask) != 0)
    {
      v19 = sourceOperationMask;
      v20 = *(__UILogGetCategoryCachedImpl("Dragging", &_MergedGlobals_1072) + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
        v22 = NSStringFromSelector(selector);
        v29 = 138412802;
        v30 = v22;
        v31 = 2048;
        operationCopy2 = operation;
        v33 = 2048;
        v34 = v19;
        v23 = "Selector %@ returned a _UIDragOperation %lu that is outside of the sourceOperationMask %lu. Using _UIDragOperationNone instead.";
        v24 = v21;
        v25 = 32;
LABEL_11:
        _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, v23, &v29, v25);

        goto LABEL_12;
      }

      goto LABEL_12;
    }

    if ((operation & (operation - 1)) != 0)
    {
      v27 = *(__UILogGetCategoryCachedImpl("Dragging", &qword_1ED49DAF0) + 8);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v21 = v27;
        v22 = NSStringFromSelector(selector);
        v29 = 138412546;
        v30 = v22;
        v31 = 2048;
        operationCopy2 = operation;
        v23 = "Selector  %@ returned a _UIDragOperation %lu that contains more than one operation. Using _UIDragOperationNone instead.";
        v24 = v21;
        v25 = 22;
        goto LABEL_11;
      }

LABEL_12:
      operation = 0;
      goto LABEL_13;
    }

    if (_UIShouldEnforceOpenInRulesInAccountBasedApp() && (*&self->_delegateImplements & 0x200) != 0)
    {
      v26 = [delegateCopy _dropInteraction:self dataOwnerForSession:sessionCopy];
    }

    else
    {
      v26 = 0;
    }

    operation = [v17 actualDragOperationForProposedDragOperation:operation destinationDataOwner:v26 forbidden:forbidden];
  }

LABEL_13:

  return operation;
}

- (unint64_t)_setLastDragOperation:(unint64_t)operation forbidden:(BOOL)forbidden precise:(BOOL)precise prefersFullSizePreview:(BOOL)preview preferredBadgeStyle:(int64_t)style onSession:(id)session
{
  previewCopy = preview;
  preciseCopy = precise;
  forbiddenCopy = forbidden;
  sessionCopy = session;
  v15 = [sessionCopy sourceOperationMask] & operation;
  self->_potentialDragOperation = v15;
  v16 = objc_opt_new();
  [v16 setOperation:self->_potentialDragOperation];
  [v16 setForbidden:forbiddenCopy];
  [v16 setPrecise:preciseCopy];
  [v16 setPrefersFullSizePreview:previewCopy];
  [v16 setPreferredBadgeStyle:style];
  [sessionCopy takePotentialDrop:v16];

  return v15;
}

- (void)_dropSessionEntered:(id)entered withSessionDestination:(id)destination
{
  enteredCopy = entered;
  destinationCopy = destination;
  enteredDropSessionByDraggingSession = self->_enteredDropSessionByDraggingSession;
  if (!enteredDropSessionByDraggingSession)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v9 = self->_enteredDropSessionByDraggingSession;
    self->_enteredDropSessionByDraggingSession = strongToStrongObjectsMapTable;

    enteredDropSessionByDraggingSession = self->_enteredDropSessionByDraggingSession;
  }

  [(NSMapTable *)enteredDropSessionByDraggingSession setObject:enteredCopy forKey:destinationCopy];
  [destinationCopy enteredDestination:self];
}

- (void)_sendSessionDidEnd:(id)end
{
  v13 = *MEMORY[0x1E69E9840];
  endCopy = end;
  delegate = [(UIDropInteraction *)self delegate];
  v6 = [(NSMapTable *)self->_enteredDropSessionByDraggingSession objectForKey:endCopy];
  [(NSMapTable *)self->_enteredDropSessionByDraggingSession removeObjectForKey:endCopy];
  if (os_variant_has_internal_diagnostics())
  {
    if (!v6)
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v9 = 138412546;
        selfCopy2 = self;
        v11 = 2112;
        v12 = endCopy;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "dropInteraction (%@) unable to find entered drop session for dragging session (%@)", &v9, 0x16u);
      }
    }
  }

  else if (!v6)
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &_sendSessionDidEnd____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      selfCopy2 = self;
      v11 = 2112;
      v12 = endCopy;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "dropInteraction (%@) unable to find entered drop session for dragging session (%@)", &v9, 0x16u);
    }
  }

  if ((*&self->_delegateImplements & 0x40) != 0)
  {
    [delegate dropInteraction:self sessionDidEnd:v6];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UIDropInteractionOwning)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

@end