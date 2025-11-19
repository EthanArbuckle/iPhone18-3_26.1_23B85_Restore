@interface PXPhotosDetailsSettings
+ (PXPhotosDetailsSettings)sharedInstance;
+ (id)settingsControllerModule;
+ (id)transientProperties;
+ (void)_fillLibraryWithFakeAssets:(id)a3;
- (PXAssetBadgeInfo)debugBadgeInfo;
- (void)setDefaultValues;
@end

@implementation PXPhotosDetailsSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXPhotosDetailsSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXPhotosDetailsSettings *)self setDefaultCurationAlgorithm:0];
  [(PXPhotosDetailsSettings *)self setDetailsViewCurationAlgorithm:1];
  [(PXPhotosDetailsSettings *)self setEnableFetchResultCaching:1];
  [(PXPhotosDetailsSettings *)self setFakeFetchDelay:0.0];
  [(PXPhotosDetailsSettings *)self setShowHeaderWidget:1];
  [(PXPhotosDetailsSettings *)self setShowAssetsWidget:1];
  [(PXPhotosDetailsSettings *)self setShowCaptionHashtagsWidget:1];
  [(PXPhotosDetailsSettings *)self setMapWidgetAllowCopyPasteLocation:1];
  [(PXPhotosDetailsSettings *)self setShowTimeWidget:1];
  [(PXPhotosDetailsSettings *)self setShowEXIFWidget:1];
  [(PXPhotosDetailsSettings *)self setShowAlbumAttributionWidget:1];
  [(PXPhotosDetailsSettings *)self setShowAssetDescriptionWidget:0];
  [(PXPhotosDetailsSettings *)self setShowAssetRichDescription:0];
  [(PXPhotosDetailsSettings *)self setUseShadowNamesInARD:1];
  [(PXPhotosDetailsSettings *)self setShowAppAttributionWidget:1];
  [(PXPhotosDetailsSettings *)self setShowVisualLookUpWidget:1];
  [(PXPhotosDetailsSettings *)self setFormattedLensStringsEnabled:1];
  [(PXPhotosDetailsSettings *)self setShowDemoTilingViewWidget:1];
  [(PXPhotosDetailsSettings *)self setShowDemoViewWidget:1];
  [(PXPhotosDetailsSettings *)self setShowDemoDynamicWidget:0];
  [(PXPhotosDetailsSettings *)self setShowActionableLivePhotosBadge:1];
  [(PXPhotosDetailsSettings *)self setShowPlacesWidget:1];
  [(PXPhotosDetailsSettings *)self setShowSharedLibraryWidget:1];
  [(PXPhotosDetailsSettings *)self setShowActionsWidget:1];
  [(PXPhotosDetailsSettings *)self setShowFacesAreaRect:0];
  [(PXPhotosDetailsSettings *)self setAllowWidgetsContentLoading:1];
  [(PXPhotosDetailsSettings *)self setLoadAllWidgetsContentAfterDelay:1];
  [(PXPhotosDetailsSettings *)self setLoadAllWidgetsContentOnScroll:1];
  [(PXPhotosDetailsSettings *)self setDefaultPriorityWidgetsLoadingDelay:0.2];
  [(PXPhotosDetailsSettings *)self setAllowMultiColumnLayout:0];
  [(PXPhotosDetailsSettings *)self setAllowsTopTrailingSelectCancelButton:1];
  [(PXPhotosDetailsSettings *)self setPurgeOnMemoryWarning:1];
  [(PXPhotosDetailsSettings *)self setDetailViewsToKeepLoaded:4];
  [(PXPhotosDetailsSettings *)self setUseCuratedLibraryLayout:1];
  [(PXPhotosDetailsSettings *)self setAllowItemReorderingInCuratedLayout:0];
  [(PXPhotosDetailsSettings *)self setEditorialLayoutEdit:0];
  [(PXPhotosDetailsSettings *)self setEditorialLayoutColumns:3];
  [(PXPhotosDetailsSettings *)self setEditorialLayoutAvoidSmallestTile:1];
  [(PXPhotosDetailsSettings *)self setEditorialLayoutTargetRowsForChunk:4];
  [(PXPhotosDetailsSettings *)self setEditorialLayoutActivityFeedItemCountThreshold:6];
  [(PXPhotosDetailsSettings *)self setAssetsWidgetPlaceholderAspectRatio:0.75];
  [(PXPhotosDetailsSettings *)self setAllowEditorialLayoutStressTest:0];
  [(PXPhotosDetailsSettings *)self setDebugBadgeInfoType:0];
  [(PXPhotosDetailsSettings *)self setCaptionWidgetEnableHashtags:0];
  [(PXPhotosDetailsSettings *)self setCaptionWidgetEnableVScrollingInEdit:0];
  [(PXPhotosDetailsSettings *)self setCaptionWidgetEnableFadeInEffect:0];
  [(PXPhotosDetailsSettings *)self setCaptionWidgetFadeInDuration:0.45];
  [(PXPhotosDetailsSettings *)self setCaptionWidgetEnableDirectAttachToMaster:0];
  [(PXPhotosDetailsSettings *)self setPlacesWidgetShowOnlyPlaceholder:0];
  [(PXPhotosDetailsSettings *)self setShowLookUpWidgetSearchIcon:0];
  [(PXPhotosDetailsSettings *)self setDraggableInfoPanelEnabled:1];
}

void __41__PXPhotosDetailsSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 photosDetails];
  v1 = sharedInstance_sharedInstance_184902;
  sharedInstance_sharedInstance_184902 = v0;
}

+ (PXPhotosDetailsSettings)sharedInstance
{
  if (sharedInstance_onceToken_184900 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_184900, &__block_literal_global_184901);
  }

  v3 = sharedInstance_sharedInstance_184902;

  return v3;
}

- (PXAssetBadgeInfo)debugBadgeInfo
{
  v3 = *(off_1E7721C20 + 1);
  *&retstr->badges = *off_1E7721C20;
  *&retstr->count = v3;
  result = [(PXPhotosDetailsSettings *)self debugBadgeInfoType];
  if (result == 2)
  {

    PXAssetBadgeInfoCreateWithBadges();
  }

  if (result == 1)
  {

    PXAssetBadgeInfoCreateWithDuration();
  }

  return result;
}

+ (void)_fillLibraryWithFakeAssets:(id)a3
{
  v3 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__PXPhotosDetailsSettings_UI___fillLibraryWithFakeAssets___block_invoke;
  v6[3] = &unk_1E7741CB8;
  v7 = v3;
  v4 = v3;
  v5 = [off_1E7721438 show:v6];
}

void __58__PXPhotosDetailsSettings_UI___fillLibraryWithFakeAssets___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTitle:@"Fill Library with Fake Assets?"];
  [v3 setMessage:@"The fake assets will be added at the very beginning of your photo library."];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__PXPhotosDetailsSettings_UI___fillLibraryWithFakeAssets___block_invoke_2;
  v4[3] = &unk_1E774C648;
  v5 = *(a1 + 32);
  [v3 addActionWithTitle:@"Fill" style:0 action:v4];
  [v3 addActionWithTitle:@"Cancel" style:1 action:0];
}

void __58__PXPhotosDetailsSettings_UI___fillLibraryWithFakeAssets___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PXPhotosDetailsSettings_UI___fillLibraryWithFakeAssets___block_invoke_4;
  v7[3] = &unk_1E773B5A0;
  v9 = a2;
  v8 = v4;
  v5 = v4;
  v6 = [off_1E7721438 show:v7];
}

void __58__PXPhotosDetailsSettings_UI___fillLibraryWithFakeAssets___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = @"Done";
  }

  else
  {
    v4 = @"Failed";
  }

  v5 = v3;
  [v3 setTitle:v4];
  if (*(a1 + 32))
  {
    [v5 configureForError:?];
  }
}

+ (id)settingsControllerModule
{
  v230[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v4 = MEMORY[0x1E69C6638];
  v5 = MEMORY[0x1E69C65E8];
  v220[0] = MEMORY[0x1E69E9820];
  v220[1] = 3221225472;
  v220[2] = __55__PXPhotosDetailsSettings_UI__settingsControllerModule__block_invoke;
  v220[3] = &unk_1E773B578;
  v6 = v3;
  v221 = v6;
  v7 = [v5 px_rowWithTitle:@"Test Photos Details" action:v220];
  v230[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v230 count:1];
  v216 = [v4 sectionWithRows:v8];

  v9 = &unk_1F1910960;
  v213 = MEMORY[0x1E69C6638];
  v10 = MEMORY[0x1E69C65F8];
  v208 = NSStringFromSelector(sel_defaultCurationAlgorithm);
  v203 = [v10 rowWithTitle:@"Default Curation" valueKeyPath:v208];
  v198 = [v203 px_possibleValues:&unk_1F1910960 formatter:&__block_literal_global_126535];
  v229[0] = v198;
  v11 = MEMORY[0x1E69C65F8];
  v193 = NSStringFromSelector(sel_detailsViewCurationAlgorithm);
  v188 = [v11 rowWithTitle:@"Details View Curation" valueKeyPath:v193];
  v183 = [v188 px_possibleValues:&unk_1F1910960 formatter:&__block_literal_global_126535];
  v229[1] = v183;
  v12 = MEMORY[0x1E69C65E8];
  v13 = MEMORY[0x1E69C6658];
  v217[0] = MEMORY[0x1E69E9820];
  v217[1] = 3221225472;
  v217[2] = __55__PXPhotosDetailsSettings_UI__settingsControllerModule__block_invoke_3;
  v217[3] = &unk_1E7747050;
  v218 = v6;
  v219 = a1;
  v215 = v6;
  v178 = [v13 actionWithHandler:v217];
  v168 = [v12 rowWithTitle:@"Fill Library with Fake Assets" action:v178];
  v14 = MEMORY[0x1E696AE18];
  v173 = NSStringFromSelector(sel_detailsViewCurationAlgorithm);
  v163 = [v14 predicateWithFormat:@"%K == %d", v173, 2];
  v159 = [v168 condition:v163];
  v229[2] = v159;
  v15 = MEMORY[0x1E69C66A8];
  v156 = NSStringFromSelector(sel_enableFetchResultCaching);
  v153 = [v15 rowWithTitle:@"Fetch Result Caching" valueKeyPath:v156];
  v229[3] = v153;
  v16 = MEMORY[0x1E69C66A0];
  v150 = NSStringFromSelector(sel_fakeFetchDelay);
  v147 = [v16 rowWithTitle:@"Fake Fetch Delay" valueKeyPath:v150];
  v144 = [v147 minValue:0.0 maxValue:3.0];
  v141 = [v144 px_increment:0.1];
  v229[4] = v141;
  v17 = MEMORY[0x1E69C66A8];
  v138 = NSStringFromSelector(sel_showActionsWidget);
  v135 = [v17 rowWithTitle:@"Actions Widget" valueKeyPath:v138];
  v229[5] = v135;
  v18 = MEMORY[0x1E69C66A8];
  v132 = NSStringFromSelector(sel_allowMultiColumnLayout);
  v19 = [v18 rowWithTitle:@"Multi Column Layout" valueKeyPath:v132];
  v229[6] = v19;
  v20 = MEMORY[0x1E69C66A8];
  v21 = NSStringFromSelector(sel_allowsTopTrailingSelectCancelButton);
  v22 = [v20 rowWithTitle:@"Top Select/Cancel" valueKeyPath:v21];
  v229[7] = v22;
  v23 = MEMORY[0x1E69C66A8];
  v24 = NSStringFromSelector(sel_showFacesAreaRect);
  v25 = [v23 rowWithTitle:@"Show Faces Area Rect" valueKeyPath:v24];
  v229[8] = v25;
  v26 = MEMORY[0x1E69C66A8];
  v27 = NSStringFromSelector(sel_draggableInfoPanelEnabled);
  v28 = [v26 rowWithTitle:@"Draggable Info Panel" valueKeyPath:v27];
  v229[9] = v28;
  v29 = MEMORY[0x1E69C66A8];
  v30 = NSStringFromSelector(sel_formattedLensStringsEnabled);
  v31 = [v29 rowWithTitle:@"Formatted Lens Strings" valueKeyPath:v30];
  v229[10] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v229 count:11];
  v214 = [v213 sectionWithRows:v32 title:@"Settings"];

  v157 = MEMORY[0x1E69C6638];
  v33 = MEMORY[0x1E69C66A8];
  v209 = NSStringFromSelector(sel_showVisualLookUpWidget);
  v204 = [v33 rowWithTitle:@"Visual Lookup Widget" valueKeyPath:v209];
  v228[0] = v204;
  v34 = MEMORY[0x1E69C66A8];
  v199 = NSStringFromSelector(sel_showAlbumAttributionWidget);
  v194 = [v34 rowWithTitle:@"Album Attribution Widget" valueKeyPath:v199];
  v228[1] = v194;
  v35 = MEMORY[0x1E69C66A8];
  v189 = NSStringFromSelector(sel_showAppAttributionWidget);
  v184 = [v35 rowWithTitle:@"Saved From Apps Widget" valueKeyPath:v189];
  v228[2] = v184;
  v36 = MEMORY[0x1E69C66A8];
  v179 = NSStringFromSelector(sel_showTimeWidget);
  v174 = [v36 rowWithTitle:@"Date & Time Widget" valueKeyPath:v179];
  v228[3] = v174;
  v37 = MEMORY[0x1E69C66A8];
  v169 = NSStringFromSelector(sel_showEXIFWidget);
  v164 = [v37 rowWithTitle:@"EXIF Widget" valueKeyPath:v169];
  v228[4] = v164;
  v38 = MEMORY[0x1E69C66A8];
  v160 = NSStringFromSelector(sel_showAssetDescriptionWidget);
  v154 = [v38 rowWithTitle:@"Asset Description Widget" valueKeyPath:v160];
  v228[5] = v154;
  v39 = MEMORY[0x1E69C66A8];
  v151 = NSStringFromSelector(sel_showAssetRichDescription);
  v148 = [v39 rowWithTitle:@"Asset Rich Description" valueKeyPath:v151];
  v228[6] = v148;
  v40 = MEMORY[0x1E69C66A8];
  v145 = NSStringFromSelector(sel_useShadowNamesInARD);
  v142 = [v40 rowWithTitle:@"Shadow Names in ARD" valueKeyPath:v145];
  v228[7] = v142;
  v41 = MEMORY[0x1E69C66A8];
  v139 = NSStringFromSelector(sel_showHeaderWidget);
  v136 = [v41 rowWithTitle:@"Header Widget" valueKeyPath:v139];
  v228[8] = v136;
  v42 = MEMORY[0x1E69C66A8];
  v133 = NSStringFromSelector(sel_showAssetsWidget);
  v131 = [v42 rowWithTitle:@"Assets Widget" valueKeyPath:v133];
  v228[9] = v131;
  v43 = MEMORY[0x1E69C66A8];
  v130 = NSStringFromSelector(sel_showCaptionHashtagsWidget);
  v129 = [v43 rowWithTitle:@"Caption&Hashtags Widget" valueKeyPath:v130];
  v228[10] = v129;
  v44 = MEMORY[0x1E69C66A8];
  v128 = NSStringFromSelector(sel_showDemoTilingViewWidget);
  v127 = [v44 rowWithTitle:@"Demo Tiling View Widget" valueKeyPath:v128];
  v228[11] = v127;
  v45 = MEMORY[0x1E69C66A8];
  v126 = NSStringFromSelector(sel_showDemoViewWidget);
  v46 = [v45 rowWithTitle:@"Demo View Widget" valueKeyPath:v126];
  v228[12] = v46;
  v47 = MEMORY[0x1E69C66A8];
  v48 = NSStringFromSelector(sel_showDemoDynamicWidget);
  v49 = [v47 rowWithTitle:@"Demo Dynamic Widget" valueKeyPath:v48];
  v228[13] = v49;
  v50 = MEMORY[0x1E69C66A8];
  v51 = NSStringFromSelector(sel_showPlacesWidget);
  v52 = [v50 rowWithTitle:@"Places Widget" valueKeyPath:v51];
  v228[14] = v52;
  v53 = MEMORY[0x1E69C66A8];
  v54 = NSStringFromSelector(sel_showSharedLibraryWidget);
  v55 = [v53 rowWithTitle:@"Shared Library Widget" valueKeyPath:v54];
  v228[15] = v55;
  v56 = MEMORY[0x1E69C66A8];
  v57 = NSStringFromSelector(sel_showActionsWidget);
  v58 = [v56 rowWithTitle:@"Actions Widget" valueKeyPath:v57];
  v228[16] = v58;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v228 count:17];
  aSelector = [v157 sectionWithRows:v59 title:@"Info Panel"];

  v210 = MEMORY[0x1E69C6638];
  v60 = MEMORY[0x1E69C66A8];
  v205 = NSStringFromSelector(sel_purgeOnMemoryWarning);
  v200 = [v60 rowWithTitle:@"Purge On Memory Warning" valueKeyPath:v205];
  v227[0] = v200;
  v61 = MEMORY[0x1E69C66A0];
  v195 = NSStringFromSelector(sel_detailViewsToKeepLoaded);
  v190 = [v61 rowWithTitle:@"Detail Views to Keep Loaded" valueKeyPath:v195];
  v185 = [v190 minValue:0.0 maxValue:20.0];
  v180 = [v185 px_increment:1.0];
  v227[1] = v180;
  v62 = MEMORY[0x1E69C66A8];
  v175 = NSStringFromSelector(sel_allowWidgetsContentLoading);
  v170 = [v62 rowWithTitle:@"Widgets Content Loading" valueKeyPath:v175];
  v227[2] = v170;
  v63 = MEMORY[0x1E69C66A8];
  v165 = NSStringFromSelector(sel_loadAllWidgetsContentAfterDelay);
  v161 = [v63 rowWithTitle:@"Load All Widgets after Delay" valueKeyPath:v165];
  v64 = [v161 conditionFormat:@"allowWidgetsContentLoading != 0"];
  v227[3] = v64;
  v65 = MEMORY[0x1E69C66A8];
  v66 = NSStringFromSelector(sel_loadAllWidgetsContentOnScroll);
  v67 = [v65 rowWithTitle:@"Load All Widgets on Scroll" valueKeyPath:v66];
  v68 = [v67 conditionFormat:@"allowWidgetsContentLoading != 0"];
  v227[4] = v68;
  v69 = MEMORY[0x1E69C66A0];
  v70 = NSStringFromSelector(sel_defaultPriorityWidgetsLoadingDelay);
  v71 = [v69 rowWithTitle:@"Default Priority Load Delay" valueKeyPath:v70];
  v72 = [v71 minValue:0.0 maxValue:2.0];
  v73 = [v72 px_increment:0.1];
  v74 = [v73 conditionFormat:@"allowWidgetsContentLoading != 0"];
  v227[5] = v74;
  v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v227 count:6];
  v211 = [v210 sectionWithRows:v75 title:@"Loading"];

  v206 = MEMORY[0x1E69C6638];
  v76 = MEMORY[0x1E69C66A8];
  v201 = NSStringFromSelector(sel_useCuratedLibraryLayout);
  v196 = [v76 rowWithTitle:@"Curated Library Layout" valueKeyPath:v201];
  v226[0] = v196;
  v77 = MEMORY[0x1E69C66A8];
  v191 = NSStringFromSelector(sel_allowItemReorderingInCuratedLayout);
  v186 = [v77 rowWithTitle:@"Allow Curated Items Reordering" valueKeyPath:v191];
  v226[1] = v186;
  v78 = MEMORY[0x1E69C66A8];
  v181 = NSStringFromSelector(sel_editorialLayoutEdit);
  v176 = [v78 rowWithTitle:@"Editorial Layout Edit" valueKeyPath:v181];
  v226[2] = v176;
  v79 = MEMORY[0x1E69C66A0];
  v171 = NSStringFromSelector(sel_editorialLayoutColumns);
  v166 = [v79 rowWithTitle:@"Editorial Layout Columns" valueKeyPath:v171];
  v162 = [v166 minValue:3.0 maxValue:8.0];
  v158 = [v162 px_increment:1.0];
  v226[3] = v158;
  v80 = MEMORY[0x1E69C65F8];
  v155 = NSStringFromSelector(sel_editorialLayoutTargetRowsForChunk);
  v152 = [v80 rowWithTitle:@"Editorial Layout Target Rows For Chunk" valueKeyPath:v155];
  v149 = [v152 possibleValues:&unk_1F1910CF0 titles:&unk_1F1910D08];
  v226[4] = v149;
  v81 = MEMORY[0x1E69C66A8];
  v146 = NSStringFromSelector(sel_editorialLayoutAvoidSmallestTile);
  v143 = [v81 rowWithTitle:@"Editorial Layout Avoid Smallest Tile" valueKeyPath:v146];
  v226[5] = v143;
  v82 = MEMORY[0x1E69C65F8];
  v140 = NSStringFromSelector(sel_editorialLayoutActivityFeedItemCountThreshold);
  v137 = [v82 rowWithTitle:@"Editorial Activity Feed Layout" valueKeyPath:v140];
  v134 = [v137 possibleValues:&unk_1F1910D20 titles:&unk_1F1910D38];
  v226[6] = v134;
  v83 = MEMORY[0x1E69C66A0];
  v84 = NSStringFromSelector(sel_assetsWidgetPlaceholderAspectRatio);
  v85 = [v83 rowWithTitle:@"Placeholder Aspect Ratio" valueKeyPath:v84];
  v86 = [v85 minValue:0.25 maxValue:4.0];
  v87 = [v86 px_increment:0.25];
  v226[7] = v87;
  v88 = MEMORY[0x1E69C66A8];
  v89 = NSStringFromSelector(sel_allowEditorialLayoutStressTest);
  v90 = [v88 rowWithTitle:@"Allow Editorial Layout Stress Test" valueKeyPath:v89];
  v226[8] = v90;
  v91 = MEMORY[0x1E69C65F8];
  v92 = NSStringFromSelector(sel_debugBadgeInfoType);
  v93 = [v91 rowWithTitle:@"Debug Badges" valueKeyPath:v92];
  v94 = [v93 possibleValues:&unk_1F1910D50 titles:&unk_1F1910D68];
  v226[9] = v94;
  v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:v226 count:10];
  v207 = [v206 sectionWithRows:v95 title:@"Assets Widget" conditionFormat:@"showAssetsWidget != 0"];

  v96 = MEMORY[0x1E69C6638];
  v97 = MEMORY[0x1E69C66A8];
  v98 = NSStringFromSelector(sel_placesWidgetShowOnlyPlaceholder);
  v99 = [v97 rowWithTitle:@"Placeholder Only" valueKeyPath:v98];
  v225 = v99;
  v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v225 count:1];
  v202 = [v96 sectionWithRows:v100 title:@"Places Widget" conditionFormat:@"showPlacesWidget != 0"];

  v101 = MEMORY[0x1E69C6638];
  v102 = MEMORY[0x1E69C66A8];
  v103 = NSStringFromSelector(sel_showLookUpWidgetSearchIcon);
  v104 = [v102 rowWithTitle:@"Enable Search Icon" valueKeyPath:v103];
  v224 = v104;
  v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v224 count:1];
  v197 = [v101 sectionWithRows:v105 title:@"Visual LookUp Widget" conditionFormat:@"showVisualLookUpWidget != 0"];

  v172 = MEMORY[0x1E69C6638];
  v106 = MEMORY[0x1E69C66A8];
  v192 = NSStringFromSelector(sel_captionWidgetEnableHashtags);
  v187 = [v106 rowWithTitle:@"Enable Hashtags" valueKeyPath:v192];
  v223[0] = v187;
  v107 = MEMORY[0x1E69C66A8];
  v182 = NSStringFromSelector(sel_captionWidgetEnableVScrollingInEdit);
  v177 = [v107 rowWithTitle:@"Enable V-Scrolling in Edit" valueKeyPath:v182];
  v223[1] = v177;
  v108 = MEMORY[0x1E69C66A8];
  v167 = NSStringFromSelector(sel_captionWidgetEnableFadeInEffect);
  v109 = [v108 rowWithTitle:@"Enable Fade-In effect" valueKeyPath:v167];
  v223[2] = v109;
  v110 = MEMORY[0x1E69C66A0];
  v111 = NSStringFromSelector(sel_captionWidgetFadeInDuration);
  v112 = [v110 rowWithTitle:@"Fade-In duration" valueKeyPath:v111];
  v113 = [v112 minValue:0.25 maxValue:1.0];
  v114 = [v113 px_increment:0.05];
  v115 = [v114 conditionFormat:@"captionWidgetEnableFadeInEffect != 0"];
  v223[3] = v115;
  v116 = MEMORY[0x1E69C66A8];
  v117 = NSStringFromSelector(sel_captionWidgetEnableDirectAttachToMaster);
  v118 = [v116 rowWithTitle:@"Enable Direct Attach to Master Photo" valueKeyPath:v117];
  v223[4] = v118;
  v119 = [MEMORY[0x1E695DEC8] arrayWithObjects:v223 count:5];
  v120 = [v172 sectionWithRows:v119 title:@"Caption Widget" conditionFormat:@"showCaptionHashtagsWidget != 0"];

  v121 = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v122 = MEMORY[0x1E69C6638];
  v222[0] = v216;
  v222[1] = v214;
  v222[2] = aSelector;
  v222[3] = v211;
  v222[4] = v207;
  v222[5] = v120;
  v222[6] = v197;
  v222[7] = v202;
  v222[8] = v121;
  v123 = [MEMORY[0x1E695DEC8] arrayWithObjects:v222 count:9];
  v124 = [v122 moduleWithTitle:@"Photos Details" contents:v123];

  return v124;
}

void __55__PXPhotosDetailsSettings_UI__settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v9 = [v2 librarySpecificFetchOptions];
  [v9 setFetchLimit:1];
  v4 = [MEMORY[0x1E6978650] fetchMomentsWithOptions:v9];
  v5 = [[PXPhotosDataSourceConfiguration alloc] initWithCollectionListFetchResult:v4 options:0];
  [(PXPhotosDataSourceConfiguration *)v5 setHideHiddenAssets:1];
  v6 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v5];
  v7 = [[PXPhotosDetailsContext alloc] initWithPhotosDataSource:v6 displayTitleInfo:0 parentContext:0 keyAssetsFetchResult:0];
  v8 = [[PXPhotosDetailsUIViewController alloc] initWithContext:v7 options:3072];
  [v3 px_presentViewControllerInNavigationController:v8 animated:1 dimissButtonLocation:1 completion:0];
}

__CFString *__55__PXPhotosDetailsSettings_UI__settingsControllerModule__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];

  return PXPhotosCurationAlgorithmDescription(v2);
}

+ (id)transientProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PXPhotosDetailsSettings_transientProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (transientProperties_onceToken_184895 != -1)
  {
    dispatch_once(&transientProperties_onceToken_184895, block);
  }

  v2 = transientProperties_transientProperties_184896;

  return v2;
}

void __46__PXPhotosDetailsSettings_transientProperties__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___PXPhotosDetailsSettings;
  v1 = objc_msgSendSuper2(&v5, sel_transientProperties);
  v2 = NSStringFromSelector(sel_debugBadgeInfo);
  v3 = [v1 setByAddingObject:v2];
  v4 = transientProperties_transientProperties_184896;
  transientProperties_transientProperties_184896 = v3;
}

@end