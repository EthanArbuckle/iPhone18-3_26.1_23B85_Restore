@interface UIDropInteraction
- (BOOL)_canHandleDragEvent:(id)a3;
- (BOOL)_gestureRecognizer:(id)a3 shouldReceiveDragEvent:(id)a4;
- (UIDropInteraction)initWithDelegate:(id)delegate;
- (UIDropInteractionContextImpl)context;
- (UIView)view;
- (_UIDropInteractionOwning)owner;
- (id)_dynamicGestureRecognizersForEvent:(id)a3;
- (id)_initWithPasteConfiguration:(id)a3;
- (id)_setDownAnimation:(id)a3 customSpringAnimationBehaviorForSetDownOfDragItem:(id)a4;
- (id)_setDownAnimation:(id)a3 prepareForSetDownOfDragItem:(id)a4 visibleDroppedItem:(id)a5;
- (id)_setDownAnimation:(id)a3 updatedSetDownOfDragItem:(id)a4 preview:(id)a5;
- (id)_windowForSetDownOfDragItem:(id)a3;
- (id)delegate;
- (unint64_t)_setLastDragOperation:(unint64_t)a3 forbidden:(BOOL)a4 precise:(BOOL)a5 prefersFullSizePreview:(BOOL)a6 preferredBadgeStyle:(int64_t)a7 onSession:(id)a8;
- (unint64_t)_validateDragOperation:(unint64_t)a3 forSelector:(SEL)a4 delegate:(id)a5 dropSession:(id)a6 onSession:(id)a7 forbidden:(BOOL *)a8;
- (void)_dragDestinationGestureStateChanged:(id)a3;
- (void)_dropSessionEntered:(id)a3 withSessionDestination:(id)a4;
- (void)_prepareItemsInSessionForDrop:(id)a3;
- (void)_sendSessionDidEnd:(id)a3;
- (void)_setDownAnimation:(id)a3 willAnimateSetDownOfDragItem:(id)a4 withAnimator:(id)a5 preview:(id)a6;
- (void)_setWantsDefaultVisualBehavior:(BOOL)a3;
- (void)didMoveToOwner:(id)a3;
- (void)willMoveToOwner:(id)a3;
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

- (id)_initWithPasteConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UIDropInteraction;
  v6 = [(UIDropInteraction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pasteConfiguration, a3);
  }

  return v7;
}

- (id)_dynamicGestureRecognizersForEvent:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = [(UIDragGestureRecognizer *)[UIDropInteractionGestureRecognizer alloc] initWithTarget:self action:sel__dragDestinationGestureStateChanged_];
  [(UIGestureRecognizer *)v4 setDelegate:self];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  return v5;
}

- (void)willMoveToOwner:(id)a3
{
  [(UIDropInteractionContextImpl *)self->_context setState:0];
  v4 = [(UIDropInteraction *)self interactionEffect];
  [v4 interaction:self didChangeWithContext:self->_context];
}

- (void)didMoveToOwner:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  objc_storeWeak(&self->_owner, v4);
  if (!v4 && WeakRetained)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [WeakRetained gestureRecognizers];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v11 delegate];

            if (v12 == self)
            {
              [WeakRetained removeGestureRecognizer:v11];
              v13 = [v11 sessionDestination];
              v14 = [v13 activeDragEvent];
              [v14 _removeQueriedOwnerForDynamicGesturesIfNeeded:WeakRetained];
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)_setWantsDefaultVisualBehavior:(BOOL)a3
{
  if (self->_wantsDefaultVisualBehavior != a3)
  {
    self->_wantsDefaultVisualBehavior = a3;
    if (a3)
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

- (BOOL)_gestureRecognizer:(id)a3 shouldReceiveDragEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((([(NSMutableSet *)self->_activeDragGestureRecognizers containsObject:v6]& 1) != 0 || ![(NSMutableSet *)self->_activeDragGestureRecognizers count]|| [(UIDropInteraction *)self _allowsSimultaneousDragWithEvent:v7]) && [(UIDropInteraction *)self _canHandleDragEvent:v7])
  {
    activeDragGestureRecognizers = self->_activeDragGestureRecognizers;
    if (!activeDragGestureRecognizers)
    {
      v9 = objc_opt_new();
      v10 = self->_activeDragGestureRecognizers;
      self->_activeDragGestureRecognizers = v9;

      activeDragGestureRecognizers = self->_activeDragGestureRecognizers;
    }

    [(NSMutableSet *)activeDragGestureRecognizers addObject:v6];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_dragDestinationGestureStateChanged:(id)a3
{
  v4 = a3;
  v35 = [(UIDropInteraction *)self delegate];
  v5 = [v4 sessionDestination];
  v6 = [v4 dropSession];
  v34 = [(UIDropInteraction *)self owner];
  v45[0] = 0;
  v7 = [v4 state];
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v23 = [(UIDropInteraction *)self context];
      [v23 setState:3];

      v24 = [(UIDropInteraction *)self interactionEffect];
      v25 = [(UIDropInteraction *)self context];
      [v24 interaction:self didChangeWithContext:v25];

      if (self->_potentialDragOperation)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __57__UIDropInteraction__dragDestinationGestureStateChanged___block_invoke;
        aBlock[3] = &unk_1E70F8868;
        v26 = v35;
        v40 = v26;
        v41 = self;
        v27 = v6;
        v42 = v27;
        v28 = v5;
        v43 = v28;
        v29 = v34;
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
      if (v7 != 4)
      {
        goto LABEL_26;
      }

      v8 = [(UIDropInteraction *)self context];
      [v8 setState:0];

      v9 = [(UIDropInteraction *)self interactionEffect];
      v10 = [(UIDropInteraction *)self context];
      [v9 interaction:self didChangeWithContext:v10];

      if ((*&self->_delegateImplements & 8) != 0)
      {
        [v35 dropInteraction:self sessionDidExit:v6];
      }
    }

    [(NSMutableSet *)self->_activeDragGestureRecognizers removeObject:v4];
    goto LABEL_26;
  }

  if (v7 == 1)
  {
    v11 = [(UIDropInteraction *)self context];
    [v11 setState:1];

    v12 = [(UIDropInteraction *)self interactionEffect];
    v13 = [(UIDropInteraction *)self context];
    [v12 interaction:self didChangeWithContext:v13];

    [(UIDropInteraction *)self _dropSessionEntered:v6 withSessionDestination:v5];
    if ((*&self->_delegateImplements & 2) != 0)
    {
      [v35 dropInteraction:self sessionDidEnter:v6];
    }
  }

  else if (v7 != 2)
  {
    goto LABEL_26;
  }

  if ((*&self->_delegateImplements & 4) != 0)
  {
    v19 = [v35 dropInteraction:self sessionDidUpdate:v6];
    if (v19)
    {
      v20 = v19;
      delegateImplements = self->_delegateImplements;
      v22 = [v19 operation];
      if (v22 == 3)
      {
        v17 = 16;
      }

      else if (v22 == 2)
      {
        v17 = 1;
      }

      else
      {
        v17 = 0;
        if (v22 == 1)
        {
          v45[0] = 1;
        }
      }

      v15 = [v20 isPrecise];
      v18 = [v20 prefersFullSizePreview];
      v16 = [v20 _preferredBadgeStyle];

      if ((delegateImplements & 0x10) != 0)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v14 = [(UIDropInteraction *)self _pasteConfiguration];

    if (v14)
    {
      v15 = 0;
      v16 = 0;
      v17 = [v5 sourceOperationMask] & 1;
      v18 = 1;
LABEL_25:
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v33 = [(UIDropInteraction *)self _validateDragOperation:v17 forSelector:sel_dropInteraction_sessionDidUpdate_ delegate:WeakRetained dropSession:v6 onSession:v5 forbidden:v45];

      [(UIDropInteraction *)self _setLastDragOperation:v33 forbidden:v45[0] precise:v15 prefersFullSizePreview:v18 preferredBadgeStyle:v16 onSession:v5];
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

- (void)_prepareItemsInSessionForDrop:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a3 items];
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

        [*(*(&v9 + 1) + 8 * v8++) _setDestinationVisualTarget:self];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_windowForSetDownOfDragItem:(id)a3
{
  v3 = [(UIDropInteraction *)self view];
  v4 = [v3 _window];

  return v4;
}

- (id)_setDownAnimation:(id)a3 updatedSetDownOfDragItem:(id)a4 preview:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(UIDropInteraction *)self delegate];
  v10 = [v9 dropInteraction:self previewForDroppingItem:v8 withDefault:v7];

  if (v10)
  {
    v11 = [v10 target];
    v12 = [v11 container];

    v13 = [v12 _window];
    if (!v13 || (v14 = v13, v15 = [v12 isHiddenOrHasHiddenAncestor], v14, v15))
    {

      v10 = 0;
    }
  }

  return v10;
}

- (id)_setDownAnimation:(id)a3 prepareForSetDownOfDragItem:(id)a4 visibleDroppedItem:(id)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v49 = [v8 containerView];
  v11 = v9;
  if (os_variant_has_internal_diagnostics())
  {
    if (!v10)
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

  else if (!v10)
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

  v12 = [(UIDropInteraction *)self delegate];
  if ((*&self->_delegateImplements & 0x80) != 0)
  {
    v47 = [v10 createSnapshotView];
    v48 = [v10 preview];
    v14 = [v48 parameters];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = objc_alloc_init(UIDragPreviewParameters);
    }

    v46 = v16;

    v17 = [(UIDropInteraction *)self view];
    v18 = [v17 window];
    if (v18 && (v19 = [v17 isHiddenOrHasHiddenAncestor], v18, !v19))
    {
      v23 = [v17 superview];
      [v10 center];
      v25 = v24;
      v27 = v26;
      v28 = [v8 containerView];
      [v23 convertPoint:v28 fromCoordinateSpace:{v25, v27}];
      v30 = v29;
      v32 = v31;

      v33 = [UIDragPreviewTarget alloc];
      v34 = [v17 superview];
      v21 = [(UIPreviewTarget *)v33 initWithContainer:v34 center:v30, v32];

      v22 = 1;
    }

    else
    {
      v20 = [UIDragPreviewTarget alloc];
      [v10 center];
      v21 = [(UIPreviewTarget *)v20 initWithContainer:v49 center:?];
      v22 = 0;
    }

    v45 = v21;
    v35 = [[UITargetedDragPreview alloc] initWithView:v47 parameters:v46 target:v21];
    [(UITargetedPreview *)v35 _setDefaultPreview:1];
    v36 = [v12 dropInteraction:self previewForDroppingItem:v11 withDefault:v35];
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
      v51 = v8;
      v52 = v11;
      [v12 _dropInteraction:self delayedPreviewProviderForDroppingItem:v52 previewProvider:v50];

      _Block_object_dispose(&buf, 8);
    }

    if (v13)
    {
      v38 = [(UITargetedPreview *)v13 target];
      v39 = [v38 container];

      v40 = [v39 _window];
      if (!v40 || (v41 = [v39 isHiddenOrHasHiddenAncestor], v40, v41))
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

- (void)_setDownAnimation:(id)a3 willAnimateSetDownOfDragItem:(id)a4 withAnimator:(id)a5 preview:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11)
  {
    v14 = [(UIDropInteraction *)self delegate];
    if ((*&self->_delegateImplements & 0x100) != 0)
    {
      v15 = [[_UIDragAnimatingWrapper alloc] initWithPropertyAnimator:v12];
      [v14 dropInteraction:self item:v11 willAnimateDropWithAnimator:v15];
    }

    else
    {
      v15 = 0;
    }

    v16 = [v13 _previewContainer];

    if (v16)
    {
      if (!v15)
      {
        v15 = [[_UIDragAnimatingWrapper alloc] initWithPropertyAnimator:v12];
      }

      v17 = [v13 _previewContainer];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __89__UIDropInteraction__setDownAnimation_willAnimateSetDownOfDragItem_withAnimator_preview___block_invoke;
      v18[3] = &unk_1E70F35B8;
      v19 = v10;
      v20 = v11;
      [v17 _animateDropAlongsideAnimator:v15 completion:v18];
    }
  }
}

- (id)_setDownAnimation:(id)a3 customSpringAnimationBehaviorForSetDownOfDragItem:(id)a4
{
  v5 = a4;
  v6 = [(UIDropInteraction *)self delegate];
  v7 = v6;
  if ((*&self->_delegateImplements & 0x800) != 0)
  {
    v8 = [v6 _dropInteraction:self customSpringAnimationBehaviorForDroppingItem:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_canHandleDragEvent:(id)a3
{
  v4 = a3;
  v5 = [(UIDropInteraction *)self delegate];
  if (*&self->_delegateImplements)
  {
    v8 = [v4 _dropSession];
    CanPasteItemProvidersForOwner = [v5 dropInteraction:self canHandleSession:v8];
  }

  else
  {
    v6 = [(UIDropInteraction *)self _pasteConfiguration];

    if (!v6)
    {
      CanPasteItemProvidersForOwner = 1;
      goto LABEL_6;
    }

    v7 = [v4 _sessionDestination];
    v8 = [v7 preDropItemProviders];

    v9 = [(UIDropInteraction *)self owner];
    CanPasteItemProvidersForOwner = _UIDragEventCanPasteItemProvidersForOwner(v8, v9);
  }

LABEL_6:
  return CanPasteItemProvidersForOwner;
}

- (unint64_t)_validateDragOperation:(unint64_t)a3 forSelector:(SEL)a4 delegate:(id)a5 dropSession:(id)a6 onSession:(id)a7 forbidden:(BOOL *)a8
{
  v35 = *MEMORY[0x1E69E9840];
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (a3)
  {
    v18 = [v16 sourceOperationMask];
    if ((a3 & ~v18) != 0)
    {
      v19 = v18;
      v20 = *(__UILogGetCategoryCachedImpl("Dragging", &_MergedGlobals_1072) + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
        v22 = NSStringFromSelector(a4);
        v29 = 138412802;
        v30 = v22;
        v31 = 2048;
        v32 = a3;
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

    if ((a3 & (a3 - 1)) != 0)
    {
      v27 = *(__UILogGetCategoryCachedImpl("Dragging", &qword_1ED49DAF0) + 8);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v21 = v27;
        v22 = NSStringFromSelector(a4);
        v29 = 138412546;
        v30 = v22;
        v31 = 2048;
        v32 = a3;
        v23 = "Selector  %@ returned a _UIDragOperation %lu that contains more than one operation. Using _UIDragOperationNone instead.";
        v24 = v21;
        v25 = 22;
        goto LABEL_11;
      }

LABEL_12:
      a3 = 0;
      goto LABEL_13;
    }

    if (_UIShouldEnforceOpenInRulesInAccountBasedApp() && (*&self->_delegateImplements & 0x200) != 0)
    {
      v26 = [v14 _dropInteraction:self dataOwnerForSession:v15];
    }

    else
    {
      v26 = 0;
    }

    a3 = [v17 actualDragOperationForProposedDragOperation:a3 destinationDataOwner:v26 forbidden:a8];
  }

LABEL_13:

  return a3;
}

- (unint64_t)_setLastDragOperation:(unint64_t)a3 forbidden:(BOOL)a4 precise:(BOOL)a5 prefersFullSizePreview:(BOOL)a6 preferredBadgeStyle:(int64_t)a7 onSession:(id)a8
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v14 = a8;
  v15 = [v14 sourceOperationMask] & a3;
  self->_potentialDragOperation = v15;
  v16 = objc_opt_new();
  [v16 setOperation:self->_potentialDragOperation];
  [v16 setForbidden:v11];
  [v16 setPrecise:v10];
  [v16 setPrefersFullSizePreview:v9];
  [v16 setPreferredBadgeStyle:a7];
  [v14 takePotentialDrop:v16];

  return v15;
}

- (void)_dropSessionEntered:(id)a3 withSessionDestination:(id)a4
{
  v10 = a3;
  v6 = a4;
  enteredDropSessionByDraggingSession = self->_enteredDropSessionByDraggingSession;
  if (!enteredDropSessionByDraggingSession)
  {
    v8 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v9 = self->_enteredDropSessionByDraggingSession;
    self->_enteredDropSessionByDraggingSession = v8;

    enteredDropSessionByDraggingSession = self->_enteredDropSessionByDraggingSession;
  }

  [(NSMapTable *)enteredDropSessionByDraggingSession setObject:v10 forKey:v6];
  [v6 enteredDestination:self];
}

- (void)_sendSessionDidEnd:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIDropInteraction *)self delegate];
  v6 = [(NSMapTable *)self->_enteredDropSessionByDraggingSession objectForKey:v4];
  [(NSMapTable *)self->_enteredDropSessionByDraggingSession removeObjectForKey:v4];
  if (os_variant_has_internal_diagnostics())
  {
    if (!v6)
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v9 = 138412546;
        v10 = self;
        v11 = 2112;
        v12 = v4;
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
      v10 = self;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "dropInteraction (%@) unable to find entered drop session for dragging session (%@)", &v9, 0x16u);
    }
  }

  if ((*&self->_delegateImplements & 0x40) != 0)
  {
    [v5 dropInteraction:self sessionDidEnd:v6];
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