@interface UITextContextMenuInteraction
- (BOOL)_contextMenuInteraction:(id)a3 shouldAttemptToPresentConfiguration:(id)a4;
- (BOOL)_contextMenuInteraction:(id)a3 shouldBeDelayedByGestureRecognizer:(id)a4;
- (BOOL)_isExternalConfiguration:(id)a3;
- (BOOL)_shouldBridgeMenuControllerItems;
- (BOOL)_textInputIsSecure;
- (BOOL)dismissedByActionSelection;
- (BOOL)dismissedRecently;
- (BOOL)isDisplayingHandoffMenu;
- (BOOL)isDisplayingMenu;
- (CGPoint)locationInTextInputViewForLocationInView:(CGPoint)a3;
- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4;
- (UIContextMenuInteractionDelegate)externalContextMenuDelegate;
- (UITextContextMenuInteraction)init;
- (id)_contextMenuInteraction:(id)a3 accessoriesForMenuWithConfiguration:(id)a4;
- (id)_contextMenuInteraction:(id)a3 configuration:(id)a4 interactionEffectForTargetedPreview:(id)a5;
- (id)_contextMenuInteraction:(id)a3 overrideSuggestedActionsForConfiguration:(id)a4;
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)_currentInputUIMenuElements;
- (id)_editMenuForCurrentSelectionWithSuggestedActions:(id)a3 isEditMenu:(BOOL)a4;
- (id)_editMenuForSuggestedActions:(id)a3 rvItem:(id)a4 isEditMenu:(BOOL)a5;
- (id)_editMenuInteraction:(id)a3 preferredLayoutRectsForConfiguration:(id)a4;
- (id)_editMenuInteraction:(id)a3 titleViewForMenu:(id)a4 configuration:(id)a5;
- (id)_suggestedActionsForContextMenuInteraction:(id)a3 location:(CGPoint)a4;
- (id)_targetedPreviewForCurrentSelection;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (void)_contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4 completion:(id)a5;
- (void)_defaultContextMenuInteraction:(void *)a3 configurationForMenuAtLocation:(double)a4 completion:(double)a5;
- (void)_didPerformMenuLeaf:(id)a3 target:(id)a4;
- (void)_editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5 completionHandler:(id)a6;
- (void)_logDeprecatedMenuControllerUsageIfNeeded;
- (void)_presentEditMenuForInputUI;
- (void)_querySelectionCommandsForConfiguration:(id)a3 suggestedActions:(id)a4 completionHandler:(id)a5;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)didMoveToView:(id)a3;
- (void)dismissMenuForInputUI;
- (void)dismissSelectionCommandsWithReason:(int64_t)a3;
- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)editMenuInteraction:(id)a3 willPresentMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)prepareForContextMenuAtLocationInView:(CGPoint)a3 completion:(id)a4;
- (void)presentMenuForInputUI:(id)a3 preferredArrowDirection:(int64_t)a4;
- (void)presentSelectionCommandsWithConfiguration:(id)a3;
- (void)setExternalContextMenuDelegate:(id)a3;
- (void)updateVisibleMenuPosition;
- (void)willMoveToView:(id)a3;
@end

@implementation UITextContextMenuInteraction

- (UITextContextMenuInteraction)init
{
  v8.receiver = self;
  v8.super_class = UITextContextMenuInteraction;
  v2 = [(UITextInteraction *)&v8 init];
  if (v2)
  {
    v3 = [[UIContextMenuInteraction alloc] initWithDelegate:v2];
    contextMenuInteraction = v2->_contextMenuInteraction;
    v2->_contextMenuInteraction = v3;

    v5 = [[UIEditMenuInteraction alloc] initWithDelegate:v2];
    editMenuInteraction = v2->_editMenuInteraction;
    v2->_editMenuInteraction = v5;

    [(UIEditMenuInteraction *)v2->_editMenuInteraction setPresentsContextMenuAsSecondaryAction:0];
  }

  return v2;
}

- (BOOL)_shouldBridgeMenuControllerItems
{
  v3 = [(UITextInteraction *)self _textInput];
  v4 = objc_opt_respondsToSelector();

  v5 = [(UITextInteraction *)self _textInput];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 _implementsEditMenu];
  }

  else
  {
    v7 = objc_opt_respondsToSelector();
  }

  v8 = v7;

  return (v8 & 1) == 0;
}

- (BOOL)isDisplayingHandoffMenu
{
  v2 = [(UITextContextMenuInteraction *)self editMenuInteraction];
  v3 = [v2 _isDisplayingHandoffMenu];

  return v3;
}

- (void)updateVisibleMenuPosition
{
  v2 = [(UITextContextMenuInteraction *)self editMenuInteraction];
  [v2 updateVisibleMenuPositionAnimated:1];
}

- (void)dismissMenuForInputUI
{
  currentInputUIConfiguration = self->_currentInputUIConfiguration;
  if (currentInputUIConfiguration)
  {
    self->_currentInputUIConfiguration = 0;

    v4 = [(UITextContextMenuInteraction *)self editMenuInteraction];
    [v4 dismissMenu];

    if (self->_currentSelectionCommandsConfiguration)
    {
      v5 = [(UITextContextMenuInteraction *)self editMenuInteraction];
      [v5 presentEditMenuWithConfiguration:self->_currentSelectionCommandsConfiguration];
    }
  }
}

- (CGPoint)locationInTextInputViewForLocationInView:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UITextInteraction *)self view];
  v7 = [(UITextInteraction *)self _textInput];
  v8 = [v6 superview];
  [v8 convertPoint:v6 fromView:{x, y}];
  v10 = v9;
  v12 = v11;
  v13 = [v7 textInputView];
  [v8 convertPoint:v13 toView:{v10, v12}];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.y = v19;
  result.x = v18;
  return result;
}

- (void)prepareForContextMenuAtLocationInView:(CGPoint)a3 completion:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UITextInteraction *)self assistantDelegate];
  v9 = [(UITextInteraction *)self view];
  v10 = [(UITextInteraction *)self _textInput];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v10 _shouldShowEditMenu] & 1) == 0)
  {
    (*(v7 + 2))(v7, 0, 0);
    goto LABEL_33;
  }

  [(UITextContextMenuInteraction *)self locationInTextInputViewForLocationInView:x, y];
  v12 = v11;
  v14 = v13;
  v15 = [v10 conformsToProtocolCached:&unk_1F016C7B0];
  v16 = [v10 conformsToProtocolCached:&unk_1F016C810];
  if (+[UIKBInputDelegateManager isAsyncTextInputEnabled]&& ((v15 | v16) & 1) != 0)
  {
    if (v16)
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __81__UITextContextMenuInteraction_prepareForContextMenuAtLocationInView_completion___block_invoke;
      v37[3] = &unk_1E71250A0;
      v38 = v7;
      [v10 selectTextForEditMenuWithLocationInView:v37 completionHandler:{v12, v14}];
      v17 = v38;
LABEL_10:

      goto LABEL_33;
    }

    if (v15)
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __81__UITextContextMenuInteraction_prepareForContextMenuAtLocationInView_completion___block_invoke_2;
      v35[3] = &unk_1E71250A0;
      v36 = v7;
      [v10 selectTextForContextMenuWithLocationInView:v35 completionHandler:{v12, v14}];
      v17 = v36;
      goto LABEL_10;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v10 prepareSelectionForContextMenuWithLocationInView:v7 completionHandler:{v12, v14}];
    goto LABEL_33;
  }

  [v8 setFirstResponderIfNecessary];
  [v8 setSelectionHighlightMode:0];
  v18 = [v8 activeSelection];
  v19 = [v18 selectedRange];

  if (v19)
  {
    v20 = [v18 selectedRange];
    v21 = [v20 isEmpty];

    v22 = [v10 closestPositionToPoint:{v12, v14}];
    v23 = [v18 selectedRange];
    v24 = [v23 start];
    v25 = [v10 comparePosition:v22 toPosition:v24];
    if (v21)
    {
      v26 = v25 != 0;
    }

    else if (v25 == -1)
    {
      v26 = 1;
    }

    else
    {
      v34 = [v18 selectedRange];
      v33 = [v34 end];
      v26 = [v10 comparePosition:v33 toPosition:v22] == -1;
    }

    if ([(UITextContextMenuInteraction *)self _textInputIsSecure])
    {
      if (!v26)
      {
        v27 = 0;
        goto LABEL_30;
      }

      goto LABEL_23;
    }
  }

  else
  {
    if ([(UITextContextMenuInteraction *)self _textInputIsSecure])
    {
LABEL_23:
      [(UITextInteraction *)self _beginSelectionChange];
      goto LABEL_27;
    }

    LOBYTE(v26) = 1;
  }

  v27 = [UIRevealInteraction revealItemForTextInput:v10 locationInTextInputView:v12, v14];
  if (v26)
  {
    [(UITextInteraction *)self _beginSelectionChange];
    if (v27)
    {
      v28 = [v27 highlightRange];
      v30 = [v10 _textRangeFromNSRange:{v28, v29}];
      [v18 setSelectedRange:v30];

LABEL_28:
      [v18 commit];
      [(UITextInteraction *)self _endSelectionChange];
      [v8 notifyKeyboardSelectionChanged];
      goto LABEL_30;
    }

LABEL_27:
    [v18 alterSelection:1 granularity:{v12, v14}];
    v27 = 0;
    goto LABEL_28;
  }

LABEL_30:
  v31 = [v18 selectedRange];
  v32 = [v31 isEmpty];

  if (v32)
  {

    v27 = 0;
  }

  (*(v7 + 2))(v7, 1, v27);

LABEL_33:
}

void __81__UITextContextMenuInteraction_prepareForContextMenuAtLocationInView_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = createRVItem(a3, a4, a5);
  (*(*(a1 + 32) + 16))();
}

void __81__UITextContextMenuInteraction_prepareForContextMenuAtLocationInView_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = createRVItem(a3, a4, a5);
  (*(*(a1 + 32) + 16))();
}

- (BOOL)_textInputIsSecure
{
  v3 = [(UITextInteraction *)self _textInput];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(UITextInteraction *)self _textInput];
    v5 = [v4 isSecureTextEntry];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setExternalContextMenuDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_externalContextMenuDelegate, v4);
  p_externalDelegateImplements = &self->_externalDelegateImplements;
  self->_externalDelegateImplements.highlightPreviewForItem = objc_opt_respondsToSelector() & 1;
  self->_externalDelegateImplements.dismissalPreviewForItem = objc_opt_respondsToSelector() & 1;
  self->_externalDelegateImplements.willPerformPreviewAction = objc_opt_respondsToSelector() & 1;
  self->_externalDelegateImplements.willDisplay = objc_opt_respondsToSelector() & 1;
  self->_externalDelegateImplements.willEndForConfiguration = objc_opt_respondsToSelector() & 1;
  self->_externalDelegateImplements.previewForHighlighting_DEPR = objc_opt_respondsToSelector() & 1;
  self->_externalDelegateImplements.previewForDismissing_DEPR = objc_opt_respondsToSelector() & 1;
  self->_externalDelegateImplements.styleForMenu = objc_opt_respondsToSelector() & 1;
  self->_externalDelegateImplements.accessoriesForMenu = objc_opt_respondsToSelector() & 1;
  self->_externalDelegateImplements.shouldBeDelayedByGestureRecognizer = objc_opt_respondsToSelector() & 1;
  self->_externalDelegateImplements.asyncConfigurationForMenuAtLocation = objc_opt_respondsToSelector() & 1;
  self->_externalDelegateImplements.overrideSuggestedActions = objc_opt_respondsToSelector() & 1;
  self->_externalDelegateImplements.shouldAttemptToPresent = objc_opt_respondsToSelector() & 1;
  LOBYTE(self) = objc_opt_respondsToSelector();

  p_externalDelegateImplements->interactionEffectForTargetedPreview = self & 1;
}

- (void)willMoveToView:(id)a3
{
  v13.receiver = self;
  v13.super_class = UITextContextMenuInteraction;
  [(UITextInteraction *)&v13 willMoveToView:a3];
  v4 = [(UITextContextMenuInteraction *)self contextMenuInteraction];
  v5 = [v4 view];
  v6 = [(UITextContextMenuInteraction *)self contextMenuInteraction];
  [v5 removeInteraction:v6];

  v7 = [(UITextContextMenuInteraction *)self editMenuInteraction];

  if (v7)
  {
    v8 = [(UITextContextMenuInteraction *)self editMenuInteraction];
    v9 = [v8 view];
    v10 = [(UITextContextMenuInteraction *)self editMenuInteraction];
    [v9 removeInteraction:v10];

    v11 = [(UITextInteraction *)self assistantDelegate];
    v12 = [v11 _editMenuAssistant];
    [v12 setMenuInteraction:0];
  }
}

- (void)didMoveToView:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UITextContextMenuInteraction;
  [(UITextInteraction *)&v14 didMoveToView:v4];
  v5 = [(UITextContextMenuInteraction *)self contextMenuInteraction];
  [v4 addInteraction:v5];

  v6 = [(UITextContextMenuInteraction *)self editMenuInteraction];

  if (v4 && v6)
  {
    v7 = [(UITextContextMenuInteraction *)self editMenuInteraction];
    [v4 addInteraction:v7];

    v8 = [(UITextInteraction *)self assistantDelegate];
    v9 = [v8 _editMenuAssistant];
    [v9 setMenuInteraction:self];

    v10 = [(UITextContextMenuInteraction *)self contextMenuInteraction];
    [v10 _setProxySender:v4];

    v11 = [(UITextContextMenuInteraction *)self editMenuInteraction];
    [v11 _setProxySender:v4];

    v12 = [(UITextContextMenuInteraction *)self _shouldBridgeMenuControllerItems];
    v13 = [(UITextContextMenuInteraction *)self editMenuInteraction];
    [v13 set_includeMenuControllerItems:v12];
  }
}

- (void)_logDeprecatedMenuControllerUsageIfNeeded
{
  if (!dyld_program_sdk_at_least())
  {
    return;
  }

  v8 = +[UIMenuController sharedMenuController];
  v3 = [v8 menuItems];
  if (![v3 count])
  {

    goto LABEL_7;
  }

  v4 = [(UITextContextMenuInteraction *)self _shouldBridgeMenuControllerItems];

  if (!v4)
  {
    return;
  }

  v5 = [(UITextInteraction *)self _textInput];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = [(UITextInteraction *)self _textInput];
    [v8 _logWarningForMenuControllerUsage];
LABEL_7:

    return;
  }

  v7 = *(__UILogGetCategoryCachedImpl("Text", &_logDeprecatedMenuControllerUsageIfNeeded___s_category) + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Using UIMenuController to add items into text menus is deprecated. Please implement the UITextInput API editMenuForTextRange:suggestedActions: instead.", buf, 2u);
  }
}

- (void)_didPerformMenuLeaf:(id)a3 target:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(UITextInteraction *)self _textInput];
  }

  v9 = v8;
  if ([v10 attributes] & 8) != 0 && (objc_opt_respondsToSelector())
  {
    [v9 willFinishIgnoringCalloutBarFadeAfterPerformingAction];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    +[UIKBAnalyticsDispatcher keyboardAnalyticsDispatchWithSelector:withTrigger:](UIKBAnalyticsDispatcher, "keyboardAnalyticsDispatchWithSelector:withTrigger:", [v10 action], @"EditMenu");
  }
}

- (id)_editMenuForSuggestedActions:(id)a3 rvItem:(id)a4 isEditMenu:(BOOL)a5
{
  v5 = a5;
  v67[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v54 = a4;
  v55 = v8;
  v53 = [(UITextInteraction *)self _textInput];
  v9 = [(UITextInteraction *)self assistantDelegate];
  v10 = [v9 activeSelection];
  v50 = [v10 selectedRange];

  v51 = [(UITextContextMenuInteraction *)self _textInputIsSecure];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v53 editMenuForTextRange:v50 suggestedActions:v55];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 children];

      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v55;
LABEL_6:
  [(UITextContextMenuInteraction *)self _logDeprecatedMenuControllerUsageIfNeeded];
  v14 = [(UITextInteraction *)self _updatedAccessibilityTextMenuWithMenuElements:v13];
  v52 = v14;
  if (v14)
  {
    v15 = v14;

    v13 = v15;
  }

  v16 = v51;
  if (v54 != 0 && !v51)
  {
    v61 = 0;
    v62 = &v61;
    v63 = 0x2050000000;
    v17 = _MergedGlobals_3_19;
    v64 = _MergedGlobals_3_19;
    if (!_MergedGlobals_3_19)
    {
      v56 = MEMORY[0x1E69E9820];
      v57 = 3221225472;
      v58 = __getDDRevealBridgeClass_block_invoke;
      v59 = &unk_1E70F2F20;
      v60 = &v61;
      __getDDRevealBridgeClass_block_invoke(&v56);
      v17 = v62[3];
    }

    v18 = v17;
    _Block_object_dispose(&v61, 8);
    v49 = [(UITextInteraction *)self view];
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v19 = qword_1ED49A3A8;
    v64 = qword_1ED49A3A8;
    if (!qword_1ED49A3A8)
    {
      v56 = MEMORY[0x1E69E9820];
      v57 = 3221225472;
      v58 = __getkDataDetectorsSourceRectKeySymbolLoc_block_invoke_0;
      v59 = &unk_1E70F2F20;
      v60 = &v61;
      v20 = DataDetectorsUILibrary_0();
      v21 = dlsym(v20, "kDataDetectorsSourceRectKey");
      *(v60[1] + 24) = v21;
      qword_1ED49A3A8 = *(v60[1] + 24);
      v19 = v62[3];
    }

    _Block_object_dispose(&v61, 8);
    if (v19)
    {
      v48 = *v19;
      v65 = v48;
      v22 = MEMORY[0x1E696B098];
      v23 = [(UITextInteraction *)self assistantDelegate];
      v24 = [v23 _editMenuAssistant];
      [v24 _editMenuTargetRect];
      v25 = [v22 valueWithCGRect:?];
      v67[0] = v25;
      v61 = 0;
      v62 = &v61;
      v63 = 0x2020000000;
      v26 = qword_1ED49A3B0;
      v64 = qword_1ED49A3B0;
      if (!qword_1ED49A3B0)
      {
        v56 = MEMORY[0x1E69E9820];
        v57 = 3221225472;
        v58 = __getkDDContextNoRoomForSubtitlesKeySymbolLoc_block_invoke;
        v59 = &unk_1E70F2F20;
        v60 = &v61;
        v27 = DataDetectorsUILibrary_0();
        v28 = dlsym(v27, "kDDContextNoRoomForSubtitlesKey");
        *(v60[1] + 24) = v28;
        qword_1ED49A3B0 = *(v60[1] + 24);
        v26 = v62[3];
      }

      _Block_object_dispose(&v61, 8);
      if (v26)
      {
        v66 = *v26;
        v29 = MEMORY[0x1E696AD98];
        v30 = v66;
        v31 = v5;
        v32 = v30;
        v33 = [v29 numberWithBool:v31];
        v67[1] = v33;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:&v65 count:2];
        v35 = [v17 updatedTextInteractionMenuElements:v13 withRVItem:v54 view:v49 context:v34];

        v13 = v35;
        v16 = v51;
        goto LABEL_18;
      }

      v46 = [MEMORY[0x1E696AAA8] currentHandler];
      v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDDContextNoRoomForSubtitlesKey(void)"];
      [v46 handleFailureInFunction:v47 file:@"UITextContextMenuInteraction.m" lineNumber:60 description:{@"%s", dlerror()}];
    }

    else
    {
      v44 = [MEMORY[0x1E696AAA8] currentHandler];
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDataDetectorsSourceRectKey(void)"];
      [v44 handleFailureInFunction:v45 file:@"UITextContextMenuInteraction.m" lineNumber:59 description:{@"%s", dlerror()}];
    }

    __break(1u);
  }

LABEL_18:
  v36 = [UIKBAutoFillMenus updatedSystemAutoFillMenuWithMenuElements:v13 hideUnavailableItems:1 isSecureTextField:v16];
  v37 = v36;
  if (v36)
  {
    v38 = v36;

    v13 = v38;
  }

  v39 = [(UITextInteraction *)self assistantDelegate];
  v40 = [v39 updatedTextReplacementsMenuWithMenuElements:v13];

  if (v40)
  {
    v41 = v40;

    v13 = v41;
  }

  if (v12)
  {
    v42 = [v12 menuByReplacingChildren:v13];
  }

  else
  {
    v42 = [UIMenu menuWithChildren:v13];
  }

  return v42;
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"UITextContextMenuInteraction.m" lineNumber:433 description:@"This method should never be called. We use the async menuForConfiguration:suggestedActions: method instead."];

  return 0;
}

- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UITextInteraction *)self assistantDelegate];
  v9 = [v8 _editMenuAssistant];

  if (self->_currentInputUIConfiguration == v7)
  {
    v14 = +[UIKeyboardImpl activeInstance];
    [v14 overrideEditMenuTargetRectForConfiguration:v7];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = [(UITextInteraction *)self _textInput];
    v24 = [v23 textInputView];
    v25 = [v6 view];
    [v24 convertRect:v25 toView:{v16, v18, v20, v22}];
    v10 = v26;
    v11 = v27;
    v12 = v28;
    v13 = v29;
  }

  else
  {
    v10 = *MEMORY[0x1E695F050];
    v11 = *(MEMORY[0x1E695F050] + 8);
    v12 = *(MEMORY[0x1E695F050] + 16);
    v13 = *(MEMORY[0x1E695F050] + 24);
  }

  v48.origin.x = v10;
  v48.origin.y = v11;
  v48.size.width = v12;
  v48.size.height = v13;
  if (CGRectIsNull(v48))
  {
    v30 = [v9 _selectionView];
    [v9 _editMenuTargetRect];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = [v6 view];
    [v30 convertRect:v39 toView:{v32, v34, v36, v38}];
    v10 = v40;
    v11 = v41;
    v12 = v42;
    v13 = v43;
  }

  v44 = v10;
  v45 = v11;
  v46 = v12;
  v47 = v13;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

- (void)editMenuInteraction:(id)a3 willPresentMenuForConfiguration:(id)a4 animator:(id)a5
{
  v13 = a5;
  v6 = [(UITextContextMenuInteraction *)self contextMenuInteraction];
  v7 = [v6 _hasVisibleMenu];

  if (v7)
  {
    v8 = [(UITextContextMenuInteraction *)self contextMenuInteraction];
    [v8 dismissMenu];
  }

  v9 = [(UITextInteraction *)self _textInput];
  if (objc_opt_respondsToSelector())
  {
    [v9 systemWillPresentEditMenuWithAnimator:v13];
  }

  else
  {
    v10 = [(UITextInteraction *)self _textInput];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(UITextInteraction *)self _textInput];
      [v12 willPresentEditMenuWithAnimator:v13];
    }
  }
}

- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5
{
  v10 = a5;
  v6 = [(UITextInteraction *)self _textInput];
  if (objc_opt_respondsToSelector())
  {
    [v6 systemWillDismissEditMenuWithAnimator:v10];
  }

  else
  {
    v7 = [(UITextInteraction *)self _textInput];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(UITextInteraction *)self _textInput];
      [v9 willDismissEditMenuWithAnimator:v10];
    }
  }
}

- (id)_editMenuInteraction:(id)a3 titleViewForMenu:(id)a4 configuration:(id)a5
{
  v5 = [a5 identifier];
  v6 = +[UIKeyboardImpl activeInstance];
  v7 = [v6 keyboardMenuTipIdentifier];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    v9 = +[UIKeyboardImpl activeInstance];
    v10 = [v9 editMenuTipView];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5 completionHandler:(id)a6
{
  v9 = a6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __109__UITextContextMenuInteraction__editMenuInteraction_menuForConfiguration_suggestedActions_completionHandler___block_invoke;
  v11[3] = &unk_1E71250C8;
  v11[4] = self;
  v12 = v9;
  v10 = v9;
  [(UITextContextMenuInteraction *)self _querySelectionCommandsForConfiguration:a4 suggestedActions:a5 completionHandler:v11];
}

void __109__UITextContextMenuInteraction__editMenuInteraction_menuForConfiguration_suggestedActions_completionHandler___block_invoke(uint64_t a1, void *a2, int a3)
{
  v11 = a2;
  v5 = [*(a1 + 32) _currentInputUIMenuElements];
  if ([v5 count])
  {
    v6 = a3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v10 = v11;
  }

  else
  {
    v7 = [v11 children];
    v8 = [v5 arrayByAddingObjectsFromArray:v7];
    v9 = [v11 menuByReplacingChildren:v8];

    v10 = v9;
  }

  v12 = v10;
  (*(*(a1 + 40) + 16))();
}

- (void)_querySelectionCommandsForConfiguration:(id)a3 suggestedActions:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 identifier];
  v12 = [v11 isEqual:@"UITextContextMenuInteraction.TextSelectionMenu"];

  v13 = [(UITextInteraction *)self assistantDelegate];
  v14 = [v13 _editMenuAssistant];
  v15 = [v14 overrideMenu];

  if ((v12 & 1) == 0)
  {
    v18 = [UIMenu menuWithChildren:MEMORY[0x1E695E0F0]];
    goto LABEL_20;
  }

  v16 = [v15 children];
  v17 = [v16 count];

  if (v17)
  {
    v18 = v15;
    v19 = 0;
    if (!v18)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v20 = [(UITextInteraction *)self _textInput];
  v21 = [v20 conformsToProtocolCached:&unk_1F016C7B0];
  v22 = [v20 conformsToProtocolCached:&unk_1F016C810];
  if (+[UIKBInputDelegateManager isAsyncTextInputEnabled]&& ((v21 | v22) & 1) != 0)
  {
    if (v22)
    {
      v23 = objc_opt_new();
      [v23 setFlags:1];
      [v23 setSurroundingGranularity:3];
      [v23 setGranularityCount:1];
      v40 = 0;
      v41 = &v40;
      v42 = 0x2050000000;
      v24 = qword_1ED49A3B8;
      v43 = qword_1ED49A3B8;
      if (!qword_1ED49A3B8)
      {
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __getBETextDocumentRequestClass_block_invoke_0;
        v39[3] = &unk_1E70F2F20;
        v39[4] = &v40;
        __getBETextDocumentRequestClass_block_invoke_0(v39);
        v24 = v41[3];
      }

      v25 = v24;
      _Block_object_dispose(&v40, 8);
      v26 = [[v24 alloc] _initWithUIKitDocumentRequest:v23];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __107__UITextContextMenuInteraction__querySelectionCommandsForConfiguration_suggestedActions_completionHandler___block_invoke;
      v35[3] = &unk_1E71250F0;
      v35[4] = self;
      v36 = v9;
      v37 = v10;
      v38 = 1;
      [v20 requestDocumentContext:v26 completionHandler:v35];

      goto LABEL_17;
    }

    if (v21)
    {
      v23 = objc_opt_new();
      [v23 setFlags:1];
      [v23 setSurroundingGranularity:3];
      [v23 setGranularityCount:1];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __107__UITextContextMenuInteraction__querySelectionCommandsForConfiguration_suggestedActions_completionHandler___block_invoke_2;
      v31[3] = &unk_1E7125118;
      v31[4] = self;
      v32 = v9;
      v33 = v10;
      v34 = 1;
      [v20 requestDocumentContext:v23 completionHandler:v31];

LABEL_17:
    }

LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

  if (objc_opt_respondsToSelector())
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __107__UITextContextMenuInteraction__querySelectionCommandsForConfiguration_suggestedActions_completionHandler___block_invoke_3;
    v27[3] = &unk_1E7125140;
    v27[4] = self;
    v28 = v9;
    v29 = v10;
    v30 = 1;
    [v20 requestRVItemInSelectedRangeWithCompletionHandler:v27];

    goto LABEL_18;
  }

  v18 = [(UITextContextMenuInteraction *)self _editMenuForCurrentSelectionWithSuggestedActions:v9 isEditMenu:1];
LABEL_19:

LABEL_20:
  v19 = 1;
  if (v18)
  {
LABEL_21:
    (*(v10 + 2))(v10, v18, v19);
  }

LABEL_22:
}

void __107__UITextContextMenuInteraction__querySelectionCommandsForConfiguration_suggestedActions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = [a2 _uikitDocumentContext];
  v3 = [v8 fullText];
  v4 = [v8 selectedTextRange];
  v6 = createRVItem(v3, v4, v5);

  v7 = [*(a1 + 32) _editMenuForSuggestedActions:*(a1 + 40) rvItem:v6 isEditMenu:1];
  (*(*(a1 + 48) + 16))();
}

void __107__UITextContextMenuInteraction__querySelectionCommandsForConfiguration_suggestedActions_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 fullText];
  v5 = [v3 selectedTextRange];
  v7 = v6;

  v9 = createRVItem(v4, v5, v7);

  v8 = [*(a1 + 32) _editMenuForSuggestedActions:*(a1 + 40) rvItem:v9 isEditMenu:1];
  (*(*(a1 + 48) + 16))();
}

void __107__UITextContextMenuInteraction__querySelectionCommandsForConfiguration_suggestedActions_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _editMenuForSuggestedActions:*(a1 + 40) rvItem:a2 isEditMenu:1];
  (*(*(a1 + 48) + 16))();
}

- (id)_editMenuForCurrentSelectionWithSuggestedActions:(id)a3 isEditMenu:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(UITextContextMenuInteraction *)self _textInputIsSecure])
  {
    v7 = 0;
    goto LABEL_15;
  }

  v8 = [(UITextInteraction *)self _textInput];
  v9 = [(UITextInteraction *)self assistantDelegate];
  v10 = [v9 activeSelection];

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v14 = [v8 selectedTextRange];
    v15 = [v14 start];
    v16 = [v8 positionFromPosition:v15 offset:-500];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [v8 beginningOfDocument];
    }

    v19 = v18;

    v20 = [v14 end];
    v21 = [v8 positionFromPosition:v20 offset:500];
    v22 = v21;
    v36 = v4;
    v34 = v14;
    v35 = v10;
    v33 = v6;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = [v8 endOfDocument];
    }

    v24 = v23;

    v25 = [v8 textRangeFromPosition:v19 toPosition:v24];
    v11 = [v8 textInRange:v25];
    v26 = [v8 _selectedNSRange];
    v28 = v27;
    v29 = [v8 beginningOfDocument];
    v30 = [v8 offsetFromPosition:v29 toPosition:v19];

    v13 = v26 - v30;
    v12 = v28;

    v4 = v36;
    v10 = v35;
    v6 = v33;
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  v11 = [v8 selectedText];
  v12 = [v11 length];
  v13 = 0;
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_5:
  v7 = [objc_alloc(getRVItemClass()) initWithText:v11 selectedRange:{v13, v12}];
LABEL_14:

LABEL_15:
  v31 = [(UITextContextMenuInteraction *)self _editMenuForSuggestedActions:v6 rvItem:v7 isEditMenu:v4, v33];

  return v31;
}

- (id)_currentInputUIMenuElements
{
  currentSelectionCommandsConfiguration = self->_currentSelectionCommandsConfiguration;
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = v3;
  if (currentSelectionCommandsConfiguration)
  {
    [v3 stopDictationMenuElementsShowingTitle:1];
  }

  else
  {
    [v3 keyboardMenuElements];
  }
  v5 = ;

  return v5;
}

- (id)_editMenuInteraction:(id)a3 preferredLayoutRectsForConfiguration:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(UITextInteraction *)self assistantDelegate];
  v7 = [v6 _editMenuAssistant];

  v8 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = [v7 _preferredLayoutRectsForEditMenu];
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v34 + 1) + 8 * i) CGRectValue];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v22 = [v7 _selectionView];
        v23 = [v5 view];
        [v22 convertRect:v23 toView:{v15, v17, v19, v21}];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;

        v41.origin.x = v25;
        v41.origin.y = v27;
        v41.size.width = v29;
        v41.size.height = v31;
        if (!CGRectIsNull(v41))
        {
          v32 = [MEMORY[0x1E696B098] valueWithCGRect:{v25, v27, v29, v31}];
          [v8 addObject:v32];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)presentSelectionCommandsWithConfiguration:(id)a3
{
  objc_storeStrong(&self->_currentSelectionCommandsConfiguration, a3);
  v5 = a3;
  v6 = [(UITextContextMenuInteraction *)self editMenuInteraction];
  [v6 presentEditMenuWithConfiguration:v5];
}

- (void)dismissSelectionCommandsWithReason:(int64_t)a3
{
  currentSelectionCommandsConfiguration = self->_currentSelectionCommandsConfiguration;
  v6 = [(UITextContextMenuInteraction *)self contextMenuInteraction];
  if ([v6 _hasVisibleMenu])
  {
    v7 = a3 != 1 && !self->_isPresentingOrDismissingContextMenu;
  }

  else
  {
    v7 = 0;
  }

  if (currentSelectionCommandsConfiguration)
  {
    v8 = 0;
  }

  else
  {
    v8 = !v7;
  }

  if (v8)
  {
    return;
  }

  v9 = [(UITextContextMenuInteraction *)self editMenuInteraction];
  v14 = [v9 _selectedMenuLeaf];
  if (v14)
  {
  }

  else
  {
    v10 = [(UITextContextMenuInteraction *)self contextMenuInteraction];
    v14 = [v10 _selectedMenuLeaf];

    if (!v14)
    {
      v14 = 0;
      if (!currentSelectionCommandsConfiguration)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  if (([v14 attributes] & 8) == 0)
  {
    if (!currentSelectionCommandsConfiguration)
    {
LABEL_15:
      if (v7)
      {
        v13 = [(UITextContextMenuInteraction *)self contextMenuInteraction];
        [v13 dismissMenu];
      }

      if (self->_currentInputUIConfiguration)
      {
        [(UITextContextMenuInteraction *)self _presentEditMenuForInputUI];
      }

      goto LABEL_19;
    }

LABEL_14:
    v11 = [(UITextContextMenuInteraction *)self editMenuInteraction];
    [v11 dismissMenu];

    v12 = self->_currentSelectionCommandsConfiguration;
    self->_currentSelectionCommandsConfiguration = 0;

    goto LABEL_15;
  }

LABEL_19:
}

- (BOOL)dismissedRecently
{
  v2 = [(UITextContextMenuInteraction *)self editMenuInteraction];
  v3 = [v2 _dismissedRecently];

  return v3;
}

- (BOOL)isDisplayingMenu
{
  v2 = [(UITextContextMenuInteraction *)self editMenuInteraction];
  v3 = [v2 isDisplayingMenu];

  return v3;
}

- (BOOL)dismissedByActionSelection
{
  v2 = [(UITextContextMenuInteraction *)self editMenuInteraction];
  v3 = [v2 _dismissedByActionSelection];

  return v3;
}

- (void)presentMenuForInputUI:(id)a3 preferredArrowDirection:(int64_t)a4
{
  if (!self->_currentInputUIConfiguration)
  {
    v6 = a3;
    if ([(UITextContextMenuInteraction *)self isDisplayingMenu])
    {
      [(UITextContextMenuInteraction *)self dismissSelectionCommandsWithReason:0];
    }

    v7 = [(UITextInteraction *)self assistantDelegate];
    v15 = [v7 _editMenuAssistant];

    [v15 _editMenuTargetRect];
    v12 = [UIEditMenuConfiguration configurationWithIdentifier:v6 sourcePoint:v9 + v8 * 0.5, v11 + v10 * 0.5];

    v13 = [v15 _editMenuSourceWindow];
    [(UIEditMenuConfiguration *)v12 set_overrideSourceWindow:v13];

    [(UIEditMenuConfiguration *)v12 set_ignoresPassthroughInView:1];
    -[UIEditMenuConfiguration set_prefersMenuPresentationInView:](v12, "set_prefersMenuPresentationInView:", [v15 _editMenuPrefersPresentationInView]);
    [(UIEditMenuConfiguration *)v12 setPreferredArrowDirection:a4];
    currentInputUIConfiguration = self->_currentInputUIConfiguration;
    self->_currentInputUIConfiguration = v12;

    [(UITextContextMenuInteraction *)self _presentEditMenuForInputUI];
  }
}

- (void)_presentEditMenuForInputUI
{
  if (self->_currentInputUIConfiguration)
  {
    v3 = [(UITextContextMenuInteraction *)self editMenuInteraction];
    [v3 presentEditMenuWithConfiguration:self->_currentInputUIConfiguration];
  }
}

- (BOOL)_isExternalConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(UITextContextMenuInteraction *)self externallyManagedConfiguration];
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v7 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (v6 && v7)
    {
      v9 = [v6 isEqual:v7];
    }
  }

  return v9;
}

- (id)_targetedPreviewForCurrentSelection
{
  v3 = [(UITextInteraction *)self assistantDelegate];
  v4 = [v3 _editMenuAssistant];
  v5 = [v4 _selectionView];

  v6 = [v5 window];

  if (v6)
  {
    v7 = [(UITextInteraction *)self assistantDelegate];
    v8 = [v7 _editMenuAssistant];
    [v8 _editMenuTargetRect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = [UIView alloc];
    v18 = [(UIView *)v17 initWithFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v14, v16];
    v19 = [[UIPreviewTarget alloc] initWithContainer:v5 center:v10 + v14 * 0.5, v12 + v16 * 0.5];
    v20 = [UITargetedPreview alloc];
    v21 = objc_opt_new();
    v6 = [(UITargetedPreview *)v20 initWithView:v18 parameters:v21 target:v19];
  }

  return v6;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"UITextContextMenuInteraction.m" lineNumber:809 description:@"This method should never be called. We use the async configurationForMenuAtLocation: method instead."];

  return 0;
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(UITextContextMenuInteraction *)self _isExternalConfiguration:v9])
  {
    if (self->_externalDelegateImplements.highlightPreviewForItem)
    {
      v11 = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
      v12 = [v11 contextMenuInteraction:v8 configuration:v9 highlightPreviewForItemWithIdentifier:v10];
      goto LABEL_6;
    }

    if (self->_externalDelegateImplements.previewForHighlighting_DEPR)
    {
      v11 = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
      v12 = [v11 contextMenuInteraction:v8 previewForHighlightingMenuWithConfiguration:v9];
LABEL_6:
      v13 = v12;

      if (v13)
      {
        goto LABEL_8;
      }
    }
  }

  v13 = [(UITextContextMenuInteraction *)self _targetedPreviewForCurrentSelection];
LABEL_8:

  return v13;
}

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 dismissalPreviewForItemWithIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(UITextContextMenuInteraction *)self _isExternalConfiguration:v9])
  {
    if (self->_externalDelegateImplements.dismissalPreviewForItem)
    {
      v11 = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
      v12 = [v11 contextMenuInteraction:v8 configuration:v9 dismissalPreviewForItemWithIdentifier:v10];
      goto LABEL_6;
    }

    if (self->_externalDelegateImplements.previewForDismissing_DEPR)
    {
      v11 = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
      v12 = [v11 contextMenuInteraction:v8 previewForDismissingMenuWithConfiguration:v9];
LABEL_6:
      v13 = v12;

      if (v13)
      {
        goto LABEL_8;
      }
    }
  }

  v13 = [(UITextContextMenuInteraction *)self _targetedPreviewForCurrentSelection];
LABEL_8:

  return v13;
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (self->_externalDelegateImplements.willPerformPreviewAction && [(UITextContextMenuInteraction *)self _isExternalConfiguration:v8])
  {
    v10 = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
    [v10 contextMenuInteraction:v11 willPerformPreviewActionForMenuWithConfiguration:v8 animator:v9];
  }
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_externalDelegateImplements.willDisplay && [(UITextContextMenuInteraction *)self _isExternalConfiguration:v9])
  {
    v11 = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
    [v11 contextMenuInteraction:v8 willDisplayMenuForConfiguration:v9 animator:v10];
  }

  v12 = [(UITextContextMenuInteraction *)self editMenuInteraction];
  v13 = [v12 isDisplayingMenu];

  if (v13)
  {
    if (v10)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __96__UITextContextMenuInteraction_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke;
      v16[3] = &unk_1E70F3590;
      v16[4] = self;
      [v10 addAnimations:v16];
    }

    else
    {
      v14 = [(UITextContextMenuInteraction *)self editMenuInteraction];
      [v14 dismissMenu];
    }
  }

  self->_isPresentingOrDismissingContextMenu = 1;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96__UITextContextMenuInteraction_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke_2;
  v15[3] = &unk_1E70F3590;
  v15[4] = self;
  [v10 addCompletion:v15];
}

void __96__UITextContextMenuInteraction_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) editMenuInteraction];
  [v1 dismissMenu];
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_externalDelegateImplements.willEndForConfiguration && [(UITextContextMenuInteraction *)self _isExternalConfiguration:v9])
  {
    v11 = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
    [v11 contextMenuInteraction:v8 willEndForConfiguration:v9 animator:v10];

    if (v10)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __88__UITextContextMenuInteraction_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
      v14[3] = &unk_1E70F3590;
      v14[4] = self;
      [v10 addAnimations:v14];
    }

    else
    {
      externallyManagedConfiguration = self->_externallyManagedConfiguration;
      self->_externallyManagedConfiguration = 0;
    }
  }

  self->_isPresentingOrDismissingContextMenu = 1;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__UITextContextMenuInteraction_contextMenuInteraction_willEndForConfiguration_animator___block_invoke_2;
  v13[3] = &unk_1E70F3590;
  v13[4] = self;
  [v10 addCompletion:v13];
}

void __88__UITextContextMenuInteraction_contextMenuInteraction_willEndForConfiguration_animator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 176);
  *(v1 + 176) = 0;
}

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_externalDelegateImplements.styleForMenu && [(UITextContextMenuInteraction *)self _isExternalConfiguration:v7])
  {
    v8 = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
    v9 = [v8 _contextMenuInteraction:v6 styleForMenuWithConfiguration:v7];
  }

  else
  {
    v9 = +[_UIContextMenuStyle defaultStyle];
    v8 = [v6 view];
    [v9 set_parentTraitEnvironmentForUserInterfaceStyle:v8];
  }

  return v9;
}

- (id)_contextMenuInteraction:(id)a3 accessoriesForMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_externalDelegateImplements.accessoriesForMenu && [(UITextContextMenuInteraction *)self _isExternalConfiguration:v7])
  {
    v8 = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
    v9 = [v8 _contextMenuInteraction:v6 accessoriesForMenuWithConfiguration:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_contextMenuInteraction:(id)a3 shouldBeDelayedByGestureRecognizer:(id)a4
{
  if (!self->_externalDelegateImplements.shouldBeDelayedByGestureRecognizer)
  {
    return 0;
  }

  v6 = a4;
  v7 = a3;
  v8 = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
  v9 = [v8 _contextMenuInteraction:v7 shouldBeDelayedByGestureRecognizer:v6];

  return v9;
}

- (id)_contextMenuInteraction:(id)a3 overrideSuggestedActionsForConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_externalDelegateImplements.overrideSuggestedActions && [(UITextContextMenuInteraction *)self _isExternalConfiguration:v7])
  {
    v8 = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
    v9 = [v8 _contextMenuInteraction:v6 overrideSuggestedActionsForConfiguration:v7];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (void)_contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4 completion:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__UITextContextMenuInteraction__contextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke;
  aBlock[3] = &unk_1E7125168;
  aBlock[4] = self;
  v11 = v10;
  v22 = v11;
  v12 = v9;
  v21 = v12;
  v23 = x;
  v24 = y;
  v13 = _Block_copy(aBlock);
  asyncConfigurationForMenuAtLocation = self->_externalDelegateImplements.asyncConfigurationForMenuAtLocation;
  v15 = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
  v16 = v15;
  if (asyncConfigurationForMenuAtLocation)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __98__UITextContextMenuInteraction__contextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke_3;
    v18[3] = &unk_1E7125190;
    v18[4] = self;
    v19 = v13;
    [v16 _contextMenuInteraction:v12 configurationForMenuAtLocation:v18 completion:{x, y}];
  }

  else
  {

    if (v16)
    {
      v17 = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
      v16 = [v17 contextMenuInteraction:v12 configurationForMenuAtLocation:{x, y}];

      objc_storeStrong(&self->_externallyManagedConfiguration, v16);
    }

    (*(v13 + 2))(v13, v16);
  }
}

void __98__UITextContextMenuInteraction__contextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __98__UITextContextMenuInteraction__contextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke_2;
    v9[3] = &unk_1E7125168;
    v9[4] = *(a1 + 32);
    v11 = *(a1 + 48);
    v10 = *(a1 + 40);
    v12 = *(a1 + 56);
    [a2 _prepareWithCompletion:v9];
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);

    [(UITextContextMenuInteraction *)v4 _defaultContextMenuInteraction:v5 configurationForMenuAtLocation:v6 completion:v7, v8];
  }
}

void __98__UITextContextMenuInteraction__contextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 176), a2);
  if (v4)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [(UITextContextMenuInteraction *)*(a1 + 32) _defaultContextMenuInteraction:*(a1 + 48) configurationForMenuAtLocation:*(a1 + 56) completion:*(a1 + 64)];
  }
}

- (void)_defaultContextMenuInteraction:(void *)a3 configurationForMenuAtLocation:(double)a4 completion:(double)a5
{
  v9 = a3;
  v10 = v9;
  if (a1)
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __105__UITextContextMenuInteraction__defaultContextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke;
    v25 = &unk_1E71251B8;
    v26 = v9;
    v11 = a2;
    v12 = &v22;
    if ([v11 menuAppearance] == 2)
    {
      if ([v11 _inputPrecision] == 2)
      {
        v27 = MEMORY[0x1E69E9820];
        v28 = 3221225472;
        v29 = __102__UITextContextMenuInteraction__textContextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke;
        v30 = &unk_1E7125208;
        v31 = a1;
        v32 = v11;
        v34 = a4;
        v35 = a5;
        v33 = v12;
        [a1 prepareForContextMenuAtLocationInView:&v27 completion:{a4, a5}];
      }

      else
      {
        v13 = [a1 assistantDelegate];
        v14 = [v13 _editMenuAssistant];
        [v14 _editMenuTargetRect];
        v17 = v16 + v15 * 0.5;
        v20 = v19 + v18 * 0.5;

        v27 = MEMORY[0x1E69E9820];
        v28 = 3221225472;
        v29 = __102__UITextContextMenuInteraction__textContextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke_3;
        v30 = &unk_1E7125230;
        v31 = a1;
        v32 = v11;
        v33 = *&v17;
        v34 = v20;
        v21 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:&v27];
        (v24)(v12, v21);
      }
    }

    else
    {
      (v24)(v12, 0);
    }
  }
}

void __98__UITextContextMenuInteraction__contextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 176), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

- (BOOL)_contextMenuInteraction:(id)a3 shouldAttemptToPresentConfiguration:(id)a4
{
  if (!self->_externalDelegateImplements.shouldAttemptToPresent)
  {
    return 1;
  }

  v6 = a4;
  v7 = a3;
  v8 = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
  v9 = [v8 _contextMenuInteraction:v7 shouldAttemptToPresentConfiguration:v6];

  return v9;
}

- (id)_contextMenuInteraction:(id)a3 configuration:(id)a4 interactionEffectForTargetedPreview:(id)a5
{
  if (self->_externalDelegateImplements.interactionEffectForTargetedPreview)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v11 = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
    v12 = [v11 _contextMenuInteraction:v10 configuration:v9 interactionEffectForTargetedPreview:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __102__UITextContextMenuInteraction__textContextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) assistantDelegate];
  v7 = [v6 grabberSuppressionAssertion];
  if (!v7)
  {
    v8 = [v6 activeSelection];
    v9 = [v8 selectedRange];
    v10 = [v9 isEmpty];

    if (v10)
    {
      goto LABEL_5;
    }

    v7 = [v6 obtainSelectionGrabberSuppressionAssertion];
    [v6 setGrabberSuppressionAssertion:v7];
  }

LABEL_5:
  if (a2)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __102__UITextContextMenuInteraction__textContextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke_2;
    v13[3] = &unk_1E71251E0;
    v11 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v11;
    v16 = *(a1 + 56);
    v15 = v5;
    v12 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v13];
  }

  else
  {
    v12 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

id __102__UITextContextMenuInteraction__textContextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _suggestedActionsForContextMenuInteraction:*(a1 + 40) location:{*(a1 + 56), *(a1 + 64)}];
  v3 = [*(a1 + 32) _editMenuForSuggestedActions:v2 rvItem:*(a1 + 48) isEditMenu:0];

  return v3;
}

id __102__UITextContextMenuInteraction__textContextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _suggestedActionsForContextMenuInteraction:*(a1 + 40) location:{*(a1 + 48), *(a1 + 56)}];
  v3 = [*(a1 + 32) _editMenuForCurrentSelectionWithSuggestedActions:v2 isEditMenu:0];

  return v3;
}

- (id)_suggestedActionsForContextMenuInteraction:(id)a3 location:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [v7 view];
  v9 = [v7 view];

  v10 = [(UITextContextMenuInteraction *)self editMenuInteraction];
  v11 = +[_UIEditMenuProvider menuElementsFromResponderChain:atLocation:inCoordinateSpace:includeMenuControllerItems:](_UIEditMenuProvider, "menuElementsFromResponderChain:atLocation:inCoordinateSpace:includeMenuControllerItems:", v8, v9, [v10 _includeMenuControllerItems], x, y);

  return v11;
}

- (UIContextMenuInteractionDelegate)externalContextMenuDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_externalContextMenuDelegate);

  return WeakRetained;
}

@end