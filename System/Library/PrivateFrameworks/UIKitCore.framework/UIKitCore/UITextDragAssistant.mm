@interface UITextDragAssistant
- (BOOL)_dragInteraction:(id)a3 competingGestureRecognizerShouldDelayLift:(id)a4;
- (BOOL)_dragInteraction:(id)a3 shouldDelayCompetingGestureRecognizer:(id)a4;
- (BOOL)_updateCurrentDropProposalInSession:(id)a3 usingRequest:(id)a4;
- (BOOL)_viewHasOtherDragInteraction;
- (BOOL)accessibilityCanDrag;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (UIDragInteraction)dragInteraction;
- (UIDropInteraction)dropInteraction;
- (UITextDragAssistant)initWithView:(id)a3 geometry:(id)a4;
- (UITextDragSupporting)view;
- (UITextDraggableGeometry)geometry;
- (id)_accessibilityDraggableRanges;
- (id)_closestPositionToPoint:(CGPoint)a3;
- (id)_containerViewForDropPreviews;
- (id)_containerViewForLiftPreviews;
- (id)_dropRequestWithRange:(id)a3 suggestedProposal:(id)a4 inSession:(id)a5;
- (id)_itemsForDraggedRange:(id)a3;
- (id)_positionInSession:(id)a3;
- (id)_previewForIrrelevantItemFromPreview:(id)a3;
- (id)_previewForTopmostItem:(id)a3;
- (id)_rangeInSession:(id)a3;
- (id)_shrinkingPreview:(id)a3 toPosition:(id)a4;
- (id)_suggestedProposalForRequest:(id)a3;
- (id)_textPasteSelectableRangeForResult:(id)a3 fromRange:(id)a4;
- (id)_textRangeForDraggingFromPoint:(CGPoint)a3;
- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)dragInteraction:(id)a3 sessionForAddingItems:(id)a4 withTouchAtPoint:(CGPoint)a5;
- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (int64_t)_dataOwnerForSession:(id)a3 atPoint:(CGPoint)a4;
- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4;
- (int64_t)_dropInteraction:(id)a3 dataOwnerForSession:(id)a4;
- (void)_addDraggedTextRangeForItems:(id)a3 defaultRange:(id)a4;
- (void)_applyOptionsToGeometry;
- (void)_cleanupDrop;
- (void)_clearDraggedTextRanges;
- (void)_dropInteraction:(id)a3 delayedPreviewProviderForDroppingItem:(id)a4 previewProvider:(id)a5;
- (void)_forDraggedTextRangesDo:(id)a3;
- (void)_ghostDraggedTextRanges:(BOOL)a3;
- (void)_initializeDragSession:(id)a3 withInteraction:(id)a4;
- (void)_liftOrDrag:(int64_t)a3 didEndWithOperation:(unint64_t)a4;
- (void)_performDropToRange:(id)a3 inSession:(id)a4;
- (void)_performSameViewOperation:(id)a3;
- (void)_prepareSameViewOperation:(unint64_t)a3 forItems:(id)a4 fromRanges:(id)a5 toRange:(id)a6;
- (void)_restoreResponderIfNeededForOperation:(unint64_t)a3;
- (void)_stopObservingTextStorage;
- (void)_textStorageDidProcessEditing;
- (void)_updateDropCaretToRange:(id)a3 session:(id)a4;
- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 session:(id)a4 willEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 sessionDidMove:(id)a4;
- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4;
- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5;
- (void)dropInteraction:(id)a3 concludeDrop:(id)a4;
- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4;
- (void)installDragInteractionIfNeeded;
- (void)installDropInteractionIfNeeded;
- (void)invalidateDropCaret;
- (void)textPasteSessionDidEndPasting:(id)a3;
- (void)textPasteSessionDidRevealPasteResult:(id)a3;
- (void)textPasteSessionWillBeginPasting:(id)a3;
- (void)textPasteSessionWillHidePasteResult:(id)a3;
@end

@implementation UITextDragAssistant

- (BOOL)_viewHasOtherDragInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = [WeakRetained interactions];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__UITextDragAssistant__viewHasOtherDragInteraction__block_invoke;
  v7[3] = &unk_1E7124788;
  v7[4] = self;
  v5 = [v4 indexOfObjectPassingTest:v7];

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)installDropInteractionIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_dropInteraction);
  if (!WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_view);
    v5 = [v4 conformsToProtocol:&unk_1EFE8C758];

    if (!v5)
    {
      return;
    }

    v7 = [[UIDropInteraction alloc] initWithDelegate:self];
    objc_storeWeak(&self->_dropInteraction, v7);
    v6 = objc_loadWeakRetained(&self->_view);
    [v6 addInteraction:v7];

    WeakRetained = v7;
  }
}

uint64_t __51__UITextDragAssistant__viewHasOtherDragInteraction__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 208));
  if (WeakRetained == v3)
  {
    isKindOfClass = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)_applyOptionsToGeometry
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = [WeakRetained textDragOptions];

  geometry = self->_geometry;

  [(UITextDraggableGeometry *)geometry setGeometryOptions:v4 & 1];
}

- (void)installDragInteractionIfNeeded
{
  WeakRetained = objc_loadWeakRetained(&self->_dragInteraction);
  if (!WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_view);
    v5 = [v4 conformsToProtocol:&unk_1EFE8C4F8];

    if (!v5)
    {
      return;
    }

    obj = [[UIDragInteraction alloc] initWithDelegate:self];
    [(UIDragInteraction *)obj _setAllowsPointerDragBeforeLiftDelay:0];
    objc_storeWeak(&self->_dragInteraction, obj);
    v6 = objc_loadWeakRetained(&self->_view);
    [v6 addInteraction:obj];

    [(UIDragInteraction *)obj setEnabled:[(UITextDragAssistant *)self _viewHasOtherDragInteraction]^ 1];
    WeakRetained = obj;
  }
}

- (UITextDragAssistant)initWithView:(id)a3 geometry:(id)a4
{
  v7 = a3;
  v8 = a4;
  v26.receiver = self;
  v26.super_class = UITextDragAssistant;
  v9 = [(UITextDragAssistant *)&v26 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_view, v7);
    v11 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    targetedPreviewProviders = v10->_targetedPreviewProviders;
    v10->_targetedPreviewProviders = v11;

    v13 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    previewProviders = v10->_previewProviders;
    v10->_previewProviders = v13;

    if (v8)
    {
      objc_storeStrong(&v10->_geometry, a4);
    }

    if (!v10->_geometry)
    {
      WeakRetained = objc_loadWeakRetained(&v10->_view);
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = objc_loadWeakRetained(&v10->_view);
        v18 = [v17 _textGeometry];
        geometry = v10->_geometry;
        v10->_geometry = v18;
      }

      if (!v10->_geometry)
      {
        v25 = [MEMORY[0x1E696AAA8] currentHandler];
        [v25 handleFailureInMethod:a2 object:v10 file:@"UITextDragAssistant.m" lineNumber:153 description:@"UITextDragAssistant can't be initialized without a geometry"];
      }
    }

    [(UITextDragAssistant *)v10 _applyOptionsToGeometry];
    v20 = objc_loadWeakRetained(&v10->_view);
    v10->_flags = (*&v10->_flags & 0xFFFFFFFE | [v20 conformsToProtocol:&unk_1EFE8A338]);

    v21 = objc_loadWeakRetained(&v10->_view);
    if (objc_opt_respondsToSelector())
    {
      v22 = 0x8000;
    }

    else
    {
      v22 = 0;
    }

    v10->_flags = (*&v10->_flags & 0xFFFF7FFF | v22);

    if ([(UITextDraggableGeometry *)v10->_geometry conformsToProtocol:&unk_1F00BE5E0])
    {
      v23 = 2;
    }

    else
    {
      v23 = 0;
    }

    v10->_flags = (*&v10->_flags & 0xFFFFFFFD | v23);
  }

  return v10;
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  currentDragSession = self->_currentDragSession;
  if (has_internal_diagnostics)
  {
    if (!currentDragSession)
    {
      goto LABEL_3;
    }

    v45 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
    {
      *v51 = 0;
      _os_log_fault_impl(&dword_188A29000, v45, OS_LOG_TYPE_FAULT, "text dragging doesn't support beginning a new session", v51, 2u);
    }
  }

  else
  {
    if (!currentDragSession)
    {
      goto LABEL_3;
    }

    v46 = *(__UILogGetCategoryCachedImpl("Assert", &dragInteraction_itemsForBeginningSession____s_category_0) + 8);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v46, OS_LOG_TYPE_ERROR, "text dragging doesn't support beginning a new session", buf, 2u);
    }
  }

  if (self->_currentDragSession)
  {
    goto LABEL_12;
  }

LABEL_3:
  [_UIKitDragAndDropStatistics incrementUIKitScalarValueBy:1 forKey:@"dragStartedFromTextContent"];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_view);
    v13 = [v12 isSelectable];

    if (!v13)
    {
      goto LABEL_12;
    }
  }

  v14 = objc_loadWeakRetained(&self->_view);
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = objc_loadWeakRetained(&self->_view);
    v17 = [v16 _isInteractiveTextSelectionDisabled];

    if (v17)
    {
      goto LABEL_12;
    }
  }

  v18 = objc_loadWeakRetained(&self->_view);
  if (objc_opt_respondsToSelector())
  {
    v19 = [v18 _shouldObscureInput];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {

      goto LABEL_14;
    }

    v19 = [v18 isSecureTextEntry];
  }

  v20 = v19;

  if (v20)
  {
LABEL_12:
    v21 = MEMORY[0x1E695E0F0];
    goto LABEL_28;
  }

LABEL_14:
  v22 = objc_loadWeakRetained(&self->_view);
  v23 = [v22 textDragDelegate];

  v24 = objc_loadWeakRetained(&self->_view);
  [v7 locationInView:v24];
  v25 = [(UITextDragAssistant *)self _textRangeForDraggingFromPoint:?];

  if (v23 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v26 = objc_loadWeakRetained(&self->_view);
    [v7 locationInView:v26];
    v28 = v27;
    v30 = v29;

    v31 = [(UITextDragAssistant *)self _closestPositionToPoint:v28, v30];
    v32 = objc_loadWeakRetained(&self->_view);
    v33 = [v23 textDraggableView:v32 textRangeForDragFromPosition:v31 defaultRange:v25 session:v7];

    if (v33)
    {
      v34 = objc_loadWeakRetained(&self->_view);
      v48 = objc_loadWeakRetained(&self->_view);
      v47 = [v48 beginningOfDocument];
      v49 = v31;
      v35 = objc_loadWeakRetained(&self->_view);
      v36 = [v35 endOfDocument];
      v37 = [v34 textRangeFromPosition:v47 toPosition:v36];
      v25 = [v34 _intersectionOfRange:v33 andRange:v37];

      v31 = v49;
    }

    else
    {
      v25 = 0;
    }
  }

  if (v25)
  {
    v21 = [(UITextDragAssistant *)self _itemsForDraggedRange:v25];
    if (v23 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v38 = [[UITextDragRequest alloc] initWithRange:v25 inSession:v7];
      [(UITextDragRequest *)v38 setSuggestedItems:v21];
      v39 = objc_loadWeakRetained(&self->_view);
      v40 = [v39 selectedTextRange];
      -[UITextDragRequest setSelected:](v38, "setSelected:", [v40 isEqual:v25]);

      v41 = objc_loadWeakRetained(&self->_view);
      v42 = [v23 textDraggableView:v41 itemsForDrag:v38];

      v43 = [(UITextDragRequest *)v38 suggestedItems];
      _UIDragStatisticsLogTextDelegateItems(v43, v42);

      v21 = v42;
    }

    if ([v21 count])
    {
      [(UITextDragAssistant *)self _initializeDragSession:v7 withInteraction:v6];
      [(UITextDragAssistant *)self _addDraggedTextRangeForItems:v21 defaultRange:v25];
    }
  }

  else
  {
    v21 = MEMORY[0x1E695E0F0];
  }

LABEL_28:

  return v21;
}

- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v8 = a4;
  if (self->_currentDragSession != v8)
  {
    goto LABEL_2;
  }

  v10 = objc_loadWeakRetained(&self->_view);
  if (objc_opt_respondsToSelector())
  {
    v11 = [v10 _shouldObscureInput];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {

      goto LABEL_10;
    }

    v11 = [v10 isSecureTextEntry];
  }

  v12 = v11;

  if (v12)
  {
LABEL_2:
    v9 = MEMORY[0x1E695E0F0];
    goto LABEL_20;
  }

LABEL_10:
  v13 = [(UITextDragAssistant *)self _textRangeForDraggingFromPoint:x, y];
  if (v13 && ![(UITextDragAssistant *)self _hasDraggedTextRange:v13])
  {
    v9 = [(UITextDragAssistant *)self _itemsForDraggedRange:v13];
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v15 = [WeakRetained textDragDelegate];

    if (v15 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v16 = [[UITextDragRequest alloc] initWithRange:v13 inSession:v8];
      [(UITextDragRequest *)v16 setSuggestedItems:v9];
      v17 = objc_loadWeakRetained(&self->_view);
      v18 = [v17 selectedTextRange];
      -[UITextDragRequest setSelected:](v16, "setSelected:", [v18 isEqual:v13]);

      v19 = objc_loadWeakRetained(&self->_view);
      v20 = [v15 textDraggableView:v19 itemsForDrag:v16];

      v21 = [(UITextDragRequest *)v16 suggestedItems];
      _UIDragStatisticsLogTextDelegateItems(v21, v20);

      v9 = v20;
    }

    if ([v9 count])
    {
      [(UITextDragAssistant *)self _addDraggedTextRangeForItems:v9 defaultRange:v13];
    }
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

LABEL_20:

  return v9;
}

- (id)dragInteraction:(id)a3 sessionForAddingItems:(id)a4 withTouchAtPoint:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (self->_currentDragSession && [v8 containsObject:?])
  {
    v10 = self->_currentDragSession;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(NSMapTable *)self->_targetedPreviewProviders objectForKey:v7];
  if (v9)
  {
    v10 = [(UITextDragAssistant *)self _containerViewForLiftPreviews];
    v11 = (v9)[2](v9, v10, 1);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v10 = [WeakRetained textDragDelegate];

    if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v13 = objc_loadWeakRetained(&self->_view);
      v11 = [v10 textDraggableView:v13 dragPreviewForLiftingItem:v7 session:v8];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__UITextDragAssistant_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke;
  v16[3] = &unk_1E70F3590;
  v11 = v8;
  v17 = v11;
  [UIView performWithoutAnimation:v16];
  [(UITextDragAssistant *)self _ghostDraggedTextRanges:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__UITextDragAssistant_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke_2;
  v15[3] = &unk_1E70F5DB8;
  v15[4] = self;
  [v9 addCompletion:v15];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v13 = [WeakRetained textDragDelegate];

  if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = objc_loadWeakRetained(&self->_view);
    [v13 textDraggableView:v14 willAnimateLiftWithAnimator:v9 session:v10];
  }
}

void __75__UITextDragAssistant_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v1 = [_UIEditMenuSceneComponent sceneComponentForView:v2];
  [v1 dismissCurrentMenu];
}

void __75__UITextDragAssistant_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = *(a1 + 32);

    [v3 _liftOrDrag:1 didEndWithOperation:0];
  }

  else if (!a2)
  {
    *(*(a1 + 32) + 8) |= 8u;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 200));
    [WeakRetained draggingStarted];
  }
}

- (id)dragInteraction:(id)a3 previewForCancellingItem:(id)a4 withDefault:(id)a5
{
  v6 = a4;
  if (*(&self->_flags + 2))
  {
    v11 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_view);
      v10 = [v9 willGenerateCancelPreview];
    }

    else
    {
      v10 = 0;
    }

    v12 = [(NSMapTable *)self->_targetedPreviewProviders objectForKey:v6];
    v13 = [(UITextDragAssistant *)self _containerViewForDropPreviews];
    v14 = v13;
    if (v12)
    {
      v11 = [v13 window];

      if (v11)
      {
        v11 = (v12)[2](v12, v14, 0);
      }
    }

    else
    {
      v11 = 0;
    }

    v15 = objc_loadWeakRetained(&self->_view);
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = objc_loadWeakRetained(&self->_view);
      [v17 didGenerateCancelPreview:v10];
    }

    if (v11)
    {
      v18 = [v11 target];
      v19 = [v18 container];
      [v19 bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      [v11 size];
      v29 = v28 / -3.0;
      [v11 size];
      v31 = v30 / -3.0;
      v43.origin.x = v21;
      v43.origin.y = v23;
      v43.size.width = v25;
      v43.size.height = v27;
      v44 = CGRectInset(v43, v29, v31);
      x = v44.origin.x;
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
      v36 = [v11 view];
      [v36 frame];
      v46.origin.x = v37;
      v46.origin.y = v38;
      v46.size.width = v39;
      v46.size.height = v40;
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      LOBYTE(v19) = CGRectIntersectsRect(v45, v46);

      if ((v19 & 1) == 0)
      {

        v11 = 0;
      }
    }
  }

  return v11;
}

- (void)dragInteraction:(id)a3 item:(id)a4 willAnimateCancelWithAnimator:(id)a5
{
  v6 = a5;
  flags = self->_flags;
  if ((*&flags & 0x10) == 0)
  {
    self->_flags = (*&flags | 0x10);
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __74__UITextDragAssistant_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke;
      v11[3] = &unk_1E70F3590;
      v11[4] = self;
      [v6 addAnimations:v11];
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__UITextDragAssistant_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke_2;
    v10[3] = &unk_1E70F5DB8;
    v10[4] = self;
    [v6 addCompletion:v10];
  }
}

void __74__UITextDragAssistant_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 200));
  [WeakRetained performCancelAnimations];
}

uint64_t __74__UITextDragAssistant_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _restoreResponderIfNeededForOperation:0];
  v2 = *(a1 + 32);

  return [v2 _clearDraggedTextRanges];
}

- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a4;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  currentDragSession = self->_currentDragSession;
  if (has_internal_diagnostics)
  {
    if (!currentDragSession)
    {
      v26 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v26, OS_LOG_TYPE_FAULT, "sessionWillBegin without current drag session", buf, 2u);
      }
    }
  }

  else if (!currentDragSession)
  {
    v27 = *(__UILogGetCategoryCachedImpl("Assert", &dragInteraction_sessionWillBegin____s_category) + 8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "sessionWillBegin without current drag session", buf, 2u);
    }
  }

  *&self->_flags &= ~0x10u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = [v5 items];
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [(NSMapTable *)self->_previewProviders objectForKey:v13];
        if (v14)
        {
          [v13 setPreviewProvider:v14];
          [(NSMapTable *)self->_previewProviders removeObjectForKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained resignFirstResponder];

  v16 = objc_loadWeakRetained(&self->_view);
  v17 = [v16 conformsToProtocol:&unk_1F00C2408];

  if (v17)
  {
    v18 = objc_loadWeakRetained(&self->_view);
    [v18 cancelInteractionWithLink];
  }

  v19 = objc_loadWeakRetained(&self->_view);
  v20 = [v19 textDragDelegate];

  if (v20 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v21 = objc_loadWeakRetained(&self->_view);
    [v20 textDraggableView:v21 dragSessionWillBegin:v5];
  }

  flags = self->_flags;
  self->_flags = (*&flags & 0xFFFEFFFF);
  if ((*&flags & 0x8000) != 0)
  {
    v23 = objc_loadWeakRetained(&self->_view);
    v24 = [v23 textStorage];

    if (v24)
    {
      objc_storeWeak(&self->_observingStorage, v24);
      v25 = [MEMORY[0x1E696AD88] defaultCenter];
      [v25 addObserver:self selector:sel__textStorageDidProcessEditing name:*off_1E70ECAC0 object:v24];
    }
  }

  [(UITextDragAssistant *)self _ghostDraggedTextRanges:1];
}

- (void)dragInteraction:(id)a3 sessionDidMove:(id)a4
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  currentDragSession = self->_currentDragSession;
  if (has_internal_diagnostics)
  {
    if (!currentDragSession)
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "sessionDidMove without current drag session", buf, 2u);
      }
    }
  }

  else if (!currentDragSession)
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &dragInteraction_sessionDidMove____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "sessionDidMove without current drag session", v9, 2u);
    }
  }

  *&self->_flags &= ~4u;
}

- (void)dragInteraction:(id)a3 session:(id)a4 willEndWithOperation:(unint64_t)a5
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  currentDragSession = self->_currentDragSession;
  if (has_internal_diagnostics)
  {
    if (!currentDragSession)
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "session:willEndWithOperation: without current drag session", buf, 2u);
      }
    }
  }

  else if (!currentDragSession)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &dragInteraction_session_willEndWithOperation____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "session:willEndWithOperation: without current drag session", buf, 2u);
    }
  }

  [(UITextDragAssistant *)self _stopObservingTextStorage];
  if (a5 != 3 || self->_sameViewDropOperationResult)
  {
    if (!a5)
    {
      return;
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__UITextDragAssistant_dragInteraction_session_willEndWithOperation___block_invoke;
    v11[3] = &unk_1E70F88E0;
    v11[4] = self;
    [(UITextDragAssistant *)self _forDraggedTextRangesDo:v11];
  }

  [(UITextDragAssistant *)self _restoreResponderIfNeededForOperation:a5];
}

void __68__UITextDragAssistant_dragInteraction_session_willEndWithOperation___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 200));
  [WeakRetained setSelectedTextRange:v4];

  v6 = objc_loadWeakRetained((*(a1 + 32) + 200));
  [v6 deleteBackward];
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  v7 = a4;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  currentDragSession = self->_currentDragSession;
  if (has_internal_diagnostics)
  {
    if (!currentDragSession)
    {
      v13 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "session:didEndWithOperation: without current drag session", buf, 2u);
      }
    }
  }

  else if (!currentDragSession)
  {
    v14 = *(__UILogGetCategoryCachedImpl("Assert", &dragInteraction_session_didEndWithOperation____s_category) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "session:didEndWithOperation: without current drag session", v15, 2u);
    }
  }

  [(UITextDragAssistant *)self _stopObservingTextStorage];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v11 = [WeakRetained textDragDelegate];

  if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12 = objc_loadWeakRetained(&self->_view);
    [v11 textDraggableView:v12 dragSessionDidEnd:v7 withOperation:a5];
  }

  [(UITextDragAssistant *)self _liftOrDrag:0 didEndWithOperation:a5];
}

- (void)_liftOrDrag:(int64_t)a3 didEndWithOperation:(unint64_t)a4
{
  [(UITextDragAssistant *)self _clearDraggedTextRanges];
  if (a4 >= 2 && !self->_sameViewDropOperationResult)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained setSelectedTextRange:0];
  }

  [(UITextDragAssistant *)self _restoreResponderIfNeededForOperation:a4];
  currentDragSession = self->_currentDragSession;
  self->_currentDragSession = 0;

  currentDragInteraction = self->_currentDragInteraction;
  self->_currentDragInteraction = 0;

  if ((*&self->_flags & 8) != 0)
  {
    v11 = objc_opt_new();
    [v11 setDragTearoffOccured:a3 == 0];
    if (a3 == 1)
    {
      [v11 setLocation:{self->_initialDragLocation.x, self->_initialDragLocation.y}];
    }

    v10 = objc_loadWeakRetained(&self->_view);
    [v10 draggingFinished:v11];

    *&self->_flags &= ~8u;
  }
}

- (BOOL)_dragInteraction:(id)a3 shouldDelayCompetingGestureRecognizer:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v7 = [WeakRetained textDragDelegate];

  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = objc_loadWeakRetained(&self->_view);
    LOBYTE(self) = [v7 _textDraggableView:v8 beginningDragShouldDelayCompetingGestureRecognizer:v5];
  }

  else
  {
    if (![v5 _isGestureType:6])
    {
      LOBYTE(self) = 1;
      goto LABEL_8;
    }

    v8 = objc_loadWeakRetained(&self->_view);
    LODWORD(self) = [v8 isEditing] ^ 1;
  }

LABEL_8:
  return self;
}

- (BOOL)_dragInteraction:(id)a3 competingGestureRecognizerShouldDelayLift:(id)a4
{
  v4 = a4;
  v5 = [v4 view];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [v4 view];
    v8 = [v7 gestureRecognizerShouldDelayLift:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [v5 locationInView:WeakRetained];
  v7 = [(UITextDragAssistant *)self _dataOwnerForSession:v5 atPoint:?];

  return v7;
}

- (int64_t)_dataOwnerForSession:(id)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v9 = [WeakRetained textDragDelegate];

  if (objc_opt_respondsToSelector())
  {
    v10 = [(UITextDragAssistant *)self _textRangeForDraggingFromPoint:x, y];
    if (v10)
    {
      v11 = [[UITextDragRequest alloc] initWithRange:v10 inSession:v7];
      v12 = objc_loadWeakRetained(&self->_view);
      v13 = [v9 _textDraggableView:v12 dataOwnerForDrag:v11];
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_7;
  }

  v14 = objc_loadWeakRetained(&self->_view);
  v13 = [v14 _dragDataOwner];

  if (!v13)
  {
    v10 = objc_loadWeakRetained(&self->_view);
    v13 = [v10 _dataOwnerForCopy];
LABEL_7:
  }

  return v13;
}

- (BOOL)accessibilityCanDrag
{
  v2 = [(UITextDragAssistant *)self _accessibilityDraggableRanges];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)_accessibilityDraggableRanges
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = objc_opt_respondsToSelector();

  v5 = objc_loadWeakRetained(&self->_view);
  v6 = v5;
  if (v4)
  {
    [v5 _accessibilityVisibleTextRangeForDrag];
  }

  else
  {
    [v5 _fullRange];
  }
  v7 = ;

  v8 = objc_opt_new();
  v9 = objc_loadWeakRetained(&self->_view);
  v10 = [v9 isFirstResponder];

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_view);
    v12 = [v11 selectedTextRange];

    if (v12)
    {
      if (([v12 isEmpty] & 1) == 0)
      {
        v13 = objc_loadWeakRetained(&self->_view);
        v14 = [v13 _range:v7 containsRange:v12];

        if (v14)
        {
          [v8 addObject:v12];
        }
      }
    }
  }

  v15 = [(UITextDragAssistant *)self geometry];
  v16 = [v15 textRangesForAttachmentsInTextRange:v7];
  [v8 addObjectsFromArray:v16];

  v17 = [v8 copy];

  return v17;
}

- (void)_textStorageDidProcessEditing
{
  [(UITextDragAssistant *)self _clearDraggedTextRanges];
  [(UITextDragAssistant *)self _stopObservingTextStorage];
  *&self->_flags |= 0x10000u;
}

- (void)_stopObservingTextStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_observingStorage);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self name:*off_1E70ECAC0 object:v5];

    objc_storeWeak(&self->_observingStorage, 0);
    WeakRetained = v5;
  }
}

- (id)_textRangeForDraggingFromPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v7 = [WeakRetained isFirstResponder];

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_view);
    v9 = [v8 selectedTextRange];

    if (v9)
    {
      if (([v9 isEmpty] & 1) == 0)
      {
        v10 = objc_loadWeakRetained(&self->_view);
        v11 = UITextRangeContainsPointInViewWithSlop(v10, v9, x, y, 4.0);

        if (v11)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v12 = [(UITextDragAssistant *)self _closestPositionToPoint:x, y];
  v13 = objc_loadWeakRetained(&self->_view);
  v14 = [v13 _rangeOfLineEnclosingPosition:v12];

  if (v14 && ([v14 isEmpty] & 1) == 0)
  {
    v15 = [(UITextDragAssistant *)self geometry];
    v9 = [v15 textRangeForAttachmentInTextRange:v14 atPoint:{x, y}];
  }

  else
  {
    v9 = 0;
  }

LABEL_11:

  return v9;
}

- (void)_initializeDragSession:(id)a3 withInteraction:(id)a4
{
  v5 = a3;
  v18 = a3;
  v7 = a4;
  objc_storeStrong(&self->_currentDragSession, v5);
  objc_storeStrong(&self->_currentDragInteraction, a4);
  WeakRetained = objc_loadWeakRetained(&self->_view);
  LODWORD(v5) = [WeakRetained isFirstResponder];

  if (v5)
  {
    v9 = objc_loadWeakRetained(&self->_view);
    v10 = [v9 selectedTextRange];
    initialDragSelectedRange = self->_initialDragSelectedRange;
    self->_initialDragSelectedRange = v10;
  }

  else
  {
    v9 = self->_initialDragSelectedRange;
    self->_initialDragSelectedRange = 0;
  }

  v12 = objc_loadWeakRetained(&self->_view);
  [v18 locationInView:v12];
  self->_initialDragLocation.x = v13;
  self->_initialDragLocation.y = v14;

  [(UITextDragAssistant *)self _clearDraggedTextRanges];
  v15 = objc_loadWeakRetained(&self->_view);
  if ([v15 isFirstResponder])
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFB | v16);

  sameViewDropOperationResult = self->_sameViewDropOperationResult;
  self->_sameViewDropOperationResult = 0;
}

- (void)_restoreResponderIfNeededForOperation:(unint64_t)a3
{
  if (a3 <= 1 && (v4 = self->_initialDragSelectedRange) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained setSelectedTextRange:v4];

    initialDragSelectedRange = self->_initialDragSelectedRange;
    self->_initialDragSelectedRange = 0;
  }

  else if ((*&self->_flags & 4) == 0)
  {
    return;
  }

  v7 = objc_loadWeakRetained(&self->_view);
  v8 = [v7 window];
  v9 = [v8 _firstResponder];

  if (!v9)
  {
    v10 = objc_loadWeakRetained(&self->_view);
    [v10 becomeFirstResponder];
  }
}

- (id)_itemsForDraggedRange:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UITextDragAssistant *)self geometry];
  v6 = [v5 draggableObjectsForTextRange:v4];

  if ([v6 count])
  {
    v26 = v4;
    v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v25 = v6;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          v12 = [v11 itemProvider];
          v13 = [[UIDragItem alloc] initWithItemProvider:v12];
          v14 = [v11 range];
          [(UIDragItem *)v13 _setDraggedTextRange:v14];

          v15 = [v11 targetedPreviewProvider];

          if (v15)
          {
            targetedPreviewProviders = self->_targetedPreviewProviders;
            v17 = [v11 targetedPreviewProvider];
            v18 = _Block_copy(v17);
            [(NSMapTable *)targetedPreviewProviders setObject:v18 forKey:v13];
          }

          v19 = [v11 previewProvider];

          if (v19)
          {
            previewProviders = self->_previewProviders;
            v21 = [v11 previewProvider];
            v22 = _Block_copy(v21);
            [(NSMapTable *)previewProviders setObject:v22 forKey:v13];
          }

          [v28 addObject:v13];
        }

        v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v8);
    }

    v23 = [v28 copy];
    v6 = v25;
    v4 = v26;
  }

  else
  {
    v23 = MEMORY[0x1E695E0F0];
  }

  return v23;
}

- (id)_containerViewForLiftPreviews
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = [WeakRetained _window];
  v5 = [v4 windowScene];
  v6 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_loadWeakRetained(&self->_view);
  }

  v9 = v8;

  return v9;
}

- (id)_containerViewForDropPreviews
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)_addDraggedTextRangeForItems:(id)a3 defaultRange:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v14 _draggedTextRange];

        if (!v15)
        {
          [v14 _setDraggedTextRange:v7];
        }

        v16 = [v14 _draggedTextRange];

        if (v16)
        {
          v17 = [v14 _draggedTextRange];
          [v8 addObject:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  draggedTextRanges = self->_draggedTextRanges;
  if (draggedTextRanges)
  {
    v19 = [(NSArray *)draggedTextRanges arrayByAddingObjectsFromArray:v8];
  }

  else
  {
    v19 = [v8 copy];
  }

  v20 = self->_draggedTextRanges;
  self->_draggedTextRanges = v19;
}

- (void)_forDraggedTextRangesDo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_draggedTextRanges;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_clearDraggedTextRanges
{
  [(UITextDragAssistant *)self _ghostDraggedTextRanges:0];
  draggedTextRanges = self->_draggedTextRanges;
  self->_draggedTextRanges = 0;
}

- (void)_ghostDraggedTextRanges:(BOOL)a3
{
  if (*&self->_flags)
  {
    v3 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained removeAllGhostedRanges];
    if (v3)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __47__UITextDragAssistant__ghostDraggedTextRanges___block_invoke;
      v6[3] = &unk_1E70F88E0;
      v7 = WeakRetained;
      [(UITextDragAssistant *)self _forDraggedTextRangesDo:v6];
    }
  }
}

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  currentDropSession = self->_currentDropSession;
  if (!currentDropSession)
  {
    v11 = [(UIDropSession *)v7 items];
    v12 = [v11 valueForKeyPath:@"itemProvider"];

    WeakRetained = objc_loadWeakRetained(&self->_view);
    v14 = [WeakRetained canPasteItemProviders:v12];

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_view);
      v16 = [v15 canBecomeDropResponder];

      if (v16)
      {
        *&self->_flags &= ~0x100u;
        v17 = objc_loadWeakRetained(&self->_view);
        v18 = [v17 isEditable];

        if (v18)
        {
          goto LABEL_7;
        }

        v29 = objc_loadWeakRetained(&self->_view);
        v30 = objc_opt_respondsToSelector();

        if (v30)
        {
          v31 = objc_loadWeakRetained(&self->_view);
          v32 = [v31 textDropDelegate];

          if (v32 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            v20 = [(UITextDragAssistant *)self _dropRequestWithRange:0 inSession:v8];
            v33 = objc_loadWeakRetained(&self->_view);
            v34 = [v32 textDroppableView:v33 willBecomeEditableForDrop:v20];

            if (v34)
            {
              if (v34 == 1)
              {
                v35 = 288;
              }

              else
              {
                v35 = 256;
              }

              self->_flags = (*&self->_flags & 0xFFFFFFDF | v35);
              v36 = objc_loadWeakRetained(&self->_view);
              v37 = objc_opt_respondsToSelector();

              v38 = objc_loadWeakRetained(&self->_view);
              v39 = objc_opt_respondsToSelector();

              if (v39 & v37)
              {
                v40 = 64;
              }

              else
              {
                v40 = 0;
              }

              self->_flags = (*&self->_flags & 0xFFFFFFBF | v40);
              if (v39 & v37)
              {
                v41 = objc_loadWeakRetained(&self->_view);
                if ([v41 isSelectable])
                {
                  v42 = 128;
                }

                else
                {
                  v42 = 0;
                }

                self->_flags = (*&self->_flags & 0xFFFFFF7F | v42);
              }

LABEL_7:
              v19 = objc_loadWeakRetained(&self->_view);
              v20 = [v19 textDropDelegate];

              if (v20)
              {
                if (objc_opt_respondsToSelector())
                {
                  v21 = 512;
                }

                else
                {
                  v21 = 0;
                }

                self->_flags = (*&self->_flags & 0xFFFFFDFF | v21);
                if (objc_opt_respondsToSelector())
                {
                  v22 = 1024;
                }

                else
                {
                  v22 = 0;
                }

                self->_flags = (*&self->_flags & 0xFFFFFBFF | v22);
                if (objc_opt_respondsToSelector())
                {
                  v23 = 2048;
                }

                else
                {
                  v23 = 0;
                }

                self->_flags = (*&self->_flags & 0xFFFFF7FF | v23);
                if (objc_opt_respondsToSelector())
                {
                  v24 = 4096;
                }

                else
                {
                  v24 = 0;
                }

                self->_flags = (*&self->_flags & 0xFFFFEFFF | v24);
                if (objc_opt_respondsToSelector())
                {
                  v25 = 0x2000;
                }

                else
                {
                  v25 = 0;
                }

                self->_flags = (*&self->_flags & 0xFFFFDFFF | v25);
                if (objc_opt_respondsToSelector())
                {
                  v26 = 0x4000;
                }

                else
                {
                  v26 = 0;
                }

                flags = self->_flags;
              }

              else
              {
                v26 = 0;
                flags = *&self->_flags & 0xFFFFC1FF;
              }

              self->_flags = (flags & 0xFFFFBFFF | v26);
              [(UITextDragAssistant *)self _updateCurrentDropProposalInSession:v8 usingRequest:0];
              if ([(UIDropProposal *)self->_currentDropProposal operation]== UIDropOperationMove || [(UIDropProposal *)self->_currentDropProposal operation]== UIDropOperationCopy)
              {
                v10 = 1;
LABEL_57:

                goto LABEL_48;
              }

LABEL_56:
              v10 = 0;
              goto LABEL_57;
            }
          }

          else
          {
            v20 = 0;
          }

          goto LABEL_56;
        }
      }
    }

    v10 = 0;
LABEL_48:

    goto LABEL_49;
  }

  if (currentDropSession == v7)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v44 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v44, OS_LOG_TYPE_FAULT, "canHandleSession with the current session!", buf, 2u);
      }
    }

    else
    {
      v28 = *(__UILogGetCategoryCachedImpl("Assert", &dropInteraction_canHandleSession____s_category) + 8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v45[0] = 0;
        _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_ERROR, "canHandleSession with the current session!", v45, 2u);
      }
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

LABEL_49:

  return v10;
}

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  v6 = a4;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  currentDropSession = self->_currentDropSession;
  if (has_internal_diagnostics)
  {
    if (currentDropSession)
    {
      v16 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "sessionDidEnter with a current drop session", buf, 2u);
      }
    }
  }

  else if (currentDropSession)
  {
    v17 = *(__UILogGetCategoryCachedImpl("Assert", &dropInteraction_sessionDidEnter____s_category) + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "sessionDidEnter with a current drop session", v18, 2u);
    }
  }

  *&self->_flags &= ~0x20000u;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v10 = [WeakRetained selectedTextRange];
  preDropSelectionRange = self->_preDropSelectionRange;
  self->_preDropSelectionRange = v10;

  objc_storeStrong(&self->_currentDropSession, a4);
  v12 = objc_loadWeakRetained(&self->_view);
  [v12 becomeDropResponder];

  v13 = objc_loadWeakRetained(&self->_view);
  v14 = [v13 textDropDelegate];

  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v15 = objc_loadWeakRetained(&self->_view);
    [v14 textDroppableView:v15 dropSessionDidEnter:v6];
  }
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v5 = a4;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  currentDropSession = self->_currentDropSession;
  if (has_internal_diagnostics)
  {
    if (!currentDropSession)
    {
      v38 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v38, OS_LOG_TYPE_FAULT, "sessionDidUpdate without current drop session", buf, 2u);
      }
    }
  }

  else if (!currentDropSession)
  {
    v39 = *(__UILogGetCategoryCachedImpl("Assert", &dropInteraction_sessionDidUpdate____s_category) + 8);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *v40 = 0;
      _os_log_impl(&dword_188A29000, v39, OS_LOG_TYPE_ERROR, "sessionDidUpdate without current drop session", v40, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);
  v9 = [WeakRetained textDropDelegate];

  flags = self->_flags;
  if ((*&flags & 0x800) != 0)
  {
    v11 = [(UITextDragAssistant *)self _dropRequestWithRange:0 inSession:v5];
    v12 = objc_loadWeakRetained(&self->_view);
    v13 = [v9 textDroppableView:v12 rangeForDrop:v11];

    if (v13)
    {
      v14 = [v11 dropRange];
      v15 = v14;
      if (v13 == v14)
      {
        v20 = [v11 dropRange];
        v21 = [v13 isEqual:v20];

        if (v21)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      v22 = objc_loadWeakRetained(&self->_view);
      v23 = [v22 _fullRange];
      v24 = [v22 _intersectionOfRange:v13 andRange:v23];

      v25 = [(UITextDragAssistant *)self _dropRequestWithRange:v24 inSession:v5];
      v13 = v24;
LABEL_14:

      v11 = v25;
    }
  }

  else
  {
    if ((*&flags & 0x1000) == 0)
    {
      v11 = 0;
      goto LABEL_16;
    }

    v11 = [(UITextDragAssistant *)self _dropRequestWithRange:0 inSession:v5];
    v16 = objc_loadWeakRetained(&self->_view);
    v13 = [v9 textDroppableView:v16 positionForDrop:v11];

    if (v13)
    {
      v17 = [v11 dropRange];
      v18 = [v17 start];
      v19 = v18;
      if (v13 == v18)
      {
        v30 = [v11 dropRange];
        v31 = [v30 start];
        v32 = [v13 isEqual:v31];

        if (v32)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      v33 = objc_loadWeakRetained(&self->_view);
      v34 = [v33 textRangeFromPosition:v13 toPosition:v13];

      if (!v34)
      {
        goto LABEL_15;
      }

      v35 = objc_loadWeakRetained(&self->_view);
      v36 = [v35 _fullRange];
      v37 = [v35 _intersectionOfRange:v34 andRange:v36];

      if (!v37)
      {
        goto LABEL_15;
      }

      v25 = [(UITextDragAssistant *)self _dropRequestWithRange:v37 inSession:v5];

      v11 = v37;
      goto LABEL_14;
    }
  }

LABEL_15:

LABEL_16:
  if ([(UITextDragAssistant *)self _updateCurrentDropProposalInSession:v5 usingRequest:v11])
  {
    [(UITextDragAssistant *)self _updateDropCaretToRange:self->_currentDropRange session:v5];
  }

  if ((*(&self->_flags + 1) & 4) != 0)
  {
    v26 = objc_loadWeakRetained(&self->_view);
    [v9 textDroppableView:v26 dropSessionDidUpdate:v5];
  }

  currentDropProposal = self->_currentDropProposal;
  v28 = currentDropProposal;

  return currentDropProposal;
}

- (id)_positionInSession:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [v4 locationInView:WeakRetained];
  v7 = v6;
  v9 = v8;

  return [(UITextDragAssistant *)self _closestPositionToPoint:v7, v9];
}

- (id)_rangeInSession:(id)a3
{
  v4 = [(UITextDragAssistant *)self _positionInSession:a3];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v6 = [WeakRetained textRangeFromPosition:v4 toPosition:v4];

  return v6;
}

- (BOOL)_updateCurrentDropProposalInSession:(id)a3 usingRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 dropRange];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(UITextDragAssistant *)self _rangeInSession:v6];
  }

  v11 = v10;

  p_currentDropRange = &self->_currentDropRange;
  if (self->_currentDropRange)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v14 = [(UITextRange *)self->_currentDropRange start];
    v15 = [(UITextRange *)v11 start];
    if ([WeakRetained comparePosition:v14 toPosition:v15])
    {
    }

    else
    {
      v39 = v6;
      v16 = objc_loadWeakRetained(&self->_view);
      v17 = [(UITextRange *)*p_currentDropRange end];
      v18 = [(UITextRange *)v11 end];
      v38 = [v16 comparePosition:v17 toPosition:v18];

      v6 = v39;
      if (!v38)
      {
        v36 = 0;
        goto LABEL_29;
      }
    }
  }

  if (!v7)
  {
    v7 = [(UITextDragAssistant *)self _dropRequestWithRange:v11 inSession:v6];
  }

  if ((*(&self->_flags + 1) & 2) != 0)
  {
    v21 = objc_loadWeakRetained(&self->_view);
    v20 = [v21 textDropDelegate];

    v22 = objc_loadWeakRetained(&self->_view);
    v23 = [v20 textDroppableView:v22 proposalForDrop:v7];

    if (v23)
    {
      v24 = [v23 copy];

      v25 = self->_currentDragSession;
      v40 = v6;
      v26 = v6;
      v27 = [v26 localDragSession];
      if (v27)
      {
        v28 = v27;
        v29 = [v26 localDragSession];

        if (v29 == v25 && (*(&self->_flags + 2) & 1) != 0)
        {
          [(UIDropProposal *)v24 setOperation:2];
          [(UITextDropProposal *)v24 setUseFastSameViewOperations:0];
        }
      }

      else
      {
      }

      currentDropProposal = self->_currentDropProposal;
      self->_currentDropProposal = v24;
      v31 = v24;

      v6 = v40;
    }

    else
    {
      v30 = [v7 suggestedProposal];
      v31 = self->_currentDropProposal;
      self->_currentDropProposal = v30;
    }
  }

  else
  {
    v19 = [v7 suggestedProposal];
    v20 = self->_currentDropProposal;
    self->_currentDropProposal = v19;
  }

  if ([(UITextDropProposal *)self->_currentDropProposal dropAction]== UITextDropActionReplaceSelection)
  {
    preDropSelectionRange = self->_preDropSelectionRange;
    if (preDropSelectionRange)
    {
      if (![(UITextRange *)preDropSelectionRange isEmpty])
      {
        v35 = self->_preDropSelectionRange;
        goto LABEL_27;
      }
    }
  }

  if ([(UITextDropProposal *)self->_currentDropProposal dropAction]== UITextDropActionReplaceAll)
  {
    v34 = objc_loadWeakRetained(&self->_view);
    v35 = [(UITextRange *)v34 _fullRange];

    v11 = v34;
LABEL_27:

    v11 = v35;
  }

  objc_storeStrong(p_currentDropRange, v11);
  v36 = 1;
LABEL_29:

  return v36;
}

- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4
{
  v5 = a4;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  currentDropSession = self->_currentDropSession;
  if (has_internal_diagnostics)
  {
    if (!currentDropSession)
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "sessionDidExit without current drop session", buf, 2u);
      }
    }
  }

  else if (!currentDropSession)
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &dropInteraction_sessionDidExit____s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "sessionDidExit without current drop session", v13, 2u);
    }
  }

  [(UITextDragAssistant *)self _cleanupDrop];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v9 = [WeakRetained textDropDelegate];

  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = objc_loadWeakRetained(&self->_view);
    [v9 textDroppableView:v10 dropSessionDidExit:v5];
  }
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v5 = a4;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  currentDropSession = self->_currentDropSession;
  if (has_internal_diagnostics)
  {
    if (!currentDropSession)
    {
      v29 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v29, OS_LOG_TYPE_FAULT, "performDrop without current drop session", buf, 2u);
      }
    }
  }

  else if (!currentDropSession)
  {
    v30 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1320) + 8);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_ERROR, "performDrop without current drop session", buf, 2u);
    }
  }

  v8 = [(NSArray *)self->_draggedTextRanges copy];
  [(UITextDragAssistant *)self _updateDropCaretToRange:0 session:v5];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v10 = [WeakRetained isEditable];

  if ((v10 & 1) == 0)
  {
    if (*(&self->_flags + 1))
    {
      v11 = objc_loadWeakRetained(&self->_view);
      [v11 setEditable:1];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__UITextDragAssistant_dropInteraction_performDrop___block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      if (qword_1ED4A2178 != -1)
      {
        dispatch_once(&qword_1ED4A2178, block);
      }
    }
  }

  *&self->_flags |= 0x20000u;
  [_UIKitDragAndDropStatistics incrementUIKitScalarValueBy:1 forKey:@"dropOnTextContent"];
  v12 = objc_loadWeakRetained(&self->_view);
  v13 = [v12 textDropDelegate];

  if (v13)
  {
    v14 = objc_opt_respondsToSelector();
  }

  else
  {
    v14 = 0;
  }

  if ((v14 & 1 & ([(UITextDropProposal *)self->_currentDropProposal dropPerformer]!= UITextDropPerformerView)) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0x40000;
  }

  self->_flags = (v15 | *&self->_flags & 0xFFFBFFFF);
  if ((v14 & 1) == 0 || (-[UITextDragAssistant _dropRequestWithRange:suggestedProposal:inSession:](self, "_dropRequestWithRange:suggestedProposal:inSession:", self->_currentDropRange, self->_currentDropProposal, v5), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_loadWeakRetained(&self->_view), [v13 textDroppableView:v17 willPerformDrop:v16], v17, v16, (*(&self->_flags + 2) & 4) != 0))
  {
    sameViewDropOperation = self->_sameViewDropOperation;
    self->_sameViewDropOperation = 0;

    topmostDropItem = self->_topmostDropItem;
    self->_topmostDropItem = 0;

    topmostDropPreview = self->_topmostDropPreview;
    self->_topmostDropPreview = 0;

    delayedPreviewProvider = self->_delayedPreviewProvider;
    self->_delayedPreviewProvider = 0;

    if ([(UITextDropProposal *)self->_currentDropProposal useFastSameViewOperations]&& (*&self->_flags & 2) != 0)
    {
      v22 = self->_currentDragSession;
      v23 = v5;
      v24 = [v23 localDragSession];
      if (v24)
      {
        v25 = v24;
        v26 = [v23 localDragSession];

        if (v26 == v22)
        {
          v27 = [(UIDropProposal *)self->_currentDropProposal operation];
          v28 = [v23 items];
          [(UITextDragAssistant *)self _prepareSameViewOperation:v27 forItems:v28 fromRanges:v8 toRange:self->_currentDropRange];

          goto LABEL_25;
        }
      }

      else
      {
      }
    }

    if ([(UITextDropProposal *)self->_currentDropProposal dropProgressMode])
    {
      [v5 setProgressIndicatorStyle:0];
    }

    [(UITextDragAssistant *)self _performDropToRange:self->_currentDropRange inSession:v5];
  }

LABEL_25:
}

void __51__UITextDragAssistant_dropInteraction_performDrop___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_18) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    WeakRetained = objc_loadWeakRetained((v3 + 200));
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "wanting to performDrop on %@, but view is not editable", &v6, 0xCu);
  }
}

- (void)dropInteraction:(id)a3 concludeDrop:(id)a4
{
  topmostDropItem = self->_topmostDropItem;
  self->_topmostDropItem = 0;

  topmostDropPreview = self->_topmostDropPreview;
  self->_topmostDropPreview = 0;

  sameViewDropOperation = self->_sameViewDropOperation;
  self->_sameViewDropOperation = 0;

  delayedPreviewProvider = self->_delayedPreviewProvider;
  self->_delayedPreviewProvider = 0;

  *&self->_flags &= ~0x80000u;
  WeakRetained = objc_loadWeakRetained(&self->_dropPasteSession);
  [WeakRetained animationCompleted];

  if ((*&self->_flags & 0x20) != 0)
  {
    v10 = objc_loadWeakRetained(&self->_view);
    [v10 setEditable:0];

    if ((*&self->_flags & 0x40) != 0)
    {
      v11 = objc_loadWeakRetained(&self->_view);
      [v11 setSelectable:(*&self->_flags >> 7) & 1];
    }
  }
}

- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4
{
  v9 = a4;
  [(UITextDragAssistant *)self _cleanupDrop];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained resignDropResponderWithDropPerformed:(*&self->_flags >> 17) & 1];

  v6 = objc_loadWeakRetained(&self->_view);
  v7 = [v6 textDropDelegate];

  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = objc_loadWeakRetained(&self->_view);
    [v7 textDroppableView:v8 dropSessionDidEnd:v9];
  }
}

- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_topmostDropPreview)
  {
    v11 = [(UITextDragAssistant *)self _previewForIrrelevantItemFromPreview:?];
    goto LABEL_15;
  }

  if ((*(&self->_flags + 2) & 4) != 0)
  {
    if (self->_sameViewDropOperation)
    {
      [(UITextDragAssistant *)self _performSameViewOperation:?];
      sameViewDropOperation = self->_sameViewDropOperation;
      self->_sameViewDropOperation = 0;

      sameViewDropOperationResult = self->_sameViewDropOperationResult;
      if (sameViewDropOperationResult)
      {
        v14 = [(UITextDraggableGeometrySameViewDropOperationResult *)sameViewDropOperationResult targetedPreviewProvider];
        v15 = [(UITextDragAssistant *)self _containerViewForDropPreviews];
        v11 = (v14)[2](v14, v15, 0);

        if (v11)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      v11 = [(UITextDragAssistant *)self _previewForTopmostItem:v9];
      if (v11)
      {
        goto LABEL_9;
      }
    }

    v16 = [(UITextRange *)self->_currentDropRange start];
    v11 = [(UITextDragAssistant *)self _shrinkingPreview:v10 toPosition:v16];
  }

  else
  {
    v11 = 0;
  }

LABEL_9:
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v18 = [WeakRetained textDropDelegate];

  if (objc_opt_respondsToSelector())
  {
    v19 = objc_loadWeakRetained(&self->_view);
    v20 = [v18 textDroppableView:v19 previewForDroppingAllItemsWithDefault:v11];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v11;
    }

    v26 = v9;
    v23 = v8;
    v24 = v22;

    v11 = v24;
    v8 = v23;
    v9 = v26;
  }

  objc_storeStrong(&self->_topmostDropPreview, v11);
  objc_storeStrong(&self->_topmostDropItem, a4);

LABEL_15:

  return v11;
}

- (void)_dropInteraction:(id)a3 delayedPreviewProviderForDroppingItem:(id)a4 previewProvider:(id)a5
{
  if (self->_topmostDropItem == a4)
  {
    v7 = _Block_copy(a5);
    delayedPreviewProvider = self->_delayedPreviewProvider;
    self->_delayedPreviewProvider = v7;
  }
}

- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  topmostDropItem = self->_topmostDropItem;
  if (topmostDropItem)
  {
    v12 = topmostDropItem == v9;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if ((*&self->_flags & 0xC0000) == 0x40000 && self->_sameViewDropOperation)
    {
      [(UITextDragAssistant *)self _performSameViewOperation:?];
      sameViewDropOperation = self->_sameViewDropOperation;
      self->_sameViewDropOperation = 0;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __72__UITextDragAssistant_dropInteraction_item_willAnimateDropWithAnimator___block_invoke;
    v14[3] = &unk_1E70F5DB8;
    v14[4] = self;
    [v10 addCompletion:v14];
  }
}

void __72__UITextDragAssistant_dropInteraction_item_willAnimateDropWithAnimator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 184));
  [WeakRetained animationCompleted];

  v3 = *(*(a1 + 32) + 168);
  if (v3)
  {
    v4 = [v3 resultRange];
    v8 = [v4 end];

    if (v8)
    {
      v5 = objc_loadWeakRetained((*(a1 + 32) + 200));
      v6 = [v5 textRangeFromPosition:v8 toPosition:v8];
      v7 = objc_loadWeakRetained((*(a1 + 32) + 200));
      [v7 setSelectedTextRange:v6];
    }
  }
}

- (int64_t)_dropInteraction:(id)a3 dataOwnerForSession:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v7 = [WeakRetained textDropDelegate];

  if (v7)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v10 = 0;
      goto LABEL_8;
    }

    v8 = [(UITextDragAssistant *)self _dropRequestWithRange:0 inSession:v5];
    v9 = objc_loadWeakRetained(&self->_view);
    v10 = [v7 _textDroppableView:v9 dataOwnerForDrop:v8];

    goto LABEL_6;
  }

  v11 = objc_loadWeakRetained(&self->_view);
  v10 = [v11 _dropDataOwner];

  if (!v10)
  {
    v8 = objc_loadWeakRetained(&self->_view);
    v10 = [v8 _dataOwnerForPaste];
LABEL_6:
  }

LABEL_8:

  return v10;
}

- (id)_dropRequestWithRange:(id)a3 suggestedProposal:(id)a4 inSession:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UITextDragAssistant *)self _positionInSession:v10];
  if (!v8)
  {
    v8 = [(UITextDragAssistant *)self _rangeInSession:v10];
  }

  v12 = [[UITextDropRequest alloc] initWithPosition:v11 range:v8 inSession:v10];
  v13 = self->_currentDragSession;
  v14 = v10;
  v15 = [v14 localDragSession];
  if (v15)
  {
    v16 = [v14 localDragSession];
    v17 = v16 == v13;
  }

  else
  {
    v17 = 0;
  }

  [(UITextDropRequest *)v12 setSameView:v17];
  if (v9)
  {
    [(UITextDropRequest *)v12 setSuggestedProposal:v9];
  }

  else
  {
    v18 = [(UITextDragAssistant *)self _suggestedProposalForRequest:v12];
    [(UITextDropRequest *)v12 setSuggestedProposal:v18];
  }

  return v12;
}

- (void)invalidateDropCaret
{
  if (self->_currentDropSession)
  {
    [(UITextDragAssistant *)self _updateDropCaretToRange:self->_currentDropRange session:?];
  }
}

- (void)_updateDropCaretToRange:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v9 = [WeakRetained interactionAssistant];
  [v9 setSelectionDisplayVisible:0];

  v10 = objc_loadWeakRetained(&self->_view);
  v11 = [v10 interactionAssistant];
  [v11 deactivateSelection];

  flags = self->_flags;
  if ((*&flags & 0x2000) != 0)
  {
    v18 = objc_loadWeakRetained(&self->_view);
    v19 = [v18 textDropDelegate];

    v20 = objc_loadWeakRetained(&self->_view);
    v13 = [v19 textDroppableView:v20 dropSession:v7 willMoveCaretToRange:v6];

    if ((*&self->_flags & 0x4000) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = 1;
    if ((*&flags & 0x4000) != 0)
    {
LABEL_3:
      v14 = objc_loadWeakRetained(&self->_view);
      v15 = [v14 textDropDelegate];

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __55__UITextDragAssistant__updateDropCaretToRange_session___block_invoke;
      v27[3] = &unk_1E70F6B40;
      v28 = v15;
      v29 = self;
      v30 = v7;
      v31 = v6;
      v16 = v15;
      v17 = _Block_copy(v27);

      goto LABEL_6;
    }
  }

  v17 = 0;
LABEL_6:
  dropCaret = self->_dropCaret;
  if (v6)
  {
    if (dropCaret)
    {
      [(_UITextDragCaretView *)dropCaret updateToRange:v6 animations:0 completion:v17 animated:v13];
    }

    else
    {
      v23 = [_UITextDragCaretView alloc];
      v24 = objc_loadWeakRetained(&self->_view);
      v25 = [(_UITextDragCaretView *)v23 initWithTextInputView:v24];
      v26 = self->_dropCaret;
      self->_dropCaret = v25;

      [(_UITextDragCaretView *)self->_dropCaret setRangesExcludeSelection:0];
      [(_UITextDragCaretView *)self->_dropCaret insertAtRange:v6 animations:0 completion:v17 animated:v13];
    }
  }

  else
  {
    [(_UITextDragCaretView *)dropCaret removeWithAnimations:0 completion:v17 animated:v13];
    v22 = self->_dropCaret;
    self->_dropCaret = 0;
  }
}

void __55__UITextDragAssistant__updateDropCaretToRange_session___block_invoke(void *a1)
{
  v2 = a1[4];
  WeakRetained = objc_loadWeakRetained((a1[5] + 200));
  [v2 textDroppableView:WeakRetained dropSession:a1[6] didMoveCaretToRange:a1[7]];
}

- (id)_suggestedProposalForRequest:(id)a3
{
  v4 = a3;
  flags = self->_flags;
  currentDropRange = self->_currentDropRange;
  currentDragSession = self->_currentDragSession;
  v8 = [v4 dropSession];
  v9 = currentDragSession;
  v10 = [v8 localDragSession];
  if (v10)
  {
    v11 = v10;
    v12 = [v8 localDragSession];

    v13 = 2;
    if (v12 == v9 && (*&flags & 0x10000) == 0)
    {
      if (currentDropRange)
      {
        v24 = 0;
        v25 = &v24;
        v26 = 0x2020000000;
        v27 = 0;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __52__UITextDragAssistant__suggestedProposalForRequest___block_invoke;
        v21[3] = &unk_1E71247B0;
        v23 = &v24;
        v21[4] = self;
        v22 = v4;
        [(UITextDragAssistant *)self _forDraggedTextRangesDo:v21];
        if (*(v25 + 24))
        {
          v13 = 0;
        }

        else
        {
          v13 = 3;
        }

        _Block_object_dispose(&v24, 8);
      }

      else
      {
        v13 = 3;
      }
    }
  }

  else
  {

    v13 = 2;
  }

  v14 = [[UITextDropProposal alloc] initWithDropOperation:v13];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v16 = [WeakRetained _fontForCaretSelection];
  [v16 lineHeight];
  v18 = v17 + v17;
  v19 = objc_loadWeakRetained(&self->_view);
  [v19 bounds];
  [(UIDropProposal *)v14 setPrecise:v18 < CGRectGetHeight(v29)];

  [(UITextDropProposal *)v14 setUseFastSameViewOperations:((*&flags & 0x10000) == 0) & (*&self->_flags >> 1)];

  return v14;
}

void __52__UITextDragAssistant__suggestedProposalForRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 48) + 8);
  if (*(v3 + 24) == 1)
  {
    *(v3 + 24) = 1;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = a2;
    WeakRetained = objc_loadWeakRetained((v5 + 200));
    v7 = [*(a1 + 40) dropRange];
    v8 = [WeakRetained _range:v6 intersectsRange:v7];

    *(*(*(a1 + 48) + 8) + 24) = v8;
  }
}

- (void)_cleanupDrop
{
  [(UITextDragAssistant *)self _updateDropCaretToRange:0 session:self->_currentDropSession];
  if ((*(&self->_flags + 2) & 2) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v4 = [WeakRetained selectedTextRange];
    if (v4)
    {
      v5 = v4;
      v6 = objc_loadWeakRetained(&self->_view);
      v7 = [v6 selectedTextRange];
      v8 = [v7 isEqual:self->_preDropSelectionRange];

      if (v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    preDropSelectionRange = self->_preDropSelectionRange;
    v10 = objc_loadWeakRetained(&self->_view);
    [v10 setSelectedTextRange:preDropSelectionRange];
  }

LABEL_7:
  v11 = self->_preDropSelectionRange;
  self->_preDropSelectionRange = 0;

  currentDropProposal = self->_currentDropProposal;
  self->_currentDropProposal = 0;

  currentDropSession = self->_currentDropSession;
  self->_currentDropSession = 0;

  currentDropRange = self->_currentDropRange;
  self->_currentDropRange = 0;
}

- (void)_prepareSameViewOperation:(unint64_t)a3 forItems:(id)a4 fromRanges:(id)a5 toRange:(id)a6
{
  v9 = a5;
  v10 = a6;
  if ((*&self->_flags & 2) != 0)
  {
    v12 = self->_geometry;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __77__UITextDragAssistant__prepareSameViewOperation_forItems_fromRanges_toRange___block_invoke;
    v23[3] = &unk_1E7124648;
    v23[4] = self;
    v11 = [v9 sortedArrayUsingComparator:v23];

    v13 = [(UITextDraggableGeometry *)v12 attributedStringsForTextRanges:v11];
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v15 = [WeakRetained pasteDelegate];

    if (v15 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v16 = objc_loadWeakRetained(&self->_view);
      v17 = [v15 textPasteConfigurationSupporting:v16 combineItemAttributedStrings:v13 forRange:v10];
    }

    else
    {
      v16 = objc_loadWeakRetained(&self->_view);
      v17 = +[UITextPasteController combineAttributedStrings:addingSeparation:](UITextPasteController, "combineAttributedStrings:addingSeparation:", v13, [v16 smartInsertDeleteType] != 1);
    }

    v18 = v17;

    if (v18)
    {
      v19 = objc_opt_new();
      [v19 setOperation:a3];
      [v19 setText:v18];
      [v19 setSourceRanges:v11];
      [v19 setTargetRange:v10];
    }

    else
    {
      v19 = 0;
    }

    sameViewDropOperation = self->_sameViewDropOperation;
    self->_sameViewDropOperation = v19;
    v21 = v19;

    sameViewDropOperationResult = self->_sameViewDropOperationResult;
    self->_sameViewDropOperationResult = 0;
  }

  else
  {
    v11 = v9;
  }
}

uint64_t __77__UITextDragAssistant__prepareSameViewOperation_forItems_fromRanges_toRange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((v4 + 200));
  v8 = [v6 start];

  v9 = [v5 start];

  v10 = [WeakRetained comparePosition:v8 toPosition:v9];
  return v10;
}

- (void)_performSameViewOperation:(id)a3
{
  if (a3 && (*&self->_flags & 2) != 0)
  {
    v4 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained droppingStarted];

    v6 = [v4 operation];
    if (v6 == 3 && (v7 = objc_loadWeakRetained(&self->_view), v8 = objc_opt_respondsToSelector(), v7, (v8 & 1) != 0))
    {
      v9 = objc_loadWeakRetained(&self->_view);
      [v9 contentOffsetForSameViewDrops];
      v11 = v10;
      v13 = v12;
    }

    else
    {
      v13 = NAN;
      v11 = NAN;
    }

    v20 = self->_geometry;
    v14 = [(UITextDraggableGeometry *)v20 performSameViewDropOperation:self->_sameViewDropOperation];
    sameViewDropOperationResult = self->_sameViewDropOperationResult;
    self->_sameViewDropOperationResult = v14;

    *&self->_flags |= 0x80000u;
    v16 = objc_loadWeakRetained(&self->_view);
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = objc_loadWeakRetained(&self->_view);
      [v18 setContentOffsetForSameViewDrops:{v11, v13}];
    }

    v19 = objc_loadWeakRetained(&self->_view);
    [v19 droppingFinished];
  }
}

- (void)_performDropToRange:(id)a3 inSession:(id)a4
{
  v14 = a3;
  v6 = a4;
  dropPasteController = self->_dropPasteController;
  if (!dropPasteController)
  {
    v8 = [UITextPasteController alloc];
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v10 = [(UITextPasteController *)v8 initWithSupportingView:WeakRetained];
    v11 = self->_dropPasteController;
    self->_dropPasteController = v10;

    dropPasteController = self->_dropPasteController;
  }

  v12 = [v6 items];
  v13 = [(UITextPasteController *)dropPasteController beginDroppingItems:v12 toSelectedRange:v14 progressSupport:self animated:1 delegate:self];
  objc_storeWeak(&self->_dropPasteSession, v13);
}

- (id)_textPasteSelectableRangeForResult:(id)a3 fromRange:(id)a4
{
  v6 = a4;
  v7 = [a3 string];
  v8 = [v7 length];
  if (v8 < 1)
  {
    v21 = 0;
  }

  else
  {
    v9 = v8;
    v10 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v11 = 0;
    while ([v10 characterIsMember:{objc_msgSend(v7, "characterAtIndex:", v11)}])
    {
      if (v9 == ++v11)
      {
        v11 = v9;
        goto LABEL_6;
      }
    }

    do
    {
LABEL_6:
      v12 = v9;
      v13 = v9-- < 1;
    }

    while (!v13 && ([v10 characterIsMember:{objc_msgSend(v7, "characterAtIndex:", v9)}] & 1) != 0);
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v15 = [v6 start];
    v16 = [WeakRetained positionFromPosition:v15 offset:v11];

    v17 = objc_loadWeakRetained(&self->_view);
    v18 = [v6 start];
    v19 = [v17 positionFromPosition:v18 offset:v12];

    v20 = objc_loadWeakRetained(&self->_view);
    v21 = [v20 textRangeFromPosition:v16 toPosition:v19];
  }

  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v6;
  }

  v23 = v22;

  return v22;
}

- (void)textPasteSessionWillHidePasteResult:(id)a3
{
  delayedPreviewProvider = self->_delayedPreviewProvider;
  if (delayedPreviewProvider && self->_topmostDropItem)
  {
    v5 = _Block_copy(delayedPreviewProvider);
    v6 = [(UITextDragAssistant *)self _previewForTopmostItem:self->_topmostDropItem];
    v5[2](v5, v6);

    delayedPreviewProvider = self->_delayedPreviewProvider;
  }

  self->_delayedPreviewProvider = 0;
}

- (void)textPasteSessionDidRevealPasteResult:(id)a3
{
  delayedPreviewProvider = self->_delayedPreviewProvider;
  self->_delayedPreviewProvider = 0;
}

- (void)textPasteSessionWillBeginPasting:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained droppingStarted];
}

- (void)textPasteSessionDidEndPasting:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained droppingFinished];
}

- (id)_closestPositionToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = objc_loadWeakRetained(&self->_view);
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v8 = [WeakRetained textInputView];
  [v6 convertPoint:v8 toView:{x, y}];
  v9 = [v6 closestPositionToPoint:?];

  return v9;
}

- (UITextDraggableGeometry)geometry
{
  [(UITextDragAssistant *)self _applyOptionsToGeometry];
  geometry = self->_geometry;

  return geometry;
}

- (id)_previewForIrrelevantItemFromPreview:(id)a3
{
  v3 = a3;
  v4 = [v3 target];
  v5 = [UISnapshotView alloc];
  v6 = [v3 view];
  [v6 frame];
  v7 = [(UISnapshotView *)v5 initWithFrame:?];

  v8 = [v3 view];
  [(UISnapshotView *)v7 captureSnapshotOfView:v8 withSnapshotType:1];

  v9 = objc_opt_new();
  v10 = [v3 parameters];
  v11 = [v10 backgroundColor];
  [v9 setBackgroundColor:v11];

  v12 = [v3 parameters];

  v13 = [v12 visiblePath];
  [v9 setVisiblePath:v13];

  v14 = [[UITargetedDragPreview alloc] initWithView:v7 parameters:v9 target:v4];

  return v14;
}

- (id)_previewForTopmostItem:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_dropPasteSession);
  v5 = [WeakRetained pasteResult];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_dropPasteSession);
    v7 = [v6 positionedPasteResult];

    v8 = [v7 position];
    v9 = objc_loadWeakRetained(&self->_view);
    v10 = [v9 endOfDocument];
    v11 = [v9 comparePosition:v8 toPosition:v10];

    if (v11 == 1)
    {
      v12 = objc_loadWeakRetained(&self->_view);
      v13 = [v12 endOfDocument];

      v8 = v13;
    }

    if (v8)
    {
      v14 = objc_loadWeakRetained(&self->_view);
      v15 = [v14 beginningOfDocument];
      v16 = [v14 offsetFromPosition:v15 toPosition:v8];
    }

    else
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v18 = [v7 string];
    v19 = v18;
    if (v16 == 0x7FFFFFFFFFFFFFFFLL || ![v18 length])
    {
      v17 = 0;
    }

    else
    {
      v20 = objc_loadWeakRetained(&self->_view);
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        v22 = [v19 mutableCopy];
        v23 = objc_loadWeakRetained(&self->_view);
        [v23 sanitizeAttributedText:v22];

        v19 = v22;
      }

      v24 = objc_loadWeakRetained(&self->_view);
      v25 = objc_opt_respondsToSelector();

      if (v25)
      {
        v26 = objc_loadWeakRetained(&self->_view);
        v27 = [v26 selectedTextRange];

        v28 = objc_loadWeakRetained(&self->_view);
        v29 = [v28 textRangeFromPosition:v8 toPosition:v8];
        v30 = objc_loadWeakRetained(&self->_view);
        [v30 setSelectedTextRange:v29];

        v31 = objc_loadWeakRetained(&self->_view);
        v32 = [v31 _attributedStringForInsertionOfAttributedString:v19];

        v33 = objc_loadWeakRetained(&self->_view);
        [v33 setSelectedTextRange:v27];

        v19 = v32;
      }

      v34 = [v19 length];
      v35 = objc_loadWeakRetained(&self->_view);
      v36 = [v35 _textRangeFromNSRange:{v16, v34}];

      v37 = [(UITextDragAssistant *)self geometry];
      v38 = [(UITextDragAssistant *)self _containerViewForDropPreviews];
      v17 = [v37 previewForDroppingTextInRange:v36 toPosition:v8 inContainerView:v38];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_shrinkingPreview:(id)a3 toPosition:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained caretRectForPosition:v7];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v37.origin.x = v10;
  v37.origin.y = v12;
  v37.size.width = v14;
  v37.size.height = v16;
  if (CGRectIsNull(v37))
  {
    goto LABEL_7;
  }

  v17 = [(UITextDragAssistant *)self _containerViewForDropPreviews];
  v18 = objc_loadWeakRetained(&self->_view);
  [v18 convertRect:v17 toView:{v10, v12, v14, v16}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v6 size];
  v29 = *(MEMORY[0x1E695EFD0] + 16);
  *&v35.a = *MEMORY[0x1E695EFD0];
  *&v35.c = v29;
  *&v35.tx = *(MEMORY[0x1E695EFD0] + 32);
  if (v27 > 0.0 && v28 > 0.0)
  {
    CGAffineTransformMakeScale(&v35, v24 / v27, v26 / v28);
  }

  v30 = [UIDragPreviewTarget alloc];
  v34 = v35;
  v31 = [(UIPreviewTarget *)v30 initWithContainer:v17 center:&v34 transform:v20 + v24 * 0.5, v22 + v26 * 0.5];

  if (!v31)
  {
LABEL_7:
    v32 = v6;
  }

  else
  {
    v32 = [v6 retargetedPreviewWithTarget:v31];
  }

  return v32;
}

- (UITextDragSupporting)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (UIDragInteraction)dragInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_dragInteraction);

  return WeakRetained;
}

- (UIDropInteraction)dropInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_dropInteraction);

  return WeakRetained;
}

@end