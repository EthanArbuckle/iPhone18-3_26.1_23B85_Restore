@interface WFAskParameterDialogViewController
+ (id)singleButtonSlotForParameter:(id)parameter state:(id)state;
- (WFAskParameterDialogViewController)initWithRequest:(id)request;
- (double)contentHeightForWidth:(double)width withMaximumVisibleHeight:(double)height;
- (id)initialStateForSummaryEditor:(id)editor;
- (void)done;
- (void)loadView;
- (void)modalButtonTapped:(id)tapped;
- (void)parameterEditorCell:(id)cell didUpdateParameterState:(id)state;
- (void)summaryEditor:(id)editor didCommitParameterState:(id)state;
- (void)summaryEditor:(id)editor didRequestEditingSlotWithIdentifier:(id)identifier;
- (void)summaryEditorDidRequestTextEntry:(id)entry;
@end

@implementation WFAskParameterDialogViewController

- (void)summaryEditor:(id)editor didRequestEditingSlotWithIdentifier:(id)identifier
{
  v6 = MEMORY[0x277D7BDC0];
  identifierCopy = identifier;
  editorCopy = editor;
  v9 = [v6 alloc];
  modalButton = [(WFAskParameterDialogViewController *)self modalButton];
  modalButton2 = [(WFAskParameterDialogViewController *)self modalButton];
  [modalButton2 bounds];
  v12 = [v9 initWithSourceViewController:self sourceView:modalButton sourceRect:?];

  [editorCopy beginEditingSlotWithIdentifier:identifierCopy presentationAnchor:v12];
}

- (void)summaryEditorDidRequestTextEntry:(id)entry
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = getWFDialogLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 136315138;
    v5 = "[WFAskParameterDialogViewController summaryEditorDidRequestTextEntry:]";
    _os_log_impl(&dword_274719000, v3, OS_LOG_TYPE_FAULT, "%s Text entry isn't supported in old-UI parameters represented as buttons", &v4, 0xCu);
  }
}

- (void)summaryEditor:(id)editor didCommitParameterState:(id)state
{
  stateCopy = state;
  editorCopy = editor;
  fakeAction = [(WFAskParameterDialogViewController *)self fakeAction];
  parameter = [editorCopy parameter];

  v10 = [parameter key];
  [fakeAction setParameterState:stateCopy forKey:v10];

  [(WFAskParameterDialogViewController *)self done];
}

- (id)initialStateForSummaryEditor:(id)editor
{
  editorCopy = editor;
  fakeAction = [(WFAskParameterDialogViewController *)self fakeAction];
  parameter = [editorCopy parameter];

  v7 = [parameter key];
  v8 = [fakeAction parameterStateForKey:v7];

  return v8;
}

- (void)modalButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  fakeAction = [(WFAskParameterDialogViewController *)self fakeAction];
  request = [(WFCompactDialogViewController *)self request];
  parameterKey = [request parameterKey];

  v8 = [fakeAction parameterForKey:parameterKey];
  objc_opt_class();
  v9 = WFModuleSummaryEditorClassForParameterClass();
  summarySlot = [(WFAskParameterDialogViewController *)self summarySlot];
  v11 = summarySlot;
  if (v9 && summarySlot)
  {
    v12 = [[v9 alloc] initWithParameter:v8 arrayIndex:0x7FFFFFFFFFFFFFFFLL processing:1];
    [v12 setDelegate:self];
    fakeAction2 = [(WFAskParameterDialogViewController *)self fakeAction];
    [v12 setVariableProvider:fakeAction2];

    objc_storeStrong(&self->_summaryEditor, v12);
    unlockService = [(WFAskParameterDialogViewController *)self unlockService];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__WFAskParameterDialogViewController_modalButtonTapped___block_invoke;
    v16[3] = &unk_279EE7C10;
    v16[4] = self;
    v17 = tappedCopy;
    v18 = v12;
    v19 = v11;
    v15 = v12;
    [unlockService requestUnlockIfNeeded:v16];
  }
}

void __56__WFAskParameterDialogViewController_modalButtonTapped___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = objc_alloc(MEMORY[0x277D7BDC0]);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    [v5 bounds];
    v9 = [v3 initWithSourceViewController:v4 sourceView:v5 sourceRect:?];
    v6 = *(a1 + 48);
    v7 = [*(a1 + 56) identifier];
    [v6 beginEditingSlotWithIdentifier:v7 presentationAnchor:v9];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [objc_alloc(MEMORY[0x277D79DE8]) initWithSerializedParameterState:0 cancelled:1];
    [v8 finishWithResponse:?];
  }
}

- (void)parameterEditorCell:(id)cell didUpdateParameterState:(id)state
{
  stateCopy = state;
  cellCopy = cell;
  model = [cellCopy model];
  parameter = [model parameter];

  fakeAction = [(WFAskParameterDialogViewController *)self fakeAction];
  v10 = [parameter key];
  [fakeAction setParameterState:stateCopy forKey:v10];

  v11 = objc_alloc(MEMORY[0x277D7BDD8]);
  fakeAction2 = [(WFAskParameterDialogViewController *)self fakeAction];
  v13 = [parameter key];
  v14 = [fakeAction2 parameterStateForKey:v13];
  v15 = [v11 initWithParameter:parameter state:v14];
  [cellCopy updateModel:v15];
}

- (void)done
{
  if (![(WFAskParameterDialogViewController *)self isFinished])
  {
    [(WFAskParameterDialogViewController *)self setFinished:1];
    view = [(WFAskParameterDialogViewController *)self view];
    [view endEditing:1];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__WFAskParameterDialogViewController_done__block_invoke;
    block[3] = &unk_279EE8A78;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __42__WFAskParameterDialogViewController_done__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fakeAction];
  v3 = [*(a1 + 32) request];
  v4 = [v3 parameterKey];
  v9 = [v2 parameterStateForKey:v4];

  v5 = *(a1 + 32);
  v6 = objc_alloc(MEMORY[0x277D79DE8]);
  v7 = [v9 serializedRepresentation];
  v8 = [v6 initWithSerializedParameterState:v7 cancelled:0];
  [v5 finishWithResponse:v8];
}

- (double)contentHeightForWidth:(double)width withMaximumVisibleHeight:(double)height
{
  hostingCell = [(WFAskParameterDialogViewController *)self hostingCell];

  if (hostingCell)
  {
    hostingCell2 = [(WFAskParameterDialogViewController *)self hostingCell];
    [hostingCell2 sizeThatFits:{width, 1.79769313e308}];
    v10 = v9;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = WFAskParameterDialogViewController;
    [(WFCompactPlatterViewController *)&v13 contentHeightForWidth:width withMaximumVisibleHeight:height];
    return v11;
  }

  return v10;
}

- (void)loadView
{
  v55[5] = *MEMORY[0x277D85DE8];
  v54.receiver = self;
  v54.super_class = WFAskParameterDialogViewController;
  [(WFCompactDialogViewController *)&v54 loadView];
  v48 = objc_opt_new();
  view = [v48 view];
  [(WFCompactPlatterViewController *)self setContentViewController:v48];
  request = [(WFCompactDialogViewController *)self request];
  fakeAction = [(WFAskParameterDialogViewController *)self fakeAction];
  parameterKey = [request parameterKey];
  v44 = [fakeAction parameterForKey:parameterKey];
  v4 = objc_opt_new();
  objc_initWeak(&location, self);
  cancelButton = [request cancelButton];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __46__WFAskParameterDialogViewController_loadView__block_invoke;
  v51[3] = &unk_279EE8908;
  objc_copyWeak(&v52, &location);
  v6 = [WFCompactDialogAction actionForButton:cancelButton handler:v51];
  [v4 addObject:v6];

  if ([request style] != 1)
  {
    doneButton = [request doneButton];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __46__WFAskParameterDialogViewController_loadView__block_invoke_2;
    v49[3] = &unk_279EE8908;
    objc_copyWeak(&v50, &location);
    v8 = [WFCompactDialogAction actionForButton:doneButton handler:v49];
    [v4 addObject:v8];

    objc_destroyWeak(&v50);
  }

  [(WFCompactDialogViewController *)self configureActionGroupWithActions:v4];
  if ([request style] != 1 || !objc_msgSend(v44, "conformsToProtocol:", &unk_288451778))
  {
    goto LABEL_9;
  }

  v9 = v44;
  v10 = objc_opt_class();
  v11 = [v9 key];
  v12 = [fakeAction parameterStateForKey:v11];
  v13 = [v10 singleButtonSlotForParameter:v9 state:v12];

  if (!v13)
  {

LABEL_9:
    v23 = objc_alloc(MEMORY[0x277D7BDD8]);
    v24 = [fakeAction parameterStateForKey:parameterKey];
    v9 = [v23 initWithParameter:v44 state:v24];

    [v9 setBecomeFirstResponder:{objc_msgSend(request, "focusImmediatelyWhenPresented")}];
    v13 = [objc_alloc(MEMORY[0x277D7BDD0]) initWithStyle:0 reuseIdentifier:0];
    [view bounds];
    [v13 setFrame:?];
    [v13 setAutoresizingMask:18];
    [v13 setDelegate:self];
    [v13 setContainingViewController:v48];
    [v13 updateModel:v9];
    [view addSubview:v13];
    [(WFAskParameterDialogViewController *)self setHostingCell:v13];
    goto LABEL_10;
  }

  [(WFAskParameterDialogViewController *)self setSummarySlot:v13];
  v14 = [WFMultilineBackgroundFadingButton buttonWithType:0];
  [v14 setDerivesTitleColorFromTintColor:1];
  layer = [v14 layer];
  [layer setCornerRadius:10.0];

  [v14 setContentEdgeInsets:{8.0, 8.0, 8.0, 8.0}];
  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  titleLabel = [v14 titleLabel];
  [titleLabel setFont:v16];

  titleLabel2 = [v14 titleLabel];
  [titleLabel2 setAdjustsFontForContentSizeCategory:1];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  localizedName = [v13 localizedName];
  if (localizedName)
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = WFLocalizedString(@"Choose %@");
    titleLabel = [v13 localizedName];
    v22 = [v20 stringWithFormat:v21, titleLabel];
  }

  else
  {
    v22 = WFLocalizedString(@"Choose");
    v21 = v22;
  }

  [v14 setTitle:v22 forState:0];
  if (localizedName)
  {
  }

  [v14 addTarget:self action:sel_modalButtonTapped_ forControlEvents:64];
  v25 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0500000007];
  [v14 setBackgroundColor:v25 forState:0];

  v26 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.100000001];
  [v14 setBackgroundColor:v26 forState:1];

  [view addSubview:v14];
  [(WFAskParameterDialogViewController *)self setModalButton:v14];
  platterView = [(WFCompactPlatterViewController *)self platterView];
  [platterView setHidesContentViewTopSeparator:1];

  v33 = MEMORY[0x277CCAAD0];
  topAnchor = [v14 topAnchor];
  topAnchor2 = [view topAnchor];
  v41 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v55[0] = v41;
  leadingAnchor = [v14 leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v55[1] = v38;
  trailingAnchor = [v14 trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v55[2] = v35;
  bottomAnchor = [v14 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
  v55[3] = v29;
  heightAnchor = [v14 heightAnchor];
  v31 = [heightAnchor constraintGreaterThanOrEqualToConstant:47.0];
  v55[4] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:5];
  [v33 activateConstraints:v32];

LABEL_10:
  objc_destroyWeak(&v52);
  objc_destroyWeak(&location);
}

void __46__WFAskParameterDialogViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [objc_alloc(MEMORY[0x277D79DE8]) initWithSerializedParameterState:0 cancelled:1];
  [WeakRetained finishWithResponse:v1];
}

void __46__WFAskParameterDialogViewController_loadView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained done];
}

- (WFAskParameterDialogViewController)initWithRequest:(id)request
{
  requestCopy = request;
  v20.receiver = self;
  v20.super_class = WFAskParameterDialogViewController;
  v5 = [(WFCompactDialogViewController *)&v20 initWithRequest:requestCopy];
  if (v5)
  {
    actionIdentifier = [requestCopy actionIdentifier];
    serializedParameterStates = [requestCopy serializedParameterStates];
    v8 = objc_alloc_init(MEMORY[0x277D7CA60]);
    fakeWorkflow = v5->_fakeWorkflow;
    v5->_fakeWorkflow = v8;
    v10 = v8;

    mEMORY[0x277D7C0D0] = [MEMORY[0x277D7C0D0] sharedRegistry];
    v12 = [mEMORY[0x277D7C0D0] createActionWithIdentifier:actionIdentifier serializedParameters:serializedParameterStates];

    copyForProcessing = [v12 copyForProcessing];
    [copyForProcessing willBeAddedToWorkflow:v5->_fakeWorkflow];
    [copyForProcessing wasAddedToWorkflow:v5->_fakeWorkflow];
    fakeAction = v5->_fakeAction;
    v5->_fakeAction = copyForProcessing;
    v15 = copyForProcessing;

    v16 = objc_opt_new();
    unlockService = v5->_unlockService;
    v5->_unlockService = v16;

    v18 = v5;
  }

  return v5;
}

+ (id)singleButtonSlotForParameter:(id)parameter state:(id)state
{
  parameterCopy = parameter;
  stateCopy = state;
  if (objc_opt_respondsToSelector())
  {
    firstObject = [parameterCopy moduleSummarySlotForState:stateCopy];
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [parameterCopy moduleSummarySlotsForState:stateCopy];
    if ([v8 count] == 1)
    {
      firstObject = [v8 firstObject];

      goto LABEL_8;
    }
  }

  firstObject = 0;
LABEL_8:

  return firstObject;
}

@end