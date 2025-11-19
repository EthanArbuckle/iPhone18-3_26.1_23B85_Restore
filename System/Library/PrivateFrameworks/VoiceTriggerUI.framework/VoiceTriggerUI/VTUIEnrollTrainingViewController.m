@interface VTUIEnrollTrainingViewController
- (BOOL)_hasPHSCloudDataForSpokenLanguage;
- (BOOL)_isGreyMatterAvailable;
- (BOOL)_isLocaleSupported:(id)a3;
- (BOOL)_shouldShowSiriDataSharingOptInView;
- (BOOL)_siriLanguageIsIncompatibleWithPairedWatch;
- (BOOL)allLanguageOptionsSupportCompactTrigger;
- (VTUIEnrollTrainingViewController)init;
- (VTUIEnrollTrainingViewControllerDelegate)delegate;
- (id)_getSetupModeString;
- (id)_retryStringForStatus:(int64_t)a3;
- (id)init:(int64_t)a3;
- (id)init:(int64_t)a3 withAppDomain:(id)a4;
- (id)interpretAudioSource:(unint64_t)a3;
- (int64_t)interpretSessionManagerResult:(id)a3 forInstruction:(int64_t)a4;
- (void)_advanceState;
- (void)_becomeActive;
- (void)_checkForPHSCloudDataIfNecessary:(id)a3;
- (void)_cleanupAllViews;
- (void)_cleanupHelper;
- (void)_cleanupMyriad;
- (void)_cleanupTrainingManagerWithCompletion:(id)a3;
- (void)_cleanupTrainingManagerWithCompletion:(id)a3 status:(int64_t)a4;
- (void)_configureTrainingWith:(int64_t)a3 withAppDomain:(id)a4;
- (void)_continueToCameraButtonBuddy;
- (void)_continueToNextFromGM;
- (void)_continueToNextFromSummarization;
- (void)_continueToSummarizationFromGM;
- (void)_continueToTrainingFromIntro:(id)a3;
- (void)_continueToTrainingFromLanguageOptions;
- (void)_continueToTrainingFromVoiceSelection:(id)a3;
- (void)_continueToVoiceSelectionFromIntro;
- (void)_createTrainingManagerIfNeeded;
- (void)_didEnterBackground;
- (void)_endSetup;
- (void)_finishButtonTapped;
- (void)_finishSiriSetup;
- (void)_handleTrainingResultForNonRetryablePhraseWithResult:(id)a3;
- (void)_handleTrainingResultForRetryablePhraseWithResult:(id)a3 shouldShowCheckMark:(BOOL)a4;
- (void)_hideInstruction;
- (void)_hideIntroView;
- (void)_initialSetup;
- (void)_logVoiceSelection:(id)a3 randomlySelected:(BOOL)a4;
- (void)_playSoundForStageAfterDelay:(double)a3;
- (void)_prepareCameraButtonBuddy;
- (void)_proceedAfterTrainingCompletionOrSkip;
- (void)_proceedAfterVoiceSelectionOrSkip;
- (void)_processDisambiguatedLanguageOption:(id)a3 commitLanguageCodeToPreferences:(BOOL)a4;
- (void)_processIntroViewContinueAction:(id)a3 completion:(id)a4;
- (void)_processLanguageSelectionAction:(id)a3;
- (void)_processVTConfirmationLaterAction:(id)a3;
- (void)_processVTConfirmationViewContinueAction:(id)a3;
- (void)_resetBackBarButtonItem;
- (void)_resetEnrollment;
- (void)_resetIdleTimer;
- (void)_resetRightBarButtonItems;
- (void)_resignActive;
- (void)_retryAfterBadMicAlert;
- (void)_retryInstruction:(BOOL)a3 withStatusMessage:(id)a4;
- (void)_setInitialTriggerPhraseIfNotSet;
- (void)_setInitialTriggerPhraseOnHome;
- (void)_setIntroViewActionOnEnablementConfigurationDidLoad:(id)a3;
- (void)_setLanguageOptionsAndContinue;
- (void)_setRightBarButtonItem:(id)a3;
- (void)_setupConstraintsAndAddGMIntroView;
- (void)_setupEnrollTrainingView;
- (void)_setupEnrollmentWithIntelligentLight;
- (void)_setupEnrollmentwithOrb;
- (void)_setupMode;
- (void)_setupMyriadCoordinator;
- (void)_setupTrainingStates;
- (void)_showBadMicAlertCompletion:(id)a3;
- (void)_showBadMicAlertWithCompletion:(id)a3;
- (void)_showCameraButtonBuddyControlOrSiriIntro;
- (void)_showEducationView;
- (void)_showEnrollmentSuccessView;
- (void)_showGMIntroView;
- (void)_showRadarExitButton;
- (void)_showSiriDataSharingOptIn;
- (void)_showSiriIntroView;
- (void)_showTrainingInstruction:(int64_t)a3 afterDelay:(double)a4 isRetry:(BOOL)a5 animate:(BOOL)a6;
- (void)_showUnsupportedLocaleAlert;
- (void)_showUnsupportedLocaleAlertCompletion:(id)a3;
- (void)_showVTConfirmationView;
- (void)_showVisualIntelligenceIntroIfNeeded;
- (void)_showVoiceSelectionViewForRecognitionLanguage:(id)a3;
- (void)_signalSingleEnrollmentSuccess;
- (void)_startEnrollment;
- (void)_startTraining;
- (void)_startTrainingIfNecessaryWithViewCleanupBlock:(id)a3 cloudOperationCompletionBlock:(id)a4;
- (void)_tearDownDataSharingViews;
- (void)_updatePageNumberForInstruction:(int64_t)a3;
- (void)_updateTrainingLabelsForInstruction:(int64_t)a3;
- (void)_updateViewBackground;
- (void)_warnForLanguageCompatibilityIfNecessary:(id)a3;
- (void)aboutTapped:(id)a3;
- (void)cameraButtonBuddyViewControllerDidFinish:(id)a3;
- (void)cancelTraining;
- (void)dealloc;
- (void)enrollTrainingViewRadarButtonPressed:(id)a3;
- (void)fetchaudioSessionID:(id)a3;
- (void)finish:(id)a3;
- (void)onboardingController:(id)a3 requestsPushingTo:(id)a4;
- (void)prewarm;
- (void)restartFromIntroView;
- (void)returnFromVoiceSelectionToIntroView:(id)a3;
- (void)scdaShouldAbortAnotherDeviceBetter:(id)a3;
- (void)scdaShouldContinue:(id)a3;
- (void)shouldAbortAnotherDeviceBetter:(id)a3;
- (void)shouldContinue:(id)a3;
- (void)siriDataSharingOptInRequestsDismissalFromPresenter:(id)a3;
- (void)siriEducationViewControllerContinuePressed:(id)a3;
- (void)siriGMIntroViewControllerContinuePressed:(id)a3;
- (void)siriIntroViewControllerPrivacyLinkTapped;
- (void)siriLanguageSpokenLanguageCodeDidChange:(id)a3;
- (void)skipAssistant:(id)a3;
- (void)skipTraining:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)userDidTapContinue:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation VTUIEnrollTrainingViewController

- (id)init:(int64_t)a3 withAppDomain:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v13.receiver = self;
  v13.super_class = VTUIEnrollTrainingViewController;
  v7 = [(VTUIEnrollTrainingViewController *)&v13 init];
  if (v7)
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[VTUIEnrollTrainingViewController init:withAppDomain:]";
      v16 = 2048;
      v17 = a3;
      _os_log_impl(&dword_2728BC000, v8, OS_LOG_TYPE_DEFAULT, "%s init with enrollmentMode: %ld", buf, 0x16u);
    }

    v9 = *MEMORY[0x277D65458];
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = *MEMORY[0x277D65458];
    }

    [(VTUIEnrollTrainingViewController *)v7 _configureTrainingWith:a3 withAppDomain:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)init:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = VTUIEnrollTrainingViewController;
  v4 = [(VTUIEnrollTrainingViewController *)&v8 init];
  if (v4)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = "[VTUIEnrollTrainingViewController init:]";
      v11 = 2048;
      v12 = a3;
      _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s init with enrollmentMode: %ld", buf, 0x16u);
    }

    [(VTUIEnrollTrainingViewController *)v4 _configureTrainingWith:a3 withAppDomain:*MEMORY[0x277D65458]];
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_configureTrainingWith:(int64_t)a3 withAppDomain:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  [(VTUIEnrollTrainingViewController *)self _initialSetup];
  v8 = 1;
  if (a3 != 1 && a3 != 7)
  {
    v8 = PSIsRunningInAssistant();
  }

  v9 = +[VTUIStyle sharedStyle];
  [v9 setIsBuddyOrFollowUp:v8];

  v10 = +[VTUIStyle sharedStyle];
  [v10 setEnrollmentMode:a3];

  v11 = +[VTUIStyle sharedStyle];
  v12 = [v11 shouldShowVoiceTriggerConfirmationInBuddy];

  v13 = a3;
  if (v12)
  {
    v13 = a3;
    if (v8)
    {
      v14 = VTUILogContextFacility;
      if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315138;
        v20 = "[VTUIEnrollTrainingViewController _configureTrainingWith:withAppDomain:]";
        _os_log_impl(&dword_2728BC000, v14, OS_LOG_TYPE_DEFAULT, "%s enrollment mode set for VT confirmation", &v19, 0xCu);
      }

      v13 = 6;
    }
  }

  self->_enrollmentMode = v13;
  objc_storeStrong(&self->_voiceProfileAppDomain, a4);
  if (self->_enrollmentMode == 2)
  {
    if ([(VTUIEnrollTrainingViewController *)self _shouldPresentLanguageDisambiguation])
    {
      [(VTUIEnrollTrainingViewController *)self _setLanguageOptionsAndContinue];
    }

    else
    {
      [(VTUIEnrollTrainingViewController *)self _continueToTrainingFromIntro];
    }
  }

  v15 = objc_alloc_init(VTUISiriDataSharingOptInPresenter);
  siriDataSharingOptInPresenter = self->_siriDataSharingOptInPresenter;
  self->_siriDataSharingOptInPresenter = v15;

  [(VTUISiriDataSharingOptInPresenter *)self->_siriDataSharingOptInPresenter setPresentationDelegate:self];
  v17 = self->_siriDataSharingOptInPresenter;
  if (a3 == 1)
  {
    [(VTUISiriDataSharingOptInPresenter *)v17 setSourceOfChange:7];
    [(VTUISiriDataSharingOptInPresenter *)self->_siriDataSharingOptInPresenter setReasonForChange:@"followup"];
  }

  else
  {
    [(VTUISiriDataSharingOptInPresenter *)v17 setSourceOfChange:1];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (VTUIEnrollTrainingViewController)init
{
  v19 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = VTUIEnrollTrainingViewController;
  v2 = [(VTUIEnrollTrainingViewController *)&v16 init];
  if (v2)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[VTUIEnrollTrainingViewController init]";
      _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }

    [(VTUIEnrollTrainingViewController *)v2 _initialSetup];
    v4 = +[VTUIStyle sharedStyle];
    [v4 setIsBuddyOrFollowUp:PSIsRunningInAssistant()];
    [(VTUIEnrollTrainingViewController *)v2 _setupMode];
    objc_storeStrong(&v2->_voiceProfileAppDomain, *MEMORY[0x277D65458]);
    if (v2->_enrollmentMode == 2)
    {
      if ([(VTUIEnrollTrainingViewController *)v2 _shouldPresentLanguageDisambiguation])
      {
        [(VTUIEnrollTrainingViewController *)v2 _setLanguageOptionsAndContinue];
      }

      else
      {
        [(VTUIEnrollTrainingViewController *)v2 _continueToTrainingFromIntro];
      }
    }

    v5 = objc_alloc_init(VTUISiriDataSharingOptInPresenter);
    siriDataSharingOptInPresenter = v2->_siriDataSharingOptInPresenter;
    v2->_siriDataSharingOptInPresenter = v5;

    [(VTUISiriDataSharingOptInPresenter *)v2->_siriDataSharingOptInPresenter setPresentationDelegate:v2];
    v7 = [v4 isBuddyOrFollowUp];
    v8 = v2->_siriDataSharingOptInPresenter;
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = 7;
    }

    [(VTUISiriDataSharingOptInPresenter *)v2->_siriDataSharingOptInPresenter setSourceOfChange:v9];
    v2->_speakingDelayInSeconds = 1.0;
    v10 = CFPreferencesCopyAppValue(@"PlayHintMSDelay", @"com.apple.VoiceTriggerUI");
    millisecondDelayForHintPlaying = v2->_millisecondDelayForHintPlaying;
    v2->_millisecondDelayForHintPlaying = v10;

    v12 = v2->_millisecondDelayForHintPlaying;
    if (v12)
    {
      [(NSNumber *)v12 doubleValue];
      v2->_speakingDelayInSeconds = v13 * 0.001;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  [(VTUIAnalytics *)self->_analyticsEvent logEvent];
  if ([(VTUIEnrollTrainingViewController *)self _isTrainingInProgress])
  {
    v3 = [MEMORY[0x277D653F8] sharedInstance];
    v4 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
    v5 = [v3 deleteUserVoiceProfile:v4];
  }

  [(VTUIEnrollTrainingViewController *)self _cleanupTrainingManagerWithCompletion:0];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = VTUIEnrollTrainingViewController;
  [(VTUIEnrollTrainingViewController *)&v7 dealloc];
}

- (void)_initialSetup
{
  v48 = *MEMORY[0x277D85DE8];
  VTUILogInitIfNeeded();
  v3 = objc_alloc_init(VTUIEnrollmentPageEligibilityProvider);
  pageEligibilityProvider = self->_pageEligibilityProvider;
  self->_pageEligibilityProvider = v3;

  v5 = [objc_alloc(MEMORY[0x277CEF678]) initWithDelegate:self];
  siriLanguage = self->_siriLanguage;
  self->_siriLanguage = v5;

  v7 = [(AFUISiriLanguage *)self->_siriLanguage spokenLanguageCode];
  spokenLanguageCode = self->_spokenLanguageCode;
  self->_spokenLanguageCode = v7;

  v9 = objc_alloc_init(VTUIAnalytics);
  analyticsEvent = self->_analyticsEvent;
  self->_analyticsEvent = v9;

  v11 = self->_analyticsEvent;
  v12 = [(VTUIEnrollTrainingViewController *)self _getSetupModeString];
  [(VTUIAnalytics *)v11 setSetupMode:v12];

  v13 = objc_alloc_init(MEMORY[0x277CEF3A8]);
  settingsConnection = self->_settingsConnection;
  self->_settingsConnection = v13;

  v15 = dispatch_queue_create("com.apple.siri.voicetrigger.home", 0);
  settingsQueue = self->_settingsQueue;
  self->_settingsQueue = v15;

  if (!self->_spokenLanguageCode)
  {
    v17 = [MEMORY[0x277CEF368] sharedPreferences];
    v18 = [v17 bestSupportedLanguageCodeForLanguageCode:0];
    v19 = self->_spokenLanguageCode;
    self->_spokenLanguageCode = v18;

    v20 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_spokenLanguageCode;
      v42 = 136315394;
      v43 = "[VTUIEnrollTrainingViewController _initialSetup]";
      v44 = 2112;
      v45 = v21;
      _os_log_impl(&dword_2728BC000, v20, OS_LOG_TYPE_DEFAULT, "%s No Siri language code found, falling back to: %@", &v42, 0x16u);
    }
  }

  v22 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v23 = self->_spokenLanguageCode;
    v42 = 136315394;
    v43 = "[VTUIEnrollTrainingViewController _initialSetup]";
    v44 = 2112;
    v45 = v23;
    _os_log_impl(&dword_2728BC000, v22, OS_LOG_TYPE_DEFAULT, "%s Initializing with language code: %@", &v42, 0x16u);
  }

  if (self->_spokenLanguageCode)
  {
    v24 = +[VTUIStringsHelper sharedStringsHelper];
    [v24 setSiriLanguage:self->_spokenLanguageCode];

    v25 = self->_spokenLanguageCode;
  }

  else
  {
    v25 = 0;
  }

  [(VTUIAnalytics *)self->_analyticsEvent setLanguageCode:v25];
  self->_shouldTurnOnMyriad = 1;
  v26 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    v27 = self->_spokenLanguageCode;
    v28 = v26;
    v29 = +[VTUIStringsHelper sharedStringsHelper];
    v30 = [v29 heySiriTriggerPhrase];
    v42 = 136315650;
    v43 = "[VTUIEnrollTrainingViewController _initialSetup]";
    v44 = 2112;
    v45 = v27;
    v46 = 2112;
    v47 = v30;
    _os_log_impl(&dword_2728BC000, v28, OS_LOG_TYPE_DEFAULT, "%s VoiceTriggerUI: Spoken Language Code: %@. (Trigger: '%@')", &v42, 0x20u);
  }

  v31 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v42 = 136315138;
    v43 = "[VTUIEnrollTrainingViewController _initialSetup]";
    _os_log_impl(&dword_2728BC000, v31, OS_LOG_TYPE_DEFAULT, "%s Setting the current training state in VTUIEnrollTrainingViewController to kVTUITrainingStateNotStarted", &v42, 0xCu);
  }

  self->_currentTrainingState = -1;
  aboutTappedSender = self->_aboutTappedSender;
  self->_aboutTappedSender = 0;

  if ([MEMORY[0x277CEF2A8] isSCDAFrameworkEnabled])
  {
    v33 = 1408;
  }

  else
  {
    v33 = 1400;
  }

  if (!*(&self->super.super.super.isa + v33))
  {
    [(VTUIEnrollTrainingViewController *)self _setupMyriadCoordinator];
  }

  v34 = [VTUIAudioHintPlayer alloc];
  v35 = self->_spokenLanguageCode;
  v36 = +[VTUIStyle sharedStyle];
  v37 = -[VTUIAudioHintPlayer initWithLanguage:isCompact:delegate:](v34, "initWithLanguage:isCompact:delegate:", v35, [v36 shouldSetupForMultipleTriggerPhrases], self);
  audioHintPlayer = self->_audioHintPlayer;
  self->_audioHintPlayer = v37;

  v39 = [MEMORY[0x277D75418] currentDevice];
  v40 = [v39 userInterfaceIdiom];

  if ((v40 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [MEMORY[0x277D37610] preferredContentSize];
    [(VTUIEnrollTrainingViewController *)self setPreferredContentSize:?];
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_setupMode
{
  v3 = +[VTUIStyle sharedStyle];
  v4 = [v3 isBuddyOrFollowUp];

  v5 = +[VTUIStyle sharedStyle];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 isHeySiriAlwaysOn];

    v8 = +[VTUIStyle sharedStyle];
    v9 = v8;
    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = 3;
    }

    [v8 setEnrollmentMode:v10];

    [(VTUIEnrollTrainingViewController *)self _checkForPHSCloudDataIfNecessary:self->_spokenLanguageCode];
  }

  else
  {
    [v5 setEnrollmentMode:4];
  }

  v11 = +[VTUIStyle sharedStyle];
  self->_enrollmentMode = [v11 enrollmentMode];
}

- (void)viewDidLoad
{
  v27 = *MEMORY[0x277D85DE8];
  VTUILogInitIfNeeded();
  v20.receiver = self;
  v20.super_class = VTUIEnrollTrainingViewController;
  [(VTUIEnrollTrainingViewController *)&v20 viewDidLoad];
  self->_isResignedActive = 1;
  [(VTUIEnrollTrainingViewController *)self _updateViewBackground];
  v3 = +[VTUIStringsHelper sharedStringsHelper];
  [v3 setupForCurrentLocaleAndSiriLanguage];

  [(VTUIEnrollTrainingViewController *)self _setupTrainingStates];
  [(VTUIEnrollTrainingViewController *)self _setupEnrollTrainingView];
  v4 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[VTUIEnrollTrainingViewController viewDidLoad]";
    _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Main View Loaded", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel__resignActive name:*MEMORY[0x277D76768] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel__didEnterBackground name:*MEMORY[0x277D76660] object:0];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel__becomeActive name:*MEMORY[0x277D76648] object:0];

  if (self->_skipToEndForTesting)
  {
    self->_currentTrainingState = 5;
    [(VTUITrainingViewMediator *)self->_trainingViewMediator hideTrainingView:0];
    [(VTUIEnrollTrainingViewController *)self _showEnrollmentSuccessView];
  }

  v8 = +[VTUIStyle sharedStyle];
  v9 = [v8 shouldPresentDisclosureForCompactVoiceTrigger];

  v10 = [MEMORY[0x277CEF368] sharedPreferences];
  if ([v10 assistantIsEnabled])
  {
    v11 = (self->_enrollmentMode == 0) & (v9 ^ 1u);

    p_skipToSiriDataSharingOptInForTesting = &self->_skipToSiriDataSharingOptInForTesting;
    if (!self->_skipToSiriDataSharingOptInForTesting)
    {
      if (!v11 || ![(VTUIEnrollTrainingViewController *)self _shouldShowSiriDataSharingOptInView])
      {
        goto LABEL_15;
      }

      v11 = 1;
    }
  }

  else
  {

    p_skipToSiriDataSharingOptInForTesting = &self->_skipToSiriDataSharingOptInForTesting;
    if (!self->_skipToSiriDataSharingOptInForTesting)
    {
      goto LABEL_15;
    }

    v11 = 0;
  }

  v13 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = *p_skipToSiriDataSharingOptInForTesting;
    v16 = v13;
    v17 = [v14 numberWithBool:v15];
    v18 = [MEMORY[0x277CCABB0] numberWithBool:v11];
    *buf = 136315650;
    v22 = "[VTUIEnrollTrainingViewController viewDidLoad]";
    v23 = 2112;
    v24 = v17;
    v25 = 2112;
    v26 = v18;
    _os_log_impl(&dword_2728BC000, v16, OS_LOG_TYPE_DEFAULT, "%s #SiriDataSharingOptIn: Showing DataSharingOptIn. _skipToEndForTesting:%@, isBuddyForDataSharingOptIn:%@", buf, 0x20u);
  }

  self->_currentTrainingState = 5;
  [(VTUIEnrollTrainingViewController *)self _showSiriDataSharingOptIn];
LABEL_15:
  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isGreyMatterAvailable
{
  v15 = *MEMORY[0x277D85DE8];
  trainingViewMediator = self->_trainingViewMediator;
  if (trainingViewMediator)
  {
    v3 = [(VTUITrainingViewMediator *)trainingViewMediator isMemberOfClass:objc_opt_class()];
    v4 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[VTUIEnrollTrainingViewController _isGreyMatterAvailable]";
      v13 = 1024;
      v14 = v3;
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s #GMAvailability - from the current session: %d", &v11, 0x12u);
    }
  }

  else if (self->_enrollmentMode == 7)
  {
    v5 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[VTUIEnrollTrainingViewController _isGreyMatterAvailable]";
      _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s #GMAvailability - true:  _enrollmentMode == kVTUIEnrollmentModeGM", &v11, 0xCu);
    }

    LOBYTE(v3) = 1;
  }

  else if (+[_TtC14VoiceTriggerUI23GMAvailabilityViewModel isDeviceEligible])
  {
    v6 = objc_alloc_init(MEMORY[0x277CFB468]);
    v3 = [v6 isOptedIn];
    v7 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[VTUIEnrollTrainingViewController _isGreyMatterAvailable]";
      v13 = 1024;
      v14 = v3;
      _os_log_impl(&dword_2728BC000, v7, OS_LOG_TYPE_DEFAULT, "%s #GMAvailability - from CSFGMOptIn: %d", &v11, 0x12u);
    }
  }

  else
  {
    v8 = VTUILogContextFacility;
    LOBYTE(v3) = 0;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[VTUIEnrollTrainingViewController _isGreyMatterAvailable]";
      _os_log_impl(&dword_2728BC000, v8, OS_LOG_TYPE_DEFAULT, "%s #GMAvailability - false: ![GMAvailabilityViewModel isDeviceEligible]", &v11, 0xCu);
      LOBYTE(v3) = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_setupEnrollTrainingView
{
  if ([(VTUIEnrollTrainingViewController *)self _isGreyMatterAvailable])
  {

    [(VTUIEnrollTrainingViewController *)self _setupEnrollmentWithIntelligentLight];
  }

  else
  {

    [(VTUIEnrollTrainingViewController *)self _setupEnrollmentwithOrb];
  }
}

- (void)_setupEnrollmentwithOrb
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[VTUIEnrollTrainingViewController _setupEnrollmentwithOrb]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Setting up enrollment using Orb", buf, 0xCu);
  }

  v4 = [VTUIEnrollTrainingView alloc];
  v5 = [(VTUIEnrollTrainingViewController *)self view];
  [v5 bounds];
  v6 = [(VTUIEnrollTrainingView *)v4 initWithFrame:?];

  [(VTUIEnrollTrainingView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIEnrollTrainingView *)v6 setDelegate:self];
  v7 = [[VTUIEnrollTrainingViewMediatorOrb alloc] initWithTrainingView:v6];
  trainingViewMediator = self->_trainingViewMediator;
  self->_trainingViewMediator = v7;

  if (self->_enrollmentMode == 4)
  {
    [(VTUITrainingViewMediator *)self->_trainingViewMediator hideSkipButton:1];
  }

  v9 = [(VTUIEnrollTrainingViewController *)self view];
  [v9 addSubview:v6];
  v10 = MEMORY[0x277CCAAD0];
  v11 = _NSDictionaryOfVariableBindings(&cfstr_Enrolltraining.isa, v6, 0);
  v12 = [v10 constraintsWithVisualFormat:@"H:|[enrollTrainingView]|" options:0 metrics:0 views:v11];
  [v9 addConstraints:v12];

  v13 = MEMORY[0x277CCAAD0];
  v14 = _NSDictionaryOfVariableBindings(&cfstr_Enrolltraining.isa, v6, 0);
  v15 = [v13 constraintsWithVisualFormat:@"V:|[enrollTrainingView]|" options:0 metrics:0 views:v14];
  [v9 addConstraints:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_setupEnrollmentWithIntelligentLight
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[VTUIEnrollTrainingViewController _setupEnrollmentWithIntelligentLight]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Setting up enrollment using Intelligent Light", buf, 0xCu);
  }

  v4 = [VTUIEnrollTrainingIntelligentLightView alloc];
  v5 = [(VTUIEnrollTrainingViewController *)self view];
  [v5 bounds];
  v6 = [(VTUIEnrollTrainingIntelligentLightView *)v4 initWithFrame:?];

  [(VTUIEnrollTrainingIntelligentLightView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VTUIEnrollTrainingIntelligentLightView *)v6 setDelegate:self];
  v7 = [[VTUIEnrollTrainingViewMediatorGM alloc] initWithTrainingView:v6];
  trainingViewMediator = self->_trainingViewMediator;
  self->_trainingViewMediator = v7;

  if (self->_enrollmentMode == 4)
  {
    [(VTUITrainingViewMediator *)self->_trainingViewMediator hideSkipButton:1];
  }

  v9 = [(VTUIEnrollTrainingViewController *)self view];
  [v9 addSubview:v6];
  v10 = MEMORY[0x277CCAAD0];
  v11 = _NSDictionaryOfVariableBindings(&cfstr_Trainingview.isa, v6, 0);
  v12 = [v10 constraintsWithVisualFormat:@"H:|[trainingView]|" options:0 metrics:0 views:v11];
  [v9 addConstraints:v12];

  v13 = MEMORY[0x277CCAAD0];
  v14 = _NSDictionaryOfVariableBindings(&cfstr_Trainingview.isa, v6, 0);
  v15 = [v13 constraintsWithVisualFormat:@"V:|[trainingView]|" options:0 metrics:0 views:v14];
  [v9 addConstraints:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  if (self->_enrollmentMode != 2)
  {
    v5 = [(VTUIEnrollmentSetupIntroViewControlling *)self->_introViewController view:a4];
    [v5 setNeedsUpdateConstraints];
  }

  trainingViewMediator = self->_trainingViewMediator;

  [(VTUITrainingViewMediator *)trainingViewMediator setNeedsUpdateConstraints];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = VTUIEnrollTrainingViewController;
  [(VTUIEnrollTrainingViewController *)&v4 traitCollectionDidChange:a3];
  [(VTUIEnrollTrainingViewController *)self _updateViewBackground];
}

- (void)_updateViewBackground
{
  v3 = [(VTUIEnrollTrainingViewController *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  v6 = [(VTUIEnrollTrainingViewController *)self view];
  if (v4 == 2)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v5 = ;
  [v6 setBackgroundColor:v5];
}

- (void)_becomeActive
{
  v11 = *MEMORY[0x277D85DE8];
  isResignedActive = self->_isResignedActive;
  v4 = VTUILogContextFacility;
  v5 = os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT);
  if (isResignedActive)
  {
    if (v5)
    {
      v9 = 136315138;
      v10 = "[VTUIEnrollTrainingViewController _becomeActive]";
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Making View Active", &v9, 0xCu);
    }

    [(VTUIEnrollTrainingViewController *)self _showTrainingElements];
    self->_badMicRetryCount = 0;
    self->_AVVCRetryCount = 0;
    self->_isResignedActive = 0;
    self->_cannotHearRetryCount = 0;
    self->_digitalZerosRetryCount = 0;
    if ([MEMORY[0x277CEF2A8] isSCDAFrameworkEnabled])
    {
      v6 = 1408;
    }

    else
    {
      v6 = 1400;
    }

    if (!*(&self->super.super.super.isa + v6))
    {
      [(VTUIEnrollTrainingViewController *)self _setupMyriadCoordinator];
    }

    if (self->_enrollmentMode == 6)
    {
      [(VTUIEnrollTrainingViewController *)self _showVTConfirmationView];
    }

    else
    {
      currentTrainingState = self->_currentTrainingState;
      if (currentTrainingState == -1)
      {
        [(VTUIEnrollTrainingViewController *)self _startEnrollment];
      }

      else
      {
        [(VTUIEnrollTrainingViewController *)self _showTrainingInstruction:currentTrainingState afterDelay:0 isRetry:1 animate:0.0];
      }
    }
  }

  else if (v5)
  {
    v9 = 136315138;
    v10 = "[VTUIEnrollTrainingViewController _becomeActive]";
    _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Making View Active - early return because already active", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_resignActive
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[VTUIEnrollTrainingViewController _resignActive]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Resigning Active", &v6, 0xCu);
  }

  self->_isResignedActive = 1;
  [(VTUIEnrollTrainingViewController *)self _hideTrainingElements];
  [(VTUIEnrollTrainingViewController *)self _resetTrainingManager];
  v4 = [(VTUIEnrollTrainingViewController *)self audioHintPlayer];
  [v4 cleanup];

  if (self->_currentTrainingState <= 4)
  {
    [(VTUIEnrollTrainingViewController *)self restartFromIntroView];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_didEnterBackground
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[VTUIEnrollTrainingViewController _didEnterBackground]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Did Enter Background", &v8, 0xCu);
  }

  if ([(VTUIEnrollTrainingViewController *)self _isTrainingInProgress])
  {
    [(VTUIEnrollTrainingViewController *)self _resetEnrollment];
    [(VTUITrainingViewMediator *)self->_trainingViewMediator clearInstructionLabel];
    if (self->_cachedColorForNavigationUI)
    {
      v4 = [(VTUIEnrollTrainingViewController *)self navigationController];
      v5 = [v4 navigationBar];
      [v5 setTintColor:self->_cachedColorForNavigationUI];

      cachedColorForNavigationUI = self->_cachedColorForNavigationUI;
      self->_cachedColorForNavigationUI = 0;
    }
  }

  if (self->_currentTrainingState <= 4)
  {
    [(VTUIEnrollTrainingViewController *)self _startEnrollment];
  }

  [(VTUIEnrollmentSetupIntroViewControlling *)self->_introViewController didEnterBackground];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_showBadMicAlertWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__VTUIEnrollTrainingViewController__showBadMicAlertWithCompletion___block_invoke;
  v6[3] = &unk_279E541D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(VTUIEnrollTrainingViewController *)self _cleanupTrainingManagerWithCompletion:v6];
}

uint64_t __67__VTUIEnrollTrainingViewController__showBadMicAlertWithCompletion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[VTUIEnrollTrainingViewController _showBadMicAlertWithCompletion:]_block_invoke";
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
    v6 = "[VTUIEnrollTrainingViewController _retryAfterBadMicAlert]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_INFO, "%s Trying again after Bad Mic Alert", &v5, 0xCu);
  }

  [(VTUIEnrollTrainingViewController *)self _resumeTraining:1];
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
    v9 = "[VTUIEnrollTrainingViewController _showUnsupportedLocaleAlert]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Showing Unsupported LocaleAlert", buf, 0xCu);
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__VTUIEnrollTrainingViewController__showUnsupportedLocaleAlert__block_invoke;
  v5[3] = &unk_279E541F8;
  objc_copyWeak(&v6, &location);
  [(VTUIEnrollTrainingViewController *)self _showUnsupportedLocaleAlertCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  v4 = *MEMORY[0x277D85DE8];
}

void __63__VTUIEnrollTrainingViewController__showUnsupportedLocaleAlert__block_invoke(uint64_t a1)
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
  v50[5] = *MEMORY[0x277D85DE8];
  v28 = +[VTUIStyle sharedStyle];
  v3 = [v28 shouldSetupForMultipleTriggerPhrases];
  [(VTUIAudioHintPlayer *)self->_audioHintPlayer updateIfNeededForUsesMultipleTriggers:v3];
  v4 = [(VTUIAudioHintPlayer *)self->_audioHintPlayer outputVoice];
  if (v3)
  {
    v48[0] = @"Instruction";
    v27 = +[VTUIStringsHelper sharedStringsHelper];
    [v27 uiLocalizedStringForKey:@"TEXT_TITLE_UTT1" usesMultipleTriggers:1 siriVoice:v4];
    v26 = v48[1] = @"RetryOnFail";
    v49[0] = v26;
    v49[1] = MEMORY[0x277CBEC28];
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
    v50[0] = v25;
    v46[0] = @"Instruction";
    v24 = +[VTUIStringsHelper sharedStringsHelper];
    v5 = [v24 uiLocalizedStringForKey:@"TEXT_TITLE_UTT2" usesMultipleTriggers:0 siriVoice:v4];
    v46[1] = @"RetryOnFail";
    v6 = MEMORY[0x277CBEC38];
    v23 = v5;
    v47[0] = v5;
    v47[1] = MEMORY[0x277CBEC38];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
    v50[1] = v22;
    v44[0] = @"Instruction";
    v21 = +[VTUIStringsHelper sharedStringsHelper];
    [v21 uiLocalizedStringForKey:@"TEXT_TITLE_UTT3" usesMultipleTriggers:1 siriVoice:v4];
    v45[0] = v44[1] = @"RetryOnFail";
    v20 = v45[0];
    v45[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
    v50[2] = v7;
    v42[0] = @"Instruction";
    v8 = +[VTUIStringsHelper sharedStringsHelper];
    v9 = [v8 uiLocalizedStringForKey:@"TEXT_TITLE_UTT4" usesMultipleTriggers:0 siriVoice:v4];
    v42[1] = @"RetryOnFail";
    v43[0] = v9;
    v43[1] = v6;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
    v50[3] = v10;
    v40[0] = @"Instruction";
    v11 = +[VTUIStringsHelper sharedStringsHelper];
    v12 = [v11 uiLocalizedStringForKey:@"TEXT_TITLE_UTT5" usesMultipleTriggers:1 siriVoice:v4];
    v40[1] = @"RetryOnFail";
    v41[0] = v12;
    v41[1] = v6;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
    v50[4] = v13;
    v14 = v50;
  }

  else
  {
    v37[0] = @"Instruction";
    v27 = +[VTUIStringsHelper sharedStringsHelper];
    [v27 uiLocalizedStringForKey:@"TEXT_TITLE_UTT1" usesMultipleTriggers:0 siriVoice:v4];
    v26 = v37[1] = @"RetryOnFail";
    v38[0] = v26;
    v38[1] = MEMORY[0x277CBEC28];
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    v39[0] = v25;
    v35[0] = @"Instruction";
    v24 = +[VTUIStringsHelper sharedStringsHelper];
    v15 = [v24 uiLocalizedStringForKey:@"TEXT_TITLE_UTT2" usesMultipleTriggers:0 siriVoice:v4];
    v35[1] = @"RetryOnFail";
    v16 = MEMORY[0x277CBEC38];
    v23 = v15;
    v36[0] = v15;
    v36[1] = MEMORY[0x277CBEC38];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    v39[1] = v22;
    v33[0] = @"Instruction";
    v21 = +[VTUIStringsHelper sharedStringsHelper];
    [v21 uiLocalizedStringForKey:@"TEXT_TITLE_UTT3" usesMultipleTriggers:0 siriVoice:v4];
    v34[0] = v33[1] = @"RetryOnFail";
    v20 = v34[0];
    v34[1] = v16;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
    v39[2] = v7;
    v31[0] = @"Instruction";
    v8 = +[VTUIStringsHelper sharedStringsHelper];
    v9 = [v8 uiLocalizedStringForKey:@"TEXT_TITLE_UTT4" usesMultipleTriggers:0 siriVoice:v4];
    v31[1] = @"RetryOnFail";
    v32[0] = v9;
    v32[1] = v16;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v39[3] = v10;
    v29[0] = @"Instruction";
    v11 = +[VTUIStringsHelper sharedStringsHelper];
    v12 = [v11 uiLocalizedStringForKey:@"TEXT_TITLE_UTT5" usesMultipleTriggers:0 siriVoice:v4];
    v29[1] = @"RetryOnFail";
    v30[0] = v12;
    v30[1] = v16;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v39[4] = v13;
    v14 = v39;
  }

  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:5];
  trainingPageInstructions = self->_trainingPageInstructions;
  self->_trainingPageInstructions = v17;

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_resetIdleTimer
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 setIdleTimerDisabled:1];

  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 setIdleTimerDisabled:0];
}

- (void)_showGMIntroView
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[VTUIEnrollTrainingViewController _showGMIntroView]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Displaying GM view", buf, 0xCu);
  }

  if (!self->_gmViewController)
  {
    v4 = [(VTUIEnrollTrainingViewController *)self view];
    v5 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v7 = 2;
    }

    else
    {
      v8 = +[MGWrapper sharedMGWrapper];
      v9 = [v8 isDeviceVision];

      if (v9)
      {
        v7 = 2;
      }

      else
      {
        v7 = 0;
      }
    }

    v10 = [(VTUIEnrollTrainingViewController *)self navigationController];
    [v10 setModalPresentationStyle:v7];

    v11 = [[VTUIGMEnrollmentViewController alloc] initWithDelegate:self];
    gmViewController = self->_gmViewController;
    self->_gmViewController = v11;

    [(VTUIGMEnrollmentViewController *)self->_gmViewController willMoveToParentViewController:self];
    [(VTUIEnrollTrainingViewController *)self addChildViewController:self->_gmViewController];
    [(VTUIGMEnrollmentViewController *)self->_gmViewController didMoveToParentViewController:self];
    v13 = [(VTUIGMEnrollmentViewController *)self->_gmViewController view];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v13 setAutoresizesSubviews:0];
    v14 = [(VTUIEnrollTrainingViewController *)self view];
    [v14 addSubview:v13];

    if (+[VTUIFeatureFlags isNaturalUIEnabled])
    {
      v15 = +[VTUIStyle sharedStyle];
      v16 = [v15 isIpad];

      if ((v16 & 1) == 0)
      {
        v17 = [(VTUIEnrollTrainingViewController *)self navigationController];
        v18 = [v17 navigationBar];
        [v18 setOverrideUserInterfaceStyle:1];

        [(VTUIEnrollTrainingViewController *)self setOverrideUserInterfaceStyle:1];
        [(VTUIGMEnrollmentViewController *)self->_gmViewController setOverrideUserInterfaceStyle:1];
      }
    }

    v19 = MEMORY[0x277CCAAD0];
    v20 = _NSDictionaryOfVariableBindings(&cfstr_Gmview.isa, v13, 0);
    v21 = [v19 constraintsWithVisualFormat:@"H:|[gmView]|" options:0 metrics:0 views:v20];
    [v4 addConstraints:v21];

    v22 = MEMORY[0x277CCAAD0];
    v23 = _NSDictionaryOfVariableBindings(&cfstr_Gmview.isa, v13, 0);
    v24 = [v22 constraintsWithVisualFormat:@"V:|[gmView]|" options:0 metrics:0 views:v23];
    [v4 addConstraints:v24];

    [(VTUITrainingViewMediator *)self->_trainingViewMediator hideSkipButton:1];
    [(VTUIEnrollTrainingViewController *)self prewarm];
  }

  if (MGGetBoolAnswer())
  {
    [(VTUIEnrollTrainingViewController *)self _prepareCameraButtonBuddy];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_prepareCameraButtonBuddy
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[VTUIEnrollTrainingViewController _prepareCameraButtonBuddy]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Preloading Camera Button Buddy", buf, 0xCu);
  }

  v4 = objc_alloc_init(MEMORY[0x277CF7E70]);
  cameraButtonBuddyViewController = self->_cameraButtonBuddyViewController;
  self->_cameraButtonBuddyViewController = v4;

  [(CAMCameraButtonBuddyViewController *)self->_cameraButtonBuddyViewController setDelegate:self];
  [(CAMCameraButtonBuddyViewController *)self->_cameraButtonBuddyViewController willMoveToParentViewController:self];
  [(VTUIEnrollTrainingViewController *)self addChildViewController:self->_cameraButtonBuddyViewController];
  [(CAMCameraButtonBuddyViewController *)self->_cameraButtonBuddyViewController didMoveToParentViewController:self];
  objc_initWeak(buf, self);
  v6 = self->_cameraButtonBuddyViewController;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__VTUIEnrollTrainingViewController__prepareCameraButtonBuddy__block_invoke;
  v8[3] = &unk_279E541F8;
  objc_copyWeak(&v9, buf);
  [(CAMCameraButtonBuddyViewController *)v6 loadAssetsWithCompletion:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

void __61__VTUIEnrollTrainingViewController__prepareCameraButtonBuddy__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1265] = 1;
  }
}

- (void)siriGMIntroViewControllerContinuePressed:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[VTUIEnrollTrainingViewController siriGMIntroViewControllerContinuePressed:]";
    _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s GM view Continue", &v7, 0xCu);
  }

  if ([MEMORY[0x277D77E80] isEligibleForExperience:0])
  {
    [(VTUIEnrollTrainingViewController *)self _continueToSummarizationFromGM];
  }

  else
  {
    [(VTUIEnrollTrainingViewController *)self _continueToNextFromGM];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_continueToSummarizationFromGM
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[VTUIEnrollTrainingViewController _continueToSummarizationFromGM]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s GM to Summarization", buf, 0xCu);
  }

  v4 = [(VTUIEnrollTrainingViewController *)self view];
  v5 = [MEMORY[0x277D77E80] onboardingControllerForExperience:0];
  summarizationOnboardingController = self->_summarizationOnboardingController;
  self->_summarizationOnboardingController = v5;

  [(UNNotificationOnboardingController *)self->_summarizationOnboardingController setDelegate:self];
  [(UNNotificationOnboardingController *)self->_summarizationOnboardingController willMoveToParentViewController:self];
  [(VTUIEnrollTrainingViewController *)self addChildViewController:self->_summarizationOnboardingController];
  [(UNNotificationOnboardingController *)self->_summarizationOnboardingController didMoveToParentViewController:self];
  v7 = [(UNNotificationOnboardingController *)self->_summarizationOnboardingController view];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setAutoresizesSubviews:0];
  [v4 addSubview:v7];
  [v7 setAlpha:0.0];
  v8 = MEMORY[0x277CCAAD0];
  v9 = _NSDictionaryOfVariableBindings(&cfstr_Summarizationv.isa, v7, 0);
  v10 = [v8 constraintsWithVisualFormat:@"H:|[summarizationView]|" options:0 metrics:0 views:v9];
  [v4 addConstraints:v10];

  v11 = MEMORY[0x277CCAAD0];
  v12 = _NSDictionaryOfVariableBindings(&cfstr_Summarizationv.isa, v7, 0);
  v13 = [v11 constraintsWithVisualFormat:@"V:|[summarizationView]|" options:0 metrics:0 views:v12];
  [v4 addConstraints:v13];

  objc_initWeak(buf, self);
  v14 = MEMORY[0x277D75D18];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__VTUIEnrollTrainingViewController__continueToSummarizationFromGM__block_invoke;
  v19[3] = &unk_279E54220;
  v15 = v7;
  v20 = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__VTUIEnrollTrainingViewController__continueToSummarizationFromGM__block_invoke_2;
  v17[3] = &unk_279E54248;
  objc_copyWeak(&v18, buf);
  [v14 animateWithDuration:v19 animations:v17 completion:0.3];
  objc_destroyWeak(&v18);

  objc_destroyWeak(buf);
  v16 = *MEMORY[0x277D85DE8];
}

void __66__VTUIEnrollTrainingViewController__continueToSummarizationFromGM__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained[142] view];
    [v2 removeFromSuperview];

    v3 = v4[142];
    v4[142] = 0;

    WeakRetained = v4;
  }
}

- (void)_continueToCameraButtonBuddy
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[VTUIEnrollTrainingViewController _continueToCameraButtonBuddy]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s To Camera Button Buddy", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__VTUIEnrollTrainingViewController__continueToCameraButtonBuddy__block_invoke;
  block[3] = &unk_279E541F8;
  objc_copyWeak(&v7, buf);
  dispatch_async(v4, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__VTUIEnrollTrainingViewController__continueToCameraButtonBuddy__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if ((WeakRetained[1265] & 1) == 0)
    {
      do
      {
        [MEMORY[0x277CCACC8] sleepForTimeInterval:0.05];
      }

      while (v2[1265] != 1);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__VTUIEnrollTrainingViewController__continueToCameraButtonBuddy__block_invoke_2;
    block[3] = &unk_279E54220;
    block[4] = v2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __64__VTUIEnrollTrainingViewController__continueToCameraButtonBuddy__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 view];
    v4 = [*(*(a1 + 32) + 1176) view];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setAutoresizesSubviews:0];
    [v3 addSubview:v4];
    [v4 setAlpha:0.0];
    v5 = MEMORY[0x277CCAAD0];
    v6 = _NSDictionaryOfVariableBindings(&cfstr_Camerabuddyvie.isa, v4, 0);
    v7 = [v5 constraintsWithVisualFormat:@"H:|[cameraBuddyView]|" options:0 metrics:0 views:v6];
    [v3 addConstraints:v7];

    v8 = MEMORY[0x277CCAAD0];
    v9 = _NSDictionaryOfVariableBindings(&cfstr_Camerabuddyvie.isa, v4, 0);
    v10 = [v8 constraintsWithVisualFormat:@"V:|[cameraBuddyView]|" options:0 metrics:0 views:v9];
    [v3 addConstraints:v10];

    v11 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__VTUIEnrollTrainingViewController__continueToCameraButtonBuddy__block_invoke_3;
    v13[3] = &unk_279E54220;
    v14 = v4;
    v12 = v4;
    [v11 animateWithDuration:v13 animations:0 completion:0.3];
  }
}

- (void)cameraButtonBuddyViewControllerDidFinish:(id)a3
{
  v4 = a3;
  v5 = [(CAMCameraButtonBuddyViewController *)self->_cameraButtonBuddyViewController view];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D75D18];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__VTUIEnrollTrainingViewController_cameraButtonBuddyViewControllerDidFinish___block_invoke;
  v10[3] = &unk_279E54220;
  v7 = v5;
  v11 = v7;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__VTUIEnrollTrainingViewController_cameraButtonBuddyViewControllerDidFinish___block_invoke_2;
  v8[3] = &unk_279E54248;
  objc_copyWeak(&v9, &location);
  [v6 animateWithDuration:v10 animations:v8 completion:0.3];
  [(VTUIEnrollTrainingViewController *)self _showSiriIntroView];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

void __77__VTUIEnrollTrainingViewController_cameraButtonBuddyViewControllerDidFinish___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained[147] view];
    [v2 removeFromSuperview];

    v3 = v4[147];
    v4[147] = 0;

    WeakRetained = v4;
  }
}

- (void)_continueToNextFromGM
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[VTUIEnrollTrainingViewController _continueToNextFromGM]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s GM to next buddy", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v4 = MEMORY[0x277D75D18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__VTUIEnrollTrainingViewController__continueToNextFromGM__block_invoke;
  v11[3] = &unk_279E54220;
  v11[4] = self;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __57__VTUIEnrollTrainingViewController__continueToNextFromGM__block_invoke_2;
  v9 = &unk_279E54248;
  objc_copyWeak(&v10, buf);
  [v4 animateWithDuration:v11 animations:&v6 completion:0.3];
  [(VTUIEnrollTrainingViewController *)self _showVisualIntelligenceIntroIfNeeded:v6];
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

void __57__VTUIEnrollTrainingViewController__continueToNextFromGM__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1136) view];
  [v1 setAlpha:0.0];
}

void __57__VTUIEnrollTrainingViewController__continueToNextFromGM__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained[142] view];
    [v2 removeFromSuperview];

    v3 = v4[142];
    v4[142] = 0;

    WeakRetained = v4;
  }
}

- (void)_continueToNextFromSummarization
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[VTUIEnrollTrainingViewController _continueToNextFromSummarization]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Summarization to next buddy", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v4 = MEMORY[0x277D75D18];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__VTUIEnrollTrainingViewController__continueToNextFromSummarization__block_invoke;
  v11[3] = &unk_279E54220;
  v11[4] = self;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __68__VTUIEnrollTrainingViewController__continueToNextFromSummarization__block_invoke_2;
  v9 = &unk_279E54248;
  objc_copyWeak(&v10, buf);
  [v4 animateWithDuration:v11 animations:&v6 completion:0.3];
  [(VTUIEnrollTrainingViewController *)self _showVisualIntelligenceIntroIfNeeded:v6];
  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

void __68__VTUIEnrollTrainingViewController__continueToNextFromSummarization__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1192) view];
  [v1 setAlpha:0.0];
}

void __68__VTUIEnrollTrainingViewController__continueToNextFromSummarization__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained[149] view];
    [v2 removeFromSuperview];

    v3 = v4[149];
    v4[149] = 0;

    WeakRetained = v4;
  }
}

- (void)_showVisualIntelligenceIntroIfNeeded
{
  v24 = *MEMORY[0x277D85DE8];
  if (AFVisualIntelligenceCameraRestricted() & 1) != 0 || (MGGetBoolAnswer())
  {
    v3 = *MEMORY[0x277D85DE8];

    [(VTUIEnrollTrainingViewController *)self _showCameraButtonBuddyControlOrSiriIntro];
  }

  else
  {
    v4 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "[VTUIEnrollTrainingViewController _showVisualIntelligenceIntroIfNeeded]";
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Continue to Visual Intelligence Buddy", buf, 0xCu);
    }

    v5 = [[_TtC14VoiceTriggerUI37VisualIntelligenceIntroViewController alloc] initWithDelegate:self];
    visualIntelligenceViewController = self->_visualIntelligenceViewController;
    self->_visualIntelligenceViewController = v5;

    [(VTUIEnrollTrainingViewController *)self addChildViewController:self->_visualIntelligenceViewController];
    v7 = [(VisualIntelligenceIntroViewController *)self->_visualIntelligenceViewController view];
    [v7 setAlpha:0.0];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setAutoresizesSubviews:0];
    v8 = [(VTUIEnrollTrainingViewController *)self view];
    [v8 addSubview:v7];

    v9 = [(VTUIEnrollTrainingViewController *)self view];
    v10 = MEMORY[0x277CCAAD0];
    v11 = _NSDictionaryOfVariableBindings(&cfstr_Visualintellig.isa, v7, 0);
    v12 = [v10 constraintsWithVisualFormat:@"H:|[visualIntelligenceView]|" options:0 metrics:0 views:v11];
    [v9 addConstraints:v12];

    v13 = [(VTUIEnrollTrainingViewController *)self view];
    v14 = MEMORY[0x277CCAAD0];
    v15 = _NSDictionaryOfVariableBindings(&cfstr_Visualintellig.isa, v7, 0);
    v16 = [v14 constraintsWithVisualFormat:@"V:|[visualIntelligenceView]|" options:0 metrics:0 views:v15];
    [v13 addConstraints:v16];

    v17 = MEMORY[0x277D75D18];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __72__VTUIEnrollTrainingViewController__showVisualIntelligenceIntroIfNeeded__block_invoke;
    v20[3] = &unk_279E54220;
    v21 = v7;
    v18 = v7;
    [v17 animateWithDuration:v20 animations:0 completion:0.3];

    v19 = *MEMORY[0x277D85DE8];
  }
}

- (void)_showCameraButtonBuddyControlOrSiriIntro
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = MGGetBoolAnswer();
  v4 = VTUILogContextFacility;
  v5 = os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v7 = 136315138;
      v8 = "[VTUIEnrollTrainingViewController _showCameraButtonBuddyControlOrSiriIntro]";
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Continue to Camera Button Buddy", &v7, 0xCu);
    }

    [(VTUIEnrollTrainingViewController *)self _continueToCameraButtonBuddy];
  }

  else
  {
    if (v5)
    {
      v7 = 136315138;
      v8 = "[VTUIEnrollTrainingViewController _showCameraButtonBuddyControlOrSiriIntro]";
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Continue to Siri Buddy", &v7, 0xCu);
    }

    [(VTUIEnrollTrainingViewController *)self _showSiriIntroView];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)userDidTapContinue:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[VTUIEnrollTrainingViewController userDidTapContinue:]";
    _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Visual Intelligence to next buddy", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = MEMORY[0x277D75D18];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__VTUIEnrollTrainingViewController_userDidTapContinue___block_invoke;
  v13[3] = &unk_279E54220;
  v13[4] = self;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __55__VTUIEnrollTrainingViewController_userDidTapContinue___block_invoke_2;
  v11 = &unk_279E54248;
  objc_copyWeak(&v12, buf);
  [v6 animateWithDuration:v13 animations:&v8 completion:0.3];
  [(VTUIEnrollTrainingViewController *)self _showCameraButtonBuddyControlOrSiriIntro:v8];
  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);

  v7 = *MEMORY[0x277D85DE8];
}

void __55__VTUIEnrollTrainingViewController_userDidTapContinue___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1200) view];
  [v1 setAlpha:0.0];
}

void __55__VTUIEnrollTrainingViewController_userDidTapContinue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained[150] view];
    [v2 removeFromSuperview];

    v3 = v4[150];
    v4[150] = 0;

    WeakRetained = v4;
  }
}

- (void)onboardingController:(id)a3 requestsPushingTo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(VTUIEnrollTrainingViewController *)self view];
  v9 = v7;
  [v9 setDelegate:self];
  [v9 willMoveToParentViewController:self];
  [(VTUIEnrollTrainingViewController *)self addChildViewController:v9];
  [v9 didMoveToParentViewController:self];
  v10 = [v9 view];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 setAutoresizesSubviews:0];
  [v8 addSubview:v10];
  [v10 setAlpha:0.0];
  v11 = MEMORY[0x277CCAAD0];
  v12 = _NSDictionaryOfVariableBindings(&cfstr_Nextsummarizat.isa, v10, 0);
  v13 = [v11 constraintsWithVisualFormat:@"H:|[nextSummarizationView]|" options:0 metrics:0 views:v12];
  [v8 addConstraints:v13];

  v14 = MEMORY[0x277CCAAD0];
  v15 = _NSDictionaryOfVariableBindings(&cfstr_Nextsummarizat.isa, v10, 0);
  v16 = [v14 constraintsWithVisualFormat:@"V:|[nextSummarizationView]|" options:0 metrics:0 views:v15];
  [v8 addConstraints:v16];

  objc_initWeak(&location, self);
  v17 = MEMORY[0x277D75D18];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __75__VTUIEnrollTrainingViewController_onboardingController_requestsPushingTo___block_invoke;
  v23[3] = &unk_279E54220;
  v18 = v10;
  v24 = v18;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __75__VTUIEnrollTrainingViewController_onboardingController_requestsPushingTo___block_invoke_2;
  v20[3] = &unk_279E54270;
  objc_copyWeak(&v22, &location);
  v19 = v9;
  v21 = v19;
  [v17 animateWithDuration:v23 animations:v20 completion:0.3];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __75__VTUIEnrollTrainingViewController_onboardingController_requestsPushingTo___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained[149] view];
    [v3 removeFromSuperview];

    v4 = v5[149];
    v5[149] = 0;

    objc_storeStrong(v5 + 149, *(a1 + 32));
    WeakRetained = v5;
  }
}

- (void)_setupConstraintsAndAddGMIntroView
{
  v24[4] = *MEMORY[0x277D85DE8];
  [(VTUIEnrollTrainingViewController *)self addChildViewController:self->_introViewController];
  v3 = [(VTUIEnrollmentSetupIntroViewControlling *)self->_introViewController view];
  [v3 setAlpha:0.0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setAutoresizesSubviews:0];
  v4 = [(VTUIEnrollTrainingViewController *)self view];
  [v4 addSubview:v3];

  v17 = MEMORY[0x277CCAAD0];
  v22 = [v3 topAnchor];
  v23 = [(VTUIEnrollTrainingViewController *)self view];
  v21 = [v23 topAnchor];
  v20 = [v22 constraintEqualToAnchor:v21 constant:0.0];
  v24[0] = v20;
  v18 = [v3 leftAnchor];
  v19 = [(VTUIEnrollTrainingViewController *)self view];
  v16 = [v19 leftAnchor];
  v15 = [v18 constraintEqualToAnchor:v16 constant:0.0];
  v24[1] = v15;
  v5 = [v3 rightAnchor];
  v6 = [(VTUIEnrollTrainingViewController *)self view];
  v7 = [v6 rightAnchor];
  v8 = [v5 constraintEqualToAnchor:v7 constant:0.0];
  v24[2] = v8;
  v9 = [v3 bottomAnchor];
  v10 = [(VTUIEnrollTrainingViewController *)self view];
  v11 = [v10 bottomAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:0.0];
  v24[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
  [v17 activateConstraints:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_showSiriIntroView
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v61 = "[VTUIEnrollTrainingViewController _showSiriIntroView]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Displaying Intro view", buf, 0xCu);
  }

  educationViewController = self->_educationViewController;
  if (educationViewController)
  {
    v5 = [(VTUISiriEducationViewController *)educationViewController view];
    [v5 removeFromSuperview];

    v6 = self->_educationViewController;
    self->_educationViewController = 0;
  }

  [(VTUIEnrollTrainingViewController *)self setDidShowVoiceTriggerPrompt:1];
  if (!self->_introViewController)
  {
    v7 = [(VTUIEnrollTrainingViewController *)self view];
    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    v10 = [(VTUIEnrollTrainingViewController *)self navigationController];
    v11 = v10;
    if ((v9 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    [v10 setModalPresentationStyle:v12];

    [(VTUIEnrollTrainingViewController *)self _setInitialTriggerPhraseIfNotSet];
    [(VTUIEnrollTrainingViewController *)self _setupTrainingStates];
    v58 = 0;
    v13 = [MEMORY[0x277CEF368] sharedPreferences];
    v14 = [MEMORY[0x277CBEAF8] currentLocale];
    v15 = [v14 localeIdentifier];
    v16 = [v13 allSiriLanguageCodesForSystemLanguageCode:v15 isGoodFit:&v58];
    siriLanguageOptions = self->_siriLanguageOptions;
    self->_siriLanguageOptions = v16;

    if (self->_disambiguateLanguageOptionsForTesting)
    {
      v18 = self->_siriLanguageOptions;
      self->_siriLanguageOptions = &unk_2881EEDB8;
    }

    [v7 bounds];
    Width = CGRectGetWidth(v65);
    v20 = [MEMORY[0x277D759A0] mainScreen];
    [v20 bounds];
    v21 = vabdd_f64(Width, CGRectGetWidth(v66)) > 2.22044605e-16;

    v22 = +[VTUIStyle sharedStyle];
    [v22 setIsFloatingWithReducedWidth:v21];

    if ([(VTUIEnrollTrainingViewController *)self _isGreyMatterAvailable])
    {
      v23 = [[VTUIEnrollmentSetupIntroViewControllerGM alloc] initWithDelegate:self];
      introViewController = self->_introViewController;
      self->_introViewController = v23;

      [(VTUIEnrollTrainingViewController *)self _setupConstraintsAndAddGMIntroView];
      [(VTUIEnrollTrainingViewController *)self addChildViewController:self->_introViewController];
      if (+[VTUIFeatureFlags isNaturalUIEnabled])
      {
        v25 = +[VTUIStyle sharedStyle];
        v26 = [v25 isIpad];

        if ((v26 & 1) == 0)
        {
          v27 = [(VTUIEnrollTrainingViewController *)self navigationController];
          v28 = [v27 navigationBar];
          [v28 setOverrideUserInterfaceStyle:2];

          [(VTUIEnrollTrainingViewController *)self setOverrideUserInterfaceStyle:2];
        }
      }

      v29 = [(VTUIEnrollmentSetupIntroViewControlling *)self->_introViewController view];
      objc_initWeak(buf, self);
      v30 = MEMORY[0x277D75D18];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __54__VTUIEnrollTrainingViewController__showSiriIntroView__block_invoke;
      v56[3] = &unk_279E54220;
      v31 = v29;
      v57 = v31;
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __54__VTUIEnrollTrainingViewController__showSiriIntroView__block_invoke_2;
      v54[3] = &unk_279E54248;
      objc_copyWeak(&v55, buf);
      [v30 animateWithDuration:v56 animations:v54 completion:0.3];
      objc_destroyWeak(&v55);

      objc_destroyWeak(buf);
    }

    else
    {
      v32 = [[VTUIEnrollmentSetupIntroViewControllerOrb alloc] initWithDelegate:self];
      v33 = self->_introViewController;
      self->_introViewController = v32;

      [(VTUIEnrollmentSetupIntroViewControlling *)self->_introViewController willMoveToParentViewController:self];
      [(VTUIEnrollTrainingViewController *)self addChildViewController:self->_introViewController];
      [(VTUIEnrollmentSetupIntroViewControlling *)self->_introViewController didMoveToParentViewController:self];
      v31 = [(VTUIEnrollmentSetupIntroViewControlling *)self->_introViewController view];
      [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v31 setAutoresizesSubviews:0];
      v34 = [(VTUIEnrollTrainingViewController *)self view];
      [v34 addSubview:v31];

      v35 = MEMORY[0x277CCAAD0];
      v36 = _NSDictionaryOfVariableBindings(&cfstr_Introview.isa, v31, 0);
      v37 = [v35 constraintsWithVisualFormat:@"H:|[introView]|" options:0 metrics:0 views:v36];
      [v7 addConstraints:v37];

      v38 = MEMORY[0x277CCAAD0];
      v39 = _NSDictionaryOfVariableBindings(&cfstr_Introview.isa, v31, 0);
      v40 = [v38 constraintsWithVisualFormat:@"V:|[introView]|" options:0 metrics:0 views:v39];
      [v7 addConstraints:v40];
    }

    [(VTUITrainingViewMediator *)self->_trainingViewMediator hideSkipButton:1];
    [(VTUIAnalytics *)self->_analyticsEvent setIntroViewShown:[(VTUIAnalytics *)self->_analyticsEvent introViewShown]+ 1];
    v41 = +[VTUIStyle sharedStyle];
    v42 = [v41 enrollmentMode];

    v43 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v61 = "[VTUIEnrollTrainingViewController _showSiriIntroView]";
      v62 = 2048;
      v63 = v42;
      _os_log_impl(&dword_2728BC000, v43, OS_LOG_TYPE_DEFAULT, "%s Enrollment mode: %ld", buf, 0x16u);
    }

    if (v42 != 2 && v42 != 4)
    {
      if (!self->_provider)
      {
        v44 = objc_alloc_init(MEMORY[0x277CEF298]);
        provider = self->_provider;
        self->_provider = v44;
      }

      if (!self->_enablementConfiguration)
      {
        if ([(VTUIEnrollTrainingViewController *)self _shouldPresentLanguageDisambiguation])
        {
          v46 = self->_siriLanguageOptions;
        }

        else
        {
          spokenLanguageCode = self->_spokenLanguageCode;
          v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&spokenLanguageCode count:1];
        }

        v47 = v46;
        objc_initWeak(buf, self);
        self->_isEnablementConfigurationLoading = 1;
        v48 = self->_provider;
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __54__VTUIEnrollTrainingViewController__showSiriIntroView__block_invoke_194;
        v51[3] = &unk_279E542C0;
        objc_copyWeak(&v53, buf);
        v49 = v47;
        v52 = v49;
        [(AFEnablementFlowConfigurationProvider *)v48 configurationForEnablementFlow:1 recognitionLanguageCodes:v49 completion:v51];

        objc_destroyWeak(&v53);
        objc_destroyWeak(buf);
      }
    }
  }

  v50 = *MEMORY[0x277D85DE8];
}

void __54__VTUIEnrollTrainingViewController__showSiriIntroView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[166] showTrainingView];
    WeakRetained = v2;
  }
}

void __54__VTUIEnrollTrainingViewController__showSiriIntroView__block_invoke_194(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__VTUIEnrollTrainingViewController__showSiriIntroView__block_invoke_2_195;
  block[3] = &unk_279E54298;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

void __54__VTUIEnrollTrainingViewController__showSiriIntroView__block_invoke_2_195(uint64_t a1)
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
      v10 = "[VTUIEnrollTrainingViewController _showSiriIntroView]_block_invoke_2";
      v11 = 2112;
      v12 = v4;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Enablement Configuration %@ for recognition languages %@", &v9, 0x20u);
    }

    objc_storeStrong(WeakRetained + 153, *(a1 + 32));
    *(WeakRetained + 1264) = 0;
    v6 = WeakRetained[159];
    if (v6)
    {
      v6[2]();
      v7 = WeakRetained[159];
      WeakRetained[159] = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_showVTConfirmationView
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[VTUIEnrollTrainingViewController _showVTConfirmationView]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Displaying Voice Trigger Confirmation view", buf, 0xCu);
  }

  educationViewController = self->_educationViewController;
  if (educationViewController)
  {
    v5 = [(VTUISiriEducationViewController *)educationViewController view];
    [v5 removeFromSuperview];

    v6 = self->_educationViewController;
    self->_educationViewController = 0;
  }

  [(VTUIEnrollTrainingViewController *)self setDidShowVoiceTriggerPrompt:1];
  if (!self->_vtConfirmationViewController)
  {
    v7 = [(VTUIEnrollTrainingViewController *)self view];
    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    v10 = [(VTUIEnrollTrainingViewController *)self navigationController];
    [v10 setModalPresentationStyle:2 * ((v9 & 0xFFFFFFFFFFFFFFFBLL) == 1)];

    [v7 bounds];
    Width = CGRectGetWidth(v29);
    v12 = [MEMORY[0x277D759A0] mainScreen];
    [v12 bounds];
    v13 = vabdd_f64(Width, CGRectGetWidth(v30)) > 2.22044605e-16;

    v14 = +[VTUIStyle sharedStyle];
    [v14 setIsFloatingWithReducedWidth:v13];

    v15 = [[VTUIVoiceTriggerConfirmationViewController alloc] initWithDelegate:self];
    vtConfirmationViewController = self->_vtConfirmationViewController;
    self->_vtConfirmationViewController = v15;

    [(VTUIVoiceTriggerConfirmationViewController *)self->_vtConfirmationViewController willMoveToParentViewController:self];
    [(VTUIEnrollTrainingViewController *)self addChildViewController:self->_vtConfirmationViewController];
    [(VTUIVoiceTriggerConfirmationViewController *)self->_vtConfirmationViewController didMoveToParentViewController:self];
    v17 = [(VTUIVoiceTriggerConfirmationViewController *)self->_vtConfirmationViewController view];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v17 setAutoresizesSubviews:0];
    v18 = [(VTUIEnrollTrainingViewController *)self view];
    [v18 addSubview:v17];

    v19 = MEMORY[0x277CCAAD0];
    v20 = _NSDictionaryOfVariableBindings(&cfstr_Vtview.isa, v17, 0);
    v21 = [v19 constraintsWithVisualFormat:@"H:|[vtView]|" options:0 metrics:0 views:v20];
    [v7 addConstraints:v21];

    v22 = MEMORY[0x277CCAAD0];
    v23 = _NSDictionaryOfVariableBindings(&cfstr_Vtview.isa, v17, 0);
    v24 = [v22 constraintsWithVisualFormat:@"V:|[vtView]|" options:0 metrics:0 views:v23];
    [v7 addConstraints:v24];

    [(VTUITrainingViewMediator *)self->_trainingViewMediator hideSkipButton:1];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_processVTConfirmationViewContinueAction:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[VTUIEnrollTrainingViewController _processVTConfirmationViewContinueAction:]";
    _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Enabling voice trigger - confirmation continued", &v9, 0xCu);
  }

  v5 = [MEMORY[0x277D7A8D0] sharedPreferences];
  [v5 setVoiceTriggerEnabled:1];

  v6 = [MEMORY[0x277D653F8] sharedInstance];
  v7 = [v6 voiceTriggerRepromptFinished];

  [(VTUIEnrollTrainingViewController *)self _proceedAfterTrainingCompletionOrSkip];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_processVTConfirmationLaterAction:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[VTUIEnrollTrainingViewController _processVTConfirmationLaterAction:]";
    _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Disabling voice trigger - confirmation skipped", &v9, 0xCu);
  }

  v5 = [MEMORY[0x277D7A8D0] sharedPreferences];
  [v5 setVoiceTriggerEnabled:0];

  v6 = [MEMORY[0x277D653F8] sharedInstance];
  v7 = [v6 voiceTriggerRepromptFinished];

  [(VTUIEnrollTrainingViewController *)self _proceedAfterTrainingCompletionOrSkip];
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
      v18 = "[VTUIEnrollTrainingViewController _siriLanguageIsIncompatibleWithPairedWatch]";
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
  if ([(VTUIEnrollTrainingViewController *)self _siriLanguageIsIncompatibleWithPairedWatch])
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
    v15[2] = __77__VTUIEnrollTrainingViewController__warnForLanguageCompatibilityIfNecessary___block_invoke;
    v15[3] = &unk_279E542E8;
    v16 = v4;
    v14 = [v11 actionWithTitle:v13 style:0 handler:v15];

    [v10 addAction:v14];
    [(VTUIEnrollTrainingViewController *)self presentViewController:v10 animated:1 completion:0];
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

uint64_t __77__VTUIEnrollTrainingViewController__warnForLanguageCompatibilityIfNecessary___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_setInitialTriggerPhraseIfNotSet
{
  v27 = *MEMORY[0x277D85DE8];
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_29;
  }

  v3 = [MEMORY[0x277CEF368] sharedPreferences];
  v4 = [v3 languageCode];

  if (!v4)
  {
    v5 = [MEMORY[0x277CEF368] sharedPreferences];
    v4 = [v5 bestSupportedLanguageCodeForLanguageCode:0];
  }

  disambiguatedLanguageOption = self->_disambiguatedLanguageOption;
  if (disambiguatedLanguageOption)
  {
    v7 = [(NSString *)disambiguatedLanguageOption isEqualToString:v4];
    if (!v7)
    {
      v8 = self->_disambiguatedLanguageOption;

      v4 = v8;
    }

    v9 = !v7;
    if (self->_disambiguatedLanguageOption)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = 0;
  }

  if (![(NSString *)self->_spokenLanguageCode isEqualToString:v4])
  {
    v10 = self->_spokenLanguageCode;

    v9 = 1;
    v4 = v10;
  }

LABEL_12:
  v11 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315394;
    v24 = "[VTUIEnrollTrainingViewController _setInitialTriggerPhraseIfNotSet]";
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_2728BC000, v11, OS_LOG_TYPE_DEFAULT, "%s setting initial trigger phrase based on langauge code: %@", &v23, 0x16u);
  }

  v12 = [MEMORY[0x277D7A8D0] sharedPreferences];
  if ([v12 isCompactVoiceTriggerAvailableForLanguageCode:v4])
  {
    v13 = AFDeviceSupportsANE();
  }

  else
  {
    v13 = 0;
  }

  v14 = CFPreferencesCopyAppValue(@"UserPreferredVoiceTriggerPhraseType", @"com.apple.voicetrigger");
  if (v14)
  {
    v15 = v9;
  }

  else
  {
    v15 = 1;
  }

  if ((v13 & 1) != 0 || v15)
  {
    v16 = +[VTUIStyle sharedStyle];
    v17 = [v16 isBuddyOrFollowUp];

    if (v17)
    {
      v18 = [MEMORY[0x277D7A8D0] sharedPreferences];
      v19 = [v18 setUserPreferredVoiceTriggerPhraseType:v13 sender:self deviceType:0 endpointId:0];

      v20 = VTUILogContextFacility;
      if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
      {
        v21 = @"Hey Siri";
        if (v13)
        {
          v21 = @"Siri + Hey Siri";
        }

        v23 = 136315394;
        v24 = "[VTUIEnrollTrainingViewController _setInitialTriggerPhraseIfNotSet]";
        v25 = 2112;
        v26 = v21;
        _os_log_impl(&dword_2728BC000, v20, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger set to %@", &v23, 0x16u);
      }

      [(VTUIEnrollTrainingViewController *)self _setInitialTriggerPhraseOnHome];
    }
  }

LABEL_29:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_setInitialTriggerPhraseOnHome
{
  objc_initWeak(&location, self);
  settingsQueue = self->_settingsQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__VTUIEnrollTrainingViewController__setInitialTriggerPhraseOnHome__block_invoke;
  v4[3] = &unk_279E541F8;
  objc_copyWeak(&v5, &location);
  dispatch_async(settingsQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __66__VTUIEnrollTrainingViewController__setInitialTriggerPhraseOnHome__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[146] setAllowJustSiriHomeKitSetting:1 withCompletion:&__block_literal_global];
    WeakRetained = v2;
  }
}

void __66__VTUIEnrollTrainingViewController__setInitialTriggerPhraseOnHome__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[VTUIEnrollTrainingViewController _setInitialTriggerPhraseOnHome]_block_invoke_2";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s VoiceTrigger on HomeKit set to Siri + Hey Siri with error: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_showEnrollmentSuccessView
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[VTUIEnrollTrainingViewController _showEnrollmentSuccessView]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Enrollment completed", buf, 0xCu);
  }

  v4 = [(VTUIEnrollTrainingViewController *)self view];
  v5 = [(VTUIEnrollTrainingViewController *)self navigationItem];
  [v5 setLeftBarButtonItem:0];

  if ([(VTUIEnrollTrainingViewController *)self _isGreyMatterAvailable])
  {
    introViewController = self->_introViewController;
    if (introViewController)
    {
      objc_storeStrong(&self->_successView, introViewController);
    }

    else
    {
      v16 = [[VTUIEnrollmentSetupIntroViewControllerGM alloc] initWithDelegate:self];
      v17 = self->_introViewController;
      self->_introViewController = v16;

      [(VTUIEnrollTrainingViewController *)self _setupConstraintsAndAddGMIntroView];
      objc_storeStrong(&self->_successView, self->_introViewController);
      [(VTUIEnrollmentSuccessViewing *)self->_successView prepareReInit];
    }
  }

  else
  {
    [(VTUIEnrollmentSuccessViewing *)self->_successView prepareReInit];
    v7 = [VTUIEnrollmentSuccessView alloc];
    [v4 bounds];
    v8 = [(VTUIEnrollmentSuccessView *)v7 initWithFrame:?];
    [(VTUIEnrollmentSuccessView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 addSubview:v8];
    [(VTUIEnrollmentSuccessView *)v8 addFinishButtonTarget:self selector:sel__finishButtonTapped];
    v9 = MEMORY[0x277CCAAD0];
    v10 = _NSDictionaryOfVariableBindings(&cfstr_Successview.isa, v8, 0);
    v11 = [v9 constraintsWithVisualFormat:@"H:|[successView]|" options:0 metrics:0 views:v10];
    [v4 addConstraints:v11];

    v12 = MEMORY[0x277CCAAD0];
    v13 = _NSDictionaryOfVariableBindings(&cfstr_Successview.isa, v8, 0);
    v14 = [v12 constraintsWithVisualFormat:@"V:|[successView]|" options:0 metrics:0 views:v13];
    [v4 addConstraints:v14];

    successView = self->_successView;
    self->_successView = v8;
  }

  [(VTUITrainingViewMediator *)self->_trainingViewMediator hideSkipButton:1];
  [(VTUITrainingViewMediator *)self->_trainingViewMediator hideTrainingView:1];
  [(VTUIEnrollmentSuccessViewing *)self->_successView fadeIn];
  if (self->_cachedColorForNavigationUI)
  {
    v18 = [(VTUIEnrollTrainingViewController *)self navigationController];
    v19 = [v18 navigationBar];
    [v19 setTintColor:self->_cachedColorForNavigationUI];

    if (+[VTUIFeatureFlags isNaturalUIEnabled])
    {
      v20 = [(VTUIEnrollTrainingViewController *)self navigationController];
      v21 = [v20 navigationBar];
      [v21 setOverrideUserInterfaceStyle:2];

      [(VTUIEnrollTrainingViewController *)self setOverrideUserInterfaceStyle:2];
    }
  }

  [(VTUIEnrollTrainingViewController *)self setDidShowVoiceTriggerPrompt:1];
  v22 = [MEMORY[0x277CEF368] sharedPreferences];
  [v22 setCompactVoiceTriggerDisclosurePresented:1];

  if ([(VTUIEnrollTrainingViewController *)self _shouldSpeakAudioHint])
  {
    objc_initWeak(buf, self);
    audioHintPlayer = self->_audioHintPlayer;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __62__VTUIEnrollTrainingViewController__showEnrollmentSuccessView__block_invoke;
    v25[3] = &unk_279E54330;
    objc_copyWeak(&v26, buf);
    [(VTUIAudioHintPlayer *)audioHintPlayer speakConfirmationDialog:v25];
    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  [(VTUIEnrollTrainingViewController *)self _cleanupMyriad];

  v24 = *MEMORY[0x277D85DE8];
}

void __62__VTUIEnrollTrainingViewController__showEnrollmentSuccessView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cleanupTrainingManagerWithCompletion:0];
    WeakRetained = v2;
  }
}

- (void)_finishButtonTapped
{
  v3 = +[VTUIStyle sharedStyle];
  v4 = [v3 isBuddyOrFollowUp];

  if (v4)
  {

    [(VTUIEnrollTrainingViewController *)self finish:0];
  }

  else
  {

    [(VTUIEnrollTrainingViewController *)self _finishSiriSetup];
  }
}

- (void)_startEnrollment
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    spokenLanguageCode = self->_spokenLanguageCode;
    v13 = 136315394;
    v14 = "[VTUIEnrollTrainingViewController _startEnrollment]";
    v15 = 2112;
    v16 = spokenLanguageCode;
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Starting Enrollment for language code: %@", &v13, 0x16u);
  }

  if (![(VTUIEnrollTrainingViewController *)self _isLocaleSupported:self->_spokenLanguageCode])
  {
    [(VTUIEnrollTrainingViewController *)self _showUnsupportedLocaleAlert];
  }

  if (self->_siriDataSharingOptInView)
  {
    [(VTUIEnrollTrainingViewController *)self _tearDownDataSharingViews];
  }

  enrollmentMode = self->_enrollmentMode;
  if (self->_languageOptionsView || (!self->_aboutTappedSender ? (v6 = (enrollmentMode & 0xFFFFFFFFFFFFFFFBLL) == 2) : (v6 = 1), v6))
  {
    if (enrollmentMode != 7)
    {
LABEL_18:
      introViewController = self->_introViewController;
      if (introViewController)
      {
        v10 = [(VTUIEnrollmentSetupIntroViewControlling *)introViewController view];
        [v10 removeFromSuperview];

        v11 = self->_introViewController;
        self->_introViewController = 0;
      }

      goto LABEL_20;
    }
  }

  else if (enrollmentMode != 7)
  {
    if (!self->_voiceSelectionViewController)
    {
      [(VTUIEnrollTrainingViewController *)self _showSiriIntroView];
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v7 = [(VTUIEnrollTrainingViewController *)self childViewControllers];
  v8 = [v7 count];

  if (!v8)
  {
    [(VTUIEnrollTrainingViewController *)self _showGMIntroView];
  }

LABEL_20:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_resetEnrollment
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[VTUIEnrollTrainingViewController _resetEnrollment]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Resetting State to kVTUITrainingStateNotStarted", &v8, 0xCu);
  }

  self->_currentTrainingState = -1;
  [(VTUIEnrollTrainingViewController *)self _setPHSEnrollmentPrefEnabled:0];
  [(VTUIEnrollTrainingViewController *)self _hideInstruction];
  v4 = [MEMORY[0x277D653F8] sharedInstance];
  v5 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
  v6 = [v4 deleteUserVoiceProfile:v5];

  self->_badMicRetryCount = 0;
  [(VTUIEnrollTrainingViewController *)self _cleanupMyriad];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_startTraining
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [(VTUIEnrollTrainingViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(VTUIEnrollTrainingViewController *)self delegate];
    [v5 willBeginVoiceTraining];
  }

  if (self->_currentTrainingState < 0)
  {
    v8 = [MEMORY[0x277CCAD78] UUID];
    trainingAttemptUUID = self->_trainingAttemptUUID;
    self->_trainingAttemptUUID = v8;

    v10 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_trainingAttemptUUID;
      v12 = v10;
      v13 = [(NSUUID *)v11 UUIDString];
      currentTrainingState = self->_currentTrainingState;
      *buf = 136315650;
      v43 = "[VTUIEnrollTrainingViewController _startTraining]";
      v44 = 2112;
      v45 = v13;
      v46 = 2048;
      v47 = currentTrainingState;
      _os_log_impl(&dword_2728BC000, v12, OS_LOG_TYPE_DEFAULT, "%s Starting training attempt %@ - Moving from state: %zd to state 0", buf, 0x20u);
    }

    v15 = [MEMORY[0x277D653F8] sharedInstance];
    v16 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
    v17 = [v15 deleteUserVoiceProfile:v16];

    v18 = [MEMORY[0x277CEF158] sharedAnalytics];
    [v18 logEventWithType:3302 context:0];

    v19 = [MEMORY[0x277D7A8D0] sharedPreferences];
    v20 = [v19 getUserPreferredVoiceTriggerPhraseTypeForDeviceType:0 endpointId:0 error:0];

    if (v20)
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }

    [VTUISELFLogger logSiriSetupPHSEnrollmentUIStarted:self->_trainingAttemptUUID enrollmentMode:self->_enrollmentMode locale:self->_spokenLanguageCode voiceTriggerType:v21];
    [(VTUIEnrollTrainingViewController *)self _setPHSEnrollmentPrefEnabled:0];
    self->_currentTrainingState = 0;
    [(VTUITrainingViewMediator *)self->_trainingViewMediator hideContinuationAndPreludeLabel:0];
    [(VTUIEnrollTrainingViewController *)self _showInstruction:self->_currentTrainingState isRetry:0];
    if (!self->_cachedColorForNavigationUI)
    {
      if ([(VTUIEnrollTrainingViewController *)self _isGreyMatterAvailable])
      {
        v22 = [(VTUIEnrollTrainingViewController *)self navigationController];
        v23 = [v22 navigationBar];
        v24 = [v23 tintColor];
        cachedColorForNavigationUI = self->_cachedColorForNavigationUI;
        self->_cachedColorForNavigationUI = v24;

        v26 = [(VTUIEnrollTrainingViewController *)self navigationController];
        v27 = [v26 navigationBar];
        v28 = [MEMORY[0x277D75348] whiteColor];
        [v27 setTintColor:v28];

        if (+[VTUIFeatureFlags isNaturalUIEnabled])
        {
          v29 = +[VTUIStyle sharedStyle];
          v30 = [v29 isIpad];

          v31 = [(VTUIEnrollTrainingViewController *)self navigationController];
          v32 = [v31 navigationBar];
          v33 = v32;
          if (v30)
          {
            [v32 setOverrideUserInterfaceStyle:1];

            [(VTUIEnrollTrainingViewController *)self setOverrideUserInterfaceStyle:1];
            v34 = [(VTUIEnrollTrainingViewController *)self navigationController];
            v35 = [v34 navigationBar];
            v36 = [v35 standardAppearance];
            v37 = [MEMORY[0x277D75348] whiteColor];
            v41 = v37;
            v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
            [v36 setTitleTextAttributes:v38];
          }

          else
          {
            [v32 setOverrideUserInterfaceStyle:2];

            [(VTUIEnrollTrainingViewController *)self setOverrideUserInterfaceStyle:2];
          }
        }
      }
    }
  }

  else
  {
    v6 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_INFO))
    {
      v7 = self->_currentTrainingState;
      *buf = 136315394;
      v43 = "[VTUIEnrollTrainingViewController _startTraining]";
      v44 = 2048;
      v45 = v7;
      _os_log_impl(&dword_2728BC000, v6, OS_LOG_TYPE_INFO, "%s Training has already stated at state %zd - resuming.", buf, 0x16u);
    }

    [(VTUIEnrollTrainingViewController *)self _resumeTraining:0];
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_advanceState
{
  v23 = *MEMORY[0x277D85DE8];
  currentTrainingState = self->_currentTrainingState;
  if (currentTrainingState >= [(NSArray *)self->_trainingPageInstructions count]- 1)
  {
    v6 = self->_currentTrainingState;
    if (v6 != -1 && v6 != 5)
    {
      self->_currentTrainingState = 5;
      [(VTUIAnalytics *)self->_analyticsEvent setVoiceTrainingCompleted:[(VTUIAnalytics *)self->_analyticsEvent voiceTrainingCompleted]+ 1];
      v8 = [MEMORY[0x277D4DA30] sharedInstance];
      [v8 didCompleteFlow:*MEMORY[0x277D4D9C0]];

      v9 = [(VTUIEnrollTrainingViewController *)self navigationItem];
      [v9 setTitle:0];

      [(VTUIEnrollTrainingViewController *)self _setPHSEnrollmentPrefEnabled:1];
      if (self->_enrollmentMode == 2)
      {
        [(VTUIEnrollTrainingViewController *)self finish:0];
      }

      else
      {
        objc_initWeak(buf, self);
        trainingViewMediator = self->_trainingViewMediator;
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __49__VTUIEnrollTrainingViewController__advanceState__block_invoke;
        v17[3] = &unk_279E541F8;
        objc_copyWeak(&v18, buf);
        [(VTUITrainingViewMediator *)trainingViewMediator slideInText:0 afterDelay:v17 completion:0.0];
        objc_destroyWeak(&v18);
        objc_destroyWeak(buf);
      }

      v11 = VTUILogContextFacility;
      if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "[VTUIEnrollTrainingViewController _advanceState]";
        _os_log_impl(&dword_2728BC000, v11, OS_LOG_TYPE_DEFAULT, "%s Completed Last stage in Training", buf, 0xCu);
      }

      v12 = [MEMORY[0x277CEF158] sharedAnalytics];
      v13 = [v12 newTurnBasedInstrumentationContext];

      v14 = objc_alloc_init(MEMORY[0x277D5A928]);
      [v14 setInvocationSource:44];
      [v13 emitInstrumentation:v14];
      v15 = [MEMORY[0x277CEF158] sharedAnalytics];
      [v15 logEventWithType:3303 context:0];

      [VTUISELFLogger logSiriSetupPHSEnrollmentUICompleted:self->_trainingAttemptUUID enrollmentMode:self->_enrollmentMode locale:self->_spokenLanguageCode enrollmentSessionOutcome:1 pageNumber:LODWORD(self->_currentTrainingState)];
    }
  }

  else
  {
    self->_hasRetriedTraining = 0;
    ++self->_currentTrainingState;
    [VTUIEnrollTrainingViewController _showInstruction:"_showInstruction:isRetry:" isRetry:?];
    v4 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_currentTrainingState;
      *buf = 136315394;
      v20 = "[VTUIEnrollTrainingViewController _advanceState]";
      v21 = 2048;
      v22 = v5;
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Advance to Next stage in Training - Current state : %zd", buf, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __49__VTUIEnrollTrainingViewController__advanceState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showEnrollmentSuccessView];
}

- (id)_retryStringForStatus:(int64_t)a3
{
  v5 = +[VTUIStringsHelper sharedStringsHelper];
  v6 = [v5 uiLocalizedStringForKey:@"TRY_AGAIN_MESSAGE"];

  if (a3 == 2)
  {
    if ([(VTUIEnrollTrainingViewController *)self cannotHearRetryCount]!= 1)
    {
      if (![(VTUIEnrollTrainingViewController *)self cannotHearRetryCount])
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

  if ([(VTUIEnrollTrainingViewController *)self digitalZerosRetryCount]== 1)
  {
    goto LABEL_7;
  }

  if ([(VTUIEnrollTrainingViewController *)self digitalZerosRetryCount])
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
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[VTUIEnrollTrainingViewController _retryInstruction:withStatusMessage:]";
    _os_log_impl(&dword_2728BC000, v7, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  [(VTUITrainingViewMediator *)self->_trainingViewMediator hideContinuationAndPreludeLabel:1];
  objc_initWeak(buf, self);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __72__VTUIEnrollTrainingViewController__retryInstruction_withStatusMessage___block_invoke;
  v12 = &unk_279E54358;
  objc_copyWeak(&v13, buf);
  v14 = a3;
  [(VTUIEnrollTrainingViewController *)self _showStatusMessage:v6 afterDelay:&v9 completion:0.2];
  [(VTUIEnrollTrainingViewController *)self _hideInstruction:v9];
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);

  v8 = *MEMORY[0x277D85DE8];
}

void __72__VTUIEnrollTrainingViewController__retryInstruction_withStatusMessage___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__VTUIEnrollTrainingViewController__retryInstruction_withStatusMessage___block_invoke_2;
    v10[3] = &unk_279E54220;
    v10[4] = WeakRetained;
    [WeakRetained _showStatusMessage:0 afterDelay:v10 completion:2.0];
    if (([v3 currentTrainingState] & 0x8000000000000000) == 0 && objc_msgSend(v3, "currentTrainingState") <= 4)
    {
      [v3 _showTrainingInstruction:objc_msgSend(v3 afterDelay:"currentTrainingState") isRetry:(*(a1 + 40) & 1) == 0 animate:{1, 2.2}];
      v4 = MEMORY[0x277CCACA8];
      v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "currentTrainingState")}];
      v6 = [v4 stringWithFormat:@"%@", v5];

      v7 = [MEMORY[0x277CEF158] sharedAnalytics];
      v11 = @"currentTrainingState";
      v12[0] = v6;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      [v7 logEventWithType:3311 context:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __72__VTUIEnrollTrainingViewController__retryInstruction_withStatusMessage___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    result = [result currentTrainingState];
    if ((result & 0x8000000000000000) == 0)
    {
      result = [*(a1 + 32) currentTrainingState];
      if (result <= 4)
      {
        v3 = *(a1 + 32);
        v4 = [v3 currentTrainingState];

        return [v3 _updatePageNumberForInstruction:v4];
      }
    }
  }

  return result;
}

- (void)_updateTrainingLabelsForInstruction:(int64_t)a3
{
  v12 = +[VTUIStyle sharedStyle];
  if (a3)
  {
    v5 = [(NSArray *)self->_trainingPageInstructions count];
    if (v5 - 1 == a3)
    {
      v6 = @"TEXT_LABEL_SAY_LAST";
    }

    else
    {
      v6 = @"TEXT_LABEL_SAY_MIDDLE";
    }

    if (v5 - 1 == a3)
    {
      v7 = @"TEXT_LABEL_TO_LAST";
    }

    else
    {
      v7 = @"TEXT_LABEL_TO_MIDDLE";
    }
  }

  else
  {
    v7 = @"TEXT_LABEL_TO_FIRST";
    v6 = @"TEXT_LABEL_SAY_FIRST";
  }

  trainingViewMediator = self->_trainingViewMediator;
  v9 = [v12 VTUIDeviceSpecificString:v6];
  [(VTUITrainingViewMediator *)trainingViewMediator setInstructionPreludeLabel:v9];

  v10 = self->_trainingViewMediator;
  v11 = [v12 VTUIDeviceSpecificString:v7];
  [(VTUITrainingViewMediator *)v10 setInstructionContinuationLabel:v11];
}

- (void)_showTrainingInstruction:(int64_t)a3 afterDelay:(double)a4 isRetry:(BOOL)a5 animate:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v55 = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "[VTUIEnrollTrainingViewController _showTrainingInstruction:afterDelay:isRetry:animate:]";
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 1024;
    v52 = v7;
    v53 = 1024;
    v54 = v6;
    _os_log_impl(&dword_2728BC000, v11, OS_LOG_TYPE_DEFAULT, "%s Instruction Number %ld, isRetry %d, animate %d", buf, 0x22u);
  }

  v12 = [(NSArray *)self->_trainingPageInstructions count];
  if ((a3 & 0x8000000000000000) == 0 && v12 > a3)
  {
    v13 = [(NSArray *)self->_trainingPageInstructions objectAtIndexedSubscript:a3];
    v29 = [v13 objectForKeyedSubscript:@"Instruction"];
    v14 = [v13 objectForKeyedSubscript:@"RetryOnFail"];
    v15 = [v14 BOOLValue];

    [(VTUIEnrollTrainingViewController *)self _updateTrainingLabelsForInstruction:a3];
    [(VTUITrainingViewMediator *)self->_trainingViewMediator animateToOff];
    [(VTUIEnrollTrainingViewController *)self _createTrainingManagerIfNeeded];
    if (a3 <= 4)
    {
      v16 = [MEMORY[0x277CEF158] sharedAnalytics];
      v49 = @"instruction";
      v50 = v29;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      [v16 logEventWithType:a3 + 3305 context:v17];
    }

    v18 = [(VTUIAudioHintPlayer *)self->_audioHintPlayer synth];
    [v18 stopSpeaking];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v52) = 0;
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__VTUIEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke;
    aBlock[3] = &unk_279E54380;
    objc_copyWeak(v46, &location);
    v47 = v7;
    v46[1] = a3;
    v19 = _Block_copy(aBlock);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __88__VTUIEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_2;
    v41[3] = &unk_279E543D0;
    objc_copyWeak(v42, &location);
    v42[1] = a3;
    v43 = v15;
    v44 = v7;
    v41[4] = self;
    v41[5] = buf;
    v20 = _Block_copy(v41);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __88__VTUIEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_298;
    v38[3] = &unk_279E543F8;
    v21 = v19;
    v39 = v21;
    v22 = v20;
    v40 = v22;
    v23 = _Block_copy(v38);
    if (self->_shouldTurnOnMyriad)
    {
      v24 = [MEMORY[0x277CEF2A8] isSCDAFrameworkEnabled];
      v26 = &OBJC_IVAR___VTUIEnrollTrainingViewController__myriadCoordinator;
      if (v24)
      {
        v26 = &OBJC_IVAR___VTUIEnrollTrainingViewController__scdaCoordinator;
      }

      LODWORD(v25) = 1110704128;
      [*(&self->super.super.super.isa + *v26) startAdvertisingForPHSSetupAfterDelay:0.0 maxInterval:v25];
    }

    if ([(VTUIEnrollTrainingViewController *)self _shouldSpeakAudioHint])
    {
      v27 = dispatch_time(0, (self->_speakingDelayInSeconds * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __88__VTUIEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_2_299;
      block[3] = &unk_279E54470;
      objc_copyWeak(v36, &location);
      v37 = v6;
      v31 = v29;
      v36[1] = *&a4;
      v32 = self;
      v33 = v21;
      v36[2] = a3;
      v35 = buf;
      v34 = v22;
      dispatch_after(v27, MEMORY[0x277D85CD0], block);

      objc_destroyWeak(v36);
    }

    else if (v6)
    {
      [(VTUITrainingViewMediator *)self->_trainingViewMediator slideInText:v29 afterDelay:v23 completion:a4];
    }

    else
    {
      v23[2](v23);
    }

    objc_destroyWeak(v42);
    objc_destroyWeak(v46);
    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __88__VTUIEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ((*(a1 + 48) & 1) == 0)
    {
      [WeakRetained _updatePageNumberForInstruction:*(a1 + 40)];
    }

    [v3[166] hidePreludeLabel:0];
    [v3[166] hideContinuationLabel:v3[143] > 0];
    WeakRetained = v3;
  }
}

void __88__VTUIEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[166] animateToListeningState];
    v4 = [v3 trainingManager];
    [v4 startRMS];

    if (*(v3 + 1316) == 1)
    {
      v5 = [MEMORY[0x277CEF2A8] isSCDAFrameworkEnabled];
      v7 = &OBJC_IVAR___VTUIEnrollTrainingViewController__myriadCoordinator;
      if (v5)
      {
        v7 = &OBJC_IVAR___VTUIEnrollTrainingViewController__scdaCoordinator;
      }

      LODWORD(v6) = 20.0;
      [*(v3 + *v7) startAdvertisingForPHSSetupAfterDelay:0.0 maxInterval:v6];
    }

    v8 = [*(a1 + 32) trainingAttemptUUID];
    v9 = [v8 UUIDString];

    objc_storeStrong(v3 + 132, v9);
    v10 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 56) + 1;
      *buf = 136315650;
      v27 = "[VTUIEnrollTrainingViewController _showTrainingInstruction:afterDelay:isRetry:animate:]_block_invoke_2";
      v28 = 2112;
      v29 = v9;
      v30 = 2048;
      v31 = v11;
      _os_log_impl(&dword_2728BC000, v10, OS_LOG_TYPE_DEFAULT, "%s Starting training attempt %@ for instruction %ld", buf, 0x20u);
    }

    v12 = MGGetBoolAnswer();
    v13 = v3[133];
    v14 = *(a1 + 56);
    v15 = [*(a1 + 32) _isGreyMatterAvailable];
    v16 = [*(a1 + 32) trainingAttemptUUID];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __88__VTUIEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_296;
    v20[3] = &unk_279E543A8;
    objc_copyWeak(v23, (a1 + 48));
    v24 = *(a1 + 64);
    v17 = v9;
    v23[1] = *(a1 + 56);
    v25 = *(a1 + 65);
    v18 = *(a1 + 40);
    v21 = v17;
    v22 = v18;
    v3[131] = [v13 trainUtterance:v14 + 1 shouldUseASR:v15 & v12 ^ 1u mhUUID:v16 completionWithResult:v20];

    objc_destroyWeak(v23);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __88__VTUIEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_296(uint64_t a1, void *a2, unsigned int a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = MEMORY[0x277CEF0E8];
    v8 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v5 sessionId];
      v11 = WeakRetained[131];
      v12 = [v5 sessionStatus];
      v13 = *(a1 + 64);
      v14 = WeakRetained[132];
      v15 = *(a1 + 32);
      *buf = 136316930;
      v40 = "[VTUIEnrollTrainingViewController _showTrainingInstruction:afterDelay:isRetry:animate:]_block_invoke";
      v41 = 2048;
      v42 = v10;
      v43 = 2048;
      v44 = v11;
      v45 = 1024;
      v46 = v12;
      v47 = 1024;
      v48 = a3;
      v49 = 1024;
      v50 = v13;
      v51 = 2112;
      v52 = v15;
      v53 = 2112;
      v54 = v14;
      _os_log_impl(&dword_2728BC000, v9, OS_LOG_TYPE_DEFAULT, "%s Callback Session Id: %ld, Current Session Id: %ld, status: %d, success: %d, canRetry: %d, attempt Identifier: %@, latest attempt identifier: %@", buf, 0x46u);
    }

    if ([*(a1 + 32) isEqualToString:WeakRetained[132]])
    {
      v38 = a3;
      v16 = [WeakRetained myriadCoordinator];
      LODWORD(v17) = 0.5;
      [v16 endAdvertisingAfterDelay:v17];

      v18 = [WeakRetained trainingManager];
      [v18 stopRMS];

      v19 = [WeakRetained trainingViewMediator];
      [v19 animateToOff];

      [WeakRetained _resetIdleTimer];
      if (([WeakRetained interpretSessionManagerResult:v5 forInstruction:{objc_msgSend(WeakRetained, "currentTrainingState")}] & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = 3;
      }

      v21 = [WeakRetained trainingAttemptUUID];
      v22 = WeakRetained[136];
      v23 = [WeakRetained spokenLanguageCode];
      v24 = *(a1 + 56);
      v25 = *(a1 + 65);
      v26 = [WeakRetained _shouldSpeakAudioHint];
      BYTE1(v37) = *(*(*(a1 + 40) + 8) + 24);
      LOBYTE(v37) = v26;
      [VTUISELFLogger logSiriSetupPHSEnrollmentTrainingUtteranceAttempted:v21 enrollmentMode:v22 locale:v23 trainingOutcome:v20 pageNumber:v24 isRetry:v25 audioHintNeeded:v37 audioHintSpoken:?];

      if (*(a1 + 64) == 1)
      {
        [WeakRetained setHasRetriedTraining:*(a1 + 65)];
        [WeakRetained _handleTrainingResultForRetryablePhraseWithResult:v5 shouldShowCheckMark:v38];
      }

      else
      {
        [WeakRetained _handleTrainingResultForNonRetryablePhraseWithResult:v5];
      }
    }

    else
    {
      v27 = *v7;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = WeakRetained[132];
        v29 = *(a1 + 32);
        *buf = 136315650;
        v40 = "[VTUIEnrollTrainingViewController _showTrainingInstruction:afterDelay:isRetry:animate:]_block_invoke";
        v41 = 2112;
        v42 = v29;
        v43 = 2112;
        v44 = v28;
        _os_log_impl(&dword_2728BC000, v27, OS_LOG_TYPE_DEFAULT, "%s Callback for training attempt %@ does not match most recent attempt %@. Ignoring", buf, 0x20u);
      }

      v30 = [WeakRetained trainingAttemptUUID];
      v31 = WeakRetained[136];
      v32 = [WeakRetained spokenLanguageCode];
      v33 = *(a1 + 56);
      v34 = *(a1 + 65);
      v35 = [WeakRetained _shouldSpeakAudioHint];
      BYTE1(v37) = *(*(*(a1 + 40) + 8) + 24);
      LOBYTE(v37) = v35;
      [VTUISELFLogger logSiriSetupPHSEnrollmentTrainingUtteranceAttempted:v30 enrollmentMode:v31 locale:v32 trainingOutcome:0 pageNumber:v33 isRetry:v34 audioHintNeeded:v37 audioHintSpoken:?];
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __88__VTUIEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_298(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __88__VTUIEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_2_299(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (*(a1 + 96) != 1 || WeakRetained == 0)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    [WeakRetained[166] slideInText:*(a1 + 32) afterDelay:*(a1 + 48) completion:*(a1 + 80)];
  }

  v5 = [*(a1 + 40) trainingManager];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__VTUIEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_3;
  v8[3] = &unk_279E54448;
  objc_copyWeak(v10, (a1 + 72));
  v10[1] = *(a1 + 88);
  v7 = *(a1 + 56);
  v6 = v7;
  v9 = v7;
  [v5 prepareWithCompletion:v8];

  objc_destroyWeak(v10);
}

void __88__VTUIEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_3(uint64_t a1, char a2)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (a2)
  {
    if (WeakRetained)
    {
      v6 = *(WeakRetained + 177);
      v7 = *(a1 + 56);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __88__VTUIEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_300;
      v12[3] = &unk_279E54420;
      objc_copyWeak(&v14, (a1 + 48));
      v11 = *(a1 + 32);
      v8 = v11;
      v13 = v11;
      [v6 speakAudioHint:v7 completion:v12];

      objc_destroyWeak(&v14);
    }
  }

  else
  {
    v9 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v16 = "[VTUIEnrollTrainingViewController _showTrainingInstruction:afterDelay:isRetry:animate:]_block_invoke_3";
      _os_log_impl(&dword_2728BC000, v9, OS_LOG_TYPE_DEFAULT, "%s Error preparing audio session", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __88__VTUIEnrollTrainingViewController__showTrainingInstruction_afterDelay_isRetry_animate___block_invoke_300(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v6 = *(WeakRetained + 1003);
    v7 = [WeakRetained[177] synth];
    v8 = [v7 isSpeaking];

    v9 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = "[VTUIEnrollTrainingViewController _showTrainingInstruction:afterDelay:isRetry:animate:]_block_invoke";
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
  v43 = *MEMORY[0x277D85DE8];
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
    v38 = "[VTUIEnrollTrainingViewController _handleTrainingResultForNonRetryablePhraseWithResult:]";
    v39 = 1024;
    *v40 = v8;
    *&v40[4] = 1024;
    *&v40[6] = v9;
    v41 = 2048;
    v42 = badMicRetryCount;
    _os_log_impl(&dword_2728BC000, v7, OS_LOG_TYPE_DEFAULT, "%s session status: %d, audio status: %d, badMicRetryCount: %lu", buf, 0x22u);
  }

  v11 = [(VTUIEnrollTrainingViewController *)self interpretSessionManagerResult:v4 forInstruction:self->_currentTrainingState];
  v12 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v38 = "[VTUIEnrollTrainingViewController _handleTrainingResultForNonRetryablePhraseWithResult:]";
    v39 = 2048;
    *v40 = v11;
    _os_log_impl(&dword_2728BC000, v12, OS_LOG_TYPE_DEFAULT, "%s digestedStatus: %ld", buf, 0x16u);
  }

  if (v11 > 6)
  {
    if (v11 > 8)
    {
      if (v11 == 9)
      {
        ++self->_digitalZerosRetryCount;
        v20 = self;
        v21 = 9;
      }

      else
      {
        if (v11 != 10)
        {
LABEL_26:
          v20 = self;
          v21 = 0;
          goto LABEL_27;
        }

        ++self->_cannotHearRetryCount;
        v20 = self;
        v21 = 10;
      }

LABEL_27:
      v29 = [(VTUIEnrollTrainingViewController *)v20 _retryStringForStatus:v21];
      [(VTUIEnrollTrainingViewController *)self _retryInstruction:1 withStatusMessage:v29];

      goto LABEL_28;
    }

    if (v11 != 7)
    {
      consecutiveTimeoutCount = self->_consecutiveTimeoutCount;
      self->_consecutiveTimeoutCount = consecutiveTimeoutCount + 1;
      if (consecutiveTimeoutCount >= 1)
      {
        self->_shouldTurnOnMyriad = 0;
      }

      v20 = self;
      v21 = 8;
      goto LABEL_27;
    }
  }

  else
  {
    if (v11 > 4)
    {
      if (v11 == 5)
      {
        ++self->_badMicRetryCount;
        if ([(VTUIEnrollTrainingViewController *)self badMicRetryCount]< 2)
        {
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __89__VTUIEnrollTrainingViewController__handleTrainingResultForNonRetryablePhraseWithResult___block_invoke_5;
          v32[3] = &unk_279E54220;
          v32[4] = self;
          [(VTUIEnrollTrainingViewController *)self _showBadMicAlertCompletion:v32];
          goto LABEL_28;
        }

        [(VTUIEnrollTrainingViewController *)self _setPHSEnrollmentPrefEnabled:0];
        v26 = [MEMORY[0x277D653F8] sharedInstance];
        v27 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
        v28 = [v26 deleteUserVoiceProfile:v27];

        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __89__VTUIEnrollTrainingViewController__handleTrainingResultForNonRetryablePhraseWithResult___block_invoke_4;
        v33[3] = &unk_279E54220;
        v33[4] = self;
        v16 = v33;
        v17 = self;
        v18 = 5;
      }

      else
      {
        v22 = self->_AVVCRetryCount + 1;
        self->_AVVCRetryCount = v22;
        if (v22 < 6)
        {
          v31 = dispatch_time(0, 1000000000);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __89__VTUIEnrollTrainingViewController__handleTrainingResultForNonRetryablePhraseWithResult___block_invoke_3;
          block[3] = &unk_279E54220;
          block[4] = self;
          dispatch_after(v31, MEMORY[0x277D85CD0], block);
          goto LABEL_28;
        }

        [(VTUIEnrollTrainingViewController *)self _setPHSEnrollmentPrefEnabled:0];
        v23 = [MEMORY[0x277D653F8] sharedInstance];
        v24 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
        v25 = [v23 deleteUserVoiceProfile:v24];

        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __89__VTUIEnrollTrainingViewController__handleTrainingResultForNonRetryablePhraseWithResult___block_invoke_2;
        v35[3] = &unk_279E54220;
        v35[4] = self;
        v16 = v35;
        v17 = self;
        v18 = 6;
      }

      goto LABEL_24;
    }

    if (v11 != 1)
    {
      if (v11 == 4)
      {
        [(VTUIEnrollTrainingViewController *)self _setPHSEnrollmentPrefEnabled:0];
        v13 = [MEMORY[0x277D653F8] sharedInstance];
        v14 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
        v15 = [v13 deleteUserVoiceProfile:v14];

        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __89__VTUIEnrollTrainingViewController__handleTrainingResultForNonRetryablePhraseWithResult___block_invoke;
        v36[3] = &unk_279E54220;
        v36[4] = self;
        v16 = v36;
        v17 = self;
        v18 = 4;
LABEL_24:
        [(VTUIEnrollTrainingViewController *)v17 _cleanupTrainingManagerWithCompletion:v16 status:v18];
        goto LABEL_28;
      }

      goto LABEL_26;
    }

    self->_consecutiveTimeoutCount = 0;
    self->_shouldTurnOnMyriad = 1;
    [(VTUIEnrollTrainingViewController *)self _signalSingleEnrollmentSuccess];
  }

LABEL_28:

  v30 = *MEMORY[0x277D85DE8];
}

void __89__VTUIEnrollTrainingViewController__handleTrainingResultForNonRetryablePhraseWithResult___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 skipSetup];
}

void __89__VTUIEnrollTrainingViewController__handleTrainingResultForNonRetryablePhraseWithResult___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 skipSetup];
}

void __89__VTUIEnrollTrainingViewController__handleTrainingResultForNonRetryablePhraseWithResult___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 skipSetup];
}

- (void)_signalSingleEnrollmentSuccess
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__VTUIEnrollTrainingViewController__signalSingleEnrollmentSuccess__block_invoke;
  v3[3] = &unk_279E541F8;
  objc_copyWeak(&v4, &location);
  [(VTUIEnrollTrainingViewController *)self _animateSuccessfulStep:1 completion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __66__VTUIEnrollTrainingViewController__signalSingleEnrollmentSuccess__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _advanceState];

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 _isGreyMatterAvailable];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 _playSoundForStageAfterDelay:0.0];
  }
}

- (void)_playSoundForStageAfterDelay:(double)a3
{
  v4 = dispatch_time(0, (a3 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__VTUIEnrollTrainingViewController__playSoundForStageAfterDelay___block_invoke;
  block[3] = &unk_279E54220;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

uint64_t __65__VTUIEnrollTrainingViewController__playSoundForStageAfterDelay___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1144);
  NSLog(&cfstr_Playsoundforst.isa, v2);
  v3 = *(*(a1 + 32) + 1064);

  return [v3 playSoundsEffect:v2];
}

- (void)restartFromIntroView
{
  [(VTUIEnrollTrainingViewController *)self _resetEnrollment];
  if (self->_enrollmentMode != 2)
  {
    [(VTUIEnrollTrainingViewController *)self _showSiriIntroView];
  }

  v3 = [(VTUIEnrollTrainingViewController *)self navigationItem];
  [v3 setTitle:0];
}

- (void)_handleTrainingResultForRetryablePhraseWithResult:(id)a3 shouldShowCheckMark:(BOOL)a4
{
  v4 = a4;
  v47 = *MEMORY[0x277D85DE8];
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
    v40 = "[VTUIEnrollTrainingViewController _handleTrainingResultForRetryablePhraseWithResult:shouldShowCheckMark:]";
    v41 = 1024;
    *v42 = v10;
    *&v42[4] = 1024;
    *&v42[6] = v11;
    v43 = 1024;
    v44 = v4;
    v45 = 2048;
    v46 = badMicRetryCount;
    _os_log_impl(&dword_2728BC000, v9, OS_LOG_TYPE_DEFAULT, "%s session status: %d, audio status: %d, shouldShowCheckMark:%d, badMicRetryCount: %lu", buf, 0x28u);
  }

  v13 = [(VTUIEnrollTrainingViewController *)self interpretSessionManagerResult:v6 forInstruction:self->_currentTrainingState];
  v14 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v40 = "[VTUIEnrollTrainingViewController _handleTrainingResultForRetryablePhraseWithResult:shouldShowCheckMark:]";
    v41 = 2048;
    *v42 = v13;
    _os_log_impl(&dword_2728BC000, v14, OS_LOG_TYPE_DEFAULT, "%s digestedStatus: %ld", buf, 0x16u);
  }

  if (v13 > 5)
  {
    if (v13 > 7)
    {
      switch(v13)
      {
        case 8:
          consecutiveTimeoutCount = self->_consecutiveTimeoutCount;
          self->_consecutiveTimeoutCount = consecutiveTimeoutCount + 1;
          if (consecutiveTimeoutCount >= 1)
          {
            self->_shouldTurnOnMyriad = 0;
          }

          [(VTUIAnalytics *)self->_analyticsEvent setVtError:[(VTUIAnalytics *)self->_analyticsEvent vtError]+ 1];
          v15 = self;
          v16 = 8;
          goto LABEL_31;
        case 9:
          ++self->_digitalZerosRetryCount;
          v15 = self;
          v16 = 9;
          goto LABEL_31;
        case 10:
          ++self->_cannotHearRetryCount;
          v15 = self;
          v16 = 10;
LABEL_31:
          v31 = [(VTUIEnrollTrainingViewController *)v15 _retryStringForStatus:v16];
          [(VTUIEnrollTrainingViewController *)self _retryInstruction:1 withStatusMessage:v31];

          goto LABEL_32;
      }

LABEL_20:
      [(VTUIAnalytics *)self->_analyticsEvent setAsrError:[(VTUIAnalytics *)self->_analyticsEvent asrError]+ 1];
      v15 = self;
      v16 = 0;
      goto LABEL_31;
    }

    if (v13 != 6)
    {
      goto LABEL_32;
    }

    v27 = self->_AVVCRetryCount + 1;
    self->_AVVCRetryCount = v27;
    if (v27 < 6)
    {
      v33 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __106__VTUIEnrollTrainingViewController__handleTrainingResultForRetryablePhraseWithResult_shouldShowCheckMark___block_invoke_3;
      block[3] = &unk_279E54220;
      block[4] = self;
      dispatch_after(v33, MEMORY[0x277D85CD0], block);
      goto LABEL_32;
    }

    [(VTUIEnrollTrainingViewController *)self _setPHSEnrollmentPrefEnabled:0];
    v28 = [MEMORY[0x277D653F8] sharedInstance];
    v29 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
    v30 = [v28 deleteUserVoiceProfile:v29];

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __106__VTUIEnrollTrainingViewController__handleTrainingResultForRetryablePhraseWithResult_shouldShowCheckMark___block_invoke_2;
    v37[3] = &unk_279E54220;
    v37[4] = self;
    v20 = v37;
    v21 = self;
    v22 = 6;
    goto LABEL_29;
  }

  if (v13 > 3)
  {
    if (v13 == 4)
    {
      [(VTUIEnrollTrainingViewController *)self _setPHSEnrollmentPrefEnabled:0];
      v23 = [MEMORY[0x277D653F8] sharedInstance];
      v24 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
      v25 = [v23 deleteUserVoiceProfile:v24];

      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __106__VTUIEnrollTrainingViewController__handleTrainingResultForRetryablePhraseWithResult_shouldShowCheckMark___block_invoke;
      v38[3] = &unk_279E54220;
      v38[4] = self;
      v20 = v38;
      v21 = self;
      v22 = 4;
    }

    else
    {
      ++self->_badMicRetryCount;
      if ([(VTUIEnrollTrainingViewController *)self badMicRetryCount]< 2)
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __106__VTUIEnrollTrainingViewController__handleTrainingResultForRetryablePhraseWithResult_shouldShowCheckMark___block_invoke_5;
        v34[3] = &unk_279E54220;
        v34[4] = self;
        [(VTUIEnrollTrainingViewController *)self _showBadMicAlertCompletion:v34];
        goto LABEL_32;
      }

      [(VTUIEnrollTrainingViewController *)self _setPHSEnrollmentPrefEnabled:0];
      v17 = [MEMORY[0x277D653F8] sharedInstance];
      v18 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
      v19 = [v17 deleteUserVoiceProfile:v18];

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __106__VTUIEnrollTrainingViewController__handleTrainingResultForRetryablePhraseWithResult_shouldShowCheckMark___block_invoke_4;
      v35[3] = &unk_279E54220;
      v35[4] = self;
      v20 = v35;
      v21 = self;
      v22 = 5;
    }

LABEL_29:
    [(VTUIEnrollTrainingViewController *)v21 _cleanupTrainingManagerWithCompletion:v20 status:v22];
    goto LABEL_32;
  }

  if (v13 == 2)
  {
    self->_consecutiveTimeoutCount = 0;
    self->_shouldTurnOnMyriad = 1;
    [(VTUIAnalytics *)self->_analyticsEvent setAsrError:[(VTUIAnalytics *)self->_analyticsEvent asrError]+ 1];
    if (self->_hasRetriedTraining)
    {
      [(VTUIEnrollTrainingViewController *)self _advanceState];
    }

    else
    {
      [(VTUIEnrollTrainingViewController *)self _retryInstruction:0 withStatusMessage:0];
    }
  }

  else
  {
    if (v13 != 3)
    {
      goto LABEL_20;
    }

    self->_consecutiveTimeoutCount = 0;
    self->_shouldTurnOnMyriad = 1;
    [(VTUIEnrollTrainingViewController *)self _signalSingleEnrollmentSuccess];
  }

LABEL_32:

  v32 = *MEMORY[0x277D85DE8];
}

void __106__VTUIEnrollTrainingViewController__handleTrainingResultForRetryablePhraseWithResult_shouldShowCheckMark___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 skipSetup];
}

void __106__VTUIEnrollTrainingViewController__handleTrainingResultForRetryablePhraseWithResult_shouldShowCheckMark___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 skipSetup];
}

void __106__VTUIEnrollTrainingViewController__handleTrainingResultForRetryablePhraseWithResult_shouldShowCheckMark___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 skipSetup];
}

- (void)_showBadMicAlertCompletion:(id)a3
{
  v19 = a3;
  v20 = [(VTUIEnrollTrainingViewController *)self interpretAudioSource:[(SSRVTUITrainingManager *)self->_trainingManager audioSource]];
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
  v21[2] = __63__VTUIEnrollTrainingViewController__showBadMicAlertCompletion___block_invoke;
  v21[3] = &unk_279E542E8;
  v22 = v19;
  v17 = v19;
  v18 = [v14 actionWithTitle:v16 style:0 handler:v21];

  [v13 addAction:v18];
  [(VTUIEnrollTrainingViewController *)self presentViewController:v13 animated:1 completion:0];
}

uint64_t __63__VTUIEnrollTrainingViewController__showBadMicAlertCompletion___block_invoke(uint64_t a1)
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
  v16[2] = __74__VTUIEnrollTrainingViewController__showUnsupportedLocaleAlertCompletion___block_invoke;
  v16[3] = &unk_279E542E8;
  v17 = v4;
  v14 = v4;
  v15 = [v11 actionWithTitle:v13 style:0 handler:v16];

  [v10 addAction:v15];
  [(VTUIEnrollTrainingViewController *)self presentViewController:v10 animated:1 completion:0];
}

uint64_t __74__VTUIEnrollTrainingViewController__showUnsupportedLocaleAlertCompletion___block_invoke(uint64_t a1)
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

  v13 = [(VTUIEnrollTrainingViewController *)self navigationItem];
  [v13 setTitle:v12];
}

- (void)_hideInstruction
{
  [(VTUITrainingViewMediator *)self->_trainingViewMediator clearInstructionLabel];
  [(VTUITrainingViewMediator *)self->_trainingViewMediator hideContinuationAndPreludeLabel:1];
  v3 = [(VTUIEnrollTrainingViewController *)self navigationItem];
  [v3 setTitle:0];
}

- (void)_createTrainingManagerIfNeeded
{
  if (!self->_trainingManager)
  {
    v3 = [MEMORY[0x277D653E0] trainingManagerWithLocaleID:self->_spokenLanguageCode withAppDomain:self->_voiceProfileAppDomain];
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
    v13 = "[VTUIEnrollTrainingViewController _cleanupTrainingManagerWithCompletion:status:]";
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_2728BC000, v9, OS_LOG_TYPE_DEFAULT, "%s %@", &v12, 0x16u);
  }

  [(VTUIEnrollTrainingViewController *)self _cleanupTrainingManagerWithCompletion:v6];

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

- (void)_cleanupAllViews
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[VTUIEnrollTrainingViewController _cleanupAllViews]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v10, 0xCu);
  }

  v4 = [(VTUISiriEducationViewController *)self->_educationViewController view];
  [v4 removeFromSuperview];

  educationViewController = self->_educationViewController;
  self->_educationViewController = 0;

  if (self->_siriDataSharingOptInView)
  {
    [(UIViewController *)self->_siriDataSharingViewController viewDidDisappear:0];
    [(VTUIEnrollTrainingViewController *)self _tearDownDataSharingViews];
  }

  [(VTUIEnrollmentLanguageOptionsView *)self->_languageOptionsView removeFromSuperview];
  languageOptionsView = self->_languageOptionsView;
  self->_languageOptionsView = 0;

  [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController removeFromParentViewController];
  v7 = [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController view];
  [v7 removeFromSuperview];

  voiceSelectionViewController = self->_voiceSelectionViewController;
  self->_voiceSelectionViewController = 0;

  v9 = *MEMORY[0x277D85DE8];
}

- (id)interpretAudioSource:(unint64_t)a3
{
  if (a3 - 2 > 3)
  {
    return @"ALERT_HEADPHONE_BAD_MIC";
  }

  else
  {
    return off_279E54688[a3 - 2];
  }
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

  if (a4 < 0 || (-[VTUIEnrollTrainingViewController trainingPageInstructions](self, "trainingPageInstructions"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v11 <= a4))
  {
    v15 = 0;
  }

  else
  {
    v12 = [(VTUIEnrollTrainingViewController *)self trainingPageInstructions];
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
      return qword_272934068[v7];
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

- (void)_showRadarExitButton
{
  v8 = +[VTUIStyle sharedStyle];
  if ([(VTUIEnrollmentSuccessViewing *)self->_successView isSuccessViewReady])
  {
    v3 = +[VTUIStringsHelper sharedStringsHelper];
    v4 = [v3 uiLocalizedStringForKey:@"BUTTON_DONE"];
  }

  else
  {
    v4 = [v8 VTUIDeviceSpecificString:@"BUTTON_SET_UP_LATER"];
  }

  [(VTUITrainingViewMediator *)self->_trainingViewMediator showRadarExitButton:v4];
  v5 = [(VTUIEnrollmentSuccessViewing *)self->_successView isSuccessViewReady];
  trainingViewMediator = self->_trainingViewMediator;
  v7 = &selRef_finish_;
  if (!v5)
  {
    v7 = &selRef_skipTraining_;
  }

  [(VTUITrainingViewMediator *)self->_trainingViewMediator addTargetToRadarExitButton:self action:*v7 forControlEvents:64];
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
      v13 = "[VTUIEnrollTrainingViewController fetchaudioSessionID:]";
      v14 = 1024;
      v15 = audioSessionID;
      _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Early return %u", buf, 0x12u);
    }

    v4[2](v4, self->audioSessionID);
  }

  else
  {
    if (!self->_trainingManager)
    {
      [(VTUIEnrollTrainingViewController *)self _createTrainingManagerIfNeeded];
    }

    objc_initWeak(buf, self);
    trainingManager = self->_trainingManager;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__VTUIEnrollTrainingViewController_fetchaudioSessionID___block_invoke;
    v9[3] = &unk_279E544C0;
    objc_copyWeak(&v11, buf);
    v10 = v4;
    [(SSRVTUITrainingManager *)trainingManager getAudioSessionID:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __56__VTUIEnrollTrainingViewController_fetchaudioSessionID___block_invoke(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[VTUIEnrollTrainingViewController fetchaudioSessionID:]_block_invoke";
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Setting audioSessionID %u", buf, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__VTUIEnrollTrainingViewController_fetchaudioSessionID___block_invoke_358;
  block[3] = &unk_279E54498;
  block[4] = WeakRetained;
  v9 = a2;
  v8 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __56__VTUIEnrollTrainingViewController_fetchaudioSessionID___block_invoke_358(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    *(v1 + 1280) = *(a1 + 48);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)aboutTapped:(id)a3
{
  v4 = a3;
  [(VTUIAnalytics *)self->_analyticsEvent setAboutViewShown:[(VTUIAnalytics *)self->_analyticsEvent aboutViewShown]+ 1];
  aboutTappedSender = self->_aboutTappedSender;
  self->_aboutTappedSender = v4;

  v6 = [(VTUIEnrollTrainingViewController *)self delegate];
  [v6 showLearnMore];
}

- (void)siriLanguageSpokenLanguageCodeDidChange:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = self->_spokenLanguageCode;
  v6 = [a3 spokenLanguageCode];
  spokenLanguageCode = self->_spokenLanguageCode;
  self->_spokenLanguageCode = v6;

  if (v5 != self->_spokenLanguageCode)
  {
    [(VTUIAnalytics *)self->_analyticsEvent setLanguageCode:?];
    v8 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_spokenLanguageCode;
      v10 = v8;
      v11 = +[VTUIStringsHelper sharedStringsHelper];
      v12 = [v11 heySiriTriggerPhrase];
      v18 = 136315650;
      v19 = "[VTUIEnrollTrainingViewController siriLanguageSpokenLanguageCodeDidChange:]";
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_2728BC000, v10, OS_LOG_TYPE_DEFAULT, "%s VoiceTriggerUI: Spoken Language Code changed: %@. (Trigger: '%@')", &v18, 0x20u);
    }

    [(SSRVTUITrainingManager *)self->_trainingManager setLocaleIdentifier:self->_spokenLanguageCode];
    v13 = +[VTUIStringsHelper sharedStringsHelper];
    [v13 setSiriLanguage:self->_spokenLanguageCode];

    v14 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_spokenLanguageCode;
      v18 = 136315394;
      v19 = "[VTUIEnrollTrainingViewController siriLanguageSpokenLanguageCodeDidChange:]";
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_2728BC000, v14, OS_LOG_TYPE_DEFAULT, "%s Audio Hint player setLanguage:%@", &v18, 0x16u);
    }

    [(VTUIAudioHintPlayer *)self->_audioHintPlayer setLanguage:self->_spokenLanguageCode];
    [(VTUIEnrollTrainingViewController *)self _checkForPHSCloudDataIfNecessary:self->_spokenLanguageCode];
    disambiguatedLanguageOption = self->_disambiguatedLanguageOption;
    self->_disambiguatedLanguageOption = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)skipAssistant:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_isEnablementConfigurationLoading)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[VTUIEnrollTrainingViewController skipAssistant:]";
      _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Skip Assistant requested while Enablement configuration loading", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __50__VTUIEnrollTrainingViewController_skipAssistant___block_invoke;
    v17[3] = &unk_279E544E8;
    objc_copyWeak(&v19, buf);
    v18 = v4;
    [(VTUIEnrollTrainingViewController *)self _setIntroViewActionOnEnablementConfigurationDidLoad:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
    goto LABEL_17;
  }

  v6 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[VTUIEnrollTrainingViewController skipAssistant:]";
    _os_log_impl(&dword_2728BC000, v6, OS_LOG_TYPE_DEFAULT, "%s Skipping Setup / Assistant", buf, 0xCu);
  }

  v7 = +[VTUIStyle sharedStyle];
  v8 = [v7 isBuddyOrFollowUp];

  if (v8)
  {
    v9 = +[VTUIStyle sharedStyle];
    if ([v9 enrollmentMode])
    {
      v10 = +[VTUIStyle sharedStyle];
      v11 = [v10 enrollmentMode] == 1;

      if (!v11)
      {
        v12 = +[VTUIStyle sharedStyle];
        v13 = [v12 enrollmentMode] == 3;

        if (v13)
        {
          [(VTUIAnalytics *)self->_analyticsEvent setSkippedFromIntroNonAOP:[(VTUIAnalytics *)self->_analyticsEvent skippedFromIntroNonAOP]+ 1];
        }

        goto LABEL_14;
      }
    }

    else
    {
    }

    [(VTUIAnalytics *)self->_analyticsEvent setSkippedFromIntroAOP:[(VTUIAnalytics *)self->_analyticsEvent skippedFromIntroAOP]+ 1];
  }

LABEL_14:
  v14 = +[VTUIStyle sharedStyle];
  v15 = [v14 enrollmentMode] == 3;

  if (!v15)
  {
    [(VTUIEnrollTrainingViewController *)self _setPHSEnrollmentPrefEnabled:0];
  }

  [(VTUIEnrollTrainingViewController *)self _proceedAfterVoiceSelectionOrSkip];
LABEL_17:

  v16 = *MEMORY[0x277D85DE8];
}

void __50__VTUIEnrollTrainingViewController_skipAssistant___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained skipAssistant:*(a1 + 32)];

  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[VTUIEnrollTrainingViewController skipAssistant:]_block_invoke";
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
    v13 = "[VTUIEnrollTrainingViewController cancelTraining]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_INFO, "%s Cancel Training", buf, 0xCu);
  }

  [(VTUIAudioHintPlayer *)self->_audioHintPlayer cleanup];
  [(VTUIGMEnrollmentViewController *)self->_gmViewController userDidCancel];
  v4 = [MEMORY[0x277CEF158] sharedAnalytics];
  v10 = @"currentTrainingState";
  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_currentTrainingState];
  v7 = [v5 stringWithFormat:@"%@", v6];
  v11 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v4 logEventWithType:3304 context:v8];

  [(VTUIAnalytics *)self->_analyticsEvent setVoiceTrainingCancelled:[(VTUIAnalytics *)self->_analyticsEvent voiceTrainingCancelled]+ 1];
  [(VTUIAnalytics *)self->_analyticsEvent setVoiceTrainingCancelledStep:LODWORD(self->_currentTrainingState)];
  [VTUISELFLogger logSiriSetupPHSEnrollmentUICompleted:self->_trainingAttemptUUID enrollmentMode:self->_enrollmentMode locale:self->_spokenLanguageCode enrollmentSessionOutcome:2 pageNumber:LODWORD(self->_currentTrainingState)];
  [(VTUIEnrollTrainingViewController *)self _cleanupHelper];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)skipTraining:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v19 = "[VTUIEnrollTrainingViewController skipTraining:]";
    _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_INFO, "%s Skipping Training", buf, 0xCu);
  }

  self->_hasSkippedTraining = 1;
  v5 = [MEMORY[0x277CEF158] sharedAnalytics];
  v16 = @"currentTrainingState";
  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_currentTrainingState];
  v8 = [v6 stringWithFormat:@"%@", v7];
  v17 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [v5 logEventWithType:3310 context:v9];

  trainingAttemptUUID = self->_trainingAttemptUUID;
  enrollmentMode = self->_enrollmentMode;
  spokenLanguageCode = self->_spokenLanguageCode;
  currentTrainingState_low = LODWORD(self->_currentTrainingState);
  LOWORD(v15) = [(VTUIEnrollTrainingViewController *)self _shouldSpeakAudioHint];
  [VTUISELFLogger logSiriSetupPHSEnrollmentTrainingUtteranceAttempted:trainingAttemptUUID enrollmentMode:enrollmentMode locale:spokenLanguageCode trainingOutcome:2 pageNumber:currentTrainingState_low isRetry:0 audioHintNeeded:v15 audioHintSpoken:?];
  [(VTUIEnrollTrainingViewController *)self _cleanupHelper];
  [(VTUIEnrollTrainingViewController *)self _proceedAfterTrainingCompletionOrSkip];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)prewarm
{
  v4 = +[VTUIStyle sharedStyle];
  if ([v4 isIpad])
  {
  }

  else
  {
    v3 = [(VTUIEnrollTrainingViewController *)self _isGreyMatterAvailable];

    if (v3 && prewarm_onceToken != -1)
    {
      [VTUIEnrollTrainingViewController prewarm];
    }
  }
}

void __43__VTUIEnrollTrainingViewController_prewarm__block_invoke()
{
  v0 = dispatch_get_global_queue(2, 0);
  dispatch_async(v0, &__block_literal_global_363);
}

void __43__VTUIEnrollTrainingViewController_prewarm__block_invoke_2()
{
  v0 = objc_autoreleasePoolPush();
  [_TtC14VoiceTriggerUI27GMDeviceSceneViewController prepareSceneWithCompletionHandler:&__block_literal_global_366];

  objc_autoreleasePoolPop(v0);
}

void __43__VTUIEnrollTrainingViewController_prewarm__block_invoke_3(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_ERROR))
    {
      __43__VTUIEnrollTrainingViewController_prewarm__block_invoke_3_cold_1(v2);
    }
  }
}

- (void)_cleanupHelper
{
  v3 = [MEMORY[0x277CEF2A8] isSCDAFrameworkEnabled];
  v4 = &OBJC_IVAR___VTUIEnrollTrainingViewController__myriadCoordinator;
  if (v3)
  {
    v4 = &OBJC_IVAR___VTUIEnrollTrainingViewController__scdaCoordinator;
  }

  [*(&self->super.super.super.isa + *v4) resetStateMachine];
  [(VTUIEnrollTrainingViewController *)self _resetEnrollment];
  [(VTUIEnrollTrainingViewController *)self _cleanupTrainingManagerWithCompletion:0];

  [(VTUIEnrollTrainingViewController *)self setTrainingAttemptUUID:0];
}

- (void)_cleanupMyriad
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[VTUIEnrollTrainingViewController _cleanupMyriad]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s #myriad needs to be cleaned up", &v9, 0xCu);
  }

  if (![MEMORY[0x277CEF2A8] isSCDAFrameworkEnabled])
  {
    p_myriadCoordinator = &self->_myriadCoordinator;
    myriadCoordinator = self->_myriadCoordinator;
    v6 = 0x277CEF328;
    if (!myriadCoordinator)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  p_myriadCoordinator = &self->_scdaCoordinator;
  myriadCoordinator = self->_scdaCoordinator;
  v6 = 0x277D55AF8;
  if (myriadCoordinator)
  {
LABEL_5:
    [(AFMyriadCoordinator *)myriadCoordinator endAdvertising:0];
    [(AFMyriadCoordinator *)*p_myriadCoordinator stopListening:0];
    [(AFMyriadCoordinator *)*p_myriadCoordinator setupEnabled:0];
    v7 = *p_myriadCoordinator;
    *p_myriadCoordinator = 0;
  }

LABEL_6:
  [*v6 clearCurrentCoordinator];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setupMyriadCoordinator
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 136315138;
    *&v11[4] = "[VTUIEnrollTrainingViewController _setupMyriadCoordinator]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s #myriad needs to be set up", v11, 0xCu);
  }

  if ([MEMORY[0x277CEF2A8] isSCDAFrameworkEnabled])
  {
    p_scdaCoordinator = &self->_scdaCoordinator;
    if (self->_scdaCoordinator)
    {
      v5 = VTUILogContextFacility;
      if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 136315138;
        *&v11[4] = "[VTUIEnrollTrainingViewController _setupMyriadCoordinator]";
LABEL_10:
        _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s #myriad was already set up", v11, 0xCu);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    v6 = [MEMORY[0x277D55AF8] currentCoordinator];
    if (!v6)
    {
      v7 = MEMORY[0x277D55AF8];
LABEL_16:
      v8 = [[v7 alloc] initWithDelegate:self];
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  p_scdaCoordinator = &self->_myriadCoordinator;
  if (!self->_myriadCoordinator)
  {
    v6 = [MEMORY[0x277CEF328] currentCoordinator];
    if (!v6)
    {
      v7 = MEMORY[0x277CEF328];
      goto LABEL_16;
    }

LABEL_14:
    v8 = v6;
LABEL_17:
    v9 = *p_scdaCoordinator;
    *p_scdaCoordinator = v8;

    goto LABEL_18;
  }

  v5 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 136315138;
    *&v11[4] = "[VTUIEnrollTrainingViewController _setupMyriadCoordinator]";
    goto LABEL_10;
  }

LABEL_18:
  [*p_scdaCoordinator setupEnabled:{1, *v11}];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setLanguageOptionsAndContinue
{
  [(VTUITrainingViewMediator *)self->_trainingViewMediator hideContinuationAndPreludeLabel:1];
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__VTUIEnrollTrainingViewController__setLanguageOptionsAndContinue__block_invoke;
  v3[3] = &unk_279E544E8;
  objc_copyWeak(&v4, &location);
  v3[4] = self;
  [(VTUIEnrollTrainingViewController *)self _warnForLanguageCompatibilityIfNecessary:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __66__VTUIEnrollTrainingViewController__setLanguageOptionsAndContinue__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[138] view];
    [v4 removeFromSuperview];

    v5 = v3[138];
    v3[138] = 0;

    if (!v3[173])
    {
      v6 = [v3 view];
      v7 = [VTUIEnrollmentLanguageOptionsView alloc];
      v8 = [v3 view];
      [v8 bounds];
      v9 = [(VTUIEnrollmentLanguageOptionsView *)v7 initWithFrame:?];

      objc_storeStrong(v3 + 173, v9);
      [v3[173] setEnrollmentDelegate:v3];
      [v3[173] setTranslatesAutoresizingMaskIntoConstraints:0];
      if ([v3[129] count])
      {
        [v3[173] setContinueButtonLanguages:v3[129]];
      }

      [v6 addSubview:v3[173]];
      v10 = MEMORY[0x277CCAAD0];
      v11 = _NSDictionaryOfVariableBindings(&cfstr_Languageoption.isa, v9, 0);
      v12 = [v10 constraintsWithVisualFormat:@"H:|[languageOptionsView]|" options:0 metrics:0 views:v11];
      [v6 addConstraints:v12];

      v13 = MEMORY[0x277CCAAD0];
      v14 = _NSDictionaryOfVariableBindings(&cfstr_Languageoption.isa, v9, 0);
      v15 = [v13 constraintsWithVisualFormat:@"V:|[languageOptionsView]|" options:0 metrics:0 views:v14];
      v22 = v6;
      [v6 addConstraints:v15];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v16 = [v3[173] continueButtons];
      v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v24;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v24 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [*(*(&v23 + 1) + 8 * i) addTarget:*(a1 + 32) action:sel__processLanguageSelectionAction_ forControlEvents:64];
          }

          v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v18);
      }

      [v3[166] hideSkipButton:1];
      [v3[173] fadeInSubviews];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_checkForPHSCloudDataIfNecessary:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[VTUIStyle sharedStyle];
  v6 = [v5 enrollmentMode];

  v7 = *MEMORY[0x277CEF0E8];
  v8 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
  if (v4 && v6 <= 1)
  {
    if (v8)
    {
      *buf = 136315394;
      v21 = "[VTUIEnrollTrainingViewController _checkForPHSCloudDataIfNecessary:]";
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_2728BC000, v7, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __69__VTUIEnrollTrainingViewController__checkForPHSCloudDataIfNecessary___block_invoke;
    v17[3] = &unk_279E544E8;
    objc_copyWeak(&v19, buf);
    v18 = v4;
    v9 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v17);
    hasPHSInCloudFetchBlock = self->_hasPHSInCloudFetchBlock;
    self->_hasPHSInCloudFetchBlock = v9;

    hasPHSInCloudFetchQueue = self->_hasPHSInCloudFetchQueue;
    if (!hasPHSInCloudFetchQueue)
    {
      v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      v13 = dispatch_queue_create(0, v12);
      v14 = self->_hasPHSInCloudFetchQueue;
      self->_hasPHSInCloudFetchQueue = v13;

      hasPHSInCloudFetchQueue = self->_hasPHSInCloudFetchQueue;
    }

    dispatch_async(hasPHSInCloudFetchQueue, self->_hasPHSInCloudFetchBlock);

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v8)
    {
      *buf = 136315138;
      v21 = "[VTUIEnrollTrainingViewController _checkForPHSCloudDataIfNecessary:]";
      _os_log_impl(&dword_2728BC000, v7, OS_LOG_TYPE_DEFAULT, "%s Clearing fetch block", buf, 0xCu);
    }

    v15 = self->_hasPHSInCloudFetchBlock;
    self->_hasPHSInCloudFetchBlock = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __69__VTUIEnrollTrainingViewController__checkForPHSCloudDataIfNecessary___block_invoke(uint64_t a1)
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
      v8 = "[VTUIEnrollTrainingViewController _checkForPHSCloudDataIfNecessary:]_block_invoke";
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
  if (self->_hasPHSInCloudFetchBlock || ([(VTUIEnrollTrainingViewController *)self _checkForPHSCloudDataIfNecessary:self->_spokenLanguageCode], self->_hasPHSInCloudFetchBlock))
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[VTUIEnrollTrainingViewController _hasPHSCloudDataForSpokenLanguage]";
      _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Waiting on block", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    hasPHSInCloudFetchQueue = self->_hasPHSInCloudFetchQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__VTUIEnrollTrainingViewController__hasPHSCloudDataForSpokenLanguage__block_invoke;
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

void __69__VTUIEnrollTrainingViewController__hasPHSCloudDataForSpokenLanguage__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = WeakRetained[1001];
}

- (void)_showEducationView
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    enrollmentMode = self->_enrollmentMode;
    *buf = 136315394;
    v36 = "[VTUIEnrollTrainingViewController _showEducationView]";
    v37 = 2048;
    v38 = enrollmentMode;
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Showing Education view for enrollment mode %ld", buf, 0x16u);
  }

  v5 = +[VTUIStyle sharedStyle];
  v33 = [v5 educationViewTitleText];

  v6 = +[VTUIStyle sharedStyle];
  v32 = [v6 educationViewDetailText];

  v7 = [VTUISiriEducationViewController alloc];
  v8 = +[VTUIStyle sharedStyle];
  v9 = [(VTUISiriEducationViewController *)v7 initWithTitle:v33 detailText:v32 style:v8 delegate:self];
  educationViewController = self->_educationViewController;
  self->_educationViewController = v9;

  [(VTUISiriEducationViewController *)self->_educationViewController willMoveToParentViewController:self];
  [(VTUIEnrollTrainingViewController *)self addChildViewController:self->_educationViewController];
  [(VTUISiriEducationViewController *)self->_educationViewController didMoveToParentViewController:self];
  v11 = [(VTUISiriEducationViewController *)self->_educationViewController view];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 setAutoresizesSubviews:0];
  v12 = [(VTUIEnrollTrainingViewController *)self view];
  [v12 addSubview:v11];

  v25 = MEMORY[0x277CCAAD0];
  v30 = [v11 topAnchor];
  v31 = [(VTUIEnrollTrainingViewController *)self view];
  v29 = [v31 topAnchor];
  v28 = [v30 constraintEqualToAnchor:v29 constant:0.0];
  v34[0] = v28;
  v26 = [v11 leftAnchor];
  v27 = [(VTUIEnrollTrainingViewController *)self view];
  v24 = [v27 leftAnchor];
  v23 = [v26 constraintEqualToAnchor:v24 constant:0.0];
  v34[1] = v23;
  v22 = [v11 rightAnchor];
  v13 = [(VTUIEnrollTrainingViewController *)self view];
  v14 = [v13 rightAnchor];
  v15 = [v22 constraintEqualToAnchor:v14 constant:0.0];
  v34[2] = v15;
  v16 = [v11 bottomAnchor];
  v17 = [(VTUIEnrollTrainingViewController *)self view];
  v18 = [v17 bottomAnchor];
  v19 = [v16 constraintEqualToAnchor:v18 constant:0.0];
  v34[3] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  [v25 activateConstraints:v20];

  [(VTUITrainingViewMediator *)self->_trainingViewMediator hideSkipButton:1];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_finishSiriSetup
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__VTUIEnrollTrainingViewController__finishSiriSetup__block_invoke;
  v3[3] = &unk_279E541F8;
  objc_copyWeak(&v4, &location);
  [(VTUIEnrollTrainingViewController *)self _warnForLanguageCompatibilityIfNecessary:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __52__VTUIEnrollTrainingViewController__finishSiriSetup__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[144] setTurnOnSiriNonAOP:{objc_msgSend(WeakRetained[144], "turnOnSiriNonAOP") + 1}];
    [v2 _setAssistantEnabled:1];
    v3 = [MEMORY[0x277D4DA30] sharedInstance];
    [v3 didCompleteFlow:*MEMORY[0x277D4D9C0]];

    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[VTUIEnrollTrainingViewController _finishSiriSetup]_block_invoke";
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
    }

    [v2 _proceedAfterTrainingCompletionOrSkip];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)finish:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  [(VTUIEnrollTrainingViewController *)self _cleanupTrainingManagerWithCompletion:0];
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[VTUIEnrollTrainingViewController finish:]";
    _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  [(VTUIEnrollTrainingViewController *)self _proceedAfterTrainingCompletionOrSkip];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)enrollTrainingViewRadarButtonPressed:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[VTUIEnrollTrainingViewController enrollTrainingViewRadarButtonPressed:]";
    _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Tapped on radar button", buf, 0xCu);
  }

  [(VTUIEnrollTrainingViewController *)self _showRadarExitButton];
  [(VTUIEnrollmentSuccessViewing *)self->_successView setHidden:1];
  introViewController = self->_introViewController;
  if (introViewController)
  {
    v7 = [(VTUIEnrollmentSetupIntroViewControlling *)introViewController view];
    [v7 setHidden:1];
  }

  [(VTUIEnrollmentLanguageOptionsView *)self->_languageOptionsView setHidden:1];
  [(VTUITrainingViewMediator *)self->_trainingViewMediator hideRadarButton:1];
  [(VTUITrainingViewMediator *)self->_trainingViewMediator hideSkipButton:1];
  if ([(VTUIEnrollTrainingViewController *)self _isTrainingInProgress])
  {
    [(VTUIEnrollTrainingViewController *)self _resetEnrollment];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __73__VTUIEnrollTrainingViewController_enrollTrainingViewRadarButtonPressed___block_invoke;
    v9[3] = &unk_279E54220;
    v9[4] = self;
    [(VTUIEnrollTrainingViewController *)self _cleanupTrainingManagerWithCompletion:v9];
  }

  else
  {
    [(VTUIEnrollTrainingViewController *)self _presentRadarView];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)shouldAbortAnotherDeviceBetter:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[VTUIEnrollTrainingViewController shouldAbortAnotherDeviceBetter:]";
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
    v6 = "[VTUIEnrollTrainingViewController shouldContinue:]";
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
    v6 = "[VTUIEnrollTrainingViewController scdaShouldAbortAnotherDeviceBetter:]";
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
    v6 = "[VTUIEnrollTrainingViewController scdaShouldContinue:]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s #scda continue ignored during training", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_tearDownDataSharingViews
{
  [(VTUISiriDataSharingOptInPresenter *)self->_siriDataSharingOptInPresenter tearDownPresentedViews];
  siriDataSharingOptInView = self->_siriDataSharingOptInView;
  self->_siriDataSharingOptInView = 0;

  [(VTUIEnrollTrainingViewController *)self removeChildViewController:self->_siriDataSharingViewController];
  siriDataSharingViewController = self->_siriDataSharingViewController;
  self->_siriDataSharingViewController = 0;
}

- (void)_showSiriDataSharingOptIn
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[VTUIEnrollTrainingViewController _showSiriDataSharingOptIn]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s #SiriDataSharingOptIn: Displaying SiriDataSharingOptIn", buf, 0xCu);
  }

  v4 = [(VTUIEnrollTrainingViewController *)self view];
  v5 = [(VTUISiriDataSharingOptInPresenter *)self->_siriDataSharingOptInPresenter dataSharingOptInTextWelcomeControllerForViewStyle:0];
  siriDataSharingViewController = self->_siriDataSharingViewController;
  self->_siriDataSharingViewController = v5;

  v7 = [(UIViewController *)self->_siriDataSharingViewController view];
  siriDataSharingOptInView = self->_siriDataSharingOptInView;
  self->_siriDataSharingOptInView = v7;
  v9 = v7;

  [(UIViewController *)self->_siriDataSharingViewController willMoveToParentViewController:self];
  [(VTUIEnrollTrainingViewController *)self addChildViewController:self->_siriDataSharingViewController];
  [(UIViewController *)self->_siriDataSharingViewController didMoveToParentViewController:self];
  [(UIView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v9 setAutoresizesSubviews:0];
  [v4 addSubview:v9];
  v10 = [MEMORY[0x277CCAAD0] constraintWithItem:v9 attribute:3 relatedBy:0 toItem:v4 attribute:3 multiplier:1.0 constant:0.0];
  v11 = [MEMORY[0x277CCAAD0] constraintWithItem:v9 attribute:4 relatedBy:0 toItem:v4 attribute:4 multiplier:1.0 constant:0.0];
  v12 = [MEMORY[0x277CCAAD0] constraintWithItem:v9 attribute:1 relatedBy:0 toItem:v4 attribute:1 multiplier:1.0 constant:0.0];
  v13 = [MEMORY[0x277CCAAD0] constraintWithItem:v9 attribute:2 relatedBy:0 toItem:v4 attribute:2 multiplier:1.0 constant:0.0];
  v16[0] = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
  [v4 addConstraints:v14];

  [(VTUITrainingViewMediator *)self->_trainingViewMediator hideSkipButton:1];
  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldShowSiriDataSharingOptInView
{
  v24 = *MEMORY[0x277D85DE8];
  enrollmentMode = self->_enrollmentMode;
  v4 = [MEMORY[0x277CEF368] sharedPreferences];
  v5 = [v4 assistantIsEnabled];

  v6 = [MEMORY[0x277CF0130] sharedInstance];
  v7 = [v6 shieldSignInOrCreateFlows];

  v8 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = v8;
    v11 = [v9 numberWithBool:enrollmentMode == 2];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v16 = 136315906;
    v17 = "[VTUIEnrollTrainingViewController _shouldShowSiriDataSharingOptInView]";
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_2728BC000, v10, OS_LOG_TYPE_DEFAULT, "%s #SiriDataSharingOptIn: isVoiceTrainingForHomeApp:%@ siriEnabled: %@, protoAccount:%@", &v16, 0x2Au);
  }

  if (enrollmentMode == 2)
  {
    result = 0;
  }

  else if ([(VTUISiriDataSharingOptInPresenter *)self->_siriDataSharingOptInPresenter shouldShowSiriDataSharingOptInView])
  {
    result = v5 & (v7 ^ 1);
  }

  else
  {
    result = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)siriDataSharingOptInRequestsDismissalFromPresenter:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x277CCABB0];
    hasSkippedTraining = self->_hasSkippedTraining;
    v7 = v4;
    v8 = [v5 numberWithBool:hasSkippedTraining];
    v10 = 136315394;
    v11 = "[VTUIEnrollTrainingViewController siriDataSharingOptInRequestsDismissalFromPresenter:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_2728BC000, v7, OS_LOG_TYPE_DEFAULT, "%s #SiriDataSharingOptIn: Dismissing DataSharingOptIn sheet. _hasSkippedTraining:%@", &v10, 0x16u);
  }

  [(VTUIEnrollTrainingViewController *)self _endSetup];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_proceedAfterVoiceSelectionOrSkip
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CEF368] sharedPreferences];
  v4 = [v3 assistantIsEnabled];

  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[VTUIEnrollTrainingViewController _proceedAfterVoiceSelectionOrSkip]";
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Enabled: %d", &v9, 0x12u);
  }

  if (!(v4 & 1 | !self->_hasSkippedTraining))
  {
    goto LABEL_8;
  }

  v6 = +[VTUIStyle sharedStyle];
  v7 = [v6 shouldPresentEducationView];

  if (!v7)
  {
    if ([(VTUIEnrollTrainingViewController *)self _shouldShowSiriDataSharingOptInView])
    {
      [(VTUIEnrollmentSuccessViewing *)self->_successView setHidden:1];
      [(VTUIEnrollTrainingViewController *)self _showSiriDataSharingOptIn];
      goto LABEL_9;
    }

LABEL_8:
    [(VTUIEnrollTrainingViewController *)self _endSetup];
    goto LABEL_9;
  }

  [(VTUIEnrollmentSuccessViewing *)self->_successView setHidden:1];
  [(VTUIEnrollTrainingViewController *)self _showEducationView];
LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_endSetup
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->_hasSkippedTraining)
  {
    v3 = [MEMORY[0x277CEF368] sharedPreferences];
    v4 = [v3 assistantIsEnabled];

    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      enablementConfiguration = self->_enablementConfiguration;
      *buf = 136315650;
      v17 = "[VTUIEnrollTrainingViewController _endSetup]";
      v18 = 1024;
      v19 = v4;
      v20 = 2112;
      v21 = enablementConfiguration;
      _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Ending setup, assistant enabled %d enablementConfiguration:%@", buf, 0x1Cu);
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

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained skipSetup];

    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = [(VTUIEnrollTrainingViewController *)self delegate];
    v12 = objc_opt_respondsToSelector();

    v15 = [(VTUIEnrollTrainingViewController *)self delegate];
    if (v12)
    {
      v13 = [(SSRVTUITrainingManager *)self->_trainingManager voiceProfile];
      [v15 continueSetupWithVoiceProfile:v13];
    }

    else
    {
      [v15 continueSetup];
    }

    v14 = *MEMORY[0x277D85DE8];
  }
}

- (void)siriEducationViewControllerContinuePressed:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[VTUIEnrollTrainingViewController siriEducationViewControllerContinuePressed:]";
    _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Education view continue pressed", &v9, 0xCu);
  }

  if ([(VTUIEnrollTrainingViewController *)self _shouldShowSiriDataSharingOptInView])
  {
    v6 = [(VTUISiriEducationViewController *)self->_educationViewController view];
    [v6 removeFromSuperview];

    educationViewController = self->_educationViewController;
    self->_educationViewController = 0;

    [(VTUIEnrollTrainingViewController *)self _showSiriDataSharingOptIn];
  }

  else
  {
    [(VTUIEnrollTrainingViewController *)self _endSetup];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)siriIntroViewControllerPrivacyLinkTapped
{
  if ([(VTUIEnrollTrainingViewController *)self _isGreyMatterAvailable])
  {
    v10 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.siri"];
    [v10 setPresentingViewController:self];
    v3 = [v10 splashController];
    [v3 setAllowsOpeningSafari:1];

    v4 = [v10 splashController];
    [v4 setUnderlineLinks:0];

    v5 = [v10 splashController];
    [v5 setDisplayDeviceType:1];

    v6 = [MEMORY[0x277CEF368] sharedPreferences];
    v7 = [v6 languageCode];
    v8 = [v10 splashController];
    [v8 setDisplayLanguage:v7];

    [v10 setModalPresentationStyle:{-[VTUIEnrollTrainingViewController modalPresentationStyle](self, "modalPresentationStyle")}];
    v9 = [(VTUIEnrollTrainingViewController *)self presentingViewController];
    [v10 setSupportedInterfaceOrientations:{objc_msgSend(v9, "supportedInterfaceOrientations")}];

    [v10 present];
  }
}

- (BOOL)allLanguageOptionsSupportCompactTrigger
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_siriLanguageOptions;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [MEMORY[0x277D7A8D0] sharedPreferences];
        LODWORD(v7) = [v8 isCompactVoiceTriggerAvailableForLanguageCode:v7];

        if (!v7)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_processIntroViewContinueAction:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!self->_isEnablementConfigurationLoading)
  {
    v9 = +[VTUIStyle sharedStyle];
    v10 = [v9 enrollmentMode];

    if (v10 == 4)
    {
LABEL_6:
      [(VTUIEnrollTrainingViewController *)self _continueToTrainingFromIntro:v7];
      goto LABEL_10;
    }

    if ([(VTUIEnrollTrainingViewController *)self _shouldPresentLanguageDisambiguation])
    {
      [(VTUIEnrollTrainingViewController *)self _setLanguageOptionsAndContinue];
      if (!v7)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (v10 != 3)
    {
      if (v10 > 1 || (+[VTUIStyle sharedStyle](VTUIStyle, "sharedStyle"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 shouldPresentDisclosureForCompactVoiceTrigger], v12, !v13))
      {
        if ([(VTUIEnrollTrainingViewController *)self _isGreyMatterAvailable])
        {
          goto LABEL_6;
        }

        [(VTUIEnrollTrainingViewController *)self _continueToVoiceSelectionFromIntro];
        if (!v7)
        {
          goto LABEL_10;
        }

LABEL_9:
        v7[2](v7);
        goto LABEL_10;
      }

      v14 = [MEMORY[0x277CEF368] sharedPreferences];
      [v14 setCompactVoiceTriggerDisclosurePresented:1];
    }

    [(VTUIEnrollTrainingViewController *)self _finishSiriSetup];
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[VTUIEnrollTrainingViewController _processIntroViewContinueAction:completion:]";
    _os_log_impl(&dword_2728BC000, v8, OS_LOG_TYPE_DEFAULT, "%s Intro view continue requested while Enablement configuration loading", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__VTUIEnrollTrainingViewController__processIntroViewContinueAction_completion___block_invoke;
  v15[3] = &unk_279E54578;
  objc_copyWeak(&v18, buf);
  v16 = v6;
  v17 = v7;
  [(VTUIEnrollTrainingViewController *)self _setIntroViewActionOnEnablementConfigurationDidLoad:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
}

void __79__VTUIEnrollTrainingViewController__processIntroViewContinueAction_completion___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _processIntroViewContinueAction:*(a1 + 32) completion:*(a1 + 40)];

  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[VTUIEnrollTrainingViewController _processIntroViewContinueAction:completion:]_block_invoke";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s Intro view continue processed after Enablement configuration loaded", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_proceedAfterTrainingCompletionOrSkip
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(VTUIEnrollTrainingViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(VTUIEnrollTrainingViewController *)self delegate];
    [v5 didCompleteOrSkipVoiceTraining];
  }

  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    voiceSelected = self->_voiceSelected;
    *buf = 136315394;
    v12 = "[VTUIEnrollTrainingViewController _proceedAfterTrainingCompletionOrSkip]";
    v13 = 1024;
    v14 = voiceSelected;
    _os_log_impl(&dword_2728BC000, v6, OS_LOG_TYPE_DEFAULT, "%s Voice already selected in the session: %d", buf, 0x12u);
  }

  if (self->_voiceSelected || ![(AFEnablementConfiguration *)self->_enablementConfiguration requiresVoiceSelectionForRecognitionLanguage:self->_spokenLanguageCode])
  {
    [(VTUIEnrollTrainingViewController *)self _proceedAfterVoiceSelectionOrSkip];
  }

  else
  {
    objc_initWeak(buf, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __73__VTUIEnrollTrainingViewController__proceedAfterTrainingCompletionOrSkip__block_invoke;
    v9[3] = &unk_279E541F8;
    objc_copyWeak(&v10, buf);
    [(VTUIEnrollTrainingViewController *)self _warnForLanguageCompatibilityIfNecessary:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __73__VTUIEnrollTrainingViewController__proceedAfterTrainingCompletionOrSkip__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained[138] view];
    [v2 removeFromSuperview];

    v3 = v4[138];
    v4[138] = 0;

    [v4 _showVoiceSelectionViewForRecognitionLanguage:v4[171]];
    WeakRetained = v4;
  }
}

- (void)_processLanguageSelectionAction:(id)a3
{
  v14 = a3;
  v4 = +[VTUIStyle sharedStyle];
  v5 = [v4 enrollmentMode];

  [(VTUITrainingViewMediator *)self->_trainingViewMediator hideContinuationAndPreludeLabel:0];
  v6 = [(VTUIEnrollmentLanguageOptionsView *)self->_languageOptionsView continueButtons];
  v7 = [v6 containsObject:v14];

  if (v7)
  {
    v8 = [(VTUIEnrollmentLanguageOptionsView *)self->_languageOptionsView languageSelectionOfContinueButton:v14];
    spokenLanguageCode = self->_spokenLanguageCode;
    self->_spokenLanguageCode = v8;
    v10 = v8;

    objc_storeStrong(&self->_disambiguatedLanguageOption, self->_spokenLanguageCode);
    [(VTUIEnrollTrainingViewController *)self _checkForPHSCloudDataIfNecessary:self->_spokenLanguageCode];
  }

  if ([(AFEnablementConfiguration *)self->_enablementConfiguration requiresVoiceSelectionForRecognitionLanguage:self->_spokenLanguageCode])
  {
    [(VTUIEnrollmentLanguageOptionsView *)self->_languageOptionsView removeFromSuperview];
    languageOptionsView = self->_languageOptionsView;
    self->_languageOptionsView = 0;

    [(VTUIEnrollTrainingViewController *)self _showVoiceSelectionViewForRecognitionLanguage:self->_spokenLanguageCode];
  }

  else
  {
    disambiguatedLanguageOption = self->_disambiguatedLanguageOption;
    if (disambiguatedLanguageOption)
    {
      [(VTUIEnrollTrainingViewController *)self _processDisambiguatedLanguageOption:disambiguatedLanguageOption commitLanguageCodeToPreferences:1];
    }

    if (v5 == 3)
    {
      [(VTUIEnrollmentLanguageOptionsView *)self->_languageOptionsView removeFromSuperview];
      v13 = self->_languageOptionsView;
      self->_languageOptionsView = 0;

      [(VTUIEnrollTrainingViewController *)self _finishSiriSetup];
    }

    else
    {
      [(VTUIEnrollTrainingViewController *)self _continueToTrainingFromLanguageOptions];
    }
  }
}

- (void)_setIntroViewActionOnEnablementConfigurationDidLoad:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  [v5 startAnimating];
  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v5];
  [(VTUIEnrollTrainingViewController *)self _setRightBarButtonItem:v6];
  [(VTUIEnrollmentSetupIntroViewControlling *)self->_introViewController setContinueButtonEnabled:0];
  [(VTUIEnrollmentSetupIntroViewControlling *)self->_introViewController setLaterButtonEnabled:0];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__VTUIEnrollTrainingViewController__setIntroViewActionOnEnablementConfigurationDidLoad___block_invoke;
  aBlock[3] = &unk_279E545A0;
  objc_copyWeak(&v12, &location);
  v11 = v4;
  v7 = v4;
  v8 = _Block_copy(aBlock);
  onEnablementConfigurationDidLoad = self->_onEnablementConfigurationDidLoad;
  self->_onEnablementConfigurationDidLoad = v8;

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __88__VTUIEnrollTrainingViewController__setIntroViewActionOnEnablementConfigurationDidLoad___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _resetRightBarButtonItems];
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))();
    }

    [v4[138] setContinueButtonEnabled:1];
    [v4[138] setLaterButtonEnabled:1];
    WeakRetained = v4;
  }
}

- (void)_processDisambiguatedLanguageOption:(id)a3 commitLanguageCodeToPreferences:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[VTUIEnrollTrainingViewController _processDisambiguatedLanguageOption:commitLanguageCodeToPreferences:]";
    _os_log_impl(&dword_2728BC000, v8, OS_LOG_TYPE_DEFAULT, "%s ", &v17, 0xCu);
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

  if (v4)
  {
    v13 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[VTUIEnrollTrainingViewController _processDisambiguatedLanguageOption:commitLanguageCodeToPreferences:]";
      _os_log_impl(&dword_2728BC000, v13, OS_LOG_TYPE_DEFAULT, "%s resetting trigger phrase and training hints", &v17, 0xCu);
    }

    [(VTUIEnrollTrainingViewController *)self _setInitialTriggerPhraseIfNotSet];
    [(VTUIEnrollTrainingViewController *)self _setupTrainingStates];
  }

  if (v10 != 3)
  {
    v14 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      disambiguatedLanguageOption = self->_disambiguatedLanguageOption;
      v17 = 136315394;
      v18 = "[VTUIEnrollTrainingViewController _processDisambiguatedLanguageOption:commitLanguageCodeToPreferences:]";
      v19 = 2112;
      v20 = disambiguatedLanguageOption;
      _os_log_impl(&dword_2728BC000, v14, OS_LOG_TYPE_DEFAULT, "%s Audio Hint player setLanguage:%@", &v17, 0x16u);
    }

    [(VTUIAudioHintPlayer *)self->_audioHintPlayer setLanguage:self->_disambiguatedLanguageOption];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_continueToVoiceSelectionFromIntro
{
  [(VTUIEnrollTrainingViewController *)self _hideIntroView];
  spokenLanguageCode = self->_spokenLanguageCode;

  [(VTUIEnrollTrainingViewController *)self _showVoiceSelectionViewForRecognitionLanguage:spokenLanguageCode];
}

- (void)_showVoiceSelectionViewForRecognitionLanguage:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    enrollmentMode = self->_enrollmentMode;
    *buf = 136315650;
    v54 = "[VTUIEnrollTrainingViewController _showVoiceSelectionViewForRecognitionLanguage:]";
    v55 = 2048;
    v56 = enrollmentMode;
    v57 = 2112;
    v58 = v4;
    _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Showing voice selection view for enrollment mode %ld, recognitionLanguage %@", buf, 0x20u);
  }

  if (!v4)
  {
    v7 = [MEMORY[0x277CEF368] sharedPreferences];
    v4 = [v7 bestSupportedLanguageCodeForLanguageCode:0];

    v8 = VTUILogContextFacility;
    if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v54 = "[VTUIEnrollTrainingViewController _showVoiceSelectionViewForRecognitionLanguage:]";
      v55 = 2112;
      v56 = v4;
      _os_log_impl(&dword_2728BC000, v8, OS_LOG_TYPE_DEFAULT, "%s No recognition language used, falling back to %@", buf, 0x16u);
    }
  }

  v9 = [(AFEnablementConfiguration *)self->_enablementConfiguration voiceSelectionAllowsRandomSelection];
  [(VTUIEnrollTrainingViewController *)self _setRightBarButtonItem:0];
  v10 = +[VTUIStyle sharedStyle];
  v11 = [v10 enrollmentMode];

  if (v11 != 2 && v11 != 4)
  {
    v13 = [(VTUIEnrollTrainingViewController *)self navigationItem];
    self->didOverrideHiddenBackButtonVisibility = [v13 hidesBackButton];

    v14 = [(VTUIEnrollTrainingViewController *)self navigationItem];
    [v14 setHidesBackButton:0];

    [MEMORY[0x277D75780] _setUseCustomBackButtonAction:1];
    v15 = [(VTUIEnrollTrainingViewController *)self navigationItem];
    v16 = [v15 navigationBar];
    v17 = [v16 backItem];
    v18 = [v17 backBarButtonItem];
    overriddenBackItemBackBarButtonItem = self->overriddenBackItemBackBarButtonItem;
    self->overriddenBackItemBackBarButtonItem = v18;

    v20 = +[VTUIStyle sharedStyle];
    v21 = [v20 VTUIDeviceSpecificString:@"BUTTON_NAV_BACK"];

    v22 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v21 style:0 target:self action:sel_returnFromVoiceSelectionToIntroView_];
    v23 = [(VTUIEnrollTrainingViewController *)self navigationItem];
    v24 = [v23 navigationBar];
    v25 = [v24 backItem];
    [v25 setBackBarButtonItem:v22];
  }

  v51 = v4;
  v26 = [[VTUIVoiceSelectionViewController alloc] initWithRecognitionLanguage:v4 allowsRandomSelection:v9 barButtonItemForContinue:0 customVoicePreviewer:0 delegate:self];
  voiceSelectionViewController = self->_voiceSelectionViewController;
  self->_voiceSelectionViewController = v26;

  [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController willMoveToParentViewController:self];
  [(VTUIEnrollTrainingViewController *)self addChildViewController:self->_voiceSelectionViewController];
  [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController didMoveToParentViewController:self];
  v28 = [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController view];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v28 setAutoresizesSubviews:0];
  v29 = [(VTUIEnrollTrainingViewController *)self view];
  [v29 addSubview:v28];

  v43 = MEMORY[0x277CCAAD0];
  v49 = [v28 topAnchor];
  v50 = [(VTUIEnrollTrainingViewController *)self view];
  v48 = [v50 topAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v52[0] = v47;
  v45 = [v28 leftAnchor];
  v46 = [(VTUIEnrollTrainingViewController *)self view];
  v44 = [v46 leftAnchor];
  v42 = [v45 constraintEqualToAnchor:v44];
  v52[1] = v42;
  v41 = [v28 rightAnchor];
  v30 = [(VTUIEnrollTrainingViewController *)self view];
  v31 = [v30 rightAnchor];
  v32 = [v41 constraintEqualToAnchor:v31];
  v52[2] = v32;
  v33 = [v28 bottomAnchor];
  v34 = [(VTUIEnrollTrainingViewController *)self view];
  v35 = [v34 bottomAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  v52[3] = v36;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
  [v43 activateConstraints:v37];

  if (+[VTUIFeatureFlags isNaturalUIEnabled])
  {
    v38 = [(VTUIEnrollTrainingViewController *)self navigationController];
    v39 = [v38 navigationBar];
    [v39 setOverrideUserInterfaceStyle:0];

    [(VTUIEnrollTrainingViewController *)self setOverrideUserInterfaceStyle:0];
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)returnFromVoiceSelectionToIntroView:(id)a3
{
  [(VTUIEnrollTrainingViewController *)self _resetBackBarButtonItem];
  [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController removeFromParentViewController];
  v4 = [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController view];
  [v4 removeFromSuperview];

  voiceSelectionViewController = self->_voiceSelectionViewController;
  self->_voiceSelectionViewController = 0;

  v6 = [(VTUIEnrollTrainingViewController *)self navigationItem];
  [v6 setRightBarButtonItems:self->_existingRightBarButtonItems];

  existingRightBarButtonItems = self->_existingRightBarButtonItems;
  self->_existingRightBarButtonItems = 0;

  [(VTUIEnrollTrainingViewController *)self _showSiriIntroView];
}

- (void)_resetBackBarButtonItem
{
  if (self->didOverrideHiddenBackButtonVisibility)
  {
    v3 = [(VTUIEnrollTrainingViewController *)self navigationItem];
    [v3 setHidesBackButton:1];

    self->didOverrideHiddenBackButtonVisibility = 0;
  }

  v4 = [(VTUIEnrollTrainingViewController *)self navigationItem];
  v5 = [v4 navigationBar];
  v6 = [v5 backItem];
  [v6 setBackBarButtonItem:self->overriddenBackItemBackBarButtonItem];

  overriddenBackItemBackBarButtonItem = self->overriddenBackItemBackBarButtonItem;
  self->overriddenBackItemBackBarButtonItem = 0;

  v8 = MEMORY[0x277D75780];

  [v8 _setUseCustomBackButtonAction:0];
}

- (void)_logVoiceSelection:(id)a3 randomlySelected:(BOOL)a4
{
  v5 = a3;
  v4 = v5;
  AnalyticsSendEventLazy();
}

id __72__VTUIEnrollTrainingViewController__logVoiceSelection_randomlySelected___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [*(a1 + 32) languageCode];

  if (v3)
  {
    v4 = [*(a1 + 32) languageCode];
    [v2 setObject:v4 forKey:@"languageCode"];
  }

  v5 = [*(a1 + 32) name];

  if (v5)
  {
    v6 = [*(a1 + 32) name];
    [v2 setObject:v6 forKey:@"voiceName"];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  [v2 setObject:v7 forKey:@"randomlySelected"];

  return v2;
}

- (void)_hideIntroView
{
  if ([(VTUIEnrollTrainingViewController *)self _isGreyMatterAvailable])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__VTUIEnrollTrainingViewController__hideIntroView__block_invoke;
    v6[3] = &unk_279E54220;
    v6[4] = self;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__VTUIEnrollTrainingViewController__hideIntroView__block_invoke_2;
    v5[3] = &unk_279E545F0;
    v5[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v6 options:v5 animations:0.3 completion:0.0];
  }

  else
  {
    v3 = [(VTUIEnrollmentSetupIntroViewControlling *)self->_introViewController view];
    [v3 removeFromSuperview];

    introViewController = self->_introViewController;
    self->_introViewController = 0;
  }
}

void __50__VTUIEnrollTrainingViewController__hideIntroView__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 1104) view];
  [v1 setAlpha:0.0];
}

void __50__VTUIEnrollTrainingViewController__hideIntroView__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1104) view];
  [v2 setHidden:1];

  v3 = [*(*(a1 + 32) + 1104) view];
  [v3 setAlpha:1.0];
}

- (void)_continueToTrainingFromIntro:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[VTUIEnrollTrainingViewController _continueToTrainingFromIntro:]";
    _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__VTUIEnrollTrainingViewController__continueToTrainingFromIntro___block_invoke;
  aBlock[3] = &unk_279E545A0;
  objc_copyWeak(&v21, buf);
  v6 = v4;
  v20 = v6;
  v7 = _Block_copy(aBlock);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __65__VTUIEnrollTrainingViewController__continueToTrainingFromIntro___block_invoke_2;
  v14 = &unk_279E54618;
  objc_copyWeak(&v18, buf);
  v8 = v6;
  v15 = self;
  v16 = v8;
  v9 = v7;
  v17 = v9;
  [(VTUIEnrollTrainingViewController *)self _warnForLanguageCompatibilityIfNecessary:&v11];
  if ([(VTUIEnrollTrainingViewController *)self _isGreyMatterAvailable:v11])
  {
    [(VTUIEnrollTrainingViewController *)self _playSoundForStageAfterDelay:0.3];
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __65__VTUIEnrollTrainingViewController__continueToTrainingFromIntro___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained _hideIntroView];
  }

  else
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __65__VTUIEnrollTrainingViewController__continueToTrainingFromIntro___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    if ([WeakRetained[138] isLaterButtonAvailable])
    {
      v3 = v9;
      v4 = v9[136] == 4;
    }

    else
    {
      v4 = 1;
      v3 = v9;
    }

    [v3[166] hideSkipButton:v4];
    v6 = +[VTUIStyle sharedStyle];
    v7 = [v6 enrollmentMode];

    if (v7 != 4)
    {
      [v9 _setAssistantEnabled:1];
    }

    [v9[144] setVoiceTrainingStarted:{objc_msgSend(v9[144], "voiceTrainingStarted") + 1}];
    [*(a1 + 32) _startTrainingIfNecessaryWithViewCleanupBlock:*(a1 + 48) cloudOperationCompletionBlock:*(a1 + 40)];
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_continueToTrainingFromLanguageOptions
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[VTUIEnrollTrainingViewController _continueToTrainingFromLanguageOptions]";
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__VTUIEnrollTrainingViewController__continueToTrainingFromLanguageOptions__block_invoke;
  aBlock[3] = &unk_279E541F8;
  objc_copyWeak(&v9, buf);
  v4 = _Block_copy(aBlock);
  v5 = +[VTUIStyle sharedStyle];
  v6 = [v5 enrollmentMode] == 4;

  if (!v6)
  {
    [(VTUIEnrollTrainingViewController *)self _setAssistantEnabled:1];
  }

  [(VTUITrainingViewMediator *)self->_trainingViewMediator hideSkipButton:0];
  [(VTUIAnalytics *)self->_analyticsEvent setVoiceTrainingStarted:[(VTUIAnalytics *)self->_analyticsEvent voiceTrainingStarted]+ 1];
  [(VTUIEnrollTrainingViewController *)self _startTrainingIfNecessaryWithViewCleanupBlock:v4];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

void __74__VTUIEnrollTrainingViewController__continueToTrainingFromLanguageOptions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[173] removeFromSuperview];
    v2 = v3[173];
    v3[173] = 0;

    WeakRetained = v3;
  }
}

- (void)_continueToTrainingFromVoiceSelection:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[VTUIEnrollTrainingViewController _continueToTrainingFromVoiceSelection:]";
    _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  [(VTUITrainingViewMediator *)self->_trainingViewMediator hideSkipButton:0];
  v6 = +[VTUIStyle sharedStyle];
  v7 = [v6 enrollmentMode] == 4;

  if (!v7)
  {
    [(VTUIEnrollTrainingViewController *)self _setAssistantEnabled:1];
  }

  objc_initWeak(buf, self);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __74__VTUIEnrollTrainingViewController__continueToTrainingFromVoiceSelection___block_invoke;
  v14 = &unk_279E545A0;
  objc_copyWeak(&v16, buf);
  v8 = v4;
  v15 = v8;
  v9 = _Block_copy(&v11);
  [(VTUIAnalytics *)self->_analyticsEvent setVoiceTrainingStarted:[(VTUIAnalytics *)self->_analyticsEvent voiceTrainingStarted:v11]+ 1];
  [(VTUIEnrollTrainingViewController *)self _startTrainingIfNecessaryWithViewCleanupBlock:v9 cloudOperationCompletionBlock:v8];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __74__VTUIEnrollTrainingViewController__continueToTrainingFromVoiceSelection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained[154] removeFromParentViewController];
    v3 = [v7[154] view];
    [v3 removeFromSuperview];

    v4 = v7[154];
    v7[154] = 0;
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_startTrainingIfNecessaryWithViewCleanupBlock:(id)a3 cloudOperationCompletionBlock:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_enrollmentMode == 2)
  {
    if (v6)
    {
      v6[2](v6);
    }

    v8 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v28 = "[VTUIEnrollTrainingViewController _startTrainingIfNecessaryWithViewCleanupBlock:cloudOperationCompletionBlock:]";
      _os_log_impl(&dword_2728BC000, v8, OS_LOG_TYPE_DEFAULT, "%s Starting training since we are in kVTUIEnrollmentModeTrainingUIOnly", buf, 0xCu);
    }

    [(VTUIEnrollTrainingViewController *)self _startTraining];
    if (v7)
    {
      v7[2](v7);
    }
  }

  else
  {
    v9 = [MEMORY[0x277D653F8] sharedInstance];
    v10 = [MEMORY[0x277CEF368] sharedPreferences];
    v11 = [v10 languageCode];

    if ([v9 isSATEnrolledForSiriProfileId:0 forLanguageCode:v11])
    {
      v12 = MEMORY[0x277CEF0E8];
      v13 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v28 = "[VTUIEnrollTrainingViewController _startTrainingIfNecessaryWithViewCleanupBlock:cloudOperationCompletionBlock:]";
        _os_log_impl(&dword_2728BC000, v13, OS_LOG_TYPE_DEFAULT, "%s Skipping training due to preexistence of PHS data locally", buf, 0xCu);
      }

      v14 = [MEMORY[0x277CEF158] sharedAnalytics];
      [v14 logEventWithType:3301 context:&unk_2881EEEF0];

      v15 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v28 = "[VTUIEnrollTrainingViewController _startTrainingIfNecessaryWithViewCleanupBlock:cloudOperationCompletionBlock:]";
        _os_log_impl(&dword_2728BC000, v15, OS_LOG_TYPE_DEFAULT, "%s Enabling voice trigger", buf, 0xCu);
      }

      v16 = [MEMORY[0x277D7A8D0] sharedPreferences];
      [v16 setVoiceTriggerEnabled:1];

      [(VTUIEnrollTrainingViewController *)self _proceedAfterTrainingCompletionOrSkip];
      if (v7)
      {
        v7[2](v7);
      }
    }

    else
    {
      if (!self->_fetchBackgroundDataQueue)
      {
        v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
        v18 = dispatch_queue_create(0, v17);
        fetchBackgroundDataQueue = self->_fetchBackgroundDataQueue;
        self->_fetchBackgroundDataQueue = v18;
      }

      objc_initWeak(buf, self);
      v20 = self->_fetchBackgroundDataQueue;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __112__VTUIEnrollTrainingViewController__startTrainingIfNecessaryWithViewCleanupBlock_cloudOperationCompletionBlock___block_invoke;
      v22[3] = &unk_279E54668;
      objc_copyWeak(&v26, buf);
      v23 = v9;
      v24 = v6;
      v25 = v7;
      dispatch_async(v20, v22);

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __112__VTUIEnrollTrainingViewController__startTrainingIfNecessaryWithViewCleanupBlock_cloudOperationCompletionBlock___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = [WeakRetained _hasPHSCloudDataForSpokenLanguage];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__VTUIEnrollTrainingViewController__startTrainingIfNecessaryWithViewCleanupBlock_cloudOperationCompletionBlock___block_invoke_2;
  block[3] = &unk_279E54640;
  objc_copyWeak(&v8, a1 + 7);
  v9 = v3;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

void __112__VTUIEnrollTrainingViewController__startTrainingIfNecessaryWithViewCleanupBlock_cloudOperationCompletionBlock___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 64);
    v4 = MEMORY[0x277CEF0E8];
    v5 = *MEMORY[0x277CEF0E8];
    v6 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
    if (v3 == 1)
    {
      if (v6)
      {
        v13 = 136315138;
        v14 = "[VTUIEnrollTrainingViewController _startTrainingIfNecessaryWithViewCleanupBlock:cloudOperationCompletionBlock:]_block_invoke_2";
        _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Skipping training due to preexistence of PHS data in cloud", &v13, 0xCu);
      }

      v7 = [MEMORY[0x277CEF158] sharedAnalytics];
      [v7 logEventWithType:3301 context:&unk_2881EEF18];

      v8 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v9 = WeakRetained[171];
        v13 = 136315394;
        v14 = "[VTUIEnrollTrainingViewController _startTrainingIfNecessaryWithViewCleanupBlock:cloudOperationCompletionBlock:]_block_invoke";
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_2728BC000, v8, OS_LOG_TYPE_DEFAULT, "%s Enabling voice trigger upon profile sync for %@", &v13, 0x16u);
      }

      [*(a1 + 32) enableVoiceTriggerUponVoiceProfileSyncForLanguage:WeakRetained[171]];
      [WeakRetained _proceedAfterTrainingCompletionOrSkip];
    }

    else
    {
      if (v6)
      {
        v13 = 136315138;
        v14 = "[VTUIEnrollTrainingViewController _startTrainingIfNecessaryWithViewCleanupBlock:cloudOperationCompletionBlock:]_block_invoke";
        _os_log_impl(&dword_2728BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Starting training due to no PHS data locally or in cloud", &v13, 0xCu);
      }

      v10 = *(a1 + 40);
      if (v10)
      {
        (*(v10 + 16))();
      }

      [WeakRetained setDidShowVoiceTriggerPrompt:1];
      [WeakRetained _startTraining];
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_setRightBarButtonItem:(id)a3
{
  v4 = a3;
  v5 = [(VTUIEnrollTrainingViewController *)self navigationItem];
  v6 = [v5 rightBarButtonItems];
  existingRightBarButtonItems = self->_existingRightBarButtonItems;
  self->_existingRightBarButtonItems = v6;

  v8 = [(VTUIEnrollTrainingViewController *)self navigationItem];
  [v8 setRightBarButtonItem:v4];
}

- (void)_resetRightBarButtonItems
{
  v3 = [(VTUIEnrollTrainingViewController *)self navigationItem];
  [v3 setRightBarButtonItems:self->_existingRightBarButtonItems];

  existingRightBarButtonItems = self->_existingRightBarButtonItems;
  self->_existingRightBarButtonItems = 0;
}

- (VTUIEnrollTrainingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __43__VTUIEnrollTrainingViewController_prewarm__block_invoke_3_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[VTUIEnrollTrainingViewController prewarm]_block_invoke_3";
  _os_log_error_impl(&dword_2728BC000, log, OS_LOG_TYPE_ERROR, "%s Unable to prepare GMDeviceScene", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end