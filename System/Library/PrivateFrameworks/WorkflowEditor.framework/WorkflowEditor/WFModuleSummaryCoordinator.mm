@interface WFModuleSummaryCoordinator
+ (double)heightForWidth:(double)width withSummaryFormatString:(id)string parameters:(id)parameters editableParameters:(id)editableParameters parameterStates:(id)states stagedParameterStates:(id)parameterStates horizontalPadding:(double)padding font:(id)self0 unpopulatedFont:(id)self1 textAlignment:(int64_t)self2;
+ (id)parameterStatesByApplyingStaging:(id)staging toOriginal:(id)original;
+ (void)enumerateVariableAttachmentsInContents:(id)contents withBlock:(id)block;
- (BOOL)slotTemplateView:(id)view shouldChangeText:(id)text forSlotWithIdentifier:(id)identifier;
- (BOOL)slotTemplateView:(id)view shouldTapTextAttachment:(id)attachment inSlotWithIdentifier:(id)identifier;
- (Class)editorClassForParameter:(id)parameter;
- (NSDictionary)stagedParameterStates;
- (WFEditorAuxiliaryViewPresenter)auxiliaryViewPresenter;
- (WFModuleSummaryCoordinator)init;
- (WFModuleSummaryCoordinatorDelegate)delegate;
- (WFVariableProvider)variableProvider;
- (WFVariableUIDelegate)variableUIDelegate;
- (id)addElementToArrayForParameterKey:(id)key;
- (id)createSummaryEditorForSlotWithIdentifier:(id)identifier;
- (id)currentParameterStateForParameterKey:(id)key;
- (id)firstSlotIdentifierWithParameterKey:(id)key;
- (id)initialStateForSummaryEditor:(id)editor;
- (id)parameterForKey:(id)key;
- (id)presentationAnchorForSlotWithIdentifier:(id)identifier;
- (id)slotTemplateView:(id)view menuForSlotIdentifier:(id)identifier style:(unint64_t)style;
- (id)transformParameterStateForSerialization:(id)serialization arrayIndex:(unint64_t)index parameter:(id)parameter;
- (void)beginEditingSlotWithIdentifier:(id)identifier fromTextAttachment:(id)attachment;
- (void)cancelEditingWithCompletionHandler:(id)handler;
- (void)commitParameterState:(id)state forKey:(id)key;
- (void)destroyCurrentEditor;
- (void)menuDidDismissInSlotTemplateView:(id)view;
- (void)removeElementFromArrayAtIndex:(unint64_t)index forParameterKey:(id)key;
- (void)revealAction:(id)action preScrollHandler:(id)handler goBackHandler:(id)backHandler scrolledAwayHandler:(id)awayHandler;
- (void)setParameters:(id)parameters;
- (void)setSummaryFormatString:(id)string withParameters:(id)parameters editableParameters:(id)editableParameters parameterStates:(id)states;
- (void)setTemplateView:(id)view;
- (void)setVariableProvider:(id)provider;
- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)input variableProvider:(id)provider completionHandler:(id)handler;
- (void)showParameterEditingHint:(id)hint;
- (void)showVariableEditorWithOptions:(id)options fromSourceRect:(CGRect)rect;
- (void)slotTemplateView:(id)view deletePressedOnSlotWithIdentifier:(id)identifier allowResettingValue:(BOOL)value;
- (void)slotTemplateView:(id)view didChangeText:(id)text forSlotWithIdentifier:(id)identifier;
- (void)slotTemplateView:(id)view didEndTypingInSlotWithIdentifier:(id)identifier;
- (void)slotTemplateView:(id)view didSelectSlotWithIdentifier:(id)identifier;
- (void)slotTemplateView:(id)view didTapTextAttachment:(id)attachment inSlotWithIdentifier:(id)identifier;
- (void)slotTemplateView:(id)view disclosureArrowDidChange:(BOOL)change;
- (void)slotTemplateView:(id)view outputButtonDidChange:(BOOL)change;
- (void)slotTemplateView:(id)view typingDidCopyWithOriginalBlock:(id)block;
- (void)slotTemplateView:(id)view typingDidCutWithOriginalBlock:(id)block;
- (void)slotTemplateView:(id)view typingDidPasteWithRange:(_NSRange)range originalBlock:(id)block;
- (void)slotTemplateView:(id)view willBeginTypingInSlotWithIdentifier:(id)identifier usingTextEntry:(id)entry allowMultipleLines:(BOOL *)lines;
- (void)slotTemplateViewDidInvalidateSize:(id)size;
- (void)slotTemplateViewTintColorDidChange:(id)change;
- (void)summaryEditor:(id)editor didCommitParameterState:(id)state;
- (void)summaryEditor:(id)editor didRequestEditingSlotWithIdentifier:(id)identifier;
- (void)summaryEditor:(id)editor didStageParameterState:(id)state;
- (void)summaryEditorDidFinish:(id)finish returnToKeyboard:(BOOL)keyboard withTextAttachmentToEdit:(id)edit;
- (void)summaryEditorDidRequestTextEntry:(id)entry;
- (void)updateTemplateContentsAnimated:(BOOL)animated;
@end

@implementation WFModuleSummaryCoordinator

- (WFEditorAuxiliaryViewPresenter)auxiliaryViewPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_auxiliaryViewPresenter);

  return WeakRetained;
}

- (WFVariableUIDelegate)variableUIDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_variableUIDelegate);

  return WeakRetained;
}

- (WFVariableProvider)variableProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_variableProvider);

  return WeakRetained;
}

- (WFModuleSummaryCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)showVariableEditorWithOptions:(id)options fromSourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  optionsCopy = options;
  variableUIDelegate = [(WFModuleSummaryCoordinator *)self variableUIDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    variableUIDelegate2 = [(WFModuleSummaryCoordinator *)self variableUIDelegate];
    [variableUIDelegate2 showVariableEditorWithOptions:optionsCopy fromSourceRect:{x, y, width, height}];
  }
}

- (void)showParameterEditingHint:(id)hint
{
  hintCopy = hint;
  variableUIDelegate = [(WFModuleSummaryCoordinator *)self variableUIDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    variableUIDelegate2 = [(WFModuleSummaryCoordinator *)self variableUIDelegate];
    [variableUIDelegate2 showParameterEditingHint:hintCopy];
  }
}

- (void)revealAction:(id)action preScrollHandler:(id)handler goBackHandler:(id)backHandler scrolledAwayHandler:(id)awayHandler
{
  awayHandlerCopy = awayHandler;
  backHandlerCopy = backHandler;
  handlerCopy = handler;
  actionCopy = action;
  variableUIDelegate = [(WFModuleSummaryCoordinator *)self variableUIDelegate];
  [variableUIDelegate revealAction:actionCopy preScrollHandler:handlerCopy goBackHandler:backHandlerCopy scrolledAwayHandler:awayHandlerCopy];
}

- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)input variableProvider:(id)provider completionHandler:(id)handler
{
  inputCopy = input;
  handlerCopy = handler;
  providerCopy = provider;
  currentEditorIsEditing = [(WFModuleSummaryCoordinator *)self currentEditorIsEditing];
  [(WFModuleSummaryCoordinator *)self setCurrentEditorIsEditing:1];
  variableUIDelegate = [(WFModuleSummaryCoordinator *)self variableUIDelegate];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __109__WFModuleSummaryCoordinator_showActionOutputPickerAllowingShortcutInput_variableProvider_completionHandler___block_invoke;
  v13[3] = &unk_279EDB868;
  v15 = currentEditorIsEditing;
  v13[4] = self;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [variableUIDelegate showActionOutputPickerAllowingShortcutInput:inputCopy variableProvider:providerCopy completionHandler:v13];
}

uint64_t __109__WFModuleSummaryCoordinator_showActionOutputPickerAllowingShortcutInput_variableProvider_completionHandler___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if ((*(a1 + 48) & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 cancelEditingWithCompletionHandler:0];
  }

  return result;
}

- (id)transformParameterStateForSerialization:(id)serialization arrayIndex:(unint64_t)index parameter:(id)parameter
{
  v23[1] = *MEMORY[0x277D85DE8];
  serializationCopy = serialization;
  parameterCopy = parameter;
  if (!serializationCopy || index == 0x7FFFFFFFFFFFFFFFLL || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !parameterCopy) || (isKindOfClass & 1) != 0)
  {
    v17 = serializationCopy;
    goto LABEL_15;
  }

  v11 = [parameterCopy key];
  v12 = [(WFModuleSummaryCoordinator *)self currentParameterStateForParameterKey:v11];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v13 = v12;
  value = [v13 value];
  v15 = [value count];

  if (v15 <= index)
  {
    if ([parameterCopy isRangedSizeArray])
    {
      v18 = [parameterCopy arrayMaxCountForWidgetFamily:3];
      value2 = [v13 value];
      v20 = [value2 count];

      if (v20 < v18)
      {
        v16 = [v13 stateByAppendingValue:serializationCopy];
        goto LABEL_14;
      }
    }

LABEL_13:
    v21 = objc_alloc([parameterCopy multipleStateClass]);
    v23[0] = serializationCopy;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v16 = [v21 initWithParameterStates:v13];
    goto LABEL_14;
  }

  v16 = [v13 stateByReplacingValueAtIndex:index withValue:serializationCopy];
LABEL_14:
  v17 = v16;

LABEL_15:

  return v17;
}

- (void)commitParameterState:(id)state forKey:(id)key
{
  keyCopy = key;
  stateCopy = state;
  v7 = [(WFModuleSummaryCoordinator *)self parameterForKey:keyCopy];
  currentEditor = [(WFModuleSummaryCoordinator *)self currentEditor];
  parameter = [currentEditor parameter];
  v10 = [parameter key];
  if ([v10 isEqualToString:keyCopy])
  {
    currentEditor2 = [(WFModuleSummaryCoordinator *)self currentEditor];
    arrayIndex = [currentEditor2 arrayIndex];
  }

  else
  {
    arrayIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = [(WFModuleSummaryCoordinator *)self transformParameterStateForSerialization:stateCopy arrayIndex:arrayIndex parameter:v7];

  mutableStagedParameterStates = [(WFModuleSummaryCoordinator *)self mutableStagedParameterStates];
  [mutableStagedParameterStates removeObjectForKey:keyCopy];

  parameterStates = [(WFModuleSummaryCoordinator *)self parameterStates];
  v16 = [parameterStates mutableCopy];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = objc_opt_new();
  }

  v19 = v18;

  if (v13)
  {
    [v19 setObject:v13 forKey:keyCopy];
  }

  else
  {
    [v19 removeObjectForKey:keyCopy];
  }

  v20 = [v19 copy];
  parameterStates = self->_parameterStates;
  self->_parameterStates = v20;

  [(WFModuleSummaryCoordinator *)self updateTemplateContentsAnimated:0];
  updateBlock = [(WFModuleSummaryCoordinator *)self updateBlock];

  if (updateBlock)
  {
    updateBlock2 = [(WFModuleSummaryCoordinator *)self updateBlock];
    (updateBlock2)[2](updateBlock2, keyCopy, v13);
  }
}

- (void)summaryEditor:(id)editor didCommitParameterState:(id)state
{
  stateCopy = state;
  parameter = [editor parameter];
  v7 = [parameter key];
  [(WFModuleSummaryCoordinator *)self commitParameterState:stateCopy forKey:v7];
}

- (void)summaryEditor:(id)editor didStageParameterState:(id)state
{
  stateCopy = state;
  editorCopy = editor;
  parameter = [editorCopy parameter];
  v16 = [parameter key];

  arrayIndex = [editorCopy arrayIndex];
  parameter2 = [editorCopy parameter];

  v11 = [(WFModuleSummaryCoordinator *)self transformParameterStateForSerialization:stateCopy arrayIndex:arrayIndex parameter:parameter2];

  mutableStagedParameterStates = [(WFModuleSummaryCoordinator *)self mutableStagedParameterStates];
  v13 = mutableStagedParameterStates;
  if (v11)
  {
    [mutableStagedParameterStates setObject:v11 forKey:v16];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [v13 setObject:null forKey:v16];
  }

  currentlyTypingSlotIdentifier = [(WFModuleSummaryCoordinator *)self currentlyTypingSlotIdentifier];

  if (!currentlyTypingSlotIdentifier)
  {
    [(WFModuleSummaryCoordinator *)self updateTemplateContentsAnimated:0];
  }
}

- (void)summaryEditorDidFinish:(id)finish returnToKeyboard:(BOOL)keyboard withTextAttachmentToEdit:(id)edit
{
  keyboardCopy = keyboard;
  editCopy = edit;
  currentlyEditingSlotIdentifier = [(WFModuleSummaryCoordinator *)self currentlyEditingSlotIdentifier];
  [(WFModuleSummaryCoordinator *)self destroyCurrentEditor];
  if (currentlyEditingSlotIdentifier)
  {
    if (keyboardCopy)
    {
      templateView = [(WFModuleSummaryCoordinator *)self templateView];
      [templateView selectSlotWithIdentifier:currentlyEditingSlotIdentifier];

      selfCopy2 = self;
      v10 = currentlyEditingSlotIdentifier;
      v11 = 0;
    }

    else
    {
      if (!editCopy)
      {
        goto LABEL_7;
      }

      templateView2 = [(WFModuleSummaryCoordinator *)self templateView];
      [templateView2 endTyping];

      selfCopy2 = self;
      v10 = currentlyEditingSlotIdentifier;
      v11 = editCopy;
    }

    [(WFModuleSummaryCoordinator *)selfCopy2 beginEditingSlotWithIdentifier:v10 fromTextAttachment:v11];
  }

LABEL_7:
}

- (void)summaryEditorDidRequestTextEntry:(id)entry
{
  currentlyEditingSlotIdentifier = [(WFModuleSummaryCoordinator *)self currentlyEditingSlotIdentifier];
  [(WFModuleSummaryCoordinator *)self setCurrentlyTypingSlotIdentifier:currentlyEditingSlotIdentifier];

  templateView = [(WFModuleSummaryCoordinator *)self templateView];
  currentlyEditingSlotIdentifier2 = [(WFModuleSummaryCoordinator *)self currentlyEditingSlotIdentifier];
  [templateView beginTypingInSlotWithIdentifier:currentlyEditingSlotIdentifier2];
}

- (void)summaryEditor:(id)editor didRequestEditingSlotWithIdentifier:(id)identifier
{
  editorCopy = editor;
  identifierCopy = identifier;
  currentEditor = [(WFModuleSummaryCoordinator *)self currentEditor];

  if (currentEditor == editorCopy)
  {
    v8 = [(WFModuleSummaryCoordinator *)self presentationAnchorForSlotWithIdentifier:identifierCopy];
    if (v8)
    {
      [(WFModuleSummaryCoordinator *)self setCurrentEditorIsEditing:1];
      [(WFModuleSummaryCoordinator *)self setCurrentlyEditingSlotIdentifier:identifierCopy];
      delegate = [(WFModuleSummaryCoordinator *)self delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        delegate2 = [(WFModuleSummaryCoordinator *)self delegate];
        [delegate2 summaryCoordinatorWillBeginEditing:self];
      }

      [editorCopy beginEditingSlotWithIdentifier:identifierCopy presentationAnchor:v8];
    }
  }
}

- (id)initialStateForSummaryEditor:(id)editor
{
  editorCopy = editor;
  parameterStates = [(WFModuleSummaryCoordinator *)self parameterStates];
  parameter = [editorCopy parameter];
  v7 = [parameter key];
  v8 = [parameterStates objectForKey:v7];

  parameter2 = [editorCopy parameter];

  LODWORD(editorCopy) = [parameter2 parameterStateIsValid:v8];
  if (editorCopy)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)cancelEditingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  currentEditor = [(WFModuleSummaryCoordinator *)self currentEditor];
  if (currentEditor)
  {
    templateView = [(WFModuleSummaryCoordinator *)self templateView];
    [templateView endTyping];

    [(WFModuleSummaryCoordinator *)self destroyCurrentEditor];
    [currentEditor setDelegate:0];
    if (handlerCopy)
    {
      v6 = handlerCopy;
    }

    else
    {
      v6 = &__block_literal_global_140;
    }

    [currentEditor cancelEditingWithCompletionHandler:v6];
  }

  else if (handlerCopy)
  {
    handlerCopy[2]();
  }
}

- (id)firstSlotIdentifierWithParameterKey:(id)key
{
  v21 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  contents = [(WFModuleSummaryCoordinator *)self contents];
  v6 = [contents countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(contents);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          identifier = [v11 identifier];
          parameterKey = [identifier parameterKey];
          v14 = [parameterKey isEqualToString:keyCopy];

          if (v14)
          {

            goto LABEL_13;
          }
        }
      }

      v7 = [contents countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  identifier = 0;
LABEL_13:

  return identifier;
}

- (void)destroyCurrentEditor
{
  [(WFModuleSummaryCoordinator *)self setCurrentEditor:0];
  [(WFModuleSummaryCoordinator *)self setCurrentlyTypingSlotIdentifier:0];
  [(WFModuleSummaryCoordinator *)self setCurrentlyEditingSlotIdentifier:0];
  [(WFModuleSummaryCoordinator *)self setCurrentEditorIsEditing:0];
  mutableStagedParameterStates = [(WFModuleSummaryCoordinator *)self mutableStagedParameterStates];
  [mutableStagedParameterStates removeAllObjects];

  variableBeingEdited = [(WFModuleSummaryCoordinator *)self variableBeingEdited];

  if (variableBeingEdited)
  {
    [(WFModuleSummaryCoordinator *)self setVariableBeingEdited:0];
    [(WFModuleSummaryCoordinator *)self updateTemplateContentsAnimated:1];
  }

  delegate = [(WFModuleSummaryCoordinator *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WFModuleSummaryCoordinator *)self delegate];
    [delegate2 summaryCoordinatorDidEndEditing:self];
  }

  templateView = [(WFModuleSummaryCoordinator *)self templateView];
  [templateView deselectSlot];
}

- (void)removeElementFromArrayAtIndex:(unint64_t)index forParameterKey:(id)key
{
  keyCopy = key;
  v7 = [(WFModuleSummaryCoordinator *)self parameterForKey:keyCopy];
  if (v7)
  {
    v8 = [(WFModuleSummaryCoordinator *)self currentParameterStateForParameterKey:keyCopy];
    updateBlock = [(WFModuleSummaryCoordinator *)self updateBlock];
    if (updateBlock)
    {
      v10 = updateBlock;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v12 = v8;
        value = [v12 value];
        v14 = [value count];

        if (v14 > index)
        {
          v15 = [v12 stateByRemovingValueAtIndex:index];
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __76__WFModuleSummaryCoordinator_removeElementFromArrayAtIndex_forParameterKey___block_invoke;
          v17[3] = &unk_279EDC130;
          v17[4] = self;
          v18 = keyCopy;
          v19 = v15;
          v16 = v15;
          [(WFModuleSummaryCoordinator *)self cancelEditingWithCompletionHandler:v17];
        }
      }
    }
  }
}

void __76__WFModuleSummaryCoordinator_removeElementFromArrayAtIndex_forParameterKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateBlock];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

- (id)addElementToArrayForParameterKey:(id)key
{
  v22[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = [(WFModuleSummaryCoordinator *)self parameterForKey:keyCopy];
  if (v5)
  {
    v6 = [(WFModuleSummaryCoordinator *)self currentParameterStateForParameterKey:keyCopy];
    if (objc_opt_respondsToSelector())
    {
      defaultStateForNewArrayElement = [v5 defaultStateForNewArrayElement];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v6 stateByAppendingValue:defaultStateForNewArrayElement];
      }

      else
      {
        v10 = objc_alloc([v5 multipleStateClass]);
        v22[0] = defaultStateForNewArrayElement;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
        v8 = [v10 initWithParameterStates:v11];
      }

      mutableStagedParameterStates = [(WFModuleSummaryCoordinator *)self mutableStagedParameterStates];
      [mutableStagedParameterStates setObject:v8 forKey:keyCopy];

      value = [v8 value];
      v14 = [value count] - 1;

      v9 = [v5 moduleSummarySlotForState:defaultStateForNewArrayElement];
      identifier = [v9 identifier];
      v16 = [identifier identifierBySettingParameterKey:keyCopy arrayIndex:v14];
      [v9 setIdentifier:v16];

      [(WFModuleSummaryCoordinator *)self updateTemplateContentsAnimated:1];
      delegate = [(WFModuleSummaryCoordinator *)self delegate];
      LOBYTE(identifier) = objc_opt_respondsToSelector();

      if (identifier)
      {
        delegate2 = [(WFModuleSummaryCoordinator *)self delegate];
        [delegate2 summaryCoordinatorDidInvalidateSize:self];
      }

      templateView = [(WFModuleSummaryCoordinator *)self templateView];
      identifier2 = [v9 identifier];
      [templateView selectSlotWithIdentifier:identifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)beginEditingSlotWithIdentifier:(id)identifier fromTextAttachment:(id)attachment
{
  identifierCopy = identifier;
  attachmentCopy = attachment;
  currentEditor = [(WFModuleSummaryCoordinator *)self currentEditor];

  if (currentEditor)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFModuleSummaryCoordinator.m" lineNumber:364 description:@"There's an active editor that hasn't been cancelled"];
  }

  v9 = [(WFModuleSummaryCoordinator *)self createSummaryEditorForSlotWithIdentifier:identifierCopy];
  v10 = [(WFModuleSummaryCoordinator *)self presentationAnchorForSlotWithIdentifier:identifierCopy];
  if (v10)
  {
    templateView = [(WFModuleSummaryCoordinator *)self templateView];
    v12 = [identifierCopy key];
    v13 = v12;
    if (templateView && v12)
    {
      [(WFModuleSummaryCoordinator *)self setCurrentEditor:v9];
      [(WFModuleSummaryCoordinator *)self setCurrentlyEditingSlotIdentifier:identifierCopy];
      [(WFModuleSummaryCoordinator *)self setCurrentEditorIsEditing:1];
      delegate = [(WFModuleSummaryCoordinator *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        delegate2 = [(WFModuleSummaryCoordinator *)self delegate];
        [delegate2 summaryCoordinatorWillBeginEditing:self];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        token = [attachmentCopy token];
        if (token)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = token;
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;

        variable = [v19 variable];

        [(WFModuleSummaryCoordinator *)self setVariableBeingEdited:variable];
        [(WFModuleSummaryCoordinator *)self updateTemplateContentsAnimated:1];
      }

      if ([v13 isEqualToString:@"_array_add_"])
      {
        [v9 beginEditingNewArrayElementFromPresentationAnchor:v10];
      }

      else if (attachmentCopy)
      {
        [v9 beginEditingTextAttachment:attachmentCopy inSlotWithIdentifier:identifierCopy presentationAnchor:v10];
      }

      else
      {
        [v9 beginEditingSlotWithIdentifier:identifierCopy presentationAnchor:v10];
      }
    }
  }
}

- (id)presentationAnchorForSlotWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  templateView = [(WFModuleSummaryCoordinator *)self templateView];
  if (templateView)
  {
    delegate = [(WFModuleSummaryCoordinator *)self delegate];
    v7 = [delegate viewControllerForCoordinator:self];

    if (v7)
    {
      [templateView sourceRectForSlotWithIdentifier:identifierCopy];
      v12 = [[WFModalPresentationAnchor alloc] initWithSourceViewController:v7 sourceView:templateView sourceRect:v8, v9, v10, v11];
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

- (id)createSummaryEditorForSlotWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  parameterKey = [identifierCopy parameterKey];
  v6 = [identifierCopy key];
  arrayIndex = [identifierCopy arrayIndex];

  v8 = 0;
  if (parameterKey && v6)
  {
    v9 = [(WFModuleSummaryCoordinator *)self parameterForKey:parameterKey];
    if (v9)
    {
      v8 = [objc_alloc(-[WFModuleSummaryCoordinator editorClassForParameter:](self editorClassForParameter:{v9)), "initWithParameter:arrayIndex:processing:", v9, arrayIndex, -[WFModuleSummaryCoordinator processing](self, "processing")}];
      [v8 setDelegate:self];
      variableProvider = [(WFModuleSummaryCoordinator *)self variableProvider];
      [v8 setVariableProvider:variableProvider];

      [v8 setVariableUIDelegate:self];
      auxiliaryViewPresenter = [(WFModuleSummaryCoordinator *)self auxiliaryViewPresenter];
      [v8 setAuxiliaryViewPresenter:auxiliaryViewPresenter];

      [v8 setAllowsPickingVariables:{-[WFModuleSummaryCoordinator allowsPickingVariables](self, "allowsPickingVariables")}];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (Class)editorClassForParameter:(id)parameter
{
  v3 = objc_opt_class();

  return WFModuleSummaryEditorClassForParameterClass(v3);
}

- (id)currentParameterStateForParameterKey:(id)key
{
  keyCopy = key;
  stagedParameterStates = [(WFModuleSummaryCoordinator *)self stagedParameterStates];
  v6 = [stagedParameterStates objectForKey:keyCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    parameterStates = [(WFModuleSummaryCoordinator *)self parameterStates];
    v8 = [parameterStates objectForKey:keyCopy];
  }

  return v8;
}

- (id)parameterForKey:(id)key
{
  v18 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  parameters = [(WFModuleSummaryCoordinator *)self parameters];
  v6 = [parameters countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(parameters);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 key];
        v11 = [v10 isEqualToString:keyCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [parameters countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (NSDictionary)stagedParameterStates
{
  mutableStagedParameterStates = [(WFModuleSummaryCoordinator *)self mutableStagedParameterStates];
  v3 = [mutableStagedParameterStates copy];

  return v3;
}

- (void)slotTemplateView:(id)view outputButtonDidChange:(BOOL)change
{
  changeCopy = change;
  delegate = [(WFModuleSummaryCoordinator *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(WFModuleSummaryCoordinator *)self delegate];
    [delegate2 summaryCoordinator:self outputButtonDidChange:changeCopy];
  }
}

- (void)slotTemplateView:(id)view disclosureArrowDidChange:(BOOL)change
{
  changeCopy = change;
  delegate = [(WFModuleSummaryCoordinator *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(WFModuleSummaryCoordinator *)self delegate];
    [delegate2 summaryCoordinator:self disclosureArrowDidChange:changeCopy];
  }
}

- (void)slotTemplateViewDidInvalidateSize:(id)size
{
  delegate = [(WFModuleSummaryCoordinator *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(WFModuleSummaryCoordinator *)self delegate];
    [delegate2 summaryCoordinatorDidInvalidateSize:self];
  }
}

- (void)slotTemplateView:(id)view deletePressedOnSlotWithIdentifier:(id)identifier allowResettingValue:(BOOL)value
{
  valueCopy = value;
  identifierCopy = identifier;
  parameterKey = [identifierCopy parameterKey];
  if (parameterKey)
  {
    v9 = [identifierCopy key];
    v10 = [v9 isEqualToString:@"_array_add_"];

    if ((v10 & 1) == 0)
    {
      arrayIndex = [identifierCopy arrayIndex];
      if (arrayIndex == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (valueCopy)
        {
          v12 = [(WFModuleSummaryCoordinator *)self parameterForKey:parameterKey];
          if (v12)
          {
            updateBlock = [(WFModuleSummaryCoordinator *)self updateBlock];

            if (updateBlock)
            {
              v14[0] = MEMORY[0x277D85DD0];
              v14[1] = 3221225472;
              v14[2] = __101__WFModuleSummaryCoordinator_slotTemplateView_deletePressedOnSlotWithIdentifier_allowResettingValue___block_invoke;
              v14[3] = &unk_279EDBC70;
              v14[4] = self;
              v15 = parameterKey;
              [(WFModuleSummaryCoordinator *)self cancelEditingWithCompletionHandler:v14];
            }
          }
        }
      }

      else
      {
        [(WFModuleSummaryCoordinator *)self removeElementFromArrayAtIndex:arrayIndex forParameterKey:parameterKey];
      }
    }
  }
}

void __101__WFModuleSummaryCoordinator_slotTemplateView_deletePressedOnSlotWithIdentifier_allowResettingValue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateBlock];
  (*(v2 + 2))(v2, *(a1 + 40), 0);
}

- (void)slotTemplateView:(id)view didEndTypingInSlotWithIdentifier:(id)identifier
{
  v4 = [(WFModuleSummaryCoordinator *)self currentEditor:view];
  [v4 textEntryDidFinish];
}

- (void)slotTemplateView:(id)view typingDidPasteWithRange:(_NSRange)range originalBlock:(id)block
{
  blockCopy = block;
  currentEditor = [(WFModuleSummaryCoordinator *)self currentEditor];
  [currentEditor textEntryDidPasteWithOriginalBlock:blockCopy];
}

- (void)slotTemplateView:(id)view typingDidCopyWithOriginalBlock:(id)block
{
  blockCopy = block;
  currentEditor = [(WFModuleSummaryCoordinator *)self currentEditor];
  [currentEditor textEntryDidCopyWithOriginalBlock:blockCopy];
}

- (void)slotTemplateView:(id)view typingDidCutWithOriginalBlock:(id)block
{
  blockCopy = block;
  currentEditor = [(WFModuleSummaryCoordinator *)self currentEditor];
  [currentEditor textEntryDidCutWithOriginalBlock:blockCopy];
}

- (void)slotTemplateView:(id)view didChangeText:(id)text forSlotWithIdentifier:(id)identifier
{
  textCopy = text;
  currentEditor = [(WFModuleSummaryCoordinator *)self currentEditor];
  [currentEditor textEntryTextDidChange:textCopy];
}

- (BOOL)slotTemplateView:(id)view shouldChangeText:(id)text forSlotWithIdentifier:(id)identifier
{
  textCopy = text;
  currentEditor = [(WFModuleSummaryCoordinator *)self currentEditor];
  v8 = [currentEditor textEntryShouldChangeText:textCopy];

  return v8;
}

- (void)slotTemplateView:(id)view willBeginTypingInSlotWithIdentifier:(id)identifier usingTextEntry:(id)entry allowMultipleLines:(BOOL *)lines
{
  entryCopy = entry;
  currentEditor = [(WFModuleSummaryCoordinator *)self currentEditor];
  [currentEditor textEntryWillBegin:entryCopy allowMultipleLines:lines];
}

- (void)slotTemplateView:(id)view didTapTextAttachment:(id)attachment inSlotWithIdentifier:(id)identifier
{
  attachmentCopy = attachment;
  identifierCopy = identifier;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = attachmentCopy;
    token = [v9 token];
    if (token)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = token;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    variable = [v12 variable];

    variableBeingEdited = [(WFModuleSummaryCoordinator *)self variableBeingEdited];

    if (variable == variableBeingEdited)
    {
      [(WFModuleSummaryCoordinator *)self cancelEditingWithCompletionHandler:0];

      goto LABEL_10;
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__WFModuleSummaryCoordinator_slotTemplateView_didTapTextAttachment_inSlotWithIdentifier___block_invoke;
  v15[3] = &unk_279EDC130;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = attachmentCopy;
  [(WFModuleSummaryCoordinator *)self cancelEditingWithCompletionHandler:v15];

LABEL_10:
}

- (BOOL)slotTemplateView:(id)view shouldTapTextAttachment:(id)attachment inSlotWithIdentifier:(id)identifier
{
  attachmentCopy = attachment;
  identifierCopy = identifier;
  parameterKey = [identifierCopy parameterKey];
  v10 = [identifierCopy key];
  v11 = v10;
  v12 = 0;
  if (parameterKey && v10)
  {
    v13 = [(WFModuleSummaryCoordinator *)self parameterForKey:parameterKey];
    v12 = [(objc_class *)[(WFModuleSummaryCoordinator *)self editorClassForParameter:v13] supportsEditingTextAttachment:attachmentCopy inSlotWithIdentifier:identifierCopy];
  }

  return v12;
}

- (void)menuDidDismissInSlotTemplateView:(id)view
{
  if (![(WFModuleSummaryCoordinator *)self currentEditorIsEditing])
  {

    [(WFModuleSummaryCoordinator *)self cancelEditingWithCompletionHandler:0];
  }
}

- (id)slotTemplateView:(id)view menuForSlotIdentifier:(id)identifier style:(unint64_t)style
{
  identifierCopy = identifier;
  v8 = [(WFModuleSummaryCoordinator *)self createSummaryEditorForSlotWithIdentifier:identifierCopy];
  v9 = [v8 menuForSlotWithIdentifier:identifierCopy style:style];
  if (v9)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__WFModuleSummaryCoordinator_slotTemplateView_menuForSlotIdentifier_style___block_invoke;
    v12[3] = &unk_279EDC130;
    v12[4] = self;
    v13 = v8;
    v14 = identifierCopy;
    [(WFModuleSummaryCoordinator *)self cancelEditingWithCompletionHandler:v12];
    v10 = v9;
  }

  return v9;
}

uint64_t __75__WFModuleSummaryCoordinator_slotTemplateView_menuForSlotIdentifier_style___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentEditor:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setCurrentlyEditingSlotIdentifier:v2];
}

- (void)slotTemplateView:(id)view didSelectSlotWithIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__WFModuleSummaryCoordinator_slotTemplateView_didSelectSlotWithIdentifier___block_invoke;
  v10[3] = &unk_279EDC130;
  v11 = identifierCopy;
  v12 = viewCopy;
  selfCopy = self;
  v8 = viewCopy;
  v9 = identifierCopy;
  [(WFModuleSummaryCoordinator *)self cancelEditingWithCompletionHandler:v10];
}

void __75__WFModuleSummaryCoordinator_slotTemplateView_didSelectSlotWithIdentifier___block_invoke(id *a1)
{
  v8 = a1[4];
  v2 = [a1[4] key];
  v3 = [v2 isEqualToString:@"_array_add_"];

  if (v3)
  {
    [a1[5] deselectSlot];
    v4 = a1[6];
    v5 = [a1[4] parameterKey];
    v6 = [v4 addElementToArrayForParameterKey:v5];

    if (v6)
    {
      v7 = [v6 identifier];

      v8 = v7;
    }
  }

  [a1[6] beginEditingSlotWithIdentifier:v8 fromTextAttachment:0];
}

- (void)setVariableProvider:(id)provider
{
  providerCopy = provider;
  objc_storeWeak(&self->_variableProvider, providerCopy);
  currentEditor = [(WFModuleSummaryCoordinator *)self currentEditor];
  [currentEditor setVariableProvider:providerCopy];
}

- (void)slotTemplateViewTintColorDidChange:(id)change
{
  currentEditor = [(WFModuleSummaryCoordinator *)self currentEditor];
  [currentEditor sourceViewTintColorDidChange];
}

- (void)setParameters:(id)parameters
{
  v33 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v5 = self->_parameters;
  v6 = parametersCopy;
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    if (v6 && v5)
    {
      v8 = [(NSSet *)v5 isEqualToSet:v6];

      if (v8)
      {
        goto LABEL_27;
      }
    }

    else
    {
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = self->_parameters;
    v10 = [(NSSet *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          if (![(NSSet *)v7 containsObject:v14])
          {
            [v14 removeEventObserver:self];
          }
        }

        v11 = [(NSSet *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = v7;
    v16 = [(NSSet *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v23 + 1) + 8 * j);
          if (![(NSSet *)self->_parameters containsObject:v20, v23])
          {
            [v20 addEventObserver:self];
          }
        }

        v17 = [(NSSet *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v17);
    }

    v21 = [(NSSet *)v15 copy];
    parameters = self->_parameters;
    self->_parameters = v21;
  }

LABEL_27:
}

- (void)setSummaryFormatString:(id)string withParameters:(id)parameters editableParameters:(id)editableParameters parameterStates:(id)states
{
  v57 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  parametersCopy = parameters;
  editableParametersCopy = editableParameters;
  statesCopy = states;
  summaryFormatString = self->_summaryFormatString;
  v13 = stringCopy;
  v14 = summaryFormatString;
  v15 = v14;
  if (v14 == v13)
  {
    v16 = 1;
    goto LABEL_6;
  }

  v16 = 0;
  if (!v13)
  {
LABEL_6:
    v17 = parametersCopy;
    goto LABEL_7;
  }

  v17 = parametersCopy;
  if (v14)
  {
    v16 = [(NSString *)v13 isEqualToString:v14];
  }

LABEL_7:

  editableParameters = self->_editableParameters;
  v19 = editableParametersCopy;
  editableParametersCopy2 = editableParameters;
  v21 = editableParametersCopy2;
  if (editableParametersCopy2 == v19)
  {
    v22 = 1;
  }

  else
  {
    v22 = 0;
    if (v19 && editableParametersCopy2)
    {
      v22 = [(NSSet *)v19 isEqual:editableParametersCopy2];
    }
  }

  if (v16)
  {
    parameters = self->_parameters;
    v24 = v17;
    parametersCopy2 = parameters;
    v26 = parametersCopy2;
    if (parametersCopy2 == v24)
    {

      if (!v22)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (!v24 || !parametersCopy2)
      {
LABEL_24:

        goto LABEL_25;
      }

      v27 = [v24 isEqual:parametersCopy2] & v22;

      if ((v27 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    parameterStates = self->_parameterStates;
    v24 = statesCopy;
    v29 = parameterStates;
    v26 = v29;
    if (v29 == v24)
    {

      goto LABEL_40;
    }

    if (v24 && v29)
    {
      v30 = [v24 isEqual:v29];

      if (v30)
      {
        goto LABEL_40;
      }

      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_25:
  v31 = [(NSString *)v13 copy];
  v32 = self->_summaryFormatString;
  self->_summaryFormatString = v31;

  [(WFModuleSummaryCoordinator *)self setParameters:v17];
  v33 = [(NSSet *)v19 copy];
  v34 = self->_editableParameters;
  self->_editableParameters = v33;

  v35 = [statesCopy copy];
  v36 = self->_parameterStates;
  self->_parameterStates = v35;

  if ((v16 & 1) == 0)
  {
    v37 = [[WFModuleSummaryTemplateBuilder alloc] initWithFormatString:v13];
    [(WFModuleSummaryCoordinator *)self setTemplateBuilder:v37];

    v22 = 0;
  }

  [(WFModuleSummaryCoordinator *)self updateTemplateContentsAnimated:v22 ^ 1u];
  currentlyEditingSlotIdentifier = [(WFModuleSummaryCoordinator *)self currentlyEditingSlotIdentifier];

  if (currentlyEditingSlotIdentifier)
  {
    v49 = v13;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    contents = [(WFModuleSummaryCoordinator *)self contents];
    v40 = [contents countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v53;
      while (2)
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v53 != v42)
          {
            objc_enumerationMutation(contents);
          }

          v44 = *(*(&v52 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            identifier = [v44 identifier];
            currentlyEditingSlotIdentifier2 = [(WFModuleSummaryCoordinator *)self currentlyEditingSlotIdentifier];
            v47 = [identifier isEqual:currentlyEditingSlotIdentifier2];

            if (v47)
            {

              goto LABEL_39;
            }
          }
        }

        v41 = [contents countByEnumeratingWithState:&v52 objects:v56 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    currentEditor = [(WFModuleSummaryCoordinator *)self currentEditor];
    [currentEditor setDelegate:0];

    [(WFModuleSummaryCoordinator *)self cancelEditingWithCompletionHandler:0];
LABEL_39:
    v13 = v49;
    v17 = parametersCopy;
  }

LABEL_40:
}

- (void)updateTemplateContentsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = objc_opt_class();
  stagedParameterStates = [(WFModuleSummaryCoordinator *)self stagedParameterStates];
  parameterStates = [(WFModuleSummaryCoordinator *)self parameterStates];
  v15 = [v5 parameterStatesByApplyingStaging:stagedParameterStates toOriginal:parameterStates];

  templateBuilder = [(WFModuleSummaryCoordinator *)self templateBuilder];
  parameters = [(WFModuleSummaryCoordinator *)self parameters];
  editableParameters = [(WFModuleSummaryCoordinator *)self editableParameters];
  variableBeingEdited = [(WFModuleSummaryCoordinator *)self variableBeingEdited];
  v12 = [templateBuilder buildContentWithParameters:parameters editableParameters:editableParameters parameterStates:v15 variableBeingEdited:variableBeingEdited];
  [(WFModuleSummaryCoordinator *)self setContents:v12];

  templateView = [(WFModuleSummaryCoordinator *)self templateView];
  contents = [(WFModuleSummaryCoordinator *)self contents];
  [templateView setContents:contents animated:animatedCopy];
}

- (void)setTemplateView:(id)view
{
  viewCopy = view;
  p_templateView = &self->_templateView;
  currentlyTypingSlotIdentifier2 = self->_templateView;
  v8 = viewCopy;
  v15 = v8;
  if (currentlyTypingSlotIdentifier2 == v8)
  {

LABEL_13:
    goto LABEL_14;
  }

  if (v8 && currentlyTypingSlotIdentifier2)
  {
    v9 = [(WFSlotTemplateView *)currentlyTypingSlotIdentifier2 isEqual:v8];

    if (v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  [(WFSlotTemplateView *)*p_templateView setDelegate:0];
  [(WFSlotTemplateView *)*p_templateView deselectSlot];
  typingSlotIdentifier = [(WFSlotTemplateView *)*p_templateView typingSlotIdentifier];

  if (typingSlotIdentifier)
  {
    [(WFSlotTemplateView *)*p_templateView endTyping];
  }

  objc_storeStrong(&self->_templateView, view);
  [(WFSlotTemplateView *)v15 setDelegate:self];
  contents = [(WFModuleSummaryCoordinator *)self contents];
  [(WFSlotTemplateView *)v15 setContents:contents animated:0];

  currentlyEditingSlotIdentifier = [(WFModuleSummaryCoordinator *)self currentlyEditingSlotIdentifier];

  if (currentlyEditingSlotIdentifier)
  {
    currentlyEditingSlotIdentifier2 = [(WFModuleSummaryCoordinator *)self currentlyEditingSlotIdentifier];
    [(WFSlotTemplateView *)v15 selectSlotWithIdentifier:currentlyEditingSlotIdentifier2];

    currentlyTypingSlotIdentifier = [(WFModuleSummaryCoordinator *)self currentlyTypingSlotIdentifier];

    if (currentlyTypingSlotIdentifier)
    {
      currentlyTypingSlotIdentifier2 = [(WFModuleSummaryCoordinator *)self currentlyTypingSlotIdentifier];
      [(WFSlotTemplateView *)v15 beginTypingInSlotWithIdentifier:currentlyTypingSlotIdentifier2];
      goto LABEL_13;
    }
  }

LABEL_14:
}

- (WFModuleSummaryCoordinator)init
{
  v9.receiver = self;
  v9.super_class = WFModuleSummaryCoordinator;
  v2 = [(WFModuleSummaryCoordinator *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mutableStagedParameterStates = v2->_mutableStagedParameterStates;
    v2->_mutableStagedParameterStates = v3;

    v5 = objc_opt_new();
    contents = v2->_contents;
    v2->_contents = v5;

    v7 = v2;
  }

  return v2;
}

+ (double)heightForWidth:(double)width withSummaryFormatString:(id)string parameters:(id)parameters editableParameters:(id)editableParameters parameterStates:(id)states stagedParameterStates:(id)parameterStates horizontalPadding:(double)padding font:(id)self0 unpopulatedFont:(id)self1 textAlignment:(int64_t)self2
{
  fontCopy = font;
  unpopulatedFontCopy = unpopulatedFont;
  editableParametersCopy = editableParameters;
  parametersCopy = parameters;
  stringCopy = string;
  v25 = [self parameterStatesByApplyingStaging:parameterStates toOriginal:states];
  v26 = [[WFModuleSummaryTemplateBuilder alloc] initWithFormatString:stringCopy];

  v27 = [(WFModuleSummaryTemplateBuilder *)v26 buildContentWithParameters:parametersCopy editableParameters:editableParametersCopy parameterStates:v25 variableBeingEdited:0];

  if ([v27 count])
  {
    v28 = objc_opt_class();
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __190__WFModuleSummaryCoordinator_heightForWidth_withSummaryFormatString_parameters_editableParameters_parameterStates_stagedParameterStates_horizontalPadding_font_unpopulatedFont_textAlignment___block_invoke;
    v33[3] = &unk_279EDB840;
    v29 = fontCopy;
    v34 = v29;
    [v28 enumerateVariableAttachmentsInContents:v27 withBlock:v33];
    [MEMORY[0x277D7D7C0] heightForWidth:v27 withContents:v29 horizontalPadding:unpopulatedFontCopy font:alignment unpopulatedFont:0 alignment:width useCase:padding];
    v31 = v30;
  }

  else
  {
    v31 = 0.0;
  }

  return v31;
}

+ (id)parameterStatesByApplyingStaging:(id)staging toOriginal:(id)original
{
  stagingCopy = staging;
  originalCopy = original;
  v7 = originalCopy;
  if ([stagingCopy count])
  {
    v8 = [originalCopy mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_opt_new();
    }

    v11 = v10;

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __74__WFModuleSummaryCoordinator_parameterStatesByApplyingStaging_toOriginal___block_invoke;
    v14[3] = &unk_279EDB818;
    v12 = v11;
    v15 = v12;
    [stagingCopy enumerateKeysAndObjectsUsingBlock:v14];
    v7 = v12;
  }

  return v7;
}

void __74__WFModuleSummaryCoordinator_parameterStatesByApplyingStaging_toOriginal___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = *(a1 + 32);
  if (isKindOfClass)
  {
    [v7 removeObjectForKey:v5];
  }

  else
  {
    [v7 setObject:v8 forKey:v5];
  }
}

+ (void)enumerateVariableAttachmentsInContents:(id)contents withBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  blockCopy = block;
  obj = contentsCopy;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [contentsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    v9 = *MEMORY[0x277D74060];
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          contentAttributedString = [v12 contentAttributedString];
          contentAttributedString2 = [v12 contentAttributedString];
          v15 = [contentAttributedString2 length];
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __79__WFModuleSummaryCoordinator_enumerateVariableAttachmentsInContents_withBlock___block_invoke;
          v18[3] = &unk_279EDB7F0;
          v19 = blockCopy;
          [contentAttributedString enumerateAttribute:v9 inRange:0 options:v15 usingBlock:{0, v18}];
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }
}

void __79__WFModuleSummaryCoordinator_enumerateVariableAttachmentsInContents_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end