@interface PearlCoreAnalytics
+ (void)sendDisplayPearlGlassesBannerNotificationEvent;
+ (void)sendEnrollPearlGlassesBannerNotificationEvent;
- (BOOL)postSimpleCoreAnalyticsEvent:(id)event fromAWDMetric:(id)metric;
- (BOOL)setupDailyUpdateTimer;
- (PearlCoreAnalytics)init;
- (id)isBacklitSun:(id *)sun;
- (int)sequenceTypeToCaptureMethod:(unsigned __int8)method forSequence:(unsigned __int8)sequence;
- (void)analyzeSecureFaceDetectStop;
- (void)analyzeSecureFrameMeta:(id)meta faceDetected:(BOOL)detected;
- (void)checkDailyUpdate;
- (void)checkYogiError:(int)error;
- (void)getDailyUpdateAnalytics;
- (void)sendBioLockoutEventAnalytics:(id)analytics;
- (void)sendEnrollEventAnalytics:(id)analytics orientation:(unint64_t)orientation;
- (void)sendFaceDetectEventAnalytics:(id)analytics fromMatch:(BOOL)match orientation:(unint64_t)orientation;
- (void)sendMatchEventAnalytics:(id)analytics orientation:(unint64_t)orientation identities:(id)identities;
- (void)sendPasscodeChallengeEventAnalytics:(id)analytics orientation:(unint64_t)orientation;
- (void)sendPearlAbcEvent:(unint64_t)event;
- (void)serviceMatchWithServer:(id)server;
- (void)setupDailyUpdateTimer;
@end

@implementation PearlCoreAnalytics

- (PearlCoreAnalytics)init
{
  v12.receiver = self;
  v12.super_class = PearlCoreAnalytics;
  v2 = [(PearlCoreAnalytics *)&v12 init];
  if (v2)
  {
    v2->_isInternalBuild = isInternalBuild();
    initWithPersistedData = [[PearlCoreAnalyticsDailyUpdateEvent alloc] initWithPersistedData];
    dailyEvent = v2->_dailyEvent;
    v2->_dailyEvent = initWithPersistedData;

    v5 = objc_alloc(MEMORY[0x29EDBFD68]);
    v6 = [v5 initWithPersistedDataWithName:*MEMORY[0x29EDBFDE0]];
    lockState = v2->_lockState;
    v2->_lockState = v6;

    [(PearlCoreAnalytics *)v2 setupDailyUpdateTimer];
    v8 = objc_alloc_init(PearlCoreAnalyticsSecureFaceDetectEvent);
    secureFaceDetect = v2->_secureFaceDetect;
    v2->_secureFaceDetect = v8;

    previousSecureFaceDetect = v2->_previousSecureFaceDetect;
    v2->_previousSecureFaceDetect = 0;
  }

  return v2;
}

- (void)checkDailyUpdate
{
  currentCalendar = [MEMORY[0x29EDB8D98] currentCalendar];
  previousEventDate = [(BiometricKitCoreAnalyticsEvent *)self->_dailyEvent previousEventDate];
  v5 = [currentCalendar isDateInToday:previousEventDate];

  if ((v5 & 1) == 0)
  {

    [(PearlCoreAnalytics *)self getDailyUpdateAnalytics];
  }
}

- (void)setupDailyUpdateTimer
{
  v3 = dispatch_get_global_queue(-2, 0);
  v4 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, v3);
  dailyUpdateTimer = self->_dailyUpdateTimer;
  self->_dailyUpdateTimer = v4;

  v6 = self->_dailyUpdateTimer;
  if (v6)
  {
    goto LABEL_2;
  }

  if (![(PearlCoreAnalytics *)&self->_dailyUpdateTimer setupDailyUpdateTimer])
  {
    v6 = v10;
LABEL_2:
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __43__PearlCoreAnalytics_setupDailyUpdateTimer__block_invoke;
    v9[3] = &unk_29EE54570;
    v9[4] = self;
    dispatch_source_set_event_handler(v6, v9);
    v7 = self->_dailyUpdateTimer;
    v8 = dispatch_walltime(0, 60000000000);
    dispatch_source_set_timer(v7, v8, 0x4E94914F0000uLL, 0xDF8475800uLL);
    dispatch_resume(self->_dailyUpdateTimer);
  }
}

- (void)serviceMatchWithServer:(id)server
{
  serverCopy = server;
  if (__osLog)
  {
    v5 = __osLog;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics serviceMatch\n", v6, 2u);
  }

  [(BiometricKitCoreAnalyticsLockState *)self->_lockState serviceMatchWithServer:serverCopy];
}

- (void)sendMatchEventAnalytics:(id)analytics orientation:(unint64_t)orientation identities:(id)identities
{
  v191 = *MEMORY[0x29EDCA608];
  analyticsCopy = analytics;
  identitiesCopy = identities;
  v8 = __osLog;
  if (!__osLog)
  {
    v8 = MEMORY[0x29EDCA988];
  }

  v9 = v8;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = analyticsCopy != 0;
    _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendMatchEventAnalytics: matchMessage: %d\n", buf, 8u);
  }

  v168 = analyticsCopy;

  v170 = objc_alloc_init(PearlCoreAnalyticsMatchEvent);
  getAWDMetric = [(PearlCoreAnalyticsEvent *)v170 getAWDMetric];
  v189 = 0u;
  memset(v190, 0, 90);
  *buf = 0u;
  if (!analyticsCopy)
  {
    [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
    goto LABEL_177;
  }

  if ([analyticsCopy length] <= 0x18A)
  {
    [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
    goto LABEL_177;
  }

  v11 = analyticsCopy;
  bytes = [analyticsCopy bytes];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  [getAWDMetric setCaptureMethod:{-[PearlCoreAnalytics sequenceTypeToCaptureMethod:forSequence:](selfCopy, "sequenceTypeToCaptureMethod:forSequence:", *(bytes + 350), *(bytes + 15))}];
  if (selfCopy->_isInternalBuild)
  {
    [getAWDMetric setCombinedSequenceEnabled:*(bytes + 300)];
  }

  [getAWDMetric setMatchType:*(bytes + 359)];
  v14 = *(bytes + 51);
  v15 = *(bytes + 55);
  v16 = *(bytes + 59);
  v17 = *(bytes + 105);
  v18 = *(bytes + 109);
  v19 = *(bytes + 113);
  v160 = *(bytes + 157);
  v20 = *(bytes + 161);
  v166 = *(bytes + 165);
  v164 = (bytes + 51);
  [getAWDMetric setOverallResult:*(bytes + 13)];
  v21 = *(bytes + 2);
  [getAWDMetric setOverallTime:absoluteToMiliseconds()];
  v22 = *(bytes + 3);
  [getAWDMetric setOverallTimeWithRetries:absoluteToMiliseconds()];
  [getAWDMetric setMatchCancelled:*(bytes + 332)];
  if (*(bytes + 351))
  {
    [getAWDMetric setTimeSinceSleep:absoluteToMiliseconds()];
  }

  v23 = *(bytes + 41);
  v24 = absoluteToMiliseconds();
  if (v24)
  {
    [getAWDMetric setFaceDetectEndTime:v24];
  }

  [getAWDMetric setFaceDetectResult:*(bytes + 49)];
  v25 = v15 + v14 + v16;
  [getAWDMetric setFaceDetectFrameCount:v25];
  [getAWDMetric setFaceDetectFrameFloodCount:*v164];
  [getAWDMetric setFaceDetectFrameSparseCount:*(bytes + 55)];
  [getAWDMetric setFaceDetectFrameDenseCount:*(bytes + 59)];
  v26 = *(bytes + 94);
  v27 = absoluteToMiliseconds();
  if (v27)
  {
    [getAWDMetric setBioCheckEndTime:v27];
  }

  [getAWDMetric setBioCheckResult:*(bytes + 51)];
  if (*(bytes + 51) == -1)
  {
    [getAWDMetric setHasBioCheckResult:0];
  }

  [getAWDMetric setBioCheckFrameCount:(v18 + v17 + v19)];
  [getAWDMetric setBioCheckFrameFloodCount:*(bytes + 105)];
  [getAWDMetric setBioCheckFrameSparseCount:*(bytes + 109)];
  [getAWDMetric setBioCheckFrameDenseCount:*(bytes + 113)];
  v28 = *(bytes + 147);
  v29 = absoluteToMiliseconds();
  if (v29)
  {
    [getAWDMetric setProbingPatternEndTime:v29];
  }

  [getAWDMetric setProbingPatternResult:*(bytes + 155)];
  if (*(bytes + 155) == -1)
  {
    [getAWDMetric setHasProbingPatternResult:0];
  }

  [getAWDMetric setProbingPatternFrameCount:(v20 + v160 + v166)];
  [getAWDMetric setProbingPatternFrameFloodCount:*(bytes + 157)];
  [getAWDMetric setProbingPatternFrameSparseCount:*(bytes + 161)];
  [getAWDMetric setProbingPatternFrameDenseCount:*(bytes + 165)];
  [getAWDMetric setAmbientLux:*bytes];
  [getAWDMetric setMatchForUnlock:*(bytes + 277) & 1];
  [getAWDMetric setFailedUnlockAttemptsFromFD:*(bytes + 281)];
  [getAWDMetric setFailedUnlockAttemptsFromBiocheck:*(bytes + 285)];
  [getAWDMetric setFailedMatchAttemptsFromFD:*(bytes + 289)];
  [getAWDMetric setFailedMatchAttemptsFromBiocheck:*(bytes + 293)];
  if (*(bytes + 232) == 2)
  {
    v30 = *(bytes + 233);
    v31 = *(bytes + 234);
    v32 = *(bytes + 225) == 0;
    if (*(bytes + 234))
    {
      v167 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v36 = *(bytes + 226) == 0;
      v35 = *(bytes + 227) == 0;
      v34 = *(bytes + 236) == 0;
      v33 = *(bytes + 237) == 0;
      v167 = *(bytes + 235) == 0;
    }
  }

  else
  {
    v167 = 0;
    v31 = 0;
    v30 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v32 = 0;
  }

  if (*(bytes + 252) == 3)
  {
    if (*(bytes + 155) >= 1)
    {
      [getAWDMetric setProbingPatternFailure:1];
    }

    if (*(bytes + 253) && ([getAWDMetric captureMethod] != 3 || !v30))
    {
      v30 = *(bytes + 253);
    }

    if (*(bytes + 254))
    {
      captureMethod = [getAWDMetric captureMethod];
      if (v31 && captureMethod == 3)
      {
        if (*(bytes + 245))
        {
          v32 = v32;
        }

        else
        {
          v32 = 1;
        }

        goto LABEL_60;
      }

      v31 = *(bytes + 254);
    }

    if (*(bytes + 245))
    {
      v32 = v32;
    }

    else
    {
      v32 = 1;
    }

    if (!v31)
    {
      if (*(bytes + 246))
      {
        v36 = v36;
      }

      else
      {
        v36 = 1;
      }

      if (*(bytes + 247))
      {
        v35 = v35;
      }

      else
      {
        v35 = 1;
      }

      if (*(bytes + 256))
      {
        v34 = v34;
      }

      else
      {
        v34 = 1;
      }

      if (*(bytes + 257))
      {
        v33 = v33;
      }

      else
      {
        v33 = 1;
      }

      if (*(bytes + 255))
      {
        v38 = v167;
      }

      else
      {
        v38 = 1;
      }

      v167 = v38;
    }
  }

LABEL_60:
  [getAWDMetric setMatcherFailure:v32];
  [getAWDMetric setMatchDepthFailure:v35];
  [getAWDMetric setMatchFloodFailure:v36];
  [getAWDMetric setAsFloodFailure:v34];
  [getAWDMetric setAsDepthFailure:v33];
  [getAWDMetric setFeatureGenerationError:v30];
  [getAWDMetric setMatchFeatureVectorError:v31];
  [getAWDMetric setAsFailure:v167];
  [getAWDMetric setOnlineTemplateUpdated:*(bytes + 199) != 0];
  [getAWDMetric setPasscodeChallengeAllowed:*(bytes + 200) != 0];
  v161 = bytes + 63;
  if (*(bytes + 63) == 1)
  {
    [getAWDMetric setFaceDetectFaceDistance:*(bytes + 69)];
    [getAWDMetric setFaceDetectCamRectX:*(bytes + 71)];
    [getAWDMetric setFaceDetectCamRectY:*(bytes + 73)];
    [getAWDMetric setFaceDetectCamRectW:*(bytes + 75)];
    [getAWDMetric setFaceDetectCamRectH:*(bytes + 77)];
    [getAWDMetric setFaceDetectPPMRequestedBudget:*(bytes + 79)];
    [getAWDMetric setFaceDetectPPMAllocatedBudget:*(bytes + 80)];
    v39 = bytes + 63;
    if (*(bytes + 81) != -1)
    {
      v40 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:?];
      [(PearlCoreAnalyticsMatchEvent *)v170 setCamLux:v40];

      v39 = bytes + 63;
    }
  }

  else
  {
    v39 = 0;
  }

  if (*(bytes + 117) == 1)
  {
    [getAWDMetric setBioCheckFaceDistance:*(bytes + 123)];
    [getAWDMetric setBioCheckCamRectX:*(bytes + 125)];
    [getAWDMetric setBioCheckCamRectY:*(bytes + 127)];
    [getAWDMetric setBioCheckCamRectW:*(bytes + 129)];
    [getAWDMetric setBioCheckCamRectH:*(bytes + 131)];
    [getAWDMetric setBioCheckPPMRequestedBudget:*(bytes + 133)];
    [getAWDMetric setBioCheckPPMAllocatedBudget:*(bytes + 134)];
    if ([getAWDMetric captureMethod] != 3)
    {
      v41 = [(PearlCoreAnalytics *)obj isBacklitSun:bytes + 117];
      [(PearlCoreAnalyticsMatchEvent *)v170 setBacklitSun:v41];
    }

    v39 = bytes + 117;
  }

  if (*(bytes + 169) == 1)
  {
    [getAWDMetric setProbingPatternFaceDistance:*(bytes + 175)];
    [getAWDMetric setProbingPatternCamRectX:*(bytes + 177)];
    [getAWDMetric setProbingPatternCamRectY:*(bytes + 179)];
    [getAWDMetric setProbingPatternCamRectW:*(bytes + 181)];
    [getAWDMetric setProbingPatternCamRectH:*(bytes + 183)];
    if ([getAWDMetric captureMethod] != 3)
    {
      v39 = bytes + 117;
    }

    backlitSun = [(PearlCoreAnalyticsMatchEvent *)v170 backlitSun];
    v43 = backlitSun == 0;

    if (v43)
    {
      v44 = [(PearlCoreAnalytics *)obj isBacklitSun:bytes + 169];
      [(PearlCoreAnalyticsMatchEvent *)v170 setBacklitSun:v44];
    }
  }

  if (v39)
  {
    [getAWDMetric setSensorTemperature:*(v39 + 2)];
    if (*(v39 + 2) == -273)
    {
      [getAWDMetric setHasSensorTemperature:0];
    }

    [getAWDMetric setFaceDistance:{*(v39 + 3), v161}];
    [getAWDMetric setHasOcclusion:v39[1]];
    [getAWDMetric setCamRectX:*(v39 + 4)];
    [getAWDMetric setCamRectY:*(v39 + 5)];
    [getAWDMetric setCamRectW:*(v39 + 6)];
    [getAWDMetric setCamRectH:*(v39 + 7)];
  }

  if (*(bytes + 204))
  {
    v45 = *(bytes + 213);
    v46 = *(bytes + 205);
  }

  else
  {
    v46 = -1;
    v45 = -1;
  }

  [getAWDMetric setRfcSetIndex:{v46, v161}];
  [getAWDMetric setRfcFrameIndex:v45];
  if (v46 == -1)
  {
    [getAWDMetric setHasRfcSetIndex:0];
  }

  if (v45 == -1)
  {
    [getAWDMetric setHasRfcFrameIndex:0];
  }

  if (*(bytes + 202) == 1 && *(bytes + 265))
  {
    v47 = *(bytes + 266);
    v48 = 1;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  [getAWDMetric setBioLockout:v48];
  [getAWDMetric setBioLockoutReason:v47];
  [getAWDMetric setCameraErr:*(bytes + 4)];
  if (*(bytes + 202) == 1)
  {
    if ((bytes[67] & 0x80000000) == 0)
    {
      [getAWDMetric setOnlineTemplateAge:?];
    }

    if ((bytes[68] & 0x80000000) == 0)
    {
      [getAWDMetric setShortTermTemplateAge:?];
    }
  }

  [getAWDMetric setAutoRetry:*(bytes + 297)];
  [getAWDMetric setAutoRetryAllowed:*(bytes + 298)];
  if (obj->_isInternalBuild)
  {
    [getAWDMetric setAutoRetryEnabled:*(bytes + 301)];
  }

  [getAWDMetric setMatchIdentityCount:*(bytes + 299)];
  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  v49 = identitiesCopy;
  v50 = [v49 countByEnumeratingWithState:&v175 objects:v187 count:16];
  if (v50)
  {
    v51 = *v176;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v176 != v51)
        {
          objc_enumerationMutation(v49);
        }

        creationTime = [*(*(&v175 + 1) + 8 * i) creationTime];
        [creationTime timeIntervalSince1970];
        [getAWDMetric addIdentityCreationTime:(v54 * 1000.0)];
      }

      v50 = [v49 countByEnumeratingWithState:&v175 objects:v187 count:16];
    }

    while (v50);
  }

  v55 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 302)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackNoFaceDetected:v55];

  v56 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 303)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackFaceTooClose:v56];

  v57 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 304)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackFaceTooFar:v57];

  v58 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 305)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackPoseOutOfRange:v58];

  v59 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 306)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackNoAttention:v59];

  v60 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 307)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackFaceOccluded:v60];

  v61 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 308)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackCameraObstructed:v61];

  v62 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 309)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackPartialOutOfFOV:v62];

  v63 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 310)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackPoseMarginal:v63];

  v64 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 311)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackNoseAndMouthOccluded:v64];

  v65 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 312)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackDepthCameraObstructed:v65];

  v66 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 367)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusNoFaceDetected:v66];

  v67 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 368)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusFaceTooClose:v67];

  v68 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 369)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusFaceTooFar:v68];

  v69 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 370)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusPoseOutOfRange:v69];

  v70 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 371)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusNoAttention:v70];

  v71 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 372)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusFaceOccluded:v71];

  v72 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 373)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusCameraObstructed:v72];

  v73 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 374)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusPartialOutOfFOV:v73];

  v74 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 375)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusPoseMarginal:v74];

  v75 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 376)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusNoseAndMouthOccluded:v75];

  v76 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 377)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusDepthCameraObstructed:v76];

  v77 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 378)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusFPDFailure:v77];

  if (*(bytes + 314) == 1)
  {
    v78 = [MEMORY[0x29EDBA0F8] stringWithCString:bytes + 315 encoding:1];
    [getAWDMetric setCameraHWParameters:v78];
  }

  [getAWDMetric setDeviceOrientation:orientation];
  if (*(bytes + 349) == 1)
  {
    [getAWDMetric setFaceOrientation:*(bytes + 333)];
    [getAWDMetric setFacePitch:*(bytes + 337)];
    [getAWDMetric setFaceYaw:*(bytes + 341)];
    [getAWDMetric setFaceRoll:*(bytes + 345)];
    v79 = *(bytes + 333);
    BKLogCode();
  }

  if (v25 || *(bytes + 4))
  {
    [(PearlCoreAnalytics *)obj checkYogiError:*(bytes + 4)];
  }

  v80 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 360)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setGlassesDetected:v80];

  v81 = *(bytes + 362) + *(bytes + 361) + *(bytes + 363);
  v82 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v81];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEnrolledTemplateCountType0:v82];

  v83 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(bytes + 361)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEnrolledTemplateCountType0NoGlasses:v83];

  v84 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(bytes + 362)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEnrolledTemplateCountType0WithGlasses:v84];

  v85 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(bytes + 363)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEnrolledTemplateCountType0Unknown:v85];

  LODWORD(v85) = *(bytes + 365) + *(bytes + 364) + *(bytes + 366);
  v86 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v85];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEnrolledTemplateCountType1:v86];

  v87 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(bytes + 364)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEnrolledTemplateCountType1NoGlasses:v87];

  v88 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(bytes + 365)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEnrolledTemplateCountType1WithGlasses:v88];

  v89 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(bytes + 366)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEnrolledTemplateCountType1Unknown:v89];

  v90 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v85 + v81];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEnrolledTemplateCountTotal:v90];

  v91 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 93)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setGmcRun:v91];

  v92 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(bytes + 394)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setMatchTrigger:v92];

  v93 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 392)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setUnsupportedOrientation:v93];

  if (obj->_isInternalBuild)
  {
    v94 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 393)];
    [(PearlCoreAnalyticsMatchEvent *)v170 setSecureFaceDetectBootArgsUsed:v94];
  }

  if (obj->_secureFaceDetectSupported && *(bytes + 394) == 1 && !*(bytes + 387) && (*(bytes + 393) & 1) == 0 && (*(bytes + 297) & 1) == 0)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v96 = __osLog;
    if (!__osLog)
    {
      v96 = MEMORY[0x29EDCA988];
    }

    v97 = v96;
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      *v180 = 0;
      _os_log_impl(&dword_296CA4000, v97, OS_LOG_TYPE_ERROR, "PearlCoreAnalytics sendMatchEventAnalytics: unexpected legacy precheck for device initiated match!\n", v180, 2u);
    }

    v98 = __osLog;
    if (!__osLog)
    {
      v98 = MEMORY[0x29EDCA988];
    }

    v99 = v98;
    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      v100 = *(bytes + 379);
      v101 = *(bytes + 383);
      v102 = *(bytes + 387);
      v103 = *(bytes + 391);
      v104 = *(bytes + 392);
      *v180 = 67110144;
      *&v180[4] = v100;
      *&v180[8] = 1024;
      *&v180[10] = v101;
      v181 = 1024;
      v182 = v102;
      v183 = 1024;
      v184 = v103;
      v185 = 1024;
      v186 = v104;
      _os_log_impl(&dword_296CA4000, v99, OS_LOG_TYPE_ERROR, "PearlCoreAnalytics sendMatchEventAnalytics: SecureFaceDetectInfo: state: %u sessionID: %u reason: %u timeout: %u unsupportedOrientation: %u\n", v180, 0x20u);
    }

    getPrintableArray = [(PearlCoreAnalyticsEvent *)obj->_secureFaceDetect getPrintableArray];
    [array addObjectsFromArray:getPrintableArray];

    getPrintableArray2 = [(PearlCoreAnalyticsEvent *)obj->_previousSecureFaceDetect getPrintableArray];
    [array addObjectsFromArray:getPrintableArray2];

    getPrintableArray3 = [(PearlCoreAnalyticsEvent *)v170 getPrintableArray];
    [array addObjectsFromArray:getPrintableArray3];

    v108 = __osLog;
    if (!__osLog)
    {
      v108 = MEMORY[0x29EDCA988];
    }

    v109 = v108;
    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      *v180 = 0;
      _os_log_impl(&dword_296CA4000, v109, OS_LOG_TYPE_ERROR, "PearlCoreAnalytics sendMatchEventAnalytics: _secureFaceDetect, _previousSecureFaceDetect matchCAEvent:\n", v180, 2u);
    }

    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    v110 = array;
    v111 = [v110 countByEnumeratingWithState:&v171 objects:v179 count:16];
    if (v111)
    {
      v112 = *v172;
      do
      {
        for (j = 0; j != v111; ++j)
        {
          if (*v172 != v112)
          {
            objc_enumerationMutation(v110);
          }

          v114 = *(*(&v171 + 1) + 8 * j);
          v115 = __osLog;
          if (!__osLog)
          {
            v115 = MEMORY[0x29EDCA988];
          }

          v116 = v115;
          if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
          {
            *v180 = 138412290;
            *&v180[4] = v114;
            _os_log_impl(&dword_296CA4000, v116, OS_LOG_TYPE_ERROR, "%@\n", v180, 0xCu);
          }
        }

        v111 = [v110 countByEnumeratingWithState:&v171 objects:v179 count:16];
      }

      while (v111);
    }

    [(PearlCoreAnalytics *)obj sendPearlAbcEvent:9];
  }

  v117 = *(bytes + 383);
  if (!v117)
  {
    goto LABEL_162;
  }

  secureFaceDetect = obj->_secureFaceDetect;
  if (!secureFaceDetect)
  {
    [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
LABEL_195:

    objc_sync_exit(obj);
    goto LABEL_177;
  }

  sessionID = [(PearlCoreAnalyticsSecureFaceDetectEvent *)secureFaceDetect sessionID];
  if ([sessionID unsignedIntValue] == v117)
  {
  }

  else
  {
    sessionID2 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect sessionID];
    v121 = [sessionID2 unsignedIntValue] == v117;

    if (!v121)
    {
      if (*(bytes + 379) == 1)
      {
        [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
        goto LABEL_195;
      }

      if (*(bytes + 51) != -1)
      {
        [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
        goto LABEL_195;
      }

      if (*(bytes + 155) != -1)
      {
        [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
        goto LABEL_195;
      }

      v127 = objc_alloc_init(PearlCoreAnalyticsSecureFaceDetectEvent);
      previousSecureFaceDetect = obj->_previousSecureFaceDetect;
      obj->_previousSecureFaceDetect = v127;

      v129 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSince1970:0.0];
      [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect setSequenceStartDate:v129];

      v130 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSince1970:0.0];
      [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect setSequenceEndDate:v130];

      sessionID3 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v117];
      [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect setSessionID:sessionID3];
      goto LABEL_156;
    }
  }

  sessionID3 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_secureFaceDetect sessionID];
  if ([sessionID3 unsignedIntValue] != v117)
  {
LABEL_156:

    goto LABEL_157;
  }

  sessionID4 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect sessionID];
  v124 = [sessionID4 unsignedIntValue] == v117;

  if (!v124)
  {
    sequenceStartDate = [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_secureFaceDetect sequenceStartDate];
    v126 = sequenceStartDate == 0;

    if (v126)
    {
      [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
      goto LABEL_195;
    }

    if (*(bytes + 51) != -1)
    {
      [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
      goto LABEL_195;
    }

    if (*(bytes + 155) != -1)
    {
      [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
      goto LABEL_195;
    }

    [(PearlCoreAnalytics *)obj analyzeSecureFaceDetectStop];
    if (*(bytes + 49) == 255)
    {
      [getAWDMetric setHasFaceDetectResult:0];
    }
  }

LABEL_157:
  v131 = obj->_previousSecureFaceDetect;
  if (!v131)
  {
    [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
    goto LABEL_195;
  }

  sequenceStartDate2 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)v131 sequenceStartDate];
  v133 = sequenceStartDate2 == 0;

  if (v133)
  {
    [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
    goto LABEL_195;
  }

  sequenceEndDate = [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect sequenceEndDate];
  v135 = sequenceEndDate == 0;

  if (v135)
  {
    [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
    goto LABEL_195;
  }

  sessionID5 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect sessionID];
  v137 = [sessionID5 unsignedIntValue] == v117;

  if (!v137)
  {
    [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
    goto LABEL_195;
  }

  v138 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(bytes + 379)];
  [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect setSecureFaceDetectState:v138];

  v139 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(bytes + 387)];
  [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect setSecureFaceDetectReason:v139];

  dictionaryRepresentation = [(BiometricKitCoreAnalyticsEvent *)obj->_previousSecureFaceDetect dictionaryRepresentation];
  [(PearlCoreAnalyticsMatchEvent *)v170 setSecureFaceDetectDict:dictionaryRepresentation];

LABEL_162:
  if ([getAWDMetric hasFaceDetectResult] && !objc_msgSend(getAWDMetric, "faceDetectResult"))
  {
    v141 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(getAWDMetric, "overallTime") - objc_msgSend(getAWDMetric, "faceDetectEndTime")}];
    [(PearlCoreAnalyticsMatchEvent *)v170 setOverallTimeFaceDetected:v141];
  }

  v142 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(getAWDMetric, "overallTime") / 0xAuLL}];
  [(PearlCoreAnalyticsMatchEvent *)v170 setOverallTimeBounded:v142];

  overallTimeFaceDetected = [(PearlCoreAnalyticsMatchEvent *)v170 overallTimeFaceDetected];

  if (overallTimeFaceDetected)
  {
    v144 = MEMORY[0x29EDBA070];
    overallTimeFaceDetected2 = [(PearlCoreAnalyticsMatchEvent *)v170 overallTimeFaceDetected];
    v146 = [v144 numberWithUnsignedInt:{objc_msgSend(overallTimeFaceDetected2, "unsignedIntValue") / 0xAuLL}];
    [(PearlCoreAnalyticsMatchEvent *)v170 setOverallTimeFaceDetectedBounded:v146];
  }

  if ([getAWDMetric hasFaceDetectEndTime])
  {
    v147 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(getAWDMetric, "faceDetectEndTime") / 0xAuLL}];
    [(PearlCoreAnalyticsMatchEvent *)v170 setFaceDetectEndTimeBounded:v147];
  }

  objc_sync_exit(obj);

  if (*(bytes + 221))
  {
    [(PearlCoreAnalytics *)obj sendPearlAbcEvent:?];
  }

  [(BiometricKitCoreAnalyticsEvent *)v170 postEvent];
  v148 = *(bytes + 41);
  *buf = *(bytes + 4);
  *&buf[8] = v148;
  BYTE1(v189) = *(bytes + 49);
  v149 = *bytes;
  HIDWORD(v189) = *(bytes + 59);
  LODWORD(v190[0]) = v149;
  *(&v189 + 4) = *v164;
  v150 = *v162;
  *(&v190[1] + 2) = *(v162 + 14);
  *(v190 + 4) = v150;
  *(&v190[2] + 10) = *(bytes + 310);
  *(&v190[2] + 2) = *(bytes + 302);
  *(&v190[4] + 7) = *(bytes + 375);
  *(&v190[3] + 15) = *(bytes + 367);
  v151 = *(bytes + 333);
  BYTE14(v190[3]) = *(bytes + 349);
  *(&v190[2] + 14) = v151;
  v152 = *(bytes + 379);
  *(&v190[5] + 2) = *(bytes + 386);
  *(&v190[4] + 11) = v152;
  if (*(bytes + 4) && v148 >= *(bytes + 5))
  {
    BYTE2(v189) = *(bytes + 4);
  }

  v153 = [MEMORY[0x29EDB8DA0] dataWithBytes:buf length:122];
  [(PearlCoreAnalytics *)obj sendFaceDetectEventAnalytics:v153 fromMatch:1 orientation:orientation];
  v154 = *(bytes + 49);
  BKLogCode();
  v155 = *(bytes + 51);
  BKLogCode();
  v156 = *(bytes + 155);
  BKLogCode();
  *(bytes + 13);
  BKLogEvent();
  if ((*bytes & 0x80000000) == 0)
  {
    BKLogCode();
  }

  [(PearlCoreAnalyticsDailyUpdateEvent *)obj->_dailyEvent updateDailyMatchValues:bytes];

LABEL_177:
  v157 = __osLog;
  if (!__osLog)
  {
    v157 = MEMORY[0x29EDCA988];
  }

  v158 = v157;
  if (os_log_type_enabled(v158, OS_LOG_TYPE_DEBUG))
  {
    *v180 = 0;
    _os_log_impl(&dword_296CA4000, v158, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendMatchEventAnalytics: -> void\n", v180, 2u);
  }

  v159 = *MEMORY[0x29EDCA608];
}

- (void)sendFaceDetectEventAnalytics:(id)analytics fromMatch:(BOOL)match orientation:(unint64_t)orientation
{
  v90 = *MEMORY[0x29EDCA608];
  analyticsCopy = analytics;
  if (__osLog)
  {
    v8 = __osLog;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = analyticsCopy != 0;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendFaceDetectEventAnalytics: fdMessage: %d\n", buf, 8u);
  }

  v87 = analyticsCopy;
  v9 = objc_alloc_init(PearlCoreAnalyticsFaceDetectEvent);
  if (!analyticsCopy)
  {
    [PearlCoreAnalytics sendFaceDetectEventAnalytics:buf fromMatch:? orientation:?];
LABEL_50:
    v82 = v88;
    dictionaryRepresentation = *buf;
    goto LABEL_42;
  }

  if ([analyticsCopy length] <= 0x79)
  {
    [PearlCoreAnalytics sendFaceDetectEventAnalytics:buf fromMatch:? orientation:?];
    goto LABEL_50;
  }

  v10 = analyticsCopy;
  bytes = [analyticsCopy bytes];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = *(bytes + 20);
  v14 = *(bytes + 24);
  v15 = *(bytes + 28);
  v16 = *(bytes + 8);
  v17 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:absoluteToMiliseconds()];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setOverallTime:v17];

  v18 = [MEMORY[0x29EDBA070] numberWithInt:*(bytes + 32)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setAmbientLux:v18];

  v19 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:orientation];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setDeviceOrientation:v19];

  v20 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 120)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setUnsupportedOrientation:v20];

  if (selfCopy->_isInternalBuild)
  {
    v21 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 121)];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setSecureFaceDetectBootArgsUsed:v21];
  }

  v22 = (v14 + v13 + v15);
  if (*(bytes + 115))
  {
    secureFaceDetect = selfCopy->_secureFaceDetect;
    if (!secureFaceDetect)
    {
      [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
      goto LABEL_57;
    }

    v24 = *(bytes + 111);
    sessionID = [(PearlCoreAnalyticsSecureFaceDetectEvent *)secureFaceDetect sessionID];
    unsignedIntValue = [sessionID unsignedIntValue];
    sessionID2 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_previousSecureFaceDetect sessionID];
    if (unsignedIntValue == [sessionID2 unsignedIntValue])
    {
      sessionID3 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_previousSecureFaceDetect sessionID];
      v29 = [sessionID3 unsignedIntValue] == v24;

      if (!v29)
      {
        if (*(bytes + 107) == 1)
        {
          [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
          goto LABEL_57;
        }

        v30 = objc_alloc_init(PearlCoreAnalyticsSecureFaceDetectEvent);
        previousSecureFaceDetect = selfCopy->_previousSecureFaceDetect;
        selfCopy->_previousSecureFaceDetect = v30;

        v32 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSince1970:0.0];
        [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_previousSecureFaceDetect setSequenceStartDate:v32];

        v33 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSince1970:0.0];
        [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_previousSecureFaceDetect setSequenceEndDate:v33];

        v34 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v24];
        [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_previousSecureFaceDetect setSessionID:v34];

        goto LABEL_20;
      }
    }

    else
    {
    }

    sessionID4 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_secureFaceDetect sessionID];
    v37 = [sessionID4 unsignedIntValue] == v24;

    if (v37)
    {
      [(PearlCoreAnalytics *)selfCopy analyzeSecureFaceDetectStop];
    }

LABEL_20:
    v38 = selfCopy->_previousSecureFaceDetect;
    if (v38)
    {
      sequenceStartDate = [(PearlCoreAnalyticsSecureFaceDetectEvent *)v38 sequenceStartDate];
      v40 = sequenceStartDate == 0;

      if (v40)
      {
        [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
      }

      else
      {
        sequenceEndDate = [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_previousSecureFaceDetect sequenceEndDate];
        v42 = sequenceEndDate == 0;

        if (v42)
        {
          [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
        }

        else
        {
          sessionID5 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_previousSecureFaceDetect sessionID];
          v44 = [sessionID5 unsignedIntValue] == v24;

          if (v44)
          {
            v45 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(bytes + 107)];
            [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_previousSecureFaceDetect setSecureFaceDetectState:v45];

            v46 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(bytes + 115)];
            [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_previousSecureFaceDetect setSecureFaceDetectReason:v46];

            if (v22)
            {
              v47 = 0;
            }

            else
            {
              v47 = *(bytes + 17) == 255;
            }

            secureFaceDetectFaceDetected = [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_previousSecureFaceDetect secureFaceDetectFaceDetected];
            bOOLValue = [secureFaceDetectFaceDetected BOOLValue];

            if ((bOOLValue & 1) == 0)
            {
              [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectFailed:MEMORY[0x29EDB8EB0]];
            }

            dictionaryRepresentation = [(BiometricKitCoreAnalyticsEvent *)selfCopy->_previousSecureFaceDetect dictionaryRepresentation];
            [(PearlCoreAnalyticsFaceDetectEvent *)v9 setSecureFaceDetectDict:dictionaryRepresentation];
            if (v47)
            {
              goto LABEL_36;
            }

            goto LABEL_30;
          }

          [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
        }
      }
    }

    else
    {
      [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
    }

LABEL_57:
    objc_sync_exit(selfCopy);

    v82 = 0;
    dictionaryRepresentation = 0;
    goto LABEL_42;
  }

  dictionaryRepresentation = 0;
LABEL_30:
  v50 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(bytes + 17)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectResult:v50];

  v51 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v22];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectFrameCount:v51];

  v52 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(bytes + 20)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectFrameFloodCount:v52];

  v53 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(bytes + 24)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectFrameSparseCount:v53];

  v54 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(bytes + 28)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectFrameDenseCount:v54];

  v55 = [MEMORY[0x29EDBA070] numberWithChar:*(bytes + 18)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setCameraErr:v55];

  if (*(bytes + 38) != -273)
  {
    v56 = [MEMORY[0x29EDBA070] numberWithInt:?];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setSensorTemperature:v56];
  }

  v57 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(bytes + 42)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDistance:v57];

  v58 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 37)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setHasOcclusion:v58];

  v59 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(bytes + 44)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setCamRectX:v59];

  v60 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(bytes + 46)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setCamRectY:v60];

  v61 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(bytes + 48)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setCamRectW:v61];

  v62 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(bytes + 50)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setCamRectH:v62];

  v63 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(bytes + 52)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setPPMRequestedBudget:v63];

  v64 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(bytes + 53)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setPPMAllocatedBudget:v64];

  if (*(bytes + 54) != -1)
  {
    v65 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:?];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setCamLux:v65];
  }

  v66 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 66)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackNoFaceDetected:v66];

  v67 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 67)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackFaceTooClose:v67];

  v68 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 68)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackFaceTooFar:v68];

  v69 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 69)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackPoseOutOfRange:v69];

  v70 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 70)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackNoAttention:v70];

  v71 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 71)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackFaceOccluded:v71];

  v72 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 72)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackCameraObstructed:v72];

  v73 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 73)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackPartialOutOfFOV:v73];

  v74 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 74)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackPoseMarginal:v74];

  v75 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 75)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackNoseAndMouthOccluded:v75];

  v76 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 17) > 1u];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectFailed:v76];

  v77 = [MEMORY[0x29EDBA070] numberWithBool:(*(bytes + 17) < 0x13uLL) & (0x41040u >> *(bytes + 17))];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setAttentionDetectFailed:v77];

  if (*(bytes + 94) == 1)
  {
    v78 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(bytes + 78)];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceOrientation:v78];

    v79 = [MEMORY[0x29EDBA070] numberWithInt:*(bytes + 82)];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFacePitch:v79];

    v80 = [MEMORY[0x29EDBA070] numberWithInt:*(bytes + 86)];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceYaw:v80];

    v81 = [MEMORY[0x29EDBA070] numberWithInt:*(bytes + 90)];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceRoll:v81];
  }

LABEL_36:
  objc_sync_exit(selfCopy);

  v82 = [(BiometricKitCoreAnalyticsEvent *)v9 dictionaryRepresentationArchiving:0];
  if (![(BiometricKitCoreAnalyticsEvent *)v9 postEvent])
  {
    [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
  }

  if (!match)
  {
    v83 = [(BiometricKitCoreAnalyticsEvent *)[PearlCoreAnalyticsFaceDetectEvent alloc] initWithName:@"com.apple.biometrickit.pearl.attentionCheck" dictionary:v82];
    [(PearlCoreAnalyticsFaceDetectEvent *)v83 setSecureFaceDetectDict:dictionaryRepresentation];
    if (![(BiometricKitCoreAnalyticsEvent *)v83 postEvent])
    {
      [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
    }
  }

LABEL_42:
  if (__osLog)
  {
    v84 = __osLog;
  }

  else
  {
    v84 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v84, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendFaceDetectEventAnalytics: -> void\n", buf, 2u);
  }

  v85 = *MEMORY[0x29EDCA608];
}

- (void)sendEnrollEventAnalytics:(id)analytics orientation:(unint64_t)orientation
{
  v30 = *MEMORY[0x29EDCA608];
  analyticsCopy = analytics;
  v7 = MEMORY[0x29EDCA988];
  if (__osLog)
  {
    v8 = __osLog;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v29[0] = 67109120;
    v29[1] = analyticsCopy != 0;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendEnrollEventAnalytics: enrollMessage: %d\n", v29, 8u);
  }

  v9 = objc_alloc_init(PearlCoreAnalyticsEnrollEvent);
  getAWDMetric = [(PearlCoreAnalyticsEvent *)v9 getAWDMetric];
  if (analyticsCopy)
  {
    if ([analyticsCopy length] <= 0xF9)
    {
      [PearlCoreAnalytics sendEnrollEventAnalytics:orientation:];
    }

    else
    {
      v11 = analyticsCopy;
      bytes = [analyticsCopy bytes];
      selfCopy = self;
      objc_sync_enter(selfCopy);
      [getAWDMetric setOverallResult:*bytes];
      v14 = *(bytes + 10);
      [getAWDMetric setOverallTime:absoluteToMiliseconds()];
      [getAWDMetric setDoubleErrorCountsOK:*(bytes + 5)];
      [getAWDMetric setDoubleErrorCountsMoreFrames:*(bytes + 6)];
      [getAWDMetric setDoubleErrorCountsNoFace:*(bytes + 7)];
      [getAWDMetric setDoubleErrorCountsFaceOutOfFOV:*(bytes + 9)];
      [getAWDMetric setDoubleErrorCountsMultipleFaces:*(bytes + 8)];
      [getAWDMetric setDoubleErrorCountsFaceTooClose:*(bytes + 10)];
      [getAWDMetric setDoubleErrorCountsFaceTooFar:*(bytes + 11)];
      [getAWDMetric setDoubleErrorCountsPoseOutRange:*(bytes + 12)];
      [getAWDMetric setDoubleErrorCountsBinCovered:*(bytes + 13)];
      [getAWDMetric setDoubleErrorCountsOccluded:*(bytes + 14)];
      [getAWDMetric setDoubleErrorCountsUpperFaceOccluded:*(bytes + 15)];
      [getAWDMetric setDoubleErrorCountsLowerFaceOccluded:*(bytes + 16)];
      [getAWDMetric setFrameErrorCountsOK:*(bytes + 17)];
      [getAWDMetric setFrameErrorCountsMoreFrames:*(bytes + 18)];
      [getAWDMetric setFrameErrorCountsNoFace:*(bytes + 19)];
      [getAWDMetric setFrameErrorCountsFaceOutOfFOV:*(bytes + 21)];
      [getAWDMetric setFrameErrorCountsMultipleFaces:*(bytes + 20)];
      [getAWDMetric setFrameErrorCountsFaceTooClose:*(bytes + 22)];
      [getAWDMetric setFrameErrorCountsFaceTooFar:*(bytes + 23)];
      [getAWDMetric setFrameErrorCountsPoseOutRange:*(bytes + 24)];
      [getAWDMetric setFrameErrorCountsBinCovered:*(bytes + 25)];
      [getAWDMetric setFrameErrorCountsOccluded:*(bytes + 26)];
      [getAWDMetric setFrameErrorCountsUpperFaceOccluded:*(bytes + 27)];
      [getAWDMetric setFrameErrorCountsLowerFaceOccluded:*(bytes + 28)];
      [getAWDMetric setFrameCountBin00:*(bytes + 37)];
      [getAWDMetric setFrameCountBin01:*(bytes + 38)];
      [getAWDMetric setFrameCountBin02:*(bytes + 39)];
      [getAWDMetric setFrameCountBin10:*(bytes + 40)];
      [getAWDMetric setFrameCountBin11:*(bytes + 41)];
      [getAWDMetric setFrameCountBin12:*(bytes + 42)];
      [getAWDMetric setFrameCountBin20:*(bytes + 43)];
      [getAWDMetric setFrameCountBin21:*(bytes + 44)];
      [getAWDMetric setFrameCountBin22:*(bytes + 45)];
      [getAWDMetric setBioCaptureSequenceCount:*(bytes + 29)];
      [getAWDMetric setAmbientLux:*(bytes + 30)];
      [getAWDMetric setFeatureGenerationError:bytes[184]];
      [getAWDMetric setEnrollFeatureVectorError:bytes[185]];
      [getAWDMetric setCameraErr:bytes[19]];
      [getAWDMetric setEnrollResult:bytes[1]];
      [getAWDMetric setFaceDistance:*(bytes + 103)];
      [getAWDMetric setSensorTemperature:*(bytes + 202)];
      if (*(bytes + 202) == -273)
      {
        [getAWDMetric setHasSensorTemperature:0];
      }

      [getAWDMetric setEnrollType:bytes[248]];
      [getAWDMetric setNoseAndMouthOccluded:bytes[239]];
      if (*(bytes + 218) != -1)
      {
        v15 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:?];
        [(PearlCoreAnalyticsEnrollEvent *)v9 setCamLux:v15];
      }

      v16 = [(PearlCoreAnalytics *)selfCopy isBacklitSun:bytes + 200];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setBacklitSun:v16];

      [getAWDMetric setEnrolledTemplateCountType0:0];
      [getAWDMetric setEnrolledTemplateCountType0:{objc_msgSend(getAWDMetric, "enrolledTemplateCountType0") + bytes[242]}];
      [getAWDMetric setEnrolledTemplateCountType0:{objc_msgSend(getAWDMetric, "enrolledTemplateCountType0") + bytes[243]}];
      [getAWDMetric setEnrolledTemplateCountType0:{objc_msgSend(getAWDMetric, "enrolledTemplateCountType0") + bytes[244]}];
      v17 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:bytes[242]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setEnrolledTemplateCountType0NoGlasses:v17];

      v18 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:bytes[243]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setEnrolledTemplateCountType0WithGlasses:v18];

      v19 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:bytes[244]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setEnrolledTemplateCountType0Unknown:v19];

      [getAWDMetric setEnrolledTemplateCountType1:0];
      [getAWDMetric setEnrolledTemplateCountType1:{objc_msgSend(getAWDMetric, "enrolledTemplateCountType1") + bytes[245]}];
      [getAWDMetric setEnrolledTemplateCountType1:{objc_msgSend(getAWDMetric, "enrolledTemplateCountType1") + bytes[246]}];
      [getAWDMetric setEnrolledTemplateCountType1:{objc_msgSend(getAWDMetric, "enrolledTemplateCountType1") + bytes[247]}];
      v20 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:bytes[245]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setEnrolledTemplateCountType1NoGlasses:v20];

      v21 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:bytes[246]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setEnrolledTemplateCountType1WithGlasses:v21];

      v22 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:bytes[247]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setEnrolledTemplateCountType1Unknown:v22];

      [getAWDMetric setEnrolledTemplateCountTotal:{objc_msgSend(getAWDMetric, "enrolledTemplateCountType1") + objc_msgSend(getAWDMetric, "enrolledTemplateCountType0")}];
      [getAWDMetric setEnrolledIdentityCount:{objc_msgSend(getAWDMetric, "enrolledTemplateCountType0")}];
      if (bytes[127])
      {
        v24 = *(bytes + 16);
        v23 = *(bytes + 17);
      }

      else
      {
        v24 = -1;
        v23 = -1;
      }

      [getAWDMetric setRfcSetIndex:v24];
      [getAWDMetric setRfcFrameIndex:v23];
      if (v24 == -1)
      {
        [getAWDMetric setHasRfcSetIndex:0];
      }

      if (v23 == -1)
      {
        [getAWDMetric setHasRfcFrameIndex:0];
      }

      v25 = !*(bytes + 17) && *(bytes + 19) && *(bytes + 103) == 0;
      [getAWDMetric setFailedNoFace:v25];
      [getAWDMetric setDeviceOrientation:orientation];
      if (*(bytes + 36))
      {
        [(PearlCoreAnalytics *)selfCopy sendPearlAbcEvent:?];
      }

      [(PearlCoreAnalytics *)selfCopy checkYogiError:bytes[19]];
      v26 = [MEMORY[0x29EDBA070] numberWithBool:bytes[249]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setGlassesDetected:v26];

      objc_sync_exit(selfCopy);
      if (![(BiometricKitCoreAnalyticsEvent *)v9 postEvent])
      {
        [PearlCoreAnalytics sendEnrollEventAnalytics:orientation:];
      }

      [(BiometricKitCoreAnalyticsEvent *)selfCopy->_dailyEvent persistData];
    }
  }

  else
  {
    [PearlCoreAnalytics sendEnrollEventAnalytics:orientation:];
  }

  if (__osLog)
  {
    v27 = __osLog;
  }

  else
  {
    v27 = v7;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v29[0]) = 0;
    _os_log_impl(&dword_296CA4000, v27, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendEnrollEventAnalytics: -> void\n", v29, 2u);
  }

  v28 = *MEMORY[0x29EDCA608];
}

- (void)sendPasscodeChallengeEventAnalytics:(id)analytics orientation:(unint64_t)orientation
{
  v19 = *MEMORY[0x29EDCA608];
  analyticsCopy = analytics;
  v7 = MEMORY[0x29EDCA988];
  if (__osLog)
  {
    v8 = __osLog;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v18[0] = 67109120;
    v18[1] = analyticsCopy != 0;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendPasscodeChallengeEventAnalytics: passChallengeMessage: %d\n", v18, 8u);
  }

  v9 = objc_alloc_init(PearlCoreAnalyticsPasscodeChallengeEvent);
  getAWDMetric = [(PearlCoreAnalyticsEvent *)v9 getAWDMetric];
  if (analyticsCopy)
  {
    if ([analyticsCopy length] <= 0x3D)
    {
      [PearlCoreAnalytics sendPasscodeChallengeEventAnalytics:orientation:];
    }

    else
    {
      v11 = analyticsCopy;
      bytes = [analyticsCopy bytes];
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v14 = *(bytes + 2);
      [getAWDMetric setOverallTime:absoluteToMiliseconds()];
      [getAWDMetric setPasscodeChallengeResult:*(bytes + 26)];
      [getAWDMetric setPasscodeChallengeTemplateUpdated:*(bytes + 28) != 0];
      [getAWDMetric setAmbientLux:*bytes];
      [getAWDMetric setSensorTemperature:bytes[8]];
      if (bytes[8] == -273)
      {
        [getAWDMetric setHasSensorTemperature:0];
      }

      [getAWDMetric setFaceDistance:*(bytes + 18)];
      [getAWDMetric setAttentionScore:bytes[1]];
      [getAWDMetric setHasOcclusion:*(bytes + 31)];
      [getAWDMetric setPpmRequestedBudget:*(bytes + 46)];
      [getAWDMetric setPpmAllocatedBudget:*(bytes + 47)];
      [getAWDMetric setMatchIdentityCount:*(bytes + 29)];
      [getAWDMetric setDeviceOrientation:orientation];
      [getAWDMetric setMatchType:*(bytes + 60)];
      v15 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 61)];
      [(PearlCoreAnalyticsPasscodeChallengeEvent *)v9 setGlassesDetected:v15];

      objc_sync_exit(selfCopy);
      if (![(BiometricKitCoreAnalyticsEvent *)v9 postEvent])
      {
        [PearlCoreAnalytics sendPasscodeChallengeEventAnalytics:orientation:];
      }
    }
  }

  else
  {
    [PearlCoreAnalytics sendPasscodeChallengeEventAnalytics:orientation:];
  }

  if (__osLog)
  {
    v16 = __osLog;
  }

  else
  {
    v16 = v7;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v18[0]) = 0;
    _os_log_impl(&dword_296CA4000, v16, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendPasscodeChallengeEventAnalytics: -> void\n", v18, 2u);
  }

  v17 = *MEMORY[0x29EDCA608];
}

- (void)sendBioLockoutEventAnalytics:(id)analytics
{
  v14 = *MEMORY[0x29EDCA608];
  analyticsCopy = analytics;
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
    v13[0] = 67109120;
    v13[1] = analyticsCopy != 0;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendPasscodeChallengeEventAnalytics: sendBioLockoutEventAnalytics: %d\n", v13, 8u);
  }

  v7 = objc_alloc_init(AWDBiometricKitBioLockoutEvent);
  if (analyticsCopy)
  {
    if ([analyticsCopy length])
    {
      v8 = analyticsCopy;
      bytes = [analyticsCopy bytes];
      if (bytes)
      {
        selfCopy = self;
        objc_sync_enter(selfCopy);
        [(AWDBiometricKitBioLockoutEvent *)v7 setBioLockoutReason:*bytes];
        objc_sync_exit(selfCopy);

        if (![(PearlCoreAnalytics *)selfCopy postSimpleCoreAnalyticsEvent:@"com.apple.biometrickit.pearl.bioLockoutEvent" fromAWDMetric:v7])
        {
          [PearlCoreAnalytics sendBioLockoutEventAnalytics:];
        }
      }

      else
      {
        [PearlCoreAnalytics sendBioLockoutEventAnalytics:];
      }
    }

    else
    {
      [PearlCoreAnalytics sendBioLockoutEventAnalytics:];
    }
  }

  else
  {
    [PearlCoreAnalytics sendBioLockoutEventAnalytics:];
  }

  if (__osLog)
  {
    v11 = __osLog;
  }

  else
  {
    v11 = v5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendBioLockoutEventAnalytics: -> void\n", v13, 2u);
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (void)getDailyUpdateAnalytics
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

- (void)analyzeSecureFrameMeta:(id)meta faceDetected:(BOOL)detected
{
  detectedCopy = detected;
  v81 = *MEMORY[0x29EDCA608];
  metaCopy = meta;
  if (__osLog)
  {
    v7 = __osLog;
  }

  else
  {
    v7 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics analyzeSecureFrameMeta\n", buf, 2u);
  }

  sequenceStartDate = [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect sequenceStartDate];
  v9 = sequenceStartDate == 0;

  if (v9)
  {
    [PearlCoreAnalytics analyzeSecureFrameMeta:faceDetected:];
    goto LABEL_83;
  }

  v10 = metaCopy;
  if (!metaCopy)
  {
    [PearlCoreAnalytics analyzeSecureFrameMeta:faceDetected:];
    goto LABEL_83;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = metaCopy;
  v11 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (!v11)
  {
    goto LABEL_80;
  }

  v73 = *v76;
  v72 = *MEMORY[0x29EDBD598];
  v71 = *MEMORY[0x29EDBD590];
  v69 = *MEMORY[0x29EDBD5A0];
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v76 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v75 + 1) + 8 * i);
      type = [v13 type];
      v15 = type == v72;

      if (v15)
      {
        v22 = v13;
        if ([v22 coachingStatus])
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusNoFaceDetected:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 2) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusFaceTooClose:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 4) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusFaceTooFar:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 8) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusPoseOutOfRange:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 0x10) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusNoAttention:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 0x20) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusFaceOccluded:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 0x40) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusCameraObstructed:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 0x80) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusPartialOutOfFOV:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 0x100) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusDepthCameraObstructed:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 0x200) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusFPDFailure:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 0x400) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusPoseMarginal:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 0x800) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusNoseAndMouthOccluded:MEMORY[0x29EDB8EB0]];
        }

        v21 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(v22, "coachingStatus")}];
        [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setLastFeedback:v21];
      }

      else
      {
        type2 = [v13 type];
        v17 = type2 == v71;

        if (v17)
        {
          v23 = v13;
          hasPayingAttention = [v23 hasPayingAttention];
          if (hasPayingAttention)
          {
            v5 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v23, "payingAttention")}];
            v25 = v5;
          }

          else
          {
            v25 = 0;
          }

          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectPayingAttention:v25];
          if (hasPayingAttention)
          {
          }

          hasOccludedFeatures = [v23 hasOccludedFeatures];
          if (hasOccludedFeatures)
          {
            v10 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v23, "occludedFeatures")}];
            v27 = v10;
          }

          else
          {
            v27 = 0;
          }

          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectOccludedFeatures:v27];
          if (hasOccludedFeatures)
          {
          }

          hasPitchAngle = [v23 hasPitchAngle];
          if (hasPitchAngle)
          {
            v29 = MEMORY[0x29EDBA070];
            [v23 pitchAngle];
            v4 = [v29 numberWithInt:v30];
            v31 = v4;
          }

          else
          {
            v31 = 0;
          }

          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectFacePitch:v31];
          if (hasPitchAngle)
          {
          }

          hasYawAngle = [v23 hasYawAngle];
          if (hasYawAngle)
          {
            v33 = MEMORY[0x29EDBA070];
            [v23 yawAngle];
            v68 = [v33 numberWithInt:v34];
            v35 = v68;
          }

          else
          {
            v35 = 0;
          }

          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectFaceYaw:v35];
          if (hasYawAngle)
          {
          }

          hasRollAngle = [v23 hasRollAngle];
          if (hasRollAngle)
          {
            v37 = MEMORY[0x29EDBA070];
            [v23 rollAngle];
            v67 = [v37 numberWithInt:v38];
            v39 = v67;
          }

          else
          {
            v39 = 0;
          }

          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectFaceRoll:v39];
          if (hasRollAngle)
          {
          }

          hasDistance = [v23 hasDistance];
          if (hasDistance)
          {
            v41 = MEMORY[0x29EDBA070];
            [v23 distance];
            v66 = [v41 numberWithUnsignedInt:v42];
            v43 = v66;
          }

          else
          {
            v43 = 0;
          }

          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectFaceDistance:v43];
          if (hasDistance)
          {
          }

          v44 = MEMORY[0x29EDBA070];
          [v23 bounds];
          v46 = [v44 numberWithUnsignedInt:v45];
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCamRectX:v46];

          v47 = MEMORY[0x29EDBA070];
          [v23 bounds];
          v49 = [v47 numberWithUnsignedInt:v48];
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCamRectY:v49];

          v50 = MEMORY[0x29EDBA070];
          [v23 bounds];
          v52 = [v50 numberWithUnsignedInt:v51];
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCamRectW:v52];

          v53 = MEMORY[0x29EDBA070];
          [v23 bounds];
          v55 = [v53 numberWithUnsignedInt:v54];
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCamRectH:v55];

          hasOrientation = [v23 hasOrientation];
          v57 = hasOrientation;
          if (hasOrientation)
          {
            v21 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v23, "orientation")}];
            v58 = v21;
          }

          else
          {
            v58 = 0;
            v21 = v74;
          }

          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectFaceOrientation:v58];
          v74 = v21;
          if ((v57 & 1) == 0)
          {
            goto LABEL_77;
          }
        }

        else
        {
          type3 = [v13 type];
          v19 = type3 == v69;

          if (!v19)
          {
            continue;
          }

          v20 = v13;
          v21 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v20, "detectedMotion")}];
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectDetectedMotion:v21];
        }
      }

      v21 = v74;
LABEL_77:

      v74 = v21;
    }

    v11 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
  }

  while (v11);
LABEL_80:

  v59 = MEMORY[0x29EDBA070];
  secureFaceDetectFrameCount = [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect secureFaceDetectFrameCount];
  v61 = [v59 numberWithUnsignedInt:{objc_msgSend(secureFaceDetectFrameCount, "unsignedIntValue") + 1}];
  [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectFrameCount:v61];

  if (detectedCopy)
  {
    [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectFaceDetected:MEMORY[0x29EDB8EB0]];
  }

  objc_sync_exit(selfCopy);

LABEL_83:
  v62 = *MEMORY[0x29EDCA608];
}

- (void)analyzeSecureFaceDetectStop
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

- (void)sendPearlAbcEvent:(unint64_t)event
{
  v8 = *MEMORY[0x29EDCA608];
  if (![(BiometricAutoBugCapture *)self->_pearlAbc sendAutoBugCaptureEvent:?])
  {
    if (__osLog)
    {
      v4 = __osLog;
    }

    else
    {
      v4 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 134217984;
      eventCopy = event;
      _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_ERROR, "Failed to send auto bug capture event: %llu\n", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
}

- (int)sequenceTypeToCaptureMethod:(unsigned __int8)method forSequence:(unsigned __int8)sequence
{
  if (sequence == 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  if (method == 3)
  {
    return v4;
  }

  else
  {
    return method == 2;
  }
}

- (void)checkYogiError:(int)error
{
  v15 = *MEMORY[0x29EDCA608];
  if (__osLog)
  {
    v5 = __osLog;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    dailyEvent = self->_dailyEvent;
    v7 = v5;
    yogiErrorDate = [(PearlCoreAnalyticsDailyUpdateEvent *)dailyEvent yogiErrorDate];
    v12[0] = 67109378;
    v12[1] = error;
    v13 = 2112;
    v14 = yogiErrorDate;
    _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics checkYogiError cameraErr: %d _yogiErrorDate: %@\n", v12, 0x12u);
  }

  yogiErrorDate2 = [(PearlCoreAnalyticsDailyUpdateEvent *)self->_dailyEvent yogiErrorDate];

  if (error == 1)
  {
    if (!yogiErrorDate2)
    {
      date = [MEMORY[0x29EDB8DB0] date];
      [(PearlCoreAnalyticsDailyUpdateEvent *)self->_dailyEvent setYogiErrorDate:date];

      [(BiometricKitCoreAnalyticsEvent *)self->_dailyEvent persistData];
    }
  }

  else if (yogiErrorDate2)
  {
    [(PearlCoreAnalyticsDailyUpdateEvent *)self->_dailyEvent setYogiErrorDate:0];
  }

  v11 = *MEMORY[0x29EDCA608];
}

- (BOOL)postSimpleCoreAnalyticsEvent:(id)event fromAWDMetric:(id)metric
{
  v16 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  metricCopy = metric;
  if (__osLog)
  {
    v7 = __osLog;
  }

  else
  {
    v7 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412546;
    v13 = eventCopy;
    v14 = 2048;
    v15 = metricCopy;
    _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics postSimpleCoreAnalyticsEvent eventName: %@ awdMetric: %p\n", &v12, 0x16u);
  }

  v8 = [[PearlCoreAnalyticsEvent alloc] initWithName:eventCopy awdMetric:metricCopy];
  postEvent = [(BiometricKitCoreAnalyticsEvent *)v8 postEvent];

  v10 = *MEMORY[0x29EDCA608];
  return postEvent;
}

+ (void)sendDisplayPearlGlassesBannerNotificationEvent
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

+ (void)sendEnrollPearlGlassesBannerNotificationEvent
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

- (id)isBacklitSun:(id *)sun
{
  v24 = *MEMORY[0x29EDCA608];
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (sun)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(&sun->var11 + 2);
      v6 = *(&sun->var10 + 2);
      v19[0] = 67109376;
      v19[1] = v5;
      v20 = 1024;
      v21 = v6;
      _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics isBacklitSun frameInfo->ambientLux: %u frameInfo->floodExposure: %u\n", v19, 0xEu);
    }

    v7 = *(&sun->var11 + 2);
    if (v7 != -1)
    {
      v8 = *(&sun->var10 + 2);
      if (v8 != -1)
      {
        v9 = exp(v7 * 0.000230175689 + v8 * 0.000196729648 + -2.28890686);
        v10 = [MEMORY[0x29EDBA070] numberWithBool:v9 / (v9 + 1.0) > 0.5];
        goto LABEL_10;
      }
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    v22 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    v23 = 1481;
    OUTLINED_FUNCTION_15(&dword_296CA4000, v13, v14, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v15, v16, v17, v18, v19[0]);
  }

  v10 = 0;
LABEL_10:
  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

- (BOOL)setupDailyUpdateTimer
{
  v14 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9, v13);
  }

  v10 = *self;
  *a2 = *self;
  result = v10 == 0;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.1()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  OUTLINED_FUNCTION_5_1();
  v7 = *MEMORY[0x29EDCA608];
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.2()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  OUTLINED_FUNCTION_5_1();
  v7 = *MEMORY[0x29EDCA608];
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.3()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  OUTLINED_FUNCTION_5_1();
  v7 = *MEMORY[0x29EDCA608];
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.4()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  OUTLINED_FUNCTION_5_1();
  v7 = *MEMORY[0x29EDCA608];
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.5()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  OUTLINED_FUNCTION_5_1();
  v7 = *MEMORY[0x29EDCA608];
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.6()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  OUTLINED_FUNCTION_5_1();
  v7 = *MEMORY[0x29EDCA608];
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.7()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  OUTLINED_FUNCTION_5_1();
  v7 = *MEMORY[0x29EDCA608];
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.8()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  OUTLINED_FUNCTION_5_1();
  v7 = *MEMORY[0x29EDCA608];
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.9()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  OUTLINED_FUNCTION_5_1();
  v7 = *MEMORY[0x29EDCA608];
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.10()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  OUTLINED_FUNCTION_5_1();
  v7 = *MEMORY[0x29EDCA608];
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.11()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  OUTLINED_FUNCTION_5_1();
  v7 = *MEMORY[0x29EDCA608];
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.12()
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

- (void)sendMatchEventAnalytics:orientation:identities:.cold.13()
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

- (void)sendFaceDetectEventAnalytics:fromMatch:orientation:.cold.1()
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

- (void)sendFaceDetectEventAnalytics:fromMatch:orientation:.cold.2()
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

- (void)sendFaceDetectEventAnalytics:fromMatch:orientation:.cold.3()
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

- (void)sendFaceDetectEventAnalytics:fromMatch:orientation:.cold.4()
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

- (void)sendFaceDetectEventAnalytics:fromMatch:orientation:.cold.5()
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

- (void)sendFaceDetectEventAnalytics:fromMatch:orientation:.cold.6()
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

- (void)sendFaceDetectEventAnalytics:fromMatch:orientation:.cold.7()
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

- (void)sendFaceDetectEventAnalytics:fromMatch:orientation:.cold.8()
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

- (void)sendFaceDetectEventAnalytics:(void *)a1 fromMatch:(void *)a2 orientation:.cold.9(void *a1, void *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9, v11);
  }

  *a2 = 0;
  *a1 = 0;
  v10 = *MEMORY[0x29EDCA608];
}

- (void)sendFaceDetectEventAnalytics:(void *)a1 fromMatch:(void *)a2 orientation:.cold.10(void *a1, void *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9, v11);
  }

  *a2 = 0;
  *a1 = 0;
  v10 = *MEMORY[0x29EDCA608];
}

- (void)sendEnrollEventAnalytics:orientation:.cold.1()
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

- (void)sendEnrollEventAnalytics:orientation:.cold.2()
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

- (void)sendEnrollEventAnalytics:orientation:.cold.3()
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

- (void)sendPasscodeChallengeEventAnalytics:orientation:.cold.1()
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

- (void)sendPasscodeChallengeEventAnalytics:orientation:.cold.2()
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

- (void)sendPasscodeChallengeEventAnalytics:orientation:.cold.3()
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

- (void)sendBioLockoutEventAnalytics:.cold.1()
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

- (void)sendBioLockoutEventAnalytics:.cold.2()
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

- (void)sendBioLockoutEventAnalytics:.cold.3()
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

- (void)sendBioLockoutEventAnalytics:.cold.4()
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

- (void)analyzeSecureFrameMeta:faceDetected:.cold.1()
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

- (void)analyzeSecureFrameMeta:faceDetected:.cold.2()
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

@end