@interface UITextDragAssistant
- (BOOL)_dragInteraction:(id)interaction competingGestureRecognizerShouldDelayLift:(id)lift;
- (BOOL)_dragInteraction:(id)interaction shouldDelayCompetingGestureRecognizer:(id)recognizer;
- (BOOL)_updateCurrentDropProposalInSession:(id)session usingRequest:(id)request;
- (BOOL)_viewHasOtherDragInteraction;
- (BOOL)accessibilityCanDrag;
- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session;
- (UIDragInteraction)dragInteraction;
- (UIDropInteraction)dropInteraction;
- (UITextDragAssistant)initWithView:(id)view geometry:(id)geometry;
- (UITextDragSupporting)view;
- (UITextDraggableGeometry)geometry;
- (id)_accessibilityDraggableRanges;
- (id)_closestPositionToPoint:(CGPoint)point;
- (id)_containerViewForDropPreviews;
- (id)_containerViewForLiftPreviews;
- (id)_dropRequestWithRange:(id)range suggestedProposal:(id)proposal inSession:(id)session;
- (id)_itemsForDraggedRange:(id)range;
- (id)_positionInSession:(id)session;
- (id)_previewForIrrelevantItemFromPreview:(id)preview;
- (id)_previewForTopmostItem:(id)item;
- (id)_rangeInSession:(id)session;
- (id)_shrinkingPreview:(id)preview toPosition:(id)position;
- (id)_suggestedProposalForRequest:(id)request;
- (id)_textPasteSelectableRangeForResult:(id)result fromRange:(id)range;
- (id)_textRangeForDraggingFromPoint:(CGPoint)point;
- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default;
- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session;
- (id)dragInteraction:(id)interaction sessionForAddingItems:(id)items withTouchAtPoint:(CGPoint)point;
- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (int64_t)_dataOwnerForSession:(id)session atPoint:(CGPoint)point;
- (int64_t)_dragInteraction:(id)interaction dataOwnerForSession:(id)session;
- (int64_t)_dropInteraction:(id)interaction dataOwnerForSession:(id)session;
- (void)_addDraggedTextRangeForItems:(id)items defaultRange:(id)range;
- (void)_applyOptionsToGeometry;
- (void)_cleanupDrop;
- (void)_clearDraggedTextRanges;
- (void)_dropInteraction:(id)interaction delayedPreviewProviderForDroppingItem:(id)item previewProvider:(id)provider;
- (void)_forDraggedTextRangesDo:(id)do;
- (void)_ghostDraggedTextRanges:(BOOL)ranges;
- (void)_initializeDragSession:(id)session withInteraction:(id)interaction;
- (void)_liftOrDrag:(int64_t)drag didEndWithOperation:(unint64_t)operation;
- (void)_performDropToRange:(id)range inSession:(id)session;
- (void)_performSameViewOperation:(id)operation;
- (void)_prepareSameViewOperation:(unint64_t)operation forItems:(id)items fromRanges:(id)ranges toRange:(id)range;
- (void)_restoreResponderIfNeededForOperation:(unint64_t)operation;
- (void)_stopObservingTextStorage;
- (void)_textStorageDidProcessEditing;
- (void)_updateDropCaretToRange:(id)range session:(id)session;
- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionDidMove:(id)move;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)dropInteraction:(id)interaction concludeDrop:(id)drop;
- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end;
- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter;
- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit;
- (void)installDragInteractionIfNeeded;
- (void)installDropInteractionIfNeeded;
- (void)invalidateDropCaret;
- (void)textPasteSessionDidEndPasting:(id)pasting;
- (void)textPasteSessionDidRevealPasteResult:(id)result;
- (void)textPasteSessionWillBeginPasting:(id)pasting;
- (void)textPasteSessionWillHidePasteResult:(id)result;
@end

@implementation UITextDragAssistant

- (BOOL)_viewHasOtherDragInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  interactions = [WeakRetained interactions];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__UITextDragAssistant__viewHasOtherDragInteraction__block_invoke;
  v7[3] = &unk_1E7124788;
  v7[4] = self;
  v5 = [interactions indexOfObjectPassingTest:v7];

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
  textDragOptions = [WeakRetained textDragOptions];

  geometry = self->_geometry;

  [(UITextDraggableGeometry *)geometry setGeometryOptions:textDragOptions & 1];
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

- (UITextDragAssistant)initWithView:(id)view geometry:(id)geometry
{
  viewCopy = view;
  geometryCopy = geometry;
  v26.receiver = self;
  v26.super_class = UITextDragAssistant;
  v9 = [(UITextDragAssistant *)&v26 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_view, viewCopy);
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    targetedPreviewProviders = v10->_targetedPreviewProviders;
    v10->_targetedPreviewProviders = weakToStrongObjectsMapTable;

    weakToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    previewProviders = v10->_previewProviders;
    v10->_previewProviders = weakToStrongObjectsMapTable2;

    if (geometryCopy)
    {
      objc_storeStrong(&v10->_geometry, geometry);
    }

    if (!v10->_geometry)
    {
      WeakRetained = objc_loadWeakRetained(&v10->_view);
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = objc_loadWeakRetained(&v10->_view);
        _textGeometry = [v17 _textGeometry];
        geometry = v10->_geometry;
        v10->_geometry = _textGeometry;
      }

      if (!v10->_geometry)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v10 file:@"UITextDragAssistant.m" lineNumber:153 description:@"UITextDragAssistant can't be initialized without a geometry"];
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

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  interactionCopy = interaction;
  sessionCopy = session;
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
    isSelectable = [v12 isSelectable];

    if (!isSelectable)
    {
      goto LABEL_12;
    }
  }

  v14 = objc_loadWeakRetained(&self->_view);
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = objc_loadWeakRetained(&self->_view);
    _isInteractiveTextSelectionDisabled = [v16 _isInteractiveTextSelectionDisabled];

    if (_isInteractiveTextSelectionDisabled)
    {
      goto LABEL_12;
    }
  }

  v18 = objc_loadWeakRetained(&self->_view);
  if (objc_opt_respondsToSelector())
  {
    _shouldObscureInput = [v18 _shouldObscureInput];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {

      goto LABEL_14;
    }

    _shouldObscureInput = [v18 isSecureTextEntry];
  }

  v20 = _shouldObscureInput;

  if (v20)
  {
LABEL_12:
    v21 = MEMORY[0x1E695E0F0];
    goto LABEL_28;
  }

LABEL_14:
  v22 = objc_loadWeakRetained(&self->_view);
  textDragDelegate = [v22 textDragDelegate];

  v24 = objc_loadWeakRetained(&self->_view);
  [sessionCopy locationInView:v24];
  v25 = [(UITextDragAssistant *)self _textRangeForDraggingFromPoint:?];

  if (textDragDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v26 = objc_loadWeakRetained(&self->_view);
    [sessionCopy locationInView:v26];
    v28 = v27;
    v30 = v29;

    v31 = [(UITextDragAssistant *)self _closestPositionToPoint:v28, v30];
    v32 = objc_loadWeakRetained(&self->_view);
    v33 = [textDragDelegate textDraggableView:v32 textRangeForDragFromPosition:v31 defaultRange:v25 session:sessionCopy];

    if (v33)
    {
      v34 = objc_loadWeakRetained(&self->_view);
      v48 = objc_loadWeakRetained(&self->_view);
      beginningOfDocument = [v48 beginningOfDocument];
      v49 = v31;
      v35 = objc_loadWeakRetained(&self->_view);
      endOfDocument = [v35 endOfDocument];
      v37 = [v34 textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];
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
    if (textDragDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v38 = [[UITextDragRequest alloc] initWithRange:v25 inSession:sessionCopy];
      [(UITextDragRequest *)v38 setSuggestedItems:v21];
      v39 = objc_loadWeakRetained(&self->_view);
      selectedTextRange = [v39 selectedTextRange];
      -[UITextDragRequest setSelected:](v38, "setSelected:", [selectedTextRange isEqual:v25]);

      v41 = objc_loadWeakRetained(&self->_view);
      v42 = [textDragDelegate textDraggableView:v41 itemsForDrag:v38];

      suggestedItems = [(UITextDragRequest *)v38 suggestedItems];
      _UIDragStatisticsLogTextDelegateItems(suggestedItems, v42);

      v21 = v42;
    }

    if ([v21 count])
    {
      [(UITextDragAssistant *)self _initializeDragSession:sessionCopy withInteraction:interactionCopy];
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

- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  sessionCopy = session;
  if (self->_currentDragSession != sessionCopy)
  {
    goto LABEL_2;
  }

  v10 = objc_loadWeakRetained(&self->_view);
  if (objc_opt_respondsToSelector())
  {
    _shouldObscureInput = [v10 _shouldObscureInput];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {

      goto LABEL_10;
    }

    _shouldObscureInput = [v10 isSecureTextEntry];
  }

  v12 = _shouldObscureInput;

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
    textDragDelegate = [WeakRetained textDragDelegate];

    if (textDragDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v16 = [[UITextDragRequest alloc] initWithRange:v13 inSession:sessionCopy];
      [(UITextDragRequest *)v16 setSuggestedItems:v9];
      v17 = objc_loadWeakRetained(&self->_view);
      selectedTextRange = [v17 selectedTextRange];
      -[UITextDragRequest setSelected:](v16, "setSelected:", [selectedTextRange isEqual:v13]);

      v19 = objc_loadWeakRetained(&self->_view);
      v20 = [textDragDelegate textDraggableView:v19 itemsForDrag:v16];

      suggestedItems = [(UITextDragRequest *)v16 suggestedItems];
      _UIDragStatisticsLogTextDelegateItems(suggestedItems, v20);

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

- (id)dragInteraction:(id)interaction sessionForAddingItems:(id)items withTouchAtPoint:(CGPoint)point
{
  interactionCopy = interaction;
  itemsCopy = items;
  v9 = itemsCopy;
  if (self->_currentDragSession && [itemsCopy containsObject:?])
  {
    v10 = self->_currentDragSession;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)dragInteraction:(id)interaction previewForLiftingItem:(id)item session:(id)session
{
  itemCopy = item;
  sessionCopy = session;
  v9 = [(NSMapTable *)self->_targetedPreviewProviders objectForKey:itemCopy];
  if (v9)
  {
    _containerViewForLiftPreviews = [(UITextDragAssistant *)self _containerViewForLiftPreviews];
    v11 = (v9)[2](v9, _containerViewForLiftPreviews, 1);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    _containerViewForLiftPreviews = [WeakRetained textDragDelegate];

    if (_containerViewForLiftPreviews && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v13 = objc_loadWeakRetained(&self->_view);
      v11 = [_containerViewForLiftPreviews textDraggableView:v13 dragPreviewForLiftingItem:itemCopy session:sessionCopy];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  interactionCopy = interaction;
  animatorCopy = animator;
  sessionCopy = session;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__UITextDragAssistant_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke;
  v16[3] = &unk_1E70F3590;
  v11 = interactionCopy;
  v17 = v11;
  [UIView performWithoutAnimation:v16];
  [(UITextDragAssistant *)self _ghostDraggedTextRanges:1];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__UITextDragAssistant_dragInteraction_willAnimateLiftWithAnimator_session___block_invoke_2;
  v15[3] = &unk_1E70F5DB8;
  v15[4] = self;
  [animatorCopy addCompletion:v15];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  textDragDelegate = [WeakRetained textDragDelegate];

  if (textDragDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = objc_loadWeakRetained(&self->_view);
    [textDragDelegate textDraggableView:v14 willAnimateLiftWithAnimator:animatorCopy session:sessionCopy];
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

- (id)dragInteraction:(id)interaction previewForCancellingItem:(id)item withDefault:(id)default
{
  itemCopy = item;
  if (*(&self->_flags + 2))
  {
    window = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_view);
      willGenerateCancelPreview = [v9 willGenerateCancelPreview];
    }

    else
    {
      willGenerateCancelPreview = 0;
    }

    v12 = [(NSMapTable *)self->_targetedPreviewProviders objectForKey:itemCopy];
    _containerViewForDropPreviews = [(UITextDragAssistant *)self _containerViewForDropPreviews];
    v14 = _containerViewForDropPreviews;
    if (v12)
    {
      window = [_containerViewForDropPreviews window];

      if (window)
      {
        window = (v12)[2](v12, v14, 0);
      }
    }

    else
    {
      window = 0;
    }

    v15 = objc_loadWeakRetained(&self->_view);
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = objc_loadWeakRetained(&self->_view);
      [v17 didGenerateCancelPreview:willGenerateCancelPreview];
    }

    if (window)
    {
      target = [window target];
      container = [target container];
      [container bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      [window size];
      v29 = v28 / -3.0;
      [window size];
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
      view = [window view];
      [view frame];
      v46.origin.x = v37;
      v46.origin.y = v38;
      v46.size.width = v39;
      v46.size.height = v40;
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      LOBYTE(container) = CGRectIntersectsRect(v45, v46);

      if ((container & 1) == 0)
      {

        window = 0;
      }
    }
  }

  return window;
}

- (void)dragInteraction:(id)interaction item:(id)item willAnimateCancelWithAnimator:(id)animator
{
  animatorCopy = animator;
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
      [animatorCopy addAnimations:v11];
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__UITextDragAssistant_dragInteraction_item_willAnimateCancelWithAnimator___block_invoke_2;
    v10[3] = &unk_1E70F5DB8;
    v10[4] = self;
    [animatorCopy addCompletion:v10];
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

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  v34 = *MEMORY[0x1E69E9840];
  beginCopy = begin;
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
  items = [beginCopy items];
  v9 = [items countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(items);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [(NSMapTable *)self->_previewProviders objectForKey:v13];
        if (v14)
        {
          [v13 setPreviewProvider:v14];
          [(NSMapTable *)self->_previewProviders removeObjectForKey:v13];
        }
      }

      v10 = [items countByEnumeratingWithState:&v28 objects:v33 count:16];
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
  textDragDelegate = [v19 textDragDelegate];

  if (textDragDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v21 = objc_loadWeakRetained(&self->_view);
    [textDragDelegate textDraggableView:v21 dragSessionWillBegin:beginCopy];
  }

  flags = self->_flags;
  self->_flags = (*&flags & 0xFFFEFFFF);
  if ((*&flags & 0x8000) != 0)
  {
    v23 = objc_loadWeakRetained(&self->_view);
    textStorage = [v23 textStorage];

    if (textStorage)
    {
      objc_storeWeak(&self->_observingStorage, textStorage);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__textStorageDidProcessEditing name:*off_1E70ECAC0 object:textStorage];
    }
  }

  [(UITextDragAssistant *)self _ghostDraggedTextRanges:1];
}

- (void)dragInteraction:(id)interaction sessionDidMove:(id)move
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

- (void)dragInteraction:(id)interaction session:(id)session willEndWithOperation:(unint64_t)operation
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
  if (operation != 3 || self->_sameViewDropOperationResult)
  {
    if (!operation)
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

  [(UITextDragAssistant *)self _restoreResponderIfNeededForOperation:operation];
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

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  sessionCopy = session;
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
  textDragDelegate = [WeakRetained textDragDelegate];

  if (textDragDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12 = objc_loadWeakRetained(&self->_view);
    [textDragDelegate textDraggableView:v12 dragSessionDidEnd:sessionCopy withOperation:operation];
  }

  [(UITextDragAssistant *)self _liftOrDrag:0 didEndWithOperation:operation];
}

- (void)_liftOrDrag:(int64_t)drag didEndWithOperation:(unint64_t)operation
{
  [(UITextDragAssistant *)self _clearDraggedTextRanges];
  if (operation >= 2 && !self->_sameViewDropOperationResult)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained setSelectedTextRange:0];
  }

  [(UITextDragAssistant *)self _restoreResponderIfNeededForOperation:operation];
  currentDragSession = self->_currentDragSession;
  self->_currentDragSession = 0;

  currentDragInteraction = self->_currentDragInteraction;
  self->_currentDragInteraction = 0;

  if ((*&self->_flags & 8) != 0)
  {
    v11 = objc_opt_new();
    [v11 setDragTearoffOccured:drag == 0];
    if (drag == 1)
    {
      [v11 setLocation:{self->_initialDragLocation.x, self->_initialDragLocation.y}];
    }

    v10 = objc_loadWeakRetained(&self->_view);
    [v10 draggingFinished:v11];

    *&self->_flags &= ~8u;
  }
}

- (BOOL)_dragInteraction:(id)interaction shouldDelayCompetingGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  textDragDelegate = [WeakRetained textDragDelegate];

  if (textDragDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = objc_loadWeakRetained(&self->_view);
    LOBYTE(self) = [textDragDelegate _textDraggableView:v8 beginningDragShouldDelayCompetingGestureRecognizer:recognizerCopy];
  }

  else
  {
    if (![recognizerCopy _isGestureType:6])
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

- (BOOL)_dragInteraction:(id)interaction competingGestureRecognizerShouldDelayLift:(id)lift
{
  liftCopy = lift;
  view = [liftCopy view];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    view2 = [liftCopy view];
    v8 = [view2 gestureRecognizerShouldDelayLift:liftCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)_dragInteraction:(id)interaction dataOwnerForSession:(id)session
{
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [sessionCopy locationInView:WeakRetained];
  v7 = [(UITextDragAssistant *)self _dataOwnerForSession:sessionCopy atPoint:?];

  return v7;
}

- (int64_t)_dataOwnerForSession:(id)session atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  textDragDelegate = [WeakRetained textDragDelegate];

  if (objc_opt_respondsToSelector())
  {
    v10 = [(UITextDragAssistant *)self _textRangeForDraggingFromPoint:x, y];
    if (v10)
    {
      v11 = [[UITextDragRequest alloc] initWithRange:v10 inSession:sessionCopy];
      v12 = objc_loadWeakRetained(&self->_view);
      _dragDataOwner = [textDragDelegate _textDraggableView:v12 dataOwnerForDrag:v11];
    }

    else
    {
      _dragDataOwner = 0;
    }

    goto LABEL_7;
  }

  v14 = objc_loadWeakRetained(&self->_view);
  _dragDataOwner = [v14 _dragDataOwner];

  if (!_dragDataOwner)
  {
    v10 = objc_loadWeakRetained(&self->_view);
    _dragDataOwner = [v10 _dataOwnerForCopy];
LABEL_7:
  }

  return _dragDataOwner;
}

- (BOOL)accessibilityCanDrag
{
  _accessibilityDraggableRanges = [(UITextDragAssistant *)self _accessibilityDraggableRanges];
  v3 = [_accessibilityDraggableRanges count] != 0;

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
  isFirstResponder = [v9 isFirstResponder];

  if (isFirstResponder)
  {
    v11 = objc_loadWeakRetained(&self->_view);
    selectedTextRange = [v11 selectedTextRange];

    if (selectedTextRange)
    {
      if (([selectedTextRange isEmpty] & 1) == 0)
      {
        v13 = objc_loadWeakRetained(&self->_view);
        v14 = [v13 _range:v7 containsRange:selectedTextRange];

        if (v14)
        {
          [v8 addObject:selectedTextRange];
        }
      }
    }
  }

  geometry = [(UITextDragAssistant *)self geometry];
  v16 = [geometry textRangesForAttachmentsInTextRange:v7];
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*off_1E70ECAC0 object:v5];

    objc_storeWeak(&self->_observingStorage, 0);
    WeakRetained = v5;
  }
}

- (id)_textRangeForDraggingFromPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  isFirstResponder = [WeakRetained isFirstResponder];

  if (isFirstResponder)
  {
    v8 = objc_loadWeakRetained(&self->_view);
    selectedTextRange = [v8 selectedTextRange];

    if (selectedTextRange)
    {
      if (([selectedTextRange isEmpty] & 1) == 0)
      {
        v10 = objc_loadWeakRetained(&self->_view);
        v11 = UITextRangeContainsPointInViewWithSlop(v10, selectedTextRange, x, y, 4.0);

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
    geometry = [(UITextDragAssistant *)self geometry];
    selectedTextRange = [geometry textRangeForAttachmentInTextRange:v14 atPoint:{x, y}];
  }

  else
  {
    selectedTextRange = 0;
  }

LABEL_11:

  return selectedTextRange;
}

- (void)_initializeDragSession:(id)session withInteraction:(id)interaction
{
  sessionCopy = session;
  sessionCopy2 = session;
  interactionCopy = interaction;
  objc_storeStrong(&self->_currentDragSession, sessionCopy);
  objc_storeStrong(&self->_currentDragInteraction, interaction);
  WeakRetained = objc_loadWeakRetained(&self->_view);
  LODWORD(sessionCopy) = [WeakRetained isFirstResponder];

  if (sessionCopy)
  {
    v9 = objc_loadWeakRetained(&self->_view);
    selectedTextRange = [v9 selectedTextRange];
    initialDragSelectedRange = self->_initialDragSelectedRange;
    self->_initialDragSelectedRange = selectedTextRange;
  }

  else
  {
    v9 = self->_initialDragSelectedRange;
    self->_initialDragSelectedRange = 0;
  }

  v12 = objc_loadWeakRetained(&self->_view);
  [sessionCopy2 locationInView:v12];
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

- (void)_restoreResponderIfNeededForOperation:(unint64_t)operation
{
  if (operation <= 1 && (v4 = self->_initialDragSelectedRange) != 0)
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
  window = [v7 window];
  _firstResponder = [window _firstResponder];

  if (!_firstResponder)
  {
    v10 = objc_loadWeakRetained(&self->_view);
    [v10 becomeFirstResponder];
  }
}

- (id)_itemsForDraggedRange:(id)range
{
  v34 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  geometry = [(UITextDragAssistant *)self geometry];
  v6 = [geometry draggableObjectsForTextRange:rangeCopy];

  if ([v6 count])
  {
    v26 = rangeCopy;
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
          itemProvider = [v11 itemProvider];
          v13 = [[UIDragItem alloc] initWithItemProvider:itemProvider];
          range = [v11 range];
          [(UIDragItem *)v13 _setDraggedTextRange:range];

          targetedPreviewProvider = [v11 targetedPreviewProvider];

          if (targetedPreviewProvider)
          {
            targetedPreviewProviders = self->_targetedPreviewProviders;
            targetedPreviewProvider2 = [v11 targetedPreviewProvider];
            v18 = _Block_copy(targetedPreviewProvider2);
            [(NSMapTable *)targetedPreviewProviders setObject:v18 forKey:v13];
          }

          previewProvider = [v11 previewProvider];

          if (previewProvider)
          {
            previewProviders = self->_previewProviders;
            previewProvider2 = [v11 previewProvider];
            v22 = _Block_copy(previewProvider2);
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
    rangeCopy = v26;
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
  _window = [WeakRetained _window];
  windowScene = [_window windowScene];
  v6 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:windowScene];
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

- (void)_addDraggedTextRangeForItems:(id)items defaultRange:(id)range
{
  v26 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  rangeCopy = range;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = itemsCopy;
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
        _draggedTextRange = [v14 _draggedTextRange];

        if (!_draggedTextRange)
        {
          [v14 _setDraggedTextRange:rangeCopy];
        }

        _draggedTextRange2 = [v14 _draggedTextRange];

        if (_draggedTextRange2)
        {
          _draggedTextRange3 = [v14 _draggedTextRange];
          [v8 addObject:_draggedTextRange3];
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

- (void)_forDraggedTextRangesDo:(id)do
{
  v15 = *MEMORY[0x1E69E9840];
  doCopy = do;
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

        doCopy[2](doCopy, *(*(&v10 + 1) + 8 * v9++));
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

- (void)_ghostDraggedTextRanges:(BOOL)ranges
{
  if (*&self->_flags)
  {
    rangesCopy = ranges;
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained removeAllGhostedRanges];
    if (rangesCopy)
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

- (BOOL)dropInteraction:(id)interaction canHandleSession:(id)session
{
  interactionCopy = interaction;
  sessionCopy = session;
  v8 = sessionCopy;
  currentDropSession = self->_currentDropSession;
  if (!currentDropSession)
  {
    items = [(UIDropSession *)sessionCopy items];
    v12 = [items valueForKeyPath:@"itemProvider"];

    WeakRetained = objc_loadWeakRetained(&self->_view);
    v14 = [WeakRetained canPasteItemProviders:v12];

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_view);
      canBecomeDropResponder = [v15 canBecomeDropResponder];

      if (canBecomeDropResponder)
      {
        *&self->_flags &= ~0x100u;
        v17 = objc_loadWeakRetained(&self->_view);
        isEditable = [v17 isEditable];

        if (isEditable)
        {
          goto LABEL_7;
        }

        v29 = objc_loadWeakRetained(&self->_view);
        v30 = objc_opt_respondsToSelector();

        if (v30)
        {
          v31 = objc_loadWeakRetained(&self->_view);
          textDropDelegate = [v31 textDropDelegate];

          if (textDropDelegate && (objc_opt_respondsToSelector() & 1) != 0)
          {
            textDropDelegate2 = [(UITextDragAssistant *)self _dropRequestWithRange:0 inSession:v8];
            v33 = objc_loadWeakRetained(&self->_view);
            v34 = [textDropDelegate textDroppableView:v33 willBecomeEditableForDrop:textDropDelegate2];

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
              textDropDelegate2 = [v19 textDropDelegate];

              if (textDropDelegate2)
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
            textDropDelegate2 = 0;
          }

          goto LABEL_56;
        }
      }
    }

    v10 = 0;
LABEL_48:

    goto LABEL_49;
  }

  if (currentDropSession == sessionCopy)
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

- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter
{
  enterCopy = enter;
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
  selectedTextRange = [WeakRetained selectedTextRange];
  preDropSelectionRange = self->_preDropSelectionRange;
  self->_preDropSelectionRange = selectedTextRange;

  objc_storeStrong(&self->_currentDropSession, enter);
  v12 = objc_loadWeakRetained(&self->_view);
  [v12 becomeDropResponder];

  v13 = objc_loadWeakRetained(&self->_view);
  textDropDelegate = [v13 textDropDelegate];

  if (textDropDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v15 = objc_loadWeakRetained(&self->_view);
    [textDropDelegate textDroppableView:v15 dropSessionDidEnter:enterCopy];
  }
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  updateCopy = update;
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
  textDropDelegate = [WeakRetained textDropDelegate];

  flags = self->_flags;
  if ((*&flags & 0x800) != 0)
  {
    v11 = [(UITextDragAssistant *)self _dropRequestWithRange:0 inSession:updateCopy];
    v12 = objc_loadWeakRetained(&self->_view);
    v13 = [textDropDelegate textDroppableView:v12 rangeForDrop:v11];

    if (v13)
    {
      dropRange = [v11 dropRange];
      v15 = dropRange;
      if (v13 == dropRange)
      {
        dropRange2 = [v11 dropRange];
        v21 = [v13 isEqual:dropRange2];

        if (v21)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      v22 = objc_loadWeakRetained(&self->_view);
      _fullRange = [v22 _fullRange];
      v24 = [v22 _intersectionOfRange:v13 andRange:_fullRange];

      v25 = [(UITextDragAssistant *)self _dropRequestWithRange:v24 inSession:updateCopy];
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

    v11 = [(UITextDragAssistant *)self _dropRequestWithRange:0 inSession:updateCopy];
    v16 = objc_loadWeakRetained(&self->_view);
    v13 = [textDropDelegate textDroppableView:v16 positionForDrop:v11];

    if (v13)
    {
      dropRange3 = [v11 dropRange];
      start = [dropRange3 start];
      v19 = start;
      if (v13 == start)
      {
        dropRange4 = [v11 dropRange];
        start2 = [dropRange4 start];
        v32 = [v13 isEqual:start2];

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
      _fullRange2 = [v35 _fullRange];
      v37 = [v35 _intersectionOfRange:v34 andRange:_fullRange2];

      if (!v37)
      {
        goto LABEL_15;
      }

      v25 = [(UITextDragAssistant *)self _dropRequestWithRange:v37 inSession:updateCopy];

      v11 = v37;
      goto LABEL_14;
    }
  }

LABEL_15:

LABEL_16:
  if ([(UITextDragAssistant *)self _updateCurrentDropProposalInSession:updateCopy usingRequest:v11])
  {
    [(UITextDragAssistant *)self _updateDropCaretToRange:self->_currentDropRange session:updateCopy];
  }

  if ((*(&self->_flags + 1) & 4) != 0)
  {
    v26 = objc_loadWeakRetained(&self->_view);
    [textDropDelegate textDroppableView:v26 dropSessionDidUpdate:updateCopy];
  }

  currentDropProposal = self->_currentDropProposal;
  v28 = currentDropProposal;

  return currentDropProposal;
}

- (id)_positionInSession:(id)session
{
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [sessionCopy locationInView:WeakRetained];
  v7 = v6;
  v9 = v8;

  return [(UITextDragAssistant *)self _closestPositionToPoint:v7, v9];
}

- (id)_rangeInSession:(id)session
{
  v4 = [(UITextDragAssistant *)self _positionInSession:session];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v6 = [WeakRetained textRangeFromPosition:v4 toPosition:v4];

  return v6;
}

- (BOOL)_updateCurrentDropProposalInSession:(id)session usingRequest:(id)request
{
  sessionCopy = session;
  requestCopy = request;
  dropRange = [requestCopy dropRange];
  v9 = dropRange;
  if (dropRange)
  {
    v10 = dropRange;
  }

  else
  {
    v10 = [(UITextDragAssistant *)self _rangeInSession:sessionCopy];
  }

  v11 = v10;

  p_currentDropRange = &self->_currentDropRange;
  if (self->_currentDropRange)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    start = [(UITextRange *)self->_currentDropRange start];
    start2 = [(UITextRange *)v11 start];
    if ([WeakRetained comparePosition:start toPosition:start2])
    {
    }

    else
    {
      v39 = sessionCopy;
      v16 = objc_loadWeakRetained(&self->_view);
      v17 = [(UITextRange *)*p_currentDropRange end];
      v18 = [(UITextRange *)v11 end];
      v38 = [v16 comparePosition:v17 toPosition:v18];

      sessionCopy = v39;
      if (!v38)
      {
        v36 = 0;
        goto LABEL_29;
      }
    }
  }

  if (!requestCopy)
  {
    requestCopy = [(UITextDragAssistant *)self _dropRequestWithRange:v11 inSession:sessionCopy];
  }

  if ((*(&self->_flags + 1) & 2) != 0)
  {
    v21 = objc_loadWeakRetained(&self->_view);
    textDropDelegate = [v21 textDropDelegate];

    v22 = objc_loadWeakRetained(&self->_view);
    v23 = [textDropDelegate textDroppableView:v22 proposalForDrop:requestCopy];

    if (v23)
    {
      v24 = [v23 copy];

      v25 = self->_currentDragSession;
      v40 = sessionCopy;
      v26 = sessionCopy;
      localDragSession = [v26 localDragSession];
      if (localDragSession)
      {
        v28 = localDragSession;
        localDragSession2 = [v26 localDragSession];

        if (localDragSession2 == v25 && (*(&self->_flags + 2) & 1) != 0)
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

      sessionCopy = v40;
    }

    else
    {
      suggestedProposal = [requestCopy suggestedProposal];
      v31 = self->_currentDropProposal;
      self->_currentDropProposal = suggestedProposal;
    }
  }

  else
  {
    suggestedProposal2 = [requestCopy suggestedProposal];
    textDropDelegate = self->_currentDropProposal;
    self->_currentDropProposal = suggestedProposal2;
  }

  if ([(UITextDropProposal *)self->_currentDropProposal dropAction]== UITextDropActionReplaceSelection)
  {
    preDropSelectionRange = self->_preDropSelectionRange;
    if (preDropSelectionRange)
    {
      if (![(UITextRange *)preDropSelectionRange isEmpty])
      {
        _fullRange = self->_preDropSelectionRange;
        goto LABEL_27;
      }
    }
  }

  if ([(UITextDropProposal *)self->_currentDropProposal dropAction]== UITextDropActionReplaceAll)
  {
    v34 = objc_loadWeakRetained(&self->_view);
    _fullRange = [(UITextRange *)v34 _fullRange];

    v11 = v34;
LABEL_27:

    v11 = _fullRange;
  }

  objc_storeStrong(p_currentDropRange, v11);
  v36 = 1;
LABEL_29:

  return v36;
}

- (void)dropInteraction:(id)interaction sessionDidExit:(id)exit
{
  exitCopy = exit;
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
  textDropDelegate = [WeakRetained textDropDelegate];

  if (textDropDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = objc_loadWeakRetained(&self->_view);
    [textDropDelegate textDroppableView:v10 dropSessionDidExit:exitCopy];
  }
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  dropCopy = drop;
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
  [(UITextDragAssistant *)self _updateDropCaretToRange:0 session:dropCopy];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  isEditable = [WeakRetained isEditable];

  if ((isEditable & 1) == 0)
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
  textDropDelegate = [v12 textDropDelegate];

  if (textDropDelegate)
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
  if ((v14 & 1) == 0 || (-[UITextDragAssistant _dropRequestWithRange:suggestedProposal:inSession:](self, "_dropRequestWithRange:suggestedProposal:inSession:", self->_currentDropRange, self->_currentDropProposal, dropCopy), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_loadWeakRetained(&self->_view), [textDropDelegate textDroppableView:v17 willPerformDrop:v16], v17, v16, (*(&self->_flags + 2) & 4) != 0))
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
      v23 = dropCopy;
      localDragSession = [v23 localDragSession];
      if (localDragSession)
      {
        v25 = localDragSession;
        localDragSession2 = [v23 localDragSession];

        if (localDragSession2 == v22)
        {
          operation = [(UIDropProposal *)self->_currentDropProposal operation];
          items = [v23 items];
          [(UITextDragAssistant *)self _prepareSameViewOperation:operation forItems:items fromRanges:v8 toRange:self->_currentDropRange];

          goto LABEL_25;
        }
      }

      else
      {
      }
    }

    if ([(UITextDropProposal *)self->_currentDropProposal dropProgressMode])
    {
      [dropCopy setProgressIndicatorStyle:0];
    }

    [(UITextDragAssistant *)self _performDropToRange:self->_currentDropRange inSession:dropCopy];
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

- (void)dropInteraction:(id)interaction concludeDrop:(id)drop
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

- (void)dropInteraction:(id)interaction sessionDidEnd:(id)end
{
  endCopy = end;
  [(UITextDragAssistant *)self _cleanupDrop];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained resignDropResponderWithDropPerformed:(*&self->_flags >> 17) & 1];

  v6 = objc_loadWeakRetained(&self->_view);
  textDropDelegate = [v6 textDropDelegate];

  if (textDropDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = objc_loadWeakRetained(&self->_view);
    [textDropDelegate textDroppableView:v8 dropSessionDidEnd:endCopy];
  }
}

- (id)dropInteraction:(id)interaction previewForDroppingItem:(id)item withDefault:(id)default
{
  interactionCopy = interaction;
  itemCopy = item;
  defaultCopy = default;
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
        targetedPreviewProvider = [(UITextDraggableGeometrySameViewDropOperationResult *)sameViewDropOperationResult targetedPreviewProvider];
        _containerViewForDropPreviews = [(UITextDragAssistant *)self _containerViewForDropPreviews];
        v11 = (targetedPreviewProvider)[2](targetedPreviewProvider, _containerViewForDropPreviews, 0);

        if (v11)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      v11 = [(UITextDragAssistant *)self _previewForTopmostItem:itemCopy];
      if (v11)
      {
        goto LABEL_9;
      }
    }

    start = [(UITextRange *)self->_currentDropRange start];
    v11 = [(UITextDragAssistant *)self _shrinkingPreview:defaultCopy toPosition:start];
  }

  else
  {
    v11 = 0;
  }

LABEL_9:
  WeakRetained = objc_loadWeakRetained(&self->_view);
  textDropDelegate = [WeakRetained textDropDelegate];

  if (objc_opt_respondsToSelector())
  {
    v19 = objc_loadWeakRetained(&self->_view);
    v20 = [textDropDelegate textDroppableView:v19 previewForDroppingAllItemsWithDefault:v11];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v11;
    }

    v26 = itemCopy;
    v23 = interactionCopy;
    v24 = v22;

    v11 = v24;
    interactionCopy = v23;
    itemCopy = v26;
  }

  objc_storeStrong(&self->_topmostDropPreview, v11);
  objc_storeStrong(&self->_topmostDropItem, item);

LABEL_15:

  return v11;
}

- (void)_dropInteraction:(id)interaction delayedPreviewProviderForDroppingItem:(id)item previewProvider:(id)provider
{
  if (self->_topmostDropItem == item)
  {
    v7 = _Block_copy(provider);
    delayedPreviewProvider = self->_delayedPreviewProvider;
    self->_delayedPreviewProvider = v7;
  }
}

- (void)dropInteraction:(id)interaction item:(id)item willAnimateDropWithAnimator:(id)animator
{
  interactionCopy = interaction;
  itemCopy = item;
  animatorCopy = animator;
  topmostDropItem = self->_topmostDropItem;
  if (topmostDropItem)
  {
    v12 = topmostDropItem == itemCopy;
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
    [animatorCopy addCompletion:v14];
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

- (int64_t)_dropInteraction:(id)interaction dataOwnerForSession:(id)session
{
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  textDropDelegate = [WeakRetained textDropDelegate];

  if (textDropDelegate)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      _dropDataOwner = 0;
      goto LABEL_8;
    }

    v8 = [(UITextDragAssistant *)self _dropRequestWithRange:0 inSession:sessionCopy];
    v9 = objc_loadWeakRetained(&self->_view);
    _dropDataOwner = [textDropDelegate _textDroppableView:v9 dataOwnerForDrop:v8];

    goto LABEL_6;
  }

  v11 = objc_loadWeakRetained(&self->_view);
  _dropDataOwner = [v11 _dropDataOwner];

  if (!_dropDataOwner)
  {
    v8 = objc_loadWeakRetained(&self->_view);
    _dropDataOwner = [v8 _dataOwnerForPaste];
LABEL_6:
  }

LABEL_8:

  return _dropDataOwner;
}

- (id)_dropRequestWithRange:(id)range suggestedProposal:(id)proposal inSession:(id)session
{
  rangeCopy = range;
  proposalCopy = proposal;
  sessionCopy = session;
  v11 = [(UITextDragAssistant *)self _positionInSession:sessionCopy];
  if (!rangeCopy)
  {
    rangeCopy = [(UITextDragAssistant *)self _rangeInSession:sessionCopy];
  }

  v12 = [[UITextDropRequest alloc] initWithPosition:v11 range:rangeCopy inSession:sessionCopy];
  v13 = self->_currentDragSession;
  v14 = sessionCopy;
  localDragSession = [v14 localDragSession];
  if (localDragSession)
  {
    localDragSession2 = [v14 localDragSession];
    v17 = localDragSession2 == v13;
  }

  else
  {
    v17 = 0;
  }

  [(UITextDropRequest *)v12 setSameView:v17];
  if (proposalCopy)
  {
    [(UITextDropRequest *)v12 setSuggestedProposal:proposalCopy];
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

- (void)_updateDropCaretToRange:(id)range session:(id)session
{
  rangeCopy = range;
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  interactionAssistant = [WeakRetained interactionAssistant];
  [interactionAssistant setSelectionDisplayVisible:0];

  v10 = objc_loadWeakRetained(&self->_view);
  interactionAssistant2 = [v10 interactionAssistant];
  [interactionAssistant2 deactivateSelection];

  flags = self->_flags;
  if ((*&flags & 0x2000) != 0)
  {
    v18 = objc_loadWeakRetained(&self->_view);
    textDropDelegate = [v18 textDropDelegate];

    v20 = objc_loadWeakRetained(&self->_view);
    v13 = [textDropDelegate textDroppableView:v20 dropSession:sessionCopy willMoveCaretToRange:rangeCopy];

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
      textDropDelegate2 = [v14 textDropDelegate];

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __55__UITextDragAssistant__updateDropCaretToRange_session___block_invoke;
      v27[3] = &unk_1E70F6B40;
      v28 = textDropDelegate2;
      selfCopy = self;
      v30 = sessionCopy;
      v31 = rangeCopy;
      v16 = textDropDelegate2;
      v17 = _Block_copy(v27);

      goto LABEL_6;
    }
  }

  v17 = 0;
LABEL_6:
  dropCaret = self->_dropCaret;
  if (rangeCopy)
  {
    if (dropCaret)
    {
      [(_UITextDragCaretView *)dropCaret updateToRange:rangeCopy animations:0 completion:v17 animated:v13];
    }

    else
    {
      v23 = [_UITextDragCaretView alloc];
      v24 = objc_loadWeakRetained(&self->_view);
      v25 = [(_UITextDragCaretView *)v23 initWithTextInputView:v24];
      v26 = self->_dropCaret;
      self->_dropCaret = v25;

      [(_UITextDragCaretView *)self->_dropCaret setRangesExcludeSelection:0];
      [(_UITextDragCaretView *)self->_dropCaret insertAtRange:rangeCopy animations:0 completion:v17 animated:v13];
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

- (id)_suggestedProposalForRequest:(id)request
{
  requestCopy = request;
  flags = self->_flags;
  currentDropRange = self->_currentDropRange;
  currentDragSession = self->_currentDragSession;
  dropSession = [requestCopy dropSession];
  v9 = currentDragSession;
  localDragSession = [dropSession localDragSession];
  if (localDragSession)
  {
    v11 = localDragSession;
    localDragSession2 = [dropSession localDragSession];

    v13 = 2;
    if (localDragSession2 == v9 && (*&flags & 0x10000) == 0)
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
        v22 = requestCopy;
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
  _fontForCaretSelection = [WeakRetained _fontForCaretSelection];
  [_fontForCaretSelection lineHeight];
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
    selectedTextRange = [WeakRetained selectedTextRange];
    if (selectedTextRange)
    {
      v5 = selectedTextRange;
      v6 = objc_loadWeakRetained(&self->_view);
      selectedTextRange2 = [v6 selectedTextRange];
      v8 = [selectedTextRange2 isEqual:self->_preDropSelectionRange];

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

- (void)_prepareSameViewOperation:(unint64_t)operation forItems:(id)items fromRanges:(id)ranges toRange:(id)range
{
  rangesCopy = ranges;
  rangeCopy = range;
  if ((*&self->_flags & 2) != 0)
  {
    v12 = self->_geometry;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __77__UITextDragAssistant__prepareSameViewOperation_forItems_fromRanges_toRange___block_invoke;
    v23[3] = &unk_1E7124648;
    v23[4] = self;
    v11 = [rangesCopy sortedArrayUsingComparator:v23];

    v13 = [(UITextDraggableGeometry *)v12 attributedStringsForTextRanges:v11];
    WeakRetained = objc_loadWeakRetained(&self->_view);
    pasteDelegate = [WeakRetained pasteDelegate];

    if (pasteDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v16 = objc_loadWeakRetained(&self->_view);
      v17 = [pasteDelegate textPasteConfigurationSupporting:v16 combineItemAttributedStrings:v13 forRange:rangeCopy];
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
      [v19 setOperation:operation];
      [v19 setText:v18];
      [v19 setSourceRanges:v11];
      [v19 setTargetRange:rangeCopy];
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
    v11 = rangesCopy;
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

- (void)_performSameViewOperation:(id)operation
{
  if (operation && (*&self->_flags & 2) != 0)
  {
    operationCopy = operation;
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained droppingStarted];

    operation = [operationCopy operation];
    if (operation == 3 && (v7 = objc_loadWeakRetained(&self->_view), v8 = objc_opt_respondsToSelector(), v7, (v8 & 1) != 0))
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

- (void)_performDropToRange:(id)range inSession:(id)session
{
  rangeCopy = range;
  sessionCopy = session;
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

  items = [sessionCopy items];
  v13 = [(UITextPasteController *)dropPasteController beginDroppingItems:items toSelectedRange:rangeCopy progressSupport:self animated:1 delegate:self];
  objc_storeWeak(&self->_dropPasteSession, v13);
}

- (id)_textPasteSelectableRangeForResult:(id)result fromRange:(id)range
{
  rangeCopy = range;
  string = [result string];
  v8 = [string length];
  if (v8 < 1)
  {
    v21 = 0;
  }

  else
  {
    v9 = v8;
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v11 = 0;
    while ([whitespaceCharacterSet characterIsMember:{objc_msgSend(string, "characterAtIndex:", v11)}])
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

    while (!v13 && ([whitespaceCharacterSet characterIsMember:{objc_msgSend(string, "characterAtIndex:", v9)}] & 1) != 0);
    WeakRetained = objc_loadWeakRetained(&self->_view);
    start = [rangeCopy start];
    v16 = [WeakRetained positionFromPosition:start offset:v11];

    v17 = objc_loadWeakRetained(&self->_view);
    start2 = [rangeCopy start];
    v19 = [v17 positionFromPosition:start2 offset:v12];

    v20 = objc_loadWeakRetained(&self->_view);
    v21 = [v20 textRangeFromPosition:v16 toPosition:v19];
  }

  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = rangeCopy;
  }

  v23 = v22;

  return v22;
}

- (void)textPasteSessionWillHidePasteResult:(id)result
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

- (void)textPasteSessionDidRevealPasteResult:(id)result
{
  delayedPreviewProvider = self->_delayedPreviewProvider;
  self->_delayedPreviewProvider = 0;
}

- (void)textPasteSessionWillBeginPasting:(id)pasting
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained droppingStarted];
}

- (void)textPasteSessionDidEndPasting:(id)pasting
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained droppingFinished];
}

- (id)_closestPositionToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = objc_loadWeakRetained(&self->_view);
  WeakRetained = objc_loadWeakRetained(&self->_view);
  textInputView = [WeakRetained textInputView];
  [v6 convertPoint:textInputView toView:{x, y}];
  v9 = [v6 closestPositionToPoint:?];

  return v9;
}

- (UITextDraggableGeometry)geometry
{
  [(UITextDragAssistant *)self _applyOptionsToGeometry];
  geometry = self->_geometry;

  return geometry;
}

- (id)_previewForIrrelevantItemFromPreview:(id)preview
{
  previewCopy = preview;
  target = [previewCopy target];
  v5 = [UISnapshotView alloc];
  view = [previewCopy view];
  [view frame];
  v7 = [(UISnapshotView *)v5 initWithFrame:?];

  view2 = [previewCopy view];
  [(UISnapshotView *)v7 captureSnapshotOfView:view2 withSnapshotType:1];

  v9 = objc_opt_new();
  parameters = [previewCopy parameters];
  backgroundColor = [parameters backgroundColor];
  [v9 setBackgroundColor:backgroundColor];

  parameters2 = [previewCopy parameters];

  visiblePath = [parameters2 visiblePath];
  [v9 setVisiblePath:visiblePath];

  v14 = [[UITargetedDragPreview alloc] initWithView:v7 parameters:v9 target:target];

  return v14;
}

- (id)_previewForTopmostItem:(id)item
{
  WeakRetained = objc_loadWeakRetained(&self->_dropPasteSession);
  pasteResult = [WeakRetained pasteResult];

  if (pasteResult)
  {
    v6 = objc_loadWeakRetained(&self->_dropPasteSession);
    positionedPasteResult = [v6 positionedPasteResult];

    position = [positionedPasteResult position];
    v9 = objc_loadWeakRetained(&self->_view);
    endOfDocument = [v9 endOfDocument];
    v11 = [v9 comparePosition:position toPosition:endOfDocument];

    if (v11 == 1)
    {
      v12 = objc_loadWeakRetained(&self->_view);
      endOfDocument2 = [v12 endOfDocument];

      position = endOfDocument2;
    }

    if (position)
    {
      v14 = objc_loadWeakRetained(&self->_view);
      beginningOfDocument = [v14 beginningOfDocument];
      v16 = [v14 offsetFromPosition:beginningOfDocument toPosition:position];
    }

    else
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    string = [positionedPasteResult string];
    v19 = string;
    if (v16 == 0x7FFFFFFFFFFFFFFFLL || ![string length])
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
        selectedTextRange = [v26 selectedTextRange];

        v28 = objc_loadWeakRetained(&self->_view);
        v29 = [v28 textRangeFromPosition:position toPosition:position];
        v30 = objc_loadWeakRetained(&self->_view);
        [v30 setSelectedTextRange:v29];

        v31 = objc_loadWeakRetained(&self->_view);
        v32 = [v31 _attributedStringForInsertionOfAttributedString:v19];

        v33 = objc_loadWeakRetained(&self->_view);
        [v33 setSelectedTextRange:selectedTextRange];

        v19 = v32;
      }

      v34 = [v19 length];
      v35 = objc_loadWeakRetained(&self->_view);
      v36 = [v35 _textRangeFromNSRange:{v16, v34}];

      geometry = [(UITextDragAssistant *)self geometry];
      _containerViewForDropPreviews = [(UITextDragAssistant *)self _containerViewForDropPreviews];
      v17 = [geometry previewForDroppingTextInRange:v36 toPosition:position inContainerView:_containerViewForDropPreviews];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_shrinkingPreview:(id)preview toPosition:(id)position
{
  previewCopy = preview;
  positionCopy = position;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained caretRectForPosition:positionCopy];
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

  _containerViewForDropPreviews = [(UITextDragAssistant *)self _containerViewForDropPreviews];
  v18 = objc_loadWeakRetained(&self->_view);
  [v18 convertRect:_containerViewForDropPreviews toView:{v10, v12, v14, v16}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [previewCopy size];
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
  v31 = [(UIPreviewTarget *)v30 initWithContainer:_containerViewForDropPreviews center:&v34 transform:v20 + v24 * 0.5, v22 + v26 * 0.5];

  if (!v31)
  {
LABEL_7:
    v32 = previewCopy;
  }

  else
  {
    v32 = [previewCopy retargetedPreviewWithTarget:v31];
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