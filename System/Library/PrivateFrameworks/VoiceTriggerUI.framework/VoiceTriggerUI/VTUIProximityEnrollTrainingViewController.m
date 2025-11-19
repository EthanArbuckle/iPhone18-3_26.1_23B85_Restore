@interface VTUIProximityEnrollTrainingViewController
- (BOOL)_hasPHSCloudDataForSpokenLanguage;
- (BOOL)_isLocaleSupported:(id)a3;
- (BOOL)_shouldShowSiriDataSharingOptInView;
- (BOOL)_siriLanguageIsIncompatibleWithPairedWatch;
- (VTUIEnrollTrainingViewControllerDelegate)delegate;
- (VTUIProximityEnrollTrainingViewController)init;
- (VTUIProximityEnrollTrainingViewController)initWithEnrollmentMode:(int64_t)a3;
- (id)_getSetupModeString;
- (id)_retryStringForStatus:(int64_t)a3;
- (id)interpretAudioSource:(unint64_t)a3;
- (int64_t)interpretSessionManagerResult:(id)a3 forInstruction:(int64_t)a4;
- (void)VTUITrainingManagerFeedLevel:(float)a3;
- (void)_advanceState;
- (void)_autoContinueFromRetry:(BOOL)a3;
- (void)_becomeActive;
- (void)_checkForPHSCloudDataIfNecessary:(id)a3;
- (void)_cleanupHelper;
- (void)_cleanupTrainingManagerWithCompletion:(id)a3;
- (void)_cleanupTrainingManagerWithCompletion:(id)a3 status:(int64_t)a4;
- (void)_continueToTrainingFromIntro;
- (void)_continueToTrainingFromLanguageOptions;
- (void)_continueToTrainingFromVoiceSelection:(id)a3;
- (void)_createTrainingManagerIfNeeded;
- (void)_didEnterBackground;
- (void)_dismiss:(id)a3;
- (void)_finishSiriSetup:(id)a3;
- (void)_gatherAudioDeviceInfo;
- (void)_handleTrainingResultForNonRetryablePhraseWithResult:(id)a3;
- (void)_handleTrainingResultForRetryablePhraseWithResult:(id)a3 shouldShowCheckMark:(BOOL)a4;
- (void)_hideInstruction;
- (void)_hideTrainingElements;
- (void)_markEnrollmentSuccessForVoiceProfile:(BOOL)a3;
- (void)_processDisambiguatedLanguageOption:(id)a3 commitLanguageCodeToPreferences:(BOOL)a4;
- (void)_processIntroViewContinueAction:(id)a3;
- (void)_processLanguageSelectionAction:(id)a3;
- (void)_resetEnrollment;
- (void)_resetIdleTimer;
- (void)_resignActive;
- (void)_resumeTraining;
- (void)_retryAfterBadMicAlert;
- (void)_retryInstruction:(BOOL)a3 withStatusMessage:(id)a4;
- (void)_setIntroViewActionOnEnablementConfigurationDidLoad:(id)a3;
- (void)_setLanguageOptionsAndContinue;
- (void)_setupEnrollTrainingView;
- (void)_setupMode;
- (void)_setupTrainingStates;
- (void)_showBadMicAlertCompletion:(id)a3;
- (void)_showBadMicAlertWithCompletion:(id)a3;
- (void)_showEnrollmentSuccessView;
- (void)_showIntroView;
- (void)_showSiriDataSharingOptInView;
- (void)_showStatusMessage:(id)a3 afterDelay:(double)a4 completion:(id)a5;
- (void)_showTrainingElements;
- (void)_showTrainingInstruction:(int64_t)a3 afterDelay:(double)a4 isRetry:(BOOL)a5 animate:(BOOL)a6;
- (void)_showUnsupportedLocaleAlert;
- (void)_showUnsupportedLocaleAlertCompletion:(id)a3;
- (void)_showVoiceSelectionViewForRecognitionLanguage:(id)a3;
- (void)_skipSetup;
- (void)_startEnrollment;
- (void)_startTraining;
- (void)_startTrainingIfNecessary:(id)a3;
- (void)_updateCurrentConstraintsToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)_updatePageNumberForInstruction:(int64_t)a3;
- (void)_warnForLanguageCompatibilityIfNecessary:(id)a3;
- (void)aboutTapped:(id)a3;
- (void)cancelTraining;
- (void)dealloc;
- (void)fetchaudioSessionID:(id)a3;
- (void)finish:(id)a3;
- (void)scdaShouldAbortAnotherDeviceBetter:(id)a3;
- (void)scdaShouldContinue:(id)a3;
- (void)setSimulateJSSupportingDeviceForTesting:(BOOL)a3;
- (void)setupNavigationBarStyleForAppearing:(BOOL)a3;
- (void)shouldAbortAnotherDeviceBetter:(id)a3;
- (void)shouldContinue:(id)a3;
- (void)siriDataSharingOptInRequestsDismissalFromPresenter:(id)a3;
- (void)siriDataSharingOptInViewDismissButtonTappedFromPresenter:(id)a3;
- (void)siriLanguageSpokenLanguageCodeDidChange:(id)a3;
- (void)skipAssistant:(id)a3;
- (void)skipTraining:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)voiceSelectionController:(id)a3 didSelectVoice:(id)a4 randomlySelected:(BOOL)a5 completion:(id)a6;
@end

@implementation VTUIProximityEnrollTrainingViewController

- (VTUIProximityEnrollTrainingViewController)init
{
  v54 = *MEMORY[0x277D85DE8];
  v47.receiver = self;
  v47.super_class = VTUIProximityEnrollTrainingViewController;
  v2 = [(VTUIProximityEnrollTrainingViewController *)&v47 init];
  if (v2)
  {
    VTUILogInitIfNeeded();
    v3 = objc_alloc_init(MEMORY[0x277CEF3A8]);
    settings = v2->_settings;
    v2->_settings = v3;

    v5 = dispatch_queue_create("com.apple.siri.amnesia", 0);
    settingsQueue = v2->_settingsQueue;
    v2->_settingsQueue = v5;

    [(VTUIProximityEnrollTrainingViewController *)v2 _gatherAudioDeviceInfo];
    v7 = objc_alloc_init(VTUIAnalytics);
    analyticsEvent = v2->_analyticsEvent;
    v2->_analyticsEvent = v7;

    v9 = v2->_analyticsEvent;
    v10 = [(VTUIProximityEnrollTrainingViewController *)v2 _getSetupModeString];
    [(VTUIAnalytics *)v9 setSetupMode:v10];

    v11 = objc_alloc_init(VTUIEnrollmentPageEligibilityProvider);
    pageEligibilityProvider = v2->_pageEligibilityProvider;
    v2->_pageEligibilityProvider = v11;

    v13 = [objc_alloc(MEMORY[0x277CEF678]) initWithDelegate:v2];
    siriLanguage = v2->_siriLanguage;
    v2->_siriLanguage = v13;

    v15 = [(AFUISiriLanguage *)v2->_siriLanguage spokenLanguageCode];
    spokenLanguageCode = v2->_spokenLanguageCode;
    v2->_spokenLanguageCode = v15;

    if (!v2->_spokenLanguageCode)
    {
      v17 = [MEMORY[0x277CEF368] sharedPreferences];
      v18 = [v17 bestSupportedLanguageCodeForLanguageCode:0];
      v19 = v2->_spokenLanguageCode;
      v2->_spokenLanguageCode = v18;

      v20 = VTUILogContextFacility;
      if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v2->_spokenLanguageCode;
        *buf = 136315394;
        v49 = "[VTUIProximityEnrollTrainingViewController init]";
        v50 = 2112;
        v51 = v21;
        _os_log_impl(&dword_2728BC000, v20, OS_LOG_TYPE_DEFAULT, "%s No Siri language code found, falling back to: %@", buf, 0x16u);
      }
    }

    v22 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v2->_spokenLanguageCode;
      *buf = 136315394;
      v49 = "[VTUIProximityEnrollTrainingViewController init]";
      v50 = 2112;
      v51 = v23;
      _os_log_impl(&dword_2728BC000, v22, OS_LOG_TYPE_DEFAULT, "%s Initializing with language code: %@", buf, 0x16u);
    }

    if (v2->_spokenLanguageCode)
    {
      v24 = +[VTUIStringsHelper sharedStringsHelper];
      [v24 setSiriLanguage:v2->_spokenLanguageCode];

      v25 = v2->_spokenLanguageCode;
    }

    else
    {
      v25 = 0;
    }

    [(VTUIAnalytics *)v2->_analyticsEvent setLanguageCode:v25];
    v2->_shouldTurnOnMyriad = 1;
    v26 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      v27 = v2->_spokenLanguageCode;
      v28 = v26;
      v29 = +[VTUIStringsHelper sharedStringsHelper];
      v30 = [v29 heySiriTriggerPhrase];
      *buf = 136315650;
      v49 = "[VTUIProximityEnrollTrainingViewController init]";
      v50 = 2112;
      v51 = v27;
      v52 = 2112;
      v53 = v30;
      _os_log_impl(&dword_2728BC000, v28, OS_LOG_TYPE_DEFAULT, "%s VoiceTriggerUI: Spoken Language Code: %@. (Trigger: '%@')", buf, 0x20u);
    }

    v31 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v49 = "[VTUIProximityEnrollTrainingViewController init]";
      _os_log_impl(&dword_2728BC000, v31, OS_LOG_TYPE_DEFAULT, "%s Setting the current training state in VTUIEnrollTrainingViewController to kVTUITrainingStateNotStarted", buf, 0xCu);
    }

    v2->_currentTrainingState = -1;
    aboutTappedSender = v2->_aboutTappedSender;
    v2->_aboutTappedSender = 0;

    if ([MEMORY[0x277CEF2A8] isSCDAFrameworkEnabled])
    {
      v33 = [MEMORY[0x277D55AF8] currentCoordinator];

      if (v33)
      {
        v34 = [MEMORY[0x277D55AF8] currentCoordinator];
      }

      else
      {
        v34 = [objc_alloc(MEMORY[0x277D55AF8]) initWithDelegate:v2];
      }

      v36 = &OBJC_IVAR___VTUIProximityEnrollTrainingViewController__scdaCoordinator;
    }

    else
    {
      v35 = [MEMORY[0x277CEF328] currentCoordinator];

      if (v35)
      {
        v34 = [MEMORY[0x277CEF328] currentCoordinator];
      }

      else
      {
        v34 = [objc_alloc(MEMORY[0x277CEF328]) initWithDelegate:v2];
      }

      v36 = &OBJC_IVAR___VTUIProximityEnrollTrainingViewController__myriadCoordinator;
    }

    v37 = *v36;
    v38 = *(&v2->super.super.super.isa + v37);
    *(&v2->super.super.super.isa + v37) = v34;

    v39 = +[VTUIStyle sharedStyle];
    [v39 setIsBuddyOrFollowUp:PSIsRunningInAssistant()];
    v40 = [v39 proxAccessorySupportsCompactTrigger] && (objc_msgSend(v39, "shouldSetupForMultipleTriggerPhrases") & 1) != 0 || -[VTUIProximityEnrollTrainingViewController simulateJSSupportingDeviceForTesting](v2, "simulateJSSupportingDeviceForTesting");
    v41 = [[VTUIAudioHintPlayer alloc] initWithLanguage:v2->_spokenLanguageCode isCompact:v40 delegate:v2];
    audioHintPlayer = v2->_audioHintPlayer;
    v2->_audioHintPlayer = v41;

    v43 = objc_alloc_init(VTUISiriDataSharingOptInPresenter);
    siriDataSharingOptInPresenter = v2->_siriDataSharingOptInPresenter;
    v2->_siriDataSharingOptInPresenter = v43;

    [(VTUISiriDataSharingOptInPresenter *)v2->_siriDataSharingOptInPresenter setPresentationDelegate:v2];
    [(VTUISiriDataSharingOptInPresenter *)v2->_siriDataSharingOptInPresenter setSourceOfChange:3];
    [(VTUIProximityEnrollTrainingViewController *)v2 _setupMode];
  }

  v45 = *MEMORY[0x277D85DE8];
  return v2;
}

- (VTUIProximityEnrollTrainingViewController)initWithEnrollmentMode:(int64_t)a3
{
  result = [(VTUIProximityEnrollTrainingViewController *)self init];
  if (a3)
  {
    result->_enrollmentMode = a3;
  }

  return result;
}

- (void)dealloc
{
  [(VTUIAnalytics *)self->_analyticsEvent logEvent];
  if ([(VTUIProximityEnrollTrainingViewController *)self _isTrainingInProgress])
  {
    v3 = [MEMORY[0x277D653F8] sharedInstance];
    v4 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
    v5 = [v3 deleteUserVoiceProfile:v4];
  }

  [(VTUIProximityEnrollTrainingViewController *)self _cleanupTrainingManagerWithCompletion:0];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = VTUIProximityEnrollTrainingViewController;
  [(VTUIProximityEnrollTrainingViewController *)&v7 dealloc];
}

- (void)_setupMode
{
  v2 = +[VTUIStyle sharedStyle];
  [v2 setEnrollmentMode:4];
}

- (void)viewDidLoad
{
  v15 = *MEMORY[0x277D85DE8];
  VTUILogInitIfNeeded();
  v12.receiver = self;
  v12.super_class = VTUIProximityEnrollTrainingViewController;
  [(VTUIProximityEnrollTrainingViewController *)&v12 viewDidLoad];
  v3 = +[VTUIStringsHelper sharedStringsHelper];
  [v3 setupForCurrentLocaleAndSiriLanguage];

  [(VTUIProximityEnrollTrainingViewController *)self _setupTrainingStates];
  [(VTUIProximityEnrollTrainingViewController *)self _setupEnrollTrainingView];
  v4 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView skipButton];
  [v4 addTarget:self action:sel_skipTraining_ forControlEvents:64];

  v5 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView dismissButton];
  [v5 addTarget:self action:sel__dismiss_ forControlEvents:64];

  v6 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView instructionPreludeLabel];
  [v6 setHidden:1];

  v7 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[VTUIProximityEnrollTrainingViewController viewDidLoad]";
    _os_log_impl(&dword_2728BC000, v7, OS_LOG_TYPE_DEFAULT, "%s Main View Loaded", buf, 0xCu);
  }

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:self selector:sel__resignActive name:*MEMORY[0x277D76768] object:0];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:self selector:sel__becomeActive name:*MEMORY[0x277D76648] object:0];

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 addObserver:self selector:sel__didEnterBackground name:*MEMORY[0x277D76660] object:0];

  if (self->_skipToEndForTesting)
  {
    self->_currentTrainingState = 5;
    [(VTUIProximityEnrollTrainingViewController *)self _showEnrollmentSuccessView];
  }

  if (self->_skipToDataSharingForTesting)
  {
    self->_currentTrainingState = 5;
    [(VTUIProximityEnrollTrainingViewController *)self _showSiriDataSharingOptInView];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_setupEnrollTrainingView
{
  enrollmentMode = self->_enrollmentMode;
  v4 = [VTUIProximityEnrollTrainingView alloc];
  v5 = [(VTUIProximityEnrollTrainingViewController *)self view];
  [v5 bounds];
  if (enrollmentMode == 5)
  {
    v6 = [(VTUIProximityEnrollTrainingView *)v4 initWithFrame:1 forEnrollmentStyle:?];
  }

  else
  {
    v6 = [(VTUIProximityEnrollTrainingView *)v4 initWithFrame:?];
  }

  enrollTrainingView = self->_enrollTrainingView;
  self->_enrollTrainingView = v6;

  [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView setAutoresizingMask:18];
  v8 = [(VTUIProximityEnrollTrainingViewController *)self view];
  [v8 addSubview:self->_enrollTrainingView];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = VTUIProximityEnrollTrainingViewController;
  [(VTUIProximityEnrollTrainingViewController *)&v6 viewDidLayoutSubviews];
  v3 = [(VTUIProximityEnrollTrainingViewController *)self view];
  [v3 bounds];
  [(VTUIProximityEnrollTrainingViewController *)self _updateCurrentConstraintsToSize:0 withTransitionCoordinator:v4, v5];
}

- (void)setupNavigationBarStyleForAppearing:(BOOL)a3
{
  v3 = a3;
  v5 = [(VTUIProximityEnrollTrainingViewController *)self navigationController];
  v6 = [v5 view];
  if (v3)
  {
    v7 = [MEMORY[0x277D75348] clearColor];
    [v6 setBackgroundColor:v7];

    v8 = [(VTUIProximityEnrollTrainingViewController *)self navigationController];
    v9 = [v8 navigationBar];
    v10 = [MEMORY[0x277D75348] clearColor];
    [v9 setBackgroundColor:v10];

    v17 = [(VTUIProximityEnrollTrainingViewController *)self navigationController];
    v11 = [v17 navigationBar];
    v12 = objc_opt_new();
    [v11 setBackgroundImage:v12 forBarMetrics:0];
  }

  else
  {
    v13 = [MEMORY[0x277D75348] whiteColor];
    [v6 setBackgroundColor:v13];

    v14 = [(VTUIProximityEnrollTrainingViewController *)self navigationController];
    v15 = [v14 navigationBar];
    v16 = [MEMORY[0x277D75348] whiteColor];
    [v15 setBackgroundColor:v16];

    v17 = [(VTUIProximityEnrollTrainingViewController *)self navigationController];
    v11 = [v17 navigationBar];
    [v11 setBackgroundImage:0 forBarMetrics:0];
  }
}

- (void)setSimulateJSSupportingDeviceForTesting:(BOOL)a3
{
  self->_simulateJSSupportingDeviceForTesting = a3;
  if (a3)
  {
    v4 = 8212;
  }

  else
  {
    v4 = 8206;
  }

  v5 = +[VTUIStyle sharedStyle];
  [v5 setAudioProductID:v4];

  [(VTUIProximityEnrollTrainingViewController *)self _setupTrainingStates];
}

- (void)_becomeActive
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[VTUIProximityEnrollTrainingViewController _becomeActive]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Making View Active", &v6, 0xCu);
  }

  [(VTUIProximityEnrollTrainingViewController *)self _showTrainingElements];
  self->_badMicRetryCount = 0;
  self->_AVVCRetryCount = 0;
  self->_isResignedActive = 0;
  self->_cannotHearRetryCount = 0;
  self->_digitalZerosRetryCount = 0;
  currentTrainingState = self->_currentTrainingState;
  if (currentTrainingState == -1)
  {
    [(VTUIProximityEnrollTrainingViewController *)self _startEnrollment];
  }

  else
  {
    [(VTUIProximityEnrollTrainingViewController *)self _showTrainingInstruction:currentTrainingState afterDelay:0 isRetry:1 animate:0.0];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_resignActive
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[VTUIProximityEnrollTrainingViewController _resignActive]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Resigning Active", &v6, 0xCu);
  }

  self->_isResignedActive = 1;
  [(VTUIProximityEnrollTrainingViewController *)self _hideTrainingElements];
  [(VTUIProximityEnrollTrainingViewController *)self _resetTrainingManager];
  v4 = [(VTUIProximityEnrollTrainingViewController *)self audioHintPlayer];
  [v4 cleanup];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_didEnterBackground
{
  if ([(VTUIProximityEnrollTrainingViewController *)self _isTrainingInProgress])
  {
    [(VTUIProximityEnrollTrainingViewController *)self _resetEnrollment];
    v3 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView instructionPagedLabel];
    [v3 clear];
  }
}

- (void)_updateCurrentConstraintsToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  if (a3.width <= a3.height)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  v8 = +[MGWrapper sharedMGWrapper];
  v9 = [v8 isDeviceIPad];

  if ((v9 & 1) == 0 && v7 != [(VTUIProximityEnrollTrainingViewController *)self orientation])
  {
    [(VTUIProximityView *)self->_introView updateContainerConstraintsForOrientationChangeToSize:width, height];
    [(VTUIProximityView *)self->_tryAgainView updateContainerConstraintsForOrientationChangeToSize:width, height];
    [(VTUIProximityView *)self->_enrollTrainingView updateContainerConstraintsForOrientationChangeToSize:width, height];
    [(VTUIProximityView *)self->_successView updateContainerConstraintsForOrientationChangeToSize:width, height];
    [(VTUIProximityView *)self->_languageOptionsView updateContainerConstraintsForOrientationChangeToSize:width, height];
    [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController updateContainerConstraintsForOrientationChangeToSize:width, height];
    self->_orientation = v7;
  }
}

- (void)_hideTrainingElements
{
  v3 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView orbView];
  [v3 setHidden:1];

  v4 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView checkMark];
  [v4 setHidden:1];
}

- (void)_showTrainingElements
{
  v3 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView orbView];
  [v3 setHidden:0];

  v4 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView checkMark];
  [v4 setHidden:0];
}

- (void)_showBadMicAlertWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__VTUIProximityEnrollTrainingViewController__showBadMicAlertWithCompletion___block_invoke;
  v6[3] = &unk_279E541D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(VTUIProximityEnrollTrainingViewController *)self _cleanupTrainingManagerWithCompletion:v6];
}

uint64_t __76__VTUIProximityEnrollTrainingViewController__showBadMicAlertWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[VTUIProximityEnrollTrainingViewController _showBadMicAlertWithCompletion:]_block_invoke";
    _os_log_impl(&dword_2728BC000, v2, OS_LOG_TYPE_DEFAULT, "%s Showing Bad Mic Alert", &v5, 0xCu);
  }

  result = [*(a1 + 32) _showBadMicAlertCompletion:*(a1 + 40)];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_retryAfterBadMicAlert
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[VTUIProximityEnrollTrainingViewController _retryAfterBadMicAlert]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_INFO, "%s Trying again after Bad Mic ALert", &v5, 0xCu);
  }

  [(VTUIProximityEnrollTrainingViewController *)self _resumeTraining];
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isLocaleSupported:(id)a3
{
  v3 = a3;
  v4 = AFPreferencesSupportedLanguages();
  v5 = [v4 containsObject:v3];

  return v5;
}

- (void)_showUnsupportedLocaleAlert
{
  v10 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[VTUIProximityEnrollTrainingViewController _showUnsupportedLocaleAlert]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Showing Unsupported LocaleAlert", buf, 0xCu);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__VTUIProximityEnrollTrainingViewController__showUnsupportedLocaleAlert__block_invoke;
  v5[3] = &unk_279E541F8;
  objc_copyWeak(&v6, &location);
  [(VTUIProximityEnrollTrainingViewController *)self _showUnsupportedLocaleAlertCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  v4 = *MEMORY[0x277D85DE8];
}

void __72__VTUIProximityEnrollTrainingViewController__showUnsupportedLocaleAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained trainingManager];
    [v2 cancelTrainingForID:{objc_msgSend(v4, "sessionId")}];

    v3 = [v4 trainingManager];
    [v3 stopRMS];

    [v4 skipTraining:0];
    WeakRetained = v4;
  }
}

- (void)_setupTrainingStates
{
  v52[5] = *MEMORY[0x277D85DE8];
  v3 = +[VTUIStyle sharedStyle];
  v30 = v3;
  v4 = [v3 proxAccessorySupportsCompactTrigger] && (objc_msgSend(v3, "shouldSetupForMultipleTriggerPhrases") & 1) != 0 || -[VTUIProximityEnrollTrainingViewController simulateJSSupportingDeviceForTesting](self, "simulateJSSupportingDeviceForTesting");
  v22 = self;
  v5 = [(VTUIAudioHintPlayer *)self->_audioHintPlayer outputVoice];
  if (v4)
  {
    v50[0] = @"Instruction";
    v29 = +[VTUIStringsHelper sharedStringsHelper];
    [v29 uiLocalizedStringForKey:@"TEXT_TITLE_UTT1" usesMultipleTriggers:1 siriVoice:v5];
    v28 = v50[1] = @"RetryOnFail";
    v51[0] = v28;
    v51[1] = MEMORY[0x277CBEC28];
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
    v52[0] = v27;
    v48[0] = @"Instruction";
    v26 = +[VTUIStringsHelper sharedStringsHelper];
    v6 = [v26 uiLocalizedStringForKey:@"TEXT_TITLE_UTT2" usesMultipleTriggers:0 siriVoice:v5];
    v48[1] = @"RetryOnFail";
    v7 = MEMORY[0x277CBEC38];
    v25 = v6;
    v49[0] = v6;
    v49[1] = MEMORY[0x277CBEC38];
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
    v52[1] = v24;
    v46[0] = @"Instruction";
    v23 = +[VTUIStringsHelper sharedStringsHelper];
    v8 = [v23 uiLocalizedStringForKey:@"TEXT_TITLE_UTT3" usesMultipleTriggers:1 siriVoice:v5];
    v46[1] = @"RetryOnFail";
    v47[0] = v8;
    v47[1] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
    v52[2] = v9;
    v44[0] = @"Instruction";
    v10 = +[VTUIStringsHelper sharedStringsHelper];
    v11 = [v10 uiLocalizedStringForKey:@"TEXT_TITLE_UTT4" usesMultipleTriggers:0 siriVoice:v5];
    v44[1] = @"RetryOnFail";
    v45[0] = v11;
    v45[1] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
    v52[3] = v12;
    v42[0] = @"Instruction";
    v13 = +[VTUIStringsHelper sharedStringsHelper];
    v14 = [v13 uiLocalizedStringForKey:@"TEXT_TITLE_UTT5" usesMultipleTriggers:1 siriVoice:v5];
    v42[1] = @"RetryOnFail";
    v43[0] = v14;
    v43[1] = v7;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
    v52[4] = v15;
    v16 = v52;
  }

  else
  {
    v39[0] = @"Instruction";
    v29 = +[VTUIStringsHelper sharedStringsHelper];
    [v29 uiLocalizedStringForKey:@"TEXT_TITLE_UTT1" usesMultipleTriggers:0 siriVoice:v5];
    v28 = v39[1] = @"RetryOnFail";
    v40[0] = v28;
    v40[1] = MEMORY[0x277CBEC28];
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v41[0] = v27;
    v37[0] = @"Instruction";
    v26 = +[VTUIStringsHelper sharedStringsHelper];
    v17 = [v26 uiLocalizedStringForKey:@"TEXT_TITLE_UTT2" usesMultipleTriggers:0 siriVoice:v5];
    v37[1] = @"RetryOnFail";
    v18 = MEMORY[0x277CBEC38];
    v25 = v17;
    v38[0] = v17;
    v38[1] = MEMORY[0x277CBEC38];
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v41[1] = v24;
    v35[0] = @"Instruction";
    v23 = +[VTUIStringsHelper sharedStringsHelper];
    v8 = [v23 uiLocalizedStringForKey:@"TEXT_TITLE_UTT3" usesMultipleTriggers:0 siriVoice:v5];
    v35[1] = @"RetryOnFail";
    v36[0] = v8;
    v36[1] = v18;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    v41[2] = v9;
    v33[0] = @"Instruction";
    v10 = +[VTUIStringsHelper sharedStringsHelper];
    v11 = [v10 uiLocalizedStringForKey:@"TEXT_TITLE_UTT4" usesMultipleTriggers:0 siriVoice:v5];
    v33[1] = @"RetryOnFail";
    v34[0] = v11;
    v34[1] = v18;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
    v41[3] = v12;
    v31[0] = @"Instruction";
    v13 = +[VTUIStringsHelper sharedStringsHelper];
    v14 = [v13 uiLocalizedStringForKey:@"TEXT_TITLE_UTT5" usesMultipleTriggers:0 siriVoice:v5];
    v31[1] = @"RetryOnFail";
    v32[0] = v14;
    v32[1] = v18;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v41[4] = v15;
    v16 = v41;
  }

  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:5];
  trainingPageInstructions = v22->_trainingPageInstructions;
  v22->_trainingPageInstructions = v19;

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_resetIdleTimer
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 setIdleTimerDisabled:1];

  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 setIdleTimerDisabled:0];
}

- (void)_showIntroView
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v35 = "[VTUIProximityEnrollTrainingViewController _showIntroView]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Displaying Intro view", buf, 0xCu);
  }

  if (!self->_introView)
  {
    v4 = [(VTUIProximityEnrollTrainingViewController *)self view];
    v5 = [VTUIProximityEnrollmentSetupIntroView alloc];
    v6 = [(VTUIProximityEnrollTrainingViewController *)self view];
    [v6 bounds];
    v7 = [(VTUIProximityEnrollmentSetupIntroView *)v5 initWithFrame:?];
    introView = self->_introView;
    self->_introView = v7;

    [(VTUIProximityEnrollmentSetupIntroView *)self->_introView setAutoresizingMask:18];
    [(VTUIProximityEnrollmentSetupIntroView *)self->_introView setEnrollmentDelegate:self];
    [v4 addSubview:self->_introView];
    v9 = [(VTUIProximityEnrollmentSetupIntroView *)self->_introView dismissButton];
    [v9 addTarget:self action:sel__dismiss_ forControlEvents:64];

    v32 = 0;
    v10 = [MEMORY[0x277CEF368] sharedPreferences];
    v11 = [MEMORY[0x277CBEAF8] currentLocale];
    v12 = [v11 localeIdentifier];
    v13 = [v10 allSiriLanguageCodesForSystemLanguageCode:v12 isGoodFit:&v32];
    siriLanguageOptions = self->_siriLanguageOptions;
    self->_siriLanguageOptions = v13;

    if (self->_disambiguateLanguageOptionsForTesting)
    {
      v15 = self->_siriLanguageOptions;
      self->_siriLanguageOptions = &unk_2881EEDD0;
    }

    v16 = [(VTUIProximityEnrollmentSetupIntroView *)self->_introView setupButton];
    [v16 addTarget:self action:sel__processIntroViewContinueAction_ forControlEvents:64];

    v17 = [(VTUIProximityEnrollmentSetupIntroView *)self->_introView notNowButton];
    [v17 addTarget:self action:sel_skipAssistant_ forControlEvents:64];

    v18 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView skipButton];
    [v18 setHidden:1];

    v19 = +[VTUIStyle sharedStyle];
    v20 = [v19 enrollmentMode];

    v21 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v35 = "[VTUIProximityEnrollTrainingViewController _showIntroView]";
      v36 = 2048;
      v37 = v20;
      _os_log_impl(&dword_2728BC000, v21, OS_LOG_TYPE_DEFAULT, "%s Enrollment mode: %ld", buf, 0x16u);
    }

    if (!self->_provider)
    {
      v22 = objc_alloc_init(MEMORY[0x277CEF298]);
      provider = self->_provider;
      self->_provider = v22;
    }

    if (self->_enablementConfiguration)
    {
      [(VTUIAnalytics *)self->_analyticsEvent setIntroViewShown:[(VTUIAnalytics *)self->_analyticsEvent introViewShown]+ 1];
    }

    else
    {
      if ([(VTUIProximityEnrollTrainingViewController *)self _shouldPresentLanguageDisambiguation])
      {
        v24 = self->_siriLanguageOptions;
      }

      else
      {
        spokenLanguageCode = self->_spokenLanguageCode;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&spokenLanguageCode count:1];
      }

      v25 = v24;
      objc_initWeak(buf, self);
      self->_isEnablementConfigurationLoading = 1;
      v26 = self->_provider;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __59__VTUIProximityEnrollTrainingViewController__showIntroView__block_invoke;
      v29[3] = &unk_279E542C0;
      objc_copyWeak(&v31, buf);
      v27 = v25;
      v30 = v27;
      [(AFEnablementFlowConfigurationProvider *)v26 configurationForEnablementFlow:2 recognitionLanguageCodes:v27 completion:v29];

      objc_destroyWeak(&v31);
      objc_destroyWeak(buf);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __59__VTUIProximityEnrollTrainingViewController__showIntroView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__VTUIProximityEnrollTrainingViewController__showIntroView__block_invoke_2;
  block[3] = &unk_279E54298;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

void __59__VTUIProximityEnrollTrainingViewController__showIntroView__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v9 = 136315650;
      v10 = "[VTUIProximityEnrollTrainingViewController _showIntroView]_block_invoke_2";
      v11 = 2112;
      v12 = v4;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Enablement Configuration %@ for recognition languages %@", &v9, 0x20u);
    }

    objc_storeStrong(WeakRetained + 142, *(a1 + 32));
    *(WeakRetained + 1152) = 0;
    v6 = WeakRetained[145];
    if (v6)
    {
      v6[2]();
      v7 = WeakRetained[145];
      WeakRetained[145] = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_siriLanguageIsIncompatibleWithPairedWatch
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D2BCF8] sharedInstance];
  v4 = [v3 isPaired];

  if (v4)
  {
    v5 = [MEMORY[0x277D2BCF8] sharedInstance];
    v6 = [v5 getActivePairedDevice];
    v7 = [v6 valueForProperty:*MEMORY[0x277D2BC20]];

    v8 = [MEMORY[0x277D2BCF8] sharedInstance];
    v9 = [v8 getActivePairedDevice];

    v10 = [v9 valueForProperty:*MEMORY[0x277D2BC10]];
    v11 = [MEMORY[0x277CEF218] siriIsSupportedForLanguageCode:self->_spokenLanguageCode productName:v10 productVersion:v7 error:0];
    v12 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"false";
      if (v11)
      {
        v13 = @"true";
      }

      v17 = 136315394;
      v18 = "[VTUIProximityEnrollTrainingViewController _siriLanguageIsIncompatibleWithPairedWatch]";
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_2728BC000, v12, OS_LOG_TYPE_DEFAULT, "%s Is Siri Language Supported on watch ? - %@", &v17, 0x16u);
    }

    v14 = v11 ^ 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_warnForLanguageCompatibilityIfNecessary:(id)a3
{
  v4 = a3;
  if ([(VTUIProximityEnrollTrainingViewController *)self _siriLanguageIsIncompatibleWithPairedWatch])
  {
    v5 = MEMORY[0x277D75110];
    v6 = +[VTUIStringsHelper sharedStringsHelper];
    v7 = [v6 uiLocalizedStringForKey:@"ALERT_TITLE_LANGUAGE_NOT_SUPPORTED_ON_WATCH"];
    v8 = +[VTUIStringsHelper sharedStringsHelper];
    v9 = [v8 uiLocalizedStringForKey:@"ALERT_MESSAGE_LANGUAGE_NOT_SUPPORTED_ON_WATCH"];
    v10 = [v5 alertControllerWithTitle:v7 message:v9 preferredStyle:1];

    v11 = MEMORY[0x277D750F8];
    v12 = +[VTUIStringsHelper sharedStringsHelper];
    v13 = [v12 uiLocalizedStringForKey:@"ALERT_BUTTON_CONTINUE"];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __86__VTUIProximityEnrollTrainingViewController__warnForLanguageCompatibilityIfNecessary___block_invoke;
    v15[3] = &unk_279E542E8;
    v16 = v4;
    v14 = [v11 actionWithTitle:v13 style:0 handler:v15];

    [v10 addAction:v14];
    [(VTUIProximityEnrollTrainingViewController *)self presentViewController:v10 animated:1 completion:0];
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

uint64_t __86__VTUIProximityEnrollTrainingViewController__warnForLanguageCompatibilityIfNecessary___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_markEnrollmentSuccessForVoiceProfile:(BOOL)a3
{
  if (a3)
  {
    v6 = [MEMORY[0x277D653F8] sharedInstance];
    v4 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
    v5 = [v6 markSATEnrollmentSuccessForVoiceProfile:v4];
  }
}

- (void)_showEnrollmentSuccessView
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[VTUIProximityEnrollTrainingViewController _showEnrollmentSuccessView]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Enrollment completed", buf, 0xCu);
  }

  v4 = [(VTUIProximityEnrollTrainingViewController *)self view];
  v5 = [VTUIProximityEnrollmentSuccessView alloc];
  v6 = [(VTUIProximityEnrollTrainingViewController *)self view];
  [v6 bounds];
  v7 = [(VTUIProximityEnrollmentSuccessView *)v5 initWithFrame:?];
  successView = self->_successView;
  self->_successView = v7;

  [(VTUIProximityEnrollmentSuccessView *)self->_successView setAutoresizingMask:18];
  [v4 addSubview:self->_successView];
  v9 = [(VTUIProximityEnrollmentSuccessView *)self->_successView dismissButton];
  [v9 addTarget:self action:sel__dismiss_ forControlEvents:64];

  v10 = [(VTUIProximityEnrollmentSuccessView *)self->_successView continueButton];
  [v10 addTarget:self action:sel__finishSiriSetup_ forControlEvents:64];

  enrollTrainingView = self->_enrollTrainingView;
  if (enrollTrainingView)
  {
    [(VTUIProximityEnrollTrainingView *)enrollTrainingView removeFromSuperview];
    v12 = self->_enrollTrainingView;
    self->_enrollTrainingView = 0;
  }

  if ([(VTUIProximityEnrollTrainingViewController *)self _shouldSpeakAudioHint])
  {
    if (self->_shouldTurnOnMyriad)
    {
      v13 = [MEMORY[0x277CEF2A8] isSCDAFrameworkEnabled];
      v15 = &OBJC_IVAR___VTUIProximityEnrollTrainingViewController__myriadCoordinator;
      if (v13)
      {
        v15 = &OBJC_IVAR___VTUIProximityEnrollTrainingViewController__scdaCoordinator;
      }

      LODWORD(v14) = 20.0;
      [*(&self->super.super.super.isa + *v15) startAdvertisingForPHSSetupAfterDelay:0.0 maxInterval:v14];
    }

    objc_initWeak(buf, self);
    audioHintPlayer = self->_audioHintPlayer;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __71__VTUIProximityEnrollTrainingViewController__showEnrollmentSuccessView__block_invoke;
    v18[3] = &unk_279E54330;
    objc_copyWeak(&v19, buf);
    [(VTUIAudioHintPlayer *)audioHintPlayer speakConfirmationDialog:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __71__VTUIProximityEnrollTrainingViewController__showEnrollmentSuccessView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [MEMORY[0x277CEF2A8] isSCDAFrameworkEnabled];
    v4 = &OBJC_IVAR___VTUIProximityEnrollTrainingViewController__myriadCoordinator;
    if (v2)
    {
      v4 = &OBJC_IVAR___VTUIProximityEnrollTrainingViewController__scdaCoordinator;
    }

    LODWORD(v3) = 0.5;
    [*&v5[*v4] endAdvertisingAfterDelay:v3];
    [v5 _cleanupTrainingManagerWithCompletion:0];
    WeakRetained = v5;
  }
}

- (void)_startEnrollment
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    spokenLanguageCode = self->_spokenLanguageCode;
    v8 = 136315394;
    v9 = "[VTUIProximityEnrollTrainingViewController _startEnrollment]";
    v10 = 2112;
    v11 = spokenLanguageCode;
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Starting Enrollment for language code: %@", &v8, 0x16u);
  }

  if (![(VTUIProximityEnrollTrainingViewController *)self _isLocaleSupported:self->_spokenLanguageCode])
  {
    [(VTUIProximityEnrollTrainingViewController *)self _showUnsupportedLocaleAlert];
  }

  introView = self->_introView;
  if (introView)
  {
    self->_introView = 0;
  }

  aboutTappedSender = self->_aboutTappedSender;
  if (self->_languageOptionsView)
  {
    if (!aboutTappedSender)
    {
      goto LABEL_13;
    }
  }

  else if (!aboutTappedSender)
  {
    if (self->_enrollmentMode == 5)
    {
      [(VTUIProximityEnrollTrainingViewController *)self _continueToTrainingFromIntro];
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_12:
    [(VTUIProximityEnrollTrainingViewController *)self _showIntroView];
  }

LABEL_13:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_resetEnrollment
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[VTUIProximityEnrollTrainingViewController _resetEnrollment]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Resetting State to kVTUITrainingStateNotStarted", &v8, 0xCu);
  }

  self->_currentTrainingState = -1;
  [(VTUIProximityEnrollTrainingViewController *)self _setPHSEnrollmentPrefEnabled:0];
  [(VTUIProximityEnrollTrainingViewController *)self _hideInstruction];
  v4 = [MEMORY[0x277D653F8] sharedInstance];
  v5 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
  v6 = [v4 deleteUserVoiceProfile:v5];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_resumeTraining
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_INFO))
  {
    currentTrainingState = self->_currentTrainingState;
    v6 = 136315394;
    v7 = "[VTUIProximityEnrollTrainingViewController _resumeTraining]";
    v8 = 2048;
    v9 = currentTrainingState;
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_INFO, "%s Resuming training from the previous state: %zd", &v6, 0x16u);
  }

  if ([(VTUIProximityEnrollTrainingViewController *)self _isTrainingInProgress])
  {
    [(VTUIProximityEnrollTrainingViewController *)self _createTrainingManagerIfNeeded];
    [(VTUIProximityEnrollTrainingViewController *)self _showInstruction:self->_currentTrainingState isRetry:0];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_startTraining
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_currentTrainingState < 0)
  {
    v5 = [MEMORY[0x277CCAD78] UUID];
    trainingAttemptUUID = self->_trainingAttemptUUID;
    self->_trainingAttemptUUID = v5;

    v7 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_trainingAttemptUUID;
      v9 = v7;
      v10 = [(NSUUID *)v8 UUIDString];
      currentTrainingState = self->_currentTrainingState;
      v21 = 136315650;
      v22 = "[VTUIProximityEnrollTrainingViewController _startTraining]";
      v23 = 2112;
      v24 = v10;
      v25 = 2048;
      v26 = currentTrainingState;
      _os_log_impl(&dword_2728BC000, v9, OS_LOG_TYPE_DEFAULT, "%s Starting training attempt %@ - Moving from state: %zd to state 0", &v21, 0x20u);
    }

    v12 = [MEMORY[0x277D653F8] sharedInstance];
    v13 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
    v14 = [v12 deleteUserVoiceProfile:v13];

    v15 = [MEMORY[0x277CEF158] sharedAnalytics];
    [v15 logEventWithType:5502 context:0];

    v16 = [MEMORY[0x277D7A8D0] sharedPreferences];
    v17 = [v16 getUserPreferredVoiceTriggerPhraseTypeForDeviceType:0 endpointId:0 error:0];

    if (v17)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    [VTUISELFLogger logSiriSetupPHSEnrollmentUIStarted:self->_trainingAttemptUUID enrollmentMode:self->_enrollmentMode locale:self->_spokenLanguageCode voiceTriggerType:v18];
    [(VTUIProximityEnrollTrainingViewController *)self _setPHSEnrollmentPrefEnabled:0];
    self->_currentTrainingState = 0;
    v19 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView instructionPreludeLabel];
    [v19 setHidden:0];

    [(VTUIProximityEnrollTrainingViewController *)self _showInstruction:self->_currentTrainingState isRetry:0];
  }

  else
  {
    v3 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_INFO))
    {
      v4 = self->_currentTrainingState;
      v21 = 136315394;
      v22 = "[VTUIProximityEnrollTrainingViewController _startTraining]";
      v23 = 2048;
      v24 = v4;
      _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_INFO, "%s Training has already started at state %zd - resuming.", &v21, 0x16u);
    }

    [(VTUIProximityEnrollTrainingViewController *)self _resumeTraining];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_advanceState
{
  v18 = *MEMORY[0x277D85DE8];
  currentTrainingState = self->_currentTrainingState;
  if (currentTrainingState >= [(NSArray *)self->_trainingPageInstructions count]- 1)
  {
    if (self->_currentTrainingState != 5)
    {
      self->_currentTrainingState = 5;
      [(VTUIAnalytics *)self->_analyticsEvent setVoiceTrainingCompleted:[(VTUIAnalytics *)self->_analyticsEvent voiceTrainingCompleted]+ 1];
      if (self->_enrollmentMode == 5)
      {
        [(VTUIProximityEnrollTrainingViewController *)self _markEnrollmentSuccessForVoiceProfile:1];
        [(VTUIProximityEnrollTrainingViewController *)self _finishSiriSetup:0];
        [(VTUIProximityEnrollTrainingViewController *)self finish:0];
      }

      else
      {
        [(VTUIProximityEnrollTrainingViewController *)self _setPHSEnrollmentPrefEnabled:1];
        v6 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView instructionPagedLabel];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __58__VTUIProximityEnrollTrainingViewController__advanceState__block_invoke;
        v13[3] = &unk_279E54220;
        v13[4] = self;
        [v6 slideInText:0 afterDelay:v13 completion:0.0];
      }

      v7 = VTUILogContextFacility;
      if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "[VTUIProximityEnrollTrainingViewController _advanceState]";
        _os_log_impl(&dword_2728BC000, v7, OS_LOG_TYPE_DEFAULT, "%s Completed Last stage in Training", buf, 0xCu);
      }

      v8 = [MEMORY[0x277CEF158] sharedAnalytics];
      v9 = [v8 newTurnBasedInstrumentationContext];

      v10 = objc_alloc_init(MEMORY[0x277D5A928]);
      [v10 setInvocationSource:45];
      [v9 emitInstrumentation:v10];
      v11 = [MEMORY[0x277CEF158] sharedAnalytics];
      [v11 logEventWithType:5503 context:0];

      [VTUISELFLogger logSiriSetupPHSEnrollmentUICompleted:self->_trainingAttemptUUID enrollmentMode:self->_enrollmentMode locale:self->_spokenLanguageCode enrollmentSessionOutcome:1 pageNumber:LODWORD(self->_currentTrainingState)];
    }
  }

  else
  {
    self->_hasRetriedTraining = 0;
    ++self->_currentTrainingState;
    [VTUIProximityEnrollTrainingViewController _showInstruction:"_showInstruction:isRetry:" isRetry:?];
    v4 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_currentTrainingState;
      *buf = 136315394;
      v15 = "[VTUIProximityEnrollTrainingViewController _advanceState]";
      v16 = 2048;
      v17 = v5;
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Advance to Next stage in Training - Current state : %zd", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_retryStringForStatus:(int64_t)a3
{
  v5 = +[VTUIStringsHelper sharedStringsHelper];
  v6 = [v5 uiLocalizedStringForKey:@"TRY_AGAIN_MESSAGE"];

  if (a3 == 2)
  {
    if ([(VTUIProximityEnrollTrainingViewController *)self cannotHearRetryCount]!= 1)
    {
      if (![(VTUIProximityEnrollTrainingViewController *)self cannotHearRetryCount])
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

LABEL_7:
    v7 = @"TRY_AGAIN_CANNOT_HEAR_MESSAGE";
LABEL_10:
    v8 = +[VTUIStringsHelper sharedStringsHelper];
    v9 = [v8 uiLocalizedStringForKey:v7];

    v6 = v9;
    goto LABEL_11;
  }

  if (a3 != 9)
  {
    goto LABEL_11;
  }

  if ([(VTUIProximityEnrollTrainingViewController *)self digitalZerosRetryCount]== 1)
  {
    goto LABEL_7;
  }

  if ([(VTUIProximityEnrollTrainingViewController *)self digitalZerosRetryCount])
  {
LABEL_9:
    v7 = @"TRY_AGAIN_STILL_CANNOT_HEAR_MESSAGE";
    goto LABEL_10;
  }

LABEL_11:

  return v6;
}

- (void)_retryInstruction:(BOOL)a3 withStatusMessage:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[VTUIProximityEnrollTrainingViewController _retryInstruction:withStatusMessage:]";
    _os_log_impl(&dword_2728BC000, v7, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v8 = [VTUIProximityTryAgainView alloc];
  v9 = [(VTUIProximityEnrollTrainingViewController *)self view];
  [v9 bounds];
  v10 = [(VTUIProximityTryAgainView *)v8 initWithFrame:?];
  tryAgainView = self->_tryAgainView;
  self->_tryAgainView = v10;

  [(VTUIProximityTryAgainView *)self->_tryAgainView setAutoresizingMask:18];
  v12 = [(VTUIProximityEnrollTrainingViewController *)self view];
  [v12 addSubview:self->_tryAgainView];

  v13 = [(VTUIProximityTryAgainView *)self->_tryAgainView dismissButton];
  [v13 addTarget:self action:sel__dismiss_ forControlEvents:64];

  objc_initWeak(buf, self);
  v14 = MEMORY[0x277D75D18];
  v15 = [(VTUIProximityEnrollTrainingViewController *)self enrollTrainingView];
  v16 = [(VTUIProximityEnrollTrainingViewController *)self tryAgainView];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __81__VTUIProximityEnrollTrainingViewController__retryInstruction_withStatusMessage___block_invoke;
  v18[3] = &unk_279E546B0;
  objc_copyWeak(&v19, buf);
  v20 = a3;
  [v14 transitionFromView:v15 toView:v16 duration:5242880 options:v18 completion:0.4];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v17 = *MEMORY[0x277D85DE8];
}

void __81__VTUIProximityEnrollTrainingViewController__retryInstruction_withStatusMessage___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 2000000000);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __81__VTUIProximityEnrollTrainingViewController__retryInstruction_withStatusMessage___block_invoke_2;
  v3[3] = &unk_279E54358;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = *(a1 + 40);
  dispatch_after(v2, MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
}

void __81__VTUIProximityEnrollTrainingViewController__retryInstruction_withStatusMessage___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _autoContinueFromRetry:*(a1 + 40)];
}

- (void)_autoContinueFromRetry:(BOOL)a3
{
  [(VTUIProximityEnrollTrainingViewController *)self _hideInstruction];
  if (([(VTUIProximityEnrollTrainingViewController *)self currentTrainingState]& 0x8000000000000000) == 0 && [(VTUIProximityEnrollTrainingViewController *)self currentTrainingState]<= 4)
  {
    [(VTUIProximityEnrollTrainingViewController *)self _updatePageNumberForInstruction:[(VTUIProximityEnrollTrainingViewController *)self currentTrainingState]];
  }

  v5 = MEMORY[0x277D75D18];
  v6 = [(VTUIProximityEnrollTrainingViewController *)self tryAgainView];
  v7 = [(VTUIProximityEnrollTrainingViewController *)self enrollTrainingView];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__VTUIProximityEnrollTrainingViewController__autoContinueFromRetry___block_invoke;
  v8[3] = &unk_279E546D8;
  v8[4] = self;
  v9 = a3;
  [v5 transitionFromView:v6 toView:v7 duration:5242880 options:v8 completion:0.4];
}

void __68__VTUIProximityEnrollTrainingViewController__autoContinueFromRetry___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) currentTrainingState] & 0x8000000000000000) == 0 && objc_msgSend(*(a1 + 32), "currentTrainingState") <= 4)
  {
    [*(a1 + 32) _showTrainingInstruction:objc_msgSend(*(a1 + 32) afterDelay:"currentTrainingState") isRetry:(*(a1 + 40) & 1) == 0 animate:{1, 0.0}];
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "currentTrainingState")}];
    v4 = [v2 stringWithFormat:@"%@", v3];

    v5 = [MEMORY[0x277CEF158] sharedAnalytics];
    v10 = @"currentTrainingState";
    v11[0] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v5 logEventWithType:5511 context:v6];
  }

  v7 = [*(a1 + 32) tryAgainView];

  if (v7)
  {
    v8 = [*(a1 + 32) tryAgainView];
    [v8 removeFromSuperview];

    [*(a1 + 32) setTryAgainView:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_showTrainingInstruction:(int64_t)a3 afterDelay:(double)a4 isRetry:(BOOL)a5 animate:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v54 = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "[VTUIProximityEnrollTrainingViewController _showTrainingInstruction:afterDelay:isRetry:animate:]";
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 1024;
    v51 = v7;
    v52 = 1024;
    v53 = v6;
    _os_log_impl(&dword_2728BC000, v11, OS_LOG_TYPE_DEFAULT, "%s Instruction Number %ld, isRetry %d, animate %d", buf, 0x22u);
  }

  v12 = [(NSArray *)self->_trainingPageInstructions count];
  if ((a3 & 0x8000000000000000) == 0 && v12 > a3)
  {
    v32 = +[VTUIStyle sharedStyle];
    v13 = [(NSArray *)self->_trainingPageInstructions objectAtIndexedSubscript:a3];
    v14 = [v13 objectForKeyedSubscript:@"Instruction"];
    v30 = [v32 VTUIDeviceSpecificString:v14];

    v15 = [v13 objectForKeyedSubscript:@"RetryOnFail"];
    v16 = [v15 BOOLValue];

    v17 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView orbView];
    [v17 animateToOffWithCompletion:0];

    [(VTUIProximityEnrollTrainingViewController *)self _createTrainingManagerIfNeeded];
    if (a3 <= 4)
    {
      v18 = [MEMORY[0x277CEF158] sharedAnalytics];
      v48 = @"instruction";
      v49 = v30;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      [v18 logEventWithType:a3 + 5505 context:v19];
    }

    v20 = [(VTUIAudioHintPlayer *)self->_audioHintPlayer synth];
    [v20 stopSpeaking];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v51) = 0;
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __97__VTUIProximityEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke;
    aBlock[3] = &unk_279E54700;
    objc_copyWeak(v46, &location);
    v46[1] = a3;
    v21 = _Block_copy(aBlock);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __97__VTUIProximityEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_2;
    v40[3] = &unk_279E54750;
    objc_copyWeak(v41, &location);
    v41[1] = a3;
    v42 = v7;
    v43 = v6;
    v40[4] = self;
    v40[5] = buf;
    v44 = v16;
    v22 = _Block_copy(v40);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __97__VTUIProximityEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_148;
    v37[3] = &unk_279E543F8;
    v23 = v21;
    v38 = v23;
    v24 = v22;
    v39 = v24;
    v25 = _Block_copy(v37);
    if ([(VTUIProximityEnrollTrainingViewController *)self _shouldSpeakAudioHint])
    {
      if (v6)
      {
        v26 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView instructionPagedLabel];
        [v26 slideInText:v31 afterDelay:v23 completion:a4];
      }

      else
      {
        v23[2](v23);
      }

      v28 = [(VTUIProximityEnrollTrainingViewController *)self trainingManager];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __97__VTUIProximityEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_2_149;
      v33[3] = &unk_279E54448;
      objc_copyWeak(v36, &location);
      v36[1] = a3;
      v35 = buf;
      v34 = v24;
      [v28 prepareWithCompletion:v33];

      objc_destroyWeak(v36);
    }

    else if (v6)
    {
      v27 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView instructionPagedLabel];
      [v27 slideInText:v31 afterDelay:v25 completion:a4];
    }

    else
    {
      v25[2](v25);
    }

    objc_destroyWeak(v41);
    objc_destroyWeak(v46);
    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __97__VTUIProximityEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _updatePageNumberForInstruction:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void __97__VTUIProximityEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained enrollTrainingView];
    v5 = [v4 orbView];
    [v5 setMode:1];

    v6 = [v3 trainingManager];
    [v6 startRMS];

    if (v3[1188] == 1)
    {
      v7 = [MEMORY[0x277CEF2A8] isSCDAFrameworkEnabled];
      v9 = &OBJC_IVAR___VTUIProximityEnrollTrainingViewController__myriadCoordinator;
      if (v7)
      {
        v9 = &OBJC_IVAR___VTUIProximityEnrollTrainingViewController__scdaCoordinator;
      }

      LODWORD(v8) = 20.0;
      [*&v3[*v9] startAdvertisingForPHSSetupAfterDelay:0.0 maxInterval:v8];
    }

    v10 = *(v3 + 132);
    v11 = *(a1 + 56);
    v12 = [*(a1 + 32) trainingAttemptUUID];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __97__VTUIProximityEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_3;
    v15[3] = &unk_279E54728;
    v13 = *(a1 + 56);
    v16 = *(a1 + 64);
    v17 = *(a1 + 65);
    v14 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v15[5] = v3;
    v15[6] = v14;
    v15[7] = v13;
    *(v3 + 131) = [v10 trainUtterance:v11 + 1 shouldUseASR:1 mhUUID:v12 completionWithResult:v15];
  }
}

void __97__VTUIProximityEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 sessionId];
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = *(a1 + 65);
    v12 = [*(a1 + 32) trainingAttemptUUID];
    v13 = [v12 UUIDString];
    *buf = 136316418;
    v33 = "[VTUIProximityEnrollTrainingViewController _showTrainingInstruction:afterDelay:isRetry:animate:]_block_invoke_3";
    v34 = 2048;
    v35 = v8;
    v36 = 2048;
    v37 = v9;
    v38 = 1024;
    v39 = v10;
    v40 = 1024;
    v41 = v11;
    v42 = 2112;
    v43 = v13;
    _os_log_impl(&dword_2728BC000, v7, OS_LOG_TYPE_DEFAULT, "%s SessionID: %ld, Instruction Number %ld, isRetry %d, animate %d attemptUUID: %@", buf, 0x36u);
  }

  if (*(a1 + 40))
  {
    v14 = [MEMORY[0x277CEF2A8] isSCDAFrameworkEnabled];
    v15 = *(a1 + 40);
    if (v14)
    {
      [v15 scdaCoordinator];
    }

    else
    {
      [v15 myriadCoordinator];
    }
    v16 = ;
    LODWORD(v17) = 0.5;
    [v16 endAdvertisingAfterDelay:v17];

    v18 = [*(a1 + 40) trainingManager];
    [v18 stopRMS];

    v19 = [*(a1 + 40) enrollTrainingView];
    v20 = [v19 orbView];
    [v20 animateToOffWithCompletion:0];

    [*(a1 + 40) _resetIdleTimer];
    if ([*(a1 + 40) interpretSessionManagerResult:v5 forInstruction:{objc_msgSend(*(a1 + 40), "currentTrainingState")}] == 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = 3;
    }

    v22 = [*(a1 + 40) trainingAttemptUUID];
    v23 = *(a1 + 40);
    v24 = v23[134];
    v25 = [v23 spokenLanguageCode];
    v26 = *(a1 + 56);
    v27 = *(a1 + 64);
    v28 = [*(a1 + 40) _shouldSpeakAudioHint];
    BYTE1(v31) = *(*(*(a1 + 48) + 8) + 24);
    LOBYTE(v31) = v28;
    [VTUISELFLogger logSiriSetupPHSEnrollmentTrainingUtteranceAttempted:v22 enrollmentMode:v24 locale:v25 trainingOutcome:v21 pageNumber:v26 isRetry:v27 audioHintNeeded:v31 audioHintSpoken:?];

    v29 = *(a1 + 40);
    if (*(a1 + 66) == 1)
    {
      [v29 setHasRetriedTraining:*(a1 + 64)];
      [*(a1 + 40) _handleTrainingResultForRetryablePhraseWithResult:v5 shouldShowCheckMark:a3];
    }

    else
    {
      [v29 _handleTrainingResultForNonRetryablePhraseWithResult:v5];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __97__VTUIProximityEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_148(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __97__VTUIProximityEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_2_149(uint64_t a1, char a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[VTUIProximityEnrollTrainingViewController _showTrainingInstruction:afterDelay:isRetry:animate:]_block_invoke_2";
      _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Error preparing audio session", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 164);
    v7 = *(a1 + 56);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __97__VTUIProximityEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_150;
    v11[3] = &unk_279E54420;
    objc_copyWeak(&v13, (a1 + 48));
    v10 = *(a1 + 32);
    v8 = v10;
    v12 = v10;
    [v6 speakAudioHint:v7 completion:v11];

    objc_destroyWeak(&v13);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __97__VTUIProximityEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_150(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v6 = *(WeakRetained + 1003);
    v7 = [WeakRetained[164] synth];
    v8 = [v7 isSpeaking];

    v9 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = "[VTUIProximityEnrollTrainingViewController _showTrainingInstruction:afterDelay:isRetry:animate:]_block_invoke";
      v13 = 1024;
      v14 = v8;
      v15 = 1024;
      v16 = v6 ^ 1;
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_2728BC000, v9, OS_LOG_TYPE_DEFAULT, "%s Audio Hint Synthesized. Synthesizer isSpeaking %d, view active: %d, error:%@ ", &v11, 0x22u);
    }

    if (((v8 | v6) & 1) == 0)
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleTrainingResultForNonRetryablePhraseWithResult:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CEF0E8];
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v4 sessionStatus];
    v9 = [v4 audioStatus];
    badMicRetryCount = self->_badMicRetryCount;
    *buf = 136315906;
    v39 = "[VTUIProximityEnrollTrainingViewController _handleTrainingResultForNonRetryablePhraseWithResult:]";
    v40 = 1024;
    *v41 = v8;
    *&v41[4] = 1024;
    *&v41[6] = v9;
    v42 = 2048;
    v43 = badMicRetryCount;
    _os_log_impl(&dword_2728BC000, v7, OS_LOG_TYPE_DEFAULT, "%s session status: %d, audio status: %d, badMicRetryCount: %lu", buf, 0x22u);
  }

  v11 = [(VTUIProximityEnrollTrainingViewController *)self interpretSessionManagerResult:v4 forInstruction:self->_currentTrainingState];
  v12 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "[VTUIProximityEnrollTrainingViewController _handleTrainingResultForNonRetryablePhraseWithResult:]";
    v40 = 2048;
    *v41 = v11;
    _os_log_impl(&dword_2728BC000, v12, OS_LOG_TYPE_DEFAULT, "%s digestedStatus: %ld", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  if (v11 > 6)
  {
    if (v11 > 8)
    {
      if (v11 == 9)
      {
        ++self->_digitalZerosRetryCount;
        v27 = [(VTUIProximityEnrollTrainingViewController *)self _retryStringForStatus:9];
        [(VTUIProximityEnrollTrainingViewController *)self _retryInstruction:1 withStatusMessage:v27];

        goto LABEL_28;
      }

      if (v11 == 10)
      {
        ++self->_cannotHearRetryCount;
        v22 = [(VTUIProximityEnrollTrainingViewController *)self _retryStringForStatus:10];
        [(VTUIProximityEnrollTrainingViewController *)self _retryInstruction:1 withStatusMessage:v22];

        goto LABEL_28;
      }

      goto LABEL_25;
    }

    if (v11 != 7)
    {
      consecutiveTimeoutCount = self->_consecutiveTimeoutCount;
      self->_consecutiveTimeoutCount = consecutiveTimeoutCount + 1;
      if (consecutiveTimeoutCount >= 1)
      {
        self->_shouldTurnOnMyriad = 0;
      }

      v17 = [(VTUIProximityEnrollTrainingViewController *)self _retryStringForStatus:8];
      [(VTUIProximityEnrollTrainingViewController *)self _retryInstruction:1 withStatusMessage:v17];
    }
  }

  else
  {
    if (v11 <= 4)
    {
      if (v11 == 1)
      {
        self->_consecutiveTimeoutCount = 0;
        self->_shouldTurnOnMyriad = 1;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __98__VTUIProximityEnrollTrainingViewController__handleTrainingResultForNonRetryablePhraseWithResult___block_invoke_6;
        v31[3] = &unk_279E541F8;
        objc_copyWeak(&v32, buf);
        [(VTUIProximityEnrollTrainingViewController *)self _animateCheckMark:1 completion:v31];
        objc_destroyWeak(&v32);
        goto LABEL_28;
      }

      if (v11 == 4)
      {
        [(VTUIProximityEnrollTrainingViewController *)self _setPHSEnrollmentPrefEnabled:0];
        v13 = [MEMORY[0x277D653F8] sharedInstance];
        v14 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
        v15 = [v13 deleteUserVoiceProfile:v14];

        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __98__VTUIProximityEnrollTrainingViewController__handleTrainingResultForNonRetryablePhraseWithResult___block_invoke;
        v37[3] = &unk_279E54220;
        v37[4] = self;
        [(VTUIProximityEnrollTrainingViewController *)self _cleanupTrainingManagerWithCompletion:v37 status:4];
        goto LABEL_28;
      }

LABEL_25:
      v28 = [(VTUIProximityEnrollTrainingViewController *)self _retryStringForStatus:0];
      [(VTUIProximityEnrollTrainingViewController *)self _retryInstruction:1 withStatusMessage:v28];

      goto LABEL_28;
    }

    if (v11 == 5)
    {
      v23 = self->_badMicRetryCount + 1;
      self->_badMicRetryCount = v23;
      if (v23 < 6)
      {
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __98__VTUIProximityEnrollTrainingViewController__handleTrainingResultForNonRetryablePhraseWithResult___block_invoke_5;
        v33[3] = &unk_279E54220;
        v33[4] = self;
        [(VTUIProximityEnrollTrainingViewController *)self _showBadMicAlertCompletion:v33];
      }

      else
      {
        [(VTUIProximityEnrollTrainingViewController *)self _setPHSEnrollmentPrefEnabled:0];
        v24 = [MEMORY[0x277D653F8] sharedInstance];
        v25 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
        v26 = [v24 deleteUserVoiceProfile:v25];

        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __98__VTUIProximityEnrollTrainingViewController__handleTrainingResultForNonRetryablePhraseWithResult___block_invoke_4;
        v34[3] = &unk_279E54220;
        v34[4] = self;
        [(VTUIProximityEnrollTrainingViewController *)self _cleanupTrainingManagerWithCompletion:v34 status:5];
      }
    }

    else
    {
      v18 = self->_AVVCRetryCount + 1;
      self->_AVVCRetryCount = v18;
      if (v18 < 6)
      {
        v29 = dispatch_time(0, 1000000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __98__VTUIProximityEnrollTrainingViewController__handleTrainingResultForNonRetryablePhraseWithResult___block_invoke_3;
        block[3] = &unk_279E54220;
        block[4] = self;
        dispatch_after(v29, MEMORY[0x277D85CD0], block);
      }

      else
      {
        [(VTUIProximityEnrollTrainingViewController *)self _setPHSEnrollmentPrefEnabled:0];
        v19 = [MEMORY[0x277D653F8] sharedInstance];
        v20 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
        v21 = [v19 deleteUserVoiceProfile:v20];

        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __98__VTUIProximityEnrollTrainingViewController__handleTrainingResultForNonRetryablePhraseWithResult___block_invoke_2;
        v36[3] = &unk_279E54220;
        v36[4] = self;
        [(VTUIProximityEnrollTrainingViewController *)self _cleanupTrainingManagerWithCompletion:v36 status:6];
      }
    }
  }

LABEL_28:
  objc_destroyWeak(buf);

  v30 = *MEMORY[0x277D85DE8];
}

void __98__VTUIProximityEnrollTrainingViewController__handleTrainingResultForNonRetryablePhraseWithResult___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _advanceState];
}

- (void)_handleTrainingResultForRetryablePhraseWithResult:(id)a3 shouldShowCheckMark:(BOOL)a4
{
  v4 = a4;
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CEF0E8];
  v8 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v6 sessionStatus];
    v11 = [v6 audioStatus];
    badMicRetryCount = self->_badMicRetryCount;
    *buf = 136316162;
    v41 = "[VTUIProximityEnrollTrainingViewController _handleTrainingResultForRetryablePhraseWithResult:shouldShowCheckMark:]";
    v42 = 1024;
    *v43 = v10;
    *&v43[4] = 1024;
    *&v43[6] = v11;
    v44 = 1024;
    v45 = v4;
    v46 = 2048;
    v47 = badMicRetryCount;
    _os_log_impl(&dword_2728BC000, v9, OS_LOG_TYPE_DEFAULT, "%s session status: %d, audio status: %d, shouldShowCheckMark:%d, badMicRetryCount: %lu", buf, 0x28u);
  }

  v13 = [(VTUIProximityEnrollTrainingViewController *)self interpretSessionManagerResult:v6 forInstruction:self->_currentTrainingState];
  v14 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v41 = "[VTUIProximityEnrollTrainingViewController _handleTrainingResultForRetryablePhraseWithResult:shouldShowCheckMark:]";
    v42 = 2048;
    *v43 = v13;
    _os_log_impl(&dword_2728BC000, v14, OS_LOG_TYPE_DEFAULT, "%s digestedStatus: %ld", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  if (v13 <= 5)
  {
    if (v13 <= 3)
    {
      if (v13 == 2)
      {
        self->_consecutiveTimeoutCount = 0;
        self->_shouldTurnOnMyriad = 1;
        [(VTUIAnalytics *)self->_analyticsEvent setAsrError:[(VTUIAnalytics *)self->_analyticsEvent asrError]+ 1];
        if (!self->_hasRetriedTraining)
        {
          [(VTUIProximityEnrollTrainingViewController *)self _retryInstruction:0 withStatusMessage:0];
          goto LABEL_34;
        }
      }

      else
      {
        if (v13 != 3)
        {
          goto LABEL_21;
        }

        self->_consecutiveTimeoutCount = 0;
        self->_shouldTurnOnMyriad = 1;
        if (v4)
        {
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __115__VTUIProximityEnrollTrainingViewController__handleTrainingResultForRetryablePhraseWithResult_shouldShowCheckMark___block_invoke_6;
          v33[3] = &unk_279E541F8;
          objc_copyWeak(&v34, buf);
          [(VTUIProximityEnrollTrainingViewController *)self _animateCheckMark:1 completion:v33];
          objc_destroyWeak(&v34);
          goto LABEL_34;
        }
      }

      [(VTUIProximityEnrollTrainingViewController *)self _advanceState];
      goto LABEL_34;
    }

    if (v13 == 4)
    {
      [(VTUIProximityEnrollTrainingViewController *)self _setPHSEnrollmentPrefEnabled:0];
      v21 = [MEMORY[0x277D653F8] sharedInstance];
      v22 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
      v23 = [v21 deleteUserVoiceProfile:v22];

      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __115__VTUIProximityEnrollTrainingViewController__handleTrainingResultForRetryablePhraseWithResult_shouldShowCheckMark___block_invoke;
      v39[3] = &unk_279E54220;
      v39[4] = self;
      [(VTUIProximityEnrollTrainingViewController *)self _cleanupTrainingManagerWithCompletion:v39 status:4];
    }

    else
    {
      v16 = self->_badMicRetryCount + 1;
      self->_badMicRetryCount = v16;
      if (v16 < 6)
      {
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __115__VTUIProximityEnrollTrainingViewController__handleTrainingResultForRetryablePhraseWithResult_shouldShowCheckMark___block_invoke_5;
        v35[3] = &unk_279E54220;
        v35[4] = self;
        [(VTUIProximityEnrollTrainingViewController *)self _showBadMicAlertCompletion:v35];
      }

      else
      {
        [(VTUIProximityEnrollTrainingViewController *)self _setPHSEnrollmentPrefEnabled:0];
        v17 = [MEMORY[0x277D653F8] sharedInstance];
        v18 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
        v19 = [v17 deleteUserVoiceProfile:v18];

        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __115__VTUIProximityEnrollTrainingViewController__handleTrainingResultForRetryablePhraseWithResult_shouldShowCheckMark___block_invoke_4;
        v36[3] = &unk_279E54220;
        v36[4] = self;
        [(VTUIProximityEnrollTrainingViewController *)self _cleanupTrainingManagerWithCompletion:v36 status:5];
      }
    }
  }

  else if (v13 <= 7)
  {
    if (v13 == 6)
    {
      v26 = self->_AVVCRetryCount + 1;
      self->_AVVCRetryCount = v26;
      if (v26 < 6)
      {
        v31 = dispatch_time(0, 1000000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __115__VTUIProximityEnrollTrainingViewController__handleTrainingResultForRetryablePhraseWithResult_shouldShowCheckMark___block_invoke_3;
        block[3] = &unk_279E54220;
        block[4] = self;
        dispatch_after(v31, MEMORY[0x277D85CD0], block);
      }

      else
      {
        [(VTUIProximityEnrollTrainingViewController *)self _setPHSEnrollmentPrefEnabled:0];
        v27 = [MEMORY[0x277D653F8] sharedInstance];
        v28 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
        v29 = [v27 deleteUserVoiceProfile:v28];

        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __115__VTUIProximityEnrollTrainingViewController__handleTrainingResultForRetryablePhraseWithResult_shouldShowCheckMark___block_invoke_2;
        v38[3] = &unk_279E54220;
        v38[4] = self;
        [(VTUIProximityEnrollTrainingViewController *)self _cleanupTrainingManagerWithCompletion:v38 status:6];
      }
    }
  }

  else
  {
    if (v13 != 8)
    {
      if (v13 == 9)
      {
        ++self->_digitalZerosRetryCount;
        v30 = [(VTUIProximityEnrollTrainingViewController *)self _retryStringForStatus:9];
        [(VTUIProximityEnrollTrainingViewController *)self _retryInstruction:1 withStatusMessage:v30];

        goto LABEL_34;
      }

      if (v13 == 10)
      {
        ++self->_cannotHearRetryCount;
        v15 = [(VTUIProximityEnrollTrainingViewController *)self _retryStringForStatus:10];
        [(VTUIProximityEnrollTrainingViewController *)self _retryInstruction:1 withStatusMessage:v15];

        goto LABEL_34;
      }

LABEL_21:
      [(VTUIAnalytics *)self->_analyticsEvent setVtError:[(VTUIAnalytics *)self->_analyticsEvent vtError]+ 1];
      v20 = [(VTUIProximityEnrollTrainingViewController *)self _retryStringForStatus:0];
      [(VTUIProximityEnrollTrainingViewController *)self _retryInstruction:1 withStatusMessage:v20];

      goto LABEL_34;
    }

    consecutiveTimeoutCount = self->_consecutiveTimeoutCount;
    self->_consecutiveTimeoutCount = consecutiveTimeoutCount + 1;
    if (consecutiveTimeoutCount >= 1)
    {
      self->_shouldTurnOnMyriad = 0;
    }

    [(VTUIAnalytics *)self->_analyticsEvent setVtError:[(VTUIAnalytics *)self->_analyticsEvent vtError]+ 1];
    v25 = [(VTUIProximityEnrollTrainingViewController *)self _retryStringForStatus:8];
    [(VTUIProximityEnrollTrainingViewController *)self _retryInstruction:1 withStatusMessage:v25];
  }

LABEL_34:
  objc_destroyWeak(buf);

  v32 = *MEMORY[0x277D85DE8];
}

void __115__VTUIProximityEnrollTrainingViewController__handleTrainingResultForRetryablePhraseWithResult_shouldShowCheckMark___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _advanceState];
}

- (void)_showBadMicAlertCompletion:(id)a3
{
  v19 = a3;
  v20 = [(VTUIProximityEnrollTrainingViewController *)self interpretAudioSource:[(SSRVTUITrainingManager *)self->_trainingManager audioSource]];
  v4 = MEMORY[0x277D75110];
  v5 = MEMORY[0x277CCACA8];
  v6 = +[VTUIStringsHelper sharedStringsHelper];
  v7 = [v6 uiLocalizedStringForKey:@"ALERT_TITLE_BAD_MIC"];
  v8 = +[VTUIStringsHelper sharedStringsHelper];
  v9 = [v8 uiLocalizedStringForKey:v20];
  v10 = [v5 stringWithFormat:v7, v9];
  v11 = +[VTUIStringsHelper sharedStringsHelper];
  v12 = [v11 uiLocalizedStringForKey:@"ALERT_MAIN_BAD_MIC"];
  v13 = [v4 alertControllerWithTitle:v10 message:v12 preferredStyle:1];

  v14 = MEMORY[0x277D750F8];
  v15 = +[VTUIStringsHelper sharedStringsHelper];
  v16 = [v15 uiLocalizedStringForKey:@"ALERT_BUTTON_BAD_MIC"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __72__VTUIProximityEnrollTrainingViewController__showBadMicAlertCompletion___block_invoke;
  v21[3] = &unk_279E542E8;
  v22 = v19;
  v17 = v19;
  v18 = [v14 actionWithTitle:v16 style:0 handler:v21];

  [v13 addAction:v18];
  [(VTUIProximityEnrollTrainingViewController *)self presentViewController:v13 animated:1 completion:0];
}

uint64_t __72__VTUIProximityEnrollTrainingViewController__showBadMicAlertCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_showUnsupportedLocaleAlertCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D75110];
  v6 = +[VTUIStringsHelper sharedStringsHelper];
  v7 = [v6 uiLocalizedStringForKey:@"ALERT_TITLE_UNSUPPORTED_LOCALE"];
  v8 = +[VTUIStringsHelper sharedStringsHelper];
  v9 = [v8 uiLocalizedStringForKey:@"ALERT_MAIN_UNSUPPORTED_LOCALE"];
  v10 = [v5 alertControllerWithTitle:v7 message:v9 preferredStyle:1];

  v11 = MEMORY[0x277D750F8];
  v12 = +[VTUIStringsHelper sharedStringsHelper];
  v13 = [v12 uiLocalizedStringForKey:@"ALERT_BUTTON_UNSUPPORTED_LOCALE"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__VTUIProximityEnrollTrainingViewController__showUnsupportedLocaleAlertCompletion___block_invoke;
  v16[3] = &unk_279E542E8;
  v17 = v4;
  v14 = v4;
  v15 = [v11 actionWithTitle:v13 style:0 handler:v16];

  [v10 addAction:v15];
  [(VTUIProximityEnrollTrainingViewController *)self presentViewController:v10 animated:1 completion:0];
}

uint64_t __83__VTUIProximityEnrollTrainingViewController__showUnsupportedLocaleAlertCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_updatePageNumberForInstruction:(int64_t)a3
{
  v14 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v5 = MEMORY[0x277CCACA8];
  v6 = +[VTUIStringsHelper sharedStringsHelper];
  v7 = [v6 uiLocalizedStringForKey:@"PAGE_PROGRESS_FORMAT"];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3 + 1];
  v9 = [v14 stringFromNumber:v8];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](self->_trainingPageInstructions, "count")}];
  v11 = [v14 stringFromNumber:v10];
  v12 = [v5 stringWithFormat:v7, v9, v11];

  v13 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView pageLabel];
  [v13 setText:v12];
}

- (void)_showStatusMessage:(id)a3 afterDelay:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = dispatch_time(0, (a4 * 1000000000.0));
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__VTUIProximityEnrollTrainingViewController__showStatusMessage_afterDelay_completion___block_invoke;
  v13[3] = &unk_279E54578;
  objc_copyWeak(&v16, &location);
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_after(v10, MEMORY[0x277D85CD0], v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __86__VTUIProximityEnrollTrainingViewController__showStatusMessage_afterDelay_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = [a1[4] length];
    v4 = [WeakRetained[150] statusLabel];
    v5 = v4;
    if (v3)
    {
      [v4 setAlpha:0.0];

      v6 = [WeakRetained[150] statusLabel];
      [v6 setText:a1[4]];

      v7 = MEMORY[0x277D75D18];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __86__VTUIProximityEnrollTrainingViewController__showStatusMessage_afterDelay_completion___block_invoke_2;
      v18[3] = &unk_279E54220;
      v18[4] = WeakRetained;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __86__VTUIProximityEnrollTrainingViewController__showStatusMessage_afterDelay_completion___block_invoke_3;
      v16[3] = &unk_279E54778;
      v17 = a1[5];
      [v7 animateWithDuration:v18 animations:v16 completion:0.3];
      v8 = v17;
LABEL_6:

      goto LABEL_7;
    }

    [v4 alpha];
    v10 = v9;

    if (v10 > 0.0)
    {
      v11 = MEMORY[0x277D75D18];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __86__VTUIProximityEnrollTrainingViewController__showStatusMessage_afterDelay_completion___block_invoke_4;
      v15[3] = &unk_279E54220;
      v15[4] = WeakRetained;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __86__VTUIProximityEnrollTrainingViewController__showStatusMessage_afterDelay_completion___block_invoke_5;
      v13[3] = &unk_279E547A0;
      v13[4] = WeakRetained;
      v14 = a1[5];
      [v11 animateWithDuration:v15 animations:v13 completion:0.3];
      v8 = v14;
      goto LABEL_6;
    }

    v12 = a1[5];
    if (v12)
    {
      v12[2]();
    }
  }

LABEL_7:
}

void __86__VTUIProximityEnrollTrainingViewController__showStatusMessage_afterDelay_completion___block_invoke_2(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1200) statusLabel];
  [v1 setAlpha:1.0];
}

uint64_t __86__VTUIProximityEnrollTrainingViewController__showStatusMessage_afterDelay_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __86__VTUIProximityEnrollTrainingViewController__showStatusMessage_afterDelay_completion___block_invoke_4(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1200) statusLabel];
  [v1 setAlpha:0.0];
}

uint64_t __86__VTUIProximityEnrollTrainingViewController__showStatusMessage_afterDelay_completion___block_invoke_5(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1200) statusLabel];
  [v2 setText:0];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_hideInstruction
{
  v3 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView instructionPagedLabel];
  [v3 clear];

  v4 = [(VTUIProximityEnrollTrainingViewController *)self navigationItem];
  [v4 setTitle:0];
}

- (void)_createTrainingManagerIfNeeded
{
  if (!self->_trainingManager)
  {
    v3 = [MEMORY[0x277D653E0] trainingManagerWithLocaleID:self->_spokenLanguageCode withAppDomain:*MEMORY[0x277D65458]];
    trainingManager = self->_trainingManager;
    self->_trainingManager = v3;

    v5 = self->_trainingManager;

    [(SSRVTUITrainingManager *)v5 setDelegate:self];
  }
}

- (void)_cleanupTrainingManagerWithCompletion:(id)a3 status:(int64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = v7;
    v10 = [v8 numberWithInteger:a4];
    v12 = 136315394;
    v13 = "[VTUIProximityEnrollTrainingViewController _cleanupTrainingManagerWithCompletion:status:]";
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_2728BC000, v9, OS_LOG_TYPE_DEFAULT, "%s %@", &v12, 0x16u);
  }

  [(VTUIProximityEnrollTrainingViewController *)self _cleanupTrainingManagerWithCompletion:v6];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_cleanupTrainingManagerWithCompletion:(id)a3
{
  v4 = a3;
  trainingManager = self->_trainingManager;
  if (trainingManager)
  {
    v7 = v4;
    [(SSRVTUITrainingManager *)trainingManager cancelTrainingForID:self->_sessionId];
    [(SSRVTUITrainingManager *)self->_trainingManager stopRMS];
    v6 = [(SSRVTUITrainingManager *)self->_trainingManager cleanupWithCompletion:v7];
  }

  else if (v4)
  {
    v4[2](v4);
  }

  MEMORY[0x2821F96F8]();
}

- (void)fetchaudioSessionID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->audioSessionID)
  {
    v5 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      audioSessionID = self->audioSessionID;
      *buf = 136315394;
      v13 = "[VTUIProximityEnrollTrainingViewController fetchaudioSessionID:]";
      v14 = 1024;
      v15 = audioSessionID;
      _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Early return audioSessionId: %u", buf, 0x12u);
    }

    v4[2](v4, self->audioSessionID);
  }

  else
  {
    if (!self->_trainingManager)
    {
      [(VTUIProximityEnrollTrainingViewController *)self _createTrainingManagerIfNeeded];
    }

    objc_initWeak(buf, self);
    trainingManager = self->_trainingManager;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__VTUIProximityEnrollTrainingViewController_fetchaudioSessionID___block_invoke;
    v9[3] = &unk_279E544C0;
    objc_copyWeak(&v11, buf);
    v10 = v4;
    [(SSRVTUITrainingManager *)trainingManager getAudioSessionID:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __65__VTUIProximityEnrollTrainingViewController_fetchaudioSessionID___block_invoke(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[VTUIProximityEnrollTrainingViewController fetchaudioSessionID:]_block_invoke";
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Setting audioSessionID %u", buf, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__VTUIProximityEnrollTrainingViewController_fetchaudioSessionID___block_invoke_174;
  block[3] = &unk_279E54498;
  block[4] = WeakRetained;
  v9 = a2;
  v8 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __65__VTUIProximityEnrollTrainingViewController_fetchaudioSessionID___block_invoke_174(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    *(v1 + 1168) = *(a1 + 48);
  }

  return (*(*(a1 + 40) + 16))();
}

- (id)interpretAudioSource:(unint64_t)a3
{
  if (a3 - 2 > 3)
  {
    return @"ALERT_HEADPHONE_BAD_MIC";
  }

  else
  {
    return off_279E54830[a3 - 2];
  }
}

- (void)_gatherAudioDeviceInfo
{
  objc_initWeak(&location, self);
  settingsQueue = self->_settingsQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__VTUIProximityEnrollTrainingViewController__gatherAudioDeviceInfo__block_invoke;
  v4[3] = &unk_279E541F8;
  objc_copyWeak(&v5, &location);
  dispatch_async(settingsQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __67__VTUIProximityEnrollTrainingViewController__gatherAudioDeviceInfo__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[139] getConnectedBluetoothDeviceInfoArrayWithCompletion:&__block_literal_global_0];
    WeakRetained = v2;
  }
}

void __67__VTUIProximityEnrollTrainingViewController__gatherAudioDeviceInfo__block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = a2;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 productID];
        v9 = +[VTUIStyle sharedStyle];
        v10 = [v9 audioProductID];

        if (v10 == v8)
        {
          v11 = [v7 name];
          v12 = +[VTUIStyle sharedStyle];
          [v12 setAudioAccessoryName:v11];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
}

- (int64_t)interpretSessionManagerResult:(id)a3 forInstruction:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 sessionStatus];
  v8 = [v6 audioStatus];

  if (v7 - 4 < 3)
  {
    return v7 + 1;
  }

  if (a4 < 0 || (-[VTUIProximityEnrollTrainingViewController trainingPageInstructions](self, "trainingPageInstructions"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v11 <= a4))
  {
    v15 = 0;
  }

  else
  {
    v12 = [(VTUIProximityEnrollTrainingViewController *)self trainingPageInstructions];
    v13 = [v12 objectAtIndexedSubscript:a4];

    v14 = [v13 objectForKeyedSubscript:@"RetryOnFail"];
    v15 = [v14 BOOLValue];
  }

  if (v7 == 3)
  {
    return 4;
  }

  if (v15)
  {
    if (v8 == 1)
    {
      return 9;
    }

    else if (v8 == 2)
    {
      return 10;
    }

    else if (v7 >= 8)
    {
      return 0;
    }

    else
    {
      return qword_2729340C8[v7];
    }
  }

  else
  {
    v16 = 8;
    if (v7 != 7)
    {
      v16 = 1;
    }

    if (v7 == 2)
    {
      return 0;
    }

    else
    {
      return v16;
    }
  }
}

- (id)_getSetupModeString
{
  v2 = +[VTUIStyle sharedStyle];
  v3 = [v2 isBuddyOrFollowUp];

  if (v3)
  {
    return @"buddy";
  }

  else
  {
    return @"prefs";
  }
}

- (void)VTUITrainingManagerFeedLevel:(float)a3
{
  v5 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView orbView];
  *&v4 = a3;
  [v5 setPowerLevel:v4];
}

- (void)aboutTapped:(id)a3
{
  v4 = a3;
  [(VTUIAnalytics *)self->_analyticsEvent setAboutViewShown:[(VTUIAnalytics *)self->_analyticsEvent aboutViewShown]+ 1];
  aboutTappedSender = self->_aboutTappedSender;
  self->_aboutTappedSender = v4;

  v6 = [(VTUIProximityEnrollTrainingViewController *)self delegate];
  [v6 showLearnMore];
}

- (void)siriLanguageSpokenLanguageCodeDidChange:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [a3 spokenLanguageCode];
  spokenLanguageCode = self->_spokenLanguageCode;
  self->_spokenLanguageCode = v4;

  [(VTUIAnalytics *)self->_analyticsEvent setLanguageCode:self->_spokenLanguageCode];
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = self->_spokenLanguageCode;
    v8 = v6;
    v9 = +[VTUIStringsHelper sharedStringsHelper];
    v10 = [v9 heySiriTriggerPhrase];
    v15 = 136315650;
    v16 = "[VTUIProximityEnrollTrainingViewController siriLanguageSpokenLanguageCodeDidChange:]";
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_2728BC000, v8, OS_LOG_TYPE_DEFAULT, "%s VoiceTriggerUI: Spoken Language Code changed: %@. (Trigger: '%@')", &v15, 0x20u);
  }

  [(SSRVTUITrainingManager *)self->_trainingManager setLocaleIdentifier:self->_spokenLanguageCode];
  v11 = +[VTUIStringsHelper sharedStringsHelper];
  [v11 setSiriLanguage:self->_spokenLanguageCode];

  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_spokenLanguageCode;
    v15 = 136315394;
    v16 = "[VTUIProximityEnrollTrainingViewController siriLanguageSpokenLanguageCodeDidChange:]";
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_2728BC000, v12, OS_LOG_TYPE_DEFAULT, "%s Audio Hint player setLanguage:%@", &v15, 0x16u);
  }

  [(VTUIAudioHintPlayer *)self->_audioHintPlayer setLanguage:self->_spokenLanguageCode];
  [(VTUIProximityEnrollTrainingViewController *)self _checkForPHSCloudDataIfNecessary:self->_spokenLanguageCode];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)skipAssistant:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_isEnablementConfigurationLoading)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[VTUIProximityEnrollTrainingViewController skipAssistant:]";
      _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Skip Assistant requested while Enablement configuration loading", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__VTUIProximityEnrollTrainingViewController_skipAssistant___block_invoke;
    v16[3] = &unk_279E544E8;
    objc_copyWeak(&v18, buf);
    v17 = v4;
    [(VTUIProximityEnrollTrainingViewController *)self _setIntroViewActionOnEnablementConfigurationDidLoad:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  else
  {
    v6 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[VTUIProximityEnrollTrainingViewController skipAssistant:]";
      _os_log_impl(&dword_2728BC000, v6, OS_LOG_TYPE_DEFAULT, "%s Skipping Setup / Assistant", buf, 0xCu);
    }

    v7 = +[VTUIStyle sharedStyle];
    v8 = [v7 isBuddyOrFollowUp];

    if (v8)
    {
      v9 = +[VTUIStyle sharedStyle];
      v10 = [v9 enrollmentMode] == 0;

      if (v10)
      {
        [(VTUIAnalytics *)self->_analyticsEvent setSkippedFromIntroAOP:[(VTUIAnalytics *)self->_analyticsEvent skippedFromIntroAOP]+ 1];
      }

      else
      {
        v11 = +[VTUIStyle sharedStyle];
        v12 = [v11 enrollmentMode] == 3;

        if (v12)
        {
          [(VTUIAnalytics *)self->_analyticsEvent setSkippedFromIntroNonAOP:[(VTUIAnalytics *)self->_analyticsEvent skippedFromIntroNonAOP]+ 1];
        }
      }
    }

    v13 = +[VTUIStyle sharedStyle];
    v14 = [v13 enrollmentMode] == 3;

    if (!v14)
    {
      [(VTUIProximityEnrollTrainingViewController *)self _setPHSEnrollmentPrefEnabled:0];
    }

    [(VTUIProximityEnrollTrainingViewController *)self skipTraining:v4];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __59__VTUIProximityEnrollTrainingViewController_skipAssistant___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained skipAssistant:*(a1 + 32)];

  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[VTUIProximityEnrollTrainingViewController skipAssistant:]_block_invoke";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Skip Assistant processed after Enablement configuration loaded", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)cancelTraining
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "[VTUIProximityEnrollTrainingViewController cancelTraining]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_INFO, "%s Cancel Training", buf, 0xCu);
  }

  [(VTUIAudioHintPlayer *)self->_audioHintPlayer cleanup];
  v4 = [MEMORY[0x277CEF158] sharedAnalytics];
  v10 = @"currentTrainingState";
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_currentTrainingState];
  v7 = [v5 stringWithFormat:@"%@", v6];
  v11 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v4 logEventWithType:5504 context:v8];

  [(VTUIAnalytics *)self->_analyticsEvent setVoiceTrainingCancelledStep:LODWORD(self->_currentTrainingState)];
  [(VTUIAnalytics *)self->_analyticsEvent setVoiceTrainingCancelled:[(VTUIAnalytics *)self->_analyticsEvent voiceTrainingCancelled]+ 1];
  [VTUISELFLogger logSiriSetupPHSEnrollmentUICompleted:self->_trainingAttemptUUID enrollmentMode:self->_enrollmentMode locale:self->_spokenLanguageCode enrollmentSessionOutcome:2 pageNumber:LODWORD(self->_currentTrainingState)];
  [(VTUIProximityEnrollTrainingViewController *)self _cleanupHelper];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)skipTraining:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[VTUIProximityEnrollTrainingViewController skipTraining:]";
    _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_INFO, "%s Skipping Training", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CEF158] sharedAnalytics];
  v18 = @"currentTrainingState";
  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_currentTrainingState];
  v9 = [v7 stringWithFormat:@"%@", v8];
  v19 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v6 logEventWithType:5510 context:v10];

  self->_hasSkippedTraining = 1;
  trainingAttemptUUID = self->_trainingAttemptUUID;
  enrollmentMode = self->_enrollmentMode;
  spokenLanguageCode = self->_spokenLanguageCode;
  currentTrainingState_low = LODWORD(self->_currentTrainingState);
  LOWORD(v17) = [(VTUIProximityEnrollTrainingViewController *)self _shouldSpeakAudioHint];
  [VTUISELFLogger logSiriSetupPHSEnrollmentTrainingUtteranceAttempted:trainingAttemptUUID enrollmentMode:enrollmentMode locale:spokenLanguageCode trainingOutcome:2 pageNumber:currentTrainingState_low isRetry:0 audioHintNeeded:v17 audioHintSpoken:?];
  [(VTUIProximityEnrollTrainingViewController *)self _cleanupHelper];
  v15 = [MEMORY[0x277CEF368] sharedPreferences];
  LODWORD(trainingAttemptUUID) = [v15 assistantIsEnabled];

  if (trainingAttemptUUID && [(VTUIProximityEnrollTrainingViewController *)self _shouldShowSiriDataSharingOptInView])
  {
    [(VTUIProximityEnrollTrainingViewController *)self _showSiriDataSharingOptInView];
  }

  else
  {
    [(VTUIProximityEnrollTrainingViewController *)self _skipSetup];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_skipSetup
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CEF368] sharedPreferences];
  v4 = [v3 assistantIsEnabled];

  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    enablementConfiguration = self->_enablementConfiguration;
    v11 = 136315650;
    v12 = "[VTUIProximityEnrollTrainingViewController _skipSetup]";
    v13 = 1024;
    v14 = v4;
    v15 = 2112;
    v16 = enablementConfiguration;
    _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Ending setup, assistant enabled %d enablementConfiguration:%@", &v11, 0x1Cu);
  }

  if ((v4 & 1) == 0)
  {
    v7 = self->_enablementConfiguration;
    if (v7)
    {
      v8 = [(AFEnablementConfiguration *)v7 completionLoggingBlock];
      v8[2](v8, 0);
    }
  }

  v9 = [(VTUIProximityEnrollTrainingViewController *)self delegate];
  [v9 skipSetup];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_dismiss:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = [(VTUIProximityEnrollTrainingViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[VTUIProximityEnrollTrainingViewController _dismiss:]";
      _os_log_impl(&dword_2728BC000, v6, OS_LOG_TYPE_INFO, "%s Dismissing", buf, 0xCu);
    }

    v7 = [MEMORY[0x277CEF158] sharedAnalytics];
    v26 = @"currentTrainingState";
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_currentTrainingState];
    v10 = [v8 stringWithFormat:@"%@", v9];
    v27[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [v7 logEventWithType:5512 context:v11];

    [(VTUIProximityEnrollTrainingViewController *)self _cleanupHelper];
    v12 = [MEMORY[0x277CEF368] sharedPreferences];
    v13 = [v12 assistantIsEnabled];

    v14 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      enablementConfiguration = self->_enablementConfiguration;
      *buf = 136315650;
      v21 = "[VTUIProximityEnrollTrainingViewController _dismiss:]";
      v22 = 1024;
      v23 = v13;
      v24 = 2112;
      v25 = enablementConfiguration;
      _os_log_impl(&dword_2728BC000, v14, OS_LOG_TYPE_DEFAULT, "%s Ending setup, assistant enabled %d enablementConfiguration:%@", buf, 0x1Cu);
    }

    if ((v13 & 1) == 0)
    {
      v16 = self->_enablementConfiguration;
      if (v16)
      {
        v17 = [(AFEnablementConfiguration *)v16 completionLoggingBlock];
        v17[2](v17, 0);
      }
    }

    v18 = [(VTUIProximityEnrollTrainingViewController *)self delegate];
    [v18 dismissSetup];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_cleanupHelper
{
  v3 = [MEMORY[0x277CEF2A8] isSCDAFrameworkEnabled];
  v4 = &OBJC_IVAR___VTUIProximityEnrollTrainingViewController__myriadCoordinator;
  if (v3)
  {
    v4 = &OBJC_IVAR___VTUIProximityEnrollTrainingViewController__scdaCoordinator;
  }

  [*(&self->super.super.super.isa + *v4) resetStateMachine];
  [(VTUIProximityEnrollTrainingViewController *)self _resetEnrollment];
  [(VTUIProximityEnrollTrainingViewController *)self _cleanupTrainingManagerWithCompletion:0];

  [(VTUIProximityEnrollTrainingViewController *)self setTrainingAttemptUUID:0];
}

- (void)_setLanguageOptionsAndContinue
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __75__VTUIProximityEnrollTrainingViewController__setLanguageOptionsAndContinue__block_invoke;
  v3[3] = &unk_279E544E8;
  objc_copyWeak(&v4, &location);
  v3[4] = self;
  [(VTUIProximityEnrollTrainingViewController *)self _warnForLanguageCompatibilityIfNecessary:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __75__VTUIProximityEnrollTrainingViewController__setLanguageOptionsAndContinue__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    [WeakRetained[152] removeFromSuperview];
    v3 = v12[152];
    v12[152] = 0;

    WeakRetained = v12;
    if (!v12[160])
    {
      v4 = [v12 view];
      v5 = [VTUIProximityEnrollmentLanguageOptionsView alloc];
      v6 = [v12 view];
      [v6 bounds];
      v7 = [(VTUIProximityEnrollmentLanguageOptionsView *)v5 initWithFrame:v12[129] languageOptions:?];
      v8 = v12[160];
      v12[160] = v7;

      [v12[160] setAutoresizingMask:18];
      [v4 addSubview:v12[160]];
      v9 = [v12[160] continueButton];
      [v9 addTarget:*(a1 + 32) action:sel__processLanguageSelectionAction_ forControlEvents:64];

      v10 = [v12[160] dismissButton];
      [v10 addTarget:*(a1 + 32) action:sel__dismiss_ forControlEvents:64];

      v11 = [v12[150] skipButton];
      [v11 setHidden:1];

      WeakRetained = v12;
    }
  }
}

- (void)_checkForPHSCloudDataIfNecessary:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4 && (+[VTUIStyle sharedStyle](VTUIStyle, "sharedStyle"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 enrollmentMode], v5, !v6))
  {
    v9 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[VTUIProximityEnrollTrainingViewController _checkForPHSCloudDataIfNecessary:]";
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_2728BC000, v9, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__VTUIProximityEnrollTrainingViewController__checkForPHSCloudDataIfNecessary___block_invoke;
    v17[3] = &unk_279E544E8;
    objc_copyWeak(&v19, buf);
    v18 = v4;
    v10 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v17);
    hasPHSInCloudFetchBlock = self->_hasPHSInCloudFetchBlock;
    self->_hasPHSInCloudFetchBlock = v10;

    hasPHSInCloudFetchQueue = self->_hasPHSInCloudFetchQueue;
    if (!hasPHSInCloudFetchQueue)
    {
      v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      v14 = dispatch_queue_create(0, v13);
      v15 = self->_hasPHSInCloudFetchQueue;
      self->_hasPHSInCloudFetchQueue = v14;

      hasPHSInCloudFetchQueue = self->_hasPHSInCloudFetchQueue;
    }

    dispatch_async(hasPHSInCloudFetchQueue, self->_hasPHSInCloudFetchBlock);

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  else
  {
    v7 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[VTUIProximityEnrollTrainingViewController _checkForPHSCloudDataIfNecessary:]";
      _os_log_impl(&dword_2728BC000, v7, OS_LOG_TYPE_DEFAULT, "%s Clearing fetch block", buf, 0xCu);
    }

    v8 = self->_hasPHSInCloudFetchBlock;
    self->_hasPHSInCloudFetchBlock = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __78__VTUIProximityEnrollTrainingViewController__checkForPHSCloudDataIfNecessary___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277D653F8] sharedInstance];
    WeakRetained[1001] = [v3 hasVoiceProfileIniCloudForLanguageCode:*(a1 + 32)];

    v4 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      v5 = WeakRetained[1001];
      v7 = 136315394;
      v8 = "[VTUIProximityEnrollTrainingViewController _checkForPHSCloudDataIfNecessary:]_block_invoke";
      v9 = 1024;
      v10 = v5;
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s set cloud value %d", &v7, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasPHSCloudDataForSpokenLanguage
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (self->_hasPHSInCloudFetchBlock || ([(VTUIProximityEnrollTrainingViewController *)self _checkForPHSCloudDataIfNecessary:self->_spokenLanguageCode], self->_hasPHSInCloudFetchBlock))
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[VTUIProximityEnrollTrainingViewController _hasPHSCloudDataForSpokenLanguage]";
      _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Waiting on block", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    hasPHSInCloudFetchQueue = self->_hasPHSInCloudFetchQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__VTUIProximityEnrollTrainingViewController__hasPHSCloudDataForSpokenLanguage__block_invoke;
    v8[3] = &unk_279E54550;
    objc_copyWeak(&v9, buf);
    v8[4] = &v10;
    dispatch_sync(hasPHSInCloudFetchQueue, v8);
    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }

  v5 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void __78__VTUIProximityEnrollTrainingViewController__hasPHSCloudDataForSpokenLanguage__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = WeakRetained[1001];
}

- (void)_finishSiriSetup:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__VTUIProximityEnrollTrainingViewController__finishSiriSetup___block_invoke;
  v5[3] = &unk_279E541F8;
  objc_copyWeak(&v6, &location);
  [(VTUIProximityEnrollTrainingViewController *)self _warnForLanguageCompatibilityIfNecessary:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __62__VTUIProximityEnrollTrainingViewController__finishSiriSetup___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[137] setTurnOnSiriNonAOP:1];
    [v2 _setAssistantEnabled:1];
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[VTUIProximityEnrollTrainingViewController _finishSiriSetup:]_block_invoke";
      _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
    }

    if ([v2 _shouldShowSiriDataSharingOptInView])
    {
      [v2 _showSiriDataSharingOptInView];
    }

    else
    {
      v4 = [v2 delegate];
      [v4 continueSetup];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)finish:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  [(VTUIProximityEnrollTrainingViewController *)self _cleanupTrainingManagerWithCompletion:0];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[VTUIProximityEnrollTrainingViewController finish:]";
    _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v7, 0xCu);
  }

  v5 = [(VTUIProximityEnrollTrainingViewController *)self delegate];
  [v5 continueSetup];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)shouldAbortAnotherDeviceBetter:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[VTUIProximityEnrollTrainingViewController shouldAbortAnotherDeviceBetter:]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s BTLE Device abort ignored during training", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)shouldContinue:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[VTUIProximityEnrollTrainingViewController shouldContinue:]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s BTLE Device continue ignored during training", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)scdaShouldAbortAnotherDeviceBetter:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[VTUIProximityEnrollTrainingViewController scdaShouldAbortAnotherDeviceBetter:]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s #scda abort ignored during training", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)scdaShouldContinue:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[VTUIProximityEnrollTrainingViewController scdaShouldContinue:]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s #scda continue ignored during training", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_showSiriDataSharingOptInView
{
  v10 = [(VTUIProximityEnrollTrainingViewController *)self view];
  siriDataSharingOptInPresenter = self->_siriDataSharingOptInPresenter;
  [v10 bounds];
  v4 = [(VTUISiriDataSharingOptInPresenter *)siriDataSharingOptInPresenter dataSharingOptInViewForFrame:1 viewStyle:?];
  siriDataSharingProximityView = self->_siriDataSharingProximityView;
  self->_siriDataSharingProximityView = v4;

  [(UIView *)self->_siriDataSharingProximityView setAutoresizingMask:18];
  [v10 addSubview:self->_siriDataSharingProximityView];
  enrollTrainingView = self->_enrollTrainingView;
  if (enrollTrainingView)
  {
    [(VTUIProximityEnrollTrainingView *)enrollTrainingView removeFromSuperview];
    v7 = self->_enrollTrainingView;
    self->_enrollTrainingView = 0;
  }

  successView = self->_successView;
  if (successView)
  {
    [(VTUIProximityEnrollmentSuccessView *)successView removeFromSuperview];
    v9 = self->_successView;
    self->_successView = 0;
  }
}

- (BOOL)_shouldShowSiriDataSharingOptInView
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = +[MGWrapper sharedMGWrapper];
  v4 = [v3 isDeviceIPad];

  v5 = [*MEMORY[0x277D76620] activeInterfaceOrientation];
  v6 = [(VTUISiriDataSharingOptInPresenter *)self->_siriDataSharingOptInPresenter shouldShowSiriDataSharingOptInView];
  v7 = [MEMORY[0x277CF0130] sharedInstance];
  v8 = [v7 shieldSignInOrCreateFlows];

  v9 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = v9;
    v12 = [v10 numberWithBool:v4];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v5 == 1];
    v14 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    v15 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    v19 = 136316162;
    v20 = "[VTUIProximityEnrollTrainingViewController _shouldShowSiriDataSharingOptInView]";
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&dword_2728BC000, v11, OS_LOG_TYPE_DEFAULT, "%s #SiriDataSharingOptIn: isIpad:%@ isPortrait: %@, unspecifiedState:%@, protoAccount:%@", &v19, 0x34u);
  }

  if (v5 == 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v4;
  }

  if (v16 == 1)
  {
    result = v6 & (v8 ^ 1);
  }

  else
  {
    result = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)siriDataSharingOptInViewDismissButtonTappedFromPresenter:(id)a3
{
  siriDataSharingOptInPresenter = self->_siriDataSharingOptInPresenter;
  self->_siriDataSharingOptInPresenter = 0;

  siriDataSharingProximityView = self->_siriDataSharingProximityView;
  self->_siriDataSharingProximityView = 0;

  [(VTUIProximityEnrollTrainingViewController *)self _dismiss:0];
}

- (void)siriDataSharingOptInRequestsDismissalFromPresenter:(id)a3
{
  siriDataSharingOptInPresenter = self->_siriDataSharingOptInPresenter;
  self->_siriDataSharingOptInPresenter = 0;

  siriDataSharingProximityView = self->_siriDataSharingProximityView;
  self->_siriDataSharingProximityView = 0;

  if (self->_hasSkippedTraining)
  {

    [(VTUIProximityEnrollTrainingViewController *)self _skipSetup];
  }

  else
  {
    v6 = [(VTUIProximityEnrollTrainingViewController *)self delegate];
    [v6 continueSetup];
  }
}

- (void)_processIntroViewContinueAction:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_isEnablementConfigurationLoading)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[VTUIProximityEnrollTrainingViewController _processIntroViewContinueAction:]";
      _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Intro view continue requested while Enablement configuration loading", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__VTUIProximityEnrollTrainingViewController__processIntroViewContinueAction___block_invoke;
    v9[3] = &unk_279E544E8;
    objc_copyWeak(&v11, buf);
    v10 = v4;
    [(VTUIProximityEnrollTrainingViewController *)self _setIntroViewActionOnEnablementConfigurationDidLoad:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else if ([(VTUIProximityEnrollTrainingViewController *)self _shouldPresentLanguageDisambiguation])
  {
    [(VTUIProximityEnrollTrainingViewController *)self _setLanguageOptionsAndContinue];
  }

  else if ([(AFEnablementConfiguration *)self->_enablementConfiguration requiresVoiceSelectionForRecognitionLanguage:self->_spokenLanguageCode])
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[VTUIProximityEnrollTrainingViewController _processIntroViewContinueAction:]";
      _os_log_impl(&dword_2728BC000, v6, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }

    [(VTUIProximityEnrollmentSetupIntroView *)self->_introView removeFromSuperview];
    introView = self->_introView;
    self->_introView = 0;

    [(VTUIProximityEnrollTrainingViewController *)self _showVoiceSelectionViewForRecognitionLanguage:self->_spokenLanguageCode];
  }

  else
  {
    [(VTUIProximityEnrollTrainingViewController *)self _continueToTrainingFromIntro];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __77__VTUIProximityEnrollTrainingViewController__processIntroViewContinueAction___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _processIntroViewContinueAction:*(a1 + 32)];

  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[VTUIProximityEnrollTrainingViewController _processIntroViewContinueAction:]_block_invoke";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Intro view continue processed after Enablement configuration loaded", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_setIntroViewActionOnEnablementConfigurationDidLoad:(id)a3
{
  v29[2] = *MEMORY[0x277D85DE8];
  v23 = a3;
  v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 startAnimating];
  v5 = [(VTUIProximityEnrollTrainingViewController *)self view];
  [v5 addSubview:v4];

  v20 = MEMORY[0x277CCAAD0];
  v21 = [v4 centerYAnchor];
  v22 = [(VTUIProximityEnrollmentSetupIntroView *)self->_introView setupButton];
  v6 = [v22 centerYAnchor];
  v7 = [v21 constraintEqualToAnchor:v6];
  v29[0] = v7;
  v8 = [v4 centerXAnchor];
  v9 = [(VTUIProximityEnrollmentSetupIntroView *)self->_introView setupButton];
  v10 = [v9 centerXAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v29[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  [v20 activateConstraints:v12];

  v13 = [(VTUIProximityEnrollmentSetupIntroView *)self->_introView setupButton];
  [v13 setHidden:1];

  v14 = [(VTUIProximityEnrollmentSetupIntroView *)self->_introView notNowButton];
  [v14 setHidden:1];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__VTUIProximityEnrollTrainingViewController__setIntroViewActionOnEnablementConfigurationDidLoad___block_invoke;
  aBlock[3] = &unk_279E547E8;
  v26 = v23;
  v15 = v23;
  objc_copyWeak(&v27, &location);
  v25 = v4;
  v16 = v4;
  v17 = _Block_copy(aBlock);
  onEnablementConfigurationDidLoad = self->_onEnablementConfigurationDidLoad;
  self->_onEnablementConfigurationDidLoad = v17;

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __97__VTUIProximityEnrollTrainingViewController__setIntroViewActionOnEnablementConfigurationDidLoad___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained introView];
  v5 = [v4 setupButton];
  [v5 setHidden:0];

  v6 = objc_loadWeakRetained((a1 + 48));
  v7 = [v6 introView];
  v8 = [v7 notNowButton];
  [v8 setHidden:0];

  v9 = *(a1 + 32);

  return [v9 removeFromSuperview];
}

- (void)_processLanguageSelectionAction:(id)a3
{
  siriLanguageOptions = self->_siriLanguageOptions;
  v5 = [(VTUIProximityEnrollmentLanguageOptionsView *)self->_languageOptionsView languagesPickerView];
  obj = -[NSArray objectAtIndexedSubscript:](siriLanguageOptions, "objectAtIndexedSubscript:", [v5 selectedRowInComponent:0]);

  if (obj)
  {
    objc_storeStrong(&self->_spokenLanguageCode, obj);
    objc_storeStrong(&self->_disambiguatedLanguageOption, self->_spokenLanguageCode);
    [(VTUIProximityEnrollTrainingViewController *)self _checkForPHSCloudDataIfNecessary:self->_spokenLanguageCode];
  }

  if ([(AFEnablementConfiguration *)self->_enablementConfiguration requiresVoiceSelectionForRecognitionLanguage:self->_spokenLanguageCode])
  {
    [(VTUIProximityEnrollmentLanguageOptionsView *)self->_languageOptionsView removeFromSuperview];
    languageOptionsView = self->_languageOptionsView;
    self->_languageOptionsView = 0;

    [(VTUIProximityEnrollTrainingViewController *)self _showVoiceSelectionViewForRecognitionLanguage:self->_spokenLanguageCode];
  }

  else
  {
    disambiguatedLanguageOption = self->_disambiguatedLanguageOption;
    if (disambiguatedLanguageOption)
    {
      [(VTUIProximityEnrollTrainingViewController *)self _processDisambiguatedLanguageOption:disambiguatedLanguageOption commitLanguageCodeToPreferences:1];
      v8 = self->_disambiguatedLanguageOption;
      self->_disambiguatedLanguageOption = 0;
    }

    [(VTUIProximityEnrollTrainingViewController *)self _continueToTrainingFromLanguageOptions];
  }
}

- (void)_processDisambiguatedLanguageOption:(id)a3 commitLanguageCodeToPreferences:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[VTUIProximityEnrollTrainingViewController _processDisambiguatedLanguageOption:commitLanguageCodeToPreferences:]";
    _os_log_impl(&dword_2728BC000, v8, OS_LOG_TYPE_DEFAULT, "%s ", &v16, 0xCu);
  }

  v9 = +[VTUIStyle sharedStyle];
  v10 = [v9 enrollmentMode];

  if (v4)
  {
    v11 = [MEMORY[0x277CEF368] sharedPreferences];
    [v11 setLanguageCode:self->_disambiguatedLanguageOption];
  }

  v12 = +[VTUIStringsHelper sharedStringsHelper];
  [v12 setSiriLanguage:self->_disambiguatedLanguageOption];

  if (v10 != 3)
  {
    v13 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      disambiguatedLanguageOption = self->_disambiguatedLanguageOption;
      v16 = 136315394;
      v17 = "[VTUIProximityEnrollTrainingViewController _processDisambiguatedLanguageOption:commitLanguageCodeToPreferences:]";
      v18 = 2112;
      v19 = disambiguatedLanguageOption;
      _os_log_impl(&dword_2728BC000, v13, OS_LOG_TYPE_DEFAULT, "%s Audio Hint player setLanguage:%@", &v16, 0x16u);
    }

    [(VTUIAudioHintPlayer *)self->_audioHintPlayer setLanguage:self->_disambiguatedLanguageOption];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_showVoiceSelectionViewForRecognitionLanguage:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v34 = "[VTUIProximityEnrollTrainingViewController _showVoiceSelectionViewForRecognitionLanguage:]";
    v35 = 2112;
    v36 = v4;
    _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Showing voice selection view for recognitionLanguage %@", buf, 0x16u);
  }

  if (!v4)
  {
    v6 = [MEMORY[0x277CEF368] sharedPreferences];
    v4 = [v6 bestSupportedLanguageCodeForLanguageCode:0];

    v7 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v34 = "[VTUIProximityEnrollTrainingViewController _showVoiceSelectionViewForRecognitionLanguage:]";
      v35 = 2112;
      v36 = v4;
      _os_log_impl(&dword_2728BC000, v7, OS_LOG_TYPE_DEFAULT, "%s No recognition language used, falling back to %@", buf, 0x16u);
    }
  }

  v8 = [[VTUIVoiceSelectionViewController alloc] initCompactWithRecognitionLanguage:v4 allowsRandomSelection:[(AFEnablementConfiguration *)self->_enablementConfiguration voiceSelectionAllowsRandomSelection] customVoicePreviewer:0 delegate:self];
  voiceSelectionViewController = self->_voiceSelectionViewController;
  self->_voiceSelectionViewController = v8;

  [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController willMoveToParentViewController:self];
  [(VTUIProximityEnrollTrainingViewController *)self addChildViewController:self->_voiceSelectionViewController];
  [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController didMoveToParentViewController:self];
  v10 = [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController view];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setAutoresizesSubviews:0];
  v11 = [(VTUIProximityEnrollTrainingViewController *)self view];
  [v11 addSubview:v10];

  v24 = MEMORY[0x277CCAAD0];
  v30 = [v10 topAnchor];
  v31 = [(VTUIProximityEnrollTrainingViewController *)self view];
  v29 = [v31 topAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v32[0] = v28;
  v26 = [v10 leftAnchor];
  v27 = [(VTUIProximityEnrollTrainingViewController *)self view];
  v25 = [v27 leftAnchor];
  v23 = [v26 constraintEqualToAnchor:v25];
  v32[1] = v23;
  v12 = [v10 rightAnchor];
  v13 = [(VTUIProximityEnrollTrainingViewController *)self view];
  v14 = [v13 rightAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v32[2] = v15;
  v16 = [v10 bottomAnchor];
  v17 = [(VTUIProximityEnrollTrainingViewController *)self view];
  v18 = [v17 bottomAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  v32[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  [v24 activateConstraints:v20];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)voiceSelectionController:(id)a3 didSelectVoice:(id)a4 randomlySelected:(BOOL)a5 completion:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = +[VTUIStyle sharedStyle];
    *buf = 136315650;
    v24 = "[VTUIProximityEnrollTrainingViewController voiceSelectionController:didSelectVoice:randomlySelected:completion:]";
    v25 = 2112;
    v26 = v10;
    v27 = 2048;
    v28 = [v14 enrollmentMode];
    _os_log_impl(&dword_2728BC000, v13, OS_LOG_TYPE_DEFAULT, "%s voice: %@, enrollment: %ld", buf, 0x20u);
  }

  disambiguatedLanguageOption = self->_disambiguatedLanguageOption;
  if (disambiguatedLanguageOption)
  {
    [(VTUIProximityEnrollTrainingViewController *)self _processDisambiguatedLanguageOption:disambiguatedLanguageOption commitLanguageCodeToPreferences:0];
    v16 = self->_disambiguatedLanguageOption;
    self->_disambiguatedLanguageOption = 0;
  }

  [(VTUIAudioHintPlayer *)self->_audioHintPlayer setOutputVoice:v10];
  [(VTUIProximityEnrollTrainingViewController *)self _setupTrainingStates];
  v17 = [MEMORY[0x277CEF368] sharedPreferences];
  [v17 setLanguageCode:self->_spokenLanguageCode outputVoice:v10];

  objc_initWeak(buf, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __113__VTUIProximityEnrollTrainingViewController_voiceSelectionController_didSelectVoice_randomlySelected_completion___block_invoke;
  v20[3] = &unk_279E545A0;
  objc_copyWeak(&v22, buf);
  v18 = v11;
  v21 = v18;
  [(VTUIProximityEnrollTrainingViewController *)self _continueToTrainingFromVoiceSelection:v20];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __113__VTUIProximityEnrollTrainingViewController_voiceSelectionController_didSelectVoice_randomlySelected_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[143] removeFromParentViewController];
    v4 = [v8[143] view];
    [v4 removeFromSuperview];

    v5 = v8[143];
    v8[143] = 0;

    v3 = v8;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_continueToTrainingFromIntro
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[VTUIProximityEnrollTrainingViewController _continueToTrainingFromIntro]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__VTUIProximityEnrollTrainingViewController__continueToTrainingFromIntro__block_invoke;
  v5[3] = &unk_279E541F8;
  objc_copyWeak(&v6, buf);
  [(VTUIProximityEnrollTrainingViewController *)self _warnForLanguageCompatibilityIfNecessary:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
  v4 = *MEMORY[0x277D85DE8];
}

void __73__VTUIProximityEnrollTrainingViewController__continueToTrainingFromIntro__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained[152] removeFromSuperview];
    v2 = v4[152];
    v4[152] = 0;

    [v4 _setAssistantEnabled:1];
    v3 = [v4[150] skipButton];
    [v3 setHidden:0];

    [v4[137] setVoiceTrainingStarted:{objc_msgSend(v4[137], "voiceTrainingStarted") + 1}];
    [v4 _startTrainingIfNecessary];
    WeakRetained = v4;
  }
}

- (void)_continueToTrainingFromLanguageOptions
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[VTUIProximityEnrollTrainingViewController _continueToTrainingFromLanguageOptions]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v11, 0xCu);
  }

  [(VTUIProximityEnrollmentLanguageOptionsView *)self->_languageOptionsView removeFromSuperview];
  languageOptionsView = self->_languageOptionsView;
  self->_languageOptionsView = 0;

  [(VTUIProximityEnrollTrainingViewController *)self _setAssistantEnabled:1];
  v5 = [@"BUTTON_SET_UP_LATER" copy];
  v6 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView skipButton];
  [v6 setHidden:0];

  v7 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView skipButton];
  v8 = +[VTUIStyle sharedStyle];
  v9 = [v8 VTUIDeviceSpecificString:v5];
  [v7 setTitle:v9 forState:0];

  [(VTUIAnalytics *)self->_analyticsEvent setVoiceTrainingStarted:[(VTUIAnalytics *)self->_analyticsEvent voiceTrainingStarted]+ 1];
  [(VTUIProximityEnrollTrainingViewController *)self _startTrainingIfNecessary];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_continueToTrainingFromVoiceSelection:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[VTUIProximityEnrollTrainingViewController _continueToTrainingFromVoiceSelection:]";
    _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v12, 0xCu);
  }

  v6 = [@"BUTTON_SET_UP_LATER" copy];
  v7 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView skipButton];
  [v7 setHidden:0];

  v8 = [(VTUIProximityEnrollTrainingView *)self->_enrollTrainingView skipButton];
  v9 = +[VTUIStyle sharedStyle];
  v10 = [v9 VTUIDeviceSpecificString:v6];
  [v8 setTitle:v10 forState:0];

  [(VTUIProximityEnrollTrainingViewController *)self _setAssistantEnabled:1];
  [(VTUIAnalytics *)self->_analyticsEvent setVoiceTrainingStarted:[(VTUIAnalytics *)self->_analyticsEvent voiceTrainingStarted]+ 1];
  [(VTUIProximityEnrollTrainingViewController *)self _startTrainingIfNecessary:v4];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_startTrainingIfNecessary:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D653F8] sharedInstance];
  v6 = [MEMORY[0x277CEF368] sharedPreferences];
  v7 = [v6 languageCode];

  if ([v5 isSATEnrolledForSiriProfileId:0 forLanguageCode:v7])
  {
    v8 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "[VTUIProximityEnrollTrainingViewController _startTrainingIfNecessary:]";
      _os_log_impl(&dword_2728BC000, v8, OS_LOG_TYPE_DEFAULT, "%s Skipping training due to preexistence of PHS data locally", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CEF158] sharedAnalytics];
    v22 = @"type";
    v23 = @"local";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [v9 logEventWithType:5501 context:v10];

    v11 = [MEMORY[0x277D7A8D0] sharedPreferences];
    [v11 setVoiceTriggerEnabled:1];

    if ([(VTUIProximityEnrollTrainingViewController *)self _shouldShowSiriDataSharingOptInView])
    {
      [(VTUIProximityEnrollTrainingViewController *)self _showSiriDataSharingOptInView];
      if (!v4)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v16 = [(VTUIProximityEnrollTrainingViewController *)self delegate];
    [v16 continueSetup];

    if (v4)
    {
LABEL_11:
      v4[2](v4);
    }
  }

  else
  {
    if (!self->_fetchBackgroundDataQueue)
    {
      v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      v13 = dispatch_queue_create(0, v12);
      fetchBackgroundDataQueue = self->_fetchBackgroundDataQueue;
      self->_fetchBackgroundDataQueue = v13;
    }

    objc_initWeak(buf, self);
    v15 = self->_fetchBackgroundDataQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__VTUIProximityEnrollTrainingViewController__startTrainingIfNecessary___block_invoke;
    block[3] = &unk_279E54578;
    objc_copyWeak(&v21, buf);
    v19 = v5;
    v20 = v4;
    dispatch_async(v15, block);

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

LABEL_12:

  v17 = *MEMORY[0x277D85DE8];
}

void __71__VTUIProximityEnrollTrainingViewController__startTrainingIfNecessary___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained _hasPHSCloudDataForSpokenLanguage];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__VTUIProximityEnrollTrainingViewController__startTrainingIfNecessary___block_invoke_2;
  v4[3] = &unk_279E54810;
  objc_copyWeak(&v7, a1 + 6);
  v8 = v3;
  v5 = a1[4];
  v6 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], v4);

  objc_destroyWeak(&v7);
}

void __71__VTUIProximityEnrollTrainingViewController__startTrainingIfNecessary___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 56);
    v4 = *MEMORY[0x277CEF0E8];
    v5 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
    if (v3 == 1)
    {
      if (v5)
      {
        *buf = 136315138;
        v14 = "[VTUIProximityEnrollTrainingViewController _startTrainingIfNecessary:]_block_invoke_2";
        _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Skipping training due to preexistence of PHS data in cloud", buf, 0xCu);
      }

      v6 = [MEMORY[0x277CEF158] sharedAnalytics];
      v11 = @"type";
      v12 = @"cloud";
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      [v6 logEventWithType:5501 context:v7];

      [*(a1 + 32) enableVoiceTriggerUponVoiceProfileSyncForLanguage:WeakRetained[158]];
      if ([WeakRetained _shouldShowSiriDataSharingOptInView])
      {
        [WeakRetained _showSiriDataSharingOptInView];
      }

      else
      {
        v8 = [WeakRetained delegate];
        [v8 continueSetup];
      }
    }

    else
    {
      if (v5)
      {
        *buf = 136315138;
        v14 = "[VTUIProximityEnrollTrainingViewController _startTrainingIfNecessary:]_block_invoke";
        _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Starting training due to no PHS data locally or in cloud", buf, 0xCu);
      }

      [WeakRetained _startTraining];
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (VTUIEnrollTrainingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end