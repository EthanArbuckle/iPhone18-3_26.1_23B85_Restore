@interface WFModuleSummaryEditor
+ (BOOL)supportsEditingTextAttachment:(id)a3 inSlotWithIdentifier:(id)a4;
- (BOOL)canTypeAlongsideVariables;
- (BOOL)menuElementsContainDeferredElement:(id)a3 withEstimatedCountGreaterThan:(int64_t)a4;
- (BOOL)variableMenuSupportsVariableSelectionForSlotWithIdentifier:(id)a3;
- (WFEditorAuxiliaryViewPresenter)auxiliaryViewPresenter;
- (WFModuleSummaryEditor)initWithParameter:(id)a3 arrayIndex:(unint64_t)a4 processing:(BOOL)a5;
- (WFMultipleValueParameterState)initialArrayState;
- (WFParameterState)currentState;
- (WFParameterState)initialState;
- (WFSlotTemplateTextEntry)textEntry;
- (WFVariableProvider)variableProvider;
- (WFVariableUIDelegate)variableUIDelegate;
- (id)clearButtonMenuItemForSlotWithIdentifier:(id)a3;
- (id)menuForSlotWithIdentifier:(id)a3 style:(unint64_t)a4;
- (id)stateByReplacingVariableFromCurrentState:(id)a3 withVariable:(id)a4;
- (id)variableMenuElementsForSlotWithIdentifier:(id)a3;
- (void)_beginEditingVariableAttachment:(id)a3 slotIdentifier:(id)a4 presentationAnchor:(id)a5;
- (void)beginEditingTextAttachment:(id)a3 inSlotWithIdentifier:(id)a4 presentationAnchor:(id)a5;
- (void)commitAuxiliaryState:(id)a3 forKey:(id)a4;
- (void)commitState:(id)a3;
- (void)completeEditingWithTextAttachmentToEdit:(id)a3;
- (void)requestEditingSlotIdentifier:(id)a3;
- (void)requestTextEntry;
- (void)stageState:(id)a3;
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

- (void)_beginEditingVariableAttachment:(id)a3 slotIdentifier:(id)a4 presentationAnchor:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [v7 token];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
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

  v12 = [v11 variable];

  [(WFModuleSummaryEditor *)self setLastValueForEditingVariable:v12];
  v13 = [(WFModuleSummaryEditor *)self variableUIDelegate];
  if (objc_opt_respondsToSelector())
  {
    v14 = [(WFModuleSummaryEditor *)self variableProvider];

    if (v14)
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
      v18 = [(WFModuleSummaryEditor *)self parameter];
      v19 = [v17 variableResultTypeForParameter:v18];

      v20 = [v7 token];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v22 = [WFVariableEditingAnchor alloc];
        v23 = [v7 token];
        [v23 variable];
        v24 = v33 = v16;
        v25 = [(WFModuleSummaryEditor *)self variableProvider];
        [(WFModuleSummaryEditor *)self parameter];
        v26 = v32 = v19;
        [v8 sourceView];
        v28 = v27 = v15;
        [v8 sourceRect];
        v29 = [(WFVariableEditingAnchor *)v22 initWithVariable:v24 variableProvider:v25 parameter:v26 sourceView:v28 sourceRect:?];

        v15 = v27;
        v16 = v33;

        v30 = [[WFVariableEditingOptions alloc] initWithAnchor:v29 resultType:v32 onChange:v27 onFinish:v33];
        v31 = [(WFModuleSummaryEditor *)self variableUIDelegate];
        [v8 sourceRect];
        [v31 showVariableEditorWithOptions:v30 fromSourceRect:?];
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

- (id)stateByReplacingVariableFromCurrentState:(id)a3 withVariable:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFModuleSummaryEditor *)self delegate];
  v9 = [v8 initialStateForSummaryEditor:self];

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

  if (!v7 && v12)
  {
    v13 = [v12 parameterStates];
    v14 = [v13 mutableCopy];

    arrayIndex = self->_arrayIndex;
    if (arrayIndex != 0x7FFFFFFFFFFFFFFFLL && arrayIndex < [v14 count])
    {
      [v14 removeObjectAtIndex:self->_arrayIndex];
      v16 = [objc_alloc(objc_opt_class()) initWithParameterStates:v14];

      goto LABEL_20;
    }
  }

  v17 = [(WFModuleSummaryEditor *)self parameter];
  v18 = [v17 stateClass];

  if (v18 == objc_opt_class() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v19 = [v10 stateByReplacingVariable:v6 withVariable:v7];
LABEL_18:
    v16 = v19;
    goto LABEL_20;
  }

  if (v7 && [(objc_class *)v18 instancesRespondToSelector:sel_initWithVariable_])
  {
    v19 = [[v18 alloc] initWithVariable:v7];
    goto LABEL_18;
  }

  v16 = 0;
LABEL_20:

  return v16;
}

- (BOOL)canTypeAlongsideVariables
{
  v2 = [(WFModuleSummaryEditor *)self parameter];
  v3 = [v2 stateClass];

  v4 = objc_opt_class();

  return [v3 isSubclassOfClass:v4];
}

- (void)beginEditingTextAttachment:(id)a3 inSlotWithIdentifier:(id)a4 presentationAnchor:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(WFModuleSummaryEditor *)self _beginEditingVariableAttachment:v10 slotIdentifier:v8 presentationAnchor:v9];
  }

  else
  {
    [(WFModuleSummaryEditor *)self completeEditing];
  }
}

- (void)requestEditingSlotIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WFModuleSummaryEditor *)self delegate];
  [v5 summaryEditor:self didRequestEditingSlotWithIdentifier:v4];
}

- (id)menuForSlotWithIdentifier:(id)a3 style:(unint64_t)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(WFModuleSummaryEditor *)self clearButtonMenuItemForSlotWithIdentifier:v6];
  v8 = [(WFModuleSummaryEditor *)self variableMenuElementsForSlotWithIdentifier:v6];
  v9 = [(WFModuleSummaryEditor *)self customMenuElementsForSlotWithIdentifier:v6 style:a4];
  if (a4 && (a4 != 1 || v7 || [v8 count]) || objc_msgSend(v9, "count"))
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
            v13 = [v12 menuElements];
            v11 = [v13 count] > 1;
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
        v43 = v6;
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
                  v25 = [v24 menuElements];
                  v18 += [v25 count];
                }
              }
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v17);
        v26 = v18 > 10;
        v8 = v42;
        v6 = v43;
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

    v27 = [(WFModuleSummaryEditor *)self initialState];
    if (v27)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v27;
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

    v30 = [v29 variable];

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
        if (v30)
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

- (BOOL)menuElementsContainDeferredElement:(id)a3 withEstimatedCountGreaterThan:(int64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 estimatedItemCount];
          v13 = 1;
          if (v12 < 0 || v12 > a4)
          {
            goto LABEL_15;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v11 menuElements];
            v13 = [(WFModuleSummaryEditor *)self menuElementsContainDeferredElement:v14 withEstimatedCountGreaterThan:a4];

            goto LABEL_15;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)clearButtonMenuItemForSlotWithIdentifier:(id)a3
{
  if ([(WFModuleSummaryEditor *)self allowsPickingVariables])
  {
    v4 = [(WFModuleSummaryEditor *)self initialState];
    v5 = [v4 containedVariables];

    if ([v5 count] == 1)
    {
      v6 = [v5 firstObject];
    }

    else
    {
      v6 = 0;
    }

    v8 = [(WFModuleSummaryEditor *)self parameter];
    v9 = [(WFModuleSummaryEditor *)self initialState];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__WFModuleSummaryEditor_clearButtonMenuItemForSlotWithIdentifier___block_invoke;
    v12[3] = &unk_279EDBDD0;
    v12[4] = self;
    v13 = v6;
    v10 = v6;
    v7 = [v8 clearButtonMenuItemWithVariable:v10 parameterState:v9 setVariableHandler:v12];
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

- (id)variableMenuElementsForSlotWithIdentifier:(id)a3
{
  if ([(WFModuleSummaryEditor *)self variableMenuSupportsVariableSelectionForSlotWithIdentifier:a3]&& [(WFModuleSummaryEditor *)self allowsPickingVariables])
  {
    v4 = [(WFModuleSummaryEditor *)self parameter];
    v5 = [(WFModuleSummaryEditor *)self initialState];
    v6 = [v5 containedVariables];

    if ([v6 count] == 1)
    {
      v7 = [v6 objectAtIndexedSubscript:0];
    }

    else
    {
      v7 = 0;
    }

    v9 = [(WFModuleSummaryEditor *)self initialState];
    v10 = [(WFModuleSummaryEditor *)self variableProvider];
    v11 = [(WFModuleSummaryEditor *)self variableUIDelegate];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __67__WFModuleSummaryEditor_variableMenuElementsForSlotWithIdentifier___block_invoke;
    v14[3] = &unk_279EDBDD0;
    v14[4] = self;
    v15 = v7;
    v12 = v7;
    v8 = [v4 variableMenuElementsWithVariable:v12 parameterState:v9 variableProvider:v10 variableUIDelegate:v11 setVariableHandler:v14];
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

- (BOOL)variableMenuSupportsVariableSelectionForSlotWithIdentifier:(id)a3
{
  v3 = [(WFModuleSummaryEditor *)self parameter];
  v4 = [v3 stateClass];

  return [v4 instancesRespondToSelector:sel_initWithVariable_];
}

- (void)requestTextEntry
{
  v3 = [(WFModuleSummaryEditor *)self delegate];
  [v3 summaryEditorDidRequestTextEntry:self];
}

- (void)completeEditingWithTextAttachmentToEdit:(id)a3
{
  v4 = a3;
  v5 = [(WFModuleSummaryEditor *)self delegate];
  [v5 summaryEditorDidFinish:self returnToKeyboard:-[WFModuleSummaryEditor returnToKeyboardOnComplete](self withTextAttachmentToEdit:{"returnToKeyboardOnComplete"), v4}];
}

- (void)commitAuxiliaryState:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(WFModuleSummaryEditor *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(WFModuleSummaryEditor *)self delegate];
    [v9 summaryEditor:self didCommitAuxiliaryParameterState:v10 forKey:v6];
  }
}

- (void)commitState:(id)a3
{
  objc_storeStrong(&self->_currentState, a3);
  v5 = a3;
  v6 = [(WFModuleSummaryEditor *)self delegate];
  [v6 summaryEditor:self didCommitParameterState:v5];
}

- (void)stageState:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_currentState, a3);
  v5 = [(WFModuleSummaryEditor *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WFModuleSummaryEditor *)self delegate];
    [v7 summaryEditor:self didStageParameterState:v8];
  }
}

- (WFMultipleValueParameterState)initialArrayState
{
  v3 = [(WFModuleSummaryEditor *)self delegate];
  v4 = [v3 initialStateForSummaryEditor:self];

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
  v3 = [(WFModuleSummaryEditor *)self arrayIndex];
  v4 = [(WFModuleSummaryEditor *)self delegate];
  v5 = [v4 initialStateForSummaryEditor:self];

  v6 = v5;
  if (v6)
  {
    objc_opt_class();
    v7 = v6;
    if (objc_opt_isKindOfClass())
    {
      v8 = [v6 parameterStates];
      v9 = v8;
      if (v3 == 0x7FFFFFFFFFFFFFFFLL || v3 >= [v8 count])
      {
        v7 = 0;
      }

      else
      {
        v7 = [v9 objectAtIndex:v3];
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
    v3 = currentState;
  }

  else
  {
    v3 = [(WFModuleSummaryEditor *)self initialState];
  }

  return v3;
}

- (WFModuleSummaryEditor)initWithParameter:(id)a3 arrayIndex:(unint64_t)a4 processing:(BOOL)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = WFModuleSummaryEditor;
  v10 = [(WFModuleSummaryEditor *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_parameter, a3);
    v11->_arrayIndex = a4;
    v11->_processing = a5;
    v12 = v11;
  }

  return v11;
}

+ (BOOL)supportsEditingTextAttachment:(id)a3 inSlotWithIdentifier:(id)a4
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end