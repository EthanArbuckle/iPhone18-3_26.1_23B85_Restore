@interface PearlCoreAnalytics
+ (void)sendDisplayPearlGlassesBannerNotificationEvent;
+ (void)sendEnrollPearlGlassesBannerNotificationEvent;
- (BOOL)postSimpleCoreAnalyticsEvent:(id)a3 fromAWDMetric:(id)a4;
- (BOOL)setupDailyUpdateTimer;
- (PearlCoreAnalytics)init;
- (id)isBacklitSun:(id *)a3;
- (int)sequenceTypeToCaptureMethod:(unsigned __int8)a3 forSequence:(unsigned __int8)a4;
- (void)analyzeSecureFaceDetectStop;
- (void)analyzeSecureFrameMeta:(id)a3 faceDetected:(BOOL)a4;
- (void)checkDailyUpdate;
- (void)checkYogiError:(int)a3;
- (void)getDailyUpdateAnalytics;
- (void)sendBioLockoutEventAnalytics:(id)a3;
- (void)sendEnrollEventAnalytics:(id)a3 orientation:(unint64_t)a4;
- (void)sendFaceDetectEventAnalytics:(id)a3 fromMatch:(BOOL)a4 orientation:(unint64_t)a5;
- (void)sendMatchEventAnalytics:(id)a3 orientation:(unint64_t)a4 identities:(id)a5;
- (void)sendPasscodeChallengeEventAnalytics:(id)a3 orientation:(unint64_t)a4;
- (void)sendPearlAbcEvent:(unint64_t)a3;
- (void)serviceMatchWithServer:(id)a3;
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
    v3 = [[PearlCoreAnalyticsDailyUpdateEvent alloc] initWithPersistedData];
    dailyEvent = v2->_dailyEvent;
    v2->_dailyEvent = v3;

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
  v3 = [MEMORY[0x29EDB8D98] currentCalendar];
  v4 = [(BiometricKitCoreAnalyticsEvent *)self->_dailyEvent previousEventDate];
  v5 = [v3 isDateInToday:v4];

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

- (void)serviceMatchWithServer:(id)a3
{
  v4 = a3;
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

  [(BiometricKitCoreAnalyticsLockState *)self->_lockState serviceMatchWithServer:v4];
}

- (void)sendMatchEventAnalytics:(id)a3 orientation:(unint64_t)a4 identities:(id)a5
{
  v191 = *MEMORY[0x29EDCA608];
  v7 = a3;
  v165 = a5;
  v8 = __osLog;
  if (!__osLog)
  {
    v8 = MEMORY[0x29EDCA988];
  }

  v9 = v8;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v7 != 0;
    _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendMatchEventAnalytics: matchMessage: %d\n", buf, 8u);
  }

  v168 = v7;

  v170 = objc_alloc_init(PearlCoreAnalyticsMatchEvent);
  v10 = [(PearlCoreAnalyticsEvent *)v170 getAWDMetric];
  v189 = 0u;
  memset(v190, 0, 90);
  *buf = 0u;
  if (!v7)
  {
    [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
    goto LABEL_177;
  }

  if ([v7 length] <= 0x18A)
  {
    [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
    goto LABEL_177;
  }

  v11 = v7;
  v12 = [v7 bytes];
  v13 = self;
  objc_sync_enter(v13);
  obj = v13;
  [v10 setCaptureMethod:{-[PearlCoreAnalytics sequenceTypeToCaptureMethod:forSequence:](v13, "sequenceTypeToCaptureMethod:forSequence:", *(v12 + 350), *(v12 + 15))}];
  if (v13->_isInternalBuild)
  {
    [v10 setCombinedSequenceEnabled:*(v12 + 300)];
  }

  [v10 setMatchType:*(v12 + 359)];
  v14 = *(v12 + 51);
  v15 = *(v12 + 55);
  v16 = *(v12 + 59);
  v17 = *(v12 + 105);
  v18 = *(v12 + 109);
  v19 = *(v12 + 113);
  v160 = *(v12 + 157);
  v20 = *(v12 + 161);
  v166 = *(v12 + 165);
  v164 = (v12 + 51);
  [v10 setOverallResult:*(v12 + 13)];
  v21 = *(v12 + 2);
  [v10 setOverallTime:absoluteToMiliseconds()];
  v22 = *(v12 + 3);
  [v10 setOverallTimeWithRetries:absoluteToMiliseconds()];
  [v10 setMatchCancelled:*(v12 + 332)];
  if (*(v12 + 351))
  {
    [v10 setTimeSinceSleep:absoluteToMiliseconds()];
  }

  v23 = *(v12 + 41);
  v24 = absoluteToMiliseconds();
  if (v24)
  {
    [v10 setFaceDetectEndTime:v24];
  }

  [v10 setFaceDetectResult:*(v12 + 49)];
  v25 = v15 + v14 + v16;
  [v10 setFaceDetectFrameCount:v25];
  [v10 setFaceDetectFrameFloodCount:*v164];
  [v10 setFaceDetectFrameSparseCount:*(v12 + 55)];
  [v10 setFaceDetectFrameDenseCount:*(v12 + 59)];
  v26 = *(v12 + 94);
  v27 = absoluteToMiliseconds();
  if (v27)
  {
    [v10 setBioCheckEndTime:v27];
  }

  [v10 setBioCheckResult:*(v12 + 51)];
  if (*(v12 + 51) == -1)
  {
    [v10 setHasBioCheckResult:0];
  }

  [v10 setBioCheckFrameCount:(v18 + v17 + v19)];
  [v10 setBioCheckFrameFloodCount:*(v12 + 105)];
  [v10 setBioCheckFrameSparseCount:*(v12 + 109)];
  [v10 setBioCheckFrameDenseCount:*(v12 + 113)];
  v28 = *(v12 + 147);
  v29 = absoluteToMiliseconds();
  if (v29)
  {
    [v10 setProbingPatternEndTime:v29];
  }

  [v10 setProbingPatternResult:*(v12 + 155)];
  if (*(v12 + 155) == -1)
  {
    [v10 setHasProbingPatternResult:0];
  }

  [v10 setProbingPatternFrameCount:(v20 + v160 + v166)];
  [v10 setProbingPatternFrameFloodCount:*(v12 + 157)];
  [v10 setProbingPatternFrameSparseCount:*(v12 + 161)];
  [v10 setProbingPatternFrameDenseCount:*(v12 + 165)];
  [v10 setAmbientLux:*v12];
  [v10 setMatchForUnlock:*(v12 + 277) & 1];
  [v10 setFailedUnlockAttemptsFromFD:*(v12 + 281)];
  [v10 setFailedUnlockAttemptsFromBiocheck:*(v12 + 285)];
  [v10 setFailedMatchAttemptsFromFD:*(v12 + 289)];
  [v10 setFailedMatchAttemptsFromBiocheck:*(v12 + 293)];
  if (*(v12 + 232) == 2)
  {
    v30 = *(v12 + 233);
    v31 = *(v12 + 234);
    v32 = *(v12 + 225) == 0;
    if (*(v12 + 234))
    {
      v167 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
    }

    else
    {
      v36 = *(v12 + 226) == 0;
      v35 = *(v12 + 227) == 0;
      v34 = *(v12 + 236) == 0;
      v33 = *(v12 + 237) == 0;
      v167 = *(v12 + 235) == 0;
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

  if (*(v12 + 252) == 3)
  {
    if (*(v12 + 155) >= 1)
    {
      [v10 setProbingPatternFailure:1];
    }

    if (*(v12 + 253) && ([v10 captureMethod] != 3 || !v30))
    {
      v30 = *(v12 + 253);
    }

    if (*(v12 + 254))
    {
      v37 = [v10 captureMethod];
      if (v31 && v37 == 3)
      {
        if (*(v12 + 245))
        {
          v32 = v32;
        }

        else
        {
          v32 = 1;
        }

        goto LABEL_60;
      }

      v31 = *(v12 + 254);
    }

    if (*(v12 + 245))
    {
      v32 = v32;
    }

    else
    {
      v32 = 1;
    }

    if (!v31)
    {
      if (*(v12 + 246))
      {
        v36 = v36;
      }

      else
      {
        v36 = 1;
      }

      if (*(v12 + 247))
      {
        v35 = v35;
      }

      else
      {
        v35 = 1;
      }

      if (*(v12 + 256))
      {
        v34 = v34;
      }

      else
      {
        v34 = 1;
      }

      if (*(v12 + 257))
      {
        v33 = v33;
      }

      else
      {
        v33 = 1;
      }

      if (*(v12 + 255))
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
  [v10 setMatcherFailure:v32];
  [v10 setMatchDepthFailure:v35];
  [v10 setMatchFloodFailure:v36];
  [v10 setAsFloodFailure:v34];
  [v10 setAsDepthFailure:v33];
  [v10 setFeatureGenerationError:v30];
  [v10 setMatchFeatureVectorError:v31];
  [v10 setAsFailure:v167];
  [v10 setOnlineTemplateUpdated:*(v12 + 199) != 0];
  [v10 setPasscodeChallengeAllowed:*(v12 + 200) != 0];
  v161 = v12 + 63;
  if (*(v12 + 63) == 1)
  {
    [v10 setFaceDetectFaceDistance:*(v12 + 69)];
    [v10 setFaceDetectCamRectX:*(v12 + 71)];
    [v10 setFaceDetectCamRectY:*(v12 + 73)];
    [v10 setFaceDetectCamRectW:*(v12 + 75)];
    [v10 setFaceDetectCamRectH:*(v12 + 77)];
    [v10 setFaceDetectPPMRequestedBudget:*(v12 + 79)];
    [v10 setFaceDetectPPMAllocatedBudget:*(v12 + 80)];
    v39 = v12 + 63;
    if (*(v12 + 81) != -1)
    {
      v40 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:?];
      [(PearlCoreAnalyticsMatchEvent *)v170 setCamLux:v40];

      v39 = v12 + 63;
    }
  }

  else
  {
    v39 = 0;
  }

  if (*(v12 + 117) == 1)
  {
    [v10 setBioCheckFaceDistance:*(v12 + 123)];
    [v10 setBioCheckCamRectX:*(v12 + 125)];
    [v10 setBioCheckCamRectY:*(v12 + 127)];
    [v10 setBioCheckCamRectW:*(v12 + 129)];
    [v10 setBioCheckCamRectH:*(v12 + 131)];
    [v10 setBioCheckPPMRequestedBudget:*(v12 + 133)];
    [v10 setBioCheckPPMAllocatedBudget:*(v12 + 134)];
    if ([v10 captureMethod] != 3)
    {
      v41 = [(PearlCoreAnalytics *)obj isBacklitSun:v12 + 117];
      [(PearlCoreAnalyticsMatchEvent *)v170 setBacklitSun:v41];
    }

    v39 = v12 + 117;
  }

  if (*(v12 + 169) == 1)
  {
    [v10 setProbingPatternFaceDistance:*(v12 + 175)];
    [v10 setProbingPatternCamRectX:*(v12 + 177)];
    [v10 setProbingPatternCamRectY:*(v12 + 179)];
    [v10 setProbingPatternCamRectW:*(v12 + 181)];
    [v10 setProbingPatternCamRectH:*(v12 + 183)];
    if ([v10 captureMethod] != 3)
    {
      v39 = v12 + 117;
    }

    v42 = [(PearlCoreAnalyticsMatchEvent *)v170 backlitSun];
    v43 = v42 == 0;

    if (v43)
    {
      v44 = [(PearlCoreAnalytics *)obj isBacklitSun:v12 + 169];
      [(PearlCoreAnalyticsMatchEvent *)v170 setBacklitSun:v44];
    }
  }

  if (v39)
  {
    [v10 setSensorTemperature:*(v39 + 2)];
    if (*(v39 + 2) == -273)
    {
      [v10 setHasSensorTemperature:0];
    }

    [v10 setFaceDistance:{*(v39 + 3), v161}];
    [v10 setHasOcclusion:v39[1]];
    [v10 setCamRectX:*(v39 + 4)];
    [v10 setCamRectY:*(v39 + 5)];
    [v10 setCamRectW:*(v39 + 6)];
    [v10 setCamRectH:*(v39 + 7)];
  }

  if (*(v12 + 204))
  {
    v45 = *(v12 + 213);
    v46 = *(v12 + 205);
  }

  else
  {
    v46 = -1;
    v45 = -1;
  }

  [v10 setRfcSetIndex:{v46, v161}];
  [v10 setRfcFrameIndex:v45];
  if (v46 == -1)
  {
    [v10 setHasRfcSetIndex:0];
  }

  if (v45 == -1)
  {
    [v10 setHasRfcFrameIndex:0];
  }

  if (*(v12 + 202) == 1 && *(v12 + 265))
  {
    v47 = *(v12 + 266);
    v48 = 1;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  [v10 setBioLockout:v48];
  [v10 setBioLockoutReason:v47];
  [v10 setCameraErr:*(v12 + 4)];
  if (*(v12 + 202) == 1)
  {
    if ((v12[67] & 0x80000000) == 0)
    {
      [v10 setOnlineTemplateAge:?];
    }

    if ((v12[68] & 0x80000000) == 0)
    {
      [v10 setShortTermTemplateAge:?];
    }
  }

  [v10 setAutoRetry:*(v12 + 297)];
  [v10 setAutoRetryAllowed:*(v12 + 298)];
  if (obj->_isInternalBuild)
  {
    [v10 setAutoRetryEnabled:*(v12 + 301)];
  }

  [v10 setMatchIdentityCount:*(v12 + 299)];
  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  v49 = v165;
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

        v53 = [*(*(&v175 + 1) + 8 * i) creationTime];
        [v53 timeIntervalSince1970];
        [v10 addIdentityCreationTime:(v54 * 1000.0)];
      }

      v50 = [v49 countByEnumeratingWithState:&v175 objects:v187 count:16];
    }

    while (v50);
  }

  v55 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 302)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackNoFaceDetected:v55];

  v56 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 303)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackFaceTooClose:v56];

  v57 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 304)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackFaceTooFar:v57];

  v58 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 305)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackPoseOutOfRange:v58];

  v59 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 306)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackNoAttention:v59];

  v60 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 307)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackFaceOccluded:v60];

  v61 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 308)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackCameraObstructed:v61];

  v62 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 309)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackPartialOutOfFOV:v62];

  v63 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 310)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackPoseMarginal:v63];

  v64 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 311)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackNoseAndMouthOccluded:v64];

  v65 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 312)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementInfoFeedbackDepthCameraObstructed:v65];

  v66 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 367)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusNoFaceDetected:v66];

  v67 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 368)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusFaceTooClose:v67];

  v68 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 369)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusFaceTooFar:v68];

  v69 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 370)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusPoseOutOfRange:v69];

  v70 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 371)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusNoAttention:v70];

  v71 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 372)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusFaceOccluded:v71];

  v72 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 373)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusCameraObstructed:v72];

  v73 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 374)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusPartialOutOfFOV:v73];

  v74 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 375)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusPoseMarginal:v74];

  v75 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 376)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusNoseAndMouthOccluded:v75];

  v76 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 377)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusDepthCameraObstructed:v76];

  v77 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 378)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEngagementStatusFPDFailure:v77];

  if (*(v12 + 314) == 1)
  {
    v78 = [MEMORY[0x29EDBA0F8] stringWithCString:v12 + 315 encoding:1];
    [v10 setCameraHWParameters:v78];
  }

  [v10 setDeviceOrientation:a4];
  if (*(v12 + 349) == 1)
  {
    [v10 setFaceOrientation:*(v12 + 333)];
    [v10 setFacePitch:*(v12 + 337)];
    [v10 setFaceYaw:*(v12 + 341)];
    [v10 setFaceRoll:*(v12 + 345)];
    v79 = *(v12 + 333);
    BKLogCode();
  }

  if (v25 || *(v12 + 4))
  {
    [(PearlCoreAnalytics *)obj checkYogiError:*(v12 + 4)];
  }

  v80 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 360)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setGlassesDetected:v80];

  v81 = *(v12 + 362) + *(v12 + 361) + *(v12 + 363);
  v82 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v81];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEnrolledTemplateCountType0:v82];

  v83 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v12 + 361)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEnrolledTemplateCountType0NoGlasses:v83];

  v84 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v12 + 362)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEnrolledTemplateCountType0WithGlasses:v84];

  v85 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v12 + 363)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEnrolledTemplateCountType0Unknown:v85];

  LODWORD(v85) = *(v12 + 365) + *(v12 + 364) + *(v12 + 366);
  v86 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v85];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEnrolledTemplateCountType1:v86];

  v87 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v12 + 364)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEnrolledTemplateCountType1NoGlasses:v87];

  v88 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v12 + 365)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEnrolledTemplateCountType1WithGlasses:v88];

  v89 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v12 + 366)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEnrolledTemplateCountType1Unknown:v89];

  v90 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v85 + v81];
  [(PearlCoreAnalyticsMatchEvent *)v170 setEnrolledTemplateCountTotal:v90];

  v91 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 93)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setGmcRun:v91];

  v92 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v12 + 394)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setMatchTrigger:v92];

  v93 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 392)];
  [(PearlCoreAnalyticsMatchEvent *)v170 setUnsupportedOrientation:v93];

  if (obj->_isInternalBuild)
  {
    v94 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 393)];
    [(PearlCoreAnalyticsMatchEvent *)v170 setSecureFaceDetectBootArgsUsed:v94];
  }

  if (obj->_secureFaceDetectSupported && *(v12 + 394) == 1 && !*(v12 + 387) && (*(v12 + 393) & 1) == 0 && (*(v12 + 297) & 1) == 0)
  {
    v95 = [MEMORY[0x29EDB8DE8] array];
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
      v100 = *(v12 + 379);
      v101 = *(v12 + 383);
      v102 = *(v12 + 387);
      v103 = *(v12 + 391);
      v104 = *(v12 + 392);
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

    v105 = [(PearlCoreAnalyticsEvent *)obj->_secureFaceDetect getPrintableArray];
    [v95 addObjectsFromArray:v105];

    v106 = [(PearlCoreAnalyticsEvent *)obj->_previousSecureFaceDetect getPrintableArray];
    [v95 addObjectsFromArray:v106];

    v107 = [(PearlCoreAnalyticsEvent *)v170 getPrintableArray];
    [v95 addObjectsFromArray:v107];

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
    v110 = v95;
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

  v117 = *(v12 + 383);
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

  v119 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)secureFaceDetect sessionID];
  if ([v119 unsignedIntValue] == v117)
  {
  }

  else
  {
    v120 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect sessionID];
    v121 = [v120 unsignedIntValue] == v117;

    if (!v121)
    {
      if (*(v12 + 379) == 1)
      {
        [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
        goto LABEL_195;
      }

      if (*(v12 + 51) != -1)
      {
        [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
        goto LABEL_195;
      }

      if (*(v12 + 155) != -1)
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

      v122 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v117];
      [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect setSessionID:v122];
      goto LABEL_156;
    }
  }

  v122 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_secureFaceDetect sessionID];
  if ([v122 unsignedIntValue] != v117)
  {
LABEL_156:

    goto LABEL_157;
  }

  v123 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect sessionID];
  v124 = [v123 unsignedIntValue] == v117;

  if (!v124)
  {
    v125 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_secureFaceDetect sequenceStartDate];
    v126 = v125 == 0;

    if (v126)
    {
      [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
      goto LABEL_195;
    }

    if (*(v12 + 51) != -1)
    {
      [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
      goto LABEL_195;
    }

    if (*(v12 + 155) != -1)
    {
      [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
      goto LABEL_195;
    }

    [(PearlCoreAnalytics *)obj analyzeSecureFaceDetectStop];
    if (*(v12 + 49) == 255)
    {
      [v10 setHasFaceDetectResult:0];
    }
  }

LABEL_157:
  v131 = obj->_previousSecureFaceDetect;
  if (!v131)
  {
    [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
    goto LABEL_195;
  }

  v132 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)v131 sequenceStartDate];
  v133 = v132 == 0;

  if (v133)
  {
    [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
    goto LABEL_195;
  }

  v134 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect sequenceEndDate];
  v135 = v134 == 0;

  if (v135)
  {
    [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
    goto LABEL_195;
  }

  v136 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect sessionID];
  v137 = [v136 unsignedIntValue] == v117;

  if (!v137)
  {
    [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
    goto LABEL_195;
  }

  v138 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v12 + 379)];
  [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect setSecureFaceDetectState:v138];

  v139 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v12 + 387)];
  [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect setSecureFaceDetectReason:v139];

  v140 = [(BiometricKitCoreAnalyticsEvent *)obj->_previousSecureFaceDetect dictionaryRepresentation];
  [(PearlCoreAnalyticsMatchEvent *)v170 setSecureFaceDetectDict:v140];

LABEL_162:
  if ([v10 hasFaceDetectResult] && !objc_msgSend(v10, "faceDetectResult"))
  {
    v141 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v10, "overallTime") - objc_msgSend(v10, "faceDetectEndTime")}];
    [(PearlCoreAnalyticsMatchEvent *)v170 setOverallTimeFaceDetected:v141];
  }

  v142 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v10, "overallTime") / 0xAuLL}];
  [(PearlCoreAnalyticsMatchEvent *)v170 setOverallTimeBounded:v142];

  v143 = [(PearlCoreAnalyticsMatchEvent *)v170 overallTimeFaceDetected];

  if (v143)
  {
    v144 = MEMORY[0x29EDBA070];
    v145 = [(PearlCoreAnalyticsMatchEvent *)v170 overallTimeFaceDetected];
    v146 = [v144 numberWithUnsignedInt:{objc_msgSend(v145, "unsignedIntValue") / 0xAuLL}];
    [(PearlCoreAnalyticsMatchEvent *)v170 setOverallTimeFaceDetectedBounded:v146];
  }

  if ([v10 hasFaceDetectEndTime])
  {
    v147 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v10, "faceDetectEndTime") / 0xAuLL}];
    [(PearlCoreAnalyticsMatchEvent *)v170 setFaceDetectEndTimeBounded:v147];
  }

  objc_sync_exit(obj);

  if (*(v12 + 221))
  {
    [(PearlCoreAnalytics *)obj sendPearlAbcEvent:?];
  }

  [(BiometricKitCoreAnalyticsEvent *)v170 postEvent];
  v148 = *(v12 + 41);
  *buf = *(v12 + 4);
  *&buf[8] = v148;
  BYTE1(v189) = *(v12 + 49);
  v149 = *v12;
  HIDWORD(v189) = *(v12 + 59);
  LODWORD(v190[0]) = v149;
  *(&v189 + 4) = *v164;
  v150 = *v162;
  *(&v190[1] + 2) = *(v162 + 14);
  *(v190 + 4) = v150;
  *(&v190[2] + 10) = *(v12 + 310);
  *(&v190[2] + 2) = *(v12 + 302);
  *(&v190[4] + 7) = *(v12 + 375);
  *(&v190[3] + 15) = *(v12 + 367);
  v151 = *(v12 + 333);
  BYTE14(v190[3]) = *(v12 + 349);
  *(&v190[2] + 14) = v151;
  v152 = *(v12 + 379);
  *(&v190[5] + 2) = *(v12 + 386);
  *(&v190[4] + 11) = v152;
  if (*(v12 + 4) && v148 >= *(v12 + 5))
  {
    BYTE2(v189) = *(v12 + 4);
  }

  v153 = [MEMORY[0x29EDB8DA0] dataWithBytes:buf length:122];
  [(PearlCoreAnalytics *)obj sendFaceDetectEventAnalytics:v153 fromMatch:1 orientation:a4];
  v154 = *(v12 + 49);
  BKLogCode();
  v155 = *(v12 + 51);
  BKLogCode();
  v156 = *(v12 + 155);
  BKLogCode();
  *(v12 + 13);
  BKLogEvent();
  if ((*v12 & 0x80000000) == 0)
  {
    BKLogCode();
  }

  [(PearlCoreAnalyticsDailyUpdateEvent *)obj->_dailyEvent updateDailyMatchValues:v12];

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

- (void)sendFaceDetectEventAnalytics:(id)a3 fromMatch:(BOOL)a4 orientation:(unint64_t)a5
{
  v90 = *MEMORY[0x29EDCA608];
  v7 = a3;
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
    *&buf[4] = v7 != 0;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendFaceDetectEventAnalytics: fdMessage: %d\n", buf, 8u);
  }

  v87 = v7;
  v9 = objc_alloc_init(PearlCoreAnalyticsFaceDetectEvent);
  if (!v7)
  {
    [PearlCoreAnalytics sendFaceDetectEventAnalytics:buf fromMatch:? orientation:?];
LABEL_50:
    v82 = v88;
    v35 = *buf;
    goto LABEL_42;
  }

  if ([v7 length] <= 0x79)
  {
    [PearlCoreAnalytics sendFaceDetectEventAnalytics:buf fromMatch:? orientation:?];
    goto LABEL_50;
  }

  v10 = v7;
  v11 = [v7 bytes];
  v12 = self;
  objc_sync_enter(v12);
  v13 = *(v11 + 20);
  v14 = *(v11 + 24);
  v15 = *(v11 + 28);
  v16 = *(v11 + 8);
  v17 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:absoluteToMiliseconds()];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setOverallTime:v17];

  v18 = [MEMORY[0x29EDBA070] numberWithInt:*(v11 + 32)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setAmbientLux:v18];

  v19 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:a5];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setDeviceOrientation:v19];

  v20 = [MEMORY[0x29EDBA070] numberWithBool:*(v11 + 120)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setUnsupportedOrientation:v20];

  if (v12->_isInternalBuild)
  {
    v21 = [MEMORY[0x29EDBA070] numberWithBool:*(v11 + 121)];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setSecureFaceDetectBootArgsUsed:v21];
  }

  v22 = (v14 + v13 + v15);
  if (*(v11 + 115))
  {
    secureFaceDetect = v12->_secureFaceDetect;
    if (!secureFaceDetect)
    {
      [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
      goto LABEL_57;
    }

    v24 = *(v11 + 111);
    v25 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)secureFaceDetect sessionID];
    v26 = [v25 unsignedIntValue];
    v27 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)v12->_previousSecureFaceDetect sessionID];
    if (v26 == [v27 unsignedIntValue])
    {
      v28 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)v12->_previousSecureFaceDetect sessionID];
      v29 = [v28 unsignedIntValue] == v24;

      if (!v29)
      {
        if (*(v11 + 107) == 1)
        {
          [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
          goto LABEL_57;
        }

        v30 = objc_alloc_init(PearlCoreAnalyticsSecureFaceDetectEvent);
        previousSecureFaceDetect = v12->_previousSecureFaceDetect;
        v12->_previousSecureFaceDetect = v30;

        v32 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSince1970:0.0];
        [(PearlCoreAnalyticsSecureFaceDetectEvent *)v12->_previousSecureFaceDetect setSequenceStartDate:v32];

        v33 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSince1970:0.0];
        [(PearlCoreAnalyticsSecureFaceDetectEvent *)v12->_previousSecureFaceDetect setSequenceEndDate:v33];

        v34 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v24];
        [(PearlCoreAnalyticsSecureFaceDetectEvent *)v12->_previousSecureFaceDetect setSessionID:v34];

        goto LABEL_20;
      }
    }

    else
    {
    }

    v36 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)v12->_secureFaceDetect sessionID];
    v37 = [v36 unsignedIntValue] == v24;

    if (v37)
    {
      [(PearlCoreAnalytics *)v12 analyzeSecureFaceDetectStop];
    }

LABEL_20:
    v38 = v12->_previousSecureFaceDetect;
    if (v38)
    {
      v39 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)v38 sequenceStartDate];
      v40 = v39 == 0;

      if (v40)
      {
        [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
      }

      else
      {
        v41 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)v12->_previousSecureFaceDetect sequenceEndDate];
        v42 = v41 == 0;

        if (v42)
        {
          [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
        }

        else
        {
          v43 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)v12->_previousSecureFaceDetect sessionID];
          v44 = [v43 unsignedIntValue] == v24;

          if (v44)
          {
            v45 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v11 + 107)];
            [(PearlCoreAnalyticsSecureFaceDetectEvent *)v12->_previousSecureFaceDetect setSecureFaceDetectState:v45];

            v46 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v11 + 115)];
            [(PearlCoreAnalyticsSecureFaceDetectEvent *)v12->_previousSecureFaceDetect setSecureFaceDetectReason:v46];

            if (v22)
            {
              v47 = 0;
            }

            else
            {
              v47 = *(v11 + 17) == 255;
            }

            v48 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)v12->_previousSecureFaceDetect secureFaceDetectFaceDetected];
            v49 = [v48 BOOLValue];

            if ((v49 & 1) == 0)
            {
              [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectFailed:MEMORY[0x29EDB8EB0]];
            }

            v35 = [(BiometricKitCoreAnalyticsEvent *)v12->_previousSecureFaceDetect dictionaryRepresentation];
            [(PearlCoreAnalyticsFaceDetectEvent *)v9 setSecureFaceDetectDict:v35];
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
    objc_sync_exit(v12);

    v82 = 0;
    v35 = 0;
    goto LABEL_42;
  }

  v35 = 0;
LABEL_30:
  v50 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v11 + 17)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectResult:v50];

  v51 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v22];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectFrameCount:v51];

  v52 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v11 + 20)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectFrameFloodCount:v52];

  v53 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v11 + 24)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectFrameSparseCount:v53];

  v54 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v11 + 28)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectFrameDenseCount:v54];

  v55 = [MEMORY[0x29EDBA070] numberWithChar:*(v11 + 18)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setCameraErr:v55];

  if (*(v11 + 38) != -273)
  {
    v56 = [MEMORY[0x29EDBA070] numberWithInt:?];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setSensorTemperature:v56];
  }

  v57 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v11 + 42)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDistance:v57];

  v58 = [MEMORY[0x29EDBA070] numberWithBool:*(v11 + 37)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setHasOcclusion:v58];

  v59 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v11 + 44)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setCamRectX:v59];

  v60 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v11 + 46)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setCamRectY:v60];

  v61 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v11 + 48)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setCamRectW:v61];

  v62 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v11 + 50)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setCamRectH:v62];

  v63 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v11 + 52)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setPPMRequestedBudget:v63];

  v64 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v11 + 53)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setPPMAllocatedBudget:v64];

  if (*(v11 + 54) != -1)
  {
    v65 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:?];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setCamLux:v65];
  }

  v66 = [MEMORY[0x29EDBA070] numberWithBool:*(v11 + 66)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackNoFaceDetected:v66];

  v67 = [MEMORY[0x29EDBA070] numberWithBool:*(v11 + 67)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackFaceTooClose:v67];

  v68 = [MEMORY[0x29EDBA070] numberWithBool:*(v11 + 68)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackFaceTooFar:v68];

  v69 = [MEMORY[0x29EDBA070] numberWithBool:*(v11 + 69)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackPoseOutOfRange:v69];

  v70 = [MEMORY[0x29EDBA070] numberWithBool:*(v11 + 70)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackNoAttention:v70];

  v71 = [MEMORY[0x29EDBA070] numberWithBool:*(v11 + 71)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackFaceOccluded:v71];

  v72 = [MEMORY[0x29EDBA070] numberWithBool:*(v11 + 72)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackCameraObstructed:v72];

  v73 = [MEMORY[0x29EDBA070] numberWithBool:*(v11 + 73)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackPartialOutOfFOV:v73];

  v74 = [MEMORY[0x29EDBA070] numberWithBool:*(v11 + 74)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackPoseMarginal:v74];

  v75 = [MEMORY[0x29EDBA070] numberWithBool:*(v11 + 75)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackNoseAndMouthOccluded:v75];

  v76 = [MEMORY[0x29EDBA070] numberWithBool:*(v11 + 17) > 1u];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectFailed:v76];

  v77 = [MEMORY[0x29EDBA070] numberWithBool:(*(v11 + 17) < 0x13uLL) & (0x41040u >> *(v11 + 17))];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setAttentionDetectFailed:v77];

  if (*(v11 + 94) == 1)
  {
    v78 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v11 + 78)];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceOrientation:v78];

    v79 = [MEMORY[0x29EDBA070] numberWithInt:*(v11 + 82)];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFacePitch:v79];

    v80 = [MEMORY[0x29EDBA070] numberWithInt:*(v11 + 86)];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceYaw:v80];

    v81 = [MEMORY[0x29EDBA070] numberWithInt:*(v11 + 90)];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceRoll:v81];
  }

LABEL_36:
  objc_sync_exit(v12);

  v82 = [(BiometricKitCoreAnalyticsEvent *)v9 dictionaryRepresentationArchiving:0];
  if (![(BiometricKitCoreAnalyticsEvent *)v9 postEvent])
  {
    [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
  }

  if (!a4)
  {
    v83 = [(BiometricKitCoreAnalyticsEvent *)[PearlCoreAnalyticsFaceDetectEvent alloc] initWithName:@"com.apple.biometrickit.pearl.attentionCheck" dictionary:v82];
    [(PearlCoreAnalyticsFaceDetectEvent *)v83 setSecureFaceDetectDict:v35];
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

- (void)sendEnrollEventAnalytics:(id)a3 orientation:(unint64_t)a4
{
  v30 = *MEMORY[0x29EDCA608];
  v6 = a3;
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
    v29[1] = v6 != 0;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendEnrollEventAnalytics: enrollMessage: %d\n", v29, 8u);
  }

  v9 = objc_alloc_init(PearlCoreAnalyticsEnrollEvent);
  v10 = [(PearlCoreAnalyticsEvent *)v9 getAWDMetric];
  if (v6)
  {
    if ([v6 length] <= 0xF9)
    {
      [PearlCoreAnalytics sendEnrollEventAnalytics:orientation:];
    }

    else
    {
      v11 = v6;
      v12 = [v6 bytes];
      v13 = self;
      objc_sync_enter(v13);
      [v10 setOverallResult:*v12];
      v14 = *(v12 + 10);
      [v10 setOverallTime:absoluteToMiliseconds()];
      [v10 setDoubleErrorCountsOK:*(v12 + 5)];
      [v10 setDoubleErrorCountsMoreFrames:*(v12 + 6)];
      [v10 setDoubleErrorCountsNoFace:*(v12 + 7)];
      [v10 setDoubleErrorCountsFaceOutOfFOV:*(v12 + 9)];
      [v10 setDoubleErrorCountsMultipleFaces:*(v12 + 8)];
      [v10 setDoubleErrorCountsFaceTooClose:*(v12 + 10)];
      [v10 setDoubleErrorCountsFaceTooFar:*(v12 + 11)];
      [v10 setDoubleErrorCountsPoseOutRange:*(v12 + 12)];
      [v10 setDoubleErrorCountsBinCovered:*(v12 + 13)];
      [v10 setDoubleErrorCountsOccluded:*(v12 + 14)];
      [v10 setDoubleErrorCountsUpperFaceOccluded:*(v12 + 15)];
      [v10 setDoubleErrorCountsLowerFaceOccluded:*(v12 + 16)];
      [v10 setFrameErrorCountsOK:*(v12 + 17)];
      [v10 setFrameErrorCountsMoreFrames:*(v12 + 18)];
      [v10 setFrameErrorCountsNoFace:*(v12 + 19)];
      [v10 setFrameErrorCountsFaceOutOfFOV:*(v12 + 21)];
      [v10 setFrameErrorCountsMultipleFaces:*(v12 + 20)];
      [v10 setFrameErrorCountsFaceTooClose:*(v12 + 22)];
      [v10 setFrameErrorCountsFaceTooFar:*(v12 + 23)];
      [v10 setFrameErrorCountsPoseOutRange:*(v12 + 24)];
      [v10 setFrameErrorCountsBinCovered:*(v12 + 25)];
      [v10 setFrameErrorCountsOccluded:*(v12 + 26)];
      [v10 setFrameErrorCountsUpperFaceOccluded:*(v12 + 27)];
      [v10 setFrameErrorCountsLowerFaceOccluded:*(v12 + 28)];
      [v10 setFrameCountBin00:*(v12 + 37)];
      [v10 setFrameCountBin01:*(v12 + 38)];
      [v10 setFrameCountBin02:*(v12 + 39)];
      [v10 setFrameCountBin10:*(v12 + 40)];
      [v10 setFrameCountBin11:*(v12 + 41)];
      [v10 setFrameCountBin12:*(v12 + 42)];
      [v10 setFrameCountBin20:*(v12 + 43)];
      [v10 setFrameCountBin21:*(v12 + 44)];
      [v10 setFrameCountBin22:*(v12 + 45)];
      [v10 setBioCaptureSequenceCount:*(v12 + 29)];
      [v10 setAmbientLux:*(v12 + 30)];
      [v10 setFeatureGenerationError:v12[184]];
      [v10 setEnrollFeatureVectorError:v12[185]];
      [v10 setCameraErr:v12[19]];
      [v10 setEnrollResult:v12[1]];
      [v10 setFaceDistance:*(v12 + 103)];
      [v10 setSensorTemperature:*(v12 + 202)];
      if (*(v12 + 202) == -273)
      {
        [v10 setHasSensorTemperature:0];
      }

      [v10 setEnrollType:v12[248]];
      [v10 setNoseAndMouthOccluded:v12[239]];
      if (*(v12 + 218) != -1)
      {
        v15 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:?];
        [(PearlCoreAnalyticsEnrollEvent *)v9 setCamLux:v15];
      }

      v16 = [(PearlCoreAnalytics *)v13 isBacklitSun:v12 + 200];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setBacklitSun:v16];

      [v10 setEnrolledTemplateCountType0:0];
      [v10 setEnrolledTemplateCountType0:{objc_msgSend(v10, "enrolledTemplateCountType0") + v12[242]}];
      [v10 setEnrolledTemplateCountType0:{objc_msgSend(v10, "enrolledTemplateCountType0") + v12[243]}];
      [v10 setEnrolledTemplateCountType0:{objc_msgSend(v10, "enrolledTemplateCountType0") + v12[244]}];
      v17 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:v12[242]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setEnrolledTemplateCountType0NoGlasses:v17];

      v18 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:v12[243]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setEnrolledTemplateCountType0WithGlasses:v18];

      v19 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:v12[244]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setEnrolledTemplateCountType0Unknown:v19];

      [v10 setEnrolledTemplateCountType1:0];
      [v10 setEnrolledTemplateCountType1:{objc_msgSend(v10, "enrolledTemplateCountType1") + v12[245]}];
      [v10 setEnrolledTemplateCountType1:{objc_msgSend(v10, "enrolledTemplateCountType1") + v12[246]}];
      [v10 setEnrolledTemplateCountType1:{objc_msgSend(v10, "enrolledTemplateCountType1") + v12[247]}];
      v20 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:v12[245]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setEnrolledTemplateCountType1NoGlasses:v20];

      v21 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:v12[246]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setEnrolledTemplateCountType1WithGlasses:v21];

      v22 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:v12[247]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setEnrolledTemplateCountType1Unknown:v22];

      [v10 setEnrolledTemplateCountTotal:{objc_msgSend(v10, "enrolledTemplateCountType1") + objc_msgSend(v10, "enrolledTemplateCountType0")}];
      [v10 setEnrolledIdentityCount:{objc_msgSend(v10, "enrolledTemplateCountType0")}];
      if (v12[127])
      {
        v24 = *(v12 + 16);
        v23 = *(v12 + 17);
      }

      else
      {
        v24 = -1;
        v23 = -1;
      }

      [v10 setRfcSetIndex:v24];
      [v10 setRfcFrameIndex:v23];
      if (v24 == -1)
      {
        [v10 setHasRfcSetIndex:0];
      }

      if (v23 == -1)
      {
        [v10 setHasRfcFrameIndex:0];
      }

      v25 = !*(v12 + 17) && *(v12 + 19) && *(v12 + 103) == 0;
      [v10 setFailedNoFace:v25];
      [v10 setDeviceOrientation:a4];
      if (*(v12 + 36))
      {
        [(PearlCoreAnalytics *)v13 sendPearlAbcEvent:?];
      }

      [(PearlCoreAnalytics *)v13 checkYogiError:v12[19]];
      v26 = [MEMORY[0x29EDBA070] numberWithBool:v12[249]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setGlassesDetected:v26];

      objc_sync_exit(v13);
      if (![(BiometricKitCoreAnalyticsEvent *)v9 postEvent])
      {
        [PearlCoreAnalytics sendEnrollEventAnalytics:orientation:];
      }

      [(BiometricKitCoreAnalyticsEvent *)v13->_dailyEvent persistData];
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

- (void)sendPasscodeChallengeEventAnalytics:(id)a3 orientation:(unint64_t)a4
{
  v19 = *MEMORY[0x29EDCA608];
  v6 = a3;
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
    v18[1] = v6 != 0;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendPasscodeChallengeEventAnalytics: passChallengeMessage: %d\n", v18, 8u);
  }

  v9 = objc_alloc_init(PearlCoreAnalyticsPasscodeChallengeEvent);
  v10 = [(PearlCoreAnalyticsEvent *)v9 getAWDMetric];
  if (v6)
  {
    if ([v6 length] <= 0x3D)
    {
      [PearlCoreAnalytics sendPasscodeChallengeEventAnalytics:orientation:];
    }

    else
    {
      v11 = v6;
      v12 = [v6 bytes];
      v13 = self;
      objc_sync_enter(v13);
      v14 = *(v12 + 2);
      [v10 setOverallTime:absoluteToMiliseconds()];
      [v10 setPasscodeChallengeResult:*(v12 + 26)];
      [v10 setPasscodeChallengeTemplateUpdated:*(v12 + 28) != 0];
      [v10 setAmbientLux:*v12];
      [v10 setSensorTemperature:v12[8]];
      if (v12[8] == -273)
      {
        [v10 setHasSensorTemperature:0];
      }

      [v10 setFaceDistance:*(v12 + 18)];
      [v10 setAttentionScore:v12[1]];
      [v10 setHasOcclusion:*(v12 + 31)];
      [v10 setPpmRequestedBudget:*(v12 + 46)];
      [v10 setPpmAllocatedBudget:*(v12 + 47)];
      [v10 setMatchIdentityCount:*(v12 + 29)];
      [v10 setDeviceOrientation:a4];
      [v10 setMatchType:*(v12 + 60)];
      v15 = [MEMORY[0x29EDBA070] numberWithBool:*(v12 + 61)];
      [(PearlCoreAnalyticsPasscodeChallengeEvent *)v9 setGlassesDetected:v15];

      objc_sync_exit(v13);
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

- (void)sendBioLockoutEventAnalytics:(id)a3
{
  v14 = *MEMORY[0x29EDCA608];
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
    v13[0] = 67109120;
    v13[1] = v4 != 0;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendPasscodeChallengeEventAnalytics: sendBioLockoutEventAnalytics: %d\n", v13, 8u);
  }

  v7 = objc_alloc_init(AWDBiometricKitBioLockoutEvent);
  if (v4)
  {
    if ([v4 length])
    {
      v8 = v4;
      v9 = [v4 bytes];
      if (v9)
      {
        v10 = self;
        objc_sync_enter(v10);
        [(AWDBiometricKitBioLockoutEvent *)v7 setBioLockoutReason:*v9];
        objc_sync_exit(v10);

        if (![(PearlCoreAnalytics *)v10 postSimpleCoreAnalyticsEvent:@"com.apple.biometrickit.pearl.bioLockoutEvent" fromAWDMetric:v7])
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

- (void)analyzeSecureFrameMeta:(id)a3 faceDetected:(BOOL)a4
{
  v63 = a4;
  v81 = *MEMORY[0x29EDCA608];
  v65 = a3;
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

  v8 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect sequenceStartDate];
  v9 = v8 == 0;

  if (v9)
  {
    [PearlCoreAnalytics analyzeSecureFrameMeta:faceDetected:];
    goto LABEL_83;
  }

  v10 = v65;
  if (!v65)
  {
    [PearlCoreAnalytics analyzeSecureFrameMeta:faceDetected:];
    goto LABEL_83;
  }

  v64 = self;
  objc_sync_enter(v64);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v65;
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
      v14 = [v13 type];
      v15 = v14 == v72;

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
        v16 = [v13 type];
        v17 = v16 == v71;

        if (v17)
        {
          v23 = v13;
          v24 = [v23 hasPayingAttention];
          if (v24)
          {
            v5 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v23, "payingAttention")}];
            v25 = v5;
          }

          else
          {
            v25 = 0;
          }

          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectPayingAttention:v25];
          if (v24)
          {
          }

          v26 = [v23 hasOccludedFeatures];
          if (v26)
          {
            v10 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v23, "occludedFeatures")}];
            v27 = v10;
          }

          else
          {
            v27 = 0;
          }

          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectOccludedFeatures:v27];
          if (v26)
          {
          }

          v28 = [v23 hasPitchAngle];
          if (v28)
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
          if (v28)
          {
          }

          v32 = [v23 hasYawAngle];
          if (v32)
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
          if (v32)
          {
          }

          v36 = [v23 hasRollAngle];
          if (v36)
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
          if (v36)
          {
          }

          v40 = [v23 hasDistance];
          if (v40)
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
          if (v40)
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

          v56 = [v23 hasOrientation];
          v57 = v56;
          if (v56)
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
          v18 = [v13 type];
          v19 = v18 == v69;

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
  v60 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect secureFaceDetectFrameCount];
  v61 = [v59 numberWithUnsignedInt:{objc_msgSend(v60, "unsignedIntValue") + 1}];
  [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectFrameCount:v61];

  if (v63)
  {
    [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectFaceDetected:MEMORY[0x29EDB8EB0]];
  }

  objc_sync_exit(v64);

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

- (void)sendPearlAbcEvent:(unint64_t)a3
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
      v7 = a3;
      _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_ERROR, "Failed to send auto bug capture event: %llu\n", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
}

- (int)sequenceTypeToCaptureMethod:(unsigned __int8)a3 forSequence:(unsigned __int8)a4
{
  if (a4 == 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  if (a3 == 3)
  {
    return v4;
  }

  else
  {
    return a3 == 2;
  }
}

- (void)checkYogiError:(int)a3
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
    v8 = [(PearlCoreAnalyticsDailyUpdateEvent *)dailyEvent yogiErrorDate];
    v12[0] = 67109378;
    v12[1] = a3;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics checkYogiError cameraErr: %d _yogiErrorDate: %@\n", v12, 0x12u);
  }

  v9 = [(PearlCoreAnalyticsDailyUpdateEvent *)self->_dailyEvent yogiErrorDate];

  if (a3 == 1)
  {
    if (!v9)
    {
      v10 = [MEMORY[0x29EDB8DB0] date];
      [(PearlCoreAnalyticsDailyUpdateEvent *)self->_dailyEvent setYogiErrorDate:v10];

      [(BiometricKitCoreAnalyticsEvent *)self->_dailyEvent persistData];
    }
  }

  else if (v9)
  {
    [(PearlCoreAnalyticsDailyUpdateEvent *)self->_dailyEvent setYogiErrorDate:0];
  }

  v11 = *MEMORY[0x29EDCA608];
}

- (BOOL)postSimpleCoreAnalyticsEvent:(id)a3 fromAWDMetric:(id)a4
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = a4;
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
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics postSimpleCoreAnalyticsEvent eventName: %@ awdMetric: %p\n", &v12, 0x16u);
  }

  v8 = [[PearlCoreAnalyticsEvent alloc] initWithName:v5 awdMetric:v6];
  v9 = [(BiometricKitCoreAnalyticsEvent *)v8 postEvent];

  v10 = *MEMORY[0x29EDCA608];
  return v9;
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

- (id)isBacklitSun:(id *)a3
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

  if (a3)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(&a3->var11 + 2);
      v6 = *(&a3->var10 + 2);
      v19[0] = 67109376;
      v19[1] = v5;
      v20 = 1024;
      v21 = v6;
      _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics isBacklitSun frameInfo->ambientLux: %u frameInfo->floodExposure: %u\n", v19, 0xEu);
    }

    v7 = *(&a3->var11 + 2);
    if (v7 != -1)
    {
      v8 = *(&a3->var10 + 2);
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

  v10 = *a1;
  *a2 = *a1;
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