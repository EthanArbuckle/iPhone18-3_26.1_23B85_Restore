@interface UITextContextMenuInteraction
- (BOOL)_contextMenuInteraction:(id)interaction shouldAttemptToPresentConfiguration:(id)configuration;
- (BOOL)_contextMenuInteraction:(id)interaction shouldBeDelayedByGestureRecognizer:(id)recognizer;
- (BOOL)_isExternalConfiguration:(id)configuration;
- (BOOL)_shouldBridgeMenuControllerItems;
- (BOOL)_textInputIsSecure;
- (BOOL)dismissedByActionSelection;
- (BOOL)dismissedRecently;
- (BOOL)isDisplayingHandoffMenu;
- (BOOL)isDisplayingMenu;
- (CGPoint)locationInTextInputViewForLocationInView:(CGPoint)view;
- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration;
- (UIContextMenuInteractionDelegate)externalContextMenuDelegate;
- (UITextContextMenuInteraction)init;
- (id)_contextMenuInteraction:(id)interaction accessoriesForMenuWithConfiguration:(id)configuration;
- (id)_contextMenuInteraction:(id)interaction configuration:(id)configuration interactionEffectForTargetedPreview:(id)preview;
- (id)_contextMenuInteraction:(id)interaction overrideSuggestedActionsForConfiguration:(id)configuration;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)_currentInputUIMenuElements;
- (id)_editMenuForCurrentSelectionWithSuggestedActions:(id)actions isEditMenu:(BOOL)menu;
- (id)_editMenuForSuggestedActions:(id)actions rvItem:(id)item isEditMenu:(BOOL)menu;
- (id)_editMenuInteraction:(id)interaction preferredLayoutRectsForConfiguration:(id)configuration;
- (id)_editMenuInteraction:(id)interaction titleViewForMenu:(id)menu configuration:(id)configuration;
- (id)_suggestedActionsForContextMenuInteraction:(id)interaction location:(CGPoint)location;
- (id)_targetedPreviewForCurrentSelection;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (void)_contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location completion:(id)completion;
- (void)_defaultContextMenuInteraction:(void *)interaction configurationForMenuAtLocation:(double)location completion:(double)completion;
- (void)_didPerformMenuLeaf:(id)leaf target:(id)target;
- (void)_editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions completionHandler:(id)handler;
- (void)_logDeprecatedMenuControllerUsageIfNeeded;
- (void)_presentEditMenuForInputUI;
- (void)_querySelectionCommandsForConfiguration:(id)configuration suggestedActions:(id)actions completionHandler:(id)handler;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)didMoveToView:(id)view;
- (void)dismissMenuForInputUI;
- (void)dismissSelectionCommandsWithReason:(int64_t)reason;
- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)editMenuInteraction:(id)interaction willPresentMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)prepareForContextMenuAtLocationInView:(CGPoint)view completion:(id)completion;
- (void)presentMenuForInputUI:(id)i preferredArrowDirection:(int64_t)direction;
- (void)presentSelectionCommandsWithConfiguration:(id)configuration;
- (void)setExternalContextMenuDelegate:(id)delegate;
- (void)updateVisibleMenuPosition;
- (void)willMoveToView:(id)view;
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
  _textInput = [(UITextInteraction *)self _textInput];
  v4 = objc_opt_respondsToSelector();

  _textInput2 = [(UITextInteraction *)self _textInput];
  v6 = _textInput2;
  if (v4)
  {
    _implementsEditMenu = [_textInput2 _implementsEditMenu];
  }

  else
  {
    _implementsEditMenu = objc_opt_respondsToSelector();
  }

  v8 = _implementsEditMenu;

  return (v8 & 1) == 0;
}

- (BOOL)isDisplayingHandoffMenu
{
  editMenuInteraction = [(UITextContextMenuInteraction *)self editMenuInteraction];
  _isDisplayingHandoffMenu = [editMenuInteraction _isDisplayingHandoffMenu];

  return _isDisplayingHandoffMenu;
}

- (void)updateVisibleMenuPosition
{
  editMenuInteraction = [(UITextContextMenuInteraction *)self editMenuInteraction];
  [editMenuInteraction updateVisibleMenuPositionAnimated:1];
}

- (void)dismissMenuForInputUI
{
  currentInputUIConfiguration = self->_currentInputUIConfiguration;
  if (currentInputUIConfiguration)
  {
    self->_currentInputUIConfiguration = 0;

    editMenuInteraction = [(UITextContextMenuInteraction *)self editMenuInteraction];
    [editMenuInteraction dismissMenu];

    if (self->_currentSelectionCommandsConfiguration)
    {
      editMenuInteraction2 = [(UITextContextMenuInteraction *)self editMenuInteraction];
      [editMenuInteraction2 presentEditMenuWithConfiguration:self->_currentSelectionCommandsConfiguration];
    }
  }
}

- (CGPoint)locationInTextInputViewForLocationInView:(CGPoint)view
{
  y = view.y;
  x = view.x;
  view = [(UITextInteraction *)self view];
  _textInput = [(UITextInteraction *)self _textInput];
  superview = [view superview];
  [superview convertPoint:view fromView:{x, y}];
  v10 = v9;
  v12 = v11;
  textInputView = [_textInput textInputView];
  [superview convertPoint:textInputView toView:{v10, v12}];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.y = v19;
  result.x = v18;
  return result;
}

- (void)prepareForContextMenuAtLocationInView:(CGPoint)view completion:(id)completion
{
  y = view.y;
  x = view.x;
  completionCopy = completion;
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  view = [(UITextInteraction *)self view];
  _textInput = [(UITextInteraction *)self _textInput];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([_textInput _shouldShowEditMenu] & 1) == 0)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
    goto LABEL_33;
  }

  [(UITextContextMenuInteraction *)self locationInTextInputViewForLocationInView:x, y];
  v12 = v11;
  v14 = v13;
  v15 = [_textInput conformsToProtocolCached:&unk_1F016C7B0];
  v16 = [_textInput conformsToProtocolCached:&unk_1F016C810];
  if (+[UIKBInputDelegateManager isAsyncTextInputEnabled]&& ((v15 | v16) & 1) != 0)
  {
    if (v16)
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __81__UITextContextMenuInteraction_prepareForContextMenuAtLocationInView_completion___block_invoke;
      v37[3] = &unk_1E71250A0;
      v38 = completionCopy;
      [_textInput selectTextForEditMenuWithLocationInView:v37 completionHandler:{v12, v14}];
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
      v36 = completionCopy;
      [_textInput selectTextForContextMenuWithLocationInView:v35 completionHandler:{v12, v14}];
      v17 = v36;
      goto LABEL_10;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [_textInput prepareSelectionForContextMenuWithLocationInView:completionCopy completionHandler:{v12, v14}];
    goto LABEL_33;
  }

  [assistantDelegate setFirstResponderIfNecessary];
  [assistantDelegate setSelectionHighlightMode:0];
  activeSelection = [assistantDelegate activeSelection];
  selectedRange = [activeSelection selectedRange];

  if (selectedRange)
  {
    selectedRange2 = [activeSelection selectedRange];
    isEmpty = [selectedRange2 isEmpty];

    v22 = [_textInput closestPositionToPoint:{v12, v14}];
    selectedRange3 = [activeSelection selectedRange];
    start = [selectedRange3 start];
    v25 = [_textInput comparePosition:v22 toPosition:start];
    if (isEmpty)
    {
      v26 = v25 != 0;
    }

    else if (v25 == -1)
    {
      v26 = 1;
    }

    else
    {
      selectedRange4 = [activeSelection selectedRange];
      v33 = [selectedRange4 end];
      v26 = [_textInput comparePosition:v33 toPosition:v22] == -1;
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

  v27 = [UIRevealInteraction revealItemForTextInput:_textInput locationInTextInputView:v12, v14];
  if (v26)
  {
    [(UITextInteraction *)self _beginSelectionChange];
    if (v27)
    {
      highlightRange = [v27 highlightRange];
      v30 = [_textInput _textRangeFromNSRange:{highlightRange, v29}];
      [activeSelection setSelectedRange:v30];

LABEL_28:
      [activeSelection commit];
      [(UITextInteraction *)self _endSelectionChange];
      [assistantDelegate notifyKeyboardSelectionChanged];
      goto LABEL_30;
    }

LABEL_27:
    [activeSelection alterSelection:1 granularity:{v12, v14}];
    v27 = 0;
    goto LABEL_28;
  }

LABEL_30:
  selectedRange5 = [activeSelection selectedRange];
  isEmpty2 = [selectedRange5 isEmpty];

  if (isEmpty2)
  {

    v27 = 0;
  }

  (*(completionCopy + 2))(completionCopy, 1, v27);

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
  _textInput = [(UITextInteraction *)self _textInput];
  if (objc_opt_respondsToSelector())
  {
    _textInput2 = [(UITextInteraction *)self _textInput];
    isSecureTextEntry = [_textInput2 isSecureTextEntry];
  }

  else
  {
    isSecureTextEntry = 0;
  }

  return isSecureTextEntry;
}

- (void)setExternalContextMenuDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_externalContextMenuDelegate, delegateCopy);
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

- (void)willMoveToView:(id)view
{
  v13.receiver = self;
  v13.super_class = UITextContextMenuInteraction;
  [(UITextInteraction *)&v13 willMoveToView:view];
  contextMenuInteraction = [(UITextContextMenuInteraction *)self contextMenuInteraction];
  view = [contextMenuInteraction view];
  contextMenuInteraction2 = [(UITextContextMenuInteraction *)self contextMenuInteraction];
  [view removeInteraction:contextMenuInteraction2];

  editMenuInteraction = [(UITextContextMenuInteraction *)self editMenuInteraction];

  if (editMenuInteraction)
  {
    editMenuInteraction2 = [(UITextContextMenuInteraction *)self editMenuInteraction];
    view2 = [editMenuInteraction2 view];
    editMenuInteraction3 = [(UITextContextMenuInteraction *)self editMenuInteraction];
    [view2 removeInteraction:editMenuInteraction3];

    assistantDelegate = [(UITextInteraction *)self assistantDelegate];
    _editMenuAssistant = [assistantDelegate _editMenuAssistant];
    [_editMenuAssistant setMenuInteraction:0];
  }
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = UITextContextMenuInteraction;
  [(UITextInteraction *)&v14 didMoveToView:viewCopy];
  contextMenuInteraction = [(UITextContextMenuInteraction *)self contextMenuInteraction];
  [viewCopy addInteraction:contextMenuInteraction];

  editMenuInteraction = [(UITextContextMenuInteraction *)self editMenuInteraction];

  if (viewCopy && editMenuInteraction)
  {
    editMenuInteraction2 = [(UITextContextMenuInteraction *)self editMenuInteraction];
    [viewCopy addInteraction:editMenuInteraction2];

    assistantDelegate = [(UITextInteraction *)self assistantDelegate];
    _editMenuAssistant = [assistantDelegate _editMenuAssistant];
    [_editMenuAssistant setMenuInteraction:self];

    contextMenuInteraction2 = [(UITextContextMenuInteraction *)self contextMenuInteraction];
    [contextMenuInteraction2 _setProxySender:viewCopy];

    editMenuInteraction3 = [(UITextContextMenuInteraction *)self editMenuInteraction];
    [editMenuInteraction3 _setProxySender:viewCopy];

    _shouldBridgeMenuControllerItems = [(UITextContextMenuInteraction *)self _shouldBridgeMenuControllerItems];
    editMenuInteraction4 = [(UITextContextMenuInteraction *)self editMenuInteraction];
    [editMenuInteraction4 set_includeMenuControllerItems:_shouldBridgeMenuControllerItems];
  }
}

- (void)_logDeprecatedMenuControllerUsageIfNeeded
{
  if (!dyld_program_sdk_at_least())
  {
    return;
  }

  _textInput2 = +[UIMenuController sharedMenuController];
  menuItems = [_textInput2 menuItems];
  if (![menuItems count])
  {

    goto LABEL_7;
  }

  _shouldBridgeMenuControllerItems = [(UITextContextMenuInteraction *)self _shouldBridgeMenuControllerItems];

  if (!_shouldBridgeMenuControllerItems)
  {
    return;
  }

  _textInput = [(UITextInteraction *)self _textInput];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _textInput2 = [(UITextInteraction *)self _textInput];
    [_textInput2 _logWarningForMenuControllerUsage];
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

- (void)_didPerformMenuLeaf:(id)leaf target:(id)target
{
  leafCopy = leaf;
  targetCopy = target;
  v7 = targetCopy;
  if (targetCopy)
  {
    _textInput = targetCopy;
  }

  else
  {
    _textInput = [(UITextInteraction *)self _textInput];
  }

  v9 = _textInput;
  if ([leafCopy attributes] & 8) != 0 && (objc_opt_respondsToSelector())
  {
    [v9 willFinishIgnoringCalloutBarFadeAfterPerformingAction];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    +[UIKBAnalyticsDispatcher keyboardAnalyticsDispatchWithSelector:withTrigger:](UIKBAnalyticsDispatcher, "keyboardAnalyticsDispatchWithSelector:withTrigger:", [leafCopy action], @"EditMenu");
  }
}

- (id)_editMenuForSuggestedActions:(id)actions rvItem:(id)item isEditMenu:(BOOL)menu
{
  menuCopy = menu;
  v67[2] = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  itemCopy = item;
  v55 = actionsCopy;
  _textInput = [(UITextInteraction *)self _textInput];
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  activeSelection = [assistantDelegate activeSelection];
  selectedRange = [activeSelection selectedRange];

  _textInputIsSecure = [(UITextContextMenuInteraction *)self _textInputIsSecure];
  if (objc_opt_respondsToSelector())
  {
    v11 = [_textInput editMenuForTextRange:selectedRange suggestedActions:v55];
    v12 = v11;
    if (v11)
    {
      children = [v11 children];

      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
  }

  children = v55;
LABEL_6:
  [(UITextContextMenuInteraction *)self _logDeprecatedMenuControllerUsageIfNeeded];
  v14 = [(UITextInteraction *)self _updatedAccessibilityTextMenuWithMenuElements:children];
  v52 = v14;
  if (v14)
  {
    v15 = v14;

    children = v15;
  }

  v16 = _textInputIsSecure;
  if (itemCopy != 0 && !_textInputIsSecure)
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
    view = [(UITextInteraction *)self view];
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
      assistantDelegate2 = [(UITextInteraction *)self assistantDelegate];
      _editMenuAssistant = [assistantDelegate2 _editMenuAssistant];
      [_editMenuAssistant _editMenuTargetRect];
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
        v31 = menuCopy;
        v32 = v30;
        v33 = [v29 numberWithBool:v31];
        v67[1] = v33;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:&v65 count:2];
        v35 = [v17 updatedTextInteractionMenuElements:children withRVItem:itemCopy view:view context:v34];

        children = v35;
        v16 = _textInputIsSecure;
        goto LABEL_18;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDDContextNoRoomForSubtitlesKey(void)"];
      [currentHandler handleFailureInFunction:v47 file:@"UITextContextMenuInteraction.m" lineNumber:60 description:{@"%s", dlerror()}];
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDataDetectorsSourceRectKey(void)"];
      [currentHandler2 handleFailureInFunction:v45 file:@"UITextContextMenuInteraction.m" lineNumber:59 description:{@"%s", dlerror()}];
    }

    __break(1u);
  }

LABEL_18:
  v36 = [UIKBAutoFillMenus updatedSystemAutoFillMenuWithMenuElements:children hideUnavailableItems:1 isSecureTextField:v16];
  v37 = v36;
  if (v36)
  {
    v38 = v36;

    children = v38;
  }

  assistantDelegate3 = [(UITextInteraction *)self assistantDelegate];
  v40 = [assistantDelegate3 updatedTextReplacementsMenuWithMenuElements:children];

  if (v40)
  {
    v41 = v40;

    children = v41;
  }

  if (v12)
  {
    v42 = [v12 menuByReplacingChildren:children];
  }

  else
  {
    v42 = [UIMenu menuWithChildren:children];
  }

  return v42;
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UITextContextMenuInteraction.m" lineNumber:433 description:@"This method should never be called. We use the async menuForConfiguration:suggestedActions: method instead."];

  return 0;
}

- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  _editMenuAssistant = [assistantDelegate _editMenuAssistant];

  if (self->_currentInputUIConfiguration == configurationCopy)
  {
    v14 = +[UIKeyboardImpl activeInstance];
    [v14 overrideEditMenuTargetRectForConfiguration:configurationCopy];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    _textInput = [(UITextInteraction *)self _textInput];
    textInputView = [_textInput textInputView];
    view = [interactionCopy view];
    [textInputView convertRect:view toView:{v16, v18, v20, v22}];
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
    _selectionView = [_editMenuAssistant _selectionView];
    [_editMenuAssistant _editMenuTargetRect];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    view2 = [interactionCopy view];
    [_selectionView convertRect:view2 toView:{v32, v34, v36, v38}];
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

- (void)editMenuInteraction:(id)interaction willPresentMenuForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  contextMenuInteraction = [(UITextContextMenuInteraction *)self contextMenuInteraction];
  _hasVisibleMenu = [contextMenuInteraction _hasVisibleMenu];

  if (_hasVisibleMenu)
  {
    contextMenuInteraction2 = [(UITextContextMenuInteraction *)self contextMenuInteraction];
    [contextMenuInteraction2 dismissMenu];
  }

  _textInput = [(UITextInteraction *)self _textInput];
  if (objc_opt_respondsToSelector())
  {
    [_textInput systemWillPresentEditMenuWithAnimator:animatorCopy];
  }

  else
  {
    _textInput2 = [(UITextInteraction *)self _textInput];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      _textInput3 = [(UITextInteraction *)self _textInput];
      [_textInput3 willPresentEditMenuWithAnimator:animatorCopy];
    }
  }
}

- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  _textInput = [(UITextInteraction *)self _textInput];
  if (objc_opt_respondsToSelector())
  {
    [_textInput systemWillDismissEditMenuWithAnimator:animatorCopy];
  }

  else
  {
    _textInput2 = [(UITextInteraction *)self _textInput];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      _textInput3 = [(UITextInteraction *)self _textInput];
      [_textInput3 willDismissEditMenuWithAnimator:animatorCopy];
    }
  }
}

- (id)_editMenuInteraction:(id)interaction titleViewForMenu:(id)menu configuration:(id)configuration
{
  identifier = [configuration identifier];
  v6 = +[UIKeyboardImpl activeInstance];
  keyboardMenuTipIdentifier = [v6 keyboardMenuTipIdentifier];
  v8 = [identifier isEqual:keyboardMenuTipIdentifier];

  if (v8)
  {
    v9 = +[UIKeyboardImpl activeInstance];
    editMenuTipView = [v9 editMenuTipView];
  }

  else
  {
    editMenuTipView = 0;
  }

  return editMenuTipView;
}

- (void)_editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions completionHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __109__UITextContextMenuInteraction__editMenuInteraction_menuForConfiguration_suggestedActions_completionHandler___block_invoke;
  v11[3] = &unk_1E71250C8;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(UITextContextMenuInteraction *)self _querySelectionCommandsForConfiguration:configuration suggestedActions:actions completionHandler:v11];
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

- (void)_querySelectionCommandsForConfiguration:(id)configuration suggestedActions:(id)actions completionHandler:(id)handler
{
  configurationCopy = configuration;
  actionsCopy = actions;
  handlerCopy = handler;
  identifier = [configurationCopy identifier];
  v12 = [identifier isEqual:@"UITextContextMenuInteraction.TextSelectionMenu"];

  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  _editMenuAssistant = [assistantDelegate _editMenuAssistant];
  overrideMenu = [_editMenuAssistant overrideMenu];

  if ((v12 & 1) == 0)
  {
    v18 = [UIMenu menuWithChildren:MEMORY[0x1E695E0F0]];
    goto LABEL_20;
  }

  children = [overrideMenu children];
  v17 = [children count];

  if (v17)
  {
    v18 = overrideMenu;
    v19 = 0;
    if (!v18)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  _textInput = [(UITextInteraction *)self _textInput];
  v21 = [_textInput conformsToProtocolCached:&unk_1F016C7B0];
  v22 = [_textInput conformsToProtocolCached:&unk_1F016C810];
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
      v36 = actionsCopy;
      v37 = handlerCopy;
      v38 = 1;
      [_textInput requestDocumentContext:v26 completionHandler:v35];

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
      v32 = actionsCopy;
      v33 = handlerCopy;
      v34 = 1;
      [_textInput requestDocumentContext:v23 completionHandler:v31];

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
    v28 = actionsCopy;
    v29 = handlerCopy;
    v30 = 1;
    [_textInput requestRVItemInSelectedRangeWithCompletionHandler:v27];

    goto LABEL_18;
  }

  v18 = [(UITextContextMenuInteraction *)self _editMenuForCurrentSelectionWithSuggestedActions:actionsCopy isEditMenu:1];
LABEL_19:

LABEL_20:
  v19 = 1;
  if (v18)
  {
LABEL_21:
    (*(handlerCopy + 2))(handlerCopy, v18, v19);
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

- (id)_editMenuForCurrentSelectionWithSuggestedActions:(id)actions isEditMenu:(BOOL)menu
{
  menuCopy = menu;
  actionsCopy = actions;
  if ([(UITextContextMenuInteraction *)self _textInputIsSecure])
  {
    v7 = 0;
    goto LABEL_15;
  }

  _textInput = [(UITextInteraction *)self _textInput];
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  activeSelection = [assistantDelegate activeSelection];

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    selectedTextRange = [_textInput selectedTextRange];
    start = [selectedTextRange start];
    v16 = [_textInput positionFromPosition:start offset:-500];
    v17 = v16;
    if (v16)
    {
      beginningOfDocument = v16;
    }

    else
    {
      beginningOfDocument = [_textInput beginningOfDocument];
    }

    v19 = beginningOfDocument;

    v20 = [selectedTextRange end];
    v21 = [_textInput positionFromPosition:v20 offset:500];
    v22 = v21;
    v36 = menuCopy;
    v34 = selectedTextRange;
    v35 = activeSelection;
    v33 = actionsCopy;
    if (v21)
    {
      endOfDocument = v21;
    }

    else
    {
      endOfDocument = [_textInput endOfDocument];
    }

    v24 = endOfDocument;

    v25 = [_textInput textRangeFromPosition:v19 toPosition:v24];
    selectedText = [_textInput textInRange:v25];
    _selectedNSRange = [_textInput _selectedNSRange];
    v28 = v27;
    beginningOfDocument2 = [_textInput beginningOfDocument];
    v30 = [_textInput offsetFromPosition:beginningOfDocument2 toPosition:v19];

    v13 = _selectedNSRange - v30;
    v12 = v28;

    menuCopy = v36;
    activeSelection = v35;
    actionsCopy = v33;
    if (selectedText)
    {
      goto LABEL_5;
    }

LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  selectedText = [_textInput selectedText];
  v12 = [selectedText length];
  v13 = 0;
  if (!selectedText)
  {
    goto LABEL_13;
  }

LABEL_5:
  v7 = [objc_alloc(getRVItemClass()) initWithText:selectedText selectedRange:{v13, v12}];
LABEL_14:

LABEL_15:
  v31 = [(UITextContextMenuInteraction *)self _editMenuForSuggestedActions:actionsCopy rvItem:v7 isEditMenu:menuCopy, v33];

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

- (id)_editMenuInteraction:(id)interaction preferredLayoutRectsForConfiguration:(id)configuration
{
  v39 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  _editMenuAssistant = [assistantDelegate _editMenuAssistant];

  v8 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  _preferredLayoutRectsForEditMenu = [_editMenuAssistant _preferredLayoutRectsForEditMenu];
  v10 = [_preferredLayoutRectsForEditMenu countByEnumeratingWithState:&v34 objects:v38 count:16];
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
          objc_enumerationMutation(_preferredLayoutRectsForEditMenu);
        }

        [*(*(&v34 + 1) + 8 * i) CGRectValue];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        _selectionView = [_editMenuAssistant _selectionView];
        view = [interactionCopy view];
        [_selectionView convertRect:view toView:{v15, v17, v19, v21}];
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

      v11 = [_preferredLayoutRectsForEditMenu countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)presentSelectionCommandsWithConfiguration:(id)configuration
{
  objc_storeStrong(&self->_currentSelectionCommandsConfiguration, configuration);
  configurationCopy = configuration;
  editMenuInteraction = [(UITextContextMenuInteraction *)self editMenuInteraction];
  [editMenuInteraction presentEditMenuWithConfiguration:configurationCopy];
}

- (void)dismissSelectionCommandsWithReason:(int64_t)reason
{
  currentSelectionCommandsConfiguration = self->_currentSelectionCommandsConfiguration;
  contextMenuInteraction = [(UITextContextMenuInteraction *)self contextMenuInteraction];
  if ([contextMenuInteraction _hasVisibleMenu])
  {
    v7 = reason != 1 && !self->_isPresentingOrDismissingContextMenu;
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

  editMenuInteraction = [(UITextContextMenuInteraction *)self editMenuInteraction];
  _selectedMenuLeaf = [editMenuInteraction _selectedMenuLeaf];
  if (_selectedMenuLeaf)
  {
  }

  else
  {
    contextMenuInteraction2 = [(UITextContextMenuInteraction *)self contextMenuInteraction];
    _selectedMenuLeaf = [contextMenuInteraction2 _selectedMenuLeaf];

    if (!_selectedMenuLeaf)
    {
      _selectedMenuLeaf = 0;
      if (!currentSelectionCommandsConfiguration)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  if (([_selectedMenuLeaf attributes] & 8) == 0)
  {
    if (!currentSelectionCommandsConfiguration)
    {
LABEL_15:
      if (v7)
      {
        contextMenuInteraction3 = [(UITextContextMenuInteraction *)self contextMenuInteraction];
        [contextMenuInteraction3 dismissMenu];
      }

      if (self->_currentInputUIConfiguration)
      {
        [(UITextContextMenuInteraction *)self _presentEditMenuForInputUI];
      }

      goto LABEL_19;
    }

LABEL_14:
    editMenuInteraction2 = [(UITextContextMenuInteraction *)self editMenuInteraction];
    [editMenuInteraction2 dismissMenu];

    v12 = self->_currentSelectionCommandsConfiguration;
    self->_currentSelectionCommandsConfiguration = 0;

    goto LABEL_15;
  }

LABEL_19:
}

- (BOOL)dismissedRecently
{
  editMenuInteraction = [(UITextContextMenuInteraction *)self editMenuInteraction];
  _dismissedRecently = [editMenuInteraction _dismissedRecently];

  return _dismissedRecently;
}

- (BOOL)isDisplayingMenu
{
  editMenuInteraction = [(UITextContextMenuInteraction *)self editMenuInteraction];
  isDisplayingMenu = [editMenuInteraction isDisplayingMenu];

  return isDisplayingMenu;
}

- (BOOL)dismissedByActionSelection
{
  editMenuInteraction = [(UITextContextMenuInteraction *)self editMenuInteraction];
  _dismissedByActionSelection = [editMenuInteraction _dismissedByActionSelection];

  return _dismissedByActionSelection;
}

- (void)presentMenuForInputUI:(id)i preferredArrowDirection:(int64_t)direction
{
  if (!self->_currentInputUIConfiguration)
  {
    iCopy = i;
    if ([(UITextContextMenuInteraction *)self isDisplayingMenu])
    {
      [(UITextContextMenuInteraction *)self dismissSelectionCommandsWithReason:0];
    }

    assistantDelegate = [(UITextInteraction *)self assistantDelegate];
    _editMenuAssistant = [assistantDelegate _editMenuAssistant];

    [_editMenuAssistant _editMenuTargetRect];
    v12 = [UIEditMenuConfiguration configurationWithIdentifier:iCopy sourcePoint:v9 + v8 * 0.5, v11 + v10 * 0.5];

    _editMenuSourceWindow = [_editMenuAssistant _editMenuSourceWindow];
    [(UIEditMenuConfiguration *)v12 set_overrideSourceWindow:_editMenuSourceWindow];

    [(UIEditMenuConfiguration *)v12 set_ignoresPassthroughInView:1];
    -[UIEditMenuConfiguration set_prefersMenuPresentationInView:](v12, "set_prefersMenuPresentationInView:", [_editMenuAssistant _editMenuPrefersPresentationInView]);
    [(UIEditMenuConfiguration *)v12 setPreferredArrowDirection:direction];
    currentInputUIConfiguration = self->_currentInputUIConfiguration;
    self->_currentInputUIConfiguration = v12;

    [(UITextContextMenuInteraction *)self _presentEditMenuForInputUI];
  }
}

- (void)_presentEditMenuForInputUI
{
  if (self->_currentInputUIConfiguration)
  {
    editMenuInteraction = [(UITextContextMenuInteraction *)self editMenuInteraction];
    [editMenuInteraction presentEditMenuWithConfiguration:self->_currentInputUIConfiguration];
  }
}

- (BOOL)_isExternalConfiguration:(id)configuration
{
  configurationCopy = configuration;
  externallyManagedConfiguration = [(UITextContextMenuInteraction *)self externallyManagedConfiguration];
  v6 = configurationCopy;
  v7 = externallyManagedConfiguration;
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
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  _editMenuAssistant = [assistantDelegate _editMenuAssistant];
  _selectionView = [_editMenuAssistant _selectionView];

  window = [_selectionView window];

  if (window)
  {
    assistantDelegate2 = [(UITextInteraction *)self assistantDelegate];
    _editMenuAssistant2 = [assistantDelegate2 _editMenuAssistant];
    [_editMenuAssistant2 _editMenuTargetRect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = [UIView alloc];
    v18 = [(UIView *)v17 initWithFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v14, v16];
    v19 = [[UIPreviewTarget alloc] initWithContainer:_selectionView center:v10 + v14 * 0.5, v12 + v16 * 0.5];
    v20 = [UITargetedPreview alloc];
    v21 = objc_opt_new();
    window = [(UITargetedPreview *)v20 initWithView:v18 parameters:v21 target:v19];
  }

  return window;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UITextContextMenuInteraction.m" lineNumber:809 description:@"This method should never be called. We use the async configurationForMenuAtLocation: method instead."];

  return 0;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  identifierCopy = identifier;
  if ([(UITextContextMenuInteraction *)self _isExternalConfiguration:configurationCopy])
  {
    if (self->_externalDelegateImplements.highlightPreviewForItem)
    {
      externalContextMenuDelegate = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
      v12 = [externalContextMenuDelegate contextMenuInteraction:interactionCopy configuration:configurationCopy highlightPreviewForItemWithIdentifier:identifierCopy];
      goto LABEL_6;
    }

    if (self->_externalDelegateImplements.previewForHighlighting_DEPR)
    {
      externalContextMenuDelegate = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
      v12 = [externalContextMenuDelegate contextMenuInteraction:interactionCopy previewForHighlightingMenuWithConfiguration:configurationCopy];
LABEL_6:
      _targetedPreviewForCurrentSelection = v12;

      if (_targetedPreviewForCurrentSelection)
      {
        goto LABEL_8;
      }
    }
  }

  _targetedPreviewForCurrentSelection = [(UITextContextMenuInteraction *)self _targetedPreviewForCurrentSelection];
LABEL_8:

  return _targetedPreviewForCurrentSelection;
}

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration dismissalPreviewForItemWithIdentifier:(id)identifier
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  identifierCopy = identifier;
  if ([(UITextContextMenuInteraction *)self _isExternalConfiguration:configurationCopy])
  {
    if (self->_externalDelegateImplements.dismissalPreviewForItem)
    {
      externalContextMenuDelegate = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
      v12 = [externalContextMenuDelegate contextMenuInteraction:interactionCopy configuration:configurationCopy dismissalPreviewForItemWithIdentifier:identifierCopy];
      goto LABEL_6;
    }

    if (self->_externalDelegateImplements.previewForDismissing_DEPR)
    {
      externalContextMenuDelegate = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
      v12 = [externalContextMenuDelegate contextMenuInteraction:interactionCopy previewForDismissingMenuWithConfiguration:configurationCopy];
LABEL_6:
      _targetedPreviewForCurrentSelection = v12;

      if (_targetedPreviewForCurrentSelection)
      {
        goto LABEL_8;
      }
    }
  }

  _targetedPreviewForCurrentSelection = [(UITextContextMenuInteraction *)self _targetedPreviewForCurrentSelection];
LABEL_8:

  return _targetedPreviewForCurrentSelection;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  if (self->_externalDelegateImplements.willPerformPreviewAction && [(UITextContextMenuInteraction *)self _isExternalConfiguration:configurationCopy])
  {
    externalContextMenuDelegate = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
    [externalContextMenuDelegate contextMenuInteraction:interactionCopy willPerformPreviewActionForMenuWithConfiguration:configurationCopy animator:animatorCopy];
  }
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  if (self->_externalDelegateImplements.willDisplay && [(UITextContextMenuInteraction *)self _isExternalConfiguration:configurationCopy])
  {
    externalContextMenuDelegate = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
    [externalContextMenuDelegate contextMenuInteraction:interactionCopy willDisplayMenuForConfiguration:configurationCopy animator:animatorCopy];
  }

  editMenuInteraction = [(UITextContextMenuInteraction *)self editMenuInteraction];
  isDisplayingMenu = [editMenuInteraction isDisplayingMenu];

  if (isDisplayingMenu)
  {
    if (animatorCopy)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __96__UITextContextMenuInteraction_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke;
      v16[3] = &unk_1E70F3590;
      v16[4] = self;
      [animatorCopy addAnimations:v16];
    }

    else
    {
      editMenuInteraction2 = [(UITextContextMenuInteraction *)self editMenuInteraction];
      [editMenuInteraction2 dismissMenu];
    }
  }

  self->_isPresentingOrDismissingContextMenu = 1;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96__UITextContextMenuInteraction_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke_2;
  v15[3] = &unk_1E70F3590;
  v15[4] = self;
  [animatorCopy addCompletion:v15];
}

void __96__UITextContextMenuInteraction_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) editMenuInteraction];
  [v1 dismissMenu];
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  if (self->_externalDelegateImplements.willEndForConfiguration && [(UITextContextMenuInteraction *)self _isExternalConfiguration:configurationCopy])
  {
    externalContextMenuDelegate = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
    [externalContextMenuDelegate contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:animatorCopy];

    if (animatorCopy)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __88__UITextContextMenuInteraction_contextMenuInteraction_willEndForConfiguration_animator___block_invoke;
      v14[3] = &unk_1E70F3590;
      v14[4] = self;
      [animatorCopy addAnimations:v14];
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
  [animatorCopy addCompletion:v13];
}

void __88__UITextContextMenuInteraction_contextMenuInteraction_willEndForConfiguration_animator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 176);
  *(v1 + 176) = 0;
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  if (self->_externalDelegateImplements.styleForMenu && [(UITextContextMenuInteraction *)self _isExternalConfiguration:configurationCopy])
  {
    externalContextMenuDelegate = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
    v9 = [externalContextMenuDelegate _contextMenuInteraction:interactionCopy styleForMenuWithConfiguration:configurationCopy];
  }

  else
  {
    v9 = +[_UIContextMenuStyle defaultStyle];
    externalContextMenuDelegate = [interactionCopy view];
    [v9 set_parentTraitEnvironmentForUserInterfaceStyle:externalContextMenuDelegate];
  }

  return v9;
}

- (id)_contextMenuInteraction:(id)interaction accessoriesForMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  if (self->_externalDelegateImplements.accessoriesForMenu && [(UITextContextMenuInteraction *)self _isExternalConfiguration:configurationCopy])
  {
    externalContextMenuDelegate = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
    v9 = [externalContextMenuDelegate _contextMenuInteraction:interactionCopy accessoriesForMenuWithConfiguration:configurationCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_contextMenuInteraction:(id)interaction shouldBeDelayedByGestureRecognizer:(id)recognizer
{
  if (!self->_externalDelegateImplements.shouldBeDelayedByGestureRecognizer)
  {
    return 0;
  }

  recognizerCopy = recognizer;
  interactionCopy = interaction;
  externalContextMenuDelegate = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
  v9 = [externalContextMenuDelegate _contextMenuInteraction:interactionCopy shouldBeDelayedByGestureRecognizer:recognizerCopy];

  return v9;
}

- (id)_contextMenuInteraction:(id)interaction overrideSuggestedActionsForConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  if (self->_externalDelegateImplements.overrideSuggestedActions && [(UITextContextMenuInteraction *)self _isExternalConfiguration:configurationCopy])
  {
    externalContextMenuDelegate = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
    v9 = [externalContextMenuDelegate _contextMenuInteraction:interactionCopy overrideSuggestedActionsForConfiguration:configurationCopy];
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (void)_contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location completion:(id)completion
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__UITextContextMenuInteraction__contextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke;
  aBlock[3] = &unk_1E7125168;
  aBlock[4] = self;
  v11 = completionCopy;
  v22 = v11;
  v12 = interactionCopy;
  v21 = v12;
  v23 = x;
  v24 = y;
  v13 = _Block_copy(aBlock);
  asyncConfigurationForMenuAtLocation = self->_externalDelegateImplements.asyncConfigurationForMenuAtLocation;
  externalContextMenuDelegate = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
  v16 = externalContextMenuDelegate;
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
      externalContextMenuDelegate2 = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
      v16 = [externalContextMenuDelegate2 contextMenuInteraction:v12 configurationForMenuAtLocation:{x, y}];

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

- (void)_defaultContextMenuInteraction:(void *)interaction configurationForMenuAtLocation:(double)location completion:(double)completion
{
  interactionCopy = interaction;
  v10 = interactionCopy;
  if (self)
  {
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __105__UITextContextMenuInteraction__defaultContextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke;
    v25 = &unk_1E71251B8;
    v26 = interactionCopy;
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
        selfCopy2 = self;
        v32 = v11;
        locationCopy = location;
        completionCopy = completion;
        v33 = v12;
        [self prepareForContextMenuAtLocationInView:&v27 completion:{location, completion}];
      }

      else
      {
        assistantDelegate = [self assistantDelegate];
        _editMenuAssistant = [assistantDelegate _editMenuAssistant];
        [_editMenuAssistant _editMenuTargetRect];
        v17 = v16 + v15 * 0.5;
        v20 = v19 + v18 * 0.5;

        v27 = MEMORY[0x1E69E9820];
        v28 = 3221225472;
        v29 = __102__UITextContextMenuInteraction__textContextMenuInteraction_configurationForMenuAtLocation_completion___block_invoke_3;
        v30 = &unk_1E7125230;
        selfCopy2 = self;
        v32 = v11;
        v33 = *&v17;
        locationCopy = v20;
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

- (BOOL)_contextMenuInteraction:(id)interaction shouldAttemptToPresentConfiguration:(id)configuration
{
  if (!self->_externalDelegateImplements.shouldAttemptToPresent)
  {
    return 1;
  }

  configurationCopy = configuration;
  interactionCopy = interaction;
  externalContextMenuDelegate = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
  v9 = [externalContextMenuDelegate _contextMenuInteraction:interactionCopy shouldAttemptToPresentConfiguration:configurationCopy];

  return v9;
}

- (id)_contextMenuInteraction:(id)interaction configuration:(id)configuration interactionEffectForTargetedPreview:(id)preview
{
  if (self->_externalDelegateImplements.interactionEffectForTargetedPreview)
  {
    previewCopy = preview;
    configurationCopy = configuration;
    interactionCopy = interaction;
    externalContextMenuDelegate = [(UITextContextMenuInteraction *)self externalContextMenuDelegate];
    v12 = [externalContextMenuDelegate _contextMenuInteraction:interactionCopy configuration:configurationCopy interactionEffectForTargetedPreview:previewCopy];
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

- (id)_suggestedActionsForContextMenuInteraction:(id)interaction location:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  view = [interactionCopy view];
  view2 = [interactionCopy view];

  editMenuInteraction = [(UITextContextMenuInteraction *)self editMenuInteraction];
  v11 = +[_UIEditMenuProvider menuElementsFromResponderChain:atLocation:inCoordinateSpace:includeMenuControllerItems:](_UIEditMenuProvider, "menuElementsFromResponderChain:atLocation:inCoordinateSpace:includeMenuControllerItems:", view, view2, [editMenuInteraction _includeMenuControllerItems], x, y);

  return v11;
}

- (UIContextMenuInteractionDelegate)externalContextMenuDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_externalContextMenuDelegate);

  return WeakRetained;
}

@end