@interface BRCSharingAcceptFlowOperation
+ (id)_runningShareIDs;
- (BOOL)_isDirectoryLinkInsideFolderShare;
- (BOOL)_isDocumentLinkInsideFolderShare;
- (BOOL)_isFolderShare;
- (BOOL)_isLinkInsideFolderShare;
- (BOOL)_isOwner;
- (BOOL)_isOwnerOrShareAlreadyAccepted;
- (BOOL)_isiWorkLinkInsideFolderShare;
- (BOOL)_isiWorkShare;
- (BRCSharingAcceptFlowOperation)initWithShareMetadata:(id)metadata client:(id)client sessionContext:(id)context userNotifier:(id)notifier userActionsNavigator:(id)navigator;
- (id)_stepNameAtIndex:(unint64_t)index withPrefix:(id)prefix;
- (id)createActivity;
- (id)subclassableDescriptionWithContext:(id)context;
- (void)_activateSharedZoneIfNeeded;
- (void)_checkIfShouldWaitUntilDownloadCompletion_step;
- (void)_completeWithError:(id)error;
- (void)_createServerFaultIfPossibleWithCompletion:(id)completion;
- (void)_createSideFaultOnDisk_step;
- (void)_fetchOpenInfoOnFileObjectID:(id)d completion:(id)completion;
- (void)_finishShareAccept_step;
- (void)_isAccountRestricted_step;
- (void)_isAppInstalled_step;
- (void)_isFolderSharingSupported_step;
- (void)_isOwner;
- (void)_isOwnerOrShareAlreadyAccepted;
- (void)_isUserSignedInToiCloudDrive_step;
- (void)_isiWorkShare;
- (void)_jumpToSelector:(SEL)selector;
- (void)_jumpToSelectorInQueue:(SEL)queue;
- (void)_locateSharedItemOnDisk_step;
- (void)_locateSharedItemOnOwner_step;
- (void)_locateSharedItemOnRecipient_step;
- (void)_openSharedItemIfStillNeeded_step;
- (void)_openSharedSideFaultFile_step;
- (void)_openiWorkAppPreemptively_step;
- (void)_parseShareMetadata_step;
- (void)_performNextStep;
- (void)_performNextStepInQueue;
- (void)_prepareToDownloadSharedDocument_step;
- (void)_setSpotlightAttribute_step;
- (void)_showSharingJoinDialog_step;
- (void)_startShareAccept_step;
- (void)_waitForSharedItemToBeOnDiskOnOwner_step;
- (void)_waitForSharedItemToBeOnDiskOnRecipient_step;
- (void)_waitForSharedItemToSyncDownOnOwner_step;
- (void)_waitForSharedItemToSyncDownOnRecipient_step;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
- (void)openResourceOperation:(id)operation didFailWithError:(id)error;
- (void)openResourceOperationDidComplete:(id)complete;
@end

@implementation BRCSharingAcceptFlowOperation

- (BRCSharingAcceptFlowOperation)initWithShareMetadata:(id)metadata client:(id)client sessionContext:(id)context userNotifier:(id)notifier userActionsNavigator:(id)navigator
{
  metadataCopy = metadata;
  clientCopy = client;
  obj = notifier;
  notifierCopy = notifier;
  navigatorCopy = navigator;
  contextCopy = context;
  syncContextProvider = [contextCopy syncContextProvider];
  sharedMetadataSyncContext = [syncContextProvider sharedMetadataSyncContext];
  v41.receiver = self;
  v41.super_class = BRCSharingAcceptFlowOperation;
  v18 = [(_BRCOperation *)&v41 initWithName:@"sharing/accept-flow" syncContext:sharedMetadataSyncContext sessionContext:contextCopy];

  if (v18)
  {
    share = [metadataCopy share];
    v20 = [share URL];
    shareURL = v18->_shareURL;
    v18->_shareURL = v20;

    ownerIdentity = [metadataCopy ownerIdentity];
    lookupInfo = [ownerIdentity lookupInfo];
    emailAddress = [lookupInfo emailAddress];
    v25 = *MEMORY[0x277CFAB68];
    v18->_isShareOwnerDSAtApple = [emailAddress hasSuffix:*MEMORY[0x277CFAB68]];

    callingParticipant = [metadataCopy callingParticipant];
    userIdentity = [callingParticipant userIdentity];
    lookupInfo2 = [userIdentity lookupInfo];
    [lookupInfo2 emailAddress];
    navigatorCopy2 = navigator;
    v30 = v29 = clientCopy;
    v18->_currentUserIsDSAtApple = [v30 hasSuffix:v25];

    objc_storeStrong(&v18->_shareMetadata, metadata);
    [(_BRCOperation *)v18 setNonDiscretionary:1];
    [(BRCSharingAcceptFlowOperation *)v18 setQueuePriority:8];
    objc_storeStrong(&v18->_xpcClient, client);
    v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v32 = dispatch_queue_create("accept-flow-next-step", v31);

    queue = v18->_queue;
    v18->_queue = v32;
    clientCopy = v29;

    br_sharingMisc = [MEMORY[0x277CBC4F8] br_sharingMisc];
    [(_BRCOperation *)v18 setGroup:br_sharingMisc];

    v35 = [BRCUserDefaults defaultsForMangledID:0];
    v18->_allowsDirectoryFaults = [v35 forceDeltaInitialSync] ^ 1;

    objc_storeStrong(&v18->_userNotification, obj);
    objc_storeStrong(&v18->_userActionsNavigator, navigatorCopy2);
    v18->_hadProcessedCompletionError = 0;
  }

  return v18;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sharing/accept-flow", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (id)_stepNameAtIndex:(unint64_t)index withPrefix:(id)prefix
{
  prefixCopy = prefix;
  if ([(NSArray *)self->_acceptationFlow count])
  {
    if ([(NSArray *)self->_acceptationFlow count]<= index)
    {
      v10 = @"complete";
    }

    else
    {
      v7 = [(NSArray *)self->_acceptationFlow objectAtIndexedSubscript:index];
      v8 = [v7 stringByReplacingOccurrencesOfString:@"_" withString:&stru_2837504F0];

      if (prefixCopy)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", prefixCopy, v8];
      }

      else
      {
        v9 = v8;
      }

      v10 = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)subclassableDescriptionWithContext:(id)context
{
  stepIndex = self->_stepIndex;
  v4 = stepIndex != 0;
  v5 = stepIndex - 1;
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return [(BRCSharingAcceptFlowOperation *)self _stepNameAtIndex:v6 withPrefix:@"step:"];
}

- (void)_completeWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    [BRCSharingAcceptFlowOperation _completeWithError:];
  }

  self->_hadProcessedCompletionError = 1;
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke;
  v77[3] = &unk_278500160;
  v77[4] = self;
  v5 = MEMORY[0x22AA4A310](v77);
  domain = [errorCopy domain];
  v7 = [domain isEqualToString:*MEMORY[0x277CFABD0]];

  if (!v7)
  {
    domain2 = [errorCopy domain];
    v25 = [domain2 isEqualToString:*MEMORY[0x277CBBF50]];

    if (v25)
    {
      if ([errorCopy brc_containsCloudKitErrorCode:3])
      {
        userNotification = self->_userNotification;
        shareMetadata = self->_shareMetadata;
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_48;
        v62[3] = &unk_2784FF478;
        v62[4] = self;
        v63 = errorCopy;
        [(BRCUserNotifier *)userNotification showErrorDeviceOfflineForShareMetadata:shareMetadata reply:v62];
        v28 = v63;
      }

      else if ([errorCopy brc_containsCloudKitErrorCode:4])
      {
        v36 = self->_userNotification;
        v37 = self->_shareMetadata;
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_2_49;
        v60[3] = &unk_2784FF478;
        v60[4] = self;
        v61 = errorCopy;
        [(BRCUserNotifier *)v36 showErrorServerNotReachableForShareMetadata:v37 reply:v60];
        v28 = v61;
      }

      else if ([errorCopy brc_containsCloudKitErrorCode:29])
      {
        v42 = self->_userNotification;
        v43 = self->_shareMetadata;
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_3;
        v57[3] = &unk_278506378;
        v59 = v5;
        v57[4] = self;
        v58 = errorCopy;
        [(BRCUserNotifier *)v42 showErrorParticipantLimitReachedForShareMetadata:v43 reply:v57];

        v28 = v59;
      }

      else
      {
        if (([errorCopy brc_containsCloudKitErrorCode:32] & 1) == 0 && (objc_msgSend(errorCopy, "brc_containsCloudKitErrorCode:", 11) & 1) == 0 && !objc_msgSend(errorCopy, "brc_containsCloudKitErrorCode:", 10))
        {
          goto LABEL_46;
        }

        v46 = self->_userNotification;
        v47 = self->_shareMetadata;
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_4;
        v55[3] = &unk_2784FF478;
        v55[4] = self;
        v56 = errorCopy;
        [(BRCUserNotifier *)v46 showErrorItemUnavailableOrAccessRestrictedForShareMetadata:v47 reply:v55];
        v28 = v56;
      }
    }

    else
    {
      domain3 = [errorCopy domain];
      v30 = [domain3 isEqualToString:*MEMORY[0x277CCA5B8]];

      if (!v30)
      {
        goto LABEL_46;
      }

      code = [errorCopy code];
      if (code == 35)
      {
        v44 = self->_userNotification;
        v45 = self->_shareMetadata;
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_6;
        v50[3] = &unk_2784FF478;
        v50[4] = self;
        v51 = errorCopy;
        [(BRCUserNotifier *)v44 showErrorReasonUnknownForShareMetadata:v45 reply:v50];
        v28 = v51;
      }

      else
      {
        if (code != 1)
        {
          goto LABEL_46;
        }

        v32 = self->_userNotification;
        v33 = self->_shareMetadata;
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_5;
        v52[3] = &unk_2785063A0;
        v54 = v5;
        v52[4] = self;
        v53 = errorCopy;
        [(BRCUserNotifier *)v32 showErrorNativeAppDisabledByProfileForShareMetadata:v33 reply:v52];

        v28 = v54;
      }
    }

    goto LABEL_45;
  }

  code2 = [errorCopy code];
  v9 = @"appMissing";
  if (code2 <= 32)
  {
    if (code2 > 22)
    {
      if (code2 == 23)
      {
        goto LABEL_48;
      }

      if (code2 != 29)
      {
        goto LABEL_46;
      }

      v38 = self->_userNotification;
      v39 = self->_shareMetadata;
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_2;
      v70[3] = &unk_278506350;
      v70[4] = self;
      v72 = v5;
      v71 = errorCopy;
      [(BRCUserNotifier *)v38 showErrorInstallNativeAppForShareMetadata:v39 reply:v70];

      v28 = v72;
    }

    else
    {
      if (code2 == 1)
      {
        goto LABEL_47;
      }

      if (code2 != 2)
      {
        goto LABEL_46;
      }

      v34 = self->_userNotification;
      v35 = self->_shareMetadata;
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_46;
      v67[3] = &unk_278506350;
      v67[4] = self;
      v69 = v5;
      v68 = errorCopy;
      [(BRCUserNotifier *)v34 showErrorSignInToiCloudForShareMetadata:v35 reply:v67];

      v28 = v69;
    }

LABEL_45:

    goto LABEL_49;
  }

  if (code2 <= 129)
  {
    if (code2 == 33)
    {
      goto LABEL_48;
    }

    if (code2 != 35)
    {
      goto LABEL_46;
    }

    v40 = self->_userNotification;
    v41 = self->_shareMetadata;
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_47;
    v64[3] = &unk_278506350;
    v64[4] = self;
    v66 = v5;
    v65 = errorCopy;
    [(BRCUserNotifier *)v40 showErrorTurnOniCloudDriveForShareMetadata:v41 reply:v64];

    v28 = v66;
    goto LABEL_45;
  }

  if (code2 == 158)
  {
LABEL_48:
    [(_BRCOperation *)self completedWithResult:0 error:errorCopy];
    goto LABEL_49;
  }

  if (code2 == 138)
  {
LABEL_47:
    (v5)[2](v5, v9);
    goto LABEL_48;
  }

  if (code2 != 130)
  {
LABEL_46:
    v9 = @"other";
    goto LABEL_47;
  }

  v10 = errorCopy;
  underlyingErrors = [v10 underlyingErrors];
  v12 = [underlyingErrors count];

  if (v12 != 1)
  {
    [BRCSharingAcceptFlowOperation _completeWithError:];
  }

  underlyingErrors2 = [v10 underlyingErrors];
  v14 = [underlyingErrors2 count];

  v15 = v10;
  if (v14 == 1)
  {
    underlyingErrors3 = [v10 underlyingErrors];
    v15 = [underlyingErrors3 objectAtIndexedSubscript:0];
  }

  if (!self->_shareMetadata)
  {
    [BRCSharingAcceptFlowOperation _completeWithError:];
  }

  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, 0x90u))
  {
    [BRCSharingAcceptFlowOperation _completeWithError:];
  }

  v19 = +[BRCSystemResourcesManager manager];
  isNetworkReachable = [v19 isNetworkReachable];

  if (isNetworkReachable)
  {
    v21 = self->_userNotification;
    v22 = self->_shareMetadata;
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_43;
    v73[3] = &unk_2784FF4A0;
    v74 = v15;
    v75 = v10;
    selfCopy = self;
    [(BRCUserNotifier *)v21 showErrorReasonUnknownForShareMetadata:v22 reply:v73];

    v23 = v74;
  }

  else
  {
    v48 = brc_bread_crumbs();
    v49 = brc_default_log();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      [BRCSharingAcceptFlowOperation _completeWithError:];
    }

    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CBBF50] code:3 userInfo:0];
    [(_BRCOperation *)self completedWithResult:0 error:v23];
  }

LABEL_49:
}

void __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_cold_1();
  }

  [*(*(a1 + 32) + 512) openShareURLInWebBrowser:*(*(a1 + 32) + 536) withReason:v3];
}

uint64_t __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_43(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  if (v1 == v2)
  {
    return [v3 completedWithResult:0 error:?];
  }

  else
  {
    return [v3 _completeWithError:v1];
  }
}

void __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_2(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = a4;
  if (a2 && a3)
  {
    __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_2_cold_1();
    goto LABEL_4;
  }

  if (a2)
  {
LABEL_4:
    v8 = *(a1 + 32);
    if (!*(v8 + 536))
    {
      __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_2_cold_2();
      v8 = v11;
    }

    v9 = *(v8 + 512);
    if (*(v8 + 680))
    {
      [*(v8 + 512) openAppStoreForBundleID:?];
    }

    else
    {
      v10 = [*(v8 + 536) brc_applicationBundleID];
      [v9 openAppStoreForBundleID:v10];
    }

    goto LABEL_12;
  }

  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

LABEL_12:
  [*(a1 + 32) completedWithResult:0 error:*(a1 + 40)];
}

void __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_46(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = a4;
  if (a2 && a3)
  {
    __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_46_cold_1();
    goto LABEL_4;
  }

  if (a2)
  {
LABEL_4:
    [*(*(a1 + 32) + 512) openiCloudSettings];
    goto LABEL_8;
  }

  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

LABEL_8:
  [*(a1 + 32) completedWithResult:0 error:*(a1 + 40)];
}

void __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_47(uint64_t a1, int a2, int a3, void *a4)
{
  v7 = a4;
  if (a2 && a3)
  {
    __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_47_cold_1();
    goto LABEL_4;
  }

  if (a2)
  {
LABEL_4:
    [*(*(a1 + 32) + 512) openiCloudSettings];
    goto LABEL_8;
  }

  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

LABEL_8:
  [*(a1 + 32) completedWithResult:0 error:*(a1 + 40)];
}

uint64_t __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_3(void *a1, int a2)
{
  if (a2)
  {
    v3 = a1[6];
    (*(a1[6] + 16))();
  }

  v4 = a1[4];
  v5 = a1[5];

  return [v4 completedWithResult:0 error:v5];
}

uint64_t __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_5(void *a1, int a2)
{
  if (a2)
  {
    v3 = a1[6];
    (*(a1[6] + 16))();
  }

  v4 = a1[4];
  v5 = a1[5];

  return [v4 completedWithResult:0 error:v5];
}

- (void)finishWithResult:(id)result error:(id)error
{
  v39 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  if ([(BRCSharingAcceptFlowOperation *)self _isFolderShare])
  {
    v8 = @"folderShare-";
  }

  else if ([(BRCSharingAcceptFlowOperation *)self _isiWorkShare])
  {
    v8 = @"iWorkShare-";
  }

  else
  {
    v8 = @"documentShare-";
  }

  v9 = [(BRCSharingAcceptFlowOperation *)self _stepNameAtIndex:self->_stepIndex withPrefix:0];
  v10 = [(__CFString *)v8 stringByAppendingString:v9];

  if (self->_accessedSecurityScope)
  {
    [(NSURL *)self->_liveFileURL stopAccessingSecurityScopedResource];
    self->_accessedSecurityScope = 0;
  }

  if (!errorCopy)
  {
    workloop = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      shareURL = self->_shareURL;
      path = [(NSURL *)self->_liveFileURL path];
      fp_obfuscatedPath = [path fp_obfuscatedPath];
      *buf = 138412802;
      v34 = shareURL;
      v35 = 2112;
      v36 = fp_obfuscatedPath;
      v37 = 2112;
      v38 = workloop;
      _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEFAULT, "[NOTICE] share acceptation %@ succeed and document is now live on disk at %@%@", buf, 0x20u);
    }

    goto LABEL_21;
  }

  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_shareURL;
    *buf = 138412802;
    v34 = v13;
    v35 = 2112;
    v36 = errorCopy;
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEFAULT, "[NOTICE] share acceptation %@ failed with error %@%@", buf, 0x20u);
  }

  if (([(BRCSharingAcceptFlowOperation *)self isCancelled]& 1) == 0 && !self->_hadProcessedCompletionError)
  {
    [BRCSharingAcceptFlowOperation finishWithResult:error:];
  }

  [(BRCSharingAcceptFlowOperation *)self _activateSharedZoneIfNeeded];
  sessionContext = self->super._sessionContext;
  if (sessionContext && ([(BRCSessionContext *)sessionContext isCancelled]& 1) == 0)
  {
    clientReadWriteDatabaseFacade = [(BRCSessionContext *)self->super._sessionContext clientReadWriteDatabaseFacade];
    workloop = [clientReadWriteDatabaseFacade workloop];

    if (workloop)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__BRCSharingAcceptFlowOperation_finishWithResult_error___block_invoke;
      block[3] = &unk_2784FF450;
      block[4] = self;
      dispatch_async(workloop, block);
    }

    else
    {
      v29 = brc_bread_crumbs();
      v30 = brc_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        [BRCSharingAcceptFlowOperation finishWithResult:error:];
      }
    }

LABEL_21:
  }

  v21 = +[BRCEventsAnalytics sharedAnalytics];
  mangledID = [(BRCClientZone *)self->_clientZone mangledID];
  enhancedDrivePrivacyEnabled = [(BRCClientZone *)self->_clientZone enhancedDrivePrivacyEnabled];
  itemIDString = [(BRCItemID *)self->_linkItemID itemIDString];
  analyticsReporter = [(BRCSessionContext *)self->super._sessionContext analyticsReporter];
  [v21 registerAndSendNewShareAcceptationWithLastStep:v10 zoneMangledID:mangledID enhancedDrivePrivacyEnabled:enhancedDrivePrivacyEnabled itemIDString:itemIDString error:errorCopy analyticsReporter:analyticsReporter];

  [(BRCAppLibrary *)self->_appLibrary removeForegroundClient:self];
  if (![(BRCSharingAcceptFlowOperation *)self _isOwner])
  {
    serverZone = [(BRCClientZone *)self->_clientZone serverZone];
    [serverZone removeForegroundClient:self];
  }

  [(BRCUserNotifier *)self->_userNotification close];
  if (self->_shareID)
  {
    v27 = +[BRCSharingAcceptFlowOperation _runningShareIDs];
    objc_sync_enter(v27);
    [v27 removeObject:self->_shareID];
    objc_sync_exit(v27);
  }

  v31.receiver = self;
  v31.super_class = BRCSharingAcceptFlowOperation;
  [(_BRCOperation *)&v31 finishWithResult:resultCopy error:errorCopy];

  v28 = *MEMORY[0x277D85DE8];
}

void __56__BRCSharingAcceptFlowOperation_finishWithResult_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 568))
  {
    v3 = [*(v2 + 600) itemByItemID:?];
    v4 = v3;
    if (v3 && [v3 isShareAcceptationFault])
    {
      v5 = brc_bread_crumbs();
      v6 = brc_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __56__BRCSharingAcceptFlowOperation_finishWithResult_error___block_invoke_cold_1();
      }

      v7 = [v4 asShareAcceptationFault];
      [v7 deleteShareAcceptationFault];
    }

    v2 = *(a1 + 32);
  }

  if ([v2 _isLinkInsideFolderShare])
  {
    v8 = *(a1 + 32);
    if (*(v8 + 576))
    {
      v9 = [*(v8 + 600) itemByItemID:?];
      v10 = v9;
      if (v9 && [v9 isShareAcceptationFault])
      {
        v11 = brc_bread_crumbs();
        v12 = brc_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          __56__BRCSharingAcceptFlowOperation_finishWithResult_error___block_invoke_cold_1();
        }

        v13 = [v10 asShareAcceptationFault];
        [v13 deleteShareAcceptationFault];
      }
    }
  }
}

- (void)main
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    shareURL = self->_shareURL;
    *buf = 138412546;
    v41 = shareURL;
    v42 = 2112;
    v43 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] User clicked on share link %@%@", buf, 0x16u);
  }

  if (self->_skipAcceptDialogs)
  {
    userActionsNavigator = self->_userActionsNavigator;
    self->_userActionsNavigator = 0;

    [(BRCUserNotifier *)self->_userNotification skipDialogs];
  }

  if ([(BRCSharingAcceptFlowOperation *)self _isFolderShare])
  {
    v26 = NSStringFromSelector(sel__isAppInstalled_step);
    v39[0] = v26;
    v24 = NSStringFromSelector(sel__isFolderSharingSupported_step);
    v39[1] = v24;
    v36 = NSStringFromSelector(sel__isUserSignedInToiCloudDrive_step);
    v39[2] = v36;
    v35 = NSStringFromSelector(sel__showSharingJoinDialog_step);
    v39[3] = v35;
    v34 = NSStringFromSelector(sel__parseShareMetadata_step);
    v39[4] = v34;
    v33 = NSStringFromSelector(sel__startShareAccept_step);
    v39[5] = v33;
    v32 = NSStringFromSelector(sel__openiWorkAppPreemptively_step);
    v39[6] = v32;
    v31 = NSStringFromSelector(sel__locateSharedItemOnOwner_step);
    v39[7] = v31;
    v30 = NSStringFromSelector(sel__waitForSharedItemToSyncDownOnOwner_step);
    v39[8] = v30;
    v29 = NSStringFromSelector(sel__waitForSharedItemToBeOnDiskOnOwner_step);
    v39[9] = v29;
    v28 = NSStringFromSelector(sel__createSideFaultOnDisk_step);
    v39[10] = v28;
    v27 = NSStringFromSelector(sel__waitForSharedItemToBeOnDiskOnRecipient_step);
    v39[11] = v27;
    v7 = NSStringFromSelector(sel__checkIfShouldWaitUntilDownloadCompletion_step);
    v39[12] = v7;
    v8 = NSStringFromSelector(sel__openSharedSideFaultFile_step);
    v39[13] = v8;
    v9 = NSStringFromSelector(sel__finishShareAccept_step);
    v39[14] = v9;
    v10 = NSStringFromSelector(sel__locateSharedItemOnRecipient_step);
    v39[15] = v10;
    v11 = NSStringFromSelector(sel__waitForSharedItemToSyncDownOnRecipient_step);
    v39[16] = v11;
    v12 = NSStringFromSelector(sel__locateSharedItemOnDisk_step);
    v39[17] = v12;
    acceptationFlow = NSStringFromSelector(sel__setSpotlightAttribute_step);
    v39[18] = acceptationFlow;
    v14 = NSStringFromSelector(sel__openSharedItemIfStillNeeded_step);
    v39[19] = v14;
    v15 = NSStringFromSelector(sel__endAcceptationFlow_step);
    v39[20] = v15;
    v16 = MEMORY[0x277CBEA60];
    v17 = v39;
  }

  else
  {
    if (![(BRCSharingAcceptFlowOperation *)self _isiWorkShare])
    {
      v21 = NSStringFromSelector(sel__isUserSignedInToiCloudDrive_step);
      v37[0] = v21;
      v20 = NSStringFromSelector(sel__showSharingJoinDialog_step);
      v37[1] = v20;
      v36 = NSStringFromSelector(sel__parseShareMetadata_step);
      v37[2] = v36;
      v35 = NSStringFromSelector(sel__startShareAccept_step);
      v37[3] = v35;
      v34 = NSStringFromSelector(sel__locateSharedItemOnOwner_step);
      v37[4] = v34;
      v33 = NSStringFromSelector(sel__waitForSharedItemToSyncDownOnOwner_step);
      v37[5] = v33;
      v32 = NSStringFromSelector(sel__waitForSharedItemToBeOnDiskOnOwner_step);
      v37[6] = v32;
      v31 = NSStringFromSelector(sel__createSideFaultOnDisk_step);
      v37[7] = v31;
      v30 = NSStringFromSelector(sel__waitForSharedItemToBeOnDiskOnRecipient_step);
      v37[8] = v30;
      v29 = NSStringFromSelector(sel__checkIfShouldWaitUntilDownloadCompletion_step);
      v37[9] = v29;
      v28 = NSStringFromSelector(sel__openSharedSideFaultFile_step);
      v37[10] = v28;
      v27 = NSStringFromSelector(sel__finishShareAccept_step);
      v37[11] = v27;
      v7 = NSStringFromSelector(sel__locateSharedItemOnRecipient_step);
      v37[12] = v7;
      v8 = NSStringFromSelector(sel__waitForSharedItemToSyncDownOnRecipient_step);
      v37[13] = v8;
      v9 = NSStringFromSelector(sel__prepareToDownloadSharedDocument_step);
      v37[14] = v9;
      v10 = NSStringFromSelector(sel__setSpotlightAttribute_step);
      v37[15] = v10;
      v11 = NSStringFromSelector(sel__openSharedItemIfStillNeeded_step);
      v37[16] = v11;
      v12 = NSStringFromSelector(sel__endAcceptationFlow_step);
      v37[17] = v12;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:18];
      acceptationFlow = self->_acceptationFlow;
      self->_acceptationFlow = v22;
      goto LABEL_11;
    }

    v26 = NSStringFromSelector(sel__isAppInstalled_step);
    v38[0] = v26;
    v24 = NSStringFromSelector(sel__isUserSignedInToiCloudDrive_step);
    v38[1] = v24;
    v36 = NSStringFromSelector(sel__isAccountRestricted_step);
    v38[2] = v36;
    v35 = NSStringFromSelector(sel__showSharingJoinDialog_step);
    v38[3] = v35;
    v34 = NSStringFromSelector(sel__parseShareMetadata_step);
    v38[4] = v34;
    v33 = NSStringFromSelector(sel__startShareAccept_step);
    v38[5] = v33;
    v32 = NSStringFromSelector(sel__openiWorkAppPreemptively_step);
    v38[6] = v32;
    v31 = NSStringFromSelector(sel__locateSharedItemOnOwner_step);
    v38[7] = v31;
    v30 = NSStringFromSelector(sel__waitForSharedItemToSyncDownOnOwner_step);
    v38[8] = v30;
    v29 = NSStringFromSelector(sel__waitForSharedItemToBeOnDiskOnOwner_step);
    v38[9] = v29;
    v28 = NSStringFromSelector(sel__createSideFaultOnDisk_step);
    v38[10] = v28;
    v27 = NSStringFromSelector(sel__waitForSharedItemToBeOnDiskOnRecipient_step);
    v38[11] = v27;
    v7 = NSStringFromSelector(sel__checkIfShouldWaitUntilDownloadCompletion_step);
    v38[12] = v7;
    v8 = NSStringFromSelector(sel__openSharedSideFaultFile_step);
    v38[13] = v8;
    v9 = NSStringFromSelector(sel__finishShareAccept_step);
    v38[14] = v9;
    v10 = NSStringFromSelector(sel__locateSharedItemOnRecipient_step);
    v38[15] = v10;
    v11 = NSStringFromSelector(sel__waitForSharedItemToSyncDownOnRecipient_step);
    v38[16] = v11;
    v12 = NSStringFromSelector(sel__prepareToDownloadSharedDocument_step);
    v38[17] = v12;
    acceptationFlow = NSStringFromSelector(sel__setSpotlightAttribute_step);
    v38[18] = acceptationFlow;
    v14 = NSStringFromSelector(sel__openSharedItemIfStillNeeded_step);
    v38[19] = v14;
    v15 = NSStringFromSelector(sel__endAcceptationFlow_step);
    v38[20] = v15;
    v16 = MEMORY[0x277CBEA60];
    v17 = v38;
  }

  v18 = [v16 arrayWithObjects:v17 count:{21, v24}];
  v19 = self->_acceptationFlow;
  self->_acceptationFlow = v18;

  v20 = v25;
  v21 = v26;
LABEL_11:

  self->_stepIndex = 0;
  [(BRCSharingAcceptFlowOperation *)self _performNextStep];
  v23 = *MEMORY[0x277D85DE8];
}

- (void)_performNextStepInQueue
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_performNextStep
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__BRCSharingAcceptFlowOperation__performNextStep__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_jumpToSelectorInQueue:(SEL)queue
{
  dispatch_assert_queue_V2(self->_queue);
  v8 = NSStringFromSelector(queue);
  v5 = [(NSArray *)self->_acceptationFlow indexOfObject:?];
  if (v5 >= [(NSArray *)self->_acceptationFlow count])
  {
    v6 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:84 description:{@"can't fast forward to download step (currentIndex: %lu, downloadIndex: %lu, stepCount: %lu)", self->_stepIndex, v5, -[NSArray count](self->_acceptationFlow, "count")}];
  }

  else
  {
    if (self->_stepIndex < v5)
    {
      self->_stepIndex = v5;
      [(BRCSharingAcceptFlowOperation *)self _performNextStepInQueue];
      goto LABEL_7;
    }

    v6 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:10 description:{@"can't fast forward to download step from current position (currentIndex: %lu)", self->_stepIndex}];
  }

  v7 = v6;
  [(BRCSharingAcceptFlowOperation *)self _completeWithError:v6];

LABEL_7:
}

- (void)_jumpToSelector:(SEL)selector
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__BRCSharingAcceptFlowOperation__jumpToSelector___block_invoke;
  v4[3] = &unk_278500D50;
  v4[4] = self;
  v4[5] = selector;
  dispatch_async(queue, v4);
}

- (BOOL)_isOwner
{
  shareMetadata = self->_shareMetadata;
  if (!shareMetadata)
  {
    [BRCSharingAcceptFlowOperation _isOwner];
    shareMetadata = v4;
  }

  return [(CKShareMetadata *)shareMetadata participantRole]== CKShareParticipantRoleOwner;
}

- (BOOL)_isOwnerOrShareAlreadyAccepted
{
  shareMetadata = self->_shareMetadata;
  if (!shareMetadata)
  {
    [BRCSharingAcceptFlowOperation _isOwnerOrShareAlreadyAccepted];
    shareMetadata = v6;
  }

  participantRole = [(CKShareMetadata *)shareMetadata participantRole];
  if (participantRole != 1)
  {
    LOBYTE(participantRole) = [(CKShareMetadata *)self->_shareMetadata participantStatus]== CKShareParticipantAcceptanceStatusAccepted;
  }

  return participantRole;
}

- (BOOL)_isFolderShare
{
  share = [(CKShareMetadata *)self->_shareMetadata share];
  isFolderShare = [share isFolderShare];

  return isFolderShare;
}

- (BOOL)_isLinkInsideFolderShare
{
  if ([(BRCSharingAcceptFlowOperation *)self _isFolderShare])
  {
    sharedItemHierarchyIDs = [(CKShareMetadata *)self->_shareMetadata sharedItemHierarchyIDs];
    lastObject = [sharedItemHierarchyIDs lastObject];
    zoneAppRetriever = [(BRCSessionContext *)self->super._sessionContext zoneAppRetriever];
    v6 = [lastObject brc_itemIDWithZoneAppRetriever:zoneAppRetriever];

    brc_shareItemID = [(CKRecordID *)self->_shareID brc_shareItemID];
    if (v6)
    {
      v8 = [v6 isEqualToItemID:brc_shareItemID] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)_isDocumentLinkInsideFolderShare
{
  _isLinkInsideFolderShare = [(BRCSharingAcceptFlowOperation *)self _isLinkInsideFolderShare];
  if (_isLinkInsideFolderShare)
  {
    sharedItemHierarchyIDs = [(CKShareMetadata *)self->_shareMetadata sharedItemHierarchyIDs];
    lastObject = [sharedItemHierarchyIDs lastObject];

    recordName = [lastObject recordName];
    v7 = [recordName hasPrefix:@"documentContent/"];

    LOBYTE(_isLinkInsideFolderShare) = v7;
  }

  return _isLinkInsideFolderShare;
}

- (BOOL)_isDirectoryLinkInsideFolderShare
{
  if (![(BRCSharingAcceptFlowOperation *)self _isFolderShare])
  {
    return 0;
  }

  sharedItemHierarchyIDs = [(CKShareMetadata *)self->_shareMetadata sharedItemHierarchyIDs];
  lastObject = [sharedItemHierarchyIDs lastObject];

  zoneAppRetriever = [(BRCSessionContext *)self->super._sessionContext zoneAppRetriever];
  v6 = [lastObject brc_itemIDWithZoneAppRetriever:zoneAppRetriever];

  brc_shareItemID = [(CKRecordID *)self->_shareID brc_shareItemID];
  if ([v6 isEqualToItemID:brc_shareItemID])
  {
    recordName = [lastObject recordName];
    v9 = [recordName hasPrefix:@"directory/"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_isiWorkLinkInsideFolderShare
{
  if (![(BRCSharingAcceptFlowOperation *)self _isDocumentLinkInsideFolderShare])
  {
    return 0;
  }

  brc_applicationContainerID = [(NSURL *)self->_shareURL brc_applicationContainerID];
  v4 = brc_applicationContainerID != 0;

  return v4;
}

- (BOOL)_isiWorkShare
{
  shareMetadata = self->_shareMetadata;
  if (shareMetadata)
  {
    share = [(CKShareMetadata *)shareMetadata share];
    isFolderShare = [share isFolderShare];

    if (isFolderShare)
    {
      return 0;
    }

    share2 = [(CKShareMetadata *)self->_shareMetadata share];
    v7 = [share2 URL];
    brc_applicationName = [v7 brc_applicationName];

    if (!brc_applicationName)
    {
      return 0;
    }

    else
    {
      share3 = [(CKShareMetadata *)self->_shareMetadata share];
      brc_sharedRootExtension = [share3 brc_sharedRootExtension];

      if (brc_sharedRootExtension)
      {
        v11 = MEMORY[0x277CBEB98];
        iWorkShareableExtensions = [MEMORY[0x277CFAEE0] iWorkShareableExtensions];
        v13 = [v11 setWithArray:iWorkShareableExtensions];

        v14 = [v13 containsObject:brc_sharedRootExtension];
      }

      else
      {
        v14 = 1;
      }
    }
  }

  else
  {
    shareURL = self->_shareURL;
    if (!shareURL)
    {
      [BRCSharingAcceptFlowOperation _isiWorkShare];
      shareURL = v18;
    }

    brc_applicationContainerID = [(NSURL *)shareURL brc_applicationContainerID];
    v14 = brc_applicationContainerID != 0;
  }

  return v14;
}

- (void)_fetchOpenInfoOnFileObjectID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  br_sharedProviderManager = [MEMORY[0x277CC64A8] br_sharedProviderManager];
  asString = [dCopy asString];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__BRCSharingAcceptFlowOperation__fetchOpenInfoOnFileObjectID_completion___block_invoke;
  v12[3] = &unk_278501D08;
  v13 = dCopy;
  selfCopy = self;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = dCopy;
  [br_sharedProviderManager getUserVisibleURLForItemIdentifier:asString completionHandler:v12];
}

void __73__BRCSharingAcceptFlowOperation__fetchOpenInfoOnFileObjectID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      v13 = a1[4];
      v14 = 138412802;
      v15 = v13;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_error_impl(&dword_223E7A000, v8, 0x90u, "[ERROR] Can't find the user visible URL for %@ - %@%@", &v14, 0x20u);
    }
  }

  v9 = a1[5];
  v10 = *(v9 + 640);
  *(v9 + 640) = v5;
  v11 = v5;

  (*(a1[6] + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_activateSharedZoneIfNeeded
{
  OUTLINED_FUNCTION_21(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx activating shared zone%@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)openResourceOperationDidComplete:(id)complete
{
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BRCSharingAcceptFlowOperation openResourceOperationDidComplete:];
  }

  [(BRCSharingAcceptFlowOperation *)self _performNextStep];
}

- (void)openResourceOperation:(id)operation didFailWithError:(id)error
{
  errorCopy = error;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, 0x90u))
  {
    [BRCSharingAcceptFlowOperation openResourceOperation:didFailWithError:];
  }

  v8 = [MEMORY[0x277CCA9B8] brc_errorAcceptShareFailedWithUnderlyingError:errorCopy];
  [(BRCSharingAcceptFlowOperation *)self _completeWithError:v8];
}

- (void)_isFolderSharingSupported_step
{
  OUTLINED_FUNCTION_21(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx checking if document sharing is supported%@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_isAppInstalled_step
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Target application seems missing or hidden%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_isUserSignedInToiCloudDrive_step
{
  OUTLINED_FUNCTION_21(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_isAccountRestricted_step
{
  OUTLINED_FUNCTION_21(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx Check if app is profile disabled%@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_showSharingJoinDialog_step
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Skipping share acceptation%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__BRCSharingAcceptFlowOperation__showSharingJoinDialog_step__block_invoke(uint64_t a1, char a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) _completeWithError:v5];
  }

  else
  {
    if (a2)
    {
      v6 = brc_bread_crumbs();
      v7 = brc_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(*(a1 + 32) + 536);
        *buf = 138412546;
        v17 = v8;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[NOTICE] User has accepted to open shared document at %@%@", buf, 0x16u);
      }

      v9 = [*(a1 + 32) callbackQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__BRCSharingAcceptFlowOperation__showSharingJoinDialog_step__block_invoke_141;
      block[3] = &unk_2784FF450;
      block[4] = *(a1 + 32);
      dispatch_async(v9, block);
    }

    else
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(*(a1 + 32) + 536);
        *buf = 138412546;
        v17 = v12;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, "[NOTICE] User has refused to open shared document at %@%@", buf, 0x16u);
      }

      v13 = *(a1 + 32);
      v9 = [MEMORY[0x277CCA9B8] brc_errorUserCancelledDialog];
      [v13 _completeWithError:v9];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_parseShareMetadata_step
{
  OUTLINED_FUNCTION_21(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] alias app library is %@%@");
  v3 = *MEMORY[0x277D85DE8];
}

void __57__BRCSharingAcceptFlowOperation__parseShareMetadata_step__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 552);
  v3 = a2;
  v4 = [v2 share];
  [BRCSharingUtil learnParticipantIdentitiesForShare:v4 forceUpdate:1 dbFacade:v3];
}

- (void)_startShareAccept_step
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: [self _isOwnerOrShareAlreadyAccepted]%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__BRCSharingAcceptFlowOperation__startShareAccept_step__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v20 = *(a1 + 40);
  v21 = *(a1 + 56);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v23 = v20;
    v24 = 2112;
    v25 = v5;
    v26 = 2112;
    v27 = v6;
    v28 = 2112;
    v29 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx received share access completion - metadata %@, operationError - %@%@", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      goto LABEL_5;
    }

    v13 = [v5 share];
    v14 = [v13 recordID];
    v15 = *(WeakRetained + 68);
    *(WeakRetained + 68) = v14;

    if (*(WeakRetained + 68))
    {
      goto LABEL_9;
    }

    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      __55__BRCSharingAcceptFlowOperation__startShareAccept_step__block_invoke_cold_1();
    }

    v6 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: No operation error and no share id"];
    if (v6)
    {
LABEL_5:
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v23 = v6;
        v24 = 2112;
        v25 = v10;
        _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] failed to accept share - %@%@", buf, 0x16u);
      }

      v6 = v6;
      v12 = *(WeakRetained + 88);
      *(WeakRetained + 88) = v6;
    }

    else
    {
LABEL_9:
      v12 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __55__BRCSharingAcceptFlowOperation__startShareAccept_step__block_invoke_cold_2();
      }

      v6 = 0;
    }

    dispatch_group_leave(*(WeakRetained + 82));
  }

  __brc_leave_section(&v20);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_openiWorkAppPreemptively_step
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _linkItemID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __63__BRCSharingAcceptFlowOperation__openiWorkAppPreemptively_step__block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 600) itemByItemID:*(*(a1 + 32) + 568)];
  if ([v3 isLive])
  {
    v2 = 0;
  }

  else
  {
    v2 = [v3 isLost] ^ 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v2;
}

- (void)_locateSharedItemOnOwner_step
{
  if (![(BRCSharingAcceptFlowOperation *)self _isOwner])
  {
    goto LABEL_3;
  }

  serverZone = [(BRCClientZone *)self->_clientZone serverZone];
  state = [serverZone state];
  defaultClientZone = [(BRCAppLibrary *)self->_appLibrary defaultClientZone];
  serverZone2 = [defaultClientZone serverZone];
  v7 = state & [serverZone2 state];

  if ((v7 & 4) == 0)
  {
    v8 = self->_linkItemID;
    v9 = self->_clientZone;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__BRCSharingAcceptFlowOperation__locateSharedItemOnOwner_step__block_invoke;
    v12[3] = &unk_278502620;
    v12[4] = self;
    v13 = v9;
    v14 = v8;
    v10 = v8;
    v11 = v9;
    [(BRCSharingAcceptFlowOperation *)self _createServerFaultIfPossibleWithCompletion:v12];
  }

  else
  {
LABEL_3:

    [(BRCSharingAcceptFlowOperation *)self _performNextStep];
  }
}

void __62__BRCSharingAcceptFlowOperation__locateSharedItemOnOwner_step__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v8 = [MEMORY[0x277CCA9B8] brc_errorAcceptShareFailedWithUnderlyingError:a2];
    [v2 _completeWithError:v8];
  }

  else
  {
    v4 = [v2[32] clientReadWriteDatabaseFacade];
    v5 = [v4 serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__BRCSharingAcceptFlowOperation__locateSharedItemOnOwner_step__block_invoke_2;
    block[3] = &unk_2784FF4A0;
    v10 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    v11 = v6;
    v12 = v7;
    dispatch_async(v5, block);
  }
}

void __62__BRCSharingAcceptFlowOperation__locateSharedItemOnOwner_step__block_invoke_2(id *a1)
{
  v2 = [a1[4] itemByItemID:a1[5]];
  v3 = [v2 st];
  v4 = [v3 parentID];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [a1[4] serverItemByItemID:a1[5]];
    v5 = [v6 parentItemIDOnServer];

    if (!v5)
    {
LABEL_5:
      [a1[6] _performNextStep];
      goto LABEL_10;
    }
  }

  if ([v2 isOnDisk])
  {
    goto LABEL_5;
  }

  v7 = [a1[4] fetchParentChainIfNecessaryWithParentItemID:v5 isUserWaiting:1];
  if (v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__BRCSharingAcceptFlowOperation__locateSharedItemOnOwner_step__block_invoke_3;
    v8[3] = &unk_278502620;
    v8[4] = a1[6];
    v9 = a1[4];
    v10 = a1[5];
    [v7 addFetchParentChainCompletionBlock:v8];
  }

  else
  {
    [a1[6] _performNextStep];
  }

LABEL_10:
}

void __62__BRCSharingAcceptFlowOperation__locateSharedItemOnOwner_step__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 256) clientReadWriteDatabaseFacade];
  v5 = [v4 serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__BRCSharingAcceptFlowOperation__locateSharedItemOnOwner_step__block_invoke_4;
  v7[3] = &unk_2784FFE68;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = v3;
  v11 = *(a1 + 32);
  v6 = v3;
  dispatch_sync(v5, v7);
}

void __62__BRCSharingAcceptFlowOperation__locateSharedItemOnOwner_step__block_invoke_4(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) insertParentChainForItem:*(a1 + 40)];
  if (!v2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      *buf = 138412802;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't insert parent chain for %@ after fetch - %@%@", buf, 0x20u);
    }
  }

  v7 = [*(*(a1 + 56) + 256) clientReadWriteDatabaseFacade];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__BRCSharingAcceptFlowOperation__locateSharedItemOnOwner_step__block_invoke_152;
  v9[3] = &unk_2784FF450;
  v9[4] = *(a1 + 56);
  [v7 scheduleFlushWithCheckpoint:0 whenFlushed:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_waitForSharedItemToSyncDownOnOwner_step
{
  OUTLINED_FUNCTION_21(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx Wait for shared item to sync down%@");
  v3 = *MEMORY[0x277D85DE8];
}

void __73__BRCSharingAcceptFlowOperation__waitForSharedItemToSyncDownOnOwner_step__block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) callbackQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__BRCSharingAcceptFlowOperation__waitForSharedItemToSyncDownOnOwner_step__block_invoke_2;
  v5[3] = &unk_278500EE0;
  v6 = a2;
  v5[4] = *(a1 + 32);
  dispatch_async_with_logs_9(v4, v5);
}

void __73__BRCSharingAcceptFlowOperation__waitForSharedItemToSyncDownOnOwner_step__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 256);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73__BRCSharingAcceptFlowOperation__waitForSharedItemToSyncDownOnOwner_step__block_invoke_154;
    v15[3] = &unk_278500F30;
    v15[4] = v2;
    [v3 performAsyncOnClientReadWriteDatabaseWorkloop:v15];
  }

  else
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __73__BRCSharingAcceptFlowOperation__waitForSharedItemToSyncDownOnOwner_step__block_invoke_2_cold_1(a1);
    }

    v6 = MEMORY[0x277CCA9B8];
    v7 = [*(*(a1 + 32) + 552) share];
    v8 = [v7 brc_sharedRootDisplayName];
    if (v8)
    {
      v9 = [v6 brc_errorItemNotFound:v8];
    }

    else
    {
      v10 = [*(*(a1 + 32) + 568) itemIDString];
      v9 = [v6 brc_errorItemNotFound:v10];
    }

    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CCA9B8] brc_errorAcceptShareFailedWithUnderlyingError:v9];
    [v11 _completeWithError:v12];

    v13 = *(a1 + 32);
    v14 = *(v13 + 584);
    *(v13 + 584) = 0;
  }
}

void __73__BRCSharingAcceptFlowOperation__waitForSharedItemToSyncDownOnOwner_step__block_invoke_154(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 600);
  v5 = *(v3 + 568);
  v6 = a2;
  v7 = [v4 itemByItemID:v5];
  v8 = [v7 fileObjectID];
  v9 = *(a1 + 32);
  v10 = *(v9 + 584);
  *(v9 + 584) = v8;

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__BRCSharingAcceptFlowOperation__waitForSharedItemToSyncDownOnOwner_step__block_invoke_2_155;
  v11[3] = &unk_2784FF450;
  v11[4] = *(a1 + 32);
  [v6 scheduleFlushWithCheckpoint:0 whenFlushed:v11];
}

- (void)_waitForSharedItemToBeOnDiskOnOwner_step
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: self->_linkFileObjectID%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __73__BRCSharingAcceptFlowOperation__waitForSharedItemToBeOnDiskOnOwner_step__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(a1 + 32) + 584);
      *buf = 138412802;
      v19 = v9;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't get user visible file on %@ - %@%@", buf, 0x20u);
    }
  }

  v10 = [*(*(a1 + 32) + 256) clientReadWriteDatabaseFacade];
  v11 = [v10 serialQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__BRCSharingAcceptFlowOperation__waitForSharedItemToBeOnDiskOnOwner_step__block_invoke_156;
  v15[3] = &unk_2784FF478;
  v12 = *(a1 + 32);
  v16 = v5;
  v17 = v12;
  v13 = v5;
  dispatch_async_with_logs_9(v11, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __73__BRCSharingAcceptFlowOperation__waitForSharedItemToBeOnDiskOnOwner_step__block_invoke_156(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(a1 + 40) + 640), v2);
    v3 = [*(a1 + 40) callbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __73__BRCSharingAcceptFlowOperation__waitForSharedItemToBeOnDiskOnOwner_step__block_invoke_2;
    v11[3] = &unk_2784FF450;
    v11[4] = *(a1 + 40);
    dispatch_async_with_logs_9(v3, v11);
  }

  else
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = [*(*(a1 + 40) + 552) share];
    v6 = [v5 brc_sharedRootDisplayName];
    if (v6)
    {
      v10 = [v4 brc_errorItemNotFound:v6];
    }

    else
    {
      v7 = [*(*(a1 + 40) + 568) itemIDString];
      v10 = [v4 brc_errorItemNotFound:v7];
    }

    v8 = *(a1 + 40);
    v9 = [MEMORY[0x277CCA9B8] brc_errorAcceptShareFailedWithUnderlyingError:v10];
    [v8 _completeWithError:v9];
  }
}

- (void)_createSideFaultOnDisk_step
{
  sessionContext = self->super._sessionContext;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke;
  v3[3] = &unk_278500F30;
  v3[4] = self;
  [(BRCSessionContext *)sessionContext performAsyncOnClientReadWriteDatabaseWorkloop:v3];
}

void __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v4 = v6;
  if (!*(v6 + 536))
  {
    __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_cold_1();
    v4 = v18;
  }

  if (!*(v4 + 552))
  {
    __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_cold_2();
  }

  memset(v22, 0, sizeof(v22));
  __brc_create_section(0, "[BRCSharingAcceptFlowOperation _createSideFaultOnDisk_step]_block_invoke", 1327, 0, v22);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_cold_3(v22);
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v9 = dispatch_group_create();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_157;
  v14[3] = &unk_2785061B8;
  v14[4] = *v5;
  v17 = &v18;
  v10 = v9;
  v15 = v10;
  v11 = v3;
  v16 = v11;
  [v11 groupInBatch:v14];
  if ((v19[3] & 1) == 0)
  {
    v12 = [v11 workloop];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_173;
    v13[3] = &unk_2784FF450;
    v13[4] = *v5;
    dispatch_group_notify(v10, v12, v13);
  }

  _Block_object_dispose(&v18, 8);
  __brc_leave_section(v22);
}

void __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_157(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 568);
  v3 = *(*(a1 + 32) + 576);
  v4 = [*(*(a1 + 32) + 600) itemByItemID:v2];
  if ([*(a1 + 32) _isLinkInsideFolderShare])
  {
    v5 = [*(*(a1 + 32) + 600) itemByItemID:v3];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;
  v7 = *(*(a1 + 32) + 664);
  v8 = *(*(a1 + 32) + 672);
  v9 = v8;
  if (v4)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_157_cold_1();
    }

    if ([v4 isLive])
    {
      v12 = [v4 fileObjectID];
      v13 = *(a1 + 32);
      v14 = *(v13 + 584);
      *(v13 + 584) = v12;
    }

    else
    {
      if ([v4 isAlmostDead])
      {
        v20 = brc_bread_crumbs();
        v21 = brc_default_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_157_cold_3();
        }

        v22 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CCA5B8] code:35 description:{@"Share %@ can not be accepted right now.", *(*(a1 + 32) + 536)}];
        [*(a1 + 32) _completeWithError:v22];
      }

      else
      {
        v28 = v9;
        v29 = *(a1 + 32);
        v30 = brc_bread_crumbs();
        v31 = brc_default_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_157_cold_2();
        }

        v22 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: item is in an unknown state: %@:", v4}];
        [v29 _completeWithError:v22];
        v9 = v28;
      }

      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    goto LABEL_57;
  }

  v74 = v8;
  v15 = [*(a1 + 32) _isOwner];
  v16 = *(a1 + 32);
  if (!v15)
  {
    v71 = v6;
    v72 = v7;
    [v16[76] recreateDocumentsFolderIfNeededInDB];
    if ([*(*(a1 + 32) + 552) participantPermission] == 2)
    {
      v23 = 100;
    }

    else
    {
      v23 = 68;
    }

    v70 = v3;
    if ([*(a1 + 32) _isFolderShare])
    {
      if (([*(a1 + 32) _isLinkInsideFolderShare] & 1) == 0)
      {
        v24 = [*(*(a1 + 32) + 600) fetchDirectoryContentsIfNecessary:v3 isUserWaiting:1 rescheduleApplyScheduler:1];
        [v24 beginObservingChangesWithDelegate:0];
      }

      v25 = *(a1 + 40);
      v26 = [*(*(a1 + 32) + 256) serverReadWriteDatabaseFacade];
      v27 = [v26 workloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_167;
      block[3] = &unk_2784FF450;
      block[4] = *(a1 + 32);
      dispatch_group_async(v25, v27, block);

      if (v6)
      {
        v73 = 0;
      }

      else
      {
        v40 = [BRCShareAcceptationDirectoryFault alloc];
        v41 = *(a1 + 32);
        v42 = *(v41 + 608);
        [*(v41 + 600) asSharedClientZone];
        v44 = v43 = v3;
        v73 = [(BRCShareAcceptationDirectoryFault *)v40 initWithFilename:v72 itemID:v43 parentIDWhenSubitem:0 appLibrary:v42 clientZone:v44 sharingOptions:v23];

        v3 = v43;
      }

      v9 = v74;
      if ([*(a1 + 32) _isLinkInsideFolderShare])
      {
        if ([*(a1 + 32) _isDocumentLinkInsideFolderShare])
        {
          v45 = off_2784FDCA0;
        }

        else
        {
          if (([*(a1 + 32) _isDirectoryLinkInsideFolderShare] & 1) == 0)
          {
            v66 = *(a1 + 32);
            v67 = brc_bread_crumbs();
            v68 = brc_default_log();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
            {
              __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_157_cold_4();
            }

            v69 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: item isn't a document or directory"];
            [v66 _completeWithError:v69];

            *(*(*(a1 + 56) + 8) + 24) = 1;
            goto LABEL_56;
          }

          v45 = off_2784FDC98;
        }

        v46 = objc_alloc(*v45);
        v47 = *(a1 + 32);
        v48 = *(v47 + 608);
        v49 = [*(v47 + 600) asSharedClientZone];
        v39 = [v46 initWithFilename:v74 itemID:v2 parentIDWhenSubitem:v70 appLibrary:v48 clientZone:v49 sharingOptions:v23 & 0x60];
      }

      else
      {
        v39 = 0;
      }

      v38 = v73;
    }

    else
    {
      v32 = [BRCShareAcceptationDocumentFault alloc];
      v33 = *(a1 + 32);
      v34 = *(v33 + 608);
      v35 = [*(v33 + 600) asSharedClientZone];
      v36 = v3;
      v37 = v35;
      v38 = [(BRCShareAcceptationDocumentFault *)v32 initWithFilename:v72 itemID:v36 parentIDWhenSubitem:0 appLibrary:v34 clientZone:v35 sharingOptions:v23];

      v39 = 0;
    }

    v73 = v38;
    v50 = [(BRCLocalItem *)v38 parentClientZone];
    v51 = [(BRCLocalItem *)v38 st];
    v52 = [v51 parentID];
    v53 = [(BRCLocalItem *)v38 st];
    v54 = [v53 logicalName];
    v55 = [v50 itemByParentID:v52 andLogicalName:v54];

    if (v55)
    {
      v56 = [v55 itemID];
      v57 = [(BRCLocalItem *)v73 itemID];
      v58 = [v56 isEqualToItemID:v57];

      if ((v58 & 1) == 0)
      {
        if (([v55 isDead] & 1) != 0 || -[BRCLocalItem isOwnedByMe](v73, "isOwnedByMe"))
        {
          [v55 markBouncedToNextAvailableBounceNumber:506];
          [v55 saveToDB];
        }

        else
        {
          [(BRCLocalItem *)v73 markBouncedToNextAvailableBounceNumber:507];
        }
      }
    }

    [(BRCLocalItem *)v73 saveToDBForServerEdit:1 keepAliases:0];
    [v39 saveToDBForServerEdit:1 keepAliases:0];
    v59 = [v39 fileObjectID];
    v60 = v59;
    if (!v59)
    {
      v60 = [(BRCLocalItem *)v73 fileObjectID];
    }

    objc_storeStrong((*(a1 + 32) + 584), v60);
    v6 = v71;
    v9 = v74;
    if (!v59)
    {
    }

    v61 = [*(*(a1 + 32) + 256) clientReadWriteDatabaseFacade];
    [v61 flush];

    v62 = brc_bread_crumbs();
    v63 = brc_default_log();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_157_cold_5();
    }

    if (v39)
    {
      v64 = brc_bread_crumbs();
      v65 = brc_default_log();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_157_cold_6();
      }
    }

    [*(a1 + 48) flushToMakeEditsVisibleToIPCReaders];

    v3 = v70;
LABEL_56:

    v7 = v72;
    goto LABEL_57;
  }

  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_157_cold_7();
  }

  v19 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: document doesn't exists anymore"];
  [v16 _completeWithError:v19];

  *(*(*(a1 + 56) + 8) + 24) = 1;
  v9 = v74;
LABEL_57:
}

void __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_167(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 600) serverZone];
  [v1 clearStateBits:4];
}

- (void)_checkIfShouldWaitUntilDownloadCompletion_step
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] _checkIfShouldWaitUntilDownloadCompletion is not relevant in FPFS.%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_openSharedSideFaultFile_step
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _liveFileURL%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_finishShareAccept_step
{
  OUTLINED_FUNCTION_21(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx Waiting for share accept to finish%@");
  v3 = *MEMORY[0x277D85DE8];
}

void __56__BRCSharingAcceptFlowOperation__finishShareAccept_step__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 704);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __56__BRCSharingAcceptFlowOperation__finishShareAccept_step__block_invoke_cold_1();
  }

  if (([v2 brc_containsCloudKitErrorCode:3] & 1) != 0 || (objc_msgSend(v2, "brc_containsCloudKitErrorCode:", 4) & 1) != 0 || (objc_msgSend(v2, "brc_containsCloudKitErrorCode:", 29) & 1) != 0 || (objc_msgSend(v2, "brc_containsCloudKitErrorCode:", 32) & 1) != 0 || (objc_msgSend(v2, "brc_containsCloudKitErrorCode:", 11) & 1) != 0 || objc_msgSend(v2, "brc_containsCloudKitErrorCode:", 10))
  {
    [*(a1 + 32) _completeWithError:v2];
    goto LABEL_10;
  }

  if ([v2 brc_containsCloudKitErrorCode:9])
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCA9B8] brc_errorLoggedOut];
LABEL_16:
    v8 = v6;
    [v5 _completeWithError:v6];

    goto LABEL_10;
  }

  v7 = *(a1 + 32);
  if (!v2)
  {
    [v7 _performNextStep];
    goto LABEL_10;
  }

  if (([v7 finishIfCancelled] & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCA9B8] brc_errorAcceptShareFailedWithUnderlyingError:v2];
    goto LABEL_16;
  }

LABEL_10:
}

- (void)_createServerFaultIfPossibleWithCompletion:(id)completion
{
  completionCopy = completion;
  memset(v15, 0, sizeof(v15));
  __brc_create_section(0, "[BRCSharingAcceptFlowOperation _createServerFaultIfPossibleWithCompletion:]", 1541, 0, v15);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRCSharingAcceptFlowOperation _createServerFaultIfPossibleWithCompletion:v15];
  }

  if (!self->_clientZone)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [BRCSharingAcceptFlowOperation _createServerFaultIfPossibleWithCompletion:];
    }
  }

  if (!self->_linkItemID)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [BRCSharingAcceptFlowOperation _createServerFaultIfPossibleWithCompletion:];
    }
  }

  if (self->_allowsDirectoryFaults)
  {
    v7 = [(BRCClientZone *)self->_clientZone db];
    serialQueue = [v7 serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__BRCSharingAcceptFlowOperation__createServerFaultIfPossibleWithCompletion___block_invoke;
    block[3] = &unk_278500048;
    block[4] = self;
    v14 = completionCopy;
    dispatch_async(serialQueue, block);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  __brc_leave_section(v15);
}

void __76__BRCSharingAcceptFlowOperation__createServerFaultIfPossibleWithCompletion___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 600) serverItemByItemID:*(*(a1 + 32) + 568)];

  v3 = *(a1 + 32);
  if (!v2)
  {
    v5 = [v3 _isDocumentLinkInsideFolderShare];
    v6 = [*(*(a1 + 32) + 552) sharedItemHierarchyIDs];
    v7 = [v6 count];
    if (v5)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    if (v7 <= v8)
    {
      if (![*(a1 + 32) _isOwner] || (objc_msgSend(*(*(a1 + 32) + 568), "isEqualToItemID:", *(*(a1 + 32) + 576)) & 1) == 0 && (objc_msgSend(*(*(a1 + 32) + 600), "serverItemByItemID:", *(*(a1 + 32) + 576)), v34 = objc_claimAutoreleasedReturnValue(), v34, v34))
      {
        v35 = brc_bread_crumbs();
        v36 = brc_default_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          __76__BRCSharingAcceptFlowOperation__createServerFaultIfPossibleWithCompletion___block_invoke_cold_1();
        }

        [*(a1 + 32) _performNextStep];
LABEL_32:
        v37 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    v9 = [*(*(a1 + 32) + 600) serverZone];
    v10 = [*(*(a1 + 32) + 552) rootRecordID];
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v12 = [*(*(a1 + 32) + 600) fetchRecordSubResourcesWithParentOperation:*(a1 + 32) pendingChangesStream:0 contentRecordsFetchedInline:1 sessionContext:*(*(a1 + 32) + 256)];
    [v11 addObject:v10];
    [v11 addObject:*(*(a1 + 32) + 544)];
    v13 = [v10 recordName];
    if ([v13 hasPrefix:@"documentContent/"])
    {
      v14 = [v9 isPrivateZone];

      if (!v14)
      {
LABEL_13:
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v20 = [*(*(a1 + 32) + 552) sharedItemHierarchyIDs];
        v21 = [v20 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v45;
          do
          {
            v24 = 0;
            do
            {
              if (*v45 != v23)
              {
                objc_enumerationMutation(v20);
              }

              [v11 addObject:*(*(&v44 + 1) + 8 * v24++)];
            }

            while (v22 != v24);
            v22 = [v20 countByEnumeratingWithState:&v44 objects:v48 count:16];
          }

          while (v22);
        }

        if (!v10)
        {
          __76__BRCSharingAcceptFlowOperation__createServerFaultIfPossibleWithCompletion___block_invoke_cold_2();
        }

        v25 = objc_alloc(MEMORY[0x277CBC3E0]);
        v26 = [v11 allObjects];
        v27 = [v25 initWithRecordIDs:v26];

        v28 = [MEMORY[0x277CBC5A0] desiredKeysWithMask:185];
        [v27 setDesiredKeys:v28];

        [v27 setShouldFetchAssetContent:0];
        v29 = [v12 callbackQueue];
        [v27 setCallbackQueue:v29];

        v38 = MEMORY[0x277D85DD0];
        v39 = 3221225472;
        v40 = __76__BRCSharingAcceptFlowOperation__createServerFaultIfPossibleWithCompletion___block_invoke_179;
        v41 = &unk_2785030E8;
        v43 = *(a1 + 40);
        v30 = v12;
        v42 = v30;
        [v27 setFetchRecordsCompletionBlock:&v38];
        v31 = [v9 isPrivateZone];
        v32 = *(a1 + 32);
        if (v31)
        {
          v33 = [v32[76] transferSyncContext];
          [v32 addSubOperation:v27 overrideContext:v33 allowsCellularAccess:0];
        }

        else
        {
          [v32 addSubOperation:v27];
        }

        goto LABEL_32;
      }

      v15 = [v10 recordName];
      v13 = [v15 substringFromIndex:{objc_msgSend(@"documentContent/", "length")}];

      v16 = [@"documentStructure/" stringByAppendingString:v13];
      v17 = objc_alloc(MEMORY[0x277CBC5D0]);
      v18 = [v10 zoneID];
      v19 = [v17 initWithRecordName:v16 zoneID:v18];

      [v11 addObject:v19];
    }

    goto LABEL_13;
  }

  v4 = *MEMORY[0x277D85DE8];

  [v3 _performNextStep];
}

void __76__BRCSharingAcceptFlowOperation__createServerFaultIfPossibleWithCompletion___block_invoke_179(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __76__BRCSharingAcceptFlowOperation__createServerFaultIfPossibleWithCompletion___block_invoke_179_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [a2 allValues];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(a1 + 32) addRecord:*(*(&v18 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v13 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __76__BRCSharingAcceptFlowOperation__createServerFaultIfPossibleWithCompletion___block_invoke_180;
    v15[3] = &unk_278500048;
    v16 = v13;
    v17 = *(a1 + 40);
    [v16 notifyWhenRecordsAreFetchedAndFinish:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __76__BRCSharingAcceptFlowOperation__createServerFaultIfPossibleWithCompletion___block_invoke_180(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __76__BRCSharingAcceptFlowOperation__createServerFaultIfPossibleWithCompletion___block_invoke_180_cold_1();
  }

  v4 = [*(a1 + 32) saveRecordsWithQueryCursor:0];
  v5 = [*(a1 + 32) error];

  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = [*(a1 + 32) error];
  }

  else
  {
    if (v4)
    {
      (*(v6 + 16))(*(a1 + 40), 0);
      return;
    }

    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __76__BRCSharingAcceptFlowOperation__createServerFaultIfPossibleWithCompletion___block_invoke_180_cold_2();
    }

    v7 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: couldn't save to server truth when creating server fault"];
  }

  v10 = v7;
  (*(v6 + 16))(v6, v7);
}

- (void)_locateSharedItemOnRecipient_step
{
  if ([(BRCSharingAcceptFlowOperation *)self _isOwner])
  {
    goto LABEL_3;
  }

  serverZone = [(BRCClientZone *)self->_clientZone serverZone];
  state = [serverZone state];
  defaultClientZone = [(BRCAppLibrary *)self->_appLibrary defaultClientZone];
  serverZone2 = [defaultClientZone serverZone];
  v7 = state & [serverZone2 state];

  if ((v7 & 4) != 0)
  {
LABEL_3:

    [(BRCSharingAcceptFlowOperation *)self _performNextStep];
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__BRCSharingAcceptFlowOperation__locateSharedItemOnRecipient_step__block_invoke;
    v8[3] = &unk_2784FF540;
    v8[4] = self;
    [(BRCSharingAcceptFlowOperation *)self _createServerFaultIfPossibleWithCompletion:v8];
  }
}

uint64_t __66__BRCSharingAcceptFlowOperation__locateSharedItemOnRecipient_step__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 256);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__BRCSharingAcceptFlowOperation__locateSharedItemOnRecipient_step__block_invoke_2;
  v4[3] = &unk_278500F30;
  v4[4] = v1;
  return [v2 performAsyncOnClientReadWriteDatabaseWorkloop:v4];
}

void __66__BRCSharingAcceptFlowOperation__locateSharedItemOnRecipient_step__block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 600) serverItemByItemID:*(*(a1 + 32) + 568)];
  if (v2)
  {
    v3 = [*(*(a1 + 32) + 256) itemFetcher];
    v4 = [v3 serverAliasItemForSharedItem:v2];

    v5 = *(a1 + 32);
    if (v4)
    {
      [v5 _performNextStep];
    }

    else
    {
      v8 = [v5[76] defaultClientZone];
      v9 = [v2 itemGlobalID];
      v10 = [v8 serverZone];
      v11 = [BRCItemID shareAliasRecordIDFromTargetItemID:v9 zone:v10 hasDerivedShareAlias:0];

      v12 = [v8 locateRecordIfNecessaryForRecordID:v11 isUserWaiting:1];
      if (v12)
      {
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __66__BRCSharingAcceptFlowOperation__locateSharedItemOnRecipient_step__block_invoke_186;
        v16[3] = &unk_2784FFD80;
        v13 = v11;
        v14 = *(a1 + 32);
        v17 = v13;
        v18 = v14;
        [v12 addLocateRecordCompletionBlock:v16];
      }

      else
      {
        [*(a1 + 32) _performNextStep];
      }
    }
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't create a directory fault%@", buf, 0xCu);
    }

    [*(a1 + 32) _performNextStep];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __66__BRCSharingAcceptFlowOperation__locateSharedItemOnRecipient_step__block_invoke_186(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @"fail";
    v9 = *(a1 + 32);
    v11 = 138413058;
    if (a2)
    {
      v8 = @"success";
    }

    v12 = v9;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_INFO, "[INFO] Fetch share alias for share alias record ID [%@]: %@ with error %@%@", &v11, 0x2Au);
  }

  [*(a1 + 40) _performNextStep];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_waitForSharedItemToSyncDownOnRecipient_step
{
  memset(v7, 0, sizeof(v7));
  __brc_create_section(0, "[BRCSharingAcceptFlowOperation _waitForSharedItemToSyncDownOnRecipient_step]", 1664, 0, v7);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(BRCSharingAcceptFlowOperation *)v7 _waitForSharedItemToSyncDownOnOwner_step];
  }

  if ([(BRCSharingAcceptFlowOperation *)self _isOwner])
  {
    [(BRCSharingAcceptFlowOperation *)self _performNextStep];
  }

  else
  {
    clientZone = self->_clientZone;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __77__BRCSharingAcceptFlowOperation__waitForSharedItemToSyncDownOnRecipient_step__block_invoke;
    v6[3] = &unk_278505A20;
    v6[4] = self;
    [(BRCClientZone *)clientZone performBlock:v6 whenSyncDownCompletesLookingForItemID:self->_linkItemID];
    [(BRCSharingAcceptFlowOperation *)self _activateSharedZoneIfNeeded];
  }

  __brc_leave_section(v7);
}

void __77__BRCSharingAcceptFlowOperation__waitForSharedItemToSyncDownOnRecipient_step__block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) callbackQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__BRCSharingAcceptFlowOperation__waitForSharedItemToSyncDownOnRecipient_step__block_invoke_2;
  v5[3] = &unk_278500EE0;
  v6 = a2;
  v5[4] = *(a1 + 32);
  dispatch_async_with_logs_9(v4, v5);
}

void __77__BRCSharingAcceptFlowOperation__waitForSharedItemToSyncDownOnRecipient_step__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 256);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __77__BRCSharingAcceptFlowOperation__waitForSharedItemToSyncDownOnRecipient_step__block_invoke_193;
    v15[3] = &unk_278500F30;
    v15[4] = v2;
    [v3 performAsyncOnClientReadWriteDatabaseWorkloop:v15];
  }

  else
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __77__BRCSharingAcceptFlowOperation__waitForSharedItemToSyncDownOnRecipient_step__block_invoke_2_cold_1(a1);
    }

    v6 = MEMORY[0x277CCA9B8];
    v7 = [*(*(a1 + 32) + 552) share];
    v8 = [v7 brc_sharedRootDisplayName];
    if (v8)
    {
      v9 = [v6 brc_errorItemNotFound:v8];
    }

    else
    {
      v10 = [*(*(a1 + 32) + 568) itemIDString];
      v9 = [v6 brc_errorItemNotFound:v10];
    }

    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CCA9B8] brc_errorAcceptShareFailedWithUnderlyingError:v9];
    [v11 _completeWithError:v12];

    v13 = *(a1 + 32);
    v14 = *(v13 + 584);
    *(v13 + 584) = 0;
  }
}

uint64_t __77__BRCSharingAcceptFlowOperation__waitForSharedItemToSyncDownOnRecipient_step__block_invoke_193(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 600) itemByItemID:*(*(a1 + 32) + 568)];
  v3 = [v2 fileObjectID];
  v4 = *(a1 + 32);
  v5 = *(v4 + 584);
  *(v4 + 584) = v3;

  v6 = *(a1 + 32);

  return [v6 _performNextStep];
}

- (void)_waitForSharedItemToBeOnDiskOnRecipient_step
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _linkFileObjectID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __77__BRCSharingAcceptFlowOperation__waitForSharedItemToBeOnDiskOnRecipient_step__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 584);
      *buf = 138412802;
      v12 = v6;
      v13 = 2112;
      v14 = v3;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't get user visible file on %@ - %@%@", buf, 0x20u);
    }
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 256);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__BRCSharingAcceptFlowOperation__waitForSharedItemToBeOnDiskOnRecipient_step__block_invoke_194;
  v10[3] = &unk_278500F30;
  v10[4] = v7;
  [v8 performAsyncOnClientReadWriteDatabaseWorkloop:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __77__BRCSharingAcceptFlowOperation__waitForSharedItemToBeOnDiskOnRecipient_step__block_invoke_194(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 640))
  {

    [v2 _performNextStep];
  }

  else
  {
    v3 = MEMORY[0x277CCA9B8];
    v4 = [*(v2 + 552) share];
    v5 = [v4 brc_sharedRootDisplayName];
    if (v5)
    {
      v9 = [v3 brc_errorItemNotFound:v5];
    }

    else
    {
      v6 = [*(*(a1 + 32) + 568) itemIDString];
      v9 = [v3 brc_errorItemNotFound:v6];
    }

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCA9B8] brc_errorAcceptShareFailedWithUnderlyingError:v9];
    [v7 _completeWithError:v8];
  }
}

- (void)_locateSharedItemOnDisk_step
{
  OUTLINED_FUNCTION_21(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx Locate shared folder on disk%@");
  v3 = *MEMORY[0x277D85DE8];
}

void __61__BRCSharingAcceptFlowOperation__locateSharedItemOnDisk_step__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 600) itemByItemID:*(*(a1 + 32) + 568)];
  if ([v2 isOnDisk])
  {
    v3 = [*(*(a1 + 32) + 256) clientReadWriteDatabaseFacade];
    [v3 flushToMakeEditsVisibleToIPCReaders];

    v4 = *(a1 + 32);
    v5 = [v2 fileObjectID];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__BRCSharingAcceptFlowOperation__locateSharedItemOnDisk_step__block_invoke_195;
    v16[3] = &unk_2784FF540;
    v16[4] = *(a1 + 32);
    [v4 _fetchOpenInfoOnFileObjectID:v5 completion:v16];
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 32) + 568);
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ wasn't able to be found on disk.  We must have reset or be broken structure or it was deleted locally.%@", buf, 0x16u);
    }

    v9 = MEMORY[0x277CCA9B8];
    v10 = [*(*(a1 + 32) + 552) share];
    v11 = [v10 brc_sharedRootDisplayName];
    if (v11)
    {
      v5 = [v9 brc_errorItemNotFound:v11];
    }

    else
    {
      v12 = [*(*(a1 + 32) + 568) itemIDString];
      v5 = [v9 brc_errorItemNotFound:v12];
    }

    v13 = *(a1 + 32);
    v14 = [MEMORY[0x277CCA9B8] brc_errorAcceptShareFailedWithUnderlyingError:v5];
    [v13 _completeWithError:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __61__BRCSharingAcceptFlowOperation__locateSharedItemOnDisk_step__block_invoke_195(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v4 = [MEMORY[0x277CCA9B8] brc_errorAcceptShareFailedWithUnderlyingError:a2];
    [v2 _completeWithError:v4];
  }

  else
  {
    v3 = *(a1 + 32);

    [v3 _performNextStep];
  }
}

- (void)_prepareToDownloadSharedDocument_step
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Going to download a dataless item that is already accepted%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setSpotlightAttribute_step
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] _setSpotlightAttribute is not relevant in FPFS%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_openSharedItemIfStillNeeded_step
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _liveFileURL%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)_runningShareIDs
{
  if (_runningShareIDs_onceToken != -1)
  {
    +[BRCSharingAcceptFlowOperation _runningShareIDs];
  }

  v3 = _runningShareIDs_ret;

  return v3;
}

uint64_t __49__BRCSharingAcceptFlowOperation__runningShareIDs__block_invoke()
{
  _runningShareIDs_ret = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)_completeWithError:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: error _completeWithError must be called only in case we should complete with an error%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_completeWithError:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: error.underlyingErrors.count == 1%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_completeWithError:.cold.3()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _shareMetadata%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_completeWithError:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_completeWithError:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] network is unreachable, replacing error with generic network error%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] fallback to iCloud Web with reason: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_2_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !(goToAppStore && openWebPreview)%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_17_3();
  v11 = *MEMORY[0x277D85DE8];
  v1 = brc_bread_crumbs();
  OUTLINED_FUNCTION_1_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_12(v2))
  {
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_2_3(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self->_shareURL%@", v6, v7, v8, v9, v10);
  }

  OUTLINED_FUNCTION_9_4();
  v3 = *MEMORY[0x277D85DE8];
}

void __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_46_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !(goToSettings && openWebPreview)%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __52__BRCSharingAcceptFlowOperation__completeWithError___block_invoke_47_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !(goToSettings && openWebPreview)%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)finishWithResult:error:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self.cancelled || _hadProcessedCompletionError completedWithResult:error: called with error directly. Should call _completeWithError: instead.%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)finishWithResult:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Session is not cancelled but DBs serial queue is nil!%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __56__BRCSharingAcceptFlowOperation_finishWithResult_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] delete share acceptation fault because operation failed%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_isOwner
{
  OUTLINED_FUNCTION_17_3();
  v11 = *MEMORY[0x277D85DE8];
  v1 = brc_bread_crumbs();
  OUTLINED_FUNCTION_1_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_12(v2))
  {
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_2_3(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _shareMetadata%@", v6, v7, v8, v9, v10);
  }

  OUTLINED_FUNCTION_9_4();
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_isOwnerOrShareAlreadyAccepted
{
  OUTLINED_FUNCTION_17_3();
  v11 = *MEMORY[0x277D85DE8];
  v1 = brc_bread_crumbs();
  OUTLINED_FUNCTION_1_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_12(v2))
  {
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_2_3(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _shareMetadata%@", v6, v7, v8, v9, v10);
  }

  OUTLINED_FUNCTION_9_4();
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_isiWorkShare
{
  OUTLINED_FUNCTION_17_3();
  v11 = *MEMORY[0x277D85DE8];
  v1 = brc_bread_crumbs();
  OUTLINED_FUNCTION_1_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_12(v2))
  {
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_2_3(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _shareURL%@", v6, v7, v8, v9, v10);
  }

  OUTLINED_FUNCTION_9_4();
  v3 = *MEMORY[0x277D85DE8];
}

- (void)openResourceOperationDidComplete:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Open application completed successfully%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)openResourceOperation:didFailWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__BRCSharingAcceptFlowOperation__startShareAccept_step__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: No operation error and no share id%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__BRCSharingAcceptFlowOperation__startShareAccept_step__block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] accept operation completed with success%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __73__BRCSharingAcceptFlowOperation__waitForSharedItemToSyncDownOnOwner_step__block_invoke_2_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 568);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_17_3();
  v11 = *MEMORY[0x277D85DE8];
  v1 = brc_bread_crumbs();
  OUTLINED_FUNCTION_1_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_12(v2))
  {
    OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_2_3(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self->_shareURL%@", v6, v7, v8, v9, v10);
  }

  OUTLINED_FUNCTION_9_4();
  v3 = *MEMORY[0x277D85DE8];
}

void __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_cold_2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self->_shareMetadata%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx Preparing side fault%@");
  v3 = *MEMORY[0x277D85DE8];
}

void __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_157_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] found share item %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_157_cold_2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_157_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] share item %@ is in transient state, should try again later%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_157_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: item isn't a document or directory%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_157_cold_5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] created shared item-to-be in db: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_157_cold_6()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] created link shared item-to-be in db: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __60__BRCSharingAcceptFlowOperation__createSideFaultOnDisk_step__block_invoke_157_cold_7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: document doesn't exists anymore%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __56__BRCSharingAcceptFlowOperation__finishShareAccept_step__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Share accept finished with error %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_createServerFaultIfPossibleWithCompletion:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_21(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx Creating server fault if possible%@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_createServerFaultIfPossibleWithCompletion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: _clientZone%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_createServerFaultIfPossibleWithCompletion:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: _linkItemID%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __76__BRCSharingAcceptFlowOperation__createServerFaultIfPossibleWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] We don't have need to fetch deeply into the folder. Letting the list directory take care of fetching%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __76__BRCSharingAcceptFlowOperation__createServerFaultIfPossibleWithCompletion___block_invoke_cold_2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: rootRecordID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __76__BRCSharingAcceptFlowOperation__createServerFaultIfPossibleWithCompletion___block_invoke_179_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Failed to fetch record for server fault - %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __76__BRCSharingAcceptFlowOperation__createServerFaultIfPossibleWithCompletion___block_invoke_180_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Finished fetching records for server fault%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __76__BRCSharingAcceptFlowOperation__createServerFaultIfPossibleWithCompletion___block_invoke_180_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: couldn't save to server truth when creating server fault%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __77__BRCSharingAcceptFlowOperation__waitForSharedItemToSyncDownOnRecipient_step__block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 568);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20(v2, v3, v4, v5, v6);
  v7 = *MEMORY[0x277D85DE8];
}

@end