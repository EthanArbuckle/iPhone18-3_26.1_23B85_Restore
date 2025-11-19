@interface VUIPlaybackStartupCoordinator
+ (id)identifierForMediaInfo:(id)a3;
+ (id)startupCoordinatorWithMediaInfo:(id)a3 watchType:(int64_t)a4 isRentAndWatchNow:(BOOL)a5;
+ (id)startupCoordinators;
+ (void)initialize;
- (BOOL)_existingPlaybackSessionAllowsCellular;
- (BOOL)_mediaItemIsBeingDownloadedAndDownloadAllowsCellular:(id)a3;
- (BOOL)_metadataContainsAgeGate;
- (BOOL)_shouldPromptForExpiredDownload:(id)a3;
- (BOOL)_shouldWarnAboutRentalPlaybackQualityForRentalMediaItem:(id)a3;
- (BOOL)_shouldWarnStartingRentalPlaybackWindowWithMediaItem:(id)a3;
- (VUIPlaybackStartupCoordinator)initWithAdamID:(id)a3 watchType:(int64_t)a4 isRentAndWatchNow:(BOOL)a5 contentMetadata:(id)a6;
- (VUIPlaybackStartupCoordinator)initWithCanonicalID:(id)a3 showCanonicalID:(id)a4 mediaType:(id)a5 watchType:(int64_t)a6 isRentAndWatchNow:(BOOL)a7 contentMetadata:(id)a8;
- (VUIPlaybackStartupCoordinator)initWithMediaInfo:(id)a3 watchType:(int64_t)a4 isRentAndWatchNow:(BOOL)a5;
- (id)_addQueryParamsToSharedWatchURL:(id)a3 watchType:(int64_t)a4 groupActivityDay:(id)a5;
- (id)_descriptionForStartupAction:(int64_t)a3;
- (id)_descriptionForWatchType:(int64_t)a3;
- (id)makeDownloadStreamedForCoWatchingWarningNotificationOptions;
- (void)_addGroupActivityDayParamToPlayableAndMediaItem:(id)a3;
- (void)_checkIfAllowedToPlayOnCellularNetworkWithMediaItem:(id)a3 presentingController:(id)a4 completion:(id)a5;
- (void)_performRatingAndAgeVerificationWithMediaItem:(id)a3 presentingController:(id)a4 completion:(id)a5;
- (void)_preflightPlaybackWithPlaylist:(id)a3 presentingViewController:(id)a4 completionHandler:(id)a5;
- (void)_presentCantPlaybackOverCellularAlertControllerWithMediaItem:(id)a3 presentingViewController:(id)a4 completionHandler:(id)a5;
- (void)_presentStartingPlaybackWindowWarningWithRentalMediaItem:(id)a3 presentingViewController:(id)a4 completionHandler:(id)a5;
- (void)_registerStateMachineHandlers;
- (void)_showAlertControllerForExpirationPromptForDownload:(id)a3 presentingViewController:(id)a4;
- (void)_showCellularPlaybackQualityOptionsForRentalMediaItem:(id)a3 presentingViewController:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)performPlaybackStartupFlowWithCompletion:(id)a3;
@end

@implementation VUIPlaybackStartupCoordinator

+ (void)initialize
{
  if (initialize_onceToken_10 != -1)
  {
    +[VUIPlaybackStartupCoordinator initialize];
  }
}

void __43__VUIPlaybackStartupCoordinator_initialize__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "VUIPlaybackStartupCoordinator");
  v1 = sLogObject_18;
  sLogObject_18 = v0;
}

+ (id)startupCoordinators
{
  if (startupCoordinators_onceToken != -1)
  {
    +[VUIPlaybackStartupCoordinator startupCoordinators];
  }

  v3 = startupCoordinators___coordinators;

  return v3;
}

void __52__VUIPlaybackStartupCoordinator_startupCoordinators__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = startupCoordinators___coordinators;
  startupCoordinators___coordinators = v0;
}

+ (id)identifierForMediaInfo:(id)a3
{
  v3 = [a3 tvpPlaylist];
  v4 = [v3 currentMediaItem];

  v5 = [v4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
  if (v5 || ([v4 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
  }

  else
  {
    v8 = [v4 mediaItemURL];
    v6 = [v8 absoluteString];
  }

  return v6;
}

+ (id)startupCoordinatorWithMediaInfo:(id)a3 watchType:(int64_t)a4 isRentAndWatchNow:(BOOL)a5
{
  v8 = a3;
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __93__VUIPlaybackStartupCoordinator_startupCoordinatorWithMediaInfo_watchType_isRentAndWatchNow___block_invoke;
  v27 = &unk_1E8734030;
  v9 = v8;
  v28 = v9;
  v29 = a4;
  v31 = a5;
  v30 = a1;
  v10 = _Block_copy(&v24);
  v11 = [a1 identifierForMediaInfo:{v9, v24, v25, v26, v27}];
  if ([v11 length] && (objc_msgSend(a1, "startupCoordinators"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "objectForKey:", v11), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    v14 = [a1 startupCoordinators];
    v15 = [v14 objectForKey:v11];

    v16 = [v15 alertController];
    if (v16 && (v17 = v16, [v15 alertController], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "vui_isPresented"), v18, v17, (v19 & 1) == 0))
    {
      v22 = [v15 stateMachine];
      [v22 postEvent:@"Preflight cancelled"];

      v21 = v10[2](v10, v11);
    }

    else
    {
      v20 = [a1 startupCoordinators];
      v21 = [v20 objectForKey:v11];
    }
  }

  else
  {
    v21 = v10[2](v10, v11);
  }

  return v21;
}

VUIPlaybackStartupCoordinator *__93__VUIPlaybackStartupCoordinator_startupCoordinatorWithMediaInfo_watchType_isRentAndWatchNow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[VUIPlaybackStartupCoordinator alloc] initWithMediaInfo:*(a1 + 32) watchType:*(a1 + 40) isRentAndWatchNow:*(a1 + 56)];
  if ([v3 length])
  {
    v5 = [*(a1 + 48) startupCoordinators];
    [v5 setObject:v4 forKey:v3];
  }

  return v4;
}

- (VUIPlaybackStartupCoordinator)initWithMediaInfo:(id)a3 watchType:(int64_t)a4 isRentAndWatchNow:(BOOL)a5
{
  v9 = a3;
  v19.receiver = self;
  v19.super_class = VUIPlaybackStartupCoordinator;
  v10 = [(VUIPlaybackStartupCoordinator *)&v19 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_mediaInfo, a3);
    v11->_watchType = a4;
    v11->_isRentAndWatchNow = a5;
    v12 = objc_alloc(MEMORY[0x1E696AD60]);
    v13 = objc_opt_class();
    v14 = initWithMediaInfo_watchType_isRentAndWatchNow__instanceNumber++;
    v15 = [v12 initWithFormat:@"%@ %ld", v13, v14];
    v16 = [objc_alloc(MEMORY[0x1E69D5A60]) initWithName:v15 initialState:@"Waiting to start" mode:0];
    stateMachine = v11->_stateMachine;
    v11->_stateMachine = v16;

    [(TVPStateMachine *)v11->_stateMachine setLogObject:sLogObject_18];
    [(VUIPlaybackStartupCoordinator *)v11 _registerStateMachineHandlers];
    [(TVPStateMachine *)v11->_stateMachine setShouldAcceptEvents:1];
    [(VUIPlaybackStartupCoordinator *)v11 _registerGroupActivitiesNotification];
  }

  return v11;
}

- (VUIPlaybackStartupCoordinator)initWithAdamID:(id)a3 watchType:(int64_t)a4 isRentAndWatchNow:(BOOL)a5 contentMetadata:(id)a6
{
  v11 = a3;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = VUIPlaybackStartupCoordinator;
  v13 = [(VUIPlaybackStartupCoordinator *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_adamID, a3);
    v14->_watchType = a4;
    v14->_isRentAndWatchNow = a5;
    objc_storeStrong(&v14->_contentMetadata, a6);
    v15 = objc_alloc(MEMORY[0x1E696AD60]);
    v16 = objc_opt_class();
    v17 = initWithAdamID_watchType_isRentAndWatchNow_contentMetadata__instanceNumber++;
    v18 = [v15 initWithFormat:@"%@ %ld", v16, v17];
    v19 = [objc_alloc(MEMORY[0x1E69D5A60]) initWithName:v18 initialState:@"Waiting to start" mode:0];
    stateMachine = v14->_stateMachine;
    v14->_stateMachine = v19;

    [(VUIPlaybackStartupCoordinator *)v14 _registerStateMachineHandlers];
    [(TVPStateMachine *)v14->_stateMachine setShouldAcceptEvents:1];
    [(VUIPlaybackStartupCoordinator *)v14 _registerGroupActivitiesNotification];
  }

  return v14;
}

- (VUIPlaybackStartupCoordinator)initWithCanonicalID:(id)a3 showCanonicalID:(id)a4 mediaType:(id)a5 watchType:(int64_t)a6 isRentAndWatchNow:(BOOL)a7 contentMetadata:(id)a8
{
  v27 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v28.receiver = self;
  v28.super_class = VUIPlaybackStartupCoordinator;
  v18 = [(VUIPlaybackStartupCoordinator *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_videoCanonicalID, a3);
    objc_storeStrong(&v19->_showCanonicalID, a4);
    objc_storeStrong(&v19->_mediaType, a5);
    v19->_watchType = a6;
    v19->_isRentAndWatchNow = a7;
    objc_storeStrong(&v19->_contentMetadata, a8);
    v20 = objc_alloc(MEMORY[0x1E696AD60]);
    v21 = objc_opt_class();
    v22 = initWithCanonicalID_showCanonicalID_mediaType_watchType_isRentAndWatchNow_contentMetadata__instanceNumber++;
    v23 = [v20 initWithFormat:@"%@ %ld", v21, v22];
    v24 = [objc_alloc(MEMORY[0x1E69D5A60]) initWithName:v23 initialState:@"Waiting to start" mode:0];
    stateMachine = v19->_stateMachine;
    v19->_stateMachine = v24;

    [(VUIPlaybackStartupCoordinator *)v19 _registerStateMachineHandlers];
    [(TVPStateMachine *)v19->_stateMachine setShouldAcceptEvents:1];
    [(VUIPlaybackStartupCoordinator *)v19 _registerGroupActivitiesNotification];
  }

  return v19;
}

- (void)dealloc
{
  v3 = sLogObject_18;
  if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIPlaybackStartupCoordinator deallocated", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = VUIPlaybackStartupCoordinator;
  [(VUIPlaybackStartupCoordinator *)&v4 dealloc];
}

- (void)performPlaybackStartupFlowWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(VUIPlaybackStartupCoordinator *)self stateMachine];
  v5 = _Block_copy(v4);

  [v6 postEvent:@"Start" withContext:v5 userInfo:0];
}

- (BOOL)_metadataContainsAgeGate
{
  v3 = [(VUIPlaybackStartupCoordinator *)self contentMetadata];
  v4 = [v3 vui_numberForKey:@"requiredAgeForPlayback"];

  v5 = [(VUIPlaybackStartupCoordinator *)self contentMetadata];
  v6 = [v5 vui_numberForKey:@"frequencyOfAgeConfirmation"];

  if (v4)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;

  return v8;
}

- (id)_descriptionForWatchType:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_1E87345B8[a3];
  }
}

- (id)_descriptionForStartupAction:(int64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E87345E0[a3];
  }
}

- (id)_addQueryParamsToSharedWatchURL:(id)a3 watchType:(int64_t)a4 groupActivityDay:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = v7;
  v10 = v9;
  v11 = v9;
  if (a4 <= 4)
  {
    v11 = v9;
    if (((1 << a4) & 0x19) != 0)
    {
      v11 = v9;
      if ([v8 length])
      {
        v11 = [v10 vui_URLByAddingQueryParamWithName:@"groupActivityDay" value:v8];
      }
    }
  }

  if (a4 == 3)
  {
    v12 = @"true";
  }

  else
  {
    if (a4 != 4)
    {
      goto LABEL_10;
    }

    v12 = @"false";
  }

  v13 = [v11 vui_URLByAddingQueryParamWithName:@"postPlay" value:@"true"];

  v11 = [v13 vui_URLByAddingQueryParamWithName:@"binge" value:v12];

LABEL_10:
  v14 = sLogObject_18;
  if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v11;
    _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Shared watch URL after adding query params: %@", &v16, 0xCu);
  }

  return v11;
}

- (void)_addGroupActivityDayParamToPlayableAndMediaItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(VUIPlaybackStartupCoordinator *)self resolvedPlayable];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v7 = [(VUIPlaybackStartupCoordinator *)self mediaInfo];
      v8 = [v7 videosPlayables];
      v6 = [v8 firstObject];

      if (!v6)
      {
LABEL_8:
        v11 = [(VUIPlaybackStartupCoordinator *)self mediaInfo];
        v12 = [v11 tvpPlaylist];
        v13 = [v12 currentMediaItem];

        [v13 setMediaItemMetadata:v4 forProperty:@"VUIMediaItemMetadataKeyGroupActivityDay"];
        goto LABEL_9;
      }
    }

    v9 = [v6 hlsURL];
    v10 = [v9 vui_URLByAddingQueryParamWithName:@"groupActivityDay" value:v4];

    [v6 setHlsURL:v10];
    goto LABEL_8;
  }

  if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_ERROR))
  {
    [VUIPlaybackStartupCoordinator _addGroupActivityDayParamToPlayableAndMediaItem:];
  }

LABEL_9:
}

- (void)_registerStateMachineHandlers
{
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_2;
  aBlock[3] = &unk_1E8734078;
  objc_copyWeak(&v148, location);
  v3 = _Block_copy(aBlock);
  v144[0] = MEMORY[0x1E69E9820];
  v144[1] = 3221225472;
  v144[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_3;
  v144[3] = &unk_1E87340F0;
  objc_copyWeak(&v146, location);
  v4 = v3;
  v145 = v4;
  v5 = _Block_copy(v144);
  v141[0] = MEMORY[0x1E69E9820];
  v141[1] = 3221225472;
  v141[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_2_196;
  v141[3] = &unk_1E8734168;
  objc_copyWeak(&v143, location);
  v142 = &__block_literal_global_182;
  v6 = _Block_copy(v141);
  v139[0] = MEMORY[0x1E69E9820];
  v139[1] = 3221225472;
  v139[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_5;
  v139[3] = &unk_1E87341E0;
  objc_copyWeak(&v140, location);
  v63 = _Block_copy(v139);
  v137[0] = MEMORY[0x1E69E9820];
  v137[1] = 3221225472;
  v137[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_8;
  v137[3] = &unk_1E8734250;
  objc_copyWeak(&v138, location);
  v7 = _Block_copy(v137);
  v135[0] = MEMORY[0x1E69E9820];
  v135[1] = 3221225472;
  v135[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_11;
  v135[3] = &unk_1E8732000;
  v61 = v7;
  v136 = v61;
  v65 = _Block_copy(v135);
  v133[0] = MEMORY[0x1E69E9820];
  v133[1] = 3221225472;
  v133[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_13;
  v133[3] = &unk_1E8734278;
  objc_copyWeak(&v134, location);
  v8 = _Block_copy(v133);
  v131[0] = MEMORY[0x1E69E9820];
  v131[1] = 3221225472;
  v131[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_14;
  v131[3] = &unk_1E87342C8;
  objc_copyWeak(&v132, location);
  v9 = _Block_copy(v131);
  v125[0] = MEMORY[0x1E69E9820];
  v125[1] = 3221225472;
  v125[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_18;
  v125[3] = &unk_1E8734318;
  objc_copyWeak(&v130, location);
  v10 = v6;
  v126 = v10;
  v11 = v5;
  v127 = v11;
  v12 = v8;
  v128 = v12;
  v13 = v9;
  v129 = v13;
  v14 = _Block_copy(v125);
  v122[0] = MEMORY[0x1E69E9820];
  v122[1] = 3221225472;
  v122[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_269;
  v122[3] = &unk_1E8734168;
  objc_copyWeak(&v124, location);
  v60 = v4;
  v123 = v60;
  v62 = _Block_copy(v122);
  v120[0] = MEMORY[0x1E69E9820];
  v120[1] = 3221225472;
  v120[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_279;
  v120[3] = &unk_1E872E4B8;
  objc_copyWeak(&v121, location);
  v15 = _Block_copy(v120);
  v116[0] = MEMORY[0x1E69E9820];
  v116[1] = 3221225472;
  v116[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_294;
  v116[3] = &unk_1E87343B8;
  objc_copyWeak(&v119, location);
  v59 = v15;
  v117 = v59;
  v16 = v10;
  v118 = v16;
  v17 = _Block_copy(v116);
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_299;
  v110[3] = &unk_1E8734318;
  objc_copyWeak(&v115, location);
  v18 = v16;
  v111 = v18;
  v19 = v11;
  v112 = v19;
  v20 = v12;
  v113 = v20;
  v21 = v17;
  v114 = v21;
  v22 = _Block_copy(v110);
  v108[0] = MEMORY[0x1E69E9820];
  v108[1] = 3221225472;
  v108[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_300;
  v108[3] = &unk_1E87342C8;
  objc_copyWeak(&v109, location);
  v23 = _Block_copy(v108);
  v24 = [(VUIPlaybackStartupCoordinator *)self stateMachine];
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_3_304;
  v100[3] = &unk_1E8734408;
  objc_copyWeak(&v107, location);
  v58 = v14;
  v101 = v58;
  v25 = v20;
  v102 = v25;
  v26 = v21;
  v103 = v26;
  v27 = v13;
  v104 = v27;
  v57 = v22;
  v105 = v57;
  v28 = v18;
  v106 = v28;
  [v24 registerHandlerForEvent:@"Start" onState:@"Waiting to start" withBlock:v100];

  v29 = [(VUIPlaybackStartupCoordinator *)self stateMachine];
  [v29 registerDefaultHandlerForEvent:@"Start" withBlock:&__block_literal_global_308];

  v30 = [(VUIPlaybackStartupCoordinator *)self stateMachine];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_2_310;
  v92[3] = &unk_1E8734408;
  objc_copyWeak(&v99, location);
  v31 = v25;
  v93 = v31;
  v32 = v26;
  v94 = v32;
  v56 = v23;
  v95 = v56;
  v33 = v27;
  v96 = v33;
  v34 = v28;
  v97 = v34;
  v35 = v19;
  v98 = v35;
  [v30 registerHandlerForEvent:@"Attempt to start co-watching complete" onState:@"Attempting to start co-watching" withBlock:v92];

  v36 = [(VUIPlaybackStartupCoordinator *)self stateMachine];
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_311;
  v89[3] = &unk_1E872FAB0;
  objc_copyWeak(&v91, location);
  v37 = v35;
  v90 = v37;
  [v36 registerHandlerForEvent:@"Co-watch session handling complete" onState:@"Waiting for co-watch session to be handled" withBlock:v89];

  v38 = [(VUIPlaybackStartupCoordinator *)self stateMachine];
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_318;
  v83[3] = &unk_1E87315A8;
  objc_copyWeak(&v88, location);
  v39 = v31;
  v84 = v39;
  v55 = v32;
  v85 = v55;
  v40 = v65;
  v86 = v40;
  v41 = v37;
  v87 = v41;
  [v38 registerHandlerForEvent:@"Share URL resolution complete" onState:@"Waiting for share URL for be resolved" withBlock:v83];

  v42 = [(VUIPlaybackStartupCoordinator *)self stateMachine];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_320;
  v80[3] = &unk_1E872FAB0;
  objc_copyWeak(&v82, location);
  v43 = v34;
  v81 = v43;
  [v42 registerHandlerForEvent:@"Watch alone button pressed" onState:@"Asking whether to watch alone or cancel due to content being unavailable" withBlock:v80];

  v44 = [(VUIPlaybackStartupCoordinator *)self stateMachine];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_321;
  v77[3] = &unk_1E872FAB0;
  objc_copyWeak(&v79, location);
  v45 = v41;
  v78 = v45;
  [v44 registerHandlerForEvent:@"Watch cancel button pressed" onState:@"Asking whether to watch alone or cancel due to content being unavailable" withBlock:v77];

  v46 = [(VUIPlaybackStartupCoordinator *)self stateMachine];
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_322;
  v72[3] = &unk_1E87316B0;
  objc_copyWeak(&v76, location);
  v47 = v45;
  v73 = v47;
  v48 = v63;
  v74 = v48;
  v49 = v62;
  v75 = v49;
  [v46 registerHandlerForEvent:@"Preflight complete" onState:@"Performing preflight" withBlock:v72];
  v64 = v33;

  v50 = [(VUIPlaybackStartupCoordinator *)self stateMachine];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_2_324;
  v68[3] = &unk_1E8730210;
  objc_copyWeak(&v71, location);
  v51 = v47;
  v69 = v51;
  v52 = v49;
  v70 = v52;
  [v50 registerHandlerForEvent:@"Route selection complete" onState:@"Performing route selection" withBlock:v68];

  v53 = [(VUIPlaybackStartupCoordinator *)self stateMachine];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_3_325;
  v66[3] = &unk_1E8730120;
  v54 = v51;
  v67 = v54;
  [v53 registerDefaultHandlerForEvent:@"Preflight cancelled" withBlock:v66];

  objc_destroyWeak(&v71);
  objc_destroyWeak(&v76);

  objc_destroyWeak(&v79);
  objc_destroyWeak(&v82);

  objc_destroyWeak(&v88);
  objc_destroyWeak(&v91);

  objc_destroyWeak(&v99);
  objc_destroyWeak(&v107);

  objc_destroyWeak(&v109);
  objc_destroyWeak(&v115);

  objc_destroyWeak(&v119);
  objc_destroyWeak(&v121);

  objc_destroyWeak(&v124);
  objc_destroyWeak(&v130);

  objc_destroyWeak(&v132);
  objc_destroyWeak(&v134);

  objc_destroyWeak(&v138);
  objc_destroyWeak(&v140);

  objc_destroyWeak(&v143);
  objc_destroyWeak(&v146);

  objc_destroyWeak(&v148);
  objc_destroyWeak(location);
}

id __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke()
{
  v0 = +[VUIPlaybackManager sharedInstance];
  v1 = [v0 fullScreenViewControllerForPresentation];

  if (!v1)
  {
    v2 = +[VUIApplicationRouter currentNavigationController];
    if (v2)
    {
      v1 = v2;
    }

    else
    {
      v3 = +[VUIInterfaceFactory sharedInstance];
      v1 = [v3 controllerPresenter];

      if (!v1)
      {
        v4 = +[VUITVAppLauncher sharedInstance];
        v5 = [v4 appWindow];

        v1 = [v5 rootViewController];
      }
    }
  }

  if (+[VUITVExtension isRunningInCompanionApp])
  {
    v6 = +[VUITVExtension sharedInstance];
    v7 = [v6 presentationViewController];

    v1 = v7;
  }

  return v1;
}

VUIGroupWatchActivityPreviewMetadata *__62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained resolvedPlayable];
  if (!v2)
  {
    v14 = [WeakRetained mediaInfo];
    v15 = [v14 videosPlayables];
    v16 = [v15 firstObject];

    if (v16)
    {
      v17 = [WeakRetained mediaInfo];
      v18 = [v17 videosPlayables];
      v2 = [v18 firstObject];

      v19 = [VUIGroupWatchActivityPreviewMetadata alloc];
      v10 = [v2 sharedWatchUrl];
      v13 = [(VUIGroupWatchActivityPreviewMetadata *)v19 initWithPlayable:v2 fallbackUrl:v10];
LABEL_9:

      goto LABEL_10;
    }
  }

  v3 = [WeakRetained mediaInfo];
  v4 = [v3 videosPlayables];
  v5 = [v4 firstObject];
  v6 = [v5 metadata];

  v7 = [WeakRetained mediaInfo];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 videosPlayables];
    v10 = [v9 firstObject];

    v11 = [VUIGroupWatchActivityPreviewMetadata alloc];
    v12 = [v2 sharedWatchUrl];
    v13 = [(VUIGroupWatchActivityPreviewMetadata *)v11 initWithPlayable:v10 fallbackUrl:v12];
LABEL_8:

    goto LABEL_9;
  }

  v20 = [v7 tvpPlaylist];
  v21 = [v20 currentMediaItem];

  if (v21)
  {
    v22 = [VUIGroupWatchActivityPreviewMetadata alloc];
    v10 = [WeakRetained mediaInfo];
    v12 = [v10 tvpPlaylist];
    v23 = [v12 currentMediaItem];
    v24 = [v2 sharedWatchUrl];
    v13 = [(VUIGroupWatchActivityPreviewMetadata *)v22 initWithMediaItem:v23 fallbackUrl:v24];

    goto LABEL_8;
  }

  v26 = [WeakRetained contentMetadata];

  if (v26)
  {
    v27 = [WeakRetained contentMetadata];
    v10 = [v27 vui_stringForKey:@"title"];

    v28 = [WeakRetained contentMetadata];
    v42 = [v28 vui_stringForKey:@"showTitle"];

    v29 = [WeakRetained contentMetadata];
    v30 = [v29 vui_numberForKey:@"seasonNumber"];

    v31 = [WeakRetained contentMetadata];
    v32 = [v31 vui_numberForKey:@"episodeNumber"];

    v33 = [WeakRetained contentMetadata];
    v34 = [v33 vui_stringForKey:@"artworkURL"];

    v35 = [WeakRetained contentMetadata];
    v36 = [v35 objectForKey:@"artworkImage"];

    v37 = [WeakRetained contentMetadata];
    v38 = [v37 vui_stringForKey:@"mediaType"];
    LOBYTE(v27) = [v38 isEqualToString:@"Episode"];

    v39 = [VUIGroupWatchActivityPreviewMetadata alloc];
    v40 = [v2 sharedWatchUrl];
    BYTE1(v41) = 1;
    LOBYTE(v41) = v27;
    v13 = [(VUIGroupWatchActivityPreviewMetadata *)v39 initWithTitle:v10 showTitle:v42 seasonTitle:0 seasonNumber:v30 episodeNumber:v32 imageUrlFormat:v34 artworkImage:v36 fallbackUrl:v40 isTVShow:v41 allowsSceneAssociation:?];

    goto LABEL_9;
  }

  v13 = 0;
LABEL_10:

  return v13;
}

__CFString *__62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_3(uint64_t a1, char a2, char a3, char a4, char a5, char a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = [WeakRetained stateMachine];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_4;
  v16[3] = &unk_1E87340C8;
  objc_copyWeak(&v18, (a1 + 40));
  v17 = *(a1 + 32);
  v19 = a2;
  v20 = a3;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  [v13 executeBlockAfterCurrentStateTransition:v16];

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 removeObserver:WeakRetained];

  objc_destroyWeak(&v18);
  return @"Startup flow complete";
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_4(uint64_t a1)
{
  v84 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = (*(*(a1 + 32) + 16))();
  if ((*(a1 + 48) != 1 || (*(a1 + 49) & 1) == 0) && (*(a1 + 50) & 1) == 0)
  {
    v4 = [WeakRetained resolvedPlayable];
    if (!v4)
    {
      v5 = [WeakRetained mediaInfo];
      v6 = [v5 videosPlayables];
      v4 = [v6 firstObject];
    }

    v7 = [v4 sharedWatchId];
    v8 = [VUIGroupActivitiesManagerObjC isSharedWatchIdValidForCurrentSession:v7];

    if (v8)
    {
      +[VUIGroupActivitiesManagerObjC startPlaybackFailed];
    }

    else
    {
      v9 = sLogObject_18;
      if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Not calling startPlaybackFailed since session ID no longer matches sharedWatchId being played", buf, 2u);
      }
    }
  }

  v10 = [WeakRetained completion];
  v11 = [WeakRetained mediaInfo];

  if (v11)
  {
    if (*(a1 + 48) == 1)
    {
      v12 = [WeakRetained mediaInfo];
      v13 = [v12 tvpPlaylist];
      v14 = [v13 currentMediaItem];

      v15 = [v14 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
      [v15 setIsGroupActivity:*(a1 + 49)];
      v16 = *(a1 + 49) == 1 && [WeakRetained watchType] == 0;
      [v15 setIsGroupActivityOriginator:v16];
    }

    v29 = [WeakRetained mediaInfo];
    v30 = [v29 videosPlayables];
    v31 = [v30 firstObject];

    v32 = sLogObject_18;
    if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(a1 + 48);
      v34 = *(a1 + 49);
      v53 = v10;
      v35 = v3;
      v36 = *(a1 + 51);
      v37 = v32;
      v38 = [v31 canonicalID];
      *buf = 134219010;
      v75 = v33;
      v76 = 2048;
      v77 = v34;
      v78 = 2048;
      v79 = v36;
      v3 = v35;
      v10 = v53;
      v80 = 2112;
      v81 = v38;
      v82 = 2112;
      v83 = v31;
      _os_log_impl(&dword_1E323F000, v37, OS_LOG_TYPE_DEFAULT, "Calling mediaInfo performPlaybackStartupFlowWithCompletion callback: startPlayback == %ld, isCoWatching == %ld, allowCellular = %ld, canonicalID = %@, playable = %@", buf, 0x34u);
    }

    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_191;
    v67[3] = &unk_1E87340A0;
    v39 = v10;
    v71 = *(a1 + 48);
    v72 = *(a1 + 52);
    v73 = *(a1 + 51);
    v70 = v39;
    v68 = v31;
    v69 = v3;
    v28 = v31;
    dispatch_async(MEMORY[0x1E69E96A0], v67);
  }

  else
  {
    v17 = [WeakRetained videoCanonicalID];

    v18 = sLogObject_18;
    v19 = os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        v20 = v3;
        v21 = *(a1 + 48);
        v52 = v10;
        v22 = *(a1 + 49);
        v23 = *(a1 + 51);
        v24 = v18;
        v25 = [WeakRetained videoCanonicalID];
        v26 = [WeakRetained resolvedPlayable];
        *buf = 134219010;
        v75 = v21;
        v3 = v20;
        v76 = 2048;
        v77 = v22;
        v10 = v52;
        v78 = 2048;
        v79 = v23;
        v80 = 2112;
        v81 = v25;
        v82 = 2112;
        v83 = v26;
        _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "Calling canonicalID performPlaybackStartupFlowWithCompletion callback: startPlayback == %ld, isCoWatching == %ld, allowCellular = %ld, canonicalID = %@, playable = %@", buf, 0x34u);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_192;
      block[3] = &unk_1E87340A0;
      v27 = v10;
      v64 = *(a1 + 48);
      v65 = *(a1 + 52);
      v66 = *(a1 + 51);
      v63 = v27;
      block[4] = WeakRetained;
      v62 = v3;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v28 = v63;
    }

    else
    {
      if (v19)
      {
        v44 = v3;
        v45 = *(a1 + 48);
        v54 = v10;
        v46 = *(a1 + 49);
        v47 = *(a1 + 51);
        v48 = v18;
        v49 = [WeakRetained adamID];
        v50 = [WeakRetained resolvedPlayable];
        *buf = 134219010;
        v75 = v45;
        v3 = v44;
        v76 = 2048;
        v77 = v46;
        v10 = v54;
        v78 = 2048;
        v79 = v47;
        v80 = 2112;
        v81 = v49;
        v82 = 2112;
        v83 = v50;
        _os_log_impl(&dword_1E323F000, v48, OS_LOG_TYPE_DEFAULT, "Calling adamID performPlaybackStartupFlowWithCompletion callback: startPlayback == %ld, isCoWatching == %ld, allowCellular = %ld, adamID = %@, playable = %@", buf, 0x34u);
      }

      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_193;
      v55[3] = &unk_1E87340A0;
      v51 = v10;
      v58 = *(a1 + 48);
      v59 = *(a1 + 52);
      v60 = *(a1 + 51);
      v57 = v51;
      v55[4] = WeakRetained;
      v56 = v3;
      dispatch_async(MEMORY[0x1E69E96A0], v55);

      v28 = v57;
    }
  }

  v40 = objc_opt_class();
  v41 = [WeakRetained mediaInfo];
  v42 = [v40 identifierForMediaInfo:v41];

  if ([v42 length])
  {
    v43 = [objc_opt_class() startupCoordinators];
    [v43 removeObjectForKey:v42];
  }

  [WeakRetained setCompletion:0];
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_191(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 57);
  v5 = *(a1 + 58);
  v6 = *(a1 + 59);
  v7 = [*(a1 + 32) canonicalID];
  (*(v2 + 16))(v2, v3, v4, v5, v6, v7, *(a1 + 32), *(a1 + 40));
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_192(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 57);
  v5 = *(a1 + 58);
  v6 = *(a1 + 59);
  v8 = [*(a1 + 32) videoCanonicalID];
  v7 = [*(a1 + 32) resolvedPlayable];
  (*(v2 + 16))(v2, v3, v4, v5, v6, v8, v7, *(a1 + 40));
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_193(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 57);
  v5 = *(a1 + 58);
  v6 = *(a1 + 59);
  v8 = [*(a1 + 32) adamID];
  v7 = [*(a1 + 32) resolvedPlayable];
  (*(v2 + 16))(v2, v3, v4, v5, v6, v8, v7, *(a1 + 40));
}

__CFString *__62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_2_196(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained mediaInfo];
  v6 = [v5 tvpPlaylist];

  v7 = [v6 currentMediaItem];
  v8 = (*(*(a1 + 32) + 16))();
  [WeakRetained setPresentingViewController:v8];
  v9 = [WeakRetained stateMachine];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_3_197;
  v14[3] = &unk_1E8734140;
  v15 = v7;
  v16 = WeakRetained;
  v17 = v6;
  v18 = v8;
  v19 = a2;
  v10 = v8;
  v11 = v6;
  v12 = v7;
  [v9 executeBlockAfterCurrentStateTransition:v14];

  return @"Performing preflight";
}

uint64_t __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_3_197(uint64_t a1)
{
  v2 = [*(a1 + 32) mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  [v2 addStartEventWithName:@"showingPreflightUI" isUIInteraction:1];

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_4_198;
  v8[3] = &unk_1E8734118;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8[4] = v3;
  v8[5] = v6;
  return [v3 _preflightPlaybackWithPlaylist:v4 presentingViewController:v5 completionHandler:v8];
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_4_198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) stateMachine];
  v11[0] = @"CoWatchActionKey";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v12[0] = v7;
  v11[1] = @"AllowedToPlayKey";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v12[1] = v8;
  v11[2] = @"AllowCellularUsageKey";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v12[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [v6 postEvent:@"Preflight complete" withContext:0 userInfo:v10];
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_5(uint64_t a1, void *a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained mediaInfo];
  v8 = [v7 tvpPlaylist];
  v9 = [v8 currentMediaItem];

  v10 = [v9 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  [v10 addStartEventWithName:@"showingAirplayPickerUI" isUIInteraction:1];

  v11 = [MEMORY[0x1E6958460] sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_6;
  v13[3] = &unk_1E87341B8;
  objc_copyWeak(v15, (a1 + 32));
  v12 = v9;
  v14 = v12;
  v15[1] = a2;
  v16 = a3;
  [v11 prepareRouteSelectionForPlaybackWithCompletionHandler:v13];

  objc_destroyWeak(v15);
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_6(uint64_t a1, char a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_7;
  v6[3] = &unk_1E8734190;
  objc_copyWeak(v8, (a1 + 40));
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v7 = v4;
  v8[1] = v5;
  v9 = a2;
  v10 = *(a1 + 56);
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  objc_destroyWeak(v8);
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_7(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  [v3 addEndEventWithName:@"showingAirplayPickerUI"];

  v9[0] = @"CoWatchActionKey";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v10[0] = v4;
  v9[1] = @"AllowedToPlayKey";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  v10[1] = v5;
  v9[2] = @"AllowCellularUsageKey";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 57)];
  v10[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v8 = [WeakRetained stateMachine];
  [v8 postEvent:@"Route selection complete" withContext:0 userInfo:v7];
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_9;
  v17 = &unk_1E8734228;
  v10 = v7;
  v18 = v10;
  v11 = v8;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  objc_copyWeak(&v21, (a1 + 32));
  v13 = &v14;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v16(v13);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v13);
  }

  objc_destroyWeak(&v21);
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_9(uint64_t a1)
{
  v8 = [VUIAlertController vui_alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:1];
  v2 = [VUIAlertAction vui_actionWithTitle:*(a1 + 48) style:0 handler:&__block_literal_global_210];
  [v8 vui_addAction:v2];

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained presentingViewController];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = +[VUIApplicationRouter topPresentedViewController];
  }

  v7 = v6;

  [v8 vui_presentAlertFromPresentingController:v7 animated:1 completion:0];
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_12;
  v8 = &unk_1E872E580;
  v9 = v3;
  v10 = *(a1 + 32);
  v4 = MEMORY[0x1E696AF00];
  v5 = v3;
  if ([v4 isMainThread])
  {
    v7(v6);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_12(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 vui_stringForKey:@"title"];
  v4 = v3;
  if (v3)
  {
    v16 = v3;
  }

  else
  {
    v5 = +[VUILocalizationManager sharedInstance];
    v16 = [v5 localizedStringForKey:@"TV.GroupActivities.UnknownErrorTitle"];
  }

  v6 = [*(a1 + 32) userInfo];
  v7 = [v6 vui_stringForKey:@"message"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = +[VUILocalizationManager sharedInstance];
    v9 = [v10 localizedStringForKey:@"TV.GroupActivities.UnknownErrorMessage"];
  }

  v11 = [*(a1 + 32) userInfo];
  v12 = [v11 vui_stringForKey:@"primaryActionTitle"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = +[VUILocalizationManager sharedInstance];
    v14 = [v15 localizedStringForKey:@"TV.GroupActivities.UnknownErrorAction"];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (+[VUIGroupActivitiesManagerObjC isConfigured])
  {
    v2 = [WeakRetained resolvedPlayable];
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v5 = [WeakRetained mediaInfo];
      v6 = [v5 videosPlayables];
      v3 = [v6 firstObject];

      if (!v3)
      {
        v8 = [WeakRetained mediaInfo];
        v9 = [v8 tvpPlaylist];
        v10 = [v9 currentMediaItem];

        if ([v10 isMemberOfClass:objc_opt_class()])
        {
          v4 = 2;
        }

        else if ([v10 isMemberOfClass:objc_opt_class()])
        {
          v4 = 2;
        }

        else
        {
          v4 = 1;
        }

        v3 = 0;
        goto LABEL_24;
      }
    }

    if (([v3 isCowatchingProhibited] & 1) == 0 && (!objc_msgSend(v3, "useSharedPlayableForCowatching") || objc_msgSend(v3, "containsEligiblePlaybackMode")))
    {
      v7 = [v3 sharedWatchUrl];
      if (v7)
      {

LABEL_15:
        v4 = 0;
        goto LABEL_24;
      }

      if ([v3 useSharedPlayableForCowatching])
      {
        goto LABEL_15;
      }

      v11 = [v3 adamID];
      if (v11)
      {
        v12 = v11;
        v13 = [v3 isFamilySharingContent];

        if (v13)
        {
          v4 = 1;
        }

        else
        {
          v4 = 2;
        }

        goto LABEL_24;
      }
    }

    v4 = 2;
LABEL_24:

    goto LABEL_25;
  }

  v4 = 2;
LABEL_25:

  return v4;
}

__CFString *__62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained mediaInfo];
  v4 = [v3 tvpPlaylist];
  v5 = [v4 currentMediaItem];
  v6 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  [v6 addStartEventWithName:@"askingUserToWatchAloneOrCancel" isUIInteraction:1];

  v7 = +[VUILocalizationManager sharedInstance];
  v8 = [v7 localizedStringForKey:@"TV.GroupActivities.SharePlayNotAvailableErrorTitle"];

  v9 = [WeakRetained mediaInfo];
  v10 = [v9 videosPlayables];
  v11 = [v10 firstObject];
  v12 = [v11 cowatchingProhibitedReason];

  v34 = WeakRetained;
  v13 = [WeakRetained mediaInfo];
  v14 = [v13 tvpPlaylist];
  v15 = [v14 currentMediaItem];

  v31 = v15;
  v32 = v12;
  if ([v12 isEqualToString:@"extras"])
  {
    v16 = +[VUILocalizationManager sharedInstance];
    v17 = v16;
    v18 = @"TV.GroupActivities.ExtrasErrorMessage";
  }

  else if ([v12 isEqualToString:@"live"])
  {
    v16 = +[VUILocalizationManager sharedInstance];
    v17 = v16;
    v18 = @"TV.GroupActivities.LiveTVErrorMessage";
  }

  else if ([v15 isMemberOfClass:objc_opt_class()])
  {
    v16 = +[VUILocalizationManager sharedInstance];
    v17 = v16;
    v18 = @"TV.GroupActivities.HomeSharingErrorMessage";
  }

  else
  {
    v19 = [v15 isMemberOfClass:objc_opt_class()];
    v16 = +[VUILocalizationManager sharedInstance];
    v17 = v16;
    if (v19)
    {
      v18 = @"TV.GroupActivities.SyncedVideosErrorMessage";
    }

    else
    {
      v18 = @"TV.GroupActivities.SharePlayNotAvailableErrorMessage";
    }
  }

  v20 = [v16 localizedStringForKey:v18];

  v21 = +[VUILocalizationManager sharedInstance];
  v22 = [v21 localizedStringForKey:@"TV.GroupActivities.WatchAloneTitle"];

  v23 = +[VUILocalizationManager sharedInstance];
  v24 = [v23 localizedStringForKey:@"TV.GroupActivities.WatchAloneCancel"];

  v33 = v8;
  v25 = [VUIAlertController vui_alertControllerWithTitle:v8 message:v20 preferredStyle:1];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_15;
  v40[3] = &unk_1E87342A0;
  objc_copyWeak(v41, (a1 + 32));
  v26 = [VUIAlertAction vui_actionWithTitle:v22 style:0 handler:v40];
  [v25 vui_addAction:v26 isPreferred:1];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_16;
  v38[3] = &unk_1E87342A0;
  objc_copyWeak(&v39, (a1 + 32));
  v27 = [VUIAlertAction vui_actionWithTitle:v24 style:0 handler:v38];
  [v25 vui_addAction:v27];
  v28 = +[VUIApplicationRouter currentNavigationController];
  v29 = [v28 presentedViewController];

  if (v29)
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_17;
    v35[3] = &unk_1E872D990;
    v36 = v25;
    v37 = v28;
    [VUIApplicationRouter dismissOrPopLastViewControllerWithCompletion:v35];
  }

  else
  {
    [v25 vui_presentAlertFromPresentingController:v28 animated:1 completion:0];
  }

  objc_destroyWeak(&v39);
  objc_destroyWeak(v41);

  return @"Asking whether to watch alone or cancel due to content being unavailable";
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained stateMachine];
  [v1 postEvent:@"Watch alone button pressed"];
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_16(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained stateMachine];
  [v1 postEvent:@"Watch cancel button pressed"];
}

__CFString *__62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_18(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = +[VUIGroupActivitiesManagerObjC isEligibleForSession];
  if (+[VUIGroupActivitiesManagerObjC isConfigured]&& v3)
  {
    v4 = sLogObject_18;
    if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "groupActivitiesManager is available.  Attempting to start co-watching", buf, 2u);
    }

    if ((*(*(a1 + 48) + 16))() != 2)
    {
      v8 = [WeakRetained mediaInfo];
      v9 = [v8 tvpPlaylist];
      v10 = [v9 currentMediaItem];
      v11 = [v10 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
      [v11 addStartEventWithName:@"askingUserToCoWatch" isUIInteraction:1];

      v12 = [WeakRetained stateMachine];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_257;
      v20[3] = &unk_1E872D768;
      v20[4] = WeakRetained;
      [v12 executeBlockAfterCurrentStateTransition:v20];

      v13 = @"Attempting to start co-watching";
      goto LABEL_19;
    }

    v5 = sLogObject_18;
    if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Co-watching is desired but not possible.  Showing error", buf, 2u);
    }

    v6 = (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = [WeakRetained mediaInfo];
    if (v7)
    {
    }

    else if (([WeakRetained _metadataContainsAgeGate] & 1) == 0)
    {
      v19 = sLogObject_18;
      if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "Missing mediaInfo, allow local playback", buf, 2u);
      }

      v6 = (*(*(a1 + 40) + 16))();
      goto LABEL_18;
    }

    v14 = sLogObject_18;
    if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = +[VUIGroupActivitiesManagerObjC isConfigured];
      v17 = @"groupActivitiesManager is nil";
      if (v16)
      {
        v17 = @"isEligibleForSession is false";
      }

      *buf = 138412290;
      v22 = v17;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "%@.  Performing preflight", buf, 0xCu);
    }

    v6 = (*(*(a1 + 32) + 16))();
  }

LABEL_18:
  v13 = v6;
LABEL_19:

  return v13;
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_257(uint64_t a1)
{
  v2 = [*(a1 + 32) mediaInfo];
  v3 = [v2 videosPlayables];
  v4 = [v3 firstObject];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [*(a1 + 32) resolvedPlayable];
  }

  v7 = v6;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_2_258;
  v8[3] = &unk_1E87342F0;
  v8[4] = *(a1 + 32);
  [VUIGroupActivitiesManagerObjC requestPermissionToStartCowatchingForPlayable:v7 completion:v8];
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_2_258(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = sLogObject_18;
  if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"VUIGroupActivityPlaybackStateDoNotPlay";
    if (a2 == 1)
    {
      v5 = @"VUIGroupActivityPlaybackStatePlayWithoutSession";
    }

    if (!a2)
    {
      v5 = @"VUIGroupActivityPlaybackStatePlayWithSession";
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Ask to co-watch complete.  VUIGroupActivityPlaybackState is %@", &v8, 0xCu);
  }

  v6 = [*(a1 + 32) stateMachine];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  [v6 postEvent:@"Attempt to start co-watching complete" withContext:v7 userInfo:0];
}

__CFString *__62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_269(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained resolvedPlayable];
  if (!v5)
  {
    v6 = [WeakRetained mediaInfo];
    v7 = [v6 videosPlayables];
    v5 = [v7 firstObject];
  }

  v8 = (*(*(a1 + 32) + 16))();
  v9 = [MEMORY[0x1E695DF90] dictionary];
  [v9 vui_setObjectIfNotNil:v8 forKey:@"PreviewMetadataKey"];
  v10 = [WeakRetained mediaInfo];
  v11 = [v10 tvpPlaylist];
  v12 = [v11 currentMediaItem];
  v13 = [v12 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  [v13 addStartEventWithName:@"waitingToActivateOrJoinSession" isUIInteraction:1];

  v14 = sLogObject_18;
  if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [WeakRetained _descriptionForStartupAction:a2];
    *buf = 138412290;
    v44 = v16;
    _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Performing co-watch action: %@", buf, 0xCu);
  }

  v17 = [v5 sharedWatchUrl];
  v18 = v17 == 0;

  if (v18)
  {
    v19 = [v5 useSharedPlayableForCowatching];
    v20 = sLogObject_18;
    if (v19)
    {
      if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "Passing shared playable to GroupActivitiesManager", buf, 2u);
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_276;
      v36[3] = &unk_1E8734368;
      objc_copyWeak(&v38, (a1 + 40));
      v37 = v9;
      [VUIGroupActivitiesManagerObjC handleSharedPlayable:v5 watchTogetherUrl:0 startupAction:a2 previewMetadata:v8 completion:v36];

      objc_destroyWeak(&v38);
    }

    else
    {
      if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_ERROR))
      {
        __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_269_cold_1();
      }

      v32 = [WeakRetained stateMachine];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_277;
      v34[3] = &unk_1E872D990;
      v34[4] = WeakRetained;
      v35 = v9;
      [v32 executeBlockAfterCurrentStateTransition:v34];
    }
  }

  else
  {
    if ([WeakRetained watchType] == 1)
    {
      [v5 groupActivityDay];
    }

    else
    {
      v21 = MEMORY[0x1E695DF00];
      v22 = [MEMORY[0x1E695DF00] date];
      v23 = [v21 vui_startOfDateInGMT:v22];
      [v23 timeIntervalSince1970];
      v25 = v24;

      [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", (v25 * 1000.0)];
    }
    v26 = ;
    v27 = sLogObject_18;
    if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v26;
      _os_log_impl(&dword_1E323F000, v27, OS_LOG_TYPE_DEFAULT, "groupActivityDay: %@", buf, 0xCu);
    }

    v28 = [v5 sharedWatchUrl];
    v29 = [WeakRetained _addQueryParamsToSharedWatchURL:v28 watchType:objc_msgSend(WeakRetained groupActivityDay:{"watchType"), v26}];

    v30 = sLogObject_18;
    if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v30, OS_LOG_TYPE_DEFAULT, "Passing shared watch URL to GroupActivitiesManager", buf, 2u);
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_275;
    v39[3] = &unk_1E8734340;
    objc_copyWeak(&v42, (a1 + 40));
    v31 = v26;
    v40 = v31;
    v41 = v9;
    [VUIGroupActivitiesManagerObjC handleSharedPlayable:v5 watchTogetherUrl:v29 startupAction:a2 previewMetadata:v8 completion:v39];

    objc_destroyWeak(&v42);
  }

  return @"Waiting for co-watch session to be handled";
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_275(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (!a2)
  {
    [WeakRetained _addGroupActivityDayParamToPlayableAndMediaItem:*(a1 + 32)];
    WeakRetained = v8;
  }

  v5 = [WeakRetained stateMachine];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v7 = [*(a1 + 40) copy];
  [v5 postEvent:@"Co-watch session handling complete" withContext:v6 userInfo:v7];
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_276(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained stateMachine];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v6 = [*(a1 + 32) copy];
  [v4 postEvent:@"Co-watch session handling complete" withContext:v5 userInfo:v6];
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_277(uint64_t a1)
{
  v3 = [*(a1 + 32) stateMachine];
  v2 = [*(a1 + 40) copy];
  [v3 postEvent:@"Co-watch session handling complete" withContext:&unk_1F5E5D878 userInfo:v2];
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_279(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[VUILocalizationManager sharedInstance];
  v3 = [v2 localizedStringForKey:@"TV.GroupActivities.CannotShareDownloadTitle"];

  v4 = +[VUILocalizationManager sharedInstance];
  v5 = [v4 localizedStringForKey:@"TV.GroupActivities.CannotShareDownloadMessage"];

  v6 = [WeakRetained makeDownloadStreamedForCoWatchingWarningNotificationOptions];
  if (_os_feature_enabled_impl())
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_2_292;
    v8[3] = &unk_1E8734390;
    v9 = @"DownloadWillBeStreamedNotificationIdentifier";
    v10 = v3;
    [VUILocalNotificationService deliverNotificationWithIdentifier:@"DownloadWillBeStreamedNotificationIdentifier" title:v10 body:v5 options:v6 completionHandler:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E69E1558] defaultCenter];
    [v7 post:@"DownloadWillBeStreamedNotificationIdentifier" title:v3 body:v5 options:v6];
  }
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_2_292(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = sLogObject_18;
    if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = v4;
      v8 = [v3 localizedDescription];
      v9 = 138412802;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Failed to deliver local notification with identifier: %@ • title: %@ • error: %@", &v9, 0x20u);
    }
  }
}

id __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_294(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained mediaInfo];
  v4 = [v3 tvpPlaylist];
  v5 = [v4 currentMediaItem];

  if (![v5 hasTrait:*MEMORY[0x1E69D5E58]])
  {
    v8 = sLogObject_18;
    if (!os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v14 = 0;
    v10 = "Content is not local, performing preflight";
    v11 = &v14;
    goto LABEL_7;
  }

  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [v6 BOOLForKey:@"AllowCoWatchingOfDownload"];

  v8 = sLogObject_18;
  v9 = os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    v16 = 0;
    v10 = "Content is downloaded, but user defaults allows for co-watching download. Performing preflight";
    v11 = &v16;
LABEL_7:
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    goto LABEL_11;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Content is downloaded.  Showing download will be streamed dialog", buf, 2u);
  }

  [WeakRetained setForceDownloadToStream:1];
  (*(*(a1 + 32) + 16))();
LABEL_11:
  v12 = (*(*(a1 + 40) + 16))(*(a1 + 40));

  return v12;
}

id __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_299(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (+[VUIGroupActivitiesManagerObjC isConfigured])
  {
    if (+[VUIGroupActivitiesManagerObjC isSessionActive])
    {
      v3 = (*(*(a1 + 48) + 16))();
      v4 = sLogObject_18;
      if (!v3)
      {
        if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Replacing item being watched, co-watching of next item is possible", v14, 2u);
        }

        (*(*(a1 + 56) + 16))(*(a1 + 56));
        goto LABEL_15;
      }

      if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_ERROR))
      {
        __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_299_cold_1();
      }

LABEL_14:
      (*(*(a1 + 32) + 16))(*(a1 + 32));
      v9 = LABEL_15:;
      goto LABEL_16;
    }

    v6 = sLogObject_18;
    if (!os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v13 = 0;
    v7 = "Replacing item being watched, but no co-watching session is active.  Performing preflight of next media item to watch solo";
    v8 = &v13;
LABEL_13:
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    goto LABEL_14;
  }

  v5 = [WeakRetained mediaInfo];
  if (v5)
  {

LABEL_11:
    v6 = sLogObject_18;
    if (!os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v7 = "Replacing item being watched, groupActivitiesManager is nil.  Performing preflight of next media item";
    v8 = buf;
    goto LABEL_13;
  }

  if ([WeakRetained _metadataContainsAgeGate])
  {
    goto LABEL_11;
  }

  v12 = sLogObject_18;
  if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Replacing item being watched, missing mediaInfo, allow local playback", v15, 2u);
  }

  v9 = (*(*(a1 + 40) + 16))();
LABEL_16:
  v10 = v9;

  return v10;
}

__CFString *__62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_300(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained mediaInfo];
  v4 = [v3 tvpPlaylist];
  v5 = [v4 currentMediaItem];
  v6 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  [v6 addStartEventWithName:@"waitingForShareURLToBeResolved" isUIInteraction:1];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_2_301;
  aBlock[3] = &unk_1E87343E0;
  objc_copyWeak(&v30, (a1 + 32));
  v7 = _Block_copy(aBlock);
  v28 = @"Invalid";
  v8 = [WeakRetained mediaInfo];

  if (v8)
  {
    v27 = v7;
    v9 = [WeakRetained mediaInfo];
    v10 = [v9 tvpPlaylist];
    v11 = [v10 currentMediaItem];

    v12 = [v11 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
    if ([v12 isEqualToString:*MEMORY[0x1E69D5EB8]] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", *MEMORY[0x1E69D5EC8]))
    {
      v13 = VUIPlayableMediaTypeMovie;
    }

    else
    {
      v24 = *MEMORY[0x1E69D5ED0];
      if ([v12 isEqualToString:*MEMORY[0x1E69D5ED0]] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", v24))
      {
        v13 = VUIPlayableMediaTypeShow;
      }

      else
      {
        if (([v12 isEqualToString:*MEMORY[0x1E69D5ED8]] & 1) == 0 && !objc_msgSend(v12, "isEqualToString:", *MEMORY[0x1E69D5EC0]))
        {
LABEL_6:
          v15 = [v11 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
          v16 = [v11 mediaItemMetadataForProperty:*MEMORY[0x1E69D5D50]];
          v17 = [v11 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
          v18 = v17;
          if (v17)
          {
            v19 = v17;
          }

          else
          {
            v21 = [WeakRetained mediaInfo];
            v22 = [v21 videosPlayables];
            v23 = [v22 firstObject];
            v19 = [v23 adamID];
          }

          v7 = v27;
          goto LABEL_12;
        }

        v13 = VUIPlayableMediaTypeTrailer;
      }
    }

    v14 = *v13;

    v28 = v14;
    goto LABEL_6;
  }

  v20 = [WeakRetained videoCanonicalID];

  if (!v20)
  {
    v25 = [WeakRetained adamID];

    if (!v25)
    {
      v15 = 0;
      v19 = 0;
      v16 = 0;
      goto LABEL_22;
    }

    v19 = [WeakRetained adamID];
    v16 = 0;
    goto LABEL_19;
  }

  v15 = [WeakRetained videoCanonicalID];
  v16 = [WeakRetained showCanonicalID];
  [WeakRetained mediaType];
  v19 = 0;
  v28 = v11 = v28;
LABEL_12:

  if (v15)
  {
    [VUIPlayableResolver playableForCanonicalID:v15 showID:v16 mediaType:v28 completion:v7];
    goto LABEL_22;
  }

LABEL_19:
  if (v19)
  {
    [VUIPlayableResolver playableForAdamID:v19 completion:v7];
  }

  v15 = 0;
LABEL_22:

  objc_destroyWeak(&v30);
  return @"Waiting for share URL for be resolved";
}

void __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_2_301(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v16)
  {
    v8 = [WeakRetained mediaInfo];
    v9 = [v8 tvpPlaylist];
    v10 = [v9 currentMediaItem];

    v11 = v16;
    if (v10)
    {
      v12 = [v16 sharedWatchId];
      [v10 setMediaItemMetadata:v12 forProperty:*MEMORY[0x1E69D5CA0]];

      v13 = [v16 showCanonicalID];
      [v10 setMediaItemMetadata:v13 forProperty:*MEMORY[0x1E69D5D50]];

      v14 = [v16 canonicalID];
      [v10 setMediaItemMetadata:v14 forProperty:*MEMORY[0x1E69D5AE8]];

      v11 = v16;
    }

    [v7 setObject:v11 forKey:@"ResolvedPlayableKey"];
  }

  if (v5)
  {
    [v7 setObject:v5 forKey:@"ErrorKey"];
  }

  v15 = [WeakRetained stateMachine];
  [v15 postEvent:@"Share URL resolution complete" withContext:0 userInfo:v7];
}

id __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_3_304(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v7 = _Block_copy(v5);

  v8 = [v7 copy];
  [WeakRetained setCompletion:v8];

  v9 = sLogObject_18;
  if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [WeakRetained _descriptionForWatchType:{objc_msgSend(WeakRetained, "watchType")}];
    v21 = 138412546;
    v22 = v11;
    v23 = 2048;
    v24 = [WeakRetained isRentAndWatchNow];
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Performing playback startup flow with watch type %@, isRentAndWatchNow %ld", &v21, 0x16u);
  }

  v12 = [WeakRetained watchType];
  if ((v12 - 3) < 2)
  {
    v13 = *(a1 + 64);
    goto LABEL_12;
  }

  if (v12 == 1)
  {
    v14 = (*(*(a1 + 40) + 16))();
    v15 = sLogObject_18;
    if (v14)
    {
      if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_ERROR))
      {
        __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_3_304_cold_1();
      }

      v13 = *(a1 + 56);
      goto LABEL_12;
    }

    if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Watch type is Join, and co-watching is possible.", &v21, 2u);
    }

    v18 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (!v12)
    {
      v13 = *(a1 + 32);
LABEL_12:
      v16 = (*(v13 + 16))();
      goto LABEL_20;
    }

    v17 = sLogObject_18;
    if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Watch type is Solo.  Performing preflight", &v21, 2u);
    }

    v18 = *(*(a1 + 72) + 16);
  }

  v16 = v18();
LABEL_20:
  v19 = v16;

  return v19;
}

id __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_306(uint64_t a1, void *a2, uint64_t a3, const void *a4)
{
  v5 = a2;
  v6 = _Block_copy(a4);
  if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_ERROR))
  {
    __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_306_cold_1();
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_309;
  v10[3] = &unk_1E872D7E0;
  v11 = v6;
  v7 = v6;
  [v5 executeBlockAfterCurrentStateTransition:v10];
  v8 = [v5 currentState];

  return v8;
}

uint64_t __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_309(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, 0, 0, 0, 0, 0);
  }

  return result;
}

id __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_2_310(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v7 = [v5 unsignedIntegerValue];

  v8 = sLogObject_18;
  if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"VUIGroupActivityPlaybackStateDoNotPlay";
    if (v7 == 1)
    {
      v9 = @"VUIGroupActivityPlaybackStatePlayWithoutSession";
    }

    if (!v7)
    {
      v9 = @"VUIGroupActivityPlaybackStatePlayWithSession";
    }

    v24 = 138412290;
    v25 = v9;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "After asking to co-watch, VUIGroupActivityPlaybackState is %@", &v24, 0xCu);
  }

  v10 = [WeakRetained mediaInfo];
  v11 = [v10 tvpPlaylist];
  v12 = [v11 currentMediaItem];
  v13 = [v12 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  [v13 addEndEventWithName:@"askingUserToCoWatch"];

  if (v7 == 1)
  {
    v18 = sLogObject_18;
    if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "Co-watching is either not desired or no session is in progress.  Performing preflight", &v24, 2u);
    }

    v17 = *(*(a1 + 64) + 16);
    goto LABEL_17;
  }

  if (v7)
  {
    v20 = sLogObject_18;
    if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "No playback of any kind is desired.  Disallowing playback", &v24, 2u);
    }

    v19 = (*(*(a1 + 72) + 16))();
  }

  else
  {
    v14 = (*(*(a1 + 32) + 16))();
    v15 = sLogObject_18;
    v16 = os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT);
    if (v14 == 1)
    {
      if (v16)
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Co-watching is desired but requires share URL to be resolved.  Performing resolution", &v24, 2u);
      }

      v21 = *(a1 + 48);
    }

    else
    {
      if (!v14)
      {
        if (v16)
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Co-watching is possible and desired.  Will activate session after preflight", &v24, 2u);
        }

        v17 = *(*(a1 + 40) + 16);
LABEL_17:
        v19 = v17();
        goto LABEL_28;
      }

      if (v16)
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Co-watching is desired but not possible.  Showing error", &v24, 2u);
      }

      v21 = *(a1 + 56);
    }

    v19 = (*(v21 + 16))();
  }

LABEL_28:
  v22 = v19;

  return v22;
}

id __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_311(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [v5 unsignedIntegerValue];

  v8 = sLogObject_18;
  if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"VUIGroupActivityPlaybackStateDoNotPlay";
    if (v7 == 1)
    {
      v9 = @"VUIGroupActivityPlaybackStatePlayWithoutSession";
    }

    if (!v7)
    {
      v9 = @"VUIGroupActivityPlaybackStatePlayWithSession";
    }

    v20 = 138412290;
    v21 = v9;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Co-watch handling complete.  VUIGroupActivityPlaybackState is %@", &v20, 0xCu);
  }

  v10 = [WeakRetained mediaInfo];
  v11 = [v10 tvpPlaylist];
  v12 = [v11 currentMediaItem];
  v13 = [v12 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  [v13 addEndEventWithName:@"waitingToActivateOrJoinSession"];

  v14 = sLogObject_18;
  if (v7 == 2)
  {
    if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_ERROR))
    {
      __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_311_cold_1();
    }

    v15 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"without";
      if (!v7)
      {
        v16 = @"with";
      }

      v20 = 138412290;
      v21 = v16;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "GroupActivitiesManager indicates it will play %@ co-watching.  Finishing startup flow", &v20, 0xCu);
    }

    v17 = *(a1 + 32);
    [WeakRetained forceDownloadToStream];
    [WeakRetained isCellularAllowed];
    v15 = *(v17 + 16);
  }

  v18 = v15();

  return v18;
}

__CFString *__62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = [v6 objectForKey:@"ResolvedPlayableKey"];
  v9 = [v6 objectForKey:@"ErrorKey"];

  v10 = sLogObject_18;
  if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v45 = v8;
    v46 = 2112;
    v47 = v9;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Share URL resolution complete.  Resolved playable is %@, error is %@", buf, 0x16u);
  }

  v11 = [WeakRetained mediaInfo];
  v12 = [v11 tvpPlaylist];
  v13 = [v12 currentMediaItem];
  v14 = *MEMORY[0x1E69D5CA8];
  v15 = [v13 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  [v15 addEndEventWithName:@"waitingForShareURLToBeResolved"];

  if (v8)
  {
    [WeakRetained setResolvedPlayable:v8];
    v16 = [WeakRetained contentMetadata];

    if (v16)
    {
      v17 = [WeakRetained contentMetadata];
      v42 = [VUIContentMetadata alloc];
      v41 = [v17 vui_stringForKey:@"title"];
      v18 = [v17 vui_stringForKey:@"showTitle"];
      v19 = [v17 vui_stringForKey:@"seasonTitle"];
      [v17 vui_numberForKey:@"seasonNumber"];
      v43 = a1;
      v21 = v20 = v8;
      [v17 vui_numberForKey:@"episodeNumber"];
      v22 = WeakRetained;
      v24 = v23 = v9;
      v25 = [v17 vui_URLForKey:@"artworkURL"];
      v26 = [(VUIContentMetadata *)v42 initWithTitle:v41 showTitle:v18 seasonTitle:v19 seasonNumber:v21 episodeNumber:v24 artworkURL:v25];

      v9 = v23;
      WeakRetained = v22;

      v8 = v20;
      a1 = v43;

      v27 = [v22 resolvedPlayable];
      [v27 setMetadata:v26];
    }

    v28 = (*(*(a1 + 32) + 16))();
    v29 = sLogObject_18;
    v30 = os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT);
    if (v28)
    {
      if (v30)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "Co-watching is not possible after resolving share URL.   Ask whether content should be watched alone or not at all", buf, 2u);
      }

      (*(*(a1 + 48) + 16))();
      v31 = (*(*(a1 + 56) + 16))();
    }

    else
    {
      if (v30)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "Co-watching is possible based on metadata after resolving share URL.  Will activate session after preflight", buf, 2u);
      }

      v31 = (*(*(a1 + 40) + 16))();
    }

    v39 = v31;
  }

  else
  {
    v32 = a1;
    v33 = v9;
    v34 = sLogObject_18;
    if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v34, OS_LOG_TYPE_DEFAULT, "Unable to resolve share URL.  Ask whether content should be watched alone or not at all", buf, 2u);
    }

    v35 = [WeakRetained mediaInfo];
    v36 = [v35 tvpPlaylist];
    v37 = [v36 currentMediaItem];
    v38 = [v37 mediaItemMetadataForProperty:v14];
    [v38 addStartEventWithName:@"askingUserToWatchAloneOrCancel" isUIInteraction:1];

    v9 = v33;
    (*(*(v32 + 48) + 16))();
    v39 = @"Asking whether to watch alone or cancel due to content being unavailable";
  }

  return v39;
}

id __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_320(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sLogObject_18;
  if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "Watch alone selected, performing preflight", v10, 2u);
  }

  v4 = [WeakRetained mediaInfo];
  v5 = [v4 tvpPlaylist];
  v6 = [v5 currentMediaItem];
  v7 = [v6 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  [v7 addEndEventWithName:@"askingUserToWatchAloneOrCancel"];

  v8 = (*(*(a1 + 32) + 16))();

  return v8;
}

id __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_321(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sLogObject_18;
  if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "Cancel watching selected, not allowing playback", v10, 2u);
  }

  v4 = [WeakRetained mediaInfo];
  v5 = [v4 tvpPlaylist];
  v6 = [v5 currentMediaItem];
  v7 = [v6 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  [v7 addEndEventWithName:@"askingUserToWatchAloneOrCancel"];

  v8 = (*(*(a1 + 32) + 16))();

  return v8;
}

__CFString *__62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_322(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [v6 objectForKey:@"CoWatchActionKey"];
  v9 = [v8 integerValue];

  v10 = [v6 objectForKey:@"AllowedToPlayKey"];
  v11 = [v10 BOOLValue];

  v12 = [v6 objectForKey:@"AllowCellularUsageKey"];

  v13 = [v12 BOOLValue];
  [WeakRetained setIsCellularAllowed:v13];
  v14 = sLogObject_18;
  if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v34 = v11;
    v35 = 2048;
    v36 = v13;
    _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "Preflight complete.  allowedToPlay == %ld, allowCellularUsage == %ld", buf, 0x16u);
  }

  v15 = [WeakRetained mediaInfo];
  v16 = [v15 tvpPlaylist];
  v17 = [v16 currentMediaItem];
  v18 = [v17 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];
  [v18 addEndEventWithName:@"showingPreflightUI"];

  if ((+[VUITVExtension isRunningInTVAppExtension]& v11) == 1)
  {
    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    v31 = @"VUITVAppExtensionTrailerPlayablesKey";
    v20 = [WeakRetained mediaInfo];
    v21 = [v20 videosPlayables];

    v32 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    [v19 postNotificationName:@"VUITVAppExtensionDidPlayTrailerNotification" object:0 userInfo:v22];

LABEL_10:
    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, 0, 0, 0, 0);
    goto LABEL_11;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  if ([WeakRetained watchType] == 3 || objc_msgSend(WeakRetained, "watchType") == 4)
  {
    if (v9 != 3)
    {
      v23 = (*(*(a1 + 48) + 16))();
      goto LABEL_12;
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), 1, 0, [WeakRetained forceDownloadToStream], v13, 0);
    v23 = LABEL_11:;
LABEL_12:
    v24 = v23;
    goto LABEL_13;
  }

  v26 = [WeakRetained stateMachine];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_323;
  v27[3] = &unk_1E8734430;
  v28 = *(a1 + 40);
  v29 = v9;
  v30 = v13;
  [v26 executeBlockAfterCurrentStateTransition:v27];

  v24 = @"Performing route selection";
LABEL_13:

  return v24;
}

id __62__VUIPlaybackStartupCoordinator__registerStateMachineHandlers__block_invoke_2_324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [v6 objectForKey:@"CoWatchActionKey"];
  v9 = [v8 integerValue];

  v10 = [v6 objectForKey:@"AllowedToPlayKey"];
  v11 = [v10 BOOLValue];

  v12 = [v6 objectForKey:@"AllowCellularUsageKey"];

  v13 = [v12 BOOLValue];
  if (!v11)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, 0, 0, 0, 0);
    goto LABEL_5;
  }

  if (v9 == 3)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), 1, 0, [WeakRetained forceDownloadToStream], v13, 0);
    v14 = LABEL_5:;
    goto LABEL_7;
  }

  v14 = (*(*(a1 + 40) + 16))();
LABEL_7:
  v15 = v14;

  return v15;
}

- (id)makeDownloadStreamedForCoWatchingWarningNotificationOptions
{
  v13[3] = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v2 = +[VUILocalNotificationServiceOptionsKey interruptionLevel];
  }

  else
  {
    v2 = *MEMORY[0x1E69E16E8];
  }

  v3 = v2;
  if (_os_feature_enabled_impl())
  {
    v4 = +[VUILocalNotificationServiceOptionsKey sound];
  }

  else
  {
    v4 = *MEMORY[0x1E69E16F0];
  }

  v5 = v4;
  if (_os_feature_enabled_impl())
  {
    v6 = +[VUILocalNotificationServiceSound silent];
  }

  else
  {
    v6 = *MEMORY[0x1E69E16F8];
  }

  v7 = v6;
  if (_os_feature_enabled_impl())
  {
    v8 = +[VUILocalNotificationServiceOptionsKey bannerOnly];
  }

  else
  {
    v8 = *MEMORY[0x1E69E16E0];
  }

  v9 = v8;
  v12[0] = v3;
  v12[1] = v5;
  v13[0] = &unk_1F5E5D890;
  v13[1] = v7;
  v12[2] = v8;
  v13[2] = MEMORY[0x1E695E118];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

- (void)_preflightPlaybackWithPlaylist:(id)a3 presentingViewController:(id)a4 completionHandler:(id)a5
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v40 = a4;
  v9 = a5;
  v10 = +[VUIPlaybackManager sharedInstance];
  v11 = [v10 isPlaylistBeingPresented:v8];

  if (!v11)
  {
    v14 = [v8 currentMediaItem];
    v15 = sLogObject_18;
    if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = v14;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Performing preflight for media item %@", buf, 0xCu);
    }

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __107__VUIPlaybackStartupCoordinator__preflightPlaybackWithPlaylist_presentingViewController_completionHandler___block_invoke;
    aBlock[3] = &unk_1E87344F8;
    objc_copyWeak(&v52, &location);
    v13 = v14;
    v49 = v13;
    v38 = v40;
    v50 = v38;
    v51 = v9;
    v16 = _Block_copy(aBlock);
    v17 = +[VUIPlaybackManager sharedInstance];
    v18 = [v17 currentMediaItem];

    v19 = [(VUIPlaybackStartupCoordinator *)self _existingPlaybackSessionAllowsCellular];
    if (v19)
    {
      v39 = 1;
    }

    else
    {
      v20 = +[VUIPlaybackSettings sharedSettings];
      v39 = [v20 cellularDataPlaybackEnabled];
    }

    v21 = sLogObject_18;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      if (v19)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v23 = +[VUIPlaybackSettings sharedSettings];
      if ([v23 cellularDataPlaybackEnabled])
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      *buf = 138412546;
      v55 = v22;
      v56 = 2112;
      v57 = v24;
      _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "existingPlaybackSessionAllowsCellular: %@, cellularDataPlaybackEnabled: %@", buf, 0x16u);

      v13 = v37;
    }

    if (v18 && [v18 isEqualToMediaItem:v13])
    {
      goto LABEL_36;
    }

    v25 = [(__CFString *)v13 hasTrait:*MEMORY[0x1E69D5E58]];
    if ([(VUIPlaybackStartupCoordinator *)self forceDownloadToStream])
    {
      v26 = sLogObject_18;
      v25 = 0;
      if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v26, OS_LOG_TYPE_DEFAULT, "Treating downloaded video as streaming during preflight", buf, 2u);
        v25 = 0;
      }
    }

    if ([(VUIPlaybackStartupCoordinator *)self _shouldPromptForExpiredDownload:v13])
    {
      v27 = [(__CFString *)v13 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C68]];
      v28 = [v27 intValue];

      if (v28 != 2)
      {
        [(VUIPlaybackStartupCoordinator *)self _showAlertControllerForExpirationPromptForDownload:v13 presentingViewController:v38];
      }

      v29 = sLogObject_18;
      if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v29, OS_LOG_TYPE_DEFAULT, "Preflight disallowed playback because download is expired", buf, 2u);
      }

      (*(v16 + 2))(v16, 0, 0);
      goto LABEL_37;
    }

    if (v25)
    {
      v30 = sLogObject_18;
      if (!os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_36:
        (*(v16 + 2))(v16, 1, v39);
LABEL_37:

        objc_destroyWeak(&v52);
        objc_destroyWeak(&location);
        goto LABEL_38;
      }

      *buf = 0;
      v31 = "Preflight allowing playback because content is downloaded";
    }

    else
    {
      v32 = +[VUIPlaybackSettings sharedSettings];
      v33 = [v32 networkStatus] == 1;

      if (!v33)
      {
        v34 = +[VUIPlaybackSettings sharedSettings];
        v35 = [v34 networkStatus] == 0;

        if (v35)
        {
          v36 = sLogObject_18;
          if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E323F000, v36, OS_LOG_TYPE_DEFAULT, "Preflight disallowing streaming playback because no network is available", buf, 2u);
          }

          [(VUIPlaybackStartupCoordinator *)self _presentCantPlaybackOverCellularAlertControllerWithMediaItem:v13 presentingViewController:v38 completionHandler:0];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __107__VUIPlaybackStartupCoordinator__preflightPlaybackWithPlaylist_presentingViewController_completionHandler___block_invoke_343;
          block[3] = &unk_1E872D7E0;
          v47 = v16;
          dispatch_async(MEMORY[0x1E69E96A0], block);
        }

        else
        {
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __107__VUIPlaybackStartupCoordinator__preflightPlaybackWithPlaylist_presentingViewController_completionHandler___block_invoke_2_344;
          v41[3] = &unk_1E8734548;
          objc_copyWeak(&v45, &location);
          v44 = v16;
          v42 = v13;
          v43 = v38;
          [(VUIPlaybackStartupCoordinator *)self _checkIfAllowedToPlayOnCellularNetworkWithMediaItem:v42 presentingController:v43 completion:v41];

          objc_destroyWeak(&v45);
        }

        goto LABEL_37;
      }

      v30 = sLogObject_18;
      if (!os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      *buf = 0;
      v31 = "Preflight allowing streaming playback because network is WiFi";
    }

    _os_log_impl(&dword_1E323F000, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 2u);
    goto LABEL_36;
  }

  v12 = sLogObject_18;
  if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Skipping preflight since this playlist is already being presented.  Using existing value for allowing cellular", buf, 2u);
  }

  v13 = +[VUIPlaybackManager sharedInstance];
  (*(v9 + 2))(v9, 1, [(__CFString *)v13 currentPlaylistAllowsCellular]);
LABEL_38:
}

void __107__VUIPlaybackStartupCoordinator__preflightPlaybackWithPlaylist_presentingViewController_completionHandler___block_invoke(id *a1, int a2, char a3)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (a2)
  {
    v7 = a1[4];
    v8 = a1[5];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __107__VUIPlaybackStartupCoordinator__preflightPlaybackWithPlaylist_presentingViewController_completionHandler___block_invoke_2;
    v9[3] = &unk_1E87344D0;
    objc_copyWeak(&v13, a1 + 7);
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    v14 = a3;
    [WeakRetained _performRatingAndAgeVerificationWithMediaItem:v7 presentingController:v8 completion:v9];

    objc_destroyWeak(&v13);
  }

  else
  {
    (*(a1[6] + 2))();
  }
}

void __107__VUIPlaybackStartupCoordinator__preflightPlaybackWithPlaylist_presentingViewController_completionHandler___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = sLogObject_18;
  v6 = os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Preflight allowing playback after performing rating and age verification", buf, 2u);
    }

    if ([WeakRetained _shouldWarnStartingRentalPlaybackWindowWithMediaItem:*(a1 + 32)])
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __107__VUIPlaybackStartupCoordinator__preflightPlaybackWithPlaylist_presentingViewController_completionHandler___block_invoke_331;
      v13[3] = &unk_1E87344A8;
      objc_copyWeak(&v16, (a1 + 56));
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v17 = *(a1 + 64);
      [WeakRetained _presentStartingPlaybackWindowWarningWithRentalMediaItem:v7 presentingViewController:v8 completionHandler:v13];

      objc_destroyWeak(&v16);
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __107__VUIPlaybackStartupCoordinator__preflightPlaybackWithPlaylist_presentingViewController_completionHandler___block_invoke_335;
      v10[3] = &unk_1E8734458;
      v9 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = *(a1 + 64);
      [WeakRetained _configureFor2Dor3DWithPresentingController:v9 completion:v10];
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Preflight disallowing playback after performing rating and age verification", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __107__VUIPlaybackStartupCoordinator__preflightPlaybackWithPlaylist_presentingViewController_completionHandler___block_invoke_331(uint64_t a1, int a2)
{
  v4 = sLogObject_18;
  v5 = os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Preflight allowing playback after showing rental window warning", buf, 2u);
    }

    v6 = dispatch_time(0, 1000000000);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __107__VUIPlaybackStartupCoordinator__preflightPlaybackWithPlaylist_presentingViewController_completionHandler___block_invoke_332;
    v7[3] = &unk_1E8734480;
    objc_copyWeak(&v10, (a1 + 48));
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(a1 + 56);
    dispatch_after(v6, MEMORY[0x1E69E96A0], v7);

    objc_destroyWeak(&v10);
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Preflight disallowing playback after showing rental window warning", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __107__VUIPlaybackStartupCoordinator__preflightPlaybackWithPlaylist_presentingViewController_completionHandler___block_invoke_332(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __107__VUIPlaybackStartupCoordinator__preflightPlaybackWithPlaylist_presentingViewController_completionHandler___block_invoke_2_333;
  v4[3] = &unk_1E8734458;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  [WeakRetained _configureFor2Dor3DWithPresentingController:v3 completion:v4];
}

void __107__VUIPlaybackStartupCoordinator__preflightPlaybackWithPlaylist_presentingViewController_completionHandler___block_invoke_2_344(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if ((a2 & 1) == 0)
  {
    v8 = sLogObject_18;
    if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Preflight disallowing streaming playback because network is cellular and cellular playback is not allowed", buf, 2u);
    }

    v9 = *(*(a1 + 48) + 16);
    goto LABEL_10;
  }

  if (![WeakRetained _shouldWarnAboutRentalPlaybackQualityForRentalMediaItem:*(a1 + 32)])
  {
    v10 = sLogObject_18;
    if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Preflight allowing streaming playback over cellular connection", buf, 2u);
    }

    v9 = *(*(a1 + 48) + 16);
LABEL_10:
    v9();
    goto LABEL_11;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __107__VUIPlaybackStartupCoordinator__preflightPlaybackWithPlaylist_presentingViewController_completionHandler___block_invoke_345;
  v11[3] = &unk_1E8734520;
  v12 = v6;
  v13 = *(a1 + 48);
  [v5 _showCellularPlaybackQualityOptionsForRentalMediaItem:v12 presentingViewController:v7 completionHandler:v11];

LABEL_11:
}

uint64_t __107__VUIPlaybackStartupCoordinator__preflightPlaybackWithPlaylist_presentingViewController_completionHandler___block_invoke_345(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sLogObject_18;
  v7 = os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "Preflight allowing playback of rental over cellular after displaying rental playback quality dialog", buf, 2u);
    }

    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    [v8 setMediaItemMetadata:v9 forProperty:*MEMORY[0x1E69D5C80]];

    v10 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (v7)
    {
      *v12 = 0;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "Preflight disallowing playback of rental over cellular after displaying rental playback quality dialog", v12, 2u);
    }

    v10 = *(*(a1 + 40) + 16);
  }

  return v10();
}

- (BOOL)_shouldWarnStartingRentalPlaybackWindowWithMediaItem:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 hasTrait:*MEMORY[0x1E69D5E60]])
  {
    v4 = [v3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CF8]];
    if (v4)
    {
      v5 = sLogObject_18;
      v6 = 0;
      if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Rental has already been played.  Not showing rental playback warning.", &v22, 2u);
        v6 = 0;
      }

      goto LABEL_22;
    }

    v7 = [v3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CE0]];
    v8 = [v3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CF0]];
    v9 = v8;
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v17 = sLogObject_18;
      if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        v11 = "No rental metadata is available.  Showing rental playback warning";
LABEL_19:
        _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, v11, &v22, 2u);
      }
    }

    else
    {
      v12 = [MEMORY[0x1E695DF00] date];
      [v7 timeIntervalSinceDate:v12];
      v14 = v13;

      [v9 doubleValue];
      v16 = v15;
      v17 = sLogObject_18;
      v18 = os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT);
      if (v14 < v16)
      {
        if (v18)
        {
          v19 = v17;
          [v9 doubleValue];
          v22 = 134218240;
          v23 = v14;
          v24 = 2048;
          v25 = v20;
          _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "Rental is being played for the first time, but seconds until rental expiration, %f, is less than rental playback duration, %f.  Not showing rental playback warning.", &v22, 0x16u);
        }

        v6 = 0;
        goto LABEL_21;
      }

      if (v18)
      {
        LOWORD(v22) = 0;
        v11 = "Rental is being played for the first time.  Showing rental playback warning.";
        goto LABEL_19;
      }
    }

    v6 = 1;
LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  v6 = 0;
LABEL_23:

  return v6;
}

- (void)_presentStartingPlaybackWindowWarningWithRentalMediaItem:(id)a3 presentingViewController:(id)a4 completionHandler:(id)a5
{
  v39[2] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v33 = a4;
  v8 = a3;
  v9 = +[VUIApplicationRouter topPresentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = +[VUIApplicationRouter topPresentedViewController];
    [v11 dismissViewControllerAnimated:0 completion:0];
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = +[VUILocalizationManager sharedInstance];
  v14 = [v13 localizedStringForKey:@"RENTAL_PLAYBACK_WINDOW_WARNING_TITLE_FORMAT"];
  v15 = [v8 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];

  v31 = [v12 stringWithValidatedFormat:v14 validFormatSpecifiers:@"%@" error:0, v15];

  v16 = +[VUILocalizationManager sharedInstance];
  v32 = [v16 localizedStringForKey:@"RENTAL_PLAYBACK_WINDOW_WARNING_MESSAGE"];

  v17 = [MEMORY[0x1E69DB878] systemFontOfSize:11.0 weight:*MEMORY[0x1E69DB978]];
  v18 = *MEMORY[0x1E69DB650];
  v38[0] = *MEMORY[0x1E69DB648];
  v38[1] = v18;
  v39[0] = v17;
  v19 = [MEMORY[0x1E69DC888] systemGrayColor];
  v39[1] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];

  v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v32 attributes:v20];
  v22 = [VUIAlertController vui_alertControllerWithTitle:v31 message:0 preferredStyle:1];
  [v22 _setAttributedMessage:v21];
  v23 = +[VUILocalizationManager sharedInstance];
  v24 = [v23 localizedStringForKey:@"PLAY"];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __133__VUIPlaybackStartupCoordinator__presentStartingPlaybackWindowWarningWithRentalMediaItem_presentingViewController_completionHandler___block_invoke;
  v36[3] = &unk_1E8732FF8;
  v25 = v7;
  v37 = v25;
  v26 = [VUIAlertAction vui_actionWithTitle:v24 style:0 handler:v36];
  [v22 vui_addAction:v26];

  v27 = +[VUILocalizationManager sharedInstance];
  v28 = [v27 localizedStringForKey:@"CANCEL"];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __133__VUIPlaybackStartupCoordinator__presentStartingPlaybackWindowWarningWithRentalMediaItem_presentingViewController_completionHandler___block_invoke_2;
  v34[3] = &unk_1E8732FF8;
  v35 = v25;
  v29 = v25;
  v30 = [VUIAlertAction vui_actionWithTitle:v28 style:1 handler:v34];
  [v22 vui_addAction:v30];

  [v22 vui_presentAlertFromPresentingController:v33 animated:1 completion:0];
}

- (void)_presentCantPlaybackOverCellularAlertControllerWithMediaItem:(id)a3 presentingViewController:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = MGGetBoolAnswer();
  v11 = +[VUILocalizationManager sharedInstance];
  v12 = v11;
  if (v10)
  {
    v13 = @"CONNECT_TO_WLAN_TO_PLAYBACK_ERROR_MESSAGE_MOVIE";
  }

  else
  {
    v13 = @"CONNECT_TO_WIFI_TO_PLAYBACK_ERROR_MESSAGE_MOVIE";
  }

  v14 = [v11 localizedStringForKey:v13];

  v15 = [v9 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];

  if (![v15 isEqualToString:*MEMORY[0x1E69D5ED0]])
  {
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_10:
    v19 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
    v20 = [v19 localizedStringForKey:@"CANT_PLAYBACK_OVER_CELLULAR_NETWORK_ERROR_TITLE" value:0 table:@"VideosUIEmbedded"];
    goto LABEL_11;
  }

  v16 = +[VUILocalizationManager sharedInstance];
  v17 = v16;
  if ((v10 & 1) == 0)
  {
    v21 = [v16 localizedStringForKey:@"CONNECT_TO_WIFI_TO_PLAYBACK_ERROR_MESSAGE_EPISODE"];

    v14 = v21;
    goto LABEL_10;
  }

  v18 = [v16 localizedStringForKey:@"CONNECT_TO_WLAN_TO_PLAYBACK_ERROR_MESSAGE_EPISODE"];

  v14 = v18;
LABEL_8:
  v19 = +[VUILocalizationManager sharedInstance];
  v20 = [v19 localizedStringForKey:@"CANT_PLAYBACK_OVER_WLAN_ERROR_TITLE"];
LABEL_11:
  v22 = v20;

  v23 = [VUIAlertController vui_alertControllerWithTitle:v22 message:v14 preferredStyle:1];
  v24 = +[VUILocalizationManager sharedInstance];
  v25 = [v24 localizedStringForKey:@"OK"];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __137__VUIPlaybackStartupCoordinator__presentCantPlaybackOverCellularAlertControllerWithMediaItem_presentingViewController_completionHandler___block_invoke;
  v28[3] = &unk_1E8732FF8;
  v29 = v7;
  v26 = v7;
  v27 = [VUIAlertAction vui_actionWithTitle:v25 style:0 handler:v28];
  [v23 vui_addAction:v27];

  [v23 vui_presentAlertFromPresentingController:v8 animated:1 completion:0];
}

uint64_t __137__VUIPlaybackStartupCoordinator__presentCantPlaybackOverCellularAlertControllerWithMediaItem_presentingViewController_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_showCellularPlaybackQualityOptionsForRentalMediaItem:(id)a3 presentingViewController:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v28 = a4;
  v8 = a3;
  v9 = +[VUILocalizationManager sharedInstance];
  v29 = [v9 localizedStringForKey:@"WATCH_RENTAL_IN_HD_TITLE_FORMAT"];

  v10 = MEMORY[0x1E696AEC0];
  v11 = [v8 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];

  v12 = [v10 stringWithValidatedFormat:v29 validFormatSpecifiers:@"%@" error:0, v11];

  v13 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
  v14 = [v13 localizedStringForKey:@"WATCH_RENTAL_IN_HD_DESCRIPTION" value:0 table:@"VideosUIEmbedded"];

  v15 = [VUIAlertController vui_alertControllerWithTitle:v12 message:v14 preferredStyle:1];
  v16 = +[VUILocalizationManager sharedInstance];
  v17 = [v16 localizedStringForKey:@"WATCH"];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __130__VUIPlaybackStartupCoordinator__showCellularPlaybackQualityOptionsForRentalMediaItem_presentingViewController_completionHandler___block_invoke;
  v34[3] = &unk_1E8732FF8;
  v18 = v7;
  v35 = v18;
  v19 = [VUIAlertAction vui_actionWithTitle:v17 style:0 handler:v34];
  [v15 vui_addAction:v19];

  v20 = +[VUILocalizationManager sharedInstance];
  v21 = [v20 localizedStringForKey:@"WATCH_IN_SD"];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __130__VUIPlaybackStartupCoordinator__showCellularPlaybackQualityOptionsForRentalMediaItem_presentingViewController_completionHandler___block_invoke_2;
  v32[3] = &unk_1E8732FF8;
  v22 = v18;
  v33 = v22;
  v23 = [VUIAlertAction vui_actionWithTitle:v21 style:0 handler:v32];
  [v15 vui_addAction:v23];

  v24 = +[VUILocalizationManager sharedInstance];
  v25 = [v24 localizedStringForKey:@"CANCEL"];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __130__VUIPlaybackStartupCoordinator__showCellularPlaybackQualityOptionsForRentalMediaItem_presentingViewController_completionHandler___block_invoke_3;
  v30[3] = &unk_1E8732FF8;
  v31 = v22;
  v26 = v22;
  v27 = [VUIAlertAction vui_actionWithTitle:v25 style:1 handler:v30];
  [v15 vui_addAction:v27];

  [v15 vui_presentAlertFromPresentingController:v28 animated:1 completion:0];
}

- (void)_performRatingAndAgeVerificationWithMediaItem:(id)a3 presentingController:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (+[VUITVExtension isRunningInCompanionApp])
  {
    v9[2](v9, 1);
  }

  else
  {
    v10 = +[VUIPreflightManager defaultPreflightManager];
    [v10 setPresentingController:v8];
    [v10 setMediaItem:v7];
    [v10 setRestrictionsCheckType:0];
    if ([v7 hasTrait:*MEMORY[0x1E69D5E58]] && (+[VUIAgeVerification sharedInstance](VUIAgeVerification, "sharedInstance"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isAgeVerificationEnabled"), v11, (v12 & 1) != 0))
    {
      v13 = 1;
    }

    else
    {
      v13 = 3;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __111__VUIPlaybackStartupCoordinator__performRatingAndAgeVerificationWithMediaItem_presentingController_completion___block_invoke;
    v14[3] = &unk_1E8734570;
    v15 = v9;
    [v10 preflightWithOptions:v13 completion:v14];
  }
}

uint64_t __111__VUIPlaybackStartupCoordinator__performRatingAndAgeVerificationWithMediaItem_presentingController_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)_shouldWarnAboutRentalPlaybackQualityForRentalMediaItem:(id)a3
{
  v3 = *MEMORY[0x1E69D5E60];
  v4 = a3;
  LODWORD(v3) = [v4 hasTrait:v3];
  v5 = +[VUIPlaybackSettings sharedSettings];
  v6 = [v5 networkStatus];

  v7 = [v4 hasTrait:*MEMORY[0x1E69D5E48]];
  v8 = +[VUIPlaybackSettings sharedSettings];
  v9 = [v8 preferredCellularPlaybackQuality];

  if (v3)
  {
    v10 = v6 == 2;
  }

  else
  {
    v10 = 0;
  }

  v12 = v10 && v7 != 0 && v9 == 1;
  result = 0;
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E6977E50]);
    v14 = [v13 path];
    v15 = [v14 isExpensive];

    if (v15)
    {
      return 1;
    }
  }

  return result;
}

- (void)_checkIfAllowedToPlayOnCellularNetworkWithMediaItem:(id)a3 presentingController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[VUIPlaybackSettings sharedSettings];
  v12 = [v11 cellularDataPlaybackEnabled];

  if (v12)
  {
    v13 = sLogObject_18;
    if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Cellular playback setting allowing playback";
LABEL_10:
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if ([(VUIPlaybackStartupCoordinator *)self _existingPlaybackSessionAllowsCellular])
  {
    v13 = sLogObject_18;
    if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Existing playback session allows cellular; allowing playback";
      goto LABEL_10;
    }

LABEL_11:
    v10[2](v10, 1);
    goto LABEL_12;
  }

  if ([(VUIPlaybackStartupCoordinator *)self _mediaItemIsBeingDownloadedAndDownloadAllowsCellular:v8])
  {
    v13 = sLogObject_18;
    if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Cellular playback allowed because content is already being downloaded using cellular";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v15 = MGGetBoolAnswer();
  v16 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
  v33 = [v16 localizedStringForKey:@"ASK_TO_ENABLE_CELLULAR_DATA_TO_STREAM_TITLE" value:0 table:@"VideosUIEmbedded"];

  v17 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
  v18 = v17;
  if (v15)
  {
    v19 = @"ASK_TO_ENABLE_CELLULAR_DATA_TO_STREAM_MESSAGE_WLAN";
  }

  else
  {
    v19 = @"ASK_TO_ENABLE_CELLULAR_DATA_TO_STREAM_MESSAGE_WIFI";
  }

  v31 = [v17 localizedStringForKey:v19 value:0 table:@"VideosUIEmbedded"];

  v20 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
  v32 = [v20 localizedStringForKey:@"ENABLE_CELLULAR_DATA_TO_STREAM_BUTTON_TITLE" value:0 table:@"VideosUIEmbedded"];

  v21 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
  v30 = [v21 localizedStringForKey:@"USE_CELLULAR_DATA_TO_STREAM_ONCE_BUTTON_TITLE" value:0 table:@"VideosUIEmbedded"];

  v22 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
  v34 = [v22 localizedStringForKey:@"DONT_ENABLE_CELLULAR_DATA_TO_STREAM_BUTTON_TITLE" value:0 table:@"VideosUIEmbedded"];

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __117__VUIPlaybackStartupCoordinator__checkIfAllowedToPlayOnCellularNetworkWithMediaItem_presentingController_completion___block_invoke;
  v42[3] = &unk_1E8732FF8;
  v23 = v10;
  v43 = v23;
  v24 = [VUIAlertAction vui_actionWithTitle:v32 style:0 handler:v42];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __117__VUIPlaybackStartupCoordinator__checkIfAllowedToPlayOnCellularNetworkWithMediaItem_presentingController_completion___block_invoke_427;
  v40[3] = &unk_1E8732FF8;
  v25 = v23;
  v41 = v25;
  v26 = [VUIAlertAction vui_actionWithTitle:v30 style:0 handler:v40];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __117__VUIPlaybackStartupCoordinator__checkIfAllowedToPlayOnCellularNetworkWithMediaItem_presentingController_completion___block_invoke_428;
  v38[3] = &unk_1E8732FF8;
  v39 = v25;
  v27 = [VUIAlertAction vui_actionWithTitle:v34 style:0 handler:v38];
  v28 = [VUIAlertController vui_alertControllerWithTitle:v33 message:v31 preferredStyle:1];
  [v28 vui_addAction:v24 isPreferred:1];
  [v28 vui_addAction:v26];
  [v28 vui_addAction:v27];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __117__VUIPlaybackStartupCoordinator__checkIfAllowedToPlayOnCellularNetworkWithMediaItem_presentingController_completion___block_invoke_429;
  v35[3] = &unk_1E872D990;
  v36 = v28;
  v37 = v9;
  v29 = v28;
  [v37 dismissViewControllerAnimated:1 completion:v35];

LABEL_12:
}

uint64_t __117__VUIPlaybackStartupCoordinator__checkIfAllowedToPlayOnCellularNetworkWithMediaItem_presentingController_completion___block_invoke(uint64_t a1)
{
  v2 = sLogObject_18;
  if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "Cellular playback allowed because cellular playback setting was toggled on by user selection", v5, 2u);
  }

  v3 = +[VUIPlaybackSettings sharedSettings];
  [v3 setCellularDataPlaybackEnabled:1];

  return (*(*(a1 + 32) + 16))();
}

uint64_t __117__VUIPlaybackStartupCoordinator__checkIfAllowedToPlayOnCellularNetworkWithMediaItem_presentingController_completion___block_invoke_427(uint64_t a1)
{
  v2 = sLogObject_18;
  if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "Cellular playback allowed via one-time option by user selection", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __117__VUIPlaybackStartupCoordinator__checkIfAllowedToPlayOnCellularNetworkWithMediaItem_presentingController_completion___block_invoke_428(uint64_t a1)
{
  v2 = sLogObject_18;
  if (os_log_type_enabled(sLogObject_18, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "Cellular playback disallowed by user selection", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (BOOL)_shouldPromptForExpiredDownload:(id)a3
{
  v3 = [a3 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyDownloadExpirationDate"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 vui_isInThePast];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_showAlertControllerForExpirationPromptForDownload:(id)a3 presentingViewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyAvailabilityEndDate"];
  v8 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AD8]];
  if (v7 && ![v7 vui_isInTheFuture])
  {
    v22 = MEMORY[0x1E696AEC0];
    v23 = +[VUILocalizationManager sharedInstance];
    v24 = [v23 localizedStringForKey:@"DOWNLOAD_MESSAGE_NO_LONGER_AVAILABLE"];
    v14 = [v22 stringWithValidatedFormat:v24 validFormatSpecifiers:@"%@" error:0, v8];

    v25 = +[VUILocalizationManager sharedInstance];
    v26 = [v25 localizedStringForKey:@"DOWNLOAD_NO_LONGER_AVAILABLE"];
    v16 = [VUIAlertController vui_alertControllerWithTitle:v26 message:v14 preferredStyle:1];

    v27 = +[VUILocalizationManager sharedInstance];
    v28 = [v27 localizedStringForKey:@"DELETE"];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __109__VUIPlaybackStartupCoordinator__showAlertControllerForExpirationPromptForDownload_presentingViewController___block_invoke_3;
    v40[3] = &unk_1E87329B0;
    v41 = v5;
    v29 = [VUIAlertAction vui_actionWithTitle:v28 style:0 handler:v40];

    [(__CFString *)v16 vui_addAction:v29];
    [(__CFString *)v16 vui_presentAlertFromPresentingController:v6 animated:1 completion:0];

    v21 = v41;
  }

  else
  {
    v9 = [v5 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyDownloadAllowsManualRenewal"];
    v10 = [v9 BOOLValue];

    v11 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable];
    v12 = +[VUILocalizationManager sharedInstance];
    v13 = v12;
    v39 = v8;
    if (v11)
    {
      if (v10)
      {
        v14 = [v12 localizedStringForKey:@"RENEW_DOWNLOAD"];

        v15 = +[VUILocalizationManager sharedInstance];
        v16 = [v15 localizedStringForKey:@"RENEW_DOWNLOAD"];

        v17 = MEMORY[0x1E696AEC0];
        v18 = +[VUILocalizationManager sharedInstance];
        v19 = v18;
        v20 = @"DOWNLOAD_MESSAGE_RENEW";
      }

      else
      {
        v14 = [v12 localizedStringForKey:@"DOWNLOAD_AGAIN"];

        v30 = +[VUILocalizationManager sharedInstance];
        v16 = [v30 localizedStringForKey:@"DOWNLOAD_AGAIN_BUTTON_TITLE"];

        v17 = MEMORY[0x1E696AEC0];
        v18 = +[VUILocalizationManager sharedInstance];
        v19 = v18;
        v20 = @"DOWNLOAD_MESSAGE_REDOWNLOAD";
      }

      v31 = [v18 localizedStringForKey:v20];
      v21 = [v17 stringWithValidatedFormat:v31 validFormatSpecifiers:@"%@" error:0, v39];
    }

    else
    {
      v14 = [v12 localizedStringForKey:@"DOWNLOAD_OFFLINE_RENEW"];

      v19 = +[VUILocalizationManager sharedInstance];
      v21 = [v19 localizedStringForKey:@"DOWNLOAD_OFFLINE_RENEW_MESSAGE"];
      v16 = &stru_1F5DB25C0;
    }

    v32 = [VUIAlertController vui_alertControllerWithTitle:v14 message:v21 preferredStyle:1];
    if (v11)
    {
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __109__VUIPlaybackStartupCoordinator__showAlertControllerForExpirationPromptForDownload_presentingViewController___block_invoke;
      v42[3] = &unk_1E8734598;
      v43 = v5;
      v44 = v6;
      v33 = [VUIAlertAction vui_actionWithTitle:v16 style:0 handler:v42];
      [v32 vui_addAction:v33];

      v34 = +[VUILocalizationManager sharedInstance];
      v35 = v34;
      v36 = @"CANCEL";
    }

    else
    {
      v34 = +[VUILocalizationManager sharedInstance];
      v35 = v34;
      v36 = @"OK";
    }

    v37 = [v34 localizedStringForKey:v36];

    v38 = [VUIAlertAction vui_actionWithTitle:v37 style:1 handler:0];
    [v32 vui_addAction:v38];
    [v32 vui_presentAlertFromPresentingController:v6 animated:1 completion:0];

    v8 = v39;
  }
}

void __109__VUIPlaybackStartupCoordinator__showAlertControllerForExpirationPromptForDownload_presentingViewController___block_invoke(uint64_t a1)
{
  v2 = +[VUIDownloadManager sharedInstance];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __109__VUIPlaybackStartupCoordinator__showAlertControllerForExpirationPromptForDownload_presentingViewController___block_invoke_2;
  v5[3] = &unk_1E872E878;
  v6 = v3;
  [v2 preflightDownloadForTVPMediaItem:v6 presentingViewController:v4 contentAllowsCellularDownload:1 completion:v5];
}

void __109__VUIPlaybackStartupCoordinator__showAlertControllerForExpirationPromptForDownload_presentingViewController___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = +[VUIDownloadManager sharedInstance];
  [v7 addDownloadOrRenewKeysForMediaItem:*(a1 + 32) allowCellular:a3 quality:a4 shouldMarkAsDeletedOnCancellationOrFailure:0];
}

void __109__VUIPlaybackStartupCoordinator__showAlertControllerForExpirationPromptForDownload_presentingViewController___block_invoke_3(uint64_t a1)
{
  v2 = +[VUIDownloadManager sharedInstance];
  [v2 cancelAndRemoveDownloadForMediaItem:*(a1 + 32)];
}

- (BOOL)_mediaItemIsBeingDownloadedAndDownloadAllowsCellular:(id)a3
{
  v3 = [a3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
  if ([v3 length])
  {
    v4 = +[VUIDownloadManager sharedInstance];
    v5 = [v4 existingDownloadForAdamID:v3];

    if (v5)
    {
      v6 = [v5 allowCellularUsage];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_existingPlaybackSessionAllowsCellular
{
  v3 = [(VUIPlaybackStartupCoordinator *)self mediaInfo];

  if (!v3)
  {
    return 0;
  }

  v4 = [(VUIPlaybackStartupCoordinator *)self mediaInfo];
  v5 = [v4 playbackContext];

  if ((v5 - 10) > 2)
  {
    return 0;
  }

  v6 = +[VUIPlaybackManager sharedInstance];
  v7 = [v6 currentPlaylistAllowsCellular];

  return v7;
}

@end