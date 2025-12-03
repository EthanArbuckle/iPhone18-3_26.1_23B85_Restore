@interface WFUnionParameterSummaryEditor
- (BOOL)isSelfSlot:(id)slot;
- (BOOL)textEntryShouldChangeText:(id)text;
- (BOOL)variableMenuSupportsVariableSelectionForSlotWithIdentifier:(id)identifier;
- (WFModuleSummaryEditor)subeditor;
- (WFModuleSummarySupporting)subparameter;
- (WFUnionParameterSummaryEditor)initWithParameter:(id)parameter arrayIndex:(unint64_t)index processing:(BOOL)processing;
- (id)clearButtonMenuItemForSlotWithIdentifier:(id)identifier;
- (id)customMenuElementsForSlotWithIdentifier:(id)identifier style:(unint64_t)style;
- (id)initialStateForSummaryEditor:(id)editor;
- (id)subeditorForState:(id)state;
- (id)substate;
- (id)subtypeMenuElementsForSlotWithIdentifier:(id)identifier;
- (id)variableMenuElementsForSlotWithIdentifier:(id)identifier;
- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor;
- (void)beginEditingTextAttachment:(id)attachment inSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor;
- (void)commitState:(id)state;
- (void)requestTextEntry;
- (void)sourceViewTintColorDidChange;
- (void)summaryEditor:(id)editor didCommitParameterState:(id)state;
- (void)summaryEditor:(id)editor didRequestEditingSlotWithIdentifier:(id)identifier;
- (void)summaryEditorDidFinish:(id)finish returnToKeyboard:(BOOL)keyboard withTextAttachmentToEdit:(id)edit;
- (void)summaryEditorDidRequestTextEntry:(id)entry;
- (void)textEntryDidCopyWithOriginalBlock:(id)block;
- (void)textEntryDidCutWithOriginalBlock:(id)block;
- (void)textEntryDidFinish;
- (void)textEntryDidPasteWithOriginalBlock:(id)block;
- (void)textEntryTextDidChange:(id)change;
- (void)textEntryWillBegin:(id)begin allowMultipleLines:(BOOL *)lines;
@end

@implementation WFUnionParameterSummaryEditor

- (void)summaryEditorDidRequestTextEntry:(id)entry
{
  delegate = [(WFModuleSummaryEditor *)self delegate];
  [delegate summaryEditorDidRequestTextEntry:self];
}

- (void)summaryEditorDidFinish:(id)finish returnToKeyboard:(BOOL)keyboard withTextAttachmentToEdit:(id)edit
{
  keyboardCopy = keyboard;
  subeditor = self->_subeditor;
  self->_subeditor = 0;
  editCopy = edit;
  finishCopy = finish;

  subparameter = self->_subparameter;
  self->_subparameter = 0;

  delegate = [(WFModuleSummaryEditor *)self delegate];
  [delegate summaryEditorDidFinish:finishCopy returnToKeyboard:keyboardCopy withTextAttachmentToEdit:editCopy];
}

- (void)summaryEditor:(id)editor didRequestEditingSlotWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  editorCopy = editor;
  delegate = [(WFModuleSummaryEditor *)self delegate];
  [delegate summaryEditor:editorCopy didRequestEditingSlotWithIdentifier:identifierCopy];
}

- (void)summaryEditor:(id)editor didCommitParameterState:(id)state
{
  v17[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  currentState = [(WFModuleSummaryEditor *)self currentState];
  which = [currentState which];
  if (which)
  {
    if (stateCopy)
    {
      v8 = objc_alloc(MEMORY[0x277D7C9D0]);
      states = [currentState states];
      v10 = states;
      if (states)
      {
        v11 = states;
      }

      else
      {
        v11 = MEMORY[0x277CBEC10];
      }

      v16 = which;
      v17[0] = stateCopy;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v13 = [v11 if_dictionaryByAddingEntriesFromDictionary:v12];
      v14 = [v8 initWithWhich:which states:v13];
    }

    else
    {
      states2 = [currentState states];
      v10 = [states2 mutableCopy];

      [v10 removeObjectForKey:which];
      v14 = [objc_alloc(MEMORY[0x277D7C9D0]) initWithWhich:which states:v10];
    }

    [(WFUnionParameterSummaryEditor *)self commitState:v14];
  }
}

- (id)initialStateForSummaryEditor:(id)editor
{
  parameter = [(WFModuleSummaryEditor *)self parameter];
  currentState = [(WFModuleSummaryEditor *)self currentState];
  v6 = [parameter substateFromState:currentState];

  return v6;
}

- (void)beginEditingTextAttachment:(id)attachment inSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor
{
  attachmentCopy = attachment;
  identifierCopy = identifier;
  anchorCopy = anchor;
  if ([(WFUnionParameterSummaryEditor *)self isSelfSlot:identifierCopy])
  {
    v12.receiver = self;
    v12.super_class = WFUnionParameterSummaryEditor;
    [(WFModuleSummaryEditor *)&v12 beginEditingTextAttachment:attachmentCopy inSlotWithIdentifier:identifierCopy presentationAnchor:anchorCopy];
  }

  else
  {
    subeditor = [(WFUnionParameterSummaryEditor *)self subeditor];
    [subeditor beginEditingTextAttachment:attachmentCopy inSlotWithIdentifier:identifierCopy presentationAnchor:anchorCopy];
  }
}

- (id)customMenuElementsForSlotWithIdentifier:(id)identifier style:(unint64_t)style
{
  identifierCopy = identifier;
  if ([(WFUnionParameterSummaryEditor *)self isSelfSlot:identifierCopy])
  {
    v7 = [(WFUnionParameterSummaryEditor *)self subtypeMenuElementsForSlotWithIdentifier:identifierCopy];
  }

  else
  {
    subeditor = [(WFUnionParameterSummaryEditor *)self subeditor];
    v9 = [subeditor customMenuElementsForSlotWithIdentifier:identifierCopy style:style];

    if (style == 1)
    {
      v10 = [(WFUnionParameterSummaryEditor *)self subtypeMenuElementsForSlotWithIdentifier:identifierCopy];
      v7 = [v10 arrayByAddingObjectsFromArray:v9];
    }

    else if (style)
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

- (id)subtypeMenuElementsForSlotWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentState = [(WFModuleSummaryEditor *)self currentState];
  which = [currentState which];

  parameter = [(WFModuleSummaryEditor *)self parameter];
  subtypes = [parameter subtypes];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__WFUnionParameterSummaryEditor_subtypeMenuElementsForSlotWithIdentifier___block_invoke;
  v16[3] = &unk_279EDC158;
  v16[4] = self;
  v17 = which;
  v18 = identifierCopy;
  v9 = identifierCopy;
  v10 = which;
  v11 = [subtypes if_compactMap:v16];
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

- (id)clearButtonMenuItemForSlotWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(WFUnionParameterSummaryEditor *)self isSelfSlot:identifierCopy])
  {
    v8.receiver = self;
    v8.super_class = WFUnionParameterSummaryEditor;
    v5 = [(WFModuleSummaryEditor *)&v8 clearButtonMenuItemForSlotWithIdentifier:identifierCopy];
  }

  else
  {
    subeditor = [(WFUnionParameterSummaryEditor *)self subeditor];
    v5 = [subeditor clearButtonMenuItemForSlotWithIdentifier:identifierCopy];
  }

  return v5;
}

- (id)variableMenuElementsForSlotWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(WFUnionParameterSummaryEditor *)self isSelfSlot:identifierCopy])
  {
    v8.receiver = self;
    v8.super_class = WFUnionParameterSummaryEditor;
    v5 = [(WFModuleSummaryEditor *)&v8 variableMenuElementsForSlotWithIdentifier:identifierCopy];
  }

  else
  {
    subeditor = [(WFUnionParameterSummaryEditor *)self subeditor];
    v5 = [subeditor variableMenuElementsForSlotWithIdentifier:identifierCopy];
  }

  return v5;
}

- (BOOL)variableMenuSupportsVariableSelectionForSlotWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(WFUnionParameterSummaryEditor *)self isSelfSlot:identifierCopy])
  {
    v8.receiver = self;
    v8.super_class = WFUnionParameterSummaryEditor;
    v5 = [(WFModuleSummaryEditor *)&v8 variableMenuSupportsVariableSelectionForSlotWithIdentifier:identifierCopy];
  }

  else
  {
    subeditor = [(WFUnionParameterSummaryEditor *)self subeditor];
    v5 = [subeditor variableMenuSupportsVariableSelectionForSlotWithIdentifier:identifierCopy];
  }

  return v5;
}

- (void)sourceViewTintColorDidChange
{
  subeditor = [(WFUnionParameterSummaryEditor *)self subeditor];
  [subeditor sourceViewTintColorDidChange];
}

- (void)textEntryDidFinish
{
  subeditor = [(WFUnionParameterSummaryEditor *)self subeditor];
  [subeditor textEntryDidFinish];

  v4.receiver = self;
  v4.super_class = WFUnionParameterSummaryEditor;
  [(WFModuleSummaryEditor *)&v4 textEntryDidFinish];
}

- (void)textEntryDidPasteWithOriginalBlock:(id)block
{
  blockCopy = block;
  subeditor = [(WFUnionParameterSummaryEditor *)self subeditor];
  [subeditor textEntryDidPasteWithOriginalBlock:blockCopy];
}

- (void)textEntryDidCopyWithOriginalBlock:(id)block
{
  blockCopy = block;
  subeditor = [(WFUnionParameterSummaryEditor *)self subeditor];
  [subeditor textEntryDidCopyWithOriginalBlock:blockCopy];
}

- (void)textEntryDidCutWithOriginalBlock:(id)block
{
  blockCopy = block;
  subeditor = [(WFUnionParameterSummaryEditor *)self subeditor];
  [subeditor textEntryDidCutWithOriginalBlock:blockCopy];
}

- (void)textEntryTextDidChange:(id)change
{
  changeCopy = change;
  subeditor = [(WFUnionParameterSummaryEditor *)self subeditor];
  [subeditor textEntryTextDidChange:changeCopy];
}

- (BOOL)textEntryShouldChangeText:(id)text
{
  textCopy = text;
  subeditor = [(WFUnionParameterSummaryEditor *)self subeditor];
  v6 = [subeditor textEntryShouldChangeText:textCopy];

  return v6;
}

- (void)textEntryWillBegin:(id)begin allowMultipleLines:(BOOL *)lines
{
  beginCopy = begin;
  subeditor = [(WFUnionParameterSummaryEditor *)self subeditor];
  [subeditor textEntryWillBegin:beginCopy allowMultipleLines:lines];

  v8.receiver = self;
  v8.super_class = WFUnionParameterSummaryEditor;
  [(WFModuleSummaryEditor *)&v8 textEntryWillBegin:beginCopy allowMultipleLines:lines];
}

- (void)requestTextEntry
{
  subeditor = [(WFUnionParameterSummaryEditor *)self subeditor];
  [subeditor requestTextEntry];
}

- (void)commitState:(id)state
{
  stateCopy = state;
  currentState = [(WFModuleSummaryEditor *)self currentState];
  which = [currentState which];
  which2 = [stateCopy which];
  v8 = [which isEqual:which2];

  if ((v8 & 1) == 0)
  {
    subeditor = self->_subeditor;
    self->_subeditor = 0;

    subparameter = self->_subparameter;
    self->_subparameter = 0;
  }

  v11.receiver = self;
  v11.super_class = WFUnionParameterSummaryEditor;
  [(WFModuleSummaryEditor *)&v11 commitState:stateCopy];
}

- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor
{
  identifierCopy = identifier;
  anchorCopy = anchor;
  if ([(WFUnionParameterSummaryEditor *)self isSelfSlot:identifierCopy])
  {
    v9.receiver = self;
    v9.super_class = WFUnionParameterSummaryEditor;
    [(WFModuleSummaryEditor *)&v9 beginEditingSlotWithIdentifier:identifierCopy presentationAnchor:anchorCopy];
  }

  else
  {
    subeditor = [(WFUnionParameterSummaryEditor *)self subeditor];
    [subeditor beginEditingSlotWithIdentifier:identifierCopy presentationAnchor:anchorCopy];
  }
}

- (BOOL)isSelfSlot:(id)slot
{
  v3 = [slot key];
  whichSlotKey = [MEMORY[0x277D7C9C8] whichSlotKey];
  v5 = [v3 isEqual:whichSlotKey];

  return v5;
}

- (id)substate
{
  parameter = [(WFModuleSummaryEditor *)self parameter];
  currentState = [(WFModuleSummaryEditor *)self currentState];
  v5 = [parameter substateFromState:currentState];

  return v5;
}

- (WFModuleSummarySupporting)subparameter
{
  subparameter = self->_subparameter;
  if (!subparameter)
  {
    parameter = [(WFModuleSummaryEditor *)self parameter];
    currentState = [(WFModuleSummaryEditor *)self currentState];
    v6 = [parameter subparameterForState:currentState];
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
    currentState = [(WFModuleSummaryEditor *)self currentState];
    v5 = [(WFUnionParameterSummaryEditor *)self subeditorForState:currentState];
    v6 = self->_subeditor;
    self->_subeditor = v5;

    subeditor = self->_subeditor;
  }

  return subeditor;
}

- (id)subeditorForState:(id)state
{
  stateCopy = state;
  parameter = [(WFModuleSummaryEditor *)self parameter];
  v6 = [parameter subparameterForState:stateCopy];

  v7 = objc_opt_class();
  v8 = [objc_alloc(WFModuleSummaryEditorClassForParameterClass(v7)) initWithParameter:v6 arrayIndex:0 processing:{-[WFModuleSummaryEditor isProcessing](self, "isProcessing")}];
  [v8 setDelegate:self];
  [v8 setAllowsPickingVariables:{-[WFModuleSummaryEditor allowsPickingVariables](self, "allowsPickingVariables")}];

  return v8;
}

- (WFUnionParameterSummaryEditor)initWithParameter:(id)parameter arrayIndex:(unint64_t)index processing:(BOOL)processing
{
  v9.receiver = self;
  v9.super_class = WFUnionParameterSummaryEditor;
  v5 = [(WFModuleSummaryEditor *)&v9 initWithParameter:parameter arrayIndex:index processing:processing];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

@end