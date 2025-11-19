@interface WFStandaloneModuleSummaryPresenter
- (WFStandaloneModuleSummaryPresenter)initWithParameter:(id)a3 slotIdentifier:(id)a4 initialState:(id)a5 isProcessing:(BOOL)a6 variableProvider:(id)a7 variableUIDelegate:(id)a8 presentationAnchor:(id)a9 allowsPickingVariables:(BOOL)a10;
- (WFStandaloneModuleSummaryPresenterDelegate)delegate;
- (id)menu;
- (void)dismiss;
- (void)present;
- (void)retainDelegate;
- (void)summaryEditor:(id)a3 didCommitParameterState:(id)a4;
- (void)summaryEditor:(id)a3 didStageParameterState:(id)a4;
- (void)summaryEditorDidFinish:(id)a3 returnToKeyboard:(BOOL)a4 withTextAttachmentToEdit:(id)a5;
- (void)summaryEditorDidRequestTextEntry:(id)a3;
@end

@implementation WFStandaloneModuleSummaryPresenter

- (WFStandaloneModuleSummaryPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)summaryEditorDidRequestTextEntry:(id)a3
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

- (void)summaryEditorDidFinish:(id)a3 returnToKeyboard:(BOOL)a4 withTextAttachmentToEdit:(id)a5
{
  [(WFStandaloneModuleSummaryPresenter *)self setEditor:0, a4, a5];
  v6 = [(WFStandaloneModuleSummaryPresenter *)self delegate];
  [v6 moduleSummaryPresenterDidFinish:self];

  [(WFStandaloneModuleSummaryPresenter *)self releaseDelegate];
}

- (void)summaryEditor:(id)a3 didCommitParameterState:(id)a4
{
  v5 = a4;
  v6 = [(WFStandaloneModuleSummaryPresenter *)self delegate];
  [v6 moduleSummaryPresenter:self didCommitParameterState:v5];
}

- (void)summaryEditor:(id)a3 didStageParameterState:(id)a4
{
  v8 = a4;
  v5 = [(WFStandaloneModuleSummaryPresenter *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WFStandaloneModuleSummaryPresenter *)self delegate];
    [v7 moduleSummaryPresenter:self didStageParameterState:v8];
  }
}

- (void)retainDelegate
{
  v3 = [(WFStandaloneModuleSummaryPresenter *)self delegate];
  [(WFStandaloneModuleSummaryPresenter *)self setRetainedDelegate:v3];
}

- (id)menu
{
  v3 = [(WFStandaloneModuleSummaryPresenter *)self editor];
  v4 = [(WFStandaloneModuleSummaryPresenter *)self slotIdentifier];
  v5 = [v3 menuForSlotWithIdentifier:v4 style:0];

  if (v5)
  {
    [(WFStandaloneModuleSummaryPresenter *)self retainDelegate];
  }

  return v5;
}

- (void)dismiss
{
  v3 = [(WFStandaloneModuleSummaryPresenter *)self editor];
  [v3 cancelEditingWithCompletionHandler:&__block_literal_global_1133];

  [(WFStandaloneModuleSummaryPresenter *)self setEditor:0];

  [(WFStandaloneModuleSummaryPresenter *)self releaseDelegate];
}

- (void)present
{
  v3 = [(WFStandaloneModuleSummaryPresenter *)self presentationAnchor];

  if (v3)
  {
    v4 = [(WFStandaloneModuleSummaryPresenter *)self editor];
    v5 = [(WFStandaloneModuleSummaryPresenter *)self slotIdentifier];
    v6 = [(WFStandaloneModuleSummaryPresenter *)self presentationAnchor];
    [v4 beginEditingSlotWithIdentifier:v5 presentationAnchor:v6];

    [(WFStandaloneModuleSummaryPresenter *)self retainDelegate];
  }
}

- (WFStandaloneModuleSummaryPresenter)initWithParameter:(id)a3 slotIdentifier:(id)a4 initialState:(id)a5 isProcessing:(BOOL)a6 variableProvider:(id)a7 variableUIDelegate:(id)a8 presentationAnchor:(id)a9 allowsPickingVariables:(BOOL)a10
{
  v12 = a6;
  v16 = a3;
  v27 = a4;
  v26 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v28.receiver = self;
  v28.super_class = WFStandaloneModuleSummaryPresenter;
  v20 = [(WFStandaloneModuleSummaryPresenter *)&v28 init];
  if (v20 && (v21 = objc_opt_class(), (v22 = WFModuleSummaryEditorClassForParameterClass(v21)) != 0))
  {
    v23 = [[v22 alloc] initWithParameter:v16 arrayIndex:0x7FFFFFFFFFFFFFFFLL processing:{v12, v26, v27}];
    [v23 setDelegate:v20];
    [v23 setVariableProvider:v17];
    [v23 setVariableUIDelegate:v18];
    [v23 setAllowsPickingVariables:a10];
    [(WFStandaloneModuleSummaryPresenter *)v20 setEditor:v23];
    objc_storeStrong(&v20->_initialState, a5);
    objc_storeStrong(&v20->_slotIdentifier, a4);
    objc_storeStrong(&v20->_presentationAnchor, a9);
    v24 = v20;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end