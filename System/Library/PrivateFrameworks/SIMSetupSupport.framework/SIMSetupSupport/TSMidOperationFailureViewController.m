@interface TSMidOperationFailureViewController
- (TSMidOperationFailureViewController)initWithPlanItemError:(id)a3 updatePlanItem:(id)a4 withBackButton:(BOOL)a5 forCarrier:(id)a6 withCarrierErrorCode:(id)a7 isEmbeddedInResultView:(BOOL)a8;
- (TSMidOperationFailureViewController)initWithPlans:(id)a3;
- (TSMidOperationFailureViewController)initWithPlans:(id)a3 isCrossPlatformTransfer:(BOOL)a4;
- (TSMidOperationFailureViewController)initWithSecureIntentRejected;
- (TSSIMSetupFlowDelegate)delegate;
- (id)initShowErrorOnSourceWithDelayedDownloadECSWithPlanIdentifier:(id)a3;
- (id)initShowErrorOnSourceWithPlanIdentifier:(id)a3;
- (void)_buttonAction;
- (void)_disableMismatchedPlan;
- (void)_doneButtonTapped;
- (void)_locationServiceButtonAction;
- (void)_userDidTapCancel;
- (void)prepare:(id)a3;
- (void)setDefaultNavigationItems:(id)a3;
- (void)viewDidLoad;
@end

@implementation TSMidOperationFailureViewController

- (TSMidOperationFailureViewController)initWithPlans:(id)a3 isCrossPlatformTransfer:(BOOL)a4
{
  v4 = a4;
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v4 && +[TSUtilities inBuddy])
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_FAIL_TITLE_BUDDY" value:&stru_28753DF48 table:@"Localizable"];

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_FAIL_ON_SOURCE_NUMBER_CROSSPLATFORM_MODEL_BUDDY" value:&stru_28753DF48 table:@"Localizable"];
    v12 = [v9 stringWithFormat:v11];

    v22.receiver = self;
    v22.super_class = TSMidOperationFailureViewController;
    v13 = [(TSMidOperationFailureViewController *)&v22 initWithTitle:v8 detailText:v12 icon:0];
    v14 = v13;
    if (v13)
    {
      v13->_isEmbeddedInResultView = 0;
      v13->_isContinueByUser = 0;
      v23 = @"ErrorButton";
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
      v24[0] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      errorHeaderDetail = v14->_errorHeaderDetail;
      v14->_errorHeaderDetail = v17;

      v14->_isSourceSideError = 0;
      v14->_isForCrossPlatform = 1;
    }
  }

  else
  {
    v14 = [(TSMidOperationFailureViewController *)self initWithPlans:v6];
  }

  v19 = v14;

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (TSMidOperationFailureViewController)initWithPlans:(id)a3
{
  v4 = a3;
  if ([v4 count] < 2)
  {
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [v6 installError];
    v8 = [v6 planItem];
    v9 = +[TSUtilities inBuddy];
    v10 = [v6 carrierName];
    v11 = [v6 carrierErrorCode];
    v5 = [(TSMidOperationFailureViewController *)self initWithPlanItemError:v7 updatePlanItem:v8 withBackButton:v9 forCarrier:v10 withCarrierErrorCode:v11 isEmbeddedInResultView:0];
  }

  else
  {
    v5 = [(TSMidOperationFailureViewController *)self initWithPlanItemError:0 updatePlanItem:0 withBackButton:+[TSUtilities forCarrier:"inBuddy"]withCarrierErrorCode:0 isEmbeddedInResultView:0, 0];
  }

  return v5;
}

- (TSMidOperationFailureViewController)initWithSecureIntentRejected
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_FAIL_TITLE_SECURENT_INTENT_REJECTED" value:&stru_28753DF48 table:@"Localizable"];

  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_FAIL_ON_SOURCE_NUMBER_CROSSPLATFORM_MODEL_SECURENT_INTENT_REJECTED" value:&stru_28753DF48 table:@"Localizable"];
  v8 = [v5 stringWithFormat:v7];

  v17.receiver = self;
  v17.super_class = TSMidOperationFailureViewController;
  v9 = [(TSMidOperationFailureViewController *)&v17 initWithTitle:v4 detailText:v8 icon:0];
  v10 = v9;
  if (v9)
  {
    v9->_isEmbeddedInResultView = 0;
    v9->_isContinueByUser = 0;
    v18 = @"ErrorButton";
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"DONE" value:&stru_28753DF48 table:@"Localizable"];
    v19[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    errorHeaderDetail = v10->_errorHeaderDetail;
    v10->_errorHeaderDetail = v13;

    v10->_isSourceSideError = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)initShowErrorOnSourceWithPlanIdentifier:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_FAIL_TITLE" value:&stru_28753DF48 table:@"Localizable"];

  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_FAIL_ON_SOURCE_NUMBER_CROSSPLATFORM_MODEL" value:&stru_28753DF48 table:@"Localizable"];
  v9 = [v6 stringWithFormat:v8];

  v18.receiver = self;
  v18.super_class = TSMidOperationFailureViewController;
  v10 = [(TSMidOperationFailureViewController *)&v18 initWithTitle:v5 detailText:v9 icon:0];
  v11 = v10;
  if (v10)
  {
    v10->_isEmbeddedInResultView = 0;
    v10->_isContinueByUser = 0;
    v19 = @"ErrorButton";
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"DONE" value:&stru_28753DF48 table:@"Localizable"];
    v20[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    errorHeaderDetail = v11->_errorHeaderDetail;
    v11->_errorHeaderDetail = v14;

    v11->_isSourceSideError = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)initShowErrorOnSourceWithDelayedDownloadECSWithPlanIdentifier:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_FAIL_TITLE_DELAYED" value:&stru_28753DF48 table:@"Localizable"];

  v8 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CROSSPLATFORM_TRANSFER_FAIL_ON_SOURCE_NUMBER_CROSSPLATFORM_MODEL_DELAYED_%@" value:&stru_28753DF48 table:@"Localizable"];
  v11 = [v8 stringWithFormat:v10, v5];

  v20.receiver = self;
  v20.super_class = TSMidOperationFailureViewController;
  v12 = [(TSMidOperationFailureViewController *)&v20 initWithTitle:v7 detailText:v11 icon:0];
  v13 = v12;
  if (v12)
  {
    v12->_isEmbeddedInResultView = 0;
    v12->_isContinueByUser = 0;
    v21 = @"ErrorButton";
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"DONE" value:&stru_28753DF48 table:@"Localizable"];
    v22[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    errorHeaderDetail = v13->_errorHeaderDetail;
    v13->_errorHeaderDetail = v16;

    v13->_isSourceSideError = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (TSMidOperationFailureViewController)initWithPlanItemError:(id)a3 updatePlanItem:(id)a4 withBackButton:(BOOL)a5 forCarrier:(id)a6 withCarrierErrorCode:(id)a7 isEmbeddedInResultView:(BOOL)a8
{
  v13 = a3;
  v50 = a4;
  v45 = a6;
  v14 = a6;
  v15 = a7;
  v16 = v14;
  v17 = v15;
  v18 = [TSUtilities getErrorTitleDetail:v13 forCarrier:v14];
  v19 = [v18 objectForKeyedSubscript:@"ErrorHeader"];
  v20 = [v18 objectForKeyedSubscript:@"ErrorDetail"];
  v49 = v17;
  if (v17)
  {
    if ([v17 length])
    {
      v43 = v18;
      v21 = a8;
      v22 = v19;
      v23 = MEMORY[0x277CCACA8];
      v24 = self;
      [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = v25 = v13;
      [v26 localizedStringForKey:@"ERROR_CODE" value:&stru_28753DF48 table:@"Localizable"];
      v27 = v47 = v16;
      v28 = v23;
      v19 = v22;
      a8 = v21;
      v18 = v43;
      v17 = [v28 stringWithFormat:@"%@: %@", v27, v17];

      v13 = v25;
      self = v24;
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", v20, v17];

      v30 = &stru_28753DF48;
      v20 = v29;
      v16 = v47;
      goto LABEL_6;
    }

    v17 = 0;
  }

  v30 = v20;
LABEL_6:
  v51.receiver = self;
  v51.super_class = TSMidOperationFailureViewController;
  v48 = v30;
  v31 = [TSMidOperationFailureViewController initWithTitle:sel_initWithTitle_detailText_icon_ detailText:v19 icon:?];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_updatePlanItem, a4);
    objc_storeStrong(&v32->_planItemError, a3);
    objc_storeStrong(&v32->_carrierName, v45);
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v18];
    errorHeaderDetail = v32->_errorHeaderDetail;
    v32->_errorHeaderDetail = v33;

    v32->_withBackButton = a5;
    v32->_isEmbeddedInResultView = a8;
    v32->_isContinueByUser = 0;
    v35 = objc_alloc(MEMORY[0x277CC37B0]);
    v36 = [v35 initWithQueue:MEMORY[0x277D85CD0]];
    client = v32->_client;
    v32->_client = v36;

    cancelButton = v32->_cancelButton;
    v32->_cancelButton = 0;

    if ((+[TSUtilities isRegRestActiveLocationServiceOff:](TSUtilities, "isRegRestActiveLocationServiceOff:", v32->_planItemError) || +[TSUtilities isRegRestActiveLocationAuthorizedOff:](TSUtilities, "isRegRestActiveLocationAuthorizedOff:", v32->_planItemError) || +[TSUtilities isRegRestLocationUnavailable:](TSUtilities, "isRegRestLocationUnavailable:", v32->_planItemError)) && !+[TSUtilities inBuddy])
    {
      v39 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v32 action:sel__userDidTapCancel];
      v40 = v32->_cancelButton;
      v32->_cancelButton = v39;
    }
  }

  if (v17 && [v17 length])
  {
    v41 = [(TSMidOperationFailureViewController *)v32 headerView];
    [v41 addDetailLabel:v20 withErrorCodeSubstr:v17];
  }

  return v32;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = TSMidOperationFailureViewController;
  [(TSOBWelcomeController *)&v7 viewDidLoad];
  if (!self->_isEmbeddedInResultView)
  {
    v3 = [MEMORY[0x277D37618] boldButton];
    [v3 addTarget:self action:sel__doneButtonTapped forControlEvents:64];
    v4 = [(NSDictionary *)self->_errorHeaderDetail objectForKeyedSubscript:@"ErrorButton"];
    [v3 setTitle:v4 forState:0];

    v5 = [(TSMidOperationFailureViewController *)self buttonTray];
    [v5 addButton:v3];

    [v3 setEnabled:1];
  }

  if (!self->_withBackButton)
  {
    v6 = [(OBBaseWelcomeController *)self navigationItem];
    [v6 setHidesBackButton:1 animated:0];
  }

  [(TSMidOperationFailureViewController *)self setDefaultNavigationItems:self];
}

- (void)_locationServiceButtonAction
{
  if (!+[TSUtilities inBuddy])
  {
    if (+[TSUtilities isGreenTeaCapable])
    {
      v3 = [(NSError *)self->_planItemError domain];
      v4 = [v3 isEqualToString:*MEMORY[0x277CF9680]];

      if (v4)
      {
        v5 = [(NSError *)self->_planItemError code];
        v6 = @"prefs:root=Privacy&path=LOCATION";
        if (v5 != 12 && v5 != 62)
        {
          if (v5 != 63)
          {
            return;
          }

          v6 = @"prefs:root=Privacy&path=LOCATION/SYSTEM_SERVICES";
        }

        v8 = [MEMORY[0x277CC1E80] defaultWorkspace];
        v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
        [v8 openSensitiveURL:v7 withOptions:0];
      }
    }
  }
}

- (void)_disableMismatchedPlan
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSMidOperationFailureViewController _disableMismatchedPlan]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]Plan item not found @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_userDidTapCancel
{
  self->_isContinueByUser = 1;
  v2 = [(TSMidOperationFailureViewController *)self delegate];
  [v2 userDidTapCancel];
}

- (void)setDefaultNavigationItems:(id)a3
{
  v5 = a3;
  if ([TSUtilities isRegRestActiveLocationServiceOff:self->_planItemError]|| [TSUtilities isRegRestActiveLocationAuthorizedOff:self->_planItemError]|| [TSUtilities isRegRestLocationUnavailable:self->_planItemError])
  {
    v4 = [v5 navigationItem];
    [v4 setRightBarButtonItem:self->_cancelButton];
  }
}

- (void)_buttonAction
{
  planItemError = self->_planItemError;
  if (planItemError)
  {
    v4 = [(NSError *)planItemError domain];
    v5 = [v4 isEqualToString:*MEMORY[0x277CF9680]];

    if (v5)
    {
      v6 = [(NSError *)self->_planItemError code];
      if ((v6 - 62) < 2 || v6 == 12)
      {

        [(TSMidOperationFailureViewController *)self _locationServiceButtonAction];
      }

      else if (v6 == 46)
      {

        [(TSMidOperationFailureViewController *)self _disableMismatchedPlan];
      }
    }
  }
}

- (void)_doneButtonTapped
{
  [(TSMidOperationFailureViewController *)self _buttonAction];
  self->_isContinueByUser = 1;
  v3 = [(TSMidOperationFailureViewController *)self delegate];
  [v3 attemptFailed];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)prepare:(id)a3
{
  v4 = a3;
  v5 = self->_planItemError || self->_isSourceSideError || self->_isForCrossPlatform;
  v6 = v4;
  (*(v4 + 2))(v4, v5);
}

@end