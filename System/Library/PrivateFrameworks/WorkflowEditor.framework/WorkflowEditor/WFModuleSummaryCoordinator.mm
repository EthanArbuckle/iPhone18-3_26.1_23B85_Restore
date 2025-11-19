@interface WFModuleSummaryCoordinator
+ (double)heightForWidth:(double)a3 withSummaryFormatString:(id)a4 parameters:(id)a5 editableParameters:(id)a6 parameterStates:(id)a7 stagedParameterStates:(id)a8 horizontalPadding:(double)a9 font:(id)a10 unpopulatedFont:(id)a11 textAlignment:(int64_t)a12;
+ (id)parameterStatesByApplyingStaging:(id)a3 toOriginal:(id)a4;
+ (void)enumerateVariableAttachmentsInContents:(id)a3 withBlock:(id)a4;
- (BOOL)slotTemplateView:(id)a3 shouldChangeText:(id)a4 forSlotWithIdentifier:(id)a5;
- (BOOL)slotTemplateView:(id)a3 shouldTapTextAttachment:(id)a4 inSlotWithIdentifier:(id)a5;
- (Class)editorClassForParameter:(id)a3;
- (NSDictionary)stagedParameterStates;
- (WFEditorAuxiliaryViewPresenter)auxiliaryViewPresenter;
- (WFModuleSummaryCoordinator)init;
- (WFModuleSummaryCoordinatorDelegate)delegate;
- (WFVariableProvider)variableProvider;
- (WFVariableUIDelegate)variableUIDelegate;
- (id)addElementToArrayForParameterKey:(id)a3;
- (id)createSummaryEditorForSlotWithIdentifier:(id)a3;
- (id)currentParameterStateForParameterKey:(id)a3;
- (id)firstSlotIdentifierWithParameterKey:(id)a3;
- (id)initialStateForSummaryEditor:(id)a3;
- (id)parameterForKey:(id)a3;
- (id)presentationAnchorForSlotWithIdentifier:(id)a3;
- (id)slotTemplateView:(id)a3 menuForSlotIdentifier:(id)a4 style:(unint64_t)a5;
- (id)transformParameterStateForSerialization:(id)a3 arrayIndex:(unint64_t)a4 parameter:(id)a5;
- (void)beginEditingSlotWithIdentifier:(id)a3 fromTextAttachment:(id)a4;
- (void)cancelEditingWithCompletionHandler:(id)a3;
- (void)commitParameterState:(id)a3 forKey:(id)a4;
- (void)destroyCurrentEditor;
- (void)menuDidDismissInSlotTemplateView:(id)a3;
- (void)removeElementFromArrayAtIndex:(unint64_t)a3 forParameterKey:(id)a4;
- (void)revealAction:(id)a3 preScrollHandler:(id)a4 goBackHandler:(id)a5 scrolledAwayHandler:(id)a6;
- (void)setParameters:(id)a3;
- (void)setSummaryFormatString:(id)a3 withParameters:(id)a4 editableParameters:(id)a5 parameterStates:(id)a6;
- (void)setTemplateView:(id)a3;
- (void)setVariableProvider:(id)a3;
- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)a3 variableProvider:(id)a4 completionHandler:(id)a5;
- (void)showParameterEditingHint:(id)a3;
- (void)showVariableEditorWithOptions:(id)a3 fromSourceRect:(CGRect)a4;
- (void)slotTemplateView:(id)a3 deletePressedOnSlotWithIdentifier:(id)a4 allowResettingValue:(BOOL)a5;
- (void)slotTemplateView:(id)a3 didChangeText:(id)a4 forSlotWithIdentifier:(id)a5;
- (void)slotTemplateView:(id)a3 didEndTypingInSlotWithIdentifier:(id)a4;
- (void)slotTemplateView:(id)a3 didSelectSlotWithIdentifier:(id)a4;
- (void)slotTemplateView:(id)a3 didTapTextAttachment:(id)a4 inSlotWithIdentifier:(id)a5;
- (void)slotTemplateView:(id)a3 disclosureArrowDidChange:(BOOL)a4;
- (void)slotTemplateView:(id)a3 outputButtonDidChange:(BOOL)a4;
- (void)slotTemplateView:(id)a3 typingDidCopyWithOriginalBlock:(id)a4;
- (void)slotTemplateView:(id)a3 typingDidCutWithOriginalBlock:(id)a4;
- (void)slotTemplateView:(id)a3 typingDidPasteWithRange:(_NSRange)a4 originalBlock:(id)a5;
- (void)slotTemplateView:(id)a3 willBeginTypingInSlotWithIdentifier:(id)a4 usingTextEntry:(id)a5 allowMultipleLines:(BOOL *)a6;
- (void)slotTemplateViewDidInvalidateSize:(id)a3;
- (void)slotTemplateViewTintColorDidChange:(id)a3;
- (void)summaryEditor:(id)a3 didCommitParameterState:(id)a4;
- (void)summaryEditor:(id)a3 didRequestEditingSlotWithIdentifier:(id)a4;
- (void)summaryEditor:(id)a3 didStageParameterState:(id)a4;
- (void)summaryEditorDidFinish:(id)a3 returnToKeyboard:(BOOL)a4 withTextAttachmentToEdit:(id)a5;
- (void)summaryEditorDidRequestTextEntry:(id)a3;
- (void)updateTemplateContentsAnimated:(BOOL)a3;
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

- (void)showVariableEditorWithOptions:(id)a3 fromSourceRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v9 = [(WFModuleSummaryCoordinator *)self variableUIDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(WFModuleSummaryCoordinator *)self variableUIDelegate];
    [v11 showVariableEditorWithOptions:v12 fromSourceRect:{x, y, width, height}];
  }
}

- (void)showParameterEditingHint:(id)a3
{
  v7 = a3;
  v4 = [(WFModuleSummaryCoordinator *)self variableUIDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFModuleSummaryCoordinator *)self variableUIDelegate];
    [v6 showParameterEditingHint:v7];
  }
}

- (void)revealAction:(id)a3 preScrollHandler:(id)a4 goBackHandler:(id)a5 scrolledAwayHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(WFModuleSummaryCoordinator *)self variableUIDelegate];
  [v14 revealAction:v13 preScrollHandler:v12 goBackHandler:v11 scrolledAwayHandler:v10];
}

- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)a3 variableProvider:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [(WFModuleSummaryCoordinator *)self currentEditorIsEditing];
  [(WFModuleSummaryCoordinator *)self setCurrentEditorIsEditing:1];
  v11 = [(WFModuleSummaryCoordinator *)self variableUIDelegate];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __109__WFModuleSummaryCoordinator_showActionOutputPickerAllowingShortcutInput_variableProvider_completionHandler___block_invoke;
  v13[3] = &unk_279EDB868;
  v15 = v10;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 showActionOutputPickerAllowingShortcutInput:v6 variableProvider:v9 completionHandler:v13];
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

- (id)transformParameterStateForSerialization:(id)a3 arrayIndex:(unint64_t)a4 parameter:(id)a5
{
  v23[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (!v8 || a4 == 0x7FFFFFFFFFFFFFFFLL || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !v9) || (isKindOfClass & 1) != 0)
  {
    v17 = v8;
    goto LABEL_15;
  }

  v11 = [v9 key];
  v12 = [(WFModuleSummaryCoordinator *)self currentParameterStateForParameterKey:v11];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v13 = v12;
  v14 = [v13 value];
  v15 = [v14 count];

  if (v15 <= a4)
  {
    if ([v9 isRangedSizeArray])
    {
      v18 = [v9 arrayMaxCountForWidgetFamily:3];
      v19 = [v13 value];
      v20 = [v19 count];

      if (v20 < v18)
      {
        v16 = [v13 stateByAppendingValue:v8];
        goto LABEL_14;
      }
    }

LABEL_13:
    v21 = objc_alloc([v9 multipleStateClass]);
    v23[0] = v8;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    v16 = [v21 initWithParameterStates:v13];
    goto LABEL_14;
  }

  v16 = [v13 stateByReplacingValueAtIndex:a4 withValue:v8];
LABEL_14:
  v17 = v16;

LABEL_15:

  return v17;
}

- (void)commitParameterState:(id)a3 forKey:(id)a4
{
  v24 = a4;
  v6 = a3;
  v7 = [(WFModuleSummaryCoordinator *)self parameterForKey:v24];
  v8 = [(WFModuleSummaryCoordinator *)self currentEditor];
  v9 = [v8 parameter];
  v10 = [v9 key];
  if ([v10 isEqualToString:v24])
  {
    v11 = [(WFModuleSummaryCoordinator *)self currentEditor];
    v12 = [v11 arrayIndex];
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = [(WFModuleSummaryCoordinator *)self transformParameterStateForSerialization:v6 arrayIndex:v12 parameter:v7];

  v14 = [(WFModuleSummaryCoordinator *)self mutableStagedParameterStates];
  [v14 removeObjectForKey:v24];

  v15 = [(WFModuleSummaryCoordinator *)self parameterStates];
  v16 = [v15 mutableCopy];
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
    [v19 setObject:v13 forKey:v24];
  }

  else
  {
    [v19 removeObjectForKey:v24];
  }

  v20 = [v19 copy];
  parameterStates = self->_parameterStates;
  self->_parameterStates = v20;

  [(WFModuleSummaryCoordinator *)self updateTemplateContentsAnimated:0];
  v22 = [(WFModuleSummaryCoordinator *)self updateBlock];

  if (v22)
  {
    v23 = [(WFModuleSummaryCoordinator *)self updateBlock];
    (v23)[2](v23, v24, v13);
  }
}

- (void)summaryEditor:(id)a3 didCommitParameterState:(id)a4
{
  v6 = a4;
  v8 = [a3 parameter];
  v7 = [v8 key];
  [(WFModuleSummaryCoordinator *)self commitParameterState:v6 forKey:v7];
}

- (void)summaryEditor:(id)a3 didStageParameterState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 parameter];
  v16 = [v8 key];

  v9 = [v7 arrayIndex];
  v10 = [v7 parameter];

  v11 = [(WFModuleSummaryCoordinator *)self transformParameterStateForSerialization:v6 arrayIndex:v9 parameter:v10];

  v12 = [(WFModuleSummaryCoordinator *)self mutableStagedParameterStates];
  v13 = v12;
  if (v11)
  {
    [v12 setObject:v11 forKey:v16];
  }

  else
  {
    v14 = [MEMORY[0x277CBEB68] null];
    [v13 setObject:v14 forKey:v16];
  }

  v15 = [(WFModuleSummaryCoordinator *)self currentlyTypingSlotIdentifier];

  if (!v15)
  {
    [(WFModuleSummaryCoordinator *)self updateTemplateContentsAnimated:0];
  }
}

- (void)summaryEditorDidFinish:(id)a3 returnToKeyboard:(BOOL)a4 withTextAttachmentToEdit:(id)a5
{
  v5 = a4;
  v13 = a5;
  v7 = [(WFModuleSummaryCoordinator *)self currentlyEditingSlotIdentifier];
  [(WFModuleSummaryCoordinator *)self destroyCurrentEditor];
  if (v7)
  {
    if (v5)
    {
      v8 = [(WFModuleSummaryCoordinator *)self templateView];
      [v8 selectSlotWithIdentifier:v7];

      v9 = self;
      v10 = v7;
      v11 = 0;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_7;
      }

      v12 = [(WFModuleSummaryCoordinator *)self templateView];
      [v12 endTyping];

      v9 = self;
      v10 = v7;
      v11 = v13;
    }

    [(WFModuleSummaryCoordinator *)v9 beginEditingSlotWithIdentifier:v10 fromTextAttachment:v11];
  }

LABEL_7:
}

- (void)summaryEditorDidRequestTextEntry:(id)a3
{
  v4 = [(WFModuleSummaryCoordinator *)self currentlyEditingSlotIdentifier];
  [(WFModuleSummaryCoordinator *)self setCurrentlyTypingSlotIdentifier:v4];

  v6 = [(WFModuleSummaryCoordinator *)self templateView];
  v5 = [(WFModuleSummaryCoordinator *)self currentlyEditingSlotIdentifier];
  [v6 beginTypingInSlotWithIdentifier:v5];
}

- (void)summaryEditor:(id)a3 didRequestEditingSlotWithIdentifier:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(WFModuleSummaryCoordinator *)self currentEditor];

  if (v7 == v12)
  {
    v8 = [(WFModuleSummaryCoordinator *)self presentationAnchorForSlotWithIdentifier:v6];
    if (v8)
    {
      [(WFModuleSummaryCoordinator *)self setCurrentEditorIsEditing:1];
      [(WFModuleSummaryCoordinator *)self setCurrentlyEditingSlotIdentifier:v6];
      v9 = [(WFModuleSummaryCoordinator *)self delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = [(WFModuleSummaryCoordinator *)self delegate];
        [v11 summaryCoordinatorWillBeginEditing:self];
      }

      [v12 beginEditingSlotWithIdentifier:v6 presentationAnchor:v8];
    }
  }
}

- (id)initialStateForSummaryEditor:(id)a3
{
  v4 = a3;
  v5 = [(WFModuleSummaryCoordinator *)self parameterStates];
  v6 = [v4 parameter];
  v7 = [v6 key];
  v8 = [v5 objectForKey:v7];

  v9 = [v4 parameter];

  LODWORD(v4) = [v9 parameterStateIsValid:v8];
  if (v4)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)cancelEditingWithCompletionHandler:(id)a3
{
  v7 = a3;
  v4 = [(WFModuleSummaryCoordinator *)self currentEditor];
  if (v4)
  {
    v5 = [(WFModuleSummaryCoordinator *)self templateView];
    [v5 endTyping];

    [(WFModuleSummaryCoordinator *)self destroyCurrentEditor];
    [v4 setDelegate:0];
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = &__block_literal_global_140;
    }

    [v4 cancelEditingWithCompletionHandler:v6];
  }

  else if (v7)
  {
    v7[2]();
  }
}

- (id)firstSlotIdentifierWithParameterKey:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(WFModuleSummaryCoordinator *)self contents];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 identifier];
          v13 = [v12 parameterKey];
          v14 = [v13 isEqualToString:v4];

          if (v14)
          {

            goto LABEL_13;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (void)destroyCurrentEditor
{
  [(WFModuleSummaryCoordinator *)self setCurrentEditor:0];
  [(WFModuleSummaryCoordinator *)self setCurrentlyTypingSlotIdentifier:0];
  [(WFModuleSummaryCoordinator *)self setCurrentlyEditingSlotIdentifier:0];
  [(WFModuleSummaryCoordinator *)self setCurrentEditorIsEditing:0];
  v3 = [(WFModuleSummaryCoordinator *)self mutableStagedParameterStates];
  [v3 removeAllObjects];

  v4 = [(WFModuleSummaryCoordinator *)self variableBeingEdited];

  if (v4)
  {
    [(WFModuleSummaryCoordinator *)self setVariableBeingEdited:0];
    [(WFModuleSummaryCoordinator *)self updateTemplateContentsAnimated:1];
  }

  v5 = [(WFModuleSummaryCoordinator *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WFModuleSummaryCoordinator *)self delegate];
    [v7 summaryCoordinatorDidEndEditing:self];
  }

  v8 = [(WFModuleSummaryCoordinator *)self templateView];
  [v8 deselectSlot];
}

- (void)removeElementFromArrayAtIndex:(unint64_t)a3 forParameterKey:(id)a4
{
  v6 = a4;
  v7 = [(WFModuleSummaryCoordinator *)self parameterForKey:v6];
  if (v7)
  {
    v8 = [(WFModuleSummaryCoordinator *)self currentParameterStateForParameterKey:v6];
    v9 = [(WFModuleSummaryCoordinator *)self updateBlock];
    if (v9)
    {
      v10 = v9;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v12 = v8;
        v13 = [v12 value];
        v14 = [v13 count];

        if (v14 > a3)
        {
          v15 = [v12 stateByRemovingValueAtIndex:a3];
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __76__WFModuleSummaryCoordinator_removeElementFromArrayAtIndex_forParameterKey___block_invoke;
          v17[3] = &unk_279EDC130;
          v17[4] = self;
          v18 = v6;
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

- (id)addElementToArrayForParameterKey:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFModuleSummaryCoordinator *)self parameterForKey:v4];
  if (v5)
  {
    v6 = [(WFModuleSummaryCoordinator *)self currentParameterStateForParameterKey:v4];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v5 defaultStateForNewArrayElement];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v6 stateByAppendingValue:v7];
      }

      else
      {
        v10 = objc_alloc([v5 multipleStateClass]);
        v22[0] = v7;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
        v8 = [v10 initWithParameterStates:v11];
      }

      v12 = [(WFModuleSummaryCoordinator *)self mutableStagedParameterStates];
      [v12 setObject:v8 forKey:v4];

      v13 = [v8 value];
      v14 = [v13 count] - 1;

      v9 = [v5 moduleSummarySlotForState:v7];
      v15 = [v9 identifier];
      v16 = [v15 identifierBySettingParameterKey:v4 arrayIndex:v14];
      [v9 setIdentifier:v16];

      [(WFModuleSummaryCoordinator *)self updateTemplateContentsAnimated:1];
      v17 = [(WFModuleSummaryCoordinator *)self delegate];
      LOBYTE(v15) = objc_opt_respondsToSelector();

      if (v15)
      {
        v18 = [(WFModuleSummaryCoordinator *)self delegate];
        [v18 summaryCoordinatorDidInvalidateSize:self];
      }

      v19 = [(WFModuleSummaryCoordinator *)self templateView];
      v20 = [v9 identifier];
      [v19 selectSlotWithIdentifier:v20];
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

- (void)beginEditingSlotWithIdentifier:(id)a3 fromTextAttachment:(id)a4
{
  v22 = a3;
  v7 = a4;
  v8 = [(WFModuleSummaryCoordinator *)self currentEditor];

  if (v8)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFModuleSummaryCoordinator.m" lineNumber:364 description:@"There's an active editor that hasn't been cancelled"];
  }

  v9 = [(WFModuleSummaryCoordinator *)self createSummaryEditorForSlotWithIdentifier:v22];
  v10 = [(WFModuleSummaryCoordinator *)self presentationAnchorForSlotWithIdentifier:v22];
  if (v10)
  {
    v11 = [(WFModuleSummaryCoordinator *)self templateView];
    v12 = [v22 key];
    v13 = v12;
    if (v11 && v12)
    {
      [(WFModuleSummaryCoordinator *)self setCurrentEditor:v9];
      [(WFModuleSummaryCoordinator *)self setCurrentlyEditingSlotIdentifier:v22];
      [(WFModuleSummaryCoordinator *)self setCurrentEditorIsEditing:1];
      v14 = [(WFModuleSummaryCoordinator *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = [(WFModuleSummaryCoordinator *)self delegate];
        [v16 summaryCoordinatorWillBeginEditing:self];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v7 token];
        if (v17)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
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

        v20 = [v19 variable];

        [(WFModuleSummaryCoordinator *)self setVariableBeingEdited:v20];
        [(WFModuleSummaryCoordinator *)self updateTemplateContentsAnimated:1];
      }

      if ([v13 isEqualToString:@"_array_add_"])
      {
        [v9 beginEditingNewArrayElementFromPresentationAnchor:v10];
      }

      else if (v7)
      {
        [v9 beginEditingTextAttachment:v7 inSlotWithIdentifier:v22 presentationAnchor:v10];
      }

      else
      {
        [v9 beginEditingSlotWithIdentifier:v22 presentationAnchor:v10];
      }
    }
  }
}

- (id)presentationAnchorForSlotWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WFModuleSummaryCoordinator *)self templateView];
  if (v5)
  {
    v6 = [(WFModuleSummaryCoordinator *)self delegate];
    v7 = [v6 viewControllerForCoordinator:self];

    if (v7)
    {
      [v5 sourceRectForSlotWithIdentifier:v4];
      v12 = [[WFModalPresentationAnchor alloc] initWithSourceViewController:v7 sourceView:v5 sourceRect:v8, v9, v10, v11];
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

- (id)createSummaryEditorForSlotWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 parameterKey];
  v6 = [v4 key];
  v7 = [v4 arrayIndex];

  v8 = 0;
  if (v5 && v6)
  {
    v9 = [(WFModuleSummaryCoordinator *)self parameterForKey:v5];
    if (v9)
    {
      v8 = [objc_alloc(-[WFModuleSummaryCoordinator editorClassForParameter:](self editorClassForParameter:{v9)), "initWithParameter:arrayIndex:processing:", v9, v7, -[WFModuleSummaryCoordinator processing](self, "processing")}];
      [v8 setDelegate:self];
      v10 = [(WFModuleSummaryCoordinator *)self variableProvider];
      [v8 setVariableProvider:v10];

      [v8 setVariableUIDelegate:self];
      v11 = [(WFModuleSummaryCoordinator *)self auxiliaryViewPresenter];
      [v8 setAuxiliaryViewPresenter:v11];

      [v8 setAllowsPickingVariables:{-[WFModuleSummaryCoordinator allowsPickingVariables](self, "allowsPickingVariables")}];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (Class)editorClassForParameter:(id)a3
{
  v3 = objc_opt_class();

  return WFModuleSummaryEditorClassForParameterClass(v3);
}

- (id)currentParameterStateForParameterKey:(id)a3
{
  v4 = a3;
  v5 = [(WFModuleSummaryCoordinator *)self stagedParameterStates];
  v6 = [v5 objectForKey:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(WFModuleSummaryCoordinator *)self parameterStates];
    v8 = [v9 objectForKey:v4];
  }

  return v8;
}

- (id)parameterForKey:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(WFModuleSummaryCoordinator *)self parameters];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 key];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v2 = [(WFModuleSummaryCoordinator *)self mutableStagedParameterStates];
  v3 = [v2 copy];

  return v3;
}

- (void)slotTemplateView:(id)a3 outputButtonDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = [(WFModuleSummaryCoordinator *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(WFModuleSummaryCoordinator *)self delegate];
    [v8 summaryCoordinator:self outputButtonDidChange:v4];
  }
}

- (void)slotTemplateView:(id)a3 disclosureArrowDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = [(WFModuleSummaryCoordinator *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(WFModuleSummaryCoordinator *)self delegate];
    [v8 summaryCoordinator:self disclosureArrowDidChange:v4];
  }
}

- (void)slotTemplateViewDidInvalidateSize:(id)a3
{
  v4 = [(WFModuleSummaryCoordinator *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(WFModuleSummaryCoordinator *)self delegate];
    [v6 summaryCoordinatorDidInvalidateSize:self];
  }
}

- (void)slotTemplateView:(id)a3 deletePressedOnSlotWithIdentifier:(id)a4 allowResettingValue:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [v7 parameterKey];
  if (v8)
  {
    v9 = [v7 key];
    v10 = [v9 isEqualToString:@"_array_add_"];

    if ((v10 & 1) == 0)
    {
      v11 = [v7 arrayIndex];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v5)
        {
          v12 = [(WFModuleSummaryCoordinator *)self parameterForKey:v8];
          if (v12)
          {
            v13 = [(WFModuleSummaryCoordinator *)self updateBlock];

            if (v13)
            {
              v14[0] = MEMORY[0x277D85DD0];
              v14[1] = 3221225472;
              v14[2] = __101__WFModuleSummaryCoordinator_slotTemplateView_deletePressedOnSlotWithIdentifier_allowResettingValue___block_invoke;
              v14[3] = &unk_279EDBC70;
              v14[4] = self;
              v15 = v8;
              [(WFModuleSummaryCoordinator *)self cancelEditingWithCompletionHandler:v14];
            }
          }
        }
      }

      else
      {
        [(WFModuleSummaryCoordinator *)self removeElementFromArrayAtIndex:v11 forParameterKey:v8];
      }
    }
  }
}

void __101__WFModuleSummaryCoordinator_slotTemplateView_deletePressedOnSlotWithIdentifier_allowResettingValue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updateBlock];
  (*(v2 + 2))(v2, *(a1 + 40), 0);
}

- (void)slotTemplateView:(id)a3 didEndTypingInSlotWithIdentifier:(id)a4
{
  v4 = [(WFModuleSummaryCoordinator *)self currentEditor:a3];
  [v4 textEntryDidFinish];
}

- (void)slotTemplateView:(id)a3 typingDidPasteWithRange:(_NSRange)a4 originalBlock:(id)a5
{
  v6 = a5;
  v7 = [(WFModuleSummaryCoordinator *)self currentEditor];
  [v7 textEntryDidPasteWithOriginalBlock:v6];
}

- (void)slotTemplateView:(id)a3 typingDidCopyWithOriginalBlock:(id)a4
{
  v5 = a4;
  v6 = [(WFModuleSummaryCoordinator *)self currentEditor];
  [v6 textEntryDidCopyWithOriginalBlock:v5];
}

- (void)slotTemplateView:(id)a3 typingDidCutWithOriginalBlock:(id)a4
{
  v5 = a4;
  v6 = [(WFModuleSummaryCoordinator *)self currentEditor];
  [v6 textEntryDidCutWithOriginalBlock:v5];
}

- (void)slotTemplateView:(id)a3 didChangeText:(id)a4 forSlotWithIdentifier:(id)a5
{
  v6 = a4;
  v7 = [(WFModuleSummaryCoordinator *)self currentEditor];
  [v7 textEntryTextDidChange:v6];
}

- (BOOL)slotTemplateView:(id)a3 shouldChangeText:(id)a4 forSlotWithIdentifier:(id)a5
{
  v6 = a4;
  v7 = [(WFModuleSummaryCoordinator *)self currentEditor];
  v8 = [v7 textEntryShouldChangeText:v6];

  return v8;
}

- (void)slotTemplateView:(id)a3 willBeginTypingInSlotWithIdentifier:(id)a4 usingTextEntry:(id)a5 allowMultipleLines:(BOOL *)a6
{
  v8 = a5;
  v9 = [(WFModuleSummaryCoordinator *)self currentEditor];
  [v9 textEntryWillBegin:v8 allowMultipleLines:a6];
}

- (void)slotTemplateView:(id)a3 didTapTextAttachment:(id)a4 inSlotWithIdentifier:(id)a5
{
  v7 = a4;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v10 = [v9 token];
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

    v13 = [v12 variable];

    v14 = [(WFModuleSummaryCoordinator *)self variableBeingEdited];

    if (v13 == v14)
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
  v16 = v8;
  v17 = v7;
  [(WFModuleSummaryCoordinator *)self cancelEditingWithCompletionHandler:v15];

LABEL_10:
}

- (BOOL)slotTemplateView:(id)a3 shouldTapTextAttachment:(id)a4 inSlotWithIdentifier:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v8 parameterKey];
  v10 = [v8 key];
  v11 = v10;
  v12 = 0;
  if (v9 && v10)
  {
    v13 = [(WFModuleSummaryCoordinator *)self parameterForKey:v9];
    v12 = [(objc_class *)[(WFModuleSummaryCoordinator *)self editorClassForParameter:v13] supportsEditingTextAttachment:v7 inSlotWithIdentifier:v8];
  }

  return v12;
}

- (void)menuDidDismissInSlotTemplateView:(id)a3
{
  if (![(WFModuleSummaryCoordinator *)self currentEditorIsEditing])
  {

    [(WFModuleSummaryCoordinator *)self cancelEditingWithCompletionHandler:0];
  }
}

- (id)slotTemplateView:(id)a3 menuForSlotIdentifier:(id)a4 style:(unint64_t)a5
{
  v7 = a4;
  v8 = [(WFModuleSummaryCoordinator *)self createSummaryEditorForSlotWithIdentifier:v7];
  v9 = [v8 menuForSlotWithIdentifier:v7 style:a5];
  if (v9)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__WFModuleSummaryCoordinator_slotTemplateView_menuForSlotIdentifier_style___block_invoke;
    v12[3] = &unk_279EDC130;
    v12[4] = self;
    v13 = v8;
    v14 = v7;
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

- (void)slotTemplateView:(id)a3 didSelectSlotWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__WFModuleSummaryCoordinator_slotTemplateView_didSelectSlotWithIdentifier___block_invoke;
  v10[3] = &unk_279EDC130;
  v11 = v7;
  v12 = v6;
  v13 = self;
  v8 = v6;
  v9 = v7;
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

- (void)setVariableProvider:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_variableProvider, v4);
  v5 = [(WFModuleSummaryCoordinator *)self currentEditor];
  [v5 setVariableProvider:v4];
}

- (void)slotTemplateViewTintColorDidChange:(id)a3
{
  v3 = [(WFModuleSummaryCoordinator *)self currentEditor];
  [v3 sourceViewTintColorDidChange];
}

- (void)setParameters:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_parameters;
  v6 = v4;
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

- (void)setSummaryFormatString:(id)a3 withParameters:(id)a4 editableParameters:(id)a5 parameterStates:(id)a6
{
  v57 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v50 = a4;
  v11 = a5;
  v51 = a6;
  summaryFormatString = self->_summaryFormatString;
  v13 = v10;
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
    v17 = v50;
    goto LABEL_7;
  }

  v17 = v50;
  if (v14)
  {
    v16 = [(NSString *)v13 isEqualToString:v14];
  }

LABEL_7:

  editableParameters = self->_editableParameters;
  v19 = v11;
  v20 = editableParameters;
  v21 = v20;
  if (v20 == v19)
  {
    v22 = 1;
  }

  else
  {
    v22 = 0;
    if (v19 && v20)
    {
      v22 = [(NSSet *)v19 isEqual:v20];
    }
  }

  if (v16)
  {
    parameters = self->_parameters;
    v24 = v17;
    v25 = parameters;
    v26 = v25;
    if (v25 == v24)
    {

      if (!v22)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (!v24 || !v25)
      {
LABEL_24:

        goto LABEL_25;
      }

      v27 = [v24 isEqual:v25] & v22;

      if ((v27 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    parameterStates = self->_parameterStates;
    v24 = v51;
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

  v35 = [v51 copy];
  v36 = self->_parameterStates;
  self->_parameterStates = v35;

  if ((v16 & 1) == 0)
  {
    v37 = [[WFModuleSummaryTemplateBuilder alloc] initWithFormatString:v13];
    [(WFModuleSummaryCoordinator *)self setTemplateBuilder:v37];

    v22 = 0;
  }

  [(WFModuleSummaryCoordinator *)self updateTemplateContentsAnimated:v22 ^ 1u];
  v38 = [(WFModuleSummaryCoordinator *)self currentlyEditingSlotIdentifier];

  if (v38)
  {
    v49 = v13;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v39 = [(WFModuleSummaryCoordinator *)self contents];
    v40 = [v39 countByEnumeratingWithState:&v52 objects:v56 count:16];
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
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v52 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v45 = [v44 identifier];
            v46 = [(WFModuleSummaryCoordinator *)self currentlyEditingSlotIdentifier];
            v47 = [v45 isEqual:v46];

            if (v47)
            {

              goto LABEL_39;
            }
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v52 objects:v56 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    v48 = [(WFModuleSummaryCoordinator *)self currentEditor];
    [v48 setDelegate:0];

    [(WFModuleSummaryCoordinator *)self cancelEditingWithCompletionHandler:0];
LABEL_39:
    v13 = v49;
    v17 = v50;
  }

LABEL_40:
}

- (void)updateTemplateContentsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();
  v6 = [(WFModuleSummaryCoordinator *)self stagedParameterStates];
  v7 = [(WFModuleSummaryCoordinator *)self parameterStates];
  v15 = [v5 parameterStatesByApplyingStaging:v6 toOriginal:v7];

  v8 = [(WFModuleSummaryCoordinator *)self templateBuilder];
  v9 = [(WFModuleSummaryCoordinator *)self parameters];
  v10 = [(WFModuleSummaryCoordinator *)self editableParameters];
  v11 = [(WFModuleSummaryCoordinator *)self variableBeingEdited];
  v12 = [v8 buildContentWithParameters:v9 editableParameters:v10 parameterStates:v15 variableBeingEdited:v11];
  [(WFModuleSummaryCoordinator *)self setContents:v12];

  v13 = [(WFModuleSummaryCoordinator *)self templateView];
  v14 = [(WFModuleSummaryCoordinator *)self contents];
  [v13 setContents:v14 animated:v3];
}

- (void)setTemplateView:(id)a3
{
  v5 = a3;
  p_templateView = &self->_templateView;
  v7 = self->_templateView;
  v8 = v5;
  v15 = v8;
  if (v7 == v8)
  {

LABEL_13:
    goto LABEL_14;
  }

  if (v8 && v7)
  {
    v9 = [(WFSlotTemplateView *)v7 isEqual:v8];

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
  v10 = [(WFSlotTemplateView *)*p_templateView typingSlotIdentifier];

  if (v10)
  {
    [(WFSlotTemplateView *)*p_templateView endTyping];
  }

  objc_storeStrong(&self->_templateView, a3);
  [(WFSlotTemplateView *)v15 setDelegate:self];
  v11 = [(WFModuleSummaryCoordinator *)self contents];
  [(WFSlotTemplateView *)v15 setContents:v11 animated:0];

  v12 = [(WFModuleSummaryCoordinator *)self currentlyEditingSlotIdentifier];

  if (v12)
  {
    v13 = [(WFModuleSummaryCoordinator *)self currentlyEditingSlotIdentifier];
    [(WFSlotTemplateView *)v15 selectSlotWithIdentifier:v13];

    v14 = [(WFModuleSummaryCoordinator *)self currentlyTypingSlotIdentifier];

    if (v14)
    {
      v7 = [(WFModuleSummaryCoordinator *)self currentlyTypingSlotIdentifier];
      [(WFSlotTemplateView *)v15 beginTypingInSlotWithIdentifier:v7];
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

+ (double)heightForWidth:(double)a3 withSummaryFormatString:(id)a4 parameters:(id)a5 editableParameters:(id)a6 parameterStates:(id)a7 stagedParameterStates:(id)a8 horizontalPadding:(double)a9 font:(id)a10 unpopulatedFont:(id)a11 textAlignment:(int64_t)a12
{
  v20 = a10;
  v21 = a11;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = [a1 parameterStatesByApplyingStaging:a8 toOriginal:a7];
  v26 = [[WFModuleSummaryTemplateBuilder alloc] initWithFormatString:v24];

  v27 = [(WFModuleSummaryTemplateBuilder *)v26 buildContentWithParameters:v23 editableParameters:v22 parameterStates:v25 variableBeingEdited:0];

  if ([v27 count])
  {
    v28 = objc_opt_class();
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __190__WFModuleSummaryCoordinator_heightForWidth_withSummaryFormatString_parameters_editableParameters_parameterStates_stagedParameterStates_horizontalPadding_font_unpopulatedFont_textAlignment___block_invoke;
    v33[3] = &unk_279EDB840;
    v29 = v20;
    v34 = v29;
    [v28 enumerateVariableAttachmentsInContents:v27 withBlock:v33];
    [MEMORY[0x277D7D7C0] heightForWidth:v27 withContents:v29 horizontalPadding:v21 font:a12 unpopulatedFont:0 alignment:a3 useCase:a9];
    v31 = v30;
  }

  else
  {
    v31 = 0.0;
  }

  return v31;
}

+ (id)parameterStatesByApplyingStaging:(id)a3 toOriginal:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if ([v5 count])
  {
    v8 = [v6 mutableCopy];
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
    [v5 enumerateKeysAndObjectsUsingBlock:v14];
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

+ (void)enumerateVariableAttachmentsInContents:(id)a3 withBlock:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v16 = a4;
  obj = v5;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          v13 = [v12 contentAttributedString];
          v14 = [v12 contentAttributedString];
          v15 = [v14 length];
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __79__WFModuleSummaryCoordinator_enumerateVariableAttachmentsInContents_withBlock___block_invoke;
          v18[3] = &unk_279EDB7F0;
          v19 = v16;
          [v13 enumerateAttribute:v9 inRange:0 options:v15 usingBlock:{0, v18}];
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