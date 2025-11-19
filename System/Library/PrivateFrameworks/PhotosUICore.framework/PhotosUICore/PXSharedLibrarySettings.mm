@interface PXSharedLibrarySettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (void)setDefaultValues;
@end

@implementation PXSharedLibrarySettings

- (void)setDefaultValues
{
  v21.receiver = self;
  v21.super_class = PXSharedLibrarySettings;
  [(PTSettings *)&v21 setDefaultValues];
  [(PXSharedLibrarySettings *)self setShowPreviewCancelButton:0];
  [(PXSharedLibrarySettings *)self setShowMoveToLibraryActionsInShareSheet:0];
  [(PXSharedLibrarySettings *)self setShowSwitchLibraryActionsInActionButton:0];
  [(PXSharedLibrarySettings *)self setShowPersonalLibraryContentOnly:1];
  [(PXSharedLibrarySettings *)self setAlwaysConfirmMoveToSharedLibrary:0];
  [(PXSharedLibrarySettings *)self setAlwaysConfirmMoveToPersonalLibrary:0];
  [(PXSharedLibrarySettings *)self setAlwaysConfirmRemoveSharedLibrarySuggestion:0];
  [(PXSharedLibrarySettings *)self setConfirmMoveToPersonalLibraryFromSharedLibraryPreview:0];
  [(PXSharedLibrarySettings *)self setEnableIncompleteUIElements:0];
  v3 = MEMORY[0x1A590D320]([(PXSharedLibrarySettings *)self setEnableAutoShareWithParticipants:0]);
  v4 = 0;
  if ((v3 & 1) == 0)
  {
    v4 = _os_feature_enabled_impl() ^ 1;
  }

  [(PXSharedLibrarySettings *)self setEnableOneUpBadge:v4];
  [(PXSharedLibrarySettings *)self setMockPersonSuggestionForSetupAssistant:0];
  [(PXSharedLibrarySettings *)self setInvitationsDataSourceType:0];
  [(PXSharedLibrarySettings *)self setPreviewDataSourceType:0];
  [(PXSharedLibrarySettings *)self setSharedLibraryDataSourceType:0];
  [(PXSharedLibrarySettings *)self setExitingDataSourceType:0];
  [(PXSharedLibrarySettings *)self setSourceLibraryInfoType:0];
  [(PXSharedLibrarySettings *)self setSimulateErrorType:0];
  [(PXSharedLibrarySettings *)self setShowSampleGadgets:0];
  [(PXSharedLibrarySettings *)self setShowDebugAlbums:0];
  v5 = PXSharedUserDefaults();
  v6 = [v5 objectForKey:@"PXSharedLibrarySharingSuggestionsBannerFirstCheckThreshold"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 integerValue] < 0)
  {
    v7 = 7;
  }

  else
  {
    v7 = [v6 integerValue];
  }

  [(PXSharedLibrarySettings *)self setSharingSuggestionsBannerFirstCheckThreshold:v7];
  v8 = PXSharedUserDefaults();
  v9 = [v8 objectForKey:@"PXSharedLibrarySharingSuggestionsBannerUnreadCountThreshold"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 integerValue] >= 1)
  {
    v10 = [v9 integerValue];
  }

  else
  {
    v10 = 10;
  }

  [(PXSharedLibrarySettings *)self setSharingSuggestionsBannerUnreadCountThreshold:v10];
  [(PXSharedLibrarySettings *)self setSharingSuggestionsLegibilityStrength:0.8];
  v11 = PXSharedUserDefaults();
  v12 = [v11 objectForKey:@"PXSharedLibrarySharingSuggestionsMinimumTimeSinceLastBannerDismiss"];

  objc_opt_class();
  v13 = 86400.0;
  if (objc_opt_isKindOfClass())
  {
    [v12 doubleValue];
    if (v14 > 0.0)
    {
      [v12 doubleValue];
      v13 = v15;
    }
  }

  [(PXSharedLibrarySettings *)self setSharingSuggestionsMinimumTimeSinceLastBannerDismiss:v13];
  v16 = PXSharedUserDefaults();
  v17 = [v16 objectForKey:@"PXSharedLibrarySharingSuggestionsMinimumTimeSinceLastAsset"];

  objc_opt_class();
  v18 = 7200.0;
  if (objc_opt_isKindOfClass())
  {
    [v17 doubleValue];
    if (v19 > 0.0)
    {
      [v17 doubleValue];
      v18 = v20;
    }
  }

  [(PXSharedLibrarySettings *)self setSharingSuggestionsMinimumTimeSinceLastAsset:v18];
  [(PXSharedLibrarySettings *)self setForceLegacyDevicesFallback:0];
  [(PXSharedLibrarySettings *)self setIncludeNonLegacyDevicesInFallback:0];
  [(PXSharedLibrarySettings *)self setSimulateSlowLegacyDevicesFetchInFallback:0];
  [(PXSharedLibrarySettings *)self setSimulateLegacyDevicesRemoteFailure:0];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_72458 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_72458, &__block_literal_global_72459);
  }

  v3 = sharedInstance_sharedInstance_72460;

  return v3;
}

void __41__PXSharedLibrarySettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 sharedLibrarySettings];
  v1 = sharedInstance_sharedInstance_72460;
  sharedInstance_sharedInstance_72460 = v0;
}

+ (id)settingsControllerModule
{
  v193[1] = *MEMORY[0x1E69E9840];
  v2 = _os_feature_enabled_impl();
  v3 = MEMORY[0x1E69C65E8];
  v4 = @"Disabled";
  if (v2)
  {
    v4 = @"Enabled";
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", @"GoldilocksLocalMode", v4];
  v6 = _FeatureFlagToggleRowAction(@"GoldilocksLocalMode");
  v7 = [v3 rowWithTitle:v5 action:v6];

  if (v2)
  {
    [MEMORY[0x1E69DC888] systemGreenColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGrayColor];
  }
  v181 = ;
  v8 = _ImageForStateAndBackgroundColor(v2, v181);
  [v7 setStaticImage:v8];

  v9 = MEMORY[0x1E69C6638];
  v182 = v7;
  v193[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v193 count:1];
  v184 = [v9 sectionWithRows:v10 title:@"Feature Flags Status"];

  v183 = PXSharedLibrarySettingsSimulateErrorTypes();
  v11 = PXSharedLibrarySettingsSimulateErrorTypeTitles();
  v178 = MEMORY[0x1E69C6638];
  v12 = MEMORY[0x1E69C66A8];
  v175 = NSStringFromSelector(sel_showMoveToLibraryActionsInShareSheet);
  v172 = [v12 rowWithTitle:@"Show Move Library Actions on Share Sheet" valueKeyPath:v175];
  v192[0] = v172;
  v13 = MEMORY[0x1E69C66A8];
  v168 = NSStringFromSelector(sel_showSwitchLibraryActionsInActionButton);
  v164 = [v13 rowWithTitle:@"Show Switch Library Actions on Action Button" valueKeyPath:v168];
  v192[1] = v164;
  v14 = MEMORY[0x1E69C66A8];
  v160 = NSStringFromSelector(sel_showPreviewCancelButton);
  v156 = [v14 rowWithTitle:@"Show Preview Cancel Button" valueKeyPath:v160];
  v192[2] = v156;
  v15 = MEMORY[0x1E69C66A8];
  v152 = NSStringFromSelector(sel_showPersonalLibraryContentOnly);
  v149 = [v15 rowWithTitle:@"Show Personal Library Only" valueKeyPath:v152];
  v192[3] = v149;
  v16 = MEMORY[0x1E69C66A8];
  v146 = NSStringFromSelector(sel_alwaysConfirmMoveToSharedLibrary);
  v144 = [v16 rowWithTitle:@"Always Confirm Move To Shared Library" valueKeyPath:v146];
  v192[4] = v144;
  v17 = MEMORY[0x1E69C66A8];
  v142 = NSStringFromSelector(sel_alwaysConfirmMoveToPersonalLibrary);
  v140 = [v17 rowWithTitle:@"Always Confirm Move To Personal Library" valueKeyPath:v142];
  v192[5] = v140;
  v18 = MEMORY[0x1E69C66A8];
  v138 = NSStringFromSelector(sel_alwaysConfirmRemoveSharedLibrarySuggestion);
  v136 = [v18 rowWithTitle:@"Always Confirm Remove Shared Library Suggestion" valueKeyPath:v138];
  v192[6] = v136;
  v19 = MEMORY[0x1E69C66A8];
  v134 = NSStringFromSelector(sel_confirmMoveToPersonalLibraryFromSharedLibraryPreview);
  v132 = [v19 rowWithTitle:@"Confirm Move To Personal Library from Preview" valueKeyPath:v134];
  v192[7] = v132;
  v20 = MEMORY[0x1E69C66A8];
  v131 = NSStringFromSelector(sel_enableIncompleteUIElements);
  v130 = [v20 rowWithTitle:@"Enable Incomplete UI" valueKeyPath:v131];
  v192[8] = v130;
  v21 = MEMORY[0x1E69C66A8];
  v129 = NSStringFromSelector(sel_enableAutoShareWithParticipants);
  v128 = [v21 rowWithTitle:@"Enable Auto Share with Participants" valueKeyPath:v129];
  v192[9] = v128;
  v22 = MEMORY[0x1E69C66A8];
  v23 = NSStringFromSelector(sel_enableOneUpBadge);
  v24 = [v22 rowWithTitle:@"Enable OneUp Badge" valueKeyPath:v23];
  v192[10] = v24;
  v25 = MEMORY[0x1E69C66A8];
  v26 = NSStringFromSelector(sel_showDebugAlbums);
  v27 = [v25 rowWithTitle:@"Show Debug Albums" valueKeyPath:v26];
  v192[11] = v27;
  v28 = MEMORY[0x1E69C66A8];
  v29 = NSStringFromSelector(sel_mockPersonSuggestionForSetupAssistant);
  v30 = [v28 rowWithTitle:@"Mock Person Suggestion" valueKeyPath:v29];
  v192[12] = v30;
  v31 = MEMORY[0x1E69C65F8];
  v32 = NSStringFromSelector(sel_simulateErrorType);
  v33 = [v31 rowWithTitle:@"Error Simulation" valueKeyPath:v32];
  v180 = v11;
  v34 = [v33 possibleValues:v183 titles:v11];
  v192[13] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v192 count:14];
  v179 = [v178 sectionWithRows:v35 title:@"Settings"];

  v176 = MEMORY[0x1E69C6638];
  v36 = MEMORY[0x1E69C65F8];
  v173 = NSStringFromSelector(sel_invitationsDataSourceType);
  v169 = [v36 rowWithTitle:@"Invitations" valueKeyPath:v173];
  v165 = [v169 possibleValues:&unk_1F1910A50 titles:&unk_1F1910A68];
  v191[0] = v165;
  v37 = MEMORY[0x1E69C65F8];
  v161 = NSStringFromSelector(sel_previewDataSourceType);
  v157 = [v37 rowWithTitle:@"Preview" valueKeyPath:v161];
  v153 = [v157 possibleValues:&unk_1F1910A80 titles:&unk_1F1910A98];
  v191[1] = v153;
  v38 = MEMORY[0x1E69C65F8];
  v39 = NSStringFromSelector(sel_sharedLibraryDataSourceType);
  v40 = [v38 rowWithTitle:@"Shared Library" valueKeyPath:v39];
  v41 = [v40 possibleValues:&unk_1F1910AB0 titles:&unk_1F1910AC8];
  v191[2] = v41;
  v42 = MEMORY[0x1E69C65F8];
  v43 = NSStringFromSelector(sel_exitingDataSourceType);
  v44 = [v42 rowWithTitle:@"Exiting" valueKeyPath:v43];
  v45 = [v44 possibleValues:&unk_1F1910AE0 titles:&unk_1F1910AF8];
  v191[3] = v45;
  v46 = MEMORY[0x1E69C65F8];
  v47 = NSStringFromSelector(sel_sourceLibraryInfoType);
  v48 = [v46 rowWithTitle:@"Source Library" valueKeyPath:v47];
  v49 = [v48 possibleValues:&unk_1F1910B10 titles:&unk_1F1910B28];
  v191[4] = v49;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v191 count:5];
  v177 = [v176 sectionWithRows:v50 title:@"Data Source"];

  v51 = MEMORY[0x1E69C6638];
  v52 = MEMORY[0x1E69C65E8];
  v53 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_498];
  v54 = [v52 rowWithTitle:@"Copy URL" action:v53];
  v190[0] = v54;
  v55 = MEMORY[0x1E69C65E8];
  v56 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_481];
  v57 = [v55 rowWithTitle:@"Reset Local Mode LibraryScopes" action:v56];
  v190[1] = v57;
  v58 = MEMORY[0x1E69C65E8];
  v59 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_113418];
  v60 = [v58 rowWithTitle:@"Reset Camera Sharing Preferences" action:v59];
  v190[2] = v60;
  v61 = MEMORY[0x1E69C65E8];
  v62 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_366_113420];
  v63 = [v61 rowWithTitle:@"Reset Invitation Dates" action:v62];
  v190[3] = v63;
  v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v190 count:4];
  v174 = [v51 sectionWithRows:v64 title:@"Actions"];

  v170 = MEMORY[0x1E69C6638];
  v65 = MEMORY[0x1E69C6680];
  v166 = NSStringFromSelector(sel_sharingSuggestionsBannerFirstCheckThreshold);
  v162 = [v65 rowWithTitle:@"Banner First Check Threshold" valueKeyPath:v166];
  v158 = [v162 minValue:0.0 maxValue:30.0];
  v154 = [v158 px_increment:1.0];
  v189[0] = v154;
  v66 = MEMORY[0x1E69C6680];
  v150 = NSStringFromSelector(sel_sharingSuggestionsBannerUnreadCountThreshold);
  v147 = [v66 rowWithTitle:@"Banner Unread Threshold" valueKeyPath:v150];
  v145 = [v147 minValue:0.0 maxValue:100.0];
  v143 = [v145 px_increment:5.0];
  v189[1] = v143;
  v67 = MEMORY[0x1E69C6680];
  v141 = NSStringFromSelector(sel_sharingSuggestionsMinimumTimeSinceLastBannerDismiss);
  v139 = [v67 rowWithTitle:@"Banner Timeout After Dismiss" valueKeyPath:v141];
  v137 = [v139 minValue:0.0 maxValue:604800.0];
  v135 = [v137 px_increment:86400.0];
  v189[2] = v135;
  v68 = MEMORY[0x1E69C6680];
  v133 = NSStringFromSelector(sel_sharingSuggestionsMinimumTimeSinceLastAsset);
  v69 = [v68 rowWithTitle:@"Banner Timeout After Last Asset" valueKeyPath:v133];
  v70 = [v69 minValue:0.0 maxValue:86400.0];
  v71 = [v70 px_increment:3600.0];
  v189[3] = v71;
  v72 = MEMORY[0x1E69C66A0];
  v73 = NSStringFromSelector(sel_sharingSuggestionsLegibilityStrength);
  v74 = [v72 rowWithTitle:@"Legibility Strength" valueKeyPath:v73];
  v75 = [v74 minValue:0.0 maxValue:2.0];
  v76 = [v75 px_increment:0.05];
  v189[4] = v76;
  v77 = MEMORY[0x1E69C65E8];
  v78 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_401_113428];
  v79 = [v77 rowWithTitle:@"Reset Stored Dates" action:v78];
  v189[5] = v79;
  v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v189 count:6];
  v171 = [v170 sectionWithRows:v80 title:@"Sharing Suggestions"];

  v81 = _os_feature_enabled_impl();
  v82 = MEMORY[0x1E69C65E8];
  if (v81)
  {
    v83 = @"Enabled";
  }

  else
  {
    v83 = @"Disabled";
  }

  v84 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", @"GoldilocksLegacyDevices", v83];
  v85 = _FeatureFlagToggleRowAction(@"GoldilocksLegacyDevices");
  v86 = [v82 rowWithTitle:v84 action:v85];

  if (v81)
  {
    [MEMORY[0x1E69DC888] systemGreenColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGrayColor];
  }
  v163 = ;
  v87 = _ImageForStateAndBackgroundColor(v81, v163);
  [v86 setStaticImage:v87];

  v88 = MEMORY[0x1E69C6638];
  v167 = v86;
  v188[0] = v86;
  v89 = MEMORY[0x1E69C66A8];
  v90 = NSStringFromSelector(sel_simulateLegacyDevicesRemoteFailure);
  v91 = [v89 rowWithTitle:@"Simulate Remote UI Failure" valueKeyPath:v90];
  v188[1] = v91;
  v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v188 count:2];
  v159 = [v88 sectionWithRows:v92 title:@"Legacy Devices"];

  v93 = _os_feature_enabled_impl();
  v94 = MEMORY[0x1E69C65E8];
  if (v93)
  {
    v95 = @"Enabled";
  }

  else
  {
    v95 = @"Disabled";
  }

  v96 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", @"GoldilocksLegacyDevicesFallback", v95];
  v97 = _FeatureFlagToggleRowAction(@"GoldilocksLegacyDevicesFallback");
  v98 = [v94 rowWithTitle:v96 action:v97];

  if (v93)
  {
    [MEMORY[0x1E69DC888] systemGreenColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGrayColor];
  }
  v155 = ;
  v99 = _ImageForStateAndBackgroundColor(v93, v155);
  [v98 setStaticImage:v99];

  v100 = MEMORY[0x1E69C6638];
  v187[0] = v98;
  v151 = v98;
  v101 = MEMORY[0x1E69C66A8];
  v102 = NSStringFromSelector(sel_forceLegacyDevicesFallback);
  v103 = [v101 rowWithTitle:@"Force Fallback" valueKeyPath:v102];
  v187[1] = v103;
  v104 = MEMORY[0x1E69C66A8];
  v105 = NSStringFromSelector(sel_includeNonLegacyDevicesInFallback);
  v106 = [v104 rowWithTitle:@"Show Supported Devices" valueKeyPath:v105];
  v187[2] = v106;
  v107 = MEMORY[0x1E69C66A8];
  v108 = NSStringFromSelector(sel_simulateSlowLegacyDevicesFetchInFallback);
  v109 = [v107 rowWithTitle:@"Simulate Slow Fetch" valueKeyPath:v108];
  v187[3] = v109;
  v110 = [MEMORY[0x1E695DEC8] arrayWithObjects:v187 count:4];
  v148 = [v100 sectionWithRows:v110 title:@"Legacy Devices Fallback"];

  v111 = MEMORY[0x1E69C6638];
  v112 = MEMORY[0x1E69C65E8];
  v113 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_513];
  v114 = [v112 rowWithTitle:@"Generate Camera Switch Questions" action:v113];
  v186[0] = v114;
  v115 = MEMORY[0x1E69C65E8];
  v116 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_536];
  v117 = [v115 rowWithTitle:@"Generate Suggestion Questions" action:v116];
  v186[1] = v117;
  v118 = MEMORY[0x1E69C65E8];
  v119 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_542];
  v120 = [v118 rowWithTitle:@"Evaluate & Send Metrics" action:v119];
  v186[2] = v120;
  v121 = [MEMORY[0x1E695DEC8] arrayWithObjects:v186 count:3];
  v122 = [v111 sectionWithRows:v121 title:@"Photos Challenge Questions"];

  v123 = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v124 = MEMORY[0x1E69C6638];
  v185[0] = v184;
  v185[1] = v179;
  v185[2] = v177;
  v185[3] = v174;
  v185[4] = v171;
  v185[5] = v159;
  v185[6] = v148;
  v185[7] = v122;
  v185[8] = v123;
  v125 = [MEMORY[0x1E695DEC8] arrayWithObjects:v185 count:9];
  v126 = [v124 moduleWithTitle:@"Shared Library" contents:v125];

  return v126;
}

uint64_t __55__PXSharedLibrarySettings_UI__settingsControllerModule__block_invoke_3()
{
  v0 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v1 = [v0 px_sharedLibrarySharingSuggestionsCountsManager];
  [v1 clearStoredDates];

  return 1;
}

@end