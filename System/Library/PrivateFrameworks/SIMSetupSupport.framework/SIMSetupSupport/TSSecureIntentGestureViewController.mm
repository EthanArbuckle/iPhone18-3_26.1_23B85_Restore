@interface TSSecureIntentGestureViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSSecureIntentGestureViewController)initWithExternalizedContext:(id)context descriptors:(id)descriptors isLocalConvertFlow:(BOOL)flow isSecureIntentRequired:(BOOL)required isDtoEvaluationRequired:(BOOL)evaluationRequired;
- (id)_createPKGlyphView;
- (void)_doubleClickGesture;
- (void)_handleUserCancelNotification:(id)notification;
- (void)_updateAuthenticationStatus:(id)status isDTOEvaluationFailed:(BOOL)failed;
- (void)_updateLayoutConstraint;
- (void)dealloc;
- (void)evaluateDtoPolicy:(id)policy;
- (void)prepare:(id)prepare;
- (void)viewDidLoad;
@end

@implementation TSSecureIntentGestureViewController

- (TSSecureIntentGestureViewController)initWithExternalizedContext:(id)context descriptors:(id)descriptors isLocalConvertFlow:(BOOL)flow isSecureIntentRequired:(BOOL)required isDtoEvaluationRequired:(BOOL)evaluationRequired
{
  evaluationRequiredCopy = evaluationRequired;
  requiredCopy = required;
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  descriptorsCopy = descriptors;
  v22.receiver = self;
  v22.super_class = TSSecureIntentGestureViewController;
  v15 = [(TSSecureIntentGestureViewController *)&v22 init];
  if (v15)
  {
    v16 = _TSLogDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v24 = contextCopy;
      v25 = 1024;
      v26 = requiredCopy;
      v27 = 1024;
      v28 = evaluationRequiredCopy;
      v29 = 2080;
      v30 = "[TSSecureIntentGestureViewController initWithExternalizedContext:descriptors:isLocalConvertFlow:isSecureIntentRequired:isDtoEvaluationRequired:]";
      _os_log_impl(&dword_262AA8000, v16, OS_LOG_TYPE_DEFAULT, "externalized context = %@ isSecureIntentRequired: %d, isDtoEvaluationRequired:%d @%s", buf, 0x22u);
    }

    objc_storeStrong(&v15->_externalizedContext, context);
    objc_storeStrong(&v15->_descriptors, descriptors);
    v17 = [TSUtilities formatLocAndConcatenateDescriptors:descriptorsCopy];
    formatedDescriptor = v15->_formatedDescriptor;
    v15->_formatedDescriptor = v17;

    v15->_isExternalizedContextSent = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel__handleUserCancelNotification_ name:@"ss.user.canceled" object:0];

    v15->_isLocalConvertFlow = flow;
    v15->_isSecureIntentRequired = requiredCopy;
    v15->_isDtoEvaluationRequired = evaluationRequiredCopy;
    v15->_isDtoEvaluationSucceeded = !evaluationRequiredCopy;
    v15->_isSecureIntentSucceeded = !v15->_isSecureIntentRequired;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TSSecureIntentGestureViewController;
  [(TSSecureIntentGestureViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = TSSecureIntentGestureViewController;
  [(TSSecureIntentGestureViewController *)&v27 viewDidLoad];
  if (!self->_glyphView)
  {
    isLocalConvertFlow = self->_isLocalConvertFlow;
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    if (isLocalConvertFlow)
    {
      v6 = @"CONFIRM_CONVERT";
    }

    else
    {
      v6 = @"CONFIRM_TRANSFER";
    }

    v7 = [v4 localizedStringForKey:v6 value:&stru_28753DF48 table:@"Localizable"];
    [(TSSecureIntentGestureViewController *)self setTitle:v7];

    if (self->_isLocalConvertFlow)
    {
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = v8;
      v10 = @"DOUBLE_CLICK_SIDE_BUTTON_LOCAL_CONVERT";
LABEL_7:
      v11 = [v8 localizedStringForKey:v10 value:&stru_28753DF48 table:@"Localizable"];
LABEL_13:

      v16 = [TSUtilities appendLeftToRightMark:v11];
      [(TSSecureIntentGestureViewController *)self setSubtitle:v16];

      [(TSSecureIntentGestureViewController *)self setDismissalType:1];
      objc_initWeak(&location, self);
      v17 = MEMORY[0x277D432F0];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __50__TSSecureIntentGestureViewController_viewDidLoad__block_invoke;
      v24[3] = &unk_279B448A0;
      objc_copyWeak(&v25, &location);
      v18 = [v17 actionWithTitle:&stru_28753DF48 style:0 handler:v24];
      [(TSSecureIntentGestureViewController *)self setDismissButtonAction:v18];

      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"READY..." value:&stru_28753DF48 table:@"Localizable"];
      [(TSSecureIntentGestureViewController *)self showActivityIndicatorWithStatus:v20];

      _createPKGlyphView = [(TSSecureIntentGestureViewController *)self _createPKGlyphView];
      glyphView = self->_glyphView;
      self->_glyphView = _createPKGlyphView;

      [(PKGlyphView *)self->_glyphView setState:2];
      [(PKGlyphView *)self->_glyphView setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [(TSSecureIntentGestureViewController *)self contentView];
      [contentView addSubview:self->_glyphView];

      [(TSSecureIntentGestureViewController *)self _updateLayoutConstraint];
      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);

      return;
    }

    if ([(NSArray *)self->_descriptors count]== 1)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = v13;
      v14 = @"DOUBLE_CLICK_SIDE_BUTTON_SINGLE_PLAN_%@";
    }

    else
    {
      if ([(NSArray *)self->_descriptors count]< 2)
      {
        v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v9 = v8;
        v10 = @"DOUBLE_CLICK_SIDE_BUTTON_NO_DESCRIPTOR";
        goto LABEL_7;
      }

      v12 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = v13;
      v14 = @"DOUBLE_CLICK_SIDE_BUTTON_MULTI_PLAN_%@";
    }

    v15 = [v13 localizedStringForKey:v14 value:&stru_28753DF48 table:@"Localizable"];
    v11 = [v12 stringWithFormat:v15, self->_formatedDescriptor];

    goto LABEL_13;
  }
}

void __50__TSSecureIntentGestureViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:89 userInfo:0];
  [WeakRetained _maybeSendExternalizedContext:v3 isDTOEvaluationFailed:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 delegate];
  [v4 userDidTapCancel];
}

- (void)_doubleClickGesture
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, self, a3, "[E]No euicc acl!! @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __58__TSSecureIntentGestureViewController__doubleClickGesture__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _TSLogDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(*(a1 + 32) + 8) + 40);
    *buf = 138413058;
    v26 = v5;
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v8;
    v31 = 2080;
    v32 = "[TSSecureIntentGestureViewController _doubleClickGesture]_block_invoke";
    _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "evaluateAccessControl reply:%@, error:%@, ctx:%@ @%s", buf, 0x2Au);
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__TSSecureIntentGestureViewController__doubleClickGesture__block_invoke_80;
  block[3] = &unk_279B44400;
  objc_copyWeak(&v24, (a1 + 40));
  dispatch_async(MEMORY[0x277D85CD0], block);
  if (v6 || (v11 = objc_loadWeakRetained((a1 + 40)), [v11 setIsSecureIntentSucceeded:1], v11, v12 = objc_loadWeakRetained((a1 + 40)), v13 = objc_msgSend(v12, "isDtoEvaluationRequired"), v12, (v13 & 1) == 0))
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __58__TSSecureIntentGestureViewController__doubleClickGesture__block_invoke_2;
    v20[3] = &unk_279B443D8;
    v15 = &v22;
    objc_copyWeak(&v22, (a1 + 40));
    v21 = v6;
    v16 = MEMORY[0x277D85CD0];
    dispatch_async(MEMORY[0x277D85CD0], v20);

    WeakRetained = v21;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __58__TSSecureIntentGestureViewController__doubleClickGesture__block_invoke_3;
    v18[3] = &unk_279B44828;
    v15 = &v19;
    objc_copyWeak(&v19, (a1 + 40));
    [WeakRetained evaluateDtoPolicy:v18];
  }

  objc_destroyWeak(v15);
  objc_destroyWeak(&v24);

  v17 = *MEMORY[0x277D85DE8];
}

void __58__TSSecureIntentGestureViewController__doubleClickGesture__block_invoke_80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained physicalButtonView];
  [v1 setAnimating:0];
}

void __58__TSSecureIntentGestureViewController__doubleClickGesture__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateAuthenticationStatus:*(a1 + 32) isDTOEvaluationFailed:0];
}

void __58__TSSecureIntentGestureViewController__doubleClickGesture__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__TSSecureIntentGestureViewController__doubleClickGesture__block_invoke_4;
  v5[3] = &unk_279B445C0;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v7, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v7);
}

void __58__TSSecureIntentGestureViewController__doubleClickGesture__block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[TSCoreTelephonyClientCache sharedInstance];
    v3 = [v2 updateSecureIntentData:0 isDTOEvaluationFailed:1];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained delegate];
    [v4 userDidTapCancel];
  }

  else
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 setIsDtoEvaluationSucceeded:1];

    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = *(a1 + 32) != 0;
    WeakRetained = v6;
    [v6 _updateAuthenticationStatus:? isDTOEvaluationFailed:?];
  }
}

- (void)_updateAuthenticationStatus:(id)status isDTOEvaluationFailed:(BOOL)failed
{
  statusCopy = status;
  objc_initWeak(&location, self);
  if (statusCopy)
  {
    v7 = 10;
  }

  else
  {
    v7 = 11;
  }

  if (statusCopy)
  {
    [(PKGlyphView *)self->_glyphView bounds];
    v9 = v8;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v12 = v9 * 0.439999998 / v11;

    v13 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:v12];
    v14 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark" withConfiguration:v13];
    [(PKGlyphView *)self->_glyphView setColorMode:3 animated:1];
    primaryColor = [(PKGlyphView *)self->_glyphView primaryColor];
    v16 = [v14 _flatImageWithColor:primaryColor];

    glyphView = self->_glyphView;
    cGImage = [v16 CGImage];
    [v16 alignmentRectInsets];
    [(PKGlyphView *)glyphView setCustomImage:cGImage withAlignmentEdgeInsets:?];
  }

  v19 = self->_glyphView;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __89__TSSecureIntentGestureViewController__updateAuthenticationStatus_isDTOEvaluationFailed___block_invoke;
  v21[3] = &unk_279B45858;
  objc_copyWeak(&v23, &location);
  v20 = statusCopy;
  v22 = v20;
  failedCopy = failed;
  [(PKGlyphView *)v19 setState:v7 animated:1 completionHandler:v21];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __89__TSSecureIntentGestureViewController__updateAuthenticationStatus_isDTOEvaluationFailed___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__TSSecureIntentGestureViewController__updateAuthenticationStatus_isDTOEvaluationFailed___block_invoke_2;
  block[3] = &unk_279B45830;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  v6 = *(a1 + 48);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v5);
}

void __89__TSSecureIntentGestureViewController__updateAuthenticationStatus_isDTOEvaluationFailed___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[TSSecureIntentGestureViewController _updateAuthenticationStatus:isDTOEvaluationFailed:]_block_invoke_2";
    _os_log_impl(&dword_262AA8000, v2, OS_LOG_TYPE_DEFAULT, "1s expired, dismiss UI @%s", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _maybeSendExternalizedContext:*(a1 + 32) isDTOEvaluationFailed:*(a1 + 48)];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 delegate];
  v6 = objc_loadWeakRetained((a1 + 40));
  [v5 viewControllerDidComplete:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_createPKGlyphView
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getPKGlyphViewClass_softClass_0;
  v10 = getPKGlyphViewClass_softClass_0;
  if (!getPKGlyphViewClass_softClass_0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getPKGlyphViewClass_block_invoke_0;
    v6[3] = &unk_279B44778;
    v6[4] = &v7;
    __getPKGlyphViewClass_block_invoke_0(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [[v2 alloc] initWithStyle:1];

  return v4;
}

- (void)_handleUserCancelNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    object = [notificationCopy object];
    v11 = 138412546;
    v12 = object;
    v13 = 2080;
    v14 = "[TSSecureIntentGestureViewController _handleUserCancelNotification:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "user canceled with reason : %@ @%s", &v11, 0x16u);
  }

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:89 userInfo:0];
  v8 = self->_isSecureIntentSucceeded && !self->_isDtoEvaluationSucceeded;
  [(TSSecureIntentGestureViewController *)self _maybeSendExternalizedContext:v7 isDTOEvaluationFailed:v8];

  delegate = [(TSSecureIntentGestureViewController *)self delegate];
  [delegate userDidTapCancel];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateLayoutConstraint
{
  v32[5] = *MEMORY[0x277D85DE8];
  contentView = [(TSSecureIntentGestureViewController *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  if (v5 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8 * 0.275;
  v23 = MEMORY[0x277CCAAD0];
  topAnchor = [(PKGlyphView *)self->_glyphView topAnchor];
  contentView2 = [(TSSecureIntentGestureViewController *)self contentView];
  mainContentGuide = [contentView2 mainContentGuide];
  topAnchor2 = [mainContentGuide topAnchor];
  v27 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v32[0] = v27;
  centerXAnchor = [(PKGlyphView *)self->_glyphView centerXAnchor];
  contentView3 = [(TSSecureIntentGestureViewController *)self contentView];
  mainContentGuide2 = [contentView3 mainContentGuide];
  centerXAnchor2 = [mainContentGuide2 centerXAnchor];
  v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v32[1] = v21;
  centerYAnchor = [(PKGlyphView *)self->_glyphView centerYAnchor];
  contentView4 = [(TSSecureIntentGestureViewController *)self contentView];
  mainContentGuide3 = [contentView4 mainContentGuide];
  centerYAnchor2 = [mainContentGuide3 centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v32[2] = v14;
  widthAnchor = [(PKGlyphView *)self->_glyphView widthAnchor];
  v16 = [widthAnchor constraintEqualToConstant:v9];
  v32[3] = v16;
  heightAnchor = [(PKGlyphView *)self->_glyphView heightAnchor];
  v18 = [heightAnchor constraintEqualToConstant:v9];
  v32[4] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:5];
  [v23 activateConstraints:v19];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)evaluateDtoPolicy:(id)policy
{
  v13 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  v4 = _TSLogDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[TSSecureIntentGestureViewController evaluateDtoPolicy:]";
    _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "evaluating dto policy @%s", buf, 0xCu);
  }

  v5 = +[TSCoreTelephonyClientCache sharedInstance];
  getCoreTelephonyClient = [v5 getCoreTelephonyClient];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__TSSecureIntentGestureViewController_evaluateDtoPolicy___block_invoke;
  v9[3] = &unk_279B44DB8;
  v10 = policyCopy;
  v7 = policyCopy;
  [getCoreTelephonyClient evaluateDtoPolicy:v9];

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __57__TSSecureIntentGestureViewController_evaluateDtoPolicy___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)prepare:(id)prepare
{
  prepareCopy = prepare;
  v5 = prepareCopy;
  if (self->_isSecureIntentRequired)
  {
    (*(prepareCopy + 2))(prepareCopy, 1);
  }

  else if (self->_isDtoEvaluationRequired)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__TSSecureIntentGestureViewController_prepare___block_invoke;
    v8[3] = &unk_279B44E30;
    objc_copyWeak(&v10, &location);
    v9 = v5;
    [(TSSecureIntentGestureViewController *)self evaluateDtoPolicy:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = +[TSCoreTelephonyClientCache sharedInstance];
    v7 = [v6 updateSecureIntentData:self->_externalizedContext isDTOEvaluationFailed:0];

    v5[2](v5, 0);
  }
}

void __47__TSSecureIntentGestureViewController_prepare___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = +[TSCoreTelephonyClientCache sharedInstance];
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained externalizedContext];
  }

  v7 = [v5 updateSecureIntentData:v6 isDTOEvaluationFailed:a2 != 0];
  if (a2)
  {

    v5 = objc_loadWeakRetained((a1 + 40));
    WeakRetained = [v5 delegate];
    [WeakRetained userDidTapCancel];
  }

  else
  {
  }

  v8 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__TSSecureIntentGestureViewController_prepare___block_invoke_2;
  block[3] = &unk_279B44938;
  v10 = *(a1 + 32);
  dispatch_after(v8, MEMORY[0x277D85CD0], block);
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewDidAppear:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid window context @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)viewWillDisappear:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSSecureIntentGestureViewController viewWillDisappear:]";
  _os_log_debug_impl(&dword_262AA8000, log, OS_LOG_TYPE_DEBUG, "[Db] secure intent view will disappear @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_maybeSendExternalizedContext:(uint64_t)a3 isDTOEvaluationFailed:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]secure intent failed @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_maybeSendExternalizedContext:(uint64_t)a3 isDTOEvaluationFailed:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]other local auth error @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_maybeSendExternalizedContext:(uint64_t)a3 isDTOEvaluationFailed:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]secure intent denied @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_maybeSendExternalizedContext:(uint64_t)a3 isDTOEvaluationFailed:(uint64_t)a4 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]secure intent gesture timeout @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_maybeSendExternalizedContext:(uint64_t)a3 isDTOEvaluationFailed:(uint64_t)a4 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_262AA8000, a1, a3, "[E]invalid LAContext. but we still need to send notification @%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end