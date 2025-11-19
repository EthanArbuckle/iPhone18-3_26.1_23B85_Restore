@interface VTUIGMEnrollmentViewController
- (VTUIGMEnrollmentViewController)initWithCSFAvailability:(id)a3 delegate:(id)a4;
- (VTUIGMEnrollmentViewController)initWithDelegate:(id)a3;
- (VTUIGMEnrollmentViewController)initWithEnrollmentType:(unint64_t)a3 delegate:(id)a4;
- (void)_continueFromGMEnrollment;
- (void)_enrollUserIntoWaitlist;
- (void)_presentEnrollmentErrorWithCompletion:(id)a3;
- (void)_pushVisualIntelligenceIntro;
- (void)_setupContent;
- (void)_userDidTapContinueButton;
- (void)_userDidTapSetupLaterButton;
- (void)onboardingController:(id)a3 requestsPushingTo:(id)a4;
- (void)onboardingControllerDidFinish:(id)a3;
- (void)onboardingControllerRequestsCancellation:(id)a3;
- (void)onboardingControllerRequestsGoingBack:(id)a3;
- (void)viewDidLoad;
@end

@implementation VTUIGMEnrollmentViewController

- (VTUIGMEnrollmentViewController)initWithCSFAvailability:(id)a3 delegate:(id)a4
{
  objc_storeStrong(&self->_availability, a3);
  v6 = a4;
  v7 = [(VTUIGMEnrollmentViewController *)self initWithDelegate:v6];

  return v7;
}

- (VTUIGMEnrollmentViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_TtC14VoiceTriggerUI23GMAvailabilityViewModel);
  viewModel = self->_viewModel;
  self->_viewModel = v5;

  v7 = [(VTUIGMEnrollmentViewController *)self initWithEnrollmentType:[(GMAvailabilityViewModel *)self->_viewModel enrollmentType] delegate:v4];
  return v7;
}

- (VTUIGMEnrollmentViewController)initWithEnrollmentType:(unint64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = +[VTUIStyle sharedStyle];
  self->_enrollmentType = a3;
  v8 = [(GMAvailabilityViewModel *)self->_viewModel titleKeyWithEnrollmentType:a3];
  v9 = [(GMAvailabilityViewModel *)self->_viewModel subtitleKeyWithEnrollmentType:a3];
  v10 = +[VTUIStyle sharedStyle];
  v11 = [v10 VTUIDeviceSpecificString:v8];

  v12 = +[VTUIStyle sharedStyle];
  v13 = [v12 VTUIDeviceSpecificString:v9];

  v14 = objc_alloc_init(_TtC14VoiceTriggerUI20GMHeaderIconProvider);
  headerIconProvider = self->_headerIconProvider;
  self->_headerIconProvider = v14;

  if (+[_TtC14VoiceTriggerUI23GMAvailabilityViewModel isBuddy])
  {
    v16 = objc_alloc_init(MEMORY[0x277CFB468]);
    self->_isSkippingIntroduction = [v16 isOptedIn];
  }

  else
  {
    self->_isSkippingIntroduction = 0;
  }

  v20.receiver = self;
  v20.super_class = VTUIGMEnrollmentViewController;
  v17 = [(VTUIGMEnrollmentViewController *)&v20 initWithTitle:v11 detailText:v13 icon:0];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, v6);
  }

  return v18;
}

- (void)_setupContent
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[VTUIGMEnrollmentViewController _setupContent]";
  _os_log_error_impl(&dword_2728BC000, log, OS_LOG_TYPE_ERROR, "%s #gmenrollment Failed to acquire icon for header view", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_userDidTapSetupLaterButton
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    enrollmentType = self->_enrollmentType;
    v10 = 136315394;
    v11 = "[VTUIGMEnrollmentViewController _userDidTapSetupLaterButton]";
    v12 = 2048;
    v13 = enrollmentType;
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment User did tap SetupLater button with enrollmentType: %lu", &v10, 0x16u);
  }

  v5 = objc_alloc_init(MEMORY[0x277CFB468]);
  [v5 setIsOptedIn:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 siriGMIntroViewControllerNotNowPressed:self];
  }

  else
  {
    [(VTUIGMEnrollmentViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  [(VTUIGMEnrollmentViewController *)self userDidCancel];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_presentEnrollmentErrorWithCompletion:(id)a3
{
  v4 = a3;
  v12 = +[VTUIStyle sharedStyle];
  v5 = [v12 VTUIDeviceSpecificString:@"GM_JOIN_WAITLIST_ERROR_MESSAGE"];
  v6 = MEMORY[0x277D75110];
  v7 = [v12 VTUIDeviceSpecificString:@"GM_JOIN_WAITLIST_ERROR_TITLE"];
  v8 = [v6 alertControllerWithTitle:v7 message:v5 preferredStyle:1];

  v9 = MEMORY[0x277D750F8];
  v10 = [v12 VTUIDeviceSpecificString:@"GM_JOIN_WAITLIST_ERROR_BUTTON_TITLE"];
  v11 = [v9 actionWithTitle:v10 style:1 handler:0];

  [v8 addAction:v11];
  [(VTUIGMEnrollmentViewController *)self presentViewController:v8 animated:1 completion:v4];
}

- (void)_enrollUserIntoWaitlist
{
  objc_initWeak(&location, self);
  [(OBTrayButton *)self->continueButton showsBusyIndicator];
  v3 = MEMORY[0x277CFB450];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__VTUIGMEnrollmentViewController__enrollUserIntoWaitlist__block_invoke;
  v4[3] = &unk_279E54B98;
  objc_copyWeak(&v5, &location);
  [v3 getTicketForFeature:@"cloud.llm" withCompletionHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __57__VTUIGMEnrollmentViewController__enrollUserIntoWaitlist__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__VTUIGMEnrollmentViewController__enrollUserIntoWaitlist__block_invoke_2;
  block[3] = &unk_279E54298;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __57__VTUIGMEnrollmentViewController__enrollUserIntoWaitlist__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = VTUILogContextFacility;
    v5 = os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = *(a1 + 32);
        *buf = 136315394;
        v12 = "[VTUIGMEnrollmentViewController _enrollUserIntoWaitlist]_block_invoke";
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment Enrollment from buddy getTicketForFeature: received an error. Bailing! Error: %@", buf, 0x16u);
      }

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __57__VTUIGMEnrollmentViewController__enrollUserIntoWaitlist__block_invoke_68;
      v10[3] = &unk_279E54220;
      v10[4] = WeakRetained;
      [WeakRetained _presentEnrollmentErrorWithCompletion:v10];
    }

    else
    {
      if (v5)
      {
        v8 = *(a1 + 40);
        *buf = 136315394;
        v12 = "[VTUIGMEnrollmentViewController _enrollUserIntoWaitlist]_block_invoke_2";
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment Enrollment from buddy getTicketForFeature: cloud.llm ticket: %@", buf, 0x16u);
      }

      [WeakRetained[159] hidesBusyIndicator];
      [WeakRetained _continueFromGMEnrollment];
    }
  }

  else
  {
    v7 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[VTUIGMEnrollmentViewController _enrollUserIntoWaitlist]_block_invoke_2";
      _os_log_impl(&dword_2728BC000, v7, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment Enrollment from buddy getTicketForFeature: self in unavailable. Bailing!", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_userDidTapContinueButton
{
  v19 = *MEMORY[0x277D85DE8];
  isSkippingIntroduction = self->_isSkippingIntroduction;
  v4 = VTUILogContextFacility;
  v5 = os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT);
  if (isSkippingIntroduction)
  {
    if (v5)
    {
      enrollmentType = self->_enrollmentType;
      v15 = 136315394;
      v16 = "[VTUIGMEnrollmentViewController _userDidTapContinueButton]";
      v17 = 2048;
      v18 = enrollmentType;
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment Enrollment skipped with enrollmentType: %lu", &v15, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      v7 = self->_enrollmentType;
      v15 = 136315394;
      v16 = "[VTUIGMEnrollmentViewController _userDidTapContinueButton]";
      v17 = 2048;
      v18 = v7;
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment User did tap continue button with enrollmentType: %lu", &v15, 0x16u);
    }

    if ((self->_enrollmentType | 2) == 3)
    {
      [(GMAvailabilityViewModel *)self->_viewModel optInGM];
      [MEMORY[0x277CFB460] setHasEngagedWithCFU:1];
    }
  }

  v8 = [MEMORY[0x277D77E80] isEligibleForExperience:0];
  v9 = AFVisualIntelligenceCameraRestricted();
  if (!+[_TtC14VoiceTriggerUI23GMAvailabilityViewModel isBuddy]|| ((self->_enrollmentType | 2) == 3 ? (v10 = v8 == 0) : (v10 = 1), v10))
  {
    if (+[_TtC14VoiceTriggerUI23GMAvailabilityViewModel isBuddy]&& (self->_enrollmentType | 2) == 3 && (v9 & 1) == 0 && [(GMAvailabilityViewModel *)self->_viewModel shouldShowVisualIntelligenceIntro])
    {
      [(VTUIGMEnrollmentViewController *)self _pushVisualIntelligenceIntro];
    }

    else if (+[_TtC14VoiceTriggerUI23GMAvailabilityViewModel isBuddy]&& !self->_enrollmentType)
    {
      [(VTUIGMEnrollmentViewController *)self _enrollUserIntoWaitlist];
    }

    else
    {
      [(VTUIGMEnrollmentViewController *)self _continueFromGMEnrollment];
    }
  }

  else
  {
    v11 = [MEMORY[0x277D77E80] onboardingControllerForExperience:0];
    summarizationOnboardingController = self->_summarizationOnboardingController;
    self->_summarizationOnboardingController = v11;

    [(UNNotificationOnboardingController *)self->_summarizationOnboardingController setDelegate:self];
    v13 = [(VTUIGMEnrollmentViewController *)self navigationController];
    [v13 pushViewController:self->_summarizationOnboardingController animated:1];
  }

  if (!self->_isSkippingIntroduction)
  {
    [(GMAvailabilityViewModel *)self->_viewModel sendContinueEventWithEnrollmentType:self->_enrollmentType];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = VTUIGMEnrollmentViewController;
  [(OBBaseWelcomeController *)&v10 viewDidLoad];
  if (self->_isSkippingIntroduction)
  {
    v3 = [(VTUIGMEnrollmentViewController *)self headerView];
    [v3 setHidden:1];

    v4 = [(VTUIGMEnrollmentViewController *)self buttonTray];
    [v4 setHidden:1];
  }

  else
  {
    [(VTUIGMEnrollmentViewController *)self _setupContent];
  }

  v5 = +[VTUIStyle sharedStyle];
  if (![v5 isIpad] && -[GMAvailabilityViewModel isBuddyOrCFU](self->_viewModel, "isBuddyOrCFU") && self->_enrollmentType == 1)
  {

LABEL_10:
    [(VTUIGMEnrollmentViewController *)self setOverrideUserInterfaceStyle:2];
    goto LABEL_12;
  }

  if (self->_enrollmentType == 1)
  {
    v6 = [(GMAvailabilityViewModel *)self->_viewModel hasCameraButton];

    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

LABEL_12:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 siriGMIntroViewControllerPresented:self withEnrollmentType:self->_enrollmentType];
  }

  [(GMAvailabilityViewModel *)self->_viewModel sendViewDidLoadEventWithEnrollmentType:self->_enrollmentType];
}

- (void)_continueFromGMEnrollment
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 siriGMIntroViewControllerContinuePressed:self];
  }

  else
  {

    [(VTUIGMEnrollmentViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)onboardingControllerRequestsCancellation:(id)a3
{
  if ((AFVisualIntelligenceCameraRestricted() & 1) != 0 || ![(GMAvailabilityViewModel *)self->_viewModel shouldShowVisualIntelligenceIntro])
  {

    [(VTUIGMEnrollmentViewController *)self _continueFromGMEnrollment];
  }

  else
  {

    [(VTUIGMEnrollmentViewController *)self _pushVisualIntelligenceIntro];
  }
}

- (void)onboardingControllerRequestsGoingBack:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = [(OBBaseWelcomeController *)self navigationItem];
  v5 = [v4 hidesBackButton];

  v6 = [(VTUIGMEnrollmentViewController *)self navigationController];
  v7 = [v6 viewControllers];
  v8 = [v7 count];

  v9 = v8 - 3;
  if (v5)
  {
    v9 = v8 - 2;
  }

  if (self->_isSkippingIntroduction)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8 - 2;
  }

  if (v10 < 0)
  {
    v20 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v26 = "[VTUIGMEnrollmentViewController onboardingControllerRequestsGoingBack:]";
      v27 = 2048;
      v28 = v10;
      _os_log_impl(&dword_2728BC000, v20, OS_LOG_TYPE_DEFAULT, "%s #gmenrollment Unexpected view controller index that we can't pop to: %ld", buf, 0x16u);
    }

    v21 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (v5)
    {
      v11 = [(VTUIGMEnrollmentViewController *)self navigationController];
      v12 = [v11 viewControllers];
      v13 = [v12 indexOfObject:self];

      if (v10 <= v13)
      {
        v10 = v13;
      }
    }

    v14 = [(VTUIGMEnrollmentViewController *)self navigationController];
    v15 = [v14 viewControllers];
    v24 = [v15 objectAtIndex:v10];

    v16 = [(VTUIGMEnrollmentViewController *)self navigationController];
    v17 = [v16 popToViewController:v24 animated:1];

    v18 = [(VTUIGMEnrollmentViewController *)self navigationController];
    v19 = [v18 topViewController];

    if ([v19 conformsToProtocol:&unk_288214D88])
    {
      objc_storeStrong(&self->_summarizationOnboardingController, v19);
      [(UNNotificationOnboardingController *)self->_summarizationOnboardingController setDelegate:self];
    }

    else
    {
      summarizationOnboardingController = self->_summarizationOnboardingController;
      self->_summarizationOnboardingController = 0;
    }

    v23 = *MEMORY[0x277D85DE8];
  }
}

- (void)onboardingController:(id)a3 requestsPushingTo:(id)a4
{
  v5 = a4;
  [(UNNotificationOnboardingController *)self->_summarizationOnboardingController setDelegate:0];
  [v5 setDelegate:self];
  summarizationOnboardingController = self->_summarizationOnboardingController;
  self->_summarizationOnboardingController = v5;
  v7 = v5;

  v8 = [(VTUIGMEnrollmentViewController *)self navigationController];
  [v8 pushViewController:v7 animated:1];
}

- (void)onboardingControllerDidFinish:(id)a3
{
  if ((AFVisualIntelligenceCameraRestricted() & 1) != 0 || ![(GMAvailabilityViewModel *)self->_viewModel shouldShowVisualIntelligenceIntro])
  {

    [(VTUIGMEnrollmentViewController *)self _continueFromGMEnrollment];
  }

  else
  {

    [(VTUIGMEnrollmentViewController *)self _pushVisualIntelligenceIntro];
  }
}

- (void)_pushVisualIntelligenceIntro
{
  v5 = [[_TtC14VoiceTriggerUI37VisualIntelligenceIntroViewController alloc] initWithDelegate:self];
  if (self->_isSkippingIntroduction)
  {
    v3 = [(OBBaseWelcomeController *)v5 navigationItem];
    [v3 setHidesBackButton:1];
  }

  v4 = [(VTUIGMEnrollmentViewController *)self navigationController];
  [v4 pushViewController:v5 animated:1];
}

@end