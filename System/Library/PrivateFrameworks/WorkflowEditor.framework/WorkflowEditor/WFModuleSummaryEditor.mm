@interface WFModuleSummaryEditor
+ (BOOL)supportsEditingTextAttachment:(id)attachment inSlotWithIdentifier:(id)identifier;
- (BOOL)canTypeAlongsideVariables;
- (BOOL)menuElementsContainDeferredElement:(id)element withEstimatedCountGreaterThan:(int64_t)than;
- (BOOL)variableMenuSupportsVariableSelectionForSlotWithIdentifier:(id)identifier;
- (WFEditorAuxiliaryViewPresenter)auxiliaryViewPresenter;
- (WFModuleSummaryEditor)initWithParameter:(id)parameter arrayIndex:(unint64_t)index processing:(BOOL)processing;
- (WFMultipleValueParameterState)initialArrayState;
- (WFParameterState)currentState;
- (WFParameterState)initialState;
- (WFSlotTemplateTextEntry)textEntry;
- (WFVariableProvider)variableProvider;
- (WFVariableUIDelegate)variableUIDelegate;
- (id)clearButtonMenuItemForSlotWithIdentifier:(id)identifier;
- (id)menuForSlotWithIdentifier:(id)identifier style:(unint64_t)style;
- (id)stateByReplacingVariableFromCurrentState:(id)state withVariable:(id)variable;
- (id)variableMenuElementsForSlotWithIdentifier:(id)identifier;
- (void)_beginEditingVariableAttachment:(id)attachment slotIdentifier:(id)identifier presentationAnchor:(id)anchor;
- (void)beginEditingTextAttachment:(id)attachment inSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor;
- (void)commitAuxiliaryState:(id)state forKey:(id)key;
- (void)commitState:(id)state;
- (void)completeEditingWithTextAttachmentToEdit:(id)edit;
- (void)requestEditingSlotIdentifier:(id)identifier;
- (void)requestTextEntry;
- (void)stageState:(id)state;
@end

@implementation WFModuleSummaryEditor

- (WFSlotTemplateTextEntry)textEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_textEntry);

  return WeakRetained;
}

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

- (void)_beginEditingVariableAttachment:(id)attachment slotIdentifier:(id)identifier presentationAnchor:(id)anchor
{
  v38 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  anchorCopy = anchor;
  token = [attachmentCopy token];
  if (token)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = token;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  variable = [v11 variable];

  [(WFModuleSummaryEditor *)self setLastValueForEditingVariable:variable];
  variableUIDelegate = [(WFModuleSummaryEditor *)self variableUIDelegate];
  if (objc_opt_respondsToSelector())
  {
    variableProvider = [(WFModuleSummaryEditor *)self variableProvider];

    if (variableProvider)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __91__WFModuleSummaryEditor__beginEditingVariableAttachment_slotIdentifier_presentationAnchor___block_invoke;
      aBlock[3] = &unk_279EDBDF8;
      aBlock[4] = self;
      v15 = _Block_copy(aBlock);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __91__WFModuleSummaryEditor__beginEditingVariableAttachment_slotIdentifier_presentationAnchor___block_invoke_2;
      v34[3] = &unk_279EDC108;
      v34[4] = self;
      v16 = _Block_copy(v34);
      v17 = objc_opt_class();
      parameter = [(WFModuleSummaryEditor *)self parameter];
      v19 = [v17 variableResultTypeForParameter:parameter];

      token2 = [attachmentCopy token];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v22 = [WFVariableEditingAnchor alloc];
        token3 = [attachmentCopy token];
        [token3 variable];
        v24 = v33 = v16;
        variableProvider2 = [(WFModuleSummaryEditor *)self variableProvider];
        [(WFModuleSummaryEditor *)self parameter];
        v26 = v32 = v19;
        [anchorCopy sourceView];
        v28 = v27 = v15;
        [anchorCopy sourceRect];
        v29 = [(WFVariableEditingAnchor *)v22 initWithVariable:v24 variableProvider:variableProvider2 parameter:v26 sourceView:v28 sourceRect:?];

        v15 = v27;
        v16 = v33;

        v30 = [[WFVariableEditingOptions alloc] initWithAnchor:v29 resultType:v32 onChange:v27 onFinish:v33];
        variableUIDelegate2 = [(WFModuleSummaryEditor *)self variableUIDelegate];
        [anchorCopy sourceRect];
        [variableUIDelegate2 showVariableEditorWithOptions:v30 fromSourceRect:?];
      }

      else
      {
        v29 = getWFGeneralLogObject();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v37 = "[WFModuleSummaryEditor _beginEditingVariableAttachment:slotIdentifier:presentationAnchor:]";
          _os_log_impl(&dword_2743F0000, v29, OS_LOG_TYPE_FAULT, "%s Variable attachment token was not of type WFSlotTemplateVariableToken!", buf, 0xCu);
        }
      }
    }
  }

  else
  {
  }
}

void __91__WFModuleSummaryEditor__beginEditingVariableAttachment_slotIdentifier_presentationAnchor___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 summaryEditor:*(a1 + 32) willUpdateVariable:v9];
  }

  v6 = *(a1 + 32);
  v7 = [v6 lastValueForEditingVariable];
  v8 = [v6 stateByReplacingVariableFromCurrentState:v7 withVariable:v9];
  [v6 commitState:v8];

  [*(a1 + 32) setLastValueForEditingVariable:v9];
}

uint64_t __91__WFModuleSummaryEditor__beginEditingVariableAttachment_slotIdentifier_presentationAnchor___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setLastValueForEditingVariable:0];
  [*(a1 + 32) setReturnToKeyboardOnComplete:a2];
  v4 = *(a1 + 32);

  return [v4 completeEditing];
}

- (id)stateByReplacingVariableFromCurrentState:(id)state withVariable:(id)variable
{
  stateCopy = state;
  variableCopy = variable;
  delegate = [(WFModuleSummaryEditor *)self delegate];
  v9 = [delegate initialStateForSummaryEditor:self];

  v10 = v9;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
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

  if (!variableCopy && v12)
  {
    parameterStates = [v12 parameterStates];
    v14 = [parameterStates mutableCopy];

    arrayIndex = self->_arrayIndex;
    if (arrayIndex != 0x7FFFFFFFFFFFFFFFLL && arrayIndex < [v14 count])
    {
      [v14 removeObjectAtIndex:self->_arrayIndex];
      v16 = [objc_alloc(objc_opt_class()) initWithParameterStates:v14];

      goto LABEL_20;
    }
  }

  parameter = [(WFModuleSummaryEditor *)self parameter];
  stateClass = [parameter stateClass];

  if (stateClass == objc_opt_class() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v19 = [v10 stateByReplacingVariable:stateCopy withVariable:variableCopy];
LABEL_18:
    v16 = v19;
    goto LABEL_20;
  }

  if (variableCopy && [(objc_class *)stateClass instancesRespondToSelector:sel_initWithVariable_])
  {
    v19 = [[stateClass alloc] initWithVariable:variableCopy];
    goto LABEL_18;
  }

  v16 = 0;
LABEL_20:

  return v16;
}

- (BOOL)canTypeAlongsideVariables
{
  parameter = [(WFModuleSummaryEditor *)self parameter];
  stateClass = [parameter stateClass];

  v4 = objc_opt_class();

  return [stateClass isSubclassOfClass:v4];
}

- (void)beginEditingTextAttachment:(id)attachment inSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor
{
  attachmentCopy = attachment;
  identifierCopy = identifier;
  anchorCopy = anchor;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(WFModuleSummaryEditor *)self _beginEditingVariableAttachment:attachmentCopy slotIdentifier:identifierCopy presentationAnchor:anchorCopy];
  }

  else
  {
    [(WFModuleSummaryEditor *)self completeEditing];
  }
}

- (void)requestEditingSlotIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(WFModuleSummaryEditor *)self delegate];
  [delegate summaryEditor:self didRequestEditingSlotWithIdentifier:identifierCopy];
}

- (id)menuForSlotWithIdentifier:(id)identifier style:(unint64_t)style
{
  v59 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = [(WFModuleSummaryEditor *)self clearButtonMenuItemForSlotWithIdentifier:identifierCopy];
  v8 = [(WFModuleSummaryEditor *)self variableMenuElementsForSlotWithIdentifier:identifierCopy];
  v9 = [(WFModuleSummaryEditor *)self customMenuElementsForSlotWithIdentifier:identifierCopy style:style];
  if (style && (style != 1 || v7 || [v8 count]) || objc_msgSend(v9, "count"))
  {
    v10 = objc_opt_new();
    [v10 addObjectsFromArray:v9];
    v47 = v9;
    v48 = v10;
    if ([v9 count])
    {
      v44 = [(WFModuleSummaryEditor *)self menuElementsContainDeferredElement:v9 withEstimatedCountGreaterThan:5];
      v11 = [v8 count] > 1;
      if ([v8 count] == 1)
      {
        v12 = [v8 objectAtIndexedSubscript:0];
        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            menuElements = [v12 menuElements];
            v11 = [menuElements count] > 1;
          }
        }

        v45 = v11;
      }

      else
      {
        v45 = v11;
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v15 = v9;
      v16 = [v15 countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v16)
      {
        v17 = v16;
        v42 = v8;
        v46 = v7;
        v43 = identifierCopy;
        v18 = 0;
        v19 = *v54;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v54 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v53 + 1) + 8 * i);
            if (v21)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v22 = v21;
              }

              else
              {
                v22 = 0;
              }
            }

            else
            {
              v22 = 0;
            }

            v23 = v22;

            if (v23)
            {
              ++v18;
            }

            v24 = v21;
            if (v21)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if ([v24 shouldCollapse])
                {
                  ++v18;
                }

                else
                {
                  menuElements2 = [v24 menuElements];
                  v18 += [menuElements2 count];
                }
              }
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v17);
        v26 = v18 > 10;
        v8 = v42;
        identifierCopy = v43;
        v7 = v46;
      }

      else
      {
        v26 = 0;
      }

      v14 = v45 && (v26 || v44);
      v10 = v48;
    }

    else
    {
      v14 = 0;
    }

    initialState = [(WFModuleSummaryEditor *)self initialState];
    if (initialState)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = initialState;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;

    variable = [v29 variable];

    if (v14)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v8 = v8;
      v31 = [v8 countByEnumeratingWithState:&v49 objects:v57 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v50;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v50 != v33)
            {
              objc_enumerationMutation(v8);
            }

            v35 = *(*(&v49 + 1) + 8 * j);
            v36 = v35;
            if (v35 && [v35 conformsToProtocol:&unk_2883EF268])
            {
              [v36 setStyle:0];
            }
          }

          v32 = [v8 countByEnumeratingWithState:&v49 objects:v57 count:16];
        }

        while (v32);
      }

      if (v7)
      {
        v10 = v48;
        if (variable)
        {
          v37 = [v8 arrayByAddingObject:v7];

          v8 = v37;
        }

        else
        {
          [v48 addObject:v7];
        }
      }

      else
      {
        v10 = v48;
      }

      v39 = [objc_alloc(MEMORY[0x277D7D7D0]) initWithMenuElements:v8];
      [v39 setStyle:1];
      v40 = WFLocalizedString(@"Variables…");
      [v39 setTitle:v40];

      [v10 insertObject:v39 atIndex:0];
    }

    else
    {
      [v10 addObjectsFromArray:v8];
      if (v7)
      {
        [v10 addObject:v7];
      }
    }

    v38 = [objc_alloc(MEMORY[0x277D7D788]) initWithElements:v10];
    [v38 setShouldDisplayInFixedOrder:v14];

    v9 = v47;
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (BOOL)menuElementsContainDeferredElement:(id)element withEstimatedCountGreaterThan:(int64_t)than
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  elementCopy = element;
  v7 = [elementCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(elementCopy);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          estimatedItemCount = [v11 estimatedItemCount];
          v13 = 1;
          if (estimatedItemCount < 0 || estimatedItemCount > than)
          {
            goto LABEL_15;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            menuElements = [v11 menuElements];
            v13 = [(WFModuleSummaryEditor *)self menuElementsContainDeferredElement:menuElements withEstimatedCountGreaterThan:than];

            goto LABEL_15;
          }
        }
      }

      v8 = [elementCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)clearButtonMenuItemForSlotWithIdentifier:(id)identifier
{
  if ([(WFModuleSummaryEditor *)self allowsPickingVariables])
  {
    initialState = [(WFModuleSummaryEditor *)self initialState];
    containedVariables = [initialState containedVariables];

    if ([containedVariables count] == 1)
    {
      firstObject = [containedVariables firstObject];
    }

    else
    {
      firstObject = 0;
    }

    parameter = [(WFModuleSummaryEditor *)self parameter];
    initialState2 = [(WFModuleSummaryEditor *)self initialState];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__WFModuleSummaryEditor_clearButtonMenuItemForSlotWithIdentifier___block_invoke;
    v12[3] = &unk_279EDBDD0;
    v12[4] = self;
    v13 = firstObject;
    v10 = firstObject;
    v7 = [parameter clearButtonMenuItemWithVariable:v10 parameterState:initialState2 setVariableHandler:v12];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __66__WFModuleSummaryEditor_clearButtonMenuItemForSlotWithIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [v3 stateByReplacingVariableFromCurrentState:*(a1 + 40) withVariable:a2];
  [v3 commitState:v4];

  v5 = *(a1 + 32);

  return [v5 completeEditing];
}

- (id)variableMenuElementsForSlotWithIdentifier:(id)identifier
{
  if ([(WFModuleSummaryEditor *)self variableMenuSupportsVariableSelectionForSlotWithIdentifier:identifier]&& [(WFModuleSummaryEditor *)self allowsPickingVariables])
  {
    parameter = [(WFModuleSummaryEditor *)self parameter];
    initialState = [(WFModuleSummaryEditor *)self initialState];
    containedVariables = [initialState containedVariables];

    if ([containedVariables count] == 1)
    {
      v7 = [containedVariables objectAtIndexedSubscript:0];
    }

    else
    {
      v7 = 0;
    }

    initialState2 = [(WFModuleSummaryEditor *)self initialState];
    variableProvider = [(WFModuleSummaryEditor *)self variableProvider];
    variableUIDelegate = [(WFModuleSummaryEditor *)self variableUIDelegate];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __67__WFModuleSummaryEditor_variableMenuElementsForSlotWithIdentifier___block_invoke;
    v14[3] = &unk_279EDBDD0;
    v14[4] = self;
    v15 = v7;
    v12 = v7;
    v8 = [parameter variableMenuElementsWithVariable:v12 parameterState:initialState2 variableProvider:variableProvider variableUIDelegate:variableUIDelegate setVariableHandler:v14];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __67__WFModuleSummaryEditor_variableMenuElementsForSlotWithIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [v3 stateByReplacingVariableFromCurrentState:*(a1 + 40) withVariable:a2];
  [v3 commitState:v4];

  v5 = *(a1 + 32);

  return [v5 completeEditing];
}

- (BOOL)variableMenuSupportsVariableSelectionForSlotWithIdentifier:(id)identifier
{
  parameter = [(WFModuleSummaryEditor *)self parameter];
  stateClass = [parameter stateClass];

  return [stateClass instancesRespondToSelector:sel_initWithVariable_];
}

- (void)requestTextEntry
{
  delegate = [(WFModuleSummaryEditor *)self delegate];
  [delegate summaryEditorDidRequestTextEntry:self];
}

- (void)completeEditingWithTextAttachmentToEdit:(id)edit
{
  editCopy = edit;
  delegate = [(WFModuleSummaryEditor *)self delegate];
  [delegate summaryEditorDidFinish:self returnToKeyboard:-[WFModuleSummaryEditor returnToKeyboardOnComplete](self withTextAttachmentToEdit:{"returnToKeyboardOnComplete"), editCopy}];
}

- (void)commitAuxiliaryState:(id)state forKey:(id)key
{
  stateCopy = state;
  keyCopy = key;
  delegate = [(WFModuleSummaryEditor *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(WFModuleSummaryEditor *)self delegate];
    [delegate2 summaryEditor:self didCommitAuxiliaryParameterState:stateCopy forKey:keyCopy];
  }
}

- (void)commitState:(id)state
{
  objc_storeStrong(&self->_currentState, state);
  stateCopy = state;
  delegate = [(WFModuleSummaryEditor *)self delegate];
  [delegate summaryEditor:self didCommitParameterState:stateCopy];
}

- (void)stageState:(id)state
{
  stateCopy = state;
  objc_storeStrong(&self->_currentState, state);
  delegate = [(WFModuleSummaryEditor *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WFModuleSummaryEditor *)self delegate];
    [delegate2 summaryEditor:self didStageParameterState:stateCopy];
  }
}

- (WFMultipleValueParameterState)initialArrayState
{
  delegate = [(WFModuleSummaryEditor *)self delegate];
  v4 = [delegate initialStateForSummaryEditor:self];

  v5 = v4;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (WFParameterState)initialState
{
  arrayIndex = [(WFModuleSummaryEditor *)self arrayIndex];
  delegate = [(WFModuleSummaryEditor *)self delegate];
  v5 = [delegate initialStateForSummaryEditor:self];

  v6 = v5;
  if (v6)
  {
    objc_opt_class();
    v7 = v6;
    if (objc_opt_isKindOfClass())
    {
      parameterStates = [v6 parameterStates];
      v9 = parameterStates;
      if (arrayIndex == 0x7FFFFFFFFFFFFFFFLL || arrayIndex >= [parameterStates count])
      {
        v7 = 0;
      }

      else
      {
        v7 = [v9 objectAtIndex:arrayIndex];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (WFParameterState)currentState
{
  currentState = self->_currentState;
  if (currentState)
  {
    initialState = currentState;
  }

  else
  {
    initialState = [(WFModuleSummaryEditor *)self initialState];
  }

  return initialState;
}

- (WFModuleSummaryEditor)initWithParameter:(id)parameter arrayIndex:(unint64_t)index processing:(BOOL)processing
{
  parameterCopy = parameter;
  v14.receiver = self;
  v14.super_class = WFModuleSummaryEditor;
  v10 = [(WFModuleSummaryEditor *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_parameter, parameter);
    v11->_arrayIndex = index;
    v11->_processing = processing;
    v12 = v11;
  }

  return v11;
}

+ (BOOL)supportsEditingTextAttachment:(id)attachment inSlotWithIdentifier:(id)identifier
{
  attachmentCopy = attachment;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end