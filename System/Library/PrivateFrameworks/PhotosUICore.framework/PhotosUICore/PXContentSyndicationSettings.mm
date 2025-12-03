@interface PXContentSyndicationSettings
+ (PXContentSyndicationSettings)sharedInstance;
+ (id)_createDataSourceSection;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXContentSyndicationSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXContentSyndicationSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXContentSyndicationSettings *)self setContentSyndicationEnabled:1];
  [(PXContentSyndicationSettings *)self setIgnoreSocialLayerEnablement:0];
  [(PXContentSyndicationSettings *)self setShowSidebarItemEvenIfNoSyndicatedContentAvailable:0];
  [(PXContentSyndicationSettings *)self setShouldMockChallengeQuestions:0];
  [(PXContentSyndicationSettings *)self setShowSyndicatedContentInLibrary:1];
  [(PXContentSyndicationSettings *)self setEnableFilteringCuratedGridsForContentSyndication:0];
  [(PXContentSyndicationSettings *)self setShowContentSyndicationInSystemPhotoLibraryOnly:1];
  [(PXContentSyndicationSettings *)self setDataSourceType:0];
  [(PXContentSyndicationSettings *)self setUseUserLibraryForSyndicatedAssets:0];
  [(PXContentSyndicationSettings *)self setMaxNumberOfBatches:50];
  [(PXContentSyndicationSettings *)self setMaxNumberOfAssetsPerBatch:50];
  [(PXContentSyndicationSettings *)self setDelayLoadingActualDataSourceUntilAfterLaunch:1];
  [(PXContentSyndicationSettings *)self setLoadVerySmallInitialBatchOfRecentCollections:1];
  [(PXContentSyndicationSettings *)self setBlackOverlayForFirstThumbnail:0.0299999993];
  [(PXContentSyndicationSettings *)self setBlackOverlayForSecondThumbnail:0.119999997];
  [(PXContentSyndicationSettings *)self setBlackOverlayForThirdThumbnail:0.25];
  [(PXContentSyndicationSettings *)self setItemCellBlurStyle:0];
  [(PXContentSyndicationSettings *)self setShouldHorizontallyCenterAttributionViewInGrid:1];
  [(PXContentSyndicationSettings *)self setAlwaysLeadingAlignAttributionViewOnRegularWidthPads:1];
  [(PXContentSyndicationSettings *)self setShowSyndicatedContentWidgetForSavedAssets:1];
  [(PXContentSyndicationSettings *)self setShowSyndicatedContentWidgetForGuestAssets:1];
  [(PXContentSyndicationSettings *)self setShowSyndicated1upPillUI:1];
  [(PXContentSyndicationSettings *)self setSyndicated1upPillAlignment:0];
  [(PXContentSyndicationSettings *)self setSavedAssetViewVisibility:2];
  [(PXContentSyndicationSettings *)self setNumberOfMinutesToShowPillUIAfterSaving:43200];
  [(PXContentSyndicationSettings *)self setPreventActualSaveToLibraryBehavior:0];
  [(PXContentSyndicationSettings *)self setPreventActualRemoveSuggestionBehavior:0];
  [(PXContentSyndicationSettings *)self setTreatEveryAssetAsGuest:0];
  [(PXContentSyndicationSettings *)self setEnableStackAspectRatio:0];
  [(PXContentSyndicationSettings *)self setEnableStackSmartCrop:0];
  [(PXContentSyndicationSettings *)self setUseSystemLibraryForReview:0];
  [(PXContentSyndicationSettings *)self setUseRandomStatusForReview:0];
  [(PXContentSyndicationSettings *)self setReviewScope:1];
  [(PXContentSyndicationSettings *)self setReviewProcessingValuesScope:32496];
  [(PXContentSyndicationSettings *)self setMockNumberOfAssetsSaved:0];
  [(PXContentSyndicationSettings *)self setFooterMockType:1];
  [(PXContentSyndicationSettings *)self setWaitForAndLogAssetArrivalWhenSaving:0];
  [(PXContentSyndicationSettings *)self setPhotosGridViewContents:0];
}

void __46__PXContentSyndicationSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 contentSyndicationSettings];
  v1 = sharedInstance_sharedInstance_176286;
  sharedInstance_sharedInstance_176286 = v0;
}

+ (PXContentSyndicationSettings)sharedInstance
{
  if (sharedInstance_onceToken_176284 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_176284, &__block_literal_global_176285);
  }

  v3 = sharedInstance_sharedInstance_176286;

  return v3;
}

+ (id)_createDataSourceSection
{
  v29[6] = *MEMORY[0x1E69E9840];
  v22 = MEMORY[0x1E69C6670];
  v2 = MEMORY[0x1E69C6688];
  v28 = NSStringFromSelector(sel_useUserLibraryForSyndicatedAssets);
  v27 = [v2 rowWithTitle:@"🔄 User Library For Syndicated Assets" valueKeyPath:v28];
  v29[0] = v27;
  v3 = MEMORY[0x1E69C6668];
  v26 = NSStringFromSelector(sel_dataSourceType);
  v25 = [v3 rowWithTitle:@"Data Source Type" valueKeyPath:v26];
  v24 = [v25 possibleValues:&unk_1F190FE68 titles:&unk_1F190FE80];
  v29[1] = v24;
  v4 = MEMORY[0x1E69C66A0];
  v21 = NSStringFromSelector(sel_maxNumberOfBatches);
  v20 = [v4 rowWithTitle:@"🔄 Max Batches" valueKeyPath:v21];
  v19 = [v20 minValue:1.0 maxValue:50.0];
  v5 = [v19 px_increment:1.0];
  v29[2] = v5;
  v6 = MEMORY[0x1E69C66A0];
  v7 = NSStringFromSelector(sel_maxNumberOfAssetsPerBatch);
  v8 = [v6 rowWithTitle:@"🔄 Max Assets Per Batch" valueKeyPath:v7];
  v9 = [v8 minValue:1.0 maxValue:50.0];
  v10 = [v9 px_increment:1.0];
  v29[3] = v10;
  v11 = MEMORY[0x1E69C6688];
  v12 = NSStringFromSelector(sel_delayLoadingActualDataSourceUntilAfterLaunch);
  v13 = [v11 rowWithTitle:@"Perf: Delay data source manager at launch" valueKeyPath:v12];
  v29[4] = v13;
  v14 = MEMORY[0x1E69C6688];
  v15 = NSStringFromSelector(sel_loadVerySmallInitialBatchOfRecentCollections);
  v16 = [v14 rowWithTitle:@"Perf: Load initial small batch" valueKeyPath:v15];
  v29[5] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:6];
  v23 = [v22 sectionWithRows:v17 title:@"Shared With You" conditionFormat:@"contentSyndicationEnabled != 0"];

  return v23;
}

+ (id)settingsControllerModule
{
  v215[5] = *MEMORY[0x1E69E9840];
  isEnabled = [MEMORY[0x1E69D3818] isEnabled];
  v196 = MEMORY[0x1E69C6670];
  v3 = MEMORY[0x1E69C65E8];
  v4 = MEMORY[0x1E696AEC0];
  v5 = @"NO";
  if (isEnabled)
  {
    v5 = @"YES";
  }

  v194 = v5;
  v194 = [v4 stringWithFormat:@"Messages->Shared With You on: %@", v194];
  v188 = [v3 px_rowWithTitle:v194 action:&__block_literal_global_41710];
  v215[0] = v188;
  v6 = MEMORY[0x1E69C66A8];
  v7 = NSStringFromSelector(sel_contentSyndicationEnabled);
  v8 = [v6 rowWithTitle:@"Syndication UI Enabled" valueKeyPath:v7];
  v215[1] = v8;
  v9 = MEMORY[0x1E69C66A8];
  v10 = NSStringFromSelector(sel_ignoreSocialLayerEnablement);
  v11 = [v9 rowWithTitle:@"Ignore Shared With You enablement" valueKeyPath:v10];
  v215[2] = v11;
  v12 = MEMORY[0x1E69C66A8];
  v13 = NSStringFromSelector(sel_showSyndicatedContentInLibrary);
  v14 = [v12 rowWithTitle:@"Show Content in Library Tab" valueKeyPath:v13];
  v15 = [v14 conditionFormat:@"contentSyndicationEnabled != 0"];
  v215[3] = v15;
  v16 = MEMORY[0x1E69C66A8];
  v17 = NSStringFromSelector(sel_enableFilteringCuratedGridsForContentSyndication);
  v18 = [v16 rowWithTitle:@"Filter curated grids valueKeyPath:{if disabled", v17}];
  v215[4] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v215 count:5];
  v197 = [v196 sectionWithRows:v19 title:@"General"];

  v20 = +[PXContentSyndicationSettings _createDataSourceSection];
  v192 = MEMORY[0x1E69C6670];
  v195 = v20;
  v21 = MEMORY[0x1E69C66A0];
  v189 = NSStringFromSelector(sel_blackOverlayForFirstThumbnail);
  v185 = [v21 rowWithTitle:@"🔄 Img #1 dark %" valueKeyPath:v189];
  v181 = [v185 minValue:0.0 maxValue:1.0];
  v178 = [v181 px_increment:0.01];
  v214[0] = v178;
  v22 = MEMORY[0x1E69C66A0];
  v175 = NSStringFromSelector(sel_blackOverlayForSecondThumbnail);
  v172 = [v22 rowWithTitle:@"🔄 Img #2 dark %" valueKeyPath:v175];
  v23 = [v172 minValue:0.0 maxValue:1.0];
  v24 = [v23 px_increment:0.01];
  v214[1] = v24;
  v25 = MEMORY[0x1E69C66A0];
  v26 = NSStringFromSelector(sel_blackOverlayForThirdThumbnail);
  v27 = [v25 rowWithTitle:@"🔄 Img #3 dark %" valueKeyPath:v26];
  v28 = [v27 minValue:0.0 maxValue:1.0];
  v29 = [v28 px_increment:0.01];
  v214[2] = v29;
  v30 = MEMORY[0x1E69C6668];
  v31 = NSStringFromSelector(sel_itemCellBlurStyle);
  v32 = [v30 rowWithTitle:@"🔄 Blur Style" valueKeyPath:v31];
  v33 = [v32 possibleValues:&unk_1F190FD48 titles:&unk_1F190FD60];
  v214[3] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v214 count:4];
  v193 = [v192 sectionWithRows:v34 title:@"Syndication Cells" conditionFormat:@"contentSyndicationEnabled != 0"];

  v35 = MEMORY[0x1E69C6670];
  v36 = MEMORY[0x1E69C66A8];
  v37 = NSStringFromSelector(sel_shouldHorizontallyCenterAttributionViewInGrid);
  v38 = [v36 rowWithTitle:@"Center micro-pill horizontally" valueKeyPath:v37];
  v213[0] = v38;
  v39 = MEMORY[0x1E69C66A8];
  v40 = NSStringFromSelector(sel_alwaysLeadingAlignAttributionViewOnRegularWidthPads);
  v41 = [v39 rowWithTitle:@"iPad: Leading-align pill on regular widths" valueKeyPath:v40];
  v213[1] = v41;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v213 count:2];
  v190 = [v35 sectionWithRows:v42 title:@"Syndication Grids" conditionFormat:@"contentSyndicationEnabled != 0"];

  v186 = MEMORY[0x1E69C6670];
  v43 = MEMORY[0x1E69C6688];
  v182 = NSStringFromSelector(sel_showSyndicatedContentWidgetForSavedAssets);
  v179 = [v43 rowWithTitle:@"Show 1up Widget for saved assets" valueKeyPath:v182];
  v176 = [v179 conditionFormat:@"contentSyndicationEnabled != 0"];
  v212[0] = v176;
  v44 = MEMORY[0x1E69C6688];
  v173 = NSStringFromSelector(sel_showSyndicatedContentWidgetForGuestAssets);
  v169 = [v44 rowWithTitle:@"Show 1up Widget for guest assets" valueKeyPath:v173];
  v166 = [v169 conditionFormat:@"contentSyndicationEnabled != 0"];
  v212[1] = v166;
  v45 = MEMORY[0x1E69C6688];
  v163 = NSStringFromSelector(sel_showSyndicated1upPillUI);
  v160 = [v45 rowWithTitle:@"Show 1up Pill UI" valueKeyPath:v163];
  v157 = [v160 conditionFormat:@"contentSyndicationEnabled != 0"];
  v212[2] = v157;
  v46 = MEMORY[0x1E69C6668];
  v155 = NSStringFromSelector(sel_syndicated1upPillAlignment);
  v153 = [v46 rowWithTitle:@"Pill Alignment" valueKeyPath:v155];
  v152 = [v153 possibleValues:&unk_1F190FD78 titles:&unk_1F190FD90];
  v212[3] = v152;
  v47 = MEMORY[0x1E69C6668];
  v151 = NSStringFromSelector(sel_savedAssetViewVisibility);
  v150 = [v47 rowWithTitle:@"Show Pill UI for Saved Assets" valueKeyPath:v151];
  v149 = [v150 possibleValues:&unk_1F190FDA8 titles:&unk_1F190FDC0];
  v212[4] = v149;
  v48 = MEMORY[0x1E69C66A0];
  v148 = NSStringFromSelector(sel_numberOfMinutesToShowPillUIAfterSaving);
  v147 = [v48 rowWithTitle:@"# Mins After Save" valueKeyPath:v148];
  v146 = [v147 minValue:0.5 maxValue:30.0];
  v49 = [v146 px_increment:0.5];
  v50 = [v49 conditionFormat:@"savedAssetViewVisibility = 2"];
  v212[5] = v50;
  v51 = MEMORY[0x1E69C6688];
  v52 = NSStringFromSelector(sel_preventActualSaveToLibraryBehavior);
  v53 = [v51 rowWithTitle:@"Prevent Actual Save to Library" valueKeyPath:v52];
  v54 = [v53 conditionFormat:@"contentSyndicationEnabled != 0"];
  v212[6] = v54;
  v55 = MEMORY[0x1E69C6688];
  v56 = NSStringFromSelector(sel_preventActualRemoveSuggestionBehavior);
  v57 = [v55 rowWithTitle:@"Prevent Actual Remove Suggestion" valueKeyPath:v56];
  v58 = [v57 conditionFormat:@"contentSyndicationEnabled != 0"];
  v212[7] = v58;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v212 count:8];
  v187 = [v186 sectionWithRows:v59 title:@"1up" conditionFormat:@"contentSyndicationEnabled != 0"];

  v60 = MEMORY[0x1E69C6670];
  v61 = MEMORY[0x1E69C6688];
  v62 = NSStringFromSelector(sel_treatEveryAssetAsGuest);
  v63 = [v61 rowWithTitle:@"Treat All Assets As Guest" valueKeyPath:v62];
  v211 = v63;
  v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v211 count:1];
  v180 = [v60 sectionWithRows:v64 title:@"Inline Guest Assets" conditionFormat:@"contentSyndicationEnabled != 0"];

  v65 = MEMORY[0x1E69C6670];
  v66 = MEMORY[0x1E69C66A8];
  v67 = NSStringFromSelector(sel_useSystemLibraryForReview);
  v68 = [v66 rowWithTitle:@"Use System Library" valueKeyPath:v67];
  v210[0] = v68;
  v69 = MEMORY[0x1E69C66A8];
  v70 = NSStringFromSelector(sel_useRandomStatusForReview);
  v71 = [v69 rowWithTitle:@"Use Random Status" valueKeyPath:v70];
  v210[1] = v71;
  v72 = MEMORY[0x1E69C6668];
  v73 = NSStringFromSelector(sel_reviewScope);
  v74 = [v72 rowWithTitle:@"Review UI Scope" valueKeyPath:v73];
  v75 = [v74 possibleValues:&unk_1F190FDD8 titles:&unk_1F190FDF0];
  v210[2] = v75;
  v76 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Review All" action:&__block_literal_global_551];
  v210[3] = v76;
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v210 count:4];
  v177 = [v65 sectionWithRows:v77 title:@"Review Syndicated Assets"];

  v78 = MEMORY[0x1E69C6670];
  v79 = MEMORY[0x1E69C6668];
  v80 = NSStringFromSelector(sel_photosGridViewContents);
  v81 = [v79 rowWithTitle:@"Contents" valueKeyPath:v80];
  v82 = [v81 possibleValues:&unk_1F190FE08 titles:&unk_1F190FE20];
  v209[0] = v82;
  v83 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Photos Grid View" action:&__block_literal_global_615];
  v209[1] = v83;
  v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v209 count:2];
  v174 = [v78 sectionWithRows:v84 title:@"PhotosGridView"];

  v207[0] = &unk_1F190A678;
  v207[1] = &unk_1F190A690;
  v208[0] = @"All Positives";
  v208[1] = @"All Negatives";
  v207[2] = &unk_1F190A6A8;
  v183 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
  v208[2] = v183;
  v207[3] = &unk_1F190A6C0;
  v170 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
  v208[3] = v170;
  v207[4] = &unk_1F190A6D8;
  v167 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
  v208[4] = v167;
  v207[5] = &unk_1F190A6F0;
  v164 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
  v208[5] = v164;
  v207[6] = &unk_1F190A708;
  v161 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
  v208[6] = v161;
  v207[7] = &unk_1F190A720;
  v158 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
  v208[7] = v158;
  v207[8] = &unk_1F190A738;
  v85 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
  v208[8] = v85;
  v207[9] = &unk_1F190A750;
  v86 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
  v208[9] = v86;
  v207[10] = &unk_1F190A768;
  v87 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
  v208[10] = v87;
  v207[11] = &unk_1F190A780;
  v88 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
  v208[11] = v88;
  v207[12] = &unk_1F190A798;
  v89 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
  v208[12] = v89;
  v207[13] = &unk_1F190A7B0;
  v90 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
  v208[13] = v90;
  v207[14] = &unk_1F190A7C8;
  v91 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
  v208[14] = v91;
  v207[15] = &unk_1F190A7E0;
  v92 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
  v208[15] = v92;
  v207[16] = &unk_1F190A7F8;
  v93 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
  v208[16] = v93;
  v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v208 forKeys:v207 count:17];

  v95 = MEMORY[0x1E69C6670];
  v96 = MEMORY[0x1E69C6668];
  v97 = NSStringFromSelector(sel_reviewProcessingValuesScope);
  v98 = [v96 rowWithTitle:@"Review UI Scope" valueKeyPath:v97];
  allKeys = [v94 allKeys];
  v171 = v94;
  allValues = [v94 allValues];
  v101 = [v98 possibleValues:allKeys titles:allValues];
  v206[0] = v101;
  v102 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Review All" action:&__block_literal_global_651];
  v206[1] = v102;
  v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:v206 count:2];
  v168 = [v95 sectionWithRows:v103 title:@"Review Processing Values"];

  v104 = MEMORY[0x1E69C6670];
  v105 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Generate Questions" action:&__block_literal_global_701];
  v205[0] = v105;
  v106 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Reset All Questions" action:&__block_literal_global_704];
  v205[1] = v106;
  v107 = [MEMORY[0x1E69C65E8] px_rowWithTitle:@"Delete All Questions" action:&__block_literal_global_707];
  v205[2] = v107;
  v108 = MEMORY[0x1E69C66A8];
  v109 = NSStringFromSelector(sel_shouldMockChallengeQuestions);
  v110 = [v108 rowWithTitle:@"Mock Questions" valueKeyPath:v109];
  v111 = [v110 conditionFormat:@"contentSyndicationEnabled != 0"];
  v205[3] = v111;
  v112 = [MEMORY[0x1E695DEC8] arrayWithObjects:v205 count:4];
  v165 = [v104 sectionWithRows:v112 title:@"Challenge Questions"];

  v198 = 0;
  v113 = [MEMORY[0x1E69789A8] openPhotoLibraryWithWellKnownIdentifier:3 error:&v198];
  v159 = v113;
  v162 = v198;
  if (v113)
  {
    v114 = [PXPhotoLibraryProcessingProgressRow alloc];
    v115 = NSStringFromSelector(sel_libraryStateBriefDescription);
    v116 = NSStringFromSelector(sel_libraryStateImage);
    v117 = [(PXPhotoLibraryProcessingProgressRow *)v114 initWithPhotoLibrary:v113 titleKeyPath:v115 imageKeyPath:v116];

    v204 = v117;
    v118 = &v204;
  }

  else
  {
    v117 = [MEMORY[0x1E69C65E8] rowWithTitle:@"No Syndication Library Available" action:0];
    v203 = v117;
    v118 = &v203;
  }

  v156 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:1];

  v184 = [MEMORY[0x1E69C6638] sectionWithRows:v156 title:@"Syndication Library Processing"];
  v119 = MEMORY[0x1E69C6638];
  v120 = MEMORY[0x1E69C65E8];
  v121 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v122 = [v120 rowWithTitle:@"Restore Defaults" action:v121];
  v202 = v122;
  v123 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v202 count:1];
  v154 = [v119 sectionWithRows:v123];

  v124 = MEMORY[0x1E69C6670];
  v125 = MEMORY[0x1E69C66A8];
  v126 = NSStringFromSelector(sel_mockNumberOfAssetsSaved);
  v127 = [v125 rowWithTitle:@"Mock Number of Assets Saved" valueKeyPath:v126];
  v201[0] = v127;
  v128 = MEMORY[0x1E69C6668];
  v129 = NSStringFromSelector(sel_footerMockType);
  v130 = [v128 rowWithTitle:@"Number of Assets Saved" valueKeyPath:v129];
  v131 = [v130 possibleValues:&unk_1F190FE38 titles:&unk_1F190FE50];
  v132 = [v131 conditionFormat:@"mockNumberOfAssetsSaved != 0"];
  v201[1] = v132;
  v133 = [MEMORY[0x1E695DEC8] arrayWithObjects:v201 count:2];
  v134 = [v124 sectionWithRows:v133 title:@"Footer" conditionFormat:?];

  v135 = MEMORY[0x1E69C6670];
  v136 = MEMORY[0x1E69C66A8];
  v137 = NSStringFromSelector(sel_waitForAndLogAssetArrivalWhenSaving);
  v138 = [v136 rowWithTitle:@"Wait + Log asset arrival on save" valueKeyPath:v137];
  v200 = v138;
  v139 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v200 count:1];
  v140 = [v135 sectionWithRows:v139 title:@"Debugging" conditionFormat:@"contentSyndicationEnabled != 0"];

  v141 = MEMORY[0x1E69C6638];
  v199[0] = v197;
  v199[1] = v184;
  v199[2] = v177;
  v199[3] = v174;
  v199[4] = v168;
  v199[5] = v195;
  v199[6] = v193;
  v199[7] = v190;
  v199[8] = v187;
  v199[9] = v180;
  v199[10] = v165;
  v199[11] = v134;
  v142 = v134;
  v199[12] = v140;
  v199[13] = v154;
  v143 = [MEMORY[0x1E695DEC8] arrayWithObjects:v199 count:14];
  v144 = [v141 moduleWithTitle:@"Content Syndication" contents:v143];

  return v144;
}

void __60__PXContentSyndicationSettings_UI__settingsControllerModule__block_invoke_3_705(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!v2)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _DeleteAllQuestionsAction(UINavigationController *__strong)"];
    [v10 handleFailureInFunction:v11 file:@"PXContentSyndicationSettings+UI.m" lineNumber:403 description:{@"Invalid parameter not satisfying: %@", @"navigationController"}];
  }

  v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v4 = _AllHubbleQuestionsForPhotoLibrary(v3);
  if ([v4 count])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___DeleteAllQuestionsAction_block_invoke;
    v13[3] = &unk_1E774C648;
    v14 = v4;
    v12 = 0;
    v5 = [v3 performChangesAndWait:v13 error:&v12];
    v6 = v12;
    v7 = v6;
    if (v5)
    {
      v8 = @"Questions Deleted Successfully";
      v9 = @"Quit and re-launch Photos to update questions.";
    }

    else
    {
      v9 = [v6 localizedDescription];
      v8 = @"Failed to Delete Questions";
    }
  }

  else
  {
    v8 = @"Failed to Delete Questions";
    v9 = @"No questions available to delete.";
  }

  _PresentAlertForNavigationController(v8, v9, v2);
}

void __60__PXContentSyndicationSettings_UI__settingsControllerModule__block_invoke_2_702(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!v2)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _ResetAllQuestionsAction(UINavigationController *__strong)"];
    [v10 handleFailureInFunction:v11 file:@"PXContentSyndicationSettings+UI.m" lineNumber:375 description:{@"Invalid parameter not satisfying: %@", @"navigationController"}];
  }

  v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v4 = _AllHubbleQuestionsForPhotoLibrary(v3);
  if ([v4 count])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___ResetAllQuestionsAction_block_invoke;
    v13[3] = &unk_1E774C648;
    v14 = v4;
    v12 = 0;
    v5 = [v3 performChangesAndWait:v13 error:&v12];
    v6 = v12;
    v7 = v6;
    if (v5)
    {
      v8 = @"Questions Reset Successfully";
      v9 = @"Quit and re-launch Photos to update questions.";
    }

    else
    {
      v9 = [v6 localizedDescription];
      v8 = @"Failed to Reset Questions";
    }
  }

  else
  {
    v8 = @"Failed to Reset Questions";
    v9 = @"No questions available to reset.";
  }

  _PresentAlertForNavigationController(v8, v9, v2);
}

void __60__PXContentSyndicationSettings_UI__settingsControllerModule__block_invoke_699(uint64_t a1, void *a2)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *MEMORY[0x1E69BEB20];
  v30[0] = *MEMORY[0x1E69BEB30];
  v30[1] = v3;
  v31[0] = &unk_1F190A810;
  v31[1] = &unk_1F190A828;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__41779;
  v24 = __Block_byref_object_dispose__41780;
  v25 = 0;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v7 = [v6 photoAnalysisClient];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = ___GenerateQuestionsAction_block_invoke;
  v16 = &unk_1E7731668;
  v18 = &v26;
  v19 = &v20;
  v8 = v5;
  v17 = v8;
  [v7 requestGenerateQuestionsWithOptions:v4 reply:&v13];

  v9 = dispatch_time(0, 300000000000);
  if (dispatch_group_wait(v8, v9))
  {
    v10 = @"Request timed out.";
  }

  else
  {
    if (v27[3])
    {
      v10 = 0;
      v11 = @"Questions Generated Successfully";
      goto LABEL_4;
    }

    v12 = v21[5];
    if (v12)
    {
      v10 = [v12 localizedDescription];
    }

    else
    {
      v10 = @"All available questions may have already been generated, or your syndication library may not have been processed yet.";
    }
  }

  v11 = @"Failed to Generate Questions";
LABEL_4:
  _PresentAlertForNavigationController(v11, v10, v2);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
}

void __60__PXContentSyndicationSettings_UI__settingsControllerModule__block_invoke_649(uint64_t a1, void *a2)
{
  v2 = a2;
  v7 = 0;
  v3 = PXContentSyndicationProcessingValuesReviewViewController(&v7);
  v4 = v7;
  v5 = v4;
  if (v3)
  {
    [v2 pushViewController:v3 animated:1];
  }

  else
  {
    v6 = [v4 localizedDescription];
    _PresentAlertForNavigationController(v6, 0, v2);
  }
}

void __60__PXContentSyndicationSettings_UI__settingsControllerModule__block_invoke_613(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[PXContentSyndicationReviewUtilities syndicationPhotosGrid];
  v4 = v3;
  if (v3)
  {
    [v2 pushViewController:v3 animated:1];
  }

  else
  {
    _PresentAlertForNavigationController(@"Failed to load PhotosGridView", 0, v2);
  }
}

void __60__PXContentSyndicationSettings_UI__settingsControllerModule__block_invoke_549(uint64_t a1, void *a2)
{
  v2 = a2;
  v7 = 0;
  v3 = PXContentSyndicationReviewViewController(&v7);
  v4 = v7;
  v5 = v4;
  if (v3)
  {
    [v2 pushViewController:v3 animated:1];
  }

  else
  {
    v6 = [v4 localizedDescription];
    _PresentAlertForNavigationController(v6, 0, v2);
  }
}

void __60__PXContentSyndicationSettings_UI__settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Enable Shared With You" message:@"Navigate to:\n\nSettings\n-> Messages\n-> Shared With You\n-> Photos\n-> ON" preferredStyle:1];
  v4 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
  [v3 addAction:v4];

  v5 = MEMORY[0x1E69DC648];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__PXContentSyndicationSettings_UI__settingsControllerModule__block_invoke_2;
  v8[3] = &unk_1E7749600;
  v9 = v2;
  v6 = v2;
  v7 = [v5 actionWithTitle:@"Settings" style:0 handler:v8];
  [v3 addAction:v7];

  [v6 presentViewController:v3 animated:0 completion:0];
}

void __60__PXContentSyndicationSettings_UI__settingsControllerModule__block_invoke_2(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __60__PXContentSyndicationSettings_UI__settingsControllerModule__block_invoke_3;
  v1[3] = &unk_1E774C5C0;
  v2 = *(a1 + 32);
  [PXSystemNavigation navigateToDestination:1 completion:v1];
}

void __60__PXContentSyndicationSettings_UI__settingsControllerModule__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    v5 = [a3 localizedDescription];
    _PresentAlertForNavigationController(@"Failed to Open Settings", v5, *(a1 + 32));
  }
}

@end