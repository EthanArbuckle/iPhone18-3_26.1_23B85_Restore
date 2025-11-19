@interface PXSharedAlbumsSettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (void)setDefaultValues;
@end

@implementation PXSharedAlbumsSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXSharedAlbumsSettings;
  [(PTSettings *)&v3 setDefaultValues];
  self->_shouldSimulateSharedAlbumsUnavailable = 0;
  self->_shouldShowEngUIToDifferentiateBetweenSharedAlbumTypes = 0;
  self->_activityEntryAllowsMultipleLikeContributors = 1;
  self->_activityEntryAssetsAddedBatchingBehavior = 2;
  self->_showParticipantCountBadges = 0;
  self->_lemonadeActivityAlwaysAppearUnread = 0;
  self->_lemonadeActivityPreventUpdatingUnreadState = 0;
  self->_lemonadeActivityShelfShouldOpenActivityFeedModallyByItself = 0;
  self->_activityEntryFeedLoadMoreBatchSize = 75;
  self->_activityEntryFeedUseOnlyCompactCells = 0;
  self->_activityEntryFeedCompactCellDisplayStyle = 1;
  self->_activityEntryFeedAutoplaysVideosInline = 1;
  self->_activityEntryFeedCompactCellsOpen1upLimitedToEntryAssets = 1;
  self->_activityEntryFeedFollowsReadableWidth = 1;
  self->_activityEntryFeedReadableWidth = 800.0;
  self->_activityEntryFeedDrawDebugBackgrounds = 0;
  self->_allowEmptyAddressesForDebugging = 0;
  self->_alwaysShowSpatialMediaDataLossAlertForSpatialMedia = 0;
  self->_simulateEmptyActivityEntries = 0;
  self->_simulatedSubscriptionError = 0;
  self->_simulateInvalidAddressWhenValidatingParticipantsToAdd = 0;
  self->_simulateErrorWhileRenaming = 0;
  self->_simulateHasReachedLimitOfAcceptedSharedAlbums = 0;
  self->_showParticipantSectionHeader = 0;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_25956 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_25956, &__block_literal_global_25957);
  }

  v3 = sharedInstance_sharedInstance_25958;

  return v3;
}

void __40__PXSharedAlbumsSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 sharedAlbumsSettings];
  v1 = sharedInstance_sharedInstance_25958;
  sharedInstance_sharedInstance_25958 = v0;
}

+ (id)settingsControllerModule
{
  v136[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = MEMORY[0x1E69C6638];
  v4 = MEMORY[0x1E69C66A8];
  v5 = NSStringFromSelector(sel_shouldSimulateSharedAlbumsUnavailable);
  v6 = [v4 rowWithTitle:@"Simulate Disabled" valueKeyPath:v5];
  v136[0] = v6;
  v7 = MEMORY[0x1E69C66A8];
  v8 = NSStringFromSelector(sel_shouldShowEngUIToDifferentiateBetweenSharedAlbumTypes);
  v9 = [v7 rowWithTitle:@"Eng-UI: Show Shared Album variants" valueKeyPath:v8];
  v136[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:2];
  v11 = [v3 sectionWithRows:v10 title:@"General"];
  v127 = v2;
  [v2 addObject:v11];

  v12 = MEMORY[0x1E69C6638];
  v13 = MEMORY[0x1E69C66A8];
  v14 = NSStringFromSelector(sel_activityEntryAllowsMultipleLikeContributors);
  v15 = [v13 rowWithTitle:@"Allow multiple contributors for Like entries" valueKeyPath:v14];
  v135[0] = v15;
  v16 = MEMORY[0x1E69C65F8];
  v17 = NSStringFromSelector(sel_activityEntryAssetsAddedBatchingBehavior);
  v18 = [v16 rowWithTitle:@"Assets Batch Behavior" valueKeyPath:v17];
  v19 = [v18 possibleValues:&unk_1F190FAC0 titles:&unk_1F190FAD8];
  v135[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:2];
  v21 = [v12 sectionWithRows:v20 title:@"Shared Albums Activity"];
  [v2 addObject:v21];

  v108 = MEMORY[0x1E69C6638];
  v22 = MEMORY[0x1E69C66A8];
  v124 = NSStringFromSelector(sel_showParticipantCountBadges);
  v121 = [v22 rowWithTitle:@"Participant count badges" valueKeyPath:v124];
  v134[0] = v121;
  v23 = MEMORY[0x1E69C66A8];
  v118 = NSStringFromSelector(sel_lemonadeActivityAlwaysAppearUnread);
  v115 = [v23 rowWithTitle:@"Always Appear Unread" valueKeyPath:v118];
  v134[1] = v115;
  v24 = MEMORY[0x1E69C66A8];
  v112 = NSStringFromSelector(sel_lemonadeActivityPreventUpdatingUnreadState);
  v110 = [v24 rowWithTitle:@"Don't Update Unread When Seen" valueKeyPath:v112];
  v134[2] = v110;
  v25 = MEMORY[0x1E69C65E8];
  v26 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_499];
  v27 = [v25 rowWithTitle:@"Force ☁️🔁 Unread to yesterday" action:v26];
  v28 = [v27 conditionFormat:@"lemonadeActivityPreventUpdatingUnreadState == 0"];
  v134[3] = v28;
  v29 = MEMORY[0x1E69C65E8];
  v30 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_503];
  v31 = [v29 rowWithTitle:@"Force ☁️🔁 Unread to some activities" action:v30];
  v32 = [v31 conditionFormat:@"lemonadeActivityPreventUpdatingUnreadState == 0"];
  v134[4] = v32;
  v33 = MEMORY[0x1E69C66A8];
  v34 = NSStringFromSelector(sel_lemonadeActivityShelfShouldOpenActivityFeedModallyByItself);
  v35 = [v33 rowWithTitle:@"Open Activity Feed Alone" valueKeyPath:v34];
  v134[5] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:6];
  v37 = [v108 sectionWithRows:v36 title:@"Activity Cells"];
  [v127 addObject:v37];

  v107 = MEMORY[0x1E69C6638];
  v38 = MEMORY[0x1E69C66A0];
  v125 = NSStringFromSelector(sel_activityEntryFeedLoadMoreBatchSize);
  v122 = [v38 rowWithTitle:@"Fetch Batch Size" valueKeyPath:v125];
  v119 = [v122 minValue:4.0 maxValue:200.0];
  v133[0] = v119;
  v39 = MEMORY[0x1E69C66A8];
  v116 = NSStringFromSelector(sel_activityEntryFeedUseOnlyCompactCells);
  v113 = [v39 rowWithTitle:@"All Compact Cells" valueKeyPath:v116];
  v133[1] = v113;
  v40 = MEMORY[0x1E69C65F8];
  v111 = NSStringFromSelector(sel_activityEntryFeedCompactCellDisplayStyle);
  v109 = [v40 rowWithTitle:@"Compact Cell Style" valueKeyPath:v111];
  v106 = [v109 possibleValues:&unk_1F190FAF0 titles:&unk_1F190FB08];
  v133[2] = v106;
  v41 = MEMORY[0x1E69C66A8];
  v105 = NSStringFromSelector(sel_activityEntryFeedAutoplaysVideosInline);
  v104 = [v41 rowWithTitle:@"Auto Plays Videos" valueKeyPath:v105];
  v133[3] = v104;
  v42 = MEMORY[0x1E69C66A8];
  v103 = NSStringFromSelector(sel_activityEntryFeedCompactCellsOpen1upLimitedToEntryAssets);
  v102 = [v42 rowWithTitle:@"(Compact Cells) Limit 1up to Entry-only Assets" valueKeyPath:v103];
  v133[4] = v102;
  v43 = MEMORY[0x1E69C66A8];
  v44 = NSStringFromSelector(sel_activityEntryFeedFollowsReadableWidth);
  v45 = [v43 rowWithTitle:@"Pad Readable Width" valueKeyPath:v44];
  v133[5] = v45;
  v46 = MEMORY[0x1E69C66A0];
  v47 = NSStringFromSelector(sel_activityEntryFeedReadableWidth);
  v48 = [v46 rowWithTitle:@" -> Width" valueKeyPath:v47];
  v49 = [v48 minValue:0.0 maxValue:1200.0];
  v50 = [v49 conditionFormat:@"activityEntryFeedFollowsReadableWidth != 0"];
  v133[6] = v50;
  v51 = MEMORY[0x1E69C66A8];
  v52 = NSStringFromSelector(sel_activityEntryFeedDrawDebugBackgrounds);
  v53 = [v51 rowWithTitle:@"Debug Backgrounds" valueKeyPath:v52];
  v133[7] = v53;
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:8];
  v55 = [v107 sectionWithRows:v54 title:@"Main Activity Feed"];
  [v127 addObject:v55];

  v56 = MEMORY[0x1E69C6638];
  v57 = MEMORY[0x1E69C66A8];
  v58 = NSStringFromSelector(sel_simulateEmptyActivityEntries);
  v59 = [v57 rowWithTitle:@"Simulate empty activities" valueKeyPath:v58];
  v132 = v59;
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v132 count:1];
  v61 = [v56 sectionWithRows:v60 title:@"Activities"];
  [v127 addObject:v61];

  v62 = MEMORY[0x1E69C6638];
  v63 = MEMORY[0x1E69C66A8];
  v64 = NSStringFromSelector(sel_alwaysShowSpatialMediaDataLossAlertForSpatialMedia);
  v65 = [v63 rowWithTitle:@"Always Show Spatial Media Data Loss Alert" valueKeyPath:v64];
  v131[0] = v65;
  v66 = MEMORY[0x1E69C65E8];
  v67 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_507];
  v68 = [v66 rowWithTitle:@"Reset Spatial Media Data Loss Alert Pref" action:v67];
  v131[1] = v68;
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:2];
  v70 = [v62 sectionWithRows:v69 title:@"Posting UI"];
  [v127 addObject:v70];

  v114 = MEMORY[0x1E69C6638];
  v71 = MEMORY[0x1E69C65F8];
  v126 = NSStringFromSelector(sel_simulatedSubscriptionError);
  v123 = [v71 rowWithTitle:@"Subscription Error" valueKeyPath:v126];
  v120 = [v123 possibleValues:&unk_1F190FB20 titles:&unk_1F190FB38];
  v130[0] = v120;
  v72 = MEMORY[0x1E69C66A8];
  v117 = NSStringFromSelector(sel_simulateInvalidAddressWhenValidatingParticipantsToAdd);
  v73 = [v72 rowWithTitle:@"Simulate invalid address when adding participant" valueKeyPath:v117];
  v130[1] = v73;
  v74 = MEMORY[0x1E69C66A8];
  v75 = NSStringFromSelector(sel_simulateErrorWhileRenaming);
  v76 = [v74 rowWithTitle:@"Simulate error when renaming shared album" valueKeyPath:v75];
  v130[2] = v76;
  v77 = MEMORY[0x1E69C66A8];
  v78 = NSStringFromSelector(sel_simulateHasReachedLimitOfAcceptedSharedAlbums);
  v79 = [v77 rowWithTitle:@"Simulate has reached max # of accepted shared albums" valueKeyPath:v78];
  v130[3] = v79;
  v80 = MEMORY[0x1E69C66A8];
  v81 = NSStringFromSelector(sel_allowEmptyAddressesForDebugging);
  v82 = [v80 rowWithTitle:@"Allow Empty Addresses For Debugging" valueKeyPath:v81];
  v130[4] = v82;
  v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:5];
  v84 = [v114 sectionWithRows:v83 title:@"Error Simulation"];
  [v127 addObject:v84];

  v85 = MEMORY[0x1E69C6638];
  v86 = MEMORY[0x1E69C66A8];
  v87 = NSStringFromSelector(sel_showParticipantSectionHeader);
  v88 = [v86 rowWithTitle:@"Show Participant Section Header" valueKeyPath:v87];
  v129 = v88;
  v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v129 count:1];
  v90 = [v85 sectionWithRows:v89 title:@"Shared Album Settings"];
  [v127 addObject:v90];

  v91 = MEMORY[0x1E69C6638];
  v92 = MEMORY[0x1E69C65E8];
  v93 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_509];
  v94 = [v92 rowWithTitle:@"Activity Prototype" action:v93];
  v128[0] = v94;
  v95 = MEMORY[0x1E69C65E8];
  v96 = [MEMORY[0x1E69C6640] action];
  v97 = [v95 rowWithTitle:@"Restore Defaults Settings" action:v96];
  v128[1] = v97;
  v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:2];
  v99 = [v91 sectionWithRows:v98];
  [v127 addObject:v99];

  v100 = [MEMORY[0x1E69C6638] moduleWithTitle:@"Shared Albums" contents:v127];

  return v100;
}

@end