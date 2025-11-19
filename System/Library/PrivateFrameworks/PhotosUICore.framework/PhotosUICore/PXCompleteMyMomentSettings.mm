@interface PXCompleteMyMomentSettings
+ (PXCompleteMyMomentSettings)sharedInstance;
+ (id)_enableAllCmmImprovementsAction;
+ (id)settingsControllerModule;
+ (id)transientProperties;
- (PXCMMWorkflowCoordinator)workflowCoordinator;
- (void)setDefaultValues;
- (void)workflowCoordinator:(id)a3 workflowViewController:(id)a4 didFinishSession:(id)a5 withActivityState:(unint64_t)a6;
@end

@implementation PXCompleteMyMomentSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXCompleteMyMomentSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXCompleteMyMomentSettings *)self setAlwaysSortAfterAddMore:0];
  [(PXCompleteMyMomentSettings *)self setInvitationsDataSourceType:0];
  [(PXCompleteMyMomentSettings *)self setPreventNilTitles:1];
  [(PXCompleteMyMomentSettings *)self setSimulateMomentShareCreationError:0];
  [(PXCompleteMyMomentSettings *)self setSimulatedMomentShareCreationErrorType:0];
  [(PXCompleteMyMomentSettings *)self setShowTitle:1];
  [(PXCompleteMyMomentSettings *)self setShowSubtitle:0];
  [(PXCompleteMyMomentSettings *)self setShowOtherTitle:0];
  [(PXCompleteMyMomentSettings *)self setShowMessage:0];
  [(PXCompleteMyMomentSettings *)self setShowSenderField:0];
  [(PXCompleteMyMomentSettings *)self setShowPeopleSuggestions:0];
  [(PXCompleteMyMomentSettings *)self setShowMergeCandidateSuggestionsAfterBootstrapNaming:0];
  [(PXCompleteMyMomentSettings *)self setReviewFlow:0];
  [(PXCompleteMyMomentSettings *)self setInitialLayoutType:0];
  [(PXCompleteMyMomentSettings *)self setAllowLayoutTransitionGesture:0];
  [(PXCompleteMyMomentSettings *)self setPublishTransport:0];
  [(PXCompleteMyMomentSettings *)self setPeopleSuggestionsDataSourceType:1];
  [(PXCompleteMyMomentSettings *)self setShouldShowInlineAddButton:1];
  [(PXCompleteMyMomentSettings *)self setAllowOneUpGesture:1];
  [(PXCompleteMyMomentSettings *)self setShowFloatingBanner:1];
  [(PXCompleteMyMomentSettings *)self setShowProgressInGrid:0];
  [(PXCompleteMyMomentSettings *)self setAllowSwipeSelection:1];
  [(PXCompleteMyMomentSettings *)self setSimulateImport:0];
  [(PXCompleteMyMomentSettings *)self setSimulateImportFailure:0];
  [(PXCompleteMyMomentSettings *)self setShowProgressBannerView:0];
  [(PXCompleteMyMomentSettings *)self setShowProgressBannerViewPaused:0];
  [(PXCompleteMyMomentSettings *)self setShowAttachedHeaderView:1];
  [(PXCompleteMyMomentSettings *)self setShowSectionHeaders:1];
  [(PXCompleteMyMomentSettings *)self setSectionHeadersShouldFloat:0];
  [(PXCompleteMyMomentSettings *)self setShowStatusFooter:1];
  [(PXCompleteMyMomentSettings *)self setDirectSendMessages:0];
  [(PXCompleteMyMomentSettings *)self setFakeMomentShareURL:0];
  [(PXCompleteMyMomentSettings *)self setAutoAcceptBubbles:0];
  [(PXCompleteMyMomentSettings *)self setSimulateDelays:0];
  [(PXCompleteMyMomentSettings *)self setShowURLInBubble:0];
  [(PXCompleteMyMomentSettings *)self setShowDebugStatus:0];
  [(PXCompleteMyMomentSettings *)self setAlwaysTapToRetry:0];
  [(PXCompleteMyMomentSettings *)self setOverrideNumberOfColumnsInPortrait:0];
  [(PXCompleteMyMomentSettings *)self setOverrideNumberOfColumnsInLandscape:0];
  [(PXCompleteMyMomentSettings *)self setUseDebugColors:0];
  [(PXCompleteMyMomentSettings *)self setSimulateMomentShareBubbleError:0];
  [(PXCompleteMyMomentSettings *)self setSimulatedMomentShareBubbleErrorType:0];
  [(PXCompleteMyMomentSettings *)self setShowMessageTextEntryGadget:0];
  [(PXCompleteMyMomentSettings *)self setSharingLinkType:0];
  [(PXCompleteMyMomentSettings *)self setGraphSuggestionEnabled:1];
  [(PXCompleteMyMomentSettings *)self setPeopleSuggestionsTimeout:1.0];
  [(PXCompleteMyMomentSettings *)self setCmmShareSheetBehavior:1];
  [(PXCompleteMyMomentSettings *)self setDisableShareSheetAutomaticBehaviorIfADPEnabled:0];
  [(PXCompleteMyMomentSettings *)self setShareSheetLinkAssetCountThreshold:12];
  [(PXCompleteMyMomentSettings *)self setShareSheetLinkTotalFileSizeThresholdMB:400];
  [(PXCompleteMyMomentSettings *)self setShareSheetLinkSpatialVideoFileSizeThresholdMB:100];
  [(PXCompleteMyMomentSettings *)self setShareSheetLinkSpatialImageFileSizeThresholdMB:20];
  [(PXCompleteMyMomentSettings *)self setShouldBakeInIfLivePhotoPlaybackDisabled:1];
  [(PXCompleteMyMomentSettings *)self setShouldBakeInIfLivePhotoMuted:1];
  [(PXCompleteMyMomentSettings *)self setShouldBakeInIfAdjustedByThirdParty:1];
  [(PXCompleteMyMomentSettings *)self setShouldBakeInIfCropped:1];
  [(PXCompleteMyMomentSettings *)self setShouldBakeInIfTimelineTrimmed:1];
  [(PXCompleteMyMomentSettings *)self setShouldBakeInIfPortraitDepthEffectEnabled:0];
  [(PXCompleteMyMomentSettings *)self setShouldBakeInIfContainsPenultimateResources:1];
  [(PXCompleteMyMomentSettings *)self setShouldIncludeSpatialOvercaptureResources:0];
  [(PXCompleteMyMomentSettings *)self setSimulateShouldPromptUserToIgnoreBudgets:0];
  [(PXCompleteMyMomentSettings *)self setSimulateCPLAlertOnPublish:0];
  [(PXCompleteMyMomentSettings *)self setEmulatesEmptyMomentShare:0];
  [(PXCompleteMyMomentSettings *)self setDisableDescriptiveWaiting:0];
  [(PXCompleteMyMomentSettings *)self setDisableOneUpDescriptiveAdd:0];
  [(PXCompleteMyMomentSettings *)self setDisableClickyOrb:0];
  [(PXCompleteMyMomentSettings *)self setDisablePrintAction:0];
  [(PXCompleteMyMomentSettings *)self setDisableShareAction:0];
  [(PXCompleteMyMomentSettings *)self setDisableShowInAllPhotosAction:0];
  [(PXCompleteMyMomentSettings *)self setDisableCopyAction:0];
  [(PXCompleteMyMomentSettings *)self setDisableDetailView:0];
  [(PXCompleteMyMomentSettings *)self setSimulateAllMomentSharesAreNew:0];
  [(PXCompleteMyMomentSettings *)self setSimulateFeatureFlagState:0];
  [(PXCompleteMyMomentSettings *)self setSimulateCloudState:0];
  [(PXCompleteMyMomentSettings *)self setSimulateCloudPhotosState:0];
  [(PXCompleteMyMomentSettings *)self setSimulateCPLFeatureState:0];
  [(PXCompleteMyMomentSettings *)self setSimulateCPLCMMFeatureState:0];
  [(PXCompleteMyMomentSettings *)self setSimulateSystemPhotoLibraryState:0];
  [(PXCompleteMyMomentSettings *)self setSimulateCloudPhotosExitState:0];
}

- (void)workflowCoordinator:(id)a3 workflowViewController:(id)a4 didFinishSession:(id)a5 withActivityState:(unint64_t)a6
{
  v7 = a4;
  v8 = [(PXCompleteMyMomentSettings *)self workflowCoordinator];
  [v8 setDelegate:0];

  [(PXCompleteMyMomentSettings *)self setWorkflowCoordinator:0];
  v9 = [v7 presentingViewController];

  [v9 dismissViewControllerAnimated:1 completion:0];
}

- (PXCMMWorkflowCoordinator)workflowCoordinator
{
  v3 = objc_getAssociatedObject(self, PXCMMWorkflowCoordinatorAssociationKey);
  if (!v3)
  {
    v3 = objc_alloc_init(PXCMMWorkflowCoordinator);
    [(PXCMMWorkflowCoordinator *)v3 setDelegate:self];
    objc_setAssociatedObject(self, PXCMMWorkflowCoordinatorAssociationKey, v3, 1);
  }

  return v3;
}

+ (id)_enableAllCmmImprovementsAction
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__PXCompleteMyMomentSettings_UI___enableAllCmmImprovementsAction__block_invoke;
  v4[3] = &__block_descriptor_48_e33_B24__0_8__PTUIModuleController_16l;
  v4[4] = a2;
  v4[5] = a1;
  v2 = [MEMORY[0x1E69C6658] actionWithHandler:v4];

  return v2;
}

uint64_t __65__PXCompleteMyMomentSettings_UI___enableAllCmmImprovementsAction__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 settings];
  if (!v4)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v6 handleFailureInMethod:v7 object:v8 file:@"PXCompleteMyMomentSettings+UI.m" lineNumber:264 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"moduleController.settings", v10}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = objc_opt_class();
    v10 = NSStringFromClass(v13);
    v14 = [v4 px_descriptionForAssertionMessage];
    [v6 handleFailureInMethod:v11 object:v12 file:@"PXCompleteMyMomentSettings+UI.m" lineNumber:264 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"moduleController.settings", v10, v14}];

    goto LABEL_6;
  }

LABEL_3:
  [v4 setDisableDescriptiveWaiting:0];
  [v4 setDisableOneUpDescriptiveAdd:0];
  [v4 setDisableClickyOrb:0];
  [v4 setDisablePrintAction:0];
  [v4 setDisableShareAction:0];
  [v4 setDisableShowInAllPhotosAction:0];
  [v4 setDisableCopyAction:0];
  [v4 setDisableDetailView:0];

  return 1;
}

+ (id)transientProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PXCompleteMyMomentSettings_UI__transientProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (transientProperties_onceToken_97173 != -1)
  {
    dispatch_once(&transientProperties_onceToken_97173, block);
  }

  v2 = transientProperties_transientProperties_97174;

  return v2;
}

void __53__PXCompleteMyMomentSettings_UI__transientProperties__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___PXCompleteMyMomentSettings;
  v1 = objc_msgSendSuper2(&v5, sel_transientProperties);
  v2 = NSStringFromSelector(sel_workflowCoordinator);
  v3 = [v1 setByAddingObject:v2];
  v4 = transientProperties_transientProperties_97174;
  transientProperties_transientProperties_97174 = v3;
}

+ (id)settingsControllerModule
{
  v210[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Share Sheet Behavior" valueKeyPath:@"cmmShareSheetBehavior"];
  v4 = [v3 possibleValues:&unk_1F19107C8 titles:&unk_1F19107E0];
  v210[0] = v4;
  v5 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Asset Count Threshold" valueKeyPath:@"shareSheetLinkAssetCountThreshold"];
  v6 = [v5 minValue:0.0 maxValue:20.0];
  v7 = [v6 px_increment:1.0];
  v210[1] = v7;
  v8 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Asset Total Size Threshold (MB)" valueKeyPath:@"shareSheetLinkTotalFileSizeThresholdMB"];
  v9 = [v8 minValue:0.0 maxValue:500.0];
  v10 = [v9 px_increment:10.0];
  v210[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v210 count:3];
  v197 = [v2 sectionWithRows:v11 title:@"Share Sheet"];

  v12 = MEMORY[0x1E69C6638];
  v13 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Sharing Link Type" valueKeyPath:@"sharingLinkType"];
  v14 = [v13 possibleValues:&unk_1F19107F8 titles:&unk_1F1910810];
  v209[0] = v14;
  v15 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable Graph Suggestions" valueKeyPath:@"graphSuggestionEnabled"];
  v209[1] = v15;
  v16 = MEMORY[0x1E69C66A0];
  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"graphSuggestionEnabled == YES"];
  v18 = [v16 px_rowWithTitle:@"People Graph Timeout" valueKeyPath:@"peopleSuggestionsTimeout" condition:v17];
  v19 = [v18 minValue:0.0 maxValue:10.0];
  v20 = [v19 px_increment:1.0];
  v209[2] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v209 count:3];
  v196 = [v12 sectionWithRows:v21 title:@"Compose Recipient Settings"];

  v173 = MEMORY[0x1E69C6638];
  v191 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Publish Transport" valueKeyPath:@"publishTransport"];
  v188 = [v191 possibleValues:&unk_1F1910828 titles:&unk_1F1910840];
  v208[0] = v188;
  v185 = [MEMORY[0x1E69C65F8] rowWithTitle:@"People Suggestions DS" valueKeyPath:@"peopleSuggestionsDataSourceType"];
  v182 = [v185 possibleValues:&unk_1F1910858 titles:&unk_1F1910870];
  v208[1] = v182;
  v179 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Initial grid layout" valueKeyPath:@"initialLayoutType"];
  v176 = [v179 possibleValues:&unk_1F1910888 titles:&unk_1F19108A0];
  v208[2] = v176;
  v169 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Allow one up" valueKeyPath:@"allowOneUpGesture"];
  v208[3] = v169;
  v165 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Allow Swipe Selection" valueKeyPath:@"allowSwipeSelection"];
  v208[4] = v165;
  v162 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Disable Descriptive Add" valueKeyPath:@"disableOneUpDescriptiveAdd"];
  v208[5] = v162;
  v158 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Disable Descriptive Waiting" valueKeyPath:@"disableDescriptiveWaiting"];
  v208[6] = v158;
  v153 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Disable Clicky Orb" valueKeyPath:@"disableClickyOrb"];
  v208[7] = v153;
  v148 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Disable Share Action" valueKeyPath:@"disableShareAction"];
  v208[8] = v148;
  v22 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Disable Print Action" valueKeyPath:@"disablePrintAction"];
  v208[9] = v22;
  v23 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Disable Show in All Photos" valueKeyPath:@"disableShowInAllPhotosAction"];
  v208[10] = v23;
  v24 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Disable Copy Action" valueKeyPath:@"disableCopyAction"];
  v208[11] = v24;
  v25 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Disable Detail View" valueKeyPath:@"disableDetailView"];
  v208[12] = v25;
  v26 = MEMORY[0x1E69C65E8];
  v27 = [a1 _enableAllCmmImprovementsAction];
  v28 = [v26 rowWithTitle:@"Enable Azul CMM Additions" action:v27];
  v29 = [a1 _enabledAllCmmImprovementsActionPredicate];
  v30 = [v28 condition:v29];
  v208[13] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v208 count:14];
  v195 = [v173 sectionWithRows:v31 title:@"Review Settings"];

  v192 = MEMORY[0x1E69C6638];
  v32 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Empty Moment Share" valueKeyPath:@"emulatesEmptyMomentShare"];
  v207[0] = v32;
  v33 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Budget Prompt During Publish" valueKeyPath:@"simulateShouldPromptUserToIgnoreBudgets"];
  v207[1] = v33;
  v34 = [MEMORY[0x1E69C66A8] rowWithTitle:@"CPL Alert During Publish" valueKeyPath:@"simulateCPLAlertOnPublish"];
  v207[2] = v34;
  v35 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Asset Import" valueKeyPath:@"simulateImport"];
  v207[3] = v35;
  v36 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Import Failure" valueKeyPath:@"simulateImportFailure"];
  v37 = [MEMORY[0x1E696AE18] predicateWithFormat:@"simulateImport == YES"];
  v38 = [v36 condition:v37];
  v207[4] = v38;
  v39 = MEMORY[0x1E69C66A8];
  v40 = NSStringFromSelector(sel_simulateAllMomentSharesAreNew);
  v41 = [v39 rowWithTitle:@"All Moment Shares Are New" valueKeyPath:v40];
  v207[5] = v41;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v207 count:6];
  v193 = [v192 sectionWithRows:v42 title:@"Simulation"];

  v189 = MEMORY[0x1E69C6638];
  v186 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Review Flow" valueKeyPath:@"reviewFlow"];
  v183 = [v186 possibleValues:&unk_1F19108B8 titles:&unk_1F19108D0];
  v206[0] = v183;
  v180 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Layout transition gesture" valueKeyPath:@"allowLayoutTransitionGesture"];
  v206[1] = v180;
  v177 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Assets Data Source" valueKeyPath:@"reviewFlowDataSourceType"];
  v174 = [v177 possibleValues:&unk_1F19108E8 titles:&unk_1F1910900];
  v206[2] = v174;
  v170 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Inline Header View" valueKeyPath:@"showAttachedHeaderView"];
  v206[3] = v170;
  v166 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Floating Banner" valueKeyPath:@"showFloatingBanner"];
  v206[4] = v166;
  v43 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Section Headers" valueKeyPath:@"showSectionHeaders"];
  v206[5] = v43;
  v44 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Section Headers Float" valueKeyPath:@"sectionHeadersShouldFloat"];
  v206[6] = v44;
  v45 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Progress in Grid" valueKeyPath:@"showProgressInGrid"];
  v206[7] = v45;
  v46 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Inline add button" valueKeyPath:@"shouldShowInlineAddButton"];
  v206[8] = v46;
  v47 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Always Sort All after AddMore" valueKeyPath:@"alwaysSortAfterAddMore"];
  v206[9] = v47;
  v48 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Progress Banner View" valueKeyPath:@"showProgressBannerView"];
  v206[10] = v48;
  v49 = MEMORY[0x1E69C66A8];
  v50 = [MEMORY[0x1E696AE18] predicateWithFormat:@"showProgressBannerView == YES"];
  v51 = [v49 px_rowWithTitle:@"Show Progress Banner View Paused" valueKeyPath:@"showProgressBannerViewPaused" condition:v50];
  v206[11] = v51;
  v52 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Test Review Flow" action:&__block_literal_global_97261];
  v206[12] = v52;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v206 count:13];
  v190 = [v189 sectionWithRows:v53 title:@"Review UI Debug"];

  v54 = MEMORY[0x1E69C6638];
  v55 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Datasource" valueKeyPath:@"invitationsDataSourceType"];
  v56 = [v55 possibleValues:&unk_1F1910918 titles:&unk_1F1910930];
  v205[0] = v56;
  v57 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Prevent Nil Titles" valueKeyPath:@"preventNilTitles"];
  v205[1] = v57;
  v58 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Simulate Going-To-Expire CMM Notification" action:&__block_literal_global_593];
  v205[2] = v58;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v205 count:3];
  v181 = [v54 sectionWithRows:v59 title:@"Invitations"];

  v187 = PXCMMSettingsSimulateFetchErrorTypes();
  v184 = PXCMMSettingsSimulateFetchErrorTypeTitles();
  v60 = PXCMMSettingsSimulateErrorTypes();
  v61 = PXCMMSettingsSimulateErrorTypeTitles();
  v171 = MEMORY[0x1E69C6638];
  v62 = MEMORY[0x1E69C65F8];
  v167 = NSStringFromSelector(sel_simulateFetchErrorType);
  v163 = [v62 rowWithTitle:@"Fetch Error" valueKeyPath:v167];
  v159 = [v163 possibleValues:v187 titles:v184];
  v204[0] = v159;
  v63 = MEMORY[0x1E69C66A8];
  v154 = NSStringFromSelector(sel_simulateMomentShareCreationError);
  v149 = [v63 rowWithTitle:@"Create Error" valueKeyPath:v154];
  v204[1] = v149;
  v64 = MEMORY[0x1E69C65F8];
  v144 = NSStringFromSelector(sel_simulatedMomentShareCreationErrorType);
  v141 = [v64 rowWithTitle:@"Create Error Type" valueKeyPath:v144];
  v65 = v60;
  v175 = v61;
  v178 = v60;
  v138 = [v141 possibleValues:v60 titles:v61];
  v66 = [MEMORY[0x1E696AE18] predicateWithFormat:@"simulateMomentShareCreationError != 0"];
  v67 = [v138 condition:v66];
  v204[2] = v67;
  v68 = MEMORY[0x1E69C66A8];
  v69 = NSStringFromSelector(sel_simulateMomentShareBubbleError);
  v70 = [v68 rowWithTitle:@"Message Bubble Error" valueKeyPath:v69];
  v204[3] = v70;
  v71 = MEMORY[0x1E69C65F8];
  v72 = NSStringFromSelector(sel_simulatedMomentShareBubbleErrorType);
  v73 = [v71 rowWithTitle:@"Message Bubble Error Type" valueKeyPath:v72];
  v74 = [v73 possibleValues:v65 titles:v61];
  v75 = [MEMORY[0x1E696AE18] predicateWithFormat:@"simulateMomentShareBubbleError != 0"];
  v76 = [v74 condition:v75];
  v204[4] = v76;
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v204 count:5];
  v172 = [v171 sectionWithRows:v77 title:@"Error Simulation"];

  v78 = PXCMMSimulateCapabilitySourceStates();
  v79 = PXCMMSimulateCapabilitySourceStateTitles();
  v160 = MEMORY[0x1E69C6638];
  v80 = MEMORY[0x1E69C65F8];
  v155 = NSStringFromSelector(sel_simulateFeatureFlagState);
  v150 = [v80 rowWithTitle:@"Feature Flag State" valueKeyPath:v155];
  v145 = [v150 possibleValues:v78 titles:v79];
  v203[0] = v145;
  v81 = MEMORY[0x1E69C65F8];
  v142 = NSStringFromSelector(sel_simulateCloudState);
  v139 = [v81 rowWithTitle:@"Cloud State" valueKeyPath:v142];
  v136 = [v139 possibleValues:v78 titles:v79];
  v203[1] = v136;
  v82 = MEMORY[0x1E69C65F8];
  v135 = NSStringFromSelector(sel_simulateCloudPhotosState);
  v134 = [v82 rowWithTitle:@"Cloud Photos State" valueKeyPath:v135];
  v133 = [v134 possibleValues:v78 titles:v79];
  v203[2] = v133;
  v83 = MEMORY[0x1E69C65F8];
  v132 = NSStringFromSelector(sel_simulateCPLFeatureState);
  v131 = [v83 rowWithTitle:@"CPL Feature State" valueKeyPath:v132];
  v130 = [v131 possibleValues:v78 titles:v79];
  v203[3] = v130;
  v84 = MEMORY[0x1E69C65F8];
  v129 = NSStringFromSelector(sel_simulateCPLCMMFeatureState);
  v85 = [v84 rowWithTitle:@"CPL CMM Feature State" valueKeyPath:v129];
  v86 = v79;
  v87 = [v85 possibleValues:v78 titles:v79];
  v203[4] = v87;
  v88 = MEMORY[0x1E69C65F8];
  v89 = NSStringFromSelector(sel_simulateSystemPhotoLibraryState);
  v90 = [v88 rowWithTitle:@"System Photo Library State" valueKeyPath:v89];
  v164 = v86;
  v168 = v78;
  v91 = v86;
  v92 = [v90 possibleValues:v78 titles:v86];
  v203[5] = v92;
  v93 = MEMORY[0x1E69C65F8];
  v94 = NSStringFromSelector(sel_simulateCloudPhotosExitState);
  v95 = [v93 rowWithTitle:@"CPL Exit State" valueKeyPath:v94];
  v96 = [v95 possibleValues:v78 titles:v91];
  v203[6] = v96;
  v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v203 count:7];
  v161 = [v160 sectionWithRows:v97 title:@"Capabilities Simulation"];

  v156 = MEMORY[0x1E69C6638];
  v151 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Direct Send" valueKeyPath:@"directSendMessages"];
  v202[0] = v151;
  v146 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Fake PHMomentShare URL" valueKeyPath:@"fakeMomentShareURL"];
  v202[1] = v146;
  v143 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Auto Accept Bubbles" valueKeyPath:@"autoAcceptBubbles"];
  v202[2] = v143;
  v140 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Simulate Delays" valueKeyPath:@"simulateDelays"];
  v202[3] = v140;
  v137 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show URL In Bubble" valueKeyPath:@"showURLInBubble"];
  v202[4] = v137;
  v98 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Debug Status" valueKeyPath:@"showDebugStatus"];
  v202[5] = v98;
  v99 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Always Tap to Retry" valueKeyPath:@"alwaysTapToRetry"];
  v202[6] = v99;
  v100 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Columns in Portrait (Override)" valueKeyPath:@"overrideNumberOfColumnsInPortrait"];
  v101 = [v100 minValue:0.0 maxValue:8.0];
  v102 = [v101 px_increment:1.0];
  v202[7] = v102;
  v103 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Columns in Landscape (Override)" valueKeyPath:@"overrideNumberOfColumnsInLandscape"];
  v104 = [v103 minValue:0.0 maxValue:8.0];
  v105 = [v104 px_increment:1.0];
  v202[8] = v105;
  v106 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Debug Colors" valueKeyPath:@"useDebugColors"];
  v202[9] = v106;
  v107 = [MEMORY[0x1E695DEC8] arrayWithObjects:v202 count:10];
  v157 = [v156 sectionWithRows:v107 title:@"Messages Extension"];

  v108 = MEMORY[0x1E69C6638];
  v109 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Message Text Entry" valueKeyPath:@"showMessageTextEntryGadget"];
  v201 = v109;
  v110 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v201 count:1];
  v152 = [v108 sectionWithRows:v110 title:@"Messages Debug Sections"];

  v111 = MEMORY[0x1E69C6638];
  v112 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Live Photo Disabled" valueKeyPath:@"shouldBakeInIfLivePhotoPlaybackDisabled"];
  v200[0] = v112;
  v113 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Live Photo Muted" valueKeyPath:@"shouldBakeInIfLivePhotoMuted"];
  v200[1] = v113;
  v114 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Has 3rd Party Adjustments" valueKeyPath:@"shouldBakeInIfAdjustedByThirdParty"];
  v200[2] = v114;
  v115 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Cropped" valueKeyPath:@"shouldBakeInIfCropped"];
  v200[3] = v115;
  v116 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Timeline Trimmed" valueKeyPath:@"shouldBakeInIfTimelineTrimmed"];
  v200[4] = v116;
  v117 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Portrait Effect Applied" valueKeyPath:@"shouldBakeInIfPortraitDepthEffectEnabled"];
  v200[5] = v117;
  v118 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Has Penultimate Resources" valueKeyPath:@"shouldBakeInIfContainsPenultimateResources"];
  v200[6] = v118;
  v119 = [MEMORY[0x1E695DEC8] arrayWithObjects:v200 count:7];
  v147 = [v111 sectionWithRows:v119 title:@"Automatically Bake In Adjustments If:"];

  v120 = MEMORY[0x1E69C6638];
  v121 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Include Spatial Overcapture Resources" valueKeyPath:@"shouldIncludeSpatialOvercaptureResources"];
  v199 = v121;
  v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v199 count:1];
  v123 = [v120 sectionWithRows:v122 title:@"Asset Creation Options"];

  v124 = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v198[0] = v197;
  v198[1] = v195;
  v198[2] = v193;
  v198[3] = v196;
  v198[4] = v190;
  v198[5] = v181;
  v198[6] = v172;
  v198[7] = v161;
  v198[8] = v157;
  v198[9] = v152;
  v198[10] = v147;
  v125 = [MEMORY[0x1E695DEC8] arrayWithObjects:v198 count:11];
  v126 = [v125 mutableCopy];

  [v126 addObject:v123];
  [v126 addObject:v124];
  v127 = [MEMORY[0x1E69C6638] moduleWithTitle:@"Complete My Moment" contents:v126];

  return v127;
}

void __58__PXCompleteMyMomentSettings_UI__settingsControllerModule__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E6978930] invitedMomentSharesExpiringInDays:50];
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__97425;
    v19 = __Block_byref_object_dispose__97426;
    v20 = 0;
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__PXCompleteMyMomentSettings_UI__settingsControllerModule__block_invoke_596;
    v12[3] = &unk_1E7738000;
    v7 = v6;
    v13 = v7;
    v14 = &v15;
    [v3 enumerateObjectsUsingBlock:v12];
    if (v5 == 1)
    {
      v8 = @"You have an invitation that is about to expire.";
    }

    else
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"You have %lu invitations that are about to expire.", v5];
    }

    v9 = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
    v10 = [v9 assetsdClient];
    v11 = [v10 notificationClient];

    [v11 asyncNotifyExpiringMomentShareWithUUIDs:v7 thumbnailImageData:v16[5] notificationTitle:@"Complete My Moment" notificationSubtitle:v8];
    _Block_object_dispose(&v15, 8);
  }
}

void __58__PXCompleteMyMomentSettings_UI__settingsControllerModule__block_invoke_596(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = v3;
  v5 = [v3 uuid];
  [v4 addObject:v5];

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [v11 preview];
    v7 = [v6 previewImageData];
    v8 = [v7 firstObject];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void __58__PXCompleteMyMomentSettings_UI__settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69789A8];
  v3 = a2;
  v4 = [v2 px_deprecated_appPhotoLibrary];
  v11 = 0;
  v5 = PXCMMCreateDebugCMMContext(v4, &v11);
  v6 = v11;

  if (v5)
  {
    v7 = +[PXCompleteMyMomentSettings sharedInstance];
    v8 = [v7 workflowCoordinator];

    v9 = [v8 workflowViewControllerWithContext:v5 embedInNavigationControllerOfClass:objc_opt_class()];
  }

  else
  {
    v8 = [v6 debugDescription];
    v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"No context was created" message:v8 preferredStyle:1];
    v10 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
    [v9 addAction:v10];
  }

  [v3 presentViewController:v9 animated:1 completion:0];
}

+ (PXCompleteMyMomentSettings)sharedInstance
{
  if (sharedInstance_onceToken_118527 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_118527, &__block_literal_global_118528);
  }

  v3 = sharedInstance_sharedInstance_118529;

  return v3;
}

void __44__PXCompleteMyMomentSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 completeMyMoment];
  v1 = sharedInstance_sharedInstance_118529;
  sharedInstance_sharedInstance_118529 = v0;
}

@end