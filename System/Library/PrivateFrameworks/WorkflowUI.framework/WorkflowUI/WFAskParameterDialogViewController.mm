@interface WFAskParameterDialogViewController
+ (id)singleButtonSlotForParameter:(id)a3 state:(id)a4;
- (WFAskParameterDialogViewController)initWithRequest:(id)a3;
- (double)contentHeightForWidth:(double)a3 withMaximumVisibleHeight:(double)a4;
- (id)initialStateForSummaryEditor:(id)a3;
- (void)done;
- (void)loadView;
- (void)modalButtonTapped:(id)a3;
- (void)parameterEditorCell:(id)a3 didUpdateParameterState:(id)a4;
- (void)summaryEditor:(id)a3 didCommitParameterState:(id)a4;
- (void)summaryEditor:(id)a3 didRequestEditingSlotWithIdentifier:(id)a4;
- (void)summaryEditorDidRequestTextEntry:(id)a3;
@end

@implementation WFAskParameterDialogViewController

- (void)summaryEditor:(id)a3 didRequestEditingSlotWithIdentifier:(id)a4
{
  v6 = MEMORY[0x277D7BDC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [(WFAskParameterDialogViewController *)self modalButton];
  v11 = [(WFAskParameterDialogViewController *)self modalButton];
  [v11 bounds];
  v12 = [v9 initWithSourceViewController:self sourceView:v10 sourceRect:?];

  [v8 beginEditingSlotWithIdentifier:v7 presentationAnchor:v12];
}

- (void)summaryEditorDidRequestTextEntry:(id)a3
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

- (void)summaryEditor:(id)a3 didCommitParameterState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFAskParameterDialogViewController *)self fakeAction];
  v9 = [v7 parameter];

  v10 = [v9 key];
  [v8 setParameterState:v6 forKey:v10];

  [(WFAskParameterDialogViewController *)self done];
}

- (id)initialStateForSummaryEditor:(id)a3
{
  v4 = a3;
  v5 = [(WFAskParameterDialogViewController *)self fakeAction];
  v6 = [v4 parameter];

  v7 = [v6 key];
  v8 = [v5 parameterStateForKey:v7];

  return v8;
}

- (void)modalButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(WFAskParameterDialogViewController *)self fakeAction];
  v6 = [(WFCompactDialogViewController *)self request];
  v7 = [v6 parameterKey];

  v8 = [v5 parameterForKey:v7];
  objc_opt_class();
  v9 = WFModuleSummaryEditorClassForParameterClass();
  v10 = [(WFAskParameterDialogViewController *)self summarySlot];
  v11 = v10;
  if (v9 && v10)
  {
    v12 = [[v9 alloc] initWithParameter:v8 arrayIndex:0x7FFFFFFFFFFFFFFFLL processing:1];
    [v12 setDelegate:self];
    v13 = [(WFAskParameterDialogViewController *)self fakeAction];
    [v12 setVariableProvider:v13];

    objc_storeStrong(&self->_summaryEditor, v12);
    v14 = [(WFAskParameterDialogViewController *)self unlockService];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__WFAskParameterDialogViewController_modalButtonTapped___block_invoke;
    v16[3] = &unk_279EE7C10;
    v16[4] = self;
    v17 = v4;
    v18 = v12;
    v19 = v11;
    v15 = v12;
    [v14 requestUnlockIfNeeded:v16];
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

- (void)parameterEditorCell:(id)a3 didUpdateParameterState:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 model];
  v16 = [v8 parameter];

  v9 = [(WFAskParameterDialogViewController *)self fakeAction];
  v10 = [v16 key];
  [v9 setParameterState:v6 forKey:v10];

  v11 = objc_alloc(MEMORY[0x277D7BDD8]);
  v12 = [(WFAskParameterDialogViewController *)self fakeAction];
  v13 = [v16 key];
  v14 = [v12 parameterStateForKey:v13];
  v15 = [v11 initWithParameter:v16 state:v14];
  [v7 updateModel:v15];
}

- (void)done
{
  if (![(WFAskParameterDialogViewController *)self isFinished])
  {
    [(WFAskParameterDialogViewController *)self setFinished:1];
    v3 = [(WFAskParameterDialogViewController *)self view];
    [v3 endEditing:1];

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

- (double)contentHeightForWidth:(double)a3 withMaximumVisibleHeight:(double)a4
{
  v7 = [(WFAskParameterDialogViewController *)self hostingCell];

  if (v7)
  {
    v8 = [(WFAskParameterDialogViewController *)self hostingCell];
    [v8 sizeThatFits:{a3, 1.79769313e308}];
    v10 = v9;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = WFAskParameterDialogViewController;
    [(WFCompactPlatterViewController *)&v13 contentHeightForWidth:a3 withMaximumVisibleHeight:a4];
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
  v47 = [v48 view];
  [(WFCompactPlatterViewController *)self setContentViewController:v48];
  v3 = [(WFCompactDialogViewController *)self request];
  v46 = [(WFAskParameterDialogViewController *)self fakeAction];
  v45 = [v3 parameterKey];
  v44 = [v46 parameterForKey:v45];
  v4 = objc_opt_new();
  objc_initWeak(&location, self);
  v5 = [v3 cancelButton];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __46__WFAskParameterDialogViewController_loadView__block_invoke;
  v51[3] = &unk_279EE8908;
  objc_copyWeak(&v52, &location);
  v6 = [WFCompactDialogAction actionForButton:v5 handler:v51];
  [v4 addObject:v6];

  if ([v3 style] != 1)
  {
    v7 = [v3 doneButton];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __46__WFAskParameterDialogViewController_loadView__block_invoke_2;
    v49[3] = &unk_279EE8908;
    objc_copyWeak(&v50, &location);
    v8 = [WFCompactDialogAction actionForButton:v7 handler:v49];
    [v4 addObject:v8];

    objc_destroyWeak(&v50);
  }

  [(WFCompactDialogViewController *)self configureActionGroupWithActions:v4];
  if ([v3 style] != 1 || !objc_msgSend(v44, "conformsToProtocol:", &unk_288451778))
  {
    goto LABEL_9;
  }

  v9 = v44;
  v10 = objc_opt_class();
  v11 = [v9 key];
  v12 = [v46 parameterStateForKey:v11];
  v13 = [v10 singleButtonSlotForParameter:v9 state:v12];

  if (!v13)
  {

LABEL_9:
    v23 = objc_alloc(MEMORY[0x277D7BDD8]);
    v24 = [v46 parameterStateForKey:v45];
    v9 = [v23 initWithParameter:v44 state:v24];

    [v9 setBecomeFirstResponder:{objc_msgSend(v3, "focusImmediatelyWhenPresented")}];
    v13 = [objc_alloc(MEMORY[0x277D7BDD0]) initWithStyle:0 reuseIdentifier:0];
    [v47 bounds];
    [v13 setFrame:?];
    [v13 setAutoresizingMask:18];
    [v13 setDelegate:self];
    [v13 setContainingViewController:v48];
    [v13 updateModel:v9];
    [v47 addSubview:v13];
    [(WFAskParameterDialogViewController *)self setHostingCell:v13];
    goto LABEL_10;
  }

  [(WFAskParameterDialogViewController *)self setSummarySlot:v13];
  v14 = [WFMultilineBackgroundFadingButton buttonWithType:0];
  [v14 setDerivesTitleColorFromTintColor:1];
  v15 = [v14 layer];
  [v15 setCornerRadius:10.0];

  [v14 setContentEdgeInsets:{8.0, 8.0, 8.0, 8.0}];
  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v17 = [v14 titleLabel];
  [v17 setFont:v16];

  v18 = [v14 titleLabel];
  [v18 setAdjustsFontForContentSizeCategory:1];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [v13 localizedName];
  if (v19)
  {
    v20 = MEMORY[0x277CCACA8];
    v21 = WFLocalizedString(@"Choose %@");
    v17 = [v13 localizedName];
    v22 = [v20 stringWithFormat:v21, v17];
  }

  else
  {
    v22 = WFLocalizedString(@"Choose");
    v21 = v22;
  }

  [v14 setTitle:v22 forState:0];
  if (v19)
  {
  }

  [v14 addTarget:self action:sel_modalButtonTapped_ forControlEvents:64];
  v25 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0500000007];
  [v14 setBackgroundColor:v25 forState:0];

  v26 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.100000001];
  [v14 setBackgroundColor:v26 forState:1];

  [v47 addSubview:v14];
  [(WFAskParameterDialogViewController *)self setModalButton:v14];
  v27 = [(WFCompactPlatterViewController *)self platterView];
  [v27 setHidesContentViewTopSeparator:1];

  v33 = MEMORY[0x277CCAAD0];
  v43 = [v14 topAnchor];
  v42 = [v47 topAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v55[0] = v41;
  v40 = [v14 leadingAnchor];
  v39 = [v47 leadingAnchor];
  v38 = [v40 constraintEqualToAnchor:v39 constant:16.0];
  v55[1] = v38;
  v37 = [v14 trailingAnchor];
  v36 = [v47 trailingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36 constant:-16.0];
  v55[2] = v35;
  v34 = [v14 bottomAnchor];
  v28 = [v47 bottomAnchor];
  v29 = [v34 constraintEqualToAnchor:v28 constant:-16.0];
  v55[3] = v29;
  v30 = [v14 heightAnchor];
  v31 = [v30 constraintGreaterThanOrEqualToConstant:47.0];
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

- (WFAskParameterDialogViewController)initWithRequest:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = WFAskParameterDialogViewController;
  v5 = [(WFCompactDialogViewController *)&v20 initWithRequest:v4];
  if (v5)
  {
    v6 = [v4 actionIdentifier];
    v7 = [v4 serializedParameterStates];
    v8 = objc_alloc_init(MEMORY[0x277D7CA60]);
    fakeWorkflow = v5->_fakeWorkflow;
    v5->_fakeWorkflow = v8;
    v10 = v8;

    v11 = [MEMORY[0x277D7C0D0] sharedRegistry];
    v12 = [v11 createActionWithIdentifier:v6 serializedParameters:v7];

    v13 = [v12 copyForProcessing];
    [v13 willBeAddedToWorkflow:v5->_fakeWorkflow];
    [v13 wasAddedToWorkflow:v5->_fakeWorkflow];
    fakeAction = v5->_fakeAction;
    v5->_fakeAction = v13;
    v15 = v13;

    v16 = objc_opt_new();
    unlockService = v5->_unlockService;
    v5->_unlockService = v16;

    v18 = v5;
  }

  return v5;
}

+ (id)singleButtonSlotForParameter:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 moduleSummarySlotForState:v6];
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [v5 moduleSummarySlotsForState:v6];
    if ([v8 count] == 1)
    {
      v7 = [v8 firstObject];

      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

@end