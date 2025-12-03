@interface PXForYouSettings
+ (NSArray)keyPathsAffectingGadgetVisibility;
+ (PXForYouSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXForYouSettings

- (void)setDefaultValues
{
  v6.receiver = self;
  v6.super_class = PXForYouSettings;
  [(PTSettings *)&v6 setDefaultValues];
  v3 = 1;
  [(PXForYouSettings *)self setShowMemories:1];
  [(PXForYouSettings *)self setShowSharedAlbumActivity:1];
  [(PXForYouSettings *)self setShowCMMInvitations:1];
  [(PXForYouSettings *)self setShowRecentInterestSuggestions:1];
  [(PXForYouSettings *)self setShowFooter:0];
  HasInternalUI = PFOSVariantHasInternalUI();
  if ((HasInternalUI & 1) == 0)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [standardUserDefaults BOOLForKey:@"photosChallengeProfileEnabled"];
  }

  [(PXForYouSettings *)self setShowSurveyQuestions:v3];
  [(PXForYouSettings *)self setShowSurveyQuestionsWithProfile:HasInternalUI ^ 1u];
  [(PXForYouSettings *)self setShowVerticalSampleGadgets:0];
  [(PXForYouSettings *)self setShowHorizontalGadget:0];
  [(PXForYouSettings *)self setShowSharedLibraryInvitations:1];
  [(PXForYouSettings *)self setShowSharedLibrarySharingSuggestions:1];
  [(PXForYouSettings *)self setShowContentSyndication:1];
  [(PXForYouSettings *)self setUseMockData:0];
  [(PXForYouSettings *)self setForceDisplayReportJunk:0];
  [(PXForYouSettings *)self setForcePortraitBias:0];
  [(PXForYouSettings *)self setUseSquareSharedAlbumActivity:1];
  [(PXForYouSettings *)self setDisableSharedAlbumTopMargin:1];
  [(PXForYouSettings *)self setAlwaysShowSuggestionRenderingOverlay:0];
  [(PXForYouSettings *)self setUseCachedEditRenders:1];
  [(PXForYouSettings *)self setDelayEditRenders:0];
  [(PXForYouSettings *)self setAllowVideoPlayback:0];
  [(PXForYouSettings *)self setAllowLoopPlayback:1];
  [(PXForYouSettings *)self setAllowGIFPlayback:1];
  [(PXForYouSettings *)self setMaxSimultaneousVideoCount:5];
  [(PXForYouSettings *)self setMinimumVisibilityForVideoPlayback:15.0];
  [(PXForYouSettings *)self setMaxMemoriesToFetch:13];
}

+ (id)settingsControllerModule
{
  v79[12] = *MEMORY[0x1E69E9840];
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  photoLibraryURL = [px_deprecated_appPhotoLibrary photoLibraryURL];
  v70 = MEMORY[0x1E69C6638];
  v68 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Memories" valueKeyPath:@"showMemories"];
  v79[0] = v68;
  v2 = MEMORY[0x1E69C66A8];
  v66 = [MEMORY[0x1E696AE18] predicateWithValue:{objc_msgSend(MEMORY[0x1E69BE6A8], "sharedStreamsEnabledForPhotoLibraryURL:", photoLibraryURL)}];
  v63 = [v2 px_rowWithTitle:@"Show Shared Album Activity" valueKeyPath:@"showSharedAlbumActivity" condition:v66];
  v79[1] = v63;
  v61 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show CMM Invitations" valueKeyPath:@"showCMMInvitations"];
  v79[2] = v61;
  v60 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Recent Interest Suggestions" valueKeyPath:@"showRecentInterestSuggestions"];
  v79[3] = v60;
  v3 = MEMORY[0x1E69C66A8];
  v59 = NSStringFromSelector(sel_showSharedLibraryInvitations);
  v58 = [v3 rowWithTitle:@"Show Shared Library Invitations" valueKeyPath:v59];
  v79[4] = v58;
  v4 = MEMORY[0x1E69C66A8];
  v57 = NSStringFromSelector(sel_showSharedLibrarySharingSuggestions);
  v56 = [v4 rowWithTitle:@"Show Shared Library Sharing Suggestions" valueKeyPath:v57];
  v79[5] = v56;
  v5 = MEMORY[0x1E69C66A8];
  v6 = NSStringFromSelector(sel_showContentSyndication);
  v7 = [v5 rowWithTitle:@"Show Shared With You" valueKeyPath:v6];
  v79[6] = v7;
  v8 = MEMORY[0x1E69C66A8];
  v9 = NSStringFromSelector(sel_showSurveyQuestions);
  v10 = [v8 rowWithTitle:@"Show Survey Questions" valueKeyPath:v9];
  v79[7] = v10;
  v11 = MEMORY[0x1E69C66A8];
  v12 = NSStringFromSelector(sel_showSurveyQuestionsWithProfile);
  v13 = [v11 rowWithTitle:@"Show Survey Questions With Profile" valueKeyPath:v12];
  v79[8] = v13;
  v14 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show For You Footer" valueKeyPath:@"showFooter"];
  v79[9] = v14;
  v15 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show V Sample Gadgets" valueKeyPath:@"showVerticalSampleGadgets"];
  v79[10] = v15;
  v16 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show H Sample Gadget" valueKeyPath:@"showHorizontalGadget"];
  v79[11] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:12];
  v71 = [v70 sectionWithRows:v17];

  v18 = MEMORY[0x1E69C6638];
  v19 = [MEMORY[0x1E69C6688] rowWithTitle:@"Allow Video Playback" valueKeyPath:@"allowVideoPlayback"];
  v78[0] = v19;
  v20 = [MEMORY[0x1E69C6688] rowWithTitle:@"Allow Loop Playback" valueKeyPath:@"allowLoopPlayback"];
  v78[1] = v20;
  v21 = [MEMORY[0x1E69C6668] rowWithTitle:@"Max Simultaneous Loops" valueKeyPath:@"maxSimultaneousVideoCount"];
  v22 = [v21 possibleValues:&unk_1F1910768 titles:&unk_1F1910780];
  v23 = [v22 conditionFormat:@"allowLoopPlayback == YES"];
  v78[2] = v23;
  v24 = [MEMORY[0x1E69C6688] rowWithTitle:@"Allow GIF Playback" valueKeyPath:@"allowGIFPlayback"];
  v78[3] = v24;
  v25 = [MEMORY[0x1E69C6680] rowWithTitle:@"Video Playback Visibility Threshold" valueKeyPath:@"minimumVisibilityForVideoPlayback"];
  v26 = [v25 minValue:0.0 maxValue:40.0];
  v78[4] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:5];
  v69 = [v18 sectionWithRows:v27];

  v64 = MEMORY[0x1E69C6638];
  v67 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use Mock Data" valueKeyPath:@"useMockData"];
  v77[0] = v67;
  v28 = MEMORY[0x1E69C66A8];
  v62 = [MEMORY[0x1E696AE18] predicateWithValue:{objc_msgSend(MEMORY[0x1E69BE6A8], "sharedStreamsEnabledForPhotoLibraryURL:", photoLibraryURL)}];
  v29 = [v28 px_rowWithTitle:@"Force Display Report Junk" valueKeyPath:@"forceDisplayReportJunk" condition:v62];
  v77[1] = v29;
  v30 = MEMORY[0x1E69C66A8];
  v31 = [MEMORY[0x1E696AE18] predicateWithValue:{objc_msgSend(MEMORY[0x1E69BE6A8], "sharedStreamsEnabledForPhotoLibraryURL:", photoLibraryURL)}];
  v32 = [v30 px_rowWithTitle:@"Force Portrait Bias" valueKeyPath:@"forcePortraitBias" condition:v31];
  v77[2] = v32;
  v33 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Square Shared Album Activity" valueKeyPath:@"useSquareSharedAlbumActivity"];
  v77[3] = v33;
  v34 = [MEMORY[0x1E69C66A8] rowWithTitle:@"No Shared Album Top Margin" valueKeyPath:@"disableSharedAlbumTopMargin"];
  v77[4] = v34;
  v35 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Always Show Suggestion Rendering Overlay" valueKeyPath:@"alwaysShowSuggestionRenderingOverlay"];
  v77[5] = v35;
  v36 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Max Recent Memories" valueKeyPath:@"maxMemoriesToFetch"];
  v37 = [MEMORY[0x1E695DEC8] px_integersFrom:2 to:13];
  v38 = [v36 px_possibleValues:v37];
  v77[6] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:7];
  v65 = [v64 sectionWithRows:v39];

  v40 = MEMORY[0x1E69C6638];
  v41 = [MEMORY[0x1E69C6688] rowWithTitle:@"Delay Renders" valueKeyPath:@"delayEditRenders"];
  v76[0] = v41;
  v42 = [MEMORY[0x1E69C6688] rowWithTitle:@"Use Cached Renders" valueKeyPath:@"useCachedEditRenders"];
  v76[1] = v42;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
  v44 = [v40 sectionWithRows:v43];

  v45 = MEMORY[0x1E69C6660];
  v46 = [MEMORY[0x1E69C6678] actionWithHandler:&__block_literal_global_94028];
  v47 = [v45 rowWithTitle:@"Simulate Next Day" action:v46];

  v48 = MEMORY[0x1E69C6638];
  v75 = v47;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
  v50 = [v48 sectionWithRows:v49];

  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v52 = MEMORY[0x1E69C6638];
  v74[0] = v71;
  v74[1] = v65;
  v74[2] = v69;
  v74[3] = v44;
  v74[4] = v50;
  v74[5] = px_restoreDefaultsSection;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:6];
  v54 = [v52 moduleWithTitle:@"For You" contents:v53];

  return v54;
}

uint64_t __48__PXForYouSettings_UI__settingsControllerModule__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AD80]) initWithName:@"PXForYouSimluatedNextDateNotification" object:0 userInfo:0];
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotification:v0];

  return 1;
}

+ (NSArray)keyPathsAffectingGadgetVisibility
{
  v13[9] = *MEMORY[0x1E69E9840];
  v2 = NSStringFromSelector(sel_showMemories);
  v13[0] = v2;
  v3 = NSStringFromSelector(sel_showSharedAlbumActivity);
  v13[1] = v3;
  v4 = NSStringFromSelector(sel_showRecentInterestSuggestions);
  v13[2] = v4;
  v5 = NSStringFromSelector(sel_showCMMInvitations);
  v13[3] = v5;
  v6 = NSStringFromSelector(sel_showSurveyQuestions);
  v13[4] = v6;
  v7 = NSStringFromSelector(sel_showSurveyQuestionsWithProfile);
  v13[5] = v7;
  v8 = NSStringFromSelector(sel_showFooter);
  v13[6] = v8;
  v9 = NSStringFromSelector(sel_showVerticalSampleGadgets);
  v13[7] = v9;
  v10 = NSStringFromSelector(sel_showHorizontalGadget);
  v13[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:9];

  return v11;
}

+ (PXForYouSettings)sharedInstance
{
  if (sharedInstance_onceToken_127765 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_127765, &__block_literal_global_127766);
  }

  v3 = sharedInstance_sharedInstance_127767;

  return v3;
}

void __34__PXForYouSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 forYou];
  v1 = sharedInstance_sharedInstance_127767;
  sharedInstance_sharedInstance_127767 = v0;
}

@end