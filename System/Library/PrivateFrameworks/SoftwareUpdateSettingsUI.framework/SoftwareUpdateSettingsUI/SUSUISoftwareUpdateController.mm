@interface SUSUISoftwareUpdateController
+ (double)windowSafeAreasSize;
+ (id)visibleGroupSpecifiers;
+ (unint64_t)updateActionForString:(id)string;
- (BOOL)_errorIsInsufficientSpace:(id)space;
- (BOOL)_shouldHideTonightButton;
- (BOOL)clientIsSUSettings;
- (BOOL)hasAlternateUpdate;
- (BOOL)isBusy;
- (BOOL)isTopViewController;
- (BOOL)presentingStatefulDescriptorIsTargetedUpdate;
- (BOOL)presentingStatefulDescriptorPromotedAsAlternate;
- (BOOL)shouldShowAlternateUpdateCellForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (BOOL)shouldShowBetaUpdatesCellSpecifierForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (BOOL)shouldShowComingSoonSpecifierForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (BOOL)shouldShowComingSoonTip;
- (BOOL)shouldShowDeferredUpdateGroupForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (BOOL)shouldShowEnforcedUpdateForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (BOOL)shouldShowNonPromotedCellForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (BOOL)shouldShowProactiveSuggestionsPrimaryButtonSpecifierForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (BOOL)shouldShowScanGroupSpecifierForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (BOOL)shouldShowScanStatusSpecifierForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (BOOL)shouldShowTitleCellSpecifierForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (BOOL)shouldShowTitleGroupSpecifierForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (BOOL)shouldShowUpdateOptionsCellSpecifierForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (BOOL)specifier:(id)specifier isEqualToSpecifier:(id)toSpecifier;
- (BOOL)specifierArrayValue:(id)value IsEqualToSpecifierArrayValue:(id)arrayValue;
- (BOOL)specifierClassValue:(Class)value IsEqualToSpecifierClassValue:(Class)classValue;
- (BOOL)specifierDictionaryValue:(id)value IsEqualToSpecifierDictionaryValue:(id)dictionaryValue;
- (BOOL)specifierIDValue:(id)value IsEqualToSpecifierIDValue:(id)dValue;
- (BOOL)specifierSelectorValue:(SEL)value IsEqualToSpecifierSelectorValue:(SEL)selectorValue;
- (BOOL)specifierStringValue:(id)value IsEqualToSpecifierStringValue:(id)stringValue;
- (BOOL)waitingOnSUAssetDownload:(id)download;
- (SUSUISoftwareUpdateController)init;
- (double)tableView:(id)view estimatedHeightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_createGroupIndices:(id)indices;
- (id)_setInstallButtonButtonSpecifierState:(id)state forUIState:(unint64_t)iState descriptorState:(unint64_t)descriptorState;
- (id)alsoAvailableGroupHeaderString;
- (id)alternateUpdateButtonString;
- (id)alternateUpdateFooterString;
- (id)alternateUpdateSubTextString;
- (id)alternateUpdateVersionString;
- (id)autoUpdateScheduledString;
- (id)automaticDownloadStatus;
- (id)automaticInstallSystemDataFilesStatus;
- (id)automaticUpdateStatus;
- (id)automaticUpdatesCellTitle;
- (id)availableBetaPrograms;
- (id)betaUpdatesAppleID;
- (id)customCellsMapping;
- (id)enrolledBetaProgram;
- (id)installedOSVersionString;
- (id)isBetaUpdatesEnabled;
- (id)majorOSVersionString;
- (id)majorOSVersionStringForBuildVersion:(id)version;
- (id)nonPromotedPreferredUpdateButtonString;
- (id)paneTitle;
- (id)preferredUpdateVersionString;
- (id)presentingAlternateDescriptor;
- (id)presentingAlternateStatefulDescriptor;
- (id)presentingDescriptor;
- (id)presentingDescriptorError;
- (id)presentingStatefulDescriptor;
- (id)previousUserSpecifiedAutomaticUpdateStatus;
- (id)previousUserSpecifiedSecurityResponseStatus;
- (id)securityResponseStatus;
- (id)selectSpecifier:(id)specifier;
- (id)specifierForAlternateUpdateCellWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (id)specifierForAlternateUpdateGroupWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (id)specifierForAutomaticUpdatesGroupWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (id)specifierForAutomaticUpdatesWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (id)specifierForBetaUpdatesCellWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (id)specifierForComingSoonGroupWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (id)specifierForComingSoonWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (id)specifierForNonPromotedPrimaryUpdateCellWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (id)specifierForNonPromotedPrimaryUpdateGroupWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (id)specifierForProactiveSuggestionCellWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (id)specifierForProactiveSuggestionGroupWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (id)specifierForProactiveSuggestionPrimaryButtonWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (id)specifierForProactiveSuggestionSecondaryButtonWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (id)specifierForScanFooterGroupWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (id)specifierForScanHeaderGroupWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (id)specifierForScanStatusCellWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (id)specifierForScanStatusWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (id)specifierForSection:(int64_t)section;
- (id)specifierForTitleCellWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (id)specifierForTitleGroupWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (id)specifierForUpdateOptionsWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (id)specifierWithID:(id)d;
- (id)statusString;
- (id)tableCellImageForImage:(id)image;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)updateVersionString:(id)string;
- (id)updatedSpecifiersArray;
- (int)updateProgressStyleForDescriptorState:(unint64_t)state;
- (int64_t)betaUpdatesHasInstallationRestriction;
- (unint64_t)currentDescriptorState;
- (unint64_t)currentUIState;
- (unint64_t)presentingAlternateDescriptorUpgradeType;
- (unint64_t)presentingDescriptorUpgradeType;
- (unint64_t)proactiveSuggestionTypeForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (void)_setTitleCellSpecifierStatus:(id)status descriptorState:(unint64_t)state;
- (void)autoInstallCancel:(id)cancel;
- (void)autoInstallCancelPrompt:(id)prompt;
- (void)beginInstallNowOperation;
- (void)beginInstallOperation;
- (void)beginInstallTonightOperation;
- (void)beginUpdateDownloadOnlyOperation;
- (void)beginUpdateNowOperation;
- (void)beginUpdateTonightOperation;
- (void)clearInstallButton:(id)button;
- (void)clearNonPromotedPrimaryUpdateGroup:(id)group;
- (void)clearNonPromotedPrimaryUpdateHeaderGroup:(id)group;
- (void)configureScanCell:(id)cell withUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState;
- (void)dealloc;
- (void)detailedReleaseNotesDonePressed:(id)pressed;
- (void)devicePINControllerDidDismissPINPane:(id)pane;
- (void)didAcceptEnteredPIN:(id)n;
- (void)downloadAndInstall:(id)install;
- (void)downloadAndInstallTonight:(id)tonight;
- (void)downloadOnly:(id)only;
- (void)downloadingButtonForSpecifier:(id)specifier;
- (void)fixCustomCellSpecifiers;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)initStatefulUI;
- (void)initUI;
- (void)install:(id)install;
- (void)installTonight:(id)tonight;
- (void)loadView;
- (void)openStorage;
- (void)operation:(id)operation requestAgreementToTermsAndConditionsForUpdate:(id)update replyHandler:(id)handler;
- (void)operation:(id)operation requestApprovalForDownloadConstraints:(id)constraints downloadPolicy:(id)policy replyHandler:(id)handler;
- (void)operation:(id)operation requestDevicePasscodeForDescriptor:(id)descriptor replyHandler:(id)handler;
- (void)operation:(id)operation requestPurgeConfirmationForDownload:(id)download replyHandler:(id)handler;
- (void)performDeepLinkAction:(unint64_t)action;
- (void)performUpdateRescan:(id)rescan;
- (void)preferences:(id)preferences didChangePreference:(id)preference toValue:(id)value;
- (void)preferredContentSizeChanged:(id)changed;
- (void)presentConfimationSpecifier:(id)specifier;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)promoteTargetedUpdateToUserInitiatedStatus;
- (void)recordAnalyticsEvent:(id)event;
- (void)refreshBetaUpdatesButton;
- (void)refreshInstallButton;
- (void)refreshPane;
- (void)refreshupdateAutoUpdateButton;
- (void)registerForFontChanges;
- (void)registerForPreferencesChanges;
- (void)reloadCustomCells;
- (void)reloadScanSpacerCells:(id *)cells;
- (void)reloadSpecifiers:(id)specifiers animated:(BOOL)animated;
- (void)reloadUsingNewSpecifiers:(id)specifiers;
- (void)reloadUsingNewSpecifiers:(id)specifiers animated:(BOOL)animated;
- (void)requestToPromoteTargetedUpdateToUserInitiatedStatus:(id)status;
- (void)setAutomaticDownloadFromUI:(id)i forSpecifier:(id)specifier;
- (void)setAutomaticInstallSystemDataFilesFromUI:(id)i forSpecifier:(id)specifier;
- (void)setAutomaticUpdatesFromUI:(id)i forSpecifier:(id)specifier;
- (void)setAutomaticUpdatesFromUI:(id)i userSpecified:(BOOL)specified forSpecifier:(id)specifier;
- (void)setBetaProgramFromUI:(id)i forViewController:(id)controller withCompletion:(id)completion;
- (void)setBusyWithActivityStyle:(int64_t)style;
- (void)setInstallButtonDeleted:(id)deleted;
- (void)setInstallButtonDownloadAndInstall:(id)install;
- (void)setInstallButtonDownloadAndInstall:(id)install shouldRemove:(BOOL *)remove;
- (void)setInstallButtonDownloading:(id)downloading shouldRemove:(BOOL *)remove;
- (void)setInstallButtonInstallNow:(id)now;
- (void)setInstallButtonInstalledForSpecifier:(id)specifier;
- (void)setInstallButtonInstalling:(id)installing;
- (void)setInstallButtonInstallingForSpecifier:(id)specifier;
- (void)setInstallButtonPaused:(id)paused;
- (void)setInstallButtonReadyToInstall:(id)install;
- (void)setInstallButtonStalled:(id)stalled shouldRemove:(BOOL *)remove;
- (void)setSecurityResponseFromUI:(id)i forSpecifier:(id)specifier;
- (void)setSecurityResponseFromUI:(id)i userSpecified:(BOOL)specified forSpecifier:(id)specifier;
- (void)setShouldShowComingSoonTip:(BOOL)tip;
- (void)setupInstallButton:(id)button forUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState shouldRemove:(BOOL *)remove;
- (void)setupTipsObserver;
- (void)showAlsoAvailaibleSUPane;
- (void)statefulUIManager:(id)manager descriptor:(id)descriptor didTransitionFromDescriptorState:(unint64_t)state toState:(unint64_t)toState;
- (void)statefulUIManager:(id)manager didChangeProgressForDownloadOfDescriptor:(id)descriptor withDownload:(id)download;
- (void)statefulUIManager:(id)manager didFailToScanForUpdatesWithError:(id)error;
- (void)statefulUIManager:(id)manager didFinishDownloadForDescriptor:(id)descriptor withDownload:(id)download;
- (void)statefulUIManager:(id)manager didFinishScanningForUpdatesWithResults:(id)results;
- (void)statefulUIManager:(id)manager didStartInstallingUpdateWithDescriptor:(id)descriptor;
- (void)statefulUIManager:(id)manager didTransitionFromUIState:(unint64_t)state toState:(unint64_t)toState;
- (void)statefulUIManager:(id)manager requestRollbackRestartApprovalWithReplyHandler:(id)handler;
- (void)statefulUIManagerDidRefreshState:(id)state;
- (void)submitAnalyticsEvent:(id)event;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)titleCell:(id)cell learnMoreButtonTapped:(id)tapped;
- (void)unenrollFromBetaProgramsWithCompletion:(id)completion;
- (void)unscheduleTargetedUpdateAutomaticInstallation;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)waitForScanCompletionWithTimeout:(unint64_t)timeout currentAttempt:(unint64_t)attempt completionHandler:(id)handler;
- (void)willEnterForeground;
@end

@implementation SUSUISoftwareUpdateController

- (id)availableBetaPrograms
{
  manager = [(SUSUISoftwareUpdateController *)self manager];
  betaPrograms = [(SUSettingsStatefulUIManager *)manager betaPrograms];
  MEMORY[0x277D82BD8](manager);

  return betaPrograms;
}

- (void)setBetaProgramFromUI:(id)i forViewController:(id)controller withCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, i);
  v22 = 0;
  objc_storeStrong(&v22, controller);
  v21 = 0;
  objc_storeStrong(&v21, completion);
  manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
  v7 = location[0];
  v15 = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __100__SUSUISoftwareUpdateController_BetaUpdates__setBetaProgramFromUI_forViewController_withCompletion___block_invoke;
  v19 = &unk_279CBA698;
  v20 = MEMORY[0x277D82BE0](v22);
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __100__SUSUISoftwareUpdateController_BetaUpdates__setBetaProgramFromUI_forViewController_withCompletion___block_invoke_4;
  v13 = &unk_279CBA6C0;
  v14 = MEMORY[0x277D82BE0](v21);
  [(SUSettingsStatefulUIManager *)manager enrollInBetaUpdatesProgram:v7 withPurgeConfirmation:&v15 completionHandler:?];
  MEMORY[0x277D82BD8](manager);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

void __100__SUSUISoftwareUpdateController_BetaUpdates__setBetaProgramFromUI_forViewController_withCompletion___block_invoke(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v43 = 0;
  objc_storeStrong(&v43, a3);
  v42 = 0;
  objc_storeStrong(&v42, a4);
  v41 = 0;
  objc_storeStrong(&v41, a5);
  v40[1] = a1;
  v8 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"DELETE_CONFIRMATION_TITLE"];
  v11 = [v13 localizedStringForKey:? value:? table:?];
  v10 = [v43 descriptor];
  v9 = [v10 productVersion];
  v40[0] = [v8 stringWithFormat:v11, v9];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v15 = MEMORY[0x277D75110];
  v14 = v40[0];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v17 localizedStringForKey:@"DELETE_CONFIRMATION_BODY_BETA_UPDATE_ENROLLMENT" value:&stru_287B79370 table:@"Software Update"];
  v39 = [v15 alertControllerWithTitle:v14 message:? preferredStyle:?];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v19 = v39;
  v18 = MEMORY[0x277D750F8];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v22 localizedStringForKey:@"CANCEL" value:&stru_287B79370 table:@"Software Update"];
  v33[1] = MEMORY[0x277D85DD0];
  v34 = -1073741824;
  v35 = 0;
  v36 = __100__SUSUISoftwareUpdateController_BetaUpdates__setBetaProgramFromUI_forViewController_withCompletion___block_invoke_2;
  v37 = &unk_279CBA670;
  v38 = MEMORY[0x277D82BE0](v41);
  v20 = [v18 actionWithTitle:v21 style:1 handler:?];
  [v19 addAction:?];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  v24 = v39;
  v23 = MEMORY[0x277D750F8];
  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v27 localizedStringForKey:@"OK" value:&stru_287B79370 table:@"Software Update"];
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __100__SUSUISoftwareUpdateController_BetaUpdates__setBetaProgramFromUI_forViewController_withCompletion___block_invoke_3;
  v32 = &unk_279CBA670;
  v33[0] = MEMORY[0x277D82BE0](v41);
  v25 = [v23 actionWithTitle:v26 style:0 handler:?];
  [v24 addAction:?];
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  [a1[4] presentViewController:v39 animated:1 completion:0];
  objc_storeStrong(v33, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
}

void __100__SUSUISoftwareUpdateController_BetaUpdates__setBetaProgramFromUI_forViewController_withCompletion___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void __100__SUSUISoftwareUpdateController_BetaUpdates__setBetaProgramFromUI_forViewController_withCompletion___block_invoke_3(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void __100__SUSUISoftwareUpdateController_BetaUpdates__setBetaProgramFromUI_forViewController_withCompletion___block_invoke_4(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (a1[4])
  {
    (*(a1[4] + 16))(a1[4], v5 == 0);
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)unenrollFromBetaProgramsWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = selfCopy;
  analyticsUnenrolledToBetaUpdatesString = [(SUSUISoftwareUpdateController *)selfCopy analyticsUnenrolledToBetaUpdatesString];
  [(SUSUISoftwareUpdateController *)v3 recordAnalyticsEvent:?];
  MEMORY[0x277D82BD8](analyticsUnenrolledToBetaUpdatesString);
  manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
  [(SUSettingsStatefulUIManager *)manager unenrollFromBetaUpdatesWithCompletion:location[0]];
  MEMORY[0x277D82BD8](manager);
  objc_storeStrong(location, 0);
}

- (id)enrolledBetaProgram
{
  manager = [(SUSUISoftwareUpdateController *)self manager];
  enrolledBetaProgram = [(SUSettingsStatefulUIManager *)manager enrolledBetaProgram];
  MEMORY[0x277D82BD8](manager);

  return enrolledBetaProgram;
}

- (id)betaUpdatesAppleID
{
  mEMORY[0x277D4D310] = [MEMORY[0x277D4D310] sharedManager];
  seedingAppleIDUsernameForCurrentDevice = [mEMORY[0x277D4D310] seedingAppleIDUsernameForCurrentDevice];
  MEMORY[0x277D82BD8](mEMORY[0x277D4D310]);

  return seedingAppleIDUsernameForCurrentDevice;
}

- (int64_t)betaUpdatesHasInstallationRestriction
{
  if ([MEMORY[0x277D64908] isLockdownModeEnabled])
  {
    return 1;
  }

  manager = [(SUSUISoftwareUpdateController *)self manager];
  currentSeedingDevice = [(SUSettingsStatefulUIManager *)manager currentSeedingDevice];
  hasDeviceManagementRestriction = [(SDDevice *)currentSeedingDevice hasDeviceManagementRestriction];
  MEMORY[0x277D82BD8](currentSeedingDevice);
  MEMORY[0x277D82BD8](manager);
  if (hasDeviceManagementRestriction)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)setAutomaticUpdatesFromUI:(id)i forSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, i);
  v5 = 0;
  objc_storeStrong(&v5, specifier);
  [(SUSUISoftwareUpdateController *)selfCopy setAutomaticUpdatesFromUI:location[0] userSpecified:1 forSpecifier:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)setAutomaticUpdatesFromUI:(id)i userSpecified:(BOOL)specified forSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, i);
  specifiedCopy = specified;
  v11 = 0;
  objc_storeStrong(&v11, specifier);
  manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
  preferences = [(SUSettingsStatefulUIManager *)manager preferences];
  -[SUSettingsSUPreferencesManager enableAutomaticUpdateV2:](preferences, "enableAutomaticUpdateV2:", [location[0] BOOLValue]);
  MEMORY[0x277D82BD8](preferences);
  MEMORY[0x277D82BD8](manager);
  if (specifiedCopy)
  {
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    preferences2 = [(SUSettingsStatefulUIManager *)manager2 preferences];
    -[SUSettingsSUPreferencesManager enablePreviousUserSpecifiedAutomaticUpdateV2:](preferences2, "enablePreviousUserSpecifiedAutomaticUpdateV2:", [location[0] BOOLValue]);
    MEMORY[0x277D82BD8](preferences2);
    MEMORY[0x277D82BD8](manager2);
  }

  [(SUSUISoftwareUpdateController *)selfCopy refreshupdateAutoUpdateButton];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)setAutomaticDownloadFromUI:(id)i forSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, i);
  v7 = 0;
  objc_storeStrong(&v7, specifier);
  manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
  preferences = [(SUSettingsStatefulUIManager *)manager preferences];
  -[SUSettingsSUPreferencesManager enableAutomaticDownload:](preferences, "enableAutomaticDownload:", [location[0] BOOLValue]);
  MEMORY[0x277D82BD8](preferences);
  MEMORY[0x277D82BD8](manager);
  [(SUSUISoftwareUpdateController *)selfCopy refreshupdateAutoUpdateButton];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)setSecurityResponseFromUI:(id)i forSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, i);
  v5 = 0;
  objc_storeStrong(&v5, specifier);
  [(SUSUISoftwareUpdateController *)selfCopy setSecurityResponseFromUI:location[0] userSpecified:1 forSpecifier:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)setSecurityResponseFromUI:(id)i userSpecified:(BOOL)specified forSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, i);
  specifiedCopy = specified;
  v11 = 0;
  objc_storeStrong(&v11, specifier);
  manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
  preferences = [(SUSettingsStatefulUIManager *)manager preferences];
  -[SUSettingsSUPreferencesManager enableAutoInstallSecurityResponse:](preferences, "enableAutoInstallSecurityResponse:", [location[0] BOOLValue]);
  MEMORY[0x277D82BD8](preferences);
  MEMORY[0x277D82BD8](manager);
  if (specifiedCopy)
  {
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    preferences2 = [(SUSettingsStatefulUIManager *)manager2 preferences];
    -[SUSettingsSUPreferencesManager enablePreviousUserSpecifiedAutoInstallSecurityResponse:](preferences2, "enablePreviousUserSpecifiedAutoInstallSecurityResponse:", [location[0] BOOLValue]);
    MEMORY[0x277D82BD8](preferences2);
    MEMORY[0x277D82BD8](manager2);
  }

  [(SUSUISoftwareUpdateController *)selfCopy refreshupdateAutoUpdateButton];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)setAutomaticInstallSystemDataFilesFromUI:(id)i forSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, i);
  v7 = 0;
  objc_storeStrong(&v7, specifier);
  manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
  preferences = [(SUSettingsStatefulUIManager *)manager preferences];
  -[SUSettingsSUPreferencesManager enableAutoInstallSystemAndDataFiles:](preferences, "enableAutoInstallSystemAndDataFiles:", [location[0] BOOLValue]);
  MEMORY[0x277D82BD8](preferences);
  MEMORY[0x277D82BD8](manager);
  [(SUSUISoftwareUpdateController *)selfCopy refreshupdateAutoUpdateButton];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (id)automaticUpdateStatus
{
  v3 = MEMORY[0x277CCABB0];
  manager = [(SUSUISoftwareUpdateController *)self manager];
  preferences = [(SUSettingsStatefulUIManager *)manager preferences];
  v6 = [v3 numberWithBool:{-[SUSettingsSUPreferencesManager isAutomaticUpdateV2Enabled](preferences, "isAutomaticUpdateV2Enabled")}];
  MEMORY[0x277D82BD8](preferences);
  MEMORY[0x277D82BD8](manager);

  return v6;
}

- (id)previousUserSpecifiedAutomaticUpdateStatus
{
  v3 = MEMORY[0x277CCABB0];
  manager = [(SUSUISoftwareUpdateController *)self manager];
  preferences = [(SUSettingsStatefulUIManager *)manager preferences];
  v6 = [v3 numberWithBool:{-[SUSettingsSUPreferencesManager previousUserSpecifiedAutomaticUpdateV2Enabled](preferences, "previousUserSpecifiedAutomaticUpdateV2Enabled")}];
  MEMORY[0x277D82BD8](preferences);
  MEMORY[0x277D82BD8](manager);

  return v6;
}

- (id)automaticDownloadStatus
{
  v3 = MEMORY[0x277CCABB0];
  manager = [(SUSUISoftwareUpdateController *)self manager];
  preferences = [(SUSettingsStatefulUIManager *)manager preferences];
  v6 = [v3 numberWithBool:{-[SUSettingsSUPreferencesManager isAutomaticDownloadEnabled](preferences, "isAutomaticDownloadEnabled")}];
  MEMORY[0x277D82BD8](preferences);
  MEMORY[0x277D82BD8](manager);

  return v6;
}

- (id)securityResponseStatus
{
  v3 = MEMORY[0x277CCABB0];
  manager = [(SUSUISoftwareUpdateController *)self manager];
  preferences = [(SUSettingsStatefulUIManager *)manager preferences];
  v6 = [v3 numberWithBool:{-[SUSettingsSUPreferencesManager autoInstallSecurityResponse](preferences, "autoInstallSecurityResponse")}];
  MEMORY[0x277D82BD8](preferences);
  MEMORY[0x277D82BD8](manager);

  return v6;
}

- (id)previousUserSpecifiedSecurityResponseStatus
{
  v3 = MEMORY[0x277CCABB0];
  manager = [(SUSUISoftwareUpdateController *)self manager];
  preferences = [(SUSettingsStatefulUIManager *)manager preferences];
  v6 = [v3 numberWithBool:{-[SUSettingsSUPreferencesManager previousUserSpecifiedAutoInstallSecurityResponse](preferences, "previousUserSpecifiedAutoInstallSecurityResponse")}];
  MEMORY[0x277D82BD8](preferences);
  MEMORY[0x277D82BD8](manager);

  return v6;
}

- (id)automaticInstallSystemDataFilesStatus
{
  v3 = MEMORY[0x277CCABB0];
  manager = [(SUSUISoftwareUpdateController *)self manager];
  preferences = [(SUSettingsStatefulUIManager *)manager preferences];
  v6 = [v3 numberWithBool:{-[SUSettingsSUPreferencesManager autoInstallSystemAndDataFiles](preferences, "autoInstallSystemAndDataFiles")}];
  MEMORY[0x277D82BD8](preferences);
  MEMORY[0x277D82BD8](manager);

  return v6;
}

- (void)submitAnalyticsEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v3 = objc_alloc(MEMORY[0x277D64868]);
  v6 = [v3 initWithEventName:*MEMORY[0x277D64958]];
  [v6 setEventPayloadEntry:*MEMORY[0x277D64960] stringValue:location[0]];
  manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
  suClient = [(SUSettingsStatefulUIManager *)manager suClient];
  [(SUManagerClient *)suClient submitSUAnalyticsEvent:v6];
  MEMORY[0x277D82BD8](suClient);
  MEMORY[0x277D82BD8](manager);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)recordAnalyticsEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v3 = objc_alloc(MEMORY[0x277D64868]);
  v6 = [v3 initWithEventName:*MEMORY[0x277D64958]];
  [v6 setEventPayloadEntry:*MEMORY[0x277D64960] stringValue:location[0]];
  manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
  suClient = [(SUSettingsStatefulUIManager *)manager suClient];
  [(SUManagerClient *)suClient recordSUAnalyticsEvent:v6];
  MEMORY[0x277D82BD8](suClient);
  MEMORY[0x277D82BD8](manager);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (SUSUISoftwareUpdateController)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = SUSUISoftwareUpdateController;
  v9 = [(SUSUISoftwareUpdateController *)&v7 init];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    v2 = dispatch_queue_create("com.apple.softwareupdatesettings.handleURLQueue", 0);
    handleURLQueue = v9->_handleURLQueue;
    v9->_handleURLQueue = v2;
    MEMORY[0x277D82BD8](handleURLQueue);
    v6 = +[SUSUIServiceManager sharedInstance];
    [(SUSUIServiceManager *)v6 initialize];
    MEMORY[0x277D82BD8](v6);
    [(SUSUISoftwareUpdateController *)v9 initStatefulUI];
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (id)presentingStatefulDescriptor
{
  manager = [(SUSUISoftwareUpdateController *)self manager];
  preferredStatefulDescriptor = [(SUSettingsStatefulUIManager *)manager preferredStatefulDescriptor];
  MEMORY[0x277D82BD8](manager);

  return preferredStatefulDescriptor;
}

- (id)presentingDescriptor
{
  presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptor];
  descriptor = [presentingStatefulDescriptor descriptor];
  MEMORY[0x277D82BD8](presentingStatefulDescriptor);

  return descriptor;
}

- (id)presentingDescriptorError
{
  presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptor];
  updateDownloadError = [presentingStatefulDescriptor updateDownloadError];
  v8 = 0;
  v6 = 0;
  if (updateDownloadError)
  {
    v2 = MEMORY[0x277D82BE0](updateDownloadError);
  }

  else
  {
    manager = [(SUSUISoftwareUpdateController *)self manager];
    v8 = 1;
    scanError = [(SUSettingsStatefulUIManager *)manager scanError];
    v6 = 1;
    v2 = MEMORY[0x277D82BE0](scanError);
  }

  v11 = v2;
  if (v6)
  {
    MEMORY[0x277D82BD8](scanError);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](manager);
  }

  MEMORY[0x277D82BD8](updateDownloadError);
  MEMORY[0x277D82BD8](presentingStatefulDescriptor);

  return v11;
}

- (id)presentingAlternateStatefulDescriptor
{
  manager = [(SUSUISoftwareUpdateController *)self manager];
  alternateStatefulDescriptor = [(SUSettingsStatefulUIManager *)manager alternateStatefulDescriptor];
  MEMORY[0x277D82BD8](manager);

  return alternateStatefulDescriptor;
}

- (id)presentingAlternateDescriptor
{
  presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)self presentingAlternateStatefulDescriptor];
  descriptor = [presentingAlternateStatefulDescriptor descriptor];
  MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);

  return descriptor;
}

- (BOOL)presentingStatefulDescriptorPromotedAsAlternate
{
  manager = [(SUSUISoftwareUpdateController *)self manager];
  v5 = 0;
  v4 = 0;
  if ([(SUSettingsStatefulUIManager *)manager isPreferredUpdatePromotedAsAlternate])
  {
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptor];
    v5 = 1;
    v4 = [presentingStatefulDescriptor currentState] == 1;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
  }

  MEMORY[0x277D82BD8](manager);
  return v4;
}

- (BOOL)presentingStatefulDescriptorIsTargetedUpdate
{
  manager = [(SUSUISoftwareUpdateController *)self manager];
  presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptor];
  v5 = [(SUSettingsStatefulUIManager *)manager doesTargetedUpdateMatchDescriptor:?];
  MEMORY[0x277D82BD8](presentingStatefulDescriptor);
  MEMORY[0x277D82BD8](manager);
  return v5;
}

- (unint64_t)presentingDescriptorUpgradeType
{
  presentingDescriptor = [(SUSUISoftwareUpdateController *)self presentingDescriptor];
  v5 = 0;
  if (presentingDescriptor)
  {
    presentingDescriptor2 = [(SUSUISoftwareUpdateController *)self presentingDescriptor];
    v5 = 1;
    upgradeType = [presentingDescriptor2 upgradeType];
  }

  else
  {
    upgradeType = 0;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](presentingDescriptor2);
  }

  MEMORY[0x277D82BD8](presentingDescriptor);
  return upgradeType;
}

- (unint64_t)presentingAlternateDescriptorUpgradeType
{
  presentingAlternateDescriptor = [(SUSUISoftwareUpdateController *)self presentingAlternateDescriptor];
  v5 = 0;
  if (presentingAlternateDescriptor)
  {
    presentingAlternateDescriptor2 = [(SUSUISoftwareUpdateController *)self presentingAlternateDescriptor];
    v5 = 1;
    upgradeType = [presentingAlternateDescriptor2 upgradeType];
  }

  else
  {
    upgradeType = 0;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](presentingAlternateDescriptor2);
  }

  MEMORY[0x277D82BD8](presentingAlternateDescriptor);
  return upgradeType;
}

- (void)dealloc
{
  selfCopy = self;
  v8 = a2;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:selfCopy name:*MEMORY[0x277D76758] object:0];
  MEMORY[0x277D82BD8](defaultCenter);
  manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
  preferences = [(SUSettingsStatefulUIManager *)manager preferences];
  [(SUSettingsSUPreferencesManager *)preferences removeObserver:selfCopy];
  MEMORY[0x277D82BD8](preferences);
  MEMORY[0x277D82BD8](manager);
  presentedViewController = [(SUSUISoftwareUpdateController *)selfCopy presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](presentedViewController);
  if (isKindOfClass)
  {
    [(SUSUISoftwareUpdateController *)selfCopy dismissViewControllerAnimated:0 completion:0];
  }

  v7.receiver = selfCopy;
  v7.super_class = SUSUISoftwareUpdateController;
  [(SUSUISoftwareUpdateController *)&v7 dealloc];
}

- (BOOL)hasAlternateUpdate
{
  presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)self presentingAlternateStatefulDescriptor];
  v4 = presentingAlternateStatefulDescriptor != 0;
  MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
  return v4;
}

- (id)paneTitle
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SOFTWARE_UPDATE" value:&stru_287B79370 table:@"Software Update"];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)statusString
{
  v100 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v96[1] = a2;
  if ([(SUSUISoftwareUpdateController *)self currentUIState]== 4)
  {
    currentDescriptorState = [(SUSUISoftwareUpdateController *)selfCopy currentDescriptorState];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    v29 = [(SUSettingsStatefulUIManager *)manager doesTargetedUpdateMatchDescriptor:?];
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](manager);
    v92 = v29;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    progress = [(SUDownload *)currentDownload progress];
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager2);
    phase = [progress phase];
    [progress percentComplete];
    v89 = v2;
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager3 currentDownload];
    descriptor = [(SUDownload *)currentDownload2 descriptor];
    isSplatOnly = [(SUDescriptor *)descriptor isSplatOnly];
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager3);
    manager4 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    scanError = [(SUSettingsStatefulUIManager *)manager4 scanError];
    v87 = 0;
    v85 = 0;
    v83 = 0;
    v81 = 0;
    v79 = 0;
    v77 = 0;
    v75 = 0;
    v38 = 1;
    if (!scanError)
    {
      presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
      v87 = 1;
      updateDownloadError = [presentingStatefulDescriptor2 updateDownloadError];
      v85 = 1;
      LOBYTE(v26) = 0;
      if (updateDownloadError)
      {
        manager5 = [(SUSUISoftwareUpdateController *)selfCopy manager];
        v83 = 1;
        errorContextProvider = [(SUSettingsStatefulUIManager *)manager5 errorContextProvider];
        v81 = 1;
        presentingStatefulDescriptor3 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
        v79 = 1;
        updateDownloadError2 = [presentingStatefulDescriptor3 updateDownloadError];
        v77 = 1;
        presentingStatefulDescriptor4 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
        v75 = 1;
        v26 = ![(SUSettingsStatefulErrorContextProvider *)errorContextProvider shouldIgnoreUpdateError:updateDownloadError2 withStatefulDescriptor:?];
      }

      v38 = v26;
    }

    if (v75)
    {
      MEMORY[0x277D82BD8](presentingStatefulDescriptor4);
    }

    if (v77)
    {
      MEMORY[0x277D82BD8](updateDownloadError2);
    }

    if (v79)
    {
      MEMORY[0x277D82BD8](presentingStatefulDescriptor3);
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](errorContextProvider);
    }

    if (v83)
    {
      MEMORY[0x277D82BD8](manager5);
    }

    if (v85)
    {
      MEMORY[0x277D82BD8](updateDownloadError);
    }

    if (v87)
    {
      MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    }

    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](manager4);
    if (v38)
    {
      v73 = 0;
      v71 = 0;
      v69 = 0;
      v67 = 0;
      if (v92 && currentDescriptorState >= 4)
      {
        v74 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v73 = 1;
        v72 = [v74 localizedStringForKey:@"UNABLE_TO_INSTALL" value:&stru_287B79370 table:@"Software Update"];
        v71 = 1;
        v3 = MEMORY[0x277D82BE0](v72);
      }

      else
      {
        v70 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v69 = 1;
        v68 = [v70 localizedStringForKey:@"UNABLE_TO_DOWNLOAD" value:&stru_287B79370 table:@"Software Update"];
        v67 = 1;
        v3 = MEMORY[0x277D82BE0](v68);
      }

      v98 = v3;
      if (v67)
      {
        MEMORY[0x277D82BD8](v68);
      }

      if (v69)
      {
        MEMORY[0x277D82BD8](v70);
      }

      if (v71)
      {
        MEMORY[0x277D82BD8](v72);
      }

      if (v73)
      {
        MEMORY[0x277D82BD8](v74);
      }
    }

    else
    {
      switch(currentDescriptorState)
      {
        case 1uLL:
          manager6 = [(SUSUISoftwareUpdateController *)selfCopy manager];
          isClearingSpaceForDownload = [(SUSettingsStatefulUIManager *)manager6 isClearingSpaceForDownload];
          MEMORY[0x277D82BD8](manager6);
          if (isClearingSpaceForDownload)
          {
            v65 = 0;
            v63 = 0;
            v61 = 0;
            v59 = 0;
            if (isSplatOnly)
            {
              v66 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v65 = 1;
              v4 = [v66 localizedStringForKey:@"RSR_REQUESTED" value:&stru_287B79370 table:@"Software Update"];
              v64 = v4;
              v63 = 1;
            }

            else
            {
              v62 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v61 = 1;
              v4 = [v62 localizedStringForKey:@"UPDATE_REQUESTED" value:&stru_287B79370 table:@"Software Update"];
              v60 = v4;
              v59 = 1;
            }

            v98 = MEMORY[0x277D82BE0](v4);
            if (v59)
            {
              MEMORY[0x277D82BD8](v60);
            }

            if (v61)
            {
              MEMORY[0x277D82BD8](v62);
            }

            if (v63)
            {
              MEMORY[0x277D82BD8](v64);
            }

            if (v65)
            {
              MEMORY[0x277D82BD8](v66);
            }
          }

          else
          {
            v22 = MEMORY[0x277CCA8E8];
            presentingDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptor];
            v98 = [v22 stringFromByteCount:objc_msgSend(presentingDescriptor countStyle:{"downloadSize"), 2}];
            MEMORY[0x277D82BD8](presentingDescriptor);
          }

          break;
        case 2uLL:
          if (v92 || (PSIsRunningInAssistant() & 1) != 0)
          {
            v20 = getkSUDownloadPhasePreparingForInstallation();
            v21 = [phase isEqualToString:?];
            MEMORY[0x277D82BD8](v20);
            if (v21)
            {
              v57 = 0;
              v55 = 0;
              v53 = 0;
              v51 = 0;
              if (isSplatOnly)
              {
                v58 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v57 = 1;
                v56 = [v58 localizedStringForKey:@"PREPARING_RSR" value:&stru_287B79370 table:@"Software Update"];
                v55 = 1;
                v5 = MEMORY[0x277D82BE0](v56);
              }

              else
              {
                v54 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v53 = 1;
                v52 = [v54 localizedStringForKey:@"PREPARING_UPDATE" value:&stru_287B79370 table:@"Software Update"];
                v51 = 1;
                v5 = MEMORY[0x277D82BE0](v52);
              }

              v98 = v5;
              if (v51)
              {
                MEMORY[0x277D82BD8](v52);
              }

              if (v53)
              {
                MEMORY[0x277D82BD8](v54);
              }

              if (v55)
              {
                MEMORY[0x277D82BD8](v56);
              }

              if (v57)
              {
                MEMORY[0x277D82BD8](v58);
              }
            }

            else if (v89 >= 0.005)
            {
              manager7 = [(SUSUISoftwareUpdateController *)selfCopy manager];
              currentDownload3 = [(SUSettingsStatefulUIManager *)manager7 currentDownload];
              v98 = [SUSettingsStatefulUIAdditions stringWithTimeRemainingForDownload:?];
              MEMORY[0x277D82BD8](currentDownload3);
              MEMORY[0x277D82BD8](manager7);
            }

            else
            {
              v49 = 0;
              v47 = 0;
              v45 = 0;
              v43 = 0;
              if (isSplatOnly)
              {
                v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v49 = 1;
                v48 = [v50 localizedStringForKey:@"RSR_REQUESTED" value:&stru_287B79370 table:@"Software Update"];
                v47 = 1;
                v6 = MEMORY[0x277D82BE0](v48);
              }

              else
              {
                v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v45 = 1;
                v44 = [v46 localizedStringForKey:@"UPDATE_REQUESTED" value:&stru_287B79370 table:@"Software Update"];
                v43 = 1;
                v6 = MEMORY[0x277D82BE0](v44);
              }

              v98 = v6;
              if (v43)
              {
                MEMORY[0x277D82BD8](v44);
              }

              if (v45)
              {
                MEMORY[0x277D82BD8](v46);
              }

              if (v47)
              {
                MEMORY[0x277D82BD8](v48);
              }

              if (v49)
              {
                MEMORY[0x277D82BD8](v50);
              }
            }
          }

          else
          {
            v16 = MEMORY[0x277CCA8E8];
            presentingDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptor];
            v98 = [v16 stringFromByteCount:objc_msgSend(presentingDescriptor2 countStyle:{"downloadSize"), 2}];
            MEMORY[0x277D82BD8](presentingDescriptor2);
          }

          break;
        case 3uLL:
          if (v92 || (PSIsRunningInAssistant() & 1) != 0)
          {
            v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v98 = [v15 localizedStringForKey:@"PAUSED" value:&stru_287B79370 table:@"Software Update"];
            MEMORY[0x277D82BD8](v15);
          }

          else
          {
            v13 = MEMORY[0x277CCA8E8];
            presentingDescriptor3 = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptor];
            v98 = [v13 stringFromByteCount:objc_msgSend(presentingDescriptor3 countStyle:{"downloadSize"), 2}];
            MEMORY[0x277D82BD8](presentingDescriptor3);
          }

          break;
        case 4uLL:
          if (v92 || (PSIsRunningInAssistant() & 1) != 0)
          {
            v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v98 = [v12 localizedStringForKey:@"DOWNLOADED" value:&stru_287B79370 table:@"Software Update"];
            MEMORY[0x277D82BD8](v12);
          }

          else
          {
            v10 = MEMORY[0x277CCA8E8];
            presentingDescriptor4 = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptor];
            v98 = [v10 stringFromByteCount:objc_msgSend(presentingDescriptor4 countStyle:{"downloadSize"), 2}];
            MEMORY[0x277D82BD8](presentingDescriptor4);
          }

          break;
        case 5uLL:
          if (v92 || (PSIsRunningInAssistant() & 1) != 0)
          {
            v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v98 = [v9 localizedStringForKey:@"INSTALLING" value:&stru_287B79370 table:@"Software Update"];
            MEMORY[0x277D82BD8](v9);
          }

          else
          {
            v98 = 0;
          }

          break;
        default:
          v98 = 0;
          break;
      }
    }

    objc_storeStrong(&phase, 0);
    objc_storeStrong(&progress, 0);
  }

  else
  {
    v42 = SUSettingsSharedLogger();
    v96[0] = [v42 oslog];
    MEMORY[0x277D82BD8](v42);
    v95 = 16;
    if (os_log_type_enabled(v96[0], OS_LOG_TYPE_ERROR))
    {
      log = v96[0];
      type = v95;
      v41 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
      v94 = MEMORY[0x277D82BE0](v41);
      __os_log_helper_16_2_2_8_64_8_0(v99, v94, [(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
      _os_log_error_impl(&dword_26AC94000, log, type, "Could not create a status string for the UI state: %@ (%ld). Must be UpdatesAvailable.", v99, 0x16u);
      MEMORY[0x277D82BD8](v41);
      objc_storeStrong(&v94, 0);
    }

    objc_storeStrong(v96, 0);
    v98 = MEMORY[0x277D82BE0](&stru_287B79370);
  }

  *MEMORY[0x277D85DE8];
  v7 = v98;

  return v7;
}

+ (unint64_t)updateActionForString:(id)string
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  if ([location[0] isEqualToString:@"SUSUIUpdateNowAction"])
  {
    v5 = 1;
  }

  else if ([location[0] isEqualToString:@"SUSUIUpdateTonightAction"])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  return v5;
}

- (unint64_t)currentUIState
{
  manager = [(SUSUISoftwareUpdateController *)self manager];
  currentState = [(SUSettingsStatefulUIManager *)manager currentState];
  MEMORY[0x277D82BD8](manager);
  return currentState;
}

- (unint64_t)currentDescriptorState
{
  presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptor];
  v5 = 0;
  if (presentingStatefulDescriptor)
  {
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptor];
    v5 = 1;
    currentState = [presentingStatefulDescriptor2 currentState];
  }

  else
  {
    currentState = 0;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
  }

  MEMORY[0x277D82BD8](presentingStatefulDescriptor);
  return currentState;
}

- (void)initStatefulUI
{
  selfCopy = self;
  v19 = a2;
  v3 = +[SUSUIServiceManager sharedInstance];
  v18 = [(SUSUIServiceManager *)v3 classForService:objc_opt_class()];
  MEMORY[0x277D82BD8](v3);
  v4 = +[SUSUIServiceManager sharedInstance];
  v17 = [(SUSUIServiceManager *)v4 classForService:objc_opt_class()];
  MEMORY[0x277D82BD8](v4);
  v16 = [[v18 alloc] initWithDelegate:0 queue:0 clientType:1];
  v6 = [SUSettingsStatefulUIManager alloc];
  v5 = v16;
  sharedInstance = [(objc_class *)v17 sharedInstance];
  v7 = [SUSettingsStatefulUIManager initWithManagerClient:v6 betaManager:"initWithManagerClient:betaManager:preferences:options:" preferences:v5 options:0];
  [(SUSUISoftwareUpdateController *)selfCopy setManager:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](sharedInstance);
  v9 = selfCopy;
  manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
  [(SUSettingsStatefulUIManager *)manager setDelegate:v9];
  MEMORY[0x277D82BD8](manager);
  v11 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v13 = v11;
  manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
  [(SUSettingsStatefulUIManager *)manager2 setDelegateCallbackQueue:v13];
  MEMORY[0x277D82BD8](manager2);
  MEMORY[0x277D82BD8](v13);
  v15 = +[SUSUITestAutomationManager sharedManager];
  manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
  [v15 addResponderDelegate:? forServiceType:?];
  MEMORY[0x277D82BD8](manager3);
  MEMORY[0x277D82BD8](v15);
  objc_storeStrong(&v16, 0);
}

- (void)statefulUIManager:(id)manager requestRollbackRestartApprovalWithReplyHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v31 = 0;
  objc_storeStrong(&v31, handler);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v30 = [v5 localizedStringForKey:@"ROLLBACK_APPLIED_ALERT_BODY" value:? table:?];
  MEMORY[0x277D82BD8](v5);
  v6 = MEMORY[0x277D75110];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v8 localizedStringForKey:@"ROLLBACK_APPLIED_ALERT_TITLE" value:&stru_287B79370 table:@"Software Update"];
  v29 = [v6 alertControllerWithTitle:? message:? preferredStyle:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v10 = v29;
  v9 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v13 localizedStringForKey:@"CANCEL" value:&stru_287B79370 table:@"Software Update"];
  v23[1] = MEMORY[0x277D85DD0];
  v24 = -1073741824;
  v25 = 0;
  v26 = __110__SUSUISoftwareUpdateController_StatefulUI__statefulUIManager_requestRollbackRestartApprovalWithReplyHandler___block_invoke;
  v27 = &unk_279CBA670;
  v28 = MEMORY[0x277D82BE0](v31);
  v11 = [v9 actionWithTitle:v12 style:1 handler:?];
  [v10 addAction:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v15 = v29;
  v14 = MEMORY[0x277D750F8];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v18 localizedStringForKey:@"ROLLBACK_APPLIED_ALERT_BUTTON_REBOOT_NOW" value:&stru_287B79370 table:@"Software Update"];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __110__SUSUISoftwareUpdateController_StatefulUI__statefulUIManager_requestRollbackRestartApprovalWithReplyHandler___block_invoke_2;
  v22 = &unk_279CBA670;
  v23[0] = MEMORY[0x277D82BE0](v31);
  v16 = [v14 actionWithTitle:v17 style:0 handler:?];
  [v15 addAction:?];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  [(SUSUISoftwareUpdateController *)selfCopy presentViewController:v29 animated:1 completion:0];
  objc_storeStrong(v23, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

void __110__SUSUISoftwareUpdateController_StatefulUI__statefulUIManager_requestRollbackRestartApprovalWithReplyHandler___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void __110__SUSUISoftwareUpdateController_StatefulUI__statefulUIManager_requestRollbackRestartApprovalWithReplyHandler___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)statefulUIManager:(id)manager didTransitionFromUIState:(unint64_t)state toState:(unint64_t)toState
{
  stateCopy = state;
  toStateCopy = toState;
  v52 = "[SUSUISoftwareUpdateController(StatefulUI) statefulUIManager:didTransitionFromUIState:toState:]";
  v68 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v64 = stateCopy;
  v63 = toStateCopy;
  v62 = _SUSUILoggingFacility();
  v61 = 0;
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    log = v62;
    *type = v61;
    v5 = objc_opt_class();
    v45 = NSStringFromClass(v5);
    v23 = MEMORY[0x277D82BE0](v45);
    v50 = &v60;
    v60 = v23;
    v24 = selfCopy;
    v44 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v25 = MEMORY[0x277D82BE0](v44);
    v49 = &v59;
    v59 = v25;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v19 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v48 = &v58;
    v58 = v19;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v7 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v7 = "NO";
    }

    v20 = v7;
    v32 = SUSettingsUIStateToString(v64);
    v21 = MEMORY[0x277D82BE0](v32);
    v47 = &v57;
    v57 = v21;
    v22 = v64;
    v31 = SUSettingsUIStateToString(v63);
    v46 = &v56;
    v56 = MEMORY[0x277D82BE0](v31);
    v27 = &v8;
    buf = v67;
    __os_log_helper_16_2_16_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_64_8_0_8_64_8_0(v67, v52, v23, v24, v25, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v19, currentDownload2, v20, v21, v22, v56, v63);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nUI State Transition: %@ (%ld) -> %@ (%ld)", buf, 0xA2u);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    obj = 0;
    objc_storeStrong(v46, 0);
    objc_storeStrong(v47, obj);
    objc_storeStrong(v48, obj);
    objc_storeStrong(v49, obj);
    objc_storeStrong(v50, obj);
  }

  objc_storeStrong(&v62, 0);
  if ([(SUSUISoftwareUpdateController *)selfCopy supportsPullToRefresh])
  {
    table = [(SUSUISoftwareUpdateController *)selfCopy table];
    refreshControl = [table refreshControl];
    v18 = 0;
    if (!refreshControl)
    {
      v15 = 1;
      if (v63 != 3)
      {
        v15 = v63 == 4;
      }

      v18 = v15;
    }

    v14 = v18;
    MEMORY[0x277D82BD8](refreshControl);
    MEMORY[0x277D82BD8](table);
    if (v14)
    {
      table2 = [(SUSUISoftwareUpdateController *)selfCopy table];
      refreshControl2 = [(SUSUISoftwareUpdateController *)selfCopy refreshControl];
      [table2 setRefreshControl:?];
      MEMORY[0x277D82BD8](refreshControl2);
      MEMORY[0x277D82BD8](table2);
    }
  }

  [(SUSUISoftwareUpdateController *)selfCopy _setNeedsUpdateContentUnavailableConfiguration];
  if (v64 || (v11 = 1, v63 != 1))
  {
    if (v64 != 1 || (v11 = 1, v63 != 1))
    {
      if (v64 != 1 || (v11 = 1, v63 != 2))
      {
        v11 = 1;
        if (v64 != v63)
        {
          v11 = v64 == 2;
        }
      }
    }
  }

  v55 = v11;
  v9 = selfCopy;
  updatedSpecifiersArray = [(SUSUISoftwareUpdateController *)selfCopy updatedSpecifiersArray];
  [SUSUISoftwareUpdateController reloadUsingNewSpecifiers:v9 animated:"reloadUsingNewSpecifiers:animated:"];
  MEMORY[0x277D82BD8](updatedSpecifiersArray);
  [(SUSUISoftwareUpdateController *)selfCopy reloadCustomCells];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)statefulUIManager:(id)manager descriptor:(id)descriptor didTransitionFromDescriptorState:(unint64_t)state toState:(unint64_t)toState
{
  obj = descriptor;
  stateCopy = state;
  toStateCopy = toState;
  v49 = "[SUSUISoftwareUpdateController(StatefulUI) statefulUIManager:descriptor:didTransitionFromDescriptorState:toState:]";
  v67 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v63 = 0;
  objc_storeStrong(&v63, obj);
  v62 = stateCopy;
  v61 = toStateCopy;
  oslog = _SUSUILoggingFacility();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v23 = type;
    v6 = objc_opt_class();
    v41 = NSStringFromClass(v6);
    v17 = MEMORY[0x277D82BE0](v41);
    v47 = &v58;
    v58 = v17;
    v18 = selfCopy;
    v40 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v19 = MEMORY[0x277D82BE0](v40);
    v46 = &v57;
    v57 = v19;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    v37 = presentingAlternateStatefulDescriptor;
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v12 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v45 = &v56;
    v56 = v12;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v9 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v9 = "NO";
    }

    v13 = v9;
    humanReadableUpdateName2 = [v63 humanReadableUpdateName];
    v14 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v44 = &v55;
    v55 = v14;
    descriptor2 = [v63 descriptor];
    v26 = SUSettingsDescriptorStateToString(v62);
    v15 = MEMORY[0x277D82BE0](v26);
    v43 = &v54;
    v54 = v15;
    v16 = v62;
    v25 = SUSettingsDescriptorStateToString(v61);
    v42 = &v53;
    v53 = MEMORY[0x277D82BE0](v25);
    v21 = &v10;
    buf = v66;
    __os_log_helper_16_2_18_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_66_8_0_8_64_8_0_8_64_8_0(v66, v49, v17, v18, v19, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v12, currentDownload2, v13, v14, descriptor2, v15, v16, v53, v61);
    _os_log_impl(&dword_26AC94000, log, v23[0], "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nDescriptor %{public}@ (%p) State Transition: %@ (%ld) -> %@ (%ld)", buf, 0xB6u);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    v48 = 0;
    objc_storeStrong(v42, 0);
    objc_storeStrong(v43, v48);
    objc_storeStrong(v44, v48);
    objc_storeStrong(v45, v48);
    objc_storeStrong(v46, v48);
    objc_storeStrong(v47, v48);
  }

  v11 = 0;
  objc_storeStrong(&oslog, 0);
  [(SUSUISoftwareUpdateController *)selfCopy refreshPane];
  objc_storeStrong(&v63, v11);
  objc_storeStrong(location, v11);
  *MEMORY[0x277D85DE8];
}

- (void)statefulUIManager:(id)manager didFinishScanningForUpdatesWithResults:(id)results
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v9 = 0;
  objc_storeStrong(&v9, results);
  v7 = 0;
  v6 = 0;
  if ([(SUSUISoftwareUpdateController *)selfCopy supportsPullToRefresh])
  {
    refreshControl = [(SUSUISoftwareUpdateController *)selfCopy refreshControl];
    v7 = 1;
    v6 = refreshControl != 0;
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](refreshControl);
  }

  if (v6)
  {
    refreshControl2 = [(SUSUISoftwareUpdateController *)selfCopy refreshControl];
    [(UIRefreshControl *)refreshControl2 endRefreshing];
    MEMORY[0x277D82BD8](refreshControl2);
  }

  [(SUSUISoftwareUpdateController *)selfCopy refreshPane];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)statefulUIManager:(id)manager didFailToScanForUpdatesWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v9 = 0;
  objc_storeStrong(&v9, error);
  v7 = 0;
  v6 = 0;
  if ([(SUSUISoftwareUpdateController *)selfCopy supportsPullToRefresh])
  {
    refreshControl = [(SUSUISoftwareUpdateController *)selfCopy refreshControl];
    v7 = 1;
    v6 = refreshControl != 0;
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](refreshControl);
  }

  if (v6)
  {
    refreshControl2 = [(SUSUISoftwareUpdateController *)selfCopy refreshControl];
    [(UIRefreshControl *)refreshControl2 endRefreshing];
    MEMORY[0x277D82BD8](refreshControl2);
  }

  [(SUSUISoftwareUpdateController *)selfCopy refreshPane];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)statefulUIManager:(id)manager didChangeProgressForDownloadOfDescriptor:(id)descriptor withDownload:(id)download
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v8 = 0;
  objc_storeStrong(&v8, descriptor);
  v7 = 0;
  objc_storeStrong(&v7, download);
  if ([v8 currentState] >= 2)
  {
    [(SUSUISoftwareUpdateController *)selfCopy refreshPane];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)statefulUIManager:(id)manager didFinishDownloadForDescriptor:(id)descriptor withDownload:(id)download
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v8 = 0;
  objc_storeStrong(&v8, descriptor);
  v7 = 0;
  objc_storeStrong(&v7, download);
  [(SUSUISoftwareUpdateController *)selfCopy refreshPane];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)statefulUIManager:(id)manager didStartInstallingUpdateWithDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v5 = 0;
  objc_storeStrong(&v5, descriptor);
  [(SUSUISoftwareUpdateController *)selfCopy refreshPane];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)statefulUIManagerDidRefreshState:(id)state
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, state);
  v30 = _SUSUILoggingFacility();
  v29 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    log = v30;
    type = v29;
    v3 = objc_opt_class();
    v25 = NSStringFromClass(v3);
    v7 = MEMORY[0x277D82BE0](v25);
    v28 = v7;
    v8 = selfCopy;
    v24 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v9 = MEMORY[0x277D82BE0](v24);
    v27 = v9;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v6 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v26 = v6;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v5 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v5 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v33, "[SUSUISoftwareUpdateController(StatefulUI) statefulUIManagerDidRefreshState:]", v7, v8, v9, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v6, currentDownload2, v5);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nRefresh request", v33, 0x7Au);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
  }

  objc_storeStrong(&v30, 0);
  [(SUSUISoftwareUpdateController *)selfCopy refreshPane];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)operation:(id)operation requestPurgeConfirmationForDownload:(id)download replyHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v49 = 0;
  objc_storeStrong(&v49, download);
  v48 = 0;
  objc_storeStrong(&v48, handler);
  v47 = 0;
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v46 = [v21 localizedStringForKey:@"CANCEL" value:? table:?];
  MEMORY[0x277D82BD8](v21);
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v45 = [v22 localizedStringForKey:@"OK" value:&stru_287B79370 table:@"Software Update"];
  MEMORY[0x277D82BD8](v22);
  v23 = MEMORY[0x277CCACA8];
  v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v27 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"DELETE_CONFIRMATION_TITLE"];
  v26 = [v28 localizedStringForKey:? value:? table:?];
  descriptor = [v49 descriptor];
  productVersion = [descriptor productVersion];
  v44 = [v23 stringWithFormat:v26, productVersion];
  MEMORY[0x277D82BD8](productVersion);
  MEMORY[0x277D82BD8](descriptor);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  progress = [v49 progress];
  isDone = [progress isDone];
  MEMORY[0x277D82BD8](progress);
  if (isDone)
  {
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v18 localizedStringForKey:@"DELETE_CONFIRMATION_BODY_DOWNLOADED" value:&stru_287B79370 table:@"Software Update"];
    v6 = v47;
    v47 = v5;
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v18);
  }

  else
  {
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v17 localizedStringForKey:@"DELETE_CONFIRMATION_BODY_DOWNLOADING" value:&stru_287B79370 table:@"Software Update"];
    v8 = v47;
    v47 = v7;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v17);
  }

  v43 = [MEMORY[0x277D75110] alertControllerWithTitle:v44 message:v47 preferredStyle:?];
  v11 = v43;
  v10 = MEMORY[0x277D750F8];
  v9 = v46;
  v37 = MEMORY[0x277D85DD0];
  v38 = -1073741824;
  v39 = 0;
  v40 = __104__SUSUISoftwareUpdateController_StatefulUI__operation_requestPurgeConfirmationForDownload_replyHandler___block_invoke;
  v41 = &unk_279CBA670;
  v42 = MEMORY[0x277D82BE0](v48);
  v12 = [v10 actionWithTitle:v9 style:1 handler:&v37];
  [v11 addAction:?];
  MEMORY[0x277D82BD8](v12);
  v15 = v43;
  v14 = MEMORY[0x277D750F8];
  v13 = v45;
  v31 = MEMORY[0x277D85DD0];
  v32 = -1073741824;
  v33 = 0;
  v34 = __104__SUSUISoftwareUpdateController_StatefulUI__operation_requestPurgeConfirmationForDownload_replyHandler___block_invoke_2;
  v35 = &unk_279CBA670;
  v36 = MEMORY[0x277D82BE0](v48);
  v16 = [v14 actionWithTitle:v13 style:0 handler:&v31];
  [v15 addAction:?];
  MEMORY[0x277D82BD8](v16);
  [(SUSUISoftwareUpdateController *)selfCopy presentViewController:v43 animated:1 completion:?];
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(location, 0);
}

void __104__SUSUISoftwareUpdateController_StatefulUI__operation_requestPurgeConfirmationForDownload_replyHandler___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void __104__SUSUISoftwareUpdateController_StatefulUI__operation_requestPurgeConfirmationForDownload_replyHandler___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)operation:(id)operation requestDevicePasscodeForDescriptor:(id)descriptor replyHandler:(id)handler
{
  v59[5] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v54 = 0;
  objc_storeStrong(&v54, descriptor);
  v53 = 0;
  objc_storeStrong(&v53, handler);
  v59[0] = @"SUSpecifierUpdateOptionsCell";
  v59[1] = @"SUProactiveSuggestionCell";
  v59[2] = @"SUNonPromotedUpdateButton";
  v59[3] = @"SUAlternateUpdateButton";
  v59[4] = @"SUAutomaticUpdateButton";
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:5];
  v51 = 0;
  memset(__b, 0, sizeof(__b));
  v41 = MEMORY[0x277D82BE0](v52);
  v42 = [v41 countByEnumeratingWithState:__b objects:v58 count:16];
  if (v42)
  {
    v36 = *__b[2];
    v37 = 0;
    v38 = v42;
    while (1)
    {
      v35 = v37;
      if (*__b[2] != v36)
      {
        objc_enumerationMutation(v41);
      }

      v50 = *(__b[1] + 8 * v37);
      v5 = [(SUSUISoftwareUpdateController *)selfCopy specifierWithID:v50];
      v6 = v51;
      v51 = v5;
      MEMORY[0x277D82BD8](v6);
      if (v51)
      {
        break;
      }

      ++v37;
      if (v35 + 1 >= v38)
      {
        v37 = 0;
        v38 = [v41 countByEnumeratingWithState:__b objects:v58 count:16];
        if (!v38)
        {
          goto LABEL_9;
        }
      }
    }

    v48 = 2;
  }

  else
  {
LABEL_9:
    v48 = 0;
  }

  MEMORY[0x277D82BD8](v41);
  oslog = _SUSUILoggingFacility();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v21 = type;
    v7 = objc_opt_class();
    v34 = NSStringFromClass(v7);
    v16 = MEMORY[0x277D82BE0](v34);
    v45 = v16;
    v17 = selfCopy;
    v33 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v18 = MEMORY[0x277D82BE0](v33);
    v44 = v18;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v15 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v43 = v15;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    if ([(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall])
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    __os_log_helper_16_2_14_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_66_8_0(v57, "[SUSUISoftwareUpdateController(StatefulUI) operation:requestDevicePasscodeForDescriptor:replyHandler:]", v16, v17, v18, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v15, currentDownload2, v8, v51, v51);
    _os_log_impl(&dword_26AC94000, log, v21, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nShowing PIN sheet using specifier: %{public}@ (%p)", v57, 0x8Eu);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    objc_storeStrong(&v43, 0);
    objc_storeStrong(&v44, 0);
    objc_storeStrong(&v45, 0);
  }

  objc_storeStrong(&oslog, 0);
  if (v51)
  {
    v13 = v51;
    v9 = objc_opt_class();
    v14 = NSStringFromClass(v9);
    v10 = *MEMORY[0x277D400B8];
    [v13 setProperty:? forKey:?];
    MEMORY[0x277D82BD8](v14);
    [v51 setEditPaneClass:objc_opt_class()];
    [v51 setProperty:&unk_287B855A0 forKey:@"mode"];
    v11 = MEMORY[0x26D66A460](v53);
    passcodeReplyHandler = selfCopy->_passcodeReplyHandler;
    selfCopy->_passcodeReplyHandler = v11;
    MEMORY[0x277D82BD8](passcodeReplyHandler);
    [(SUSUISoftwareUpdateController *)selfCopy showPINSheet:v51];
  }

  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)operation:(id)operation requestAgreementToTermsAndConditionsForUpdate:(id)update replyHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v22 = 0;
  objc_storeStrong(&v22, update);
  v21 = 0;
  objc_storeStrong(&v21, handler);
  v5 = objc_opt_new();
  termsManager = selfCopy->_termsManager;
  selfCopy->_termsManager = v5;
  MEMORY[0x277D82BD8](termsManager);
  v9 = selfCopy->_termsManager;
  defaultStyle = [MEMORY[0x277D46210] defaultStyle];
  [(SUSSoftwareUpdateTermsManager *)v9 setServerFlowStyle:?];
  MEMORY[0x277D82BD8](defaultStyle);
  v13 = selfCopy->_termsManager;
  v11 = v22;
  v12 = selfCopy;
  v14 = MEMORY[0x277D85DD0];
  v15 = -1073741824;
  v16 = 0;
  v17 = __114__SUSUISoftwareUpdateController_StatefulUI__operation_requestAgreementToTermsAndConditionsForUpdate_replyHandler___block_invoke;
  v18 = &unk_279CBBA40;
  v19 = MEMORY[0x277D82BE0](selfCopy);
  v20 = MEMORY[0x277D82BE0](v21);
  [(SUSSoftwareUpdateTermsManager *)v13 presentTermsIfNecessaryForUpdate:v11 overController:v12 showLoadSpinner:0 completion:?];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

void __114__SUSUISoftwareUpdateController_StatefulUI__operation_requestAgreementToTermsAndConditionsForUpdate_replyHandler___block_invoke(uint64_t a1, char a2, id obj)
{
  v36 = *MEMORY[0x277D85DE8];
  v34 = a1;
  v33 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v31[1] = a1;
  v31[0] = _SUSUILoggingFacility();
  v30 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v31[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v31[0];
    type = v30;
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v25 = NSStringFromClass(v4);
    v7 = MEMORY[0x277D82BE0](v25);
    v29 = v7;
    v8 = *(a1 + 32);
    v24 = SUSettingsUIStateToString([v8 currentUIState]);
    v9 = MEMORY[0x277D82BE0](v24);
    v28 = v9;
    v10 = [*(a1 + 32) currentUIState];
    v23 = [*(a1 + 32) presentingStatefulDescriptor];
    v22 = [*(a1 + 32) presentingStatefulDescriptor];
    v21 = [*(a1 + 32) presentingAlternateStatefulDescriptor];
    v20 = [*(a1 + 32) presentingAlternateStatefulDescriptor];
    v19 = [*(a1 + 32) manager];
    v18 = [v19 currentDownload];
    v17 = [v18 descriptor];
    v16 = [v17 humanReadableUpdateName];
    v6 = MEMORY[0x277D82BE0](v16);
    v27 = v6;
    v15 = [*(a1 + 32) manager];
    v14 = [v15 currentDownload];
    v13 = [*(a1 + 32) manager];
    if ([v13 isTargetedUpdateScheduledForAutoInstall])
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    __os_log_helper_16_2_14_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_4_0_8_66(v35, "[SUSUISoftwareUpdateController(StatefulUI) operation:requestAgreementToTermsAndConditionsForUpdate:replyHandler:]_block_invoke", v7, v8, v9, v10, v23, v22, v21, v20, v6, v14, v5, v33 & 1, location);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nSUSSoftwareUpdateTermsManager returned accepted state: %d; error: %{public}@", v35, 0x8Au);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
  }

  objc_storeStrong(v31, 0);
  (*(*(a1 + 40) + 16))(*(a1 + 40), (v33 & 1) == 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)operation:(id)operation requestApprovalForDownloadConstraints:(id)constraints downloadPolicy:(id)policy replyHandler:(id)handler
{
  v60 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v56 = 0;
  objc_storeStrong(&v56, constraints);
  v55 = 0;
  objc_storeStrong(&v55, policy);
  v54 = 0;
  objc_storeStrong(&v54, handler);
  v53 = 0;
  v52[8] = 0;
  *v52 = [v55 isDownloadFreeForCellular];
  v51 = 0;
  v50 = 0;
  v31 = SUSettingsSharedLogger();
  oslog = [v31 oslog];
  MEMORY[0x277D82BD8](v31);
  v48 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_32_4_0(v59, "[SUSUISoftwareUpdateController(StatefulUI) operation:requestApprovalForDownloadConstraints:downloadPolicy:replyHandler:]", v52[0] & 1);
    _os_log_impl(&dword_26AC94000, oslog, v48, "%s: Alerting user about cellular fees. zero rated = %d", v59, 0x12u);
  }

  objc_storeStrong(&oslog, 0);
  v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v52[0])
  {
    isSplatOnly = 0;
    if (v56)
    {
      isSplatOnly = [v56 isSplatOnly];
    }

    v6 = @"RSR_CELLULAR_DOWNLOAD_ACCEPT_POSSIBLE_FEES";
    if ((isSplatOnly & 1) == 0)
    {
      v6 = @"CELLULAR_DOWNLOAD_ACCEPT_POSSIBLE_FEES";
    }

    v28 = v6;
  }

  else
  {
    isSplatOnly2 = 0;
    if (v56)
    {
      isSplatOnly2 = [v56 isSplatOnly];
    }

    v7 = @"RSR_CELLULAR_DOWNLOAD_ACCEPT_DEFINITE_FEES";
    if ((isSplatOnly2 & 1) == 0)
    {
      v7 = @"CELLULAR_DOWNLOAD_ACCEPT_DEFINITE_FEES";
    }

    v28 = v7;
  }

  v8 = [v30 localizedStringForKey:v28 value:? table:?];
  v9 = *&v52[1];
  *&v52[1] = v8;
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v30);
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v16 localizedStringForKey:@"CONTINUE" value:&stru_287B79370 table:@"Software Update"];
  v11 = v51;
  v51 = v10;
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v16);
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v17 localizedStringForKey:@"CANCEL" value:&stru_287B79370 table:@"Software Update"];
  v13 = v50;
  v50 = v12;
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v17);
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v18 localizedStringForKey:@"ALLOW_CELLULAR_DOWNLOAD" value:&stru_287B79370 table:@"Software Update"];
  v15 = v53;
  v53 = v14;
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v18);
  v47 = [MEMORY[0x277D75110] alertControllerWithTitle:v53 message:*&v52[1] preferredStyle:?];
  v21 = v47;
  v20 = MEMORY[0x277D750F8];
  v19 = v51;
  v41 = MEMORY[0x277D85DD0];
  v42 = -1073741824;
  v43 = 0;
  v44 = __121__SUSUISoftwareUpdateController_StatefulUI__operation_requestApprovalForDownloadConstraints_downloadPolicy_replyHandler___block_invoke;
  v45 = &unk_279CBA670;
  v46 = MEMORY[0x277D82BE0](v54);
  v22 = [v20 actionWithTitle:v19 style:0 handler:&v41];
  [v21 addAction:?];
  MEMORY[0x277D82BD8](v22);
  v25 = v47;
  v24 = MEMORY[0x277D750F8];
  v23 = v50;
  v35 = MEMORY[0x277D85DD0];
  v36 = -1073741824;
  v37 = 0;
  v38 = __121__SUSUISoftwareUpdateController_StatefulUI__operation_requestApprovalForDownloadConstraints_downloadPolicy_replyHandler___block_invoke_2;
  v39 = &unk_279CBA670;
  v40 = MEMORY[0x277D82BE0](v54);
  v26 = [v24 actionWithTitle:v23 style:1 handler:&v35];
  [v25 addAction:?];
  MEMORY[0x277D82BD8](v26);
  [(SUSUISoftwareUpdateController *)selfCopy presentViewController:v47 animated:1 completion:?];
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v52[1], 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v56, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __121__SUSUISoftwareUpdateController_StatefulUI__operation_requestApprovalForDownloadConstraints_downloadPolicy_replyHandler___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void __121__SUSUISoftwareUpdateController_StatefulUI__operation_requestApprovalForDownloadConstraints_downloadPolicy_replyHandler___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

- (void)didAcceptEnteredPIN:(id)n
{
  v40 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, n);
  v35 = _SUSUILoggingFacility();
  v34 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v10 = NSStringFromClass(v3);
    v11 = MEMORY[0x277D82BE0](v10);
    v33 = v11;
    v12 = selfCopy;
    v13 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v14 = MEMORY[0x277D82BE0](v13);
    v32 = v14;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v24 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v31 = v24;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v5 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v5 = "NO";
    }

    v28 = v5;
    v29 = 0;
    if (location[0])
    {
      v29 = [location[0] length] != 0;
    }

    v6 = "YES";
    if (v29)
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    if (!selfCopy->_passcodeReplyHandler)
    {
      v6 = "NO";
    }

    __os_log_helper_16_2_14_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_32_8_32(v39, "[SUSUISoftwareUpdateController(StatefulUI) didAcceptEnteredPIN:]", v11, v12, v14, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v24, currentDownload2, v28, v7, v6);
    _os_log_impl(&dword_26AC94000, v35, v34, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nReceived the user entered passcode. Not Empty? %s; Reply handler exists? %s", v39, 0x8Eu);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v33, 0);
  }

  objc_storeStrong(&v35, 0);
  if (selfCopy->_passcodeReplyHandler)
  {
    (*(selfCopy->_passcodeReplyHandler + 2))();
    passcodeReplyHandler = selfCopy->_passcodeReplyHandler;
    selfCopy->_passcodeReplyHandler = 0;
    MEMORY[0x277D82BD8](passcodeReplyHandler);
  }

  else
  {
    v9 = SUSettingsSharedLogger();
    oslog = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v38, "[SUSUISoftwareUpdateController(StatefulUI) didAcceptEnteredPIN:]");
      _os_log_error_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_ERROR, "%s: Could not continue the installation as the passcode entry reply handler is nil. This is a bug.", v38, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)devicePINControllerDidDismissPINPane:(id)pane
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pane);
  if (selfCopy->_passcodeReplyHandler)
  {
    (*(selfCopy->_passcodeReplyHandler + 2))();
  }

  objc_storeStrong(location, 0);
}

- (id)updatedSpecifiersArray
{
  v159[20] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v156[1] = a2;
  v156[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v149 = MEMORY[0x277D85DD0];
  v150 = -1073741824;
  v151 = 0;
  v152 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke;
  v153 = &unk_279CBBE48;
  v154 = MEMORY[0x277D82BE0](selfCopy);
  v27 = MEMORY[0x26D66A460](&v149);
  v159[0] = v27;
  v143 = MEMORY[0x277D85DD0];
  v144 = -1073741824;
  v145 = 0;
  v146 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_2;
  v147 = &unk_279CBBE48;
  v148 = MEMORY[0x277D82BE0](selfCopy);
  v26 = MEMORY[0x26D66A460](&v143);
  v159[1] = v26;
  v137 = MEMORY[0x277D85DD0];
  v138 = -1073741824;
  v139 = 0;
  v140 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_3;
  v141 = &unk_279CBBE48;
  v142 = MEMORY[0x277D82BE0](selfCopy);
  v25 = MEMORY[0x26D66A460](&v137);
  v159[2] = v25;
  v131 = MEMORY[0x277D85DD0];
  v132 = -1073741824;
  v133 = 0;
  v134 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_4;
  v135 = &unk_279CBBE48;
  v136 = MEMORY[0x277D82BE0](selfCopy);
  v24 = MEMORY[0x26D66A460](&v131);
  v159[3] = v24;
  v125 = MEMORY[0x277D85DD0];
  v126 = -1073741824;
  v127 = 0;
  v128 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_5;
  v129 = &unk_279CBBE48;
  v130 = MEMORY[0x277D82BE0](selfCopy);
  v23 = MEMORY[0x26D66A460](&v125);
  v159[4] = v23;
  v119 = MEMORY[0x277D85DD0];
  v120 = -1073741824;
  v121 = 0;
  v122 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_6;
  v123 = &unk_279CBBE48;
  v124 = MEMORY[0x277D82BE0](selfCopy);
  v22 = MEMORY[0x26D66A460](&v119);
  v159[5] = v22;
  v113 = MEMORY[0x277D85DD0];
  v114 = -1073741824;
  v115 = 0;
  v116 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_7;
  v117 = &unk_279CBBE48;
  v118 = MEMORY[0x277D82BE0](selfCopy);
  v21 = MEMORY[0x26D66A460](&v113);
  v159[6] = v21;
  v107 = MEMORY[0x277D85DD0];
  v108 = -1073741824;
  v109 = 0;
  v110 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_8;
  v111 = &unk_279CBBE48;
  v112 = MEMORY[0x277D82BE0](selfCopy);
  v20 = MEMORY[0x26D66A460](&v107);
  v159[7] = v20;
  v101 = MEMORY[0x277D85DD0];
  v102 = -1073741824;
  v103 = 0;
  v104 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_9;
  v105 = &unk_279CBBE48;
  v106 = MEMORY[0x277D82BE0](selfCopy);
  v19 = MEMORY[0x26D66A460](&v101);
  v159[8] = v19;
  v95 = MEMORY[0x277D85DD0];
  v96 = -1073741824;
  v97 = 0;
  v98 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_10;
  v99 = &unk_279CBBE48;
  v100 = MEMORY[0x277D82BE0](selfCopy);
  v18 = MEMORY[0x26D66A460](&v95);
  v159[9] = v18;
  v89 = MEMORY[0x277D85DD0];
  v90 = -1073741824;
  v91 = 0;
  v92 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_11;
  v93 = &unk_279CBBE48;
  v94 = MEMORY[0x277D82BE0](selfCopy);
  v17 = MEMORY[0x26D66A460](&v89);
  v159[10] = v17;
  v83 = MEMORY[0x277D85DD0];
  v84 = -1073741824;
  v85 = 0;
  v86 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_12;
  v87 = &unk_279CBBE48;
  v88 = MEMORY[0x277D82BE0](selfCopy);
  v16 = MEMORY[0x26D66A460](&v83);
  v159[11] = v16;
  v77 = MEMORY[0x277D85DD0];
  v78 = -1073741824;
  v79 = 0;
  v80 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_13;
  v81 = &unk_279CBBE48;
  v82 = MEMORY[0x277D82BE0](selfCopy);
  v15 = MEMORY[0x26D66A460](&v77);
  v159[12] = v15;
  v71 = MEMORY[0x277D85DD0];
  v72 = -1073741824;
  v73 = 0;
  v74 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_14;
  v75 = &unk_279CBBE48;
  v76 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x26D66A460](&v71);
  v159[13] = v14;
  v65 = MEMORY[0x277D85DD0];
  v66 = -1073741824;
  v67 = 0;
  v68 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_15;
  v69 = &unk_279CBBE48;
  v70 = MEMORY[0x277D82BE0](selfCopy);
  v13 = MEMORY[0x26D66A460](&v65);
  v159[14] = v13;
  v59 = MEMORY[0x277D85DD0];
  v60 = -1073741824;
  v61 = 0;
  v62 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_16;
  v63 = &unk_279CBBE48;
  v64 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x26D66A460](&v59);
  v159[15] = v12;
  v53 = MEMORY[0x277D85DD0];
  v54 = -1073741824;
  v55 = 0;
  v56 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_17;
  v57 = &unk_279CBBE48;
  v58 = MEMORY[0x277D82BE0](selfCopy);
  v11 = MEMORY[0x26D66A460](&v53);
  v159[16] = v11;
  v47 = MEMORY[0x277D85DD0];
  v48 = -1073741824;
  v49 = 0;
  v50 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_18;
  v51 = &unk_279CBBE48;
  v52 = MEMORY[0x277D82BE0](selfCopy);
  v10 = MEMORY[0x26D66A460](&v47);
  v159[17] = v10;
  v41 = MEMORY[0x277D85DD0];
  v42 = -1073741824;
  v43 = 0;
  v44 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_19;
  v45 = &unk_279CBBE48;
  v46 = MEMORY[0x277D82BE0](selfCopy);
  v9 = MEMORY[0x26D66A460](&v41);
  v159[18] = v9;
  v35 = MEMORY[0x277D85DD0];
  v36 = -1073741824;
  v37 = 0;
  v38 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_20;
  v39 = &unk_279CBBE48;
  v40 = MEMORY[0x277D82BE0](selfCopy);
  v8 = MEMORY[0x26D66A460](&v35);
  v159[19] = v8;
  v155 = [MEMORY[0x277CBEA60] arrayWithObjects:v159 count:20];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
  currentDescriptorState = [(SUSUISoftwareUpdateController *)selfCopy currentDescriptorState];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v155);
  v29 = [obj countByEnumeratingWithState:__b objects:v158 count:16];
  if (v29)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v29;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(__b[1] + 8 * v6);
      location = (*(v32 + 16))();
      if (location)
      {
        [v156[0] addObject:location];
      }

      objc_storeStrong(&location, 0);
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v158 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v3 = MEMORY[0x277D82BE0](v156[0]);
  objc_storeStrong(&v155, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v70, 0);
  objc_storeStrong(&v76, 0);
  objc_storeStrong(&v82, 0);
  objc_storeStrong(&v88, 0);
  objc_storeStrong(&v94, 0);
  objc_storeStrong(&v100, 0);
  objc_storeStrong(&v106, 0);
  objc_storeStrong(&v112, 0);
  objc_storeStrong(&v118, 0);
  objc_storeStrong(&v124, 0);
  objc_storeStrong(&v130, 0);
  objc_storeStrong(&v136, 0);
  objc_storeStrong(&v142, 0);
  objc_storeStrong(&v148, 0);
  objc_storeStrong(&v154, 0);
  objc_storeStrong(v156, 0);
  *MEMORY[0x277D85DE8];

  return v3;
}

id __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) shouldShowComingSoonSpecifierForUIState:a2 descriptorState:a3])
  {
    v7 = [*(a1 + 32) specifierForComingSoonGroupWithUIState:a2 descriptorState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) shouldShowComingSoonSpecifierForUIState:a2 descriptorState:a3])
  {
    v7 = [*(a1 + 32) specifierForComingSoonWithUIState:a2 descriptorState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) shouldShowAutomaticUpdatesSpecifierForUIState:a2 descriptorState:a3])
  {
    v7 = [*(a1 + 32) specifierForAutomaticUpdatesGroupWithUIState:a2 descriptorState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) shouldShowAutomaticUpdatesSpecifierForUIState:a2 descriptorState:a3])
  {
    v7 = [*(a1 + 32) specifierForAutomaticUpdatesWithUIState:a2 descriptorState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) shouldShowBetaUpdatesCellSpecifierForUIState:a2 descriptorState:a3])
  {
    v7 = [*(a1 + 32) specifierForBetaUpdatesCellWithUIState:a2 descriptorState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) shouldShowScanGroupSpecifierForUIState:a2 descriptorState:a3])
  {
    v7 = [*(a1 + 32) specifierForScanHeaderGroupWithUIState:a2 descriptorState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) shouldShowScanStatusSpecifierForUIState:a2 descriptorState:a3])
  {
    v7 = [*(a1 + 32) specifierForScanStatusWithUIState:a2 descriptorState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) shouldShowScanStatusSpecifierForUIState:a2 descriptorState:a3])
  {
    v7 = [*(a1 + 32) specifierForScanStatusCellWithUIState:a2 descriptorState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) shouldShowScanGroupSpecifierForUIState:a2 descriptorState:a3])
  {
    v7 = [*(a1 + 32) specifierForScanFooterGroupWithUIState:a2 descriptorState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) shouldShowTitleGroupSpecifierForUIState:a2 descriptorState:a3])
  {
    v7 = [*(a1 + 32) specifierForTitleGroupWithUIState:a2 descriptorState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) shouldShowTitleCellSpecifierForUIState:a2 descriptorState:a3])
  {
    v7 = [*(a1 + 32) specifierForTitleCellWithUIState:a2 descriptorState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_12(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) shouldShowUpdateOptionsCellSpecifierForUIState:a2 descriptorState:a3])
  {
    v7 = [*(a1 + 32) specifierForUpdateOptionsWithUIState:a2 descriptorState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_13(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) shouldShowProactiveSuggestionsSpecifierForUIState:a2 descriptorState:a3])
  {
    v7 = [*(a1 + 32) specifierForProactiveSuggestionGroupWithUIState:a2 descriptorState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) shouldShowProactiveSuggestionsSpecifierForUIState:a2 descriptorState:a3])
  {
    v7 = [*(a1 + 32) specifierForProactiveSuggestionCellWithUIState:a2 descriptorState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_15(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) shouldShowProactiveSuggestionsPrimaryButtonSpecifierForUIState:a2 descriptorState:a3])
  {
    v7 = [*(a1 + 32) specifierForProactiveSuggestionPrimaryButtonWithUIState:a2 descriptorState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) shouldShowProactiveSuggestionsSecondaryButtonSpecifierForUIState:a2 descriptorState:a3])
  {
    v7 = [*(a1 + 32) specifierForProactiveSuggestionSecondaryButtonWithUIState:a2 descriptorState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_17(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) shouldShowAlternateUpdateGroupForUIState:a2 descriptorState:a3])
  {
    v7 = [*(a1 + 32) specifierForAlternateUpdateGroupWithUIState:a2 descriptorState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) shouldShowAlternateUpdateCellForUIState:a2 descriptorState:a3])
  {
    v7 = [*(a1 + 32) specifierForAlternateUpdateCellWithUIState:a2 descriptorState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_19(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) shouldShowNonPromotedGroupForUIState:a2 descriptorState:a3])
  {
    v7 = [*(a1 + 32) specifierForNonPromotedPrimaryUpdateGroupWithUIState:a2 descriptorState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 32) shouldShowNonPromotedCellForUIState:a2 descriptorState:a3])
  {
    v7 = [*(a1 + 32) specifierForNonPromotedPrimaryUpdateCellWithUIState:a2 descriptorState:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)customCellsMapping
{
  selfCopy = self;
  v22[1] = a2;
  v22[0] = objc_alloc_init(MEMORY[0x277CBEB38]);
  automaticUpdatesCell = [(SUSUISoftwareUpdateController *)selfCopy automaticUpdatesCell];
  MEMORY[0x277D82BD8](automaticUpdatesCell);
  if (automaticUpdatesCell)
  {
    automaticUpdatesCell2 = [(SUSUISoftwareUpdateController *)selfCopy automaticUpdatesCell];
    [v22[0] setObject:? forKey:?];
    MEMORY[0x277D82BD8](automaticUpdatesCell2);
  }

  betaUpdatesCell = [(SUSUISoftwareUpdateController *)selfCopy betaUpdatesCell];
  MEMORY[0x277D82BD8](betaUpdatesCell);
  if (betaUpdatesCell)
  {
    betaUpdatesCell2 = [(SUSUISoftwareUpdateController *)selfCopy betaUpdatesCell];
    [v22[0] setObject:? forKey:?];
    MEMORY[0x277D82BD8](betaUpdatesCell2);
  }

  titleCell = [(SUSUISoftwareUpdateController *)selfCopy titleCell];
  MEMORY[0x277D82BD8](titleCell);
  if (titleCell)
  {
    titleCell2 = [(SUSUISoftwareUpdateController *)selfCopy titleCell];
    [v22[0] setObject:? forKey:?];
    MEMORY[0x277D82BD8](titleCell2);
  }

  scanCell = [(SUSUISoftwareUpdateController *)selfCopy scanCell];
  MEMORY[0x277D82BD8](scanCell);
  if (scanCell)
  {
    scanCell2 = [(SUSUISoftwareUpdateController *)selfCopy scanCell];
    [v22[0] setObject:? forKey:?];
    MEMORY[0x277D82BD8](scanCell2);
  }

  comingSoonCell = [(SUSUISoftwareUpdateController *)selfCopy comingSoonCell];
  MEMORY[0x277D82BD8](comingSoonCell);
  if (comingSoonCell)
  {
    comingSoonCell2 = [(SUSUISoftwareUpdateController *)selfCopy comingSoonCell];
    [v22[0] setObject:? forKey:?];
    MEMORY[0x277D82BD8](comingSoonCell2);
  }

  updateOptionsCell = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  MEMORY[0x277D82BD8](updateOptionsCell);
  if (updateOptionsCell)
  {
    updateOptionsCell2 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
    [v22[0] setObject:? forKey:?];
    MEMORY[0x277D82BD8](updateOptionsCell2);
  }

  proactiveSuggestionCell = [(SUSUISoftwareUpdateController *)selfCopy proactiveSuggestionCell];
  MEMORY[0x277D82BD8](proactiveSuggestionCell);
  if (proactiveSuggestionCell)
  {
    proactiveSuggestionCell2 = [(SUSUISoftwareUpdateController *)selfCopy proactiveSuggestionCell];
    [v22[0] setObject:? forKey:?];
    MEMORY[0x277D82BD8](proactiveSuggestionCell2);
  }

  alternateUpdateCell = [(SUSUISoftwareUpdateController *)selfCopy alternateUpdateCell];
  MEMORY[0x277D82BD8](alternateUpdateCell);
  if (alternateUpdateCell)
  {
    alternateUpdateCell2 = [(SUSUISoftwareUpdateController *)selfCopy alternateUpdateCell];
    [v22[0] setObject:? forKey:?];
    MEMORY[0x277D82BD8](alternateUpdateCell2);
  }

  nonPromotedUpdateCell = [(SUSUISoftwareUpdateController *)selfCopy nonPromotedUpdateCell];
  MEMORY[0x277D82BD8](nonPromotedUpdateCell);
  if (nonPromotedUpdateCell)
  {
    nonPromotedUpdateCell2 = [(SUSUISoftwareUpdateController *)selfCopy nonPromotedUpdateCell];
    [v22[0] setObject:? forKey:?];
    MEMORY[0x277D82BD8](nonPromotedUpdateCell2);
  }

  v3 = MEMORY[0x277D82BE0](v22[0]);
  objc_storeStrong(v22, 0);

  return v3;
}

- (void)reloadSpecifiers:(id)specifiers animated:(BOOL)animated
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifiers);
  animatedCopy = animated;
  [(SUSUISoftwareUpdateController *)selfCopy beginUpdates];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v11 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
  if (v11)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v11;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v7);
      [(SUSUISoftwareUpdateController *)selfCopy reloadSpecifier:v13 animated:animatedCopy, v8];
      ++v7;
      v8 = v4;
      if (v5 + 1 >= v4)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  [(SUSUISoftwareUpdateController *)selfCopy endUpdates];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)reloadUsingNewSpecifiers:(id)specifiers
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifiers);
  [(SUSUISoftwareUpdateController *)selfCopy reloadUsingNewSpecifiers:location[0] animated:1];
  objc_storeStrong(location, 0);
}

- (void)reloadUsingNewSpecifiers:(id)specifiers animated:(BOOL)animated
{
  v35 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifiers);
  animatedCopy = animated;
  if (animated)
  {
    specifiers = [(SUSUISoftwareUpdateController *)selfCopy specifiers];
    v28 = [MEMORY[0x277D3FAE8] updatesByDiffingSpecifiers:specifiers withSpecifiers:location[0] changedBlock:&__block_literal_global_3];
    v14 = objc_alloc(MEMORY[0x277CBEB18]);
    updates = [v28 updates];
    v27 = [v14 initWithCapacity:{objc_msgSend(updates, "count")}];
    MEMORY[0x277D82BD8](updates);
    v16 = objc_alloc(MEMORY[0x277CBEB18]);
    updates2 = [v28 updates];
    v26 = [v16 initWithCapacity:{objc_msgSend(updates2, "count")}];
    MEMORY[0x277D82BD8](updates2);
    memset(__b, 0, sizeof(__b));
    obj = [v28 updates];
    v19 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
    if (v19)
    {
      v11 = *__b[2];
      v12 = 0;
      v13 = v19;
      while (1)
      {
        v10 = v12;
        if (*__b[2] != v11)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(__b[1] + 8 * v12);
        if ([v25 operation] == 3)
        {
          [v27 addObject:v25];
        }

        else
        {
          [v26 addObject:v25];
        }

        ++v12;
        if (v10 + 1 >= v13)
        {
          v12 = 0;
          v13 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
          if (!v13)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    v4 = objc_alloc(MEMORY[0x277D3FAE8]);
    specifiers2 = [(SUSUISoftwareUpdateController *)selfCopy specifiers];
    v23 = [v4 initWithSpecifiers:? applyUpdates:?];
    MEMORY[0x277D82BD8](specifiers2);
    context = [v23 context];
    [context setAnimated:animatedCopy];
    MEMORY[0x277D82BD8](context);
    [(SUSUISoftwareUpdateController *)selfCopy performSpecifierUpdates:v23];
    v7 = objc_alloc(MEMORY[0x277D3FAE8]);
    specifiers3 = [(SUSUISoftwareUpdateController *)selfCopy specifiers];
    v22 = [v7 initWithSpecifiers:? applyUpdates:?];
    MEMORY[0x277D82BD8](specifiers3);
    context2 = [v22 context];
    [context2 setAnimated:0];
    MEMORY[0x277D82BD8](context2);
    [(SUSUISoftwareUpdateController *)selfCopy performSpecifierUpdates:v22];
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&specifiers, 0);
    v30 = 0;
  }

  else
  {
    [(SUSUISoftwareUpdateController *)selfCopy setSpecifiers:location[0]];
    table = [(SUSUISoftwareUpdateController *)selfCopy table];
    [table reloadData];
    MEMORY[0x277D82BD8](table);
    v30 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __79__SUSUISoftwareUpdateController_Specifiers__reloadUsingNewSpecifiers_animated___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15 = 0;
  objc_storeStrong(&v15, a3);
  v14 = a1;
  v7 = [location[0] identifier];
  v12 = 0;
  v8 = 1;
  if (([v7 isEqualToString:@"SUScanHeaderGroup"] & 1) == 0)
  {
    v13 = [location[0] identifier];
    v12 = 1;
    v8 = [v13 isEqualToString:@"SUScanFooterGroup"];
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  MEMORY[0x277D82BD8](v7);
  if (v8)
  {
    v17 = 1;
    v11 = 1;
  }

  else if ([location[0] cellType])
  {
    v17 = 0;
    v11 = 1;
  }

  else
  {
    v4 = MEMORY[0x277D3FF88];
    v10 = [location[0] propertyForKey:*MEMORY[0x277D3FF88]];
    v9 = [v15 propertyForKey:*v4];
    v17 = ([v10 isEqualToString:v9] ^ 1) & 1;
    v11 = 1;
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v17 & 1;
}

- (BOOL)specifier:(id)specifier isEqualToSpecifier:(id)toSpecifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  v43 = 0;
  objc_storeStrong(&v43, toSpecifier);
  if ([location[0] isEqual:v43])
  {
    v46 = 1;
  }

  else
  {
    v12 = objc_opt_class();
    v41 = 0;
    v39 = 0;
    v37 = 0;
    v35 = 0;
    v33 = 0;
    v31 = 0;
    v29 = 0;
    v27 = 0;
    v25 = 0;
    v23 = 0;
    v21 = 0;
    v19 = 0;
    v17 = 0;
    v15 = 0;
    v13 = 0;
    if (v12 == objc_opt_class())
    {
      v11 = selfCopy;
      name = [location[0] name];
      v41 = 1;
      name2 = [v43 name];
      v39 = 1;
      v13 = 0;
      if ([(SUSUISoftwareUpdateController *)v11 specifierStringValue:name IsEqualToSpecifierStringValue:?])
      {
        v10 = selfCopy;
        identifier = [location[0] identifier];
        v37 = 1;
        identifier2 = [v43 identifier];
        v35 = 1;
        v13 = 0;
        if ([(SUSUISoftwareUpdateController *)v10 specifierStringValue:identifier IsEqualToSpecifierStringValue:?])
        {
          v13 = 0;
          if ([(SUSUISoftwareUpdateController *)selfCopy specifierSelectorValue:*(location[0] + *MEMORY[0x277D3FCA8]) IsEqualToSpecifierSelectorValue:*(v43 + *MEMORY[0x277D3FCA8])])
          {
            v13 = 0;
            if ([(SUSUISoftwareUpdateController *)selfCopy specifierSelectorValue:*(location[0] + *MEMORY[0x277D3FCB0]) IsEqualToSpecifierSelectorValue:*(v43 + *MEMORY[0x277D3FCB0])])
            {
              v13 = 0;
              if ([(SUSUISoftwareUpdateController *)selfCopy specifierClassValue:*(location[0] + *MEMORY[0x277D3FC98]) IsEqualToSpecifierClassValue:*(v43 + *MEMORY[0x277D3FC98])])
              {
                v13 = 0;
                if ([(SUSUISoftwareUpdateController *)selfCopy specifierIntValue:*(location[0] + *MEMORY[0x277D3FC90]) IsEqualToSpecifierIntValue:*(v43 + *MEMORY[0x277D3FC90])])
                {
                  v13 = 0;
                  if ([(SUSUISoftwareUpdateController *)selfCopy specifierClassValue:*(location[0] + *MEMORY[0x277D3FCA0]) IsEqualToSpecifierClassValue:*(v43 + *MEMORY[0x277D3FCA0])])
                  {
                    v13 = 0;
                    if (-[SUSUISoftwareUpdateController specifierSelectorValue:IsEqualToSpecifierSelectorValue:](selfCopy, "specifierSelectorValue:IsEqualToSpecifierSelectorValue:", [location[0] confirmationAction], objc_msgSend(v43, "confirmationAction")))
                    {
                      v13 = 0;
                      if (-[SUSUISoftwareUpdateController specifierSelectorValue:IsEqualToSpecifierSelectorValue:](selfCopy, "specifierSelectorValue:IsEqualToSpecifierSelectorValue:", [location[0] confirmationAlternateAction], objc_msgSend(v43, "confirmationAlternateAction")))
                      {
                        v13 = 0;
                        if (-[SUSUISoftwareUpdateController specifierSelectorValue:IsEqualToSpecifierSelectorValue:](selfCopy, "specifierSelectorValue:IsEqualToSpecifierSelectorValue:", [location[0] confirmationCancelAction], objc_msgSend(v43, "confirmationCancelAction")))
                        {
                          v13 = 0;
                          if (-[SUSUISoftwareUpdateController specifierSelectorValue:IsEqualToSpecifierSelectorValue:](selfCopy, "specifierSelectorValue:IsEqualToSpecifierSelectorValue:", [location[0] controllerLoadAction], objc_msgSend(v43, "controllerLoadAction")))
                          {
                            v9 = selfCopy;
                            properties = [location[0] properties];
                            v33 = 1;
                            properties2 = [v43 properties];
                            v31 = 1;
                            v13 = 0;
                            if ([(SUSUISoftwareUpdateController *)v9 specifierDictionaryValue:properties IsEqualToSpecifierDictionaryValue:?])
                            {
                              v8 = selfCopy;
                              values = [location[0] values];
                              v29 = 1;
                              values2 = [v43 values];
                              v27 = 1;
                              v13 = 0;
                              if ([(SUSUISoftwareUpdateController *)v8 specifierArrayValue:values IsEqualToSpecifierArrayValue:?])
                              {
                                v7 = selfCopy;
                                titleDictionary = [location[0] titleDictionary];
                                v25 = 1;
                                titleDictionary2 = [v43 titleDictionary];
                                v23 = 1;
                                v13 = 0;
                                if ([(SUSUISoftwareUpdateController *)v7 specifierDictionaryValue:titleDictionary IsEqualToSpecifierDictionaryValue:?])
                                {
                                  v6 = selfCopy;
                                  shortTitleDictionary = [location[0] shortTitleDictionary];
                                  v21 = 1;
                                  shortTitleDictionary2 = [v43 shortTitleDictionary];
                                  v19 = 1;
                                  v13 = 0;
                                  if ([(SUSUISoftwareUpdateController *)v6 specifierDictionaryValue:shortTitleDictionary IsEqualToSpecifierDictionaryValue:?])
                                  {
                                    v5 = selfCopy;
                                    userInfo = [location[0] userInfo];
                                    v17 = 1;
                                    userInfo2 = [v43 userInfo];
                                    v15 = 1;
                                    v13 = [(SUSUISoftwareUpdateController *)v5 specifierIDValue:userInfo IsEqualToSpecifierIDValue:?];
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v46 = v13;
    if (v15)
    {
      MEMORY[0x277D82BD8](userInfo2);
    }

    if (v17)
    {
      MEMORY[0x277D82BD8](userInfo);
    }

    if (v19)
    {
      MEMORY[0x277D82BD8](shortTitleDictionary2);
    }

    if (v21)
    {
      MEMORY[0x277D82BD8](shortTitleDictionary);
    }

    if (v23)
    {
      MEMORY[0x277D82BD8](titleDictionary2);
    }

    if (v25)
    {
      MEMORY[0x277D82BD8](titleDictionary);
    }

    if (v27)
    {
      MEMORY[0x277D82BD8](values2);
    }

    if (v29)
    {
      MEMORY[0x277D82BD8](values);
    }

    if (v31)
    {
      MEMORY[0x277D82BD8](properties2);
    }

    if (v33)
    {
      MEMORY[0x277D82BD8](properties);
    }

    if (v35)
    {
      MEMORY[0x277D82BD8](identifier2);
    }

    if (v37)
    {
      MEMORY[0x277D82BD8](identifier);
    }

    if (v39)
    {
      MEMORY[0x277D82BD8](name2);
    }

    if (v41)
    {
      MEMORY[0x277D82BD8](name);
    }
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  return v46 & 1;
}

- (BOOL)specifierStringValue:(id)value IsEqualToSpecifierStringValue:(id)stringValue
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v7 = 0;
  objc_storeStrong(&v7, stringValue);
  if (location[0] || (v5 = 1, v7))
  {
    v5 = [location[0] isEqualToString:v7];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)specifierDictionaryValue:(id)value IsEqualToSpecifierDictionaryValue:(id)dictionaryValue
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v7 = 0;
  objc_storeStrong(&v7, dictionaryValue);
  if (location[0] || (v5 = 1, v7))
  {
    v5 = [location[0] isEqualToDictionary:v7];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)specifierArrayValue:(id)value IsEqualToSpecifierArrayValue:(id)arrayValue
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v7 = 0;
  objc_storeStrong(&v7, arrayValue);
  if (location[0] || (v5 = 1, v7))
  {
    v5 = [location[0] isEqualToArray:v7];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)specifierSelectorValue:(SEL)value IsEqualToSpecifierSelectorValue:(SEL)selectorValue
{
  if (value)
  {
    return value == selectorValue;
  }

  v5 = 1;
  if (selectorValue)
  {
    return value == selectorValue;
  }

  return v5;
}

- (BOOL)specifierClassValue:(Class)value IsEqualToSpecifierClassValue:(Class)classValue
{
  if (value)
  {
    return value == classValue;
  }

  v5 = 1;
  if (classValue)
  {
    return value == classValue;
  }

  return v5;
}

- (BOOL)specifierIDValue:(id)value IsEqualToSpecifierIDValue:(id)dValue
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v7 = 0;
  objc_storeStrong(&v7, dValue);
  if (location[0] || (v5 = 1, v7))
  {
    v5 = [location[0] isEqual:v7];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (void)fixCustomCellSpecifiers
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v14[1] = a2;
  v14[0] = [(SUSUISoftwareUpdateController *)self customCellsMapping];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v14[0]);
  v9 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v6);
      v11 = [(SUSUISoftwareUpdateController *)selfCopy specifierWithID:v13, v2];
      location = [v14[0] objectForKeyedSubscript:v13];
      v3 = [v11 propertyForKey:*MEMORY[0x277D40148]];
      MEMORY[0x277D82BD8](v3);
      if (!v3)
      {
        [v11 setProperty:location forKey:*MEMORY[0x277D40148]];
      }

      v2 = 0;
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v11, 0);
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(v14, 0);
  *MEMORY[0x277D85DE8];
}

+ (id)visibleGroupSpecifiers
{
  v5 = &visibleGroupSpecifiers_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_374);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = visibleGroupSpecifiers_visibleGroupSpecifiers;

  return v2;
}

uint64_t __67__SUSUISoftwareUpdateController_Specifiers__visibleGroupSpecifiers__block_invoke()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"SUAutomaticUpdateGroup";
  v3[1] = @"SUTitleGroup";
  v3[2] = @"SUCancelAutomaticUpdateGroup";
  v3[3] = @"SUAlternateUpdateGroup";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:4];
  v1 = visibleGroupSpecifiers_visibleGroupSpecifiers;
  visibleGroupSpecifiers_visibleGroupSpecifiers = v0;
  result = MEMORY[0x277D82BD8](v1);
  *MEMORY[0x277D85DE8];
  return result;
}

- (id)specifierForComingSoonGroupWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  v6[4] = self;
  v6[3] = a2;
  v6[2] = state;
  v6[1] = descriptorState;
  v6[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUTipKitComingSoonGroup"];
  if (!v6[0])
  {
    v6[0] = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    MEMORY[0x277D82BD8](0);
    [v6[0] setProperty:@"SUTipKitComingSoonGroup" forKey:*MEMORY[0x277D3FFB8]];
  }

  v5 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)specifierForComingSoonWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  selfCopy = self;
  v14[3] = a2;
  v14[2] = state;
  v14[1] = descriptorState;
  v14[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUTipKitComingSoonCell"];
  if (!v14[0])
  {
    v14[0] = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    MEMORY[0x277D82BD8](0);
    [v14[0] setProperty:@"SUTipKitComingSoonCell" forKey:*MEMORY[0x277D3FFB8]];
    [v14[0] setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
    [(SUSUISoftwareUpdateController *)selfCopy setComingSoonCell:0];
  }

  comingSoonCell = [(SUSUISoftwareUpdateController *)selfCopy comingSoonCell];
  MEMORY[0x277D82BD8](comingSoonCell);
  if (!comingSoonCell)
  {
    v11 = [objc_alloc(MEMORY[0x277D64AA0]) initWithStyle:3 reuseIdentifier:0 specifier:?];
    [(SUSUISoftwareUpdateController *)selfCopy setComingSoonCell:?];
    MEMORY[0x277D82BD8](v11);
    comingSoonCell2 = [(SUSUISoftwareUpdateController *)selfCopy comingSoonCell];
    [(SUSSoftwareUpdateComingSoonTipCell *)comingSoonCell2 setSpecifier:v14[0]];
    MEMORY[0x277D82BD8](comingSoonCell2);
  }

  v6 = v14[0];
  comingSoonCell3 = [(SUSUISoftwareUpdateController *)selfCopy comingSoonCell];
  v4 = *MEMORY[0x277D40148];
  [v6 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](comingSoonCell3);
  comingSoonCell4 = [(SUSUISoftwareUpdateController *)selfCopy comingSoonCell];
  [(SUSSoftwareUpdateComingSoonTipCell *)comingSoonCell4 setAccessibilityIdentifier:@"SUTipKitComingSoonCell"];
  MEMORY[0x277D82BD8](comingSoonCell4);
  comingSoonCell5 = [(SUSUISoftwareUpdateController *)selfCopy comingSoonCell];
  [(SUSSoftwareUpdateComingSoonTipCell *)comingSoonCell5 setUserInteractionEnabled:[(SUSUISoftwareUpdateController *)selfCopy isBusy]^ 1];
  MEMORY[0x277D82BD8](comingSoonCell5);
  v10 = MEMORY[0x277D82BE0](v14[0]);
  objc_storeStrong(v14, 0);

  return v10;
}

- (id)specifierForAutomaticUpdatesGroupWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  selfCopy = self;
  v78 = a2;
  stateCopy = state;
  descriptorStateCopy = descriptorState;
  v75 = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUAutomaticUpdateGroup"];
  if (!v75)
  {
    v75 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SUAutomaticUpdateGroup"];
    MEMORY[0x277D82BD8](0);
  }

  if ([(SUSUISoftwareUpdateController *)selfCopy shouldShowEnforcedUpdateForUIState:stateCopy descriptorState:descriptorStateCopy])
  {
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    ddmDeclaration = [(SUSettingsStatefulUIManager *)manager ddmDeclaration];
    versionString = [(SUCoreDDMDeclaration *)ddmDeclaration versionString];
    MEMORY[0x277D82BD8](ddmDeclaration);
    MEMORY[0x277D82BD8](manager);
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    ddmDeclaration2 = [(SUSettingsStatefulUIManager *)manager2 ddmDeclaration];
    buildVersionString = [(SUCoreDDMDeclaration *)ddmDeclaration2 buildVersionString];
    MEMORY[0x277D82BD8](ddmDeclaration2);
    MEMORY[0x277D82BD8](manager2);
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    ddmDeclaration3 = [(SUSettingsStatefulUIManager *)manager3 ddmDeclaration];
    enforcedInstallDate = [(SUCoreDDMDeclaration *)ddmDeclaration3 enforcedInstallDate];
    MEMORY[0x277D82BD8](ddmDeclaration3);
    MEMORY[0x277D82BD8](manager3);
    location = 0;
    v70 = [MEMORY[0x277CCA968] localizedStringFromDate:enforcedInstallDate dateStyle:1 timeStyle:?];
    manager4 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager4 currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager4);
    if (descriptor)
    {
      v43 = MEMORY[0x277CCACA8];
      v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v52 = [v53 localizedStringForKey:@"%@ (%@)" value:&stru_287B79370 table:@"Software Update"];
      manager5 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      currentDownload2 = [(SUSettingsStatefulUIManager *)manager5 currentDownload];
      descriptor2 = [(SUDownload *)currentDownload2 descriptor];
      productVersion = [(SUDescriptor *)descriptor2 productVersion];
      manager6 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      currentDownload3 = [(SUSettingsStatefulUIManager *)manager6 currentDownload];
      descriptor3 = [(SUDownload *)currentDownload3 descriptor];
      productBuildVersion = [(SUDescriptor *)descriptor3 productBuildVersion];
      v4 = [v43 stringWithFormat:v52, productVersion, productBuildVersion];
      v5 = location;
      location = v4;
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](productBuildVersion);
      MEMORY[0x277D82BD8](descriptor3);
      MEMORY[0x277D82BD8](currentDownload3);
      MEMORY[0x277D82BD8](manager6);
      MEMORY[0x277D82BD8](productVersion);
      MEMORY[0x277D82BD8](descriptor2);
      MEMORY[0x277D82BD8](currentDownload2);
      MEMORY[0x277D82BD8](manager5);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v53);
    }

    else if (versionString && buildVersionString)
    {
      v40 = MEMORY[0x277CCACA8];
      v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v41 = [v42 localizedStringForKey:@"%@ (%@)" value:&stru_287B79370 table:@"Software Update"];
      v6 = [v40 stringWithFormat:versionString, buildVersionString];
      v7 = location;
      location = v6;
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v42);
    }

    else if (versionString)
    {
      objc_storeStrong(&location, versionString);
    }

    else
    {
      objc_storeStrong(&location, buildVersionString);
    }

    v31 = MEMORY[0x277CCACA8];
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v33 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"MANAGED_DEVICE_ENFORCED_UPDATE_BODY"];
    v32 = [v34 localizedStringForKey:? value:? table:?];
    v69 = [v31 stringWithFormat:location];
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    v35 = MEMORY[0x277CCACA8];
    v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v36 = [v37 localizedStringForKey:@"MANAGED_DEVICE_ENFORCED_UPDATE_BODY_WITH_DATE" value:&stru_287B79370 table:@"Software Update"];
    v8 = [v35 stringWithFormat:v69, v70];
    v9 = v69;
    v69 = v8;
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    manager7 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    ddmDeclaration4 = [(SUSettingsStatefulUIManager *)manager7 ddmDeclaration];
    detailsURL = [(SUCoreDDMDeclaration *)ddmDeclaration4 detailsURL];
    MEMORY[0x277D82BD8](ddmDeclaration4);
    MEMORY[0x277D82BD8](manager7);
    if (detailsURL)
    {
      v24 = MEMORY[0x277CCACA8];
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = [v26 localizedStringForKey:@"MANAGED_DEVICE_ENFORCED_UPDATE_BODY_WITH_URL" value:&stru_287B79370 table:@"Software Update"];
      v10 = [v24 stringWithFormat:v69, detailsURL];
      v11 = v69;
      v69 = v10;
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
      v67.location = [v69 rangeOfString:detailsURL];
      v67.length = v12;
      v27 = v75;
      v13 = objc_opt_class();
      v28 = NSStringFromClass(v13);
      v14 = *MEMORY[0x277D3FF48];
      [v27 setProperty:? forKey:?];
      MEMORY[0x277D82BD8](v28);
      v29 = v75;
      v30 = NSStringFromRange(v67);
      v15 = *MEMORY[0x277D3FF58];
      [v29 setProperty:? forKey:?];
      MEMORY[0x277D82BD8](v30);
      [v75 setProperty:detailsURL forKey:*MEMORY[0x277D3FF78]];
    }

    [v75 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
    [v75 setProperty:v69 forKey:*MEMORY[0x277D3FF88]];
    objc_storeStrong(&detailsURL, 0);
    objc_storeStrong(&v69, 0);
    objc_storeStrong(&v70, 0);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&enforcedInstallDate, 0);
    objc_storeStrong(&buildVersionString, 0);
    objc_storeStrong(&versionString, 0);
  }

  else
  {
    v65 = 0;
    v63 = 0;
    v23 = 0;
    if (stateCopy == 4)
    {
      v23 = 0;
      if (![(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptorPromotedAsAlternate])
      {
        manager8 = [(SUSUISoftwareUpdateController *)selfCopy manager];
        v65 = 1;
        hasSUPathRestrictions = 1;
        if (![(SUSettingsStatefulUIManager *)manager8 isDelayingUpdate])
        {
          manager9 = [(SUSUISoftwareUpdateController *)selfCopy manager];
          v63 = 1;
          hasSUPathRestrictions = [(SUSettingsStatefulUIManager *)manager9 hasSUPathRestrictions];
        }

        v23 = hasSUPathRestrictions;
      }
    }

    if (v63)
    {
      MEMORY[0x277D82BD8](manager9);
    }

    if (v65)
    {
      MEMORY[0x277D82BD8](manager8);
    }

    if (v23)
    {
      [v75 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"MANAGED_DEVICE_DELAY_EXPIRED_AVAILABLE"];
      v19 = [v21 localizedStringForKey:? value:? table:?];
      v16 = *MEMORY[0x277D3FF88];
      [v75 setProperty:? forKey:?];
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v21);
    }

    else
    {
      [v75 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FD80]];
      [v75 setProperty:&stru_287B79370 forKey:*MEMORY[0x277D3FF88]];
    }
  }

  v18 = MEMORY[0x277D82BE0](v75);
  objc_storeStrong(&v75, 0);

  return v18;
}

- (id)specifierForAutomaticUpdatesWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  selfCopy = self;
  v25[3] = a2;
  v25[2] = state;
  v25[1] = descriptorState;
  v24 = 0;
  v25[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUAutomaticUpdateButton"];
  MEMORY[0x277D82BD8](0);
  if (!v25[0])
  {
    v20 = MEMORY[0x277D3FAD8];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"AUTOMATIC_UPDATES" value:&stru_287B79370 table:@"Software Update"];
    objc_opt_class();
    v4 = [v20 preferenceSpecifierNamed:v22 target:selfCopy set:0 get:? detail:? cell:? edit:?];
    v5 = v25[0];
    v25[0] = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v21);
    [v25[0] setProperty:@"SUAutomaticUpdateButton" forKey:*MEMORY[0x277D3FFB8]];
    [(SUSUISoftwareUpdateController *)selfCopy setAutomaticUpdatesCell:0];
  }

  automaticUpdatesCell = [(SUSUISoftwareUpdateController *)selfCopy automaticUpdatesCell];
  MEMORY[0x277D82BD8](automaticUpdatesCell);
  if (!automaticUpdatesCell)
  {
    v18 = [objc_alloc(MEMORY[0x277D3FB38]) initWithStyle:0 reuseIdentifier:@"SUAutomaticUpdateButton" specifier:v25[0]];
    [(SUSUISoftwareUpdateController *)selfCopy setAutomaticUpdatesCell:?];
    MEMORY[0x277D82BD8](v18);
  }

  location = [MEMORY[0x277D756E0] valueCellConfiguration];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v11 localizedStringForKey:@"AUTOMATIC_UPDATES" value:&stru_287B79370 table:@"Software Update"];
  [location setText:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  automaticUpdatesCellTitle = [(SUSUISoftwareUpdateController *)selfCopy automaticUpdatesCellTitle];
  [location setSecondaryText:?];
  MEMORY[0x277D82BD8](automaticUpdatesCellTitle);
  automaticUpdatesCell2 = [(SUSUISoftwareUpdateController *)selfCopy automaticUpdatesCell];
  [(PSTableCell *)automaticUpdatesCell2 setContentConfiguration:location];
  MEMORY[0x277D82BD8](automaticUpdatesCell2);
  automaticUpdatesCell3 = [(SUSUISoftwareUpdateController *)selfCopy automaticUpdatesCell];
  [(PSTableCell *)automaticUpdatesCell3 setAccessibilityIdentifier:@"SUAutomaticUpdateButton"];
  MEMORY[0x277D82BD8](automaticUpdatesCell3);
  automaticUpdatesCell4 = [(SUSUISoftwareUpdateController *)selfCopy automaticUpdatesCell];
  [(PSTableCell *)automaticUpdatesCell4 setAccessoryType:1];
  MEMORY[0x277D82BD8](automaticUpdatesCell4);
  automaticUpdatesCell5 = [(SUSUISoftwareUpdateController *)selfCopy automaticUpdatesCell];
  [(PSTableCell *)automaticUpdatesCell5 setUserInteractionEnabled:[(SUSUISoftwareUpdateController *)selfCopy isBusy]^ 1];
  MEMORY[0x277D82BD8](automaticUpdatesCell5);
  [v25[0] setProperty:&unk_287B855B8 forKey:*MEMORY[0x277D3FD68]];
  v17 = [v25[0] propertyForKey:*MEMORY[0x277D40148]];
  MEMORY[0x277D82BD8](v17);
  if (!v17)
  {
    automaticUpdatesCell6 = [(SUSUISoftwareUpdateController *)selfCopy automaticUpdatesCell];
    v6 = *MEMORY[0x277D40148];
    [v25[0] setProperty:? forKey:?];
    MEMORY[0x277D82BD8](automaticUpdatesCell6);
  }

  v8 = MEMORY[0x277D82BE0](v25[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v25, 0);

  return v8;
}

- (id)specifierForBetaUpdatesCellWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  selfCopy = self;
  v22[3] = a2;
  v22[2] = state;
  v22[1] = descriptorState;
  v22[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUGetBetaUpdatesButton"];
  if (!v22[0])
  {
    v18 = MEMORY[0x277D3FAD8];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v20 localizedStringForKey:@"GET_BETA_UPDATES" value:&stru_287B79370 table:@"Software Update"];
    objc_opt_class();
    v22[0] = [v18 preferenceSpecifierNamed:v19 target:selfCopy set:0 get:? detail:? cell:? edit:?];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    [v22[0] setProperty:@"SUGetBetaUpdatesButton" forKey:*MEMORY[0x277D3FFB8]];
    [(SUSUISoftwareUpdateController *)selfCopy setBetaUpdatesCell:0];
  }

  betaUpdatesCell = [(SUSUISoftwareUpdateController *)selfCopy betaUpdatesCell];
  MEMORY[0x277D82BD8](betaUpdatesCell);
  if (!betaUpdatesCell)
  {
    v16 = [objc_alloc(MEMORY[0x277D3FB38]) initWithStyle:0 reuseIdentifier:@"SUGetBetaUpdatesButton" specifier:v22[0]];
    [(SUSUISoftwareUpdateController *)selfCopy setBetaUpdatesCell:?];
    MEMORY[0x277D82BD8](v16);
  }

  location = [MEMORY[0x277D756E0] valueCellConfiguration];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v9 localizedStringForKey:@"GET_BETA_UPDATES" value:&stru_287B79370 table:@"Software Update"];
  [location setText:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  isBetaUpdatesEnabled = [(SUSUISoftwareUpdateController *)selfCopy isBetaUpdatesEnabled];
  [location setSecondaryText:?];
  MEMORY[0x277D82BD8](isBetaUpdatesEnabled);
  betaUpdatesCell2 = [(SUSUISoftwareUpdateController *)selfCopy betaUpdatesCell];
  [(PSTableCell *)betaUpdatesCell2 setContentConfiguration:location];
  MEMORY[0x277D82BD8](betaUpdatesCell2);
  betaUpdatesCell3 = [(SUSUISoftwareUpdateController *)selfCopy betaUpdatesCell];
  [(PSTableCell *)betaUpdatesCell3 setAccessibilityIdentifier:@"SUGetBetaUpdatesButton"];
  MEMORY[0x277D82BD8](betaUpdatesCell3);
  betaUpdatesCell4 = [(SUSUISoftwareUpdateController *)selfCopy betaUpdatesCell];
  [(PSTableCell *)betaUpdatesCell4 setAccessoryType:1];
  MEMORY[0x277D82BD8](betaUpdatesCell4);
  betaUpdatesCell5 = [(SUSUISoftwareUpdateController *)selfCopy betaUpdatesCell];
  [(PSTableCell *)betaUpdatesCell5 setUserInteractionEnabled:[(SUSUISoftwareUpdateController *)selfCopy isBusy]^ 1];
  MEMORY[0x277D82BD8](betaUpdatesCell5);
  [v22[0] setProperty:&unk_287B855B8 forKey:*MEMORY[0x277D3FD68]];
  v15 = [v22[0] propertyForKey:*MEMORY[0x277D40148]];
  MEMORY[0x277D82BD8](v15);
  if (!v15)
  {
    betaUpdatesCell6 = [(SUSUISoftwareUpdateController *)selfCopy betaUpdatesCell];
    v4 = *MEMORY[0x277D40148];
    [v22[0] setProperty:? forKey:?];
    MEMORY[0x277D82BD8](betaUpdatesCell6);
  }

  v6 = MEMORY[0x277D82BE0](v22[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v22, 0);

  return v6;
}

- (id)specifierForScanHeaderGroupWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  v9[4] = self;
  v9[3] = a2;
  v9[2] = state;
  v9[1] = descriptorState;
  v9[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUScanHeaderGroup"];
  if (!v9[0])
  {
    v9[0] = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    MEMORY[0x277D82BD8](0);
    [v9[0] setProperty:@"SUScanHeaderGroup" forKey:*MEMORY[0x277D3FFB8]];
    v4 = objc_opt_class();
    v8 = NSStringFromClass(v4);
    v5 = *MEMORY[0x277D3FFA0];
    [v9[0] setProperty:? forKey:?];
    MEMORY[0x277D82BD8](v8);
    [v9[0] setProperty:&unk_287B855D0 forKey:@"SUHeight"];
  }

  v7 = MEMORY[0x277D82BE0](v9[0]);
  objc_storeStrong(v9, 0);

  return v7;
}

- (id)specifierForScanFooterGroupWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  v9[4] = self;
  v9[3] = a2;
  v9[2] = state;
  v9[1] = descriptorState;
  v9[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUScanFooterGroup"];
  if (!v9[0])
  {
    v9[0] = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    MEMORY[0x277D82BD8](0);
    [v9[0] setProperty:@"SUScanFooterGroup" forKey:*MEMORY[0x277D3FFB8]];
    v4 = objc_opt_class();
    v8 = NSStringFromClass(v4);
    v5 = *MEMORY[0x277D3FFA0];
    [v9[0] setProperty:? forKey:?];
    MEMORY[0x277D82BD8](v8);
    [v9[0] setProperty:&unk_287B855D0 forKey:@"SUHeight"];
  }

  v7 = MEMORY[0x277D82BE0](v9[0]);
  objc_storeStrong(v9, 0);

  return v7;
}

- (id)specifierForScanStatusWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  v9[4] = self;
  v9[3] = a2;
  v9[2] = state;
  v9[1] = descriptorState;
  v9[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUScanStatusGroup"];
  if (!v9[0])
  {
    v9[0] = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    MEMORY[0x277D82BD8](0);
    [v9[0] setProperty:@"SUScanStatusGroup" forKey:*MEMORY[0x277D3FFB8]];
    [v9[0] setProperty:&unk_287B85630 forKey:@"SUHeight"];
    v4 = objc_opt_class();
    v8 = NSStringFromClass(v4);
    v5 = *MEMORY[0x277D3FFA0];
    [v9[0] setProperty:? forKey:?];
    MEMORY[0x277D82BD8](v8);
  }

  v7 = MEMORY[0x277D82BE0](v9[0]);
  objc_storeStrong(v9, 0);

  return v7;
}

- (id)specifierForScanStatusCellWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  selfCopy = self;
  v15[3] = a2;
  v15[2] = state;
  v15[1] = descriptorState;
  v15[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUScanStatusCell"];
  if (!v15[0])
  {
    v15[0] = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    MEMORY[0x277D82BD8](0);
    [v15[0] setProperty:@"SUScanStatusCell" forKey:*MEMORY[0x277D3FFB8]];
    [v15[0] setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  }

  scanCell = [(SUSUISoftwareUpdateController *)selfCopy scanCell];
  MEMORY[0x277D82BD8](scanCell);
  if (!scanCell)
  {
    v12 = [objc_alloc(MEMORY[0x277D64AB8]) initWithStyle:3 reuseIdentifier:0 specifier:?];
    [(SUSUISoftwareUpdateController *)selfCopy setScanCell:?];
    MEMORY[0x277D82BD8](v12);
    scanCell2 = [(SUSUISoftwareUpdateController *)selfCopy scanCell];
    [(SUSSoftwareUpdateScanCell *)scanCell2 setSpecifier:v15[0]];
    MEMORY[0x277D82BD8](scanCell2);
  }

  scanCell3 = [(SUSUISoftwareUpdateController *)selfCopy scanCell];
  [(SUSSoftwareUpdateScanCell *)scanCell3 setAccessibilityIdentifier:?];
  MEMORY[0x277D82BD8](scanCell3);
  [v15[0] setAccessibilityIdentifier:@"SUScanStatusCell"];
  v11 = [v15[0] propertyForKey:*MEMORY[0x277D40148]];
  MEMORY[0x277D82BD8](v11);
  if (!v11)
  {
    scanCell4 = [(SUSUISoftwareUpdateController *)selfCopy scanCell];
    v4 = *MEMORY[0x277D40148];
    [v15[0] setProperty:? forKey:?];
    MEMORY[0x277D82BD8](scanCell4);
  }

  v6 = selfCopy;
  scanCell5 = [(SUSUISoftwareUpdateController *)selfCopy scanCell];
  [SUSUISoftwareUpdateController configureScanCell:v6 withUIState:"configureScanCell:withUIState:descriptorState:" descriptorState:?];
  MEMORY[0x277D82BD8](scanCell5);
  v8 = MEMORY[0x277D82BE0](v15[0]);
  objc_storeStrong(v15, 0);

  return v8;
}

- (id)specifierForTitleGroupWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  selfCopy = self;
  v28 = a2;
  stateCopy = state;
  descriptorStateCopy = descriptorState;
  emptyGroupSpecifier = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUTitleGroup"];
  if (!emptyGroupSpecifier)
  {
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    MEMORY[0x277D82BD8](0);
    [emptyGroupSpecifier setProperty:@"SUTitleGroup" forKey:*MEMORY[0x277D3FFB8]];
  }

  v23 = 0;
  isClearingSpaceForDownload = 1;
  if (![(SUSUISoftwareUpdateController *)selfCopy shouldShowProactiveSuggestionsSpecifierForUIState:stateCopy descriptorState:descriptorStateCopy])
  {
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    v23 = 1;
    isClearingSpaceForDownload = [(SUSettingsStatefulUIManager *)manager isClearingSpaceForDownload];
  }

  if (v23)
  {
    MEMORY[0x277D82BD8](manager);
  }

  if (isClearingSpaceForDownload)
  {
    goto LABEL_24;
  }

  if (stateCopy == 4 && descriptorStateCopy == 1)
  {
    location = MEMORY[0x277D82BE0](&stru_287B79370);
    if (![(SUSUISoftwareUpdateController *)selfCopy _shouldHideTonightButton])
    {
      [emptyGroupSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"UPDATE_OPTIONS_EXPLANATION_FOOTER_TEXT"];
      v4 = [v19 localizedStringForKey:? value:? table:?];
      v5 = location;
      location = v4;
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
    }

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    sf_isInternalInstall = [currentDevice sf_isInternalInstall];
    MEMORY[0x277D82BD8](currentDevice);
    if (sf_isInternalInstall)
    {
      mEMORY[0x277D64AE0] = [MEMORY[0x277D64AE0] sharedDefaults];
      shouldBypassSystemRootWarning = [mEMORY[0x277D64AE0] shouldBypassSystemRootWarning];
      MEMORY[0x277D82BD8](mEMORY[0x277D64AE0]);
      if ((shouldBypassSystemRootWarning & 1) == 0)
      {
        v21 = 0;
        system_root_status(0, &v21);
        if (v21)
        {
          if (location)
          {
            v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", location, @"INTERNAL ONLY: Roots may be installed. Try the update again to receive the full replacement."];
            v7 = location;
            location = v6;
            MEMORY[0x277D82BD8](v7);
          }

          else
          {
            objc_storeStrong(&location, @"INTERNAL ONLY: Roots may be installed. Try the update again to receive the full replacement.");
          }
        }
      }
    }

    [emptyGroupSpecifier setProperty:location forKey:*MEMORY[0x277D3FF88]];
    objc_storeStrong(&location, 0);
    goto LABEL_25;
  }

  if (stateCopy != 4 || descriptorStateCopy != 4)
  {
LABEL_24:
    [emptyGroupSpecifier setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FD80]];
    [emptyGroupSpecifier setProperty:&stru_287B79370 forKey:*MEMORY[0x277D3FF88]];
    goto LABEL_25;
  }

  if (![(SUSUISoftwareUpdateController *)selfCopy _shouldHideTonightButton])
  {
    [emptyGroupSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"INSTALL_OPTIONS_EXPLANATION_FOOTER_TEXT"];
    v11 = [v13 localizedStringForKey:? value:? table:?];
    v8 = *MEMORY[0x277D3FF88];
    [emptyGroupSpecifier setProperty:? forKey:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
  }

LABEL_25:
  v10 = MEMORY[0x277D82BE0](emptyGroupSpecifier);
  objc_storeStrong(&emptyGroupSpecifier, 0);

  return v10;
}

- (id)specifierForTitleCellWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  selfCopy = self;
  v40 = a2;
  stateCopy = state;
  descriptorStateCopy = descriptorState;
  v37 = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUTitleCell"];
  presentingDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptor];
  if (!v37)
  {
    v37 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    MEMORY[0x277D82BD8](0);
    [v37 setProperty:@"SUTitleCell" forKey:*MEMORY[0x277D3FFB8]];
    [(SUSUISoftwareUpdateController *)selfCopy setTitleCell:0];
  }

  titleCell = [(SUSUISoftwareUpdateController *)selfCopy titleCell];
  MEMORY[0x277D82BD8](titleCell);
  if (!titleCell)
  {
    v22 = objc_alloc(MEMORY[0x277D64AC8]);
    documentation = [presentingDescriptor documentation];
    iconImage = [documentation iconImage];
    documentation2 = [presentingDescriptor documentation];
    releaseNotes = [documentation2 releaseNotes];
    v23 = [v22 initWithStyle:3 reuseIdentifier:0 specifier:0 updateIcon:iconImage showLearnMore:releaseNotes != 0 showSplomboNotes:objc_msgSend(presentingDescriptor delegate:{"isSplombo"), selfCopy}];
    [(SUSUISoftwareUpdateController *)selfCopy setTitleCell:?];
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](releaseNotes);
    MEMORY[0x277D82BD8](documentation2);
    MEMORY[0x277D82BD8](iconImage);
    MEMORY[0x277D82BD8](documentation);
  }

  titleCell2 = [(SUSUISoftwareUpdateController *)selfCopy titleCell];
  [(SUSSoftwareUpdateTitleCell *)titleCell2 setSpecifier:v37];
  MEMORY[0x277D82BD8](titleCell2);
  titleCell3 = [(SUSUISoftwareUpdateController *)selfCopy titleCell];
  documentation3 = [presentingDescriptor documentation];
  releaseNotesSummary = [documentation3 releaseNotesSummary];
  [(SUSSoftwareUpdateTitleCell *)titleCell3 setReleaseNotesSummary:?];
  MEMORY[0x277D82BD8](releaseNotesSummary);
  MEMORY[0x277D82BD8](documentation3);
  MEMORY[0x277D82BD8](titleCell3);
  titleCell4 = [(SUSUISoftwareUpdateController *)selfCopy titleCell];
  humanReadableUpdateName = [presentingDescriptor humanReadableUpdateName];
  [(SUSSoftwareUpdateTitleCell *)titleCell4 setUpdateName:?];
  MEMORY[0x277D82BD8](humanReadableUpdateName);
  MEMORY[0x277D82BD8](titleCell4);
  titleCell5 = [(SUSUISoftwareUpdateController *)selfCopy titleCell];
  [(SUSSoftwareUpdateTitleCell *)titleCell5 setAccessibilityIdentifier:@"SUTitleCell"];
  MEMORY[0x277D82BD8](titleCell5);
  titleCell6 = [(SUSUISoftwareUpdateController *)selfCopy titleCell];
  documentation4 = [presentingDescriptor documentation];
  iconImage2 = [documentation4 iconImage];
  [(SUSSoftwareUpdateTitleCell *)titleCell6 setUpdateIcon:?];
  MEMORY[0x277D82BD8](iconImage2);
  MEMORY[0x277D82BD8](documentation4);
  MEMORY[0x277D82BD8](titleCell6);
  v21 = [v37 propertyForKey:*MEMORY[0x277D40148]];
  MEMORY[0x277D82BD8](v21);
  if (!v21)
  {
    titleCell7 = [(SUSUISoftwareUpdateController *)selfCopy titleCell];
    v4 = *MEMORY[0x277D40148];
    [v37 setProperty:? forKey:?];
    MEMORY[0x277D82BD8](titleCell7);
  }

  [(SUSUISoftwareUpdateController *)selfCopy _setTitleCellSpecifierStatus:v37 descriptorState:descriptorStateCopy];
  v7 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  queue = v7;
  v29 = MEMORY[0x277D85DD0];
  v30 = -1073741824;
  v31 = 0;
  v32 = __94__SUSUISoftwareUpdateController_Specifiers__specifierForTitleCellWithUIState_descriptorState___block_invoke;
  v33 = &unk_279CB9410;
  v34 = MEMORY[0x277D82BE0](selfCopy);
  v35 = MEMORY[0x277D82BE0](presentingDescriptor);
  dispatch_async(queue, &v29);
  MEMORY[0x277D82BD8](queue);
  v9 = MEMORY[0x277D82BE0](v37);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&presentingDescriptor, 0);
  objc_storeStrong(&v37, 0);

  return v9;
}

uint64_t __94__SUSUISoftwareUpdateController_Specifiers__specifierForTitleCellWithUIState_descriptorState___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) titleCell];
  v2 = [*(a1 + 40) humanReadableUpdateName];
  [v3 setUpdateName:?];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  v7 = [*(a1 + 32) titleCell];
  v6 = [*(a1 + 40) documentation];
  v5 = [v6 iconImage];
  [v7 setUpdateIcon:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  return MEMORY[0x277D82BD8](v7);
}

- (id)specifierForUpdateOptionsWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  selfCopy = self;
  v21 = a2;
  stateCopy = state;
  descriptorStateCopy = descriptorState;
  location = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUSpecifierUpdateOptionsCell"];
  if (!location)
  {
    location = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    MEMORY[0x277D82BD8](0);
    [location setProperty:@"SUSpecifierUpdateOptionsCell" forKey:*MEMORY[0x277D3FFB8]];
    [location setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
    [(SUSUISoftwareUpdateController *)selfCopy setUpdateOptionsCell:0];
  }

  updateOptionsCell = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  MEMORY[0x277D82BD8](updateOptionsCell);
  if (!updateOptionsCell)
  {
    v12 = [objc_alloc(MEMORY[0x277D64AD0]) initWithStyle:0 reuseIdentifier:? specifier:?];
    [(SUSUISoftwareUpdateController *)selfCopy setUpdateOptionsCell:?];
    MEMORY[0x277D82BD8](v12);
    updateOptionsCell2 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
    [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell2 setSpecifier:location];
    MEMORY[0x277D82BD8](updateOptionsCell2);
    updateOptionsCell3 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
    [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell3 setAccessibilityIdentifier:@"SUSpecifierUpdateOptionsCell"];
    MEMORY[0x277D82BD8](updateOptionsCell3);
  }

  updateOptionsCell4 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  v4 = *MEMORY[0x277D40148];
  [location setProperty:? forKey:?];
  MEMORY[0x277D82BD8](updateOptionsCell4);
  v5 = [(SUSUISoftwareUpdateController *)selfCopy _setInstallButtonButtonSpecifierState:location forUIState:stateCopy descriptorState:descriptorStateCopy];
  v6 = location;
  location = v5;
  MEMORY[0x277D82BD8](v6);
  if (location)
  {
    updateOptionsCell5 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
    v16 = 0;
    isSecondaryButtonHidden = 0;
    if (([(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell5 isPrimaryButtonHidden]& 1) != 0)
    {
      updateOptionsCell6 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
      v16 = 1;
      isSecondaryButtonHidden = [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell6 isSecondaryButtonHidden];
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](updateOptionsCell6);
    }

    MEMORY[0x277D82BD8](updateOptionsCell5);
    if (isSecondaryButtonHidden)
    {
      v23 = 0;
    }

    else
    {
      if (selfCopy->_currentActivityStyle)
      {
        [(SUSUISoftwareUpdateController *)selfCopy setBusyWithActivityStyle:selfCopy->_currentActivityStyle];
      }

      v23 = MEMORY[0x277D82BE0](location);
    }
  }

  else
  {
    v23 = 0;
  }

  objc_storeStrong(&location, 0);
  v7 = v23;

  return v7;
}

- (id)specifierForProactiveSuggestionCellWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  v59 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v56 = a2;
  stateCopy = state;
  descriptorStateCopy = descriptorState;
  v53 = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUProactiveSuggestionCell"];
  if (!v53)
  {
    v53 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    MEMORY[0x277D82BD8](0);
    [v53 setProperty:@"SUProactiveSuggestionCell" forKey:*MEMORY[0x277D3FFB8]];
    [v53 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
    [(SUSUISoftwareUpdateController *)selfCopy setProactiveSuggestionCell:0];
  }

  proactiveSuggestionCell = [(SUSUISoftwareUpdateController *)selfCopy proactiveSuggestionCell];
  MEMORY[0x277D82BD8](proactiveSuggestionCell);
  if (!proactiveSuggestionCell)
  {
    v48 = [objc_alloc(MEMORY[0x277D64AA8]) initWithStyle:0 reuseIdentifier:@"SUProactiveSuggestionCell" specifier:v53];
    [(SUSUISoftwareUpdateController *)selfCopy setProactiveSuggestionCell:?];
    MEMORY[0x277D82BD8](v48);
    proactiveSuggestionCell2 = [(SUSUISoftwareUpdateController *)selfCopy proactiveSuggestionCell];
    [(SUSSoftwareUpdateProactiveSuggestionCell *)proactiveSuggestionCell2 setSpecifier:v53];
    MEMORY[0x277D82BD8](proactiveSuggestionCell2);
  }

  v47 = [v53 propertyForKey:*MEMORY[0x277D40148]];
  MEMORY[0x277D82BD8](v47);
  if (!v47)
  {
    proactiveSuggestionCell3 = [(SUSUISoftwareUpdateController *)selfCopy proactiveSuggestionCell];
    v4 = *MEMORY[0x277D40148];
    [v53 setProperty:? forKey:?];
    MEMORY[0x277D82BD8](proactiveSuggestionCell3);
  }

  v52 = [(SUSUISoftwareUpdateController *)selfCopy proactiveSuggestionTypeForUIState:stateCopy descriptorState:descriptorStateCopy];
  proactiveSuggestionCell4 = [(SUSUISoftwareUpdateController *)selfCopy proactiveSuggestionCell];
  [(SUSSoftwareUpdateProactiveSuggestionCell *)proactiveSuggestionCell4 setTitle:?];
  MEMORY[0x277D82BD8](proactiveSuggestionCell4);
  proactiveSuggestionCell5 = [(SUSUISoftwareUpdateController *)selfCopy proactiveSuggestionCell];
  [(SUSSoftwareUpdateProactiveSuggestionCell *)proactiveSuggestionCell5 setContent:&stru_287B79370];
  MEMORY[0x277D82BD8](proactiveSuggestionCell5);
  proactiveSuggestionCell6 = [(SUSUISoftwareUpdateController *)selfCopy proactiveSuggestionCell];
  [(SUSSoftwareUpdateProactiveSuggestionCell *)proactiveSuggestionCell6 setAccessibilityIdentifier:@"SUProactiveSuggestionCell"];
  MEMORY[0x277D82BD8](proactiveSuggestionCell6);
  switch(v52)
  {
    case 1uLL:
      proactiveSuggestionCell7 = [(SUSUISoftwareUpdateController *)selfCopy proactiveSuggestionCell];
      systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
      [(SUSSoftwareUpdateProactiveSuggestionCell *)proactiveSuggestionCell7 setSystemIconNamed:@"exclamationmark.triangle.fill" withTintColor:?];
      MEMORY[0x277D82BD8](systemYellowColor);
      MEMORY[0x277D82BD8](proactiveSuggestionCell7);
      proactiveSuggestionCell8 = [(SUSUISoftwareUpdateController *)selfCopy proactiveSuggestionCell];
      manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
      errorContextProvider = [(SUSettingsStatefulUIManager *)manager errorContextProvider];
      presentingDescriptorError = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptorError];
      presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
      v31 = [(SUSettingsStatefulErrorContextProvider *)errorContextProvider localizedTitleForError:presentingDescriptorError statefulDescriptor:?];
      [(SUSSoftwareUpdateProactiveSuggestionCell *)proactiveSuggestionCell8 setTitle:?];
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](presentingStatefulDescriptor);
      MEMORY[0x277D82BD8](presentingDescriptorError);
      MEMORY[0x277D82BD8](errorContextProvider);
      MEMORY[0x277D82BD8](manager);
      MEMORY[0x277D82BD8](proactiveSuggestionCell8);
      proactiveSuggestionCell9 = [(SUSUISoftwareUpdateController *)selfCopy proactiveSuggestionCell];
      manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      errorContextProvider2 = [(SUSettingsStatefulUIManager *)manager2 errorContextProvider];
      presentingDescriptorError2 = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptorError];
      presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
      v37 = [(SUSettingsStatefulErrorContextProvider *)errorContextProvider2 localizedDescriptionForError:presentingDescriptorError2 statefulDescriptor:?];
      [(SUSSoftwareUpdateProactiveSuggestionCell *)proactiveSuggestionCell9 setContent:?];
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
      MEMORY[0x277D82BD8](presentingDescriptorError2);
      MEMORY[0x277D82BD8](errorContextProvider2);
      MEMORY[0x277D82BD8](manager2);
      MEMORY[0x277D82BD8](proactiveSuggestionCell9);
      break;
    case 2uLL:
      proactiveSuggestionCell10 = [(SUSUISoftwareUpdateController *)selfCopy proactiveSuggestionCell];
      tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
      [(SUSSoftwareUpdateProactiveSuggestionCell *)proactiveSuggestionCell10 setSystemIconNamed:@"arrow.down.circle.fill" withTintColor:?];
      MEMORY[0x277D82BD8](tertiaryLabelColor);
      MEMORY[0x277D82BD8](proactiveSuggestionCell10);
      proactiveSuggestionCell11 = [(SUSUISoftwareUpdateController *)selfCopy proactiveSuggestionCell];
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v23 localizedStringForKey:@"AUTOMATIC_UPDATE_PROACTIVE_SUGGESTION_CELL_TITLE" value:? table:?];
      [(SUSSoftwareUpdateProactiveSuggestionCell *)proactiveSuggestionCell11 setTitle:?];
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](proactiveSuggestionCell11);
      proactiveSuggestionCell12 = [(SUSUISoftwareUpdateController *)selfCopy proactiveSuggestionCell];
      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"AUTOMATIC_UPDATE_PROACTIVE_SUGGESTION_CELL_CONTENT"];
      v25 = [v27 localizedStringForKey:? value:? table:?];
      [(SUSSoftwareUpdateProactiveSuggestionCell *)proactiveSuggestionCell12 setContent:?];
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](proactiveSuggestionCell12);
      break;
    case 3uLL:
      proactiveSuggestionCell13 = [(SUSUISoftwareUpdateController *)selfCopy proactiveSuggestionCell];
      systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
      [(SUSSoftwareUpdateProactiveSuggestionCell *)proactiveSuggestionCell13 setSystemIconNamed:@"checkmark.circle.fill" withTintColor:?];
      MEMORY[0x277D82BD8](systemGreenColor);
      MEMORY[0x277D82BD8](proactiveSuggestionCell13);
      proactiveSuggestionCell14 = [(SUSUISoftwareUpdateController *)selfCopy proactiveSuggestionCell];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v10 localizedStringForKey:@"UPDATE_SCHEDULED_TITLE" value:? table:?];
      [(SUSSoftwareUpdateProactiveSuggestionCell *)proactiveSuggestionCell14 setTitle:?];
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](proactiveSuggestionCell14);
      proactiveSuggestionCell15 = [(SUSUISoftwareUpdateController *)selfCopy proactiveSuggestionCell];
      v12 = MEMORY[0x277CCACA8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"UPDATE_SCHEDULED_CONTENT"];
      v16 = [v18 localizedStringForKey:? value:? table:?];
      presentingDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptor];
      humanReadableUpdateName = [presentingDescriptor humanReadableUpdateName];
      v13 = [v12 stringWithFormat:v16, humanReadableUpdateName];
      [(SUSSoftwareUpdateProactiveSuggestionCell *)proactiveSuggestionCell15 setContent:?];
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      MEMORY[0x277D82BD8](presentingDescriptor);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](proactiveSuggestionCell15);
      break;
    default:
      location = _SUSUILoggingFacility();
      if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_8_0(v58, v52);
        _os_log_error_impl(&dword_26AC94000, location, OS_LOG_TYPE_ERROR, "SUSUIProactiveSuggestionType doesn't support proactive cell for: %lu", v58, 0xCu);
      }

      objc_storeStrong(&location, 0);
      break;
  }

  v6 = MEMORY[0x277D82BE0](v53);
  objc_storeStrong(&v53, 0);
  *MEMORY[0x277D85DE8];

  return v6;
}

- (id)specifierForProactiveSuggestionGroupWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  v6[4] = self;
  v6[3] = a2;
  v6[2] = state;
  v6[1] = descriptorState;
  v6[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUProactiveSuggestionGroup"];
  if (!v6[0])
  {
    v6[0] = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    MEMORY[0x277D82BD8](0);
    [v6[0] setProperty:@"SUProactiveSuggestionGroup" forKey:*MEMORY[0x277D3FFB8]];
    [v6[0] setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  }

  v5 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)specifierForProactiveSuggestionPrimaryButtonWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  v31 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v26 = a2;
  stateCopy = state;
  descriptorStateCopy = descriptorState;
  v23 = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUProactiveSuggestionPrimaryButtonCell"];
  if (!v23)
  {
    v23 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];
    MEMORY[0x277D82BD8](0);
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInt:{-[SUSUISoftwareUpdateController isBusy](selfCopy, "isBusy") ^ 1}];
  v4 = *MEMORY[0x277D3FF38];
  [v23 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v17);
  [v23 setIdentifier:@"SUProactiveSuggestionPrimaryButtonCell"];
  v22 = [(SUSUISoftwareUpdateController *)selfCopy proactiveSuggestionTypeForUIState:stateCopy descriptorState:descriptorStateCopy];
  if (v22 != 1)
  {
    if (v22 == 2)
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v10 localizedStringForKey:@"INSTALL_ONCE_DOWNLOADED" value:&stru_287B79370 table:@"Software Update"];
      [v23 setName:?];
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      [v23 setButtonAction:sel_requestToPromoteTargetedUpdateToUserInitiatedStatus_];
      [v23 setTarget:selfCopy];
    }

    else if (v22 == 3)
    {
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v8 localizedStringForKey:@"UPDATE_NOW_INSTEAD_BUTTON" value:&stru_287B79370 table:@"Software Update"];
      [v23 setName:?];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      [v23 setButtonAction:sel_install_];
      [v23 setTarget:selfCopy];
    }

    else
    {
      v18 = _SUSUILoggingFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_8_0(v29, v22);
        _os_log_error_impl(&dword_26AC94000, v18, OS_LOG_TYPE_ERROR, "SUSUIProactiveSuggestionType doesn't support primary button for: %lu", v29, 0xCu);
      }

      objc_storeStrong(&v18, 0);
    }

    goto LABEL_17;
  }

  presentingDescriptorError = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptorError];
  v16 = [(SUSUISoftwareUpdateController *)selfCopy _errorIsInsufficientSpace:?];
  MEMORY[0x277D82BD8](presentingDescriptorError);
  if (v16)
  {
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"MANAGE_STORAGE_BUTTON"];
    v12 = [v14 localizedStringForKey:? value:? table:?];
    [v23 setName:?];
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    [v23 setButtonAction:sel_openStorage];
    [v23 setTarget:selfCopy];
LABEL_17:
    v28 = MEMORY[0x277D82BE0](v23);
    v19 = 1;
    goto LABEL_18;
  }

  location = _SUSUILoggingFacility();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    presentingDescriptorError2 = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptorError];
    __os_log_helper_16_2_2_8_32_8_64(v30, "[SUSUISoftwareUpdateController(Specifiers) specifierForProactiveSuggestionPrimaryButtonWithUIState:descriptorState:]", presentingDescriptorError2);
    _os_log_impl(&dword_26AC94000, location, v20, "%s: Can't create a button for an unknown error case: %@", v30, 0x16u);
    MEMORY[0x277D82BD8](presentingDescriptorError2);
  }

  objc_storeStrong(&location, 0);
  v28 = 0;
  v19 = 1;
LABEL_18:
  objc_storeStrong(&v23, 0);
  *MEMORY[0x277D85DE8];
  v5 = v28;

  return v5;
}

- (id)specifierForProactiveSuggestionSecondaryButtonWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15 = a2;
  stateCopy = state;
  descriptorStateCopy = descriptorState;
  v12 = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUProactiveSuggestionSecondaryButtonCell"];
  v11 = [(SUSUISoftwareUpdateController *)selfCopy proactiveSuggestionTypeForUIState:stateCopy descriptorState:descriptorStateCopy];
  if (!v12)
  {
    v12 = [MEMORY[0x277D3FAD8] deleteButtonSpecifierWithName:0 target:selfCopy action:?];
    MEMORY[0x277D82BD8](0);
    [v12 setProperty:&unk_287B855E8 forKey:*MEMORY[0x277D3FD78]];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInt:{-[SUSUISoftwareUpdateController isBusy](selfCopy, "isBusy") ^ 1}];
  v4 = *MEMORY[0x277D3FF38];
  [v12 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v9);
  [v12 setIdentifier:@"SUProactiveSuggestionSecondaryButtonCell"];
  if (v11 == 3)
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v8 localizedStringForKey:@"CANCEL_UPDATE_BUTTON" value:&stru_287B79370 table:@"Software Update"];
    [v12 setName:?];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    [v12 setButtonAction:sel_autoInstallCancelPrompt_];
    [v12 setTarget:selfCopy];
    [v12 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FE80]];
  }

  else
  {
    location = _SUSUILoggingFacility();
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_8_0(v17, v11);
      _os_log_error_impl(&dword_26AC94000, location, OS_LOG_TYPE_ERROR, "SUSUIProactiveSuggestionType doesn't support primary button for: %lu", v17, 0xCu);
    }

    objc_storeStrong(&location, 0);
  }

  v6 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v12, 0);
  *MEMORY[0x277D85DE8];

  return v6;
}

- (id)specifierForAlternateUpdateGroupWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  selfCopy = self;
  v11[3] = a2;
  v11[2] = state;
  v11[1] = descriptorState;
  v11[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUAlternateUpdateGroup"];
  if (!v11[0])
  {
    v11[0] = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    MEMORY[0x277D82BD8](0);
  }

  alsoAvailableGroupHeaderString = [(SUSUISoftwareUpdateController *)selfCopy alsoAvailableGroupHeaderString];
  [v6 setName:?];
  MEMORY[0x277D82BD8](alsoAvailableGroupHeaderString);
  [v11[0] setProperty:@"SUAlternateUpdateGroup" forKey:*MEMORY[0x277D3FFB8]];
  v8 = v11[0];
  alternateUpdateFooterString = [(SUSUISoftwareUpdateController *)selfCopy alternateUpdateFooterString];
  v4 = *MEMORY[0x277D3FF88];
  [v8 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](alternateUpdateFooterString);
  v10 = MEMORY[0x277D82BE0](v11[0]);
  objc_storeStrong(v11, 0);

  return v10;
}

- (id)specifierForAlternateUpdateCellWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  selfCopy = self;
  v23[3] = a2;
  v23[2] = state;
  v23[1] = descriptorState;
  v23[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUAlternateUpdateButton"];
  alternateUpdateButtonString = [(SUSUISoftwareUpdateController *)selfCopy alternateUpdateButtonString];
  if (!v23[0])
  {
    v19 = MEMORY[0x277D3FAD8];
    objc_opt_class();
    v23[0] = [v19 preferenceSpecifierNamed:alternateUpdateButtonString target:selfCopy set:0 get:? detail:? cell:? edit:?];
    MEMORY[0x277D82BD8](0);
    [v23[0] setProperty:@"SUAlternateUpdateButton" forKey:*MEMORY[0x277D3FFB8]];
    [(SUSUISoftwareUpdateController *)selfCopy setAlternateUpdateCell:0];
  }

  alternateUpdateCell = [(SUSUISoftwareUpdateController *)selfCopy alternateUpdateCell];
  MEMORY[0x277D82BD8](alternateUpdateCell);
  if (!alternateUpdateCell)
  {
    v17 = [objc_alloc(MEMORY[0x277D3FB38]) initWithStyle:0 reuseIdentifier:@"SUAlternateUpdateButton" specifier:v23[0]];
    [(SUSUISoftwareUpdateController *)selfCopy setAlternateUpdateCell:?];
    MEMORY[0x277D82BD8](v17);
  }

  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  [valueCellConfiguration setText:alternateUpdateButtonString];
  alternateUpdateSubTextString = [(SUSUISoftwareUpdateController *)selfCopy alternateUpdateSubTextString];
  [valueCellConfiguration setSecondaryText:?];
  MEMORY[0x277D82BD8](alternateUpdateSubTextString);
  presentingAlternateDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateDescriptor];
  documentation = [presentingAlternateDescriptor documentation];
  iconImage = [documentation iconImage];
  location = [(SUSUISoftwareUpdateController *)selfCopy tableCellImageForImage:?];
  MEMORY[0x277D82BD8](iconImage);
  MEMORY[0x277D82BD8](documentation);
  MEMORY[0x277D82BD8](presentingAlternateDescriptor);
  if (location)
  {
    [valueCellConfiguration setImage:location];
  }

  alternateUpdateCell2 = [(SUSUISoftwareUpdateController *)selfCopy alternateUpdateCell];
  [(PSTableCell *)alternateUpdateCell2 setContentConfiguration:valueCellConfiguration];
  MEMORY[0x277D82BD8](alternateUpdateCell2);
  alternateUpdateCell3 = [(SUSUISoftwareUpdateController *)selfCopy alternateUpdateCell];
  [(PSTableCell *)alternateUpdateCell3 setAccessoryType:1];
  MEMORY[0x277D82BD8](alternateUpdateCell3);
  alternateUpdateCell4 = [(SUSUISoftwareUpdateController *)selfCopy alternateUpdateCell];
  [(PSTableCell *)alternateUpdateCell4 setUserInteractionEnabled:[(SUSUISoftwareUpdateController *)selfCopy isBusy]^ 1];
  MEMORY[0x277D82BD8](alternateUpdateCell4);
  [v23[0] setProperty:&unk_287B855B8 forKey:*MEMORY[0x277D3FD68]];
  alternateUpdateCell5 = [(SUSUISoftwareUpdateController *)selfCopy alternateUpdateCell];
  [(PSTableCell *)alternateUpdateCell5 setAccessibilityIdentifier:@"SUAlternateUpdateButton"];
  MEMORY[0x277D82BD8](alternateUpdateCell5);
  v12 = [v23[0] propertyForKey:*MEMORY[0x277D40148]];
  MEMORY[0x277D82BD8](v12);
  if (!v12)
  {
    alternateUpdateCell6 = [(SUSUISoftwareUpdateController *)selfCopy alternateUpdateCell];
    v4 = *MEMORY[0x277D40148];
    [v23[0] setProperty:? forKey:?];
    MEMORY[0x277D82BD8](alternateUpdateCell6);
  }

  v6 = MEMORY[0x277D82BE0](v23[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&valueCellConfiguration, 0);
  objc_storeStrong(&alternateUpdateButtonString, 0);
  objc_storeStrong(v23, 0);

  return v6;
}

- (id)specifierForNonPromotedPrimaryUpdateGroupWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  selfCopy = self;
  v8[3] = a2;
  v8[2] = state;
  v8[1] = descriptorState;
  v8[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUNonPromotedUpdateHeaderGroup"];
  if (!v8[0])
  {
    v8[0] = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    MEMORY[0x277D82BD8](0);
    [v8[0] setProperty:@"SUNonPromotedUpdateHeaderGroup" forKey:*MEMORY[0x277D3FFB8]];
  }

  alsoAvailableGroupHeaderString = [(SUSUISoftwareUpdateController *)selfCopy alsoAvailableGroupHeaderString];
  [v5 setName:?];
  MEMORY[0x277D82BD8](alsoAvailableGroupHeaderString);
  v7 = MEMORY[0x277D82BE0](v8[0]);
  objc_storeStrong(v8, 0);

  return v7;
}

- (id)specifierForNonPromotedPrimaryUpdateCellWithUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  selfCopy = self;
  v22[3] = a2;
  v22[2] = state;
  v22[1] = descriptorState;
  v22[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUNonPromotedUpdateButton"];
  nonPromotedPreferredUpdateButtonString = [(SUSUISoftwareUpdateController *)selfCopy nonPromotedPreferredUpdateButtonString];
  if (!v22[0])
  {
    v22[0] = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:nonPromotedPreferredUpdateButtonString target:selfCopy set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    MEMORY[0x277D82BD8](0);
    [v22[0] setIdentifier:?];
    [v22[0] setProperty:@"SUNonPromotedUpdateButton" forKey:*MEMORY[0x277D3FFB8]];
    [(SUSUISoftwareUpdateController *)selfCopy setNonPromotedUpdateCell:0];
  }

  nonPromotedUpdateCell = [(SUSUISoftwareUpdateController *)selfCopy nonPromotedUpdateCell];
  MEMORY[0x277D82BD8](nonPromotedUpdateCell);
  if (!nonPromotedUpdateCell)
  {
    v17 = [objc_alloc(MEMORY[0x277D3FB38]) initWithStyle:0 reuseIdentifier:@"SUNonPromotedUpdateButton" specifier:v22[0]];
    [(SUSUISoftwareUpdateController *)selfCopy setNonPromotedUpdateCell:?];
    MEMORY[0x277D82BD8](v17);
  }

  valueCellConfiguration = [MEMORY[0x277D756E0] valueCellConfiguration];
  [valueCellConfiguration setText:nonPromotedPreferredUpdateButtonString];
  alternateUpdateSubTextString = [(SUSUISoftwareUpdateController *)selfCopy alternateUpdateSubTextString];
  [valueCellConfiguration setSecondaryText:?];
  MEMORY[0x277D82BD8](alternateUpdateSubTextString);
  presentingDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptor];
  documentation = [presentingDescriptor documentation];
  iconImage = [documentation iconImage];
  location = [(SUSUISoftwareUpdateController *)selfCopy tableCellImageForImage:?];
  MEMORY[0x277D82BD8](iconImage);
  MEMORY[0x277D82BD8](documentation);
  MEMORY[0x277D82BD8](presentingDescriptor);
  if (location)
  {
    [valueCellConfiguration setImage:location];
  }

  nonPromotedUpdateCell2 = [(SUSUISoftwareUpdateController *)selfCopy nonPromotedUpdateCell];
  [(PSTableCell *)nonPromotedUpdateCell2 setContentConfiguration:valueCellConfiguration];
  MEMORY[0x277D82BD8](nonPromotedUpdateCell2);
  nonPromotedUpdateCell3 = [(SUSUISoftwareUpdateController *)selfCopy nonPromotedUpdateCell];
  [(PSTableCell *)nonPromotedUpdateCell3 setAccessoryType:1];
  MEMORY[0x277D82BD8](nonPromotedUpdateCell3);
  nonPromotedUpdateCell4 = [(SUSUISoftwareUpdateController *)selfCopy nonPromotedUpdateCell];
  [(PSTableCell *)nonPromotedUpdateCell4 setUserInteractionEnabled:[(SUSUISoftwareUpdateController *)selfCopy isBusy]^ 1];
  MEMORY[0x277D82BD8](nonPromotedUpdateCell4);
  [v22[0] setProperty:&unk_287B855B8 forKey:*MEMORY[0x277D3FD68]];
  nonPromotedUpdateCell5 = [(SUSUISoftwareUpdateController *)selfCopy nonPromotedUpdateCell];
  [(PSTableCell *)nonPromotedUpdateCell5 setAccessibilityIdentifier:@"SUNonPromotedUpdateButton"];
  MEMORY[0x277D82BD8](nonPromotedUpdateCell5);
  v12 = [v22[0] propertyForKey:*MEMORY[0x277D40148]];
  MEMORY[0x277D82BD8](v12);
  if (!v12)
  {
    nonPromotedUpdateCell6 = [(SUSUISoftwareUpdateController *)selfCopy nonPromotedUpdateCell];
    v4 = *MEMORY[0x277D40148];
    [v22[0] setProperty:? forKey:?];
    MEMORY[0x277D82BD8](nonPromotedUpdateCell6);
  }

  v6 = MEMORY[0x277D82BE0](v22[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&valueCellConfiguration, 0);
  objc_storeStrong(&nonPromotedPreferredUpdateButtonString, 0);
  objc_storeStrong(v22, 0);

  return v6;
}

- (BOOL)shouldShowComingSoonSpecifierForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  v5 = 0;
  if (state >= 3)
  {
    return [(SUSUISoftwareUpdateController *)self shouldShowComingSoonTip];
  }

  return v5;
}

- (BOOL)shouldShowBetaUpdatesCellSpecifierForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  if (state <= 1)
  {
    return 0;
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    return 0;
  }

  mEMORY[0x277D4D310] = [MEMORY[0x277D4D310] sharedManager];
  v6 = [mEMORY[0x277D4D310] canCurrentDeviceEnrollInBetaUpdates] & 1;
  MEMORY[0x277D82BD8](mEMORY[0x277D4D310]);
  return v6;
}

- (BOOL)shouldShowEnforcedUpdateForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  v8 = 0;
  v6 = 0;
  isValidDeclaration = 0;
  if (state == 4)
  {
    isValidDeclaration = 0;
    if (![(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorPromotedAsAlternate])
    {
      manager = [(SUSUISoftwareUpdateController *)self manager];
      v8 = 1;
      ddmDeclaration = [(SUSettingsStatefulUIManager *)manager ddmDeclaration];
      v6 = 1;
      isValidDeclaration = [(SUCoreDDMDeclaration *)ddmDeclaration isValidDeclaration];
    }
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](ddmDeclaration);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](manager);
  }

  return isValidDeclaration & 1;
}

- (BOOL)shouldShowDeferredUpdateGroupForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  v9 = 0;
  v7 = 0;
  v6 = 0;
  if (state == 4)
  {
    v6 = 0;
    if (![(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorPromotedAsAlternate])
    {
      manager = [(SUSUISoftwareUpdateController *)self manager];
      v9 = 1;
      hasSUPathRestrictions = 1;
      if (![(SUSettingsStatefulUIManager *)manager isDelayingUpdate])
      {
        manager2 = [(SUSUISoftwareUpdateController *)self manager];
        v7 = 1;
        hasSUPathRestrictions = [(SUSettingsStatefulUIManager *)manager2 hasSUPathRestrictions];
      }

      v6 = hasSUPathRestrictions;
    }
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](manager2);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](manager);
  }

  return v6 & 1;
}

- (BOOL)shouldShowScanGroupSpecifierForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  v5 = 1;
  if (state > 3)
  {
    return [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorPromotedAsAlternate];
  }

  return v5;
}

- (BOOL)shouldShowScanStatusSpecifierForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  v5 = 1;
  if (state > 3)
  {
    return [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorPromotedAsAlternate];
  }

  return v5;
}

- (BOOL)shouldShowTitleGroupSpecifierForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  LOBYTE(v5) = 0;
  if (state == 4)
  {
    v5 = ![(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorPromotedAsAlternate];
  }

  return v5 & 1;
}

- (BOOL)shouldShowTitleCellSpecifierForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  LOBYTE(v5) = 0;
  if (state == 4)
  {
    v5 = ![(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorPromotedAsAlternate];
  }

  return v5 & 1;
}

- (BOOL)shouldShowUpdateOptionsCellSpecifierForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  if (state <= 3 || [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorPromotedAsAlternate])
  {
    return 0;
  }

  presentingDescriptorError = [(SUSUISoftwareUpdateController *)self presentingDescriptorError];
  v16 = 0;
  v14 = 0;
  v12 = 0;
  v10 = 0;
  LOBYTE(v7) = 0;
  if (presentingDescriptorError)
  {
    manager = [(SUSUISoftwareUpdateController *)self manager];
    v16 = 1;
    errorContextProvider = [(SUSettingsStatefulUIManager *)manager errorContextProvider];
    v14 = 1;
    presentingDescriptorError2 = [(SUSUISoftwareUpdateController *)self presentingDescriptorError];
    v12 = 1;
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptor];
    v10 = 1;
    v7 = ![(SUSettingsStatefulErrorContextProvider *)errorContextProvider shouldEnableUpdateButtonForError:presentingDescriptorError2 statefulDescriptor:?];
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](presentingDescriptorError2);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](errorContextProvider);
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](manager);
  }

  MEMORY[0x277D82BD8](presentingDescriptorError);
  if (v7)
  {
    return 0;
  }

  v8 = 0;
  isTargetedUpdateScheduledForAutoInstall = 0;
  if (descriptorState == 4)
  {
    isTargetedUpdateScheduledForAutoInstall = 0;
    if ([(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorIsTargetedUpdate])
    {
      manager2 = [(SUSUISoftwareUpdateController *)self manager];
      v8 = 1;
      isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager2 isTargetedUpdateScheduledForAutoInstall];
    }
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](manager2);
  }

  return !isTargetedUpdateScheduledForAutoInstall;
}

- (BOOL)shouldShowProactiveSuggestionsPrimaryButtonSpecifierForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  v9 = [(SUSUISoftwareUpdateController *)self proactiveSuggestionTypeForUIState:state descriptorState:descriptorState];
  if (v9 != 1)
  {
    return v9 != 0;
  }

  presentingDescriptorError = [(SUSUISoftwareUpdateController *)self presentingDescriptorError];
  v7 = 0;
  v6 = 0;
  if (presentingDescriptorError)
  {
    presentingDescriptorError2 = [(SUSUISoftwareUpdateController *)self presentingDescriptorError];
    v7 = 1;
    v6 = [(SUSUISoftwareUpdateController *)self _errorIsInsufficientSpace:?];
  }

  v11 = v6;
  if (v7)
  {
    MEMORY[0x277D82BD8](presentingDescriptorError2);
  }

  MEMORY[0x277D82BD8](presentingDescriptorError);
  return v11;
}

- (BOOL)shouldShowAlternateUpdateCellForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptor];
  v12 = 0;
  v10 = 0;
  v8 = 0;
  LOBYTE(v7) = 0;
  if ([presentingStatefulDescriptor currentState] >= 4)
  {
    manager = [(SUSUISoftwareUpdateController *)self manager];
    v12 = 1;
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    v10 = 1;
    downloadOptions = [(SUDownload *)currentDownload downloadOptions];
    v8 = 1;
    v7 = [(SUDownloadOptions *)downloadOptions isAutoDownload]^ 1;
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](downloadOptions);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](currentDownload);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](manager);
  }

  MEMORY[0x277D82BD8](presentingStatefulDescriptor);
  if (v7)
  {
    return 0;
  }

  LOBYTE(v5) = 0;
  if ([(SUSUISoftwareUpdateController *)self hasAlternateUpdate])
  {
    LOBYTE(v5) = 0;
    if (state == 4)
    {
      v5 = ![(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorPromotedAsAlternate];
    }
  }

  return v5 & 1;
}

- (BOOL)shouldShowNonPromotedCellForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  v5 = 0;
  if (state == 4)
  {
    return [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorPromotedAsAlternate];
  }

  return v5;
}

- (id)_setInstallButtonButtonSpecifierState:(id)state forUIState:(unint64_t)iState descriptorState:(unint64_t)descriptorState
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, state);
  iStateCopy = iState;
  descriptorStateCopy = descriptorState;
  if (location[0])
  {
    if ([(SUSUISoftwareUpdateController *)selfCopy shouldShowUpdateOptionsCellSpecifierForUIState:iStateCopy descriptorState:descriptorStateCopy])
    {
      v12 = 0;
      [(SUSUISoftwareUpdateController *)selfCopy setupInstallButton:location[0] forUIState:iStateCopy descriptorState:descriptorStateCopy shouldRemove:&v12];
      updateOptionsCell = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
      [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell setEnabled:[(SUSUISoftwareUpdateController *)selfCopy isBusy]^ 1];
      MEMORY[0x277D82BD8](updateOptionsCell);
      if (v12)
      {
        objc_storeStrong(location, 0);
      }
    }

    v21 = MEMORY[0x277D82BE0](location[0]);
    v13 = 1;
  }

  else
  {
    v16 = _SUSUILoggingFacility();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      log = v16;
      type = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_impl(&dword_26AC94000, log, type, "Unable to set install button state on nil install button specifier", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    v21 = 0;
    v13 = 1;
  }

  objc_storeStrong(location, 0);
  v5 = v21;

  return v5;
}

- (void)clearInstallButton:(id)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  updateOptionsCell = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell setEnabled:0];
  MEMORY[0x277D82BD8](updateOptionsCell);
  updateOptionsCell2 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell2 setHidden:1];
  MEMORY[0x277D82BD8](updateOptionsCell2);
  updateOptionsCell3 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell3 setActivityIndicatorDisplayStyle:0];
  MEMORY[0x277D82BD8](updateOptionsCell3);
  updateOptionsCell4 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell4 setPrimaryButtonText:?];
  MEMORY[0x277D82BD8](updateOptionsCell4);
  updateOptionsCell5 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell5 setSecondaryButtonText:&stru_287B79370];
  MEMORY[0x277D82BD8](updateOptionsCell5);
  updateOptionsCell6 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell6 setPrimaryButtonActionHandler:0];
  MEMORY[0x277D82BD8](updateOptionsCell6);
  updateOptionsCell7 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell7 setPrimaryButtonLongTapActionHandler:0];
  MEMORY[0x277D82BD8](updateOptionsCell7);
  updateOptionsCell8 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell8 setSecondaryButtonActionHandler:0];
  MEMORY[0x277D82BD8](updateOptionsCell8);
  objc_storeStrong(location, 0);
}

- (void)setupInstallButton:(id)button forUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState shouldRemove:(BOOL *)remove
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  [(SUSUISoftwareUpdateController *)selfCopy clearInstallButton:location[0]];
  if (state == 4)
  {
    switch(descriptorState)
    {
      case 1uLL:
        [(SUSUISoftwareUpdateController *)selfCopy setInstallButtonDownloadAndInstall:location[0] shouldRemove:remove];
        break;
      case 2uLL:
        [(SUSUISoftwareUpdateController *)selfCopy setInstallButtonDownloading:location[0] shouldRemove:remove];
        break;
      case 3uLL:
        [(SUSUISoftwareUpdateController *)selfCopy setInstallButtonStalled:location[0] shouldRemove:remove];
        break;
      case 4uLL:
        [(SUSUISoftwareUpdateController *)selfCopy setInstallButtonReadyToInstall:location[0]];
        break;
      case 5uLL:
        [(SUSUISoftwareUpdateController *)selfCopy setInstallButtonInstalling:location[0]];
        break;
    }

    v18 = 0;
    v16 = 0;
    v14 = 0;
    v12 = 0;
    v10 = 0;
    LOBYTE(v6) = 0;
    if (remove)
    {
      presentingDescriptorError = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptorError];
      v18 = 1;
      LOBYTE(v6) = 0;
      if (presentingDescriptorError)
      {
        manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
        v16 = 1;
        errorContextProvider = [(SUSettingsStatefulUIManager *)manager errorContextProvider];
        v14 = 1;
        presentingDescriptorError2 = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptorError];
        v12 = 1;
        presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
        v10 = 1;
        v6 = ![(SUSettingsStatefulErrorContextProvider *)errorContextProvider shouldEnableUpdateButtonForError:presentingDescriptorError2 statefulDescriptor:?];
      }
    }

    if (v10)
    {
      MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    }

    if (v12)
    {
      MEMORY[0x277D82BD8](presentingDescriptorError2);
    }

    if (v14)
    {
      MEMORY[0x277D82BD8](errorContextProvider);
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](manager);
    }

    if (v18)
    {
      MEMORY[0x277D82BD8](presentingDescriptorError);
    }

    if (v6)
    {
      *remove = 1;
    }
  }

  else
  {
    *remove = 1;
  }

  objc_storeStrong(location, 0);
}

- (BOOL)clientIsSUSettings
{
  v5[2] = self;
  v5[1] = a2;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5[0] = [mainBundle bundleIdentifier];
  MEMORY[0x277D82BD8](mainBundle);
  v4 = [v5[0] isEqualToString:@"com.apple.Preferences"];
  objc_storeStrong(v5, 0);
  return v4;
}

- (void)setInstallButtonStalled:(id)stalled shouldRemove:(BOOL *)remove
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, stalled);
  if (PSIsRunningInAssistant())
  {
LABEL_2:
    [(SUSUISoftwareUpdateController *)selfCopy setInstallButtonPaused:location[0]];
    goto LABEL_14;
  }

  if ([(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptorIsTargetedUpdate])
  {
    v10 = 0;
    v8 = 1;
    if ([(SUSUISoftwareUpdateController *)selfCopy clientIsSUSettings])
    {
      presentingDescriptorError = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptorError];
      v10 = 1;
      v8 = presentingDescriptorError != 0;
    }

    if (v10)
    {
      MEMORY[0x277D82BD8](presentingDescriptorError);
    }

    if (v8)
    {
      goto LABEL_2;
    }

    if (remove)
    {
      *remove = 1;
    }
  }

  else
  {
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    downloadOptions = [(SUDownload *)currentDownload downloadOptions];
    isAutoDownload = [(SUDownloadOptions *)downloadOptions isAutoDownload];
    MEMORY[0x277D82BD8](downloadOptions);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    if (isAutoDownload)
    {
      [(SUSUISoftwareUpdateController *)selfCopy setInstallButtonDownloadAndInstall:location[0]];
    }
  }

LABEL_14:
  objc_storeStrong(location, 0);
}

- (void)setInstallButtonDownloading:(id)downloading shouldRemove:(BOOL *)remove
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, downloading);
  removeCopy = remove;
  manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
  currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
  progress = [(SUDownload *)currentDownload progress];
  phase = [(SUOperationProgress *)progress phase];
  MEMORY[0x277D82BD8](progress);
  MEMORY[0x277D82BD8](currentDownload);
  MEMORY[0x277D82BD8](manager);
  if (PSIsRunningInAssistant())
  {
    [(SUSUISoftwareUpdateController *)selfCopy downloadingButtonForSpecifier:location[0]];
  }

  else if ([(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptorIsTargetedUpdate])
  {
    v9 = 0;
    v4 = 1;
    if (([phase isEqualToString:*MEMORY[0x277D64A00]] & 1) == 0)
    {
      v10 = getkSUDownloadPhasePreparingForInstallation_0();
      v9 = 1;
      v4 = 1;
      if (([phase isEqualToString:?] & 1) == 0)
      {
        v4 = 1;
        if (([phase isEqualToString:*MEMORY[0x277D64A08]] & 1) == 0)
        {
          v4 = [(SUSUISoftwareUpdateController *)selfCopy waitingOnSUAssetDownload:phase];
        }
      }
    }

    if (v9)
    {
      MEMORY[0x277D82BD8](v10);
    }

    if ((v4 & 1) != 0 && removeCopy)
    {
      *removeCopy = 1;
    }
  }

  else
  {
    [(SUSUISoftwareUpdateController *)selfCopy setInstallButtonDownloadAndInstall:location[0]];
  }

  objc_storeStrong(&phase, 0);
  objc_storeStrong(location, 0);
}

- (void)setInstallButtonReadyToInstall:(id)install
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  if ([(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptorIsTargetedUpdate]|| (PSIsRunningInAssistant() & 1) != 0)
  {
    [(SUSUISoftwareUpdateController *)selfCopy setInstallButtonInstallNow:location[0]];
  }

  else
  {
    [(SUSUISoftwareUpdateController *)selfCopy setInstallButtonDownloadAndInstall:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)setInstallButtonInstalling:(id)installing
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, installing);
  if ([(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptorIsTargetedUpdate]|| (PSIsRunningInAssistant() & 1) != 0)
  {
    [(SUSUISoftwareUpdateController *)selfCopy setInstallButtonInstallingForSpecifier:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)setInstallButtonDownloadAndInstall:(id)install
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  [(SUSUISoftwareUpdateController *)selfCopy setInstallButtonDownloadAndInstall:location[0] shouldRemove:0];
  objc_storeStrong(location, 0);
}

- (void)setInstallButtonDownloadAndInstall:(id)install shouldRemove:(BOOL *)remove
{
  v69[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  removeCopy = remove;
  v65 = 0;
  objc_initWeak(&from, selfCopy);
  manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
  isClearingSpaceForDownload = [(SUSettingsStatefulUIManager *)manager isClearingSpaceForDownload];
  MEMORY[0x277D82BD8](manager);
  if (isClearingSpaceForDownload)
  {
    v65 = 1;
  }

  else
  {
    updateOptionsCell = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = [v31 localizedStringForKey:@"UPDATE_NOW" value:&stru_287B79370 table:@"Software Update"];
    [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell setPrimaryButtonText:?];
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](updateOptionsCell);
    updateOptionsCell2 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
    v58 = MEMORY[0x277D85DD0];
    v59 = -1073741824;
    v60 = 0;
    v61 = __93__SUSUISoftwareUpdateController_Specifiers__setInstallButtonDownloadAndInstall_shouldRemove___block_invoke;
    v62 = &unk_279CBBE90;
    objc_copyWeak(v63, &from);
    [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell2 setPrimaryButtonActionHandler:&v58];
    MEMORY[0x277D82BD8](updateOptionsCell2);
    _shouldHideTonightButton = [(SUSUISoftwareUpdateController *)selfCopy _shouldHideTonightButton];
    if (!_shouldHideTonightButton)
    {
      updateOptionsCell3 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [v27 localizedStringForKey:@"UPDATE_TONIGHT" value:&stru_287B79370 table:@"Software Update"];
      [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell3 setSecondaryButtonText:?];
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](updateOptionsCell3);
      updateOptionsCell4 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
      v51 = MEMORY[0x277D85DD0];
      v52 = -1073741824;
      v53 = 0;
      v54 = __93__SUSUISoftwareUpdateController_Specifiers__setInstallButtonDownloadAndInstall_shouldRemove___block_invoke_2;
      v55 = &unk_279CBBE90;
      objc_copyWeak(&v56, &from);
      [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell4 setSecondaryButtonActionHandler:&v51];
      MEMORY[0x277D82BD8](updateOptionsCell4);
      v23 = MEMORY[0x277D75710];
      v24 = MEMORY[0x277D750C8];
      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = [v22 localizedStringForKey:@"UPDATE_TONIGHT" value:&stru_287B79370 table:@"Software Update"];
      v20 = [MEMORY[0x277D755B8] systemImageNamed:@"clock"];
      v44 = MEMORY[0x277D85DD0];
      v45 = -1073741824;
      v46 = 0;
      v47 = __93__SUSUISoftwareUpdateController_Specifiers__setInstallButtonDownloadAndInstall_shouldRemove___block_invoke_3;
      v48 = &unk_279CBBEB8;
      objc_copyWeak(&v49, &from);
      v18 = [v24 actionWithTitle:v21 image:v20 identifier:@"SUUpdateTonight" handler:&v44];
      v69[0] = v18;
      v19 = MEMORY[0x277D750C8];
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v17 localizedStringForKey:@"DOWNLOAD_ONLY" value:&stru_287B79370 table:@"Software Update"];
      v15 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.down.circle"];
      v38 = MEMORY[0x277D85DD0];
      v39 = -1073741824;
      v40 = 0;
      v41 = __93__SUSUISoftwareUpdateController_Specifiers__setInstallButtonDownloadAndInstall_shouldRemove___block_invoke_4;
      v42 = &unk_279CBBEB8;
      objc_copyWeak(&v43, &from);
      v14 = [v19 actionWithTitle:v16 image:v15 identifier:@"SUDownloadOnly" handler:&v38];
      v69[1] = v14;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
      v50 = [v23 menuWithTitle:&stru_287B79370 image:0 identifier:0 options:33 children:?];
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v22);
      updateOptionsCell5 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
      [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell5 setSecondaryButtonMenu:v50];
      MEMORY[0x277D82BD8](updateOptionsCell5);
      objc_storeStrong(&v50, 0);
      objc_destroyWeak(&v43);
      objc_destroyWeak(&v49);
      objc_destroyWeak(&v56);
    }

    updateOptionsCell6 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
    [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell6 setEnabled:1];
    MEMORY[0x277D82BD8](updateOptionsCell6);
    updateOptionsCell7 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
    [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell7 setHidden:0];
    MEMORY[0x277D82BD8](updateOptionsCell7);
    if (_shouldHideTonightButton)
    {
      updateOptionsCell8 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
      [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell8 setSecondaryButtonEnabled:0];
      MEMORY[0x277D82BD8](updateOptionsCell8);
      updateOptionsCell9 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
      [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell9 setSecondaryButtonHidden:1];
      MEMORY[0x277D82BD8](updateOptionsCell9);
    }

    presentingDescriptorError = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptorError];
    MEMORY[0x277D82BD8](presentingDescriptorError);
    if (presentingDescriptorError)
    {
      v6 = selfCopy;
      v36 = 0;
      presentingDescriptorError2 = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptorError];
      LOBYTE(v4) = 1;
      if (![(SUSUISoftwareUpdateController *)v6 _errorIsInsufficientSpace:?])
      {
        presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
        v36 = 1;
        v4 = [presentingStatefulDescriptor updateDownloadable] ^ 1;
      }

      v65 = v4 & 1;
      if (v36)
      {
        MEMORY[0x277D82BD8](presentingStatefulDescriptor);
      }

      MEMORY[0x277D82BD8](presentingDescriptorError2);
    }

    objc_destroyWeak(v63);
  }

  if (removeCopy)
  {
    *removeCopy = v65 & 1;
  }

  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __93__SUSUISoftwareUpdateController_Specifiers__setInstallButtonDownloadAndInstall_shouldRemove___block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    v1 = [location[0] updateOptionsCell];
    [location[0] downloadAndInstall:?];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(location, 0);
}

void __93__SUSUISoftwareUpdateController_Specifiers__setInstallButtonDownloadAndInstall_shouldRemove___block_invoke_2(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    v1 = [location[0] updateOptionsCell];
    [location[0] downloadAndInstallTonight:?];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(location, 0);
}

void __93__SUSUISoftwareUpdateController_Specifiers__setInstallButtonDownloadAndInstall_shouldRemove___block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4[1] = a1;
  v4[0] = objc_loadWeakRetained(a1 + 4);
  if (v4[0])
  {
    v2 = [v4[0] updateOptionsCell];
    [v4[0] downloadAndInstallTonight:?];
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(v4, 0);
  objc_storeStrong(location, 0);
}

void __93__SUSUISoftwareUpdateController_Specifiers__setInstallButtonDownloadAndInstall_shouldRemove___block_invoke_4(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4[1] = a1;
  v4[0] = objc_loadWeakRetained(a1 + 4);
  if (v4[0])
  {
    v2 = [v4[0] updateOptionsCell];
    [v4[0] downloadOnly:?];
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(v4, 0);
  objc_storeStrong(location, 0);
}

- (void)setInstallButtonPaused:(id)paused
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, paused);
  updateOptionsCell = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell setPrimaryButtonHidden:0];
  MEMORY[0x277D82BD8](updateOptionsCell);
  updateOptionsCell2 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"PAUSED" value:&stru_287B79370 table:@"Software Update"];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell2 setPrimaryButtonText:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](updateOptionsCell2);
  objc_storeStrong(location, 0);
}

- (void)downloadingButtonForSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  updateOptionsCell = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell setPrimaryButtonHidden:0];
  MEMORY[0x277D82BD8](updateOptionsCell);
  updateOptionsCell2 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"DOWNLOADING_IN_PROGRESS" value:&stru_287B79370 table:@"Software Update"];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell2 setPrimaryButtonText:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](updateOptionsCell2);
  objc_storeStrong(location, 0);
}

- (void)setInstallButtonDeleted:(id)deleted
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, deleted);
  updateOptionsCell = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell setPrimaryButtonHidden:0];
  MEMORY[0x277D82BD8](updateOptionsCell);
  updateOptionsCell2 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"DELETED" value:&stru_287B79370 table:@"Software Update"];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell2 setPrimaryButtonText:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](updateOptionsCell2);
  objc_storeStrong(location, 0);
}

- (void)setInstallButtonInstallNow:(id)now
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, now);
  objc_initWeak(&from, selfCopy);
  updateOptionsCell = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v15 localizedStringForKey:@"INSTALL_NOW" value:&stru_287B79370 table:@"Software Update"];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell setPrimaryButtonText:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](updateOptionsCell);
  updateOptionsCell2 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  v32 = MEMORY[0x277D85DD0];
  v33 = -1073741824;
  v34 = 0;
  v35 = __72__SUSUISoftwareUpdateController_Specifiers__setInstallButtonInstallNow___block_invoke;
  v36 = &unk_279CBBE90;
  objc_copyWeak(v37, &from);
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell2 setPrimaryButtonActionHandler:&v32];
  MEMORY[0x277D82BD8](updateOptionsCell2);
  _shouldHideTonightButton = [(SUSUISoftwareUpdateController *)selfCopy _shouldHideTonightButton];
  if (!_shouldHideTonightButton)
  {
    updateOptionsCell3 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v11 localizedStringForKey:@"INSTALL_TONIGHT" value:&stru_287B79370 table:@"Software Update"];
    [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell3 setSecondaryButtonText:?];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](updateOptionsCell3);
    updateOptionsCell4 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
    v25 = MEMORY[0x277D85DD0];
    v26 = -1073741824;
    v27 = 0;
    v28 = __72__SUSUISoftwareUpdateController_Specifiers__setInstallButtonInstallNow___block_invoke_2;
    v29 = &unk_279CBBE90;
    objc_copyWeak(&v30, &from);
    [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell4 setSecondaryButtonActionHandler:&v25];
    MEMORY[0x277D82BD8](updateOptionsCell4);
    objc_destroyWeak(&v30);
  }

  updateOptionsCell5 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  v23 = 0;
  v21 = 0;
  v19 = 0;
  v17 = 0;
  presentingDescriptorError = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptorError];
  v7 = 1;
  if (!presentingDescriptorError)
  {
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    v23 = 1;
    errorContextProvider = [(SUSettingsStatefulUIManager *)manager errorContextProvider];
    v21 = 1;
    presentingDescriptorError2 = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptorError];
    v19 = 1;
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    v17 = 1;
    v7 = [(SUSettingsStatefulErrorContextProvider *)errorContextProvider shouldIgnoreUpdateError:presentingDescriptorError2 withStatefulDescriptor:?];
  }

  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell5 setEnabled:v7 & 1];
  if (v17)
  {
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](presentingDescriptorError2);
  }

  if (v21)
  {
    MEMORY[0x277D82BD8](errorContextProvider);
  }

  if (v23)
  {
    MEMORY[0x277D82BD8](manager);
  }

  MEMORY[0x277D82BD8](presentingDescriptorError);
  MEMORY[0x277D82BD8](updateOptionsCell5);
  updateOptionsCell6 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell6 setHidden:0];
  MEMORY[0x277D82BD8](updateOptionsCell6);
  if (_shouldHideTonightButton)
  {
    updateOptionsCell7 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
    [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell7 setSecondaryButtonEnabled:0];
    MEMORY[0x277D82BD8](updateOptionsCell7);
    updateOptionsCell8 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
    [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell8 setSecondaryButtonHidden:1];
    MEMORY[0x277D82BD8](updateOptionsCell8);
  }

  objc_destroyWeak(v37);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

void __72__SUSUISoftwareUpdateController_Specifiers__setInstallButtonInstallNow___block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    v1 = [location[0] updateOptionsCell];
    [location[0] install:?];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(location, 0);
}

void __72__SUSUISoftwareUpdateController_Specifiers__setInstallButtonInstallNow___block_invoke_2(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    v1 = [location[0] updateOptionsCell];
    [location[0] installTonight:?];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(location, 0);
}

- (void)setInstallButtonInstallingForSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  updateOptionsCell = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell setPrimaryButtonHidden:0];
  MEMORY[0x277D82BD8](updateOptionsCell);
  updateOptionsCell2 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"INSTALLING" value:&stru_287B79370 table:@"Software Update"];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell2 setPrimaryButtonText:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](updateOptionsCell2);
  updateOptionsCell3 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell3 setActivityIndicatorDisplayStyle:1];
  MEMORY[0x277D82BD8](updateOptionsCell3);
  objc_storeStrong(location, 0);
}

- (void)setInstallButtonInstalledForSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  updateOptionsCell = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell setPrimaryButtonHidden:0];
  MEMORY[0x277D82BD8](updateOptionsCell);
  updateOptionsCell2 = [(SUSUISoftwareUpdateController *)selfCopy updateOptionsCell];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"INSTALLING" value:&stru_287B79370 table:@"Software Update"];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell2 setPrimaryButtonText:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](updateOptionsCell2);
  objc_storeStrong(location, 0);
}

- (id)alternateUpdateFooterString
{
  selfCopy = self;
  v22[1] = a2;
  v22[0] = 0;
  presentingDescriptor = [(SUSUISoftwareUpdateController *)self presentingDescriptor];
  productVersion = [presentingDescriptor productVersion];
  MEMORY[0x277D82BD8](presentingDescriptor);
  presentingAlternateDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateDescriptor];
  location = [presentingAlternateDescriptor productVersion];
  MEMORY[0x277D82BD8](presentingAlternateDescriptor);
  if (productVersion && location)
  {
    v16 = [location compare:productVersion options:64];
    if (v16 == -1)
    {
      v19 = 0;
    }

    else if (v16)
    {
      v19 = v16 == 1;
    }

    else
    {
      presentingAlternateDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateDescriptor];
      productBuildVersion = [presentingAlternateDescriptor2 productBuildVersion];
      presentingDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptor];
      productBuildVersion2 = [presentingDescriptor2 productBuildVersion];
      v19 = [productBuildVersion compare:? options:?] == 1;
      MEMORY[0x277D82BD8](productBuildVersion2);
      MEMORY[0x277D82BD8](presentingDescriptor2);
      MEMORY[0x277D82BD8](productBuildVersion);
      MEMORY[0x277D82BD8](presentingAlternateDescriptor2);
    }

    if (!v19)
    {
      v6 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"ALTERNATE_UPDATE_FOOTER_NOT_LATEST"];
      v9 = [v11 localizedStringForKey:? value:? table:?];
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      systemVersion = [currentDevice systemVersion];
      v2 = [v6 stringWithFormat:v9, systemVersion];
      v3 = v22[0];
      v22[0] = v2;
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](systemVersion);
      MEMORY[0x277D82BD8](currentDevice);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
    }
  }

  v5 = MEMORY[0x277D82BE0](v22[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&productVersion, 0);
  objc_storeStrong(v22, 0);

  return v5;
}

- (id)majorOSVersionString
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  systemVersion = [currentDevice systemVersion];
  v6 = [(SUSUISoftwareUpdateController *)self majorOSVersionStringForBuildVersion:?];
  MEMORY[0x277D82BD8](systemVersion);
  MEMORY[0x277D82BD8](currentDevice);

  return v6;
}

- (id)majorOSVersionStringForBuildVersion:(id)version
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v8 = 0;
  if (location[0])
  {
    v7 = [location[0] componentsSeparatedByString:@"."];
    firstObject = [v7 firstObject];
    v4 = v8;
    v8 = firstObject;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v7);
  }

  v6 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)alternateUpdateButtonString
{
  if ([(SUSUISoftwareUpdateController *)self presentingAlternateDescriptorUpgradeType]== 2)
  {
    v3 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"UPGRADE_TO"];
    v7 = [v9 localizedStringForKey:? value:? table:?];
    presentingAlternateDescriptor = [(SUSUISoftwareUpdateController *)self presentingAlternateDescriptor];
    productVersion = [presentingAlternateDescriptor productVersion];
    v4 = [(SUSUISoftwareUpdateController *)self majorOSVersionStringForBuildVersion:?];
    alternateUpdateVersionString = [v3 stringWithFormat:v7, v4];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](productVersion);
    MEMORY[0x277D82BD8](presentingAlternateDescriptor);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    alternateUpdateVersionString = [(SUSUISoftwareUpdateController *)self alternateUpdateVersionString];
  }

  return alternateUpdateVersionString;
}

- (id)alternateUpdateSubTextString
{
  manager = [(SUSUISoftwareUpdateController *)self manager];
  currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
  v14 = 0;
  v12 = 0;
  v11 = 0;
  if (currentDownload)
  {
    manager2 = [(SUSUISoftwareUpdateController *)self manager];
    v14 = 1;
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)self presentingAlternateStatefulDescriptor];
    v12 = 1;
    v11 = [(SUSettingsStatefulUIManager *)manager2 doesTargetedUpdateMatchDescriptor:?];
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](manager2);
  }

  MEMORY[0x277D82BD8](currentDownload);
  MEMORY[0x277D82BD8](manager);
  if (v11)
  {
    manager3 = [(SUSUISoftwareUpdateController *)self manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager3 currentDownload];
    progress = [(SUDownload *)currentDownload2 progress];
    isDone = [(SUOperationProgress *)progress isDone];
    MEMORY[0x277D82BD8](progress);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager3);
    if (isDone)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v4 localizedStringForKey:@"DOWNLOADED" value:&stru_287B79370 table:@"Software Update"];
      MEMORY[0x277D82BD8](v4);
    }

    else
    {
      v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v3 localizedStringForKey:@"DOWNLOADING" value:&stru_287B79370 table:@"Software Update"];
      MEMORY[0x277D82BD8](v3);
    }
  }

  else
  {
    v17 = MEMORY[0x277D82BE0](&stru_287B79370);
  }

  return v17;
}

- (id)nonPromotedPreferredUpdateButtonString
{
  if ([(SUSUISoftwareUpdateController *)self presentingDescriptorUpgradeType]== 2)
  {
    v3 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"UPGRADE_TO"];
    v7 = [v9 localizedStringForKey:? value:? table:?];
    presentingDescriptor = [(SUSUISoftwareUpdateController *)self presentingDescriptor];
    productVersion = [presentingDescriptor productVersion];
    v4 = [(SUSUISoftwareUpdateController *)self majorOSVersionStringForBuildVersion:?];
    preferredUpdateVersionString = [v3 stringWithFormat:v7, v4];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](productVersion);
    MEMORY[0x277D82BD8](presentingDescriptor);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    preferredUpdateVersionString = [(SUSUISoftwareUpdateController *)self preferredUpdateVersionString];
  }

  return preferredUpdateVersionString;
}

- (id)alsoAvailableGroupHeaderString
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ALSO_AVAILABLE" value:&stru_287B79370 table:@"Software Update"];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)autoUpdateScheduledString
{
  selfCopy = self;
  v10[1] = a2;
  if ([(SUSUISoftwareUpdateController *)self presentingDescriptorUpgradeType]== 1)
  {
    v2 = @"AUTOMATIC_UPDATES_INSTALL_TONIGHT_MINOR_";
  }

  else
  {
    v2 = @"AUTOMATIC_UPDATES_INSTALL_TONIGHT_MAJOR_";
  }

  v10[0] = MEMORY[0x277D82BE0](v2);
  v4 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:v10[0]];
  v6 = [v8 localizedStringForKey:? value:? table:?];
  installedOSVersionString = [(SUSUISoftwareUpdateController *)selfCopy installedOSVersionString];
  v9 = [v4 stringWithFormat:v6, installedOSVersionString];
  MEMORY[0x277D82BD8](installedOSVersionString);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(v10, 0);

  return v9;
}

- (id)alternateUpdateVersionString
{
  presentingAlternateDescriptor = [(SUSUISoftwareUpdateController *)self presentingAlternateDescriptor];
  v5 = [(SUSUISoftwareUpdateController *)self updateVersionString:?];
  MEMORY[0x277D82BD8](presentingAlternateDescriptor);

  return v5;
}

- (id)preferredUpdateVersionString
{
  presentingDescriptor = [(SUSUISoftwareUpdateController *)self presentingDescriptor];
  v5 = [(SUSUISoftwareUpdateController *)self updateVersionString:?];
  MEMORY[0x277D82BD8](presentingDescriptor);

  return v5;
}

- (id)updateVersionString:(id)string
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  humanReadableUpdateName = [location[0] humanReadableUpdateName];
  objc_storeStrong(location, 0);

  return humanReadableUpdateName;
}

- (id)installedOSVersionString
{
  selfCopy = self;
  v16 = a2;
  *&v15[8] = 0;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  *v15 = [currentDevice sf_isiPad];
  MEMORY[0x277D82BD8](currentDevice);
  if (v15[0])
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = [v13 localizedStringForKey:@"iPadOS_VERSION" value:&stru_287B79370 table:@"Software Update"];
    v3 = *&v15[4];
    *&v15[4] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v13);
  }

  else
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v12 localizedStringForKey:@"iOS_VERSION" value:&stru_287B79370 table:@"Software Update"];
    v5 = *&v15[4];
    *&v15[4] = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v12);
  }

  v8 = MEMORY[0x277CCACA8];
  v7 = *&v15[4];
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  systemVersion = [currentDevice2 systemVersion];
  v11 = [v8 stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:systemVersion];
  MEMORY[0x277D82BD8](systemVersion);
  MEMORY[0x277D82BD8](currentDevice2);
  objc_storeStrong(&v15[4], 0);

  return v11;
}

- (id)tableCellImageForImage:(id)image
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v13 = 0;
  if (location[0])
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v10 = v3;
    MEMORY[0x277D82BD8](mainScreen);
    v12 = v10;
    [MEMORY[0x277D755B8] _iconVariantForUIApplicationIconFormat:0 scale:&v12];
    v11 = location[0];
    v4 = location[0];
    [v11 CGImage];
    v5 = [MEMORY[0x277D755B8] imageWithCGImage:LICreateIconForImage() scale:0 orientation:v12];
    v6 = v13;
    v13 = v5;
    MEMORY[0x277D82BD8](v6);
  }

  v8 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (void)clearNonPromotedPrimaryUpdateGroup:(id)group
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, group);
  [location[0] removePropertyForKey:*MEMORY[0x277D3FFA0]];
  objc_storeStrong(location, 0);
}

- (void)clearNonPromotedPrimaryUpdateHeaderGroup:(id)group
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, group);
  [location[0] removePropertyForKey:*MEMORY[0x277D3FFA0]];
  objc_storeStrong(location, 0);
}

- (void)refreshBetaUpdatesButton
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUGetBetaUpdatesButton"];
  if (location[0])
  {
    parentController = [(SUSUISoftwareUpdateController *)selfCopy parentController];
    [parentController reloadSpecifier:location[0]];
    MEMORY[0x277D82BD8](parentController);
  }

  objc_storeStrong(location, 0);
}

- (void)refreshupdateAutoUpdateButton
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(SUSUISoftwareUpdateController *)self specifierForAutomaticUpdatesWithUIState:[(SUSUISoftwareUpdateController *)self currentUIState] descriptorState:[(SUSUISoftwareUpdateController *)self currentDescriptorState]];
  if (location[0])
  {
    [(SUSUISoftwareUpdateController *)selfCopy reloadSpecifier:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)configureScanCell:(id)cell withUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cell);
  stateCopy = state;
  descriptorStateCopy = descriptorState;
  v58 = +[SUSettingsStatefulUIAdditions currentOSVersion];
  [location[0] setCurrentVersion:?];
  MEMORY[0x277D82BD8](v58);
  manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
  isDelayingUpdate = [(SUSettingsStatefulUIManager *)manager isDelayingUpdate];
  [location[0] setUpdatesDeferred:isDelayingUpdate];
  MEMORY[0x277D82BD8](manager);
  manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
  hasSUPathRestrictions = [(SUSettingsStatefulUIManager *)manager2 hasSUPathRestrictions];
  [location[0] setSuPathsRestricted:hasSUPathRestrictions];
  MEMORY[0x277D82BD8](manager2);
  v76 = 0;
  if (state == 1)
  {
    v76 = 1;
  }

  else if (stateCopy == 3)
  {
    v76 = 0;
  }

  else
  {
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isDelayingUpdate2 = [(SUSettingsStatefulUIManager *)manager3 isDelayingUpdate];
    MEMORY[0x277D82BD8](manager3);
    if (isDelayingUpdate2)
    {
      v76 = 4;
    }

    else if (stateCopy == 4 && [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptorPromotedAsAlternate])
    {
      v76 = 5;
    }

    else if (stateCopy == 2)
    {
      v76 = 2;
    }

    else
    {
      v76 = 3;
    }
  }

  if (stateCopy == 2)
  {
    manager4 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    scanError = [(SUSettingsStatefulUIManager *)manager4 scanError];
    MEMORY[0x277D82BD8](manager4);
    domain = [scanError domain];
    v52 = getSUErrorDomain_1();
    v53 = 0;
    if ([domain isEqualToString:?])
    {
      v53 = [scanError code] == 26;
    }

    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](domain);
    if (v53)
    {
      v44 = location[0];
      v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v45 = [v46 localizedStringForKey:@"UNABLE_TO_CHECK_FOR_UPDATE" value:? table:?];
      [v44 setErrorTitle:?];
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v46);
      v47 = location[0];
      v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v48 = [v49 localizedStringForKey:@"NETWORK_SCAN_ERROR" value:&stru_287B79370 table:@"Software Update"];
      [v47 setErrorMessage:?];
      MEMORY[0x277D82BD8](v48);
      MEMORY[0x277D82BD8](v49);
    }

    else
    {
      domain2 = [scanError domain];
      v43 = 0;
      if ([domain2 isEqualToString:*MEMORY[0x277CCA050]])
      {
        v43 = [scanError code] == 4099;
      }

      MEMORY[0x277D82BD8](domain2);
      if (v43)
      {
        v30 = location[0];
        v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v31 = [v32 localizedStringForKey:@"UNABLE_TO_CHECK_FOR_UPDATE" value:? table:?];
        [v30 setErrorTitle:?];
        MEMORY[0x277D82BD8](v31);
        MEMORY[0x277D82BD8](v32);
        v33 = location[0];
        v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v34 = [v35 localizedStringForKey:@"CONNECTION_INVALID_SCAN_ERROR" value:&stru_287B79370 table:@"Software Update"];
        [v33 setErrorMessage:?];
        MEMORY[0x277D82BD8](v34);
        MEMORY[0x277D82BD8](v35);
        v36 = location[0];
        v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v37 = [v38 localizedStringForKey:@"TRY_AGAIN" value:&stru_287B79370 table:@"Software Update"];
        [v36 setErrorPrimaryButton:?];
        MEMORY[0x277D82BD8](v37);
        MEMORY[0x277D82BD8](v38);
        v40 = location[0];
        v39 = MEMORY[0x277D750C8];
        v69 = MEMORY[0x277D85DD0];
        v70 = -1073741824;
        v71 = 0;
        v72 = __91__SUSUISoftwareUpdateController_Specifiers__configureScanCell_withUIState_descriptorState___block_invoke;
        v73 = &unk_279CBBEE0;
        v74 = MEMORY[0x277D82BE0](selfCopy);
        v41 = [v39 actionWithHandler:&v69];
        [v40 setErrorPrimaryButtonAction:?];
        MEMORY[0x277D82BD8](v41);
        objc_storeStrong(&v74, 0);
      }

      else
      {
        v68 = 0;
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        sf_isInternalInstall = [currentDevice sf_isInternalInstall];
        MEMORY[0x277D82BD8](currentDevice);
        if (sf_isInternalInstall)
        {
          userInfo = [scanError userInfo];
          v67 = [userInfo objectForKey:*MEMORY[0x277CCA498]];
          MEMORY[0x277D82BD8](userInfo);
          if (!v67)
          {
            objc_storeStrong(&v67, @"Verify that you are connected to the Internal Network; trigger VPN manually if applicable.");
          }

          v24 = MEMORY[0x277CCACA8];
          v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v25 = [v26 localizedStringForKey:@"GENERIC_SCAN_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v7 = [v24 stringWithFormat:@"%@\n\n[Internal Only]\n%@", v25, v67];
          v8 = v68;
          v68 = v7;
          MEMORY[0x277D82BD8](v8);
          MEMORY[0x277D82BD8](v25);
          MEMORY[0x277D82BD8](v26);
          objc_storeStrong(&v67, 0);
        }

        else
        {
          v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v9 = [v23 localizedStringForKey:@"GENERIC_SCAN_ERROR" value:&stru_287B79370 table:@"Software Update"];
          v10 = v68;
          v68 = v9;
          MEMORY[0x277D82BD8](v10);
          MEMORY[0x277D82BD8](v23);
        }

        v17 = location[0];
        v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = [v19 localizedStringForKey:@"UNABLE_TO_CHECK_FOR_UPDATE" value:&stru_287B79370 table:@"Software Update"];
        [v17 setErrorTitle:?];
        MEMORY[0x277D82BD8](v18);
        MEMORY[0x277D82BD8](v19);
        [location[0] setErrorMessage:v68];
        manager5 = [(SUSUISoftwareUpdateController *)selfCopy manager];
        options = [(SUSettingsStatefulUIManager *)manager5 options];
        clientIsBuddy = [(SUSettingsStatefulUIOptions *)options clientIsBuddy];
        MEMORY[0x277D82BD8](options);
        MEMORY[0x277D82BD8](manager5);
        if (!clientIsBuddy)
        {
          v11 = location[0];
          v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v12 = [v13 localizedStringForKey:@"TRY_AGAIN" value:&stru_287B79370 table:@"Software Update"];
          [v11 setErrorPrimaryButton:?];
          MEMORY[0x277D82BD8](v12);
          MEMORY[0x277D82BD8](v13);
          v15 = location[0];
          v14 = MEMORY[0x277D750C8];
          v61 = MEMORY[0x277D85DD0];
          v62 = -1073741824;
          v63 = 0;
          v64 = __91__SUSUISoftwareUpdateController_Specifiers__configureScanCell_withUIState_descriptorState___block_invoke_2;
          v65 = &unk_279CBBEE0;
          v66 = MEMORY[0x277D82BE0](selfCopy);
          v16 = [v14 actionWithHandler:&v61];
          [v15 setErrorPrimaryButtonAction:?];
          MEMORY[0x277D82BD8](v16);
          objc_storeStrong(&v66, 0);
        }

        objc_storeStrong(&v68, 0);
      }
    }

    objc_storeStrong(&scanError, 0);
  }

  else
  {
    [location[0] setErrorTitle:?];
    [location[0] setErrorMessage:0];
    [location[0] setErrorPrimaryButton:0];
    [location[0] setErrorPrimaryButtonAction:0];
  }

  [location[0] setState:v76];
  objc_storeStrong(location, 0);
}

void __91__SUSUISoftwareUpdateController_Specifiers__configureScanCell_withUIState_descriptorState___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] manager];
  [v3 checkForAvailableUpdates];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

void __91__SUSUISoftwareUpdateController_Specifiers__configureScanCell_withUIState_descriptorState___block_invoke_2(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] manager];
  [v3 checkForAvailableUpdates];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (unint64_t)proactiveSuggestionTypeForUIState:(unint64_t)state descriptorState:(unint64_t)descriptorState
{
  v24 = 0;
  v22 = 0;
  v20 = 0;
  v18 = 0;
  v16 = 0;
  LOBYTE(v7) = 0;
  if (state == 4)
  {
    LOBYTE(v7) = 0;
    if (![(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorPromotedAsAlternate])
    {
      presentingDescriptorError = [(SUSUISoftwareUpdateController *)self presentingDescriptorError];
      v24 = 1;
      LOBYTE(v7) = 0;
      if (presentingDescriptorError)
      {
        manager = [(SUSUISoftwareUpdateController *)self manager];
        v22 = 1;
        errorContextProvider = [(SUSettingsStatefulUIManager *)manager errorContextProvider];
        v20 = 1;
        presentingDescriptorError2 = [(SUSUISoftwareUpdateController *)self presentingDescriptorError];
        v18 = 1;
        presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptor];
        v16 = 1;
        v7 = ![(SUSettingsStatefulErrorContextProvider *)errorContextProvider shouldIgnoreUpdateError:presentingDescriptorError2 withStatefulDescriptor:?];
      }
    }
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](presentingDescriptorError2);
  }

  if (v20)
  {
    MEMORY[0x277D82BD8](errorContextProvider);
  }

  if (v22)
  {
    MEMORY[0x277D82BD8](manager);
  }

  if (v24)
  {
    MEMORY[0x277D82BD8](presentingDescriptorError);
  }

  if (v7)
  {
    return 1;
  }

  if (state != 4 || ![(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorIsTargetedUpdate])
  {
    return 0;
  }

  v14 = 0;
  v12 = 0;
  v10 = 0;
  if (descriptorState == 2 || (isAutoDownload = 0, descriptorState <= 3))
  {
    manager2 = [(SUSUISoftwareUpdateController *)self manager];
    v14 = 1;
    currentDownload = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    v12 = 1;
    downloadOptions = [(SUDownload *)currentDownload downloadOptions];
    v10 = 1;
    isAutoDownload = [(SUDownloadOptions *)downloadOptions isAutoDownload];
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](downloadOptions);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](currentDownload);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](manager2);
  }

  if (isAutoDownload)
  {
    return 2;
  }

  v8 = 0;
  isTargetedUpdateScheduledForAutoInstall = 0;
  if (descriptorState == 4)
  {
    manager3 = [(SUSUISoftwareUpdateController *)self manager];
    v8 = 1;
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](manager3);
  }

  if (isTargetedUpdateScheduledForAutoInstall)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (void)refreshInstallButton
{
  v2 = [(SUSUISoftwareUpdateController *)self specifierForUpdateOptionsWithUIState:[(SUSUISoftwareUpdateController *)self currentUIState] descriptorState:[(SUSUISoftwareUpdateController *)self currentDescriptorState]];

  v3 = v2;
}

- (void)_setTitleCellSpecifierStatus:(id)status descriptorState:(unint64_t)state
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, status);
  stateCopy = state;
  statusString = [(SUSUISoftwareUpdateController *)selfCopy statusString];
  titleCell = [(SUSUISoftwareUpdateController *)selfCopy titleCell];
  presentingStatefulDescriptorIsTargetedUpdate = 0;
  if (state == 2)
  {
    presentingStatefulDescriptorIsTargetedUpdate = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptorIsTargetedUpdate];
  }

  [(SUSSoftwareUpdateTitleCell *)titleCell setAnimatingGearView:presentingStatefulDescriptorIsTargetedUpdate];
  MEMORY[0x277D82BD8](titleCell);
  titleCell2 = [(SUSUISoftwareUpdateController *)selfCopy titleCell];
  presentingDescriptorError = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptorError];
  [(SUSSoftwareUpdateTitleCell *)titleCell2 setStatusMessage:statusString symbolizingError:presentingDescriptorError != 0];
  MEMORY[0x277D82BD8](presentingDescriptorError);
  MEMORY[0x277D82BD8](titleCell2);
  titleCell3 = [(SUSUISoftwareUpdateController *)selfCopy titleCell];
  [(SUSSoftwareUpdateTitleCell *)titleCell3 setProgressDisplayStyle:[(SUSUISoftwareUpdateController *)selfCopy updateProgressStyleForDescriptorState:stateCopy]];
  MEMORY[0x277D82BD8](titleCell3);
  titleCell4 = [(SUSUISoftwareUpdateController *)selfCopy titleCell];
  manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
  currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
  progress = [(SUDownload *)currentDownload progress];
  [(SUOperationProgress *)progress normalizedPercentComplete];
  [(SUSSoftwareUpdateTitleCell *)titleCell4 setProgress:?];
  MEMORY[0x277D82BD8](progress);
  MEMORY[0x277D82BD8](currentDownload);
  MEMORY[0x277D82BD8](manager);
  MEMORY[0x277D82BD8](titleCell4);
  if (stateCopy == 1)
  {
    v5 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    queue = v5;
    v17 = MEMORY[0x277D85DD0];
    v18 = -1073741824;
    v19 = 0;
    v20 = __90__SUSUISoftwareUpdateController_Specifiers___setTitleCellSpecifierStatus_descriptorState___block_invoke;
    v21 = &unk_279CB93E8;
    v22 = MEMORY[0x277D82BE0](selfCopy);
    dispatch_async(queue, &v17);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v22, 0);
  }

  objc_storeStrong(&statusString, 0);
  objc_storeStrong(location, 0);
}

uint64_t __90__SUSUISoftwareUpdateController_Specifiers___setTitleCellSpecifierStatus_descriptorState___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) titleCell];
  v4 = [v5 releaseNotesSummaryView];
  v3 = [v4 webView];
  v2 = [v3 scrollView];
  [v2 flashScrollIndicators];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](v5);
}

- (id)isBetaUpdatesEnabled
{
  manager = [(SUSUISoftwareUpdateController *)self manager];
  enrolledBetaProgram = [(SUSettingsStatefulUIManager *)manager enrolledBetaProgram];
  title = [(SDBetaProgram *)enrolledBetaProgram title];
  v9 = 0;
  v7 = 0;
  if (title)
  {
    v2 = MEMORY[0x277D82BE0](title);
  }

  else
  {
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = 1;
    v8 = [v10 localizedStringForKey:@"OFF" value:&stru_287B79370 table:@"Software Update"];
    v7 = 1;
    v2 = MEMORY[0x277D82BE0](v8);
  }

  v11 = v2;
  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  MEMORY[0x277D82BD8](title);
  MEMORY[0x277D82BD8](enrolledBetaProgram);
  MEMORY[0x277D82BD8](manager);

  return v11;
}

- (BOOL)_errorIsInsufficientSpace:(id)space
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, space);
  domain = [location[0] domain];
  v9 = getSUErrorDomain_1();
  v11 = [domain isEqualToString:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](domain);
  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

  code = [location[0] code];
  if (code != 6)
  {
    if (code == 20)
    {
      userInfo = [location[0] userInfo];
      v5 = getkSUInstallationConstraintsUnmetKey_0();
      v4 = [userInfo objectForKey:?];
      unsignedIntegerValue = [v4 unsignedIntegerValue];
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](userInfo);
      if ((unsignedIntegerValue & 4) != 0)
      {
        v13 = 1;
        goto LABEL_9;
      }
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v13 = 1;
LABEL_9:
  objc_storeStrong(location, 0);
  return v13 & 1;
}

- (int)updateProgressStyleForDescriptorState:(unint64_t)state
{
  selfCopy = self;
  v36 = a2;
  stateCopy = state;
  manager = [(SUSUISoftwareUpdateController *)self manager];
  currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
  progress = [(SUDownload *)currentDownload progress];
  MEMORY[0x277D82BD8](currentDownload);
  MEMORY[0x277D82BD8](manager);
  location = [progress phase];
  [progress percentComplete];
  v32 = v3;
  manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
  scanError = [(SUSettingsStatefulUIManager *)manager2 scanError];
  v29 = 0;
  v27 = 0;
  v25 = 0;
  v23 = 0;
  v21 = 0;
  v19 = 0;
  v17 = 0;
  v14 = 1;
  if (!scanError)
  {
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    v29 = 1;
    updateDownloadError = [presentingStatefulDescriptor updateDownloadError];
    v27 = 1;
    LOBYTE(v9) = 0;
    if (updateDownloadError)
    {
      manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      v25 = 1;
      errorContextProvider = [(SUSettingsStatefulUIManager *)manager3 errorContextProvider];
      v23 = 1;
      presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
      v21 = 1;
      updateDownloadError2 = [presentingStatefulDescriptor2 updateDownloadError];
      v19 = 1;
      presentingStatefulDescriptor3 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
      v17 = 1;
      v9 = ![(SUSettingsStatefulErrorContextProvider *)errorContextProvider shouldIgnoreUpdateError:updateDownloadError2 withStatefulDescriptor:?];
    }

    v14 = v9;
  }

  if (v17)
  {
    MEMORY[0x277D82BD8](presentingStatefulDescriptor3);
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](updateDownloadError2);
  }

  if (v21)
  {
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
  }

  if (v23)
  {
    MEMORY[0x277D82BD8](errorContextProvider);
  }

  if (v25)
  {
    MEMORY[0x277D82BD8](manager3);
  }

  if (v27)
  {
    MEMORY[0x277D82BD8](updateDownloadError);
  }

  if (v29)
  {
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
  }

  MEMORY[0x277D82BD8](scanError);
  MEMORY[0x277D82BD8](manager2);
  v31 = v14 & 1;
  if (stateCopy == 2)
  {
    v7 = getkSUDownloadPhasePreparingForInstallation_0();
    v8 = [location isEqualToString:?];
    MEMORY[0x277D82BD8](v7);
    if (v8)
    {
      if (v31)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }

      v38 = v4;
      v16 = 1;
    }

    else if ([(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptorIsTargetedUpdate]&& (v15 = 0, [SUSettingsStatefulUIAdditions estimatedTimeRemainingForProgress:progress valid:&v15], v32 >= 0.005) && (v15 & 1) != 0)
    {
      if (v31)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      v38 = v5;
      v16 = 1;
    }

    else
    {
      v38 = 0;
      v16 = 1;
    }
  }

  else if (stateCopy == 3)
  {
    if ([(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptorIsTargetedUpdate])
    {
      v38 = 2;
    }

    else
    {
      v38 = 0;
    }

    v16 = 1;
  }

  else
  {
    v38 = 0;
    v16 = 1;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&progress, 0);
  return v38;
}

- (BOOL)waitingOnSUAssetDownload:(id)download
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  v4 = 1;
  if (([location[0] isEqualToString:*MEMORY[0x277D649F8]] & 1) == 0)
  {
    v4 = 1;
    if (([location[0] isEqualToString:*MEMORY[0x277D649C8]] & 1) == 0)
    {
      v4 = 1;
      if (([location[0] isEqualToString:*MEMORY[0x277D649D0]] & 1) == 0)
      {
        v4 = 1;
        if (([location[0] isEqualToString:*MEMORY[0x277D649D8]] & 1) == 0)
        {
          v4 = 1;
          if (([location[0] isEqualToString:*MEMORY[0x277D649E0]] & 1) == 0)
          {
            v4 = 1;
            if (([location[0] isEqualToString:*MEMORY[0x277D649E8]] & 1) == 0)
            {
              v4 = [location[0] isEqualToString:*MEMORY[0x277D649C0]];
            }
          }
        }
      }
    }
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (BOOL)_shouldHideTonightButton
{
  v18 = *MEMORY[0x277D85DE8];
  v14[2] = self;
  v14[1] = a2;
  manager = [(SUSUISoftwareUpdateController *)self manager];
  v14[0] = [(SUSettingsStatefulUIManager *)manager ddmDeclaration];
  MEMORY[0x277D82BD8](manager);
  if (v14[0] && ([v14[0] isValidDeclaration] & 1) != 0)
  {
    enforcedInstallDate = [v14[0] enforcedInstallDate];
    [enforcedInstallDate timeIntervalSinceNow];
    v6 = v2;
    MEMORY[0x277D82BD8](enforcedInstallDate);
    v10 = v6;
    v9 = v6 < 86400.0;
    oslog = _SUSUILoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      if (v9)
      {
        v3 = &stru_287B79370;
      }

      else
      {
        v3 = @"don't ";
      }

      __os_log_helper_16_2_3_8_0_8_64_8_64(v16, COERCE__INT64(v10 / 3600.0), v14[0], v3);
      _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%lf hour(s) left for %@, %@hide the update/install tonight button", v16, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    v15 = v9;
    v11 = 1;
  }

  else
  {
    location = _SUSUILoggingFacility();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v17, v14[0]);
      _os_log_impl(&dword_26AC94000, location, v12, "No valid declaration available %@, don't hide the update/install tonight button", v17, 0xCu);
    }

    objc_storeStrong(&location, 0);
    v15 = 0;
    v11 = 1;
  }

  objc_storeStrong(v14, 0);
  *MEMORY[0x277D85DE8];
  return v15;
}

- (id)automaticUpdatesCellTitle
{
  manager = [(SUSUISoftwareUpdateController *)self manager];
  preferences = [(SUSettingsStatefulUIManager *)manager preferences];
  isAutomaticDownloadEnabled = [(SUSettingsSUPreferencesManager *)preferences isAutomaticDownloadEnabled];
  MEMORY[0x277D82BD8](preferences);
  MEMORY[0x277D82BD8](manager);
  manager2 = [(SUSUISoftwareUpdateController *)self manager];
  preferences2 = [(SUSettingsStatefulUIManager *)manager2 preferences];
  isAutomaticUpdateV2Enabled = [(SUSettingsSUPreferencesManager *)preferences2 isAutomaticUpdateV2Enabled];
  MEMORY[0x277D82BD8](preferences2);
  MEMORY[0x277D82BD8](manager2);
  if (isAutomaticDownloadEnabled && isAutomaticUpdateV2Enabled)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v5 localizedStringForKey:@"ON" value:&stru_287B79370 table:@"Software Update"];
    MEMORY[0x277D82BD8](v5);
  }

  else if (isAutomaticDownloadEnabled)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v4 localizedStringForKey:@"DOWNLOAD_ONLY" value:&stru_287B79370 table:@"Software Update"];
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v3 localizedStringForKey:@"OFF" value:&stru_287B79370 table:@"Software Update"];
    MEMORY[0x277D82BD8](v3);
  }

  return v13;
}

- (void)initUI
{
  [(SUSUISoftwareUpdateController *)self setupTipsObserver];
  [(SUSUISoftwareUpdateController *)self registerForFontChanges];
  self->_currentActivityStyle = 0;
}

- (id)specifierWithID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  specifiers = [(SUSUISoftwareUpdateController *)selfCopy specifiers];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](specifiers);
  v12 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(__b[1] + 8 * v9);
      v5 = [v15 propertyForKey:*MEMORY[0x277D3FFB8]];
      v6 = [v5 isEqualToString:location[0]];
      MEMORY[0x277D82BD8](v5);
      if (v6)
      {
        break;
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v10)
        {
          goto LABEL_9;
        }
      }
    }

    v19 = MEMORY[0x277D82BE0](v15);
    v13 = 1;
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!v13)
  {
    v19 = 0;
  }

  objc_storeStrong(&specifiers, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v3 = v19;

  return v3;
}

- (void)refreshPane
{
  selfCopy = self;
  v14 = a2;
  currentUIState = [(SUSUISoftwareUpdateController *)self currentUIState];
  updatedSpecifiersArray = [(SUSUISoftwareUpdateController *)selfCopy updatedSpecifiersArray];
  v11 = currentUIState <= 1;
  [(SUSUISoftwareUpdateController *)selfCopy reloadUsingNewSpecifiers:updatedSpecifiersArray animated:currentUIState > 1];
  [(SUSUISoftwareUpdateController *)selfCopy fixCustomCellSpecifiers];
  [(SUSUISoftwareUpdateController *)selfCopy reloadCustomCells];
  if (currentUIState == 3 || currentUIState == 4 && [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptorPromotedAsAlternate])
  {
    v3 = MEMORY[0x277D85CD0];
    v2 = MEMORY[0x277D85CD0];
    queue = v3;
    v5 = MEMORY[0x277D85DD0];
    v6 = -1073741824;
    v7 = 0;
    v8 = __48__SUSUISoftwareUpdateController_UI__refreshPane__block_invoke;
    v9 = &unk_279CB93E8;
    v10 = MEMORY[0x277D82BE0](selfCopy);
    dispatch_async(queue, &v5);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&updatedSpecifiersArray, 0);
}

- (void)reloadCustomCells
{
  selfCopy = self;
  v12[1] = a2;
  v12[0] = 0;
  v11 = 0;
  [(SUSUISoftwareUpdateController *)self reloadScanSpacerCells:&v11];
  objc_storeStrong(v12, v11);
  [(SUSUISoftwareUpdateController *)selfCopy reloadSpecifiers:v12[0] animated:0];
  [(SUSUISoftwareUpdateController *)selfCopy fixCustomCellSpecifiers];
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __54__SUSUISoftwareUpdateController_UI__reloadCustomCells__block_invoke;
  v9 = &unk_279CB93E8;
  v10 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v12, 0);
}

- (void)reloadScanSpacerCells:(id *)cells
{
  selfCopy = self;
  v46 = a2;
  cellsCopy = cells;
  v44 = 0.0;
  v43 = 0.0;
  v42 = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUScanHeaderGroup"];
  v41 = [v42 propertyForKey:@"SUHeight"];
  if (v41)
  {
    [v41 floatValue];
    v44 = v44 + v3;
  }

  v40 = [(SUSUISoftwareUpdateController *)selfCopy specifierWithID:@"SUScanFooterGroup"];
  v39 = [v40 propertyForKey:@"SUHeight"];
  if (v39)
  {
    [v39 floatValue];
    v44 = v44 + v4;
  }

  table = [(SUSUISoftwareUpdateController *)selfCopy table];
  [table layoutSubviews];
  MEMORY[0x277D82BD8](table);
  table2 = [(SUSUISoftwareUpdateController *)selfCopy table];
  [table2 contentSize];
  v36 = v5;
  v37 = v6;
  v20 = v6;
  MEMORY[0x277D82BD8](table2);
  v38 = v20;
  +[SUSUISoftwareUpdateController windowSafeAreasSize];
  v35 = v20 - v44 + v7;
  table3 = [(SUSUISoftwareUpdateController *)selfCopy table];
  [table3 visibleSize];
  v32 = v8;
  v33 = v9;
  v22 = v9;
  navigationController = [(SUSUISoftwareUpdateController *)selfCopy navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar bounds];
  v28 = v10;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v25 = v22 - v13;
  MEMORY[0x277D82BD8](navigationBar);
  MEMORY[0x277D82BD8](navigationController);
  MEMORY[0x277D82BD8](table3);
  v34 = v25;
  if (v25 > v35)
  {
    v43 = v34 - v35;
  }

  v14 = v43 / 2.0;
  v27 = floorf(v14);
  location = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v42)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
    [v42 setProperty:? forKey:?];
    MEMORY[0x277D82BD8](v17);
    [location addObject:v42];
  }

  if (v40)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
    [v40 setProperty:? forKey:?];
    MEMORY[0x277D82BD8](v16);
    [location addObject:v40];
  }

  if (cellsCopy)
  {
    v15 = location;
    *cellsCopy = location;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
}

- (void)setBusyWithActivityStyle:(int64_t)style
{
  updateOptionsCell = [(SUSUISoftwareUpdateController *)self updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell setEnabled:style == 0];
  MEMORY[0x277D82BD8](updateOptionsCell);
  updateOptionsCell2 = [(SUSUISoftwareUpdateController *)self updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)updateOptionsCell2 setActivityIndicatorDisplayStyle:style];
  MEMORY[0x277D82BD8](updateOptionsCell2);
  v9 = ![(SUSUISoftwareUpdateController *)self isBusy];
  automaticUpdatesCell = [(SUSUISoftwareUpdateController *)self automaticUpdatesCell];
  [(PSTableCell *)automaticUpdatesCell setUserInteractionEnabled:v9 & 1];
  MEMORY[0x277D82BD8](automaticUpdatesCell);
  betaUpdatesCell = [(SUSUISoftwareUpdateController *)self betaUpdatesCell];
  [(PSTableCell *)betaUpdatesCell setUserInteractionEnabled:v9 & 1];
  MEMORY[0x277D82BD8](betaUpdatesCell);
  alternateUpdateCell = [(SUSUISoftwareUpdateController *)self alternateUpdateCell];
  [(PSTableCell *)alternateUpdateCell setUserInteractionEnabled:v9 & 1];
  MEMORY[0x277D82BD8](alternateUpdateCell);
  nonPromotedUpdateCell = [(SUSUISoftwareUpdateController *)self nonPromotedUpdateCell];
  [(PSTableCell *)nonPromotedUpdateCell setUserInteractionEnabled:v9 & 1];
  MEMORY[0x277D82BD8](nonPromotedUpdateCell);
}

+ (double)windowSafeAreasSize
{
  v16[2] = self;
  v16[1] = a2;
  if (*&windowSafeAreasSize_safeArea != 2.22507386e-308)
  {
    return *&windowSafeAreasSize_safeArea;
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v16[0] = [mEMORY[0x277D75128] connectedScenes];
  MEMORY[0x277D82BD8](mEMORY[0x277D75128]);
  if ([v16[0] count])
  {
    allObjects = [v16[0] allObjects];
    location = [allObjects objectAtIndex:0];
    MEMORY[0x277D82BD8](allObjects);
    windows = [location windows];
    v12 = [windows count];
    MEMORY[0x277D82BD8](windows);
    if (v12)
    {
      windows2 = [location windows];
      v8 = [windows2 objectAtIndex:?];
      [v8 safeAreaInsets];
      v6 = v2;
      windows3 = [location windows];
      v5 = [windows3 objectAtIndex:0];
      [v5 safeAreaInsets];
      v17 = v6 + v3;
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](windows3);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](windows2);
    }

    else
    {
      v17 = 0.0;
    }

    v15 = 1;
    objc_storeStrong(&location, 0);
  }

  else
  {
    v17 = 0.0;
    v15 = 1;
  }

  objc_storeStrong(v16, 0);
  return v17;
}

- (void)viewDidLoad
{
  v44 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v41 = a2;
  v40.receiver = self;
  v40.super_class = SUSUISoftwareUpdateController;
  [(SUSUISoftwareUpdateController *)&v40 viewDidLoad];
  v31 = selfCopy;
  paneTitle = [(SUSUISoftwareUpdateController *)selfCopy paneTitle];
  [(SUSUISoftwareUpdateController *)v31 setTitle:?];
  MEMORY[0x277D82BD8](paneTitle);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
  MEMORY[0x277D82BD8](defaultCenter);
  if ([(SUSUISoftwareUpdateController *)selfCopy supportsPullToRefresh])
  {
    v29 = objc_alloc_init(MEMORY[0x277D75918]);
    [(SUSUISoftwareUpdateController *)selfCopy setRefreshControl:?];
    MEMORY[0x277D82BD8](v29);
    refreshControl = [(SUSUISoftwareUpdateController *)selfCopy refreshControl];
    [(UIRefreshControl *)refreshControl addTarget:selfCopy action:sel_performUpdateRescan_ forControlEvents:4096];
    MEMORY[0x277D82BD8](refreshControl);
  }

  v25 = +[SUSUIServiceManager sharedInstance];
  v39 = [(SUSUIServiceManager *)v25 classForService:objc_opt_class()];
  MEMORY[0x277D82BD8](v25);
  sharedManager = [(objc_class *)v39 sharedManager];
  [sharedManager setup];
  MEMORY[0x277D82BD8](sharedManager);
  v28 = +[SUSUITestAutomationManager sharedManager];
  sharedManager2 = [(objc_class *)v39 sharedManager];
  [v28 addResponderDelegate:? forServiceType:?];
  MEMORY[0x277D82BD8](sharedManager2);
  MEMORY[0x277D82BD8](v28);
  v38 = _SUSUILoggingFacility();
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    log = v38;
    type = v37;
    v2 = objc_opt_class();
    v24 = NSStringFromClass(v2);
    v6 = MEMORY[0x277D82BE0](v24);
    v36 = v6;
    v7 = selfCopy;
    v23 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v8 = MEMORY[0x277D82BE0](v23);
    v35 = v8;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v5 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v34 = v5;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v43, "[SUSUISoftwareUpdateController(UI) viewDidLoad]", v6, v7, v8, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v5, currentDownload2, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v43, 0x7Au);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
  }

  objc_storeStrong(&v38, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewWillAppear:(BOOL)appear
{
  v48 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v45 = a2;
  appearCopy = appear;
  v43.receiver = self;
  v43.super_class = SUSUISoftwareUpdateController;
  [(SUSUISoftwareUpdateController *)&v43 viewWillAppear:appear];
  navigationController = [(SUSUISoftwareUpdateController *)selfCopy navigationController];
  topViewController = [navigationController topViewController];
  MEMORY[0x277D82BD8](navigationController);
  v41 = _SUSUILoggingFacility();
  v40 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v11 = NSStringFromClass(v3);
    v12 = MEMORY[0x277D82BE0](v11);
    v39 = v12;
    v13 = selfCopy;
    v14 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v15 = MEMORY[0x277D82BE0](v14);
    v38 = v15;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v25 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    location = v25;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v5 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v5 = "NO";
    }

    v29 = v5;
    v35 = 0;
    if (topViewController)
    {
      v6 = objc_opt_class();
      v36 = NSStringFromClass(v6);
      v35 = 1;
      v10 = v36;
    }

    else
    {
      v10 = @"N/A";
    }

    __os_log_helper_16_2_13_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_64(v47, "[SUSUISoftwareUpdateController(UI) viewWillAppear:]", v12, v13, v15, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v25, currentDownload2, v29, v10);
    _os_log_impl(&dword_26AC94000, v41, v40, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nCurrent top view controller: %@", v47, 0x84u);
    if (v35)
    {
      MEMORY[0x277D82BD8](v36);
    }

    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
  }

  objc_storeStrong(&v41, 0);
  if ([(SUSUISoftwareUpdateController *)selfCopy currentUIState])
  {
    v33 = 0;
    v31 = 0;
    v8 = 0;
    if (![(SUSUISoftwareUpdateController *)selfCopy isBusy])
    {
      manager4 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      v33 = 1;
      delegate = [(SUSettingsStatefulUIManager *)manager4 delegate];
      v31 = 1;
      v8 = [(SUSettingsStatefulUIManagerDelegate *)delegate isEqual:selfCopy];
    }

    if (v31)
    {
      MEMORY[0x277D82BD8](delegate);
    }

    if (v33)
    {
      MEMORY[0x277D82BD8](manager4);
    }

    if (v8)
    {
      manager5 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      [(SUSettingsStatefulUIManager *)manager5 refreshState];
      MEMORY[0x277D82BD8](manager5);
    }
  }

  else
  {
    manager6 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    [(SUSettingsStatefulUIManager *)manager6 checkForAvailableUpdates];
    MEMORY[0x277D82BD8](manager6);
  }

  objc_storeStrong(&topViewController, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewDidAppear:(BOOL)appear
{
  v99 = &v121;
  v94 = "[SUSUISoftwareUpdateController(UI) viewDidAppear:]";
  v129 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v125 = a2;
  appearCopy = appear;
  v123.receiver = self;
  v123.super_class = SUSUISoftwareUpdateController;
  v101 = 1;
  [(SUSUISoftwareUpdateController *)&v123 viewDidAppear:appear];
  v96 = selfCopy;
  v95 = MEMORY[0x277CCA8D8];
  v98 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v97 = [v98 localizedStringForKey:@"SOFTWARE_UPDATE" value:&stru_287B79370 table:@"Software Update"];
  [(PSListController *)v96 addNavigationEventForSystemSettings:?];
  MEMORY[0x277D82BD8](v97);
  MEMORY[0x277D82BD8](v98);
  v100 = selfCopy;
  v3 = [(SUSUISoftwareUpdateController *)selfCopy isMemberOfClass:objc_opt_class()];
  v122 = 0;
  v120 = 0;
  v102 = 0;
  if (v3)
  {
    manager = [v99[7] manager];
    v99[2] = manager;
    v93 = 1;
    v122 = 1;
    delegate = [manager delegate];
    v6 = v99;
    *v99 = delegate;
    v120 = 1;
    v102 = delegate != v6[7];
  }

  v92 = v102;
  if (v120)
  {
    MEMORY[0x277D82BD8](*v99);
  }

  if (v122)
  {
    MEMORY[0x277D82BD8](v99[2]);
  }

  if (v92)
  {
    oslog = _SUSUILoggingFacility();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v65 = type;
      v7 = v99[7];
      v8 = objc_opt_class();
      v83 = NSStringFromClass(v8);
      v59 = MEMORY[0x277D82BE0](v83);
      v90 = &v117;
      v117 = v59;
      v60 = v99[7];
      v82 = SUSettingsUIStateToString([v99[7] currentUIState]);
      v61 = MEMORY[0x277D82BE0](v82);
      v89 = &v116;
      v116 = v61;
      currentUIState = [v99[7] currentUIState];
      presentingStatefulDescriptor = [v99[7] presentingStatefulDescriptor];
      presentingStatefulDescriptor2 = [v99[7] presentingStatefulDescriptor];
      presentingAlternateStatefulDescriptor = [v99[7] presentingAlternateStatefulDescriptor];
      v79 = presentingAlternateStatefulDescriptor;
      presentingAlternateStatefulDescriptor2 = [v99[7] presentingAlternateStatefulDescriptor];
      manager2 = [v99[7] manager];
      currentDownload = [manager2 currentDownload];
      descriptor = [currentDownload descriptor];
      humanReadableUpdateName = [descriptor humanReadableUpdateName];
      v53 = MEMORY[0x277D82BE0](humanReadableUpdateName);
      v88 = &v115;
      v115 = v53;
      manager3 = [v99[7] manager];
      currentDownload2 = [manager3 currentDownload];
      manager4 = [v99[7] manager];
      isTargetedUpdateScheduledForAutoInstall = [manager4 isTargetedUpdateScheduledForAutoInstall];
      v11 = "YES";
      if ((isTargetedUpdateScheduledForAutoInstall & 1) == 0)
      {
        v11 = "NO";
      }

      v54 = v11;
      v12 = v99[7];
      v13 = objc_opt_class();
      v55 = MEMORY[0x277D82BE0](v13);
      v87 = &v114;
      v114 = v55;
      v14 = v99[7];
      v15 = objc_opt_class();
      v56 = MEMORY[0x277D82BE0](v15);
      v86 = &v113;
      v113 = v56;
      manager5 = [v99[7] manager];
      delegate2 = [manager5 delegate];
      manager6 = [v99[7] manager];
      delegate3 = [manager6 delegate];
      v16 = objc_opt_class();
      v57 = MEMORY[0x277D82BE0](v16);
      v85 = &v112;
      v112 = v57;
      v58 = v99[7];
      v17 = v99[7];
      v18 = objc_opt_class();
      location = &v111;
      v111 = MEMORY[0x277D82BE0](v18);
      v63 = &v24;
      buf = v128;
      __os_log_helper_16_2_18_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_66_8_66_8_0_8_66_8_0_8_66(v128, v94, v59, v60, v61, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v53, currentDownload2, v54, v55, v56, delegate2, v57, v58, v111);
      _os_log_impl(&dword_26AC94000, log, v65[0], "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nThe Stateful UI manager's delegate is pointing to another, non %{public}@ controller. Grabbing the pointer back to %{public}@. \tCurrent Pointer: %p (%{public}@)\n\tAssigned Pointer: %p (%{public}@)", buf, 0xB6u);
      MEMORY[0x277D82BD8](delegate3);
      MEMORY[0x277D82BD8](manager6);
      MEMORY[0x277D82BD8](delegate2);
      MEMORY[0x277D82BD8](manager5);
      MEMORY[0x277D82BD8](manager4);
      MEMORY[0x277D82BD8](currentDownload2);
      MEMORY[0x277D82BD8](manager3);
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      MEMORY[0x277D82BD8](descriptor);
      MEMORY[0x277D82BD8](currentDownload);
      MEMORY[0x277D82BD8](manager2);
      MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
      MEMORY[0x277D82BD8](presentingStatefulDescriptor);
      MEMORY[0x277D82BD8](v82);
      MEMORY[0x277D82BD8](v83);
      obj = 0;
      objc_storeStrong(location, 0);
      objc_storeStrong(v85, obj);
      objc_storeStrong(v86, obj);
      objc_storeStrong(v87, obj);
      objc_storeStrong(v88, obj);
      objc_storeStrong(v89, obj);
      objc_storeStrong(v90, obj);
    }

    objc_storeStrong(&oslog, 0);
    v51 = v99[7];
    manager7 = [v99[7] manager];
    [manager7 setDelegate:v51];
    MEMORY[0x277D82BD8](manager7);
    [v99[7] refreshPane];
  }

  navigationController = [v99[7] navigationController];
  topViewController = [navigationController topViewController];
  MEMORY[0x277D82BD8](navigationController);
  v109 = _SUSUILoggingFacility();
  v108 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v109;
    *v30 = v108;
    v19 = v99[7];
    v20 = objc_opt_class();
    v31 = NSStringFromClass(v20);
    v32 = MEMORY[0x277D82BE0](v31);
    v107 = v32;
    v33 = v99[7];
    v34 = SUSettingsUIStateToString([v99[7] currentUIState]);
    v35 = MEMORY[0x277D82BE0](v34);
    v106 = v35;
    currentUIState2 = [v99[7] currentUIState];
    presentingStatefulDescriptor3 = [v99[7] presentingStatefulDescriptor];
    presentingStatefulDescriptor4 = [v99[7] presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor3 = [v99[7] presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor4 = [v99[7] presentingAlternateStatefulDescriptor];
    manager8 = [v99[7] manager];
    currentDownload3 = [manager8 currentDownload];
    descriptor2 = [currentDownload3 descriptor];
    humanReadableUpdateName2 = [descriptor2 humanReadableUpdateName];
    v45 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
    v105 = v45;
    manager9 = [v99[7] manager];
    currentDownload4 = [manager9 currentDownload];
    manager10 = [v99[7] manager];
    isTargetedUpdateScheduledForAutoInstall2 = [manager10 isTargetedUpdateScheduledForAutoInstall];
    v22 = "YES";
    if ((isTargetedUpdateScheduledForAutoInstall2 & 1) == 0)
    {
      v22 = "NO";
    }

    v49 = v22;
    v103 = 0;
    if (topViewController)
    {
      v23 = objc_opt_class();
      v104 = NSStringFromClass(v23);
      v103 = 1;
      v28 = v104;
    }

    else
    {
      v28 = @"N/A";
    }

    v27 = v127;
    __os_log_helper_16_2_13_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_64(v127, v94, v32, v33, v35, currentUIState2, presentingStatefulDescriptor3, presentingStatefulDescriptor4, presentingAlternateStatefulDescriptor3, presentingAlternateStatefulDescriptor4, v45, currentDownload4, v49, v28);
    _os_log_impl(&dword_26AC94000, v29, v30[0], "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nCurrent top view controller: %@", v27, 0x84u);
    if (v103)
    {
      MEMORY[0x277D82BD8](v104);
    }

    MEMORY[0x277D82BD8](manager10);
    MEMORY[0x277D82BD8](currentDownload4);
    MEMORY[0x277D82BD8](manager9);
    MEMORY[0x277D82BD8](humanReadableUpdateName2);
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](currentDownload3);
    MEMORY[0x277D82BD8](manager8);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor4);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor3);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor4);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor3);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v31);
    v26 = 0;
    objc_storeStrong(&v105, 0);
    objc_storeStrong(&v106, v26);
    objc_storeStrong(&v107, v26);
  }

  v25 = 0;
  objc_storeStrong(&v109, 0);
  objc_storeStrong(&topViewController, v25);
  *MEMORY[0x277D85DE8];
}

- (void)loadView
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v31 = a2;
  v30.receiver = self;
  v30.super_class = SUSUISoftwareUpdateController;
  [(SUSUISoftwareUpdateController *)&v30 loadView];
  v29 = _SUSUILoggingFacility();
  v28 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    log = v29;
    type = v28;
    v2 = objc_opt_class();
    v24 = NSStringFromClass(v2);
    v6 = MEMORY[0x277D82BE0](v24);
    v27 = v6;
    v7 = selfCopy;
    v23 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v8 = MEMORY[0x277D82BE0](v23);
    v26 = v8;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v5 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v25 = v5;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v33, "[SUSUISoftwareUpdateController(UI) loadView]", v6, v7, v8, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v5, currentDownload2, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v33, 0x7Au);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
  }

  objc_storeStrong(&v29, 0);
  [(SUSUISoftwareUpdateController *)selfCopy initUI];
  [*(&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) _setMarginWidth:15.0];
  *MEMORY[0x277D85DE8];
}

- (void)willEnterForeground
{
  selfCopy = self;
  v10[1] = a2;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __56__SUSUISoftwareUpdateController_UI__willEnterForeground__block_invoke;
  v9 = &unk_279CB93E8;
  v10[0] = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v10, 0);
}

uint64_t __56__SUSUISoftwareUpdateController_UI__willEnterForeground__block_invoke(id *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v35[2] = a1;
  v35[1] = a1;
  v35[0] = _SUSUILoggingFacility();
  v34 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v35[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v35[0];
    type = v34;
    v1 = a1[4];
    v2 = objc_opt_class();
    v29 = NSStringFromClass(v2);
    v11 = MEMORY[0x277D82BE0](v29);
    v33 = v11;
    v12 = a1[4];
    v28 = SUSettingsUIStateToString([v12 currentUIState]);
    v13 = MEMORY[0x277D82BE0](v28);
    v32 = v13;
    v14 = [a1[4] currentUIState];
    v27 = [a1[4] presentingStatefulDescriptor];
    v26 = [a1[4] presentingStatefulDescriptor];
    v25 = [a1[4] presentingAlternateStatefulDescriptor];
    v24 = [a1[4] presentingAlternateStatefulDescriptor];
    v23 = [a1[4] manager];
    v22 = [v23 currentDownload];
    v21 = [v22 descriptor];
    v20 = [v21 humanReadableUpdateName];
    v10 = MEMORY[0x277D82BE0](v20);
    v31 = v10;
    v19 = [a1[4] manager];
    v18 = [v19 currentDownload];
    v17 = [a1[4] manager];
    v3 = [v17 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if ((v3 & 1) == 0)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v36, "[SUSUISoftwareUpdateController(UI) willEnterForeground]_block_invoke", v11, v12, v13, v14, v27, v26, v25, v24, v10, v18, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v36, 0x7Au);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v33, 0);
  }

  objc_storeStrong(v35, 0);
  v6 = a1[4];
  v7 = [v6 updatedSpecifiersArray];
  [v6 setSpecifiers:?];
  MEMORY[0x277D82BD8](v7);
  v8 = a1[4];
  v9 = [v8 paneTitle];
  [v8 setTitle:?];
  MEMORY[0x277D82BD8](v9);
  result = [a1[4] refreshPane];
  *MEMORY[0x277D85DE8];
  return result;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v41 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v38 = a2;
  disappearCopy = disappear;
  v36.receiver = self;
  v36.super_class = SUSUISoftwareUpdateController;
  [(SUSUISoftwareUpdateController *)&v36 viewWillDisappear:disappear];
  navigationController = [(SUSUISoftwareUpdateController *)selfCopy navigationController];
  topViewController = [navigationController topViewController];
  MEMORY[0x277D82BD8](navigationController);
  v34 = _SUSUILoggingFacility();
  v33 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v8 = NSStringFromClass(v3);
    v9 = MEMORY[0x277D82BE0](v8);
    v32 = v9;
    v10 = selfCopy;
    v11 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v12 = MEMORY[0x277D82BE0](v11);
    v31 = v12;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v22 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    location = v22;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v5 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v5 = "NO";
    }

    v26 = v5;
    v28 = 0;
    if (topViewController)
    {
      v6 = objc_opt_class();
      v29 = NSStringFromClass(v6);
      v28 = 1;
      v7 = v29;
    }

    else
    {
      v7 = @"N/A";
    }

    __os_log_helper_16_2_13_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_64(v40, "[SUSUISoftwareUpdateController(UI) viewWillDisappear:]", v9, v10, v12, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v22, currentDownload2, v26, v7);
    _os_log_impl(&dword_26AC94000, v34, v33, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nCurrent top view controller: %@", v40, 0x84u);
    if (v28)
    {
      MEMORY[0x277D82BD8](v29);
    }

    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&topViewController, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v41 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v38 = a2;
  disappearCopy = disappear;
  v36.receiver = self;
  v36.super_class = SUSUISoftwareUpdateController;
  [(SUSUISoftwareUpdateController *)&v36 viewDidDisappear:disappear];
  navigationController = [(SUSUISoftwareUpdateController *)selfCopy navigationController];
  topViewController = [navigationController topViewController];
  MEMORY[0x277D82BD8](navigationController);
  v34 = _SUSUILoggingFacility();
  v33 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v8 = NSStringFromClass(v3);
    v9 = MEMORY[0x277D82BE0](v8);
    v32 = v9;
    v10 = selfCopy;
    v11 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v12 = MEMORY[0x277D82BE0](v11);
    v31 = v12;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v22 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    location = v22;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v5 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v5 = "NO";
    }

    v26 = v5;
    v28 = 0;
    if (topViewController)
    {
      v6 = objc_opt_class();
      v29 = NSStringFromClass(v6);
      v28 = 1;
      v7 = v29;
    }

    else
    {
      v7 = @"N/A";
    }

    __os_log_helper_16_2_13_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_64(v40, "[SUSUISoftwareUpdateController(UI) viewDidDisappear:]", v9, v10, v12, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v22, currentDownload2, v26, v7);
    _os_log_impl(&dword_26AC94000, v34, v33, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nCurrent top view controller: %@", v40, 0x84u);
    if (v28)
    {
      MEMORY[0x277D82BD8](v29);
    }

    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&topViewController, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isTopViewController
{
  selfCopy = self;
  location[1] = a2;
  navigationController = [(SUSUISoftwareUpdateController *)self navigationController];
  location[0] = [navigationController topViewController];
  MEMORY[0x277D82BD8](navigationController);
  v5 = 0;
  v4 = 1;
  if (location[0] != selfCopy)
  {
    parentViewController = [(SUSUISoftwareUpdateController *)selfCopy parentViewController];
    v5 = 1;
    v4 = location[0] == parentViewController;
  }

  v9 = v4;
  if (v5)
  {
    MEMORY[0x277D82BD8](parentViewController);
  }

  objc_storeStrong(location, 0);
  return v9;
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  animatedCopy = animated;
  v8 = 0;
  objc_storeStrong(&v8, completion);
  if ([(SUSUISoftwareUpdateController *)selfCopy isTopViewController])
  {
    v7.receiver = selfCopy;
    v7.super_class = SUSUISoftwareUpdateController;
    [(SUSUISoftwareUpdateController *)&v7 presentViewController:location[0] animated:animatedCopy completion:v8];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  v96 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v90 = 0;
  objc_storeStrong(&v90, completion);
  v88 = 0;
  v86 = 0;
  v56 = 1;
  if (location[0])
  {
    v89 = [location[0] objectForKeyedSubscript:@"PerformAction"];
    v88 = 1;
    v54 = 0;
    if (!v89)
    {
      v87 = [location[0] objectForKeyedSubscript:@"path"];
      v86 = 1;
      v54 = v87 == 0;
    }

    v56 = v54;
  }

  if (v86)
  {
    MEMORY[0x277D82BD8](v87);
  }

  if (v88)
  {
    MEMORY[0x277D82BD8](v89);
  }

  if (v56)
  {
    oslog = _SUSUILoggingFacility();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v40 = type;
      v4 = objc_opt_class();
      v53 = NSStringFromClass(v4);
      v35 = MEMORY[0x277D82BE0](v53);
      v83 = v35;
      v36 = selfCopy;
      v52 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
      v37 = MEMORY[0x277D82BE0](v52);
      v82 = v37;
      currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
      presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
      presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
      presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
      presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
      manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
      currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
      descriptor = [(SUDownload *)currentDownload descriptor];
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v34 = MEMORY[0x277D82BE0](humanReadableUpdateName);
      v81 = v34;
      manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
      manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
      v6 = "YES";
      if (!isTargetedUpdateScheduledForAutoInstall)
      {
        v6 = "NO";
      }

      __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v95, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]", v35, v36, v37, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v34, currentDownload2, v6);
      _os_log_impl(&dword_26AC94000, log, v40, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nSoftwareUpdatePane invoked via URL but no supported option passed in. Nothing to do here. Available options: path, ShowLatestUpdatePane, PerformAction", v95, 0x7Au);
      MEMORY[0x277D82BD8](manager3);
      MEMORY[0x277D82BD8](currentDownload2);
      MEMORY[0x277D82BD8](manager2);
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      MEMORY[0x277D82BD8](descriptor);
      MEMORY[0x277D82BD8](currentDownload);
      MEMORY[0x277D82BD8](manager);
      MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
      MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
      MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
      MEMORY[0x277D82BD8](presentingStatefulDescriptor);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v53);
      objc_storeStrong(&v81, 0);
      objc_storeStrong(&v82, 0);
      objc_storeStrong(&v83, 0);
    }

    objc_storeStrong(&oslog, 0);
    (*(v90 + 2))();
    v80 = 1;
  }

  else
  {
    v79 = _SUSUILoggingFacility();
    v78 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v79;
      v20 = v78;
      v7 = objc_opt_class();
      v33 = NSStringFromClass(v7);
      v15 = MEMORY[0x277D82BE0](v33);
      v77 = v15;
      v16 = selfCopy;
      v32 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
      v17 = MEMORY[0x277D82BE0](v32);
      v76 = v17;
      currentUIState2 = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
      presentingStatefulDescriptor3 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
      presentingStatefulDescriptor4 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
      presentingAlternateStatefulDescriptor3 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
      presentingAlternateStatefulDescriptor4 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
      manager4 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      currentDownload3 = [(SUSettingsStatefulUIManager *)manager4 currentDownload];
      descriptor2 = [(SUDownload *)currentDownload3 descriptor];
      humanReadableUpdateName2 = [(SUDescriptor *)descriptor2 humanReadableUpdateName];
      v14 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
      v75 = v14;
      manager5 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      currentDownload4 = [(SUSettingsStatefulUIManager *)manager5 currentDownload];
      manager6 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      if ([(SUSettingsStatefulUIManager *)manager6 isTargetedUpdateScheduledForAutoInstall])
      {
        v8 = "YES";
      }

      else
      {
        v8 = "NO";
      }

      __os_log_helper_16_2_13_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_66(v94, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]", v15, v16, v17, currentUIState2, presentingStatefulDescriptor3, presentingStatefulDescriptor4, presentingAlternateStatefulDescriptor3, presentingAlternateStatefulDescriptor4, v14, currentDownload4, v8, location[0]);
      _os_log_impl(&dword_26AC94000, v19, v20, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nSoftwareUpdatePane invoked via URL. Will attempt URL specific loading. Dictionary is %{public}@", v94, 0x84u);
      MEMORY[0x277D82BD8](manager6);
      MEMORY[0x277D82BD8](currentDownload4);
      MEMORY[0x277D82BD8](manager5);
      MEMORY[0x277D82BD8](humanReadableUpdateName2);
      MEMORY[0x277D82BD8](descriptor2);
      MEMORY[0x277D82BD8](currentDownload3);
      MEMORY[0x277D82BD8](manager4);
      MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor4);
      MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor3);
      MEMORY[0x277D82BD8](presentingStatefulDescriptor4);
      MEMORY[0x277D82BD8](presentingStatefulDescriptor3);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v33);
      objc_storeStrong(&v75, 0);
      objc_storeStrong(&v76, 0);
      objc_storeStrong(&v77, 0);
    }

    objc_storeStrong(&v79, 0);
    v74 = [location[0] objectForKey:@"path"];
    if (v74 && ([v74 isEqualToString:@"SUAutomaticUpdateButton"] & 1) != 0)
    {
      v73 = 0;
      when = dispatch_time(0, 100000000);
      v11 = MEMORY[0x277D85CD0];
      v9 = MEMORY[0x277D85CD0];
      queue = v11;
      v67 = MEMORY[0x277D85DD0];
      v68 = -1073741824;
      v69 = 0;
      v70 = __62__SUSUISoftwareUpdateController_UI__handleURL_withCompletion___block_invoke;
      v71 = &unk_279CB93E8;
      v72 = MEMORY[0x277D82BE0](selfCopy);
      dispatch_after(when, queue, &v67);
      MEMORY[0x277D82BD8](queue);
      (*(v90 + 2))();
      v80 = 1;
      objc_storeStrong(&v72, 0);
    }

    else
    {
      v66 = _SUSUILoggingFacility();
      v65 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_32(v93, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]");
        _os_log_impl(&dword_26AC94000, v66, v65, "%s: Starting to wait for the scan to be finished", v93, 0xCu);
      }

      objc_storeStrong(&v66, 0);
      v10 = selfCopy;
      v57 = MEMORY[0x277D85DD0];
      v58 = -1073741824;
      v59 = 0;
      v60 = __62__SUSUISoftwareUpdateController_UI__handleURL_withCompletion___block_invoke_382;
      v61 = &unk_279CBDA40;
      v62 = MEMORY[0x277D82BE0](selfCopy);
      v63 = MEMORY[0x277D82BE0](location[0]);
      v64 = MEMORY[0x277D82BE0](v74);
      [(SUSUISoftwareUpdateController *)v10 waitForScanCompletionWithTimeout:240 currentAttempt:0 completionHandler:&v57];
      (*(v90 + 2))();
      objc_storeStrong(&v64, 0);
      objc_storeStrong(&v63, 0);
      objc_storeStrong(&v62, 0);
      v80 = 0;
    }

    objc_storeStrong(&v74, 0);
  }

  objc_storeStrong(&v90, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __62__SUSUISoftwareUpdateController_UI__handleURL_withCompletion___block_invoke(id *a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = objc_alloc_init(SUSUISoftwareUpdateAutomaticUpdateController);
  [v2[0] setParentController:a1[4]];
  [a1[4] showController:v2[0] animate:1];
  objc_storeStrong(v2, 0);
}

void __62__SUSUISoftwareUpdateController_UI__handleURL_withCompletion___block_invoke_382(uint64_t a1, void *a2)
{
  v170 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _SUSUILoggingFacility();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    v69 = type;
    v2 = *(a1 + 32);
    v3 = objc_opt_class();
    v83 = NSStringFromClass(v3);
    v64 = MEMORY[0x277D82BE0](v83);
    v146 = v64;
    v65 = *(a1 + 32);
    v82 = SUSettingsUIStateToString([v65 currentUIState]);
    v66 = MEMORY[0x277D82BE0](v82);
    v145 = v66;
    v67 = [*(a1 + 32) currentUIState];
    v81 = [*(a1 + 32) presentingStatefulDescriptor];
    v80 = [*(a1 + 32) presentingStatefulDescriptor];
    v79 = [*(a1 + 32) presentingAlternateStatefulDescriptor];
    v78 = [*(a1 + 32) presentingAlternateStatefulDescriptor];
    v77 = [*(a1 + 32) manager];
    v76 = [v77 currentDownload];
    v75 = [v76 descriptor];
    v74 = [v75 humanReadableUpdateName];
    v62 = MEMORY[0x277D82BE0](v74);
    v144 = v62;
    v73 = [*(a1 + 32) manager];
    v72 = [v73 currentDownload];
    v71 = [*(a1 + 32) manager];
    v4 = [v71 isTargetedUpdateScheduledForAutoInstall];
    v5 = "YES";
    if ((v4 & 1) == 0)
    {
      v5 = "NO";
    }

    v63 = v5;
    v70 = [*(a1 + 40) objectForKeyedSubscript:@"PerformAction"];
    __os_log_helper_16_2_13_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_66(v169, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]_block_invoke", v64, v65, v66, v67, v81, v80, v79, v78, v62, v72, v63, v70);
    _os_log_impl(&dword_26AC94000, log, v69, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nFinished to wait for an update scan to finish. Performing: %{public}@", v169, 0x84u);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v75);
    MEMORY[0x277D82BD8](v76);
    MEMORY[0x277D82BD8](v77);
    MEMORY[0x277D82BD8](v78);
    MEMORY[0x277D82BD8](v79);
    MEMORY[0x277D82BD8](v80);
    MEMORY[0x277D82BD8](v81);
    MEMORY[0x277D82BD8](v82);
    MEMORY[0x277D82BD8](v83);
    objc_storeStrong(&v144, 0);
    objc_storeStrong(&v145, 0);
    objc_storeStrong(&v146, 0);
  }

  objc_storeStrong(oslog, 0);
  if (location[0] && [location[0] code])
  {
    if ([location[0] code] == 8)
    {
      v143 = _SUSUILoggingFacility();
      v142 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_2_8_32_8_66(v168, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]_block_invoke", *(a1 + 48));
        _os_log_impl(&dword_26AC94000, v143, v142, "%s: Timeout while performing scan for requested URL: %{public}@", v168, 0x16u);
      }

      objc_storeStrong(&v143, 0);
    }

    else
    {
      v141 = _SUSUILoggingFacility();
      v140 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_3_8_32_8_0_8_66(v167, "-[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]_block_invoke", [location[0] code], *(a1 + 48));
        _os_log_impl(&dword_26AC94000, v141, v140, "%s: Error (code: %ld) while performing scan for requested URL: %{public}@", v167, 0x20u);
      }

      objc_storeStrong(&v141, 0);
    }

    v139 = 1;
    goto LABEL_99;
  }

  if (*(a1 + 48) && ([*(a1 + 48) isEqualToString:@"SUBetaUpdatesButton"] & 1) != 0)
  {
    v60 = [*(a1 + 32) manager];
    v59 = [v60 seedingBetaManager];
    v61 = [v59 canCurrentDeviceEnrollInBetaUpdates];
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v60);
    if ((v61 & 1) == 0)
    {
      v138 = _SUSUILoggingFacility();
      v137 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v138;
        v45 = v137;
        v6 = *(a1 + 32);
        v7 = objc_opt_class();
        v58 = NSStringFromClass(v7);
        v40 = MEMORY[0x277D82BE0](v58);
        v136 = v40;
        v41 = *(a1 + 32);
        v57 = SUSettingsUIStateToString([v41 currentUIState]);
        v42 = MEMORY[0x277D82BE0](v57);
        v135 = v42;
        v43 = [*(a1 + 32) currentUIState];
        v56 = [*(a1 + 32) presentingStatefulDescriptor];
        v55 = [*(a1 + 32) presentingStatefulDescriptor];
        v54 = [*(a1 + 32) presentingAlternateStatefulDescriptor];
        v53 = [*(a1 + 32) presentingAlternateStatefulDescriptor];
        v52 = [*(a1 + 32) manager];
        v51 = [v52 currentDownload];
        v50 = [v51 descriptor];
        v49 = [v50 humanReadableUpdateName];
        v39 = MEMORY[0x277D82BE0](v49);
        v134 = v39;
        v48 = [*(a1 + 32) manager];
        v47 = [v48 currentDownload];
        v46 = [*(a1 + 32) manager];
        v8 = [v46 isTargetedUpdateScheduledForAutoInstall];
        v9 = "YES";
        if ((v8 & 1) == 0)
        {
          v9 = "NO";
        }

        __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v166, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]_block_invoke", v40, v41, v42, v43, v56, v55, v54, v53, v39, v47, v9);
        _os_log_impl(&dword_26AC94000, v44, v45, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nSeeding reports that the device is not enrolled to beta updates. Continue with the request anyway.", v166, 0x7Au);
        MEMORY[0x277D82BD8](v46);
        MEMORY[0x277D82BD8](v47);
        MEMORY[0x277D82BD8](v48);
        MEMORY[0x277D82BD8](v49);
        MEMORY[0x277D82BD8](v50);
        MEMORY[0x277D82BD8](v51);
        MEMORY[0x277D82BD8](v52);
        MEMORY[0x277D82BD8](v53);
        MEMORY[0x277D82BD8](v54);
        MEMORY[0x277D82BD8](v55);
        MEMORY[0x277D82BD8](v56);
        MEMORY[0x277D82BD8](v57);
        MEMORY[0x277D82BD8](v58);
        objc_storeStrong(&v134, 0);
        objc_storeStrong(&v135, 0);
        objc_storeStrong(&v136, 0);
      }

      objc_storeStrong(&v138, 0);
    }

    when = dispatch_time(0, 100000000);
    v36 = MEMORY[0x277D85CD0];
    v10 = MEMORY[0x277D85CD0];
    queue = v36;
    v128 = MEMORY[0x277D85DD0];
    v129 = -1073741824;
    v130 = 0;
    v131 = __62__SUSUISoftwareUpdateController_UI__handleURL_withCompletion___block_invoke_383;
    v132 = &unk_279CB93E8;
    v133 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_after(when, queue, &v128);
    MEMORY[0x277D82BD8](queue);
    v139 = 1;
    objc_storeStrong(&v133, 0);
    goto LABEL_99;
  }

  if (*(a1 + 48) && ([*(a1 + 48) isEqualToString:&stru_287B79370] & 1) == 0)
  {
    v127 = _SUSUILoggingFacility();
    v126 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_66(v165, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]_block_invoke_2", *(a1 + 48));
      _os_log_impl(&dword_26AC94000, v127, v126, "%s: Can't resolve URL: %{public}@", v165, 0x16u);
    }

    objc_storeStrong(&v127, 0);
    v139 = 1;
    goto LABEL_99;
  }

  v35 = [*(a1 + 40) objectForKeyedSubscript:@"PerformAction"];
  MEMORY[0x277D82BD8](v35);
  if (v35)
  {
    v33 = [*(a1 + 40) objectForKeyedSubscript:@"PerformAction"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    MEMORY[0x277D82BD8](v33);
    if ((isKindOfClass & 1) == 0)
    {
      v125 = _SUSUILoggingFacility();
      v124 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_32(v164, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]_block_invoke");
        _os_log_impl(&dword_26AC94000, v125, v124, "%s: Can't resolve PerformAction because it's not an NSString.", v164, 0xCu);
      }

      objc_storeStrong(&v125, 0);
    }

    v31 = [*(a1 + 40) objectForKeyedSubscript:@"PerformAction"];
    v32 = [SUSUISoftwareUpdateController updateActionForString:?];
    MEMORY[0x277D82BD8](v31);
    v123 = v32;
    v122 = _SUSUILoggingFacility();
    v121 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [*(a1 + 40) objectForKeyedSubscript:@"PerformAction"];
      __os_log_helper_16_2_3_8_32_8_66_8_0(v163, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]_block_invoke", v30, v123);
      _os_log_impl(&dword_26AC94000, v122, v121, "%s: Resolving the PerformAction string '%{public}@' - %ld", v163, 0x20u);
      MEMORY[0x277D82BD8](v30);
    }

    objc_storeStrong(&v122, 0);
    [*(a1 + 32) performDeepLinkAction:v123];
    v139 = 1;
    goto LABEL_99;
  }

  v120 = _SUSUILoggingFacility();
  v119 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_32(v162, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]_block_invoke");
    _os_log_impl(&dword_26AC94000, v120, v119, "%s: Attempting to show the update pane with the Default Audience asset", v162, 0xCu);
  }

  objc_storeStrong(&v120, 0);
  v118 = [*(a1 + 32) currentUIState];
  v117 = [*(a1 + 32) currentDescriptorState];
  if (v118 == 3)
  {
    v116 = _SUSUILoggingFacility();
    v115 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v161, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]_block_invoke");
      _os_log_impl(&dword_26AC94000, v116, v115, "%s: Manager reported no update was found. Nothing more to do.", v161, 0xCu);
    }

    objc_storeStrong(&v116, 0);
    v139 = 1;
    goto LABEL_99;
  }

  if (v118 == 2)
  {
    v114 = _SUSUILoggingFacility();
    v113 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v160, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]_block_invoke");
      _os_log_impl(&dword_26AC94000, v114, v113, "%s: Manager couldn't find an update - scan failed. Nothing more to do.", v160, 0xCu);
    }

    objc_storeStrong(&v114, 0);
    v139 = 1;
    goto LABEL_99;
  }

  if (v117 >= 4)
  {
    v112 = _SUSUILoggingFacility();
    v111 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v159, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]_block_invoke");
      _os_log_impl(&dword_26AC94000, v112, v111, "%s: The manager update state is past the ready to download phase (update already downloading/preparing/ready to install/installing). Nothing more to do.", v159, 0xCu);
    }

    objc_storeStrong(&v112, 0);
    v139 = 1;
    goto LABEL_99;
  }

  if (v118 == 4)
  {
    v110 = [*(a1 + 40) objectForKey:@"ShowLatestUpdatePane"];
    if (v110 && ([v110 isEqualToString:@"YES"] & 1) != 0)
    {
      v109 = _SUSUILoggingFacility();
      v108 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [*(a1 + 32) presentingDescriptor];
        __os_log_helper_16_2_2_8_32_8_66(v158, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]_block_invoke", v29);
        _os_log_impl(&dword_26AC94000, v109, v108, "%s: DefaultAudience descriptor: %{public}@\nShowLatestUpdatePane is YES, going to try use latestUpdate value from the scan result", v158, 0x16u);
        MEMORY[0x277D82BD8](v29);
      }

      objc_storeStrong(&v109, 0);
      v27 = [*(a1 + 32) manager];
      v28 = [v27 latestUpdateStatefulDescriptor];
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v27);
      if (v28)
      {
        v25 = [*(a1 + 32) presentingAlternateStatefulDescriptor];
        v26 = [v25 isLatestUpdate];
        MEMORY[0x277D82BD8](v25);
        if (v26)
        {
          v107 = _SUSUILoggingFacility();
          v106 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [*(a1 + 32) presentingAlternateDescriptor];
            __os_log_helper_16_2_2_8_32_8_66(v157, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]_block_invoke", v24);
            _os_log_impl(&dword_26AC94000, v107, v106, "%s: DefaultAudience descriptor: %{public}@\nattached to 'Also Availaible' pane.", v157, 0x16u);
            MEMORY[0x277D82BD8](v24);
          }

          objc_storeStrong(&v107, 0);
          [*(a1 + 32) showAlsoAvailaibleSUPane];
          v139 = 1;
        }

        else
        {
          v105 = _SUSUILoggingFacility();
          v104 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [*(a1 + 32) presentingDescriptor];
            __os_log_helper_16_2_2_8_32_8_66(v156, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]_block_invoke", v23);
            _os_log_impl(&dword_26AC94000, v105, v104, "%s: DefaultAudience descriptor: %{public}@\nattached to primary pane. Nothing to do.", v156, 0x16u);
            MEMORY[0x277D82BD8](v23);
          }

          objc_storeStrong(&v105, 0);
          v139 = 1;
        }

LABEL_95:
        objc_storeStrong(&v110, 0);
        goto LABEL_99;
      }

      v103 = _SUSUILoggingFacility();
      v102 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [*(a1 + 32) presentingDescriptor];
        __os_log_helper_16_2_2_8_32_8_66(v155, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]_block_invoke", v22);
        _os_log_impl(&dword_26AC94000, v103, v102, "%s: DefaultAudience descriptor: %{public}@\nlatestUpdateStatefulDescriptor is nil. Unable to use it for the ShowLatestUpdatePane flag", v155, 0x16u);
        MEMORY[0x277D82BD8](v22);
      }

      objc_storeStrong(&v103, 0);
    }

    if (([*(a1 + 32) presentingStatefulDescriptorPromotedAsAlternate] & 1) == 0)
    {
      goto LABEL_76;
    }

    v101 = _SUSUILoggingFacility();
    v100 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v154, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]_block_invoke");
      _os_log_impl(&dword_26AC94000, v101, v100, "%s: presentingStatefulDescriptorPromotedAsAlternate reported true", v154, 0xCu);
    }

    objc_storeStrong(&v101, 0);
    v20 = [*(a1 + 32) presentingDescriptor];
    v98 = 0;
    v21 = 0;
    if (v20)
    {
      v99 = [*(a1 + 32) presentingDescriptor];
      v98 = 1;
      v21 = [v99 audienceType] == 1;
    }

    if (v98)
    {
      MEMORY[0x277D82BD8](v99);
    }

    MEMORY[0x277D82BD8](v20);
    if (v21)
    {
      [*(a1 + 32) showAlsoAvailaibleSUPane];
      v139 = 1;
    }

    else
    {
LABEL_76:
      v18 = [*(a1 + 32) presentingDescriptor];
      v96 = 0;
      v19 = 0;
      if (v18)
      {
        v97 = [*(a1 + 32) presentingDescriptor];
        v96 = 1;
        v19 = [v97 audienceType] == 1;
      }

      if (v96)
      {
        MEMORY[0x277D82BD8](v97);
      }

      MEMORY[0x277D82BD8](v18);
      if (v19)
      {
        v95 = _SUSUILoggingFacility();
        v94 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [*(a1 + 32) presentingDescriptor];
          __os_log_helper_16_2_2_8_32_8_66(v153, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]_block_invoke", v17);
          _os_log_impl(&dword_26AC94000, v95, v94, "%s: DefaultAudience descriptor: %{public}@\nattached to primary pane. Nothing to do.", v153, 0x16u);
          MEMORY[0x277D82BD8](v17);
        }

        objc_storeStrong(&v95, 0);
        v139 = 1;
      }

      else
      {
        v15 = [*(a1 + 32) presentingAlternateDescriptor];
        v92 = 0;
        v16 = 0;
        if (v15)
        {
          v93 = [*(a1 + 32) presentingAlternateDescriptor];
          v92 = 1;
          v16 = [v93 audienceType] == 1;
        }

        if (v92)
        {
          MEMORY[0x277D82BD8](v93);
        }

        MEMORY[0x277D82BD8](v15);
        if (v16)
        {
          v91 = _SUSUILoggingFacility();
          v90 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [*(a1 + 32) presentingAlternateDescriptor];
            __os_log_helper_16_2_2_8_32_8_66(v152, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]_block_invoke", v14);
            _os_log_impl(&dword_26AC94000, v91, v90, "%s: DefaultAudience descriptor: %{public}@\nattached to 'Also Availaible' pane.", v152, 0x16u);
            MEMORY[0x277D82BD8](v14);
          }

          objc_storeStrong(&v91, 0);
          [*(a1 + 32) showAlsoAvailaibleSUPane];
          v139 = 1;
        }

        else
        {
          v89 = _SUSUILoggingFacility();
          v88 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            __os_log_helper_16_2_1_8_32(v151, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]_block_invoke");
            _os_log_impl(&dword_26AC94000, v89, v88, "%s: No DefaultAudience updates found. Nothing to do.", v151, 0xCu);
          }

          objc_storeStrong(&v89, 0);
          v139 = 1;
        }
      }
    }

    goto LABEL_95;
  }

  v87 = _SUSUILoggingFacility();
  v86 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v87;
    v12 = v86;
    v13 = SUSettingsUIStateToString(v118);
    v85 = MEMORY[0x277D82BE0](v13);
    __os_log_helper_16_2_3_8_32_8_0_8_64(v150, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]_block_invoke", v118, v85);
    _os_log_impl(&dword_26AC94000, v11, v12, "%s: The state %ld (%@) isn't associated with any special handler. Nothing more to do.", v150, 0x20u);
    MEMORY[0x277D82BD8](v13);
    objc_storeStrong(&v85, 0);
  }

  objc_storeStrong(&v87, 0);
  v139 = 0;
LABEL_99:
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __62__SUSUISoftwareUpdateController_UI__handleURL_withCompletion___block_invoke_383(id *a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = objc_alloc_init(SUSUISoftwareUpdateBetaUpdatesController);
  [v2[0] setParentController:a1[4]];
  [a1[4] showController:v2[0] animate:1];
  objc_storeStrong(v2, 0);
}

- (BOOL)isBusy
{
  refreshControl = [(SUSUISoftwareUpdateController *)self refreshControl];
  v11 = 0;
  v9 = 0;
  v7 = 0;
  v5 = 0;
  if (!refreshControl || (v12 = [(SUSUISoftwareUpdateController *)self refreshControl], v11 = 1, isPerformingUpdate = 1, ![(UIRefreshControl *)v12 isRefreshing]))
  {
    updateOptionsCell = [(SUSUISoftwareUpdateController *)self updateOptionsCell];
    v9 = 1;
    if (!updateOptionsCell || (v8 = [(SUSUISoftwareUpdateController *)self updateOptionsCell], v7 = 1, isPerformingUpdate = 1, ![(SUSSoftwareUpdateUpdateOptionsCell *)v8 activityIndicatorDisplayStyle]))
    {
      manager = [(SUSUISoftwareUpdateController *)self manager];
      v5 = 1;
      isPerformingUpdate = [(SUSettingsStatefulUIManager *)manager isPerformingUpdate];
    }
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](manager);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](updateOptionsCell);
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  MEMORY[0x277D82BD8](refreshControl);
  return isPerformingUpdate & 1;
}

- (id)_createGroupIndices:(id)indices
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, indices);
  v9 = [location[0] count];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v9];
  for (i = 0; i < v9; ++i)
  {
    v7 = [location[0] objectAtIndex:i];
    if (!*(v7 + *MEMORY[0x277D3FC90]))
    {
      v5 = v8;
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
      [v5 addObject:?];
      MEMORY[0x277D82BD8](v6);
    }

    objc_storeStrong(&v7, 0);
  }

  v4 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)specifierForSection:(int64_t)section
{
  v23 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v17 = a2;
  sectionCopy = section;
  specifiers = [(SUSUISoftwareUpdateController *)self specifiers];
  location = [(SUSUISoftwareUpdateController *)selfCopy _createGroupIndices:specifiers];
  if (location)
  {
    if ([location count] > sectionCopy)
    {
      v5 = [location objectAtIndex:sectionCopy];
      integerValue = [v5 integerValue];
      MEMORY[0x277D82BD8](v5);
      v8 = integerValue;
      if (integerValue < [*(&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) count])
      {
        v19 = [specifiers objectAtIndex:v8];
        v11 = 1;
      }

      else
      {
        v7 = _SUSUILoggingFacility();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_5_8_0_8_0_8_0_8_66_8_66(v20, sectionCopy, v8, [specifiers count], location, specifiers);
          _os_log_error_impl(&dword_26AC94000, v7, OS_LOG_TYPE_ERROR, "Failed to resolve the specifier for section %ld. The resolved index (%ld) >= the number of total specifiers (%ld) and will cause an overflow. Groups: %{public}@; Specifiers: %{public}@", v20, 0x34u);
        }

        objc_storeStrong(&v7, 0);
        v19 = 0;
        v11 = 1;
      }
    }

    else
    {
      v10 = _SUSUILoggingFacility();
      v9 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_5_8_0_8_0_8_0_8_66_8_66(v21, sectionCopy, [location count], sectionCopy, location, specifiers);
        _os_log_error_impl(&dword_26AC94000, v10, v9, "Failed to resolve the specifier for section %ld. The number of groups (%ld) <= the requested section (%ld) and will cause an overflow. Groups: %{public}@; Specifiers: %{public}@", v21, 0x34u);
      }

      objc_storeStrong(&v10, 0);
      v19 = 0;
      v11 = 1;
    }
  }

  else
  {
    oslog = _SUSUILoggingFacility();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_0_8_66(v22, sectionCopy, specifiers);
      _os_log_error_impl(&dword_26AC94000, oslog, type, "Failed to resolve the specifier for section %ld. The returned groups array is nil. Specifiers: %{public}@", v22, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v19 = 0;
    v11 = 1;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&specifiers, 0);
  *MEMORY[0x277D85DE8];
  v3 = v19;

  return v3;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  sectionCopy = section;
  v16 = [(SUSUISoftwareUpdateController *)selfCopy specifierForSection:section];
  v10 = [v16 propertyForKey:*MEMORY[0x277D3FFB8]];
  v14 = 0;
  v11 = 0;
  if (v10)
  {
    v15 = [v16 propertyForKey:*MEMORY[0x277D3FFB8]];
    v14 = 1;
    v11 = [v15 isEqualToString:@"SUScanStatusCell"];
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  MEMORY[0x277D82BD8](v10);
  if (v11)
  {
    v20 = 2.22507386e-308;
    v13 = 1;
  }

  else
  {
    v8 = [v16 propertyForKey:@"SUHeight"];
    MEMORY[0x277D82BD8](v8);
    if (!v8 || (v6 = [v16 propertyForKey:@"SUHeight"], v7 = objc_msgSend(v6, "integerValue"), MEMORY[0x277D82BD8](v6), v7))
    {
      v12.receiver = selfCopy;
      v12.super_class = SUSUISoftwareUpdateController;
      [(SUSUISoftwareUpdateController *)&v12 tableView:location[0] heightForHeaderInSection:sectionCopy];
      v20 = v4;
      v13 = 1;
    }

    else
    {
      v20 = 2.22507386e-308;
      v13 = 1;
    }
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v20;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v23[1] = section;
  v23[0] = [(SUSUISoftwareUpdateController *)selfCopy specifierForSection:section];
  v7 = [v23[0] propertyForKey:*MEMORY[0x277D3FFB8]];
  v21 = 0;
  v19 = 0;
  v17 = 0;
  v15 = 0;
  v13 = 0;
  v11 = 0;
  v9 = 0;
  v8 = 0;
  if (v7)
  {
    v22 = +[SUSUISoftwareUpdateController visibleGroupSpecifiers];
    v21 = 1;
    v20 = [v23[0] propertyForKey:*MEMORY[0x277D3FFB8]];
    v19 = 1;
    v8 = 0;
    if ([v22 containsObject:?])
    {
      name = [v23[0] name];
      v17 = 1;
      if (!name || (v16 = [v23[0] name], v15 = 1, v5 = 1, (objc_msgSend(v16, "isEqualToString:", &stru_287B79370) & 1) != 0))
      {
        v14 = [v23[0] propertyForKey:*MEMORY[0x277D3FF88]];
        v13 = 1;
        if (!v14 || (v12 = [v23[0] propertyForKey:*MEMORY[0x277D3FF88]], v11 = 1, v5 = 1, (objc_msgSend(v12, "isEqualToString:", &stru_287B79370) & 1) != 0))
        {
          v10 = [v23[0] propertyForKey:*MEMORY[0x277D3FF90]];
          v9 = 1;
          v5 = v10 != 0;
        }
      }

      v8 = v5;
    }
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  if (v15)
  {
    MEMORY[0x277D82BD8](v16);
  }

  if (v17)
  {
    MEMORY[0x277D82BD8](name);
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](v20);
  }

  if (v21)
  {
    MEMORY[0x277D82BD8](v22);
  }

  MEMORY[0x277D82BD8](v7);
  if (v8)
  {
    v26 = *MEMORY[0x277D76F30];
  }

  else
  {
    v26 = 2.22507386e-308;
  }

  objc_storeStrong(v23, 0);
  objc_storeStrong(location, 0);
  return v26;
}

- (double)tableView:(id)view estimatedHeightForFooterInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v12[1] = section;
  v12[0] = [(SUSUISoftwareUpdateController *)selfCopy specifierForSection:section];
  v6 = [v12[0] propertyForKey:*MEMORY[0x277D3FFB8]];
  v10 = 0;
  v8 = 0;
  v7 = 0;
  if (v6)
  {
    v11 = +[SUSUISoftwareUpdateController visibleGroupSpecifiers];
    v10 = 1;
    v9 = [v12[0] propertyForKey:*MEMORY[0x277D3FFB8]];
    v8 = 1;
    v7 = [v11 containsObject:?];
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    v15 = *MEMORY[0x277D76F30];
  }

  else
  {
    v15 = 2.22507386e-308;
  }

  objc_storeStrong(v12, 0);
  objc_storeStrong(location, 0);
  return v15;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v18 = 0;
  objc_storeStrong(&v18, path);
  [(SUSUISoftwareUpdateController *)selfCopy fixCustomCellSpecifiers];
  v17 = [(SUSUISoftwareUpdateController *)selfCopy indexForIndexPath:v18];
  v16 = [(SUSUISoftwareUpdateController *)selfCopy specifierAtIndex:v17];
  v15 = [v16 propertyForKey:*MEMORY[0x277D40148]];
  v7 = [(SUSUISoftwareUpdateController *)selfCopy specifierForID:@"SUTitleCell"];
  v13 = 0;
  v11 = 0;
  v8 = 1;
  if (v16 != v7)
  {
    v14 = [(SUSUISoftwareUpdateController *)selfCopy specifierForID:@"SUScanStatusCell"];
    v13 = 1;
    v8 = 1;
    if (v16 != v14)
    {
      v12 = [(SUSUISoftwareUpdateController *)selfCopy specifierForID:@"SUTipKitComingSoonCell"];
      v11 = 1;
      v8 = v16 == v12;
    }
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  MEMORY[0x277D82BD8](v7);
  if (v8)
  {
    [v15 preferredHeightWithTable:location[0]];
  }

  else
  {
    v9.receiver = selfCopy;
    v9.super_class = SUSUISoftwareUpdateController;
    [(SUSUISoftwareUpdateController *)&v9 tableView:location[0] heightForRowAtIndexPath:v18];
  }

  v21 = v4;
  v10 = 1;
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  return v21;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v30 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v26 = 0;
  objc_storeStrong(&v26, path);
  [(SUSUISoftwareUpdateController *)selfCopy fixCustomCellSpecifiers];
  v25 = 0;
  v24 = [(SUSUISoftwareUpdateController *)selfCopy specifierAtIndex:[(SUSUISoftwareUpdateController *)selfCopy indexForIndexPath:v26]];
  customCellsMapping = [(SUSUISoftwareUpdateController *)selfCopy customCellsMapping];
  memset(__b, 0, sizeof(__b));
  v17 = MEMORY[0x277D82BE0](customCellsMapping);
  v18 = [v17 countByEnumeratingWithState:__b objects:v29 count:16];
  if (v18)
  {
    v13 = *__b[2];
    v14 = 0;
    v15 = v18;
    while (1)
    {
      v12 = v14;
      if (*__b[2] != v13)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(__b[1] + 8 * v14);
      v11 = v24;
      v10 = [(SUSUISoftwareUpdateController *)selfCopy specifierForID:v22];
      MEMORY[0x277D82BD8](v10);
      if (v11 == v10)
      {
        break;
      }

      ++v14;
      if (v12 + 1 >= v15)
      {
        v14 = 0;
        v15 = [v17 countByEnumeratingWithState:__b objects:v29 count:16];
        if (!v15)
        {
          goto LABEL_9;
        }
      }
    }

    v4 = [v24 propertyForKey:*MEMORY[0x277D40148]];
    v5 = v25;
    v25 = v4;
    MEMORY[0x277D82BD8](v5);
    v20 = 2;
  }

  else
  {
LABEL_9:
    v20 = 0;
  }

  MEMORY[0x277D82BD8](v17);
  if (!v25)
  {
    v19.receiver = selfCopy;
    v19.super_class = SUSUISoftwareUpdateController;
    v6 = [(SUSUISoftwareUpdateController *)&v19 tableView:location[0] cellForRowAtIndexPath:v26];
    v7 = v25;
    v25 = v6;
    MEMORY[0x277D82BD8](v7);
  }

  [v25 setSeparatorInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  v9 = MEMORY[0x277D82BE0](v25);
  v20 = 1;
  objc_storeStrong(&customCellsMapping, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v9;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  sectionCopy = section;
  if (*(&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) && [*(&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) count])
  {
    v7.receiver = selfCopy;
    v7.super_class = SUSUISoftwareUpdateController;
    v11 = [(SUSUISoftwareUpdateController *)&v7 tableView:location[0] titleForFooterInSection:sectionCopy];
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(location, 0);
  v4 = v11;

  return v4;
}

- (void)titleCell:(id)cell learnMoreButtonTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cell);
  v19 = 0;
  objc_storeStrong(&v19, tapped);
  v7 = selfCopy;
  learnMoreTappedString = [(SUSUISoftwareUpdateController *)selfCopy learnMoreTappedString];
  [(SUSUISoftwareUpdateController *)v7 submitAnalyticsEvent:?];
  MEMORY[0x277D82BD8](learnMoreTappedString);
  v18 = objc_alloc_init(MEMORY[0x277D64AB0]);
  v10 = v18;
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  presentingDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptor];
  documentation = [presentingDescriptor documentation];
  releaseNotes = [documentation releaseNotes];
  v11 = [v9 initWithData:? encoding:?];
  [v10 setReleaseNotes:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](releaseNotes);
  MEMORY[0x277D82BD8](documentation);
  MEMORY[0x277D82BD8](presentingDescriptor);
  v4 = objc_alloc(MEMORY[0x277D757A0]);
  v17 = [v4 initWithRootViewController:v18];
  [v17 setModalPresentationStyle:2];
  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v16 = [v5 initWithBarButtonSystemItem:0 target:selfCopy action:sel_detailedReleaseNotesDonePressed_];
  navigationItem = [v18 navigationItem];
  [navigationItem setRightBarButtonItem:v16];
  MEMORY[0x277D82BD8](navigationItem);
  [(SUSUISoftwareUpdateController *)selfCopy presentViewController:v17 animated:1 completion:0];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = 0;
  objc_storeStrong(&v6, path);
  *(&selfCopy->super.super.super.super.super.isa + *MEMORY[0x277D3FC38]) = 0;
  v5.receiver = selfCopy;
  v5.super_class = SUSUISoftwareUpdateController;
  [(SUSUISoftwareUpdateController *)&v5 tableView:location[0] didSelectRowAtIndexPath:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (id)selectSpecifier:(id)specifier
{
  v129 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  if (location[0])
  {
    v115.receiver = selfCopy;
    v115.super_class = SUSUISoftwareUpdateController;
    v116 = [(SUSUISoftwareUpdateController *)&v115 selectSpecifier:location[0]];
    if (v116)
    {
      v108 = _SUSUILoggingFacility();
      v107 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v108;
        v41 = v107;
        v9 = objc_opt_class();
        v56 = NSStringFromClass(v9);
        v36 = MEMORY[0x277D82BE0](v56);
        v106 = v36;
        v37 = selfCopy;
        v55 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
        v38 = MEMORY[0x277D82BE0](v55);
        v105 = v38;
        currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
        presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
        presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
        presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
        presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
        manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
        currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
        descriptor = [(SUDownload *)currentDownload descriptor];
        humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
        v33 = MEMORY[0x277D82BE0](humanReadableUpdateName);
        v104 = v33;
        manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
        currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
        manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
        isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
        v11 = "YES";
        if (!isTargetedUpdateScheduledForAutoInstall)
        {
          v11 = "NO";
        }

        v34 = v11;
        v43 = [location[0] propertyForKey:*MEMORY[0x277D3FFB8]];
        v35 = MEMORY[0x277D82BE0](v43);
        v103 = v35;
        v12 = objc_opt_class();
        v42 = NSStringFromClass(v12);
        v102 = MEMORY[0x277D82BE0](v42);
        __os_log_helper_16_2_14_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_66_8_66(v126, "[SUSUISoftwareUpdateController(UI) selectSpecifier:]", v36, v37, v38, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v33, currentDownload2, v34, v35, v102);
        _os_log_impl(&dword_26AC94000, v40, v41, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nSelected specifier ID: %{public}@ -> %{public}@", v126, 0x8Eu);
        MEMORY[0x277D82BD8](v42);
        MEMORY[0x277D82BD8](v43);
        MEMORY[0x277D82BD8](manager3);
        MEMORY[0x277D82BD8](currentDownload2);
        MEMORY[0x277D82BD8](manager2);
        MEMORY[0x277D82BD8](humanReadableUpdateName);
        MEMORY[0x277D82BD8](descriptor);
        MEMORY[0x277D82BD8](currentDownload);
        MEMORY[0x277D82BD8](manager);
        MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
        MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
        MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
        MEMORY[0x277D82BD8](presentingStatefulDescriptor);
        MEMORY[0x277D82BD8](v55);
        MEMORY[0x277D82BD8](v56);
        objc_storeStrong(&v102, 0);
        objc_storeStrong(&v103, 0);
        objc_storeStrong(&v104, 0);
        objc_storeStrong(&v105, 0);
        objc_storeStrong(&v106, 0);
      }

      objc_storeStrong(&v108, 0);
      v31 = [location[0] propertyForKey:*MEMORY[0x277D3FFB8]];
      v100 = 0;
      v32 = 1;
      if (([v31 isEqualToString:@"SUAlternateUpdateButton"] & 1) == 0)
      {
        v101 = [location[0] propertyForKey:*MEMORY[0x277D3FFB8]];
        v100 = 1;
        v32 = [v101 isEqualToString:@"SUNonPromotedUpdateButton"];
      }

      if (v100)
      {
        MEMORY[0x277D82BD8](v101);
      }

      MEMORY[0x277D82BD8](v31);
      if (v32)
      {
        v99 = MEMORY[0x277D82BE0](v116);
        manager4 = [(SUSUISoftwareUpdateController *)selfCopy manager];
        [v99 setManager:?];
        MEMORY[0x277D82BD8](manager4);
        manager5 = [v99 manager];
        [manager5 setDelegate:v99];
        MEMORY[0x277D82BD8](manager5);
        [v99 setParentController:selfCopy];
        [v99 setDelegate:selfCopy];
        v29 = [location[0] propertyForKey:*MEMORY[0x277D3FFB8]];
        v30 = [v29 isEqualToString:@"SUAlternateUpdateButton"];
        MEMORY[0x277D82BD8](v29);
        if (v30)
        {
          [v99 setSlowRollUpdateType:0];
          v25 = selfCopy;
          analyticsAlternateUpdateCellTappedString = [(SUSUISoftwareUpdateController *)selfCopy analyticsAlternateUpdateCellTappedString];
          [(SUSUISoftwareUpdateController *)v25 recordAnalyticsEvent:?];
          MEMORY[0x277D82BD8](analyticsAlternateUpdateCellTappedString);
        }

        else
        {
          [v99 setSlowRollUpdateType:1];
          v23 = selfCopy;
          analyticsNonPromotedUpdateCellTappedString = [(SUSUISoftwareUpdateController *)selfCopy analyticsNonPromotedUpdateCellTappedString];
          [(SUSUISoftwareUpdateController *)v23 recordAnalyticsEvent:?];
          MEMORY[0x277D82BD8](analyticsNonPromotedUpdateCellTappedString);
        }

        objc_storeStrong(&v99, 0);
      }

      else
      {
        v21 = [location[0] propertyForKey:*MEMORY[0x277D3FFB8]];
        v22 = [v21 isEqualToString:@"SUAutomaticUpdateButton"];
        MEMORY[0x277D82BD8](v21);
        if (v22)
        {
          v19 = selfCopy;
          analyticsAutomaticUpdatesCellTappedString = [(SUSUISoftwareUpdateController *)selfCopy analyticsAutomaticUpdatesCellTappedString];
          [(SUSUISoftwareUpdateController *)v19 recordAnalyticsEvent:?];
          MEMORY[0x277D82BD8](analyticsAutomaticUpdatesCellTappedString);
        }

        else
        {
          v17 = [location[0] propertyForKey:*MEMORY[0x277D3FFB8]];
          v18 = [v17 isEqualToString:@"SUGetBetaUpdatesButton"];
          MEMORY[0x277D82BD8](v17);
          if (v18)
          {
            v15 = selfCopy;
            analyticsBetaUpdatesCellTappedString = [(SUSUISoftwareUpdateController *)selfCopy analyticsBetaUpdatesCellTappedString];
            [(SUSUISoftwareUpdateController *)v15 recordAnalyticsEvent:?];
            MEMORY[0x277D82BD8](analyticsBetaUpdatesCellTappedString);
          }
        }
      }

      [(SUSUISoftwareUpdateController *)selfCopy showController:v116 animate:1];
      v125 = 0;
      v117 = 1;
    }

    else
    {
      v114 = _SUSUILoggingFacility();
      v113 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
      {
        v63 = v114;
        v64 = v113;
        v6 = objc_opt_class();
        v78 = NSStringFromClass(v6);
        v59 = MEMORY[0x277D82BE0](v78);
        v112 = v59;
        v60 = selfCopy;
        v77 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
        v61 = MEMORY[0x277D82BE0](v77);
        v111 = v61;
        currentUIState2 = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
        presentingStatefulDescriptor3 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
        presentingStatefulDescriptor4 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
        presentingAlternateStatefulDescriptor3 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
        presentingAlternateStatefulDescriptor4 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
        manager6 = [(SUSUISoftwareUpdateController *)selfCopy manager];
        currentDownload3 = [(SUSettingsStatefulUIManager *)manager6 currentDownload];
        descriptor2 = [(SUDownload *)currentDownload3 descriptor];
        humanReadableUpdateName2 = [(SUDescriptor *)descriptor2 humanReadableUpdateName];
        v57 = MEMORY[0x277D82BE0](humanReadableUpdateName2);
        v110 = v57;
        manager7 = [(SUSUISoftwareUpdateController *)selfCopy manager];
        currentDownload4 = [(SUSettingsStatefulUIManager *)manager7 currentDownload];
        manager8 = [(SUSUISoftwareUpdateController *)selfCopy manager];
        isTargetedUpdateScheduledForAutoInstall2 = [(SUSettingsStatefulUIManager *)manager8 isTargetedUpdateScheduledForAutoInstall];
        v8 = "YES";
        if (!isTargetedUpdateScheduledForAutoInstall2)
        {
          v8 = "NO";
        }

        v58 = v8;
        v65 = [location[0] propertyForKey:*MEMORY[0x277D3FFB8]];
        v109 = MEMORY[0x277D82BE0](v65);
        __os_log_helper_16_2_13_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_66(v127, "[SUSUISoftwareUpdateController(UI) selectSpecifier:]", v59, v60, v61, currentUIState2, presentingStatefulDescriptor3, presentingStatefulDescriptor4, presentingAlternateStatefulDescriptor3, presentingAlternateStatefulDescriptor4, v57, currentDownload4, v58, v109);
        _os_log_impl(&dword_26AC94000, v63, v64, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nSelected specifier ID: %{public}@ -> No controller found. Skipping on pushing.", v127, 0x84u);
        MEMORY[0x277D82BD8](v65);
        MEMORY[0x277D82BD8](manager8);
        MEMORY[0x277D82BD8](currentDownload4);
        MEMORY[0x277D82BD8](manager7);
        MEMORY[0x277D82BD8](humanReadableUpdateName2);
        MEMORY[0x277D82BD8](descriptor2);
        MEMORY[0x277D82BD8](currentDownload3);
        MEMORY[0x277D82BD8](manager6);
        MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor4);
        MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor3);
        MEMORY[0x277D82BD8](presentingStatefulDescriptor4);
        MEMORY[0x277D82BD8](presentingStatefulDescriptor3);
        MEMORY[0x277D82BD8](v77);
        MEMORY[0x277D82BD8](v78);
        objc_storeStrong(&v109, 0);
        objc_storeStrong(&v110, 0);
        objc_storeStrong(&v111, 0);
        objc_storeStrong(&v112, 0);
      }

      objc_storeStrong(&v114, 0);
      v125 = 0;
      v117 = 1;
    }

    objc_storeStrong(&v116, 0);
  }

  else
  {
    oslog = _SUSUILoggingFacility();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v85 = type;
      v3 = objc_opt_class();
      v98 = NSStringFromClass(v3);
      v80 = MEMORY[0x277D82BE0](v98);
      v120 = v80;
      v81 = selfCopy;
      v97 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
      v82 = MEMORY[0x277D82BE0](v97);
      v119 = v82;
      currentUIState3 = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
      presentingStatefulDescriptor5 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
      presentingStatefulDescriptor6 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
      presentingAlternateStatefulDescriptor5 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
      presentingAlternateStatefulDescriptor6 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
      manager9 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      currentDownload5 = [(SUSettingsStatefulUIManager *)manager9 currentDownload];
      descriptor3 = [(SUDownload *)currentDownload5 descriptor];
      humanReadableUpdateName3 = [(SUDescriptor *)descriptor3 humanReadableUpdateName];
      v79 = MEMORY[0x277D82BE0](humanReadableUpdateName3);
      v118 = v79;
      manager10 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      currentDownload6 = [(SUSettingsStatefulUIManager *)manager10 currentDownload];
      manager11 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      isTargetedUpdateScheduledForAutoInstall3 = [(SUSettingsStatefulUIManager *)manager11 isTargetedUpdateScheduledForAutoInstall];
      v5 = "YES";
      if (!isTargetedUpdateScheduledForAutoInstall3)
      {
        v5 = "NO";
      }

      __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v128, "[SUSUISoftwareUpdateController(UI) selectSpecifier:]", v80, v81, v82, currentUIState3, presentingStatefulDescriptor5, presentingStatefulDescriptor6, presentingAlternateStatefulDescriptor5, presentingAlternateStatefulDescriptor6, v79, currentDownload6, v5);
      _os_log_impl(&dword_26AC94000, log, v85, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nSelected specifier is nil, return", v128, 0x7Au);
      MEMORY[0x277D82BD8](manager11);
      MEMORY[0x277D82BD8](currentDownload6);
      MEMORY[0x277D82BD8](manager10);
      MEMORY[0x277D82BD8](humanReadableUpdateName3);
      MEMORY[0x277D82BD8](descriptor3);
      MEMORY[0x277D82BD8](currentDownload5);
      MEMORY[0x277D82BD8](manager9);
      MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor6);
      MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor5);
      MEMORY[0x277D82BD8](presentingStatefulDescriptor6);
      MEMORY[0x277D82BD8](presentingStatefulDescriptor5);
      MEMORY[0x277D82BD8](v97);
      MEMORY[0x277D82BD8](v98);
      objc_storeStrong(&v118, 0);
      objc_storeStrong(&v119, 0);
      objc_storeStrong(&v120, 0);
    }

    objc_storeStrong(&oslog, 0);
    v125 = 0;
    v117 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v13 = v125;

  return v13;
}

- (void)openStorage
{
  v35 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v32[1] = a2;
  v32[0] = _SUSUILoggingFacility();
  v31 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v32[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v32[0];
    type = v31;
    v2 = objc_opt_class();
    v26 = NSStringFromClass(v2);
    v9 = MEMORY[0x277D82BE0](v26);
    v30 = v9;
    v25 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v10 = MEMORY[0x277D82BE0](v25);
    v29 = v10;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v8 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v28 = v8;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v34, "[SUSUISoftwareUpdateController(UI) openStorage]", v9, selfCopy, v10, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v8, currentDownload2, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v34, 0x7Au);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
  }

  objc_storeStrong(v32, 0);
  v5 = selfCopy;
  analyticsOpenStorageTappedString = [(SUSUISoftwareUpdateController *)selfCopy analyticsOpenStorageTappedString];
  [(SUSUISoftwareUpdateController *)v5 submitAnalyticsEvent:?];
  MEMORY[0x277D82BD8](analyticsOpenStorageTappedString);
  v27 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.General/STORAGE_MGMT"];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openSensitiveURL:v27 withOptions:0];
  MEMORY[0x277D82BD8](defaultWorkspace);
  objc_storeStrong(&v27, 0);
  *MEMORY[0x277D85DE8];
}

- (void)downloadOnly:(id)only
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, only);
  [(SUSUISoftwareUpdateController *)selfCopy beginUpdateDownloadOnlyOperation];
  objc_storeStrong(location, 0);
}

- (void)downloadAndInstall:(id)install
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  [(SUSUISoftwareUpdateController *)selfCopy beginUpdateNowOperation];
  objc_storeStrong(location, 0);
}

- (void)downloadAndInstallTonight:(id)tonight
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tonight);
  [(SUSUISoftwareUpdateController *)selfCopy beginUpdateTonightOperation];
  objc_storeStrong(location, 0);
}

- (void)installTonight:(id)tonight
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tonight);
  [(SUSUISoftwareUpdateController *)selfCopy beginInstallTonightOperation];
  objc_storeStrong(location, 0);
}

- (void)install:(id)install
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  v3 = selfCopy;
  installNowTappedString = [(SUSUISoftwareUpdateController *)selfCopy installNowTappedString];
  [(SUSUISoftwareUpdateController *)v3 recordAnalyticsEvent:?];
  MEMORY[0x277D82BD8](installNowTappedString);
  [(SUSUISoftwareUpdateController *)selfCopy beginInstallOperation];
  objc_storeStrong(location, 0);
}

- (void)requestToPromoteTargetedUpdateToUserInitiatedStatus:(id)status
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, status);
  [(SUSUISoftwareUpdateController *)selfCopy promoteTargetedUpdateToUserInitiatedStatus];
  objc_storeStrong(location, 0);
}

- (void)autoInstallCancel:(id)cancel
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cancel);
  [(SUSUISoftwareUpdateController *)selfCopy unscheduleTargetedUpdateAutomaticInstallation];
  objc_storeStrong(location, 0);
}

- (void)detailedReleaseNotesDonePressed:(id)pressed
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  v30 = _SUSUILoggingFacility();
  v29 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    log = v30;
    type = v29;
    v3 = objc_opt_class();
    v25 = NSStringFromClass(v3);
    v7 = MEMORY[0x277D82BE0](v25);
    v28 = v7;
    v8 = selfCopy;
    v24 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v9 = MEMORY[0x277D82BE0](v24);
    v27 = v9;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v6 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v26 = v6;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v5 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v5 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v33, "[SUSUISoftwareUpdateController(UI) detailedReleaseNotesDonePressed:]", v7, v8, v9, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v6, currentDownload2, v5);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v33, 0x7Au);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
  }

  objc_storeStrong(&v30, 0);
  [(SUSUISoftwareUpdateController *)selfCopy dismissViewControllerAnimated:1 completion:0];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)performUpdateRescan:(id)rescan
{
  v45 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, rescan);
  v41 = _SUSUILoggingFacility();
  v40 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    log = v41;
    type = v40;
    v3 = objc_opt_class();
    v33 = NSStringFromClass(v3);
    v15 = MEMORY[0x277D82BE0](v33);
    v39 = v15;
    v16 = selfCopy;
    v32 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v17 = MEMORY[0x277D82BE0](v32);
    v38 = v17;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v14 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v37 = v14;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v5 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v5 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v44, "[SUSUISoftwareUpdateController(UI) performUpdateRescan:]", v15, v16, v17, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v14, currentDownload2, v5);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v44, 0x7Au);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
  }

  objc_storeStrong(&v41, 0);
  if ([(SUSUISoftwareUpdateController *)selfCopy supportsPullToRefresh])
  {
    [location[0] beginRefreshing];
    v7 = location[0];
    v6 = objc_alloc(MEMORY[0x277CCA898]);
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v10 localizedStringForKey:@"CHECKING_FOR_UPDATES" value:&stru_287B79370 table:@"Software Update"];
    v8 = [v6 initWithString:?];
    [v7 setAttributedTitle:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    [(SUSUISoftwareUpdateController *)selfCopy refreshPane];
    manager4 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    [(SUSettingsStatefulUIManager *)manager4 checkForUpdatesInBackground];
    MEMORY[0x277D82BD8](manager4);
  }

  else
  {
    v36 = _SUSUILoggingFacility();
    v35 = 16;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v12 = v36;
      v13 = v35;
      __os_log_helper_16_0_0(v34);
      _os_log_error_impl(&dword_26AC94000, v12, v13, "Could not perform a pull to refresh as it was disabled by the class instance.", v34, 2u);
    }

    objc_storeStrong(&v36, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)autoInstallCancelPrompt:(id)prompt
{
  v52 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, prompt);
  v48 = _SUSUILoggingFacility();
  v47 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    log = v48;
    type = v47;
    v3 = objc_opt_class();
    v41 = NSStringFromClass(v3);
    v23 = MEMORY[0x277D82BE0](v41);
    v46 = v23;
    v24 = selfCopy;
    v40 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v25 = MEMORY[0x277D82BE0](v40);
    v45 = v25;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v22 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v44 = v22;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v5 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v5 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v51, "[SUSUISoftwareUpdateController(UI) autoInstallCancelPrompt:]", v23, v24, v25, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v22, currentDownload2, v5);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v51, 0x7Au);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    objc_storeStrong(&v44, 0);
    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v46, 0);
  }

  objc_storeStrong(&v48, 0);
  v43 = [MEMORY[0x277D3F9C8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = dictionary;
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v12 localizedStringForKey:@"AUTO_INSTALL_CONFIRM_CANCEL" value:&stru_287B79370 table:?];
  v6 = *MEMORY[0x277D3FE78];
  [v10 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v13 = dictionary;
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v15 localizedStringForKey:@"AUTO_INSTALL_CONFIRM_OK" value:&stru_287B79370 table:@"Software Update"];
  v7 = *MEMORY[0x277D3FE88];
  [v13 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  v16 = dictionary;
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v18 localizedStringForKey:@"AUTO_INSTALL_CONFIRM_PROMPT" value:&stru_287B79370 table:@"Software Update"];
  v8 = *MEMORY[0x277D3FE90];
  [v16 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  v19 = dictionary;
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v21 localizedStringForKey:@"AUTO_INSTALL_CONFIRM_TITLE" value:&stru_287B79370 table:@"Software Update"];
  v9 = *MEMORY[0x277D3FE98];
  [v19 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  [v43 setupWithDictionary:dictionary];
  [v43 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FE80]];
  [v43 setConfirmationAction:sel_autoInstallCancel_];
  [v43 setTarget:selfCopy];
  [(SUSUISoftwareUpdateController *)selfCopy presentConfimationSpecifier:v43];
  objc_storeStrong(&dictionary, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)presentConfimationSpecifier:(id)specifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, specifier);
  [(SUSUISoftwareUpdateController *)selfCopy showConfirmationViewForSpecifier:location[0]];
  objc_storeStrong(location, 0);
}

- (void)preferredContentSizeChanged:(id)changed
{
  v36 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  v32 = _SUSUILoggingFacility();
  v31 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    log = v32;
    type = v31;
    v3 = objc_opt_class();
    v27 = NSStringFromClass(v3);
    v9 = MEMORY[0x277D82BE0](v27);
    v30 = v9;
    v10 = selfCopy;
    v26 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v11 = MEMORY[0x277D82BE0](v26);
    v29 = v11;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v8 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v28 = v8;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v5 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v5 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v35, "[SUSUISoftwareUpdateController(UI) preferredContentSizeChanged:]", v9, v10, v11, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v8, currentDownload2, v5);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v35, 0x7Au);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
  }

  objc_storeStrong(&v32, 0);
  [(SUSUISoftwareUpdateController *)selfCopy setTitleCell:0];
  [(SUSUISoftwareUpdateController *)selfCopy setUpdateOptionsCell:0];
  [(SUSUISoftwareUpdateController *)selfCopy setProactiveSuggestionCell:0];
  [(SUSUISoftwareUpdateController *)selfCopy reloadSpecifiers];
  v6 = selfCopy;
  paneTitle = [(SUSUISoftwareUpdateController *)selfCopy paneTitle];
  [(SUSUISoftwareUpdateController *)v6 setTitle:?];
  MEMORY[0x277D82BD8](paneTitle);
  [(SUSUISoftwareUpdateController *)selfCopy refreshPane];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v38 = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coordinator);
  v33 = _SUSUILoggingFacility();
  v32 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    log = v33;
    type = v32;
    v4 = objc_opt_class();
    v28 = NSStringFromClass(v4);
    v10 = MEMORY[0x277D82BE0](v28);
    v31 = v10;
    v11 = selfCopy;
    v27 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v12 = MEMORY[0x277D82BE0](v27);
    v30 = v12;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v9 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v29 = v9;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v6 = "NO";
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v6 = "YES";
    }

    __os_log_helper_16_2_14_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_0_8_0(v37, "[SUSUISoftwareUpdateController(UI) viewWillTransitionToSize:withTransitionCoordinator:]", v10, v11, v12, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v9, currentDownload2, v6, *&sizeCopy.width, *&sizeCopy.height);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nNew size: [%f, %f]", v37, 0x8Eu);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
  }

  objc_storeStrong(&v33, 0);
  [(SUSUISoftwareUpdateController *)selfCopy reloadSpecifiers];
  v7 = selfCopy;
  paneTitle = [(SUSUISoftwareUpdateController *)selfCopy paneTitle];
  [(SUSUISoftwareUpdateController *)v7 setTitle:?];
  MEMORY[0x277D82BD8](paneTitle);
  [(SUSUISoftwareUpdateController *)selfCopy refreshPane];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)preferences:(id)preferences didChangePreference:(id)preference toValue:(id)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preferences);
  v8 = 0;
  objc_storeStrong(&v8, preference);
  v7 = 0;
  objc_storeStrong(&v7, value);
  [(SUSUISoftwareUpdateController *)selfCopy refreshPane];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)showAlsoAvailaibleSUPane
{
  v42 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v39[1] = a2;
  v39[0] = _SUSUILoggingFacility();
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v39[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v39[0];
    type = v38;
    v2 = objc_opt_class();
    v26 = NSStringFromClass(v2);
    v9 = MEMORY[0x277D82BE0](v26);
    v37 = v9;
    v25 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v10 = MEMORY[0x277D82BE0](v25);
    v36 = v10;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v8 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v35 = v8;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v41, "[SUSUISoftwareUpdateController(UI) showAlsoAvailaibleSUPane]", v9, selfCopy, v10, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v8, currentDownload2, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v41, 0x7Au);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
  }

  objc_storeStrong(v39, 0);
  objc_initWeak(&v34, selfCopy);
  v6 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  queue = v6;
  v27 = MEMORY[0x277D85DD0];
  v28 = -1073741824;
  v29 = 0;
  v30 = __61__SUSUISoftwareUpdateController_UI__showAlsoAvailaibleSUPane__block_invoke;
  v31 = &unk_279CBDA68;
  objc_copyWeak(&v33, &v34);
  v32 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v27);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v32, 0);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v34);
  *MEMORY[0x277D85DE8];
}

void __61__SUSUISoftwareUpdateController_UI__showAlsoAvailaibleSUPane__block_invoke(id *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v24[2] = a1;
  v24[1] = a1;
  v24[0] = objc_loadWeakRetained(a1 + 5);
  if (!v24[0])
  {
    goto LABEL_24;
  }

  v23 = [v24[0] specifiers];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v23);
  v11 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(__b[1] + 8 * v8);
      v4 = [v22 propertyForKey:*MEMORY[0x277D3FFB8]];
      v19 = 0;
      v5 = 1;
      if (([v4 isEqualToString:@"SUNonPromotedUpdateButton"] & 1) == 0)
      {
        v20 = [v22 propertyForKey:*MEMORY[0x277D3FFB8]];
        v19 = 1;
        v5 = [v20 isEqualToString:@"SUAlternateUpdateButton"];
      }

      if (v19)
      {
        MEMORY[0x277D82BD8](v20);
      }

      MEMORY[0x277D82BD8](v4);
      if (v5)
      {
        break;
      }

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
        if (!v9)
        {
          goto LABEL_18;
        }
      }
    }

    oslog = _SUSUILoggingFacility();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v2 = type;
      v3 = [v22 propertyForKey:*MEMORY[0x277D3FFB8]];
      v16 = MEMORY[0x277D82BE0](v3);
      __os_log_helper_16_2_2_8_32_8_64(v26, "[SUSUISoftwareUpdateController(UI) showAlsoAvailaibleSUPane]_block_invoke", v16);
      _os_log_impl(&dword_26AC94000, log, v2, "%s: Located specifier %@ for alternate update button", v26, 0x16u);
      MEMORY[0x277D82BD8](v3);
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&oslog, 0);
    v15 = [v24[0] selectSpecifier:v22];
    if (v15)
    {
      [a1[4] showController:v15 animate:1];
    }

    v14 = 1;
    objc_storeStrong(&v15, 0);
  }

  else
  {
LABEL_18:
    v14 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!v14)
  {
    v13 = _SUSUILoggingFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v25, "[SUSUISoftwareUpdateController(UI) showAlsoAvailaibleSUPane]_block_invoke");
      _os_log_impl(&dword_26AC94000, v13, OS_LOG_TYPE_DEFAULT, "%s: Unable to locate 'Also Availaible' button specifier", v25, 0xCu);
    }

    objc_storeStrong(&v13, 0);
    v14 = 0;
  }

  objc_storeStrong(&v23, 0);
  if (!v14)
  {
LABEL_24:
    v14 = 0;
  }

  objc_storeStrong(v24, 0);
  *MEMORY[0x277D85DE8];
}

- (void)registerForFontChanges
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_preferredContentSizeChanged_ name:*MEMORY[0x277D76810] object:0];
  MEMORY[0x277D82BD8](defaultCenter);
}

- (void)registerForPreferencesChanges
{
  manager = [(SUSUISoftwareUpdateController *)self manager];
  preferences = [(SUSettingsStatefulUIManager *)manager preferences];
  [(SUSettingsSUPreferencesManager *)preferences addObserver:self];
  MEMORY[0x277D82BD8](preferences);
  MEMORY[0x277D82BD8](manager);
}

- (void)performDeepLinkAction:(unint64_t)action
{
  v33 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v30 = a2;
  actionCopy = action;
  if (action == 1)
  {
    [(SUSUISoftwareUpdateController *)selfCopy beginUpdateNowOperation];
  }

  else if (action == 2)
  {
    [(SUSUISoftwareUpdateController *)selfCopy beginUpdateTonightOperation];
  }

  else
  {
    v28 = _SUSUILoggingFacility();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      log = v28;
      type = v27;
      v3 = objc_opt_class();
      v23 = NSStringFromClass(v3);
      v6 = MEMORY[0x277D82BE0](v23);
      v26 = v6;
      v22 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
      v7 = MEMORY[0x277D82BE0](v22);
      v25 = v7;
      currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
      presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
      presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
      presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
      presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
      manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
      currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
      descriptor = [(SUDownload *)currentDownload descriptor];
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v5 = MEMORY[0x277D82BE0](humanReadableUpdateName);
      v24 = v5;
      manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
      manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      if ([(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall])
      {
        v4 = "YES";
      }

      else
      {
        v4 = "NO";
      }

      __os_log_helper_16_2_13_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_0(v32, "[SUSUISoftwareUpdateController(UI) performDeepLinkAction:]", v6, selfCopy, v7, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v5, currentDownload2, v4, actionCopy);
      _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nUnknown deep link update action %ld", v32, 0x84u);
      MEMORY[0x277D82BD8](manager3);
      MEMORY[0x277D82BD8](currentDownload2);
      MEMORY[0x277D82BD8](manager2);
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      MEMORY[0x277D82BD8](descriptor);
      MEMORY[0x277D82BD8](currentDownload);
      MEMORY[0x277D82BD8](manager);
      MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
      MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
      MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
      MEMORY[0x277D82BD8](presentingStatefulDescriptor);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v26, 0);
    }

    objc_storeStrong(&v28, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (void)waitForScanCompletionWithTimeout:(unint64_t)timeout currentAttempt:(unint64_t)attempt completionHandler:(id)handler
{
  v116 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v109 = a2;
  timeoutCopy = timeout;
  attemptCopy = attempt;
  location = 0;
  objc_storeStrong(&location, handler);
  if (attemptCopy >= 0xF0)
  {
    v70 = _SUSUILoggingFacility();
    v69 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v70;
      v19 = v69;
      v8 = objc_opt_class();
      v32 = NSStringFromClass(v8);
      v14 = MEMORY[0x277D82BE0](v32);
      v68 = v14;
      v15 = selfCopy;
      v31 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
      v16 = MEMORY[0x277D82BE0](v31);
      v67 = v16;
      currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
      presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
      presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
      presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
      presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
      manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
      currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
      descriptor = [(SUDownload *)currentDownload descriptor];
      humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
      v13 = MEMORY[0x277D82BE0](humanReadableUpdateName);
      v66 = v13;
      manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
      manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
      if ([(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall])
      {
        v9 = "YES";
      }

      else
      {
        v9 = "NO";
      }

      __os_log_helper_16_2_13_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_0(v111, "[SUSUISoftwareUpdateController(UI) waitForScanCompletionWithTimeout:currentAttempt:completionHandler:]", v14, v15, v16, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v13, currentDownload2, v9, timeoutCopy);
      _os_log_impl(&dword_26AC94000, v18, v19, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nReached the handleURL scan timeout %lu. Stopping.", v111, 0x84u);
      MEMORY[0x277D82BD8](manager3);
      MEMORY[0x277D82BD8](currentDownload2);
      MEMORY[0x277D82BD8](manager2);
      MEMORY[0x277D82BD8](humanReadableUpdateName);
      MEMORY[0x277D82BD8](descriptor);
      MEMORY[0x277D82BD8](currentDownload);
      MEMORY[0x277D82BD8](manager);
      MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
      MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
      MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
      MEMORY[0x277D82BD8](presentingStatefulDescriptor);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
      objc_storeStrong(&v66, 0);
      objc_storeStrong(&v67, 0);
      objc_storeStrong(&v68, 0);
    }

    objc_storeStrong(&v70, 0);
    v11 = MEMORY[0x277D85CD0];
    v10 = MEMORY[0x277D85CD0];
    v12 = v11;
    v60 = MEMORY[0x277D85DD0];
    v61 = -1073741824;
    v62 = 0;
    v63 = __103__SUSUISoftwareUpdateController_UI__waitForScanCompletionWithTimeout_currentAttempt_completionHandler___block_invoke_441;
    v64 = &unk_279CB9438;
    v65 = MEMORY[0x277D82BE0](location);
    dispatch_async(v12, &v60);
    MEMORY[0x277D82BD8](v12);
    objc_storeStrong(&v65, 0);
    goto LABEL_30;
  }

  currentUIState2 = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
  if (currentUIState2 > 1 && currentUIState2 <= 3)
  {
    oslog = _SUSUILoggingFacility();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v58 = type;
      v59 = SUSettingsUIStateToString(currentUIState2);
      v102 = MEMORY[0x277D82BE0](v59);
      __os_log_helper_16_2_3_8_32_8_66_8_0(v115, "[SUSUISoftwareUpdateController(UI) waitForScanCompletionWithTimeout:currentAttempt:completionHandler:]", v102, currentUIState2);
      _os_log_impl(&dword_26AC94000, log, v58, "%s: Scan finished with no update found - state %{public}@ (%lu)", v115, 0x20u);
      MEMORY[0x277D82BD8](v59);
      objc_storeStrong(&v102, 0);
    }

    objc_storeStrong(&oslog, 0);
    v55 = MEMORY[0x277D85CD0];
    v5 = MEMORY[0x277D85CD0];
    queue = v55;
    v96 = MEMORY[0x277D85DD0];
    v97 = -1073741824;
    v98 = 0;
    v99 = __103__SUSUISoftwareUpdateController_UI__waitForScanCompletionWithTimeout_currentAttempt_completionHandler___block_invoke;
    v100 = &unk_279CB9438;
    v101 = MEMORY[0x277D82BE0](location);
    dispatch_async(queue, &v96);
    MEMORY[0x277D82BD8](queue);
    v95 = 1;
    objc_storeStrong(&v101, 0);
    goto LABEL_31;
  }

  if (currentUIState2 != 4)
  {
LABEL_19:
    v80 = _SUSUILoggingFacility();
    v79 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v80;
      v41 = v79;
      v7 = "complete";
      if (currentUIState2 != 1)
      {
        v7 = "begin";
      }

      v35 = v7;
      v36 = attemptCopy;
      v37 = timeoutCopy;
      v38 = currentUIState2;
      v44 = SUSettingsUIStateToString(currentUIState2);
      v39 = MEMORY[0x277D82BE0](v44);
      v78 = v39;
      presentingDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptor];
      presentingAlternateDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateDescriptor];
      __os_log_helper_16_2_8_8_32_8_34_8_0_8_0_8_0_8_66_8_0_8_0(v112, "[SUSUISoftwareUpdateController(UI) waitForScanCompletionWithTimeout:currentAttempt:completionHandler:]", v35, v36, v37, v38, v39, presentingDescriptor, presentingAlternateDescriptor);
      _os_log_impl(&dword_26AC94000, v40, v41, "%s: waiting for scan to %{public}s (waited %ld seconds out of %ld) (current state: %ld (%{public}@), preferred update: %p, alternate update: %p)", v112, 0x52u);
      MEMORY[0x277D82BD8](presentingAlternateDescriptor);
      MEMORY[0x277D82BD8](presentingDescriptor);
      MEMORY[0x277D82BD8](v44);
      objc_storeStrong(&v78, 0);
    }

    objc_storeStrong(&v80, 0);
    when = dispatch_time(0, 1000000000);
    handleURLQueue = selfCopy->_handleURLQueue;
    v71 = MEMORY[0x277D85DD0];
    v72 = -1073741824;
    v73 = 0;
    v74 = __103__SUSUISoftwareUpdateController_UI__waitForScanCompletionWithTimeout_currentAttempt_completionHandler___block_invoke_440;
    v75 = &unk_279CBDA90;
    v76 = MEMORY[0x277D82BE0](selfCopy);
    v77[1] = timeoutCopy;
    v77[2] = attemptCopy;
    v77[0] = MEMORY[0x277D82BE0](location);
    dispatch_after(when, handleURLQueue, &v71);
    objc_storeStrong(v77, 0);
    objc_storeStrong(&v76, 0);
LABEL_30:
    v95 = 0;
    goto LABEL_31;
  }

  presentingDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingDescriptor];
  v93 = 0;
  v54 = 1;
  if (!presentingDescriptor2)
  {
    presentingAlternateDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateDescriptor];
    v93 = 1;
    v54 = presentingAlternateDescriptor2 != 0;
  }

  if (v93)
  {
    MEMORY[0x277D82BD8](presentingAlternateDescriptor2);
  }

  MEMORY[0x277D82BD8](presentingDescriptor2);
  if (!v54)
  {
    v83 = _SUSUILoggingFacility();
    v82 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v83;
      v46 = v82;
      v47 = SUSettingsUIStateToString(currentUIState2);
      v81 = MEMORY[0x277D82BE0](v47);
      __os_log_helper_16_2_3_8_32_8_66_8_0(v113, "[SUSUISoftwareUpdateController(UI) waitForScanCompletionWithTimeout:currentAttempt:completionHandler:]", v81, currentUIState2);
      _os_log_impl(&dword_26AC94000, v45, v46, "%s: state is %{public}@ (%ld) and yet both the update descriptor and the alternate update descriptors are nil. Continues to wait.", v113, 0x20u);
      MEMORY[0x277D82BD8](v47);
      objc_storeStrong(&v81, 0);
    }

    objc_storeStrong(&v83, 0);
    goto LABEL_19;
  }

  v92 = _SUSUILoggingFacility();
  v91 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
  {
    v50 = v92;
    v51 = v91;
    v52 = SUSettingsUIStateToString(currentUIState2);
    v90 = MEMORY[0x277D82BE0](v52);
    __os_log_helper_16_2_3_8_32_8_66_8_0(v114, "[SUSUISoftwareUpdateController(UI) waitForScanCompletionWithTimeout:currentAttempt:completionHandler:]", v90, currentUIState2);
    _os_log_impl(&dword_26AC94000, v50, v51, "%s: Scan finished with updates available - state %{public}@ (%lu)", v114, 0x20u);
    MEMORY[0x277D82BD8](v52);
    objc_storeStrong(&v90, 0);
  }

  objc_storeStrong(&v92, 0);
  v48 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  v49 = v48;
  v84 = MEMORY[0x277D85DD0];
  v85 = -1073741824;
  v86 = 0;
  v87 = __103__SUSUISoftwareUpdateController_UI__waitForScanCompletionWithTimeout_currentAttempt_completionHandler___block_invoke_437;
  v88 = &unk_279CB9438;
  v89 = MEMORY[0x277D82BE0](location);
  dispatch_async(v49, &v84);
  MEMORY[0x277D82BD8](v49);
  v95 = 1;
  objc_storeStrong(&v89, 0);
LABEL_31:
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __103__SUSUISoftwareUpdateController_UI__waitForScanCompletionWithTimeout_currentAttempt_completionHandler___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __103__SUSUISoftwareUpdateController_UI__waitForScanCompletionWithTimeout_currentAttempt_completionHandler___block_invoke_437(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __103__SUSUISoftwareUpdateController_UI__waitForScanCompletionWithTimeout_currentAttempt_completionHandler___block_invoke_441(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = (*(result + 32) + 16);
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64AE8] code:8 userInfo:0];
    (*v1)();
    return MEMORY[0x277D82BD8](v2);
  }

  return result;
}

- (void)beginUpdateNowOperation
{
  v45 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v42[1] = a2;
  v42[0] = _SUSUILoggingFacility();
  v41 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v42[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v42[0];
    type = v41;
    v2 = objc_opt_class();
    v31 = NSStringFromClass(v2);
    v14 = MEMORY[0x277D82BE0](v31);
    v40 = v14;
    v30 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v15 = MEMORY[0x277D82BE0](v30);
    v39 = v15;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v13 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v38 = v13;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v44, "[SUSUISoftwareUpdateController(SoftwareUpdate) beginUpdateNowOperation]", v14, selfCopy, v15, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v13, currentDownload2, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v44, 0x7Au);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
  }

  objc_storeStrong(v42, 0);
  selfCopy->_currentActivityStyle = 1;
  v6 = selfCopy;
  analyticsDownloadAndInstallNowTappedString = [(SUSUISoftwareUpdateController *)selfCopy analyticsDownloadAndInstallNowTappedString];
  [(SUSUISoftwareUpdateController *)v6 submitAnalyticsEvent:?];
  MEMORY[0x277D82BD8](analyticsDownloadAndInstallNowTappedString);
  [(SUSUISoftwareUpdateController *)selfCopy setBusyWithActivityStyle:selfCopy->_currentActivityStyle];
  manager4 = [(SUSUISoftwareUpdateController *)selfCopy manager];
  presentingStatefulDescriptor3 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
  v32 = MEMORY[0x277D85DD0];
  v33 = -1073741824;
  v34 = 0;
  v35 = __72__SUSUISoftwareUpdateController_SoftwareUpdate__beginUpdateNowOperation__block_invoke;
  v36 = &unk_279CC0B20;
  v37 = MEMORY[0x277D82BE0](selfCopy);
  v9 = selfCopy;
  v8 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v10 = v8;
  [(SUSettingsStatefulUIManager *)manager4 downloadAndInstall:presentingStatefulDescriptor3 completionHandler:&v32 operationDelegate:v9 delegateCallbackQueue:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](presentingStatefulDescriptor3);
  MEMORY[0x277D82BD8](manager4);
  objc_storeStrong(&v37, 0);
  *MEMORY[0x277D85DE8];
}

void __72__SUSUISoftwareUpdateController_SoftwareUpdate__beginUpdateNowOperation__block_invoke(id *a1, char a2, id obj, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = a1;
  v37 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v34[1] = a1;
  *(a1[4] + 186) = 0;
  [a1[4] setBusyWithActivityStyle:*(a1[4] + 186)];
  v34[0] = _SUSUILoggingFacility();
  v33 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v34[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v34[0];
    type = v33;
    v4 = a1[4];
    v5 = objc_opt_class();
    v27 = NSStringFromClass(v5);
    v9 = MEMORY[0x277D82BE0](v27);
    v32 = v9;
    v10 = a1[4];
    v26 = SUSettingsUIStateToString([v10 currentUIState]);
    v11 = MEMORY[0x277D82BE0](v26);
    v31 = v11;
    v12 = [a1[4] currentUIState];
    v25 = [a1[4] presentingStatefulDescriptor];
    v24 = [a1[4] presentingStatefulDescriptor];
    v23 = [a1[4] presentingAlternateStatefulDescriptor];
    v22 = [a1[4] presentingAlternateStatefulDescriptor];
    v21 = [a1[4] manager];
    v20 = [v21 currentDownload];
    v19 = [v20 descriptor];
    v18 = [v19 humanReadableUpdateName];
    v8 = MEMORY[0x277D82BE0](v18);
    v30 = v8;
    v17 = [a1[4] manager];
    v16 = [v17 currentDownload];
    v15 = [a1[4] manager];
    v6 = [v15 isTargetedUpdateScheduledForAutoInstall];
    v7 = "YES";
    if ((v6 & 1) == 0)
    {
      v7 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v39, "[SUSUISoftwareUpdateController(SoftwareUpdate) beginUpdateNowOperation]_block_invoke", v9, v10, v11, v12, v25, v24, v23, v22, v8, v16, v7);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v39, 0x7Au);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)beginUpdateDownloadOnlyOperation
{
  v45 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v42[1] = a2;
  v42[0] = _SUSUILoggingFacility();
  v41 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v42[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v42[0];
    type = v41;
    v2 = objc_opt_class();
    v31 = NSStringFromClass(v2);
    v14 = MEMORY[0x277D82BE0](v31);
    v40 = v14;
    v30 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v15 = MEMORY[0x277D82BE0](v30);
    v39 = v15;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v13 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v38 = v13;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v44, "[SUSUISoftwareUpdateController(SoftwareUpdate) beginUpdateDownloadOnlyOperation]", v14, selfCopy, v15, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v13, currentDownload2, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v44, 0x7Au);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
  }

  objc_storeStrong(v42, 0);
  selfCopy->_currentActivityStyle = 2;
  v6 = selfCopy;
  analyticsDownloadOnlyTappedString = [(SUSUISoftwareUpdateController *)selfCopy analyticsDownloadOnlyTappedString];
  [(SUSUISoftwareUpdateController *)v6 submitAnalyticsEvent:?];
  MEMORY[0x277D82BD8](analyticsDownloadOnlyTappedString);
  [(SUSUISoftwareUpdateController *)selfCopy setBusyWithActivityStyle:selfCopy->_currentActivityStyle];
  manager4 = [(SUSUISoftwareUpdateController *)selfCopy manager];
  presentingStatefulDescriptor3 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
  v32 = MEMORY[0x277D85DD0];
  v33 = -1073741824;
  v34 = 0;
  v35 = __81__SUSUISoftwareUpdateController_SoftwareUpdate__beginUpdateDownloadOnlyOperation__block_invoke;
  v36 = &unk_279CC0B20;
  v37 = MEMORY[0x277D82BE0](selfCopy);
  v9 = selfCopy;
  v8 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v10 = v8;
  [(SUSettingsStatefulUIManager *)manager4 downloadUpdate:presentingStatefulDescriptor3 completionHandler:&v32 operationDelegate:v9 delegateCallbackQueue:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](presentingStatefulDescriptor3);
  MEMORY[0x277D82BD8](manager4);
  objc_storeStrong(&v37, 0);
  *MEMORY[0x277D85DE8];
}

void __81__SUSUISoftwareUpdateController_SoftwareUpdate__beginUpdateDownloadOnlyOperation__block_invoke(id *a1, char a2, id obj, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = a1;
  v37 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v34[1] = a1;
  *(a1[4] + 186) = 0;
  [a1[4] setBusyWithActivityStyle:*(a1[4] + 186)];
  v34[0] = _SUSUILoggingFacility();
  v33 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v34[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v34[0];
    type = v33;
    v4 = a1[4];
    v5 = objc_opt_class();
    v27 = NSStringFromClass(v5);
    v9 = MEMORY[0x277D82BE0](v27);
    v32 = v9;
    v10 = a1[4];
    v26 = SUSettingsUIStateToString([v10 currentUIState]);
    v11 = MEMORY[0x277D82BE0](v26);
    v31 = v11;
    v12 = [a1[4] currentUIState];
    v25 = [a1[4] presentingStatefulDescriptor];
    v24 = [a1[4] presentingStatefulDescriptor];
    v23 = [a1[4] presentingAlternateStatefulDescriptor];
    v22 = [a1[4] presentingAlternateStatefulDescriptor];
    v21 = [a1[4] manager];
    v20 = [v21 currentDownload];
    v19 = [v20 descriptor];
    v18 = [v19 humanReadableUpdateName];
    v8 = MEMORY[0x277D82BE0](v18);
    v30 = v8;
    v17 = [a1[4] manager];
    v16 = [v17 currentDownload];
    v15 = [a1[4] manager];
    v6 = [v15 isTargetedUpdateScheduledForAutoInstall];
    v7 = "YES";
    if ((v6 & 1) == 0)
    {
      v7 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v39, "[SUSUISoftwareUpdateController(SoftwareUpdate) beginUpdateDownloadOnlyOperation]_block_invoke", v9, v10, v11, v12, v25, v24, v23, v22, v8, v16, v7);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v39, 0x7Au);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)beginUpdateTonightOperation
{
  v45 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v42[1] = a2;
  v42[0] = _SUSUILoggingFacility();
  v41 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v42[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v42[0];
    type = v41;
    v2 = objc_opt_class();
    v31 = NSStringFromClass(v2);
    v14 = MEMORY[0x277D82BE0](v31);
    v40 = v14;
    v30 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v15 = MEMORY[0x277D82BE0](v30);
    v39 = v15;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v13 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v38 = v13;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v44, "[SUSUISoftwareUpdateController(SoftwareUpdate) beginUpdateTonightOperation]", v14, selfCopy, v15, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v13, currentDownload2, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v44, 0x7Au);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
  }

  objc_storeStrong(v42, 0);
  selfCopy->_currentActivityStyle = 2;
  v6 = selfCopy;
  analyticsDownloadAndInstallTonightTappedString = [(SUSUISoftwareUpdateController *)selfCopy analyticsDownloadAndInstallTonightTappedString];
  [(SUSUISoftwareUpdateController *)v6 submitAnalyticsEvent:?];
  MEMORY[0x277D82BD8](analyticsDownloadAndInstallTonightTappedString);
  [(SUSUISoftwareUpdateController *)selfCopy setBusyWithActivityStyle:selfCopy->_currentActivityStyle];
  manager4 = [(SUSUISoftwareUpdateController *)selfCopy manager];
  presentingStatefulDescriptor3 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
  v32 = MEMORY[0x277D85DD0];
  v33 = -1073741824;
  v34 = 0;
  v35 = __76__SUSUISoftwareUpdateController_SoftwareUpdate__beginUpdateTonightOperation__block_invoke;
  v36 = &unk_279CC0B48;
  v37 = MEMORY[0x277D82BE0](selfCopy);
  v9 = selfCopy;
  v8 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v10 = v8;
  [(SUSettingsStatefulUIManager *)manager4 downloadAndScheduleUpdate:presentingStatefulDescriptor3 completionHandler:&v32 operationDelegate:v9 delegateCallbackQueue:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](presentingStatefulDescriptor3);
  MEMORY[0x277D82BD8](manager4);
  objc_storeStrong(&v37, 0);
  *MEMORY[0x277D85DE8];
}

void __76__SUSUISoftwareUpdateController_SoftwareUpdate__beginUpdateTonightOperation__block_invoke(id *a1, char a2, id obj, char a4, void *a5, void *a6)
{
  v46 = *MEMORY[0x277D85DE8];
  v44 = a1;
  v43 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v41 = a4;
  v40 = 0;
  objc_storeStrong(&v40, a5);
  v39 = 0;
  objc_storeStrong(&v39, a6);
  v38[1] = a1;
  *(a1[4] + 186) = 0;
  [a1[4] setBusyWithActivityStyle:*(a1[4] + 186)];
  v38[0] = _SUSUILoggingFacility();
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v38[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v38[0];
    type = v37;
    v6 = a1[4];
    v7 = objc_opt_class();
    v29 = NSStringFromClass(v7);
    v11 = MEMORY[0x277D82BE0](v29);
    v36 = v11;
    v12 = a1[4];
    v28 = SUSettingsUIStateToString([v12 currentUIState]);
    v13 = MEMORY[0x277D82BE0](v28);
    v35 = v13;
    v14 = [a1[4] currentUIState];
    v27 = [a1[4] presentingStatefulDescriptor];
    v26 = [a1[4] presentingStatefulDescriptor];
    v25 = [a1[4] presentingAlternateStatefulDescriptor];
    v24 = [a1[4] presentingAlternateStatefulDescriptor];
    v23 = [a1[4] manager];
    v22 = [v23 currentDownload];
    v21 = [v22 descriptor];
    v20 = [v21 humanReadableUpdateName];
    v10 = MEMORY[0x277D82BE0](v20);
    v34 = v10;
    v19 = [a1[4] manager];
    v18 = [v19 currentDownload];
    v17 = [a1[4] manager];
    v8 = [v17 isTargetedUpdateScheduledForAutoInstall];
    v9 = "YES";
    if ((v8 & 1) == 0)
    {
      v9 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v45, "[SUSUISoftwareUpdateController(SoftwareUpdate) beginUpdateTonightOperation]_block_invoke", v11, v12, v13, v14, v27, v26, v25, v24, v10, v18, v9);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v45, 0x7Au);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
  }

  objc_storeStrong(v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)beginInstallOperation
{
  v45 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v42[1] = a2;
  v42[0] = _SUSUILoggingFacility();
  v41 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v42[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v42[0];
    type = v41;
    v2 = objc_opt_class();
    v31 = NSStringFromClass(v2);
    v14 = MEMORY[0x277D82BE0](v31);
    v40 = v14;
    v30 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v15 = MEMORY[0x277D82BE0](v30);
    v39 = v15;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v13 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v38 = v13;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v44, "[SUSUISoftwareUpdateController(SoftwareUpdate) beginInstallOperation]", v14, selfCopy, v15, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v13, currentDownload2, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v44, 0x7Au);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
  }

  objc_storeStrong(v42, 0);
  selfCopy->_currentActivityStyle = 2;
  v6 = selfCopy;
  analyticsDownloadAndInstallTonightTappedString = [(SUSUISoftwareUpdateController *)selfCopy analyticsDownloadAndInstallTonightTappedString];
  [(SUSUISoftwareUpdateController *)v6 submitAnalyticsEvent:?];
  MEMORY[0x277D82BD8](analyticsDownloadAndInstallTonightTappedString);
  [(SUSUISoftwareUpdateController *)selfCopy setBusyWithActivityStyle:selfCopy->_currentActivityStyle];
  manager4 = [(SUSUISoftwareUpdateController *)selfCopy manager];
  presentingStatefulDescriptor3 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
  v32 = MEMORY[0x277D85DD0];
  v33 = -1073741824;
  v34 = 0;
  v35 = __70__SUSUISoftwareUpdateController_SoftwareUpdate__beginInstallOperation__block_invoke;
  v36 = &unk_279CBE0E8;
  v37 = MEMORY[0x277D82BE0](selfCopy);
  v9 = selfCopy;
  v8 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v10 = v8;
  [(SUSettingsStatefulUIManager *)manager4 installUpdate:presentingStatefulDescriptor3 completionHandler:&v32 operationDelegate:v9 delegateCallbackQueue:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](presentingStatefulDescriptor3);
  MEMORY[0x277D82BD8](manager4);
  objc_storeStrong(&v37, 0);
  *MEMORY[0x277D85DE8];
}

void __70__SUSUISoftwareUpdateController_SoftwareUpdate__beginInstallOperation__block_invoke(id *a1, char a2, id obj)
{
  v37 = *MEMORY[0x277D85DE8];
  v35 = a1;
  v34 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v32[1] = a1;
  *(a1[4] + 186) = 0;
  [a1[4] setBusyWithActivityStyle:*(a1[4] + 186)];
  v32[0] = _SUSUILoggingFacility();
  v31 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v32[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v32[0];
    type = v31;
    v3 = a1[4];
    v4 = objc_opt_class();
    v26 = NSStringFromClass(v4);
    v8 = MEMORY[0x277D82BE0](v26);
    v30 = v8;
    v9 = a1[4];
    v25 = SUSettingsUIStateToString([v9 currentUIState]);
    v10 = MEMORY[0x277D82BE0](v25);
    v29 = v10;
    v11 = [a1[4] currentUIState];
    v24 = [a1[4] presentingStatefulDescriptor];
    v23 = [a1[4] presentingStatefulDescriptor];
    v22 = [a1[4] presentingAlternateStatefulDescriptor];
    v21 = [a1[4] presentingAlternateStatefulDescriptor];
    v20 = [a1[4] manager];
    v19 = [v20 currentDownload];
    v18 = [v19 descriptor];
    v17 = [v18 humanReadableUpdateName];
    v7 = MEMORY[0x277D82BE0](v17);
    v28 = v7;
    v16 = [a1[4] manager];
    v15 = [v16 currentDownload];
    v14 = [a1[4] manager];
    v5 = [v14 isTargetedUpdateScheduledForAutoInstall];
    v6 = "YES";
    if ((v5 & 1) == 0)
    {
      v6 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v36, "[SUSUISoftwareUpdateController(SoftwareUpdate) beginInstallOperation]_block_invoke", v8, v9, v10, v11, v24, v23, v22, v21, v7, v15, v6);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v36, 0x7Au);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
  }

  objc_storeStrong(v32, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)beginInstallTonightOperation
{
  v45 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v42[1] = a2;
  v42[0] = _SUSUILoggingFacility();
  v41 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v42[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v42[0];
    type = v41;
    v2 = objc_opt_class();
    v31 = NSStringFromClass(v2);
    v14 = MEMORY[0x277D82BE0](v31);
    v40 = v14;
    v30 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v15 = MEMORY[0x277D82BE0](v30);
    v39 = v15;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v13 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v38 = v13;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v44, "[SUSUISoftwareUpdateController(SoftwareUpdate) beginInstallTonightOperation]", v14, selfCopy, v15, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v13, currentDownload2, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v44, 0x7Au);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
  }

  objc_storeStrong(v42, 0);
  selfCopy->_currentActivityStyle = 2;
  v6 = selfCopy;
  analyticsDownloadAndInstallTonightTappedString = [(SUSUISoftwareUpdateController *)selfCopy analyticsDownloadAndInstallTonightTappedString];
  [(SUSUISoftwareUpdateController *)v6 submitAnalyticsEvent:?];
  MEMORY[0x277D82BD8](analyticsDownloadAndInstallTonightTappedString);
  [(SUSUISoftwareUpdateController *)selfCopy setBusyWithActivityStyle:selfCopy->_currentActivityStyle];
  manager4 = [(SUSUISoftwareUpdateController *)selfCopy manager];
  presentingStatefulDescriptor3 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
  v32 = MEMORY[0x277D85DD0];
  v33 = -1073741824;
  v34 = 0;
  v35 = __77__SUSUISoftwareUpdateController_SoftwareUpdate__beginInstallTonightOperation__block_invoke;
  v36 = &unk_279CC0B70;
  v37 = MEMORY[0x277D82BE0](selfCopy);
  v9 = selfCopy;
  v8 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v10 = v8;
  [(SUSettingsStatefulUIManager *)manager4 scheduleUpdate:presentingStatefulDescriptor3 completionHandler:&v32 operationDelegate:v9 delegateCallbackQueue:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](presentingStatefulDescriptor3);
  MEMORY[0x277D82BD8](manager4);
  objc_storeStrong(&v37, 0);
  *MEMORY[0x277D85DE8];
}

void __77__SUSUISoftwareUpdateController_SoftwareUpdate__beginInstallTonightOperation__block_invoke(id *a1, char a2, id obj, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = a1;
  v37 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v34[1] = a1;
  *(a1[4] + 186) = 0;
  [a1[4] setBusyWithActivityStyle:*(a1[4] + 186)];
  v34[0] = _SUSUILoggingFacility();
  v33 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v34[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v34[0];
    type = v33;
    v4 = a1[4];
    v5 = objc_opt_class();
    v27 = NSStringFromClass(v5);
    v9 = MEMORY[0x277D82BE0](v27);
    v32 = v9;
    v10 = a1[4];
    v26 = SUSettingsUIStateToString([v10 currentUIState]);
    v11 = MEMORY[0x277D82BE0](v26);
    v31 = v11;
    v12 = [a1[4] currentUIState];
    v25 = [a1[4] presentingStatefulDescriptor];
    v24 = [a1[4] presentingStatefulDescriptor];
    v23 = [a1[4] presentingAlternateStatefulDescriptor];
    v22 = [a1[4] presentingAlternateStatefulDescriptor];
    v21 = [a1[4] manager];
    v20 = [v21 currentDownload];
    v19 = [v20 descriptor];
    v18 = [v19 humanReadableUpdateName];
    v8 = MEMORY[0x277D82BE0](v18);
    v30 = v8;
    v17 = [a1[4] manager];
    v16 = [v17 currentDownload];
    v15 = [a1[4] manager];
    v6 = [v15 isTargetedUpdateScheduledForAutoInstall];
    v7 = "YES";
    if ((v6 & 1) == 0)
    {
      v7 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v39, "[SUSUISoftwareUpdateController(SoftwareUpdate) beginInstallTonightOperation]_block_invoke", v9, v10, v11, v12, v25, v24, v23, v22, v8, v16, v7);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v39, 0x7Au);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)beginInstallNowOperation
{
  installNowTappedString = [(SUSUISoftwareUpdateController *)self installNowTappedString];
  [(SUSUISoftwareUpdateController *)self recordAnalyticsEvent:?];
  MEMORY[0x277D82BD8](installNowTappedString);
}

- (void)promoteTargetedUpdateToUserInitiatedStatus
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v31[1] = a2;
  v31[0] = _SUSUILoggingFacility();
  v30 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v31[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v31[0];
    type = v30;
    v2 = objc_opt_class();
    v26 = NSStringFromClass(v2);
    v9 = MEMORY[0x277D82BE0](v26);
    v29 = v9;
    v25 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v10 = MEMORY[0x277D82BE0](v25);
    v28 = v10;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v8 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v27 = v8;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v33, "[SUSUISoftwareUpdateController(SoftwareUpdate) promoteTargetedUpdateToUserInitiatedStatus]", v9, selfCopy, v10, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v8, currentDownload2, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v33, 0x7Au);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
  }

  objc_storeStrong(v31, 0);
  v5 = selfCopy;
  installLaterTappedString = [(SUSUISoftwareUpdateController *)selfCopy installLaterTappedString];
  [(SUSUISoftwareUpdateController *)v5 submitAnalyticsEvent:?];
  MEMORY[0x277D82BD8](installLaterTappedString);
  manager4 = [(SUSUISoftwareUpdateController *)selfCopy manager];
  [(SUSettingsStatefulUIManager *)manager4 promoteTargetedUpdateToUserInitiatedStatus];
  MEMORY[0x277D82BD8](manager4);
  *MEMORY[0x277D85DE8];
}

- (void)unscheduleTargetedUpdateAutomaticInstallation
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v31[1] = a2;
  v31[0] = _SUSUILoggingFacility();
  v30 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v31[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v31[0];
    type = v30;
    v2 = objc_opt_class();
    v26 = NSStringFromClass(v2);
    v9 = MEMORY[0x277D82BE0](v26);
    v29 = v9;
    v25 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)selfCopy currentUIState]);
    v10 = MEMORY[0x277D82BE0](v25);
    v28 = v10;
    currentUIState = [(SUSUISoftwareUpdateController *)selfCopy currentUIState];
    presentingStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingStatefulDescriptor];
    presentingAlternateStatefulDescriptor = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    presentingAlternateStatefulDescriptor2 = [(SUSUISoftwareUpdateController *)selfCopy presentingAlternateStatefulDescriptor];
    manager = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload = [(SUSettingsStatefulUIManager *)manager currentDownload];
    descriptor = [(SUDownload *)currentDownload descriptor];
    humanReadableUpdateName = [(SUDescriptor *)descriptor humanReadableUpdateName];
    v8 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v27 = v8;
    manager2 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    currentDownload2 = [(SUSettingsStatefulUIManager *)manager2 currentDownload];
    manager3 = [(SUSUISoftwareUpdateController *)selfCopy manager];
    isTargetedUpdateScheduledForAutoInstall = [(SUSettingsStatefulUIManager *)manager3 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!isTargetedUpdateScheduledForAutoInstall)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v33, "[SUSUISoftwareUpdateController(SoftwareUpdate) unscheduleTargetedUpdateAutomaticInstallation]", v9, selfCopy, v10, currentUIState, presentingStatefulDescriptor, presentingStatefulDescriptor2, presentingAlternateStatefulDescriptor, presentingAlternateStatefulDescriptor2, v8, currentDownload2, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v33, 0x7Au);
    MEMORY[0x277D82BD8](manager3);
    MEMORY[0x277D82BD8](currentDownload2);
    MEMORY[0x277D82BD8](manager2);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor);
    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](manager);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor2);
    MEMORY[0x277D82BD8](presentingStatefulDescriptor);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
  }

  objc_storeStrong(v31, 0);
  v5 = selfCopy;
  installLaterTappedString = [(SUSUISoftwareUpdateController *)selfCopy installLaterTappedString];
  [(SUSUISoftwareUpdateController *)v5 submitAnalyticsEvent:?];
  MEMORY[0x277D82BD8](installLaterTappedString);
  manager4 = [(SUSUISoftwareUpdateController *)selfCopy manager];
  [(SUSettingsStatefulUIManager *)manager4 unscheduleTargetedUpdateAutomaticInstallation];
  MEMORY[0x277D82BD8](manager4);
  *MEMORY[0x277D85DE8];
}

- (BOOL)shouldShowComingSoonTip
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  SUSUISoftwareUpdateController.shouldShowComingSoonTip.getter();
  MEMORY[0x277D82BD8](self);
  return sub_26AD9E560() & 1;
}

- (void)setShouldShowComingSoonTip:(BOOL)tip
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  sub_26AD9E570();
  SUSUISoftwareUpdateController.shouldShowComingSoonTip.setter();
  MEMORY[0x277D82BD8](self);
}

- (void)setupTipsObserver
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  SUSUISoftwareUpdateController.setupTipsObserver()();
  MEMORY[0x277D82BD8](self);
}

@end