@interface TLToneStoreDownloadStoreServicesController
- (NSString)storeAccountName;
- (TLToneStoreDownloadStoreServicesController)init;
- (void)_assertRunningOnAccessQueue;
- (void)_handleAccountStoreDidChangeNotification:(id)notification;
- (void)_handleToneManagerContentsDidChangeNotification:(id)notification;
- (void)_notifyObserversOfCheckingForDownloadsFinishedWithoutNeedToIssueAnyDownload;
- (void)_notifyObserversOfStartedToneStoreDownloads:(id)downloads progressedToneStoreDownload:(id)download finishedToneStoreDownloads:(id)storeDownloads;
- (void)_notifyObserversOfUpdatedStoreAccountName:(id)name;
- (void)_openToneStoreWithStoreItemKind:(id)kind;
- (void)_performBlockOnAccessQueue:(id)queue;
- (void)_updateStoreAccountName;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)downloadManager:(id)manager downloadStatesDidChange:(id)change;
- (void)openAlertToneStore;
- (void)openRingtoneStore;
- (void)purchaseManager:(id)manager didFinishPurchasesWithResponses:(id)responses;
- (void)redownloadAllTones;
- (void)removeObserver:(id)observer;
@end

@implementation TLToneStoreDownloadStoreServicesController

- (TLToneStoreDownloadStoreServicesController)init
{
  v132[2] = *MEMORY[0x1E69E9840];
  v118.receiver = self;
  v118.super_class = TLToneStoreDownloadStoreServicesController;
  v2 = [(TLToneStoreDownloadStoreServicesController *)&v118 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = MEMORY[0x1E696AEC0];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:v3];
    bundleIdentifier = [v5 bundleIdentifier];
    v7 = NSStringFromClass(v3);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v10 = [v4 stringWithFormat:@"%@.%@-%@-%@", bundleIdentifier, v7, @"AccessQueue", uUIDString];
    accessQueueLabel = v2->_accessQueueLabel;
    v2->_accessQueueLabel = v10;

    v12 = dispatch_queue_create([(NSString *)v2->_accessQueueLabel UTF8String], 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v12;

    v124 = 0;
    v125 = &v124;
    v126 = 0x2050000000;
    v14 = getSSDownloadManagerOptionsClass_softClass;
    v127 = getSSDownloadManagerOptionsClass_softClass;
    if (!getSSDownloadManagerOptionsClass_softClass)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadManagerOptionsClass_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      __getSSDownloadManagerOptionsClass_block_invoke(&v119);
      v14 = v125[3];
    }

    v15 = v14;
    _Block_object_dispose(&v124, 8);
    v115 = objc_alloc_init(v14);
    v16 = getSSDownloadKindRingtone();
    v132[0] = v16;
    v17 = getSSDownloadKindTone();
    v132[1] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:2];
    [v115 setDownloadKinds:v18];

    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v19 = getSSDownloadExternalPropertyBytesDownloadedSymbolLoc_ptr;
    v127 = getSSDownloadExternalPropertyBytesDownloadedSymbolLoc_ptr;
    if (!getSSDownloadExternalPropertyBytesDownloadedSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadExternalPropertyBytesDownloadedSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v20 = StoreServicesLibrary();
      v21 = dlsym(v20, "SSDownloadExternalPropertyBytesDownloaded");
      *(v123[1] + 24) = v21;
      getSSDownloadExternalPropertyBytesDownloadedSymbolLoc_ptr = *(v123[1] + 24);
      v19 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v19)
    {
      goto LABEL_61;
    }

    v22 = *v19;
    v130[0] = v22;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v23 = getSSDownloadExternalPropertyPercentCompleteSymbolLoc_ptr;
    v127 = getSSDownloadExternalPropertyPercentCompleteSymbolLoc_ptr;
    if (!getSSDownloadExternalPropertyPercentCompleteSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadExternalPropertyPercentCompleteSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v24 = StoreServicesLibrary();
      v25 = dlsym(v24, "SSDownloadExternalPropertyPercentComplete");
      *(v123[1] + 24) = v25;
      getSSDownloadExternalPropertyPercentCompleteSymbolLoc_ptr = *(v123[1] + 24);
      v23 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v23)
    {
      goto LABEL_61;
    }

    v26 = *v23;
    v130[1] = v26;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v27 = getSSDownloadExternalPropertyPolicySizeLimitSymbolLoc_ptr;
    v127 = getSSDownloadExternalPropertyPolicySizeLimitSymbolLoc_ptr;
    if (!getSSDownloadExternalPropertyPolicySizeLimitSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadExternalPropertyPolicySizeLimitSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v28 = StoreServicesLibrary();
      v29 = dlsym(v28, "SSDownloadExternalPropertyPolicySizeLimit");
      *(v123[1] + 24) = v29;
      getSSDownloadExternalPropertyPolicySizeLimitSymbolLoc_ptr = *(v123[1] + 24);
      v27 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v27)
    {
      goto LABEL_61;
    }

    v30 = *v27;
    v130[2] = v30;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v31 = getSSDownloadExternalPropertyRentalInformationSymbolLoc_ptr;
    v127 = getSSDownloadExternalPropertyRentalInformationSymbolLoc_ptr;
    if (!getSSDownloadExternalPropertyRentalInformationSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadExternalPropertyRentalInformationSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v32 = StoreServicesLibrary();
      v33 = dlsym(v32, "SSDownloadExternalPropertyRentalInformation");
      *(v123[1] + 24) = v33;
      getSSDownloadExternalPropertyRentalInformationSymbolLoc_ptr = *(v123[1] + 24);
      v31 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v31)
    {
      goto LABEL_61;
    }

    v131 = *v31;
    v34 = MEMORY[0x1E695DEC8];
    v35 = v131;
    v36 = [v34 arrayWithObjects:v130 count:4];

    [v115 setPrefetchedDownloadExternalProperties:v36];
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v37 = getSSDownloadPropertyClientBundleIdentifierSymbolLoc_ptr;
    v127 = getSSDownloadPropertyClientBundleIdentifierSymbolLoc_ptr;
    if (!getSSDownloadPropertyClientBundleIdentifierSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyClientBundleIdentifierSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v38 = StoreServicesLibrary();
      v39 = dlsym(v38, "SSDownloadPropertyClientBundleIdentifier");
      *(v123[1] + 24) = v39;
      getSSDownloadPropertyClientBundleIdentifierSymbolLoc_ptr = *(v123[1] + 24);
      v37 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v37)
    {
      goto LABEL_61;
    }

    p_isa = &v2->super.isa;
    v40 = *v37;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v41 = getSSDownloadPropertyDownloadPhaseSymbolLoc_ptr;
    v127 = getSSDownloadPropertyDownloadPhaseSymbolLoc_ptr;
    v128[0] = v40;
    if (!getSSDownloadPropertyDownloadPhaseSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyDownloadPhaseSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v42 = StoreServicesLibrary();
      v43 = dlsym(v42, "SSDownloadPropertyDownloadPhase");
      *(v123[1] + 24) = v43;
      getSSDownloadPropertyDownloadPhaseSymbolLoc_ptr = *(v123[1] + 24);
      v41 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v41)
    {
      goto LABEL_61;
    }

    v44 = *v41;
    v128[1] = v44;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v45 = getSSDownloadPropertyEncodedErrorDataSymbolLoc_ptr;
    v127 = getSSDownloadPropertyEncodedErrorDataSymbolLoc_ptr;
    if (!getSSDownloadPropertyEncodedErrorDataSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyEncodedErrorDataSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v46 = StoreServicesLibrary();
      v47 = dlsym(v46, "SSDownloadPropertyEncodedErrorData");
      *(v123[1] + 24) = v47;
      getSSDownloadPropertyEncodedErrorDataSymbolLoc_ptr = *(v123[1] + 24);
      v45 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v45)
    {
      goto LABEL_61;
    }

    v48 = *v45;
    v128[2] = v48;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v49 = getSSDownloadPropertyIsRestoreSymbolLoc_ptr;
    v127 = getSSDownloadPropertyIsRestoreSymbolLoc_ptr;
    if (!getSSDownloadPropertyIsRestoreSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyIsRestoreSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v50 = StoreServicesLibrary();
      v51 = dlsym(v50, "SSDownloadPropertyIsRestore");
      *(v123[1] + 24) = v51;
      getSSDownloadPropertyIsRestoreSymbolLoc_ptr = *(v123[1] + 24);
      v49 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v49)
    {
      goto LABEL_61;
    }

    v52 = *v49;
    v128[3] = v52;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v53 = getSSDownloadPropertyKindSymbolLoc_ptr;
    v127 = getSSDownloadPropertyKindSymbolLoc_ptr;
    if (!getSSDownloadPropertyKindSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyKindSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v54 = StoreServicesLibrary();
      v55 = dlsym(v54, "SSDownloadPropertyKind");
      *(v123[1] + 24) = v55;
      getSSDownloadPropertyKindSymbolLoc_ptr = *(v123[1] + 24);
      v53 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v53)
    {
      goto LABEL_61;
    }

    v113 = *v53;
    v128[4] = v113;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v56 = getSSDownloadPropertyReasonSymbolLoc_ptr;
    v127 = getSSDownloadPropertyReasonSymbolLoc_ptr;
    if (!getSSDownloadPropertyReasonSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyReasonSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v57 = StoreServicesLibrary();
      v58 = dlsym(v57, "SSDownloadPropertyReason");
      *(v123[1] + 24) = v58;
      getSSDownloadPropertyReasonSymbolLoc_ptr = *(v123[1] + 24);
      v56 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v56)
    {
      goto LABEL_61;
    }

    v112 = *v56;
    v128[5] = v112;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v59 = getSSDownloadPropertyStoreItemIdentifierSymbolLoc_ptr;
    v127 = getSSDownloadPropertyStoreItemIdentifierSymbolLoc_ptr;
    if (!getSSDownloadPropertyStoreItemIdentifierSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyStoreItemIdentifierSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v60 = StoreServicesLibrary();
      v61 = dlsym(v60, "SSDownloadPropertyStoreItemIdentifier");
      *(v123[1] + 24) = v61;
      getSSDownloadPropertyStoreItemIdentifierSymbolLoc_ptr = *(v123[1] + 24);
      v59 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v59)
    {
      goto LABEL_61;
    }

    v111 = *v59;
    v128[6] = v111;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v62 = getSSDownloadPropertyTitleSymbolLoc_ptr;
    v127 = getSSDownloadPropertyTitleSymbolLoc_ptr;
    if (!getSSDownloadPropertyTitleSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyTitleSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v63 = StoreServicesLibrary();
      v64 = dlsym(v63, "SSDownloadPropertyTitle");
      *(v123[1] + 24) = v64;
      getSSDownloadPropertyTitleSymbolLoc_ptr = *(v123[1] + 24);
      v62 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v62)
    {
      goto LABEL_61;
    }

    v110 = *v62;
    v128[7] = v110;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v65 = getSSDownloadPropertyHandlerIDSymbolLoc_ptr;
    v127 = getSSDownloadPropertyHandlerIDSymbolLoc_ptr;
    if (!getSSDownloadPropertyHandlerIDSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyHandlerIDSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v66 = StoreServicesLibrary();
      v67 = dlsym(v66, "SSDownloadPropertyHandlerID");
      *(v123[1] + 24) = v67;
      getSSDownloadPropertyHandlerIDSymbolLoc_ptr = *(v123[1] + 24);
      v65 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v65)
    {
      goto LABEL_61;
    }

    v68 = *v65;
    v128[8] = v68;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v69 = getSSDownloadPropertyCollectionNameSymbolLoc_ptr;
    v127 = getSSDownloadPropertyCollectionNameSymbolLoc_ptr;
    if (!getSSDownloadPropertyCollectionNameSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyCollectionNameSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v70 = StoreServicesLibrary();
      v71 = dlsym(v70, "SSDownloadPropertyCollectionName");
      *(v123[1] + 24) = v71;
      getSSDownloadPropertyCollectionNameSymbolLoc_ptr = *(v123[1] + 24);
      v69 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v69)
    {
      goto LABEL_61;
    }

    v72 = *v69;
    v128[9] = v72;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v73 = getSSDownloadPropertyArtistNameSymbolLoc_ptr;
    v127 = getSSDownloadPropertyArtistNameSymbolLoc_ptr;
    if (!getSSDownloadPropertyArtistNameSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyArtistNameSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v74 = StoreServicesLibrary();
      v75 = dlsym(v74, "SSDownloadPropertyArtistName");
      *(v123[1] + 24) = v75;
      getSSDownloadPropertyArtistNameSymbolLoc_ptr = *(v123[1] + 24);
      v73 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v73)
    {
      goto LABEL_61;
    }

    v76 = *v73;
    v128[10] = v76;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v77 = getSSDownloadPropertyGenreSymbolLoc_ptr;
    v127 = getSSDownloadPropertyGenreSymbolLoc_ptr;
    if (!getSSDownloadPropertyGenreSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyGenreSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v78 = StoreServicesLibrary();
      v79 = dlsym(v78, "SSDownloadPropertyGenre");
      *(v123[1] + 24) = v79;
      getSSDownloadPropertyGenreSymbolLoc_ptr = *(v123[1] + 24);
      v77 = v125[3];
    }

    v109 = v40;
    _Block_object_dispose(&v124, 8);
    if (!v77)
    {
      goto LABEL_61;
    }

    v80 = *v77;
    v128[11] = v80;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v81 = getSSDownloadPropertyDurationInMillisecondsSymbolLoc_ptr;
    v127 = getSSDownloadPropertyDurationInMillisecondsSymbolLoc_ptr;
    if (!getSSDownloadPropertyDurationInMillisecondsSymbolLoc_ptr)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadPropertyDurationInMillisecondsSymbolLoc_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      v82 = StoreServicesLibrary();
      v83 = dlsym(v82, "SSDownloadPropertyDurationInMilliseconds");
      *(v123[1] + 24) = v83;
      getSSDownloadPropertyDurationInMillisecondsSymbolLoc_ptr = *(v123[1] + 24);
      v81 = v125[3];
    }

    _Block_object_dispose(&v124, 8);
    if (!v81)
    {
LABEL_61:
      __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
      __break(1u);
    }

    v129 = *v81;
    v84 = MEMORY[0x1E695DEC8];
    v85 = v129;
    [v84 arrayWithObjects:v128 count:13];
    v86 = v2 = p_isa;

    [v115 setPrefetchedDownloadProperties:v86];
    [v115 setShouldFilterExternalOriginatedDownloads:0];
    v124 = 0;
    v125 = &v124;
    v126 = 0x2050000000;
    v87 = getSSDownloadManagerClass_softClass;
    v127 = getSSDownloadManagerClass_softClass;
    if (!getSSDownloadManagerClass_softClass)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSDownloadManagerClass_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      __getSSDownloadManagerClass_block_invoke(&v119);
      v87 = v125[3];
    }

    v88 = v87;
    _Block_object_dispose(&v124, 8);
    v89 = [[v87 alloc] initWithManagerOptions:v115];
    v90 = p_isa[6];
    p_isa[6] = v89;

    [p_isa[6] addObserver:p_isa];
    v124 = 0;
    v125 = &v124;
    v126 = 0x2050000000;
    v91 = getSSPurchaseManagerClass_softClass;
    v127 = getSSPurchaseManagerClass_softClass;
    if (!getSSPurchaseManagerClass_softClass)
    {
      v119 = MEMORY[0x1E69E9820];
      v120 = 3221225472;
      v121 = __getSSPurchaseManagerClass_block_invoke;
      v122 = &unk_1E8578D30;
      v123 = &v124;
      __getSSPurchaseManagerClass_block_invoke(&v119);
      v91 = v125[3];
    }

    v92 = v91;
    _Block_object_dispose(&v124, 8);
    v93 = [v91 alloc];
    v94 = MEMORY[0x1E696AEC0];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier2 = [mainBundle bundleIdentifier];
    v97 = objc_opt_class();
    v98 = NSStringFromClass(v97);
    v99 = [v94 stringWithFormat:@"%@.%@", bundleIdentifier2, v98];
    v100 = [v93 initWithManagerIdentifier:v99];
    v101 = p_isa[7];
    p_isa[7] = v100;

    [p_isa[7] setDelegate:p_isa];
    v116[0] = MEMORY[0x1E69E9820];
    v116[1] = 3221225472;
    v116[2] = __50__TLToneStoreDownloadStoreServicesController_init__block_invoke;
    v116[3] = &unk_1E85789A0;
    v102 = p_isa;
    v117 = v102;
    [v102 _performBlockOnAccessQueue:v116];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v104 = getSSAccountStoreChangedNotification();
    defaultStore = [getSSAccountStoreClass() defaultStore];
    [defaultCenter addObserver:v102 selector:sel__handleAccountStoreDidChangeNotification_ name:v104 object:defaultStore];

    v106 = +[TLToneManager sharedToneManager];
    [defaultCenter addObserver:v102 selector:sel__handleToneManagerContentsDidChangeNotification_ name:@"_TLToneManagerContentsChangedNotification" object:v106];
  }

  v107 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t __50__TLToneStoreDownloadStoreServicesController_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 _updateStoreAccountName];
}

- (void)dealloc
{
  accessQueue = self->_accessQueue;
  self->_accessQueue = 0;
  v4 = accessQueue;

  [(SSDownloadManager *)self->_storeDownloadManager removeObserver:self];
  [(SSPurchaseManager *)self->_storePurchaseManager setDelegate:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = getSSAccountStoreChangedNotification();
  defaultStore = [getSSAccountStoreClass() defaultStore];
  [defaultCenter removeObserver:self name:v6 object:defaultStore];

  v8 = +[TLToneManager sharedToneManager];
  [defaultCenter removeObserver:self name:@"_TLToneManagerContentsChangedNotification" object:v8];

  dispatch_sync(v4, &__block_literal_global_1);
  v9.receiver = self;
  v9.super_class = TLToneStoreDownloadStoreServicesController;
  [(TLToneStoreDownloadStoreServicesController *)&v9 dealloc];
}

- (NSString)storeAccountName
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = &stru_1F54CFF40;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__TLToneStoreDownloadStoreServicesController_storeAccountName__block_invoke;
  v4[3] = &unk_1E8578950;
  v4[4] = self;
  v4[5] = &v5;
  [(TLToneStoreDownloadStoreServicesController *)self _performBlockOnAccessQueue:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __62__TLToneStoreDownloadStoreServicesController_storeAccountName__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)_updateStoreAccountName
{
  [(TLToneStoreDownloadStoreServicesController *)self _assertRunningOnAccessQueue];
  defaultStore = [getSSAccountStoreClass() defaultStore];
  activeAccount = [defaultStore activeAccount];
  accountName = [activeAccount accountName];
  v5 = [accountName copy];

  v6 = self->_storeAccountName;
  v7 = v5;
  v8 = v7;
  if (!(v7 | v6))
  {
    goto LABEL_7;
  }

  if (!v7 || !v6)
  {

    goto LABEL_9;
  }

  if (v6 == v7)
  {
LABEL_7:

    goto LABEL_10;
  }

  v9 = [v6 isEqualToString:v7];

  if (!v9)
  {
LABEL_9:
    objc_storeStrong(&self->_storeAccountName, v5);
    [(TLToneStoreDownloadStoreServicesController *)self _notifyObserversOfUpdatedStoreAccountName:v8];
  }

LABEL_10:
}

- (void)_handleAccountStoreDidChangeNotification:(id)notification
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __87__TLToneStoreDownloadStoreServicesController__handleAccountStoreDidChangeNotification___block_invoke;
  v3[3] = &unk_1E85789A0;
  v3[4] = self;
  [(TLToneStoreDownloadStoreServicesController *)self _performBlockOnAccessQueue:v3];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__TLToneStoreDownloadStoreServicesController_addObserver___block_invoke;
  v6[3] = &unk_1E8578900;
  v7 = observerCopy;
  selfCopy = self;
  v5 = observerCopy;
  [(TLToneStoreDownloadStoreServicesController *)self _performBlockOnAccessQueue:v6];
}

uint64_t __58__TLToneStoreDownloadStoreServicesController_addObserver___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    result = [*(*(result + 40) + 24) containsObject:?];
    if ((result & 1) == 0)
    {
      v2 = *(*(v1 + 40) + 24);
      if (!v2)
      {
        v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
        v4 = *(v1 + 40);
        v5 = *(v4 + 24);
        *(v4 + 24) = v3;

        v2 = *(*(v1 + 40) + 24);
      }

      v6 = *(v1 + 32);

      return [v2 addObject:v6];
    }
  }

  return result;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__TLToneStoreDownloadStoreServicesController_removeObserver___block_invoke;
  v6[3] = &unk_1E8578900;
  v7 = observerCopy;
  selfCopy = self;
  v5 = observerCopy;
  [(TLToneStoreDownloadStoreServicesController *)self _performBlockOnAccessQueue:v6];
}

uint64_t __61__TLToneStoreDownloadStoreServicesController_removeObserver___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    result = [*(*(result + 40) + 24) containsObject:?];
    if (result)
    {
      v2 = *(v1 + 32);
      v3 = *(*(v1 + 40) + 24);

      return [v3 removeObject:v2];
    }
  }

  return result;
}

- (void)_notifyObserversOfUpdatedStoreAccountName:(id)name
{
  nameCopy = name;
  [(TLToneStoreDownloadStoreServicesController *)self _assertRunningOnAccessQueue];
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v6 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __88__TLToneStoreDownloadStoreServicesController__notifyObserversOfUpdatedStoreAccountName___block_invoke;
  v9[3] = &unk_1E8578900;
  v10 = allObjects;
  v11 = nameCopy;
  v7 = nameCopy;
  v8 = allObjects;
  dispatch_async(v6, v9);
}

void __88__TLToneStoreDownloadStoreServicesController__notifyObserversOfUpdatedStoreAccountName___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 storeAccountNameDidChange:{*(a1 + 40), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserversOfCheckingForDownloadsFinishedWithoutNeedToIssueAnyDownload
{
  [(TLToneStoreDownloadStoreServicesController *)self _assertRunningOnAccessQueue];
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__TLToneStoreDownloadStoreServicesController__notifyObserversOfCheckingForDownloadsFinishedWithoutNeedToIssueAnyDownload__block_invoke;
  block[3] = &unk_1E85789A0;
  v7 = allObjects;
  v5 = allObjects;
  dispatch_async(v4, block);
}

void __121__TLToneStoreDownloadStoreServicesController__notifyObserversOfCheckingForDownloadsFinishedWithoutNeedToIssueAnyDownload__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 didFinishCheckingForAvailableToneStoreDownloads:{0, v8}];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserversOfStartedToneStoreDownloads:(id)downloads progressedToneStoreDownload:(id)download finishedToneStoreDownloads:(id)storeDownloads
{
  downloadsCopy = downloads;
  downloadCopy = download;
  storeDownloadsCopy = storeDownloads;
  [(TLToneStoreDownloadStoreServicesController *)self _assertRunningOnAccessQueue];
  v11 = [downloadsCopy count];
  v12 = [downloadCopy count];
  v13 = [storeDownloadsCopy count];
  if (v11 || v12 || v13)
  {
    v14 = v13 != 0;
    v15 = v11 != 0;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v17 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __145__TLToneStoreDownloadStoreServicesController__notifyObserversOfStartedToneStoreDownloads_progressedToneStoreDownload_finishedToneStoreDownloads___block_invoke;
    block[3] = &unk_1E8578F78;
    v20 = allObjects;
    v24 = v15;
    v21 = downloadsCopy;
    v25 = v12 != 0;
    v22 = downloadCopy;
    v26 = v14;
    v23 = storeDownloadsCopy;
    v18 = allObjects;
    dispatch_async(v17, block);
  }
}

void __145__TLToneStoreDownloadStoreServicesController__notifyObserversOfStartedToneStoreDownloads_progressedToneStoreDownload_finishedToneStoreDownloads___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (*(a1 + 64) == 1)
        {
          v8 = *(*(&v10 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 didFinishCheckingForAvailableToneStoreDownloads:{1, v10}];
          }

          if (objc_opt_respondsToSelector())
          {
            [v7 toneStoreDownloadsDidStart:*(a1 + 40)];
          }
        }

        if (*(a1 + 65) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v7 toneStoreDownloadsDidProgress:*(a1 + 48)];
        }

        if (*(a1 + 66) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v7 toneStoreDownloadsDidFinish:*(a1 + 56)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)openAlertToneStore
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v3 = getSSItemKindToneSymbolLoc_ptr;
  v9 = getSSItemKindToneSymbolLoc_ptr;
  if (!getSSItemKindToneSymbolLoc_ptr)
  {
    v4 = StoreServicesLibrary();
    v7[3] = dlsym(v4, "SSItemKindTone");
    getSSItemKindToneSymbolLoc_ptr = v7[3];
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v3)
  {
    v5 = __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  [(TLToneStoreDownloadStoreServicesController *)self _openToneStoreWithStoreItemKind:*v3];
}

- (void)openRingtoneStore
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v3 = getSSItemKindRingtoneSymbolLoc_ptr;
  v9 = getSSItemKindRingtoneSymbolLoc_ptr;
  if (!getSSItemKindRingtoneSymbolLoc_ptr)
  {
    v4 = StoreServicesLibrary();
    v7[3] = dlsym(v4, "SSItemKindRingtone");
    getSSItemKindRingtoneSymbolLoc_ptr = v7[3];
    v3 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v3)
  {
    v5 = __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  [(TLToneStoreDownloadStoreServicesController *)self _openToneStoreWithStoreItemKind:*v3];
}

- (void)_openToneStoreWithStoreItemKind:(id)kind
{
  kindCopy = kind;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v4 = getSSItemStoreFrontURLForItemKindSymbolLoc_ptr;
  v22 = getSSItemStoreFrontURLForItemKindSymbolLoc_ptr;
  if (!getSSItemStoreFrontURLForItemKindSymbolLoc_ptr)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getSSItemStoreFrontURLForItemKindSymbolLoc_block_invoke;
    v17 = &unk_1E8578D30;
    v18 = &v19;
    v5 = StoreServicesLibrary();
    v20[3] = dlsym(v5, "SSItemStoreFrontURLForItemKind");
    getSSItemStoreFrontURLForItemKindSymbolLoc_ptr = *(v18[1] + 24);
    v4 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v4)
  {
    v9 = __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    _Block_object_dispose(&v19, 8);
    _Unwind_Resume(v9);
  }

  v6 = v4(kindCopy);

  v10 = MEMORY[0x1E69E9820];
  v11 = __78__TLToneStoreDownloadStoreServicesController__openToneStoreWithStoreItemKind___block_invoke;
  v12 = &unk_1E85789A0;
  v13 = v6;
  v7 = MEMORY[0x1E696AF00];
  v8 = v6;
  if ([v7 isMainThread])
  {
    v11(&v10);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &v10);
  }
}

void __78__TLToneStoreDownloadStoreServicesController__openToneStoreWithStoreItemKind___block_invoke(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getUIApplicationClass_softClass;
  v9 = getUIApplicationClass_softClass;
  if (!getUIApplicationClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getUIApplicationClass_block_invoke;
    v5[3] = &unk_1E8578D30;
    v5[4] = &v6;
    __getUIApplicationClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  v4 = [v2 sharedApplication];
  [v4 openURL:*(a1 + 32) options:MEMORY[0x1E695E0F8] completionHandler:0];
}

- (void)redownloadAllTones
{
  v38 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v3 = getSSTonePurchaseClass_softClass;
  v34 = getSSTonePurchaseClass_softClass;
  if (!getSSTonePurchaseClass_softClass)
  {
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __getSSTonePurchaseClass_block_invoke;
    v29 = &unk_1E8578D30;
    v30 = &v31;
    __getSSTonePurchaseClass_block_invoke(&v26);
    v3 = v32[3];
  }

  v4 = v3;
  _Block_object_dispose(&v31, 8);
  v5 = objc_alloc_init(v3);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v6 = getSSItemToneStyleRingtoneSymbolLoc_ptr;
  v34 = getSSItemToneStyleRingtoneSymbolLoc_ptr;
  if (!getSSItemToneStyleRingtoneSymbolLoc_ptr)
  {
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __getSSItemToneStyleRingtoneSymbolLoc_block_invoke;
    v29 = &unk_1E8578D30;
    v30 = &v31;
    v7 = StoreServicesLibrary();
    v8 = dlsym(v7, "SSItemToneStyleRingtone");
    *(v30[1] + 24) = v8;
    getSSItemToneStyleRingtoneSymbolLoc_ptr = *(v30[1] + 24);
    v6 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v6)
  {
    goto LABEL_17;
  }

  v9 = *v6;
  v36 = v9;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v10 = getSSItemToneStyleTextToneSymbolLoc_ptr;
  v34 = getSSItemToneStyleTextToneSymbolLoc_ptr;
  if (!getSSItemToneStyleTextToneSymbolLoc_ptr)
  {
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __getSSItemToneStyleTextToneSymbolLoc_block_invoke;
    v29 = &unk_1E8578D30;
    v30 = &v31;
    v11 = StoreServicesLibrary();
    v12 = dlsym(v11, "SSItemToneStyleTextTone");
    *(v30[1] + 24) = v12;
    getSSItemToneStyleTextToneSymbolLoc_ptr = *(v30[1] + 24);
    v10 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v10)
  {
    goto LABEL_17;
  }

  v37 = *v10;
  v13 = MEMORY[0x1E695DEC8];
  v14 = v37;
  v15 = [v13 arrayWithObjects:&v36 count:2];
  [v5 setAllowedToneStyles:v15];

  [v5 setCreatesDownloads:0];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v16 = getSSDownloadPropertyIsRedownloadSymbolLoc_ptr;
  v34 = getSSDownloadPropertyIsRedownloadSymbolLoc_ptr;
  if (!getSSDownloadPropertyIsRedownloadSymbolLoc_ptr)
  {
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __getSSDownloadPropertyIsRedownloadSymbolLoc_block_invoke;
    v29 = &unk_1E8578D30;
    v30 = &v31;
    v17 = StoreServicesLibrary();
    v18 = dlsym(v17, "SSDownloadPropertyIsRedownload");
    *(v30[1] + 24) = v18;
    getSSDownloadPropertyIsRedownloadSymbolLoc_ptr = *(v30[1] + 24);
    v16 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v16)
  {
LABEL_17:
    __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    __break(1u);
  }

  [v5 setValue:MEMORY[0x1E695E118] forDownloadProperty:*v16];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v19 = getSSMutableURLRequestPropertiesClass_softClass;
  v34 = getSSMutableURLRequestPropertiesClass_softClass;
  if (!getSSMutableURLRequestPropertiesClass_softClass)
  {
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __getSSMutableURLRequestPropertiesClass_block_invoke;
    v29 = &unk_1E8578D30;
    v30 = &v31;
    __getSSMutableURLRequestPropertiesClass_block_invoke(&v26);
    v19 = v32[3];
  }

  v20 = v19;
  _Block_object_dispose(&v31, 8);
  v21 = [[v19 alloc] initWithURLRequest:0];
  [v21 setURLBagKey:@"redownloadAllTones"];
  [v5 setRequestProperties:v21];
  v22 = TLLogToneManagement();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_1D9356000, v22, OS_LOG_TYPE_DEFAULT, "Issuing store purchase for tones.", &v26, 2u);
  }

  storePurchaseManager = self->_storePurchaseManager;
  v35 = v5;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  [(SSPurchaseManager *)storePurchaseManager addPurchases:v24 withCompletionBlock:&__block_literal_global_39];

  v25 = *MEMORY[0x1E69E9840];
}

void __64__TLToneStoreDownloadStoreServicesController_redownloadAllTones__block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = TLLogToneManagement();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "Store purchase did complete successfully for tones.", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __64__TLToneStoreDownloadStoreServicesController_redownloadAllTones__block_invoke_cold_1(v4);
  }
}

- (void)downloadManager:(id)manager downloadStatesDidChange:(id)change
{
  changeCopy = change;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__TLToneStoreDownloadStoreServicesController_downloadManager_downloadStatesDidChange___block_invoke;
  v7[3] = &unk_1E8578900;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  [(TLToneStoreDownloadStoreServicesController *)self _performBlockOnAccessQueue:v7];
}

void __86__TLToneStoreDownloadStoreServicesController_downloadManager_downloadStatesDidChange___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = a1;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v28 objects:v41 count:16];
  if (v2)
  {
    v3 = *v29;
    v24 = &v34;
    do
    {
      v4 = 0;
      do
      {
        if (*v29 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v28 + 1) + 8 * v4);
        v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "persistentIdentifier", v24)}];
        v7 = [*(*(v27 + 40) + 40) objectForKey:v6];
        if (v7)
        {
          v8 = [v5 downloadPhaseIdentifier];
          v37 = 0;
          v38 = &v37;
          v39 = 0x2020000000;
          v9 = getSSDownloadPhaseFinishedSymbolLoc_ptr;
          v40 = getSSDownloadPhaseFinishedSymbolLoc_ptr;
          if (!getSSDownloadPhaseFinishedSymbolLoc_ptr)
          {
            v32 = MEMORY[0x1E69E9820];
            v33 = 3221225472;
            v34 = __getSSDownloadPhaseFinishedSymbolLoc_block_invoke;
            v35 = &unk_1E8578D30;
            v36 = &v37;
            v10 = StoreServicesLibrary();
            v11 = dlsym(v10, "SSDownloadPhaseFinished");
            *(v36[1] + 24) = v11;
            getSSDownloadPhaseFinishedSymbolLoc_ptr = *(v36[1] + 24);
            v9 = v38[3];
          }

          _Block_object_dispose(&v37, 8);
          if (!v9)
          {
LABEL_29:
            __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
            __break(1u);
          }

          v12 = *v9;
          if ([v8 isEqualToString:v12])
          {
LABEL_16:
          }

          else
          {
            v37 = 0;
            v38 = &v37;
            v39 = 0x2020000000;
            v13 = getSSDownloadPhaseFailedSymbolLoc_ptr;
            v40 = getSSDownloadPhaseFailedSymbolLoc_ptr;
            if (!getSSDownloadPhaseFailedSymbolLoc_ptr)
            {
              v32 = MEMORY[0x1E69E9820];
              v33 = 3221225472;
              v34 = __getSSDownloadPhaseFailedSymbolLoc_block_invoke;
              v35 = &unk_1E8578D30;
              v36 = &v37;
              v14 = StoreServicesLibrary();
              v15 = dlsym(v14, "SSDownloadPhaseFailed");
              *(v36[1] + 24) = v15;
              getSSDownloadPhaseFailedSymbolLoc_ptr = *(v36[1] + 24);
              v13 = v38[3];
            }

            _Block_object_dispose(&v37, 8);
            if (!v13)
            {
              goto LABEL_29;
            }

            v16 = *v13;
            if ([v8 isEqualToString:v16])
            {

              goto LABEL_16;
            }

            v37 = 0;
            v38 = &v37;
            v39 = 0x2020000000;
            v18 = getSSDownloadPhaseCanceledSymbolLoc_ptr;
            v40 = getSSDownloadPhaseCanceledSymbolLoc_ptr;
            if (!getSSDownloadPhaseCanceledSymbolLoc_ptr)
            {
              v32 = MEMORY[0x1E69E9820];
              v33 = 3221225472;
              v34 = __getSSDownloadPhaseCanceledSymbolLoc_block_invoke;
              v35 = &unk_1E8578D30;
              v36 = &v37;
              v19 = StoreServicesLibrary();
              v20 = dlsym(v19, "SSDownloadPhaseCanceled");
              *(v36[1] + 24) = v20;
              getSSDownloadPhaseCanceledSymbolLoc_ptr = *(v36[1] + 24);
              v18 = v38[3];
            }

            _Block_object_dispose(&v37, 8);
            if (!v18)
            {
              goto LABEL_29;
            }

            v21 = [v8 isEqualToString:*v18];

            if ((v21 & 1) == 0)
            {
              [v5 percentComplete];
LABEL_19:
              *&v17 = v17;
              [v7 _setDownloadProgress:v17];
              [v26 addObject:v7];

              goto LABEL_20;
            }
          }

          [v5 percentComplete];
          if (v17 < 0.99)
          {
            v17 = 0.99;
          }

          goto LABEL_19;
        }

LABEL_20:

        ++v4;
      }

      while (v2 != v4);
      v22 = [obj countByEnumeratingWithState:&v28 objects:v41 count:16];
      v2 = v22;
    }

    while (v22);
  }

  [*(v27 + 40) _notifyObserversOfStartedToneStoreDownloads:0 progressedToneStoreDownload:v26 finishedToneStoreDownloads:0];
  v23 = *MEMORY[0x1E69E9840];
}

- (void)purchaseManager:(id)manager didFinishPurchasesWithResponses:(id)responses
{
  v93 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  responsesCopy = responses;
  v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v55 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = responsesCopy;
  v53 = [obj countByEnumeratingWithState:&v79 objects:v89 count:16];
  if (v53)
  {
    v52 = *v80;
    do
    {
      v6 = 0;
      do
      {
        if (*v80 != v52)
        {
          v7 = v6;
          objc_enumerationMutation(obj);
          v6 = v7;
        }

        v54 = v6;
        v8 = *(*(&v79 + 1) + 8 * v6);
        v9 = TLLogToneManagement();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          uRLResponse = [v8 URLResponse];
          storeCorrelationID = [uRLResponse storeCorrelationID];
          *buf = 138543362;
          *&buf[4] = storeCorrelationID;
          _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "Did finish store purchase with correlation key: %{public}@.", buf, 0xCu);
        }

        v64 = +[TLToneManager sharedToneManager];
        _installedTones = [v64 _installedTones];
        downloadsMetadata = [v8 downloadsMetadata];
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v58 = downloadsMetadata;
        v60 = [v58 countByEnumeratingWithState:&v75 objects:v88 count:16];
        if (v60)
        {
          v59 = *v76;
          while (2)
          {
            v13 = 0;
            do
            {
              if (*v76 != v59)
              {
                v14 = v13;
                objc_enumerationMutation(v58);
                v13 = v14;
              }

              v62 = v13;
              v15 = *(*(&v75 + 1) + 8 * v13);
              kind = [v15 kind];
              v16 = getSSDownloadKindRingtone();
              if ([kind isEqualToString:v16])
              {
              }

              else
              {
                v17 = getSSDownloadKindTone();
                v18 = [kind isEqualToString:v17];

                if ((v18 & 1) == 0)
                {
                  v19 = getSSDownloadKindRingtone();

                  v20 = [v15 copy];
                  [v20 setKind:v19];
                  kind = v19;
                  v15 = v20;
                }
              }

              v21 = objc_alloc_init(TLToneStoreDownload);
              title = [v15 title];
              [(TLToneStoreDownload *)v21 _setName:title];

              collectionName = [v15 collectionName];
              [(TLToneStoreDownload *)v21 _setAlbumTitle:collectionName];

              artistName = [v15 artistName];
              [(TLToneStoreDownload *)v21 _setArtistName:artistName];

              durationInMilliseconds = [v15 durationInMilliseconds];
              v26 = objc_opt_respondsToSelector();
              unsignedIntegerValue = 0.0;
              if (v26)
              {
                unsignedIntegerValue = [durationInMilliseconds unsignedIntegerValue];
              }

              [(TLToneStoreDownload *)v21 _setDuration:unsignedIntegerValue / 1000.0, managerCopy];

              genre = [v15 genre];
              [(TLToneStoreDownload *)v21 _setGenreName:genre];

              -[TLToneStoreDownload _setStoreItemIdentifier:](v21, "_setStoreItemIdentifier:", [v15 itemIdentifier]);
              v29 = getSSDownloadKindTone();
              -[TLToneStoreDownload _setRingtone:](v21, "_setRingtone:", [kind isEqualToString:v29] ^ 1);

              v30 = [v61 indexOfObject:v21];
              if (v30 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v31 = [[TLITunesTone alloc] initWithToneStoreDownload:v21];
                v73 = 0u;
                v74 = 0u;
                v71 = 0u;
                v72 = 0u;
                v32 = _installedTones;
                v33 = [v32 countByEnumeratingWithState:&v71 objects:v87 count:16];
                if (v33)
                {
                  v9 = *v72;
                  while (2)
                  {
                    for (i = 0; i != v33; ++i)
                    {
                      if (*v72 != v9)
                      {
                        objc_enumerationMutation(v32);
                      }

                      v35 = *(*(&v71 + 1) + 8 * i);
                      if ([(TLITunesTone *)v31 isDuplicateOfTone:v35])
                      {
                        identifier = [v35 identifier];
                        v37 = [v64 toneWithIdentifierIsValid:identifier];

                        if (v37)
                        {
                          v44 = TLLogToneManagement();
                          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138543618;
                            *&buf[4] = v15;
                            *&buf[12] = 2114;
                            *&buf[14] = v35;
                            _os_log_impl(&dword_1D9356000, v44, OS_LOG_TYPE_DEFAULT, "Store download metadata %{public}@ of tone was found to be a duplicate of the following existing tone: %{public}@. This tone will not be re-downloaded.", buf, 0x16u);
                          }

                          goto LABEL_42;
                        }
                      }
                    }

                    v33 = [v32 countByEnumeratingWithState:&v71 objects:v87 count:16];
                    if (v33)
                    {
                      continue;
                    }

                    break;
                  }
                }

                [v61 addObject:v21];
                v83 = 0;
                v84 = &v83;
                v85 = 0x2050000000;
                v38 = getSSDownloadClass_softClass;
                v86 = getSSDownloadClass_softClass;
                if (!getSSDownloadClass_softClass)
                {
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __getSSDownloadClass_block_invoke;
                  v91 = &unk_1E8578D30;
                  v92 = &v83;
                  __getSSDownloadClass_block_invoke(buf);
                  v38 = v84[3];
                }

                v39 = v38;
                _Block_object_dispose(&v83, 8);
                v31 = [[v38 alloc] initWithDownloadMetadata:v15];
                v83 = 0;
                v84 = &v83;
                v85 = 0x2020000000;
                v40 = getSSDownloadPropertyIsStoreDownloadSymbolLoc_ptr;
                v86 = getSSDownloadPropertyIsStoreDownloadSymbolLoc_ptr;
                if (!getSSDownloadPropertyIsStoreDownloadSymbolLoc_ptr)
                {
                  *buf = MEMORY[0x1E69E9820];
                  *&buf[8] = 3221225472;
                  *&buf[16] = __getSSDownloadPropertyIsStoreDownloadSymbolLoc_block_invoke;
                  v91 = &unk_1E8578D30;
                  v92 = &v83;
                  v41 = StoreServicesLibrary();
                  v42 = dlsym(v41, "SSDownloadPropertyIsStoreDownload");
                  *(v92[1] + 24) = v42;
                  getSSDownloadPropertyIsStoreDownloadSymbolLoc_ptr = *(v92[1] + 24);
                  v40 = v84[3];
                }

                _Block_object_dispose(&v83, 8);
                if (!v40)
                {
                  v46 = __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
                  __break(1u);
                  goto LABEL_51;
                }

                [(TLITunesTone *)v31 setValue:MEMORY[0x1E695E118] forProperty:*v40];
                [v56 addObject:v31];
                v32 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[TLITunesTone persistentIdentifier](v31, "persistentIdentifier")}];
                [v55 setObject:v21 forKey:v32];
                v43 = TLLogToneManagement();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543874;
                  *&buf[4] = v21;
                  *&buf[12] = 2114;
                  *&buf[14] = v31;
                  *&buf[22] = 2114;
                  v91 = v15;
                  _os_log_impl(&dword_1D9356000, v43, OS_LOG_TYPE_DEFAULT, "Issuing store download for %{public}@: %{public}@ (based on %{public}@).", buf, 0x20u);
                }
              }

              else
              {
                v31 = [v61 objectAtIndex:v30];
                v32 = TLLogToneManagement();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  *&buf[4] = v15;
                  *&buf[12] = 2114;
                  *&buf[14] = v31;
                  _os_log_impl(&dword_1D9356000, v32, OS_LOG_TYPE_DEFAULT, "Store download metadata %{public}@ of tone was found to be a duplicate of the following upcoming tone download: %{public}@. This tone will not be re-downloaded.", buf, 0x16u);
                }
              }

LABEL_42:

              v13 = v62 + 1;
            }

            while (v62 + 1 != v60);
            v60 = [v58 countByEnumeratingWithState:&v75 objects:v88 count:16];
            if (v60)
            {
              continue;
            }

            break;
          }
        }

        v6 = v54 + 1;
      }

      while (v54 + 1 != v53);
      v53 = [obj countByEnumeratingWithState:&v79 objects:v89 count:16];
    }

    while (v53);
  }

  v45 = [v56 count];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __94__TLToneStoreDownloadStoreServicesController_purchaseManager_didFinishPurchasesWithResponses___block_invoke;
  v68[3] = &unk_1E8578FC0;
  v70 = v45;
  v68[4] = self;
  v40 = v55;
  v69 = v40;
  [(TLToneStoreDownloadStoreServicesController *)self _performBlockOnAccessQueue:v68];
  v9 = TLLogToneManagement();
  v46 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v45)
  {
    if (v46)
    {
      *buf = 134217984;
      *&buf[4] = v45;
      _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "Adding %lu tone store downloads.", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    storeDownloadManager = self->_storeDownloadManager;
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __94__TLToneStoreDownloadStoreServicesController_purchaseManager_didFinishPurchasesWithResponses___block_invoke_44;
    v65[3] = &unk_1E8578FE8;
    objc_copyWeak(&v67, buf);
    v66 = v61;
    [(SSDownloadManager *)storeDownloadManager addDownloads:v56 completionBlock:v65];

    objc_destroyWeak(&v67);
    objc_destroyWeak(buf);
  }

  else
  {
LABEL_51:
    if (v46)
    {
      *buf = 0;
      _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "No previously purchased tone needs to be redownloaded. We're done here.", buf, 2u);
    }
  }

  v48 = *MEMORY[0x1E69E9840];
}

uint64_t __94__TLToneStoreDownloadStoreServicesController_purchaseManager_didFinishPurchasesWithResponses___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return [*(*(a1 + 32) + 40) addEntriesFromDictionary:*(a1 + 40)];
  }

  else
  {
    return [*(a1 + 32) _notifyObserversOfCheckingForDownloadsFinishedWithoutNeedToIssueAnyDownload];
  }
}

void __94__TLToneStoreDownloadStoreServicesController_purchaseManager_didFinishPurchasesWithResponses___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = TLLogToneManagement();
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __94__TLToneStoreDownloadStoreServicesController_purchaseManager_didFinishPurchasesWithResponses___block_invoke_44_cold_1(v3);
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __94__TLToneStoreDownloadStoreServicesController_purchaseManager_didFinishPurchasesWithResponses___block_invoke_45;
      v10[3] = &unk_1E85789A0;
      v10[4] = WeakRetained;
      [WeakRetained _performBlockOnAccessQueue:v10];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D9356000, v6, OS_LOG_TYPE_DEFAULT, "Successfully added store downloads for tones.", buf, 2u);
      }

      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __94__TLToneStoreDownloadStoreServicesController_purchaseManager_didFinishPurchasesWithResponses___block_invoke_46;
      v7[3] = &unk_1E8578900;
      v7[4] = WeakRetained;
      v8 = *(a1 + 32);
      [WeakRetained _performBlockOnAccessQueue:v7];
    }
  }
}

- (void)_handleToneManagerContentsDidChangeNotification:(id)notification
{
  v4 = +[TLToneManager sharedToneManager];
  _installedTones = [v4 _installedTones];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__TLToneStoreDownloadStoreServicesController__handleToneManagerContentsDidChangeNotification___block_invoke;
  v8[3] = &unk_1E8579038;
  v8[4] = self;
  v9 = _installedTones;
  v10 = v4;
  v6 = v4;
  v7 = _installedTones;
  [(TLToneStoreDownloadStoreServicesController *)self _performBlockOnAccessQueue:v8];
}

void __94__TLToneStoreDownloadStoreServicesController__handleToneManagerContentsDidChangeNotification___block_invoke(id *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = *(a1[4] + 5);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __94__TLToneStoreDownloadStoreServicesController__handleToneManagerContentsDidChangeNotification___block_invoke_2;
  v10 = &unk_1E8579010;
  v11 = a1[5];
  v12 = a1[6];
  v13 = v2;
  v14 = v3;
  v5 = v3;
  v6 = v2;
  [v4 enumerateKeysAndObjectsUsingBlock:&v7];
  [*(a1[4] + 5) removeObjectsForKeys:{v5, v7, v8, v9, v10}];
  [a1[4] _notifyObserversOfStartedToneStoreDownloads:0 progressedToneStoreDownload:0 finishedToneStoreDownloads:v6];
}

void __94__TLToneStoreDownloadStoreServicesController__handleToneManagerContentsDidChangeNotification___block_invoke_2(id *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [[TLITunesTone alloc] initWithToneStoreDownload:v6];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = a1[4];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [v13 identifier];
        if ([v13 isDuplicateOfTone:v7] && objc_msgSend(a1[5], "toneWithIdentifierIsValid:", v14))
        {
          [v6 _setToneIdentifier:v14];
          [a1[6] addObject:v6];
          [a1[7] addObject:v5];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_performBlockOnAccessQueue:(id)queue
{
  accessQueue = self->_accessQueue;
  if (accessQueue)
  {
    dispatch_sync(accessQueue, queue);
  }
}

- (void)_assertRunningOnAccessQueue
{
  v22 = *MEMORY[0x1E69E9840];
  accessQueue = self->_accessQueue;
  if (accessQueue)
  {
    v4 = *MEMORY[0x1E69E9840];

    dispatch_assert_queue_V2(accessQueue);
  }

  else
  {
    label = dispatch_queue_get_label(0);
    if (strcmp(label, [(NSString *)self->_accessQueueLabel UTF8String]))
    {
      v6 = TLLogGeneral();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);

      if (v7)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Tones/ToneStoreDownloads/Embedded/TLToneStoreDownloadStoreServicesController.m"];
        v9 = TLLogGeneral();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          lastPathComponent = [v8 lastPathComponent];
          callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
          v14 = 136381443;
          v15 = "[TLToneStoreDownloadStoreServicesController _assertRunningOnAccessQueue]";
          v16 = 2113;
          v17 = lastPathComponent;
          v18 = 2049;
          v19 = 455;
          v20 = 2113;
          v21 = callStackSymbols;
          _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v14, 0x2Au);
        }
      }

      else
      {
        v8 = TLLogGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(TLToneStoreDownloadStoreServicesController *)v8 _assertRunningOnAccessQueue];
        }
      }

      v12 = TLLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(TLToneStoreDownloadStoreServicesController *)v12 _assertRunningOnAccessQueue];
      }
    }

    v13 = *MEMORY[0x1E69E9840];
  }
}

void __64__TLToneStoreDownloadStoreServicesController_redownloadAllTones__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_0_0(&dword_1D9356000, v2, v3, "Failed to add store purchase for tones with error: %{public}@.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

void __94__TLToneStoreDownloadStoreServicesController_purchaseManager_didFinishPurchasesWithResponses___block_invoke_44_cold_1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_0_0(&dword_1D9356000, v2, v3, "Failed to add store downloads for tones with error: %{public}@.", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end