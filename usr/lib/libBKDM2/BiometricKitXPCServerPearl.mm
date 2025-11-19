@interface BiometricKitXPCServerPearl
+ (BOOL)platformProvidesPSD3;
+ (BOOL)platformProvidesPlCl;
+ (id)getSHA384FromData:(id)a3;
+ (unsigned)getDeviceTreeProperty:(id)a3 fromPath:(id)a4;
+ (void)reportPearlHardwarePass:(BOOL)a3 fallbackAction:(id)a4;
+ (void)reportPearlInterlock:(BOOL)a3;
+ (void)reportPearlIssue;
- ($1AB5FA073B851C12C2339EC22442E995)deviceGravity;
- ($1AB5FA073B851C12C2339EC22442E995)deviceRotationRate;
- ($1AB5FA073B851C12C2339EC22442E995)deviceUserAcceleration;
- (BOOL)cameraIndicatorControlAllowedForClient:(id)a3;
- (BOOL)hasFDREntitlement;
- (BOOL)hasManifestEntitlement:(unsigned int)a3;
- (BOOL)unwrapBrunorEncryptionKey;
- (BiometricKitXPCServerPearl)init;
- (id)classStringForEnum:(unsigned __int16)a3;
- (id)createEnrollOperation;
- (id)createMatchOperation;
- (id)createPresenceDetectOperation;
- (id)detailsForFaceDetectInfo:(id *)a3;
- (id)deviceAttitude;
- (id)filenameForSavageCertType:(id)a3;
- (id)getDisplayTrustStatusAttempt;
- (id)getFDRClassFromFile:(id)a3;
- (id)getProjectorSerialNumberIOReg;
- (id)getProjectorSerialNumberIORegAttempt;
- (id)getRomeoSerialNumberFDR;
- (int)cancelWithClient:(id)a3;
- (int)completeEnrollmentWithClient:(id)a3;
- (int)enableMatchAutoRetry:(BOOL)a3 withClient:(id)a4;
- (int)getCommProtocolVersion;
- (int)getPeriocularMatchStateForUser:(unsigned int)a3 state:(int64_t *)a4 withClient:(id)a5;
- (int)getSPRLInfo:(id *)a3;
- (int)getSensorFamily:(unsigned __int8 *)a3;
- (int)initAutoBugCapture;
- (int)initMatchOperation:(id)a3 filter:(id)a4 options:(id)a5 client:(id)a6;
- (int)initPresenceDetectOperation:(id)a3 options:(id)a4 client:(id)a5;
- (int)initSecureFaceDetect;
- (int)initializeEngineWithOptions:(unsigned __int16)a3;
- (int)isPeriocularEnrollmentSupported:(BOOL *)a3 withClient:(id)a4;
- (int)loadCatacombForComponent:(id)a3;
- (int)loadDCNKernels;
- (int)loadFDRClassCommand:(int)a3 withClass:(unsigned __int16)a4 withData:(id)a5 isAlternative:(BOOL)a6;
- (int)loadPCECalibrationOverride:(id)a3;
- (int)loadSavageFWCertificate;
- (int)performCancelCommand;
- (int)performCommand:(unsigned __int16)a3 version:(unsigned __int16)a4 inValue:(unsigned __int16)a5 inData:(const void *)a6 inSize:(unint64_t)a7 outData:(char *)a8 outSize:(unint64_t *)a9;
- (int)performCompleteSaveCatacombCommand:(id)a3 outBuffer:(id)a4;
- (int)performConfirmSaveCatacombCommand:(id)a3;
- (int)performDropUnlockTokenCommand;
- (int)performEnrollCommand:(id)a3;
- (int)performForceBioLockoutCommand:(unsigned int)a3;
- (int)performGetBiometrickitdInfoCommand:(id *)a3;
- (int)performGetCatacombHashCommand:(unsigned int)a3 outHash:(id *)a4;
- (int)performGetCatacombStateCommand:(id)a3;
- (int)performGetCatacombUUIDCommand:(unsigned int)a3 outUUID:(id *)a4;
- (int)performGetDeviceHardwareStateCommand:(unsigned int *)a3;
- (int)performGetFreeIdentityCountCommand:(unsigned int)a3 outCount:(unsigned int *)a4;
- (int)performGetIdentitiesListCommand:(unsigned int)a3 outBuffer:(id)a4;
- (int)performGetLastMatchEventCommand:(id *)a3;
- (int)performGetProtectedConfigCommand:(unsigned int)a3 outSetCfg:(id *)a4 outEffectiveCfg:(id *)a5;
- (int)performGetSKSLockStateCommand:(unsigned int)a3 outState:(unsigned int *)a4;
- (int)performGetSystemProtectedConfigCommand:(id *)a3;
- (int)performGetTemplatesValidityCommand:(unsigned int)a3 isValid:(BOOL *)a4;
- (int)performLoadCatacombCommand:(id)a3 inData:(id)a4;
- (int)performMatchCommand:(id)a3;
- (int)performNoCatacombCommand:(unsigned int)a3;
- (int)performPrepareSaveCatacombCommand:(id)a3 outDataSize:(unsigned int *)a4;
- (int)performPresenceDetectCommand:(id)a3 restart:(BOOL)a4;
- (int)performRemoveIdentityCommand:(id *)a3;
- (int)performRemoveUserDataCommand:(unsigned int)a3;
- (int)performRequestMaxIdentityCountCommand:(unsigned int *)a3;
- (int)performRequestMessageDataCommand:(unint64_t)a3 size:(unint64_t)a4 outData:(id *)a5;
- (int)performSetProtectedConfigCommand:(unsigned int)a3 cfg:(id)a4 authData:(id *)a5;
- (int)performSetSystemProtectedConfigCommand:(id)a3 authData:(id *)a4;
- (int)prewarmCamera:(unint64_t)a3 withClient:(id)a4;
- (int)queryGuadalupeSerialNumberFDR:(id *)a3;
- (int)queryIdentityMigrationFailureForUser:(unsigned int)a3 failed:(BOOL *)a4 clear:(BOOL)a5 withClient:(id)a6;
- (int)queryPeriocularMigrationState:(BOOL *)a3 clear:(BOOL)a4;
- (int)removeIdentity:(id)a3 withOptions:(id)a4 withClient:(id)a5;
- (int)removePeriocularTemplatesWithOptions:(id)a3 withClient:(id)a4;
- (int)restoreAndSyncTemplates;
- (int)saveTemplateListAfterTemplateUpdate;
- (int)sendDCNKernelsCheckResult:(int)a3;
- (int)sendDisplayCheckResult:(int)a3;
- (int)sendFDRDataCheckResult:(int)a3;
- (int)sendRomeoSNCheckResult:(int)a3;
- (int)sendSavageFWCertCheckResult:(int)a3;
- (int)sendSelfCheckResult:(id *)a3;
- (int)setTemplate:(id)a3 forIdentity:(id)a4 withClient:(id)a5;
- (int)startNewMatchAttemptWithClient:(id)a3;
- (int)startSecureFaceDetect;
- (int)suspendEnrollment:(BOOL)a3 withClient:(id)a4;
- (int)unwrapBrunorEncryptionKey;
- (int)updateIdentity:(id)a3 withOptions:(id)a4 withClient:(id)a5;
- (int)updatePropertiesOfIdentities;
- (int)verifyDisplayTrust;
- (int)verifyGuadalupeSerialNumberAgainstFDR;
- (int)verifyProjectorSerialNumber;
- (int)verifyRomeoSerialNumberAgainstFDR;
- (int64_t)getDeviceStateWithClient:(id)a3;
- (uint64_t)startSecureFaceDetect;
- (unint64_t)deviceOrientation;
- (void)analyticsKernelMessage:(id)a3;
- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5;
- (void)checkBioLogConsent;
- (void)clearSecureFaceDetectContext;
- (void)dealloc;
- (void)deinitSecureFaceDetect;
- (void)donateBiomeEvent:(id)a3;
- (void)enrollFeedback:(id)a3 withTimestamp:(unint64_t)a4;
- (void)enrollResult:(id)a3 withTimestamp:(unint64_t)a4;
- (void)enrollUpdate:(id)a3 withTimestamp:(unint64_t)a4;
- (void)faceDetectMessage:(unsigned int)a3 info:(id *)a4 fromSecureFD:(BOOL)a5;
- (void)firstUnlockCallback;
- (void)getCommProtocolVersion;
- (void)getProjectorSerialNumberIORegAttempt;
- (void)getRomeoSerialNumberFDR;
- (void)handleSharedMemoryTransfer:(unsigned int)a3 withHeader:(id)a4 data:(id)a5;
- (void)init;
- (void)initAutoBugCapture;
- (void)initSecureFaceDetect;
- (void)loadCalibrationData;
- (void)loadDCNKernels;
- (void)loadSavageFWCertificate;
- (void)logKernelMessage:(id)a3;
- (void)logRemoveIdentity:(id)a3 withClient:(id)a4;
- (void)logSequenceDebugWithContext:(id *)a3;
- (void)matchEventMessage:(id *)a3;
- (void)matchResult:(id)a3 withTimestamp:(unint64_t)a4;
- (void)performCancelCommand;
- (void)performDropUnlockTokenCommand;
- (void)processMetadataObjects:(id)a3;
- (void)processSecureFaceDetectRequestMessage;
- (void)registerForLiftToWakeNotifications:(BOOL)a3;
- (void)restoreAndSyncTemplates;
- (void)saveTemplateListAfterTemplateUpdate;
- (void)secureFaceDetectRequestMessage:(id *)a3;
- (void)serviceMatch:(unsigned int)a3;
- (void)stopSecureFaceDetect;
- (void)unwrapBrunorEncryptionKey;
- (void)updateAutoRetryMode;
- (void)updateCoachingHintsEnabled;
- (void)updateCombinedSequenceMode;
- (void)updateEntitlementOverrideFlags;
- (void)updateLoggingState;
- (void)updatePropertiesOfIdentities;
- (void)verifyDisplayTrust;
- (void)verifyGuadalupeSerialNumberAgainstFDR;
- (void)verifyProjectorSerialNumber;
- (void)verifyRomeoSerialNumberAgainstFDR;
- (void)wakeGestureManager:(id)a3 didUpdateWakeGesture:(int64_t)a4;
@end

@implementation BiometricKitXPCServerPearl

- (int)performCancelCommand
{
  v2 = [(BiometricKitXPCServerPearl *)self performCommand:6 inValue:0 inData:0 inSize:0 outData:0 outSize:0];
  if (v2)
  {
    [BiometricKitXPCServerPearl performCancelCommand];
  }

  return v2;
}

void __48__BiometricKitXPCServerPearl_updateLoggingState__block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [v3 bioOpsQueue];
    objc_sync_enter(v4);
    v5 = [*(a1 + 32) runningBioOp];
    v6 = [v5 type];

    objc_sync_exit(v4);
    v7 = *(a1 + 32);
    v8 = *(v7 + 400);
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __48__BiometricKitXPCServerPearl_updateLoggingState__block_invoke_3;
    v12[3] = &unk_29EE54630;
    v12[4] = v7;
    v13 = v6;
    v9 = v12;
  }

  else
  {
    v10 = v3[50];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __48__BiometricKitXPCServerPearl_updateLoggingState__block_invoke_5;
    block[3] = &unk_29EE54570;
    block[4] = v3;
    v9 = block;
    v8 = v10;
  }

  dispatch_async(v8, v9);
}

uint64_t __48__BiometricKitXPCServerPearl_updateLoggingState__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(a2, "stationary")}];
  [*(*(a1 + 32) + 312) setInitialDeviceStationary:v3];

  v4 = *(*(a1 + 32) + 392);

  return [v4 stopActivityUpdates];
}

- (unint64_t)deviceOrientation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  motionActivityManager = self->_motionActivityManager;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __47__BiometricKitXPCServerPearl_deviceOrientation__block_invoke;
  v5[3] = &unk_29EE546D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(&motionActivityManager->super, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __47__BiometricKitXPCServerPearl_deviceOrientation__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 409) == 1)
  {
    v3 = [*(v2 + 376) deviceOrientationBlocking];
    *(*(*(a1 + 40) + 8) + 24) = [v3 orientation];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = *(v2 + 416);
  }
}

- (id)createPresenceDetectOperation
{
  v2 = objc_alloc_init(BiometricPresenceDetectOperationPearl);

  return v2;
}

void __48__BiometricKitXPCServerPearl_updateLoggingState__block_invoke_3(uint64_t a1)
{
  v2 = os_transaction_create();
  v3 = kSpringBoardBundleIdentifier_block_invoke_motionTransaction;
  kSpringBoardBundleIdentifier_block_invoke_motionTransaction = v2;

  v4 = *(a1 + 32);
  if ((*(v4 + 408) & 1) == 0)
  {
    [*(v4 + 376) startDeviceOrientationUpdatesToQueue:0 withHandler:0];
    *(*(a1 + 32) + 409) = 1;
  }

  v5 = *(a1 + 32);
  if (*(a1 + 40) == 2)
  {
    [*(v5 + 384) startDeviceMotionUpdates];
    [*(*(a1 + 32) + 312) setInitialDeviceStationary:0];
    v6 = *(*(a1 + 32) + 392);
    v7 = [MEMORY[0x29EDBA088] mainQueue];
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __48__BiometricKitXPCServerPearl_updateLoggingState__block_invoke_4;
    v12[3] = &unk_29EE54608;
    v12[4] = *(a1 + 32);
    [v6 startActivityUpdatesToQueue:v7 withHandler:v12];
  }

  else
  {
    v8 = *(v5 + 424);
    *(v5 + 424) = 0;

    v9 = (*(a1 + 32) + 432);
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    v10 = (*(a1 + 32) + 456);
    v10[1] = 0;
    v10[2] = 0;
    *v10 = 0;
    v11 = (*(a1 + 32) + 480);
    v11[1] = 0;
    v11[2] = 0;
    *v11 = 0;
  }
}

- (BiometricKitXPCServerPearl)init
{
  v82[19] = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEFAULT, "init\n", buf, 2u);
  }

  v78.receiver = self;
  v78.super_class = BiometricKitXPCServerPearl;
  v4 = [(BiometricKitXPCServer *)&v78 init];
  if (v4)
  {
    isInternalBuild();
    if (isInternalBuild())
    {
      v5 = 1;
    }

    else
    {
      v5 = v4[320];
    }

    v4[321] = MGGetBoolAnswer();
    v70 = [MEMORY[0x29EDBFD50] sharedInstance];
    v81[0] = @"autoRetryMode";
    v81[1] = @"combinedSequenceMode";
    v82[0] = &unk_2A1E03630;
    v82[1] = &unk_2A1E03648;
    v81[2] = @"entitlementOverrideFlags";
    v81[3] = @"coachingHintsEnabled";
    v6 = MEMORY[0x29EDB8EB0];
    v82[2] = &unk_2A1E03660;
    v82[3] = MEMORY[0x29EDB8EB0];
    v81[4] = @"loggingDisabled";
    v72 = [MEMORY[0x29EDBA070] numberWithBool:v4[320]];
    v82[4] = v72;
    v7 = MEMORY[0x29EDB8EA8];
    v81[5] = @"analyticsDisabled";
    v81[6] = @"fakeNonInternal";
    v82[5] = MEMORY[0x29EDB8EA8];
    v82[6] = MEMORY[0x29EDB8EA8];
    v82[7] = MEMORY[0x29EDB8EA8];
    v81[7] = @"customerLoggingEnabled";
    v81[8] = @"dataLoggingEnabled";
    v71 = [MEMORY[0x29EDBA070] numberWithBool:v5 & 1];
    v82[8] = v71;
    v81[9] = @"framesLoggingEnabled";
    v8 = [MEMORY[0x29EDBA070] numberWithBool:v5 & 1];
    v82[9] = v8;
    v82[10] = v6;
    v81[10] = @"framesRawLoggingDisabled";
    v81[11] = @"framesDebugLoggingEnabled";
    v9 = [MEMORY[0x29EDBA070] numberWithBool:v5 & 1];
    v82[11] = v9;
    v81[12] = @"faceDetectFailureLoggingEnabled";
    v10 = [MEMORY[0x29EDBA070] numberWithBool:v5 & 1];
    v82[12] = v10;
    v81[13] = @"faceDetectSequencesLoggingEnabled";
    v81[14] = @"faceDetectNoFaceLoggingEnabled";
    v82[13] = v7;
    v82[14] = v7;
    v81[15] = @"faceDetectDepthLoggingEnabled";
    v11 = [MEMORY[0x29EDBA070] numberWithBool:v5 & 1];
    v82[15] = v11;
    v81[16] = @"sequenceInfoLoggingEnabled";
    v12 = [MEMORY[0x29EDBA070] numberWithBool:v5 & 1];
    v82[16] = v12;
    v81[17] = @"sequenceDebugLoggingEnabled";
    v13 = [MEMORY[0x29EDBA070] numberWithBool:v5 & 1];
    v82[17] = v13;
    v81[18] = @"SuppressPearlIssuePopup";
    v82[18] = v7;
    v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v82 forKeys:v81 count:19];
    [v70 registerDefaults:v14];

    v15 = [MEMORY[0x29EDB8DF8] dataWithLength:*MEMORY[0x29EDCA6D0]];
    v16 = *(v4 + 65);
    *(v4 + 65) = v15;

    if (*(v4 + 65))
    {
      v17 = dispatch_queue_create("com.apple.pearld.smt", 0);
      v18 = *(v4 + 41);
      *(v4 + 41) = v17;

      if (!*(v4 + 41))
      {
        [BiometricKitXPCServerPearl init];
      }

      v19 = dispatch_queue_create("com.apple.pearld.motion", 0);
      v20 = *(v4 + 50);
      *(v4 + 50) = v19;

      if (!*(v4 + 50))
      {
        [BiometricKitXPCServerPearl init];
      }

      v21 = dispatch_queue_create("com.apple.pearld.logging", 0);
      v22 = *(v4 + 42);
      *(v4 + 42) = v21;

      if (!*(v4 + 42))
      {
        [BiometricKitXPCServerPearl init];
      }

      v23 = dispatch_queue_create("com.apple.pearld.analytics", 0);
      v24 = *(v4 + 45);
      *(v4 + 45) = v23;

      if (!*(v4 + 45))
      {
        [BiometricKitXPCServerPearl init];
      }

      v25 = *MEMORY[0x29EDBD580];
      BoolAnswer = AVGestaltGetBoolAnswer();
      v4[532] = BoolAnswer;
      if (BoolAnswer)
      {
        v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v28 = dispatch_queue_attr_make_with_qos_class(v27, QOS_CLASS_USER_INITIATED, 0);
        v29 = dispatch_queue_create("com.apple.pearld.avc", v28);
        v30 = *(v4 + 74);
        *(v4 + 74) = v29;

        if (!*(v4 + 74))
        {
          [BiometricKitXPCServerPearl init];
          goto LABEL_54;
        }

        v31 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x29EDCA580], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v32 = dispatch_queue_attr_make_with_qos_class(v31, QOS_CLASS_USER_INITIATED, 0);
        v33 = dispatch_queue_create("com.apple.pearld.avcStartStop", v32);
        v34 = *(v4 + 75);
        *(v4 + 75) = v33;

        if (!*(v4 + 74))
        {
          [BiometricKitXPCServerPearl init];
          goto LABEL_54;
        }

        v35 = objc_alloc_init(MEMORY[0x29EDBA0C8]);
        v36 = *(v4 + 76);
        *(v4 + 76) = v35;

        if (!*(v4 + 76))
        {
          [BiometricKitXPCServerPearl init];
          goto LABEL_54;
        }

        v37 = objc_alloc_init(MEMORY[0x29EDBA0C8]);
        v38 = *(v4 + 77);
        *(v4 + 77) = v37;

        if (!*(v4 + 77))
        {
          [BiometricKitXPCServerPearl init];
          goto LABEL_54;
        }

        v39 = dispatch_source_create(MEMORY[0x29EDCA598], 0, 0, *(v4 + 74));
        v40 = *(v4 + 81);
        *(v4 + 81) = v39;

        objc_initWeak(&location, v4);
        v41 = *(v4 + 81);
        handler[0] = MEMORY[0x29EDCA5F8];
        handler[1] = 3221225472;
        handler[2] = __34__BiometricKitXPCServerPearl_init__block_invoke;
        handler[3] = &unk_29EE54528;
        objc_copyWeak(&v76, &location);
        dispatch_source_set_event_handler(v41, handler);
        dispatch_activate(*(v4 + 81));
        v42 = MGGetSInt32Answer();
        *(v4 + 85) = v42;
        if (v42 && v42 != 180 && v42 != 270)
        {
          v43 = (__osLog ? __osLog : MEMORY[0x29EDCA988]);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = *(v4 + 85);
            *buf = 134217984;
            v80 = v44;
            _os_log_impl(&dword_296CA4000, v43, OS_LOG_TYPE_ERROR, "Unexpected value of kMGQFrontCameraRotationForISP: %f\n", buf, 0xCu);
          }
        }

        objc_destroyWeak(&v76);
        objc_destroyWeak(&location);
      }

      *(v4 + 146) = 1;
      *(v4 + 38) = 1011;
      v4[300] = notify_register_dispatch("com.apple.system.peakpowerpressurelevel", v4 + 74, MEMORY[0x29EDCA578], &__block_literal_global) == 0;
      v45 = *(v4 + 39);
      *(v4 + 39) = 0;

      if ((v4[321] & 1) == 0)
      {
        v46 = objc_alloc_init(PearlCoreAnalytics);
        v47 = *(v4 + 44);
        *(v4 + 44) = v46;

        v48 = *(v4 + 44);
        v49 = [v4 biometricABC];
        [v48 setPearlAbc:v49];

        [*(v4 + 44) setSecureFaceDetectSupported:v4[532]];
      }

      v50 = *(v4 + 50);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = __34__BiometricKitXPCServerPearl_init__block_invoke_221;
      block[3] = &unk_29EE54570;
      v51 = v4;
      v74 = v51;
      dispatch_async(v50, block);

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v51, __LoggingStateNotificationCallback, @"com.apple.ManagedConfiguration.profileListChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v53 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v53, v51, __LoggingStateNotificationCallback, @"com.apple.biometrickitd.loggingStateChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v54 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v54, v51, __AutoRetryModeNotificationCallback, @"com.apple.biometrickitd.autoRetryModeChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v55 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v55, v51, __CombinedSequenceModeNotificationCallback, @"com.apple.biometrickitd.combinedSequenceModeChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v56 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v56, v51, __CoachingHintsEnabledNotificationCallback, @"com.apple.biometrickitd.coachingHintsEnabledChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v57 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v57, v51, __EntitlementOverrideFlagsNotificationCallback, @"com.apple.biometrickitd.entitlementOverrideFlagsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      signal(15, 1);
      v58 = dispatch_source_create(MEMORY[0x29EDCA5C0], 0xFuLL, 0, MEMORY[0x29EDCA578]);
      v59 = *(v51 + 63);
      *(v51 + 63) = v58;

      dispatch_source_set_event_handler(*(v51 + 63), &__block_literal_global_242);
      dispatch_resume(*(v51 + 63));
      v60 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v61 = dispatch_queue_attr_make_with_qos_class(v60, QOS_CLASS_USER_INITIATED, 0);
      v62 = dispatch_queue_create("com.apple.biometrickitd.driverNotify", v61);
      v63 = *(v51 + 34);
      *(v51 + 34) = v62;

      if (*(v51 + 34))
      {
        v64 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
        *(v51 + 33) = v64;
        if (v64)
        {
          IONotificationPortSetDispatchQueue(v64, *(v51 + 34));
          v65 = *(v51 + 33);
          v66 = IOServiceMatching("ApplePearlSEPDriver");
          if (!IOServiceAddMatchingNotification(v65, "IOServiceFirstMatch", v66, __serviceMatch, v51, v51 + 70))
          {
            __serviceMatch(v51, *(v51 + 70));
            [v51 checkBioLogConsent];
            goto LABEL_39;
          }

          [BiometricKitXPCServerPearl init];
        }

        else
        {
          [BiometricKitXPCServerPearl init];
        }
      }

      else
      {
        [BiometricKitXPCServerPearl init];
      }
    }

    else
    {
      [BiometricKitXPCServerPearl init];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl init];
  }

LABEL_54:

  v51 = 0;
LABEL_39:
  if (__osLogTrace)
  {
    v67 = __osLogTrace;
  }

  else
  {
    v67 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v80 = v51;
    _os_log_impl(&dword_296CA4000, v67, OS_LOG_TYPE_DEFAULT, "init -> %@\n", buf, 0xCu);
  }

  v68 = *MEMORY[0x29EDCA608];
  return v51;
}

void __34__BiometricKitXPCServerPearl_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained processSecureFaceDetectRequestMessage];
}

void __34__BiometricKitXPCServerPearl_init__block_invoke_218(int a1, int token)
{
  v7 = *MEMORY[0x29EDCA608];
  state64 = 0;
  if (!notify_get_state(token, &state64))
  {
    if (__osLog)
    {
      v2 = __osLog;
    }

    else
    {
      v2 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v6 = state64;
      _os_log_impl(&dword_296CA4000, v2, OS_LOG_TYPE_DEFAULT, "Pearl: New PeakPowerPressureLevel: %llu\n", buf, 0xCu);
    }
  }

  v3 = *MEMORY[0x29EDCA608];
}

uint64_t __34__BiometricKitXPCServerPearl_init__block_invoke_221(uint64_t a1)
{
  result = [*(a1 + 32) registerForLiftToWakeNotifications:1];
  if (*(*(a1 + 32) + 532) == 1)
  {
    result = [MEMORY[0x29EDB93B0] isAvailable];
    if (result)
    {
      *(*(a1 + 32) + 408) = 1;
      v3 = objc_alloc_init(MEMORY[0x29EDB93B0]);
      v4 = *(a1 + 32);
      v5 = *(v4 + 376);
      *(v4 + 376) = v3;

      result = [*(*(a1 + 32) + 376) startDeviceOrientationUpdatesToQueue:0 withHandler:0];
      *(*(a1 + 32) + 409) = 1;
    }
  }

  return result;
}

void __34__BiometricKitXPCServerPearl_init__block_invoke_2()
{
  if (__osLog)
  {
    v0 = __osLog;
  }

  else
  {
    v0 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_296CA4000, v0, OS_LOG_TYPE_DEFAULT, "SIGTERM received\n", v1, 2u);
  }

  exit(0);
}

- (int)initAutoBugCapture
{
  v3 = [PearlAutoBugCapture alloc];
  v4 = [(BiometricKitXPCServer *)self biometricABCDispatchQueue];
  v5 = [(BiometricAutoBugCapture *)v3 initWithDomain:@"FaceID" process:@"biometrickitd" dispatchQueue:v4];
  [(BiometricKitXPCServer *)self setBiometricABC:v5];

  v6 = [(BiometricKitXPCServer *)self biometricABC];

  if (v6)
  {
    return 0;
  }

  [BiometricKitXPCServerPearl initAutoBugCapture];
  return v8;
}

- (void)dealloc
{
  [(BiometricKitXPCServerPearl *)self registerForLiftToWakeNotifications:0];
  driverNotifyQueue = self->_driverNotifyQueue;
  if (driverNotifyQueue)
  {
    IOObjectRelease(driverNotifyQueue);
  }

  driverNotifyQueue_high = HIDWORD(self->_driverNotifyQueue);
  if (driverNotifyQueue_high)
  {
    IOServiceClose(driverNotifyQueue_high);
  }

  services = self->_services;
  if (services)
  {
    IOObjectRelease(services);
  }

  v6 = HIDWORD(self->_driverNotifyQueue);
  if (v6)
  {
    IOObjectRelease(v6);
  }

  if (LOBYTE(self->_commProtocolVersion) == 1)
  {
    notify_cancel(self->_status);
  }

  reporter = self->super._reporter;
  if (reporter)
  {
    IONotificationPortDestroy(reporter);
  }

  [*&self->_logSequenceDebug setAnalyticsPerformCommandBlock:0];
  analytics = self->_analytics;
  self->_analytics = 0;

  v9 = *&self->_logSequenceDebug;
  *&self->_logSequenceDebug = 0;

  v10.receiver = self;
  v10.super_class = BiometricKitXPCServerPearl;
  [(BiometricKitXPCServer *)&v10 dealloc];
}

- (void)serviceMatch:(unsigned int)a3
{
  v43 = *MEMORY[0x29EDCA608];
  v28 = os_transaction_create();
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v34) = a3;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEFAULT, "serviceMatch: %u\n", buf, 8u);
  }

  context = objc_autoreleasePoolPush();
  v6 = IOIteratorNext(a3);
  if (v6)
  {
    v8 = MEMORY[0x29EDCA5F8];
    *&v7 = 136316162;
    v27 = v7;
    do
    {
      v9 = IOServiceOpen(v6, *MEMORY[0x29EDCA6B0], 0, &self->_driverNotifyQueue + 1);
      if (v9)
      {
        v19 = (__osLog ? __osLog : MEMORY[0x29EDCA988]);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = v27;
          v34 = "err == 0 ";
          v35 = 2048;
          v36 = v9;
          v37 = 2080;
          v38 = &unk_296D32C0B;
          v39 = 2080;
          v40 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
          v41 = 1024;
          v42 = 655;
          _os_log_impl(&dword_296CA4000, v19, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }
      }

      self->_services = 0;
      v10 = IOServiceAddInterestNotification(self->super._reporter, v6, "IOGeneralInterest", __serviceStatus, self, &self->_services);
      if (v10)
      {
        v20 = (__osLog ? __osLog : MEMORY[0x29EDCA988]);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = v27;
          v34 = "err == 0 ";
          v35 = 2048;
          v36 = v10;
          v37 = 2080;
          v38 = &unk_296D32C0B;
          v39 = 2080;
          v40 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
          v41 = 1024;
          v42 = 677;
          _os_log_impl(&dword_296CA4000, v20, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }
      }

      IOObjectRelease(v6);
      [(BiometricKitXPCServerPearl *)self getCommProtocolVersion];
      v11 = [(BiometricKitXPCServerPearl *)self initializeEngineWithOptions:BYTE1(self->_log)];
      if (v11)
      {
        v21 = (__osLog ? __osLog : MEMORY[0x29EDCA988]);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = v27;
          v34 = "[self initializeEngineWithOptions:(_inDiagnosticMode ? kInitEngineOptionSkipMemoryAllocation : kInitEngineOptionNone)] == 0 ";
          v35 = 2048;
          v36 = v11;
          v37 = 2080;
          v38 = &unk_296D32C0B;
          v39 = 2080;
          v40 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
          v41 = 1024;
          v42 = 684;
          _os_log_impl(&dword_296CA4000, v21, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }
      }

      [(BiometricKitXPCServer *)self cacheCatacombInfo:v27];
      v12 = dispatch_get_global_queue(0, 0);
      block[0] = v8;
      block[1] = 3221225472;
      block[2] = __43__BiometricKitXPCServerPearl_serviceMatch___block_invoke;
      block[3] = &unk_29EE54570;
      block[4] = self;
      dispatch_async(v12, block);

      [(BiometricKitXPCServerPearl *)self performCancelCommand];
      if (BYTE1(self->_log) == 1)
      {
        [(BiometricKitXPCServerPearl *)self performNoCatacombCommand:0xFFFFFFFFLL];
        [(BiometricKitXPCServer *)self setCatacombFileAccessed:0];
      }

      else if (isEphemeralMultiUser())
      {
        [(BiometricKitXPCServer *)self syncTemplateListForUser:0xFFFFFFFFLL];
        [(BiometricKitXPCServer *)self setCatacombFileAccessed:1];
      }

      else
      {
        if ([(BiometricKitXPCServer *)self isClassCFileAccessible])
        {
          [(BiometricKitXPCServer *)self setCatacombFileAccessed:1];
          v13 = [(BiometricKitXPCServerPearl *)self restoreAndSyncTemplates];
          if (!v13)
          {
            goto LABEL_23;
          }

          v14 = (__osLog ? __osLog : MEMORY[0x29EDCA988]);
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          *buf = v27;
          v34 = "err == 0 ";
          v35 = 2048;
          v36 = v13;
          v37 = 2080;
          v38 = &unk_296D32C0B;
          v39 = 2080;
          v40 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
          v41 = 1024;
          v42 = 718;
          v15 = v14;
        }

        else
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterAddObserver(DarwinNotifyCenter, self, __firstUnlockCallback, @"com.apple.mobile.keybagd.first_unlock", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
          [(BiometricKitXPCServer *)self setTemplatesAtBoot:[(BiometricKitXPCServer *)self templatesExistAtBoot]];
          v17 = [(BiometricKitXPCServerPearl *)self performCommand:23 inValue:[(BiometricKitXPCServer *)self templatesAtBoot] inData:0 inSize:0 outData:0 outSize:0];
          if (!v17)
          {
            goto LABEL_23;
          }

          v22 = (__osLog ? __osLog : MEMORY[0x29EDCA988]);
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          *buf = v27;
          v34 = "err == 0 ";
          v35 = 2048;
          v36 = v17;
          v37 = 2080;
          v38 = &unk_296D32C0B;
          v39 = 2080;
          v40 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
          v41 = 1024;
          v42 = 730;
          v15 = v22;
        }

        _os_log_impl(&dword_296CA4000, v15, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

LABEL_23:
      [(BiometricKitXPCServer *)self displayStateChanged:[(BiometricKitXPCServer *)self isDisplayOn]];
      [(BiometricKitXPCServer *)self postGeneralLockoutStateNotification];
      [(BiometricKitXPCServer *)self updateEnrollmentChangedNotification:1];
      if (__osLog)
      {
        v18 = __osLog;
      }

      else
      {
        v18 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_296CA4000, v18, OS_LOG_TYPE_DEFAULT, "serviceMatch: initialized\n", buf, 2u);
      }

      v6 = IOIteratorNext(a3);
    }

    while (v6);
  }

  v23 = [MEMORY[0x29EDBFD50] sharedInstance];
  [v23 synchronize];

  [(BiometricKitXPCServerPearl *)self updateLoggingState];
  [(BiometricKitXPCServerPearl *)self updateAutoRetryMode];
  [(BiometricKitXPCServerPearl *)self updateCombinedSequenceMode];
  [(BiometricKitXPCServerPearl *)self updateCoachingHintsEnabled];
  [(BiometricKitXPCServerPearl *)self updateEntitlementOverrideFlags];
  objc_initWeak(buf, self);
  v24 = *&self->_logSequenceDebug;
  v30[0] = MEMORY[0x29EDCA5F8];
  v30[1] = 3221225472;
  v30[2] = __43__BiometricKitXPCServerPearl_serviceMatch___block_invoke_258;
  v30[3] = &unk_29EE545B8;
  objc_copyWeak(&v31, buf);
  [v24 setAnalyticsPerformCommandBlock:v30];
  [*&self->_logSequenceDebug serviceMatchWithServer:self];
  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
  objc_autoreleasePoolPop(context);
  if (__osLogTrace)
  {
    v25 = __osLogTrace;
  }

  else
  {
    v25 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v25, OS_LOG_TYPE_DEFAULT, "serviceMatch: -> void\n", buf, 2u);
  }

  v26 = *MEMORY[0x29EDCA608];
}

uint64_t __43__BiometricKitXPCServerPearl_serviceMatch___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[321] & 1) == 0)
  {
    [v2 loadSavageFWCertificate];
    [*(a1 + 32) loadCalibrationData];
    [*(a1 + 32) loadDCNKernels];
    v2 = *(a1 + 32);
  }

  if ([v2 identitiesCount])
  {
    [*(a1 + 32) syncTemplateListForUser:0xFFFFFFFFLL];
  }

  v3 = *(a1 + 32);

  return [v3 verifyDisplayTrust];
}

uint64_t __43__BiometricKitXPCServerPearl_serviceMatch___block_invoke_258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = [WeakRetained performCommand:a2 inValue:a3 inData:a4 inSize:a5 outData:a6 outSize:a7];

  return v14;
}

- (void)firstUnlockCallback
{
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "firstUnlockCallback\n", buf, 2u);
  }

  [(BiometricKitXPCServer *)self setTemplatesAtBoot:0];
  [(BiometricKitXPCServerPearl *)self restoreAndSyncTemplates];
  [(BiometricKitXPCServer *)self updateEnrollmentChangedNotification:0];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = v3;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "firstUnlockCallback -> void\n", v6, 2u);
  }
}

void __75__BiometricKitXPCServerPearl_serviceStatus_version_ordinal_data_timestamp___block_invoke_263(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 40) logKernelMessage:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void __75__BiometricKitXPCServerPearl_serviceStatus_version_ordinal_data_timestamp___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 40) analyticsKernelMessage:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

- (void)updateAutoRetryMode
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)updateCombinedSequenceMode
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)updateEntitlementOverrideFlags
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)updateCoachingHintsEnabled
{
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "updateCoachingHintsEnabled\n", buf, 2u);
  }

  v5 = [MEMORY[0x29EDBFD50] sharedInstance];
  LOBYTE(self->_sigTERMDispatchSource) = [v5 BOOLForKey:@"coachingHintsEnabled"];

  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = v3;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "updateCoachingHintsEnabled -> void\n", v7, 2u);
  }
}

- (void)updateLoggingState
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void __48__BiometricKitXPCServerPearl_updateLoggingState__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 408) & 1) == 0)
  {
    if ((*(a1 + 40) & 0x8200) == 0)
    {
      *(v2 + 409) = 0;
      [*(*(a1 + 32) + 376) stopDeviceOrientationUpdates];
      v3 = 0;
      goto LABEL_7;
    }

    if (!*(v2 + 376) && [MEMORY[0x29EDB93B0] isAvailable])
    {
      v3 = objc_alloc_init(MEMORY[0x29EDB93B0]);
LABEL_7:
      v4 = *(a1 + 32);
      v5 = *(v4 + 376);
      *(v4 + 376) = v3;
    }
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 384);
  if ((*(a1 + 40) & 0x200) == 0)
  {
    [v7 stopDeviceMotionUpdates];
    v8 = 0;
    v9 = 384;
LABEL_10:
    v10 = *(a1 + 32);
    v11 = *(v10 + v9);
    *(v10 + v9) = v8;

    goto LABEL_17;
  }

  if (!v7)
  {
    v12 = objc_alloc_init(MEMORY[0x29EDB93C0]);
    v13 = *(a1 + 32);
    v14 = *(v13 + 384);
    *(v13 + 384) = v12;

    v15 = [*(*(a1 + 32) + 384) isDeviceMotionAvailable];
    v6 = *(a1 + 32);
    if ((v15 & 1) == 0)
    {
      v16 = *(v6 + 384);
      *(v6 + 384) = 0;

      v6 = *(a1 + 32);
    }
  }

  v9 = 392;
  if (!*(v6 + 392) && [MEMORY[0x29EDB93B8] isActivityAvailable])
  {
    v8 = objc_alloc_init(MEMORY[0x29EDB93B8]);
    goto LABEL_10;
  }

LABEL_17:
  v17 = *(a1 + 32);
  if (v17[47] || v17[48])
  {
    v18 = [v17 ongoingBiometricOperation];
    v19[0] = MEMORY[0x29EDCA5F8];
    v19[1] = 3221225472;
    v19[2] = __48__BiometricKitXPCServerPearl_updateLoggingState__block_invoke_2;
    v19[3] = &unk_29EE54658;
    v19[4] = *(a1 + 32);
    [v18 setActivityUpdateBlock:v19];
  }
}

void __48__BiometricKitXPCServerPearl_updateLoggingState__block_invoke_5(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 376) deviceOrientationBlocking];
  *(*(a1 + 32) + 416) = [v2 orientation];

  v3 = [*(*(a1 + 32) + 384) deviceMotion];
  v4 = [v3 attitude];
  v5 = *(a1 + 32);
  v6 = *(v5 + 424);
  *(v5 + 424) = v4;

  v7 = *(a1 + 32);
  v8 = (v7 + 432);
  v9 = [*(v7 + 384) deviceMotion];
  [v9 rotationRate];
  *v8 = v10;
  v8[1] = v11;
  v8[2] = v12;

  v13 = *(a1 + 32);
  v14 = (v13 + 456);
  v15 = [*(v13 + 384) deviceMotion];
  [v15 userAcceleration];
  *v14 = v16;
  v14[1] = v17;
  v14[2] = v18;

  v19 = *(a1 + 32);
  v20 = (v19 + 480);
  v21 = [*(v19 + 384) deviceMotion];
  [v21 gravity];
  *v20 = v22;
  v20[1] = v23;
  v20[2] = v24;

  v25 = *(a1 + 32);
  if ((*(v25 + 408) & 1) == 0)
  {
    *(v25 + 409) = 0;
    [*(*(a1 + 32) + 376) stopDeviceOrientationUpdates];
    v25 = *(a1 + 32);
  }

  [*(v25 + 384) stopDeviceMotionUpdates];
  v26 = kSpringBoardBundleIdentifier_block_invoke_motionTransaction;
  kSpringBoardBundleIdentifier_block_invoke_motionTransaction = 0;
}

- (void)handleSharedMemoryTransfer:(unsigned int)a3 withHeader:(id)a4 data:(id)a5
{
  v12 = a4;
  v8 = a5;
  v9 = v8;
  if (a3 == 2)
  {
    pearlDeviceState = self->_pearlDeviceState;
    v11 = [v8 firstObject];
    [pearlDeviceState logFrameDebug:v12 withBuffer:v11];
  }

  else if (a3 == 1)
  {
    [self->_pearlDeviceState logCameraFrame:v12 withBuffers:v8];
  }
}

void __58__BiometricKitXPCServerPearl_logSequenceDebugWithContext___block_invoke(uint64_t a1)
{
  if (MEMORY[0x29C2622A0](*(*(a1 + 32) + 284), 2, *MEMORY[0x29EDCA6B0], *(a1 + 40)))
  {
    __58__BiometricKitXPCServerPearl_logSequenceDebugWithContext___block_invoke_cold_1();
  }
}

- (id)deviceAttitude
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  motionActivityManager = self->_motionActivityManager;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __44__BiometricKitXPCServerPearl_deviceAttitude__block_invoke;
  v5[3] = &unk_29EE546D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(&motionActivityManager->super, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __44__BiometricKitXPCServerPearl_deviceAttitude__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 384) isDeviceMotionActive];
  v3 = *(a1 + 32);
  if (v2)
  {
    [*(v3 + 384) deviceMotion];
    v4 = [objc_claimAutoreleasedReturnValue() attitude];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v3 + 424);
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  return MEMORY[0x2A1C71028]();
}

- ($1AB5FA073B851C12C2339EC22442E995)deviceRotationRate
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3810000000;
  v13 = "";
  v14 = 0;
  v15 = 0;
  v16 = 0;
  motionActivityManager = self->_motionActivityManager;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __48__BiometricKitXPCServerPearl_deviceRotationRate__block_invoke;
  block[3] = &unk_29EE546D0;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(&motionActivityManager->super, block);
  v3 = v11[4];
  v4 = v11[5];
  v5 = v11[6];
  _Block_object_dispose(&v10, 8);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  result.var2 = v8;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

__n128 __48__BiometricKitXPCServerPearl_deviceRotationRate__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 384) isDeviceMotionActive])
  {
    v10 = [*(*(a1 + 32) + 384) deviceMotion];
    [v10 rotationRate];
    v2 = *(*(a1 + 40) + 8);
    v2[4] = v3;
    v2[5] = v4;
    v2[6] = v5;
  }

  else
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = (*(a1 + 32) + 432);
    v9 = *(*(a1 + 32) + 448);
    result = *v8;
    v7[2] = *v8;
    v7[3].n128_u64[0] = v9;
  }

  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)deviceUserAcceleration
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3810000000;
  v13 = "";
  v14 = 0;
  v15 = 0;
  v16 = 0;
  motionActivityManager = self->_motionActivityManager;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __52__BiometricKitXPCServerPearl_deviceUserAcceleration__block_invoke;
  block[3] = &unk_29EE546D0;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(&motionActivityManager->super, block);
  v3 = v11[4];
  v4 = v11[5];
  v5 = v11[6];
  _Block_object_dispose(&v10, 8);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  result.var2 = v8;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

__n128 __52__BiometricKitXPCServerPearl_deviceUserAcceleration__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 384) isDeviceMotionActive])
  {
    v10 = [*(*(a1 + 32) + 384) deviceMotion];
    [v10 userAcceleration];
    v2 = *(*(a1 + 40) + 8);
    v2[4] = v3;
    v2[5] = v4;
    v2[6] = v5;
  }

  else
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = (*(a1 + 32) + 456);
    v9 = *(*(a1 + 32) + 472);
    result = *v8;
    v7[2] = *v8;
    v7[3].n128_u64[0] = v9;
  }

  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)deviceGravity
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3810000000;
  v13 = "";
  v14 = 0;
  v15 = 0;
  v16 = 0;
  motionActivityManager = self->_motionActivityManager;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __43__BiometricKitXPCServerPearl_deviceGravity__block_invoke;
  block[3] = &unk_29EE546D0;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(&motionActivityManager->super, block);
  v3 = v11[4];
  v4 = v11[5];
  v5 = v11[6];
  _Block_object_dispose(&v10, 8);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  result.var2 = v8;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

__n128 __43__BiometricKitXPCServerPearl_deviceGravity__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 384) isDeviceMotionActive])
  {
    v10 = [*(*(a1 + 32) + 384) deviceMotion];
    [v10 gravity];
    v2 = *(*(a1 + 40) + 8);
    v2[4] = v3;
    v2[5] = v4;
    v2[6] = v5;
  }

  else
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = (*(a1 + 32) + 480);
    v9 = *(*(a1 + 32) + 496);
    result = *v8;
    v7[2] = *v8;
    v7[3].n128_u64[0] = v9;
  }

  return result;
}

- (void)logKernelMessage:(id)a3
{
  v46 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = MEMORY[0x29EDCA988];
  if (__osLog)
  {
    v6 = __osLog;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "logKernelMessage: %@\n", buf, 0xCu);
  }

  if ([v4 length] < 0x23)
  {
    if (__osLog)
    {
      v16 = __osLog;
    }

    else
    {
      v16 = v5;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_296CA4000, v16, OS_LOG_TYPE_ERROR, "logKernelMessage: NO DATA!\n", buf, 2u);
    }
  }

  else
  {
    v7 = [v4 bytes];
    v8 = v7;
    v9 = *v7;
    if (*v7 <= 2)
    {
      if (!v9)
      {
        pearlDeviceState = self->_pearlDeviceState;
        v11 = [MEMORY[0x29EDB8DA0] dataWithBytes:v7 + 35 length:*(v7 + 31)];
        [pearlDeviceState logData:v11 withContext:v8 + 1];
        goto LABEL_24;
      }

      if (v9 == 2)
      {
        v17 = self->_pearlDeviceState;
        v11 = [MEMORY[0x29EDB8DA0] dataWithBytes:v7 + 35 length:*(v7 + 31)];
        v12 = v8 + 1;
        v13 = v17;
        v14 = v11;
        v15 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      switch(v9)
      {
        case 3:
          v11 = [(BiometricKitXPCServer *)self identities];
          v18 = [(BiometricKitXPCServerPearl *)self deviceAttitude];
          [(BiometricKitXPCServerPearl *)self deviceRotationRate];
          v20 = v19;
          v22 = v21;
          [(BiometricKitXPCServerPearl *)self deviceUserAcceleration];
          v24 = v23;
          v26 = v25;
          [(BiometricKitXPCServerPearl *)self deviceGravity];
          v28 = v27;
          v30 = v29;
          *buf = [(BiometricKitXPCServerPearl *)self deviceOrientation];
          [v18 roll];
          *&buf[8] = v31;
          [v18 yaw];
          *&buf[24] = v32;
          [v18 pitch];
          *&buf[16] = v33;
          *&buf[32] = v20;
          *&buf[40] = v22;
          *&buf[48] = v22;
          *&buf[56] = v24;
          *&buf[64] = v26;
          *&buf[72] = v26;
          v43 = v28;
          v44 = v30;
          v45 = v30;
          v34 = self->_pearlDeviceState;
          v35 = [MEMORY[0x29EDB8DA0] dataWithBytes:v8 + 35 length:*(v8 + 31)];
          [v34 logSequenceInfo:v35 withContext:v8 + 1 orientation:buf identities:v11];

          [(BiometricKitXPCServerPearl *)self logSequenceDebugWithContext:v8 + 1];
          goto LABEL_24;
        case 8:
          memset(&buf[12], 0, 67);
          *buf = *(v7 + 1);
          *&buf[8] = *(v7 + 14);
          *&buf[10] = *(v7 + 6);
          buf[14] = *(v7 + 30);
          buf[15] = *(v7 + 14);
          v36 = *(v7 + 5);
          *&buf[23] = *(v7 + 27);
          *&buf[16] = v36;
          v37 = self->_pearlDeviceState;
          v38 = [MEMORY[0x29EDB8DA0] dataWithBytes:v7 + 35 length:*(v7 + 31)];
          [v37 logCameraFrame:buf sensorRawData:0 metaData:v38];

          goto LABEL_25;
        case 10:
          v10 = self->_pearlDeviceState;
          v11 = [MEMORY[0x29EDB8DA0] dataWithBytes:v7 + 35 length:*(v7 + 31)];
          v12 = v8 + 1;
          v13 = v10;
          v14 = v11;
          v15 = 1;
LABEL_20:
          [v13 logTemplateList:v14 withContext:v12 isPO:v15];
LABEL_24:

          goto LABEL_25;
      }
    }

    NSLog(&cfstr_BiologWarningU.isa, *v7, *(v7 + 31));
  }

LABEL_25:
  if (__osLog)
  {
    v40 = __osLog;
  }

  else
  {
    v40 = v5;
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v40, OS_LOG_TYPE_DEBUG, "logKernelMessage: -> void\n", buf, 2u);
  }

  v41 = *MEMORY[0x29EDCA608];
}

- (void)analyticsKernelMessage:(id)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = MEMORY[0x29EDCA988];
  if (__osLog)
  {
    v6 = __osLog;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v17 = 67109120;
    v18 = v4 != 0;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "analyticsKernelMessage: %d\n", &v17, 8u);
  }

  v7 = [(BiometricKitXPCServerPearl *)self deviceOrientation];
  if ([v4 length] > 0x22)
  {
    v8 = [v4 bytes];
    v9 = [MEMORY[0x29EDB8DA0] dataWithBytesNoCopy:v8 + 35 length:*(v8 + 31) freeWhenDone:0];
    v10 = *v8;
    if (*v8 <= 1002)
    {
      if (v10 == 1001)
      {
        v11 = [(BiometricKitXPCServer *)self identities];
        [*&self->_logSequenceDebug sendMatchEventAnalytics:v9 orientation:v7 identities:v11];

        goto LABEL_24;
      }

      if (v10 == 1002)
      {
        [*&self->_logSequenceDebug sendEnrollEventAnalytics:v9 orientation:v7];
        goto LABEL_23;
      }
    }

    else
    {
      switch(v10)
      {
        case 1003:
          [*&self->_logSequenceDebug sendFaceDetectEventAnalytics:v9 fromMatch:0 orientation:v7];
          goto LABEL_23;
        case 1004:
          [*&self->_logSequenceDebug sendPasscodeChallengeEventAnalytics:v9 orientation:v7];
          goto LABEL_23;
        case 1005:
          [*&self->_logSequenceDebug sendBioLockoutEventAnalytics:v9];
LABEL_23:

          goto LABEL_24;
      }
    }

    if (__osLog)
    {
      v12 = __osLog;
    }

    else
    {
      v12 = v5;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *v8;
      v14 = *(v8 + 31);
      v17 = 67109376;
      v18 = v13;
      v19 = 1024;
      v20 = v14;
      _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_ERROR, "analyticsKernelMessage: Unknown kernel analytics message (%d) received! (Length: %u)\n", &v17, 0xEu);
    }

    goto LABEL_23;
  }

  [BiometricKitXPCServerPearl analyticsKernelMessage:];
LABEL_24:
  if (__osLog)
  {
    v15 = __osLog;
  }

  else
  {
    v15 = v5;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_296CA4000, v15, OS_LOG_TYPE_DEBUG, "analyticsKernelMessage: -> void\n", &v17, 2u);
  }

  v16 = *MEMORY[0x29EDCA608];
}

- (void)registerForLiftToWakeNotifications:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12[0] = 67109120;
    v12[1] = v3;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "registerForLiftToWakeNotifications: %d\n", v12, 8u);
  }

  if (v3 && [MEMORY[0x29EDB93E0] isWakeGestureAvailable])
  {
    v7 = [MEMORY[0x29EDB93E0] sharedManager];
    analyticsDispatchQueue = self->_analyticsDispatchQueue;
    self->_analyticsDispatchQueue = v7;

    [(OS_dispatch_queue *)self->_analyticsDispatchQueue setDelegate:self];
    [(OS_dispatch_queue *)self->_analyticsDispatchQueue startWakeGestureUpdates];
  }

  else
  {
    [(OS_dispatch_queue *)self->_analyticsDispatchQueue stopWakeGestureUpdates];
    [(OS_dispatch_queue *)self->_analyticsDispatchQueue setDelegate:0];
    v9 = self->_analyticsDispatchQueue;
    self->_analyticsDispatchQueue = 0;
  }

  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "registerForLiftToWakeNotifications: -> void\n", v12, 2u);
  }

  v11 = *MEMORY[0x29EDCA608];
}

- (void)wakeGestureManager:(id)a3 didUpdateWakeGesture:(int64_t)a4
{
  v16 = *MEMORY[0x29EDCA608];
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
    objc_sync_enter(v7);
    v8 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
    v9 = [v8 firstObject];
    v10 = [v9 type];

    objc_sync_exit(v7);
    v11 = MEMORY[0x29EDCA988];
    if (__osLog)
    {
      v12 = __osLog;
    }

    else
    {
      v12 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15[0] = 67109120;
      v15[1] = v10 == 2;
      _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_DEBUG, "wakeGestureManager:didUpdateWakeGesture: CMWakeGestureStateDetected, matchRunning = %u\n", v15, 8u);
    }

    if (v10 == 2)
    {
      if (__osLog)
      {
        v13 = __osLog;
      }

      else
      {
        v13 = v11;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15[0]) = 0;
        _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_DEFAULT, "wakeGestureManager:didUpdateWakeGesture: CMWakeGestureStateDetected -> start new match attempt\n", v15, 2u);
      }

      if ([(BiometricKitXPCServerPearl *)self performCommand:33 inValue:0 inData:0 inSize:0 outData:0 outSize:0])
      {
        [BiometricKitXPCServerPearl wakeGestureManager:didUpdateWakeGesture:];
      }
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

- (void)donateBiomeEvent:(id)a3
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = a3;
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "donateBiomeEvent: %@\n", buf, 0xCu);
  }

  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __47__BiometricKitXPCServerPearl_donateBiomeEvent___block_invoke;
  block[3] = &unk_29EE54570;
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, block);

  v7 = *MEMORY[0x29EDCA608];
}

void __47__BiometricKitXPCServerPearl_donateBiomeEvent___block_invoke(uint64_t a1)
{
  v6 = os_transaction_create();
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x29EDBFD48] discoverabilitySignal];
  v4 = [v3 source];

  v5 = [objc_alloc(MEMORY[0x29EDBFD40]) initWithIdentifier:*(a1 + 32) bundleID:@"com.apple.biometrickitd" context:0];
  [v4 sendEvent:v5];

  objc_autoreleasePoolPop(v2);
}

- (void)enrollResult:(id)a3 withTimestamp:(unint64_t)a4
{
  v28 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = v6;
    v24 = 2112;
    v25 = v6;
    v26 = 2048;
    v27 = a4;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "enrollResult:withTimestamp: %p(%@) %llu\n", buf, 0x20u);
  }

  if ([v6 length] <= 0x19)
  {
    [BiometricKitXPCServerPearl enrollResult:withTimestamp:];
    goto LABEL_35;
  }

  v9 = v6;
  v10 = [v6 bytes];
  if (*(v10 + 24))
  {
    v11 = [(BiometricKitXPCServer *)self getIdentityObject:v10];
    if (!v11)
    {
      [BiometricKitXPCServerPearl enrollResult:withTimestamp:];
LABEL_35:
      v18 = v22;
      v11 = *buf;
      goto LABEL_28;
    }
  }

  else
  {
    v11 = [MEMORY[0x29EDBFD58] biometricKitIdentity];
    v12 = [objc_alloc(MEMORY[0x29EDBA140]) initWithUUIDBytes:v10 + 1];
    [v11 setUuid:v12];

    [v11 setType:4];
    [v11 setUserID:*v10];
    [v11 setAttribute:0];
    [v11 setEntity:0];
    v13 = [MEMORY[0x29EDB8DB0] date];
    [v11 setCreationTime:v13];

    [(BiometricKitXPCServer *)self addIdentityObject:v11];
  }

  [v11 setFlags:v10[5]];
  if (*(v10 + 24))
  {
    [(BiometricKitXPCServerPearl *)self updatePropertiesOfIdentities];
  }

  if (*(v10 + 25))
  {
    v14 = &unk_2A1E039A8;
  }

  else
  {
    v14 = 0;
  }

  [(BiometricKitXPCServer *)self saveCatacomb];
  if (v11)
  {
    [(BiometricKitXPCServer *)self setGracePeriod:0];
    if (!*(v10 + 24))
    {
      [(BiometricKitXPCServerPearl *)self donateBiomeEvent:@"com.apple.faceid.enrolled"];
    }
  }

  [(BiometricKitXPCServer *)self updateEnrollmentChangedNotification:1];
  v15 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  objc_sync_enter(v15);
  v16 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  v17 = [v16 firstObject];
  v18 = [v17 client];

  objc_sync_exit(v15);
  if (v18 && [v18 delegateRegistered] && (objc_msgSend(v18, "clientAppIsBackground") & 1) == 0)
  {
    [v18 enrollResult:v11 details:v14];
    v19 = (__osLog ? __osLog : v7);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v18;
      _os_log_impl(&dword_296CA4000, v19, OS_LOG_TYPE_DEFAULT, "sending enroll result to %@\n", buf, 0xCu);
    }
  }

  [(BiometricKitXPCServer *)self switchToNextBioOperation:1];
LABEL_28:
  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v7;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v18;
    _os_log_impl(&dword_296CA4000, v20, OS_LOG_TYPE_DEBUG, "enrollResult:withTimestamp: -> void (_ %@)\n", buf, 0xCu);
  }

  v21 = *MEMORY[0x29EDCA608];
}

- (void)enrollUpdate:(id)a3 withTimestamp:(unint64_t)a4
{
  v31 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    v29 = 2048;
    v30 = a4;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "enrollUpdate:withTimestamp: %p(%@) %llu\n", buf, 0x20u);
  }

  if (!v6)
  {
    [BiometricKitXPCServerPearl enrollUpdate:withTimestamp:];
LABEL_33:
    v22 = v27;
    v18 = *buf;
    goto LABEL_22;
  }

  v9 = [v6 length];
  if (v9 <= 0x4F)
  {
    [BiometricKitXPCServerPearl enrollUpdate:withTimestamp:];
    goto LABEL_33;
  }

  v10 = v6;
  v11 = [v6 bytes];
  v12 = v11;
  if (!v11)
  {
    [BiometricKitXPCServerPearl enrollUpdate:withTimestamp:];
    goto LABEL_33;
  }

  v13 = *(v11 + 78) * *(v11 + 76);
  if (v9 < v13 + 80)
  {
    [BiometricKitXPCServerPearl enrollUpdate:withTimestamp:];
    goto LABEL_33;
  }

  v14 = malloc_type_malloc(v13 + 50, 0x245CC36EuLL);
  v15 = v14;
  if (!v14)
  {
    [BiometricKitXPCServerPearl enrollUpdate:withTimestamp:];
    goto LABEL_33;
  }

  *v14 = *v12;
  *(v14 + 1) = *(v12 + 2);
  v16 = *(v12 + 4);
  v17 = *(v12 + 20);
  *(v14 + 30) = *(v12 + 30);
  *(v14 + 20) = v17;
  *(v14 + 4) = v16;
  *(v14 + 23) = *(v12 + 76);
  *(v14 + 24) = *(v12 + 78);
  memcpy(v14 + 50, (v12 + 80), *(v12 + 78) * *(v12 + 76));
  v18 = [MEMORY[0x29EDB8DA0] dataWithBytes:v15 length:v13 + 50];
  if (v18)
  {
    v19 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
    objc_sync_enter(v19);
    v20 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
    v21 = [v20 firstObject];
    v22 = [v21 client];

    objc_sync_exit(v19);
    if (v22 && [v22 delegateRegistered] && (objc_msgSend(v22, "clientAppIsBackground") & 1) == 0)
    {
      if (__osLog)
      {
        v23 = __osLog;
      }

      else
      {
        v23 = v7;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v15[1];
        *buf = 67109378;
        *&buf[4] = v24;
        *&buf[8] = 2112;
        *&buf[10] = v22;
        _os_log_impl(&dword_296CA4000, v23, OS_LOG_TYPE_DEFAULT, "sending enroll update (progress = %d) to %@\n", buf, 0x12u);
      }

      [v22 enrollUpdate:v18];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl enrollUpdate:withTimestamp:];
    v22 = *buf;
  }

  free(v15);
LABEL_22:
  if (__osLogTrace)
  {
    v25 = __osLogTrace;
  }

  else
  {
    v25 = v7;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v22;
    _os_log_impl(&dword_296CA4000, v25, OS_LOG_TYPE_DEBUG, "enrollUpdate:withTimestamp: -> void (_ %@)\n", buf, 0xCu);
  }

  v26 = *MEMORY[0x29EDCA608];
}

- (void)enrollFeedback:(id)a3 withTimestamp:(unint64_t)a4
{
  v24 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    v22 = 2048;
    v23 = a4;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "enrollFeedback:withTimestamp: %p(%@) %llu\n", buf, 0x20u);
  }

  if (!v6)
  {
    [BiometricKitXPCServerPearl enrollFeedback:withTimestamp:];
LABEL_29:
    v11 = v20;
    v15 = *buf;
    goto LABEL_19;
  }

  if ([v6 length] <= 0x2B)
  {
    [BiometricKitXPCServerPearl enrollFeedback:withTimestamp:];
    goto LABEL_29;
  }

  v9 = v6;
  v10 = [v6 bytes];
  if (!v10)
  {
    [BiometricKitXPCServerPearl enrollFeedback:withTimestamp:];
    goto LABEL_29;
  }

  v11 = [MEMORY[0x29EDB8DA0] dataWithBytes:v10 + 2 length:42];
  if (!v11)
  {
    [BiometricKitXPCServerPearl enrollFeedback:withTimestamp:];
    goto LABEL_29;
  }

  v12 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  objc_sync_enter(v12);
  v13 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  v14 = [v13 firstObject];
  v15 = [v14 client];

  objc_sync_exit(v12);
  if (v15 && [v15 delegateRegistered] && (objc_msgSend(v15, "clientAppIsBackground") & 1) == 0)
  {
    if (__osLog)
    {
      v16 = __osLog;
    }

    else
    {
      v16 = v7;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(v10 + 3);
      *buf = 67109378;
      *&buf[4] = v17;
      *&buf[8] = 2112;
      *&buf[10] = v15;
      _os_log_impl(&dword_296CA4000, v16, OS_LOG_TYPE_DEFAULT, "sending enroll feedback (feedback = %d) to %@\n", buf, 0x12u);
    }

    [v15 enrollFeedback:v11];
  }

LABEL_19:
  if (__osLogTrace)
  {
    v18 = __osLogTrace;
  }

  else
  {
    v18 = v7;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v15;
    _os_log_impl(&dword_296CA4000, v18, OS_LOG_TYPE_DEBUG, "enrollFeedback:withTimestamp: -> void (_ %@)\n", buf, 0xCu);
  }

  v19 = *MEMORY[0x29EDCA608];
}

- (void)matchResult:(id)a3 withTimestamp:(unint64_t)a4
{
  v62 = *MEMORY[0x29EDCA608];
  v6 = a3;
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *v60 = v6;
    *&v60[8] = 2048;
    v61 = a4;
    _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "matchResult:withTimestamp: %p(%@) %llu\n", buf, 0x20u);
  }

  v8 = [MEMORY[0x29EDB8E00] dictionary];
  v56[0] = 0;
  if (!v6)
  {
    [BiometricKitXPCServerPearl matchResult:withTimestamp:];
LABEL_94:
    v16 = v57;
    v51 = v56[1];
    v19 = *buf;
    goto LABEL_84;
  }

  if ([v6 length] <= 0x27)
  {
    [BiometricKitXPCServerPearl matchResult:withTimestamp:];
    goto LABEL_94;
  }

  v9 = v6;
  v10 = [v6 bytes];
  if (isInternalBuild())
  {
    v11 = *(v10 + 23);
    BKLogCode();
  }

  v12 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  objc_sync_enter(v12);
  v13 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  v14 = [v13 firstObject];

  v15 = [v14 type];
  if (v15 == 2)
  {
    v16 = v14;
    v51 = [v16 client];
  }

  else
  {
    [BiometricKitXPCServerPearl matchResult:withTimestamp:];
    v51 = v57;
    v16 = *buf;
  }

  objc_sync_exit(v12);
  if (v15 != 2)
  {
LABEL_83:
    v19 = 0;
    goto LABEL_84;
  }

  if ((*(v10 + 23) & 0x10) != 0)
  {
    v17 = [MEMORY[0x29EDBA070] numberWithBool:1];
    [v8 setObject:v17 forKeyedSubscript:@"BKMatchDetailPreArm"];
  }

  v18 = (v10 + 3);
  if (*(v10 + 3) == -1)
  {
    goto LABEL_24;
  }

  v19 = [(BiometricKitXPCServer *)self getIdentityObject:v10 + 3];
  if ([v19 userID] != *v18)
  {
    [BiometricKitXPCServerPearl matchResult:withTimestamp:];
    goto LABEL_94;
  }

  if (!v19)
  {
LABEL_24:
    v25 = [(BiometricKitXPCServer *)self identities];
    v26 = [v25 firstObject];

    if (v26)
    {
      v27 = [v26 userID];
      if (v27 != -1)
      {
        [(BiometricKitXPCServerPearl *)self getBioLockoutState:v56 forUser:v27 withClient:0];
        if ((v56[0] & 0x40) != 0)
        {
          v56[0] = v56[0] & 0xFFFFFFFFFFFFFFBBLL | 4;
        }
      }
    }

    v28 = [MEMORY[0x29EDBA070] numberWithInteger:{v56[0], v27}];
    [v8 setObject:v28 forKeyedSubscript:@"BKMatchDetailLockoutState"];

    if (LOBYTE(self->_sigTERMDispatchSource) == 1 && *(v10 + 35))
    {
      v29 = [MEMORY[0x29EDBA070] numberWithInteger:?];
      [v8 setObject:v29 forKeyedSubscript:@"BKMatchDetailFaceDetectFeedback"];
    }

    v24 = 0;
    v19 = 0;
    goto LABEL_33;
  }

  -[BiometricKitXPCServerPearl getBioLockoutState:forUser:withClient:](self, "getBioLockoutState:forUser:withClient:", v56, [v19 userID], 0);
  v20 = [MEMORY[0x29EDBA070] numberWithInteger:v56[0]];
  [v8 setObject:v20 forKeyedSubscript:@"BKMatchDetailLockoutState"];

  v21 = *(v10 + 23);
  if ((v21 & 0x20) != 0)
  {
    v22 = [MEMORY[0x29EDBA070] numberWithBool:1];
    [v8 setObject:v22 forKeyedSubscript:@"BKMatchDetailUnlocked"];

    v21 = *(v10 + 23);
  }

  if ((v21 & 0x40) != 0)
  {
    v23 = [MEMORY[0x29EDBA070] numberWithBool:1];
    [v8 setObject:v23 forKeyedSubscript:@"BKMatchDetailCredentialAdded"];

    v21 = *(v10 + 23);
  }

  if ((v21 & 0x200) == 0)
  {
    v24 = 1;
    goto LABEL_34;
  }

  v26 = [MEMORY[0x29EDBA070] numberWithBool:1];
  [v8 setObject:v26 forKeyedSubscript:@"BKMatchDetailResultIgnored"];
  v24 = 1;
LABEL_33:

LABEL_34:
  v30 = [MEMORY[0x29EDBA070] numberWithInteger:*(v10 + 27)];
  [v8 setObject:v30 forKeyedSubscript:@"BKMatchDetailPOMatchState"];

  v31 = *(v10 + 23);
  if (__osLog)
  {
    v32 = __osLog;
  }

  else
  {
    v32 = MEMORY[0x29EDCA988];
  }

  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
  if ((v31 & 0x100) != 0)
  {
    if (v33)
    {
      v40 = *v18;
      v41 = v32;
      v42 = [v19 uuid];
      *buf = 67109634;
      *&buf[4] = v24;
      *&buf[8] = 1024;
      *&buf[10] = v40;
      *v60 = 2112;
      *&v60[2] = v42;
      _os_log_impl(&dword_296CA4000, v41, OS_LOG_TYPE_DEFAULT, "Passcode Challenge match result: %d [%d:%@]\n", buf, 0x18u);
    }
  }

  else
  {
    if (v33)
    {
      *buf = 0;
      _os_log_impl(&dword_296CA4000, v32, OS_LOG_TYPE_DEFAULT, "about to send match result\n", buf, 2u);
    }

    if (v51 && [v51 delegateRegistered] && (objc_msgSend(v51, "clientAppIsBackground") & 1) == 0)
    {
      [v51 matchResult:v19 details:v8];
      v34 = (__osLog ? __osLog : MEMORY[0x29EDCA988]);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *v60 = v51;
        _os_log_impl(&dword_296CA4000, v34, OS_LOG_TYPE_DEFAULT, "sending match result %@ to %@\n", buf, 0x16u);
      }
    }

    if (v24)
    {
      BYTE2(self->_performCommandBufferData) = 0;
    }

    if ((BYTE3(self->_performCommandBufferData) & 1) == 0)
    {
      if (__osLog)
      {
        v35 = __osLog;
      }

      else
      {
        v35 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = v35;
        v37 = [v16 forUnlock];
        v38 = *(v10 + 31);
        v39 = *(v10 + 39);
        *buf = 67109632;
        *&buf[4] = v37;
        *&buf[8] = 1024;
        *&buf[10] = v38;
        *v60 = 1024;
        *&v60[2] = v39;
        _os_log_impl(&dword_296CA4000, v36, OS_LOG_TYPE_DEFAULT, "Glasses banner check: unlock:%u periocular:%u glassesDetected:%u\n", buf, 0x14u);
      }

      if (!v19)
      {
        if ([v16 forUnlock] && *(v10 + 31) && *(v10 + 39))
        {
          if ([v16 userID] == -1)
          {
            [(BiometricKitXPCServer *)self identities];
          }

          else
          {
            -[BiometricKitXPCServer identitiesOfUser:](self, "identitiesOfUser:", [v16 userID]);
          }

          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v43 = v53 = 0u;
          v44 = [v43 countByEnumeratingWithState:&v52 objects:v58 count:16];
          if (v44)
          {
            v45 = *v53;
            while (2)
            {
              for (i = 0; i != v44; ++i)
              {
                if (*v53 != v45)
                {
                  objc_enumerationMutation(v43);
                }

                if (([*(*(&v52 + 1) + 8 * i) flags] & 0x380000) != 0)
                {
                  v47 = 1;
                  goto LABEL_75;
                }
              }

              v44 = [v43 countByEnumeratingWithState:&v52 objects:v58 count:16];
              if (v44)
              {
                continue;
              }

              break;
            }
          }

          v47 = 0;
LABEL_75:

          if (__osLog)
          {
            v48 = __osLog;
          }

          else
          {
            v48 = MEMORY[0x29EDCA988];
          }

          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v47;
            _os_log_impl(&dword_296CA4000, v48, OS_LOG_TYPE_DEFAULT, "Glasses banner check: hasGlassesTemplate:%u\n", buf, 8u);
          }

          if ((v47 & 1) == 0)
          {
            BYTE2(self->_performCommandBufferData) = 1;
          }
        }

        goto LABEL_83;
      }
    }
  }

LABEL_84:
  if (__osLogTrace)
  {
    v49 = __osLogTrace;
  }

  else
  {
    v49 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v49, OS_LOG_TYPE_DEBUG, "matchResult:withTimestamp: -> void\n", buf, 2u);
  }

  v50 = *MEMORY[0x29EDCA608];
}

- (void)matchEventMessage:(id *)a3
{
  v31 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      var1 = a3->var1;
      var0 = a3->var0;
    }

    else
    {
      var1 = 0;
      var0 = 0;
    }

    *buf = 134218496;
    v26 = a3;
    v27 = 1024;
    v28 = var1;
    v29 = 2048;
    v30 = var0;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEFAULT, "matchEventMessage: %p (r=%u, ts=%llu)\n", buf, 0x1Cu);
  }

  if (a3)
  {
    v8 = [(BiometricKitXPCServer *)self allClients];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (!v9)
    {
      goto LABEL_22;
    }

    v10 = v9;
    v11 = *v21;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 clientInfo];
        v15 = [v14 objectForKeyedSubscript:@"BKClientType"];
        if ([v15 integerValue] == 2)
        {
          v16 = [v13 delegateRegistered];

          if (!v16)
          {
            continue;
          }

          v14 = [(BiometricKitXPCServer *)self createMatchEventDictionary:a3];
          [v13 statusMessage:500 details:v14];
        }

        else
        {
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v10)
      {
LABEL_22:

        v4 = MEMORY[0x29EDCA988];
        goto LABEL_23;
      }
    }
  }

  [BiometricKitXPCServerPearl matchEventMessage:];
LABEL_23:
  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = v4;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v17, OS_LOG_TYPE_DEBUG, "matchEventMessage: -> void\n", buf, 2u);
  }

  v18 = *MEMORY[0x29EDCA608];
}

- (id)detailsForFaceDetectInfo:(id *)a3
{
  v41 = *MEMORY[0x29EDCA608];
  if (__osLog)
  {
    v4 = __osLog;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v40 = a3;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "faceInfo:%p\n", buf, 0xCu);
  }

  if (a3)
  {
    LODWORD(v5) = *(&a3->var5 + 1);
    v7 = *(&a3->var6 + 1);
    v8 = *(&a3->var7 + 1);
    LOWORD(v6) = *(&a3->var2 + 1);
    v9 = v6;
    v10 = *(&a3->var4 + 1);
    v11 = *(&a3->var3 + 1);
    v12 = *(&a3->var8 + 1);
    v13 = *(&a3->var9 + 1);
    v14 = *(&a3->var10 + 1);
    v15 = *(&a3->var11 + 2);
    LOBYTE(a3) = BYTE1(a3->var11);
  }

  else
  {
    v12 = 0;
    v10 = 0;
    v11 = 0;
    v9 = 0.0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v8 = 0;
    v7 = 0;
    v5 = 0.0;
  }

  v37[0] = @"BKStatusDetailFaceDetectPitch";
  v36 = [MEMORY[0x29EDBA070] numberWithFloat:v5];
  v38[0] = v36;
  v37[1] = @"BKStatusDetailFaceDetectYaw";
  LODWORD(v16) = v7;
  v35 = [MEMORY[0x29EDBA070] numberWithFloat:v16];
  v38[1] = v35;
  v37[2] = @"BKStatusDetailFaceDetectRoll";
  LODWORD(v17) = v8;
  v18 = [MEMORY[0x29EDBA070] numberWithFloat:v17];
  v38[2] = v18;
  v37[3] = @"BKStatusDetailFaceDistance";
  *&v19 = v9;
  v20 = [MEMORY[0x29EDBA070] numberWithFloat:v19];
  v38[3] = v20;
  v37[4] = @"BKStatusDetailEyeReliefStatus";
  v21 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v11];
  v38[4] = v21;
  v37[5] = @"BKStatusDetailFaceDetectOrientation";
  v22 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v10];
  v38[5] = v22;
  v37[6] = @"BKStatusDetailFrameNumber";
  v23 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v12];
  v38[6] = v23;
  v37[7] = @"BKStatusDetailAttentionScore";
  LODWORD(v24) = v13;
  v25 = [MEMORY[0x29EDBA070] numberWithFloat:v24];
  v38[7] = v25;
  v37[8] = @"BKStatusDetailFaceDetectionScore";
  LODWORD(v26) = v14;
  v27 = [MEMORY[0x29EDBA070] numberWithFloat:v26];
  v38[8] = v27;
  v37[9] = @"BKStatusDetailFaceOcclusionState";
  v28 = [MEMORY[0x29EDBA070] numberWithBool:a3 & 1];
  v38[9] = v28;
  v37[10] = @"BKStatusDetailFaceOcclusionScore";
  LODWORD(v29) = v15;
  v30 = [MEMORY[0x29EDBA070] numberWithFloat:v29];
  v38[10] = v30;
  v31 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v38 forKeys:v37 count:11];

  if (__osLog)
  {
    v32 = __osLog;
  }

  else
  {
    v32 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v40 = v31;
    _os_log_impl(&dword_296CA4000, v32, OS_LOG_TYPE_DEBUG, "details:%@\n", buf, 0xCu);
  }

  v33 = *MEMORY[0x29EDCA608];

  return v31;
}

- (void)faceDetectMessage:(unsigned int)a3 info:(id *)a4 fromSecureFD:(BOOL)a5
{
  v5 = a5;
  v61 = *MEMORY[0x29EDCA608];
  v7 = [MEMORY[0x29EDB8DE8] array];
  v43 = [MEMORY[0x29EDB8DE8] array];
  v42 = [MEMORY[0x29EDB8DE8] array];
  obj = [(BiometricKitXPCServer *)self bioOpsQueue];
  objc_sync_enter(obj);
  v40 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  objc_sync_enter(v40);
  v8 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  v9 = [v8 count];
  v10 = v9 != 0;

  if (v9)
  {
    v11 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
    [v7 addObjectsFromArray:v11];
  }

  v12 = [(BiometricKitXPCServer *)self bioOpsQueue];
  [v7 addObjectsFromArray:v12];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v44 = v7;
  v13 = [v44 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v13)
  {
    v14 = *v52;
    v15 = !v5;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v52 != v14)
        {
          objc_enumerationMutation(v44);
        }

        v17 = *(*(&v51 + 1) + 8 * i);
        if ([v17 type] == 3)
        {
          v18 = 1;
        }

        else
        {
          v18 = v15;
        }

        if ([v17 type] == 3)
        {
          v19 = v17;
          v20 = v19;
          if (a4->var0 && ([v19 continuous] & 1) == 0)
          {
            v21 = [v20 checked] ^ 1;
            if (a3 == 63)
            {
              v21 = 1;
            }

            v18 &= v21;
          }

          v22 = [v20 motionDetect];

          v18 &= v22 ^ 1;
        }

        if (v10 || (v18 & 1) == 0)
        {
          if ((v18 & 1) == 0)
          {
            continue;
          }
        }

        else
        {
          if ([v17 type] != 3)
          {
            goto LABEL_24;
          }

          v23 = [v17 client];
          v24 = [v23 delegateRegistered];

          if (!v24)
          {
            goto LABEL_24;
          }
        }

        v25 = [v17 client];
        v26 = [(BiometricKitXPCServerPearl *)self detailsForFaceDetectInfo:a4];
        [v25 statusMessage:a3 details:v26];

        v27 = [v17 client];
        [v43 addObject:v27];

LABEL_24:
        if (v18 && [v17 type] == 3)
        {
          v28 = v17;
          [v28 setChecked:1];
          v29 = [v28 continuous];
          if (a3 == 63)
          {
            v30 = v29;
          }

          else
          {
            v30 = 1;
          }

          if ((v30 & 1) == 0)
          {
            [v28 setFinished:1];
          }

          if (([v28 timeouted] & 1) != 0 || objc_msgSend(v28, "finished"))
          {
            [v42 insertObject:v28 atIndex:0];
          }
        }

        v10 = 0;
      }

      v13 = [v44 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v13);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v31 = v42;
  v32 = [v31 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v32)
  {
    v33 = *v48;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v48 != v33)
        {
          objc_enumerationMutation(v31);
        }

        v35 = [*(*(&v47 + 1) + 8 * j) client];
        [(BiometricKitXPCServerPearl *)self cancelWithClient:v35];
      }

      v32 = [v31 countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v32);
  }

  objc_sync_exit(v40);
  objc_sync_exit(obj);

  if (__osLog)
  {
    v36 = __osLog;
  }

  else
  {
    v36 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = v36;
    v38 = [v43 componentsJoinedByString:{@", "}];
    *buf = 67109378;
    v56 = a3;
    v57 = 2112;
    v58 = v38;
    _os_log_impl(&dword_296CA4000, v37, OS_LOG_TYPE_DEFAULT, "sending status message %u to %@\n", buf, 0x12u);
  }

  v39 = *MEMORY[0x29EDCA608];
}

- (int)performCommand:(unsigned __int16)a3 version:(unsigned __int16)a4 inValue:(unsigned __int16)a5 inData:(const void *)a6 inSize:(unint64_t)a7 outData:(char *)a8 outSize:(unint64_t *)a9
{
  v27 = a4;
  v28 = a5;
  v11 = a3;
  v45 = *MEMORY[0x29EDCA608];
  if (__osLog)
  {
    v13 = __osLog;
  }

  else
  {
    v13 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67110656;
    *&buf[4] = v11;
    v33 = 1024;
    v34 = v27;
    v35 = 1024;
    v36 = v28;
    v37 = 2048;
    v38 = a6;
    v39 = 2048;
    v40 = a7;
    v41 = 2048;
    v42 = a8;
    v43 = 2048;
    v44 = a9;
    _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_DEBUG, "performCommand:version:inValue:inData:inSize:outData:outSize: %u %u %u %p %lu %p %p\n", buf, 0x3Cu);
  }

  v26 = os_transaction_create();
  outputStructCnt = 0;
  v14 = a7 + 8;
  if (a7 >= 0xFFFFFFFFFFFFFFF8)
  {
    [BiometricKitXPCServerPearl performCommand:&v31 version:buf inValue:? inData:? inSize:? outData:? outSize:?];
    v21 = v31;
    v18 = *buf;
    goto LABEL_25;
  }

  v15 = *&self->_coachingHintsEnabled;
  objc_sync_enter(v15);
  if (v14 > [*&self->_coachingHintsEnabled length] || (self->_performCommandBufferData & 1) != 0)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v16 = 1;
    LOBYTE(self->_performCommandBufferData) = 1;
    v17 = [*&self->_coachingHintsEnabled mutableBytes];
  }

  objc_sync_exit(v15);

  if (v17)
  {
    v18 = 0;
LABEL_14:
    *v17 = 21072;
    v17[1] = v11;
    v17[2] = v27;
    v17[3] = v28;
    if (a6 && a7)
    {
      memcpy(v17 + 4, a6, a7);
    }

    if (a9)
    {
      v20 = *a9;
    }

    else
    {
      v20 = 0;
    }

    outputStructCnt = v20;
    v21 = IOConnectCallStructMethod(HIDWORD(self->_driverNotifyQueue), 0, v17, v14, a8, &outputStructCnt);
    if (a9)
    {
      *a9 = outputStructCnt;
      if ((v16 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (!v16)
    {
      goto LABEL_25;
    }

LABEL_24:
    v22 = *&self->_coachingHintsEnabled;
    objc_sync_enter(v22);
    LOBYTE(self->_performCommandBufferData) = 0;
    objc_sync_exit(v22);

    goto LABEL_25;
  }

  v18 = [MEMORY[0x29EDB8DF8] dataWithLength:a7 + 8];
  v19 = v18;
  v17 = [v18 mutableBytes];
  if (v17)
  {
    goto LABEL_14;
  }

  v21 = 12;
  if (([BiometricKitXPCServerPearl performCommand:v16 version:? inValue:? inData:? inSize:? outData:? outSize:?]& 1) != 0)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (__osLog)
  {
    v23 = __osLog;
  }

  else
  {
    v23 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v21;
    _os_log_impl(&dword_296CA4000, v23, OS_LOG_TYPE_DEBUG, "performCommand:version:inValue:inData:inSize:outData:outSize: -> %{errno}d\n", buf, 8u);
  }

  v24 = *MEMORY[0x29EDCA608];
  return v21;
}

- (int)getCommProtocolVersion
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "getCommProtocolVersion\n", &v10, 2u);
  }

  v10 = 4;
  v11 = 0;
  v12 = 1;
  if ([(BiometricKitXPCServerPearl *)self performCommand:1 inValue:0 inData:&v12 inSize:4 outData:&v11 outSize:&v10])
  {
    [BiometricKitXPCServerPearl getCommProtocolVersion];
  }

  else
  {
    if (v10 == 4)
    {
      LOWORD(self->_connect) = v11 != 0;
      if (__osLogTrace)
      {
        v5 = __osLogTrace;
      }

      else
      {
        v5 = v3;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v14 = 0;
        _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "getCommProtocolVersion -> %{errno}d\n", buf, 8u);
      }

      v6 = 0;
      goto LABEL_14;
    }

    [BiometricKitXPCServerPearl getCommProtocolVersion];
  }

  v6 = *buf;
  LOWORD(self->_connect) = 1;
  if (__osLogTrace)
  {
    v9 = __osLogTrace;
  }

  else
  {
    v9 = v3;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v14 = v6;
    _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_ERROR, "getCommProtocolVersion -> %{errno}d\n", buf, 8u);
  }

LABEL_14:
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

- (int)getSPRLInfo:(id *)a3
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = a3;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "getSPRLInfo: %p\n", buf, 0xCu);
  }

  v12 = 0;
  *buf = 4;
  if (a3)
  {
    if ([(BiometricKitXPCServerPearl *)self performCommand:37 inValue:0 inData:0 inSize:0 outData:&v12 outSize:buf])
    {
      [BiometricKitXPCServerPearl getSPRLInfo:];
    }

    else
    {
      if (*buf == 4)
      {
        *a3 = v12;
        if (__osLogTrace)
        {
          v7 = __osLogTrace;
        }

        else
        {
          v7 = v5;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *v13 = 67109120;
          v14 = 0;
          _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "getSPRLInfo: -> %{errno}d\n", v13, 8u);
        }

        v8 = 0;
        goto LABEL_15;
      }

      [BiometricKitXPCServerPearl getSPRLInfo:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl getSPRLInfo:];
  }

  v8 = *v13;
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v13 = 67109120;
    v14 = v8;
    _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_ERROR, "getSPRLInfo: -> %{errno}d\n", v13, 8u);
  }

LABEL_15:
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

- (int)restoreAndSyncTemplates
{
  v2 = self;
  v56 = *MEMORY[0x29EDCA608];
  v3 = [(BiometricKitXPCServer *)self catacombLock];
  [v3 lock];

  v48.receiver = v2;
  v48.super_class = BiometricKitXPCServerPearl;
  v4 = [(BiometricKitXPCServer *)&v48 restoreAndSyncTemplates];
  if (v4)
  {
    [BiometricKitXPCServerPearl restoreAndSyncTemplates];
    goto LABEL_29;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = [(BiometricKitXPCServer *)v2 catacombStateCache];
  v6 = [v5 cachedComponents];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (!v7)
  {
    goto LABEL_28;
  }

  v8 = v7;
  v9 = *v45;
  v10 = *MEMORY[0x29EDB9E80];
  v11 = *MEMORY[0x29EDB9E78];
  v37 = *v45;
  v38 = *MEMORY[0x29EDB9E78];
  v36 = *MEMORY[0x29EDB9E80];
  v41 = v2;
  do
  {
    v12 = 0;
    v39 = v8;
    do
    {
      if (*v45 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v44 + 1) + 8 * v12);
      v14 = [(BiometricKitXPCServer *)v2 catacomb];
      v15 = [v14 catacombDir];
      v16 = [(BiometricKitXPCServer *)v2 catacombFileNameForComponent:v13];
      v17 = [v15 stringByAppendingPathComponent:v16];

      v18 = [MEMORY[0x29EDB9FB8] defaultManager];
      v43 = 0;
      v19 = [v18 attributesOfItemAtPath:v17 error:&v43];
      v20 = v43;

      if (v19)
      {
        v21 = [v19 objectForKeyedSubscript:v10];
        v22 = [v21 isEqual:v11];

        if (v22)
        {
          v23 = v19;
          v2 = v41;
          goto LABEL_26;
        }

        v49 = v10;
        v50 = v11;
        v23 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];

        v25 = [MEMORY[0x29EDB9FB8] defaultManager];
        v42 = v20;
        v26 = [v25 setAttributes:v23 ofItemAtPath:v17 error:&v42];
        v27 = v42;

        if (__osLog)
        {
          v28 = __osLog;
        }

        else
        {
          v28 = MEMORY[0x29EDCA988];
        }

        if (v26)
        {
          v2 = v41;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v52 = v17;
            v29 = v28;
            v30 = OS_LOG_TYPE_DEFAULT;
            v31 = "Successfully updated attributes of %@\n";
            v32 = 12;
            goto LABEL_24;
          }
        }

        else
        {
          v2 = v41;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v52 = v17;
            v53 = 2112;
            v54 = v27;
            v29 = v28;
            v30 = OS_LOG_TYPE_ERROR;
            v31 = "setAttributes:ofItemAtPath:%@ failed, err = %@\n";
            v32 = 22;
LABEL_24:
            _os_log_impl(&dword_296CA4000, v29, v30, v31, buf, v32);
          }
        }

        v20 = v27;
        v10 = v36;
        v9 = v37;
        v11 = v38;
        v8 = v39;
        goto LABEL_26;
      }

      if (__osLog)
      {
        v24 = __osLog;
      }

      else
      {
        v24 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v52 = v17;
        v53 = 2112;
        v54 = v20;
        _os_log_impl(&dword_296CA4000, v24, OS_LOG_TYPE_ERROR, "attributesOfItemAtPath:%@ failed, err = %@\n", buf, 0x16u);
      }

      v23 = 0;
LABEL_26:

      ++v12;
    }

    while (v8 != v12);
    v8 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
  }

  while (v8);
LABEL_28:

  v4 = 0;
LABEL_29:
  v33 = [(BiometricKitXPCServer *)v2 catacombLock];
  [v33 unlock];

  v34 = *MEMORY[0x29EDCA608];
  return v4;
}

- (int)loadCatacombForComponent:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [BiometricKitXPCServerPearl loadCatacombForComponent:];
LABEL_9:
    v6 = v11;
    goto LABEL_6;
  }

  v10.receiver = self;
  v10.super_class = BiometricKitXPCServerPearl;
  if ([(BiometricKitXPCServer *)&v10 loadCatacombForComponent:v4])
  {
    [BiometricKitXPCServerPearl loadCatacombForComponent:];
    goto LABEL_9;
  }

  if ([v4 isUserComponent])
  {
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __55__BiometricKitXPCServerPearl_loadCatacombForComponent___block_invoke;
    block[3] = &unk_29EE546F8;
    block[4] = self;
    v9 = v4;
    dispatch_async(v5, block);
  }

  v6 = 0;
LABEL_6:

  return v6;
}

void __55__BiometricKitXPCServerPearl_loadCatacombForComponent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) userID];
  v7 = 0;
  v8 = 0;
  v4 = [v2 performGetProtectedConfigCommand:v3 outSetCfg:&v8 outEffectiveCfg:&v7];
  v5 = v8;
  v6 = v7;
  if (v4)
  {
    __55__BiometricKitXPCServerPearl_loadCatacombForComponent___block_invoke_cold_1();
  }

  else if (v5 && [v5 periocularMatchEnabled] == 1)
  {
    [*(a1 + 32) donateBiomeEvent:@"com.apple.faceid.matching-with-mask.enabled"];
  }
}

- (int)saveTemplateListAfterTemplateUpdate
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "saveTemplateListAfterTemplateUpdate\n", buf, 2u);
  }

  v5 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  objc_sync_enter(v5);
  v6 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  v7 = [v6 firstObject];

  objc_sync_exit(v5);
  if (v7 && ([v7 type] == 2 || objc_msgSend(v7, "type") == 1))
  {
    if (__osLog)
    {
      v8 = __osLog;
    }

    else
    {
      v8 = v3;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v7 type];
      *buf = 67109120;
      v18 = v10;
      _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEFAULT, "saveTemplateListAfterTemplateUpdate : save skipped (activeOperation=%u)\n", buf, 8u);
    }

    v11 = 257;
    goto LABEL_15;
  }

  v16.receiver = self;
  v16.super_class = BiometricKitXPCServerPearl;
  if ([(BiometricKitXPCServer *)&v16 saveTemplateListAfterTemplateUpdate])
  {
    [BiometricKitXPCServerPearl saveTemplateListAfterTemplateUpdate];
    v11 = *buf;
LABEL_15:
    if (__osLogTrace)
    {
      v12 = __osLogTrace;
    }

    else
    {
      v12 = v3;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v18 = v11;
      _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_ERROR, "saveTemplateListAfterTemplateUpdate -> %d\n", buf, 8u);
    }

    goto LABEL_27;
  }

  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v3;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v18 = 0;
    _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_DEBUG, "saveTemplateListAfterTemplateUpdate -> %d\n", buf, 8u);
  }

  v11 = 0;
LABEL_27:

  v14 = *MEMORY[0x29EDCA608];
  return v11;
}

- (int)updatePropertiesOfIdentities
{
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "updatePropertiesOfIdentities\n", &v16, 2u);
  }

  v17.receiver = self;
  v17.super_class = BiometricKitXPCServerPearl;
  if (![(BiometricKitXPCServer *)&v17 updatePropertiesOfIdentities])
  {
    v5 = [(BiometricKitXPCServer *)self identitiesCount];
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = [MEMORY[0x29EDB8DF8] dataWithLength:24 * v5];
    v16 = [v6 length];
    if (-[BiometricKitXPCServerPearl performCommand:inValue:inData:inSize:outData:outSize:](self, "performCommand:inValue:inData:inSize:outData:outSize:", 68, 0, 0, 0, [v6 mutableBytes], &v16))
    {
      [BiometricKitXPCServerPearl updatePropertiesOfIdentities];
    }

    else
    {
      v7 = v16;
      v8 = v16 / 0x18;
      if (!(v16 % 0x18))
      {
        v9 = [v6 mutableBytes];
        if (v7 >= 0x18)
        {
          v10 = v9;
          while (1)
          {
            v11 = [(BiometricKitXPCServer *)self getIdentityObject:v10];
            if (!v11)
            {
              break;
            }

            v12 = v11;
            [v11 setFlags:*(v10 + 20)];

            v10 += 24;
            if (!--v8)
            {
              goto LABEL_14;
            }
          }

          [BiometricKitXPCServerPearl updatePropertiesOfIdentities];
          goto LABEL_23;
        }

LABEL_14:

LABEL_15:
        v13 = 0;
        goto LABEL_16;
      }

      [BiometricKitXPCServerPearl updatePropertiesOfIdentities];
    }

LABEL_23:
    v13 = v18;

    goto LABEL_16;
  }

  [BiometricKitXPCServerPearl updatePropertiesOfIdentities];
  v13 = v16;
LABEL_16:
  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v3;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_296CA4000, v14, OS_LOG_TYPE_DEBUG, "updatePropertiesOfIdentities: -> void\n", &v16, 2u);
  }

  return v13;
}

- (int)performGetIdentitiesListCommand:(unsigned int)a3 outBuffer:(id)a4
{
  v18 = *MEMORY[0x29EDCA608];
  v6 = a4;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performGetIdentitiesListCommand: %p\n", buf, 0xCu);
  }

  v14 = 0;
  *buf = 0;
  if (v6)
  {
    v14 = a3;
    *buf = [v6 length];
    if (-[BiometricKitXPCServerPearl performCommand:inValue:inData:inSize:outData:outSize:](self, "performCommand:inValue:inData:inSize:outData:outSize:", 20, 0, &v14, 4, [v6 bytes], buf))
    {
      [BiometricKitXPCServerPearl performGetIdentitiesListCommand:outBuffer:];
    }

    else
    {
      if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *buf, 2) < 0xCCCCCCCCCCCCCCDuLL)
      {
        [v6 setLength:?];
        if (__osLogTrace)
        {
          v9 = __osLogTrace;
        }

        else
        {
          v9 = v7;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *v15 = 67109120;
          v16 = 0;
          _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "performGetIdentitiesListCommand: -> %d\n", v15, 8u);
        }

        v10 = 0;
        goto LABEL_15;
      }

      [BiometricKitXPCServerPearl performGetIdentitiesListCommand:outBuffer:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl performGetIdentitiesListCommand:outBuffer:];
  }

  v10 = *v15;
  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v7;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *v15 = 67109120;
    v16 = v10;
    _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_ERROR, "performGetIdentitiesListCommand: -> %d\n", v15, 8u);
  }

LABEL_15:

  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

- (int)performGetCatacombStateCommand:(id)a3
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = v4;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performGetCatacombStateCommand: %p\n", buf, 0xCu);
  }

  *buf = 0;
  if (v4)
  {
    *buf = [v4 length];
    if (-[BiometricKitXPCServerPearl performCommand:inValue:inData:inSize:outData:outSize:](self, "performCommand:inValue:inData:inSize:outData:outSize:", 14, 0, 0, 0, [v4 bytes], buf))
    {
      [BiometricKitXPCServerPearl performGetCatacombStateCommand:];
    }

    else
    {
      if ((buf[0] & 7) == 0)
      {
        [v4 setLength:?];
        if (__osLogTrace)
        {
          v7 = __osLogTrace;
        }

        else
        {
          v7 = v5;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v12 = 67109120;
          v13 = 0;
          _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "performGetCatacombStateCommand: -> %d\n", &v12, 8u);
        }

        v8 = 0;
        goto LABEL_15;
      }

      [BiometricKitXPCServerPearl performGetCatacombStateCommand:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl performGetCatacombStateCommand:];
  }

  v8 = v12;
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = 67109120;
    v13 = v8;
    _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_ERROR, "performGetCatacombStateCommand: -> %d\n", &v12, 8u);
  }

LABEL_15:

  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

- (int)performGetTemplatesValidityCommand:(unsigned int)a3 isValid:(BOOL *)a4
{
  v20 = *MEMORY[0x29EDCA608];
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    *&buf[4] = a3;
    v18 = 2048;
    v19 = a4;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performGetTemplatesValidityCommand: %d %p\n", buf, 0x12u);
  }

  v13 = 0;
  *buf = 1;
  v14 = a3;
  v9 = [(BiometricKitXPCServerPearl *)self performCommand:66 inValue:0 inData:&v14 inSize:4 outData:&v13 outSize:buf];
  if (v9)
  {
    [BiometricKitXPCServerPearl performGetTemplatesValidityCommand:isValid:];
  }

  else
  {
    if (*buf == 1)
    {
      if (a4)
      {
        *a4 = v13 != 0;
      }
    }

    else
    {
      [BiometricKitXPCServerPearl performGetTemplatesValidityCommand:isValid:];
    }

    if (__osLogTrace)
    {
      v10 = __osLogTrace;
    }

    else
    {
      v10 = v7;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 67109120;
      v16 = 0;
      _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "performGetTemplatesValidityCommand: -> %d\n", v15, 8u);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return v9;
}

- (int)performRemoveIdentityCommand:(id *)a3
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = a3;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performRemoveIdentityCommand: %p\n", buf, 0xCu);
  }

  memset(buf, 0, sizeof(buf));
  v15 = 0;
  if (a3)
  {
    *buf = *&a3->var0;
    v15 = *&a3->var1[12];
    if ([(BiometricKitXPCServerPearl *)self performCommand:21 inValue:0 inData:buf inSize:20 outData:0 outSize:0])
    {
      [BiometricKitXPCServerPearl performRemoveIdentityCommand:];
    }

    else
    {
      if (![(BiometricKitXPCServerPearl *)self updatePropertiesOfIdentities])
      {
        if (__osLogTrace)
        {
          v7 = __osLogTrace;
        }

        else
        {
          v7 = v5;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v12 = 67109120;
          v13 = 0;
          _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "performRemoveIdentityCommand: -> %d\n", &v12, 8u);
        }

        v8 = 0;
        goto LABEL_15;
      }

      [BiometricKitXPCServerPearl performRemoveIdentityCommand:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl performRemoveIdentityCommand:];
  }

  v8 = v12;
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = 67109120;
    v13 = v8;
    _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_ERROR, "performRemoveIdentityCommand: -> %d\n", &v12, 8u);
  }

LABEL_15:
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

- (int)performGetBiometrickitdInfoCommand:(id *)a3
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = a3;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performGetBiometrickitdInfoCommand: %p\n", buf, 0xCu);
  }

  *buf = 0;
  *&buf[8] = 0;
  *&buf[15] = 0;
  v12 = 23;
  if (a3)
  {
    if ([(BiometricKitXPCServerPearl *)self performCommand:13 inValue:0 inData:0 inSize:0 outData:buf outSize:&v12])
    {
      [BiometricKitXPCServerPearl performGetBiometrickitdInfoCommand:];
    }

    else
    {
      if (v12 == 23)
      {
        *&a3->var0 = *buf;
        *(&a3->var2 + 7) = *&buf[15];
        if (__osLogTrace)
        {
          v7 = __osLogTrace;
        }

        else
        {
          v7 = v5;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *v13 = 67109120;
          v14 = 0;
          _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "performGetBiometrickitdInfoCommand: -> %d\n", v13, 8u);
        }

        v8 = 0;
        goto LABEL_15;
      }

      [BiometricKitXPCServerPearl performGetBiometrickitdInfoCommand:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl performGetBiometrickitdInfoCommand:];
  }

  v8 = *v13;
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v13 = 67109120;
    v14 = v8;
    _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_ERROR, "performGetBiometrickitdInfoCommand: -> %d\n", v13, 8u);
  }

LABEL_15:
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

- (int)performRemoveUserDataCommand:(unsigned int)a3
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v13 = a3;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performRemoveUserDataCommand: %d\n", buf, 8u);
  }

  v11 = a3;
  v7 = [(BiometricKitXPCServerPearl *)self performCommand:22 inValue:0 inData:&v11 inSize:4 outData:0 outSize:0];
  if (v7)
  {
    [BiometricKitXPCServerPearl performRemoveUserDataCommand:];
  }

  else
  {
    if (__osLogTrace)
    {
      v8 = __osLogTrace;
    }

    else
    {
      v8 = v5;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v13 = 0;
      _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performRemoveUserDataCommand: -> %d\n", buf, 8u);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return v7;
}

- (int)performPrepareSaveCatacombCommand:(id)a3 outDataSize:(unsigned int *)a4
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = v6;
    v18 = 2048;
    v19 = a4;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performPrepareSaveCatacombCommand:outDataSize: %@, %p\n", buf, 0x16u);
  }

  v14 = 0;
  *buf = 4;
  if (v6)
  {
    HIDWORD(v14) = [v6 userID];
    if ([(BiometricKitXPCServerPearl *)self performCommand:15 inValue:0 inData:&v14 + 4 inSize:4 outData:&v14 outSize:buf])
    {
      [BiometricKitXPCServerPearl performPrepareSaveCatacombCommand:outDataSize:];
    }

    else
    {
      if (*buf == 4)
      {
        if (a4)
        {
          *a4 = v14;
        }

        if (__osLogTrace)
        {
          v9 = __osLogTrace;
        }

        else
        {
          v9 = v7;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *v15 = 67109120;
          v16 = 0;
          _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "performPrepareSaveCatacombCommand:outDataSize: -> %d\n", v15, 8u);
        }

        v10 = 0;
        goto LABEL_17;
      }

      [BiometricKitXPCServerPearl performPrepareSaveCatacombCommand:outDataSize:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl performPrepareSaveCatacombCommand:outDataSize:];
  }

  v10 = *v15;
  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v7;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *v15 = 67109120;
    v16 = v10;
    _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_ERROR, "performPrepareSaveCatacombCommand:outDataSize: -> %d\n", v15, 8u);
  }

LABEL_17:

  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

- (int)performCompleteSaveCatacombCommand:(id)a3 outBuffer:(id)a4
{
  v21 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v9 = __osLogTrace;
  }

  else
  {
    v9 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = v6;
    v19 = 2048;
    v20 = v7;
    _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "performCompleteSaveCatacombCommand:outBuffer: %@, %p\n", buf, 0x16u);
  }

  v15 = 0;
  *buf = 0;
  if (v6)
  {
    if (v7)
    {
      v15 = [v6 userID];
      *buf = [v7 length];
      if (!-[BiometricKitXPCServerPearl performCommand:inValue:inData:inSize:outData:outSize:](self, "performCommand:inValue:inData:inSize:outData:outSize:", 16, 0, &v15, 4, [v7 bytes], buf))
      {
        [v7 setLength:*buf];
        if (__osLogTrace)
        {
          v10 = __osLogTrace;
        }

        else
        {
          v10 = v8;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *v16 = 67109120;
          v17 = 0;
          _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "performCompleteSaveCatacombCommand:outBuffer: -> %d\n", v16, 8u);
        }

        v11 = 0;
        goto LABEL_15;
      }

      [BiometricKitXPCServerPearl performCompleteSaveCatacombCommand:outBuffer:];
    }

    else
    {
      [BiometricKitXPCServerPearl performCompleteSaveCatacombCommand:outBuffer:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl performCompleteSaveCatacombCommand:outBuffer:];
  }

  v11 = *v16;
  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v8;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *v16 = 67109120;
    v17 = v11;
    _os_log_impl(&dword_296CA4000, v14, OS_LOG_TYPE_ERROR, "performCompleteSaveCatacombCommand:outBuffer: -> %d\n", v16, 8u);
  }

LABEL_15:

  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

- (int)performConfirmSaveCatacombCommand:(id)a3
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performConfirmSaveCatacombCommand: %@\n", buf, 0xCu);
  }

  v12 = 0;
  if (v4)
  {
    v12 = [v4 userID];
    if (![(BiometricKitXPCServerPearl *)self performCommand:17 inValue:0 inData:&v12 inSize:4 outData:0 outSize:0])
    {
      if (__osLogTrace)
      {
        v7 = __osLogTrace;
      }

      else
      {
        v7 = v5;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v14) = 0;
        _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "performConfirmSaveCatacombCommand: -> %d\n", buf, 8u);
      }

      v8 = 0;
      goto LABEL_14;
    }

    [BiometricKitXPCServerPearl performConfirmSaveCatacombCommand:];
  }

  else
  {
    [BiometricKitXPCServerPearl performConfirmSaveCatacombCommand:];
  }

  v8 = *buf;
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v14) = v8;
    _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_ERROR, "performConfirmSaveCatacombCommand: -> %d\n", buf, 8u);
  }

LABEL_14:

  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

- (int)performNoCatacombCommand:(unsigned int)a3
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v13 = a3;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performNoCatacombCommand: %d\n", buf, 8u);
  }

  v11 = a3;
  v7 = [(BiometricKitXPCServerPearl *)self performCommand:19 inValue:0 inData:&v11 inSize:4 outData:0 outSize:0];
  if (v7)
  {
    [BiometricKitXPCServerPearl performNoCatacombCommand:];
  }

  else
  {
    if (__osLogTrace)
    {
      v8 = __osLogTrace;
    }

    else
    {
      v8 = v5;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v13 = 0;
      _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performNoCatacombCommand: -> %d\n", buf, 8u);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return v7;
}

- (int)performLoadCatacombCommand:(id)a3 inData:(id)a4
{
  v25 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v9 = __osLogTrace;
  }

  else
  {
    v9 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = v9;
    v19 = 138412802;
    v20 = v6;
    v21 = 2048;
    v22 = v7;
    v23 = 2048;
    v24 = [v7 length];
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "performLoadCatacombCommand:inData: %@, %p[%lu]\n", &v19, 0x20u);
  }

  if (v6)
  {
    v11 = -[BiometricKitXPCServerPearl performCommand:inValue:inData:inSize:outData:outSize:](self, "performCommand:inValue:inData:inSize:outData:outSize:", 18, 0, [v7 bytes], objc_msgSend(v7, "length"), 0, 0);
    v12 = 0;
    if (!v11)
    {
      goto LABEL_8;
    }

    [BiometricKitXPCServerPearl performLoadCatacombCommand:inData:];
  }

  else
  {
    [BiometricKitXPCServerPearl performLoadCatacombCommand:inData:];
  }

  v12 = v19;
LABEL_8:
  if ((v12 - 28673) >= 3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 269;
  }

  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v8;
  }

  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = 67109120;
      LODWORD(v20) = v13;
      v15 = v14;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_19:
      _os_log_impl(&dword_296CA4000, v15, v16, "performLoadCatacombCommand:inData: -> %d\n", &v19, 8u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v19 = 67109120;
    LODWORD(v20) = 0;
    v15 = v14;
    v16 = OS_LOG_TYPE_DEBUG;
    goto LABEL_19;
  }

  v17 = *MEMORY[0x29EDCA608];
  return v13;
}

- (int)performRequestMaxIdentityCountCommand:(unsigned int *)a3
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = a3;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performRequestMaxIdentityCountCommand: %p\n", buf, 0xCu);
  }

  v12 = 0;
  *buf = 4;
  if ([(BiometricKitXPCServerPearl *)self performCommand:38 inValue:0 inData:0 inSize:0 outData:&v12 outSize:buf])
  {
    [BiometricKitXPCServerPearl performRequestMaxIdentityCountCommand:];
  }

  else
  {
    if (*buf == 4)
    {
      if (a3)
      {
        *a3 = v12;
      }

      if (__osLogTrace)
      {
        v7 = __osLogTrace;
      }

      else
      {
        v7 = v5;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *v13 = 67109120;
        v14 = 0;
        _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "performRequestMaxIdentityCountCommand -> %d\n", v13, 8u);
      }

      v8 = 0;
      goto LABEL_16;
    }

    [BiometricKitXPCServerPearl performRequestMaxIdentityCountCommand:];
  }

  v8 = *v13;
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v13 = 67109120;
    v14 = v8;
    _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_ERROR, "performRequestMaxIdentityCountCommand -> %d\n", v13, 8u);
  }

LABEL_16:
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

- (int)performGetFreeIdentityCountCommand:(unsigned int)a3 outCount:(unsigned int *)a4
{
  v20 = *MEMORY[0x29EDCA608];
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    *&buf[4] = a3;
    v18 = 2048;
    v19 = a4;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performRequestMaxIdentityCountCommand: %d, %p\n", buf, 0x12u);
  }

  v13 = 0;
  v14 = a3;
  *buf = 4;
  v9 = [(BiometricKitXPCServerPearl *)self performCommand:12 inValue:0 inData:&v14 inSize:4 outData:&v13 outSize:buf];
  if (v9)
  {
    [BiometricKitXPCServerPearl performGetFreeIdentityCountCommand:outCount:];
  }

  else
  {
    if (*buf == 4)
    {
      if (a4)
      {
        *a4 = v13;
      }
    }

    else
    {
      [BiometricKitXPCServerPearl performGetFreeIdentityCountCommand:? outCount:?];
    }

    if (__osLogTrace)
    {
      v10 = __osLogTrace;
    }

    else
    {
      v10 = v7;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 67109120;
      v16 = 0;
      _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "performRequestMaxIdentityCountCommand -> %d\n", v15, 8u);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return v9;
}

- (int)performGetCatacombUUIDCommand:(unsigned int)a3 outUUID:(id *)a4
{
  v19[2] = *MEMORY[0x29EDCA608];
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    *&buf[4] = a3;
    LOWORD(v19[0]) = 2048;
    *(v19 + 2) = a4;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performGetCatacombUUIDCommand: %d, %p\n", buf, 0x12u);
  }

  *buf = 0;
  v19[0] = 0;
  v14 = 16;
  v15 = a3;
  if ([(BiometricKitXPCServerPearl *)self performCommand:24 inValue:0 inData:&v15 inSize:4 outData:buf outSize:&v14])
  {
    [BiometricKitXPCServerPearl performGetCatacombUUIDCommand:outUUID:];
  }

  else
  {
    if (v14 == 16)
    {
      if (a4)
      {
        *a4 = [objc_alloc(MEMORY[0x29EDBA140]) initWithUUIDBytes:buf];
      }

      if (__osLogTrace)
      {
        v9 = __osLogTrace;
      }

      else
      {
        v9 = v7;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v16 = 67109120;
        v17 = 0;
        _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "performGetCatacombUUIDCommand -> %d\n", v16, 8u);
      }

      v10 = 0;
      goto LABEL_16;
    }

    [BiometricKitXPCServerPearl performGetCatacombUUIDCommand:outUUID:];
  }

  v10 = *v16;
  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v7;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *v16 = 67109120;
    v17 = v10;
    _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_ERROR, "performGetCatacombUUIDCommand -> %d\n", v16, 8u);
  }

LABEL_16:
  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

- (int)performGetCatacombHashCommand:(unsigned int)a3 outHash:(id *)a4
{
  v20 = *MEMORY[0x29EDCA608];
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    *&buf[4] = a3;
    *&buf[8] = 2048;
    *&buf[10] = a4;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performGetCatacombHashCommand: %d, %p\n", buf, 0x12u);
  }

  memset(buf, 0, 33);
  v15 = 33;
  v16 = a3;
  if ([(BiometricKitXPCServerPearl *)self performCommand:25 inValue:0 inData:&v16 inSize:4 outData:buf outSize:&v15])
  {
    [BiometricKitXPCServerPearl performGetCatacombHashCommand:outHash:];
  }

  else
  {
    if (v15 == 33)
    {
      if (a4)
      {
        if (buf[0])
        {
          v9 = [MEMORY[0x29EDB8DA0] dataWithBytes:&buf[1] length:32];
        }

        else
        {
          v9 = 0;
        }

        *a4 = v9;
      }

      if (__osLogTrace)
      {
        v10 = __osLogTrace;
      }

      else
      {
        v10 = v7;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v17 = 67109120;
        v18 = 0;
        _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "performGetCatacombHashCommand -> %d\n", v17, 8u);
      }

      v11 = 0;
      goto LABEL_19;
    }

    [BiometricKitXPCServerPearl performGetCatacombHashCommand:outHash:];
  }

  v11 = *v17;
  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v7;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *v17 = 67109120;
    v18 = v11;
    _os_log_impl(&dword_296CA4000, v14, OS_LOG_TYPE_ERROR, "performGetCatacombHashCommand -> %d\n", v17, 8u);
  }

LABEL_19:
  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

- (int)performDropUnlockTokenCommand
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "performDropUnlockTokenCommand:\n", v9, 2u);
  }

  v5 = [(BiometricKitXPCServerPearl *)self performCommand:39 inValue:0 inData:0 inSize:0 outData:0 outSize:0];
  if (v5)
  {
    [BiometricKitXPCServerPearl performDropUnlockTokenCommand];
  }

  else
  {
    if (__osLogTrace)
    {
      v6 = __osLogTrace;
    }

    else
    {
      v6 = v3;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 67109120;
      v9[1] = 0;
      _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performDropUnlockTokenCommand -> %d\n", v9, 8u);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

- (int)performForceBioLockoutCommand:(unsigned int)a3
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v13 = a3;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performForceBioLockoutCommand: %d\n", buf, 8u);
  }

  v11 = a3;
  v7 = [(BiometricKitXPCServerPearl *)self performCommand:40 inValue:0 inData:&v11 inSize:4 outData:0 outSize:0];
  if (v7)
  {
    [BiometricKitXPCServerPearl performForceBioLockoutCommand:];
  }

  else
  {
    if (__osLogTrace)
    {
      v8 = __osLogTrace;
    }

    else
    {
      v8 = v5;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v13 = 0;
      _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performForceBioLockoutCommand -> %d\n", buf, 8u);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return v7;
}

- (int)performGetSKSLockStateCommand:(unsigned int)a3 outState:(unsigned int *)a4
{
  v19 = *MEMORY[0x29EDCA608];
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performGetSKSLockStateCommand: %d\n", buf, 8u);
  }

  v14 = 0;
  v15 = a3;
  *buf = 4;
  if ([(BiometricKitXPCServerPearl *)self performCommand:41 inValue:0 inData:&v15 inSize:4 outData:&v14 outSize:buf])
  {
    [BiometricKitXPCServerPearl performGetSKSLockStateCommand:outState:];
  }

  else
  {
    if (*buf == 4)
    {
      if (a4)
      {
        *a4 = v14;
      }

      if (__osLogTrace)
      {
        v9 = __osLogTrace;
      }

      else
      {
        v9 = v7;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v16 = 67109120;
        v17 = 0;
        _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "performGetSKSLockStateCommand -> %d\n", v16, 8u);
      }

      v10 = 0;
      goto LABEL_16;
    }

    [BiometricKitXPCServerPearl performGetSKSLockStateCommand:outState:];
  }

  v10 = *v16;
  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v7;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *v16 = 67109120;
    v17 = v10;
    _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_ERROR, "performGetSKSLockStateCommand -> %d\n", v16, 8u);
  }

LABEL_16:
  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

- (int)performGetLastMatchEventCommand:(id *)a3
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = a3;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performGetLastMatchEventCommand: %p\n", buf, 0xCu);
  }

  *buf = 0;
  *&buf[8] = 0;
  *&buf[21] = 0;
  *&buf[16] = 0;
  v12 = 29;
  if ([(BiometricKitXPCServerPearl *)self performCommand:65 inValue:0 inData:0 inSize:0 outData:buf outSize:&v12])
  {
    [BiometricKitXPCServerPearl performGetLastMatchEventCommand:];
  }

  else
  {
    if (v12 == 29)
    {
      if (a3)
      {
        *&a3->var0 = *buf;
        *(&a3->var2.var0 + 1) = *&buf[13];
      }

      if (__osLogTrace)
      {
        v7 = __osLogTrace;
      }

      else
      {
        v7 = v5;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *v13 = 67109120;
        v14 = 0;
        _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "performGetLastMatchEventCommand -> %d\n", v13, 8u);
      }

      v8 = 0;
      goto LABEL_16;
    }

    [BiometricKitXPCServerPearl performGetLastMatchEventCommand:];
  }

  v8 = *v13;
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v13 = 67109120;
    v14 = v8;
    _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_ERROR, "performGetLastMatchEventCommand -> %d\n", v13, 8u);
  }

LABEL_16:
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

- (int)performGetDeviceHardwareStateCommand:(unsigned int *)a3
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = a3;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performGetDeviceHardwareStateCommand: %p\n", buf, 0xCu);
  }

  *buf = 0;
  v13 = 8;
  if (BYTE1(self->_log) == 1)
  {
    [BiometricKitXPCServerPearl performGetDeviceHardwareStateCommand:];
  }

  else if ([(BiometricKitXPCServerPearl *)self performCommand:58 inValue:0 inData:0 inSize:0 outData:buf outSize:&v13])
  {
    [BiometricKitXPCServerPearl performGetDeviceHardwareStateCommand:];
  }

  else
  {
    if (v13 == 8)
    {
      if (a3)
      {
        if (*buf)
        {
          v7 = 1;
        }

        else
        {
          v7 = 2;
        }

        *a3 = v7;
      }

      if (__osLogTrace)
      {
        v8 = __osLogTrace;
      }

      else
      {
        v8 = v5;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *v14 = 67109120;
        v15 = 0;
        _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performGetDeviceHardwareStateCommand -> %d\n", v14, 8u);
      }

      v9 = 0;
      goto LABEL_20;
    }

    [BiometricKitXPCServerPearl performGetDeviceHardwareStateCommand:];
  }

  v9 = *v14;
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v5;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *v14 = 67109120;
    v15 = v9;
    _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_ERROR, "performGetDeviceHardwareStateCommand -> %d\n", v14, 8u);
  }

LABEL_20:
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

- (int)performGetProtectedConfigCommand:(unsigned int)a3 outSetCfg:(id *)a4 outEffectiveCfg:(id *)a5
{
  v28 = *MEMORY[0x29EDCA608];
  v9 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    *&buf[4] = a3;
    *&buf[8] = 2048;
    *&buf[10] = a4;
    *&buf[18] = 2048;
    *&buf[20] = a5;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "performGetProtectedConfigCommand: %d %p %p\n", buf, 0x1Cu);
  }

  v27 = 0u;
  memset(buf, 0, sizeof(buf));
  v22 = 48;
  v23 = a3;
  if ([(BiometricKitXPCServerPearl *)self performCommand:26 inValue:0 inData:&v23 inSize:4 outData:buf outSize:&v22])
  {
    [BiometricKitXPCServerPearl performGetProtectedConfigCommand:outSetCfg:outEffectiveCfg:];
    goto LABEL_25;
  }

  if (v22 != 48)
  {
    [BiometricKitXPCServerPearl performGetProtectedConfigCommand:outSetCfg:outEffectiveCfg:];
    goto LABEL_14;
  }

  if (a4)
  {
    v11 = objc_alloc_init(MEMORY[0x29EDBFD80]);
    if (!v11)
    {
      [BiometricKitXPCServerPearl performGetProtectedConfigCommand:outSetCfg:outEffectiveCfg:];
      goto LABEL_25;
    }

    v12 = v11;
    [v11 setUnlockEnabled:*buf];
    [v12 setIdentificationEnabled:*&buf[4]];
    [v12 setLoginEnabled:*&buf[8]];
    [v12 setApplePayEnabled:*&buf[12]];
    [v12 setAttentionDetectionEnabled:*&buf[16]];
    [v12 setPeriocularMatchEnabled:*&buf[20]];
    v13 = v12;
    *a4 = v12;
  }

  if (!a5)
  {
LABEL_14:
    if (__osLogTrace)
    {
      v17 = __osLogTrace;
    }

    else
    {
      v17 = v9;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *v24 = 67109120;
      v25 = 0;
      _os_log_impl(&dword_296CA4000, v17, OS_LOG_TYPE_DEBUG, "performGetProtectedConfigCommand -> %d\n", v24, 8u);
    }

    v18 = 0;
    goto LABEL_20;
  }

  v14 = objc_alloc_init(MEMORY[0x29EDBFD80]);
  if (v14)
  {
    v15 = v14;
    [v14 setUnlockEnabled:*&buf[24]];
    [v15 setIdentificationEnabled:*&buf[28]];
    [v15 setLoginEnabled:v27];
    [v15 setApplePayEnabled:DWORD1(v27)];
    [v15 setAttentionDetectionEnabled:DWORD2(v27)];
    [v15 setPeriocularMatchEnabled:HIDWORD(v27)];
    v16 = v15;
    *a5 = v15;

    goto LABEL_14;
  }

  [BiometricKitXPCServerPearl performGetProtectedConfigCommand:outSetCfg:outEffectiveCfg:];
LABEL_25:
  v18 = *v24;
  if (__osLogTrace)
  {
    v21 = __osLogTrace;
  }

  else
  {
    v21 = v9;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *v24 = 67109120;
    v25 = v18;
    _os_log_impl(&dword_296CA4000, v21, OS_LOG_TYPE_ERROR, "performGetProtectedConfigCommand -> %d\n", v24, 8u);
  }

LABEL_20:
  v19 = *MEMORY[0x29EDCA608];
  return v18;
}

- (int)performGetSystemProtectedConfigCommand:(id *)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = a3;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performGetSystemProtectedConfigCommand: %p\n", buf, 0xCu);
  }

  v20 = 0;
  *buf = 0u;
  v19 = 0u;
  v15 = 36;
  if ([(BiometricKitXPCServerPearl *)self performCommand:28 inValue:0 inData:0 inSize:0 outData:buf outSize:&v15])
  {
    [BiometricKitXPCServerPearl performGetSystemProtectedConfigCommand:];
  }

  else
  {
    if (v15 != 36)
    {
      [BiometricKitXPCServerPearl performGetSystemProtectedConfigCommand:];
      goto LABEL_11;
    }

    if (!a3)
    {
LABEL_11:
      if (__osLogTrace)
      {
        v10 = __osLogTrace;
      }

      else
      {
        v10 = v5;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v16 = 67109120;
        v17 = 0;
        _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "performGetSystemProtectedConfigCommand -> %d\n", v16, 8u);
      }

      v11 = 0;
      goto LABEL_17;
    }

    v7 = objc_alloc_init(MEMORY[0x29EDBFD78]);
    if (v7)
    {
      v8 = v7;
      [v7 setBiometryEnabled:*&buf[8]];
      [v8 setUnlockEnabled:*&buf[12]];
      [v8 setIdentificationEnabled:v19];
      [v8 setLoginEnabled:DWORD1(v19)];
      [v8 setUnlockTokenMaxLifetime:*buf];
      [v8 setBioMatchLifespan:HIDWORD(v19)];
      [v8 setPasscodeInputLifespan:v20];
      [v8 setPeriocularMatchEnabled:DWORD2(v19)];
      v9 = v8;
      *a3 = v8;

      goto LABEL_11;
    }

    [BiometricKitXPCServerPearl performGetSystemProtectedConfigCommand:];
  }

  v11 = *v16;
  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v5;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *v16 = 67109120;
    v17 = v11;
    _os_log_impl(&dword_296CA4000, v14, OS_LOG_TYPE_ERROR, "performGetSystemProtectedConfigCommand -> %d\n", v16, 8u);
  }

LABEL_17:
  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

- (int)performSetProtectedConfigCommand:(unsigned int)a3 cfg:(id)a4 authData:(id *)a5
{
  v23 = *MEMORY[0x29EDCA608];
  v8 = a4;
  v9 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    LODWORD(v18) = a3;
    WORD2(v18) = 2048;
    *(&v18 + 6) = v8;
    HIWORD(v18) = 2048;
    v19 = a5;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "performSetProtectedConfigCommand: %d %p %p\n", buf, 0x1Cu);
  }

  v22 = 0;
  v21 = 0u;
  v20 = 0u;
  *buf = a3;
  *&v18 = -1;
  *(&v18 + 1) = -1;
  v19 = -1;
  if (v8)
  {
    LODWORD(v18) = [v8 unlockEnabled];
    DWORD1(v18) = [v8 identificationEnabled];
    DWORD2(v18) = [v8 loginEnabled];
    HIDWORD(v18) = [v8 applePayEnabled];
    LODWORD(v19) = [v8 attentionDetectionEnabled];
    HIDWORD(v19) = [v8 periocularMatchEnabled];
  }

  if (a5)
  {
    v11 = *&a5->var2[8];
    v20 = *&a5->var0;
    v21 = v11;
    v22 = *&a5->var2[24];
  }

  v12 = [(BiometricKitXPCServerPearl *)self performCommand:27 inValue:0 inData:buf inSize:68 outData:0 outSize:0];
  if (v12)
  {
    [BiometricKitXPCServerPearl performSetProtectedConfigCommand:cfg:authData:];
  }

  else
  {
    if (v8 && [v8 periocularMatchEnabled] == 1)
    {
      [(BiometricKitXPCServerPearl *)self donateBiomeEvent:@"com.apple.faceid.matching-with-mask.enabled"];
    }

    if (__osLogTrace)
    {
      v13 = __osLogTrace;
    }

    else
    {
      v13 = v9;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v16[0] = 67109120;
      v16[1] = 0;
      _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_DEBUG, "performSetProtectedConfigCommand -> %d\n", v16, 8u);
    }
  }

  v14 = *MEMORY[0x29EDCA608];
  return v12;
}

- (int)performSetSystemProtectedConfigCommand:(id)a3 authData:(id *)a4
{
  v21 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performSetSystemProtectedConfigCommand: %p %p\n", buf, 0x16u);
  }

  v20 = 0;
  v19 = 0u;
  v18 = 0u;
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *buf = v9;
  *&buf[16] = v9;
  v17 = -1;
  if (v6)
  {
    *&buf[8] = [v6 biometryEnabled];
    *&buf[12] = [v6 unlockEnabled];
    *&buf[16] = [v6 identificationEnabled];
    *&buf[20] = [v6 loginEnabled];
    *buf = [v6 unlockTokenMaxLifetime];
    *&buf[28] = [v6 bioMatchLifespan];
    v17 = [v6 passcodeInputLifespan];
    *&buf[24] = [v6 periocularMatchEnabled];
  }

  if (a4)
  {
    v10 = *&a4->var2[8];
    v18 = *&a4->var0;
    v19 = v10;
    v20 = *&a4->var2[24];
  }

  v11 = [(BiometricKitXPCServerPearl *)self performCommand:29 inValue:0 inData:buf inSize:76 outData:0 outSize:0];
  if (v11)
  {
    [BiometricKitXPCServerPearl performSetSystemProtectedConfigCommand:authData:];
  }

  else
  {
    if (__osLogTrace)
    {
      v12 = __osLogTrace;
    }

    else
    {
      v12 = v7;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15[0] = 67109120;
      v15[1] = 0;
      _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_DEBUG, "performSetSystemProtectedConfigCommand -> %d\n", v15, 8u);
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v11;
}

- (int)performRequestMessageDataCommand:(unint64_t)a3 size:(unint64_t)a4 outData:(id *)a5
{
  v27 = *MEMORY[0x29EDCA608];
  v9 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    *&buf[4] = a3;
    v23 = 2048;
    v24 = a4;
    v25 = 2048;
    v26 = a5;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "performRequestMessageDataCommand:size:outData: 0x%llx %zu %p\n", buf, 0x20u);
  }

  *buf = a3;
  v19 = a4;
  v11 = [MEMORY[0x29EDB8DF8] dataWithLength:a4];
  v12 = v11;
  if (v11)
  {
    if (-[BiometricKitXPCServerPearl performCommand:inValue:inData:inSize:outData:outSize:](self, "performCommand:inValue:inData:inSize:outData:outSize:", 7, 0, buf, 8, [v11 mutableBytes], &v19))
    {
      [BiometricKitXPCServerPearl performRequestMessageDataCommand:size:outData:];
    }

    else
    {
      if (v19 == a4)
      {
        v13 = v12;
        *a5 = v12;
        if (__osLogTrace)
        {
          v14 = __osLogTrace;
        }

        else
        {
          v14 = v9;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *v20 = 67109120;
          v21 = 0;
          _os_log_impl(&dword_296CA4000, v14, OS_LOG_TYPE_DEBUG, "performRequestMessageDataCommand -> %d\n", v20, 8u);
        }

        v15 = 0;
        goto LABEL_15;
      }

      [BiometricKitXPCServerPearl performRequestMessageDataCommand:size:outData:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl performRequestMessageDataCommand:size:outData:];
  }

  v15 = *v20;
  if (__osLogTrace)
  {
    v18 = __osLogTrace;
  }

  else
  {
    v18 = v9;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *v20 = 67109120;
    v21 = v15;
    _os_log_impl(&dword_296CA4000, v18, OS_LOG_TYPE_ERROR, "performRequestMessageDataCommand -> %d\n", v20, 8u);
  }

LABEL_15:

  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

- (int)initializeEngineWithOptions:(unsigned __int16)a3
{
  v3 = a3;
  v14 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v13 = v3;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "initializeEngineWithOptions:0x%04x\n", buf, 8u);
  }

  v11 = v3;
  v7 = [(BiometricKitXPCServerPearl *)self performCommand:8 inValue:0 inData:&v11 inSize:2 outData:0 outSize:0];
  if (v7)
  {
    [BiometricKitXPCServerPearl initializeEngineWithOptions:];
  }

  else
  {
    if (__osLogTrace)
    {
      v8 = __osLogTrace;
    }

    else
    {
      v8 = v5;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v13 = 0;
      _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "initializeEngineWithOptions -> %{errno}d\n", buf, 8u);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return v7;
}

+ (void)reportPearlHardwarePass:(BOOL)a3 fallbackAction:(id)a4
{
  v4 = a3;
  v19 = *MEMORY[0x29EDCA608];
  v5 = a4;
  v6 = [MEMORY[0x29EDBFD50] sharedInstance];
  v7 = [v6 BOOLForKey:@"SuppressPearlIssuePopup"];

  v8 = v7 | v4;
  if (reportPearlHardwarePass_fallbackAction__alreadyReported != 1 || reportPearlHardwarePass_fallbackAction__lastHardwarePass != v8)
  {
    if (__osLog)
    {
      v9 = __osLog;
    }

    else
    {
      v9 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v16 = v8;
      v17 = 1024;
      v18 = v7;
      _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEFAULT, "reportPearlHardwarePass: %d, suppress: %d\n", buf, 0xEu);
    }

    reportPearlHardwarePass_fallbackAction__alreadyReported = 1;
    reportPearlHardwarePass_fallbackAction__lastHardwarePass = v8;
    v10 = dispatch_get_global_queue(0, 0);
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __69__BiometricKitXPCServerPearl_reportPearlHardwarePass_fallbackAction___block_invoke;
    v12[3] = &unk_29EE54748;
    v14 = v8;
    v13 = v5;
    dispatch_async(v10, v12);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void __69__BiometricKitXPCServerPearl_reportPearlHardwarePass_fallbackAction___block_invoke(uint64_t a1)
{
  if (objc_opt_class())
  {
    v2 = objc_alloc_init(MEMORY[0x29EDC91B0]);
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = __69__BiometricKitXPCServerPearl_reportPearlHardwarePass_fallbackAction___block_invoke_2;
    v5[3] = &unk_29EE54720;
    v7 = v3;
    v6 = *(a1 + 32);
    [v2 postComponentStatusEventFor:9 status:v4 withReply:v5];
  }
}

void __69__BiometricKitXPCServerPearl_reportPearlHardwarePass_fallbackAction___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    __69__BiometricKitXPCServerPearl_reportPearlHardwarePass_fallbackAction___block_invoke_2_cold_1(a1);
  }
}

+ (void)reportPearlInterlock:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v10 = v3;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "reportPearlInterlock: %d\n", buf, 8u);
  }

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __51__BiometricKitXPCServerPearl_reportPearlInterlock___block_invoke;
  v7[3] = &__block_descriptor_33_e5_v8__0l;
  v8 = v3;
  [a1 reportPearlHardwarePass:!v3 fallbackAction:v7];
  if (!v3)
  {
    [MEMORY[0x29EDBFD70] displayPearlInterlockIssueNotification:0];
  }

  v6 = *MEMORY[0x29EDCA608];
}

+ (void)reportPearlIssue
{
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEBUG, "reportPearlIssue\n", v4, 2u);
  }

  [a1 reportPearlHardwarePass:0 fallbackAction:&__block_literal_global_492];
}

+ (unsigned)getDeviceTreeProperty:(id)a3 fromPath:(id)a4
{
  v5 = a3;
  v6 = *MEMORY[0x29EDBB118];
  v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s%s", "IODeviceTree", objc_msgSend(a4, "UTF8String")];
  v8 = IORegistryEntryFromPath(v6, [v7 UTF8String]);

  if (v8)
  {
    CFProperty = IORegistryEntryCreateCFProperty(v8, v5, *MEMORY[0x29EDB8ED8], 0);
    if (CFProperty)
    {
      v10 = CFProperty;
      v11 = *CFDataGetBytePtr(CFProperty);
      CFRelease(v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    [BiometricKitXPCServerPearl getDeviceTreeProperty:? fromPath:?];
    v11 = v13;
  }

  return v11;
}

+ (id)getSHA384FromData:(id)a3
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = a3;
  if (v3)
  {
    ccsha384_di();
    [v3 length];
    [v3 bytes];
    ccdigest();
    v4 = [MEMORY[0x29EDB8DA0] dataWithBytes:v8 length:48];
  }

  else
  {
    +[BiometricKitXPCServerPearl getSHA384FromData:];
    v4 = v7;
  }

  v5 = *MEMORY[0x29EDCA608];

  return v4;
}

- (int)getSensorFamily:(unsigned __int8 *)a3
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "getSensorFamily\n", buf, 2u);
  }

  if (a3)
  {
    v7 = getSensorFamily__sensorFamily;
    if (getSensorFamily__sensorFamily)
    {
LABEL_13:
      *a3 = v7;
      if (__osLogTrace)
      {
        v8 = __osLogTrace;
      }

      else
      {
        v8 = v5;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *&buf[4] = 0;
        _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "getSensorFamily -> 0x%x\n", buf, 8u);
      }

      v9 = 0;
      goto LABEL_19;
    }

    v13 = 0;
    *buf = 1;
    if ([(BiometricKitXPCServerPearl *)self performCommand:53 inValue:0 inData:0 inSize:0 outData:&v13 outSize:buf])
    {
      [BiometricKitXPCServerPearl getSensorFamily:];
    }

    else if (*buf == 1)
    {
      v7 = v13;
      if (v13)
      {
        if (v13 < 4u)
        {
          getSensorFamily__sensorFamily = v13;
          goto LABEL_13;
        }

        [BiometricKitXPCServerPearl getSensorFamily:];
      }

      else
      {
        [BiometricKitXPCServerPearl getSensorFamily:];
      }
    }

    else
    {
      [BiometricKitXPCServerPearl getSensorFamily:];
    }

    v9 = v14;
  }

  else
  {
    [BiometricKitXPCServerPearl getSensorFamily:];
    v9 = *buf;
  }

  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v5;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_ERROR, "getSensorFamily -> 0x%x\n", buf, 8u);
  }

LABEL_19:
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

+ (BOOL)platformProvidesPlCl
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __50__BiometricKitXPCServerPearl_platformProvidesPlCl__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (platformProvidesPlCl_onceToken != -1)
  {
    dispatch_once(&platformProvidesPlCl_onceToken, block);
  }

  return (platformProvidesPlCl_providesPlCl & 1) == 0;
}

void __50__BiometricKitXPCServerPearl_platformProvidesPlCl__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() getChipID];
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() getBoardID];
  v6 = v5;
  if (v3)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    __50__BiometricKitXPCServerPearl_platformProvidesPlCl__block_invoke_cold_1();
  }

  v8 = (v3 - 33025);
  if (v8 <= 0x2F)
  {
    if (((1 << (v3 - 1)) & 0x28005) != 0)
    {
      goto LABEL_17;
    }

    if (v8 == 31)
    {
      if ((v6 - 12) >= 0xFFFFFFFC)
      {
        return;
      }

      goto LABEL_17;
    }

    if (v8 == 47)
    {
      if ((v6 - 8) > 0xFFFFFFFB)
      {
        return;
      }

LABEL_17:
      platformProvidesPlCl_providesPlCl = 1;
      return;
    }
  }

  if (v3 == 32807 || v3 == 32816)
  {
    goto LABEL_17;
  }
}

+ (BOOL)platformProvidesPSD3
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __50__BiometricKitXPCServerPearl_platformProvidesPSD3__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (platformProvidesPSD3_onceToken != -1)
  {
    dispatch_once(&platformProvidesPSD3_onceToken, block);
  }

  return (platformProvidesPSD3_providesPSD3 & 1) == 0;
}

void __50__BiometricKitXPCServerPearl_platformProvidesPSD3__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() getChipID];
  if (v2 <= 33024)
  {
    if (v2 == 32807 || v2 == 32816)
    {
      goto LABEL_13;
    }

    if (!v2)
    {
      v6 = (__osLog ? __osLog : MEMORY[0x29EDCA988]);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = 136316162;
        v8 = "chipID";
        v9 = 2048;
        v10 = 0;
        v11 = 2080;
        v12 = &unk_296D32C0B;
        v13 = 2080;
        v14 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
        v15 = 1024;
        v16 = 3952;
        _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v7, 0x30u);
      }
    }
  }

  else if ((v2 - 33025) <= 0x31 && ((1 << (v2 - 1)) & 0x2800080028005) != 0)
  {
LABEL_13:
    platformProvidesPSD3_providesPSD3 = 1;
  }

  v5 = *MEMORY[0x29EDCA608];
}

- (int)loadDCNKernels
{
  v28 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "loadDCNKernels\n", buf, 2u);
  }

  v5 = os_transaction_create();
  v23 = 0;
  v6 = objc_autoreleasePoolPush();
  if ([(BiometricKitXPCServerPearl *)self getSPRLInfo:&v23])
  {
    [BiometricKitXPCServerPearl loadDCNKernels];
    v16 = *buf;
    goto LABEL_48;
  }

  if (BYTE2(v23))
  {
LABEL_47:
    v16 = 0;
    goto LABEL_48;
  }

  v7 = [objc_opt_class() getChipID];
  if (v7 <= 33041)
  {
    if (v7 <= 33024)
    {
      if (v7 == 32807)
      {
        v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H11_iPad.bin";
        goto LABEL_34;
      }

      if (v7 == 32816)
      {
        v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H12_iPhone.bin";
        goto LABEL_34;
      }
    }

    else
    {
      switch(v7)
      {
        case 33025:
          v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H13_iPhone.bin";
          goto LABEL_34;
        case 33027:
          v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H13_iPad.bin";
          goto LABEL_34;
        case 33040:
          v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H14_iPhone.bin";
          goto LABEL_34;
      }
    }

LABEL_33:
    v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H17_iPhone.bin";
    goto LABEL_34;
  }

  if (v7 > 33073)
  {
    switch(v7)
    {
      case 33074:
        v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H16_iPad.bin";
        goto LABEL_34;
      case 33090:
        v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H17_iPad.bin";
        goto LABEL_34;
      case 33104:
        v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H18_iPhone.bin";
        goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (v7 == 33042)
  {
    v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H14_iPad.bin";
    goto LABEL_34;
  }

  if (v7 == 33056)
  {
    v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H15_iPhone.bin";
    goto LABEL_34;
  }

  if (v7 != 33072)
  {
    goto LABEL_33;
  }

  v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H16_iPhone.bin";
LABEL_34:
  if (__osLog)
  {
    v9 = __osLog;
  }

  else
  {
    v9 = v3;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v8;
    _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEFAULT, "DCNKernels not loaded yet, loading from %@\n", buf, 0xCu);
  }

  v10 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:v8];
  v11 = v10;
  if (__osLog)
  {
    v12 = __osLog;
  }

  else
  {
    v12 = v3;
  }

  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v11 length];
      v15 = [objc_opt_class() getSHA384FromData:v11];
      *buf = 134218242;
      v25 = v14;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_DEFAULT, "DCNKernels: Size: %lu SHA384: %@\n", buf, 0x16u);
    }

    if (!-[BiometricKitXPCServerPearl performCommand:inValue:inData:inSize:outData:outSize:](self, "performCommand:inValue:inData:inSize:outData:outSize:", 35, 0, [v11 bytes], objc_msgSend(v11, "length"), 0, 0))
    {

      goto LABEL_47;
    }

    [BiometricKitXPCServerPearl loadDCNKernels];
  }

  else
  {
    [BiometricKitXPCServerPearl loadDCNKernels];
  }

  v16 = *buf;

LABEL_48:
  objc_autoreleasePoolPop(v6);
  if ([(BiometricKitXPCServerPearl *)self sendDCNKernelsCheckResult:v16 == 0])
  {
    [BiometricKitXPCServerPearl loadDCNKernels];
    if (v16)
    {
LABEL_50:
      [objc_opt_class() reportPearlIssue];
      if (__osLogTrace)
      {
        v17 = __osLogTrace;
      }

      else
      {
        v17 = v3;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v25) = v16;
        v18 = v17;
        v19 = OS_LOG_TYPE_ERROR;
LABEL_62:
        _os_log_impl(&dword_296CA4000, v18, v19, "loadDCNKernels -> %{errno}d\n", buf, 8u);
        goto LABEL_63;
      }

      goto LABEL_63;
    }
  }

  else if (v16)
  {
    goto LABEL_50;
  }

  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v3;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v25) = 0;
    v18 = v20;
    v19 = OS_LOG_TYPE_DEBUG;
    goto LABEL_62;
  }

LABEL_63:

  v21 = *MEMORY[0x29EDCA608];
  return v16;
}

- (id)getProjectorSerialNumberIORegAttempt
{
  v2 = IOServiceNameMatching("AppleH10CamIn");
  if (v2)
  {
    v3 = *MEMORY[0x29EDBB118];
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB118], v2);
    if (MatchingService)
    {
      goto LABEL_7;
    }

    v5 = IOServiceNameMatching("AppleH13CamIn");
    if (!v5)
    {
      [BiometricKitXPCServerPearl getProjectorSerialNumberIORegAttempt];
      goto LABEL_15;
    }

    MatchingService = IOServiceGetMatchingService(v3, v5);
    if (MatchingService)
    {
LABEL_7:
      v7 = MatchingService;
      CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"FrontIRStructuredLightProjectorSerialNumString", *MEMORY[0x29EDB8ED8], 0);
      IOObjectRelease(v7);
      goto LABEL_8;
    }

    v6 = IOServiceNameMatching("AppleH16CamIn");
    if (v6)
    {
      MatchingService = IOServiceGetMatchingService(v3, v6);
      if (MatchingService)
      {
        goto LABEL_7;
      }

      [BiometricKitXPCServerPearl getProjectorSerialNumberIORegAttempt];
    }

    else
    {
      [BiometricKitXPCServerPearl getProjectorSerialNumberIORegAttempt];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl getProjectorSerialNumberIORegAttempt];
  }

LABEL_15:
  CFProperty = v10;
LABEL_8:

  return CFProperty;
}

- (id)getProjectorSerialNumberIOReg
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "getProjectorSerialNumberIOReg\n", &v10, 2u);
  }

  mach_absolute_time();
  v5 = [(BiometricKitXPCServerPearl *)self getProjectorSerialNumberIORegAttempt];
  if (v5)
  {
LABEL_9:
    v6 = v5;
  }

  else
  {
    while (1)
    {
      mach_absolute_time();
      if (absoluteToMiliseconds() > 0x36EE80)
      {
        break;
      }

      sleep(1u);
      v5 = [(BiometricKitXPCServerPearl *)self getProjectorSerialNumberIORegAttempt];
      if (v5)
      {
        goto LABEL_9;
      }
    }

    v6 = 0;
  }

  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = v3;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "getProjectorSerialNumberIOReg -> %@\n", &v10, 0xCu);
  }

  v8 = *MEMORY[0x29EDCA608];

  return v6;
}

- (id)getRomeoSerialNumberFDR
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "getRomeoSerialNumberFDR\n", buf, 2u);
  }

  v5 = [MEMORY[0x29EDB8E00] dictionary];
  if (isInternalBuild())
  {
    [v5 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"APTicketAllowUntrusted"];
  }

  v19 = 0;
  v6 = [(BiometricKitXPCServerPearl *)self getFDRClassFromFDR:13 withOptions:v5 withError:&v19];
  v7 = v19;
  if (!v6)
  {
    [BiometricKitXPCServerPearl getRomeoSerialNumberFDR];
LABEL_32:
    v14 = *buf;
    goto LABEL_22;
  }

  if ([v6 length] <= 0xB9)
  {
    [BiometricKitXPCServerPearl getRomeoSerialNumberFDR];
    goto LABEL_32;
  }

  if (v7)
  {
    [BiometricKitXPCServerPearl getRomeoSerialNumberFDR];
    goto LABEL_32;
  }

  v8 = [v6 bytes];
  v9 = malloc_type_malloc(0x12uLL, 0x57DB8BB0uLL);
  if (__osLog)
  {
    v10 = __osLog;
  }

  else
  {
    v10 = v3;
  }

  if (!v9)
  {
    [BiometricKitXPCServerPearl getRomeoSerialNumberFDR];
    goto LABEL_32;
  }

  v11 = v9;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(v8 + 129);
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEFAULT, "OTP Version: %d\n", buf, 8u);
  }

  v13 = 101;
  if (*(v8 + 129) > 4u)
  {
    v13 = 175;
  }

  if (getSensorSerialNumStringUT(v11, 0x12uLL, v8 + v13))
  {
    [BiometricKitXPCServerPearl getRomeoSerialNumberFDR];
    v14 = *buf;
  }

  else
  {
    v14 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v11];
  }

  free(v11);
LABEL_22:
  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = v3;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v14;
    _os_log_impl(&dword_296CA4000, v15, OS_LOG_TYPE_DEBUG, "getRomeoSerialNumberFDR -> %@\n", buf, 0xCu);
  }

  v16 = v14;

  v17 = *MEMORY[0x29EDCA608];
  return v14;
}

- (int)verifyRomeoSerialNumberAgainstFDR
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "verifyRomeoSerialNumberAgainstFDR\n", &v13, 2u);
  }

  v5 = [(BiometricKitXPCServerPearl *)self getRomeoSerialNumberFDR];
  v6 = [(BiometricKitXPCServerPearl *)self getProjectorSerialNumberIOReg];
  v7 = v6;
  if (v5)
  {
    if (__osLog)
    {
      v8 = __osLog;
    }

    else
    {
      v8 = v3;
    }

    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412546;
        v14 = v5;
        v15 = 2112;
        v16 = v7;
        _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEFAULT, "Romeo serial: FDR: %@, IOReg: %@\n", &v13, 0x16u);
      }

      if ([v5 isEqualToString:v7])
      {
        if (__osLogTrace)
        {
          v9 = __osLogTrace;
        }

        else
        {
          v9 = v3;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v13 = 67109120;
          LODWORD(v14) = 0;
          _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "verifyRomeoSerialNumberAgainstFDR -> 0x%x\n", &v13, 8u);
        }

        v10 = 0;
        goto LABEL_20;
      }

      [BiometricKitXPCServerPearl verifyRomeoSerialNumberAgainstFDR];
    }

    else
    {
      [(BiometricKitXPCServerPearl *)v8 verifyRomeoSerialNumberAgainstFDR];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl verifyRomeoSerialNumberAgainstFDR];
  }

  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  v10 = 261;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v13 = 67109120;
    LODWORD(v14) = 261;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_ERROR, "verifyRomeoSerialNumberAgainstFDR -> 0x%x\n", &v13, 8u);
  }

LABEL_20:

  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

- (int)queryGuadalupeSerialNumberFDR:(id *)a3
{
  v25 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "queryGuadalupeSerialNumberFDR\n", buf, 2u);
  }

  v7 = [MEMORY[0x29EDB8E00] dictionary];
  if (isInternalBuild())
  {
    [v7 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"APTicketAllowUntrusted"];
  }

  v20 = 0;
  v8 = [(BiometricKitXPCServerPearl *)self getFDRClassFromFDR:13 withOptions:v7 withError:&v20];
  v9 = v20;
  if (v8)
  {
    if ([v8 length])
    {
      if (v9)
      {
        [BiometricKitXPCServerPearl queryGuadalupeSerialNumberFDR:];
      }

      else
      {
        v10 = [v8 bytes];
        if (__osLog)
        {
          v11 = __osLog;
        }

        else
        {
          v11 = v5;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *v10;
          *buf = 67109120;
          v22 = v12;
          _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_DEFAULT, "pwcl version: %d\n", buf, 8u);
        }

        if (*v10 < 3u)
        {
          v14 = 0;
          goto LABEL_21;
        }

        if ([v8 length] <= 0x15)
        {
          [BiometricKitXPCServerPearl queryGuadalupeSerialNumberFDR:];
        }

        else
        {
          v13 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v10 + 4];
          if (v13)
          {
            v14 = v13;
            *a3 = v13;
LABEL_21:
            if (__osLogTrace)
            {
              v15 = __osLogTrace;
            }

            else
            {
              v15 = v5;
            }

            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109378;
              v22 = 0;
              v23 = 2112;
              v24 = v14;
              _os_log_impl(&dword_296CA4000, v15, OS_LOG_TYPE_DEBUG, "queryGuadalupeSerialNumberFDR -> 0x%x (%@)\n", buf, 0x12u);
            }

            v16 = 0;
            goto LABEL_27;
          }

          [BiometricKitXPCServerPearl queryGuadalupeSerialNumberFDR:];
        }
      }
    }

    else
    {
      [BiometricKitXPCServerPearl queryGuadalupeSerialNumberFDR:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl queryGuadalupeSerialNumberFDR:];
  }

  if (__osLogTrace)
  {
    v19 = __osLogTrace;
  }

  else
  {
    v19 = v5;
  }

  v16 = 261;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109378;
    v22 = 261;
    v23 = 2112;
    v24 = 0;
    _os_log_impl(&dword_296CA4000, v19, OS_LOG_TYPE_ERROR, "queryGuadalupeSerialNumberFDR -> 0x%x (%@)\n", buf, 0x12u);
  }

  v14 = 0;
LABEL_27:

  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

- (int)verifyGuadalupeSerialNumberAgainstFDR
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "verifyGuadalupeSerialNumberAgainstFDR\n", buf, 2u);
  }

  v16 = 0;
  v5 = [(BiometricKitXPCServerPearl *)self queryGuadalupeSerialNumberFDR:&v16];
  v6 = v16;
  v7 = v6;
  if (v5)
  {
    [BiometricKitXPCServerPearl verifyGuadalupeSerialNumberAgainstFDR];
    v12 = *buf;
  }

  else
  {
    if (!v6)
    {
LABEL_16:
      if (__osLogTrace)
      {
        v11 = __osLogTrace;
      }

      else
      {
        v11 = v3;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v18) = 0;
        _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_DEBUG, "verifyGuadalupeSerialNumberAgainstFDR -> 0x%x\n", buf, 8u);
      }

      v12 = 0;
      goto LABEL_22;
    }

    v8 = [(BiometricKitXPCServerPearl *)self getProjectorSerialNumberIOReg];
    v9 = v8;
    if (__osLog)
    {
      v10 = __osLog;
    }

    else
    {
      v10 = v3;
    }

    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v18 = v7;
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEFAULT, "Guadalupe serial: FDR: %@, IOReg: %@\n", buf, 0x16u);
      }

      if ([v7 isEqualToString:v9])
      {

        goto LABEL_16;
      }

      [BiometricKitXPCServerPearl verifyGuadalupeSerialNumberAgainstFDR];
    }

    else
    {
      [BiometricKitXPCServerPearl verifyGuadalupeSerialNumberAgainstFDR];
    }

    v12 = *buf;
  }

  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = v3;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v18) = v12;
    _os_log_impl(&dword_296CA4000, v15, OS_LOG_TYPE_ERROR, "verifyGuadalupeSerialNumberAgainstFDR -> 0x%x\n", buf, 8u);
  }

LABEL_22:

  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

- (int)verifyProjectorSerialNumber
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v22[0]) = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "verifyProjectorSerialNumber\n", v22, 2u);
  }

  memset(v22, 0, 23);
  if ([(BiometricKitXPCServerPearl *)self performGetBiometrickitdInfoCommand:v22])
  {
    [BiometricKitXPCServerPearl verifyProjectorSerialNumber];
  }

  else
  {
    if (BYTE6(v22[2]))
    {
      if (__osLog)
      {
        v5 = __osLog;
      }

      else
      {
        v5 = v3;
      }

      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      *buf = 0;
      v6 = "Projector SN already checked\n";
      goto LABEL_13;
    }

    if (isInternalBuild())
    {
      v7 = getBootArgs();
      v8 = v7;
      if (v7 && (v9 = [v7 rangeOfString:@"pearl-skip-projector-checks"], v10) && (v11 = v10 + v9 + 1, v11 < objc_msgSend(v8, "length")))
      {
        v12 = [v8 substringWithRange:{v11, 1}];
        v13 = [v12 BOOLValue];
      }

      else
      {
        v13 = 0;
      }

      if (isInternalBuild() && (v13 & 1) != 0)
      {
        if (__osLog)
        {
          v5 = __osLog;
        }

        else
        {
          v5 = v3;
        }

        if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_35;
        }

        *buf = 0;
        v6 = "Skipping projector SN check\n";
LABEL_13:
        _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
LABEL_35:
        v15 = 0;
        goto LABEL_36;
      }
    }

    else
    {
      isInternalBuild();
    }

    v14 = [objc_opt_class() getChipID];
    if ((v14 - 33056) <= 0x30 && ((1 << (v14 - 32)) & 0x1000500050001) != 0 || v14 == 33040)
    {
      if (![(BiometricKitXPCServerPearl *)self verifyGuadalupeSerialNumberAgainstFDR])
      {
        goto LABEL_35;
      }
    }

    else if (![(BiometricKitXPCServerPearl *)self verifyRomeoSerialNumberAgainstFDR])
    {
      goto LABEL_35;
    }

    if ([(BiometricKitXPCServerPearl *)self hasFDREntitlement])
    {
      goto LABEL_35;
    }

    [BiometricKitXPCServerPearl verifyProjectorSerialNumber];
  }

  v15 = *buf;
LABEL_36:
  if ([(BiometricKitXPCServerPearl *)self sendRomeoSNCheckResult:v15 == 0])
  {
    [BiometricKitXPCServerPearl verifyProjectorSerialNumber];
    if (v15)
    {
LABEL_38:
      [objc_opt_class() reportPearlIssue];
      if (__osLogTrace)
      {
        v16 = __osLogTrace;
      }

      else
      {
        v16 = v3;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v24 = v15;
        v17 = v16;
        v18 = OS_LOG_TYPE_ERROR;
LABEL_51:
        _os_log_impl(&dword_296CA4000, v17, v18, "verifyProjectorSerialNumber -> 0x%x\n", buf, 8u);
        goto LABEL_52;
      }

      goto LABEL_52;
    }
  }

  else if (v15)
  {
    goto LABEL_38;
  }

  if (__osLogTrace)
  {
    v19 = __osLogTrace;
  }

  else
  {
    v19 = v3;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v24 = 0;
    v17 = v19;
    v18 = OS_LOG_TYPE_DEBUG;
    goto LABEL_51;
  }

LABEL_52:
  v20 = *MEMORY[0x29EDCA608];
  return v15;
}

- (BOOL)hasFDREntitlement
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = [(BiometricKitXPCServerPearl *)self hasManifestEntitlement:1717663091];
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "false";
    if (v2)
    {
      v4 = "true";
    }

    v7 = 136315138;
    v8 = v4;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEFAULT, "hasFDREntitlement: 'faus':%s\n", &v7, 0xCu);
  }

  v5 = *MEMORY[0x29EDCA608];
  return v2;
}

- (BOOL)hasManifestEntitlement:(unsigned int)a3
{
  v75 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "hasManifestEntitlement: 0x%x\n", buf, 8u);
  }

  v32 = 0;
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  *buf = 0u;
  v6 = [MEMORY[0x29EDC5808] sharedDataAccessor];
  v7 = [v6 copyPathForPersonalizedData:2 error:0];

  if (!v7)
  {
    [BiometricKitXPCServerPearl hasManifestEntitlement:];
LABEL_25:
    v16 = v33;
    v9 = *v34;
    v11 = *__s1;
    goto LABEL_15;
  }

  v8 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:v7];
  if (!v8)
  {
    [BiometricKitXPCServerPearl hasManifestEntitlement:];
    goto LABEL_25;
  }

  v9 = v8;
  v10 = MGCopyAnswer();
  if (!v10)
  {
    [(BiometricKitXPCServerPearl *)v9 hasManifestEntitlement:v34, __s1];
    goto LABEL_25;
  }

  v11 = v10;
  v12 = MGCopyAnswer();
  if (!v12)
  {
    [(BiometricKitXPCServerPearl *)v9 hasManifestEntitlement:v11, &v33, v34, __s1, v13, v14, v15, v31, v33, *v34, *&v34[8], *&v34[16], v35, SHIDWORD(v35), v36, *(&v36 + 1), *buf, *&buf[8], v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1)];
    goto LABEL_25;
  }

  v16 = v12;
  v17 = [v12 isEqualToString:@"sha2-384"];
  if (v17)
  {
    [v9 length];
    [v9 bytes];
    ccdigest();
    if ((isInternalBuild() & 1) == 0 && (v18 = memcmp(__s1, [v11 bytes], 0x30uLL)) != 0)
    {
      v30 = v18;
      if (__osLog)
      {
        v26 = __osLog;
      }

      else
      {
        v26 = v4;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *v34 = 136316162;
        *&v34[4] = "err == 0 ";
        *&v34[12] = 2048;
        *&v34[14] = v30;
        *&v34[22] = 2080;
        v35 = &unk_296D32C0B;
        LOWORD(v36) = 2080;
        *(&v36 + 2) = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
        WORD5(v36) = 1024;
        HIDWORD(v36) = 4617;
        goto LABEL_46;
      }
    }

    else
    {
      inited = Img4DecodeInitManifest([v9 bytes], objc_msgSend(v9, "length"), buf);
      if (inited)
      {
        v28 = inited;
        if (__osLog)
        {
          v26 = __osLog;
        }

        else
        {
          v26 = v4;
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *v34 = 136316162;
          *&v34[4] = "err == 0 ";
          *&v34[12] = 2048;
          *&v34[14] = v28;
          *&v34[22] = 2080;
          v35 = &unk_296D32C0B;
          LOWORD(v36) = 2080;
          *(&v36 + 2) = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
          WORD5(v36) = 1024;
          HIDWORD(v36) = 4622;
LABEL_46:
          v27 = v34;
          goto LABEL_47;
        }
      }

      else
      {
        BooleanFromSection = Img4DecodeGetBooleanFromSection(buf, 0, a3, &v32);
        if (BooleanFromSection)
        {
          v29 = BooleanFromSection;
          v26 = (__osLog ? __osLog : v4);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *v34 = 136316162;
            *&v34[4] = "err == 0 ";
            *&v34[12] = 2048;
            *&v34[14] = v29;
            *&v34[22] = 2080;
            v35 = &unk_296D32C0B;
            LOWORD(v36) = 2080;
            *(&v36 + 2) = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
            WORD5(v36) = 1024;
            HIDWORD(v36) = 4625;
            goto LABEL_46;
          }
        }
      }
    }
  }

  else
  {
    v25 = v17;
    if (__osLog)
    {
      v26 = __osLog;
    }

    else
    {
      v26 = v4;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *__s1 = 136316162;
      *&__s1[4] = "err == 0 ";
      v67 = 2048;
      v68 = v25 ^ 1u;
      v69 = 2080;
      v70 = &unk_296D32C0B;
      v71 = 2080;
      v72 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
      v73 = 1024;
      v74 = 4608;
      v27 = __s1;
LABEL_47:
      _os_log_impl(&dword_296CA4000, v26, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v27, 0x30u);
    }
  }

LABEL_15:
  if (__osLogTrace)
  {
    v21 = __osLogTrace;
  }

  else
  {
    v21 = v4;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *v34 = 67109120;
    *&v34[4] = v32;
    _os_log_impl(&dword_296CA4000, v21, OS_LOG_TYPE_DEBUG, "hasManifestEntitlement -> %d\n", v34, 8u);
  }

  v22 = v32;

  v23 = *MEMORY[0x29EDCA608];
  return v22;
}

- (id)getDisplayTrustStatusAttempt
{
  v40 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEBUG, "getDisplayTrustStatusAttempt\n", buf, 2u);
  }

  v28 = 0;
  InternalComponents = cpGetInternalComponents(&v28);
  if (InternalComponents)
  {
    v22 = InternalComponents;
    if (__osLog)
    {
      v23 = __osLog;
    }

    else
    {
      v23 = v2;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v31 = "err == 0 ";
      v32 = 2048;
      v33 = v22;
      v34 = 2080;
      v35 = &unk_296D32C0B;
      v36 = 2080;
      v37 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
      v38 = 1024;
      v39 = 4647;
      _os_log_impl(&dword_296CA4000, v23, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v14 = 0;
    v7 = 0;
    v16 = 0;
  }

  else
  {
    v5 = v28;
    v6 = [v28 copy];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = [v12 objectForKey:{@"ComponentName", v24}];
          if ([v13 isEqualToString:@"TouchController"])
          {
            v14 = v12;

            goto LABEL_18;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v14 = 0;
    }

    else
    {
      v14 = 0;
    }

LABEL_18:

    v15 = [v14 objectForKey:@"isTrustedForUI"];
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v17 = [v14 objectForKey:@"isTrusted"];
      if ([v17 BOOLValue])
      {
        v16 = v17;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  if (__osLogTrace)
  {
    v18 = __osLogTrace;
  }

  else
  {
    v18 = v2;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v31 = v16;
    _os_log_impl(&dword_296CA4000, v18, OS_LOG_TYPE_DEBUG, "getDisplayTrustStatusAttempt -> %@\n", buf, 0xCu);
  }

  v19 = v16;

  v20 = *MEMORY[0x29EDCA608];

  return v19;
}

- (int)verifyDisplayTrust
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "verifyDisplayTrust\n", v8, 2u);
  }

  if ([(BiometricKitXPCServerPearl *)self sendDisplayCheckResult:1])
  {
    [BiometricKitXPCServerPearl verifyDisplayTrust];
  }

  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = v3;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109120;
    v8[1] = 0;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "verifyDisplayTrust -> 0x%x\n", v8, 8u);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 0;
}

- (int)sendSelfCheckResult:(id *)a3
{
  v3 = [(BiometricKitXPCServerPearl *)self performCommand:44 inValue:0 inData:a3 inSize:28 outData:0 outSize:0];
  if (v3)
  {
    [BiometricKitXPCServerPearl sendSelfCheckResult:];
  }

  return v3;
}

- (int)sendSavageFWCertCheckResult:(int)a3
{
  v14 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 67109120;
    v10 = a3;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "sendSavageFWCertCheckResult, passed: %d\n", &v9, 8u);
  }

  v11 = -1;
  v12 = -1;
  v9 = -1;
  v13 = -1;
  v10 = a3;
  v6 = [(BiometricKitXPCServerPearl *)self sendSelfCheckResult:&v9];
  if (v6)
  {
    [BiometricKitXPCServerPearl sendSavageFWCertCheckResult:];
  }

  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

- (int)sendFDRDataCheckResult:(int)a3
{
  v14 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v9) = 67109120;
    HIDWORD(v9) = a3;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "sendFDRDataCheckResult, passed: %d\n", &v9, 8u);
  }

  v11 = -1;
  v12 = -1;
  v9 = -1;
  v13 = -1;
  v10 = a3;
  v6 = [(BiometricKitXPCServerPearl *)self sendSelfCheckResult:&v9];
  if (v6)
  {
    [BiometricKitXPCServerPearl sendFDRDataCheckResult:];
  }

  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

- (int)sendRomeoSNCheckResult:(int)a3
{
  v14 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v9) = 67109120;
    HIDWORD(v9) = a3;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "sendRomeoSNCheckResult, passed: %d\n", &v9, 8u);
  }

  v10 = -1;
  v12 = -1;
  v9 = -1;
  v13 = -1;
  v11 = a3;
  v6 = [(BiometricKitXPCServerPearl *)self sendSelfCheckResult:&v9];
  if (v6)
  {
    [BiometricKitXPCServerPearl sendRomeoSNCheckResult:];
  }

  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

- (int)sendDCNKernelsCheckResult:(int)a3
{
  v13 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v9[0]) = 67109120;
    HIDWORD(v9[0]) = a3;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "sendDCNKernelsCheckResult, passed: %d\n", v9, 8u);
  }

  v9[1] = -1;
  v11 = -1;
  v9[0] = -1;
  v12 = -1;
  v10 = a3;
  v6 = [(BiometricKitXPCServerPearl *)self sendSelfCheckResult:v9];
  if (v6)
  {
    [BiometricKitXPCServerPearl sendDCNKernelsCheckResult:];
  }

  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

- (int)sendDisplayCheckResult:(int)a3
{
  v13 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v9[0]) = 67109120;
    HIDWORD(v9[0]) = a3;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "sendDisplayCheckResult, passed: %d\n", v9, 8u);
  }

  v9[1] = -1;
  v10 = -1;
  v9[0] = -1;
  v11 = a3;
  v12 = -1;
  v6 = [(BiometricKitXPCServerPearl *)self sendSelfCheckResult:v9];
  if (v6)
  {
    [BiometricKitXPCServerPearl sendDisplayCheckResult:];
  }

  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

- (id)classStringForEnum:(unsigned __int16)a3
{
  if (a3 > 0x12u)
  {
    return 0;
  }

  else
  {
    return off_29EE54888[a3];
  }
}

- (int)loadFDRClassCommand:(int)a3 withClass:(unsigned __int16)a4 withData:(id)a5 isAlternative:(BOOL)a6
{
  v8 = a3;
  v10 = a5;
  v11 = [v10 length] + 9;
  v12 = malloc_type_malloc(v11, 0xC606EA9CuLL);
  if (v12)
  {
    v13 = v12;
    *v12 = v8;
    *(v12 + 1) = a4;
    v12[4] = a6;
    *(v12 + 5) = [v10 length];
    memcpy(v13 + 9, [v10 bytes], objc_msgSend(v10, "length"));
    v14 = [(BiometricKitXPCServerPearl *)self performCommand:36 inValue:0 inData:v13 inSize:v11 outData:0 outSize:0];
    if (v14)
    {
      [BiometricKitXPCServerPearl loadFDRClassCommand:withClass:withData:isAlternative:];
    }

    free(v13);
  }

  else
  {
    [BiometricKitXPCServerPearl loadFDRClassCommand:withClass:withData:isAlternative:];
    v14 = v16;
  }

  return v14;
}

- (id)getFDRClassFromFile:(id)a3
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = [(BiometricKitXPCServerPearl *)self pathForAlternateFDRClass:a3];
  v4 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:v3];
  v5 = v4;
  if (__osLog)
  {
    v6 = __osLog;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEFAULT, "Loaded FDR data from file: %@\n", &v9, 0xCu);
    }
  }

  else
  {
    [BiometricKitXPCServerPearl getFDRClassFromFile:v6];
  }

  v7 = *MEMORY[0x29EDCA608];

  return v5;
}

- (int)loadPCECalibrationOverride:(id)a3
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "loadPCECalibrationOverride\n", &v12, 2u);
  }

  if (v4)
  {
    if (!-[BiometricKitXPCServerPearl performCommand:inValue:inData:inSize:outData:outSize:](self, "performCommand:inValue:inData:inSize:outData:outSize:", 34, 0, [v4 bytes], objc_msgSend(v4, "length"), 0, 0))
    {
      if (__osLogTrace)
      {
        v7 = __osLogTrace;
      }

      else
      {
        v7 = v5;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v12 = 67109120;
        v13 = 0;
        _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "loadPCECalibrationOverride -> %{errno}d\n", &v12, 8u);
      }

      v8 = 0;
      goto LABEL_14;
    }

    [BiometricKitXPCServerPearl loadPCECalibrationOverride:];
  }

  else
  {
    [BiometricKitXPCServerPearl loadPCECalibrationOverride:];
  }

  v8 = v12;
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = 67109120;
    v13 = v8;
    _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_ERROR, "loadPCECalibrationOverride -> %{errno}d\n", &v12, 8u);
  }

LABEL_14:

  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

- (int)unwrapBrunorEncryptionKey
{
  v28 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEBUG, "unwrapBrunorEncryptionKey\n", buf, 2u);
  }

  v21 = 0;
  v4 = [(BiometricKitXPCServerPearl *)self getFDRClassFromFDR:17 withOptions:0 withError:&v21];
  v5 = v21;
  if (!v4)
  {
    [BiometricKitXPCServerPearl unwrapBrunorEncryptionKey];
    goto LABEL_48;
  }

  if ([v4 length] <= 0x5B)
  {
    [BiometricKitXPCServerPearl unwrapBrunorEncryptionKey];
    goto LABEL_48;
  }

  if (v5)
  {
    [BiometricKitXPCServerPearl unwrapBrunorEncryptionKey];
LABEL_48:
    v11 = *buf;
LABEL_32:
    if (__osLogTrace)
    {
      v15 = __osLogTrace;
    }

    else
    {
      v15 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v23) = v11;
      _os_log_impl(&dword_296CA4000, v15, OS_LOG_TYPE_ERROR, "unwrapBrunorEncryptionKey -> 0x%x\n", buf, 8u);
    }

    goto LABEL_44;
  }

  v19 = 0;
  v6 = 1000000;
  v20 = v4;
  v7 = [v4 bytes];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 263;
  while (1)
  {
    if (v5 || v8 || v9)
    {
      if (__osLog)
      {
        v12 = __osLog;
      }

      else
      {
        v12 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = "unknown reason";
        if (v10)
        {
          v13 = v10;
        }

        *buf = 136315650;
        v23 = v13;
        v24 = 1024;
        v25 = v11;
        v26 = 2048;
        v27 = v6 / 1000000.0;
        _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_DEFAULT, "FDR encryption key unwrapping failed due to %s (%d). Retrying after %.2fs.\n", buf, 0x1Cu);
      }

      usleep(v6);
    }

    v14 = [(BiometricKitXPCServerPearl *)self performCommand:81 inValue:0 inData:v7 inSize:92 outData:0 outSize:0, v19];
    v11 = v14;
    if (v14 == 264)
    {
      ++v9;
      v10 = "camera response timeout";
      goto LABEL_27;
    }

    if (v14 != 17)
    {
      break;
    }

    ++v8;
    v10 = "camera error";
LABEL_27:
    v6 = 1000000;
LABEL_28:
    if (v5 > 0x78 || v8 > 0x3C || v9 >= 6)
    {
      goto LABEL_31;
    }
  }

  if (v14 == 16)
  {
    ++v5;
    v6 = 500000;
    v10 = "camera being busy";
    goto LABEL_28;
  }

  v5 = v19;
  v4 = v20;
  if (!v14)
  {
    goto LABEL_38;
  }

LABEL_31:
  v5 = v19;
  v4 = v20;
  if (![BiometricKitXPCServerPearl unwrapBrunorEncryptionKey])
  {
    goto LABEL_32;
  }

LABEL_38:
  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v23) = 0;
    _os_log_impl(&dword_296CA4000, v16, OS_LOG_TYPE_DEBUG, "unwrapBrunorEncryptionKey -> 0x%x\n", buf, 8u);
  }

  v11 = 0;
LABEL_44:

  v17 = *MEMORY[0x29EDCA608];
  return v11;
}

- (void)loadCalibrationData
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (id)filenameForSavageCertType:(id)a3
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = [a3 unsignedIntValue] - 1;
  if (v3 >= 6)
  {
    if (__osLog)
    {
      v9 = __osLog;
    }

    else
    {
      v9 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *&buf[4] = "0";
      v14 = 2048;
      v15 = 0;
      v16 = 2080;
      v17 = &unk_296D32C0B;
      v18 = 2080;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
      v20 = 1024;
      v21 = 5463;
      _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v8 = 0;
    v6 = 0;
  }

  else
  {
    v4 = off_29EE54920[v3];
    v5 = [MEMORY[0x29EDC5808] sharedDataAccessor];
    v6 = [v5 copyPathForPersonalizedData:0 error:0];

    if (v6)
    {
      v7 = [v6 stringByAppendingPathComponent:v4];
      if (v7)
      {
        v8 = v7;
        goto LABEL_11;
      }

      [(BiometricKitXPCServerPearl *)v6 filenameForSavageCertType:buf];
    }

    else
    {
      [BiometricKitXPCServerPearl filenameForSavageCertType:];
    }

    v8 = v12;
    v6 = *buf;
  }

LABEL_11:

  v10 = *MEMORY[0x29EDCA608];

  return v8;
}

- (int)loadSavageFWCertificate
{
  v35 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "loadSavageFWCertificate\n", buf, 2u);
  }

  v31 = 0;
  if ([(BiometricKitXPCServerPearl *)self getSPRLInfo:&v31])
  {
    [BiometricKitXPCServerPearl loadSavageFWCertificate];
    LODWORD(v5) = *buf;
  }

  else if (HIBYTE(v31))
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v30 = 0;
    v6 = [(BiometricKitXPCServerPearl *)self getSensorFamily:&v30];
    if (v6)
    {
      LODWORD(v5) = v6;
      [BiometricKitXPCServerPearl loadSavageFWCertificate];
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      if (v30 == 3)
      {
        v7 = &unk_2A1E03A78;
      }

      else
      {
        v7 = &unk_2A1E03A60;
      }

      v28 = 0uLL;
      v29 = 0uLL;
      v8 = v7;
      v9 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v27;
LABEL_15:
        v12 = 0;
        while (1)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * v12);
          v14 = [(BiometricKitXPCServerPearl *)self filenameForSavageCertType:v13, v26];
          if (!v14)
          {
            break;
          }

          v15 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:v14];
          if (!v15)
          {
            [BiometricKitXPCServerPearl loadSavageFWCertificate];
            goto LABEL_28;
          }

          v16 = v15;
          v17 = [v15 length];
          v18 = v17 + 8;
          if (v17 >= 0xFFFFFFFFFFFFFFF8)
          {
            [(BiometricKitXPCServerPearl *)v16 loadSavageFWCertificate];
            LODWORD(v5) = 1;
            goto LABEL_32;
          }

          v19 = malloc_type_malloc(v17 + 8, 0x309DEF15uLL);
          if (!v19)
          {
            [(BiometricKitXPCServerPearl *)v16 loadSavageFWCertificate];
            LODWORD(v5) = 260;
            goto LABEL_32;
          }

          v20 = v19;
          *v19 = [v13 unsignedIntValue];
          v20[1] = [v16 length];
          memcpy(v20 + 2, [v16 bytes], objc_msgSend(v16, "length"));
          v5 = [(BiometricKitXPCServerPearl *)self performCommand:47 inValue:0 inData:v20 inSize:v18 outData:0 outSize:0];
          free(v20);
          if (v5)
          {
            [(BiometricKitXPCServerPearl *)v5 loadSavageFWCertificate];
            goto LABEL_32;
          }

          if (v10 == ++v12)
          {
            v10 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v10)
            {
              goto LABEL_15;
            }

            goto LABEL_25;
          }
        }

        [BiometricKitXPCServerPearl loadSavageFWCertificate];
LABEL_28:
        LODWORD(v5) = *buf;
LABEL_32:

        goto LABEL_33;
      }

LABEL_25:
      LODWORD(v5) = 0;
LABEL_33:
      v3 = MEMORY[0x29EDCA988];
    }
  }

  if ([(BiometricKitXPCServerPearl *)self sendSavageFWCertCheckResult:v5 == 0])
  {
    [BiometricKitXPCServerPearl loadSavageFWCertificate];
  }

  if (__osLogTrace)
  {
    v21 = __osLogTrace;
  }

  else
  {
    v21 = v3;
  }

  if (v5)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v33 = v5;
      v22 = v21;
      v23 = OS_LOG_TYPE_ERROR;
LABEL_44:
      _os_log_impl(&dword_296CA4000, v22, v23, "loadSavageFWCertificate -> %{errno}d\n", buf, 8u);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v33 = 0;
    v22 = v21;
    v23 = OS_LOG_TYPE_DEBUG;
    goto LABEL_44;
  }

  v24 = *MEMORY[0x29EDCA608];
  return v5;
}

- (BOOL)cameraIndicatorControlAllowedForClient:(id)a3
{
  v3 = a3;
  if (isInternalBuild() && MGGetBoolAnswer())
  {
    v4 = [v3 exportedObject];
    v5 = [v4 connection];
    v6 = [v5 valueForEntitlement:@"com.apple.private.biometrickit.camera-indicator-control"];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)createEnrollOperation
{
  v2 = objc_alloc_init(BiometricEnrollOperationPearl);

  return v2;
}

- (int)performEnrollCommand:(id)a3
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = v4;
  v23 = 0;
  v22 = 0;
  if (!v4)
  {
    [BiometricKitXPCServerPearl performEnrollCommand:];
LABEL_9:
    v11 = v14;
    goto LABEL_6;
  }

  v15[0] = [v4 processedFlags];
  v15[1] = [v5 userID];
  v15[2] = [v5 enrollmentType];
  v6 = [v5 augmentedIdentity];
  v7 = *(v6 + 16);
  v16 = *v6;
  v17 = v7;
  v8 = [v5 authData];
  v9 = *(v8 + 32);
  v10 = *(v8 + 16);
  v18 = *v8;
  v19 = v10;
  v20 = v9;
  v21 = [v5 periocularGlassesRequirement];
  if ([(BiometricKitXPCServerPearl *)self performCommand:3 inValue:0 inData:v15 inSize:76 outData:0 outSize:0])
  {
    [BiometricKitXPCServerPearl performEnrollCommand:];
    goto LABEL_9;
  }

  if ([MEMORY[0x29EDBFD70] didDisplayPearlGlassesBannerNotificationRecently:180.0])
  {
    +[PearlCoreAnalytics sendEnrollPearlGlassesBannerNotificationEvent];
  }

  [(BiometricKitXPCServerPearl *)self checkBioLogConsent];
  v11 = 0;
LABEL_6:

  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

- (id)createMatchOperation
{
  v2 = objc_alloc_init(BiometricMatchOperationPearl);

  return v2;
}

- (int)initMatchOperation:(id)a3 filter:(id)a4 options:(id)a5 client:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  if (!v10)
  {
    [BiometricKitXPCServerPearl initMatchOperation:filter:options:client:];
    goto LABEL_37;
  }

  v19.receiver = self;
  v19.super_class = BiometricKitXPCServerPearl;
  if ([(BiometricKitXPCServer *)&v19 initMatchOperation:v10 filter:v11 options:v12 client:v13])
  {
    [BiometricKitXPCServerPearl initMatchOperation:filter:options:client:];
    goto LABEL_37;
  }

  if (v12)
  {
    if (dictionaryGetBool())
    {
      [BiometricKitXPCServerPearl initMatchOperation:filter:options:client:];
    }

    else if (dictionaryGetBool())
    {
      [BiometricKitXPCServerPearl initMatchOperation:filter:options:client:];
    }

    else if (dictionaryGetBool())
    {
      [BiometricKitXPCServerPearl initMatchOperation:filter:options:client:];
    }

    else
    {
      if (HIBYTE(v22) == 1)
      {
        v14 = [v12 objectForKeyedSubscript:@"BKOptionMatchPreAugmentationCheckIdentity"];
        if (v14)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [BiometricKitXPCServerPearl initMatchOperation:v14 filter:? options:? client:?];
            v17 = 258;
            goto LABEL_28;
          }

          v15 = [v14 userID];
          *[v10 preAugmentationCheckIdentity] = v15;
          v16 = [v14 uuid];
          [v16 getUUIDBytes:{objc_msgSend(v10, "preAugmentationCheckIdentity") + 4}];
        }
      }

      if (dictionaryGetBool())
      {
        [BiometricKitXPCServerPearl initMatchOperation:filter:options:client:];
      }

      else if (dictionaryGetInteger())
      {
        [BiometricKitXPCServerPearl initMatchOperation:filter:options:client:];
      }

      else
      {
        if (!dictionaryGetBool())
        {
          goto LABEL_15;
        }

        [BiometricKitXPCServerPearl initMatchOperation:filter:options:client:];
      }
    }

LABEL_37:
    v17 = v24;
    goto LABEL_28;
  }

LABEL_15:
  [v10 setLongTimeout:HIBYTE(v23)];
  [v10 setAutoRetry:v23];
  [v10 setPreAugmentationCheck:HIBYTE(v22)];
  [v10 setFullFaceOnly:v22];
  [v10 setTrigger:v21];
  if (HIBYTE(v23) == 1)
  {
    [v10 setProcessedFlags:{objc_msgSend(v10, "processedFlags") | 0x800}];
  }

  if (v23 == 1)
  {
    [v10 setProcessedFlags:{objc_msgSend(v10, "processedFlags") | 0x1000}];
  }

  if (HIBYTE(v22) == 1)
  {
    [v10 setProcessedFlags:{objc_msgSend(v10, "processedFlags") | 0x8000}];
  }

  if (v22 == 1)
  {
    [v10 setProcessedFlags:{objc_msgSend(v10, "processedFlags") | 0x10000}];
  }

  if (v20 == 1)
  {
    [v10 setProcessedFlags:{objc_msgSend(v10, "processedFlags") | 0x40000}];
  }

  if ([(BiometricKitXPCServerPearl *)self cameraIndicatorControlAllowedForClient:v13])
  {
    [v10 activateCameraIndicator];
  }

  v17 = 0;
LABEL_28:

  return v17;
}

- (void)processMetadataObjects:(id)a3
{
  v97 = *MEMORY[0x29EDCA608];
  v4 = a3;
  if (__osLog)
  {
    v5 = __osLog;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v85 = v4;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEFAULT, "processMetadataObjects:%@\n", buf, 0xCu);
  }

  v6 = [MEMORY[0x29EDB8DB0] date];
  memset(v83, 0, 42);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v79 objects:v96 count:16];
  if (!v8)
  {

LABEL_119:
    v65 = 0;
    LOBYTE(v83[0]) = 1;
    v66 = 64;
LABEL_131:
    [(BiometricKitXPCServerPearl *)self faceDetectMessage:v66 info:v83 fromSecureFD:1];
    goto LABEL_132;
  }

  v9 = v8;
  v69 = v6;
  v73 = 0;
  v76 = 0;
  v10 = *v80;
  v11 = *MEMORY[0x29EDBD598];
  v12 = *MEMORY[0x29EDBD590];
  v77 = *MEMORY[0x29EDBD588];
  v75 = *MEMORY[0x29EDBD5A0];
  v74 = v7;
  do
  {
    v13 = 0;
    do
    {
      if (*v80 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v79 + 1) + 8 * v13);
      v15 = [v14 type];

      if (v15 != v11)
      {
        v16 = [v14 type];

        if (v16 != v12)
        {
          v17 = [v14 type];

          if (v17 == v77)
          {
            v41 = v14;
            v42 = [v41 eyeReliefStatus];
            if ((v42 - 1) < 5)
            {
              v43 = v42;
            }

            else
            {
              v43 = 0;
            }

            *(v83 + 7) = v43;
            if ([v41 hasDistance])
            {
              [v41 distance];
              *(v83 + 5) = v44;
            }

            goto LABEL_95;
          }

          v18 = [v14 type];

          if (v18 == v75 && HIDWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime) == 2 && (self->_secureFaceDetectRequestMessage.loggingSequenceId.number & 8) != 0)
          {
            v19 = v14;
            v20 = [v19 detectedMotion];
            if (v20)
            {
              if (v20 == 2)
              {
                LODWORD(v73) = 2;
              }

              else
              {
                if (v20 == 1)
                {
                  v73 = 0x100000001;
                  goto LABEL_95;
                }

                if (__osLog)
                {
                  v54 = __osLog;
                }

                else
                {
                  v54 = MEMORY[0x29EDCA988];
                }

                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  v55 = v54;
                  v56 = [v19 detectedMotion];
                  *buf = 134217984;
                  *v85 = v56;
                  _os_log_impl(&dword_296CA4000, v55, OS_LOG_TYPE_ERROR, "Unknown value of 'detectedMotion': %lu\n", buf, 0xCu);
                }
              }
            }

            else
            {
              LODWORD(v73) = 0;
            }

            BYTE4(v73) = 1;
            goto LABEL_95;
          }

          goto LABEL_96;
        }

        v23 = v14;
        v24 = 0.0;
        if ([v23 hasRollAngle])
        {
          [v23 rollAngle];
          v24 = v25 - *&self->_secureFaceDetectSessionID;
          if (v24 <= -180.0)
          {
            v24 = v24 + 360.0;
          }
        }

        nanotime_high = HIDWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime);
        if (nanotime_high != 2)
        {
          if (nanotime_high == 1 && (*(&self->_secureFaceDetectRequestMessage.loggingSequenceId.type + 3) & 1) == 0)
          {
            if ([v23 hasOccludedFeatures])
            {
              v27 = [v23 occludedFeatures];
              buf[0] = v27;
              if (BYTE4(self->_secureFaceDetectRequestDispatchSource) != v27)
              {
                v28 = [MEMORY[0x29EDB8DA0] dataWithBytes:buf length:1];
                [(BiometricKitXPCServerPearl *)self statusMessage:1071 withData:v28 timestamp:0];

                BYTE4(self->_secureFaceDetectRequestDispatchSource) = buf[0];
              }

              v7 = v74;
            }

            if ([v23 hasPitchAngle] && objc_msgSend(v23, "hasYawAngle") && objc_msgSend(v23, "hasRollAngle") && objc_msgSend(v23, "hasDistance"))
            {
              v78 = 0;
              [v23 pitchAngle];
              if (v29 >= -55.0)
              {
                [v23 pitchAngle];
                if (v30 <= 5.0)
                {
                  [v23 yawAngle];
                  if (v31 >= -25.0)
                  {
                    [v23 yawAngle];
                    if (v24 <= 15.0 && v24 >= -15.0 && v57 <= 25.0)
                    {
                      [v23 distance];
                      if (v58 >= 200.0)
                      {
                        [v23 distance];
                        if (v59 <= 490.0)
                        {
                          [v23 bounds];
                          if (v60 >= 165.0)
                          {
                            [v23 bounds];
                            if (v61 <= 550.0)
                            {
                              [v23 bounds];
                              if (v62 >= 165.0)
                              {
                                [v23 bounds];
                                if (v63 <= 550.0)
                                {
                                  v78 = 1;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              if (__osLog)
              {
                v32 = __osLog;
              }

              else
              {
                v32 = MEMORY[0x29EDCA988];
              }

              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                log = v32;
                [v23 pitchAngle];
                v71 = v33;
                [v23 yawAngle];
                v70 = v34;
                [v23 distance];
                v36 = v35;
                [v23 bounds];
                v38 = v37;
                [v23 bounds];
                *buf = 67110656;
                *v85 = v71;
                *&v85[4] = 1024;
                *&v85[6] = v70;
                v86 = 1024;
                v87 = v24;
                v88 = 1024;
                v89 = v36;
                v90 = 1024;
                v91 = v38;
                v92 = 1024;
                v93 = v39;
                v94 = 1024;
                v95 = v78;
                _os_log_impl(&dword_296CA4000, log, OS_LOG_TYPE_DEFAULT, "pitch=%d, yaw=%d, roll=%d, distance=%d, faceRectW=%d, faceRectH=%d --> wuPoseEligible: %u\n", buf, 0x2Cu);
              }

              if (v78 != BYTE5(self->_secureFaceDetectRequestDispatchSource))
              {
                v40 = [MEMORY[0x29EDB8DA0] dataWithBytes:&v78 length:1];
                [(BiometricKitXPCServerPearl *)self statusMessage:1072 withData:v40 timestamp:0];

                BYTE5(self->_secureFaceDetectRequestDispatchSource) = v78;
              }

              goto LABEL_86;
            }
          }

          goto LABEL_95;
        }

        if ((self->_secureFaceDetectRequestMessage.loggingSequenceId.number & 1) == 0)
        {
          v45 = 1;
          goto LABEL_65;
        }

        if ([v23 hasPayingAttention])
        {
          v45 = [v23 payingAttention] | v76;
LABEL_65:
          v76 = v45;
        }

        if ([v23 hasPitchAngle])
        {
          [v23 pitchAngle];
          *&v46 = v46;
          *(v83 + 13) = LODWORD(v46);
        }

        if ([v23 hasYawAngle])
        {
          [v23 yawAngle];
          *&v47 = v47;
          *(&v83[1] + 1) = LODWORD(v47);
        }

        if ([v23 hasRollAngle])
        {
          v48 = v24;
          *(&v83[1] + 5) = v48;
        }

        if ([v23 hasDistance])
        {
          [v23 distance];
          *(v83 + 3) = v49;
        }

        if ([v23 hasOrientation])
        {
          v50 = [v23 orientation];
          if ((v50 - 1) < 4)
          {
            v51 = v50;
          }

          else
          {
            v51 = 0;
          }

          *(v83 + 9) = v51;
        }

        if ([v23 hasConfidence])
        {
          [v23 confidence];
          *&v52 = v52 * 100.0;
          *(&v83[2] + 1) = LODWORD(v52);
        }

        goto LABEL_95;
      }

      if (HIDWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime) == 1 && (*(&self->_secureFaceDetectRequestMessage.loggingSequenceId.type + 3) & 1) == 0)
      {
        v21 = v14;
        v76 |= [v21 isReady];
        if ([v21 coachingStatus] == -1)
        {
          goto LABEL_95;
        }

        *buf = [v21 coachingStatus] == 0;
        if (([v21 coachingStatus] & 4) != 0)
        {
          v22 = 4;
        }

        else if (([v21 coachingStatus] & 0x40) != 0 || (objc_msgSend(v21, "coachingStatus") & 0x100) != 0)
        {
          v22 = 8;
        }

        else if (([v21 coachingStatus] & 0x800) != 0)
        {
          v22 = 11;
        }

        else if (([v21 coachingStatus] & 0x400) != 0)
        {
          v22 = 10;
        }

        else
        {
          if (([v21 coachingStatus] & 8) == 0)
          {
            v22 = *buf;
            if (!*buf)
            {
              goto LABEL_86;
            }

LABEL_84:
            if (v22 != LODWORD(self->_secureFaceDetectRequestDispatchSource))
            {
              v53 = [MEMORY[0x29EDB8DA0] dataWithBytes:buf length:4];
              [(BiometricKitXPCServerPearl *)self statusMessage:1067 withData:v53 timestamp:0];

              LODWORD(self->_secureFaceDetectRequestDispatchSource) = *buf;
            }

LABEL_86:
            v7 = v74;
LABEL_95:

            goto LABEL_96;
          }

          v22 = 13;
        }

        *buf = v22;
        goto LABEL_84;
      }

LABEL_96:
      ++v13;
    }

    while (v9 != v13);
    v64 = [v7 countByEnumeratingWithState:&v79 objects:v96 count:16];
    v9 = v64;
  }

  while (v64);

  v65 = v76;
  if ((v76 & 1) == 0)
  {
    v6 = v69;
    if ((v73 & 0x100000000) != 0)
    {
      v65 = 0;
      goto LABEL_129;
    }

    goto LABEL_119;
  }

  v6 = v69;
  if ((*(&self->_secureFaceDetectRequestMessage.loggingSequenceId.type + 3) & 1) == 0)
  {
    *(&self->_secureFaceDetectRequestMessage.loggingSequenceId.type + 3) = 1;
    if (HIDWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime) == 1)
    {
      if (__osLog)
      {
        v67 = __osLog;
      }

      else
      {
        v67 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_296CA4000, v67, OS_LOG_TYPE_DEFAULT, "Secure face detect succeeded\n", buf, 2u);
      }

      if ([(BiometricKitXPCServerPearl *)self setSecureFaceDetectState:1 sessionID:LODWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime)])
      {
        [BiometricKitXPCServerPearl processMetadataObjects:];
      }
    }

    [objc_opt_class() reportPearlInterlock:0];
    v65 = 1;
    if ((v73 & 0x100000000) != 0)
    {
      goto LABEL_129;
    }

LABEL_130:
    LOBYTE(v83[0]) = 1;
    v66 = 63;
    goto LABEL_131;
  }

  if ((v73 & 0x100000000) == 0)
  {
    v65 = 1;
    goto LABEL_130;
  }

LABEL_129:
  [(BiometricKitXPCServerPearl *)self motionDetectMessage:1076 info:0 state:v73];
LABEL_132:
  *(&self->_secureFaceDetectRequestMessage.loggingSequenceId.type + 2) = [v7 count] == 0;
  [self->_pearlDeviceState logSecureFrameMeta:v7 timestamp:v6];
  [*&self->_logSequenceDebug analyzeSecureFrameMeta:v7 faceDetected:v65 & 1];

  v68 = *MEMORY[0x29EDCA608];
}

- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5
{
  v21 = *MEMORY[0x29EDCA608];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  kdebug_trace();
  if (__osLog)
  {
    v11 = __osLog;
  }

  else
  {
    v11 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_DEFAULT, "AVC delegate: captureOutput:%@ didOutputMetadataObjects:%@ fromConnection:%@\n", &v15, 0x20u);
  }

  [(OS_dispatch_queue *)self->_avcStartStopQueue lock];
  if (*&self->_performCommandBufferInUse)
  {
    [(BiometricKitXPCServerPearl *)self processMetadataObjects:v9];
    captureOutput_didOutputMetadataObjects_fromConnection__unexpectedCallsCount = 0;
  }

  else if ((captureOutput_didOutputMetadataObjects_fromConnection__abcEventSent & 1) == 0 && ++captureOutput_didOutputMetadataObjects_fromConnection__unexpectedCallsCount >= 0x32)
  {
    v12 = [(BiometricKitXPCServer *)self biometricABC];
    v13 = [v12 sendAutoBugCaptureEvent:8];

    if ((v13 & 1) == 0)
    {
      [BiometricKitXPCServerPearl captureOutput:didOutputMetadataObjects:fromConnection:];
    }

    captureOutput_didOutputMetadataObjects_fromConnection__abcEventSent = 1;
  }

  [(OS_dispatch_queue *)self->_avcStartStopQueue unlock];

  v14 = *MEMORY[0x29EDCA608];
}

- (int)initSecureFaceDetect
{
  v53[2] = *MEMORY[0x29EDCA608];
  kdebug_trace();
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEBUG, "initSecureFaceDetect\n", buf, 2u);
  }

  [(OS_dispatch_queue *)self->_avcStartStopQueue lock];
  if (*&self->_performCommandBufferInUse)
  {
    [BiometricKitXPCServerPearl initSecureFaceDetect];
    goto LABEL_45;
  }

  if ((BYTE4(self->_performCommandBufferData) & 1) == 0)
  {
    [BiometricKitXPCServerPearl initSecureFaceDetect];
    goto LABEL_45;
  }

  v4 = os_transaction_create();
  v5 = *&self->_avcSessionState;
  *&self->_avcSessionState = v4;

  v6 = [MEMORY[0x29EDBD5A8] defaultDeviceWithDeviceType:*MEMORY[0x29EDBD530] mediaType:*MEMORY[0x29EDBD5C8] position:2];
  avcSessionTransaction = self->_avcSessionTransaction;
  self->_avcSessionTransaction = v6;

  if (!self->_avcSessionTransaction)
  {
    [BiometricKitXPCServerPearl initSecureFaceDetect];
    goto LABEL_45;
  }

  v8 = objc_alloc_init(MEMORY[0x29EDBD5C0]);
  avcOutput = self->_avcOutput;
  self->_avcOutput = v8;

  v10 = self->_avcOutput;
  if (!v10)
  {
    [BiometricKitXPCServerPearl initSecureFaceDetect];
    goto LABEL_45;
  }

  [(AVCaptureMetadataOutput *)v10 beginConfiguration];
  v11 = [objc_alloc(MEMORY[0x29EDBD5B0]) initWithDevice:self->_avcSessionTransaction error:0];
  avcDevice = self->_avcDevice;
  self->_avcDevice = v11;

  if (!self->_avcDevice)
  {
    [BiometricKitXPCServerPearl initSecureFaceDetect];
    goto LABEL_45;
  }

  if (([(AVCaptureMetadataOutput *)self->_avcOutput canAddInput:?]& 1) == 0)
  {
    [BiometricKitXPCServerPearl initSecureFaceDetect];
    goto LABEL_45;
  }

  [(AVCaptureMetadataOutput *)self->_avcOutput addInput:self->_avcDevice];
  v13 = objc_alloc_init(MEMORY[0x29EDBD5B8]);
  avcInput = self->_avcInput;
  self->_avcInput = v13;

  v15 = self->_avcInput;
  if (!v15)
  {
    [BiometricKitXPCServerPearl initSecureFaceDetect];
    goto LABEL_45;
  }

  [(AVCaptureDeviceInput *)v15 setMetadataObjectsDelegate:self queue:self->_avcObservers];
  if (([(AVCaptureMetadataOutput *)self->_avcOutput canAddOutput:self->_avcInput]& 1) == 0)
  {
    [BiometricKitXPCServerPearl initSecureFaceDetect];
    goto LABEL_45;
  }

  [(AVCaptureMetadataOutput *)self->_avcOutput addOutput:self->_avcInput];
  [(AVCaptureDeviceInput *)self->_avcInput setAttentionDetectionEnabled:1];
  nanotime_high = HIDWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime);
  if (nanotime_high == 2)
  {
    v20 = *&self->_secureFaceDetectRequestMessage.loggingSequenceId.number;
    if ((v20 & 4) != 0)
    {
      v21 = *MEMORY[0x29EDBD588];
      v52[0] = *MEMORY[0x29EDBD590];
      v52[1] = v21;
      v19 = [MEMORY[0x29EDB8D80] arrayWithObjects:v52 count:2];
    }

    else
    {
      if ((v20 & 8) != 0)
      {
        v51 = *MEMORY[0x29EDBD5A0];
        [MEMORY[0x29EDB8D80] arrayWithObjects:&v51 count:1];
      }

      else
      {
        v50 = *MEMORY[0x29EDBD590];
        [MEMORY[0x29EDB8D80] arrayWithObjects:&v50 count:1];
      }
      v19 = ;
    }

LABEL_27:
    v22 = v19;
    [(AVCaptureDeviceInput *)self->_avcInput setMetadataObjectTypes:v19];

    goto LABEL_28;
  }

  if (nanotime_high == 1)
  {
    v17 = *&self->_secureFaceDetectRequestMessage.loggingSequenceId.number;
    if ((v17 & 2) != 0)
    {
      [(AVCaptureDeviceInput *)self->_avcInput setPeriocularForFaceIDReadinessEnabled:1];
      v17 = *&self->_secureFaceDetectRequestMessage.loggingSequenceId.number;
    }

    if (v17)
    {
      [(AVCaptureDeviceInput *)self->_avcInput setAttentionForFaceIDReadinessRequired:1];
    }

    [(AVCaptureDeviceInput *)self->_avcInput setFaceOcclusionDetectionEnabled:1];
    v18 = *MEMORY[0x29EDBD598];
    v53[0] = *MEMORY[0x29EDBD590];
    v53[1] = v18;
    v19 = [MEMORY[0x29EDB8D80] arrayWithObjects:v53 count:2];
    goto LABEL_27;
  }

LABEL_28:
  [(AVCaptureMetadataOutput *)self->_avcOutput commitConfiguration];
  v23 = [MEMORY[0x29EDB8DE8] array];
  avcSession = self->_avcSession;
  self->_avcSession = v23;

  if (self->_avcSession)
  {
    objc_initWeak(buf, self);
    v47[0] = MEMORY[0x29EDCA5F8];
    v47[1] = 3221225472;
    v47[2] = __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke;
    v47[3] = &unk_29EE547D8;
    objc_copyWeak(&v48, buf);
    v47[4] = self;
    v25 = MEMORY[0x29C262C70](v47);
    v26 = [MEMORY[0x29EDBA068] defaultCenter];
    v27 = *MEMORY[0x29EDBD570];
    v28 = self->_avcOutput;
    v45[0] = MEMORY[0x29EDCA5F8];
    v45[1] = 3221225472;
    v45[2] = __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_846;
    v45[3] = &unk_29EE54800;
    v29 = v25;
    v46 = v29;
    v30 = [v26 addObserverForName:v27 object:v28 queue:0 usingBlock:v45];

    [(AVCaptureSession *)self->_avcSession addObject:v30];
    v31 = [MEMORY[0x29EDBA068] defaultCenter];
    v32 = [v31 addObserverForName:*MEMORY[0x29EDBD558] object:self->_avcOutput queue:0 usingBlock:&__block_literal_global_849];

    [(AVCaptureSession *)self->_avcSession addObject:v32];
    v33 = [MEMORY[0x29EDBA068] defaultCenter];
    v34 = [v33 addObserverForName:*MEMORY[0x29EDBD560] object:self->_avcOutput queue:0 usingBlock:&__block_literal_global_852];

    [(AVCaptureSession *)self->_avcSession addObject:v34];
    v35 = [MEMORY[0x29EDBA068] defaultCenter];
    v36 = [v35 addObserverForName:*MEMORY[0x29EDBD578] object:self->_avcOutput queue:0 usingBlock:&__block_literal_global_855];

    [(AVCaptureSession *)self->_avcSession addObject:v36];
    v37 = [MEMORY[0x29EDBA068] defaultCenter];
    v38 = [v37 addObserverForName:*MEMORY[0x29EDBD568] object:self->_avcOutput queue:0 usingBlock:&__block_literal_global_858];

    [(AVCaptureSession *)self->_avcSession addObject:v38];
    objc_destroyWeak(&v48);
    objc_destroyWeak(buf);
    [(BiometricKitXPCServerPearl *)self clearSecureFaceDetectContext];
    *&self->_performCommandBufferInUse = 1;
    [*(&self->super.super.isa + v44) unlock];
    if (__osLogTrace)
    {
      v39 = __osLogTrace;
    }

    else
    {
      v39 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = 0;
      _os_log_impl(&dword_296CA4000, v39, OS_LOG_TYPE_DEBUG, "initSecureFaceDetect: -> %d\n", buf, 8u);
    }

    v40 = 0;
    goto LABEL_35;
  }

  [BiometricKitXPCServerPearl initSecureFaceDetect];
LABEL_45:
  v40 = *buf;
  [(BiometricKitXPCServerPearl *)self deinitSecureFaceDetect];
  [*(&self->super.super.isa + v44) unlock];
  if (__osLogTrace)
  {
    v43 = __osLogTrace;
  }

  else
  {
    v43 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v40;
    _os_log_impl(&dword_296CA4000, v43, OS_LOG_TYPE_ERROR, "initSecureFaceDetect: -> %d\n", buf, 8u);
  }

LABEL_35:
  kdebug_trace();
  v41 = *MEMORY[0x29EDCA608];
  return v40;
}

void __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained[74];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_2;
  block[3] = &unk_29EE547B0;
  objc_copyWeak(&v11, (a1 + 40));
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, block);

  objc_destroyWeak(&v11);
}

void __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained[76] lock];
  if (*(WeakRetained + 134))
  {
    v3 = [a1[4] object];
    v4 = WeakRetained[72];

    if (v3 == v4)
    {
      if ([WeakRetained setSecureFaceDetectState:2 sessionID:*(WeakRetained + 164)])
      {
        __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_2_cold_2();
      }

      [a1[5] stopSecureFaceDetect];
    }

    else
    {
      v5 = [a1[4] object];
      v6 = WeakRetained[72];

      if (v5 != v6)
      {
        __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_2_cold_1();
      }
    }
  }

  [WeakRetained[76] unlock];
}

void __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_846(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  if (__osLog)
  {
    v4 = __osLog;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEFAULT, "AVF notification: AVCaptureSessionRuntimeErrorNotification\n", v5, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_847()
{
  if (__osLog)
  {
    v0 = __osLog;
  }

  else
  {
    v0 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_296CA4000, v0, OS_LOG_TYPE_DEFAULT, "AVF notification: AVCaptureSessionDidStartRunningNotification\n", v1, 2u);
  }
}

void __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_850()
{
  if (__osLog)
  {
    v0 = __osLog;
  }

  else
  {
    v0 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_296CA4000, v0, OS_LOG_TYPE_DEFAULT, "AVF notification: AVCaptureSessionDidStopRunningNotification\n", v1, 2u);
  }
}

void __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_853()
{
  if (__osLog)
  {
    v0 = __osLog;
  }

  else
  {
    v0 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_296CA4000, v0, OS_LOG_TYPE_DEFAULT, "AVF notification: AVCaptureSessionWasInterruptedNotification\n", v1, 2u);
  }
}

void __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_856()
{
  if (__osLog)
  {
    v0 = __osLog;
  }

  else
  {
    v0 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_296CA4000, v0, OS_LOG_TYPE_DEFAULT, "AVF notification: AVCaptureSessionInterruptionEndedNotification\n", v1, 2u);
  }
}

- (void)deinitSecureFaceDetect
{
  v25 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEBUG, "deinitSecureFaceDetect\n", buf, 2u);
  }

  [(OS_dispatch_queue *)self->_avcStartStopQueue lock];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_avcSession;
  v5 = [(AVCaptureSession *)v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [MEMORY[0x29EDBA068] defaultCenter];
        [v10 removeObserver:v9];
      }

      v6 = [(AVCaptureSession *)v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  avcSession = self->_avcSession;
  self->_avcSession = 0;

  avcOutput = self->_avcOutput;
  self->_avcOutput = 0;

  avcInput = self->_avcInput;
  self->_avcInput = 0;

  avcDevice = self->_avcDevice;
  self->_avcDevice = 0;

  avcSessionTransaction = self->_avcSessionTransaction;
  self->_avcSessionTransaction = 0;

  *&self->_performCommandBufferInUse = 0;
  LODWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime) = 0;
  HIDWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime) = 0;
  *&self->_secureFaceDetectRequestMessage.loggingSequenceId.number = 0;
  *(&self->_secureFaceDetectRequestMessage.loggingSequenceId.type + 2) = 0;
  [(BiometricKitXPCServerPearl *)self clearSecureFaceDetectContext];
  v16 = *&self->_avcSessionState;
  *&self->_avcSessionState = 0;

  [(OS_dispatch_queue *)self->_avcStartStopQueue unlock];
  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v17, OS_LOG_TYPE_DEBUG, "deinitSecureFaceDetect: -> void\n", buf, 2u);
  }

  v18 = *MEMORY[0x29EDCA608];
}

- (void)clearSecureFaceDetectContext
{
  *(&self->_secureFaceDetectRequestMessage.loggingSequenceId.type + 3) = 0;
  LODWORD(self->_secureFaceDetectRequestDispatchSource) = 1;
  BYTE4(self->_secureFaceDetectRequestDispatchSource) = 0;
  BYTE5(self->_secureFaceDetectRequestDispatchSource) = 0;
}

- (void)stopSecureFaceDetect
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEFAULT, "stopSecureFaceDetect\n", buf, 2u);
  }

  [(OS_dispatch_queue *)self->_avcStartStopQueue lock];
  v5 = *&self->_performCommandBufferInUse;
  if (v5)
  {
    if (v5 != 1)
    {
      v6 = self->_avcOutput;
      v7 = *&self->_avcSessionState;
      if (__osLog)
      {
        v8 = __osLog;
      }

      else
      {
        v8 = v3;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v21 = v6;
        _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEFAULT, "stopSecureFaceDetect: dispatch stopRunning (%p)\n", buf, 0xCu);
      }

      avcQueue = self->_avcQueue;
      v14 = MEMORY[0x29EDCA5F8];
      v15 = 3221225472;
      v16 = __50__BiometricKitXPCServerPearl_stopSecureFaceDetect__block_invoke;
      v17 = &unk_29EE546F8;
      v18 = v7;
      v19 = v6;
      v10 = v6;
      v11 = v7;
      dispatch_async(avcQueue, &v14);
      [self->_pearlDeviceState logSecureFaceDetectStop];
      [*&self->_logSequenceDebug analyzeSecureFaceDetectStop];
    }

    [(BiometricKitXPCServerPearl *)self deinitSecureFaceDetect];
  }

  [(OS_dispatch_queue *)self->_avcStartStopQueue unlock];
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v3;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_DEFAULT, "stopSecureFaceDetect: -> void\n", buf, 2u);
  }

  v13 = *MEMORY[0x29EDCA608];
}

void __50__BiometricKitXPCServerPearl_stopSecureFaceDetect__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDCA988];
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v11 = 134217984;
    v12 = v4;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEFAULT, "stopSecureFaceDetect: calling stopRunning (%p)\n", &v11, 0xCu);
  }

  v5 = [MEMORY[0x29EDB8DB0] date];
  kdebug_trace();
  [*(a1 + 40) stopRunning];
  kdebug_trace();
  if (__osLog)
  {
    v6 = __osLog;
  }

  else
  {
    v6 = v2;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = v6;
    [v5 timeIntervalSinceNow];
    v11 = 134218240;
    v12 = v7;
    v13 = 2048;
    v14 = v9 * -1000.0;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEFAULT, "stopSecureFaceDetect: stopRunning (%p) (dt = %f ms)\n", &v11, 0x16u);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (int)startSecureFaceDetect
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEFAULT, "startSecureFaceDetect\n", buf, 2u);
  }

  [(OS_dispatch_queue *)self->_avcStartStopQueue lock];
  v5 = [(BiometricKitXPCServerPearl *)self initSecureFaceDetect];
  if (v5)
  {
    [BiometricKitXPCServerPearl startSecureFaceDetect];
  }

  else
  {
    *&self->_performCommandBufferInUse = 2;
    v6 = self->_avcOutput;
    v7 = *&self->_avcSessionState;
    objc_initWeak(&location, self);
    if (__osLog)
    {
      v8 = __osLog;
    }

    else
    {
      v8 = v3;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v24 = v6;
      _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEFAULT, "startSecureFaceDetect: dispatch startRunning (%p)\n", buf, 0xCu);
    }

    avcQueue = self->_avcQueue;
    v15 = MEMORY[0x29EDCA5F8];
    v16 = 3221225472;
    v17 = __51__BiometricKitXPCServerPearl_startSecureFaceDetect__block_invoke;
    v18 = &unk_29EE547B0;
    objc_copyWeak(&v21, &location);
    v19 = v7;
    v20 = v6;
    v10 = v6;
    v11 = v7;
    dispatch_async(avcQueue, &v15);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  [(OS_dispatch_queue *)self->_avcStartStopQueue unlock:v15];
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v3;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v24) = v5;
    _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_DEFAULT, "startSecureFaceDetect: -> %d\n", buf, 8u);
  }

  v13 = *MEMORY[0x29EDCA608];
  return v5;
}

void __51__BiometricKitXPCServerPearl_startSecureFaceDetect__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained[76] lock];
  if (*(a1 + 40) == WeakRetained[72])
  {
    v4 = *(WeakRetained + 134);
    if (v4 != 2)
    {
      if (v4 == 4)
      {
        *(WeakRetained + 134) = 0;
      }

      goto LABEL_2;
    }

    [WeakRetained[76] unlock];
    v5 = MEMORY[0x29EDCA988];
    if (__osLog)
    {
      v6 = __osLog;
    }

    else
    {
      v6 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v20 = 134217984;
      v21 = v7;
      _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEFAULT, "startSecureFaceDetect: calling startRunning (%p)\n", &v20, 0xCu);
    }

    v8 = [MEMORY[0x29EDB8DB0] date];
    kdebug_trace();
    [*(a1 + 40) startRunning];
    kdebug_trace();
    if (__osLog)
    {
      v9 = __osLog;
    }

    else
    {
      v9 = v5;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = v9;
      [v8 timeIntervalSinceNow];
      v13 = v12 * -1000.0;
      v14 = [*(a1 + 40) isRunning];
      v15 = [*(a1 + 40) isInterrupted];
      v20 = 134218752;
      v21 = v10;
      v5 = MEMORY[0x29EDCA988];
      v22 = 2048;
      v23 = v13;
      v24 = 1024;
      v25 = v14;
      v26 = 1024;
      v27 = v15;
      _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_DEFAULT, "startSecureFaceDetect: startRunning (%p) (dt = %f ms), running:%u, interrupted:%u\n", &v20, 0x22u);
    }

    [WeakRetained[76] lock];
    v16 = *(a1 + 40);
    if (WeakRetained[72] != v16)
    {
      goto LABEL_18;
    }

    v19 = *(WeakRetained + 134);
    if (v19 != 4)
    {
      if (v19 != 2)
      {
LABEL_18:
        [WeakRetained[76] unlock];
        if (__osLog)
        {
          v17 = __osLog;
        }

        else
        {
          v17 = v5;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 40);
          v20 = 134217984;
          v21 = v18;
          _os_log_impl(&dword_296CA4000, v17, OS_LOG_TYPE_DEFAULT, "startSecureFaceDetect: session abandoned, calling stopRunning (%p)\n", &v20, 0xCu);
        }

        [*(a1 + 40) stopRunning];
        goto LABEL_33;
      }

      if (([v16 isRunning] & 1) != 0 || objc_msgSend(*(a1 + 40), "isInterrupted"))
      {
        *(WeakRetained + 134) = 3;
LABEL_32:
        [WeakRetained[76] unlock];
LABEL_33:

        goto LABEL_3;
      }

      if ([WeakRetained setSecureFaceDetectState:2 sessionID:*(WeakRetained + 164)])
      {
        __51__BiometricKitXPCServerPearl_startSecureFaceDetect__block_invoke_cold_1();
      }
    }

    [WeakRetained stopSecureFaceDetect];
    goto LABEL_32;
  }

LABEL_2:
  [WeakRetained[76] unlock];
LABEL_3:

  v3 = *MEMORY[0x29EDCA608];
}

- (void)processSecureFaceDetectRequestMessage
{
  v32 = *MEMORY[0x29EDCA608];
  [(NSRecursiveLock *)self->_avcLock lock];
  if (self->_secureFaceDetectRequestMessageLock)
  {
    v3 = *(&self->_secureFaceDetectRequestMessageLock + 1);
    v4 = *(&self->_secureFaceDetectRequestMessageLock + 5);
    v5 = *(&self->_secureFaceDetectRequestMessageValid + 1);
    *v25 = *(&self->_secureFaceDetectRequestMessageValid + 5);
    flags = self->_secureFaceDetectRequestMessage.flags;
    LOBYTE(self->_secureFaceDetectRequestMessageLock) = 0;
    *&v25[7] = flags;
    *(&self->_secureFaceDetectRequestMessageLock + 1) = 0;
    *(&self->_secureFaceDetectRequestMessageValid + 1) = 0;
    *&self->_secureFaceDetectRequestMessage.request = 0;
    [(NSRecursiveLock *)self->_avcLock unlock];
    [(OS_dispatch_queue *)self->_avcStartStopQueue lock];
    if (__osLog)
    {
      v7 = __osLog;
    }

    else
    {
      v7 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *&self->_performCommandBufferInUse;
      *buf = 67109888;
      *v27 = v3;
      *&v27[4] = 1024;
      *&v27[6] = v4;
      *&v27[10] = 1024;
      *&v27[12] = v5;
      *&v27[16] = 1024;
      *&v27[18] = v8;
      _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEFAULT, "processSecureFaceDetectRequestMessage: request:%u, flags:0x%x, sessionID:%u (_avcSessionState:%u)\n", buf, 0x1Au);
    }

    if (!v3)
    {
      v12 = *&self->_performCommandBufferInUse;
      if (v12 == 2 || v12 == 4)
      {
        *&self->_performCommandBufferInUse = 4;
      }

      else
      {
        [(BiometricKitXPCServerPearl *)self stopSecureFaceDetect];
      }

LABEL_38:
      [(OS_dispatch_queue *)self->_avcStartStopQueue unlock];
      v19 = *MEMORY[0x29EDCA608];
      return;
    }

    if (v5 == LODWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime))
    {
      v9 = 0;
    }

    else
    {
      if (*&self->_performCommandBufferInUse)
      {
        if (v3 == 2 && HIDWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime) == 2)
        {
          v13 = *&self->_secureFaceDetectRequestMessage.loggingSequenceId.number;
          if (((v13 ^ v4) & 0xFFFFFFFB) == 0 && ((v13 & 4) != 0 || (v4 & 4) == 0))
          {
            if (__osLog)
            {
              v20 = __osLog;
            }

            else
            {
              v20 = MEMORY[0x29EDCA988];
            }

            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              nanotime_high = HIDWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime);
              v22 = *&self->_secureFaceDetectRequestMessage.loggingSequenceId.number;
              *buf = 67109376;
              *v27 = nanotime_high;
              *&v27[4] = 1024;
              *&v27[6] = v22;
              _os_log_impl(&dword_296CA4000, v20, OS_LOG_TYPE_DEFAULT, "currentRequest:%u currentFlags:0x%x -> can reuse current AVC session\n", buf, 0xEu);
            }

            LODWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime) = v5;
            v9 = 1;
            goto LABEL_24;
          }
        }

        [(BiometricKitXPCServerPearl *)self stopSecureFaceDetect];
      }

      v9 = 0;
      LODWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime) = v5;
      HIDWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime) = v3;
      *&self->_secureFaceDetectRequestMessage.loggingSequenceId.number = v4;
    }

LABEL_24:
    pearlDeviceState = self->_pearlDeviceState;
    *buf = v3;
    *v27 = v4;
    *&v27[4] = v5;
    *&v27[8] = *v25;
    *&v27[15] = *&v25[7];
    [pearlDeviceState logSecureFaceDetectStart:buf];
    [*&self->_logSequenceDebug analyzeSecureFaceDetectStart:v3 sessionID:v5];
    if (v9)
    {
      if (*&self->_performCommandBufferInUse == 4)
      {
        *&self->_performCommandBufferInUse = 2;
      }

      if (*(&self->_secureFaceDetectRequestMessage.loggingSequenceId.type + 2) == 1)
      {
        [(BiometricKitXPCServerPearl *)self processMetadataObjects:0];
      }
    }

    else
    {
      v15 = [(BiometricKitXPCServerPearl *)self startSecureFaceDetect];
      if (v15)
      {
        v16 = v15;
        if (__osLog)
        {
          v17 = __osLog;
        }

        else
        {
          v17 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          *v27 = "err == 0 ";
          *&v27[8] = 2048;
          *&v27[10] = v16;
          *&v27[18] = 2080;
          *&v27[20] = &unk_296D32C0B;
          v28 = 2080;
          v29 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
          v30 = 1024;
          v31 = 6356;
          _os_log_impl(&dword_296CA4000, v17, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v18 = [(BiometricKitXPCServerPearl *)self setSecureFaceDetectState:2 sessionID:v5];
        if (v18)
        {
          v23 = v18;
          v24 = (__osLog ? __osLog : MEMORY[0x29EDCA988]);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            *v27 = "err == 0 ";
            *&v27[8] = 2048;
            *&v27[10] = v23;
            *&v27[18] = 2080;
            *&v27[20] = &unk_296D32C0B;
            v28 = 2080;
            v29 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
            v30 = 1024;
            v31 = 6359;
            _os_log_impl(&dword_296CA4000, v24, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
          }
        }

        [self->_pearlDeviceState logSecureFaceDetectStop];
        [*&self->_logSequenceDebug analyzeSecureFaceDetectStop];
      }
    }

    goto LABEL_38;
  }

  avcLock = self->_avcLock;
  v11 = *MEMORY[0x29EDCA608];

  [(NSRecursiveLock *)avcLock unlock];
}

- (void)secureFaceDetectRequestMessage:(id *)a3
{
  v18 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    if (a3->var2)
    {
      var0 = a3->var0;
      var1 = a3->var1;
      kdebug_trace();
      if (__osLog)
      {
        v7 = __osLog;
      }

      else
      {
        v7 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a3->var0;
        v9 = a3->var1;
        var2 = a3->var2;
        v13[0] = 67109632;
        v13[1] = v8;
        v14 = 1024;
        v15 = v9;
        v16 = 1024;
        v17 = var2;
        _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEFAULT, "secureFaceDetectRequestMessage: request:%u, flags:0x%x, sessionID:%u\n", v13, 0x14u);
      }

      if (BYTE4(self->_performCommandBufferData))
      {
        [(NSRecursiveLock *)self->_avcLock lock];
        v11 = *(&a3->var2 + 7);
        *(&self->_secureFaceDetectRequestMessageLock + 1) = *&a3->var0;
        *&self->_secureFaceDetectRequestMessage.request = v11;
        LOBYTE(self->_secureFaceDetectRequestMessageLock) = 1;
        dispatch_source_merge_data(*&self->_secureFaceDetectRequestMessage.sessionID, 1uLL);
        [(NSRecursiveLock *)self->_avcLock unlock];
      }

      else
      {
        [BiometricKitXPCServerPearl secureFaceDetectRequestMessage:];
      }
    }

    else
    {
      [BiometricKitXPCServerPearl secureFaceDetectRequestMessage:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl secureFaceDetectRequestMessage:];
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (int)performMatchCommand:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x29EDB8DF8] dataWithLength:76];
  v6 = v5;
  if (!v4)
  {
    [BiometricKitXPCServerPearl performMatchCommand:];
LABEL_23:
    v23 = v25;
    goto LABEL_18;
  }

  v7 = [v5 mutableBytes];
  if (!v7)
  {
    [BiometricKitXPCServerPearl performMatchCommand:];
    goto LABEL_23;
  }

  v8 = v7;
  *v7 = [v4 processedFlags];
  v8[1] = [v4 userID];
  *(v8 + 8) = [v4 trigger];
  v9 = [(BiometricKitXPCServerPearl *)self deviceOrientation];
  if (BYTE4(self->_performCommandBufferData) == 1 && [v4 longTimeout] && v9 == 5)
  {
    *(v8 + 9) = 1;
  }

  v10 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v9];
  [self->_pearlDeviceState setInitialDeviceOrientation:v10];

  if ([v4 forCredentialSet])
  {
    v11 = [v4 acmContext];
    v12 = [v11 length];

    if (v12 >= 0x21)
    {
      [BiometricKitXPCServerPearl performMatchCommand:];
      goto LABEL_23;
    }

    v13 = [v4 acmContext];
    v8[8] = [v13 length];

    v14 = [v4 acmContext];
    v15 = [v4 acmContext];
    [v14 getBytes:v8 + 9 length:{objc_msgSend(v15, "length")}];
  }

  else if ([v4 noBioLockout])
  {
    v8[8] = [v4 noBioLockoutUserID];
    v16 = [v4 noBioLockoutAuthData];
    v17 = *(v16 + 32);
    v18 = *(v16 + 16);
    *(v8 + 9) = *v16;
    *(v8 + 13) = v18;
    *(v8 + 17) = v17;
  }

  if ([v4 preAugmentationCheck])
  {
    v19 = [v4 preAugmentationCheckIdentity];
    v20 = *(v19 + 16);
    *(v8 + 10) = *v19;
    *(v8 + 26) = v20;
  }

  v21 = [v4 selectedIdentitiesBlob];

  if (v21)
  {
    v22 = [v4 selectedIdentitiesBlob];
    [v6 appendData:v22];
  }

  if (-[BiometricKitXPCServerPearl performCommand:inValue:inData:inSize:outData:outSize:](self, "performCommand:inValue:inData:inSize:outData:outSize:", 4, 0, [v6 bytes], objc_msgSend(v6, "length"), 0, 0))
  {
    [BiometricKitXPCServerPearl performMatchCommand:];
    goto LABEL_23;
  }

  [(BiometricKitXPCServerPearl *)self checkBioLogConsent];
  v23 = 0;
LABEL_18:

  return v23;
}

- (void)checkBioLogConsent
{
  if (isInternalBuild() && (BYTE1(self->_log) & 1) == 0)
  {
    v3 = [MEMORY[0x29EDBFD50] sharedInstance];
    if (([v3 BOOLForKey:@"oldBioLogPurgedAfterUpdate"] & 1) == 0)
    {
      v4 = MEMORY[0x29EDCA988];
      if (__osLog)
      {
        v5 = __osLog;
      }

      else
      {
        v5 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEFAULT, "Removing old BioLogs due to missing oldBioLogPurgedAfterUpdate key\n", buf, 2u);
      }

      +[BioLog removeBioLogAsync];
      [v3 setBool:1 forKey:@"framesRawLoggingDisabled"];
      [v3 setBool:1 forKey:@"oldBioLogPurgedAfterUpdate"];
      [v3 setBool:1 forKey:@"bioLogMatchFailureSettingsPrompt"];
      [v3 synchronize];
      [(BiometricKitXPCServerPearl *)self updateLoggingState];
      if (__osLog)
      {
        v6 = __osLog;
      }

      else
      {
        v6 = v4;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEFAULT, "Removing old BioLogs done\n", v7, 2u);
      }
    }
  }
}

- (int)initPresenceDetectOperation:(id)a3 options:(id)a4 client:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32 = 0.0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v11 = mach_continuous_time();
  if (!v8)
  {
    [BiometricKitXPCServerPearl initPresenceDetectOperation:options:client:];
    goto LABEL_36;
  }

  v12 = v11;
  v28.receiver = self;
  v28.super_class = BiometricKitXPCServerPearl;
  if ([(BiometricKitXPCServer *)&v28 initPresenceDetectOperation:v8 options:v9 client:v10])
  {
    [BiometricKitXPCServerPearl initPresenceDetectOperation:options:client:];
    goto LABEL_36;
  }

  if (v9)
  {
    if (dictionaryGetDouble())
    {
      [BiometricKitXPCServerPearl initPresenceDetectOperation:options:client:];
      goto LABEL_36;
    }

    if (dictionaryGetBool())
    {
      [BiometricKitXPCServerPearl initPresenceDetectOperation:options:client:];
      goto LABEL_36;
    }

    if (dictionaryGetBool())
    {
      [BiometricKitXPCServerPearl initPresenceDetectOperation:options:client:];
      goto LABEL_36;
    }

    if (dictionaryGetBool())
    {
      [BiometricKitXPCServerPearl initPresenceDetectOperation:options:client:];
      goto LABEL_36;
    }

    if (v30 == 1)
    {
      if (v31 == 1)
      {
        [BiometricKitXPCServerPearl initPresenceDetectOperation:options:client:];
        goto LABEL_36;
      }

      if (initPresenceDetectOperation_options_client__checked == 1)
      {
        if ((initPresenceDetectOperation_options_client__motionDetectSupported & 1) == 0)
        {
LABEL_12:
          [BiometricKitXPCServerPearl initPresenceDetectOperation:options:client:];
LABEL_36:
          v21 = location;
          goto LABEL_26;
        }
      }

      else
      {
        initPresenceDetectOperation_options_client__motionDetectSupported = MGGetBoolAnswer();
        initPresenceDetectOperation_options_client__checked = 1;
        if ((initPresenceDetectOperation_options_client__motionDetectSupported & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }

    if (dictionaryGetInteger())
    {
      [BiometricKitXPCServerPearl initPresenceDetectOperation:options:client:];
      goto LABEL_36;
    }

    if (v29 == 1 && v30 == 1)
    {
      [BiometricKitXPCServerPearl initPresenceDetectOperation:options:client:];
      goto LABEL_36;
    }
  }

  v13 = v32;
  if (v32 >= 0.0)
  {
    v14 = nanosecondsToAbsolute() + v12;
  }

  else
  {
    v14 = -1;
  }

  if (v14 < v12)
  {
    v15 = -1;
  }

  else
  {
    v15 = v14;
  }

  [v8 setPriority:{0x8000000000000000, v13}];
  [v8 setContinuous:v29 == 1];
  [v8 setEndTime:v15];
  [v8 setHighPriority:HIBYTE(v31)];
  [v8 setEyeRelief:v31];
  [v8 setMotionDetect:v30];
  if (v32 >= 0.0)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, v8);
    v16 = MEMORY[0x29EDB8E68];
    v17 = v32;
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 3221225472;
    v23[2] = __73__BiometricKitXPCServerPearl_initPresenceDetectOperation_options_client___block_invoke;
    v23[3] = &unk_29EE54848;
    objc_copyWeak(&v24, &location);
    objc_copyWeak(&v25, &from);
    v18 = [v16 timerWithTimeInterval:0 repeats:v23 block:v17];
    [v8 setTimer:v18];

    v19 = [MEMORY[0x29EDB8E48] mainRunLoop];
    v20 = [v8 timer];
    [v19 addTimer:v20 forMode:*MEMORY[0x29EDB8CC0]];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  v21 = 0;
LABEL_26:

  return v21;
}

void __73__BiometricKitXPCServerPearl_initPresenceDetectOperation_options_client___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 isValid];

  v6 = 0;
  if (v5 && v4)
  {
    [v4 setTimeouted:1];
    if ([v4 checked])
    {
      v6 = [v4 client];
      if (v6 && WeakRetained)
      {
        [WeakRetained cancelWithClient:v6];
      }
    }

    else
    {
      v6 = 0;
    }
  }
}

- (int)performPresenceDetectCommand:(id)a3 restart:(BOOL)a4
{
  v4 = a4;
  v44 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v42 = 0;
  v41 = 0;
  v7 = mach_continuous_time();
  obj = [(BiometricKitXPCServer *)self bioOpsQueue];
  objc_sync_enter(obj);
  v35 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  objc_sync_enter(v35);
  v8 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  v9 = [(BiometricKitXPCServer *)self bioOpsQueue];
  v10 = [v8 arrayByAddingObjectsFromArray:v9];
  v11 = [MEMORY[0x29EDBA0A8] predicateWithBlock:&__block_literal_global_898];
  v12 = [v10 filteredArrayUsingPredicate:v11];

  v13 = [MEMORY[0x29EDBA0A8] predicateWithBlock:&__block_literal_global_900];
  v14 = [v12 filteredArrayUsingPredicate:v13];

  if ([v14 count])
  {
    v15 = v14;

    v12 = v15;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v43 count:16];
  v31 = v14;
  v32 = v4;
  v33 = self;
  v34 = v6;
  if (!v17)
  {
    v22 = -1;
    goto LABEL_30;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *v38;
  v22 = -1;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v38 != v21)
      {
        objc_enumerationMutation(v16);
      }

      v24 = *(*(&v37 + 1) + 8 * i);
      v25 = [v24 endTime];
      if (v22 >= v25)
      {
        v22 = v25;
      }

      if (v20)
      {
        goto LABEL_13;
      }

      if ([v24 highPriority])
      {
        v20 = 1;
        BYTE4(v41) = 1;
LABEL_13:
        if (v19)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      v20 = 0;
      if (v19)
      {
LABEL_18:
        if (v18)
        {
          goto LABEL_24;
        }

        goto LABEL_19;
      }

LABEL_14:
      if ([v24 continuous])
      {
        v19 = 1;
        BYTE5(v41) = 1;
        if (v18)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v19 = 0;
        if (v18)
        {
          goto LABEL_24;
        }
      }

LABEL_19:
      if ([v24 eyeRelief])
      {
        v18 = 1;
        BYTE6(v41) = 1;
      }

      else
      {
        v18 = 0;
      }

LABEL_24:
      if ([v24 motionDetect])
      {
        HIBYTE(v41) = 1;
      }
    }

    v17 = [v16 countByEnumeratingWithState:&v37 objects:v43 count:16];
  }

  while (v17);
LABEL_30:

  objc_sync_exit(v35);
  objc_sync_exit(obj);

  if (v22 <= v7)
  {
    v27 = 0;
  }

  else
  {
    v26 = absoluteToMiliseconds();
    v27 = -1;
    if (v26 < 0xFFFFFFFF)
    {
      v27 = v26;
    }
  }

  LODWORD(v41) = v27;
  if (v32)
  {
    v42 = 1;
  }

  v28 = [(BiometricKitXPCServerPearl *)v33 performCommand:5 inValue:0 inData:&v41 inSize:9 outData:0 outSize:0];
  if (v28)
  {
    [BiometricKitXPCServerPearl performPresenceDetectCommand:restart:];
  }

  v29 = *MEMORY[0x29EDCA608];
  return v28;
}

uint64_t __67__BiometricKitXPCServerPearl_performPresenceDetectCommand_restart___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] != 3 || objc_msgSend(v2, "status") == 4)
  {
    goto LABEL_3;
  }

  if (![v2 checked])
  {
    v3 = 1;
    goto LABEL_4;
  }

  if ([v2 finished])
  {
LABEL_3:
    v3 = 0;
  }

  else
  {
    v3 = [v2 timeouted] ^ 1;
  }

LABEL_4:

  return v3;
}

- (int)cancelWithClient:(id)a3
{
  v32 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [(BiometricKitXPCServer *)self bioOpsQueue];
  objc_sync_enter(v5);
  v6 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  objc_sync_enter(v6);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [(BiometricKitXPCServer *)self bioOpsQueue];
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = *v28;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [v11 client];
        v13 = v12;
        if (v12 == v4)
        {
          v14 = [v11 type] == 3;

          if (v14)
          {
            LODWORD(v8) = 1;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v26.receiver = self;
  v26.super_class = BiometricKitXPCServerPearl;
  v15 = [(BiometricKitXPCServer *)&v26 cancelWithClient:v4];
  if (v15)
  {
    [BiometricKitXPCServerPearl cancelWithClient:];
    goto LABEL_26;
  }

  if (v8)
  {
    v16 = [(BiometricKitXPCServer *)self runningBioOp];
    if ([v16 type] != 3)
    {
LABEL_23:

      goto LABEL_26;
    }

    v17 = [(BiometricKitXPCServer *)self runningBioOp];
    if ([v17 status] != 2)
    {

      goto LABEL_26;
    }

    v18 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
    v19 = [v18 count] == 1;

    if (v19)
    {
      v16 = [(BiometricKitXPCServer *)self runningBioOp];
      if (![v16 checked] || (objc_msgSend(v16, "finished") & 1) == 0 && (objc_msgSend(v16, "timeouted") & 1) == 0)
      {
        v20 = [(BiometricKitXPCServer *)self runningBioOp];
        v21 = [(BiometricKitXPCServerPearl *)self performPresenceDetectCommand:v20 restart:1];

        if (v21)
        {
          [BiometricKitXPCServerPearl cancelWithClient:];
          v24 = [(BiometricKitXPCServer *)self runningBioOp];
          v25 = [v24 client];
          [(BiometricKitXPCServerPearl *)self cancelWithClient:v25];
        }
      }

      goto LABEL_23;
    }
  }

LABEL_26:
  objc_sync_exit(v6);

  objc_sync_exit(v5);
  v22 = *MEMORY[0x29EDCA608];
  return v15;
}

- (int)updateIdentity:(id)a3 withOptions:(id)a4 withClient:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 type] != 4)
  {
    [BiometricKitXPCServerPearl updateIdentity:withOptions:withClient:];
LABEL_7:
    v11 = v14;
    goto LABEL_4;
  }

  v13.receiver = self;
  v13.super_class = BiometricKitXPCServerPearl;
  if ([(BiometricKitXPCServer *)&v13 updateIdentity:v8 withOptions:v9 withClient:v10])
  {
    [BiometricKitXPCServerPearl updateIdentity:withOptions:withClient:];
    goto LABEL_7;
  }

  v11 = 0;
LABEL_4:

  return v11;
}

- (void)logRemoveIdentity:(id)a3 withClient:(id)a4
{
  v42 = *MEMORY[0x29EDCA608];
  if (BYTE1(self->_loggingDispatchQueue) == 1)
  {
    v30 = 0;
    v31 = 0;
    v29 = 8;
    v6 = a4;
    v7 = a3;
    v8 = [(BiometricKitXPCServerPearl *)self performCommand:61 inValue:1 inData:0 inSize:0 outData:&v30 outSize:&v29];
    if (v8)
    {
      v20 = v8;
      if (__osLog)
      {
        v21 = __osLog;
      }

      else
      {
        v21 = MEMORY[0x29EDCA988];
      }

      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 136316162;
      v33 = "err == 0 ";
      v34 = 2048;
      v35 = v20;
      v36 = 2080;
      v37 = &unk_296D32C0B;
      v38 = 2080;
      v39 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
      v40 = 1024;
      v41 = 6764;
    }

    else
    {
      if (v29 == 8)
      {
        v9 = HIDWORD(v30);
        v31 = v30;
        if (!v30)
        {
          v13 = 0;
LABEL_10:
          v30 = 0;
          v14 = [(BiometricKitXPCServerPearl *)self performCommand:61 inValue:9 inData:0 inSize:0 outData:&v30 outSize:&v29];
          if (v14)
          {
            v22 = v14;
            if (__osLog)
            {
              v23 = __osLog;
            }

            else
            {
              v23 = MEMORY[0x29EDCA988];
            }

            if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_40;
            }

            *buf = 136316162;
            v33 = "err == 0 ";
            v34 = 2048;
            v35 = v22;
            v36 = 2080;
            v37 = &unk_296D32C0B;
            v38 = 2080;
            v39 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
            v40 = 1024;
            v41 = 6785;
          }

          else
          {
            if (v29 == 8)
            {
              v15 = HIDWORD(v30);
              v31 = v30;
              if (v30)
              {
                if (HIDWORD(v30) > v30)
                {
                  if (__osLog)
                  {
                    v26 = __osLog;
                  }

                  else
                  {
                    v26 = MEMORY[0x29EDCA988];
                  }

                  if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_75;
                  }

                  *buf = 136316162;
                  v33 = "templatePOSize <= bufferSize";
                  v34 = 2048;
                  v35 = 0;
                  v36 = 2080;
                  v37 = &unk_296D32C0B;
                  v38 = 2080;
                  v39 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
                  v40 = 1024;
                  v41 = 6793;
                  goto LABEL_74;
                }

                v16 = malloc_type_malloc(v30, 0xBE83F8D9uLL);
                if (!v16)
                {
                  if (__osLog)
                  {
                    v26 = __osLog;
                  }

                  else
                  {
                    v26 = MEMORY[0x29EDCA988];
                  }

                  if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_75;
                  }

                  *buf = 136316162;
                  v33 = "buffer";
                  v34 = 2048;
                  v35 = 0;
                  v36 = 2080;
                  v37 = &unk_296D32C0B;
                  v38 = 2080;
                  v39 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
                  v40 = 1024;
                  v41 = 6796;
                  goto LABEL_74;
                }

                v17 = v16;
                v18 = [(BiometricKitXPCServerPearl *)self performCommand:61 inValue:10 inData:0 inSize:0 outData:v16 outSize:&v31];
                if (!v18)
                {
                  v19 = [MEMORY[0x29EDB8DA0] dataWithBytesNoCopy:v17 length:v31 freeWhenDone:1];
LABEL_76:
                  [self->_pearlDeviceState logRemoveIdentity:v7 withTemplateListData:v13 templateSize:v9 client:v6 isPO:0];
                  [self->_pearlDeviceState logRemoveIdentity:v7 withTemplateListData:v19 templateSize:v15 client:v6 isPO:1];

                  goto LABEL_77;
                }

                v27 = v18;
                if (__osLog)
                {
                  v26 = __osLog;
                }

                else
                {
                  v26 = MEMORY[0x29EDCA988];
                }

                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136316162;
                  v33 = "err == 0 ";
                  v34 = 2048;
                  v35 = v27;
                  v36 = 2080;
                  v37 = &unk_296D32C0B;
                  v38 = 2080;
                  v39 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
                  v40 = 1024;
                  v41 = 6798;
LABEL_74:
                  _os_log_impl(&dword_296CA4000, v26, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                }
              }

LABEL_75:
              v19 = 0;
              goto LABEL_76;
            }

            if (__osLog)
            {
              v23 = __osLog;
            }

            else
            {
              v23 = MEMORY[0x29EDCA988];
            }

            if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
LABEL_40:
              v15 = 0;
              goto LABEL_75;
            }

            *buf = 136316162;
            v33 = "size == sizeof(outData)";
            v34 = 2048;
            v35 = 0;
            v36 = 2080;
            v37 = &unk_296D32C0B;
            v38 = 2080;
            v39 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
            v40 = 1024;
            v41 = 6786;
          }

          _os_log_impl(&dword_296CA4000, v23, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
          goto LABEL_40;
        }

        if (HIDWORD(v30) > v30)
        {
          if (__osLog)
          {
            v24 = __osLog;
          }

          else
          {
            v24 = MEMORY[0x29EDCA988];
          }

          if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_57;
          }

          *buf = 136316162;
          v33 = "templateSize <= bufferSize";
          v34 = 2048;
          v35 = 0;
          v36 = 2080;
          v37 = &unk_296D32C0B;
          v38 = 2080;
          v39 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
          v40 = 1024;
          v41 = 6772;
        }

        else
        {
          v10 = malloc_type_malloc(v30, 0x3AF6DA31uLL);
          if (v10)
          {
            v11 = v10;
            v12 = [(BiometricKitXPCServerPearl *)self performCommand:61 inValue:2 inData:0 inSize:0 outData:v10 outSize:&v31];
            if (!v12)
            {
              v13 = [MEMORY[0x29EDB8DA0] dataWithBytesNoCopy:v11 length:v31 freeWhenDone:1];
              goto LABEL_10;
            }

            v25 = v12;
            if (__osLog)
            {
              v24 = __osLog;
            }

            else
            {
              v24 = MEMORY[0x29EDCA988];
            }

            if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_57;
            }

            *buf = 136316162;
            v33 = "err == 0 ";
            v34 = 2048;
            v35 = v25;
            v36 = 2080;
            v37 = &unk_296D32C0B;
            v38 = 2080;
            v39 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
            v40 = 1024;
            v41 = 6777;
          }

          else
          {
            if (__osLog)
            {
              v24 = __osLog;
            }

            else
            {
              v24 = MEMORY[0x29EDCA988];
            }

            if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_57;
            }

            *buf = 136316162;
            v33 = "buffer";
            v34 = 2048;
            v35 = 0;
            v36 = 2080;
            v37 = &unk_296D32C0B;
            v38 = 2080;
            v39 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
            v40 = 1024;
            v41 = 6775;
          }
        }

        _os_log_impl(&dword_296CA4000, v24, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
LABEL_57:
        v15 = 0;
        v19 = 0;
        goto LABEL_58;
      }

      if (__osLog)
      {
        v21 = __osLog;
      }

      else
      {
        v21 = MEMORY[0x29EDCA988];
      }

      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
LABEL_28:
        v15 = 0;
        v19 = 0;
        v9 = 0;
LABEL_58:
        v13 = 0;
        goto LABEL_76;
      }

      *buf = 136316162;
      v33 = "size == sizeof(outData)";
      v34 = 2048;
      v35 = 0;
      v36 = 2080;
      v37 = &unk_296D32C0B;
      v38 = 2080;
      v39 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
      v40 = 1024;
      v41 = 6765;
    }

    _os_log_impl(&dword_296CA4000, v21, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    goto LABEL_28;
  }

LABEL_77:
  v28 = *MEMORY[0x29EDCA608];
}

- (int)removeIdentity:(id)a3 withOptions:(id)a4 withClient:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12.receiver = self;
  v12.super_class = BiometricKitXPCServerPearl;
  v10 = [(BiometricKitXPCServer *)&v12 removeIdentity:v8 withOptions:a4 withClient:v9];
  if (v10)
  {
    [BiometricKitXPCServerPearl removeIdentity:withOptions:withClient:];
  }

  else
  {
    [(BiometricKitXPCServerPearl *)self logRemoveIdentity:v8 withClient:v9];
  }

  return v10;
}

- (int64_t)getDeviceStateWithClient:(id)a3
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "getDeviceStateWithClient: %@\n", &v11, 0xCu);
  }

  v7 = *&self->_peakPowerPressureLevelNtfToken;
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = v5;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134217984;
    v12 = v7;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "getDeviceStateWithClient: -> %lu\n", &v11, 0xCu);
  }

  v9 = *MEMORY[0x29EDCA608];
  return v7;
}

- (int)startNewMatchAttemptWithClient:(id)a3
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "startNewMatchAttemptWithClient: %@\n", &v17, 0xCu);
  }

  v7 = [(BiometricKitXPCServer *)self bioOpsQueue];
  objc_sync_enter(v7);
  v8 = [(BiometricKitXPCServer *)self runningBioOp];
  v9 = [v8 client];
  v10 = v9 == v4;

  if (v10)
  {
    if (![(BiometricKitXPCServerPearl *)self performCommand:33 inValue:0 inData:0 inSize:0 outData:0 outSize:0])
    {
      v11 = 0;
      goto LABEL_9;
    }

    [BiometricKitXPCServerPearl startNewMatchAttemptWithClient:];
  }

  else
  {
    [BiometricKitXPCServerPearl startNewMatchAttemptWithClient:];
  }

  v11 = v17;
LABEL_9:
  objc_sync_exit(v7);

  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v5;
  }

  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = 67109120;
      LODWORD(v18) = v11;
      v13 = v12;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_17:
      _os_log_impl(&dword_296CA4000, v13, v14, "startNewMatchAttemptWithClient: -> (%{errno}d)\n", &v17, 8u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v17 = 67109120;
    LODWORD(v18) = 0;
    v13 = v12;
    v14 = OS_LOG_TYPE_DEBUG;
    goto LABEL_17;
  }

  v15 = *MEMORY[0x29EDCA608];
  return 0;
}

- (int)completeEnrollmentWithClient:(id)a3
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "completeEnrollmentWithClient: %@\n", &v16, 0xCu);
  }

  v7 = [(BiometricKitXPCServer *)self bioOpsQueue];
  objc_sync_enter(v7);
  v8 = [(BiometricKitXPCServer *)self runningBioOp];
  v9 = [v8 client];
  v10 = v9 == v4;

  if (v10)
  {
    if (![(BiometricKitXPCServerPearl *)self performCommand:42 inValue:0 inData:0 inSize:0 outData:0 outSize:0])
    {
      objc_sync_exit(v7);

      if (__osLogTrace)
      {
        v11 = __osLogTrace;
      }

      else
      {
        v11 = v5;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v16 = 67109120;
        LODWORD(v17) = 0;
        _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_DEBUG, "completeEnrollmentWithClient: -> (%{errno}d)\n", &v16, 8u);
      }

      v12 = 0;
      goto LABEL_14;
    }

    [BiometricKitXPCServerPearl completeEnrollmentWithClient:];
  }

  else
  {
    [BiometricKitXPCServerPearl completeEnrollmentWithClient:];
  }

  v12 = v16;
  objc_sync_exit(v7);

  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = v5;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = 67109120;
    LODWORD(v17) = v12;
    _os_log_impl(&dword_296CA4000, v15, OS_LOG_TYPE_ERROR, "completeEnrollmentWithClient: -> (%{errno}d)\n", &v16, 8u);
  }

LABEL_14:

  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

- (int)setTemplate:(id)a3 forIdentity:(id)a4 withClient:(id)a5
{
  v30 = *MEMORY[0x29EDCA608];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = v12;
    v24 = 134218498;
    v25 = [v8 length];
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_DEBUG, "setTemplate: [%ld] %@ %@\n", &v24, 0x20u);
  }

  if (!v8)
  {
    [BiometricKitXPCServerPearl setTemplate:forIdentity:withClient:];
LABEL_22:
    v20 = v24;
    goto LABEL_23;
  }

  if (!v9)
  {
    [BiometricKitXPCServerPearl setTemplate:forIdentity:withClient:];
    goto LABEL_22;
  }

  if (-[BiometricKitXPCServer checkCatacombForUser:](self, "checkCatacombForUser:", [v9 userID]))
  {
    [BiometricKitXPCServerPearl setTemplate:forIdentity:withClient:];
    goto LABEL_22;
  }

  v14 = [v8 length];
  v15 = malloc_type_malloc(v14 + 24, 0x1000040504FFAC1uLL);
  if (!v15)
  {
    [BiometricKitXPCServerPearl setTemplate:forIdentity:withClient:];
    goto LABEL_22;
  }

  v16 = v15;
  *v15 = [v9 userID];
  v17 = [v9 uuid];
  [v17 getUUIDBytes:v16 + 1];

  v16[5] = v14;
  memcpy(v16 + 6, [v8 bytes], v14);
  v18 = [(BiometricKitXPCServerPearl *)self performCommand:49 inValue:0 inData:v16 inSize:v14 + 24 outData:0 outSize:0];
  if (!v18)
  {
    [(BiometricKitXPCServer *)self saveCatacomb];
    free(v16);
    if (__osLogTrace)
    {
      v19 = __osLogTrace;
    }

    else
    {
      v19 = v11;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v24 = 67109120;
      LODWORD(v25) = 0;
      _os_log_impl(&dword_296CA4000, v19, OS_LOG_TYPE_DEBUG, "setTemplate: -> (%{errno}d)\n", &v24, 8u);
    }

    v20 = 0;
    goto LABEL_17;
  }

  v20 = v18;
  [BiometricKitXPCServerPearl setTemplate:forIdentity:withClient:];
LABEL_23:
  if (__osLogTrace)
  {
    v23 = __osLogTrace;
  }

  else
  {
    v23 = v11;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = 67109120;
    LODWORD(v25) = v20;
    _os_log_impl(&dword_296CA4000, v23, OS_LOG_TYPE_ERROR, "setTemplate: -> (%{errno}d)\n", &v24, 8u);
  }

LABEL_17:

  v21 = *MEMORY[0x29EDCA608];
  return v20;
}

- (int)isPeriocularEnrollmentSupported:(BOOL *)a3 withClient:(id)a4
{
  *&v17[5] = *MEMORY[0x29EDCA608];
  v6 = a4;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v17 = v6;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "isPeriocularEnrollmentSupported: %@\n", buf, 0xCu);
  }

  v15 = 0;
  v14 = 1;
  if (a3)
  {
    if (![(BiometricKitXPCServerPearl *)self performCommand:67 inValue:0 inData:0 inSize:0 outData:&v15 outSize:&v14])
    {
      if (v14 == 1)
      {
        *a3 = v15 != 0;
      }

      else
      {
        [BiometricKitXPCServerPearl isPeriocularEnrollmentSupported:withClient:];
      }

      if (__osLogTrace)
      {
        v9 = __osLogTrace;
      }

      else
      {
        v9 = v7;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        v17[0] = 0;
        LOWORD(v17[1]) = 1024;
        *(&v17[1] + 2) = v15;
        _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "isPeriocularEnrollmentSupported: -> (%{errno}d), isSupported=%u\n", buf, 0xEu);
      }

      v10 = 0;
      goto LABEL_16;
    }

    [BiometricKitXPCServerPearl isPeriocularEnrollmentSupported:withClient:];
  }

  else
  {
    [BiometricKitXPCServerPearl isPeriocularEnrollmentSupported:withClient:];
  }

  v10 = *buf;
  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v7;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    v17[0] = v10;
    LOWORD(v17[1]) = 1024;
    *(&v17[1] + 2) = v15;
    _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_ERROR, "isPeriocularEnrollmentSupported: -> (%{errno}d), isSupported=%u\n", buf, 0xEu);
  }

LABEL_16:

  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

- (int)getPeriocularMatchStateForUser:(unsigned int)a3 state:(int64_t *)a4 withClient:(id)a5
{
  v23 = *MEMORY[0x29EDCA608];
  v8 = a5;
  v9 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109378;
    v20 = a3;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "getPeriocularMatchStateForUser: %u %@\n", buf, 0x12u);
  }

  v17 = 0;
  v18 = a3;
  v16 = 4;
  if (a4)
  {
    if (![(BiometricKitXPCServerPearl *)self performCommand:69 inValue:0 inData:&v18 inSize:4 outData:&v17 outSize:&v16])
    {
      if (v16 == 4)
      {
        *a4 = v17;
      }

      else
      {
        [BiometricKitXPCServerPearl getPeriocularMatchStateForUser:state:withClient:];
      }

      if (__osLogTrace)
      {
        v11 = __osLogTrace;
      }

      else
      {
        v11 = v9;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        v20 = 0;
        v21 = 1024;
        LODWORD(v22) = v17;
        _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_DEBUG, "getPeriocularMatchStateForUser: -> (%{errno}d), state=0x%x\n", buf, 0xEu);
      }

      v12 = 0;
      goto LABEL_16;
    }

    [BiometricKitXPCServerPearl getPeriocularMatchStateForUser:state:withClient:];
  }

  else
  {
    [BiometricKitXPCServerPearl getPeriocularMatchStateForUser:state:withClient:];
  }

  v12 = *buf;
  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = v9;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    v20 = v12;
    v21 = 1024;
    LODWORD(v22) = v17;
    _os_log_impl(&dword_296CA4000, v15, OS_LOG_TYPE_ERROR, "getPeriocularMatchStateForUser: -> (%{errno}d), state=0x%x\n", buf, 0xEu);
  }

LABEL_16:

  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

- (int)removePeriocularTemplatesWithOptions:(id)a3 withClient:(id)a4
{
  v37 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v9 = __osLogTrace;
  }

  else
  {
    v9 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "removePeriocularTemplatesWithOptions: %@ %@\n", buf, 0x16u);
  }

  v35 = 0;
  *&v36 = 0;
  *(&v36 + 6) = 0;
  if (!v6)
  {
    [BiometricKitXPCServerPearl removePeriocularTemplatesWithOptions:withClient:];
    goto LABEL_54;
  }

  v10 = [v6 objectForKeyedSubscript:@"BKRemovePOTemplatesIdentityUserID"];
  if (!v10)
  {
    [BiometricKitXPCServerPearl removePeriocularTemplatesWithOptions:withClient:];
    goto LABEL_54;
  }

  v11 = v10;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(BiometricKitXPCServerPearl *)v11 removePeriocularTemplatesWithOptions:buf withClient:&v31 + 4];
    goto LABEL_54;
  }

  v12 = [v11 unsignedIntValue];
  if (v12 == -1)
  {
    [(BiometricKitXPCServerPearl *)v11 removePeriocularTemplatesWithOptions:buf withClient:&v31 + 4];
    goto LABEL_54;
  }

  v13 = v12;
  v14 = [v6 objectForKeyedSubscript:@"BKRemovePOTemplatesIdentityUUID"];

  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(BiometricKitXPCServerPearl *)v14 removePeriocularTemplatesWithOptions:buf withClient:&v31 + 4];
      goto LABEL_54;
    }

    v15 = v14;
  }

  v16 = [v6 objectForKeyedSubscript:@"BKRemovePOTemplatesRemoveAll"];

  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v16 BOOLValue];
      goto LABEL_17;
    }

    [(BiometricKitXPCServerPearl *)v14 removePeriocularTemplatesWithOptions:v16 withClient:&v30, buf, &v31 + 4, v17, v18, v19, v30, v31, *buf, *&buf[8], *&buf[16], v33, SHIDWORD(v33), v34, *(&v34 + 1), v35, v36, *(&v36 + 1), v37, v38, v39, v40, v41];
LABEL_54:
    v14 = v30;
    v16 = *buf;
    v25 = HIDWORD(v31);
    goto LABEL_55;
  }

  v20 = 0;
LABEL_17:
  LODWORD(v35) = v13;
  if (v14)
  {
    [v14 getUUIDBytes:&v35 + 4];
    if (!v20)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  BYTE12(v36) = 1;
  if (v20)
  {
LABEL_19:
    BYTE13(v36) = 1;
  }

LABEL_20:
  v21 = [(BiometricKitXPCServerPearl *)self performCommand:71 inValue:0 inData:&v35 inSize:22 outData:0 outSize:0];
  if (v21)
  {
    v25 = v21;
    if (__osLog)
    {
      v28 = __osLog;
    }

    else
    {
      v28 = v8;
    }

    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    *buf = 136316162;
    *&buf[4] = "err == 0 ";
    *&buf[12] = 2048;
    *&buf[14] = v25;
    *&buf[22] = 2080;
    v33 = &unk_296D32C0B;
    LOWORD(v34) = 2080;
    *(&v34 + 2) = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
    WORD5(v34) = 1024;
    HIDWORD(v34) = 7089;
LABEL_51:
    _os_log_impl(&dword_296CA4000, v28, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    goto LABEL_55;
  }

  v22 = [(BiometricKitXPCServerPearl *)self updatePropertiesOfIdentities];
  if (v22)
  {
    v25 = v22;
    if (__osLog)
    {
      v28 = __osLog;
    }

    else
    {
      v28 = v8;
    }

    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    *buf = 136316162;
    *&buf[4] = "err == 0 ";
    *&buf[12] = 2048;
    *&buf[14] = v25;
    *&buf[22] = 2080;
    v33 = &unk_296D32C0B;
    LOWORD(v34) = 2080;
    *(&v34 + 2) = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
    WORD5(v34) = 1024;
    HIDWORD(v34) = 7093;
    goto LABEL_51;
  }

  v23 = [(BiometricKitXPCServer *)self saveCatacomb];
  if (!v23)
  {
    if (__osLogTrace)
    {
      v24 = __osLogTrace;
    }

    else
    {
      v24 = v8;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = 0;
      _os_log_impl(&dword_296CA4000, v24, OS_LOG_TYPE_DEBUG, "removePeriocularTemplatesWithOptions: -> %d\n", buf, 8u);
    }

    v25 = 0;
    goto LABEL_29;
  }

  v25 = v23;
  if (__osLog)
  {
    v28 = __osLog;
  }

  else
  {
    v28 = v8;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    *&buf[4] = "err == 0 ";
    *&buf[12] = 2048;
    *&buf[14] = v25;
    *&buf[22] = 2080;
    v33 = &unk_296D32C0B;
    LOWORD(v34) = 2080;
    *(&v34 + 2) = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
    WORD5(v34) = 1024;
    HIDWORD(v34) = 7097;
    goto LABEL_51;
  }

LABEL_55:
  if (__osLogTrace)
  {
    v29 = __osLogTrace;
  }

  else
  {
    v29 = v8;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v25;
    _os_log_impl(&dword_296CA4000, v29, OS_LOG_TYPE_ERROR, "removePeriocularTemplatesWithOptions: -> %d\n", buf, 8u);
  }

LABEL_29:

  v26 = *MEMORY[0x29EDCA608];
  return v25;
}

- (int)queryPeriocularMigrationState:(BOOL *)a3 clear:(BOOL)a4
{
  v9 = 0;
  v7 = 0;
  v6 = 1;
  v8 = 1;
  v10 = a4;
  if ([(BiometricKitXPCServerPearl *)self performCommand:57 inValue:0 inData:&v8 inSize:6 outData:&v7 outSize:&v6])
  {
    [BiometricKitXPCServerPearl queryPeriocularMigrationState:clear:];
    return v11;
  }

  if (v6 != 1)
  {
    [BiometricKitXPCServerPearl queryPeriocularMigrationState:clear:];
    return v11;
  }

  result = 0;
  if (a3)
  {
    *a3 = v7 != 0;
  }

  return result;
}

- (int)suspendEnrollment:(BOOL)a3 withClient:(id)a4
{
  v4 = a3;
  v24 = *MEMORY[0x29EDCA608];
  v6 = a4;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109378;
    v21 = v4;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "suspendEnrollment: %u %@\n", buf, 0x12u);
  }

  v19 = 0;
  v9 = [(BiometricKitXPCServer *)self bioOpsQueue];
  objc_sync_enter(v9);
  v10 = [(BiometricKitXPCServer *)self runningBioOp];
  v11 = [v10 client];
  v12 = v11 == v6;

  if (v12)
  {
    v19 = v4;
    if (![(BiometricKitXPCServerPearl *)self performCommand:48 inValue:0 inData:&v19 inSize:1 outData:0 outSize:0])
    {
      v13 = 0;
      goto LABEL_9;
    }

    [BiometricKitXPCServerPearl suspendEnrollment:withClient:];
  }

  else
  {
    [BiometricKitXPCServerPearl suspendEnrollment:withClient:];
  }

  v13 = *buf;
LABEL_9:
  objc_sync_exit(v9);

  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v7;
  }

  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v21 = v13;
      v15 = v14;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_17:
      _os_log_impl(&dword_296CA4000, v15, v16, "suspendEnrollment: -> (%{errno}d)\n", buf, 8u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v21 = 0;
    v15 = v14;
    v16 = OS_LOG_TYPE_DEBUG;
    goto LABEL_17;
  }

  v17 = *MEMORY[0x29EDCA608];
  return v13;
}

- (int)queryIdentityMigrationFailureForUser:(unsigned int)a3 failed:(BOOL *)a4 clear:(BOOL)a5 withClient:(id)a6
{
  v6 = a5;
  v29 = *MEMORY[0x29EDCA608];
  v10 = a6;
  v11 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109890;
    *&buf[4] = a3;
    v23 = 2048;
    v24 = a4;
    v25 = 1024;
    v26 = v6;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_DEBUG, "queryIdentityMigrationFailureForUser: %u %p %u %@\n", buf, 0x22u);
  }

  memset(v19, 0, 6);
  v18 = 0;
  *buf = 1;
  if ([(BiometricKitXPCServer *)self isClassCFileAccessible])
  {
    *(v19 + 1) = a3;
    BYTE1(v19[1]) = v6;
    if ([(BiometricKitXPCServerPearl *)self performCommand:57 inValue:0 inData:v19 inSize:6 outData:&v18 outSize:buf])
    {
      [BiometricKitXPCServerPearl queryIdentityMigrationFailureForUser:failed:clear:withClient:];
    }

    else
    {
      if (*buf == 1)
      {
        if (v6)
        {
          [(BiometricKitXPCServer *)self saveCatacomb];
        }

        if (a4)
        {
          *a4 = v18 != 0;
        }

        if (__osLogTrace)
        {
          v13 = __osLogTrace;
        }

        else
        {
          v13 = v11;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *v20 = 67109120;
          v21 = 0;
          _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_DEBUG, "queryIdentityMigrationFailureForUser: -> (%{errno}d)\n", v20, 8u);
        }

        v14 = 0;
        goto LABEL_19;
      }

      [BiometricKitXPCServerPearl queryIdentityMigrationFailureForUser:failed:clear:withClient:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl queryIdentityMigrationFailureForUser:failed:clear:withClient:];
  }

  v14 = *v20;
  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = v11;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *v20 = 67109120;
    v21 = v14;
    _os_log_impl(&dword_296CA4000, v17, OS_LOG_TYPE_ERROR, "queryIdentityMigrationFailureForUser: -> (%{errno}d)\n", v20, 8u);
  }

LABEL_19:

  v15 = *MEMORY[0x29EDCA608];
  return v14;
}

- (int)enableMatchAutoRetry:(BOOL)a3 withClient:(id)a4
{
  v4 = a3;
  v26 = *MEMORY[0x29EDCA608];
  v6 = a4;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109378;
    v23 = v4;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "enableMatchAutoRetry: %u %@\n", buf, 0x12u);
  }

  v20 = v4;
  v9 = [(BiometricKitXPCServer *)self bioOpsQueue];
  objc_sync_enter(v9);
  v10 = [(BiometricKitXPCServer *)self runningBioOp];
  v11 = [v10 client];
  v12 = v11 == v6;

  if (v12)
  {
    v13 = [(BiometricKitXPCServerPearl *)self performCommand:32 inValue:0 inData:&v20 inSize:1 outData:0 outSize:0];
    if (!v13)
    {
      v14 = 0;
      v15 = 1;
      goto LABEL_9;
    }

    [(BiometricKitXPCServerPearl *)v13 enableMatchAutoRetry:v13 withClient:&v21, buf];
  }

  else
  {
    [BiometricKitXPCServerPearl enableMatchAutoRetry:withClient:];
  }

  v15 = v21;
  v14 = *buf;
LABEL_9:
  objc_sync_exit(v9);

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = v7;
  }

  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v23 = 0;
      _os_log_impl(&dword_296CA4000, v17, OS_LOG_TYPE_DEBUG, "enableMatchAutoRetry: -> (%{errno}d)\n", buf, 8u);
    }

    v14 = 0;
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v23 = v14;
    _os_log_impl(&dword_296CA4000, v17, OS_LOG_TYPE_ERROR, "enableMatchAutoRetry: -> (%{errno}d)\n", buf, 8u);
  }

  v18 = *MEMORY[0x29EDCA608];
  return v14;
}

- (int)prewarmCamera:(unint64_t)a3 withClient:(id)a4
{
  v17 = *MEMORY[0x29EDCA608];
  v6 = a4;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134218242;
    v14 = a3;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "prewarmCamera: %lu %@\n", &v13, 0x16u);
  }

  v9 = [(BiometricKitXPCServerPearl *)self performCommand:43 inValue:a3 inData:0 inSize:0 outData:0 outSize:0];
  if (v9)
  {
    [BiometricKitXPCServerPearl prewarmCamera:withClient:];
  }

  else
  {
    if (__osLogTrace)
    {
      v10 = __osLogTrace;
    }

    else
    {
      v10 = v7;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = 67109120;
      LODWORD(v14) = 0;
      _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "prewarmCamera: -> (%{errno}d)\n", &v13, 8u);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return v9;
}

- (void)logSequenceDebugWithContext:(id *)a3
{
  v47 = *MEMORY[0x29EDCA608];
  v6 = MEMORY[0x29EDCA988];
  v7 = OUTLINED_FUNCTION_40(__osLogTrace);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_49(&dword_296CA4000, v8, v9, "logSequenceDebugWithContext:\n", v10, v11, v12, v13, v32, v33, v34, v35, v36, v37, v38, v39, 0);
  }

  v38 = 0;
  v39 = 0;
  if (LOBYTE(self->_loggingDispatchQueue) == 1 && a3->var1)
  {
    v14 = MEMORY[0x29C262290](HIDWORD(self->_driverNotifyQueue), 2, *MEMORY[0x29EDCA6B0], &v39, &v38, 4097);
    if (v14)
    {
      v27 = v14;
      v28 = OUTLINED_FUNCTION_40(__osLog);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v41 = "err == 0 ";
        v42 = 2048;
        v43 = v27;
        v44 = 2080;
        v45 = &unk_296D32C0B;
        OUTLINED_FUNCTION_47();
        v46 = 1388;
        OUTLINED_FUNCTION_34(&dword_296CA4000, v3, v29, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf);
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v32 = MEMORY[0x29EDCA5F8];
      v33 = 3221225472;
      v34 = __58__BiometricKitXPCServerPearl_logSequenceDebugWithContext___block_invoke;
      v35 = &unk_29EE546A8;
      v36 = self;
      v37 = v39;
      v16 = MEMORY[0x29C262C70](&v32);
      v17 = objc_alloc(MEMORY[0x29EDB8DA0]);
      v18 = [v17 initWithBytesNoCopy:v39 length:v38 deallocator:v16];
      if (v18)
      {
        [self->_pearlDeviceState logSequenceDebug:v18 withContext:a3];
      }

      else
      {
        if (__osLog)
        {
          v30 = __osLog;
        }

        else
        {
          v30 = v6;
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v41 = "debugData";
          v42 = 2048;
          v43 = 0;
          v44 = 2080;
          v45 = &unk_296D32C0B;
          OUTLINED_FUNCTION_47();
          v46 = 1397;
          OUTLINED_FUNCTION_34(&dword_296CA4000, v30, v31, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf);
        }

        v16[2](v16, 0, 0);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  v19 = OUTLINED_FUNCTION_40(__osLogTrace);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_49(&dword_296CA4000, v20, v21, "logSequenceDebugWithContext: -> void\n", v22, v23, v24, v25, v32, v33, v34, v35, v36, v37, v38, v39, 0);
  }

  v26 = *MEMORY[0x29EDCA608];
}

- (void)init
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)initAutoBugCapture
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.1()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.4()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.5()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.6()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.7()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.8()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.9()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.10()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.11()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.12()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.13()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

void __58__BiometricKitXPCServerPearl_logSequenceDebugWithContext___block_invoke_cold_1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)analyticsKernelMessage:.cold.1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)wakeGestureManager:didUpdateWakeGesture:.cold.1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)statusMessage:withData:timestamp:.cold.1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (uint64_t)statusMessage:(_BYTE *)a1 withData:timestamp:.cold.2(_BYTE *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  v7 = *MEMORY[0x29EDCA608];
  return *a1 & 1;
}

- (void)statusMessage:withData:timestamp:.cold.3()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)statusMessage:withData:timestamp:.cold.4()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)statusMessage:withData:timestamp:.cold.5()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)statusMessage:withData:timestamp:.cold.6()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)statusMessage:withData:timestamp:.cold.7()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)statusMessage:withData:timestamp:.cold.8()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)enrollResult:withTimestamp:.cold.1()
{
  OUTLINED_FUNCTION_29();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)enrollResult:withTimestamp:.cold.2()
{
  OUTLINED_FUNCTION_29();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)enrollUpdate:withTimestamp:.cold.1()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_31();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)enrollUpdate:withTimestamp:.cold.2()
{
  OUTLINED_FUNCTION_29();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)enrollUpdate:withTimestamp:.cold.3()
{
  OUTLINED_FUNCTION_29();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)enrollUpdate:withTimestamp:.cold.4()
{
  OUTLINED_FUNCTION_29();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)enrollUpdate:withTimestamp:.cold.5()
{
  OUTLINED_FUNCTION_29();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)enrollUpdate:withTimestamp:.cold.6()
{
  OUTLINED_FUNCTION_29();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)enrollFeedback:withTimestamp:.cold.1()
{
  OUTLINED_FUNCTION_29();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)enrollFeedback:withTimestamp:.cold.2()
{
  OUTLINED_FUNCTION_29();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)enrollFeedback:withTimestamp:.cold.3()
{
  OUTLINED_FUNCTION_29();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)enrollFeedback:withTimestamp:.cold.4()
{
  OUTLINED_FUNCTION_29();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)matchResult:withTimestamp:.cold.1()
{
  OUTLINED_FUNCTION_29();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)matchResult:withTimestamp:.cold.2()
{
  OUTLINED_FUNCTION_38();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_50(__osLog))
  {
    OUTLINED_FUNCTION_0();
    v6 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    v7 = 2289;
    OUTLINED_FUNCTION_34(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v5);
  }

  *v0 = v1;
  OUTLINED_FUNCTION_39();
  v4 = *MEMORY[0x29EDCA608];
}

- (void)matchResult:withTimestamp:.cold.3()
{
  OUTLINED_FUNCTION_25();
  v9 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_21(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_11();
  v7 = *MEMORY[0x29EDCA608];
}

- (void)matchResult:withTimestamp:.cold.4()
{
  OUTLINED_FUNCTION_25();
  v9 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_21(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_11();
  v7 = *MEMORY[0x29EDCA608];
}

- (void)matchEventMessage:.cold.1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)motionDetectMessage:info:state:.cold.1()
{
  OUTLINED_FUNCTION_37();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_48();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)motionDetectMessage:info:state:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_31();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)motionDetectMessage:info:state:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_31();
  v5 = *MEMORY[0x29EDCA608];
}

- (uint64_t)performCommand:(char)a1 version:inValue:inData:inSize:outData:outSize:.cold.1(char a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  v7 = *MEMORY[0x29EDCA608];
  return a1 & 1;
}

- (void)performCommand:(void *)a3 version:inValue:inData:inSize:outData:outSize:.cold.2(uint64_t a1, _DWORD *a2, void *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v5, v6, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v7, v8, v9, v10, v12);
  }

  *a3 = 0;
  *a2 = 1;
  v11 = *MEMORY[0x29EDCA608];
}

- (void)getCommProtocolVersion
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(-536870212);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)getSPRLInfo:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)getSPRLInfo:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(-536870212);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)getSPRLInfo:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(-536870206);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)restoreAndSyncTemplates
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)loadCatacombForComponent:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)loadCatacombForComponent:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

void __55__BiometricKitXPCServerPearl_loadCatacombForComponent___block_invoke_cold_1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)saveTemplateListAfterTemplateUpdate
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)updatePropertiesOfIdentities
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performGetIdentitiesListCommand:outBuffer:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)performGetIdentitiesListCommand:outBuffer:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performGetIdentitiesListCommand:outBuffer:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performGetCatacombStateCommand:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)performGetCatacombStateCommand:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performGetCatacombStateCommand:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performGetTemplatesValidityCommand:isValid:.cold.1()
{
  OUTLINED_FUNCTION_32();
  v11 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_18(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_18(__osLogTrace))
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)performGetTemplatesValidityCommand:isValid:.cold.2()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)performRemoveIdentityCommand:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)performRemoveIdentityCommand:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)performRemoveIdentityCommand:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performGetBiometrickitdInfoCommand:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)performGetBiometrickitdInfoCommand:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performGetBiometrickitdInfoCommand:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performRemoveUserDataCommand:.cold.1()
{
  OUTLINED_FUNCTION_32();
  v11 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_18(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_18(__osLogTrace))
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)performPrepareSaveCatacombCommand:outDataSize:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)performPrepareSaveCatacombCommand:outDataSize:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performPrepareSaveCatacombCommand:outDataSize:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performCompleteSaveCatacombCommand:outBuffer:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)performCompleteSaveCatacombCommand:outBuffer:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performCompleteSaveCatacombCommand:outBuffer:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performConfirmSaveCatacombCommand:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)performConfirmSaveCatacombCommand:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performNoCatacombCommand:.cold.1()
{
  OUTLINED_FUNCTION_32();
  v11 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_18(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_18(__osLogTrace))
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)performLoadCatacombCommand:inData:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)performLoadCatacombCommand:inData:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performRequestMaxIdentityCountCommand:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)performRequestMaxIdentityCountCommand:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performGetFreeIdentityCountCommand:outCount:.cold.1()
{
  OUTLINED_FUNCTION_32();
  v11 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_18(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_18(__osLogTrace))
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)performGetFreeIdentityCountCommand:(_DWORD *)a1 outCount:.cold.2(_DWORD *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  *a1 = 0;
  v7 = *MEMORY[0x29EDCA608];
}

- (void)performGetCatacombUUIDCommand:outUUID:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)performGetCatacombUUIDCommand:outUUID:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(-536870212);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performGetCatacombHashCommand:outHash:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)performGetCatacombHashCommand:outHash:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(-536870212);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performDropUnlockTokenCommand
{
  OUTLINED_FUNCTION_32();
  v11 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_18(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_18(__osLogTrace))
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)performForceBioLockoutCommand:.cold.1()
{
  OUTLINED_FUNCTION_32();
  v11 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_18(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_18(__osLogTrace))
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)performGetSKSLockStateCommand:outState:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)performGetSKSLockStateCommand:outState:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performGetLastMatchEventCommand:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)performGetLastMatchEventCommand:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performGetDeviceHardwareStateCommand:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)performGetDeviceHardwareStateCommand:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performGetDeviceHardwareStateCommand:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(257);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performGetProtectedConfigCommand:outSetCfg:outEffectiveCfg:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)performGetProtectedConfigCommand:outSetCfg:outEffectiveCfg:.cold.2()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)performGetProtectedConfigCommand:outSetCfg:outEffectiveCfg:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performGetProtectedConfigCommand:outSetCfg:outEffectiveCfg:.cold.4()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performGetSystemProtectedConfigCommand:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)performGetSystemProtectedConfigCommand:.cold.2()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)performGetSystemProtectedConfigCommand:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performSetProtectedConfigCommand:cfg:authData:.cold.1()
{
  OUTLINED_FUNCTION_32();
  v11 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_18(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_18(__osLogTrace))
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)performSetSystemProtectedConfigCommand:authData:.cold.1()
{
  OUTLINED_FUNCTION_32();
  v11 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_18(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_18(__osLogTrace))
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)performRequestMessageDataCommand:size:outData:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)performRequestMessageDataCommand:size:outData:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performRequestMessageDataCommand:size:outData:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)initializeEngineWithOptions:.cold.1()
{
  OUTLINED_FUNCTION_32();
  v11 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_18(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_18(__osLogTrace))
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void __69__BiometricKitXPCServerPearl_reportPearlHardwarePass_fallbackAction___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }

  v7 = *MEMORY[0x29EDCA608];
}

+ (void)getDeviceTreeProperty:(_DWORD *)a1 fromPath:.cold.1(_DWORD *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  *a1 = 0;
  v7 = *MEMORY[0x29EDCA608];
}

+ (void)getSHA384FromData:.cold.1()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_31();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)getSensorFamily:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)getSensorFamily:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)getSensorFamily:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)getSensorFamily:.cold.4()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)getSensorFamily:.cold.5()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

void __50__BiometricKitXPCServerPearl_platformProvidesPlCl__block_invoke_cold_1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)loadDCNKernels
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)getProjectorSerialNumberIORegAttempt
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_31();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)getRomeoSerialNumberFDR
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_31();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)verifyRomeoSerialNumberAgainstFDR
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)queryGuadalupeSerialNumberFDR:.cold.1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)queryGuadalupeSerialNumberFDR:.cold.2()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)queryGuadalupeSerialNumberFDR:.cold.3()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)queryGuadalupeSerialNumberFDR:.cold.4()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)queryGuadalupeSerialNumberFDR:.cold.5()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)verifyGuadalupeSerialNumberAgainstFDR
{
  OUTLINED_FUNCTION_37();
  if (OUTLINED_FUNCTION_43(v0, *MEMORY[0x29EDCA608]))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
  }

  OUTLINED_FUNCTION_23(259);
  v6 = *MEMORY[0x29EDCA608];
}

- (void)verifyProjectorSerialNumber
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)hasManifestEntitlement:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_42();
  a24 = v28;
  a25 = v29;
  OUTLINED_FUNCTION_30();
  a17 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_36(__osLog))
  {
    OUTLINED_FUNCTION_0();
    a12 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    a15 = 4605;
    OUTLINED_FUNCTION_34(&dword_296CA4000, v27, v30, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &a9);
  }

  *v25 = v26;
  OUTLINED_FUNCTION_26();
  v31 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_41();
}

- (void)hasManifestEntitlement:.cold.3()
{
  OUTLINED_FUNCTION_25();
  v9 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_21(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_11();
  v7 = *MEMORY[0x29EDCA608];
}

- (void)hasManifestEntitlement:.cold.4()
{
  OUTLINED_FUNCTION_25();
  v9 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_21(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_11();
  v7 = *MEMORY[0x29EDCA608];
}

- (void)verifyDisplayTrust
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)sendSelfCheckResult:.cold.1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)sendSavageFWCertCheckResult:.cold.1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)sendFDRDataCheckResult:.cold.1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)sendRomeoSNCheckResult:.cold.1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)sendDCNKernelsCheckResult:.cold.1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)sendDisplayCheckResult:.cold.1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)loadFDRClassCommand:withClass:withData:isAlternative:.cold.1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)loadFDRClassCommand:withClass:withData:isAlternative:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(260);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)getFDRClassFromFile:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_43(a1, *MEMORY[0x29EDCA608]))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)getFDRClassFromFDR:(void *)a1 withOptions:withError:.cold.2(void *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)getFDRClassFromFDR:withOptions:withError:.cold.3()
{
  OUTLINED_FUNCTION_38();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_50(__osLog))
  {
    OUTLINED_FUNCTION_0();
    v6 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    v7 = 4998;
    OUTLINED_FUNCTION_34(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v5);
  }

  *v0 = v1;
  OUTLINED_FUNCTION_39();
  v4 = *MEMORY[0x29EDCA608];
}

- (void)getFDRClassFromFDR:(uint64_t)a3 withOptions:(uint64_t)a4 withError:(uint64_t)a5 .cold.4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_42();
  a24 = v31;
  a25 = v32;
  OUTLINED_FUNCTION_30();
  a17 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_36(__osLog))
  {
    OUTLINED_FUNCTION_0();
    a12 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    a15 = 4984;
    OUTLINED_FUNCTION_34(&dword_296CA4000, v30, v33, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &a9);
  }

  *v27 = v29;
  *v26 = 0;
  *v25 = v28;
  v34 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_41();
}

- (void)getFDRClassFromFDR:.cold.1()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_31();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)getFDRClassFromFDR:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_31();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)loadFDRClass:alternative:.cold.2()
{
  OUTLINED_FUNCTION_25();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_21(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)loadFDRCalibrationData:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)loadFDRCalibrationData:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)loadFDRCalibrationData:.cold.3()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)loadFDRCalibrationData:(int)a1 .cold.4(int a1, _DWORD *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9, 2u);
  }

  *a2 = a1;
  v10 = *MEMORY[0x29EDCA608];
}

- (void)loadFDRCalibrationData:.cold.5()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)loadFDRCalibrationData:.cold.6()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)loadFDRCalibrationData:.cold.7()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)loadFDRCalibrationData:.cold.8()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)loadFDRCalibrationData:.cold.9()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)loadFDRCalibrationData:.cold.10()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)loadFDRCalibrationData:.cold.11()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)loadPCECalibrationOverride:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)loadPCECalibrationOverride:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)unwrapBrunorEncryptionKey
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(259);
  v5 = *MEMORY[0x29EDCA608];
}

- (BOOL)unwrapBrunorEncryptionKey
{
  OUTLINED_FUNCTION_32();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
  }

  result = v0 == 0;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

- (void)filenameForSavageCertType:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_32();
  v14 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_21(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v6, v7, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v8, v9, v10, v11, v13);
  }

  *a3 = v4;
  *v3 = 0;
  v12 = *MEMORY[0x29EDCA608];
}

- (void)filenameForSavageCertType:.cold.2()
{
  OUTLINED_FUNCTION_29();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)loadSavageFWCertificate
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)initEnrollOperation:biometricType:userID:options:client:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)initEnrollOperation:biometricType:userID:options:client:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)initEnrollOperation:biometricType:userID:options:client:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)initEnrollOperation:biometricType:userID:options:client:.cold.4()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)initEnrollOperation:(void *)a3 biometricType:userID:options:client:.cold.5(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v4, v5, v6, v7, v8, 0x30u);
  }

  v9 = *MEMORY[0x29EDCA608];
}

- (void)initEnrollOperation:biometricType:userID:options:client:.cold.6()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performEnrollCommand:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)performEnrollCommand:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)initMatchOperation:filter:options:client:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)initMatchOperation:filter:options:client:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)initMatchOperation:filter:options:client:.cold.3()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)initMatchOperation:filter:options:client:.cold.4()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)initMatchOperation:(void *)a1 filter:options:client:.cold.5(void *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)initMatchOperation:filter:options:client:.cold.6()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)initMatchOperation:filter:options:client:.cold.7()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)initMatchOperation:filter:options:client:.cold.8()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)initMatchOperation:filter:options:client:.cold.9()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)processMetadataObjects:.cold.1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)captureOutput:didOutputMetadataObjects:fromConnection:.cold.1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)initSecureFaceDetect
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x29EDCA608];
}

void __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_2_cold_2()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (uint64_t)startSecureFaceDetect
{
  OUTLINED_FUNCTION_32();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
  }

  result = [v0 stopSecureFaceDetect];
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void __51__BiometricKitXPCServerPearl_startSecureFaceDetect__block_invoke_cold_1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (uint64_t)secureFaceDetectRequestMessage:.cold.1()
{
  OUTLINED_FUNCTION_37();
  v11 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v10);
  }

  result = [v0 setSecureFaceDetectState:2 sessionID:*v1];
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

- (void)secureFaceDetectRequestMessage:.cold.2()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)secureFaceDetectRequestMessage:.cold.3()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)performMatchCommand:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)performMatchCommand:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performMatchCommand:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(260);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performMatchCommand:.cold.4()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)initPresenceDetectOperation:options:client:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)initPresenceDetectOperation:options:client:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)initPresenceDetectOperation:options:client:.cold.3()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)initPresenceDetectOperation:options:client:.cold.4()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)initPresenceDetectOperation:options:client:.cold.5()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)initPresenceDetectOperation:options:client:.cold.6()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(266);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)initPresenceDetectOperation:options:client:.cold.7()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)initPresenceDetectOperation:options:client:.cold.8()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)initPresenceDetectOperation:options:client:.cold.9()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)initPresenceDetectOperation:options:client:.cold.10()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)performPresenceDetectCommand:restart:.cold.1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)cancelWithClient:.cold.1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)cancelWithClient:.cold.2()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)updateIdentity:withOptions:withClient:.cold.1()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)updateIdentity:withOptions:withClient:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)removeIdentity:withOptions:withClient:.cold.1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)getBioLockoutState:forUser:withClient:.cold.1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)startNewMatchAttemptWithClient:.cold.1()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(257);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)startNewMatchAttemptWithClient:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)completeEnrollmentWithClient:.cold.1()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(257);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)completeEnrollmentWithClient:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)setTemplate:forIdentity:withClient:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)setTemplate:forIdentity:withClient:.cold.2()
{
  OUTLINED_FUNCTION_32();
  v7 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
  }

  free(v0);
  v6 = *MEMORY[0x29EDCA608];
}

- (void)setTemplate:forIdentity:withClient:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(260);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)setTemplate:forIdentity:withClient:.cold.4()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)setTemplate:forIdentity:withClient:.cold.5()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)isPeriocularEnrollmentSupported:withClient:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)isPeriocularEnrollmentSupported:withClient:.cold.2()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)isPeriocularEnrollmentSupported:withClient:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)getPeriocularMatchStateForUser:state:withClient:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)getPeriocularMatchStateForUser:state:withClient:.cold.2()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)getPeriocularMatchStateForUser:state:withClient:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)removePeriocularTemplatesWithOptions:(uint64_t)a3 withClient:(uint64_t)a4 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_42();
  a24 = v26;
  a25 = v27;
  OUTLINED_FUNCTION_30();
  a17 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_36(__osLog))
  {
    OUTLINED_FUNCTION_0();
    a12 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    a15 = 7070;
    OUTLINED_FUNCTION_34(&dword_296CA4000, v25, v28, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &a9);
  }

  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_39();
  v29 = *MEMORY[0x29EDCA608];
  OUTLINED_FUNCTION_41();
}

- (void)removePeriocularTemplatesWithOptions:withClient:.cold.5()
{
  OUTLINED_FUNCTION_25();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_21(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)removePeriocularTemplatesWithOptions:withClient:.cold.6()
{
  OUTLINED_FUNCTION_25();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_21(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_11();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)queryPeriocularMigrationState:clear:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)queryPeriocularMigrationState:clear:.cold.2()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)suspendEnrollment:withClient:.cold.1()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(257);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)suspendEnrollment:withClient:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)queryIdentityMigrationFailureForUser:failed:clear:withClient:.cold.1()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(257);
  v5 = *MEMORY[0x29EDCA608];
}

- (void)queryIdentityMigrationFailureForUser:failed:clear:withClient:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_24();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)queryIdentityMigrationFailureForUser:failed:clear:withClient:.cold.3()
{
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
  v5 = *MEMORY[0x29EDCA608];
}

- (void)enableMatchAutoRetry:withClient:.cold.1()
{
  OUTLINED_FUNCTION_29();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_46();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)pauseFaceDetectTimer:withClient:.cold.1()
{
  OUTLINED_FUNCTION_29();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_46();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)prewarmCamera:withClient:.cold.1()
{
  OUTLINED_FUNCTION_32();
  v11 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_18(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_18(__osLogTrace))
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)performCancelCommand
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

- (void)performDisplayStatusChangedCommand:.cold.1()
{
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x29EDCA608];
}

@end