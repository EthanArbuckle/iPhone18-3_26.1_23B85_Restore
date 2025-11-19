@interface SUSUISoftwareUpdateController
+ (double)windowSafeAreasSize;
+ (id)visibleGroupSpecifiers;
+ (unint64_t)updateActionForString:(id)a3;
- (BOOL)_errorIsInsufficientSpace:(id)a3;
- (BOOL)_shouldHideTonightButton;
- (BOOL)clientIsSUSettings;
- (BOOL)hasAlternateUpdate;
- (BOOL)isBusy;
- (BOOL)isTopViewController;
- (BOOL)presentingStatefulDescriptorIsTargetedUpdate;
- (BOOL)presentingStatefulDescriptorPromotedAsAlternate;
- (BOOL)shouldShowAlternateUpdateCellForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (BOOL)shouldShowBetaUpdatesCellSpecifierForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (BOOL)shouldShowComingSoonSpecifierForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (BOOL)shouldShowComingSoonTip;
- (BOOL)shouldShowDeferredUpdateGroupForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (BOOL)shouldShowEnforcedUpdateForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (BOOL)shouldShowNonPromotedCellForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (BOOL)shouldShowProactiveSuggestionsPrimaryButtonSpecifierForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (BOOL)shouldShowScanGroupSpecifierForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (BOOL)shouldShowScanStatusSpecifierForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (BOOL)shouldShowTitleCellSpecifierForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (BOOL)shouldShowTitleGroupSpecifierForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (BOOL)shouldShowUpdateOptionsCellSpecifierForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (BOOL)specifier:(id)a3 isEqualToSpecifier:(id)a4;
- (BOOL)specifierArrayValue:(id)a3 IsEqualToSpecifierArrayValue:(id)a4;
- (BOOL)specifierClassValue:(Class)a3 IsEqualToSpecifierClassValue:(Class)a4;
- (BOOL)specifierDictionaryValue:(id)a3 IsEqualToSpecifierDictionaryValue:(id)a4;
- (BOOL)specifierIDValue:(id)a3 IsEqualToSpecifierIDValue:(id)a4;
- (BOOL)specifierSelectorValue:(SEL)a3 IsEqualToSpecifierSelectorValue:(SEL)a4;
- (BOOL)specifierStringValue:(id)a3 IsEqualToSpecifierStringValue:(id)a4;
- (BOOL)waitingOnSUAssetDownload:(id)a3;
- (SUSUISoftwareUpdateController)init;
- (double)tableView:(id)a3 estimatedHeightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_createGroupIndices:(id)a3;
- (id)_setInstallButtonButtonSpecifierState:(id)a3 forUIState:(unint64_t)a4 descriptorState:(unint64_t)a5;
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
- (id)majorOSVersionStringForBuildVersion:(id)a3;
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
- (id)selectSpecifier:(id)a3;
- (id)specifierForAlternateUpdateCellWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (id)specifierForAlternateUpdateGroupWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (id)specifierForAutomaticUpdatesGroupWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (id)specifierForAutomaticUpdatesWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (id)specifierForBetaUpdatesCellWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (id)specifierForComingSoonGroupWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (id)specifierForComingSoonWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (id)specifierForNonPromotedPrimaryUpdateCellWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (id)specifierForNonPromotedPrimaryUpdateGroupWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (id)specifierForProactiveSuggestionCellWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (id)specifierForProactiveSuggestionGroupWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (id)specifierForProactiveSuggestionPrimaryButtonWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (id)specifierForProactiveSuggestionSecondaryButtonWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (id)specifierForScanFooterGroupWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (id)specifierForScanHeaderGroupWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (id)specifierForScanStatusCellWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (id)specifierForScanStatusWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (id)specifierForSection:(int64_t)a3;
- (id)specifierForTitleCellWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (id)specifierForTitleGroupWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (id)specifierForUpdateOptionsWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (id)specifierWithID:(id)a3;
- (id)statusString;
- (id)tableCellImageForImage:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)updateVersionString:(id)a3;
- (id)updatedSpecifiersArray;
- (int)updateProgressStyleForDescriptorState:(unint64_t)a3;
- (int64_t)betaUpdatesHasInstallationRestriction;
- (unint64_t)currentDescriptorState;
- (unint64_t)currentUIState;
- (unint64_t)presentingAlternateDescriptorUpgradeType;
- (unint64_t)presentingDescriptorUpgradeType;
- (unint64_t)proactiveSuggestionTypeForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4;
- (void)_setTitleCellSpecifierStatus:(id)a3 descriptorState:(unint64_t)a4;
- (void)autoInstallCancel:(id)a3;
- (void)autoInstallCancelPrompt:(id)a3;
- (void)beginInstallNowOperation;
- (void)beginInstallOperation;
- (void)beginInstallTonightOperation;
- (void)beginUpdateDownloadOnlyOperation;
- (void)beginUpdateNowOperation;
- (void)beginUpdateTonightOperation;
- (void)clearInstallButton:(id)a3;
- (void)clearNonPromotedPrimaryUpdateGroup:(id)a3;
- (void)clearNonPromotedPrimaryUpdateHeaderGroup:(id)a3;
- (void)configureScanCell:(id)a3 withUIState:(unint64_t)a4 descriptorState:(unint64_t)a5;
- (void)dealloc;
- (void)detailedReleaseNotesDonePressed:(id)a3;
- (void)devicePINControllerDidDismissPINPane:(id)a3;
- (void)didAcceptEnteredPIN:(id)a3;
- (void)downloadAndInstall:(id)a3;
- (void)downloadAndInstallTonight:(id)a3;
- (void)downloadOnly:(id)a3;
- (void)downloadingButtonForSpecifier:(id)a3;
- (void)fixCustomCellSpecifiers;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)initStatefulUI;
- (void)initUI;
- (void)install:(id)a3;
- (void)installTonight:(id)a3;
- (void)loadView;
- (void)openStorage;
- (void)operation:(id)a3 requestAgreementToTermsAndConditionsForUpdate:(id)a4 replyHandler:(id)a5;
- (void)operation:(id)a3 requestApprovalForDownloadConstraints:(id)a4 downloadPolicy:(id)a5 replyHandler:(id)a6;
- (void)operation:(id)a3 requestDevicePasscodeForDescriptor:(id)a4 replyHandler:(id)a5;
- (void)operation:(id)a3 requestPurgeConfirmationForDownload:(id)a4 replyHandler:(id)a5;
- (void)performDeepLinkAction:(unint64_t)a3;
- (void)performUpdateRescan:(id)a3;
- (void)preferences:(id)a3 didChangePreference:(id)a4 toValue:(id)a5;
- (void)preferredContentSizeChanged:(id)a3;
- (void)presentConfimationSpecifier:(id)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)promoteTargetedUpdateToUserInitiatedStatus;
- (void)recordAnalyticsEvent:(id)a3;
- (void)refreshBetaUpdatesButton;
- (void)refreshInstallButton;
- (void)refreshPane;
- (void)refreshupdateAutoUpdateButton;
- (void)registerForFontChanges;
- (void)registerForPreferencesChanges;
- (void)reloadCustomCells;
- (void)reloadScanSpacerCells:(id *)a3;
- (void)reloadSpecifiers:(id)a3 animated:(BOOL)a4;
- (void)reloadUsingNewSpecifiers:(id)a3;
- (void)reloadUsingNewSpecifiers:(id)a3 animated:(BOOL)a4;
- (void)requestToPromoteTargetedUpdateToUserInitiatedStatus:(id)a3;
- (void)setAutomaticDownloadFromUI:(id)a3 forSpecifier:(id)a4;
- (void)setAutomaticInstallSystemDataFilesFromUI:(id)a3 forSpecifier:(id)a4;
- (void)setAutomaticUpdatesFromUI:(id)a3 forSpecifier:(id)a4;
- (void)setAutomaticUpdatesFromUI:(id)a3 userSpecified:(BOOL)a4 forSpecifier:(id)a5;
- (void)setBetaProgramFromUI:(id)a3 forViewController:(id)a4 withCompletion:(id)a5;
- (void)setBusyWithActivityStyle:(int64_t)a3;
- (void)setInstallButtonDeleted:(id)a3;
- (void)setInstallButtonDownloadAndInstall:(id)a3;
- (void)setInstallButtonDownloadAndInstall:(id)a3 shouldRemove:(BOOL *)a4;
- (void)setInstallButtonDownloading:(id)a3 shouldRemove:(BOOL *)a4;
- (void)setInstallButtonInstallNow:(id)a3;
- (void)setInstallButtonInstalledForSpecifier:(id)a3;
- (void)setInstallButtonInstalling:(id)a3;
- (void)setInstallButtonInstallingForSpecifier:(id)a3;
- (void)setInstallButtonPaused:(id)a3;
- (void)setInstallButtonReadyToInstall:(id)a3;
- (void)setInstallButtonStalled:(id)a3 shouldRemove:(BOOL *)a4;
- (void)setSecurityResponseFromUI:(id)a3 forSpecifier:(id)a4;
- (void)setSecurityResponseFromUI:(id)a3 userSpecified:(BOOL)a4 forSpecifier:(id)a5;
- (void)setShouldShowComingSoonTip:(BOOL)a3;
- (void)setupInstallButton:(id)a3 forUIState:(unint64_t)a4 descriptorState:(unint64_t)a5 shouldRemove:(BOOL *)a6;
- (void)setupTipsObserver;
- (void)showAlsoAvailaibleSUPane;
- (void)statefulUIManager:(id)a3 descriptor:(id)a4 didTransitionFromDescriptorState:(unint64_t)a5 toState:(unint64_t)a6;
- (void)statefulUIManager:(id)a3 didChangeProgressForDownloadOfDescriptor:(id)a4 withDownload:(id)a5;
- (void)statefulUIManager:(id)a3 didFailToScanForUpdatesWithError:(id)a4;
- (void)statefulUIManager:(id)a3 didFinishDownloadForDescriptor:(id)a4 withDownload:(id)a5;
- (void)statefulUIManager:(id)a3 didFinishScanningForUpdatesWithResults:(id)a4;
- (void)statefulUIManager:(id)a3 didStartInstallingUpdateWithDescriptor:(id)a4;
- (void)statefulUIManager:(id)a3 didTransitionFromUIState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)statefulUIManager:(id)a3 requestRollbackRestartApprovalWithReplyHandler:(id)a4;
- (void)statefulUIManagerDidRefreshState:(id)a3;
- (void)submitAnalyticsEvent:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)titleCell:(id)a3 learnMoreButtonTapped:(id)a4;
- (void)unenrollFromBetaProgramsWithCompletion:(id)a3;
- (void)unscheduleTargetedUpdateAutomaticInstallation;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)waitForScanCompletionWithTimeout:(unint64_t)a3 currentAttempt:(unint64_t)a4 completionHandler:(id)a5;
- (void)willEnterForeground;
@end

@implementation SUSUISoftwareUpdateController

- (id)availableBetaPrograms
{
  v3 = [(SUSUISoftwareUpdateController *)self manager];
  v4 = [(SUSettingsStatefulUIManager *)v3 betaPrograms];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (void)setBetaProgramFromUI:(id)a3 forViewController:(id)a4 withCompletion:(id)a5
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v8 = [(SUSUISoftwareUpdateController *)v24 manager];
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
  [(SUSettingsStatefulUIManager *)v8 enrollInBetaUpdatesProgram:v7 withPurgeConfirmation:&v15 completionHandler:?];
  MEMORY[0x277D82BD8](v8);
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

- (void)unenrollFromBetaProgramsWithCompletion:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v7;
  v4 = [(SUSUISoftwareUpdateController *)v7 analyticsUnenrolledToBetaUpdatesString];
  [(SUSUISoftwareUpdateController *)v3 recordAnalyticsEvent:?];
  MEMORY[0x277D82BD8](v4);
  v5 = [(SUSUISoftwareUpdateController *)v7 manager];
  [(SUSettingsStatefulUIManager *)v5 unenrollFromBetaUpdatesWithCompletion:location[0]];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (id)enrolledBetaProgram
{
  v3 = [(SUSUISoftwareUpdateController *)self manager];
  v4 = [(SUSettingsStatefulUIManager *)v3 enrolledBetaProgram];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)betaUpdatesAppleID
{
  v3 = [MEMORY[0x277D4D310] sharedManager];
  v4 = [v3 seedingAppleIDUsernameForCurrentDevice];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (int64_t)betaUpdatesHasInstallationRestriction
{
  if ([MEMORY[0x277D64908] isLockdownModeEnabled])
  {
    return 1;
  }

  v4 = [(SUSUISoftwareUpdateController *)self manager];
  v3 = [(SUSettingsStatefulUIManager *)v4 currentSeedingDevice];
  v5 = [(SDDevice *)v3 hasDeviceManagementRestriction];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  if (v5)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)setAutomaticUpdatesFromUI:(id)a3 forSpecifier:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(SUSUISoftwareUpdateController *)v7 setAutomaticUpdatesFromUI:location[0] userSpecified:1 forSpecifier:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)setAutomaticUpdatesFromUI:(id)a3 userSpecified:(BOOL)a4 forSpecifier:(id)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = a4;
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v10 = [(SUSUISoftwareUpdateController *)v14 manager];
  v9 = [(SUSettingsStatefulUIManager *)v10 preferences];
  -[SUSettingsSUPreferencesManager enableAutomaticUpdateV2:](v9, "enableAutomaticUpdateV2:", [location[0] BOOLValue]);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  if (v12)
  {
    v6 = [(SUSUISoftwareUpdateController *)v14 manager];
    v5 = [(SUSettingsStatefulUIManager *)v6 preferences];
    -[SUSettingsSUPreferencesManager enablePreviousUserSpecifiedAutomaticUpdateV2:](v5, "enablePreviousUserSpecifiedAutomaticUpdateV2:", [location[0] BOOLValue]);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  [(SUSUISoftwareUpdateController *)v14 refreshupdateAutoUpdateButton];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)setAutomaticDownloadFromUI:(id)a3 forSpecifier:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [(SUSUISoftwareUpdateController *)v9 manager];
  v5 = [(SUSettingsStatefulUIManager *)v6 preferences];
  -[SUSettingsSUPreferencesManager enableAutomaticDownload:](v5, "enableAutomaticDownload:", [location[0] BOOLValue]);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  [(SUSUISoftwareUpdateController *)v9 refreshupdateAutoUpdateButton];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)setSecurityResponseFromUI:(id)a3 forSpecifier:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(SUSUISoftwareUpdateController *)v7 setSecurityResponseFromUI:location[0] userSpecified:1 forSpecifier:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)setSecurityResponseFromUI:(id)a3 userSpecified:(BOOL)a4 forSpecifier:(id)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = a4;
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v10 = [(SUSUISoftwareUpdateController *)v14 manager];
  v9 = [(SUSettingsStatefulUIManager *)v10 preferences];
  -[SUSettingsSUPreferencesManager enableAutoInstallSecurityResponse:](v9, "enableAutoInstallSecurityResponse:", [location[0] BOOLValue]);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  if (v12)
  {
    v6 = [(SUSUISoftwareUpdateController *)v14 manager];
    v5 = [(SUSettingsStatefulUIManager *)v6 preferences];
    -[SUSettingsSUPreferencesManager enablePreviousUserSpecifiedAutoInstallSecurityResponse:](v5, "enablePreviousUserSpecifiedAutoInstallSecurityResponse:", [location[0] BOOLValue]);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  [(SUSUISoftwareUpdateController *)v14 refreshupdateAutoUpdateButton];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)setAutomaticInstallSystemDataFilesFromUI:(id)a3 forSpecifier:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [(SUSUISoftwareUpdateController *)v9 manager];
  v5 = [(SUSettingsStatefulUIManager *)v6 preferences];
  -[SUSettingsSUPreferencesManager enableAutoInstallSystemAndDataFiles:](v5, "enableAutoInstallSystemAndDataFiles:", [location[0] BOOLValue]);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  [(SUSUISoftwareUpdateController *)v9 refreshupdateAutoUpdateButton];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (id)automaticUpdateStatus
{
  v3 = MEMORY[0x277CCABB0];
  v5 = [(SUSUISoftwareUpdateController *)self manager];
  v4 = [(SUSettingsStatefulUIManager *)v5 preferences];
  v6 = [v3 numberWithBool:{-[SUSettingsSUPreferencesManager isAutomaticUpdateV2Enabled](v4, "isAutomaticUpdateV2Enabled")}];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (id)previousUserSpecifiedAutomaticUpdateStatus
{
  v3 = MEMORY[0x277CCABB0];
  v5 = [(SUSUISoftwareUpdateController *)self manager];
  v4 = [(SUSettingsStatefulUIManager *)v5 preferences];
  v6 = [v3 numberWithBool:{-[SUSettingsSUPreferencesManager previousUserSpecifiedAutomaticUpdateV2Enabled](v4, "previousUserSpecifiedAutomaticUpdateV2Enabled")}];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (id)automaticDownloadStatus
{
  v3 = MEMORY[0x277CCABB0];
  v5 = [(SUSUISoftwareUpdateController *)self manager];
  v4 = [(SUSettingsStatefulUIManager *)v5 preferences];
  v6 = [v3 numberWithBool:{-[SUSettingsSUPreferencesManager isAutomaticDownloadEnabled](v4, "isAutomaticDownloadEnabled")}];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (id)securityResponseStatus
{
  v3 = MEMORY[0x277CCABB0];
  v5 = [(SUSUISoftwareUpdateController *)self manager];
  v4 = [(SUSettingsStatefulUIManager *)v5 preferences];
  v6 = [v3 numberWithBool:{-[SUSettingsSUPreferencesManager autoInstallSecurityResponse](v4, "autoInstallSecurityResponse")}];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (id)previousUserSpecifiedSecurityResponseStatus
{
  v3 = MEMORY[0x277CCABB0];
  v5 = [(SUSUISoftwareUpdateController *)self manager];
  v4 = [(SUSettingsStatefulUIManager *)v5 preferences];
  v6 = [v3 numberWithBool:{-[SUSettingsSUPreferencesManager previousUserSpecifiedAutoInstallSecurityResponse](v4, "previousUserSpecifiedAutoInstallSecurityResponse")}];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (id)automaticInstallSystemDataFilesStatus
{
  v3 = MEMORY[0x277CCABB0];
  v5 = [(SUSUISoftwareUpdateController *)self manager];
  v4 = [(SUSettingsStatefulUIManager *)v5 preferences];
  v6 = [v3 numberWithBool:{-[SUSettingsSUPreferencesManager autoInstallSystemAndDataFiles](v4, "autoInstallSystemAndDataFiles")}];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (void)submitAnalyticsEvent:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = objc_alloc(MEMORY[0x277D64868]);
  v6 = [v3 initWithEventName:*MEMORY[0x277D64958]];
  [v6 setEventPayloadEntry:*MEMORY[0x277D64960] stringValue:location[0]];
  v5 = [(SUSUISoftwareUpdateController *)v8 manager];
  v4 = [(SUSettingsStatefulUIManager *)v5 suClient];
  [(SUManagerClient *)v4 submitSUAnalyticsEvent:v6];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)recordAnalyticsEvent:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = objc_alloc(MEMORY[0x277D64868]);
  v6 = [v3 initWithEventName:*MEMORY[0x277D64958]];
  [v6 setEventPayloadEntry:*MEMORY[0x277D64960] stringValue:location[0]];
  v5 = [(SUSUISoftwareUpdateController *)v8 manager];
  v4 = [(SUSettingsStatefulUIManager *)v5 suClient];
  [(SUManagerClient *)v4 recordSUAnalyticsEvent:v6];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
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
  v3 = [(SUSUISoftwareUpdateController *)self manager];
  v4 = [(SUSettingsStatefulUIManager *)v3 preferredStatefulDescriptor];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)presentingDescriptor
{
  v3 = [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptor];
  v4 = [v3 descriptor];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)presentingDescriptorError
{
  v4 = [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptor];
  v5 = [v4 updateDownloadError];
  v8 = 0;
  v6 = 0;
  if (v5)
  {
    v2 = MEMORY[0x277D82BE0](v5);
  }

  else
  {
    v9 = [(SUSUISoftwareUpdateController *)self manager];
    v8 = 1;
    v7 = [(SUSettingsStatefulUIManager *)v9 scanError];
    v6 = 1;
    v2 = MEMORY[0x277D82BE0](v7);
  }

  v11 = v2;
  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v4);

  return v11;
}

- (id)presentingAlternateStatefulDescriptor
{
  v3 = [(SUSUISoftwareUpdateController *)self manager];
  v4 = [(SUSettingsStatefulUIManager *)v3 alternateStatefulDescriptor];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)presentingAlternateDescriptor
{
  v3 = [(SUSUISoftwareUpdateController *)self presentingAlternateStatefulDescriptor];
  v4 = [v3 descriptor];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (BOOL)presentingStatefulDescriptorPromotedAsAlternate
{
  v3 = [(SUSUISoftwareUpdateController *)self manager];
  v5 = 0;
  v4 = 0;
  if ([(SUSettingsStatefulUIManager *)v3 isPreferredUpdatePromotedAsAlternate])
  {
    v6 = [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptor];
    v5 = 1;
    v4 = [v6 currentState] == 1;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)presentingStatefulDescriptorIsTargetedUpdate
{
  v4 = [(SUSUISoftwareUpdateController *)self manager];
  v3 = [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptor];
  v5 = [(SUSettingsStatefulUIManager *)v4 doesTargetedUpdateMatchDescriptor:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (unint64_t)presentingDescriptorUpgradeType
{
  v4 = [(SUSUISoftwareUpdateController *)self presentingDescriptor];
  v5 = 0;
  if (v4)
  {
    v6 = [(SUSUISoftwareUpdateController *)self presentingDescriptor];
    v5 = 1;
    v3 = [v6 upgradeType];
  }

  else
  {
    v3 = 0;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  MEMORY[0x277D82BD8](v4);
  return v3;
}

- (unint64_t)presentingAlternateDescriptorUpgradeType
{
  v4 = [(SUSUISoftwareUpdateController *)self presentingAlternateDescriptor];
  v5 = 0;
  if (v4)
  {
    v6 = [(SUSUISoftwareUpdateController *)self presentingAlternateDescriptor];
    v5 = 1;
    v3 = [v6 upgradeType];
  }

  else
  {
    v3 = 0;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  MEMORY[0x277D82BD8](v4);
  return v3;
}

- (void)dealloc
{
  v9 = self;
  v8 = a2;
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:v9 name:*MEMORY[0x277D76758] object:0];
  MEMORY[0x277D82BD8](v2);
  v4 = [(SUSUISoftwareUpdateController *)v9 manager];
  v3 = [(SUSettingsStatefulUIManager *)v4 preferences];
  [(SUSettingsSUPreferencesManager *)v3 removeObserver:v9];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v5 = [(SUSUISoftwareUpdateController *)v9 presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](v5);
  if (isKindOfClass)
  {
    [(SUSUISoftwareUpdateController *)v9 dismissViewControllerAnimated:0 completion:0];
  }

  v7.receiver = v9;
  v7.super_class = SUSUISoftwareUpdateController;
  [(SUSUISoftwareUpdateController *)&v7 dealloc];
}

- (BOOL)hasAlternateUpdate
{
  v2 = [(SUSUISoftwareUpdateController *)self presentingAlternateStatefulDescriptor];
  v4 = v2 != 0;
  MEMORY[0x277D82BD8](v2);
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
  v97 = self;
  v96[1] = a2;
  if ([(SUSUISoftwareUpdateController *)self currentUIState]== 4)
  {
    v93 = [(SUSUISoftwareUpdateController *)v97 currentDescriptorState];
    v28 = [(SUSUISoftwareUpdateController *)v97 manager];
    v27 = [(SUSUISoftwareUpdateController *)v97 presentingStatefulDescriptor];
    v29 = [(SUSettingsStatefulUIManager *)v28 doesTargetedUpdateMatchDescriptor:?];
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    v92 = v29;
    v31 = [(SUSUISoftwareUpdateController *)v97 manager];
    v30 = [(SUSettingsStatefulUIManager *)v31 currentDownload];
    v91 = [(SUDownload *)v30 progress];
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    v90 = [v91 phase];
    [v91 percentComplete];
    v89 = v2;
    v34 = [(SUSUISoftwareUpdateController *)v97 manager];
    v33 = [(SUSettingsStatefulUIManager *)v34 currentDownload];
    v32 = [(SUDownload *)v33 descriptor];
    v35 = [(SUDescriptor *)v32 isSplatOnly];
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    v36 = [(SUSUISoftwareUpdateController *)v97 manager];
    v37 = [(SUSettingsStatefulUIManager *)v36 scanError];
    v87 = 0;
    v85 = 0;
    v83 = 0;
    v81 = 0;
    v79 = 0;
    v77 = 0;
    v75 = 0;
    v38 = 1;
    if (!v37)
    {
      v88 = [(SUSUISoftwareUpdateController *)v97 presentingStatefulDescriptor];
      v87 = 1;
      v86 = [v88 updateDownloadError];
      v85 = 1;
      LOBYTE(v26) = 0;
      if (v86)
      {
        v84 = [(SUSUISoftwareUpdateController *)v97 manager];
        v83 = 1;
        v82 = [(SUSettingsStatefulUIManager *)v84 errorContextProvider];
        v81 = 1;
        v80 = [(SUSUISoftwareUpdateController *)v97 presentingStatefulDescriptor];
        v79 = 1;
        v78 = [v80 updateDownloadError];
        v77 = 1;
        v76 = [(SUSUISoftwareUpdateController *)v97 presentingStatefulDescriptor];
        v75 = 1;
        v26 = ![(SUSettingsStatefulErrorContextProvider *)v82 shouldIgnoreUpdateError:v78 withStatefulDescriptor:?];
      }

      v38 = v26;
    }

    if (v75)
    {
      MEMORY[0x277D82BD8](v76);
    }

    if (v77)
    {
      MEMORY[0x277D82BD8](v78);
    }

    if (v79)
    {
      MEMORY[0x277D82BD8](v80);
    }

    if (v81)
    {
      MEMORY[0x277D82BD8](v82);
    }

    if (v83)
    {
      MEMORY[0x277D82BD8](v84);
    }

    if (v85)
    {
      MEMORY[0x277D82BD8](v86);
    }

    if (v87)
    {
      MEMORY[0x277D82BD8](v88);
    }

    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v36);
    if (v38)
    {
      v73 = 0;
      v71 = 0;
      v69 = 0;
      v67 = 0;
      if (v92 && v93 >= 4)
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
      switch(v93)
      {
        case 1uLL:
          v24 = [(SUSUISoftwareUpdateController *)v97 manager];
          v25 = [(SUSettingsStatefulUIManager *)v24 isClearingSpaceForDownload];
          MEMORY[0x277D82BD8](v24);
          if (v25)
          {
            v65 = 0;
            v63 = 0;
            v61 = 0;
            v59 = 0;
            if (v35)
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
            v23 = [(SUSUISoftwareUpdateController *)v97 presentingDescriptor];
            v98 = [v22 stringFromByteCount:objc_msgSend(v23 countStyle:{"downloadSize"), 2}];
            MEMORY[0x277D82BD8](v23);
          }

          break;
        case 2uLL:
          if (v92 || (PSIsRunningInAssistant() & 1) != 0)
          {
            v20 = getkSUDownloadPhasePreparingForInstallation();
            v21 = [v90 isEqualToString:?];
            MEMORY[0x277D82BD8](v20);
            if (v21)
            {
              v57 = 0;
              v55 = 0;
              v53 = 0;
              v51 = 0;
              if (v35)
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
              v19 = [(SUSUISoftwareUpdateController *)v97 manager];
              v18 = [(SUSettingsStatefulUIManager *)v19 currentDownload];
              v98 = [SUSettingsStatefulUIAdditions stringWithTimeRemainingForDownload:?];
              MEMORY[0x277D82BD8](v18);
              MEMORY[0x277D82BD8](v19);
            }

            else
            {
              v49 = 0;
              v47 = 0;
              v45 = 0;
              v43 = 0;
              if (v35)
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
            v17 = [(SUSUISoftwareUpdateController *)v97 presentingDescriptor];
            v98 = [v16 stringFromByteCount:objc_msgSend(v17 countStyle:{"downloadSize"), 2}];
            MEMORY[0x277D82BD8](v17);
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
            v14 = [(SUSUISoftwareUpdateController *)v97 presentingDescriptor];
            v98 = [v13 stringFromByteCount:objc_msgSend(v14 countStyle:{"downloadSize"), 2}];
            MEMORY[0x277D82BD8](v14);
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
            v11 = [(SUSUISoftwareUpdateController *)v97 presentingDescriptor];
            v98 = [v10 stringFromByteCount:objc_msgSend(v11 countStyle:{"downloadSize"), 2}];
            MEMORY[0x277D82BD8](v11);
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

    objc_storeStrong(&v90, 0);
    objc_storeStrong(&v91, 0);
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
      v41 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v97 currentUIState]);
      v94 = MEMORY[0x277D82BE0](v41);
      __os_log_helper_16_2_2_8_64_8_0(v99, v94, [(SUSUISoftwareUpdateController *)v97 currentUIState]);
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

+ (unint64_t)updateActionForString:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v3 = [(SUSUISoftwareUpdateController *)self manager];
  v4 = [(SUSettingsStatefulUIManager *)v3 currentState];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (unint64_t)currentDescriptorState
{
  v4 = [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptor];
  v5 = 0;
  if (v4)
  {
    v6 = [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptor];
    v5 = 1;
    v3 = [v6 currentState];
  }

  else
  {
    v3 = 0;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  MEMORY[0x277D82BD8](v4);
  return v3;
}

- (void)initStatefulUI
{
  v20 = self;
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
  v8 = [(objc_class *)v17 sharedInstance];
  v7 = [SUSettingsStatefulUIManager initWithManagerClient:v6 betaManager:"initWithManagerClient:betaManager:preferences:options:" preferences:v5 options:0];
  [(SUSUISoftwareUpdateController *)v20 setManager:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v9 = v20;
  v10 = [(SUSUISoftwareUpdateController *)v20 manager];
  [(SUSettingsStatefulUIManager *)v10 setDelegate:v9];
  MEMORY[0x277D82BD8](v10);
  v11 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v13 = v11;
  v12 = [(SUSUISoftwareUpdateController *)v20 manager];
  [(SUSettingsStatefulUIManager *)v12 setDelegateCallbackQueue:v13];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v15 = +[SUSUITestAutomationManager sharedManager];
  v14 = [(SUSUISoftwareUpdateController *)v20 manager];
  [v15 addResponderDelegate:? forServiceType:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  objc_storeStrong(&v16, 0);
}

- (void)statefulUIManager:(id)a3 requestRollbackRestartApprovalWithReplyHandler:(id)a4
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
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
  [(SUSUISoftwareUpdateController *)v33 presentViewController:v29 animated:1 completion:0];
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

- (void)statefulUIManager:(id)a3 didTransitionFromUIState:(unint64_t)a4 toState:(unint64_t)a5
{
  v53 = a4;
  v54 = a5;
  v52 = "[SUSUISoftwareUpdateController(StatefulUI) statefulUIManager:didTransitionFromUIState:toState:]";
  v68 = *MEMORY[0x277D85DE8];
  v66 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v64 = v53;
  v63 = v54;
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
    v24 = v66;
    v44 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v66 currentUIState]);
    v25 = MEMORY[0x277D82BE0](v44);
    v49 = &v59;
    v59 = v25;
    v26 = [(SUSUISoftwareUpdateController *)v66 currentUIState];
    v43 = [(SUSUISoftwareUpdateController *)v66 presentingStatefulDescriptor];
    v42 = [(SUSUISoftwareUpdateController *)v66 presentingStatefulDescriptor];
    v41 = [(SUSUISoftwareUpdateController *)v66 presentingAlternateStatefulDescriptor];
    v40 = [(SUSUISoftwareUpdateController *)v66 presentingAlternateStatefulDescriptor];
    v39 = [(SUSUISoftwareUpdateController *)v66 manager];
    v38 = [(SUSettingsStatefulUIManager *)v39 currentDownload];
    v37 = [(SUDownload *)v38 descriptor];
    v36 = [(SUDescriptor *)v37 humanReadableUpdateName];
    v19 = MEMORY[0x277D82BE0](v36);
    v48 = &v58;
    v58 = v19;
    v35 = [(SUSUISoftwareUpdateController *)v66 manager];
    v34 = [(SUSettingsStatefulUIManager *)v35 currentDownload];
    v33 = [(SUSUISoftwareUpdateController *)v66 manager];
    v6 = [(SUSettingsStatefulUIManager *)v33 isTargetedUpdateScheduledForAutoInstall];
    v7 = "YES";
    if (!v6)
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
    __os_log_helper_16_2_16_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_64_8_0_8_64_8_0(v67, v52, v23, v24, v25, v26, v43, v42, v41, v40, v19, v34, v20, v21, v22, v56, v63);
    _os_log_impl(&dword_26AC94000, log, type[0], "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nUI State Transition: %@ (%ld) -> %@ (%ld)", buf, 0xA2u);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
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
  if ([(SUSUISoftwareUpdateController *)v66 supportsPullToRefresh])
  {
    v16 = [(SUSUISoftwareUpdateController *)v66 table];
    v17 = [v16 refreshControl];
    v18 = 0;
    if (!v17)
    {
      v15 = 1;
      if (v63 != 3)
      {
        v15 = v63 == 4;
      }

      v18 = v15;
    }

    v14 = v18;
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v16);
    if (v14)
    {
      v13 = [(SUSUISoftwareUpdateController *)v66 table];
      v12 = [(SUSUISoftwareUpdateController *)v66 refreshControl];
      [v13 setRefreshControl:?];
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
    }
  }

  [(SUSUISoftwareUpdateController *)v66 _setNeedsUpdateContentUnavailableConfiguration];
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
  v9 = v66;
  v10 = [(SUSUISoftwareUpdateController *)v66 updatedSpecifiersArray];
  [SUSUISoftwareUpdateController reloadUsingNewSpecifiers:v9 animated:"reloadUsingNewSpecifiers:animated:"];
  MEMORY[0x277D82BD8](v10);
  [(SUSUISoftwareUpdateController *)v66 reloadCustomCells];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)statefulUIManager:(id)a3 descriptor:(id)a4 didTransitionFromDescriptorState:(unint64_t)a5 toState:(unint64_t)a6
{
  obj = a4;
  v51 = a5;
  v52 = a6;
  v49 = "[SUSUISoftwareUpdateController(StatefulUI) statefulUIManager:descriptor:didTransitionFromDescriptorState:toState:]";
  v67 = *MEMORY[0x277D85DE8];
  v65 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v63 = 0;
  objc_storeStrong(&v63, obj);
  v62 = v51;
  v61 = v52;
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
    v18 = v65;
    v40 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v65 currentUIState]);
    v19 = MEMORY[0x277D82BE0](v40);
    v46 = &v57;
    v57 = v19;
    v20 = [(SUSUISoftwareUpdateController *)v65 currentUIState];
    v39 = [(SUSUISoftwareUpdateController *)v65 presentingStatefulDescriptor];
    v38 = [(SUSUISoftwareUpdateController *)v65 presentingStatefulDescriptor];
    v7 = [(SUSUISoftwareUpdateController *)v65 presentingAlternateStatefulDescriptor];
    v37 = v7;
    v36 = [(SUSUISoftwareUpdateController *)v65 presentingAlternateStatefulDescriptor];
    v35 = [(SUSUISoftwareUpdateController *)v65 manager];
    v34 = [(SUSettingsStatefulUIManager *)v35 currentDownload];
    v33 = [(SUDownload *)v34 descriptor];
    v32 = [(SUDescriptor *)v33 humanReadableUpdateName];
    v12 = MEMORY[0x277D82BE0](v32);
    v45 = &v56;
    v56 = v12;
    v31 = [(SUSUISoftwareUpdateController *)v65 manager];
    v30 = [(SUSettingsStatefulUIManager *)v31 currentDownload];
    v29 = [(SUSUISoftwareUpdateController *)v65 manager];
    v8 = [(SUSettingsStatefulUIManager *)v29 isTargetedUpdateScheduledForAutoInstall];
    v9 = "YES";
    if (!v8)
    {
      v9 = "NO";
    }

    v13 = v9;
    v28 = [v63 humanReadableUpdateName];
    v14 = MEMORY[0x277D82BE0](v28);
    v44 = &v55;
    v55 = v14;
    v27 = [v63 descriptor];
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
    __os_log_helper_16_2_18_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_66_8_0_8_64_8_0_8_64_8_0(v66, v49, v17, v18, v19, v20, v39, v38, v7, v36, v12, v30, v13, v14, v27, v15, v16, v53, v61);
    _os_log_impl(&dword_26AC94000, log, v23[0], "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nDescriptor %{public}@ (%p) State Transition: %@ (%ld) -> %@ (%ld)", buf, 0xB6u);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
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
  [(SUSUISoftwareUpdateController *)v65 refreshPane];
  objc_storeStrong(&v63, v11);
  objc_storeStrong(location, v11);
  *MEMORY[0x277D85DE8];
}

- (void)statefulUIManager:(id)a3 didFinishScanningForUpdatesWithResults:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v7 = 0;
  v6 = 0;
  if ([(SUSUISoftwareUpdateController *)v11 supportsPullToRefresh])
  {
    v8 = [(SUSUISoftwareUpdateController *)v11 refreshControl];
    v7 = 1;
    v6 = v8 != 0;
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v6)
  {
    v4 = [(SUSUISoftwareUpdateController *)v11 refreshControl];
    [(UIRefreshControl *)v4 endRefreshing];
    MEMORY[0x277D82BD8](v4);
  }

  [(SUSUISoftwareUpdateController *)v11 refreshPane];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)statefulUIManager:(id)a3 didFailToScanForUpdatesWithError:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v7 = 0;
  v6 = 0;
  if ([(SUSUISoftwareUpdateController *)v11 supportsPullToRefresh])
  {
    v8 = [(SUSUISoftwareUpdateController *)v11 refreshControl];
    v7 = 1;
    v6 = v8 != 0;
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v6)
  {
    v4 = [(SUSUISoftwareUpdateController *)v11 refreshControl];
    [(UIRefreshControl *)v4 endRefreshing];
    MEMORY[0x277D82BD8](v4);
  }

  [(SUSUISoftwareUpdateController *)v11 refreshPane];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)statefulUIManager:(id)a3 didChangeProgressForDownloadOfDescriptor:(id)a4 withDownload:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  if ([v8 currentState] >= 2)
  {
    [(SUSUISoftwareUpdateController *)v10 refreshPane];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)statefulUIManager:(id)a3 didFinishDownloadForDescriptor:(id)a4 withDownload:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [(SUSUISoftwareUpdateController *)v10 refreshPane];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)statefulUIManager:(id)a3 didStartInstallingUpdateWithDescriptor:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(SUSUISoftwareUpdateController *)v7 refreshPane];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)statefulUIManagerDidRefreshState:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
    v8 = v32;
    v24 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v32 currentUIState]);
    v9 = MEMORY[0x277D82BE0](v24);
    v27 = v9;
    v10 = [(SUSUISoftwareUpdateController *)v32 currentUIState];
    v23 = [(SUSUISoftwareUpdateController *)v32 presentingStatefulDescriptor];
    v22 = [(SUSUISoftwareUpdateController *)v32 presentingStatefulDescriptor];
    v21 = [(SUSUISoftwareUpdateController *)v32 presentingAlternateStatefulDescriptor];
    v20 = [(SUSUISoftwareUpdateController *)v32 presentingAlternateStatefulDescriptor];
    v19 = [(SUSUISoftwareUpdateController *)v32 manager];
    v18 = [(SUSettingsStatefulUIManager *)v19 currentDownload];
    v17 = [(SUDownload *)v18 descriptor];
    v16 = [(SUDescriptor *)v17 humanReadableUpdateName];
    v6 = MEMORY[0x277D82BE0](v16);
    v26 = v6;
    v15 = [(SUSUISoftwareUpdateController *)v32 manager];
    v14 = [(SUSettingsStatefulUIManager *)v15 currentDownload];
    v13 = [(SUSUISoftwareUpdateController *)v32 manager];
    v4 = [(SUSettingsStatefulUIManager *)v13 isTargetedUpdateScheduledForAutoInstall];
    v5 = "YES";
    if (!v4)
    {
      v5 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v33, "[SUSUISoftwareUpdateController(StatefulUI) statefulUIManagerDidRefreshState:]", v7, v8, v9, v10, v23, v22, v21, v20, v6, v14, v5);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nRefresh request", v33, 0x7Au);
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
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
  }

  objc_storeStrong(&v30, 0);
  [(SUSUISoftwareUpdateController *)v32 refreshPane];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)operation:(id)a3 requestPurgeConfirmationForDownload:(id)a4 replyHandler:(id)a5
{
  v51 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v49 = 0;
  objc_storeStrong(&v49, a4);
  v48 = 0;
  objc_storeStrong(&v48, a5);
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
  v25 = [v49 descriptor];
  v24 = [v25 productVersion];
  v44 = [v23 stringWithFormat:v26, v24];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  v29 = [v49 progress];
  v30 = [v29 isDone];
  MEMORY[0x277D82BD8](v29);
  if (v30)
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
  [(SUSUISoftwareUpdateController *)v51 presentViewController:v43 animated:1 completion:?];
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

- (void)operation:(id)a3 requestDevicePasscodeForDescriptor:(id)a4 replyHandler:(id)a5
{
  v59[5] = *MEMORY[0x277D85DE8];
  v56 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v54 = 0;
  objc_storeStrong(&v54, a4);
  v53 = 0;
  objc_storeStrong(&v53, a5);
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
      v5 = [(SUSUISoftwareUpdateController *)v56 specifierWithID:v50];
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
    v17 = v56;
    v33 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v56 currentUIState]);
    v18 = MEMORY[0x277D82BE0](v33);
    v44 = v18;
    v19 = [(SUSUISoftwareUpdateController *)v56 currentUIState];
    v32 = [(SUSUISoftwareUpdateController *)v56 presentingStatefulDescriptor];
    v31 = [(SUSUISoftwareUpdateController *)v56 presentingStatefulDescriptor];
    v30 = [(SUSUISoftwareUpdateController *)v56 presentingAlternateStatefulDescriptor];
    v29 = [(SUSUISoftwareUpdateController *)v56 presentingAlternateStatefulDescriptor];
    v28 = [(SUSUISoftwareUpdateController *)v56 manager];
    v27 = [(SUSettingsStatefulUIManager *)v28 currentDownload];
    v26 = [(SUDownload *)v27 descriptor];
    v25 = [(SUDescriptor *)v26 humanReadableUpdateName];
    v15 = MEMORY[0x277D82BE0](v25);
    v43 = v15;
    v24 = [(SUSUISoftwareUpdateController *)v56 manager];
    v23 = [(SUSettingsStatefulUIManager *)v24 currentDownload];
    v22 = [(SUSUISoftwareUpdateController *)v56 manager];
    if ([(SUSettingsStatefulUIManager *)v22 isTargetedUpdateScheduledForAutoInstall])
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    __os_log_helper_16_2_14_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_66_8_0(v57, "[SUSUISoftwareUpdateController(StatefulUI) operation:requestDevicePasscodeForDescriptor:replyHandler:]", v16, v17, v18, v19, v32, v31, v30, v29, v15, v23, v8, v51, v51);
    _os_log_impl(&dword_26AC94000, log, v21, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nShowing PIN sheet using specifier: %{public}@ (%p)", v57, 0x8Eu);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
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
    passcodeReplyHandler = v56->_passcodeReplyHandler;
    v56->_passcodeReplyHandler = v11;
    MEMORY[0x277D82BD8](passcodeReplyHandler);
    [(SUSUISoftwareUpdateController *)v56 showPINSheet:v51];
  }

  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)operation:(id)a3 requestAgreementToTermsAndConditionsForUpdate:(id)a4 replyHandler:(id)a5
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v5 = objc_opt_new();
  termsManager = v24->_termsManager;
  v24->_termsManager = v5;
  MEMORY[0x277D82BD8](termsManager);
  v9 = v24->_termsManager;
  v10 = [MEMORY[0x277D46210] defaultStyle];
  [(SUSSoftwareUpdateTermsManager *)v9 setServerFlowStyle:?];
  MEMORY[0x277D82BD8](v10);
  v13 = v24->_termsManager;
  v11 = v22;
  v12 = v24;
  v14 = MEMORY[0x277D85DD0];
  v15 = -1073741824;
  v16 = 0;
  v17 = __114__SUSUISoftwareUpdateController_StatefulUI__operation_requestAgreementToTermsAndConditionsForUpdate_replyHandler___block_invoke;
  v18 = &unk_279CBBA40;
  v19 = MEMORY[0x277D82BE0](v24);
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

- (void)operation:(id)a3 requestApprovalForDownloadConstraints:(id)a4 downloadPolicy:(id)a5 replyHandler:(id)a6
{
  v60 = *MEMORY[0x277D85DE8];
  v58 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v56 = 0;
  objc_storeStrong(&v56, a4);
  v55 = 0;
  objc_storeStrong(&v55, a5);
  v54 = 0;
  objc_storeStrong(&v54, a6);
  v53 = 0;
  v52[8] = 0;
  *v52 = [v55 isDownloadFreeForCellular];
  v51 = 0;
  v50 = 0;
  v31 = SUSettingsSharedLogger();
  v49 = [v31 oslog];
  MEMORY[0x277D82BD8](v31);
  v48 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_32_4_0(v59, "[SUSUISoftwareUpdateController(StatefulUI) operation:requestApprovalForDownloadConstraints:downloadPolicy:replyHandler:]", v52[0] & 1);
    _os_log_impl(&dword_26AC94000, v49, v48, "%s: Alerting user about cellular fees. zero rated = %d", v59, 0x12u);
  }

  objc_storeStrong(&v49, 0);
  v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (v52[0])
  {
    v29 = 0;
    if (v56)
    {
      v29 = [v56 isSplatOnly];
    }

    v6 = @"RSR_CELLULAR_DOWNLOAD_ACCEPT_POSSIBLE_FEES";
    if ((v29 & 1) == 0)
    {
      v6 = @"CELLULAR_DOWNLOAD_ACCEPT_POSSIBLE_FEES";
    }

    v28 = v6;
  }

  else
  {
    v27 = 0;
    if (v56)
    {
      v27 = [v56 isSplatOnly];
    }

    v7 = @"RSR_CELLULAR_DOWNLOAD_ACCEPT_DEFINITE_FEES";
    if ((v27 & 1) == 0)
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
  [(SUSUISoftwareUpdateController *)v58 presentViewController:v47 animated:1 completion:?];
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

- (void)didAcceptEnteredPIN:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = _SUSUILoggingFacility();
  v34 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v10 = NSStringFromClass(v3);
    v11 = MEMORY[0x277D82BE0](v10);
    v33 = v11;
    v12 = v37;
    v13 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v37 currentUIState]);
    v14 = MEMORY[0x277D82BE0](v13);
    v32 = v14;
    v15 = [(SUSUISoftwareUpdateController *)v37 currentUIState];
    v16 = [(SUSUISoftwareUpdateController *)v37 presentingStatefulDescriptor];
    v17 = [(SUSUISoftwareUpdateController *)v37 presentingStatefulDescriptor];
    v18 = [(SUSUISoftwareUpdateController *)v37 presentingAlternateStatefulDescriptor];
    v19 = [(SUSUISoftwareUpdateController *)v37 presentingAlternateStatefulDescriptor];
    v20 = [(SUSUISoftwareUpdateController *)v37 manager];
    v21 = [(SUSettingsStatefulUIManager *)v20 currentDownload];
    v22 = [(SUDownload *)v21 descriptor];
    v23 = [(SUDescriptor *)v22 humanReadableUpdateName];
    v24 = MEMORY[0x277D82BE0](v23);
    v31 = v24;
    v25 = [(SUSUISoftwareUpdateController *)v37 manager];
    v26 = [(SUSettingsStatefulUIManager *)v25 currentDownload];
    v27 = [(SUSUISoftwareUpdateController *)v37 manager];
    v4 = [(SUSettingsStatefulUIManager *)v27 isTargetedUpdateScheduledForAutoInstall];
    v5 = "YES";
    if (!v4)
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

    if (!v37->_passcodeReplyHandler)
    {
      v6 = "NO";
    }

    __os_log_helper_16_2_14_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_32_8_32(v39, "[SUSUISoftwareUpdateController(StatefulUI) didAcceptEnteredPIN:]", v11, v12, v14, v15, v16, v17, v18, v19, v24, v26, v28, v7, v6);
    _os_log_impl(&dword_26AC94000, v35, v34, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nReceived the user entered passcode. Not Empty? %s; Reply handler exists? %s", v39, 0x8Eu);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v33, 0);
  }

  objc_storeStrong(&v35, 0);
  if (v37->_passcodeReplyHandler)
  {
    (*(v37->_passcodeReplyHandler + 2))();
    passcodeReplyHandler = v37->_passcodeReplyHandler;
    v37->_passcodeReplyHandler = 0;
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

- (void)devicePINControllerDidDismissPINPane:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_passcodeReplyHandler)
  {
    (*(v4->_passcodeReplyHandler + 2))();
  }

  objc_storeStrong(location, 0);
}

- (id)updatedSpecifiersArray
{
  v159[20] = *MEMORY[0x277D85DE8];
  v157 = self;
  v156[1] = a2;
  v156[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v149 = MEMORY[0x277D85DD0];
  v150 = -1073741824;
  v151 = 0;
  v152 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke;
  v153 = &unk_279CBBE48;
  v154 = MEMORY[0x277D82BE0](v157);
  v27 = MEMORY[0x26D66A460](&v149);
  v159[0] = v27;
  v143 = MEMORY[0x277D85DD0];
  v144 = -1073741824;
  v145 = 0;
  v146 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_2;
  v147 = &unk_279CBBE48;
  v148 = MEMORY[0x277D82BE0](v157);
  v26 = MEMORY[0x26D66A460](&v143);
  v159[1] = v26;
  v137 = MEMORY[0x277D85DD0];
  v138 = -1073741824;
  v139 = 0;
  v140 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_3;
  v141 = &unk_279CBBE48;
  v142 = MEMORY[0x277D82BE0](v157);
  v25 = MEMORY[0x26D66A460](&v137);
  v159[2] = v25;
  v131 = MEMORY[0x277D85DD0];
  v132 = -1073741824;
  v133 = 0;
  v134 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_4;
  v135 = &unk_279CBBE48;
  v136 = MEMORY[0x277D82BE0](v157);
  v24 = MEMORY[0x26D66A460](&v131);
  v159[3] = v24;
  v125 = MEMORY[0x277D85DD0];
  v126 = -1073741824;
  v127 = 0;
  v128 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_5;
  v129 = &unk_279CBBE48;
  v130 = MEMORY[0x277D82BE0](v157);
  v23 = MEMORY[0x26D66A460](&v125);
  v159[4] = v23;
  v119 = MEMORY[0x277D85DD0];
  v120 = -1073741824;
  v121 = 0;
  v122 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_6;
  v123 = &unk_279CBBE48;
  v124 = MEMORY[0x277D82BE0](v157);
  v22 = MEMORY[0x26D66A460](&v119);
  v159[5] = v22;
  v113 = MEMORY[0x277D85DD0];
  v114 = -1073741824;
  v115 = 0;
  v116 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_7;
  v117 = &unk_279CBBE48;
  v118 = MEMORY[0x277D82BE0](v157);
  v21 = MEMORY[0x26D66A460](&v113);
  v159[6] = v21;
  v107 = MEMORY[0x277D85DD0];
  v108 = -1073741824;
  v109 = 0;
  v110 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_8;
  v111 = &unk_279CBBE48;
  v112 = MEMORY[0x277D82BE0](v157);
  v20 = MEMORY[0x26D66A460](&v107);
  v159[7] = v20;
  v101 = MEMORY[0x277D85DD0];
  v102 = -1073741824;
  v103 = 0;
  v104 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_9;
  v105 = &unk_279CBBE48;
  v106 = MEMORY[0x277D82BE0](v157);
  v19 = MEMORY[0x26D66A460](&v101);
  v159[8] = v19;
  v95 = MEMORY[0x277D85DD0];
  v96 = -1073741824;
  v97 = 0;
  v98 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_10;
  v99 = &unk_279CBBE48;
  v100 = MEMORY[0x277D82BE0](v157);
  v18 = MEMORY[0x26D66A460](&v95);
  v159[9] = v18;
  v89 = MEMORY[0x277D85DD0];
  v90 = -1073741824;
  v91 = 0;
  v92 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_11;
  v93 = &unk_279CBBE48;
  v94 = MEMORY[0x277D82BE0](v157);
  v17 = MEMORY[0x26D66A460](&v89);
  v159[10] = v17;
  v83 = MEMORY[0x277D85DD0];
  v84 = -1073741824;
  v85 = 0;
  v86 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_12;
  v87 = &unk_279CBBE48;
  v88 = MEMORY[0x277D82BE0](v157);
  v16 = MEMORY[0x26D66A460](&v83);
  v159[11] = v16;
  v77 = MEMORY[0x277D85DD0];
  v78 = -1073741824;
  v79 = 0;
  v80 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_13;
  v81 = &unk_279CBBE48;
  v82 = MEMORY[0x277D82BE0](v157);
  v15 = MEMORY[0x26D66A460](&v77);
  v159[12] = v15;
  v71 = MEMORY[0x277D85DD0];
  v72 = -1073741824;
  v73 = 0;
  v74 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_14;
  v75 = &unk_279CBBE48;
  v76 = MEMORY[0x277D82BE0](v157);
  v14 = MEMORY[0x26D66A460](&v71);
  v159[13] = v14;
  v65 = MEMORY[0x277D85DD0];
  v66 = -1073741824;
  v67 = 0;
  v68 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_15;
  v69 = &unk_279CBBE48;
  v70 = MEMORY[0x277D82BE0](v157);
  v13 = MEMORY[0x26D66A460](&v65);
  v159[14] = v13;
  v59 = MEMORY[0x277D85DD0];
  v60 = -1073741824;
  v61 = 0;
  v62 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_16;
  v63 = &unk_279CBBE48;
  v64 = MEMORY[0x277D82BE0](v157);
  v12 = MEMORY[0x26D66A460](&v59);
  v159[15] = v12;
  v53 = MEMORY[0x277D85DD0];
  v54 = -1073741824;
  v55 = 0;
  v56 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_17;
  v57 = &unk_279CBBE48;
  v58 = MEMORY[0x277D82BE0](v157);
  v11 = MEMORY[0x26D66A460](&v53);
  v159[16] = v11;
  v47 = MEMORY[0x277D85DD0];
  v48 = -1073741824;
  v49 = 0;
  v50 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_18;
  v51 = &unk_279CBBE48;
  v52 = MEMORY[0x277D82BE0](v157);
  v10 = MEMORY[0x26D66A460](&v47);
  v159[17] = v10;
  v41 = MEMORY[0x277D85DD0];
  v42 = -1073741824;
  v43 = 0;
  v44 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_19;
  v45 = &unk_279CBBE48;
  v46 = MEMORY[0x277D82BE0](v157);
  v9 = MEMORY[0x26D66A460](&v41);
  v159[18] = v9;
  v35 = MEMORY[0x277D85DD0];
  v36 = -1073741824;
  v37 = 0;
  v38 = __67__SUSUISoftwareUpdateController_Specifiers__updatedSpecifiersArray__block_invoke_20;
  v39 = &unk_279CBBE48;
  v40 = MEMORY[0x277D82BE0](v157);
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
  v34 = [(SUSUISoftwareUpdateController *)v157 currentUIState];
  v33 = [(SUSUISoftwareUpdateController *)v157 currentDescriptorState];
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
  v23 = self;
  v22[1] = a2;
  v22[0] = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = [(SUSUISoftwareUpdateController *)v23 automaticUpdatesCell];
  MEMORY[0x277D82BD8](v21);
  if (v21)
  {
    v20 = [(SUSUISoftwareUpdateController *)v23 automaticUpdatesCell];
    [v22[0] setObject:? forKey:?];
    MEMORY[0x277D82BD8](v20);
  }

  v19 = [(SUSUISoftwareUpdateController *)v23 betaUpdatesCell];
  MEMORY[0x277D82BD8](v19);
  if (v19)
  {
    v18 = [(SUSUISoftwareUpdateController *)v23 betaUpdatesCell];
    [v22[0] setObject:? forKey:?];
    MEMORY[0x277D82BD8](v18);
  }

  v17 = [(SUSUISoftwareUpdateController *)v23 titleCell];
  MEMORY[0x277D82BD8](v17);
  if (v17)
  {
    v16 = [(SUSUISoftwareUpdateController *)v23 titleCell];
    [v22[0] setObject:? forKey:?];
    MEMORY[0x277D82BD8](v16);
  }

  v15 = [(SUSUISoftwareUpdateController *)v23 scanCell];
  MEMORY[0x277D82BD8](v15);
  if (v15)
  {
    v14 = [(SUSUISoftwareUpdateController *)v23 scanCell];
    [v22[0] setObject:? forKey:?];
    MEMORY[0x277D82BD8](v14);
  }

  v13 = [(SUSUISoftwareUpdateController *)v23 comingSoonCell];
  MEMORY[0x277D82BD8](v13);
  if (v13)
  {
    v12 = [(SUSUISoftwareUpdateController *)v23 comingSoonCell];
    [v22[0] setObject:? forKey:?];
    MEMORY[0x277D82BD8](v12);
  }

  v11 = [(SUSUISoftwareUpdateController *)v23 updateOptionsCell];
  MEMORY[0x277D82BD8](v11);
  if (v11)
  {
    v10 = [(SUSUISoftwareUpdateController *)v23 updateOptionsCell];
    [v22[0] setObject:? forKey:?];
    MEMORY[0x277D82BD8](v10);
  }

  v9 = [(SUSUISoftwareUpdateController *)v23 proactiveSuggestionCell];
  MEMORY[0x277D82BD8](v9);
  if (v9)
  {
    v8 = [(SUSUISoftwareUpdateController *)v23 proactiveSuggestionCell];
    [v22[0] setObject:? forKey:?];
    MEMORY[0x277D82BD8](v8);
  }

  v7 = [(SUSUISoftwareUpdateController *)v23 alternateUpdateCell];
  MEMORY[0x277D82BD8](v7);
  if (v7)
  {
    v6 = [(SUSUISoftwareUpdateController *)v23 alternateUpdateCell];
    [v22[0] setObject:? forKey:?];
    MEMORY[0x277D82BD8](v6);
  }

  v5 = [(SUSUISoftwareUpdateController *)v23 nonPromotedUpdateCell];
  MEMORY[0x277D82BD8](v5);
  if (v5)
  {
    v4 = [(SUSUISoftwareUpdateController *)v23 nonPromotedUpdateCell];
    [v22[0] setObject:? forKey:?];
    MEMORY[0x277D82BD8](v4);
  }

  v3 = MEMORY[0x277D82BE0](v22[0]);
  objc_storeStrong(v22, 0);

  return v3;
}

- (void)reloadSpecifiers:(id)a3 animated:(BOOL)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = a4;
  [(SUSUISoftwareUpdateController *)v16 beginUpdates];
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
      [(SUSUISoftwareUpdateController *)v16 reloadSpecifier:v13 animated:v14, v8];
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
  [(SUSUISoftwareUpdateController *)v16 endUpdates];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)reloadUsingNewSpecifiers:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSUISoftwareUpdateController *)v4 reloadUsingNewSpecifiers:location[0] animated:1];
  objc_storeStrong(location, 0);
}

- (void)reloadUsingNewSpecifiers:(id)a3 animated:(BOOL)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = a4;
  if (a4)
  {
    v29 = [(SUSUISoftwareUpdateController *)v33 specifiers];
    v28 = [MEMORY[0x277D3FAE8] updatesByDiffingSpecifiers:v29 withSpecifiers:location[0] changedBlock:&__block_literal_global_3];
    v14 = objc_alloc(MEMORY[0x277CBEB18]);
    v15 = [v28 updates];
    v27 = [v14 initWithCapacity:{objc_msgSend(v15, "count")}];
    MEMORY[0x277D82BD8](v15);
    v16 = objc_alloc(MEMORY[0x277CBEB18]);
    v17 = [v28 updates];
    v26 = [v16 initWithCapacity:{objc_msgSend(v17, "count")}];
    MEMORY[0x277D82BD8](v17);
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
    v5 = [(SUSUISoftwareUpdateController *)v33 specifiers];
    v23 = [v4 initWithSpecifiers:? applyUpdates:?];
    MEMORY[0x277D82BD8](v5);
    v6 = [v23 context];
    [v6 setAnimated:v31];
    MEMORY[0x277D82BD8](v6);
    [(SUSUISoftwareUpdateController *)v33 performSpecifierUpdates:v23];
    v7 = objc_alloc(MEMORY[0x277D3FAE8]);
    v8 = [(SUSUISoftwareUpdateController *)v33 specifiers];
    v22 = [v7 initWithSpecifiers:? applyUpdates:?];
    MEMORY[0x277D82BD8](v8);
    v9 = [v22 context];
    [v9 setAnimated:0];
    MEMORY[0x277D82BD8](v9);
    [(SUSUISoftwareUpdateController *)v33 performSpecifierUpdates:v22];
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    v30 = 0;
  }

  else
  {
    [(SUSUISoftwareUpdateController *)v33 setSpecifiers:location[0]];
    v20 = [(SUSUISoftwareUpdateController *)v33 table];
    [v20 reloadData];
    MEMORY[0x277D82BD8](v20);
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

- (BOOL)specifier:(id)a3 isEqualToSpecifier:(id)a4
{
  v45 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v43 = 0;
  objc_storeStrong(&v43, a4);
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
      v11 = v45;
      v42 = [location[0] name];
      v41 = 1;
      v40 = [v43 name];
      v39 = 1;
      v13 = 0;
      if ([(SUSUISoftwareUpdateController *)v11 specifierStringValue:v42 IsEqualToSpecifierStringValue:?])
      {
        v10 = v45;
        v38 = [location[0] identifier];
        v37 = 1;
        v36 = [v43 identifier];
        v35 = 1;
        v13 = 0;
        if ([(SUSUISoftwareUpdateController *)v10 specifierStringValue:v38 IsEqualToSpecifierStringValue:?])
        {
          v13 = 0;
          if ([(SUSUISoftwareUpdateController *)v45 specifierSelectorValue:*(location[0] + *MEMORY[0x277D3FCA8]) IsEqualToSpecifierSelectorValue:*(v43 + *MEMORY[0x277D3FCA8])])
          {
            v13 = 0;
            if ([(SUSUISoftwareUpdateController *)v45 specifierSelectorValue:*(location[0] + *MEMORY[0x277D3FCB0]) IsEqualToSpecifierSelectorValue:*(v43 + *MEMORY[0x277D3FCB0])])
            {
              v13 = 0;
              if ([(SUSUISoftwareUpdateController *)v45 specifierClassValue:*(location[0] + *MEMORY[0x277D3FC98]) IsEqualToSpecifierClassValue:*(v43 + *MEMORY[0x277D3FC98])])
              {
                v13 = 0;
                if ([(SUSUISoftwareUpdateController *)v45 specifierIntValue:*(location[0] + *MEMORY[0x277D3FC90]) IsEqualToSpecifierIntValue:*(v43 + *MEMORY[0x277D3FC90])])
                {
                  v13 = 0;
                  if ([(SUSUISoftwareUpdateController *)v45 specifierClassValue:*(location[0] + *MEMORY[0x277D3FCA0]) IsEqualToSpecifierClassValue:*(v43 + *MEMORY[0x277D3FCA0])])
                  {
                    v13 = 0;
                    if (-[SUSUISoftwareUpdateController specifierSelectorValue:IsEqualToSpecifierSelectorValue:](v45, "specifierSelectorValue:IsEqualToSpecifierSelectorValue:", [location[0] confirmationAction], objc_msgSend(v43, "confirmationAction")))
                    {
                      v13 = 0;
                      if (-[SUSUISoftwareUpdateController specifierSelectorValue:IsEqualToSpecifierSelectorValue:](v45, "specifierSelectorValue:IsEqualToSpecifierSelectorValue:", [location[0] confirmationAlternateAction], objc_msgSend(v43, "confirmationAlternateAction")))
                      {
                        v13 = 0;
                        if (-[SUSUISoftwareUpdateController specifierSelectorValue:IsEqualToSpecifierSelectorValue:](v45, "specifierSelectorValue:IsEqualToSpecifierSelectorValue:", [location[0] confirmationCancelAction], objc_msgSend(v43, "confirmationCancelAction")))
                        {
                          v13 = 0;
                          if (-[SUSUISoftwareUpdateController specifierSelectorValue:IsEqualToSpecifierSelectorValue:](v45, "specifierSelectorValue:IsEqualToSpecifierSelectorValue:", [location[0] controllerLoadAction], objc_msgSend(v43, "controllerLoadAction")))
                          {
                            v9 = v45;
                            v34 = [location[0] properties];
                            v33 = 1;
                            v32 = [v43 properties];
                            v31 = 1;
                            v13 = 0;
                            if ([(SUSUISoftwareUpdateController *)v9 specifierDictionaryValue:v34 IsEqualToSpecifierDictionaryValue:?])
                            {
                              v8 = v45;
                              v30 = [location[0] values];
                              v29 = 1;
                              v28 = [v43 values];
                              v27 = 1;
                              v13 = 0;
                              if ([(SUSUISoftwareUpdateController *)v8 specifierArrayValue:v30 IsEqualToSpecifierArrayValue:?])
                              {
                                v7 = v45;
                                v26 = [location[0] titleDictionary];
                                v25 = 1;
                                v24 = [v43 titleDictionary];
                                v23 = 1;
                                v13 = 0;
                                if ([(SUSUISoftwareUpdateController *)v7 specifierDictionaryValue:v26 IsEqualToSpecifierDictionaryValue:?])
                                {
                                  v6 = v45;
                                  v22 = [location[0] shortTitleDictionary];
                                  v21 = 1;
                                  v20 = [v43 shortTitleDictionary];
                                  v19 = 1;
                                  v13 = 0;
                                  if ([(SUSUISoftwareUpdateController *)v6 specifierDictionaryValue:v22 IsEqualToSpecifierDictionaryValue:?])
                                  {
                                    v5 = v45;
                                    v18 = [location[0] userInfo];
                                    v17 = 1;
                                    v16 = [v43 userInfo];
                                    v15 = 1;
                                    v13 = [(SUSUISoftwareUpdateController *)v5 specifierIDValue:v18 IsEqualToSpecifierIDValue:?];
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
      MEMORY[0x277D82BD8](v16);
    }

    if (v17)
    {
      MEMORY[0x277D82BD8](v18);
    }

    if (v19)
    {
      MEMORY[0x277D82BD8](v20);
    }

    if (v21)
    {
      MEMORY[0x277D82BD8](v22);
    }

    if (v23)
    {
      MEMORY[0x277D82BD8](v24);
    }

    if (v25)
    {
      MEMORY[0x277D82BD8](v26);
    }

    if (v27)
    {
      MEMORY[0x277D82BD8](v28);
    }

    if (v29)
    {
      MEMORY[0x277D82BD8](v30);
    }

    if (v31)
    {
      MEMORY[0x277D82BD8](v32);
    }

    if (v33)
    {
      MEMORY[0x277D82BD8](v34);
    }

    if (v35)
    {
      MEMORY[0x277D82BD8](v36);
    }

    if (v37)
    {
      MEMORY[0x277D82BD8](v38);
    }

    if (v39)
    {
      MEMORY[0x277D82BD8](v40);
    }

    if (v41)
    {
      MEMORY[0x277D82BD8](v42);
    }
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  return v46 & 1;
}

- (BOOL)specifierStringValue:(id)a3 IsEqualToSpecifierStringValue:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if (location[0] || (v5 = 1, v7))
  {
    v5 = [location[0] isEqualToString:v7];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)specifierDictionaryValue:(id)a3 IsEqualToSpecifierDictionaryValue:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if (location[0] || (v5 = 1, v7))
  {
    v5 = [location[0] isEqualToDictionary:v7];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)specifierArrayValue:(id)a3 IsEqualToSpecifierArrayValue:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if (location[0] || (v5 = 1, v7))
  {
    v5 = [location[0] isEqualToArray:v7];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)specifierSelectorValue:(SEL)a3 IsEqualToSpecifierSelectorValue:(SEL)a4
{
  if (a3)
  {
    return a3 == a4;
  }

  v5 = 1;
  if (a4)
  {
    return a3 == a4;
  }

  return v5;
}

- (BOOL)specifierClassValue:(Class)a3 IsEqualToSpecifierClassValue:(Class)a4
{
  if (a3)
  {
    return a3 == a4;
  }

  v5 = 1;
  if (a4)
  {
    return a3 == a4;
  }

  return v5;
}

- (BOOL)specifierIDValue:(id)a3 IsEqualToSpecifierIDValue:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
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
  v15 = self;
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
      v11 = [(SUSUISoftwareUpdateController *)v15 specifierWithID:v13, v2];
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

- (id)specifierForComingSoonGroupWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v6[4] = self;
  v6[3] = a2;
  v6[2] = a3;
  v6[1] = a4;
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

- (id)specifierForComingSoonWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v15 = self;
  v14[3] = a2;
  v14[2] = a3;
  v14[1] = a4;
  v14[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUTipKitComingSoonCell"];
  if (!v14[0])
  {
    v14[0] = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    MEMORY[0x277D82BD8](0);
    [v14[0] setProperty:@"SUTipKitComingSoonCell" forKey:*MEMORY[0x277D3FFB8]];
    [v14[0] setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
    [(SUSUISoftwareUpdateController *)v15 setComingSoonCell:0];
  }

  v13 = [(SUSUISoftwareUpdateController *)v15 comingSoonCell];
  MEMORY[0x277D82BD8](v13);
  if (!v13)
  {
    v11 = [objc_alloc(MEMORY[0x277D64AA0]) initWithStyle:3 reuseIdentifier:0 specifier:?];
    [(SUSUISoftwareUpdateController *)v15 setComingSoonCell:?];
    MEMORY[0x277D82BD8](v11);
    v12 = [(SUSUISoftwareUpdateController *)v15 comingSoonCell];
    [(SUSSoftwareUpdateComingSoonTipCell *)v12 setSpecifier:v14[0]];
    MEMORY[0x277D82BD8](v12);
  }

  v6 = v14[0];
  v7 = [(SUSUISoftwareUpdateController *)v15 comingSoonCell];
  v4 = *MEMORY[0x277D40148];
  [v6 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v7);
  v8 = [(SUSUISoftwareUpdateController *)v15 comingSoonCell];
  [(SUSSoftwareUpdateComingSoonTipCell *)v8 setAccessibilityIdentifier:@"SUTipKitComingSoonCell"];
  MEMORY[0x277D82BD8](v8);
  v9 = [(SUSUISoftwareUpdateController *)v15 comingSoonCell];
  [(SUSSoftwareUpdateComingSoonTipCell *)v9 setUserInteractionEnabled:[(SUSUISoftwareUpdateController *)v15 isBusy]^ 1];
  MEMORY[0x277D82BD8](v9);
  v10 = MEMORY[0x277D82BE0](v14[0]);
  objc_storeStrong(v14, 0);

  return v10;
}

- (id)specifierForAutomaticUpdatesGroupWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v79 = self;
  v78 = a2;
  v77 = a3;
  v76 = a4;
  v75 = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUAutomaticUpdateGroup"];
  if (!v75)
  {
    v75 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SUAutomaticUpdateGroup"];
    MEMORY[0x277D82BD8](0);
  }

  if ([(SUSUISoftwareUpdateController *)v79 shouldShowEnforcedUpdateForUIState:v77 descriptorState:v76])
  {
    v58 = [(SUSUISoftwareUpdateController *)v79 manager];
    v57 = [(SUSettingsStatefulUIManager *)v58 ddmDeclaration];
    v74 = [(SUCoreDDMDeclaration *)v57 versionString];
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v58);
    v60 = [(SUSUISoftwareUpdateController *)v79 manager];
    v59 = [(SUSettingsStatefulUIManager *)v60 ddmDeclaration];
    v73 = [(SUCoreDDMDeclaration *)v59 buildVersionString];
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v60);
    v62 = [(SUSUISoftwareUpdateController *)v79 manager];
    v61 = [(SUSettingsStatefulUIManager *)v62 ddmDeclaration];
    v72 = [(SUCoreDDMDeclaration *)v61 enforcedInstallDate];
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v62);
    location = 0;
    v70 = [MEMORY[0x277CCA968] localizedStringFromDate:v72 dateStyle:1 timeStyle:?];
    v55 = [(SUSUISoftwareUpdateController *)v79 manager];
    v54 = [(SUSettingsStatefulUIManager *)v55 currentDownload];
    v56 = [(SUDownload *)v54 descriptor];
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v55);
    if (v56)
    {
      v43 = MEMORY[0x277CCACA8];
      v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v52 = [v53 localizedStringForKey:@"%@ (%@)" value:&stru_287B79370 table:@"Software Update"];
      v51 = [(SUSUISoftwareUpdateController *)v79 manager];
      v50 = [(SUSettingsStatefulUIManager *)v51 currentDownload];
      v49 = [(SUDownload *)v50 descriptor];
      v48 = [(SUDescriptor *)v49 productVersion];
      v47 = [(SUSUISoftwareUpdateController *)v79 manager];
      v46 = [(SUSettingsStatefulUIManager *)v47 currentDownload];
      v45 = [(SUDownload *)v46 descriptor];
      v44 = [(SUDescriptor *)v45 productBuildVersion];
      v4 = [v43 stringWithFormat:v52, v48, v44];
      v5 = location;
      location = v4;
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v48);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v51);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v53);
    }

    else if (v74 && v73)
    {
      v40 = MEMORY[0x277CCACA8];
      v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v41 = [v42 localizedStringForKey:@"%@ (%@)" value:&stru_287B79370 table:@"Software Update"];
      v6 = [v40 stringWithFormat:v74, v73];
      v7 = location;
      location = v6;
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v42);
    }

    else if (v74)
    {
      objc_storeStrong(&location, v74);
    }

    else
    {
      objc_storeStrong(&location, v73);
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
    v39 = [(SUSUISoftwareUpdateController *)v79 manager];
    v38 = [(SUSettingsStatefulUIManager *)v39 ddmDeclaration];
    v68 = [(SUCoreDDMDeclaration *)v38 detailsURL];
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    if (v68)
    {
      v24 = MEMORY[0x277CCACA8];
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = [v26 localizedStringForKey:@"MANAGED_DEVICE_ENFORCED_UPDATE_BODY_WITH_URL" value:&stru_287B79370 table:@"Software Update"];
      v10 = [v24 stringWithFormat:v69, v68];
      v11 = v69;
      v69 = v10;
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
      v67.location = [v69 rangeOfString:v68];
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
      [v75 setProperty:v68 forKey:*MEMORY[0x277D3FF78]];
    }

    [v75 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
    [v75 setProperty:v69 forKey:*MEMORY[0x277D3FF88]];
    objc_storeStrong(&v68, 0);
    objc_storeStrong(&v69, 0);
    objc_storeStrong(&v70, 0);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v72, 0);
    objc_storeStrong(&v73, 0);
    objc_storeStrong(&v74, 0);
  }

  else
  {
    v65 = 0;
    v63 = 0;
    v23 = 0;
    if (v77 == 4)
    {
      v23 = 0;
      if (![(SUSUISoftwareUpdateController *)v79 presentingStatefulDescriptorPromotedAsAlternate])
      {
        v66 = [(SUSUISoftwareUpdateController *)v79 manager];
        v65 = 1;
        v22 = 1;
        if (![(SUSettingsStatefulUIManager *)v66 isDelayingUpdate])
        {
          v64 = [(SUSUISoftwareUpdateController *)v79 manager];
          v63 = 1;
          v22 = [(SUSettingsStatefulUIManager *)v64 hasSUPathRestrictions];
        }

        v23 = v22;
      }
    }

    if (v63)
    {
      MEMORY[0x277D82BD8](v64);
    }

    if (v65)
    {
      MEMORY[0x277D82BD8](v66);
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

- (id)specifierForAutomaticUpdatesWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v26 = self;
  v25[3] = a2;
  v25[2] = a3;
  v25[1] = a4;
  v24 = 0;
  v25[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUAutomaticUpdateButton"];
  MEMORY[0x277D82BD8](0);
  if (!v25[0])
  {
    v20 = MEMORY[0x277D3FAD8];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"AUTOMATIC_UPDATES" value:&stru_287B79370 table:@"Software Update"];
    objc_opt_class();
    v4 = [v20 preferenceSpecifierNamed:v22 target:v26 set:0 get:? detail:? cell:? edit:?];
    v5 = v25[0];
    v25[0] = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v21);
    [v25[0] setProperty:@"SUAutomaticUpdateButton" forKey:*MEMORY[0x277D3FFB8]];
    [(SUSUISoftwareUpdateController *)v26 setAutomaticUpdatesCell:0];
  }

  v19 = [(SUSUISoftwareUpdateController *)v26 automaticUpdatesCell];
  MEMORY[0x277D82BD8](v19);
  if (!v19)
  {
    v18 = [objc_alloc(MEMORY[0x277D3FB38]) initWithStyle:0 reuseIdentifier:@"SUAutomaticUpdateButton" specifier:v25[0]];
    [(SUSUISoftwareUpdateController *)v26 setAutomaticUpdatesCell:?];
    MEMORY[0x277D82BD8](v18);
  }

  location = [MEMORY[0x277D756E0] valueCellConfiguration];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v11 localizedStringForKey:@"AUTOMATIC_UPDATES" value:&stru_287B79370 table:@"Software Update"];
  [location setText:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v12 = [(SUSUISoftwareUpdateController *)v26 automaticUpdatesCellTitle];
  [location setSecondaryText:?];
  MEMORY[0x277D82BD8](v12);
  v13 = [(SUSUISoftwareUpdateController *)v26 automaticUpdatesCell];
  [(PSTableCell *)v13 setContentConfiguration:location];
  MEMORY[0x277D82BD8](v13);
  v14 = [(SUSUISoftwareUpdateController *)v26 automaticUpdatesCell];
  [(PSTableCell *)v14 setAccessibilityIdentifier:@"SUAutomaticUpdateButton"];
  MEMORY[0x277D82BD8](v14);
  v15 = [(SUSUISoftwareUpdateController *)v26 automaticUpdatesCell];
  [(PSTableCell *)v15 setAccessoryType:1];
  MEMORY[0x277D82BD8](v15);
  v16 = [(SUSUISoftwareUpdateController *)v26 automaticUpdatesCell];
  [(PSTableCell *)v16 setUserInteractionEnabled:[(SUSUISoftwareUpdateController *)v26 isBusy]^ 1];
  MEMORY[0x277D82BD8](v16);
  [v25[0] setProperty:&unk_287B855B8 forKey:*MEMORY[0x277D3FD68]];
  v17 = [v25[0] propertyForKey:*MEMORY[0x277D40148]];
  MEMORY[0x277D82BD8](v17);
  if (!v17)
  {
    v9 = [(SUSUISoftwareUpdateController *)v26 automaticUpdatesCell];
    v6 = *MEMORY[0x277D40148];
    [v25[0] setProperty:? forKey:?];
    MEMORY[0x277D82BD8](v9);
  }

  v8 = MEMORY[0x277D82BE0](v25[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v25, 0);

  return v8;
}

- (id)specifierForBetaUpdatesCellWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v23 = self;
  v22[3] = a2;
  v22[2] = a3;
  v22[1] = a4;
  v22[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUGetBetaUpdatesButton"];
  if (!v22[0])
  {
    v18 = MEMORY[0x277D3FAD8];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v20 localizedStringForKey:@"GET_BETA_UPDATES" value:&stru_287B79370 table:@"Software Update"];
    objc_opt_class();
    v22[0] = [v18 preferenceSpecifierNamed:v19 target:v23 set:0 get:? detail:? cell:? edit:?];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    [v22[0] setProperty:@"SUGetBetaUpdatesButton" forKey:*MEMORY[0x277D3FFB8]];
    [(SUSUISoftwareUpdateController *)v23 setBetaUpdatesCell:0];
  }

  v17 = [(SUSUISoftwareUpdateController *)v23 betaUpdatesCell];
  MEMORY[0x277D82BD8](v17);
  if (!v17)
  {
    v16 = [objc_alloc(MEMORY[0x277D3FB38]) initWithStyle:0 reuseIdentifier:@"SUGetBetaUpdatesButton" specifier:v22[0]];
    [(SUSUISoftwareUpdateController *)v23 setBetaUpdatesCell:?];
    MEMORY[0x277D82BD8](v16);
  }

  location = [MEMORY[0x277D756E0] valueCellConfiguration];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v9 localizedStringForKey:@"GET_BETA_UPDATES" value:&stru_287B79370 table:@"Software Update"];
  [location setText:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v10 = [(SUSUISoftwareUpdateController *)v23 isBetaUpdatesEnabled];
  [location setSecondaryText:?];
  MEMORY[0x277D82BD8](v10);
  v11 = [(SUSUISoftwareUpdateController *)v23 betaUpdatesCell];
  [(PSTableCell *)v11 setContentConfiguration:location];
  MEMORY[0x277D82BD8](v11);
  v12 = [(SUSUISoftwareUpdateController *)v23 betaUpdatesCell];
  [(PSTableCell *)v12 setAccessibilityIdentifier:@"SUGetBetaUpdatesButton"];
  MEMORY[0x277D82BD8](v12);
  v13 = [(SUSUISoftwareUpdateController *)v23 betaUpdatesCell];
  [(PSTableCell *)v13 setAccessoryType:1];
  MEMORY[0x277D82BD8](v13);
  v14 = [(SUSUISoftwareUpdateController *)v23 betaUpdatesCell];
  [(PSTableCell *)v14 setUserInteractionEnabled:[(SUSUISoftwareUpdateController *)v23 isBusy]^ 1];
  MEMORY[0x277D82BD8](v14);
  [v22[0] setProperty:&unk_287B855B8 forKey:*MEMORY[0x277D3FD68]];
  v15 = [v22[0] propertyForKey:*MEMORY[0x277D40148]];
  MEMORY[0x277D82BD8](v15);
  if (!v15)
  {
    v7 = [(SUSUISoftwareUpdateController *)v23 betaUpdatesCell];
    v4 = *MEMORY[0x277D40148];
    [v22[0] setProperty:? forKey:?];
    MEMORY[0x277D82BD8](v7);
  }

  v6 = MEMORY[0x277D82BE0](v22[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v22, 0);

  return v6;
}

- (id)specifierForScanHeaderGroupWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v9[4] = self;
  v9[3] = a2;
  v9[2] = a3;
  v9[1] = a4;
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

- (id)specifierForScanFooterGroupWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v9[4] = self;
  v9[3] = a2;
  v9[2] = a3;
  v9[1] = a4;
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

- (id)specifierForScanStatusWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v9[4] = self;
  v9[3] = a2;
  v9[2] = a3;
  v9[1] = a4;
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

- (id)specifierForScanStatusCellWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v16 = self;
  v15[3] = a2;
  v15[2] = a3;
  v15[1] = a4;
  v15[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUScanStatusCell"];
  if (!v15[0])
  {
    v15[0] = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    MEMORY[0x277D82BD8](0);
    [v15[0] setProperty:@"SUScanStatusCell" forKey:*MEMORY[0x277D3FFB8]];
    [v15[0] setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
  }

  v14 = [(SUSUISoftwareUpdateController *)v16 scanCell];
  MEMORY[0x277D82BD8](v14);
  if (!v14)
  {
    v12 = [objc_alloc(MEMORY[0x277D64AB8]) initWithStyle:3 reuseIdentifier:0 specifier:?];
    [(SUSUISoftwareUpdateController *)v16 setScanCell:?];
    MEMORY[0x277D82BD8](v12);
    v13 = [(SUSUISoftwareUpdateController *)v16 scanCell];
    [(SUSSoftwareUpdateScanCell *)v13 setSpecifier:v15[0]];
    MEMORY[0x277D82BD8](v13);
  }

  v10 = [(SUSUISoftwareUpdateController *)v16 scanCell];
  [(SUSSoftwareUpdateScanCell *)v10 setAccessibilityIdentifier:?];
  MEMORY[0x277D82BD8](v10);
  [v15[0] setAccessibilityIdentifier:@"SUScanStatusCell"];
  v11 = [v15[0] propertyForKey:*MEMORY[0x277D40148]];
  MEMORY[0x277D82BD8](v11);
  if (!v11)
  {
    v9 = [(SUSUISoftwareUpdateController *)v16 scanCell];
    v4 = *MEMORY[0x277D40148];
    [v15[0] setProperty:? forKey:?];
    MEMORY[0x277D82BD8](v9);
  }

  v6 = v16;
  v7 = [(SUSUISoftwareUpdateController *)v16 scanCell];
  [SUSUISoftwareUpdateController configureScanCell:v6 withUIState:"configureScanCell:withUIState:descriptorState:" descriptorState:?];
  MEMORY[0x277D82BD8](v7);
  v8 = MEMORY[0x277D82BE0](v15[0]);
  objc_storeStrong(v15, 0);

  return v8;
}

- (id)specifierForTitleGroupWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v29 = self;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUTitleGroup"];
  if (!v25)
  {
    v25 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    MEMORY[0x277D82BD8](0);
    [v25 setProperty:@"SUTitleGroup" forKey:*MEMORY[0x277D3FFB8]];
  }

  v23 = 0;
  v20 = 1;
  if (![(SUSUISoftwareUpdateController *)v29 shouldShowProactiveSuggestionsSpecifierForUIState:v27 descriptorState:v26])
  {
    v24 = [(SUSUISoftwareUpdateController *)v29 manager];
    v23 = 1;
    v20 = [(SUSettingsStatefulUIManager *)v24 isClearingSpaceForDownload];
  }

  if (v23)
  {
    MEMORY[0x277D82BD8](v24);
  }

  if (v20)
  {
    goto LABEL_24;
  }

  if (v27 == 4 && v26 == 1)
  {
    location = MEMORY[0x277D82BE0](&stru_287B79370);
    if (![(SUSUISoftwareUpdateController *)v29 _shouldHideTonightButton])
    {
      [v25 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"UPDATE_OPTIONS_EXPLANATION_FOOTER_TEXT"];
      v4 = [v19 localizedStringForKey:? value:? table:?];
      v5 = location;
      location = v4;
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
    }

    v16 = [MEMORY[0x277D75418] currentDevice];
    v17 = [v16 sf_isInternalInstall];
    MEMORY[0x277D82BD8](v16);
    if (v17)
    {
      v14 = [MEMORY[0x277D64AE0] sharedDefaults];
      v15 = [v14 shouldBypassSystemRootWarning];
      MEMORY[0x277D82BD8](v14);
      if ((v15 & 1) == 0)
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

    [v25 setProperty:location forKey:*MEMORY[0x277D3FF88]];
    objc_storeStrong(&location, 0);
    goto LABEL_25;
  }

  if (v27 != 4 || v26 != 4)
  {
LABEL_24:
    [v25 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FD80]];
    [v25 setProperty:&stru_287B79370 forKey:*MEMORY[0x277D3FF88]];
    goto LABEL_25;
  }

  if (![(SUSUISoftwareUpdateController *)v29 _shouldHideTonightButton])
  {
    [v25 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"INSTALL_OPTIONS_EXPLANATION_FOOTER_TEXT"];
    v11 = [v13 localizedStringForKey:? value:? table:?];
    v8 = *MEMORY[0x277D3FF88];
    [v25 setProperty:? forKey:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
  }

LABEL_25:
  v10 = MEMORY[0x277D82BE0](v25);
  objc_storeStrong(&v25, 0);

  return v10;
}

- (id)specifierForTitleCellWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v41 = self;
  v40 = a2;
  v39 = a3;
  v38 = a4;
  v37 = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUTitleCell"];
  v36 = [(SUSUISoftwareUpdateController *)v41 presentingDescriptor];
  if (!v37)
  {
    v37 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    MEMORY[0x277D82BD8](0);
    [v37 setProperty:@"SUTitleCell" forKey:*MEMORY[0x277D3FFB8]];
    [(SUSUISoftwareUpdateController *)v41 setTitleCell:0];
  }

  v28 = [(SUSUISoftwareUpdateController *)v41 titleCell];
  MEMORY[0x277D82BD8](v28);
  if (!v28)
  {
    v22 = objc_alloc(MEMORY[0x277D64AC8]);
    v27 = [v36 documentation];
    v26 = [v27 iconImage];
    v25 = [v36 documentation];
    v24 = [v25 releaseNotes];
    v23 = [v22 initWithStyle:3 reuseIdentifier:0 specifier:0 updateIcon:v26 showLearnMore:v24 != 0 showSplomboNotes:objc_msgSend(v36 delegate:{"isSplombo"), v41}];
    [(SUSUISoftwareUpdateController *)v41 setTitleCell:?];
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
  }

  v11 = [(SUSUISoftwareUpdateController *)v41 titleCell];
  [(SUSSoftwareUpdateTitleCell *)v11 setSpecifier:v37];
  MEMORY[0x277D82BD8](v11);
  v14 = [(SUSUISoftwareUpdateController *)v41 titleCell];
  v13 = [v36 documentation];
  v12 = [v13 releaseNotesSummary];
  [(SUSSoftwareUpdateTitleCell *)v14 setReleaseNotesSummary:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  v16 = [(SUSUISoftwareUpdateController *)v41 titleCell];
  v15 = [v36 humanReadableUpdateName];
  [(SUSSoftwareUpdateTitleCell *)v16 setUpdateName:?];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  v17 = [(SUSUISoftwareUpdateController *)v41 titleCell];
  [(SUSSoftwareUpdateTitleCell *)v17 setAccessibilityIdentifier:@"SUTitleCell"];
  MEMORY[0x277D82BD8](v17);
  v20 = [(SUSUISoftwareUpdateController *)v41 titleCell];
  v19 = [v36 documentation];
  v18 = [v19 iconImage];
  [(SUSSoftwareUpdateTitleCell *)v20 setUpdateIcon:?];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  v21 = [v37 propertyForKey:*MEMORY[0x277D40148]];
  MEMORY[0x277D82BD8](v21);
  if (!v21)
  {
    v10 = [(SUSUISoftwareUpdateController *)v41 titleCell];
    v4 = *MEMORY[0x277D40148];
    [v37 setProperty:? forKey:?];
    MEMORY[0x277D82BD8](v10);
  }

  [(SUSUISoftwareUpdateController *)v41 _setTitleCellSpecifierStatus:v37 descriptorState:v38];
  v7 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  queue = v7;
  v29 = MEMORY[0x277D85DD0];
  v30 = -1073741824;
  v31 = 0;
  v32 = __94__SUSUISoftwareUpdateController_Specifiers__specifierForTitleCellWithUIState_descriptorState___block_invoke;
  v33 = &unk_279CB9410;
  v34 = MEMORY[0x277D82BE0](v41);
  v35 = MEMORY[0x277D82BE0](v36);
  dispatch_async(queue, &v29);
  MEMORY[0x277D82BD8](queue);
  v9 = MEMORY[0x277D82BE0](v37);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v36, 0);
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

- (id)specifierForUpdateOptionsWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v22 = self;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  location = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUSpecifierUpdateOptionsCell"];
  if (!location)
  {
    location = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    MEMORY[0x277D82BD8](0);
    [location setProperty:@"SUSpecifierUpdateOptionsCell" forKey:*MEMORY[0x277D3FFB8]];
    [location setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
    [(SUSUISoftwareUpdateController *)v22 setUpdateOptionsCell:0];
  }

  v15 = [(SUSUISoftwareUpdateController *)v22 updateOptionsCell];
  MEMORY[0x277D82BD8](v15);
  if (!v15)
  {
    v12 = [objc_alloc(MEMORY[0x277D64AD0]) initWithStyle:0 reuseIdentifier:? specifier:?];
    [(SUSUISoftwareUpdateController *)v22 setUpdateOptionsCell:?];
    MEMORY[0x277D82BD8](v12);
    v13 = [(SUSUISoftwareUpdateController *)v22 updateOptionsCell];
    [(SUSSoftwareUpdateUpdateOptionsCell *)v13 setSpecifier:location];
    MEMORY[0x277D82BD8](v13);
    v14 = [(SUSUISoftwareUpdateController *)v22 updateOptionsCell];
    [(SUSSoftwareUpdateUpdateOptionsCell *)v14 setAccessibilityIdentifier:@"SUSpecifierUpdateOptionsCell"];
    MEMORY[0x277D82BD8](v14);
  }

  v11 = [(SUSUISoftwareUpdateController *)v22 updateOptionsCell];
  v4 = *MEMORY[0x277D40148];
  [location setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v11);
  v5 = [(SUSUISoftwareUpdateController *)v22 _setInstallButtonButtonSpecifierState:location forUIState:v20 descriptorState:v19];
  v6 = location;
  location = v5;
  MEMORY[0x277D82BD8](v6);
  if (location)
  {
    v9 = [(SUSUISoftwareUpdateController *)v22 updateOptionsCell];
    v16 = 0;
    v10 = 0;
    if (([(SUSSoftwareUpdateUpdateOptionsCell *)v9 isPrimaryButtonHidden]& 1) != 0)
    {
      v17 = [(SUSUISoftwareUpdateController *)v22 updateOptionsCell];
      v16 = 1;
      v10 = [(SUSSoftwareUpdateUpdateOptionsCell *)v17 isSecondaryButtonHidden];
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](v17);
    }

    MEMORY[0x277D82BD8](v9);
    if (v10)
    {
      v23 = 0;
    }

    else
    {
      if (v22->_currentActivityStyle)
      {
        [(SUSUISoftwareUpdateController *)v22 setBusyWithActivityStyle:v22->_currentActivityStyle];
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

- (id)specifierForProactiveSuggestionCellWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v57 = self;
  v56 = a2;
  v55 = a3;
  v54 = a4;
  v53 = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUProactiveSuggestionCell"];
  if (!v53)
  {
    v53 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:-1 edit:0];
    MEMORY[0x277D82BD8](0);
    [v53 setProperty:@"SUProactiveSuggestionCell" forKey:*MEMORY[0x277D3FFB8]];
    [v53 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
    [(SUSUISoftwareUpdateController *)v57 setProactiveSuggestionCell:0];
  }

  v50 = [(SUSUISoftwareUpdateController *)v57 proactiveSuggestionCell];
  MEMORY[0x277D82BD8](v50);
  if (!v50)
  {
    v48 = [objc_alloc(MEMORY[0x277D64AA8]) initWithStyle:0 reuseIdentifier:@"SUProactiveSuggestionCell" specifier:v53];
    [(SUSUISoftwareUpdateController *)v57 setProactiveSuggestionCell:?];
    MEMORY[0x277D82BD8](v48);
    v49 = [(SUSUISoftwareUpdateController *)v57 proactiveSuggestionCell];
    [(SUSSoftwareUpdateProactiveSuggestionCell *)v49 setSpecifier:v53];
    MEMORY[0x277D82BD8](v49);
  }

  v47 = [v53 propertyForKey:*MEMORY[0x277D40148]];
  MEMORY[0x277D82BD8](v47);
  if (!v47)
  {
    v46 = [(SUSUISoftwareUpdateController *)v57 proactiveSuggestionCell];
    v4 = *MEMORY[0x277D40148];
    [v53 setProperty:? forKey:?];
    MEMORY[0x277D82BD8](v46);
  }

  v52 = [(SUSUISoftwareUpdateController *)v57 proactiveSuggestionTypeForUIState:v55 descriptorState:v54];
  v43 = [(SUSUISoftwareUpdateController *)v57 proactiveSuggestionCell];
  [(SUSSoftwareUpdateProactiveSuggestionCell *)v43 setTitle:?];
  MEMORY[0x277D82BD8](v43);
  v44 = [(SUSUISoftwareUpdateController *)v57 proactiveSuggestionCell];
  [(SUSSoftwareUpdateProactiveSuggestionCell *)v44 setContent:&stru_287B79370];
  MEMORY[0x277D82BD8](v44);
  v45 = [(SUSUISoftwareUpdateController *)v57 proactiveSuggestionCell];
  [(SUSSoftwareUpdateProactiveSuggestionCell *)v45 setAccessibilityIdentifier:@"SUProactiveSuggestionCell"];
  MEMORY[0x277D82BD8](v45);
  switch(v52)
  {
    case 1uLL:
      v30 = [(SUSUISoftwareUpdateController *)v57 proactiveSuggestionCell];
      v29 = [MEMORY[0x277D75348] systemYellowColor];
      [(SUSSoftwareUpdateProactiveSuggestionCell *)v30 setSystemIconNamed:@"exclamationmark.triangle.fill" withTintColor:?];
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      v36 = [(SUSUISoftwareUpdateController *)v57 proactiveSuggestionCell];
      v35 = [(SUSUISoftwareUpdateController *)v57 manager];
      v34 = [(SUSettingsStatefulUIManager *)v35 errorContextProvider];
      v33 = [(SUSUISoftwareUpdateController *)v57 presentingDescriptorError];
      v32 = [(SUSUISoftwareUpdateController *)v57 presentingStatefulDescriptor];
      v31 = [(SUSettingsStatefulErrorContextProvider *)v34 localizedTitleForError:v33 statefulDescriptor:?];
      [(SUSSoftwareUpdateProactiveSuggestionCell *)v36 setTitle:?];
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v36);
      v42 = [(SUSUISoftwareUpdateController *)v57 proactiveSuggestionCell];
      v41 = [(SUSUISoftwareUpdateController *)v57 manager];
      v40 = [(SUSettingsStatefulUIManager *)v41 errorContextProvider];
      v39 = [(SUSUISoftwareUpdateController *)v57 presentingDescriptorError];
      v38 = [(SUSUISoftwareUpdateController *)v57 presentingStatefulDescriptor];
      v37 = [(SUSettingsStatefulErrorContextProvider *)v40 localizedDescriptionForError:v39 statefulDescriptor:?];
      [(SUSSoftwareUpdateProactiveSuggestionCell *)v42 setContent:?];
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v39);
      MEMORY[0x277D82BD8](v40);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v42);
      break;
    case 2uLL:
      v21 = [(SUSUISoftwareUpdateController *)v57 proactiveSuggestionCell];
      v20 = [MEMORY[0x277D75348] tertiaryLabelColor];
      [(SUSSoftwareUpdateProactiveSuggestionCell *)v21 setSystemIconNamed:@"arrow.down.circle.fill" withTintColor:?];
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v21);
      v24 = [(SUSUISoftwareUpdateController *)v57 proactiveSuggestionCell];
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v23 localizedStringForKey:@"AUTOMATIC_UPDATE_PROACTIVE_SUGGESTION_CELL_TITLE" value:? table:?];
      [(SUSSoftwareUpdateProactiveSuggestionCell *)v24 setTitle:?];
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v24);
      v28 = [(SUSUISoftwareUpdateController *)v57 proactiveSuggestionCell];
      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"AUTOMATIC_UPDATE_PROACTIVE_SUGGESTION_CELL_CONTENT"];
      v25 = [v27 localizedStringForKey:? value:? table:?];
      [(SUSSoftwareUpdateProactiveSuggestionCell *)v28 setContent:?];
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      break;
    case 3uLL:
      v8 = [(SUSUISoftwareUpdateController *)v57 proactiveSuggestionCell];
      v7 = [MEMORY[0x277D75348] systemGreenColor];
      [(SUSSoftwareUpdateProactiveSuggestionCell *)v8 setSystemIconNamed:@"checkmark.circle.fill" withTintColor:?];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      v11 = [(SUSUISoftwareUpdateController *)v57 proactiveSuggestionCell];
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v10 localizedStringForKey:@"UPDATE_SCHEDULED_TITLE" value:? table:?];
      [(SUSSoftwareUpdateProactiveSuggestionCell *)v11 setTitle:?];
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      v19 = [(SUSUISoftwareUpdateController *)v57 proactiveSuggestionCell];
      v12 = MEMORY[0x277CCACA8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"UPDATE_SCHEDULED_CONTENT"];
      v16 = [v18 localizedStringForKey:? value:? table:?];
      v15 = [(SUSUISoftwareUpdateController *)v57 presentingDescriptor];
      v14 = [v15 humanReadableUpdateName];
      v13 = [v12 stringWithFormat:v16, v14];
      [(SUSSoftwareUpdateProactiveSuggestionCell *)v19 setContent:?];
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
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

- (id)specifierForProactiveSuggestionGroupWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v6[4] = self;
  v6[3] = a2;
  v6[2] = a3;
  v6[1] = a4;
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

- (id)specifierForProactiveSuggestionPrimaryButtonWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v27 = self;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUProactiveSuggestionPrimaryButtonCell"];
  if (!v23)
  {
    v23 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:v27 set:0 get:0 detail:0 cell:13 edit:0];
    MEMORY[0x277D82BD8](0);
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInt:{-[SUSUISoftwareUpdateController isBusy](v27, "isBusy") ^ 1}];
  v4 = *MEMORY[0x277D3FF38];
  [v23 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v17);
  [v23 setIdentifier:@"SUProactiveSuggestionPrimaryButtonCell"];
  v22 = [(SUSUISoftwareUpdateController *)v27 proactiveSuggestionTypeForUIState:v25 descriptorState:v24];
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
      [v23 setTarget:v27];
    }

    else if (v22 == 3)
    {
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v8 localizedStringForKey:@"UPDATE_NOW_INSTEAD_BUTTON" value:&stru_287B79370 table:@"Software Update"];
      [v23 setName:?];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      [v23 setButtonAction:sel_install_];
      [v23 setTarget:v27];
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

  v15 = [(SUSUISoftwareUpdateController *)v27 presentingDescriptorError];
  v16 = [(SUSUISoftwareUpdateController *)v27 _errorIsInsufficientSpace:?];
  MEMORY[0x277D82BD8](v15);
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
    [v23 setTarget:v27];
LABEL_17:
    v28 = MEMORY[0x277D82BE0](v23);
    v19 = 1;
    goto LABEL_18;
  }

  location = _SUSUILoggingFacility();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(SUSUISoftwareUpdateController *)v27 presentingDescriptorError];
    __os_log_helper_16_2_2_8_32_8_64(v30, "[SUSUISoftwareUpdateController(Specifiers) specifierForProactiveSuggestionPrimaryButtonWithUIState:descriptorState:]", v11);
    _os_log_impl(&dword_26AC94000, location, v20, "%s: Can't create a button for an unknown error case: %@", v30, 0x16u);
    MEMORY[0x277D82BD8](v11);
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

- (id)specifierForProactiveSuggestionSecondaryButtonWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUProactiveSuggestionSecondaryButtonCell"];
  v11 = [(SUSUISoftwareUpdateController *)v16 proactiveSuggestionTypeForUIState:v14 descriptorState:v13];
  if (!v12)
  {
    v12 = [MEMORY[0x277D3FAD8] deleteButtonSpecifierWithName:0 target:v16 action:?];
    MEMORY[0x277D82BD8](0);
    [v12 setProperty:&unk_287B855E8 forKey:*MEMORY[0x277D3FD78]];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInt:{-[SUSUISoftwareUpdateController isBusy](v16, "isBusy") ^ 1}];
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
    [v12 setTarget:v16];
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

- (id)specifierForAlternateUpdateGroupWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v12 = self;
  v11[3] = a2;
  v11[2] = a3;
  v11[1] = a4;
  v11[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUAlternateUpdateGroup"];
  if (!v11[0])
  {
    v11[0] = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    MEMORY[0x277D82BD8](0);
  }

  v7 = [(SUSUISoftwareUpdateController *)v12 alsoAvailableGroupHeaderString];
  [v6 setName:?];
  MEMORY[0x277D82BD8](v7);
  [v11[0] setProperty:@"SUAlternateUpdateGroup" forKey:*MEMORY[0x277D3FFB8]];
  v8 = v11[0];
  v9 = [(SUSUISoftwareUpdateController *)v12 alternateUpdateFooterString];
  v4 = *MEMORY[0x277D3FF88];
  [v8 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v9);
  v10 = MEMORY[0x277D82BE0](v11[0]);
  objc_storeStrong(v11, 0);

  return v10;
}

- (id)specifierForAlternateUpdateCellWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v24 = self;
  v23[3] = a2;
  v23[2] = a3;
  v23[1] = a4;
  v23[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUAlternateUpdateButton"];
  v22 = [(SUSUISoftwareUpdateController *)v24 alternateUpdateButtonString];
  if (!v23[0])
  {
    v19 = MEMORY[0x277D3FAD8];
    objc_opt_class();
    v23[0] = [v19 preferenceSpecifierNamed:v22 target:v24 set:0 get:? detail:? cell:? edit:?];
    MEMORY[0x277D82BD8](0);
    [v23[0] setProperty:@"SUAlternateUpdateButton" forKey:*MEMORY[0x277D3FFB8]];
    [(SUSUISoftwareUpdateController *)v24 setAlternateUpdateCell:0];
  }

  v18 = [(SUSUISoftwareUpdateController *)v24 alternateUpdateCell];
  MEMORY[0x277D82BD8](v18);
  if (!v18)
  {
    v17 = [objc_alloc(MEMORY[0x277D3FB38]) initWithStyle:0 reuseIdentifier:@"SUAlternateUpdateButton" specifier:v23[0]];
    [(SUSUISoftwareUpdateController *)v24 setAlternateUpdateCell:?];
    MEMORY[0x277D82BD8](v17);
  }

  v21 = [MEMORY[0x277D756E0] valueCellConfiguration];
  [v21 setText:v22];
  v13 = [(SUSUISoftwareUpdateController *)v24 alternateUpdateSubTextString];
  [v21 setSecondaryText:?];
  MEMORY[0x277D82BD8](v13);
  v16 = [(SUSUISoftwareUpdateController *)v24 presentingAlternateDescriptor];
  v15 = [v16 documentation];
  v14 = [v15 iconImage];
  location = [(SUSUISoftwareUpdateController *)v24 tableCellImageForImage:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  if (location)
  {
    [v21 setImage:location];
  }

  v8 = [(SUSUISoftwareUpdateController *)v24 alternateUpdateCell];
  [(PSTableCell *)v8 setContentConfiguration:v21];
  MEMORY[0x277D82BD8](v8);
  v9 = [(SUSUISoftwareUpdateController *)v24 alternateUpdateCell];
  [(PSTableCell *)v9 setAccessoryType:1];
  MEMORY[0x277D82BD8](v9);
  v10 = [(SUSUISoftwareUpdateController *)v24 alternateUpdateCell];
  [(PSTableCell *)v10 setUserInteractionEnabled:[(SUSUISoftwareUpdateController *)v24 isBusy]^ 1];
  MEMORY[0x277D82BD8](v10);
  [v23[0] setProperty:&unk_287B855B8 forKey:*MEMORY[0x277D3FD68]];
  v11 = [(SUSUISoftwareUpdateController *)v24 alternateUpdateCell];
  [(PSTableCell *)v11 setAccessibilityIdentifier:@"SUAlternateUpdateButton"];
  MEMORY[0x277D82BD8](v11);
  v12 = [v23[0] propertyForKey:*MEMORY[0x277D40148]];
  MEMORY[0x277D82BD8](v12);
  if (!v12)
  {
    v7 = [(SUSUISoftwareUpdateController *)v24 alternateUpdateCell];
    v4 = *MEMORY[0x277D40148];
    [v23[0] setProperty:? forKey:?];
    MEMORY[0x277D82BD8](v7);
  }

  v6 = MEMORY[0x277D82BE0](v23[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(v23, 0);

  return v6;
}

- (id)specifierForNonPromotedPrimaryUpdateGroupWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v9 = self;
  v8[3] = a2;
  v8[2] = a3;
  v8[1] = a4;
  v8[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUNonPromotedUpdateHeaderGroup"];
  if (!v8[0])
  {
    v8[0] = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    MEMORY[0x277D82BD8](0);
    [v8[0] setProperty:@"SUNonPromotedUpdateHeaderGroup" forKey:*MEMORY[0x277D3FFB8]];
  }

  v6 = [(SUSUISoftwareUpdateController *)v9 alsoAvailableGroupHeaderString];
  [v5 setName:?];
  MEMORY[0x277D82BD8](v6);
  v7 = MEMORY[0x277D82BE0](v8[0]);
  objc_storeStrong(v8, 0);

  return v7;
}

- (id)specifierForNonPromotedPrimaryUpdateCellWithUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v23 = self;
  v22[3] = a2;
  v22[2] = a3;
  v22[1] = a4;
  v22[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUNonPromotedUpdateButton"];
  v21 = [(SUSUISoftwareUpdateController *)v23 nonPromotedPreferredUpdateButtonString];
  if (!v22[0])
  {
    v22[0] = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v21 target:v23 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    MEMORY[0x277D82BD8](0);
    [v22[0] setIdentifier:?];
    [v22[0] setProperty:@"SUNonPromotedUpdateButton" forKey:*MEMORY[0x277D3FFB8]];
    [(SUSUISoftwareUpdateController *)v23 setNonPromotedUpdateCell:0];
  }

  v18 = [(SUSUISoftwareUpdateController *)v23 nonPromotedUpdateCell];
  MEMORY[0x277D82BD8](v18);
  if (!v18)
  {
    v17 = [objc_alloc(MEMORY[0x277D3FB38]) initWithStyle:0 reuseIdentifier:@"SUNonPromotedUpdateButton" specifier:v22[0]];
    [(SUSUISoftwareUpdateController *)v23 setNonPromotedUpdateCell:?];
    MEMORY[0x277D82BD8](v17);
  }

  v20 = [MEMORY[0x277D756E0] valueCellConfiguration];
  [v20 setText:v21];
  v13 = [(SUSUISoftwareUpdateController *)v23 alternateUpdateSubTextString];
  [v20 setSecondaryText:?];
  MEMORY[0x277D82BD8](v13);
  v16 = [(SUSUISoftwareUpdateController *)v23 presentingDescriptor];
  v15 = [v16 documentation];
  v14 = [v15 iconImage];
  location = [(SUSUISoftwareUpdateController *)v23 tableCellImageForImage:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  if (location)
  {
    [v20 setImage:location];
  }

  v8 = [(SUSUISoftwareUpdateController *)v23 nonPromotedUpdateCell];
  [(PSTableCell *)v8 setContentConfiguration:v20];
  MEMORY[0x277D82BD8](v8);
  v9 = [(SUSUISoftwareUpdateController *)v23 nonPromotedUpdateCell];
  [(PSTableCell *)v9 setAccessoryType:1];
  MEMORY[0x277D82BD8](v9);
  v10 = [(SUSUISoftwareUpdateController *)v23 nonPromotedUpdateCell];
  [(PSTableCell *)v10 setUserInteractionEnabled:[(SUSUISoftwareUpdateController *)v23 isBusy]^ 1];
  MEMORY[0x277D82BD8](v10);
  [v22[0] setProperty:&unk_287B855B8 forKey:*MEMORY[0x277D3FD68]];
  v11 = [(SUSUISoftwareUpdateController *)v23 nonPromotedUpdateCell];
  [(PSTableCell *)v11 setAccessibilityIdentifier:@"SUNonPromotedUpdateButton"];
  MEMORY[0x277D82BD8](v11);
  v12 = [v22[0] propertyForKey:*MEMORY[0x277D40148]];
  MEMORY[0x277D82BD8](v12);
  if (!v12)
  {
    v7 = [(SUSUISoftwareUpdateController *)v23 nonPromotedUpdateCell];
    v4 = *MEMORY[0x277D40148];
    [v22[0] setProperty:? forKey:?];
    MEMORY[0x277D82BD8](v7);
  }

  v6 = MEMORY[0x277D82BE0](v22[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(v22, 0);

  return v6;
}

- (BOOL)shouldShowComingSoonSpecifierForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v5 = 0;
  if (a3 >= 3)
  {
    return [(SUSUISoftwareUpdateController *)self shouldShowComingSoonTip];
  }

  return v5;
}

- (BOOL)shouldShowBetaUpdatesCellSpecifierForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  if (a3 <= 1)
  {
    return 0;
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    return 0;
  }

  v5 = [MEMORY[0x277D4D310] sharedManager];
  v6 = [v5 canCurrentDeviceEnrollInBetaUpdates] & 1;
  MEMORY[0x277D82BD8](v5);
  return v6;
}

- (BOOL)shouldShowEnforcedUpdateForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v8 = 0;
  v6 = 0;
  v5 = 0;
  if (a3 == 4)
  {
    v5 = 0;
    if (![(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorPromotedAsAlternate])
    {
      v9 = [(SUSUISoftwareUpdateController *)self manager];
      v8 = 1;
      v7 = [(SUSettingsStatefulUIManager *)v9 ddmDeclaration];
      v6 = 1;
      v5 = [(SUCoreDDMDeclaration *)v7 isValidDeclaration];
    }
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  return v5 & 1;
}

- (BOOL)shouldShowDeferredUpdateGroupForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v9 = 0;
  v7 = 0;
  v6 = 0;
  if (a3 == 4)
  {
    v6 = 0;
    if (![(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorPromotedAsAlternate])
    {
      v10 = [(SUSUISoftwareUpdateController *)self manager];
      v9 = 1;
      v5 = 1;
      if (![(SUSettingsStatefulUIManager *)v10 isDelayingUpdate])
      {
        v8 = [(SUSUISoftwareUpdateController *)self manager];
        v7 = 1;
        v5 = [(SUSettingsStatefulUIManager *)v8 hasSUPathRestrictions];
      }

      v6 = v5;
    }
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  return v6 & 1;
}

- (BOOL)shouldShowScanGroupSpecifierForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v5 = 1;
  if (a3 > 3)
  {
    return [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorPromotedAsAlternate];
  }

  return v5;
}

- (BOOL)shouldShowScanStatusSpecifierForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v5 = 1;
  if (a3 > 3)
  {
    return [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorPromotedAsAlternate];
  }

  return v5;
}

- (BOOL)shouldShowTitleGroupSpecifierForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  LOBYTE(v5) = 0;
  if (a3 == 4)
  {
    v5 = ![(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorPromotedAsAlternate];
  }

  return v5 & 1;
}

- (BOOL)shouldShowTitleCellSpecifierForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  LOBYTE(v5) = 0;
  if (a3 == 4)
  {
    v5 = ![(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorPromotedAsAlternate];
  }

  return v5 & 1;
}

- (BOOL)shouldShowUpdateOptionsCellSpecifierForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  if (a3 <= 3 || [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorPromotedAsAlternate])
  {
    return 0;
  }

  v6 = [(SUSUISoftwareUpdateController *)self presentingDescriptorError];
  v16 = 0;
  v14 = 0;
  v12 = 0;
  v10 = 0;
  LOBYTE(v7) = 0;
  if (v6)
  {
    v17 = [(SUSUISoftwareUpdateController *)self manager];
    v16 = 1;
    v15 = [(SUSettingsStatefulUIManager *)v17 errorContextProvider];
    v14 = 1;
    v13 = [(SUSUISoftwareUpdateController *)self presentingDescriptorError];
    v12 = 1;
    v11 = [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptor];
    v10 = 1;
    v7 = ![(SUSettingsStatefulErrorContextProvider *)v15 shouldEnableUpdateButtonForError:v13 statefulDescriptor:?];
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](v17);
  }

  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    return 0;
  }

  v8 = 0;
  v5 = 0;
  if (a4 == 4)
  {
    v5 = 0;
    if ([(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorIsTargetedUpdate])
    {
      v9 = [(SUSUISoftwareUpdateController *)self manager];
      v8 = 1;
      v5 = [(SUSettingsStatefulUIManager *)v9 isTargetedUpdateScheduledForAutoInstall];
    }
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  return !v5;
}

- (BOOL)shouldShowProactiveSuggestionsPrimaryButtonSpecifierForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v9 = [(SUSUISoftwareUpdateController *)self proactiveSuggestionTypeForUIState:a3 descriptorState:a4];
  if (v9 != 1)
  {
    return v9 != 0;
  }

  v5 = [(SUSUISoftwareUpdateController *)self presentingDescriptorError];
  v7 = 0;
  v6 = 0;
  if (v5)
  {
    v8 = [(SUSUISoftwareUpdateController *)self presentingDescriptorError];
    v7 = 1;
    v6 = [(SUSUISoftwareUpdateController *)self _errorIsInsufficientSpace:?];
  }

  v11 = v6;
  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  MEMORY[0x277D82BD8](v5);
  return v11;
}

- (BOOL)shouldShowAlternateUpdateCellForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v6 = [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptor];
  v12 = 0;
  v10 = 0;
  v8 = 0;
  LOBYTE(v7) = 0;
  if ([v6 currentState] >= 4)
  {
    v13 = [(SUSUISoftwareUpdateController *)self manager];
    v12 = 1;
    v11 = [(SUSettingsStatefulUIManager *)v13 currentDownload];
    v10 = 1;
    v9 = [(SUDownload *)v11 downloadOptions];
    v8 = 1;
    v7 = [(SUDownloadOptions *)v9 isAutoDownload]^ 1;
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    return 0;
  }

  LOBYTE(v5) = 0;
  if ([(SUSUISoftwareUpdateController *)self hasAlternateUpdate])
  {
    LOBYTE(v5) = 0;
    if (a3 == 4)
    {
      v5 = ![(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorPromotedAsAlternate];
    }
  }

  return v5 & 1;
}

- (BOOL)shouldShowNonPromotedCellForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v5 = 0;
  if (a3 == 4)
  {
    return [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorPromotedAsAlternate];
  }

  return v5;
}

- (id)_setInstallButtonButtonSpecifierState:(id)a3 forUIState:(unint64_t)a4 descriptorState:(unint64_t)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = a4;
  v17 = a5;
  if (location[0])
  {
    if ([(SUSUISoftwareUpdateController *)v20 shouldShowUpdateOptionsCellSpecifierForUIState:v18 descriptorState:v17])
    {
      v12 = 0;
      [(SUSUISoftwareUpdateController *)v20 setupInstallButton:location[0] forUIState:v18 descriptorState:v17 shouldRemove:&v12];
      v7 = [(SUSUISoftwareUpdateController *)v20 updateOptionsCell];
      [(SUSSoftwareUpdateUpdateOptionsCell *)v7 setEnabled:[(SUSUISoftwareUpdateController *)v20 isBusy]^ 1];
      MEMORY[0x277D82BD8](v7);
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

- (void)clearInstallButton:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(SUSUISoftwareUpdateController *)v12 updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v3 setEnabled:0];
  MEMORY[0x277D82BD8](v3);
  v4 = [(SUSUISoftwareUpdateController *)v12 updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v4 setHidden:1];
  MEMORY[0x277D82BD8](v4);
  v5 = [(SUSUISoftwareUpdateController *)v12 updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v5 setActivityIndicatorDisplayStyle:0];
  MEMORY[0x277D82BD8](v5);
  v6 = [(SUSUISoftwareUpdateController *)v12 updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v6 setPrimaryButtonText:?];
  MEMORY[0x277D82BD8](v6);
  v7 = [(SUSUISoftwareUpdateController *)v12 updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v7 setSecondaryButtonText:&stru_287B79370];
  MEMORY[0x277D82BD8](v7);
  v8 = [(SUSUISoftwareUpdateController *)v12 updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v8 setPrimaryButtonActionHandler:0];
  MEMORY[0x277D82BD8](v8);
  v9 = [(SUSUISoftwareUpdateController *)v12 updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v9 setPrimaryButtonLongTapActionHandler:0];
  MEMORY[0x277D82BD8](v9);
  v10 = [(SUSUISoftwareUpdateController *)v12 updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v10 setSecondaryButtonActionHandler:0];
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(location, 0);
}

- (void)setupInstallButton:(id)a3 forUIState:(unint64_t)a4 descriptorState:(unint64_t)a5 shouldRemove:(BOOL *)a6
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSUISoftwareUpdateController *)v21 clearInstallButton:location[0]];
  if (a4 == 4)
  {
    switch(a5)
    {
      case 1uLL:
        [(SUSUISoftwareUpdateController *)v21 setInstallButtonDownloadAndInstall:location[0] shouldRemove:a6];
        break;
      case 2uLL:
        [(SUSUISoftwareUpdateController *)v21 setInstallButtonDownloading:location[0] shouldRemove:a6];
        break;
      case 3uLL:
        [(SUSUISoftwareUpdateController *)v21 setInstallButtonStalled:location[0] shouldRemove:a6];
        break;
      case 4uLL:
        [(SUSUISoftwareUpdateController *)v21 setInstallButtonReadyToInstall:location[0]];
        break;
      case 5uLL:
        [(SUSUISoftwareUpdateController *)v21 setInstallButtonInstalling:location[0]];
        break;
    }

    v18 = 0;
    v16 = 0;
    v14 = 0;
    v12 = 0;
    v10 = 0;
    LOBYTE(v6) = 0;
    if (a6)
    {
      v19 = [(SUSUISoftwareUpdateController *)v21 presentingDescriptorError];
      v18 = 1;
      LOBYTE(v6) = 0;
      if (v19)
      {
        v17 = [(SUSUISoftwareUpdateController *)v21 manager];
        v16 = 1;
        v15 = [(SUSettingsStatefulUIManager *)v17 errorContextProvider];
        v14 = 1;
        v13 = [(SUSUISoftwareUpdateController *)v21 presentingDescriptorError];
        v12 = 1;
        v11 = [(SUSUISoftwareUpdateController *)v21 presentingStatefulDescriptor];
        v10 = 1;
        v6 = ![(SUSettingsStatefulErrorContextProvider *)v15 shouldEnableUpdateButtonForError:v13 statefulDescriptor:?];
      }
    }

    if (v10)
    {
      MEMORY[0x277D82BD8](v11);
    }

    if (v12)
    {
      MEMORY[0x277D82BD8](v13);
    }

    if (v14)
    {
      MEMORY[0x277D82BD8](v15);
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](v17);
    }

    if (v18)
    {
      MEMORY[0x277D82BD8](v19);
    }

    if (v6)
    {
      *a6 = 1;
    }
  }

  else
  {
    *a6 = 1;
  }

  objc_storeStrong(location, 0);
}

- (BOOL)clientIsSUSettings
{
  v5[2] = self;
  v5[1] = a2;
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v5[0] = [v3 bundleIdentifier];
  MEMORY[0x277D82BD8](v3);
  v4 = [v5[0] isEqualToString:@"com.apple.Preferences"];
  objc_storeStrong(v5, 0);
  return v4;
}

- (void)setInstallButtonStalled:(id)a3 shouldRemove:(BOOL *)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (PSIsRunningInAssistant())
  {
LABEL_2:
    [(SUSUISoftwareUpdateController *)v13 setInstallButtonPaused:location[0]];
    goto LABEL_14;
  }

  if ([(SUSUISoftwareUpdateController *)v13 presentingStatefulDescriptorIsTargetedUpdate])
  {
    v10 = 0;
    v8 = 1;
    if ([(SUSUISoftwareUpdateController *)v13 clientIsSUSettings])
    {
      v11 = [(SUSUISoftwareUpdateController *)v13 presentingDescriptorError];
      v10 = 1;
      v8 = v11 != 0;
    }

    if (v10)
    {
      MEMORY[0x277D82BD8](v11);
    }

    if (v8)
    {
      goto LABEL_2;
    }

    if (a4)
    {
      *a4 = 1;
    }
  }

  else
  {
    v6 = [(SUSUISoftwareUpdateController *)v13 manager];
    v5 = [(SUSettingsStatefulUIManager *)v6 currentDownload];
    v4 = [(SUDownload *)v5 downloadOptions];
    v7 = [(SUDownloadOptions *)v4 isAutoDownload];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    if (v7)
    {
      [(SUSUISoftwareUpdateController *)v13 setInstallButtonDownloadAndInstall:location[0]];
    }
  }

LABEL_14:
  objc_storeStrong(location, 0);
}

- (void)setInstallButtonDownloading:(id)a3 shouldRemove:(BOOL *)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = a4;
  v8 = [(SUSUISoftwareUpdateController *)v14 manager];
  v7 = [(SUSettingsStatefulUIManager *)v8 currentDownload];
  v6 = [(SUDownload *)v7 progress];
  v11 = [(SUOperationProgress *)v6 phase];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  if (PSIsRunningInAssistant())
  {
    [(SUSUISoftwareUpdateController *)v14 downloadingButtonForSpecifier:location[0]];
  }

  else if ([(SUSUISoftwareUpdateController *)v14 presentingStatefulDescriptorIsTargetedUpdate])
  {
    v9 = 0;
    v4 = 1;
    if (([v11 isEqualToString:*MEMORY[0x277D64A00]] & 1) == 0)
    {
      v10 = getkSUDownloadPhasePreparingForInstallation_0();
      v9 = 1;
      v4 = 1;
      if (([v11 isEqualToString:?] & 1) == 0)
      {
        v4 = 1;
        if (([v11 isEqualToString:*MEMORY[0x277D64A08]] & 1) == 0)
        {
          v4 = [(SUSUISoftwareUpdateController *)v14 waitingOnSUAssetDownload:v11];
        }
      }
    }

    if (v9)
    {
      MEMORY[0x277D82BD8](v10);
    }

    if ((v4 & 1) != 0 && v12)
    {
      *v12 = 1;
    }
  }

  else
  {
    [(SUSUISoftwareUpdateController *)v14 setInstallButtonDownloadAndInstall:location[0]];
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)setInstallButtonReadyToInstall:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(SUSUISoftwareUpdateController *)v4 presentingStatefulDescriptorIsTargetedUpdate]|| (PSIsRunningInAssistant() & 1) != 0)
  {
    [(SUSUISoftwareUpdateController *)v4 setInstallButtonInstallNow:location[0]];
  }

  else
  {
    [(SUSUISoftwareUpdateController *)v4 setInstallButtonDownloadAndInstall:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)setInstallButtonInstalling:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(SUSUISoftwareUpdateController *)v4 presentingStatefulDescriptorIsTargetedUpdate]|| (PSIsRunningInAssistant() & 1) != 0)
  {
    [(SUSUISoftwareUpdateController *)v4 setInstallButtonInstallingForSpecifier:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)setInstallButtonDownloadAndInstall:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSUISoftwareUpdateController *)v4 setInstallButtonDownloadAndInstall:location[0] shouldRemove:0];
  objc_storeStrong(location, 0);
}

- (void)setInstallButtonDownloadAndInstall:(id)a3 shouldRemove:(BOOL *)a4
{
  v69[2] = *MEMORY[0x277D85DE8];
  v68 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v66 = a4;
  v65 = 0;
  objc_initWeak(&from, v68);
  v33 = [(SUSUISoftwareUpdateController *)v68 manager];
  v34 = [(SUSettingsStatefulUIManager *)v33 isClearingSpaceForDownload];
  MEMORY[0x277D82BD8](v33);
  if (v34)
  {
    v65 = 1;
  }

  else
  {
    v32 = [(SUSUISoftwareUpdateController *)v68 updateOptionsCell];
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = [v31 localizedStringForKey:@"UPDATE_NOW" value:&stru_287B79370 table:@"Software Update"];
    [(SUSSoftwareUpdateUpdateOptionsCell *)v32 setPrimaryButtonText:?];
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    v29 = [(SUSUISoftwareUpdateController *)v68 updateOptionsCell];
    v58 = MEMORY[0x277D85DD0];
    v59 = -1073741824;
    v60 = 0;
    v61 = __93__SUSUISoftwareUpdateController_Specifiers__setInstallButtonDownloadAndInstall_shouldRemove___block_invoke;
    v62 = &unk_279CBBE90;
    objc_copyWeak(v63, &from);
    [(SUSSoftwareUpdateUpdateOptionsCell *)v29 setPrimaryButtonActionHandler:&v58];
    MEMORY[0x277D82BD8](v29);
    v57 = [(SUSUISoftwareUpdateController *)v68 _shouldHideTonightButton];
    if (!v57)
    {
      v28 = [(SUSUISoftwareUpdateController *)v68 updateOptionsCell];
      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [v27 localizedStringForKey:@"UPDATE_TONIGHT" value:&stru_287B79370 table:@"Software Update"];
      [(SUSSoftwareUpdateUpdateOptionsCell *)v28 setSecondaryButtonText:?];
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      v25 = [(SUSUISoftwareUpdateController *)v68 updateOptionsCell];
      v51 = MEMORY[0x277D85DD0];
      v52 = -1073741824;
      v53 = 0;
      v54 = __93__SUSUISoftwareUpdateController_Specifiers__setInstallButtonDownloadAndInstall_shouldRemove___block_invoke_2;
      v55 = &unk_279CBBE90;
      objc_copyWeak(&v56, &from);
      [(SUSSoftwareUpdateUpdateOptionsCell *)v25 setSecondaryButtonActionHandler:&v51];
      MEMORY[0x277D82BD8](v25);
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
      v12 = [(SUSUISoftwareUpdateController *)v68 updateOptionsCell];
      [(SUSSoftwareUpdateUpdateOptionsCell *)v12 setSecondaryButtonMenu:v50];
      MEMORY[0x277D82BD8](v12);
      objc_storeStrong(&v50, 0);
      objc_destroyWeak(&v43);
      objc_destroyWeak(&v49);
      objc_destroyWeak(&v56);
    }

    v11 = [(SUSUISoftwareUpdateController *)v68 updateOptionsCell];
    [(SUSSoftwareUpdateUpdateOptionsCell *)v11 setEnabled:1];
    MEMORY[0x277D82BD8](v11);
    v10 = [(SUSUISoftwareUpdateController *)v68 updateOptionsCell];
    [(SUSSoftwareUpdateUpdateOptionsCell *)v10 setHidden:0];
    MEMORY[0x277D82BD8](v10);
    if (v57)
    {
      v9 = [(SUSUISoftwareUpdateController *)v68 updateOptionsCell];
      [(SUSSoftwareUpdateUpdateOptionsCell *)v9 setSecondaryButtonEnabled:0];
      MEMORY[0x277D82BD8](v9);
      v8 = [(SUSUISoftwareUpdateController *)v68 updateOptionsCell];
      [(SUSSoftwareUpdateUpdateOptionsCell *)v8 setSecondaryButtonHidden:1];
      MEMORY[0x277D82BD8](v8);
    }

    v7 = [(SUSUISoftwareUpdateController *)v68 presentingDescriptorError];
    MEMORY[0x277D82BD8](v7);
    if (v7)
    {
      v6 = v68;
      v36 = 0;
      v5 = [(SUSUISoftwareUpdateController *)v68 presentingDescriptorError];
      LOBYTE(v4) = 1;
      if (![(SUSUISoftwareUpdateController *)v6 _errorIsInsufficientSpace:?])
      {
        v37 = [(SUSUISoftwareUpdateController *)v68 presentingStatefulDescriptor];
        v36 = 1;
        v4 = [v37 updateDownloadable] ^ 1;
      }

      v65 = v4 & 1;
      if (v36)
      {
        MEMORY[0x277D82BD8](v37);
      }

      MEMORY[0x277D82BD8](v5);
    }

    objc_destroyWeak(v63);
  }

  if (v66)
  {
    *v66 = v65 & 1;
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

- (void)setInstallButtonPaused:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(SUSUISoftwareUpdateController *)v8 updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v3 setPrimaryButtonHidden:0];
  MEMORY[0x277D82BD8](v3);
  v6 = [(SUSUISoftwareUpdateController *)v8 updateOptionsCell];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"PAUSED" value:&stru_287B79370 table:@"Software Update"];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v6 setPrimaryButtonText:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
}

- (void)downloadingButtonForSpecifier:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(SUSUISoftwareUpdateController *)v8 updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v3 setPrimaryButtonHidden:0];
  MEMORY[0x277D82BD8](v3);
  v6 = [(SUSUISoftwareUpdateController *)v8 updateOptionsCell];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"DOWNLOADING_IN_PROGRESS" value:&stru_287B79370 table:@"Software Update"];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v6 setPrimaryButtonText:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
}

- (void)setInstallButtonDeleted:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(SUSUISoftwareUpdateController *)v8 updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v3 setPrimaryButtonHidden:0];
  MEMORY[0x277D82BD8](v3);
  v6 = [(SUSUISoftwareUpdateController *)v8 updateOptionsCell];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"DELETED" value:&stru_287B79370 table:@"Software Update"];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v6 setPrimaryButtonText:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
}

- (void)setInstallButtonInstallNow:(id)a3
{
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_initWeak(&from, v40);
  v16 = [(SUSUISoftwareUpdateController *)v40 updateOptionsCell];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v15 localizedStringForKey:@"INSTALL_NOW" value:&stru_287B79370 table:@"Software Update"];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v16 setPrimaryButtonText:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  v13 = [(SUSUISoftwareUpdateController *)v40 updateOptionsCell];
  v32 = MEMORY[0x277D85DD0];
  v33 = -1073741824;
  v34 = 0;
  v35 = __72__SUSUISoftwareUpdateController_Specifiers__setInstallButtonInstallNow___block_invoke;
  v36 = &unk_279CBBE90;
  objc_copyWeak(v37, &from);
  [(SUSSoftwareUpdateUpdateOptionsCell *)v13 setPrimaryButtonActionHandler:&v32];
  MEMORY[0x277D82BD8](v13);
  v31 = [(SUSUISoftwareUpdateController *)v40 _shouldHideTonightButton];
  if (!v31)
  {
    v12 = [(SUSUISoftwareUpdateController *)v40 updateOptionsCell];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v11 localizedStringForKey:@"INSTALL_TONIGHT" value:&stru_287B79370 table:@"Software Update"];
    [(SUSSoftwareUpdateUpdateOptionsCell *)v12 setSecondaryButtonText:?];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    v9 = [(SUSUISoftwareUpdateController *)v40 updateOptionsCell];
    v25 = MEMORY[0x277D85DD0];
    v26 = -1073741824;
    v27 = 0;
    v28 = __72__SUSUISoftwareUpdateController_Specifiers__setInstallButtonInstallNow___block_invoke_2;
    v29 = &unk_279CBBE90;
    objc_copyWeak(&v30, &from);
    [(SUSSoftwareUpdateUpdateOptionsCell *)v9 setSecondaryButtonActionHandler:&v25];
    MEMORY[0x277D82BD8](v9);
    objc_destroyWeak(&v30);
  }

  v8 = [(SUSUISoftwareUpdateController *)v40 updateOptionsCell];
  v23 = 0;
  v21 = 0;
  v19 = 0;
  v17 = 0;
  v6 = [(SUSUISoftwareUpdateController *)v40 presentingDescriptorError];
  v7 = 1;
  if (!v6)
  {
    v24 = [(SUSUISoftwareUpdateController *)v40 manager];
    v23 = 1;
    v22 = [(SUSettingsStatefulUIManager *)v24 errorContextProvider];
    v21 = 1;
    v20 = [(SUSUISoftwareUpdateController *)v40 presentingDescriptorError];
    v19 = 1;
    v18 = [(SUSUISoftwareUpdateController *)v40 presentingStatefulDescriptor];
    v17 = 1;
    v7 = [(SUSettingsStatefulErrorContextProvider *)v22 shouldIgnoreUpdateError:v20 withStatefulDescriptor:?];
  }

  [(SUSSoftwareUpdateUpdateOptionsCell *)v8 setEnabled:v7 & 1];
  if (v17)
  {
    MEMORY[0x277D82BD8](v18);
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](v20);
  }

  if (v21)
  {
    MEMORY[0x277D82BD8](v22);
  }

  if (v23)
  {
    MEMORY[0x277D82BD8](v24);
  }

  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v8);
  v5 = [(SUSUISoftwareUpdateController *)v40 updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v5 setHidden:0];
  MEMORY[0x277D82BD8](v5);
  if (v31)
  {
    v4 = [(SUSUISoftwareUpdateController *)v40 updateOptionsCell];
    [(SUSSoftwareUpdateUpdateOptionsCell *)v4 setSecondaryButtonEnabled:0];
    MEMORY[0x277D82BD8](v4);
    v3 = [(SUSUISoftwareUpdateController *)v40 updateOptionsCell];
    [(SUSSoftwareUpdateUpdateOptionsCell *)v3 setSecondaryButtonHidden:1];
    MEMORY[0x277D82BD8](v3);
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

- (void)setInstallButtonInstallingForSpecifier:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(SUSUISoftwareUpdateController *)v9 updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v3 setPrimaryButtonHidden:0];
  MEMORY[0x277D82BD8](v3);
  v6 = [(SUSUISoftwareUpdateController *)v9 updateOptionsCell];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"INSTALLING" value:&stru_287B79370 table:@"Software Update"];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v6 setPrimaryButtonText:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v7 = [(SUSUISoftwareUpdateController *)v9 updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v7 setActivityIndicatorDisplayStyle:1];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(location, 0);
}

- (void)setInstallButtonInstalledForSpecifier:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(SUSUISoftwareUpdateController *)v8 updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v3 setPrimaryButtonHidden:0];
  MEMORY[0x277D82BD8](v3);
  v6 = [(SUSUISoftwareUpdateController *)v8 updateOptionsCell];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"INSTALLING" value:&stru_287B79370 table:@"Software Update"];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v6 setPrimaryButtonText:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
}

- (id)alternateUpdateFooterString
{
  v23 = self;
  v22[1] = a2;
  v22[0] = 0;
  v17 = [(SUSUISoftwareUpdateController *)self presentingDescriptor];
  v21 = [v17 productVersion];
  MEMORY[0x277D82BD8](v17);
  v18 = [(SUSUISoftwareUpdateController *)v23 presentingAlternateDescriptor];
  location = [v18 productVersion];
  MEMORY[0x277D82BD8](v18);
  if (v21 && location)
  {
    v16 = [location compare:v21 options:64];
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
      v15 = [(SUSUISoftwareUpdateController *)v23 presentingAlternateDescriptor];
      v14 = [v15 productBuildVersion];
      v13 = [(SUSUISoftwareUpdateController *)v23 presentingDescriptor];
      v12 = [v13 productBuildVersion];
      v19 = [v14 compare:? options:?] == 1;
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
    }

    if (!v19)
    {
      v6 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"ALTERNATE_UPDATE_FOOTER_NOT_LATEST"];
      v9 = [v11 localizedStringForKey:? value:? table:?];
      v8 = [MEMORY[0x277D75418] currentDevice];
      v7 = [v8 systemVersion];
      v2 = [v6 stringWithFormat:v9, v7];
      v3 = v22[0];
      v22[0] = v2;
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
    }
  }

  v5 = MEMORY[0x277D82BE0](v22[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(v22, 0);

  return v5;
}

- (id)majorOSVersionString
{
  v5 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v5 systemVersion];
  v6 = [(SUSUISoftwareUpdateController *)self majorOSVersionStringForBuildVersion:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (id)majorOSVersionStringForBuildVersion:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  if (location[0])
  {
    v7 = [location[0] componentsSeparatedByString:@"."];
    v3 = [v7 firstObject];
    v4 = v8;
    v8 = v3;
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
    v6 = [(SUSUISoftwareUpdateController *)self presentingAlternateDescriptor];
    v5 = [v6 productVersion];
    v4 = [(SUSUISoftwareUpdateController *)self majorOSVersionStringForBuildVersion:?];
    v11 = [v3 stringWithFormat:v7, v4];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    v11 = [(SUSUISoftwareUpdateController *)self alternateUpdateVersionString];
  }

  return v11;
}

- (id)alternateUpdateSubTextString
{
  v9 = [(SUSUISoftwareUpdateController *)self manager];
  v10 = [(SUSettingsStatefulUIManager *)v9 currentDownload];
  v14 = 0;
  v12 = 0;
  v11 = 0;
  if (v10)
  {
    v15 = [(SUSUISoftwareUpdateController *)self manager];
    v14 = 1;
    v13 = [(SUSUISoftwareUpdateController *)self presentingAlternateStatefulDescriptor];
    v12 = 1;
    v11 = [(SUSettingsStatefulUIManager *)v15 doesTargetedUpdateMatchDescriptor:?];
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v9);
  if (v11)
  {
    v7 = [(SUSUISoftwareUpdateController *)self manager];
    v6 = [(SUSettingsStatefulUIManager *)v7 currentDownload];
    v5 = [(SUDownload *)v6 progress];
    v8 = [(SUOperationProgress *)v5 isDone];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    if (v8)
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
    v6 = [(SUSUISoftwareUpdateController *)self presentingDescriptor];
    v5 = [v6 productVersion];
    v4 = [(SUSUISoftwareUpdateController *)self majorOSVersionStringForBuildVersion:?];
    v11 = [v3 stringWithFormat:v7, v4];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    v11 = [(SUSUISoftwareUpdateController *)self preferredUpdateVersionString];
  }

  return v11;
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
  v11 = self;
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
  v5 = [(SUSUISoftwareUpdateController *)v11 installedOSVersionString];
  v9 = [v4 stringWithFormat:v6, v5];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(v10, 0);

  return v9;
}

- (id)alternateUpdateVersionString
{
  v4 = [(SUSUISoftwareUpdateController *)self presentingAlternateDescriptor];
  v5 = [(SUSUISoftwareUpdateController *)self updateVersionString:?];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (id)preferredUpdateVersionString
{
  v4 = [(SUSUISoftwareUpdateController *)self presentingDescriptor];
  v5 = [(SUSUISoftwareUpdateController *)self updateVersionString:?];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (id)updateVersionString:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] humanReadableUpdateName];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)installedOSVersionString
{
  v17 = self;
  v16 = a2;
  *&v15[8] = 0;
  v14 = [MEMORY[0x277D75418] currentDevice];
  *v15 = [v14 sf_isiPad];
  MEMORY[0x277D82BD8](v14);
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
  v10 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v10 systemVersion];
  v11 = [v8 stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:v9];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v15[4], 0);

  return v11;
}

- (id)tableCellImageForImage:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  if (location[0])
  {
    v9 = [MEMORY[0x277D759A0] mainScreen];
    [v9 scale];
    v10 = v3;
    MEMORY[0x277D82BD8](v9);
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

- (void)clearNonPromotedPrimaryUpdateGroup:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] removePropertyForKey:*MEMORY[0x277D3FFA0]];
  objc_storeStrong(location, 0);
}

- (void)clearNonPromotedPrimaryUpdateHeaderGroup:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] removePropertyForKey:*MEMORY[0x277D3FFA0]];
  objc_storeStrong(location, 0);
}

- (void)refreshBetaUpdatesButton
{
  v4 = self;
  location[1] = a2;
  location[0] = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUGetBetaUpdatesButton"];
  if (location[0])
  {
    v2 = [(SUSUISoftwareUpdateController *)v4 parentController];
    [v2 reloadSpecifier:location[0]];
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)refreshupdateAutoUpdateButton
{
  v3 = self;
  location[1] = a2;
  location[0] = [(SUSUISoftwareUpdateController *)self specifierForAutomaticUpdatesWithUIState:[(SUSUISoftwareUpdateController *)self currentUIState] descriptorState:[(SUSUISoftwareUpdateController *)self currentDescriptorState]];
  if (location[0])
  {
    [(SUSUISoftwareUpdateController *)v3 reloadSpecifier:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)configureScanCell:(id)a3 withUIState:(unint64_t)a4 descriptorState:(unint64_t)a5
{
  v80 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v78 = a4;
  v77 = a5;
  v58 = +[SUSettingsStatefulUIAdditions currentOSVersion];
  [location[0] setCurrentVersion:?];
  MEMORY[0x277D82BD8](v58);
  v59 = [(SUSUISoftwareUpdateController *)v80 manager];
  v5 = [(SUSettingsStatefulUIManager *)v59 isDelayingUpdate];
  [location[0] setUpdatesDeferred:v5];
  MEMORY[0x277D82BD8](v59);
  v60 = [(SUSUISoftwareUpdateController *)v80 manager];
  v6 = [(SUSettingsStatefulUIManager *)v60 hasSUPathRestrictions];
  [location[0] setSuPathsRestricted:v6];
  MEMORY[0x277D82BD8](v60);
  v76 = 0;
  if (a4 == 1)
  {
    v76 = 1;
  }

  else if (v78 == 3)
  {
    v76 = 0;
  }

  else
  {
    v54 = [(SUSUISoftwareUpdateController *)v80 manager];
    v55 = [(SUSettingsStatefulUIManager *)v54 isDelayingUpdate];
    MEMORY[0x277D82BD8](v54);
    if (v55)
    {
      v76 = 4;
    }

    else if (v78 == 4 && [(SUSUISoftwareUpdateController *)v80 presentingStatefulDescriptorPromotedAsAlternate])
    {
      v76 = 5;
    }

    else if (v78 == 2)
    {
      v76 = 2;
    }

    else
    {
      v76 = 3;
    }
  }

  if (v78 == 2)
  {
    v50 = [(SUSUISoftwareUpdateController *)v80 manager];
    v75 = [(SUSettingsStatefulUIManager *)v50 scanError];
    MEMORY[0x277D82BD8](v50);
    v51 = [v75 domain];
    v52 = getSUErrorDomain_1();
    v53 = 0;
    if ([v51 isEqualToString:?])
    {
      v53 = [v75 code] == 26;
    }

    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v51);
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
      v42 = [v75 domain];
      v43 = 0;
      if ([v42 isEqualToString:*MEMORY[0x277CCA050]])
      {
        v43 = [v75 code] == 4099;
      }

      MEMORY[0x277D82BD8](v42);
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
        v74 = MEMORY[0x277D82BE0](v80);
        v41 = [v39 actionWithHandler:&v69];
        [v40 setErrorPrimaryButtonAction:?];
        MEMORY[0x277D82BD8](v41);
        objc_storeStrong(&v74, 0);
      }

      else
      {
        v68 = 0;
        v28 = [MEMORY[0x277D75418] currentDevice];
        v29 = [v28 sf_isInternalInstall];
        MEMORY[0x277D82BD8](v28);
        if (v29)
        {
          v27 = [v75 userInfo];
          v67 = [v27 objectForKey:*MEMORY[0x277CCA498]];
          MEMORY[0x277D82BD8](v27);
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
        v21 = [(SUSUISoftwareUpdateController *)v80 manager];
        v20 = [(SUSettingsStatefulUIManager *)v21 options];
        v22 = [(SUSettingsStatefulUIOptions *)v20 clientIsBuddy];
        MEMORY[0x277D82BD8](v20);
        MEMORY[0x277D82BD8](v21);
        if (!v22)
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
          v66 = MEMORY[0x277D82BE0](v80);
          v16 = [v14 actionWithHandler:&v61];
          [v15 setErrorPrimaryButtonAction:?];
          MEMORY[0x277D82BD8](v16);
          objc_storeStrong(&v66, 0);
        }

        objc_storeStrong(&v68, 0);
      }
    }

    objc_storeStrong(&v75, 0);
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

- (unint64_t)proactiveSuggestionTypeForUIState:(unint64_t)a3 descriptorState:(unint64_t)a4
{
  v24 = 0;
  v22 = 0;
  v20 = 0;
  v18 = 0;
  v16 = 0;
  LOBYTE(v7) = 0;
  if (a3 == 4)
  {
    LOBYTE(v7) = 0;
    if (![(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorPromotedAsAlternate])
    {
      v25 = [(SUSUISoftwareUpdateController *)self presentingDescriptorError];
      v24 = 1;
      LOBYTE(v7) = 0;
      if (v25)
      {
        v23 = [(SUSUISoftwareUpdateController *)self manager];
        v22 = 1;
        v21 = [(SUSettingsStatefulUIManager *)v23 errorContextProvider];
        v20 = 1;
        v19 = [(SUSUISoftwareUpdateController *)self presentingDescriptorError];
        v18 = 1;
        v17 = [(SUSUISoftwareUpdateController *)self presentingStatefulDescriptor];
        v16 = 1;
        v7 = ![(SUSettingsStatefulErrorContextProvider *)v21 shouldIgnoreUpdateError:v19 withStatefulDescriptor:?];
      }
    }
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](v17);
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](v19);
  }

  if (v20)
  {
    MEMORY[0x277D82BD8](v21);
  }

  if (v22)
  {
    MEMORY[0x277D82BD8](v23);
  }

  if (v24)
  {
    MEMORY[0x277D82BD8](v25);
  }

  if (v7)
  {
    return 1;
  }

  if (a3 != 4 || ![(SUSUISoftwareUpdateController *)self presentingStatefulDescriptorIsTargetedUpdate])
  {
    return 0;
  }

  v14 = 0;
  v12 = 0;
  v10 = 0;
  if (a4 == 2 || (v6 = 0, a4 <= 3))
  {
    v15 = [(SUSUISoftwareUpdateController *)self manager];
    v14 = 1;
    v13 = [(SUSettingsStatefulUIManager *)v15 currentDownload];
    v12 = 1;
    v11 = [(SUDownload *)v13 downloadOptions];
    v10 = 1;
    v6 = [(SUDownloadOptions *)v11 isAutoDownload];
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  if (v6)
  {
    return 2;
  }

  v8 = 0;
  v5 = 0;
  if (a4 == 4)
  {
    v9 = [(SUSUISoftwareUpdateController *)self manager];
    v8 = 1;
    v5 = [(SUSettingsStatefulUIManager *)v9 isTargetedUpdateScheduledForAutoInstall];
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  if (v5)
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

- (void)_setTitleCellSpecifierStatus:(id)a3 descriptorState:(unint64_t)a4
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = a4;
  v23 = [(SUSUISoftwareUpdateController *)v26 statusString];
  v15 = [(SUSUISoftwareUpdateController *)v26 titleCell];
  v16 = 0;
  if (a4 == 2)
  {
    v16 = [(SUSUISoftwareUpdateController *)v26 presentingStatefulDescriptorIsTargetedUpdate];
  }

  [(SUSSoftwareUpdateTitleCell *)v15 setAnimatingGearView:v16];
  MEMORY[0x277D82BD8](v15);
  v8 = [(SUSUISoftwareUpdateController *)v26 titleCell];
  v7 = [(SUSUISoftwareUpdateController *)v26 presentingDescriptorError];
  [(SUSSoftwareUpdateTitleCell *)v8 setStatusMessage:v23 symbolizingError:v7 != 0];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v9 = [(SUSUISoftwareUpdateController *)v26 titleCell];
  [(SUSSoftwareUpdateTitleCell *)v9 setProgressDisplayStyle:[(SUSUISoftwareUpdateController *)v26 updateProgressStyleForDescriptorState:v24]];
  MEMORY[0x277D82BD8](v9);
  v13 = [(SUSUISoftwareUpdateController *)v26 titleCell];
  v12 = [(SUSUISoftwareUpdateController *)v26 manager];
  v11 = [(SUSettingsStatefulUIManager *)v12 currentDownload];
  v10 = [(SUDownload *)v11 progress];
  [(SUOperationProgress *)v10 normalizedPercentComplete];
  [(SUSSoftwareUpdateTitleCell *)v13 setProgress:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  if (v24 == 1)
  {
    v5 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    queue = v5;
    v17 = MEMORY[0x277D85DD0];
    v18 = -1073741824;
    v19 = 0;
    v20 = __90__SUSUISoftwareUpdateController_Specifiers___setTitleCellSpecifierStatus_descriptorState___block_invoke;
    v21 = &unk_279CB93E8;
    v22 = MEMORY[0x277D82BE0](v26);
    dispatch_async(queue, &v17);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v22, 0);
  }

  objc_storeStrong(&v23, 0);
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
  v4 = [(SUSUISoftwareUpdateController *)self manager];
  v5 = [(SUSettingsStatefulUIManager *)v4 enrolledBetaProgram];
  v6 = [(SDBetaProgram *)v5 title];
  v9 = 0;
  v7 = 0;
  if (v6)
  {
    v2 = MEMORY[0x277D82BE0](v6);
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

  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v4);

  return v11;
}

- (BOOL)_errorIsInsufficientSpace:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = [location[0] domain];
  v9 = getSUErrorDomain_1();
  v11 = [v10 isEqualToString:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = [location[0] code];
  if (v8 != 6)
  {
    if (v8 == 20)
    {
      v6 = [location[0] userInfo];
      v5 = getkSUInstallationConstraintsUnmetKey_0();
      v4 = [v6 objectForKey:?];
      v7 = [v4 unsignedIntegerValue];
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      if ((v7 & 4) != 0)
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

- (int)updateProgressStyleForDescriptorState:(unint64_t)a3
{
  v37 = self;
  v36 = a2;
  v35 = a3;
  v11 = [(SUSUISoftwareUpdateController *)self manager];
  v10 = [(SUSettingsStatefulUIManager *)v11 currentDownload];
  v34 = [(SUDownload *)v10 progress];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  location = [v34 phase];
  [v34 percentComplete];
  v32 = v3;
  v12 = [(SUSUISoftwareUpdateController *)v37 manager];
  v13 = [(SUSettingsStatefulUIManager *)v12 scanError];
  v29 = 0;
  v27 = 0;
  v25 = 0;
  v23 = 0;
  v21 = 0;
  v19 = 0;
  v17 = 0;
  v14 = 1;
  if (!v13)
  {
    v30 = [(SUSUISoftwareUpdateController *)v37 presentingStatefulDescriptor];
    v29 = 1;
    v28 = [v30 updateDownloadError];
    v27 = 1;
    LOBYTE(v9) = 0;
    if (v28)
    {
      v26 = [(SUSUISoftwareUpdateController *)v37 manager];
      v25 = 1;
      v24 = [(SUSettingsStatefulUIManager *)v26 errorContextProvider];
      v23 = 1;
      v22 = [(SUSUISoftwareUpdateController *)v37 presentingStatefulDescriptor];
      v21 = 1;
      v20 = [v22 updateDownloadError];
      v19 = 1;
      v18 = [(SUSUISoftwareUpdateController *)v37 presentingStatefulDescriptor];
      v17 = 1;
      v9 = ![(SUSettingsStatefulErrorContextProvider *)v24 shouldIgnoreUpdateError:v20 withStatefulDescriptor:?];
    }

    v14 = v9;
  }

  if (v17)
  {
    MEMORY[0x277D82BD8](v18);
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](v20);
  }

  if (v21)
  {
    MEMORY[0x277D82BD8](v22);
  }

  if (v23)
  {
    MEMORY[0x277D82BD8](v24);
  }

  if (v25)
  {
    MEMORY[0x277D82BD8](v26);
  }

  if (v27)
  {
    MEMORY[0x277D82BD8](v28);
  }

  if (v29)
  {
    MEMORY[0x277D82BD8](v30);
  }

  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v12);
  v31 = v14 & 1;
  if (v35 == 2)
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

    else if ([(SUSUISoftwareUpdateController *)v37 presentingStatefulDescriptorIsTargetedUpdate]&& (v15 = 0, [SUSettingsStatefulUIAdditions estimatedTimeRemainingForProgress:v34 valid:&v15], v32 >= 0.005) && (v15 & 1) != 0)
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

  else if (v35 == 3)
  {
    if ([(SUSUISoftwareUpdateController *)v37 presentingStatefulDescriptorIsTargetedUpdate])
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
  objc_storeStrong(&v34, 0);
  return v38;
}

- (BOOL)waitingOnSUAssetDownload:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v7 = [(SUSUISoftwareUpdateController *)self manager];
  v14[0] = [(SUSettingsStatefulUIManager *)v7 ddmDeclaration];
  MEMORY[0x277D82BD8](v7);
  if (v14[0] && ([v14[0] isValidDeclaration] & 1) != 0)
  {
    v5 = [v14[0] enforcedInstallDate];
    [v5 timeIntervalSinceNow];
    v6 = v2;
    MEMORY[0x277D82BD8](v5);
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
  v7 = [(SUSUISoftwareUpdateController *)self manager];
  v6 = [(SUSettingsStatefulUIManager *)v7 preferences];
  v8 = [(SUSettingsSUPreferencesManager *)v6 isAutomaticDownloadEnabled];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v10 = [(SUSUISoftwareUpdateController *)self manager];
  v9 = [(SUSettingsStatefulUIManager *)v10 preferences];
  v11 = [(SUSettingsSUPreferencesManager *)v9 isAutomaticUpdateV2Enabled];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  if (v8 && v11)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v5 localizedStringForKey:@"ON" value:&stru_287B79370 table:@"Software Update"];
    MEMORY[0x277D82BD8](v5);
  }

  else if (v8)
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

- (id)specifierWithID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = [(SUSUISoftwareUpdateController *)v18 specifiers];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v16);
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

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v3 = v19;

  return v3;
}

- (void)refreshPane
{
  v15 = self;
  v14 = a2;
  v13 = [(SUSUISoftwareUpdateController *)self currentUIState];
  v12 = [(SUSUISoftwareUpdateController *)v15 updatedSpecifiersArray];
  v11 = v13 <= 1;
  [(SUSUISoftwareUpdateController *)v15 reloadUsingNewSpecifiers:v12 animated:v13 > 1];
  [(SUSUISoftwareUpdateController *)v15 fixCustomCellSpecifiers];
  [(SUSUISoftwareUpdateController *)v15 reloadCustomCells];
  if (v13 == 3 || v13 == 4 && [(SUSUISoftwareUpdateController *)v15 presentingStatefulDescriptorPromotedAsAlternate])
  {
    v3 = MEMORY[0x277D85CD0];
    v2 = MEMORY[0x277D85CD0];
    queue = v3;
    v5 = MEMORY[0x277D85DD0];
    v6 = -1073741824;
    v7 = 0;
    v8 = __48__SUSUISoftwareUpdateController_UI__refreshPane__block_invoke;
    v9 = &unk_279CB93E8;
    v10 = MEMORY[0x277D82BE0](v15);
    dispatch_async(queue, &v5);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v12, 0);
}

- (void)reloadCustomCells
{
  v13 = self;
  v12[1] = a2;
  v12[0] = 0;
  v11 = 0;
  [(SUSUISoftwareUpdateController *)self reloadScanSpacerCells:&v11];
  objc_storeStrong(v12, v11);
  [(SUSUISoftwareUpdateController *)v13 reloadSpecifiers:v12[0] animated:0];
  [(SUSUISoftwareUpdateController *)v13 fixCustomCellSpecifiers];
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __54__SUSUISoftwareUpdateController_UI__reloadCustomCells__block_invoke;
  v9 = &unk_279CB93E8;
  v10 = MEMORY[0x277D82BE0](v13);
  dispatch_async(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v12, 0);
}

- (void)reloadScanSpacerCells:(id *)a3
{
  v47 = self;
  v46 = a2;
  v45 = a3;
  v44 = 0.0;
  v43 = 0.0;
  v42 = [(SUSUISoftwareUpdateController *)self specifierWithID:@"SUScanHeaderGroup"];
  v41 = [v42 propertyForKey:@"SUHeight"];
  if (v41)
  {
    [v41 floatValue];
    v44 = v44 + v3;
  }

  v40 = [(SUSUISoftwareUpdateController *)v47 specifierWithID:@"SUScanFooterGroup"];
  v39 = [v40 propertyForKey:@"SUHeight"];
  if (v39)
  {
    [v39 floatValue];
    v44 = v44 + v4;
  }

  v18 = [(SUSUISoftwareUpdateController *)v47 table];
  [v18 layoutSubviews];
  MEMORY[0x277D82BD8](v18);
  v19 = [(SUSUISoftwareUpdateController *)v47 table];
  [v19 contentSize];
  v36 = v5;
  v37 = v6;
  v20 = v6;
  MEMORY[0x277D82BD8](v19);
  v38 = v20;
  +[SUSUISoftwareUpdateController windowSafeAreasSize];
  v35 = v20 - v44 + v7;
  v24 = [(SUSUISoftwareUpdateController *)v47 table];
  [v24 visibleSize];
  v32 = v8;
  v33 = v9;
  v22 = v9;
  v23 = [(SUSUISoftwareUpdateController *)v47 navigationController];
  v21 = [v23 navigationBar];
  [v21 bounds];
  v28 = v10;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v25 = v22 - v13;
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
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

  if (v45)
  {
    v15 = location;
    *v45 = location;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
}

- (void)setBusyWithActivityStyle:(int64_t)a3
{
  v3 = [(SUSUISoftwareUpdateController *)self updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v3 setEnabled:a3 == 0];
  MEMORY[0x277D82BD8](v3);
  v4 = [(SUSUISoftwareUpdateController *)self updateOptionsCell];
  [(SUSSoftwareUpdateUpdateOptionsCell *)v4 setActivityIndicatorDisplayStyle:a3];
  MEMORY[0x277D82BD8](v4);
  v9 = ![(SUSUISoftwareUpdateController *)self isBusy];
  v5 = [(SUSUISoftwareUpdateController *)self automaticUpdatesCell];
  [(PSTableCell *)v5 setUserInteractionEnabled:v9 & 1];
  MEMORY[0x277D82BD8](v5);
  v6 = [(SUSUISoftwareUpdateController *)self betaUpdatesCell];
  [(PSTableCell *)v6 setUserInteractionEnabled:v9 & 1];
  MEMORY[0x277D82BD8](v6);
  v7 = [(SUSUISoftwareUpdateController *)self alternateUpdateCell];
  [(PSTableCell *)v7 setUserInteractionEnabled:v9 & 1];
  MEMORY[0x277D82BD8](v7);
  v8 = [(SUSUISoftwareUpdateController *)self nonPromotedUpdateCell];
  [(PSTableCell *)v8 setUserInteractionEnabled:v9 & 1];
  MEMORY[0x277D82BD8](v8);
}

+ (double)windowSafeAreasSize
{
  v16[2] = a1;
  v16[1] = a2;
  if (*&windowSafeAreasSize_safeArea != 2.22507386e-308)
  {
    return *&windowSafeAreasSize_safeArea;
  }

  v13 = [MEMORY[0x277D75128] sharedApplication];
  v16[0] = [v13 connectedScenes];
  MEMORY[0x277D82BD8](v13);
  if ([v16[0] count])
  {
    v10 = [v16[0] allObjects];
    location = [v10 objectAtIndex:0];
    MEMORY[0x277D82BD8](v10);
    v11 = [location windows];
    v12 = [v11 count];
    MEMORY[0x277D82BD8](v11);
    if (v12)
    {
      v9 = [location windows];
      v8 = [v9 objectAtIndex:?];
      [v8 safeAreaInsets];
      v6 = v2;
      v7 = [location windows];
      v5 = [v7 objectAtIndex:0];
      [v5 safeAreaInsets];
      v17 = v6 + v3;
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
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
  v42 = self;
  v41 = a2;
  v40.receiver = self;
  v40.super_class = SUSUISoftwareUpdateController;
  [(SUSUISoftwareUpdateController *)&v40 viewDidLoad];
  v31 = v42;
  v32 = [(SUSUISoftwareUpdateController *)v42 paneTitle];
  [(SUSUISoftwareUpdateController *)v31 setTitle:?];
  MEMORY[0x277D82BD8](v32);
  v33 = [MEMORY[0x277CCAB98] defaultCenter];
  [v33 addObserver:v42 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];
  MEMORY[0x277D82BD8](v33);
  if ([(SUSUISoftwareUpdateController *)v42 supportsPullToRefresh])
  {
    v29 = objc_alloc_init(MEMORY[0x277D75918]);
    [(SUSUISoftwareUpdateController *)v42 setRefreshControl:?];
    MEMORY[0x277D82BD8](v29);
    v30 = [(SUSUISoftwareUpdateController *)v42 refreshControl];
    [(UIRefreshControl *)v30 addTarget:v42 action:sel_performUpdateRescan_ forControlEvents:4096];
    MEMORY[0x277D82BD8](v30);
  }

  v25 = +[SUSUIServiceManager sharedInstance];
  v39 = [(SUSUIServiceManager *)v25 classForService:objc_opt_class()];
  MEMORY[0x277D82BD8](v25);
  v26 = [(objc_class *)v39 sharedManager];
  [v26 setup];
  MEMORY[0x277D82BD8](v26);
  v28 = +[SUSUITestAutomationManager sharedManager];
  v27 = [(objc_class *)v39 sharedManager];
  [v28 addResponderDelegate:? forServiceType:?];
  MEMORY[0x277D82BD8](v27);
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
    v7 = v42;
    v23 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v42 currentUIState]);
    v8 = MEMORY[0x277D82BE0](v23);
    v35 = v8;
    v9 = [(SUSUISoftwareUpdateController *)v42 currentUIState];
    v22 = [(SUSUISoftwareUpdateController *)v42 presentingStatefulDescriptor];
    v21 = [(SUSUISoftwareUpdateController *)v42 presentingStatefulDescriptor];
    v20 = [(SUSUISoftwareUpdateController *)v42 presentingAlternateStatefulDescriptor];
    v19 = [(SUSUISoftwareUpdateController *)v42 presentingAlternateStatefulDescriptor];
    v18 = [(SUSUISoftwareUpdateController *)v42 manager];
    v17 = [(SUSettingsStatefulUIManager *)v18 currentDownload];
    v16 = [(SUDownload *)v17 descriptor];
    v15 = [(SUDescriptor *)v16 humanReadableUpdateName];
    v5 = MEMORY[0x277D82BE0](v15);
    v34 = v5;
    v14 = [(SUSUISoftwareUpdateController *)v42 manager];
    v13 = [(SUSettingsStatefulUIManager *)v14 currentDownload];
    v12 = [(SUSUISoftwareUpdateController *)v42 manager];
    v3 = [(SUSettingsStatefulUIManager *)v12 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!v3)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v43, "[SUSUISoftwareUpdateController(UI) viewDidLoad]", v6, v7, v8, v9, v22, v21, v20, v19, v5, v13, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v43, 0x7Au);
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
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
  }

  objc_storeStrong(&v38, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewWillAppear:(BOOL)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v46 = self;
  v45 = a2;
  v44 = a3;
  v43.receiver = self;
  v43.super_class = SUSUISoftwareUpdateController;
  [(SUSUISoftwareUpdateController *)&v43 viewWillAppear:a3];
  v30 = [(SUSUISoftwareUpdateController *)v46 navigationController];
  v42 = [v30 topViewController];
  MEMORY[0x277D82BD8](v30);
  v41 = _SUSUILoggingFacility();
  v40 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v11 = NSStringFromClass(v3);
    v12 = MEMORY[0x277D82BE0](v11);
    v39 = v12;
    v13 = v46;
    v14 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v46 currentUIState]);
    v15 = MEMORY[0x277D82BE0](v14);
    v38 = v15;
    v16 = [(SUSUISoftwareUpdateController *)v46 currentUIState];
    v17 = [(SUSUISoftwareUpdateController *)v46 presentingStatefulDescriptor];
    v18 = [(SUSUISoftwareUpdateController *)v46 presentingStatefulDescriptor];
    v19 = [(SUSUISoftwareUpdateController *)v46 presentingAlternateStatefulDescriptor];
    v20 = [(SUSUISoftwareUpdateController *)v46 presentingAlternateStatefulDescriptor];
    v21 = [(SUSUISoftwareUpdateController *)v46 manager];
    v22 = [(SUSettingsStatefulUIManager *)v21 currentDownload];
    v23 = [(SUDownload *)v22 descriptor];
    v24 = [(SUDescriptor *)v23 humanReadableUpdateName];
    v25 = MEMORY[0x277D82BE0](v24);
    location = v25;
    v26 = [(SUSUISoftwareUpdateController *)v46 manager];
    v27 = [(SUSettingsStatefulUIManager *)v26 currentDownload];
    v28 = [(SUSUISoftwareUpdateController *)v46 manager];
    v4 = [(SUSettingsStatefulUIManager *)v28 isTargetedUpdateScheduledForAutoInstall];
    v5 = "YES";
    if (!v4)
    {
      v5 = "NO";
    }

    v29 = v5;
    v35 = 0;
    if (v42)
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

    __os_log_helper_16_2_13_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_64(v47, "[SUSUISoftwareUpdateController(UI) viewWillAppear:]", v12, v13, v15, v16, v17, v18, v19, v20, v25, v27, v29, v10);
    _os_log_impl(&dword_26AC94000, v41, v40, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nCurrent top view controller: %@", v47, 0x84u);
    if (v35)
    {
      MEMORY[0x277D82BD8](v36);
    }

    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
  }

  objc_storeStrong(&v41, 0);
  if ([(SUSUISoftwareUpdateController *)v46 currentUIState])
  {
    v33 = 0;
    v31 = 0;
    v8 = 0;
    if (![(SUSUISoftwareUpdateController *)v46 isBusy])
    {
      v34 = [(SUSUISoftwareUpdateController *)v46 manager];
      v33 = 1;
      v32 = [(SUSettingsStatefulUIManager *)v34 delegate];
      v31 = 1;
      v8 = [(SUSettingsStatefulUIManagerDelegate *)v32 isEqual:v46];
    }

    if (v31)
    {
      MEMORY[0x277D82BD8](v32);
    }

    if (v33)
    {
      MEMORY[0x277D82BD8](v34);
    }

    if (v8)
    {
      v7 = [(SUSUISoftwareUpdateController *)v46 manager];
      [(SUSettingsStatefulUIManager *)v7 refreshState];
      MEMORY[0x277D82BD8](v7);
    }
  }

  else
  {
    v9 = [(SUSUISoftwareUpdateController *)v46 manager];
    [(SUSettingsStatefulUIManager *)v9 checkForAvailableUpdates];
    MEMORY[0x277D82BD8](v9);
  }

  objc_storeStrong(&v42, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewDidAppear:(BOOL)a3
{
  v99 = &v121;
  v94 = "[SUSUISoftwareUpdateController(UI) viewDidAppear:]";
  v129 = *MEMORY[0x277D85DE8];
  v126 = self;
  v125 = a2;
  v124 = a3;
  v123.receiver = self;
  v123.super_class = SUSUISoftwareUpdateController;
  v101 = 1;
  [(SUSUISoftwareUpdateController *)&v123 viewDidAppear:a3];
  v96 = v126;
  v95 = MEMORY[0x277CCA8D8];
  v98 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v97 = [v98 localizedStringForKey:@"SOFTWARE_UPDATE" value:&stru_287B79370 table:@"Software Update"];
  [(PSListController *)v96 addNavigationEventForSystemSettings:?];
  MEMORY[0x277D82BD8](v97);
  MEMORY[0x277D82BD8](v98);
  v100 = v126;
  v3 = [(SUSUISoftwareUpdateController *)v126 isMemberOfClass:objc_opt_class()];
  v122 = 0;
  v120 = 0;
  v102 = 0;
  if (v3)
  {
    v4 = [v99[7] manager];
    v99[2] = v4;
    v93 = 1;
    v122 = 1;
    v5 = [v4 delegate];
    v6 = v99;
    *v99 = v5;
    v120 = 1;
    v102 = v5 != v6[7];
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
      v62 = [v99[7] currentUIState];
      v81 = [v99[7] presentingStatefulDescriptor];
      v80 = [v99[7] presentingStatefulDescriptor];
      v9 = [v99[7] presentingAlternateStatefulDescriptor];
      v79 = v9;
      v78 = [v99[7] presentingAlternateStatefulDescriptor];
      v77 = [v99[7] manager];
      v76 = [v77 currentDownload];
      v75 = [v76 descriptor];
      v74 = [v75 humanReadableUpdateName];
      v53 = MEMORY[0x277D82BE0](v74);
      v88 = &v115;
      v115 = v53;
      v73 = [v99[7] manager];
      v72 = [v73 currentDownload];
      v71 = [v99[7] manager];
      v10 = [v71 isTargetedUpdateScheduledForAutoInstall];
      v11 = "YES";
      if ((v10 & 1) == 0)
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
      v70 = [v99[7] manager];
      v69 = [v70 delegate];
      v68 = [v99[7] manager];
      v67 = [v68 delegate];
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
      __os_log_helper_16_2_18_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_66_8_66_8_0_8_66_8_0_8_66(v128, v94, v59, v60, v61, v62, v81, v80, v9, v78, v53, v72, v54, v55, v56, v69, v57, v58, v111);
      _os_log_impl(&dword_26AC94000, log, v65[0], "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nThe Stateful UI manager's delegate is pointing to another, non %{public}@ controller. Grabbing the pointer back to %{public}@. \tCurrent Pointer: %p (%{public}@)\n\tAssigned Pointer: %p (%{public}@)", buf, 0xB6u);
      MEMORY[0x277D82BD8](v67);
      MEMORY[0x277D82BD8](v68);
      MEMORY[0x277D82BD8](v69);
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
    v52 = [v99[7] manager];
    [v52 setDelegate:v51];
    MEMORY[0x277D82BD8](v52);
    [v99[7] refreshPane];
  }

  v50 = [v99[7] navigationController];
  v110 = [v50 topViewController];
  MEMORY[0x277D82BD8](v50);
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
    v36 = [v99[7] currentUIState];
    v37 = [v99[7] presentingStatefulDescriptor];
    v38 = [v99[7] presentingStatefulDescriptor];
    v39 = [v99[7] presentingAlternateStatefulDescriptor];
    v40 = [v99[7] presentingAlternateStatefulDescriptor];
    v41 = [v99[7] manager];
    v42 = [v41 currentDownload];
    v43 = [v42 descriptor];
    v44 = [v43 humanReadableUpdateName];
    v45 = MEMORY[0x277D82BE0](v44);
    v105 = v45;
    v46 = [v99[7] manager];
    v47 = [v46 currentDownload];
    v48 = [v99[7] manager];
    v21 = [v48 isTargetedUpdateScheduledForAutoInstall];
    v22 = "YES";
    if ((v21 & 1) == 0)
    {
      v22 = "NO";
    }

    v49 = v22;
    v103 = 0;
    if (v110)
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
    __os_log_helper_16_2_13_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_64(v127, v94, v32, v33, v35, v36, v37, v38, v39, v40, v45, v47, v49, v28);
    _os_log_impl(&dword_26AC94000, v29, v30[0], "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nCurrent top view controller: %@", v27, 0x84u);
    if (v103)
    {
      MEMORY[0x277D82BD8](v104);
    }

    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v31);
    v26 = 0;
    objc_storeStrong(&v105, 0);
    objc_storeStrong(&v106, v26);
    objc_storeStrong(&v107, v26);
  }

  v25 = 0;
  objc_storeStrong(&v109, 0);
  objc_storeStrong(&v110, v25);
  *MEMORY[0x277D85DE8];
}

- (void)loadView
{
  v34 = *MEMORY[0x277D85DE8];
  v32 = self;
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
    v7 = v32;
    v23 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v32 currentUIState]);
    v8 = MEMORY[0x277D82BE0](v23);
    v26 = v8;
    v9 = [(SUSUISoftwareUpdateController *)v32 currentUIState];
    v22 = [(SUSUISoftwareUpdateController *)v32 presentingStatefulDescriptor];
    v21 = [(SUSUISoftwareUpdateController *)v32 presentingStatefulDescriptor];
    v20 = [(SUSUISoftwareUpdateController *)v32 presentingAlternateStatefulDescriptor];
    v19 = [(SUSUISoftwareUpdateController *)v32 presentingAlternateStatefulDescriptor];
    v18 = [(SUSUISoftwareUpdateController *)v32 manager];
    v17 = [(SUSettingsStatefulUIManager *)v18 currentDownload];
    v16 = [(SUDownload *)v17 descriptor];
    v15 = [(SUDescriptor *)v16 humanReadableUpdateName];
    v5 = MEMORY[0x277D82BE0](v15);
    v25 = v5;
    v14 = [(SUSUISoftwareUpdateController *)v32 manager];
    v13 = [(SUSettingsStatefulUIManager *)v14 currentDownload];
    v12 = [(SUSUISoftwareUpdateController *)v32 manager];
    v3 = [(SUSettingsStatefulUIManager *)v12 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!v3)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v33, "[SUSUISoftwareUpdateController(UI) loadView]", v6, v7, v8, v9, v22, v21, v20, v19, v5, v13, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v33, 0x7Au);
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
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
  }

  objc_storeStrong(&v29, 0);
  [(SUSUISoftwareUpdateController *)v32 initUI];
  [*(&v32->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) _setMarginWidth:15.0];
  *MEMORY[0x277D85DE8];
}

- (void)willEnterForeground
{
  v11 = self;
  v10[1] = a2;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __56__SUSUISoftwareUpdateController_UI__willEnterForeground__block_invoke;
  v9 = &unk_279CB93E8;
  v10[0] = MEMORY[0x277D82BE0](v11);
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

- (void)viewWillDisappear:(BOOL)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v39 = self;
  v38 = a2;
  v37 = a3;
  v36.receiver = self;
  v36.super_class = SUSUISoftwareUpdateController;
  [(SUSUISoftwareUpdateController *)&v36 viewWillDisappear:a3];
  v27 = [(SUSUISoftwareUpdateController *)v39 navigationController];
  v35 = [v27 topViewController];
  MEMORY[0x277D82BD8](v27);
  v34 = _SUSUILoggingFacility();
  v33 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v8 = NSStringFromClass(v3);
    v9 = MEMORY[0x277D82BE0](v8);
    v32 = v9;
    v10 = v39;
    v11 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v39 currentUIState]);
    v12 = MEMORY[0x277D82BE0](v11);
    v31 = v12;
    v13 = [(SUSUISoftwareUpdateController *)v39 currentUIState];
    v14 = [(SUSUISoftwareUpdateController *)v39 presentingStatefulDescriptor];
    v15 = [(SUSUISoftwareUpdateController *)v39 presentingStatefulDescriptor];
    v16 = [(SUSUISoftwareUpdateController *)v39 presentingAlternateStatefulDescriptor];
    v17 = [(SUSUISoftwareUpdateController *)v39 presentingAlternateStatefulDescriptor];
    v18 = [(SUSUISoftwareUpdateController *)v39 manager];
    v19 = [(SUSettingsStatefulUIManager *)v18 currentDownload];
    v20 = [(SUDownload *)v19 descriptor];
    v21 = [(SUDescriptor *)v20 humanReadableUpdateName];
    v22 = MEMORY[0x277D82BE0](v21);
    location = v22;
    v23 = [(SUSUISoftwareUpdateController *)v39 manager];
    v24 = [(SUSettingsStatefulUIManager *)v23 currentDownload];
    v25 = [(SUSUISoftwareUpdateController *)v39 manager];
    v4 = [(SUSettingsStatefulUIManager *)v25 isTargetedUpdateScheduledForAutoInstall];
    v5 = "YES";
    if (!v4)
    {
      v5 = "NO";
    }

    v26 = v5;
    v28 = 0;
    if (v35)
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

    __os_log_helper_16_2_13_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_64(v40, "[SUSUISoftwareUpdateController(UI) viewWillDisappear:]", v9, v10, v12, v13, v14, v15, v16, v17, v22, v24, v26, v7);
    _os_log_impl(&dword_26AC94000, v34, v33, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nCurrent top view controller: %@", v40, 0x84u);
    if (v28)
    {
      MEMORY[0x277D82BD8](v29);
    }

    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v39 = self;
  v38 = a2;
  v37 = a3;
  v36.receiver = self;
  v36.super_class = SUSUISoftwareUpdateController;
  [(SUSUISoftwareUpdateController *)&v36 viewDidDisappear:a3];
  v27 = [(SUSUISoftwareUpdateController *)v39 navigationController];
  v35 = [v27 topViewController];
  MEMORY[0x277D82BD8](v27);
  v34 = _SUSUILoggingFacility();
  v33 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v8 = NSStringFromClass(v3);
    v9 = MEMORY[0x277D82BE0](v8);
    v32 = v9;
    v10 = v39;
    v11 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v39 currentUIState]);
    v12 = MEMORY[0x277D82BE0](v11);
    v31 = v12;
    v13 = [(SUSUISoftwareUpdateController *)v39 currentUIState];
    v14 = [(SUSUISoftwareUpdateController *)v39 presentingStatefulDescriptor];
    v15 = [(SUSUISoftwareUpdateController *)v39 presentingStatefulDescriptor];
    v16 = [(SUSUISoftwareUpdateController *)v39 presentingAlternateStatefulDescriptor];
    v17 = [(SUSUISoftwareUpdateController *)v39 presentingAlternateStatefulDescriptor];
    v18 = [(SUSUISoftwareUpdateController *)v39 manager];
    v19 = [(SUSettingsStatefulUIManager *)v18 currentDownload];
    v20 = [(SUDownload *)v19 descriptor];
    v21 = [(SUDescriptor *)v20 humanReadableUpdateName];
    v22 = MEMORY[0x277D82BE0](v21);
    location = v22;
    v23 = [(SUSUISoftwareUpdateController *)v39 manager];
    v24 = [(SUSettingsStatefulUIManager *)v23 currentDownload];
    v25 = [(SUSUISoftwareUpdateController *)v39 manager];
    v4 = [(SUSettingsStatefulUIManager *)v25 isTargetedUpdateScheduledForAutoInstall];
    v5 = "YES";
    if (!v4)
    {
      v5 = "NO";
    }

    v26 = v5;
    v28 = 0;
    if (v35)
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

    __os_log_helper_16_2_13_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_64(v40, "[SUSUISoftwareUpdateController(UI) viewDidDisappear:]", v9, v10, v12, v13, v14, v15, v16, v17, v22, v24, v26, v7);
    _os_log_impl(&dword_26AC94000, v34, v33, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nCurrent top view controller: %@", v40, 0x84u);
    if (v28)
    {
      MEMORY[0x277D82BD8](v29);
    }

    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isTopViewController
{
  v8 = self;
  location[1] = a2;
  v3 = [(SUSUISoftwareUpdateController *)self navigationController];
  location[0] = [v3 topViewController];
  MEMORY[0x277D82BD8](v3);
  v5 = 0;
  v4 = 1;
  if (location[0] != v8)
  {
    v6 = [(SUSUISoftwareUpdateController *)v8 parentViewController];
    v5 = 1;
    v4 = location[0] == v6;
  }

  v9 = v4;
  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(location, 0);
  return v9;
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v8 = 0;
  objc_storeStrong(&v8, a5);
  if ([(SUSUISoftwareUpdateController *)v11 isTopViewController])
  {
    v7.receiver = v11;
    v7.super_class = SUSUISoftwareUpdateController;
    [(SUSUISoftwareUpdateController *)&v7 presentViewController:location[0] animated:v9 completion:v8];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v96 = *MEMORY[0x277D85DE8];
  v92 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v90 = 0;
  objc_storeStrong(&v90, a4);
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
      v36 = v92;
      v52 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v92 currentUIState]);
      v37 = MEMORY[0x277D82BE0](v52);
      v82 = v37;
      v38 = [(SUSUISoftwareUpdateController *)v92 currentUIState];
      v51 = [(SUSUISoftwareUpdateController *)v92 presentingStatefulDescriptor];
      v50 = [(SUSUISoftwareUpdateController *)v92 presentingStatefulDescriptor];
      v49 = [(SUSUISoftwareUpdateController *)v92 presentingAlternateStatefulDescriptor];
      v48 = [(SUSUISoftwareUpdateController *)v92 presentingAlternateStatefulDescriptor];
      v47 = [(SUSUISoftwareUpdateController *)v92 manager];
      v46 = [(SUSettingsStatefulUIManager *)v47 currentDownload];
      v45 = [(SUDownload *)v46 descriptor];
      v44 = [(SUDescriptor *)v45 humanReadableUpdateName];
      v34 = MEMORY[0x277D82BE0](v44);
      v81 = v34;
      v43 = [(SUSUISoftwareUpdateController *)v92 manager];
      v42 = [(SUSettingsStatefulUIManager *)v43 currentDownload];
      v41 = [(SUSUISoftwareUpdateController *)v92 manager];
      v5 = [(SUSettingsStatefulUIManager *)v41 isTargetedUpdateScheduledForAutoInstall];
      v6 = "YES";
      if (!v5)
      {
        v6 = "NO";
      }

      __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v95, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]", v35, v36, v37, v38, v51, v50, v49, v48, v34, v42, v6);
      _os_log_impl(&dword_26AC94000, log, v40, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nSoftwareUpdatePane invoked via URL but no supported option passed in. Nothing to do here. Available options: path, ShowLatestUpdatePane, PerformAction", v95, 0x7Au);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v48);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v51);
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
      v16 = v92;
      v32 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v92 currentUIState]);
      v17 = MEMORY[0x277D82BE0](v32);
      v76 = v17;
      v18 = [(SUSUISoftwareUpdateController *)v92 currentUIState];
      v31 = [(SUSUISoftwareUpdateController *)v92 presentingStatefulDescriptor];
      v30 = [(SUSUISoftwareUpdateController *)v92 presentingStatefulDescriptor];
      v29 = [(SUSUISoftwareUpdateController *)v92 presentingAlternateStatefulDescriptor];
      v28 = [(SUSUISoftwareUpdateController *)v92 presentingAlternateStatefulDescriptor];
      v27 = [(SUSUISoftwareUpdateController *)v92 manager];
      v26 = [(SUSettingsStatefulUIManager *)v27 currentDownload];
      v25 = [(SUDownload *)v26 descriptor];
      v24 = [(SUDescriptor *)v25 humanReadableUpdateName];
      v14 = MEMORY[0x277D82BE0](v24);
      v75 = v14;
      v23 = [(SUSUISoftwareUpdateController *)v92 manager];
      v22 = [(SUSettingsStatefulUIManager *)v23 currentDownload];
      v21 = [(SUSUISoftwareUpdateController *)v92 manager];
      if ([(SUSettingsStatefulUIManager *)v21 isTargetedUpdateScheduledForAutoInstall])
      {
        v8 = "YES";
      }

      else
      {
        v8 = "NO";
      }

      __os_log_helper_16_2_13_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_66(v94, "[SUSUISoftwareUpdateController(UI) handleURL:withCompletion:]", v15, v16, v17, v18, v31, v30, v29, v28, v14, v22, v8, location[0]);
      _os_log_impl(&dword_26AC94000, v19, v20, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nSoftwareUpdatePane invoked via URL. Will attempt URL specific loading. Dictionary is %{public}@", v94, 0x84u);
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
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
      v72 = MEMORY[0x277D82BE0](v92);
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
      v10 = v92;
      v57 = MEMORY[0x277D85DD0];
      v58 = -1073741824;
      v59 = 0;
      v60 = __62__SUSUISoftwareUpdateController_UI__handleURL_withCompletion___block_invoke_382;
      v61 = &unk_279CBDA40;
      v62 = MEMORY[0x277D82BE0](v92);
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
  v4 = [(SUSUISoftwareUpdateController *)self refreshControl];
  v11 = 0;
  v9 = 0;
  v7 = 0;
  v5 = 0;
  if (!v4 || (v12 = [(SUSUISoftwareUpdateController *)self refreshControl], v11 = 1, v3 = 1, ![(UIRefreshControl *)v12 isRefreshing]))
  {
    v10 = [(SUSUISoftwareUpdateController *)self updateOptionsCell];
    v9 = 1;
    if (!v10 || (v8 = [(SUSUISoftwareUpdateController *)self updateOptionsCell], v7 = 1, v3 = 1, ![(SUSSoftwareUpdateUpdateOptionsCell *)v8 activityIndicatorDisplayStyle]))
    {
      v6 = [(SUSUISoftwareUpdateController *)self manager];
      v5 = 1;
      v3 = [(SUSettingsStatefulUIManager *)v6 isPerformingUpdate];
    }
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  MEMORY[0x277D82BD8](v4);
  return v3 & 1;
}

- (id)_createGroupIndices:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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

- (id)specifierForSection:(int64_t)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = self;
  v17 = a2;
  v16 = a3;
  v15 = [(SUSUISoftwareUpdateController *)self specifiers];
  location = [(SUSUISoftwareUpdateController *)v18 _createGroupIndices:v15];
  if (location)
  {
    if ([location count] > v16)
    {
      v5 = [location objectAtIndex:v16];
      v6 = [v5 integerValue];
      MEMORY[0x277D82BD8](v5);
      v8 = v6;
      if (v6 < [*(&v18->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) count])
      {
        v19 = [v15 objectAtIndex:v8];
        v11 = 1;
      }

      else
      {
        v7 = _SUSUILoggingFacility();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_5_8_0_8_0_8_0_8_66_8_66(v20, v16, v8, [v15 count], location, v15);
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
        __os_log_helper_16_2_5_8_0_8_0_8_0_8_66_8_66(v21, v16, [location count], v16, location, v15);
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
      __os_log_helper_16_2_2_8_0_8_66(v22, v16, v15);
      _os_log_error_impl(&dword_26AC94000, oslog, type, "Failed to resolve the specifier for section %ld. The returned groups array is nil. Specifiers: %{public}@", v22, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v19 = 0;
    v11 = 1;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v15, 0);
  *MEMORY[0x277D85DE8];
  v3 = v19;

  return v3;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = a4;
  v16 = [(SUSUISoftwareUpdateController *)v19 specifierForSection:a4];
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
      v12.receiver = v19;
      v12.super_class = SUSUISoftwareUpdateController;
      [(SUSUISoftwareUpdateController *)&v12 tableView:location[0] heightForHeaderInSection:v17];
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

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23[1] = a4;
  v23[0] = [(SUSUISoftwareUpdateController *)v25 specifierForSection:a4];
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
      v18 = [v23[0] name];
      v17 = 1;
      if (!v18 || (v16 = [v23[0] name], v15 = 1, v5 = 1, (objc_msgSend(v16, "isEqualToString:", &stru_287B79370) & 1) != 0))
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
    MEMORY[0x277D82BD8](v18);
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

- (double)tableView:(id)a3 estimatedHeightForFooterInSection:(int64_t)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12[1] = a4;
  v12[0] = [(SUSUISoftwareUpdateController *)v14 specifierForSection:a4];
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

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  [(SUSUISoftwareUpdateController *)v20 fixCustomCellSpecifiers];
  v17 = [(SUSUISoftwareUpdateController *)v20 indexForIndexPath:v18];
  v16 = [(SUSUISoftwareUpdateController *)v20 specifierAtIndex:v17];
  v15 = [v16 propertyForKey:*MEMORY[0x277D40148]];
  v7 = [(SUSUISoftwareUpdateController *)v20 specifierForID:@"SUTitleCell"];
  v13 = 0;
  v11 = 0;
  v8 = 1;
  if (v16 != v7)
  {
    v14 = [(SUSUISoftwareUpdateController *)v20 specifierForID:@"SUScanStatusCell"];
    v13 = 1;
    v8 = 1;
    if (v16 != v14)
    {
      v12 = [(SUSUISoftwareUpdateController *)v20 specifierForID:@"SUTipKitComingSoonCell"];
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
    v9.receiver = v20;
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  [(SUSUISoftwareUpdateController *)v28 fixCustomCellSpecifiers];
  v25 = 0;
  v24 = [(SUSUISoftwareUpdateController *)v28 specifierAtIndex:[(SUSUISoftwareUpdateController *)v28 indexForIndexPath:v26]];
  v23 = [(SUSUISoftwareUpdateController *)v28 customCellsMapping];
  memset(__b, 0, sizeof(__b));
  v17 = MEMORY[0x277D82BE0](v23);
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
      v10 = [(SUSUISoftwareUpdateController *)v28 specifierForID:v22];
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
    v19.receiver = v28;
    v19.super_class = SUSUISoftwareUpdateController;
    v6 = [(SUSUISoftwareUpdateController *)&v19 tableView:location[0] cellForRowAtIndexPath:v26];
    v7 = v25;
    v25 = v6;
    MEMORY[0x277D82BD8](v7);
  }

  [v25 setSeparatorInset:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  v9 = MEMORY[0x277D82BE0](v25);
  v20 = 1;
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v9;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = a4;
  if (*(&v10->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) && [*(&v10->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) count])
  {
    v7.receiver = v10;
    v7.super_class = SUSUISoftwareUpdateController;
    v11 = [(SUSUISoftwareUpdateController *)&v7 tableView:location[0] titleForFooterInSection:v8];
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(location, 0);
  v4 = v11;

  return v4;
}

- (void)titleCell:(id)a3 learnMoreButtonTapped:(id)a4
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v7 = v21;
  v8 = [(SUSUISoftwareUpdateController *)v21 learnMoreTappedString];
  [(SUSUISoftwareUpdateController *)v7 submitAnalyticsEvent:?];
  MEMORY[0x277D82BD8](v8);
  v18 = objc_alloc_init(MEMORY[0x277D64AB0]);
  v10 = v18;
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = [(SUSUISoftwareUpdateController *)v21 presentingDescriptor];
  v13 = [v14 documentation];
  v12 = [v13 releaseNotes];
  v11 = [v9 initWithData:? encoding:?];
  [v10 setReleaseNotes:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  v4 = objc_alloc(MEMORY[0x277D757A0]);
  v17 = [v4 initWithRootViewController:v18];
  [v17 setModalPresentationStyle:2];
  v5 = objc_alloc(MEMORY[0x277D751E0]);
  v16 = [v5 initWithBarButtonSystemItem:0 target:v21 action:sel_detailedReleaseNotesDonePressed_];
  v15 = [v18 navigationItem];
  [v15 setRightBarButtonItem:v16];
  MEMORY[0x277D82BD8](v15);
  [(SUSUISoftwareUpdateController *)v21 presentViewController:v17 animated:1 completion:0];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  *(&v8->super.super.super.super.super.isa + *MEMORY[0x277D3FC38]) = 0;
  v5.receiver = v8;
  v5.super_class = SUSUISoftwareUpdateController;
  [(SUSUISoftwareUpdateController *)&v5 tableView:location[0] didSelectRowAtIndexPath:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (id)selectSpecifier:(id)a3
{
  v129 = *MEMORY[0x277D85DE8];
  v124 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v115.receiver = v124;
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
        v37 = v124;
        v55 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v124 currentUIState]);
        v38 = MEMORY[0x277D82BE0](v55);
        v105 = v38;
        v39 = [(SUSUISoftwareUpdateController *)v124 currentUIState];
        v54 = [(SUSUISoftwareUpdateController *)v124 presentingStatefulDescriptor];
        v53 = [(SUSUISoftwareUpdateController *)v124 presentingStatefulDescriptor];
        v52 = [(SUSUISoftwareUpdateController *)v124 presentingAlternateStatefulDescriptor];
        v51 = [(SUSUISoftwareUpdateController *)v124 presentingAlternateStatefulDescriptor];
        v50 = [(SUSUISoftwareUpdateController *)v124 manager];
        v49 = [(SUSettingsStatefulUIManager *)v50 currentDownload];
        v48 = [(SUDownload *)v49 descriptor];
        v47 = [(SUDescriptor *)v48 humanReadableUpdateName];
        v33 = MEMORY[0x277D82BE0](v47);
        v104 = v33;
        v46 = [(SUSUISoftwareUpdateController *)v124 manager];
        v45 = [(SUSettingsStatefulUIManager *)v46 currentDownload];
        v44 = [(SUSUISoftwareUpdateController *)v124 manager];
        v10 = [(SUSettingsStatefulUIManager *)v44 isTargetedUpdateScheduledForAutoInstall];
        v11 = "YES";
        if (!v10)
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
        __os_log_helper_16_2_14_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_66_8_66(v126, "[SUSUISoftwareUpdateController(UI) selectSpecifier:]", v36, v37, v38, v39, v54, v53, v52, v51, v33, v45, v34, v35, v102);
        _os_log_impl(&dword_26AC94000, v40, v41, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nSelected specifier ID: %{public}@ -> %{public}@", v126, 0x8Eu);
        MEMORY[0x277D82BD8](v42);
        MEMORY[0x277D82BD8](v43);
        MEMORY[0x277D82BD8](v44);
        MEMORY[0x277D82BD8](v45);
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
        v27 = [(SUSUISoftwareUpdateController *)v124 manager];
        [v99 setManager:?];
        MEMORY[0x277D82BD8](v27);
        v28 = [v99 manager];
        [v28 setDelegate:v99];
        MEMORY[0x277D82BD8](v28);
        [v99 setParentController:v124];
        [v99 setDelegate:v124];
        v29 = [location[0] propertyForKey:*MEMORY[0x277D3FFB8]];
        v30 = [v29 isEqualToString:@"SUAlternateUpdateButton"];
        MEMORY[0x277D82BD8](v29);
        if (v30)
        {
          [v99 setSlowRollUpdateType:0];
          v25 = v124;
          v26 = [(SUSUISoftwareUpdateController *)v124 analyticsAlternateUpdateCellTappedString];
          [(SUSUISoftwareUpdateController *)v25 recordAnalyticsEvent:?];
          MEMORY[0x277D82BD8](v26);
        }

        else
        {
          [v99 setSlowRollUpdateType:1];
          v23 = v124;
          v24 = [(SUSUISoftwareUpdateController *)v124 analyticsNonPromotedUpdateCellTappedString];
          [(SUSUISoftwareUpdateController *)v23 recordAnalyticsEvent:?];
          MEMORY[0x277D82BD8](v24);
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
          v19 = v124;
          v20 = [(SUSUISoftwareUpdateController *)v124 analyticsAutomaticUpdatesCellTappedString];
          [(SUSUISoftwareUpdateController *)v19 recordAnalyticsEvent:?];
          MEMORY[0x277D82BD8](v20);
        }

        else
        {
          v17 = [location[0] propertyForKey:*MEMORY[0x277D3FFB8]];
          v18 = [v17 isEqualToString:@"SUGetBetaUpdatesButton"];
          MEMORY[0x277D82BD8](v17);
          if (v18)
          {
            v15 = v124;
            v16 = [(SUSUISoftwareUpdateController *)v124 analyticsBetaUpdatesCellTappedString];
            [(SUSUISoftwareUpdateController *)v15 recordAnalyticsEvent:?];
            MEMORY[0x277D82BD8](v16);
          }
        }
      }

      [(SUSUISoftwareUpdateController *)v124 showController:v116 animate:1];
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
        v60 = v124;
        v77 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v124 currentUIState]);
        v61 = MEMORY[0x277D82BE0](v77);
        v111 = v61;
        v62 = [(SUSUISoftwareUpdateController *)v124 currentUIState];
        v76 = [(SUSUISoftwareUpdateController *)v124 presentingStatefulDescriptor];
        v75 = [(SUSUISoftwareUpdateController *)v124 presentingStatefulDescriptor];
        v74 = [(SUSUISoftwareUpdateController *)v124 presentingAlternateStatefulDescriptor];
        v73 = [(SUSUISoftwareUpdateController *)v124 presentingAlternateStatefulDescriptor];
        v72 = [(SUSUISoftwareUpdateController *)v124 manager];
        v71 = [(SUSettingsStatefulUIManager *)v72 currentDownload];
        v70 = [(SUDownload *)v71 descriptor];
        v69 = [(SUDescriptor *)v70 humanReadableUpdateName];
        v57 = MEMORY[0x277D82BE0](v69);
        v110 = v57;
        v68 = [(SUSUISoftwareUpdateController *)v124 manager];
        v67 = [(SUSettingsStatefulUIManager *)v68 currentDownload];
        v66 = [(SUSUISoftwareUpdateController *)v124 manager];
        v7 = [(SUSettingsStatefulUIManager *)v66 isTargetedUpdateScheduledForAutoInstall];
        v8 = "YES";
        if (!v7)
        {
          v8 = "NO";
        }

        v58 = v8;
        v65 = [location[0] propertyForKey:*MEMORY[0x277D3FFB8]];
        v109 = MEMORY[0x277D82BE0](v65);
        __os_log_helper_16_2_13_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_66(v127, "[SUSUISoftwareUpdateController(UI) selectSpecifier:]", v59, v60, v61, v62, v76, v75, v74, v73, v57, v67, v58, v109);
        _os_log_impl(&dword_26AC94000, v63, v64, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nSelected specifier ID: %{public}@ -> No controller found. Skipping on pushing.", v127, 0x84u);
        MEMORY[0x277D82BD8](v65);
        MEMORY[0x277D82BD8](v66);
        MEMORY[0x277D82BD8](v67);
        MEMORY[0x277D82BD8](v68);
        MEMORY[0x277D82BD8](v69);
        MEMORY[0x277D82BD8](v70);
        MEMORY[0x277D82BD8](v71);
        MEMORY[0x277D82BD8](v72);
        MEMORY[0x277D82BD8](v73);
        MEMORY[0x277D82BD8](v74);
        MEMORY[0x277D82BD8](v75);
        MEMORY[0x277D82BD8](v76);
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
      v81 = v124;
      v97 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v124 currentUIState]);
      v82 = MEMORY[0x277D82BE0](v97);
      v119 = v82;
      v83 = [(SUSUISoftwareUpdateController *)v124 currentUIState];
      v96 = [(SUSUISoftwareUpdateController *)v124 presentingStatefulDescriptor];
      v95 = [(SUSUISoftwareUpdateController *)v124 presentingStatefulDescriptor];
      v94 = [(SUSUISoftwareUpdateController *)v124 presentingAlternateStatefulDescriptor];
      v93 = [(SUSUISoftwareUpdateController *)v124 presentingAlternateStatefulDescriptor];
      v92 = [(SUSUISoftwareUpdateController *)v124 manager];
      v91 = [(SUSettingsStatefulUIManager *)v92 currentDownload];
      v90 = [(SUDownload *)v91 descriptor];
      v89 = [(SUDescriptor *)v90 humanReadableUpdateName];
      v79 = MEMORY[0x277D82BE0](v89);
      v118 = v79;
      v88 = [(SUSUISoftwareUpdateController *)v124 manager];
      v87 = [(SUSettingsStatefulUIManager *)v88 currentDownload];
      v86 = [(SUSUISoftwareUpdateController *)v124 manager];
      v4 = [(SUSettingsStatefulUIManager *)v86 isTargetedUpdateScheduledForAutoInstall];
      v5 = "YES";
      if (!v4)
      {
        v5 = "NO";
      }

      __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v128, "[SUSUISoftwareUpdateController(UI) selectSpecifier:]", v80, v81, v82, v83, v96, v95, v94, v93, v79, v87, v5);
      _os_log_impl(&dword_26AC94000, log, v85, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nSelected specifier is nil, return", v128, 0x7Au);
      MEMORY[0x277D82BD8](v86);
      MEMORY[0x277D82BD8](v87);
      MEMORY[0x277D82BD8](v88);
      MEMORY[0x277D82BD8](v89);
      MEMORY[0x277D82BD8](v90);
      MEMORY[0x277D82BD8](v91);
      MEMORY[0x277D82BD8](v92);
      MEMORY[0x277D82BD8](v93);
      MEMORY[0x277D82BD8](v94);
      MEMORY[0x277D82BD8](v95);
      MEMORY[0x277D82BD8](v96);
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
  v33 = self;
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
    v25 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v33 currentUIState]);
    v10 = MEMORY[0x277D82BE0](v25);
    v29 = v10;
    v11 = [(SUSUISoftwareUpdateController *)v33 currentUIState];
    v24 = [(SUSUISoftwareUpdateController *)v33 presentingStatefulDescriptor];
    v23 = [(SUSUISoftwareUpdateController *)v33 presentingStatefulDescriptor];
    v22 = [(SUSUISoftwareUpdateController *)v33 presentingAlternateStatefulDescriptor];
    v21 = [(SUSUISoftwareUpdateController *)v33 presentingAlternateStatefulDescriptor];
    v20 = [(SUSUISoftwareUpdateController *)v33 manager];
    v19 = [(SUSettingsStatefulUIManager *)v20 currentDownload];
    v18 = [(SUDownload *)v19 descriptor];
    v17 = [(SUDescriptor *)v18 humanReadableUpdateName];
    v8 = MEMORY[0x277D82BE0](v17);
    v28 = v8;
    v16 = [(SUSUISoftwareUpdateController *)v33 manager];
    v15 = [(SUSettingsStatefulUIManager *)v16 currentDownload];
    v14 = [(SUSUISoftwareUpdateController *)v33 manager];
    v3 = [(SUSettingsStatefulUIManager *)v14 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!v3)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v34, "[SUSUISoftwareUpdateController(UI) openStorage]", v9, v33, v10, v11, v24, v23, v22, v21, v8, v15, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v34, 0x7Au);
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
  v5 = v33;
  v6 = [(SUSUISoftwareUpdateController *)v33 analyticsOpenStorageTappedString];
  [(SUSUISoftwareUpdateController *)v5 submitAnalyticsEvent:?];
  MEMORY[0x277D82BD8](v6);
  v27 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.General/STORAGE_MGMT"];
  v7 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v7 openSensitiveURL:v27 withOptions:0];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v27, 0);
  *MEMORY[0x277D85DE8];
}

- (void)downloadOnly:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSUISoftwareUpdateController *)v4 beginUpdateDownloadOnlyOperation];
  objc_storeStrong(location, 0);
}

- (void)downloadAndInstall:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSUISoftwareUpdateController *)v4 beginUpdateNowOperation];
  objc_storeStrong(location, 0);
}

- (void)downloadAndInstallTonight:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSUISoftwareUpdateController *)v4 beginUpdateTonightOperation];
  objc_storeStrong(location, 0);
}

- (void)installTonight:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSUISoftwareUpdateController *)v4 beginInstallTonightOperation];
  objc_storeStrong(location, 0);
}

- (void)install:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v6;
  v4 = [(SUSUISoftwareUpdateController *)v6 installNowTappedString];
  [(SUSUISoftwareUpdateController *)v3 recordAnalyticsEvent:?];
  MEMORY[0x277D82BD8](v4);
  [(SUSUISoftwareUpdateController *)v6 beginInstallOperation];
  objc_storeStrong(location, 0);
}

- (void)requestToPromoteTargetedUpdateToUserInitiatedStatus:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSUISoftwareUpdateController *)v4 promoteTargetedUpdateToUserInitiatedStatus];
  objc_storeStrong(location, 0);
}

- (void)autoInstallCancel:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSUISoftwareUpdateController *)v4 unscheduleTargetedUpdateAutomaticInstallation];
  objc_storeStrong(location, 0);
}

- (void)detailedReleaseNotesDonePressed:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
    v8 = v32;
    v24 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v32 currentUIState]);
    v9 = MEMORY[0x277D82BE0](v24);
    v27 = v9;
    v10 = [(SUSUISoftwareUpdateController *)v32 currentUIState];
    v23 = [(SUSUISoftwareUpdateController *)v32 presentingStatefulDescriptor];
    v22 = [(SUSUISoftwareUpdateController *)v32 presentingStatefulDescriptor];
    v21 = [(SUSUISoftwareUpdateController *)v32 presentingAlternateStatefulDescriptor];
    v20 = [(SUSUISoftwareUpdateController *)v32 presentingAlternateStatefulDescriptor];
    v19 = [(SUSUISoftwareUpdateController *)v32 manager];
    v18 = [(SUSettingsStatefulUIManager *)v19 currentDownload];
    v17 = [(SUDownload *)v18 descriptor];
    v16 = [(SUDescriptor *)v17 humanReadableUpdateName];
    v6 = MEMORY[0x277D82BE0](v16);
    v26 = v6;
    v15 = [(SUSUISoftwareUpdateController *)v32 manager];
    v14 = [(SUSettingsStatefulUIManager *)v15 currentDownload];
    v13 = [(SUSUISoftwareUpdateController *)v32 manager];
    v4 = [(SUSettingsStatefulUIManager *)v13 isTargetedUpdateScheduledForAutoInstall];
    v5 = "YES";
    if (!v4)
    {
      v5 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v33, "[SUSUISoftwareUpdateController(UI) detailedReleaseNotesDonePressed:]", v7, v8, v9, v10, v23, v22, v21, v20, v6, v14, v5);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v33, 0x7Au);
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
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
  }

  objc_storeStrong(&v30, 0);
  [(SUSUISoftwareUpdateController *)v32 dismissViewControllerAnimated:1 completion:0];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)performUpdateRescan:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v43 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
    v16 = v43;
    v32 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v43 currentUIState]);
    v17 = MEMORY[0x277D82BE0](v32);
    v38 = v17;
    v18 = [(SUSUISoftwareUpdateController *)v43 currentUIState];
    v31 = [(SUSUISoftwareUpdateController *)v43 presentingStatefulDescriptor];
    v30 = [(SUSUISoftwareUpdateController *)v43 presentingStatefulDescriptor];
    v29 = [(SUSUISoftwareUpdateController *)v43 presentingAlternateStatefulDescriptor];
    v28 = [(SUSUISoftwareUpdateController *)v43 presentingAlternateStatefulDescriptor];
    v27 = [(SUSUISoftwareUpdateController *)v43 manager];
    v26 = [(SUSettingsStatefulUIManager *)v27 currentDownload];
    v25 = [(SUDownload *)v26 descriptor];
    v24 = [(SUDescriptor *)v25 humanReadableUpdateName];
    v14 = MEMORY[0x277D82BE0](v24);
    v37 = v14;
    v23 = [(SUSUISoftwareUpdateController *)v43 manager];
    v22 = [(SUSettingsStatefulUIManager *)v23 currentDownload];
    v21 = [(SUSUISoftwareUpdateController *)v43 manager];
    v4 = [(SUSettingsStatefulUIManager *)v21 isTargetedUpdateScheduledForAutoInstall];
    v5 = "YES";
    if (!v4)
    {
      v5 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v44, "[SUSUISoftwareUpdateController(UI) performUpdateRescan:]", v15, v16, v17, v18, v31, v30, v29, v28, v14, v22, v5);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v44, 0x7Au);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
  }

  objc_storeStrong(&v41, 0);
  if ([(SUSUISoftwareUpdateController *)v43 supportsPullToRefresh])
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
    [(SUSUISoftwareUpdateController *)v43 refreshPane];
    v11 = [(SUSUISoftwareUpdateController *)v43 manager];
    [(SUSettingsStatefulUIManager *)v11 checkForUpdatesInBackground];
    MEMORY[0x277D82BD8](v11);
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

- (void)autoInstallCancelPrompt:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v50 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
    v24 = v50;
    v40 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v50 currentUIState]);
    v25 = MEMORY[0x277D82BE0](v40);
    v45 = v25;
    v26 = [(SUSUISoftwareUpdateController *)v50 currentUIState];
    v39 = [(SUSUISoftwareUpdateController *)v50 presentingStatefulDescriptor];
    v38 = [(SUSUISoftwareUpdateController *)v50 presentingStatefulDescriptor];
    v37 = [(SUSUISoftwareUpdateController *)v50 presentingAlternateStatefulDescriptor];
    v36 = [(SUSUISoftwareUpdateController *)v50 presentingAlternateStatefulDescriptor];
    v35 = [(SUSUISoftwareUpdateController *)v50 manager];
    v34 = [(SUSettingsStatefulUIManager *)v35 currentDownload];
    v33 = [(SUDownload *)v34 descriptor];
    v32 = [(SUDescriptor *)v33 humanReadableUpdateName];
    v22 = MEMORY[0x277D82BE0](v32);
    v44 = v22;
    v31 = [(SUSUISoftwareUpdateController *)v50 manager];
    v30 = [(SUSettingsStatefulUIManager *)v31 currentDownload];
    v29 = [(SUSUISoftwareUpdateController *)v50 manager];
    v4 = [(SUSettingsStatefulUIManager *)v29 isTargetedUpdateScheduledForAutoInstall];
    v5 = "YES";
    if (!v4)
    {
      v5 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v51, "[SUSUISoftwareUpdateController(UI) autoInstallCancelPrompt:]", v23, v24, v25, v26, v39, v38, v37, v36, v22, v30, v5);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v51, 0x7Au);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    objc_storeStrong(&v44, 0);
    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v46, 0);
  }

  objc_storeStrong(&v48, 0);
  v43 = [MEMORY[0x277D3F9C8] preferenceSpecifierNamed:0 target:? set:? get:? detail:? cell:? edit:?];
  v42 = [MEMORY[0x277CBEB38] dictionary];
  v10 = v42;
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v12 localizedStringForKey:@"AUTO_INSTALL_CONFIRM_CANCEL" value:&stru_287B79370 table:?];
  v6 = *MEMORY[0x277D3FE78];
  [v10 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v13 = v42;
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v15 localizedStringForKey:@"AUTO_INSTALL_CONFIRM_OK" value:&stru_287B79370 table:@"Software Update"];
  v7 = *MEMORY[0x277D3FE88];
  [v13 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  v16 = v42;
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v18 localizedStringForKey:@"AUTO_INSTALL_CONFIRM_PROMPT" value:&stru_287B79370 table:@"Software Update"];
  v8 = *MEMORY[0x277D3FE90];
  [v16 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  v19 = v42;
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v21 localizedStringForKey:@"AUTO_INSTALL_CONFIRM_TITLE" value:&stru_287B79370 table:@"Software Update"];
  v9 = *MEMORY[0x277D3FE98];
  [v19 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  [v43 setupWithDictionary:v42];
  [v43 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FE80]];
  [v43 setConfirmationAction:sel_autoInstallCancel_];
  [v43 setTarget:v50];
  [(SUSUISoftwareUpdateController *)v50 presentConfimationSpecifier:v43];
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)presentConfimationSpecifier:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUSUISoftwareUpdateController *)v4 showConfirmationViewForSpecifier:location[0]];
  objc_storeStrong(location, 0);
}

- (void)preferredContentSizeChanged:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
    v10 = v34;
    v26 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v34 currentUIState]);
    v11 = MEMORY[0x277D82BE0](v26);
    v29 = v11;
    v12 = [(SUSUISoftwareUpdateController *)v34 currentUIState];
    v25 = [(SUSUISoftwareUpdateController *)v34 presentingStatefulDescriptor];
    v24 = [(SUSUISoftwareUpdateController *)v34 presentingStatefulDescriptor];
    v23 = [(SUSUISoftwareUpdateController *)v34 presentingAlternateStatefulDescriptor];
    v22 = [(SUSUISoftwareUpdateController *)v34 presentingAlternateStatefulDescriptor];
    v21 = [(SUSUISoftwareUpdateController *)v34 manager];
    v20 = [(SUSettingsStatefulUIManager *)v21 currentDownload];
    v19 = [(SUDownload *)v20 descriptor];
    v18 = [(SUDescriptor *)v19 humanReadableUpdateName];
    v8 = MEMORY[0x277D82BE0](v18);
    v28 = v8;
    v17 = [(SUSUISoftwareUpdateController *)v34 manager];
    v16 = [(SUSettingsStatefulUIManager *)v17 currentDownload];
    v15 = [(SUSUISoftwareUpdateController *)v34 manager];
    v4 = [(SUSettingsStatefulUIManager *)v15 isTargetedUpdateScheduledForAutoInstall];
    v5 = "YES";
    if (!v4)
    {
      v5 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v35, "[SUSUISoftwareUpdateController(UI) preferredContentSizeChanged:]", v9, v10, v11, v12, v25, v24, v23, v22, v8, v16, v5);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v35, 0x7Au);
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
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
  }

  objc_storeStrong(&v32, 0);
  [(SUSUISoftwareUpdateController *)v34 setTitleCell:0];
  [(SUSUISoftwareUpdateController *)v34 setUpdateOptionsCell:0];
  [(SUSUISoftwareUpdateController *)v34 setProactiveSuggestionCell:0];
  [(SUSUISoftwareUpdateController *)v34 reloadSpecifiers];
  v6 = v34;
  v7 = [(SUSUISoftwareUpdateController *)v34 paneTitle];
  [(SUSUISoftwareUpdateController *)v6 setTitle:?];
  MEMORY[0x277D82BD8](v7);
  [(SUSUISoftwareUpdateController *)v34 refreshPane];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v36 = a3;
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
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
    v11 = v35;
    v27 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v35 currentUIState]);
    v12 = MEMORY[0x277D82BE0](v27);
    v30 = v12;
    v13 = [(SUSUISoftwareUpdateController *)v35 currentUIState];
    v26 = [(SUSUISoftwareUpdateController *)v35 presentingStatefulDescriptor];
    v25 = [(SUSUISoftwareUpdateController *)v35 presentingStatefulDescriptor];
    v24 = [(SUSUISoftwareUpdateController *)v35 presentingAlternateStatefulDescriptor];
    v23 = [(SUSUISoftwareUpdateController *)v35 presentingAlternateStatefulDescriptor];
    v22 = [(SUSUISoftwareUpdateController *)v35 manager];
    v21 = [(SUSettingsStatefulUIManager *)v22 currentDownload];
    v20 = [(SUDownload *)v21 descriptor];
    v19 = [(SUDescriptor *)v20 humanReadableUpdateName];
    v9 = MEMORY[0x277D82BE0](v19);
    v29 = v9;
    v18 = [(SUSUISoftwareUpdateController *)v35 manager];
    v17 = [(SUSettingsStatefulUIManager *)v18 currentDownload];
    v16 = [(SUSUISoftwareUpdateController *)v35 manager];
    v5 = [(SUSettingsStatefulUIManager *)v16 isTargetedUpdateScheduledForAutoInstall];
    v6 = "NO";
    if (v5)
    {
      v6 = "YES";
    }

    __os_log_helper_16_2_14_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_0_8_0(v37, "[SUSUISoftwareUpdateController(UI) viewWillTransitionToSize:withTransitionCoordinator:]", v10, v11, v12, v13, v26, v25, v24, v23, v9, v17, v6, *&v36.width, *&v36.height);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nNew size: [%f, %f]", v37, 0x8Eu);
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
    MEMORY[0x277D82BD8](v28);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
  }

  objc_storeStrong(&v33, 0);
  [(SUSUISoftwareUpdateController *)v35 reloadSpecifiers];
  v7 = v35;
  v8 = [(SUSUISoftwareUpdateController *)v35 paneTitle];
  [(SUSUISoftwareUpdateController *)v7 setTitle:?];
  MEMORY[0x277D82BD8](v8);
  [(SUSUISoftwareUpdateController *)v35 refreshPane];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)preferences:(id)a3 didChangePreference:(id)a4 toValue:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [(SUSUISoftwareUpdateController *)v10 refreshPane];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)showAlsoAvailaibleSUPane
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = self;
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
    v25 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v40 currentUIState]);
    v10 = MEMORY[0x277D82BE0](v25);
    v36 = v10;
    v11 = [(SUSUISoftwareUpdateController *)v40 currentUIState];
    v24 = [(SUSUISoftwareUpdateController *)v40 presentingStatefulDescriptor];
    v23 = [(SUSUISoftwareUpdateController *)v40 presentingStatefulDescriptor];
    v22 = [(SUSUISoftwareUpdateController *)v40 presentingAlternateStatefulDescriptor];
    v21 = [(SUSUISoftwareUpdateController *)v40 presentingAlternateStatefulDescriptor];
    v20 = [(SUSUISoftwareUpdateController *)v40 manager];
    v19 = [(SUSettingsStatefulUIManager *)v20 currentDownload];
    v18 = [(SUDownload *)v19 descriptor];
    v17 = [(SUDescriptor *)v18 humanReadableUpdateName];
    v8 = MEMORY[0x277D82BE0](v17);
    v35 = v8;
    v16 = [(SUSUISoftwareUpdateController *)v40 manager];
    v15 = [(SUSettingsStatefulUIManager *)v16 currentDownload];
    v14 = [(SUSUISoftwareUpdateController *)v40 manager];
    v3 = [(SUSettingsStatefulUIManager *)v14 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!v3)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v41, "[SUSUISoftwareUpdateController(UI) showAlsoAvailaibleSUPane]", v9, v40, v10, v11, v24, v23, v22, v21, v8, v15, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v41, 0x7Au);
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
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
  }

  objc_storeStrong(v39, 0);
  objc_initWeak(&v34, v40);
  v6 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  queue = v6;
  v27 = MEMORY[0x277D85DD0];
  v28 = -1073741824;
  v29 = 0;
  v30 = __61__SUSUISoftwareUpdateController_UI__showAlsoAvailaibleSUPane__block_invoke;
  v31 = &unk_279CBDA68;
  objc_copyWeak(&v33, &v34);
  v32 = MEMORY[0x277D82BE0](v40);
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
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:self selector:sel_preferredContentSizeChanged_ name:*MEMORY[0x277D76810] object:0];
  MEMORY[0x277D82BD8](v2);
}

- (void)registerForPreferencesChanges
{
  v3 = [(SUSUISoftwareUpdateController *)self manager];
  v2 = [(SUSettingsStatefulUIManager *)v3 preferences];
  [(SUSettingsSUPreferencesManager *)v2 addObserver:self];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
}

- (void)performDeepLinkAction:(unint64_t)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v31 = self;
  v30 = a2;
  v29 = a3;
  if (a3 == 1)
  {
    [(SUSUISoftwareUpdateController *)v31 beginUpdateNowOperation];
  }

  else if (a3 == 2)
  {
    [(SUSUISoftwareUpdateController *)v31 beginUpdateTonightOperation];
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
      v22 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v31 currentUIState]);
      v7 = MEMORY[0x277D82BE0](v22);
      v25 = v7;
      v8 = [(SUSUISoftwareUpdateController *)v31 currentUIState];
      v21 = [(SUSUISoftwareUpdateController *)v31 presentingStatefulDescriptor];
      v20 = [(SUSUISoftwareUpdateController *)v31 presentingStatefulDescriptor];
      v19 = [(SUSUISoftwareUpdateController *)v31 presentingAlternateStatefulDescriptor];
      v18 = [(SUSUISoftwareUpdateController *)v31 presentingAlternateStatefulDescriptor];
      v17 = [(SUSUISoftwareUpdateController *)v31 manager];
      v16 = [(SUSettingsStatefulUIManager *)v17 currentDownload];
      v15 = [(SUDownload *)v16 descriptor];
      v14 = [(SUDescriptor *)v15 humanReadableUpdateName];
      v5 = MEMORY[0x277D82BE0](v14);
      v24 = v5;
      v13 = [(SUSUISoftwareUpdateController *)v31 manager];
      v12 = [(SUSettingsStatefulUIManager *)v13 currentDownload];
      v11 = [(SUSUISoftwareUpdateController *)v31 manager];
      if ([(SUSettingsStatefulUIManager *)v11 isTargetedUpdateScheduledForAutoInstall])
      {
        v4 = "YES";
      }

      else
      {
        v4 = "NO";
      }

      __os_log_helper_16_2_13_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_0(v32, "[SUSUISoftwareUpdateController(UI) performDeepLinkAction:]", v6, v31, v7, v8, v21, v20, v19, v18, v5, v12, v4, v29);
      _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nUnknown deep link update action %ld", v32, 0x84u);
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
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v26, 0);
    }

    objc_storeStrong(&v28, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (void)waitForScanCompletionWithTimeout:(unint64_t)a3 currentAttempt:(unint64_t)a4 completionHandler:(id)a5
{
  v116 = *MEMORY[0x277D85DE8];
  v110 = self;
  v109 = a2;
  v108 = a3;
  v107 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  if (v107 >= 0xF0)
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
      v15 = v110;
      v31 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v110 currentUIState]);
      v16 = MEMORY[0x277D82BE0](v31);
      v67 = v16;
      v17 = [(SUSUISoftwareUpdateController *)v110 currentUIState];
      v30 = [(SUSUISoftwareUpdateController *)v110 presentingStatefulDescriptor];
      v29 = [(SUSUISoftwareUpdateController *)v110 presentingStatefulDescriptor];
      v28 = [(SUSUISoftwareUpdateController *)v110 presentingAlternateStatefulDescriptor];
      v27 = [(SUSUISoftwareUpdateController *)v110 presentingAlternateStatefulDescriptor];
      v26 = [(SUSUISoftwareUpdateController *)v110 manager];
      v25 = [(SUSettingsStatefulUIManager *)v26 currentDownload];
      v24 = [(SUDownload *)v25 descriptor];
      v23 = [(SUDescriptor *)v24 humanReadableUpdateName];
      v13 = MEMORY[0x277D82BE0](v23);
      v66 = v13;
      v22 = [(SUSUISoftwareUpdateController *)v110 manager];
      v21 = [(SUSettingsStatefulUIManager *)v22 currentDownload];
      v20 = [(SUSUISoftwareUpdateController *)v110 manager];
      if ([(SUSettingsStatefulUIManager *)v20 isTargetedUpdateScheduledForAutoInstall])
      {
        v9 = "YES";
      }

      else
      {
        v9 = "NO";
      }

      __os_log_helper_16_2_13_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34_8_0(v111, "[SUSUISoftwareUpdateController(UI) waitForScanCompletionWithTimeout:currentAttempt:completionHandler:]", v14, v15, v16, v17, v30, v29, v28, v27, v13, v21, v9, v108);
      _os_log_impl(&dword_26AC94000, v18, v19, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\nReached the handleURL scan timeout %lu. Stopping.", v111, 0x84u);
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
      MEMORY[0x277D82BD8](v30);
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

  v105 = [(SUSUISoftwareUpdateController *)v110 currentUIState];
  if (v105 > 1 && v105 <= 3)
  {
    oslog = _SUSUILoggingFacility();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v58 = type;
      v59 = SUSettingsUIStateToString(v105);
      v102 = MEMORY[0x277D82BE0](v59);
      __os_log_helper_16_2_3_8_32_8_66_8_0(v115, "[SUSUISoftwareUpdateController(UI) waitForScanCompletionWithTimeout:currentAttempt:completionHandler:]", v102, v105);
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

  if (v105 != 4)
  {
LABEL_19:
    v80 = _SUSUILoggingFacility();
    v79 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      v40 = v80;
      v41 = v79;
      v7 = "complete";
      if (v105 != 1)
      {
        v7 = "begin";
      }

      v35 = v7;
      v36 = v107;
      v37 = v108;
      v38 = v105;
      v44 = SUSettingsUIStateToString(v105);
      v39 = MEMORY[0x277D82BE0](v44);
      v78 = v39;
      v43 = [(SUSUISoftwareUpdateController *)v110 presentingDescriptor];
      v42 = [(SUSUISoftwareUpdateController *)v110 presentingAlternateDescriptor];
      __os_log_helper_16_2_8_8_32_8_34_8_0_8_0_8_0_8_66_8_0_8_0(v112, "[SUSUISoftwareUpdateController(UI) waitForScanCompletionWithTimeout:currentAttempt:completionHandler:]", v35, v36, v37, v38, v39, v43, v42);
      _os_log_impl(&dword_26AC94000, v40, v41, "%s: waiting for scan to %{public}s (waited %ld seconds out of %ld) (current state: %ld (%{public}@), preferred update: %p, alternate update: %p)", v112, 0x52u);
      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](v44);
      objc_storeStrong(&v78, 0);
    }

    objc_storeStrong(&v80, 0);
    when = dispatch_time(0, 1000000000);
    handleURLQueue = v110->_handleURLQueue;
    v71 = MEMORY[0x277D85DD0];
    v72 = -1073741824;
    v73 = 0;
    v74 = __103__SUSUISoftwareUpdateController_UI__waitForScanCompletionWithTimeout_currentAttempt_completionHandler___block_invoke_440;
    v75 = &unk_279CBDA90;
    v76 = MEMORY[0x277D82BE0](v110);
    v77[1] = v108;
    v77[2] = v107;
    v77[0] = MEMORY[0x277D82BE0](location);
    dispatch_after(when, handleURLQueue, &v71);
    objc_storeStrong(v77, 0);
    objc_storeStrong(&v76, 0);
LABEL_30:
    v95 = 0;
    goto LABEL_31;
  }

  v53 = [(SUSUISoftwareUpdateController *)v110 presentingDescriptor];
  v93 = 0;
  v54 = 1;
  if (!v53)
  {
    v94 = [(SUSUISoftwareUpdateController *)v110 presentingAlternateDescriptor];
    v93 = 1;
    v54 = v94 != 0;
  }

  if (v93)
  {
    MEMORY[0x277D82BD8](v94);
  }

  MEMORY[0x277D82BD8](v53);
  if (!v54)
  {
    v83 = _SUSUILoggingFacility();
    v82 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v83;
      v46 = v82;
      v47 = SUSettingsUIStateToString(v105);
      v81 = MEMORY[0x277D82BE0](v47);
      __os_log_helper_16_2_3_8_32_8_66_8_0(v113, "[SUSUISoftwareUpdateController(UI) waitForScanCompletionWithTimeout:currentAttempt:completionHandler:]", v81, v105);
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
    v52 = SUSettingsUIStateToString(v105);
    v90 = MEMORY[0x277D82BE0](v52);
    __os_log_helper_16_2_3_8_32_8_66_8_0(v114, "[SUSUISoftwareUpdateController(UI) waitForScanCompletionWithTimeout:currentAttempt:completionHandler:]", v90, v105);
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
  v43 = self;
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
    v30 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v43 currentUIState]);
    v15 = MEMORY[0x277D82BE0](v30);
    v39 = v15;
    v16 = [(SUSUISoftwareUpdateController *)v43 currentUIState];
    v29 = [(SUSUISoftwareUpdateController *)v43 presentingStatefulDescriptor];
    v28 = [(SUSUISoftwareUpdateController *)v43 presentingStatefulDescriptor];
    v27 = [(SUSUISoftwareUpdateController *)v43 presentingAlternateStatefulDescriptor];
    v26 = [(SUSUISoftwareUpdateController *)v43 presentingAlternateStatefulDescriptor];
    v25 = [(SUSUISoftwareUpdateController *)v43 manager];
    v24 = [(SUSettingsStatefulUIManager *)v25 currentDownload];
    v23 = [(SUDownload *)v24 descriptor];
    v22 = [(SUDescriptor *)v23 humanReadableUpdateName];
    v13 = MEMORY[0x277D82BE0](v22);
    v38 = v13;
    v21 = [(SUSUISoftwareUpdateController *)v43 manager];
    v20 = [(SUSettingsStatefulUIManager *)v21 currentDownload];
    v19 = [(SUSUISoftwareUpdateController *)v43 manager];
    v3 = [(SUSettingsStatefulUIManager *)v19 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!v3)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v44, "[SUSUISoftwareUpdateController(SoftwareUpdate) beginUpdateNowOperation]", v14, v43, v15, v16, v29, v28, v27, v26, v13, v20, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v44, 0x7Au);
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
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
  }

  objc_storeStrong(v42, 0);
  v43->_currentActivityStyle = 1;
  v6 = v43;
  v7 = [(SUSUISoftwareUpdateController *)v43 analyticsDownloadAndInstallNowTappedString];
  [(SUSUISoftwareUpdateController *)v6 submitAnalyticsEvent:?];
  MEMORY[0x277D82BD8](v7);
  [(SUSUISoftwareUpdateController *)v43 setBusyWithActivityStyle:v43->_currentActivityStyle];
  v12 = [(SUSUISoftwareUpdateController *)v43 manager];
  v11 = [(SUSUISoftwareUpdateController *)v43 presentingStatefulDescriptor];
  v32 = MEMORY[0x277D85DD0];
  v33 = -1073741824;
  v34 = 0;
  v35 = __72__SUSUISoftwareUpdateController_SoftwareUpdate__beginUpdateNowOperation__block_invoke;
  v36 = &unk_279CC0B20;
  v37 = MEMORY[0x277D82BE0](v43);
  v9 = v43;
  v8 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v10 = v8;
  [(SUSettingsStatefulUIManager *)v12 downloadAndInstall:v11 completionHandler:&v32 operationDelegate:v9 delegateCallbackQueue:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
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
  v43 = self;
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
    v30 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v43 currentUIState]);
    v15 = MEMORY[0x277D82BE0](v30);
    v39 = v15;
    v16 = [(SUSUISoftwareUpdateController *)v43 currentUIState];
    v29 = [(SUSUISoftwareUpdateController *)v43 presentingStatefulDescriptor];
    v28 = [(SUSUISoftwareUpdateController *)v43 presentingStatefulDescriptor];
    v27 = [(SUSUISoftwareUpdateController *)v43 presentingAlternateStatefulDescriptor];
    v26 = [(SUSUISoftwareUpdateController *)v43 presentingAlternateStatefulDescriptor];
    v25 = [(SUSUISoftwareUpdateController *)v43 manager];
    v24 = [(SUSettingsStatefulUIManager *)v25 currentDownload];
    v23 = [(SUDownload *)v24 descriptor];
    v22 = [(SUDescriptor *)v23 humanReadableUpdateName];
    v13 = MEMORY[0x277D82BE0](v22);
    v38 = v13;
    v21 = [(SUSUISoftwareUpdateController *)v43 manager];
    v20 = [(SUSettingsStatefulUIManager *)v21 currentDownload];
    v19 = [(SUSUISoftwareUpdateController *)v43 manager];
    v3 = [(SUSettingsStatefulUIManager *)v19 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!v3)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v44, "[SUSUISoftwareUpdateController(SoftwareUpdate) beginUpdateDownloadOnlyOperation]", v14, v43, v15, v16, v29, v28, v27, v26, v13, v20, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v44, 0x7Au);
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
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
  }

  objc_storeStrong(v42, 0);
  v43->_currentActivityStyle = 2;
  v6 = v43;
  v7 = [(SUSUISoftwareUpdateController *)v43 analyticsDownloadOnlyTappedString];
  [(SUSUISoftwareUpdateController *)v6 submitAnalyticsEvent:?];
  MEMORY[0x277D82BD8](v7);
  [(SUSUISoftwareUpdateController *)v43 setBusyWithActivityStyle:v43->_currentActivityStyle];
  v12 = [(SUSUISoftwareUpdateController *)v43 manager];
  v11 = [(SUSUISoftwareUpdateController *)v43 presentingStatefulDescriptor];
  v32 = MEMORY[0x277D85DD0];
  v33 = -1073741824;
  v34 = 0;
  v35 = __81__SUSUISoftwareUpdateController_SoftwareUpdate__beginUpdateDownloadOnlyOperation__block_invoke;
  v36 = &unk_279CC0B20;
  v37 = MEMORY[0x277D82BE0](v43);
  v9 = v43;
  v8 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v10 = v8;
  [(SUSettingsStatefulUIManager *)v12 downloadUpdate:v11 completionHandler:&v32 operationDelegate:v9 delegateCallbackQueue:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
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
  v43 = self;
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
    v30 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v43 currentUIState]);
    v15 = MEMORY[0x277D82BE0](v30);
    v39 = v15;
    v16 = [(SUSUISoftwareUpdateController *)v43 currentUIState];
    v29 = [(SUSUISoftwareUpdateController *)v43 presentingStatefulDescriptor];
    v28 = [(SUSUISoftwareUpdateController *)v43 presentingStatefulDescriptor];
    v27 = [(SUSUISoftwareUpdateController *)v43 presentingAlternateStatefulDescriptor];
    v26 = [(SUSUISoftwareUpdateController *)v43 presentingAlternateStatefulDescriptor];
    v25 = [(SUSUISoftwareUpdateController *)v43 manager];
    v24 = [(SUSettingsStatefulUIManager *)v25 currentDownload];
    v23 = [(SUDownload *)v24 descriptor];
    v22 = [(SUDescriptor *)v23 humanReadableUpdateName];
    v13 = MEMORY[0x277D82BE0](v22);
    v38 = v13;
    v21 = [(SUSUISoftwareUpdateController *)v43 manager];
    v20 = [(SUSettingsStatefulUIManager *)v21 currentDownload];
    v19 = [(SUSUISoftwareUpdateController *)v43 manager];
    v3 = [(SUSettingsStatefulUIManager *)v19 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!v3)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v44, "[SUSUISoftwareUpdateController(SoftwareUpdate) beginUpdateTonightOperation]", v14, v43, v15, v16, v29, v28, v27, v26, v13, v20, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v44, 0x7Au);
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
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
  }

  objc_storeStrong(v42, 0);
  v43->_currentActivityStyle = 2;
  v6 = v43;
  v7 = [(SUSUISoftwareUpdateController *)v43 analyticsDownloadAndInstallTonightTappedString];
  [(SUSUISoftwareUpdateController *)v6 submitAnalyticsEvent:?];
  MEMORY[0x277D82BD8](v7);
  [(SUSUISoftwareUpdateController *)v43 setBusyWithActivityStyle:v43->_currentActivityStyle];
  v12 = [(SUSUISoftwareUpdateController *)v43 manager];
  v11 = [(SUSUISoftwareUpdateController *)v43 presentingStatefulDescriptor];
  v32 = MEMORY[0x277D85DD0];
  v33 = -1073741824;
  v34 = 0;
  v35 = __76__SUSUISoftwareUpdateController_SoftwareUpdate__beginUpdateTonightOperation__block_invoke;
  v36 = &unk_279CC0B48;
  v37 = MEMORY[0x277D82BE0](v43);
  v9 = v43;
  v8 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v10 = v8;
  [(SUSettingsStatefulUIManager *)v12 downloadAndScheduleUpdate:v11 completionHandler:&v32 operationDelegate:v9 delegateCallbackQueue:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
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
  v43 = self;
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
    v30 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v43 currentUIState]);
    v15 = MEMORY[0x277D82BE0](v30);
    v39 = v15;
    v16 = [(SUSUISoftwareUpdateController *)v43 currentUIState];
    v29 = [(SUSUISoftwareUpdateController *)v43 presentingStatefulDescriptor];
    v28 = [(SUSUISoftwareUpdateController *)v43 presentingStatefulDescriptor];
    v27 = [(SUSUISoftwareUpdateController *)v43 presentingAlternateStatefulDescriptor];
    v26 = [(SUSUISoftwareUpdateController *)v43 presentingAlternateStatefulDescriptor];
    v25 = [(SUSUISoftwareUpdateController *)v43 manager];
    v24 = [(SUSettingsStatefulUIManager *)v25 currentDownload];
    v23 = [(SUDownload *)v24 descriptor];
    v22 = [(SUDescriptor *)v23 humanReadableUpdateName];
    v13 = MEMORY[0x277D82BE0](v22);
    v38 = v13;
    v21 = [(SUSUISoftwareUpdateController *)v43 manager];
    v20 = [(SUSettingsStatefulUIManager *)v21 currentDownload];
    v19 = [(SUSUISoftwareUpdateController *)v43 manager];
    v3 = [(SUSettingsStatefulUIManager *)v19 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!v3)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v44, "[SUSUISoftwareUpdateController(SoftwareUpdate) beginInstallOperation]", v14, v43, v15, v16, v29, v28, v27, v26, v13, v20, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v44, 0x7Au);
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
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
  }

  objc_storeStrong(v42, 0);
  v43->_currentActivityStyle = 2;
  v6 = v43;
  v7 = [(SUSUISoftwareUpdateController *)v43 analyticsDownloadAndInstallTonightTappedString];
  [(SUSUISoftwareUpdateController *)v6 submitAnalyticsEvent:?];
  MEMORY[0x277D82BD8](v7);
  [(SUSUISoftwareUpdateController *)v43 setBusyWithActivityStyle:v43->_currentActivityStyle];
  v12 = [(SUSUISoftwareUpdateController *)v43 manager];
  v11 = [(SUSUISoftwareUpdateController *)v43 presentingStatefulDescriptor];
  v32 = MEMORY[0x277D85DD0];
  v33 = -1073741824;
  v34 = 0;
  v35 = __70__SUSUISoftwareUpdateController_SoftwareUpdate__beginInstallOperation__block_invoke;
  v36 = &unk_279CBE0E8;
  v37 = MEMORY[0x277D82BE0](v43);
  v9 = v43;
  v8 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v10 = v8;
  [(SUSettingsStatefulUIManager *)v12 installUpdate:v11 completionHandler:&v32 operationDelegate:v9 delegateCallbackQueue:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
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
  v43 = self;
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
    v30 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v43 currentUIState]);
    v15 = MEMORY[0x277D82BE0](v30);
    v39 = v15;
    v16 = [(SUSUISoftwareUpdateController *)v43 currentUIState];
    v29 = [(SUSUISoftwareUpdateController *)v43 presentingStatefulDescriptor];
    v28 = [(SUSUISoftwareUpdateController *)v43 presentingStatefulDescriptor];
    v27 = [(SUSUISoftwareUpdateController *)v43 presentingAlternateStatefulDescriptor];
    v26 = [(SUSUISoftwareUpdateController *)v43 presentingAlternateStatefulDescriptor];
    v25 = [(SUSUISoftwareUpdateController *)v43 manager];
    v24 = [(SUSettingsStatefulUIManager *)v25 currentDownload];
    v23 = [(SUDownload *)v24 descriptor];
    v22 = [(SUDescriptor *)v23 humanReadableUpdateName];
    v13 = MEMORY[0x277D82BE0](v22);
    v38 = v13;
    v21 = [(SUSUISoftwareUpdateController *)v43 manager];
    v20 = [(SUSettingsStatefulUIManager *)v21 currentDownload];
    v19 = [(SUSUISoftwareUpdateController *)v43 manager];
    v3 = [(SUSettingsStatefulUIManager *)v19 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!v3)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v44, "[SUSUISoftwareUpdateController(SoftwareUpdate) beginInstallTonightOperation]", v14, v43, v15, v16, v29, v28, v27, v26, v13, v20, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v44, 0x7Au);
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
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
  }

  objc_storeStrong(v42, 0);
  v43->_currentActivityStyle = 2;
  v6 = v43;
  v7 = [(SUSUISoftwareUpdateController *)v43 analyticsDownloadAndInstallTonightTappedString];
  [(SUSUISoftwareUpdateController *)v6 submitAnalyticsEvent:?];
  MEMORY[0x277D82BD8](v7);
  [(SUSUISoftwareUpdateController *)v43 setBusyWithActivityStyle:v43->_currentActivityStyle];
  v12 = [(SUSUISoftwareUpdateController *)v43 manager];
  v11 = [(SUSUISoftwareUpdateController *)v43 presentingStatefulDescriptor];
  v32 = MEMORY[0x277D85DD0];
  v33 = -1073741824;
  v34 = 0;
  v35 = __77__SUSUISoftwareUpdateController_SoftwareUpdate__beginInstallTonightOperation__block_invoke;
  v36 = &unk_279CC0B70;
  v37 = MEMORY[0x277D82BE0](v43);
  v9 = v43;
  v8 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v10 = v8;
  [(SUSettingsStatefulUIManager *)v12 scheduleUpdate:v11 completionHandler:&v32 operationDelegate:v9 delegateCallbackQueue:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
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
  v3 = [(SUSUISoftwareUpdateController *)self installNowTappedString];
  [(SUSUISoftwareUpdateController *)self recordAnalyticsEvent:?];
  MEMORY[0x277D82BD8](v3);
}

- (void)promoteTargetedUpdateToUserInitiatedStatus
{
  v34 = *MEMORY[0x277D85DE8];
  v32 = self;
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
    v25 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v32 currentUIState]);
    v10 = MEMORY[0x277D82BE0](v25);
    v28 = v10;
    v11 = [(SUSUISoftwareUpdateController *)v32 currentUIState];
    v24 = [(SUSUISoftwareUpdateController *)v32 presentingStatefulDescriptor];
    v23 = [(SUSUISoftwareUpdateController *)v32 presentingStatefulDescriptor];
    v22 = [(SUSUISoftwareUpdateController *)v32 presentingAlternateStatefulDescriptor];
    v21 = [(SUSUISoftwareUpdateController *)v32 presentingAlternateStatefulDescriptor];
    v20 = [(SUSUISoftwareUpdateController *)v32 manager];
    v19 = [(SUSettingsStatefulUIManager *)v20 currentDownload];
    v18 = [(SUDownload *)v19 descriptor];
    v17 = [(SUDescriptor *)v18 humanReadableUpdateName];
    v8 = MEMORY[0x277D82BE0](v17);
    v27 = v8;
    v16 = [(SUSUISoftwareUpdateController *)v32 manager];
    v15 = [(SUSettingsStatefulUIManager *)v16 currentDownload];
    v14 = [(SUSUISoftwareUpdateController *)v32 manager];
    v3 = [(SUSettingsStatefulUIManager *)v14 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!v3)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v33, "[SUSUISoftwareUpdateController(SoftwareUpdate) promoteTargetedUpdateToUserInitiatedStatus]", v9, v32, v10, v11, v24, v23, v22, v21, v8, v15, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v33, 0x7Au);
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
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
  }

  objc_storeStrong(v31, 0);
  v5 = v32;
  v6 = [(SUSUISoftwareUpdateController *)v32 installLaterTappedString];
  [(SUSUISoftwareUpdateController *)v5 submitAnalyticsEvent:?];
  MEMORY[0x277D82BD8](v6);
  v7 = [(SUSUISoftwareUpdateController *)v32 manager];
  [(SUSettingsStatefulUIManager *)v7 promoteTargetedUpdateToUserInitiatedStatus];
  MEMORY[0x277D82BD8](v7);
  *MEMORY[0x277D85DE8];
}

- (void)unscheduleTargetedUpdateAutomaticInstallation
{
  v34 = *MEMORY[0x277D85DE8];
  v32 = self;
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
    v25 = SUSettingsUIStateToString([(SUSUISoftwareUpdateController *)v32 currentUIState]);
    v10 = MEMORY[0x277D82BE0](v25);
    v28 = v10;
    v11 = [(SUSUISoftwareUpdateController *)v32 currentUIState];
    v24 = [(SUSUISoftwareUpdateController *)v32 presentingStatefulDescriptor];
    v23 = [(SUSUISoftwareUpdateController *)v32 presentingStatefulDescriptor];
    v22 = [(SUSUISoftwareUpdateController *)v32 presentingAlternateStatefulDescriptor];
    v21 = [(SUSUISoftwareUpdateController *)v32 presentingAlternateStatefulDescriptor];
    v20 = [(SUSUISoftwareUpdateController *)v32 manager];
    v19 = [(SUSettingsStatefulUIManager *)v20 currentDownload];
    v18 = [(SUDownload *)v19 descriptor];
    v17 = [(SUDescriptor *)v18 humanReadableUpdateName];
    v8 = MEMORY[0x277D82BE0](v17);
    v27 = v8;
    v16 = [(SUSUISoftwareUpdateController *)v32 manager];
    v15 = [(SUSettingsStatefulUIManager *)v16 currentDownload];
    v14 = [(SUSUISoftwareUpdateController *)v32 manager];
    v3 = [(SUSettingsStatefulUIManager *)v14 isTargetedUpdateScheduledForAutoInstall];
    v4 = "YES";
    if (!v3)
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_12_8_32_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_66_8_0_8_34(v33, "[SUSUISoftwareUpdateController(SoftwareUpdate) unscheduleTargetedUpdateAutomaticInstallation]", v9, v32, v10, v11, v24, v23, v22, v21, v8, v15, v4);
    _os_log_impl(&dword_26AC94000, log, type, "%s: Controller Checkpoint\n\tCaller: %{public}@ (%p)\n\tmanager currentUIState: %{public}@ (%ld)\n\tpresentingStatefulDescriptor: %{public}@ (%p)\n\tpresentingAlternateStatefulDescriptor: %{public}@ (%p)\n\ttargetedUpdateDownload: %{public}@ (%p)\n\ttargetedUpdateScheduled: %{public}s\n\n", v33, 0x7Au);
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
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
  }

  objc_storeStrong(v31, 0);
  v5 = v32;
  v6 = [(SUSUISoftwareUpdateController *)v32 installLaterTappedString];
  [(SUSUISoftwareUpdateController *)v5 submitAnalyticsEvent:?];
  MEMORY[0x277D82BD8](v6);
  v7 = [(SUSUISoftwareUpdateController *)v32 manager];
  [(SUSettingsStatefulUIManager *)v7 unscheduleTargetedUpdateAutomaticInstallation];
  MEMORY[0x277D82BD8](v7);
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

- (void)setShouldShowComingSoonTip:(BOOL)a3
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