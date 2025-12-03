@interface WFStandaloneModuleSummaryPresenter
- (WFStandaloneModuleSummaryPresenter)initWithParameter:(id)parameter slotIdentifier:(id)identifier initialState:(id)state isProcessing:(BOOL)processing variableProvider:(id)provider variableUIDelegate:(id)delegate presentationAnchor:(id)anchor allowsPickingVariables:(BOOL)self0;
- (WFStandaloneModuleSummaryPresenterDelegate)delegate;
- (id)menu;
- (void)dismiss;
- (void)present;
- (void)retainDelegate;
- (void)summaryEditor:(id)editor didCommitParameterState:(id)state;
- (void)summaryEditor:(id)editor didStageParameterState:(id)state;
- (void)summaryEditorDidFinish:(id)finish returnToKeyboard:(BOOL)keyboard withTextAttachmentToEdit:(id)edit;
- (void)summaryEditorDidRequestTextEntry:(id)entry;
@end

@implementation WFStandaloneModuleSummaryPresenter

- (WFStandaloneModuleSummaryPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)summaryEditorDidRequestTextEntry:(id)entry
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = getWFGeneralLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 136315138;
    v5 = "[WFStandaloneModuleSummaryPresenter summaryEditorDidRequestTextEntry:]";
    _os_log_impl(&dword_2743F0000, v3, OS_LOG_TYPE_FAULT, "%s Text entry isn't supported in old-UI parameters represented as buttons", &v4, 0xCu);
  }
}

- (void)summaryEditorDidFinish:(id)finish returnToKeyboard:(BOOL)keyboard withTextAttachmentToEdit:(id)edit
{
  [(WFStandaloneModuleSummaryPresenter *)self setEditor:0, keyboard, edit];
  delegate = [(WFStandaloneModuleSummaryPresenter *)self delegate];
  [delegate moduleSummaryPresenterDidFinish:self];

  [(WFStandaloneModuleSummaryPresenter *)self releaseDelegate];
}

- (void)summaryEditor:(id)editor didCommitParameterState:(id)state
{
  stateCopy = state;
  delegate = [(WFStandaloneModuleSummaryPresenter *)self delegate];
  [delegate moduleSummaryPresenter:self didCommitParameterState:stateCopy];
}

- (void)summaryEditor:(id)editor didStageParameterState:(id)state
{
  stateCopy = state;
  delegate = [(WFStandaloneModuleSummaryPresenter *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(WFStandaloneModuleSummaryPresenter *)self delegate];
    [delegate2 moduleSummaryPresenter:self didStageParameterState:stateCopy];
  }
}

- (void)retainDelegate
{
  delegate = [(WFStandaloneModuleSummaryPresenter *)self delegate];
  [(WFStandaloneModuleSummaryPresenter *)self setRetainedDelegate:delegate];
}

- (id)menu
{
  editor = [(WFStandaloneModuleSummaryPresenter *)self editor];
  slotIdentifier = [(WFStandaloneModuleSummaryPresenter *)self slotIdentifier];
  v5 = [editor menuForSlotWithIdentifier:slotIdentifier style:0];

  if (v5)
  {
    [(WFStandaloneModuleSummaryPresenter *)self retainDelegate];
  }

  return v5;
}

- (void)dismiss
{
  editor = [(WFStandaloneModuleSummaryPresenter *)self editor];
  [editor cancelEditingWithCompletionHandler:&__block_literal_global_1133];

  [(WFStandaloneModuleSummaryPresenter *)self setEditor:0];

  [(WFStandaloneModuleSummaryPresenter *)self releaseDelegate];
}

- (void)present
{
  presentationAnchor = [(WFStandaloneModuleSummaryPresenter *)self presentationAnchor];

  if (presentationAnchor)
  {
    editor = [(WFStandaloneModuleSummaryPresenter *)self editor];
    slotIdentifier = [(WFStandaloneModuleSummaryPresenter *)self slotIdentifier];
    presentationAnchor2 = [(WFStandaloneModuleSummaryPresenter *)self presentationAnchor];
    [editor beginEditingSlotWithIdentifier:slotIdentifier presentationAnchor:presentationAnchor2];

    [(WFStandaloneModuleSummaryPresenter *)self retainDelegate];
  }
}

- (WFStandaloneModuleSummaryPresenter)initWithParameter:(id)parameter slotIdentifier:(id)identifier initialState:(id)state isProcessing:(BOOL)processing variableProvider:(id)provider variableUIDelegate:(id)delegate presentationAnchor:(id)anchor allowsPickingVariables:(BOOL)self0
{
  processingCopy = processing;
  parameterCopy = parameter;
  identifierCopy = identifier;
  stateCopy = state;
  providerCopy = provider;
  delegateCopy = delegate;
  anchorCopy = anchor;
  v28.receiver = self;
  v28.super_class = WFStandaloneModuleSummaryPresenter;
  v20 = [(WFStandaloneModuleSummaryPresenter *)&v28 init];
  if (v20 && (v21 = objc_opt_class(), (v22 = WFModuleSummaryEditorClassForParameterClass(v21)) != 0))
  {
    v23 = [[v22 alloc] initWithParameter:parameterCopy arrayIndex:0x7FFFFFFFFFFFFFFFLL processing:{processingCopy, stateCopy, identifierCopy}];
    [v23 setDelegate:v20];
    [v23 setVariableProvider:providerCopy];
    [v23 setVariableUIDelegate:delegateCopy];
    [v23 setAllowsPickingVariables:variables];
    [(WFStandaloneModuleSummaryPresenter *)v20 setEditor:v23];
    objc_storeStrong(&v20->_initialState, state);
    objc_storeStrong(&v20->_slotIdentifier, identifier);
    objc_storeStrong(&v20->_presentationAnchor, anchor);
    v24 = v20;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end