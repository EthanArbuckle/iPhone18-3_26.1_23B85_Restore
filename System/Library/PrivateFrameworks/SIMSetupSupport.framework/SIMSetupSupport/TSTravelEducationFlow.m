@interface TSTravelEducationFlow
- (TSTravelEducationFlow)initWithOptions:(id)a3;
- (id)_getSFSafariViewControllerWithURL:(id)a3;
- (id)firstViewController;
- (id)nextViewControllerFrom:(id)a3;
- (void)firstViewController;
- (void)firstViewController:(id)a3;
@end

@implementation TSTravelEducationFlow

- (TSTravelEducationFlow)initWithOptions:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TSTravelEducationFlow;
  v5 = [(TSSIMSetupFlow *)&v8 init];
  options = v5->_options;
  v5->_options = v4;

  return v5;
}

- (id)firstViewController
{
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(TSTravelEducationFlow *)v2 firstViewController];
  }

  return 0;
}

- (void)firstViewController:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (v4)
  {
    v5 = [MEMORY[0x277CF96D8] sharedManager];
    v6 = [v5 getSupportedFlowTypes];

    if (v6)
    {
      v7 = [[TSTravelEducationIntroViewController alloc] initWithOptions:self->_options];
      v8 = _TSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        options = self->_options;
        v11 = 138412546;
        v12 = options;
        v13 = 2080;
        v14 = "[TSTravelEducationFlow firstViewController:]";
        _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "options: %@ @%s", &v11, 0x16u);
      }

      [(TSTravelEducationIntroViewController *)v7 setDelegate:self];
      [(TSSIMSetupFlow *)self setTopViewController:v7];
      v4[2](v4, v7);
    }

    else
    {
      v4[2](v4, 0);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)nextViewControllerFrom:(id)a3
{
  v19[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 0;
      goto LABEL_20;
    }

    v5 = v4;
    v10 = [v5 selectedCarrierItem];

    if (v10)
    {
      v11 = [TSSubFlowViewController alloc];
      v19[0] = &unk_287583E20;
      v18[0] = @"FlowTypeKey";
      v18[1] = @"Plan";
      v8 = [v5 selectedCarrierItem];
      v12 = [v8 plan];
      v18[2] = @"HostViewController";
      v19[1] = v12;
      v19[2] = v5;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
      v14 = [v5 navigationController];
      v9 = [(TSSubFlowViewController *)v11 initWithOptions:v13 navigationController:v14 delegate:self];

      goto LABEL_9;
    }

    goto LABEL_16;
  }

  v5 = v4;
  if (![v5 isRoamingTapped])
  {
    if ([v5 isExistingPlanTapped])
    {
      v15 = TSTravelEducationExistingPlanViewController;
      goto LABEL_18;
    }

    if ([v5 isPurchaseLocalPlanTapped])
    {
      if (!+[TSUtilities isPad])
      {
        v7 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/ht212780?cid=mc-ols-esim-article_ht212780-ios_ui-07192022"];
        goto LABEL_5;
      }

      v15 = TSCarrierItemListViewController;
LABEL_18:
      v9 = objc_alloc_init(v15);
      goto LABEL_19;
    }

LABEL_16:
    v9 = 0;
    goto LABEL_19;
  }

  v6 = [v5 roamingInfo];

  if (!v6)
  {
    v15 = TSTravelEducationRoamingViewController;
    goto LABEL_18;
  }

  v7 = [v5 roamingInfo];
LABEL_5:
  v8 = v7;
  v9 = [(TSTravelEducationFlow *)self _getSFSafariViewControllerWithURL:v7];
LABEL_9:

LABEL_19:
LABEL_20:

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_getSFSafariViewControllerWithURL:(id)a3
{
  v4 = MEMORY[0x277CDB708];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setEntersReaderIfAvailable:0];
  [v6 _setEphemeral:1];
  [v6 set_isBeingUsedForCellularServiceBootstrap:1];
  v7 = [objc_alloc(MEMORY[0x277CDB700]) initWithURL:v5 configuration:v6];

  [v7 setDelegate:self];
  [v7 _setShowingLinkPreview:0];
  [v7 _setShowingLinkPreviewWithMinimalUI:0];
  [v7 setDismissButtonStyle:0];

  return v7;
}

- (void)firstViewController
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSTravelEducationFlow firstViewController]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E](UIViewController *)firstViewController is deprecated, please use (void)firstViewController:(void (^)(UIViewController *))completion @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end