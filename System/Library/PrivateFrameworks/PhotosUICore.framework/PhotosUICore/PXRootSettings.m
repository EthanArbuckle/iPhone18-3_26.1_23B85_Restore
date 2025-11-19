@interface PXRootSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
+ (id)transientProperties;
+ (void)_manageHomeScreenQuickActions;
- (BOOL)hideWIPAlerts;
- (void)createChildren;
- (void)restoreDefaultValues;
- (void)setCanShowInternalUI:(BOOL)a3;
- (void)setDefaultValues;
- (void)setHideWIPAlerts:(BOOL)a3;
- (void)setShowLibraryFilterTip:(BOOL)a3;
@end

@implementation PXRootSettings

+ (id)sharedInstance
{
  os_unfair_lock_lock(&PXSettingsSharedInstanceLock);
  if (!sharedInstance_sharedInstance_80424)
  {
    v3 = [a1 createSharedInstance];
    v4 = sharedInstance_sharedInstance_80424;
    sharedInstance_sharedInstance_80424 = v3;
  }

  os_unfair_lock_unlock(&PXSettingsSharedInstanceLock);
  v5 = sharedInstance_sharedInstance_80424;

  return v5;
}

- (void)createChildren
{
  v3 = [(PTSettings *)[PXCPLStatusSettings alloc] initWithDefaultValues];
  cplStatusSettings = self->_cplStatusSettings;
  self->_cplStatusSettings = v3;

  v5 = [(PTSettings *)[PXDuplicatesSettings alloc] initWithDefaultValues];
  duplicatesSettings = self->_duplicatesSettings;
  self->_duplicatesSettings = v5;

  v7 = [(PTSettings *)[PXAssetsRecoverySettings alloc] initWithDefaultValues];
  assetsRecoverySettings = self->_assetsRecoverySettings;
  self->_assetsRecoverySettings = v7;

  v9 = [(PTSettings *)[PXDocumentMenuSettings alloc] initWithDefaultValues];
  documentMenuSettings = self->_documentMenuSettings;
  self->_documentMenuSettings = v9;

  v11 = [(PTSettings *)[PXMacSyncedAlbumsSettings alloc] initWithDefaultValues];
  macSyncedAlbumsSettings = self->_macSyncedAlbumsSettings;
  self->_macSyncedAlbumsSettings = v11;

  v13 = [(PTSettings *)[PXImageModulationSettings alloc] initWithDefaultValues];
  imageModulationSettings = self->_imageModulationSettings;
  self->_imageModulationSettings = v13;

  v15 = [(PTSettings *)[PXSharedLibrarySettings alloc] initWithDefaultValues];
  sharedLibrarySettings = self->_sharedLibrarySettings;
  self->_sharedLibrarySettings = v15;

  v17 = [(PTSettings *)[PXAlbumsDebugUISettings alloc] initWithDefaultValues];
  albumsDebugUISettings = self->_albumsDebugUISettings;
  self->_albumsDebugUISettings = v17;

  v19 = [(PTSettings *)[PXDragAndDropSettings alloc] initWithDefaultValues];
  dragAndDrop = self->_dragAndDrop;
  self->_dragAndDrop = v19;

  v21 = [(PTSettings *)[PXForYouSettings alloc] initWithDefaultValues];
  forYou = self->_forYou;
  self->_forYou = v21;

  v23 = [(PTSettings *)[PXPeopleDetailSettings alloc] initWithDefaultValues];
  peopleDetail = self->_peopleDetail;
  self->_peopleDetail = v23;

  v25 = [(PTSettings *)[PXPhotosDetailsHeaderTileSettings alloc] initWithDefaultValues];
  photosDetailsHeaderTile = self->_photosDetailsHeaderTile;
  self->_photosDetailsHeaderTile = v25;

  v27 = [(PTSettings *)[PXImportSettings alloc] initWithDefaultValues];
  importSettings = self->_importSettings;
  self->_importSettings = v27;

  v29 = [(PTSettings *)[PXDiagnosticsSettings alloc] initWithDefaultValues];
  diagnostics = self->_diagnostics;
  self->_diagnostics = v29;

  v31 = [(PTSettings *)[PXInlineVideoStabilizationSettings alloc] initWithDefaultValues];
  inlineVideoStabilizationSettings = self->_inlineVideoStabilizationSettings;
  self->_inlineVideoStabilizationSettings = v31;

  v33 = [(PTSettings *)[PXPhotosDetailsNavigationSettings alloc] initWithDefaultValues];
  detailsNavigationSettings = self->_detailsNavigationSettings;
  self->_detailsNavigationSettings = v33;

  v35 = [(PTSettings *)[PXPeopleUISettings alloc] initWithDefaultValues];
  peopleUISettings = self->_peopleUISettings;
  self->_peopleUISettings = v35;

  v37 = [(PTSettings *)[PXApplicationSettings alloc] initWithDefaultValues];
  applicationSettings = self->_applicationSettings;
  self->_applicationSettings = v37;

  v39 = [(PTSettings *)[PXAudioSettings alloc] initWithDefaultValues];
  audioSettings = self->_audioSettings;
  self->_audioSettings = v39;

  v41 = [(PTSettings *)[PXStorySettings alloc] initWithDefaultValues];
  storySettings = self->_storySettings;
  self->_storySettings = v41;

  v43 = [(PTSettings *)[PXVideoPlaybackSettings alloc] initWithDefaultValues];
  videoPlaybackSettings = self->_videoPlaybackSettings;
  self->_videoPlaybackSettings = v43;

  v45 = [(PTSettings *)[PXAssetsSceneSettings alloc] initWithDefaultValues];
  assetsScene = self->_assetsScene;
  self->_assetsScene = v45;

  v47 = [(PTSettings *)[PXCompleteMyMomentSettings alloc] initWithDefaultValues];
  completeMyMoment = self->_completeMyMoment;
  self->_completeMyMoment = v47;

  v49 = [(PTSettings *)[PXCuratedLibrarySettings alloc] initWithDefaultValues];
  curatedLibrarySettings = self->_curatedLibrarySettings;
  self->_curatedLibrarySettings = v49;

  v51 = [(PTSettings *)[PXCursorInteractionSettings alloc] initWithDefaultValues];
  cursorInteractionSettings = self->_cursorInteractionSettings;
  self->_cursorInteractionSettings = v51;

  v53 = [(PTSettings *)[PXPasteboardAssetSettings alloc] initWithDefaultValues];
  dragDropSettings = self->_dragDropSettings;
  self->_dragDropSettings = v53;

  v55 = [(PTSettings *)[PXFooterSettings alloc] initWithDefaultValues];
  footerSettings = self->_footerSettings;
  self->_footerSettings = v55;

  v57 = [(PTSettings *)[PXGridSettings alloc] initWithDefaultValues];
  grid = self->_grid;
  self->_grid = v57;

  v59 = [[PXGPPTSettings alloc] initWithDefaultValues];
  tungstenPPTSettings = self->_tungstenPPTSettings;
  self->_tungstenPPTSettings = v59;

  v61 = [(PTSettings *)[PXKeyboardSettings alloc] initWithDefaultValues];
  keyboardSettings = self->_keyboardSettings;
  self->_keyboardSettings = v61;

  v63 = [(PTSettings *)[PXKitSettings alloc] initWithDefaultValues];
  kit = self->_kit;
  self->_kit = v63;

  v65 = [(PTSettings *)[PXWorkaroundSettings alloc] initWithDefaultValues];
  workaroundSettings = self->_workaroundSettings;
  self->_workaroundSettings = v65;

  v67 = [(PTSettings *)[PXMemoriesRelatedSettings alloc] initWithDefaultValues];
  memoriesRelated = self->_memoriesRelated;
  self->_memoriesRelated = v67;

  v69 = [(PTSettings *)[PXUpNextSettings alloc] initWithDefaultValues];
  upNextSettings = self->_upNextSettings;
  self->_upNextSettings = v69;

  v71 = [(PTSettings *)[PXMemoriesFeedSettings alloc] initWithDefaultValues];
  memoryFeed = self->_memoryFeed;
  self->_memoryFeed = v71;

  v73 = [(PTSettings *)[PXContentPrivacySettings alloc] initWithDefaultValues];
  contentPrivacySettings = self->_contentPrivacySettings;
  self->_contentPrivacySettings = v73;

  v75 = [(PTSettings *)[PXContentSyndicationSettings alloc] initWithDefaultValues];
  contentSyndicationSettings = self->_contentSyndicationSettings;
  self->_contentSyndicationSettings = v75;

  v77 = [(PTSettings *)[PXMessagesUISettings alloc] initWithDefaultValues];
  messagesUISettings = self->_messagesUISettings;
  self->_messagesUISettings = v77;

  v79 = [(PTSettings *)[PXModelSettings alloc] initWithDefaultValues];
  model = self->_model;
  self->_model = v79;

  v81 = [(PTSettings *)[PXOneUpSettings alloc] initWithDefaultValues];
  oneUpSettings = self->_oneUpSettings;
  self->_oneUpSettings = v81;

  v83 = [(PTSettings *)[PXPhotosDataSourceSettings alloc] initWithDefaultValues];
  photosDataSource = self->_photosDataSource;
  self->_photosDataSource = v83;

  v85 = [(PTSettings *)[PXPhotosDetailsSettings alloc] initWithDefaultValues];
  photosDetails = self->_photosDetails;
  self->_photosDetails = v85;

  v87 = [(PTSettings *)[PXSearchSettings alloc] initWithDefaultValues];
  searchSettings = self->_searchSettings;
  self->_searchSettings = v87;

  v89 = [(PTSettings *)[PXSharingSettings alloc] initWithDefaultValues];
  sharingSettings = self->_sharingSettings;
  self->_sharingSettings = v89;

  v91 = [(PTSettings *)[PXSharedAlbumsSettings alloc] initWithDefaultValues];
  sharedAlbumsSettings = self->_sharedAlbumsSettings;
  self->_sharedAlbumsSettings = v91;

  v93 = [(PTSettings *)[PXSharedCollectionsSettings alloc] initWithDefaultValues];
  sharedCollectionsSettings = self->_sharedCollectionsSettings;
  self->_sharedCollectionsSettings = v93;

  v95 = [(PTSettings *)[PXGenerativeStorySettings alloc] initWithDefaultValues];
  generativeStorySettings = self->_generativeStorySettings;
  self->_generativeStorySettings = v95;

  v97 = [(PTSettings *)[PXStickersSettings alloc] initWithDefaultValues];
  stickersSettings = self->_stickersSettings;
  self->_stickersSettings = v97;

  v99 = [(PTSettings *)[PXTilingSettings alloc] initWithDefaultValues];
  tiling = self->_tiling;
  self->_tiling = v99;

  v101 = [(PTSettings *)[PXAssetVariationsSettings alloc] initWithDefaultValues];
  variationsSettings = self->_variationsSettings;
  self->_variationsSettings = v101;

  v103 = [(PTSettings *)[PXSwipeDownSettings alloc] initWithDefaultValues];
  swipeDownSettings = self->_swipeDownSettings;
  self->_swipeDownSettings = v103;

  v105 = [(PTSettings *)[PXMediaProviderSettings alloc] initWithDefaultValues];
  mediaProviderSettings = self->_mediaProviderSettings;
  self->_mediaProviderSettings = v105;

  v107 = [(PTSettings *)[PXDisplayAssetViewDemoSettings alloc] initWithDefaultValues];
  assetViewDemoSettings = self->_assetViewDemoSettings;
  self->_assetViewDemoSettings = v107;

  v109 = [(PTSettings *)[PXSystemNavigationSettings alloc] initWithDefaultValues];
  systemNavigationSettings = self->_systemNavigationSettings;
  self->_systemNavigationSettings = v109;

  v111 = [(PTSettings *)[PXLemonadeSettings alloc] initWithDefaultValues];
  lemonadeSettings = self->_lemonadeSettings;
  self->_lemonadeSettings = v111;

  v113 = [(PTSettings *)[PXSolariumSettings alloc] initWithDefaultValues];
  solariumSettings = self->_solariumSettings;
  self->_solariumSettings = v113;

  v115 = [(PTSettings *)[PXMapSettings alloc] initWithDefaultValues];
  mapSettings = self->_mapSettings;
  self->_mapSettings = v115;
}

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXRootSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXRootSettings *)self setShowLibraryFilterTip:0];
}

- (void)restoreDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXRootSettings;
  [(PXSettings *)&v3 restoreDefaultValues];
  [(PXRootSettings *)self setCanShowInternalUI:1];
}

- (void)setShowLibraryFilterTip:(BOOL)a3
{
  if (self->_showLibraryFilterTip != a3)
  {
    self->_showLibraryFilterTip = a3;
    if (a3)
    {
      v4 = @"PhotosLibraryTipContextMock";
    }

    else
    {
      v4 = 0;
    }

    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v5 setValue:v4 forKey:@"TipKitOverrideAlwaysDisplayContentForContext"];
  }
}

- (BOOL)hideWIPAlerts
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"PXRootSettingsHideWIPAlerts"];

  return v3;
}

- (void)setHideWIPAlerts:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setBool:v3 forKey:@"PXRootSettingsHideWIPAlerts"];
}

- (void)setCanShowInternalUI:(BOOL)a3
{
  v3 = a3;
  v4 = [off_1E7721948 standardUserDefaults];
  [v4 setInternalUIDisabled:!v3];
}

+ (id)transientProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PXRootSettings_transientProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (transientProperties_onceToken_80421 != -1)
  {
    dispatch_once(&transientProperties_onceToken_80421, block);
  }

  v2 = transientProperties_transientProperties_80422;

  return v2;
}

void __37__PXRootSettings_transientProperties__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___PXRootSettings;
  v1 = objc_msgSendSuper2(&v5, sel_transientProperties);
  v2 = NSStringFromSelector(sel_canShowInternalUI);
  v3 = [v1 setByAddingObject:v2];
  v4 = transientProperties_transientProperties_80422;
  transientProperties_transientProperties_80422 = v3;
}

+ (void)_manageHomeScreenQuickActions
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__PXRootSettings_UI___manageHomeScreenQuickActions__block_invoke;
  v3[3] = &__block_descriptor_40_e30_v16__0__PXAlertConfiguration_8l;
  v3[4] = a1;
  v2 = [off_1E7721438 show:v3];
}

void __51__PXRootSettings_UI___manageHomeScreenQuickActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTitle:@"Home Screen Quick Actions"];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__PXRootSettings_UI___manageHomeScreenQuickActions__block_invoke_2;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = *(a1 + 32);
  [v3 addActionWithTitle:@"Show Internal Quick Actions" style:0 action:v5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__PXRootSettings_UI___manageHomeScreenQuickActions__block_invoke_3;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = *(a1 + 32);
  [v3 addActionWithTitle:@"Hide Internal Quick Actions" style:0 action:v4];
  [v3 addActionWithTitle:@"Cancel" style:1 action:0];
}

+ (id)settingsControllerModule
{
  v124[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = MEMORY[0x1E69C66A8];
  v4 = NSStringFromSelector(sel_canShowInternalUI);
  v5 = [v3 rowWithTitle:@"Internal UI" valueKeyPath:v4];
  v124[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:1];
  v118 = [v2 sectionWithRows:v6];

  v119 = [MEMORY[0x1E695DF70] array];
  v7 = MEMORY[0x1E69C6610];
  v115 = NSStringFromSelector(sel_lemonadeSettings);
  v113 = [v7 rowWithTitle:@"Lemonade" childSettingsKeyPath:v115];
  v123[0] = v113;
  v8 = MEMORY[0x1E69C6610];
  v112 = NSStringFromSelector(sel_solariumSettings);
  v111 = [v8 rowWithTitle:@"Solarium" childSettingsKeyPath:v112];
  v123[1] = v111;
  v110 = [MEMORY[0x1E69C6610] rowWithTitle:@"Diagnostics" childSettingsKeyPath:@"diagnostics"];
  v123[2] = v110;
  v9 = MEMORY[0x1E69C6610];
  v109 = NSStringFromSelector(sel_detailsNavigationSettings);
  v108 = [v9 rowWithTitle:@"Details Navigation" childSettingsKeyPath:v109];
  v123[3] = v108;
  v10 = MEMORY[0x1E69C6610];
  v107 = NSStringFromSelector(sel_storySettings);
  v106 = [v10 rowWithTitle:@"Interactive Memories" childSettingsKeyPath:v107];
  v123[4] = v106;
  v105 = [MEMORY[0x1E69C6610] rowWithTitle:@"Curated Library" childSettingsKeyPath:@"curatedLibrarySettings"];
  v123[5] = v105;
  v104 = [MEMORY[0x1E69C6610] rowWithTitle:@"Footer" childSettingsKeyPath:@"footerSettings"];
  v123[6] = v104;
  v103 = [MEMORY[0x1E69C6610] rowWithTitle:@"Image Modulation Settings" childSettingsKeyPath:@"imageModulationSettings"];
  v123[7] = v103;
  v102 = [MEMORY[0x1E69C6610] rowWithTitle:@"Tungsten PPT" childSettingsKeyPath:@"tungstenPPTSettings"];
  v123[8] = v102;
  v101 = [MEMORY[0x1E69C6610] rowWithTitle:@"Keyboard" childSettingsKeyPath:@"keyboardSettings"];
  v123[9] = v101;
  v100 = [MEMORY[0x1E69C6610] rowWithTitle:@"Photos Details" childSettingsKeyPath:@"photosDetails"];
  v123[10] = v100;
  v99 = [MEMORY[0x1E69C6610] rowWithTitle:@"Photos Details Header Tile" childSettingsKeyPath:@"photosDetailsHeaderTile"];
  v123[11] = v99;
  v98 = [MEMORY[0x1E69C6610] rowWithTitle:@"Memory Feed" childSettingsKeyPath:@"memoryFeed"];
  v123[12] = v98;
  v97 = [MEMORY[0x1E69C6610] rowWithTitle:@"Memories & Storytelling" childSettingsKeyPath:@"memoriesRelated"];
  v123[13] = v97;
  v11 = MEMORY[0x1E69C6610];
  v96 = NSStringFromSelector(sel_upNextSettings);
  v95 = [v11 rowWithTitle:@"Up Next" childSettingsKeyPath:v96];
  v123[14] = v95;
  v94 = [MEMORY[0x1E69C6610] rowWithTitle:@"Content Privacy" childSettingsKeyPath:@"contentPrivacySettings"];
  v123[15] = v94;
  v93 = [MEMORY[0x1E69C6610] rowWithTitle:@"Content Syndication" childSettingsKeyPath:@"contentSyndicationSettings"];
  v123[16] = v93;
  v12 = MEMORY[0x1E69C6610];
  v92 = NSStringFromSelector(sel_messagesUISettings);
  v91 = [v12 rowWithTitle:@"Messages UI" childSettingsKeyPath:v92];
  v123[17] = v91;
  v90 = [MEMORY[0x1E69C6610] rowWithTitle:@"Assets Scene" childSettingsKeyPath:@"assetsScene"];
  v123[18] = v90;
  v13 = MEMORY[0x1E69C6610];
  v89 = NSStringFromSelector(sel_assetsRecoverySettings);
  v88 = [v13 rowWithTitle:@"Assets Recovery" childSettingsKeyPath:v89];
  v123[19] = v88;
  v14 = MEMORY[0x1E69C6610];
  v87 = NSStringFromSelector(sel_oneUpSettings);
  v86 = [v14 rowWithTitle:@"One Up" childSettingsKeyPath:v87];
  v123[20] = v86;
  v85 = [MEMORY[0x1E69C6610] rowWithTitle:@"Photos Data Source" childSettingsKeyPath:@"photosDataSource"];
  v123[21] = v85;
  v84 = [MEMORY[0x1E69C6610] rowWithTitle:@"Tiling" childSettingsKeyPath:@"tiling"];
  v123[22] = v84;
  v83 = [MEMORY[0x1E69C6610] rowWithTitle:@"Model" childSettingsKeyPath:@"model"];
  v123[23] = v83;
  v82 = [MEMORY[0x1E69C6610] rowWithTitle:@"Kit" childSettingsKeyPath:@"kit"];
  v123[24] = v82;
  v15 = MEMORY[0x1E69C6610];
  v81 = NSStringFromSelector(sel_workaroundSettings);
  v80 = [v15 rowWithTitle:@"Workarounds" childSettingsKeyPath:v81];
  v123[25] = v80;
  v79 = [MEMORY[0x1E69C6610] rowWithTitle:@"Drag & Drop" childSettingsKeyPath:@"dragAndDrop"];
  v123[26] = v79;
  v78 = [MEMORY[0x1E69C6610] rowWithTitle:@"Cursor Interaction" childSettingsKeyPath:@"cursorInteractionSettings"];
  v123[27] = v78;
  v77 = [MEMORY[0x1E69C6610] rowWithTitle:@"People Debug" childSettingsKeyPath:@"peopleDetail"];
  v123[28] = v77;
  v16 = MEMORY[0x1E69C6610];
  v76 = NSStringFromSelector(sel_peopleUISettings);
  v75 = [v16 rowWithTitle:@"People UI" childSettingsKeyPath:v76];
  v123[29] = v75;
  v74 = [MEMORY[0x1E69C6610] rowWithTitle:@"Sharing" childSettingsKeyPath:@"sharingSettings"];
  v123[30] = v74;
  v73 = [MEMORY[0x1E69C6610] rowWithTitle:@"Variations" childSettingsKeyPath:@"variationsSettings"];
  v123[31] = v73;
  v17 = MEMORY[0x1E69C6610];
  v72 = NSStringFromSelector(sel_swipeDownSettings);
  v71 = [v17 rowWithTitle:@"Swipe Down" childSettingsKeyPath:v72];
  v123[32] = v71;
  v70 = [MEMORY[0x1E69C6610] rowWithTitle:@"Complete My Moment" childSettingsKeyPath:@"completeMyMoment"];
  v123[33] = v70;
  v69 = [MEMORY[0x1E69C6610] rowWithTitle:@"For You" childSettingsKeyPath:@"forYou"];
  v123[34] = v69;
  v68 = [MEMORY[0x1E69C6610] rowWithTitle:@"Grid" childSettingsKeyPath:@"grid"];
  v123[35] = v68;
  v67 = [MEMORY[0x1E69C6610] rowWithTitle:@"Search" childSettingsKeyPath:@"searchSettings"];
  v123[36] = v67;
  v66 = [MEMORY[0x1E69C6610] rowWithTitle:@"Stickers" childSettingsKeyPath:@"stickersSettings"];
  v123[37] = v66;
  v65 = [MEMORY[0x1E69C6610] rowWithTitle:@"Albums Debug UI" childSettingsKeyPath:@"albumsDebugUISettings"];
  v123[38] = v65;
  v64 = [MEMORY[0x1E69C6610] rowWithTitle:@"Application" childSettingsKeyPath:@"applicationSettings"];
  v123[39] = v64;
  v63 = [MEMORY[0x1E69C6610] rowWithTitle:@"Import" childSettingsKeyPath:@"importSettings"];
  v123[40] = v63;
  v18 = MEMORY[0x1E69C6610];
  v62 = NSStringFromSelector(sel_systemNavigationSettings);
  v61 = [v18 rowWithTitle:@"System Navigation" childSettingsKeyPath:v62];
  v123[41] = v61;
  v19 = MEMORY[0x1E69C6610];
  v60 = NSStringFromSelector(sel_mediaProviderSettings);
  v59 = [v19 rowWithTitle:@"Media Provider" childSettingsKeyPath:v60];
  v123[42] = v59;
  v20 = MEMORY[0x1E69C6610];
  v58 = NSStringFromSelector(sel_videoPlaybackSettings);
  v57 = [v20 rowWithTitle:@"Video Playback" childSettingsKeyPath:v58];
  v123[43] = v57;
  v56 = [MEMORY[0x1E69C6610] rowWithTitle:@"Inline Video Stabilization" childSettingsKeyPath:@"inlineVideoStabilizationSettings"];
  v123[44] = v56;
  v21 = MEMORY[0x1E69C6610];
  v55 = NSStringFromSelector(sel_mapSettings);
  v54 = [v21 rowWithTitle:@"Maps" childSettingsKeyPath:v55];
  v123[45] = v54;
  v22 = MEMORY[0x1E69C6610];
  v23 = NSStringFromSelector(sel_sharedCollectionsSettings);
  v24 = [v22 rowWithTitle:@"Shared Collections" childSettingsKeyPath:v23];
  v123[46] = v24;
  v25 = MEMORY[0x1E69C6610];
  v26 = NSStringFromSelector(sel_sharedAlbumsSettings);
  v27 = [v25 rowWithTitle:@"Shared Albums" childSettingsKeyPath:v26];
  v123[47] = v27;
  v28 = MEMORY[0x1E69C6610];
  v29 = NSStringFromSelector(sel_macSyncedAlbumsSettings);
  v30 = [v28 rowWithTitle:@"Mac-Synced Albums" childSettingsKeyPath:v29];
  v123[48] = v30;
  v31 = MEMORY[0x1E69C6610];
  v32 = NSStringFromSelector(sel_sharedLibrarySettings);
  v33 = [v31 rowWithTitle:@"Shared Library" childSettingsKeyPath:v32];
  v123[49] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:50];
  [v119 addObjectsFromArray:v34];

  v35 = MEMORY[0x1E69C6610];
  v116 = NSStringFromSelector(sel_cplStatusSettings);
  v114 = [v35 rowWithTitle:@"CPL Status" childSettingsKeyPath:v116];
  v122[0] = v114;
  v36 = MEMORY[0x1E69C66A8];
  v37 = NSStringFromSelector(sel_showLibraryFilterTip);
  v38 = [v36 rowWithTitle:@"Library Filter Tip" valueKeyPath:v37];
  v122[1] = v38;
  v39 = MEMORY[0x1E69C6610];
  v40 = NSStringFromSelector(sel_audioSettings);
  v41 = [v39 rowWithTitle:@"Audio" childSettingsKeyPath:v40];
  v122[2] = v41;
  v42 = [MEMORY[0x1E69C6610] rowWithTitle:@"Duplicates" childSettingsKeyPath:@"duplicatesSettings"];
  v122[3] = v42;
  v43 = [MEMORY[0x1E69C6610] rowWithTitle:@"Document Menu" childSettingsKeyPath:@"documentMenuSettings"];
  v122[4] = v43;
  v44 = MEMORY[0x1E69C65E8];
  v120[0] = MEMORY[0x1E69E9820];
  v120[1] = 3221225472;
  v120[2] = __46__PXRootSettings_UI__settingsControllerModule__block_invoke;
  v120[3] = &__block_descriptor_40_e11_B24__0_8_16l;
  v120[4] = a1;
  v45 = [MEMORY[0x1E69C6658] actionWithHandler:v120];
  v46 = [v44 rowWithTitle:@"Home Screen Quick Actions" action:v45];
  v122[5] = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:6];
  [v119 addObjectsFromArray:v47];

  v48 = [MEMORY[0x1E69C6638] sectionWithRows:v119];
  v49 = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v50 = MEMORY[0x1E69C6638];
  v121[0] = v118;
  v121[1] = v48;
  v121[2] = v49;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:3];
  v52 = [v50 moduleWithTitle:@"PhotosUICore" contents:v51];

  return v52;
}

@end