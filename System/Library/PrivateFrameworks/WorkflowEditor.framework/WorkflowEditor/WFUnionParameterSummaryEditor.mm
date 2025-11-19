@interface WFUnionParameterSummaryEditor
- (BOOL)isSelfSlot:(id)a3;
- (BOOL)textEntryShouldChangeText:(id)a3;
- (BOOL)variableMenuSupportsVariableSelectionForSlotWithIdentifier:(id)a3;
- (WFModuleSummaryEditor)subeditor;
- (WFModuleSummarySupporting)subparameter;
- (WFUnionParameterSummaryEditor)initWithParameter:(id)a3 arrayIndex:(unint64_t)a4 processing:(BOOL)a5;
- (id)clearButtonMenuItemForSlotWithIdentifier:(id)a3;
- (id)customMenuElementsForSlotWithIdentifier:(id)a3 style:(unint64_t)a4;
- (id)initialStateForSummaryEditor:(id)a3;
- (id)subeditorForState:(id)a3;
- (id)substate;
- (id)subtypeMenuElementsForSlotWithIdentifier:(id)a3;
- (id)variableMenuElementsForSlotWithIdentifier:(id)a3;
- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4;
- (void)beginEditingTextAttachment:(id)a3 inSlotWithIdentifier:(id)a4 presentationAnchor:(id)a5;
- (void)commitState:(id)a3;
- (void)requestTextEntry;
- (void)sourceViewTintColorDidChange;
- (void)summaryEditor:(id)a3 didCommitParameterState:(id)a4;
- (void)summaryEditor:(id)a3 didRequestEditingSlotWithIdentifier:(id)a4;
- (void)summaryEditorDidFinish:(id)a3 returnToKeyboard:(BOOL)a4 withTextAttachmentToEdit:(id)a5;
- (void)summaryEditorDidRequestTextEntry:(id)a3;
- (void)textEntryDidCopyWithOriginalBlock:(id)a3;
- (void)textEntryDidCutWithOriginalBlock:(id)a3;
- (void)textEntryDidFinish;
- (void)textEntryDidPasteWithOriginalBlock:(id)a3;
- (void)textEntryTextDidChange:(id)a3;
- (void)textEntryWillBegin:(id)a3 allowMultipleLines:(BOOL *)a4;
@end

@implementation WFUnionParameterSummaryEditor

- (void)summaryEditorDidRequestTextEntry:(id)a3
{
  v4 = [(WFModuleSummaryEditor *)self delegate];
  [v4 summaryEditorDidRequestTextEntry:self];
}

- (void)summaryEditorDidFinish:(id)a3 returnToKeyboard:(BOOL)a4 withTextAttachmentToEdit:(id)a5
{
  v5 = a4;
  subeditor = self->_subeditor;
  self->_subeditor = 0;
  v9 = a5;
  v10 = a3;

  subparameter = self->_subparameter;
  self->_subparameter = 0;

  v12 = [(WFModuleSummaryEditor *)self delegate];
  [v12 summaryEditorDidFinish:v10 returnToKeyboard:v5 withTextAttachmentToEdit:v9];
}

- (void)summaryEditor:(id)a3 didRequestEditingSlotWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFModuleSummaryEditor *)self delegate];
  [v8 summaryEditor:v7 didRequestEditingSlotWithIdentifier:v6];
}

- (void)summaryEditor:(id)a3 didCommitParameterState:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(WFModuleSummaryEditor *)self currentState];
  v7 = [v6 which];
  if (v7)
  {
    if (v5)
    {
      v8 = objc_alloc(MEMORY[0x277D7C9D0]);
      v9 = [v6 states];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = MEMORY[0x277CBEC10];
      }

      v16 = v7;
      v17[0] = v5;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v13 = [v11 if_dictionaryByAddingEntriesFromDictionary:v12];
      v14 = [v8 initWithWhich:v7 states:v13];
    }

    else
    {
      v15 = [v6 states];
      v10 = [v15 mutableCopy];

      [v10 removeObjectForKey:v7];
      v14 = [objc_alloc(MEMORY[0x277D7C9D0]) initWithWhich:v7 states:v10];
    }

    [(WFUnionParameterSummaryEditor *)self commitState:v14];
  }
}

- (id)initialStateForSummaryEditor:(id)a3
{
  v4 = [(WFModuleSummaryEditor *)self parameter];
  v5 = [(WFModuleSummaryEditor *)self currentState];
  v6 = [v4 substateFromState:v5];

  return v6;
}

- (void)beginEditingTextAttachment:(id)a3 inSlotWithIdentifier:(id)a4 presentationAnchor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(WFUnionParameterSummaryEditor *)self isSelfSlot:v9])
  {
    v12.receiver = self;
    v12.super_class = WFUnionParameterSummaryEditor;
    [(WFModuleSummaryEditor *)&v12 beginEditingTextAttachment:v8 inSlotWithIdentifier:v9 presentationAnchor:v10];
  }

  else
  {
    v11 = [(WFUnionParameterSummaryEditor *)self subeditor];
    [v11 beginEditingTextAttachment:v8 inSlotWithIdentifier:v9 presentationAnchor:v10];
  }
}

- (id)customMenuElementsForSlotWithIdentifier:(id)a3 style:(unint64_t)a4
{
  v6 = a3;
  if ([(WFUnionParameterSummaryEditor *)self isSelfSlot:v6])
  {
    v7 = [(WFUnionParameterSummaryEditor *)self subtypeMenuElementsForSlotWithIdentifier:v6];
  }

  else
  {
    v8 = [(WFUnionParameterSummaryEditor *)self subeditor];
    v9 = [v8 customMenuElementsForSlotWithIdentifier:v6 style:a4];

    if (a4 == 1)
    {
      v10 = [(WFUnionParameterSummaryEditor *)self subtypeMenuElementsForSlotWithIdentifier:v6];
      v7 = [v10 arrayByAddingObjectsFromArray:v9];
    }

    else if (a4)
    {
      v7 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v7 = v9;
    }
  }

  return v7;
}

- (id)subtypeMenuElementsForSlotWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WFModuleSummaryEditor *)self currentState];
  v6 = [v5 which];

  v7 = [(WFModuleSummaryEditor *)self parameter];
  v8 = [v7 subtypes];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__WFUnionParameterSummaryEditor_subtypeMenuElementsForSlotWithIdentifier___block_invoke;
  v16[3] = &unk_279EDC158;
  v16[4] = self;
  v17 = v6;
  v18 = v4;
  v9 = v4;
  v10 = v6;
  v11 = [v8 if_compactMap:v16];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  v14 = v13;

  return v13;
}

id __74__WFUnionParameterSummaryEditor_subtypeMenuElementsForSlotWithIdentifier___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] parameter];
  v5 = [v4 localizedStringFor:v3];

  v6 = objc_alloc(MEMORY[0x277D7D790]);
  v7 = [a1[5] isEqual:v3];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__WFUnionParameterSummaryEditor_subtypeMenuElementsForSlotWithIdentifier___block_invoke_2;
  v11[3] = &unk_279EDC130;
  v11[4] = a1[4];
  v12 = v3;
  v13 = a1[6];
  v8 = v3;
  v9 = [v6 initWithTitle:v5 state:v7 handler:v11];

  return v9;
}

void __74__WFUnionParameterSummaryEditor_subtypeMenuElementsForSlotWithIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_alloc(MEMORY[0x277D7C9D0]);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) currentState];
  v6 = [v5 states];
  v7 = [v3 initWithWhich:v4 states:v6];
  [v2 commitState:v7];

  v8 = [*(a1 + 32) parameter];
  v9 = objc_opt_class();
  v10 = [*(a1 + 32) subparameter];
  v11 = [*(a1 + 32) substate];
  v12 = [v9 _slotsForParameter:v10 state:v11];
  v13 = [v12 firstObject];
  v14 = [v13 identifier];

  v15 = [*(a1 + 48) parameterKey];
  v17 = [v14 identifierBySettingParameterKey:v15];

  v16 = v17;
  if (v17)
  {
    [*(a1 + 32) requestEditingSlotIdentifier:v17];
    v16 = v17;
  }
}

- (id)clearButtonMenuItemForSlotWithIdentifier:(id)a3
{
  v4 = a3;
  if ([(WFUnionParameterSummaryEditor *)self isSelfSlot:v4])
  {
    v8.receiver = self;
    v8.super_class = WFUnionParameterSummaryEditor;
    v5 = [(WFModuleSummaryEditor *)&v8 clearButtonMenuItemForSlotWithIdentifier:v4];
  }

  else
  {
    v6 = [(WFUnionParameterSummaryEditor *)self subeditor];
    v5 = [v6 clearButtonMenuItemForSlotWithIdentifier:v4];
  }

  return v5;
}

- (id)variableMenuElementsForSlotWithIdentifier:(id)a3
{
  v4 = a3;
  if ([(WFUnionParameterSummaryEditor *)self isSelfSlot:v4])
  {
    v8.receiver = self;
    v8.super_class = WFUnionParameterSummaryEditor;
    v5 = [(WFModuleSummaryEditor *)&v8 variableMenuElementsForSlotWithIdentifier:v4];
  }

  else
  {
    v6 = [(WFUnionParameterSummaryEditor *)self subeditor];
    v5 = [v6 variableMenuElementsForSlotWithIdentifier:v4];
  }

  return v5;
}

- (BOOL)variableMenuSupportsVariableSelectionForSlotWithIdentifier:(id)a3
{
  v4 = a3;
  if ([(WFUnionParameterSummaryEditor *)self isSelfSlot:v4])
  {
    v8.receiver = self;
    v8.super_class = WFUnionParameterSummaryEditor;
    v5 = [(WFModuleSummaryEditor *)&v8 variableMenuSupportsVariableSelectionForSlotWithIdentifier:v4];
  }

  else
  {
    v6 = [(WFUnionParameterSummaryEditor *)self subeditor];
    v5 = [v6 variableMenuSupportsVariableSelectionForSlotWithIdentifier:v4];
  }

  return v5;
}

- (void)sourceViewTintColorDidChange
{
  v2 = [(WFUnionParameterSummaryEditor *)self subeditor];
  [v2 sourceViewTintColorDidChange];
}

- (void)textEntryDidFinish
{
  v3 = [(WFUnionParameterSummaryEditor *)self subeditor];
  [v3 textEntryDidFinish];

  v4.receiver = self;
  v4.super_class = WFUnionParameterSummaryEditor;
  [(WFModuleSummaryEditor *)&v4 textEntryDidFinish];
}

- (void)textEntryDidPasteWithOriginalBlock:(id)a3
{
  v4 = a3;
  v5 = [(WFUnionParameterSummaryEditor *)self subeditor];
  [v5 textEntryDidPasteWithOriginalBlock:v4];
}

- (void)textEntryDidCopyWithOriginalBlock:(id)a3
{
  v4 = a3;
  v5 = [(WFUnionParameterSummaryEditor *)self subeditor];
  [v5 textEntryDidCopyWithOriginalBlock:v4];
}

- (void)textEntryDidCutWithOriginalBlock:(id)a3
{
  v4 = a3;
  v5 = [(WFUnionParameterSummaryEditor *)self subeditor];
  [v5 textEntryDidCutWithOriginalBlock:v4];
}

- (void)textEntryTextDidChange:(id)a3
{
  v4 = a3;
  v5 = [(WFUnionParameterSummaryEditor *)self subeditor];
  [v5 textEntryTextDidChange:v4];
}

- (BOOL)textEntryShouldChangeText:(id)a3
{
  v4 = a3;
  v5 = [(WFUnionParameterSummaryEditor *)self subeditor];
  v6 = [v5 textEntryShouldChangeText:v4];

  return v6;
}

- (void)textEntryWillBegin:(id)a3 allowMultipleLines:(BOOL *)a4
{
  v6 = a3;
  v7 = [(WFUnionParameterSummaryEditor *)self subeditor];
  [v7 textEntryWillBegin:v6 allowMultipleLines:a4];

  v8.receiver = self;
  v8.super_class = WFUnionParameterSummaryEditor;
  [(WFModuleSummaryEditor *)&v8 textEntryWillBegin:v6 allowMultipleLines:a4];
}

- (void)requestTextEntry
{
  v2 = [(WFUnionParameterSummaryEditor *)self subeditor];
  [v2 requestTextEntry];
}

- (void)commitState:(id)a3
{
  v4 = a3;
  v5 = [(WFModuleSummaryEditor *)self currentState];
  v6 = [v5 which];
  v7 = [v4 which];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    subeditor = self->_subeditor;
    self->_subeditor = 0;

    subparameter = self->_subparameter;
    self->_subparameter = 0;
  }

  v11.receiver = self;
  v11.super_class = WFUnionParameterSummaryEditor;
  [(WFModuleSummaryEditor *)&v11 commitState:v4];
}

- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WFUnionParameterSummaryEditor *)self isSelfSlot:v6])
  {
    v9.receiver = self;
    v9.super_class = WFUnionParameterSummaryEditor;
    [(WFModuleSummaryEditor *)&v9 beginEditingSlotWithIdentifier:v6 presentationAnchor:v7];
  }

  else
  {
    v8 = [(WFUnionParameterSummaryEditor *)self subeditor];
    [v8 beginEditingSlotWithIdentifier:v6 presentationAnchor:v7];
  }
}

- (BOOL)isSelfSlot:(id)a3
{
  v3 = [a3 key];
  v4 = [MEMORY[0x277D7C9C8] whichSlotKey];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (id)substate
{
  v3 = [(WFModuleSummaryEditor *)self parameter];
  v4 = [(WFModuleSummaryEditor *)self currentState];
  v5 = [v3 substateFromState:v4];

  return v5;
}

- (WFModuleSummarySupporting)subparameter
{
  subparameter = self->_subparameter;
  if (!subparameter)
  {
    v4 = [(WFModuleSummaryEditor *)self parameter];
    v5 = [(WFModuleSummaryEditor *)self currentState];
    v6 = [v4 subparameterForState:v5];
    v7 = self->_subparameter;
    self->_subparameter = v6;

    subparameter = self->_subparameter;
  }

  return subparameter;
}

- (WFModuleSummaryEditor)subeditor
{
  subeditor = self->_subeditor;
  if (!subeditor)
  {
    v4 = [(WFModuleSummaryEditor *)self currentState];
    v5 = [(WFUnionParameterSummaryEditor *)self subeditorForState:v4];
    v6 = self->_subeditor;
    self->_subeditor = v5;

    subeditor = self->_subeditor;
  }

  return subeditor;
}

- (id)subeditorForState:(id)a3
{
  v4 = a3;
  v5 = [(WFModuleSummaryEditor *)self parameter];
  v6 = [v5 subparameterForState:v4];

  v7 = objc_opt_class();
  v8 = [objc_alloc(WFModuleSummaryEditorClassForParameterClass(v7)) initWithParameter:v6 arrayIndex:0 processing:{-[WFModuleSummaryEditor isProcessing](self, "isProcessing")}];
  [v8 setDelegate:self];
  [v8 setAllowsPickingVariables:{-[WFModuleSummaryEditor allowsPickingVariables](self, "allowsPickingVariables")}];

  return v8;
}

- (WFUnionParameterSummaryEditor)initWithParameter:(id)a3 arrayIndex:(unint64_t)a4 processing:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = WFUnionParameterSummaryEditor;
  v5 = [(WFModuleSummaryEditor *)&v9 initWithParameter:a3 arrayIndex:a4 processing:a5];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

@end