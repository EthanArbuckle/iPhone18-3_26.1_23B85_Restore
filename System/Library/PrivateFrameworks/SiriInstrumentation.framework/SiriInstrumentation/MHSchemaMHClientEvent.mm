@interface MHSchemaMHClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHASRAudioConfigureStarted)asrAudioConfigureStarted;
- (MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext)acousticFalseTriggerMitigationEvaluationContext;
- (MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried)adaptiveSiriVolumeTTSVolumeQueried;
- (MHSchemaMHAdaptiveSiriVolumeUserIntentDetected)adaptiveSiriVolumeUserIntentDetected;
- (MHSchemaMHApplicationPlaybackAttempted)applicationPlaybackAttempted;
- (MHSchemaMHAssistantDaemonAudioBluetoothInfo)assistantDaemonAudioBluetoothInfo;
- (MHSchemaMHAssistantDaemonAudioConfigureContext)assistantDaemonAudioConfigureContext;
- (MHSchemaMHAssistantDaemonAudioFetchRouteContext)assistantDaemonAudioFetchRouteContext;
- (MHSchemaMHAssistantDaemonAudioInitContext)assistantDaemonAudioInitContext;
- (MHSchemaMHAssistantDaemonAudioLateBufferDetected)assistantDaemonAudioLateBufferDetected;
- (MHSchemaMHAssistantDaemonAudioPrepareContext)assistantDaemonAudioPrepareContext;
- (MHSchemaMHAssistantDaemonAudioPrewarmContext)assistantDaemonAudioPrewarmContext;
- (MHSchemaMHAssistantDaemonAudioRecordingContext)assistantDaemonAudioRecordingContext;
- (MHSchemaMHAssistantDaemonAudioRecordingFailed)audioRecordingFailed;
- (MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority)assistantDaemonAudioRecordingFailureInsufficientPriority;
- (MHSchemaMHAssistantDaemonAudioRecordingFirstBufferContext)assistantDaemonAudioRecordingFirstBufferContext;
- (MHSchemaMHAssistantDaemonAudioRecordingInterruptionContext)assistantDaemonAudioRecordingInterruptionContext;
- (MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1)assistantDaemonAudioRecordingInterruptionStartedTier1;
- (MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext)assistantDaemonAudioRecordingLastBufferContext;
- (MHSchemaMHAssistantDaemonAudioRecordingMissedBufferDetected)assistantDaemonAudioRecordingMissedBufferDetected;
- (MHSchemaMHAssistantDaemonAudioSessionSetActiveContext)assistantDaemonAudioSessionSetActiveContext;
- (MHSchemaMHAssistantDaemonAudioSessionSetInactiveContext)assistantDaemonAudioSessionSetInactiveContext;
- (MHSchemaMHAssistantDaemonAudioStartRecordingContext)assistantDaemonAudioStartRecordingContext;
- (MHSchemaMHAssistantDaemonAudioStopRecordingContext)assistantDaemonAudioStopRecordingContext;
- (MHSchemaMHAssistantDaemonAudioTwoShotTransitionContext)assistantDaemonAudioTwoShotTransitionContext;
- (MHSchemaMHAttendingContext)attendingContext;
- (MHSchemaMHAudioDucked)audioDucked;
- (MHSchemaMHCarplayLanguageMismatch)carPlayLangaugeMismatched;
- (MHSchemaMHClientEvent)initWithDictionary:(id)dictionary;
- (MHSchemaMHClientEvent)initWithJSON:(id)n;
- (MHSchemaMHCoreSpeechPreprocessorCompleted)coreSpeechPreprocessorCompleted;
- (MHSchemaMHCrownPressed)crownPressed;
- (MHSchemaMHDarwinConnectedDeviceWakeContext)darwinConnectedDeviceWakeContext;
- (MHSchemaMHEndpointDelayContext)endpointDelayContext;
- (MHSchemaMHEndpointDetected)endpointDetected;
- (MHSchemaMHEndpointLatencyInfoReported)endpointLatencyInfoReported;
- (MHSchemaMHEndpointerAccessibleContext)endpointerAccessibleContext;
- (MHSchemaMHEndpointerUsed)endpointerUsed;
- (MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext)latticeFalseTriggerMitigationEvaluationContext;
- (MHSchemaMHMitigationDecisionRecommended)finalMitigationRecommendation;
- (MHSchemaMHOdldFalseTriggerMitigated)odldFalseTriggerMitigated;
- (MHSchemaMHOnDeviceEndpointerContext)onDeviceEndpointerContext;
- (MHSchemaMHRTSFalseRejectDetected)rtsFalseRejectDetected;
- (MHSchemaMHRaiseToSpeakFirstPassPolicyTriggered)rtsFirstPassPolicyTriggered;
- (MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade)rtsSecondPassPolicyDecisionMade;
- (MHSchemaMHRaiseToSpeakTriggered)rtsTriggered;
- (MHSchemaMHServerEndpointerContext)serverEndpointerContext;
- (MHSchemaMHSiriDirectedSpeechDetectionFailed)siriDirectedSpeechDetectionFailed;
- (MHSchemaMHSiriLaunchRequestContext)siriLaunchRequestContext;
- (MHSchemaMHSpeakerFalseTriggerMitigated)speakerFalseTriggerMitigated;
- (MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1)speakerIdEnrollmentDataReportedTier1;
- (MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1)speakerIdModelOneSessionReportedTier1;
- (MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1)speakerIdModelSelectedClockSessionInfoTier1;
- (MHSchemaMHSpeechDetectorContext)speechDetectorContext;
- (MHSchemaMHSpeechStopDetected)speechStopDetected;
- (MHSchemaMHStoppedListeningForSpeechContinuation)stoppedListeningForSpeechContinuation;
- (MHSchemaMHTRPCreated)trpCreated;
- (MHSchemaMHUnintendedResponseSuppressionEvaluationContext)unintendedResponseSuppressionExecutionContext;
- (MHSchemaMHUserEngagementFalseTriggerMitigationEvaluationContext)userEngagementModelContext;
- (MHSchemaMHUserSpeakingContext)userSpeakingContext;
- (MHSchemaMHVoiceAdBlockerContext)adblockerContext;
- (MHSchemaMHVoiceProfileICloudSyncFinished)voiceProfileICloudSyncFinished;
- (MHSchemaMHVoiceProfileOnboarded)voiceProfileOnboarded;
- (MHSchemaMHVoiceTriggerContext)voiceTriggerContext;
- (MHSchemaMHVoiceTriggerRePrompted)voiceTriggerRePrompted;
- (MHSchemaMHVoiceTriggerRejectDetected)voiceTriggerRejectDetected;
- (MHSchemaMHVoiceTriggerTwoShotDetected)voiceTriggerTwoShotDetected;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteAcousticFalseTriggerMitigationEvaluationContext;
- (void)deleteAdaptiveSiriVolumeTTSVolumeQueried;
- (void)deleteAdaptiveSiriVolumeUserIntentDetected;
- (void)deleteAdblockerContext;
- (void)deleteApplicationPlaybackAttempted;
- (void)deleteAsrAudioConfigureStarted;
- (void)deleteAssistantDaemonAudioBluetoothInfo;
- (void)deleteAssistantDaemonAudioConfigureContext;
- (void)deleteAssistantDaemonAudioFetchRouteContext;
- (void)deleteAssistantDaemonAudioInitContext;
- (void)deleteAssistantDaemonAudioLateBufferDetected;
- (void)deleteAssistantDaemonAudioPrepareContext;
- (void)deleteAssistantDaemonAudioPrewarmContext;
- (void)deleteAssistantDaemonAudioRecordingContext;
- (void)deleteAssistantDaemonAudioRecordingFailureInsufficientPriority;
- (void)deleteAssistantDaemonAudioRecordingFirstBufferContext;
- (void)deleteAssistantDaemonAudioRecordingInterruptionContext;
- (void)deleteAssistantDaemonAudioRecordingInterruptionStartedTier1;
- (void)deleteAssistantDaemonAudioRecordingLastBufferContext;
- (void)deleteAssistantDaemonAudioRecordingMissedBufferDetected;
- (void)deleteAssistantDaemonAudioSessionSetActiveContext;
- (void)deleteAssistantDaemonAudioSessionSetInactiveContext;
- (void)deleteAssistantDaemonAudioStartRecordingContext;
- (void)deleteAssistantDaemonAudioStopRecordingContext;
- (void)deleteAssistantDaemonAudioTwoShotTransitionContext;
- (void)deleteAttendingContext;
- (void)deleteAudioDucked;
- (void)deleteAudioRecordingFailed;
- (void)deleteCarPlayLangaugeMismatched;
- (void)deleteCoreSpeechPreprocessorCompleted;
- (void)deleteCrownPressed;
- (void)deleteDarwinConnectedDeviceWakeContext;
- (void)deleteEndpointDelayContext;
- (void)deleteEndpointDetected;
- (void)deleteEndpointLatencyInfoReported;
- (void)deleteEndpointerAccessibleContext;
- (void)deleteEndpointerUsed;
- (void)deleteFinalMitigationRecommendation;
- (void)deleteLatticeFalseTriggerMitigationEvaluationContext;
- (void)deleteOdldFalseTriggerMitigated;
- (void)deleteOnDeviceEndpointerContext;
- (void)deleteRtsFalseRejectDetected;
- (void)deleteRtsFirstPassPolicyTriggered;
- (void)deleteRtsSecondPassPolicyDecisionMade;
- (void)deleteRtsTriggered;
- (void)deleteServerEndpointerContext;
- (void)deleteSiriDirectedSpeechDetectionFailed;
- (void)deleteSiriLaunchRequestContext;
- (void)deleteSpeakerFalseTriggerMitigated;
- (void)deleteSpeakerIdEnrollmentDataReportedTier1;
- (void)deleteSpeakerIdModelOneSessionReportedTier1;
- (void)deleteSpeakerIdModelSelectedClockSessionInfoTier1;
- (void)deleteSpeechDetectorContext;
- (void)deleteSpeechStopDetected;
- (void)deleteStoppedListeningForSpeechContinuation;
- (void)deleteTrpCreated;
- (void)deleteUnintendedResponseSuppressionExecutionContext;
- (void)deleteUserEngagementModelContext;
- (void)deleteUserSpeakingContext;
- (void)deleteVoiceProfileICloudSyncFinished;
- (void)deleteVoiceProfileOnboarded;
- (void)deleteVoiceTriggerContext;
- (void)deleteVoiceTriggerRePrompted;
- (void)deleteVoiceTriggerRejectDetected;
- (void)deleteVoiceTriggerTwoShotDetected;
- (void)setAcousticFalseTriggerMitigationEvaluationContext:(id)context;
- (void)setAdaptiveSiriVolumeTTSVolumeQueried:(id)queried;
- (void)setAdaptiveSiriVolumeUserIntentDetected:(id)detected;
- (void)setAdblockerContext:(id)context;
- (void)setApplicationPlaybackAttempted:(id)attempted;
- (void)setAsrAudioConfigureStarted:(id)started;
- (void)setAssistantDaemonAudioBluetoothInfo:(id)info;
- (void)setAssistantDaemonAudioConfigureContext:(id)context;
- (void)setAssistantDaemonAudioFetchRouteContext:(id)context;
- (void)setAssistantDaemonAudioInitContext:(id)context;
- (void)setAssistantDaemonAudioLateBufferDetected:(id)detected;
- (void)setAssistantDaemonAudioPrepareContext:(id)context;
- (void)setAssistantDaemonAudioPrewarmContext:(id)context;
- (void)setAssistantDaemonAudioRecordingContext:(id)context;
- (void)setAssistantDaemonAudioRecordingFailureInsufficientPriority:(id)priority;
- (void)setAssistantDaemonAudioRecordingFirstBufferContext:(id)context;
- (void)setAssistantDaemonAudioRecordingInterruptionContext:(id)context;
- (void)setAssistantDaemonAudioRecordingInterruptionStartedTier1:(id)tier1;
- (void)setAssistantDaemonAudioRecordingLastBufferContext:(id)context;
- (void)setAssistantDaemonAudioRecordingMissedBufferDetected:(id)detected;
- (void)setAssistantDaemonAudioSessionSetActiveContext:(id)context;
- (void)setAssistantDaemonAudioSessionSetInactiveContext:(id)context;
- (void)setAssistantDaemonAudioStartRecordingContext:(id)context;
- (void)setAssistantDaemonAudioStopRecordingContext:(id)context;
- (void)setAssistantDaemonAudioTwoShotTransitionContext:(id)context;
- (void)setAttendingContext:(id)context;
- (void)setAudioDucked:(id)ducked;
- (void)setAudioRecordingFailed:(id)failed;
- (void)setCarPlayLangaugeMismatched:(id)mismatched;
- (void)setCoreSpeechPreprocessorCompleted:(id)completed;
- (void)setCrownPressed:(id)pressed;
- (void)setDarwinConnectedDeviceWakeContext:(id)context;
- (void)setEndpointDelayContext:(id)context;
- (void)setEndpointDetected:(id)detected;
- (void)setEndpointLatencyInfoReported:(id)reported;
- (void)setEndpointerAccessibleContext:(id)context;
- (void)setEndpointerUsed:(id)used;
- (void)setFinalMitigationRecommendation:(id)recommendation;
- (void)setLatticeFalseTriggerMitigationEvaluationContext:(id)context;
- (void)setOdldFalseTriggerMitigated:(id)mitigated;
- (void)setOnDeviceEndpointerContext:(id)context;
- (void)setRtsFalseRejectDetected:(id)detected;
- (void)setRtsFirstPassPolicyTriggered:(id)triggered;
- (void)setRtsSecondPassPolicyDecisionMade:(id)made;
- (void)setRtsTriggered:(id)triggered;
- (void)setServerEndpointerContext:(id)context;
- (void)setSiriDirectedSpeechDetectionFailed:(id)failed;
- (void)setSiriLaunchRequestContext:(id)context;
- (void)setSpeakerFalseTriggerMitigated:(id)mitigated;
- (void)setSpeakerIdEnrollmentDataReportedTier1:(id)tier1;
- (void)setSpeakerIdModelOneSessionReportedTier1:(id)tier1;
- (void)setSpeakerIdModelSelectedClockSessionInfoTier1:(id)tier1;
- (void)setSpeechDetectorContext:(id)context;
- (void)setSpeechStopDetected:(id)detected;
- (void)setStoppedListeningForSpeechContinuation:(id)continuation;
- (void)setTrpCreated:(id)created;
- (void)setUnintendedResponseSuppressionExecutionContext:(id)context;
- (void)setUserEngagementModelContext:(id)context;
- (void)setUserSpeakingContext:(id)context;
- (void)setVoiceProfileICloudSyncFinished:(id)finished;
- (void)setVoiceProfileOnboarded:(id)onboarded;
- (void)setVoiceTriggerContext:(id)context;
- (void)setVoiceTriggerRePrompted:(id)prompted;
- (void)setVoiceTriggerRejectDetected:(id)detected;
- (void)setVoiceTriggerTwoShotDetected:(id)detected;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHClientEvent

- (MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext)acousticFalseTriggerMitigationEvaluationContext
{
  if (self->_whichEvent_Type == 100)
  {
    v3 = self->_acousticFalseTriggerMitigationEvaluationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext)latticeFalseTriggerMitigationEvaluationContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_latticeFalseTriggerMitigationEvaluationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHUnintendedResponseSuppressionEvaluationContext)unintendedResponseSuppressionExecutionContext
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_unintendedResponseSuppressionExecutionContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHCoreSpeechPreprocessorCompleted)coreSpeechPreprocessorCompleted
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_coreSpeechPreprocessorCompleted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHASRAudioConfigureStarted)asrAudioConfigureStarted
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_asrAudioConfigureStarted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAssistantDaemonAudioConfigureContext)assistantDaemonAudioConfigureContext
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_assistantDaemonAudioConfigureContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAssistantDaemonAudioPrewarmContext)assistantDaemonAudioPrewarmContext
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_assistantDaemonAudioPrewarmContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAssistantDaemonAudioStopRecordingContext)assistantDaemonAudioStopRecordingContext
{
  if (self->_whichEvent_Type == 110)
  {
    v3 = self->_assistantDaemonAudioStopRecordingContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAssistantDaemonAudioSessionSetActiveContext)assistantDaemonAudioSessionSetActiveContext
{
  if (self->_whichEvent_Type == 111)
  {
    v3 = self->_assistantDaemonAudioSessionSetActiveContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAssistantDaemonAudioSessionSetInactiveContext)assistantDaemonAudioSessionSetInactiveContext
{
  if (self->_whichEvent_Type == 112)
  {
    v3 = self->_assistantDaemonAudioSessionSetInactiveContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAssistantDaemonAudioRecordingContext)assistantDaemonAudioRecordingContext
{
  if (self->_whichEvent_Type == 114)
  {
    v3 = self->_assistantDaemonAudioRecordingContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAssistantDaemonAudioRecordingFirstBufferContext)assistantDaemonAudioRecordingFirstBufferContext
{
  if (self->_whichEvent_Type == 117)
  {
    v3 = self->_assistantDaemonAudioRecordingFirstBufferContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext)assistantDaemonAudioRecordingLastBufferContext
{
  if (self->_whichEvent_Type == 118)
  {
    v3 = self->_assistantDaemonAudioRecordingLastBufferContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAssistantDaemonAudioRecordingInterruptionContext)assistantDaemonAudioRecordingInterruptionContext
{
  if (self->_whichEvent_Type == 119)
  {
    v3 = self->_assistantDaemonAudioRecordingInterruptionContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1)assistantDaemonAudioRecordingInterruptionStartedTier1
{
  if (self->_whichEvent_Type == 120)
  {
    v3 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAssistantDaemonAudioBluetoothInfo)assistantDaemonAudioBluetoothInfo
{
  if (self->_whichEvent_Type == 121)
  {
    v3 = self->_assistantDaemonAudioBluetoothInfo;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHVoiceTriggerTwoShotDetected)voiceTriggerTwoShotDetected
{
  if (self->_whichEvent_Type == 122)
  {
    v3 = self->_voiceTriggerTwoShotDetected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAssistantDaemonAudioTwoShotTransitionContext)assistantDaemonAudioTwoShotTransitionContext
{
  if (self->_whichEvent_Type == 123)
  {
    v3 = self->_assistantDaemonAudioTwoShotTransitionContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHVoiceTriggerContext)voiceTriggerContext
{
  if (self->_whichEvent_Type == 124)
  {
    v3 = self->_voiceTriggerContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHEndpointLatencyInfoReported)endpointLatencyInfoReported
{
  if (self->_whichEvent_Type == 126)
  {
    v3 = self->_endpointLatencyInfoReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHOnDeviceEndpointerContext)onDeviceEndpointerContext
{
  if (self->_whichEvent_Type == 128)
  {
    v3 = self->_onDeviceEndpointerContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHServerEndpointerContext)serverEndpointerContext
{
  if (self->_whichEvent_Type == 129)
  {
    v3 = self->_serverEndpointerContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHEndpointerUsed)endpointerUsed
{
  if (self->_whichEvent_Type == 130)
  {
    v3 = self->_endpointerUsed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHEndpointDelayContext)endpointDelayContext
{
  if (self->_whichEvent_Type == 131)
  {
    v3 = self->_endpointDelayContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHMitigationDecisionRecommended)finalMitigationRecommendation
{
  if (self->_whichEvent_Type == 132)
  {
    v3 = self->_finalMitigationRecommendation;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHSiriLaunchRequestContext)siriLaunchRequestContext
{
  if (self->_whichEvent_Type == 134)
  {
    v3 = self->_siriLaunchRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHCarplayLanguageMismatch)carPlayLangaugeMismatched
{
  if (self->_whichEvent_Type == 136)
  {
    v3 = self->_carPlayLangaugeMismatched;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHOdldFalseTriggerMitigated)odldFalseTriggerMitigated
{
  if (self->_whichEvent_Type == 138)
  {
    v3 = self->_odldFalseTriggerMitigated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHSiriDirectedSpeechDetectionFailed)siriDirectedSpeechDetectionFailed
{
  if (self->_whichEvent_Type == 140)
  {
    v3 = self->_siriDirectedSpeechDetectionFailed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHUserSpeakingContext)userSpeakingContext
{
  if (self->_whichEvent_Type == 145)
  {
    v3 = self->_userSpeakingContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHSpeechStopDetected)speechStopDetected
{
  if (self->_whichEvent_Type == 146)
  {
    v3 = self->_speechStopDetected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHSpeechDetectorContext)speechDetectorContext
{
  if (self->_whichEvent_Type == 147)
  {
    v3 = self->_speechDetectorContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAttendingContext)attendingContext
{
  if (self->_whichEvent_Type == 150)
  {
    v3 = self->_attendingContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHCrownPressed)crownPressed
{
  if (self->_whichEvent_Type == 151)
  {
    v3 = self->_crownPressed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHVoiceTriggerRePrompted)voiceTriggerRePrompted
{
  if (self->_whichEvent_Type == 157)
  {
    v3 = self->_voiceTriggerRePrompted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHVoiceTriggerRejectDetected)voiceTriggerRejectDetected
{
  if (self->_whichEvent_Type == 160)
  {
    v3 = self->_voiceTriggerRejectDetected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAdaptiveSiriVolumeUserIntentDetected)adaptiveSiriVolumeUserIntentDetected
{
  if (self->_whichEvent_Type == 162)
  {
    v3 = self->_adaptiveSiriVolumeUserIntentDetected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAssistantDaemonAudioInitContext)assistantDaemonAudioInitContext
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_assistantDaemonAudioInitContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAssistantDaemonAudioPrepareContext)assistantDaemonAudioPrepareContext
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_assistantDaemonAudioPrepareContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAssistantDaemonAudioStartRecordingContext)assistantDaemonAudioStartRecordingContext
{
  if (self->_whichEvent_Type == 109)
  {
    v3 = self->_assistantDaemonAudioStartRecordingContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAssistantDaemonAudioRecordingMissedBufferDetected)assistantDaemonAudioRecordingMissedBufferDetected
{
  if (self->_whichEvent_Type == 115)
  {
    v3 = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAssistantDaemonAudioLateBufferDetected)assistantDaemonAudioLateBufferDetected
{
  if (self->_whichEvent_Type == 116)
  {
    v3 = self->_assistantDaemonAudioLateBufferDetected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHEndpointDetected)endpointDetected
{
  if (self->_whichEvent_Type == 125)
  {
    v3 = self->_endpointDetected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHVoiceAdBlockerContext)adblockerContext
{
  if (self->_whichEvent_Type == 127)
  {
    v3 = self->_adblockerContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHEndpointerAccessibleContext)endpointerAccessibleContext
{
  if (self->_whichEvent_Type == 135)
  {
    v3 = self->_endpointerAccessibleContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAudioDucked)audioDucked
{
  if (self->_whichEvent_Type == 141)
  {
    v3 = self->_audioDucked;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAssistantDaemonAudioRecordingFailed)audioRecordingFailed
{
  if (self->_whichEvent_Type == 142)
  {
    v3 = self->_audioRecordingFailed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHRTSFalseRejectDetected)rtsFalseRejectDetected
{
  if (self->_whichEvent_Type == 143)
  {
    v3 = self->_rtsFalseRejectDetected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHStoppedListeningForSpeechContinuation)stoppedListeningForSpeechContinuation
{
  if (self->_whichEvent_Type == 148)
  {
    v3 = self->_stoppedListeningForSpeechContinuation;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHUserEngagementFalseTriggerMitigationEvaluationContext)userEngagementModelContext
{
  if (self->_whichEvent_Type == 149)
  {
    v3 = self->_userEngagementModelContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHRaiseToSpeakFirstPassPolicyTriggered)rtsFirstPassPolicyTriggered
{
  if (self->_whichEvent_Type == 153)
  {
    v3 = self->_rtsFirstPassPolicyTriggered;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade)rtsSecondPassPolicyDecisionMade
{
  if (self->_whichEvent_Type == 154)
  {
    v3 = self->_rtsSecondPassPolicyDecisionMade;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHVoiceProfileOnboarded)voiceProfileOnboarded
{
  if (self->_whichEvent_Type == 155)
  {
    v3 = self->_voiceProfileOnboarded;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAssistantDaemonAudioFetchRouteContext)assistantDaemonAudioFetchRouteContext
{
  if (self->_whichEvent_Type == 113)
  {
    v3 = self->_assistantDaemonAudioFetchRouteContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHSpeakerFalseTriggerMitigated)speakerFalseTriggerMitigated
{
  if (self->_whichEvent_Type == 139)
  {
    v3 = self->_speakerFalseTriggerMitigated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHTRPCreated)trpCreated
{
  if (self->_whichEvent_Type == 144)
  {
    v3 = self->_trpCreated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHRaiseToSpeakTriggered)rtsTriggered
{
  if (self->_whichEvent_Type == 152)
  {
    v3 = self->_rtsTriggered;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHVoiceProfileICloudSyncFinished)voiceProfileICloudSyncFinished
{
  if (self->_whichEvent_Type == 159)
  {
    v3 = self->_voiceProfileICloudSyncFinished;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried)adaptiveSiriVolumeTTSVolumeQueried
{
  if (self->_whichEvent_Type == 161)
  {
    v3 = self->_adaptiveSiriVolumeTTSVolumeQueried;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHDarwinConnectedDeviceWakeContext)darwinConnectedDeviceWakeContext
{
  if (self->_whichEvent_Type == 137)
  {
    v3 = self->_darwinConnectedDeviceWakeContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority)assistantDaemonAudioRecordingFailureInsufficientPriority
{
  if (self->_whichEvent_Type == 158)
  {
    v3 = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int)clockIsolationLevel
{
  whichEvent_Type = [(MHSchemaMHClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 157 > 8)
  {
    return 1;
  }

  else
  {
    return dword_1AA738C64[whichEvent_Type - 157];
  }
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(MHSchemaMHClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 100 > 0x41)
  {
    return @"com.apple.aiml.siri.mh.MHClientEvent";
  }

  else
  {
    return off_1E78D9570[whichEvent_Type - 100];
  }
}

- (MHSchemaMHApplicationPlaybackAttempted)applicationPlaybackAttempted
{
  if (self->_whichEvent_Type == 133)
  {
    v3 = self->_applicationPlaybackAttempted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MHSchemaMHClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v202.receiver = self;
  v202.super_class = MHSchemaMHClientEvent;
  v5 = [(MHSchemaMHClientEvent *)&v202 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"mhId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(MHSchemaMHClientEvent *)v5 setMhId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[MHSchemaMHClientEventMetadata alloc] initWithDictionary:v8];
      [(MHSchemaMHClientEvent *)v5 setEventMetadata:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"acousticFalseTriggerMitigationEvaluationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext alloc] initWithDictionary:v10];
      [(MHSchemaMHClientEvent *)v5 setAcousticFalseTriggerMitigationEvaluationContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"latticeFalseTriggerMitigationEvaluationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext alloc] initWithDictionary:v12];
      [(MHSchemaMHClientEvent *)v5 setLatticeFalseTriggerMitigationEvaluationContext:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"unintendedResponseSuppressionExecutionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[MHSchemaMHUnintendedResponseSuppressionEvaluationContext alloc] initWithDictionary:v14];
      [(MHSchemaMHClientEvent *)v5 setUnintendedResponseSuppressionExecutionContext:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"coreSpeechPreprocessorCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[MHSchemaMHCoreSpeechPreprocessorCompleted alloc] initWithDictionary:v16];
      [(MHSchemaMHClientEvent *)v5 setCoreSpeechPreprocessorCompleted:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"asrAudioConfigureStarted"];
    objc_opt_class();
    v201 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[MHSchemaMHASRAudioConfigureStarted alloc] initWithDictionary:v18];
      [(MHSchemaMHClientEvent *)v5 setAsrAudioConfigureStarted:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"assistantDaemonAudioInitContext"];
    objc_opt_class();
    v200 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[MHSchemaMHAssistantDaemonAudioInitContext alloc] initWithDictionary:v20];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioInitContext:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"assistantDaemonAudioConfigureContext"];
    objc_opt_class();
    v199 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[MHSchemaMHAssistantDaemonAudioConfigureContext alloc] initWithDictionary:v22];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioConfigureContext:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"assistantDaemonAudioPrepareContext"];
    objc_opt_class();
    v198 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[MHSchemaMHAssistantDaemonAudioPrepareContext alloc] initWithDictionary:v24];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioPrepareContext:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"assistantDaemonAudioPrewarmContext"];
    objc_opt_class();
    v197 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[MHSchemaMHAssistantDaemonAudioPrewarmContext alloc] initWithDictionary:v26];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioPrewarmContext:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"assistantDaemonAudioStartRecordingContext"];
    objc_opt_class();
    v196 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[MHSchemaMHAssistantDaemonAudioStartRecordingContext alloc] initWithDictionary:v28];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioStartRecordingContext:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"assistantDaemonAudioStopRecordingContext"];
    objc_opt_class();
    v195 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[MHSchemaMHAssistantDaemonAudioStopRecordingContext alloc] initWithDictionary:v30];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioStopRecordingContext:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"assistantDaemonAudioSessionSetActiveContext"];
    objc_opt_class();
    v194 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[MHSchemaMHAssistantDaemonAudioSessionSetActiveContext alloc] initWithDictionary:v32];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioSessionSetActiveContext:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"assistantDaemonAudioSessionSetInactiveContext"];
    objc_opt_class();
    v193 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[MHSchemaMHAssistantDaemonAudioSessionSetInactiveContext alloc] initWithDictionary:v34];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioSessionSetInactiveContext:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"assistantDaemonAudioFetchRouteContext"];
    objc_opt_class();
    v192 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[MHSchemaMHAssistantDaemonAudioFetchRouteContext alloc] initWithDictionary:v36];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioFetchRouteContext:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"assistantDaemonAudioRecordingContext"];
    objc_opt_class();
    v191 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[MHSchemaMHAssistantDaemonAudioRecordingContext alloc] initWithDictionary:v38];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioRecordingContext:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"assistantDaemonAudioRecordingMissedBufferDetected"];
    objc_opt_class();
    v190 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[MHSchemaMHAssistantDaemonAudioRecordingMissedBufferDetected alloc] initWithDictionary:v40];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioRecordingMissedBufferDetected:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"assistantDaemonAudioLateBufferDetected"];
    objc_opt_class();
    v189 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [[MHSchemaMHAssistantDaemonAudioLateBufferDetected alloc] initWithDictionary:v42];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioLateBufferDetected:v43];
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"assistantDaemonAudioRecordingFirstBufferContext"];
    objc_opt_class();
    v188 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [[MHSchemaMHAssistantDaemonAudioRecordingFirstBufferContext alloc] initWithDictionary:v44];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioRecordingFirstBufferContext:v45];
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"assistantDaemonAudioRecordingLastBufferContext"];
    objc_opt_class();
    v187 = v46;
    if (objc_opt_isKindOfClass())
    {
      v47 = [[MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext alloc] initWithDictionary:v46];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioRecordingLastBufferContext:v47];
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"assistantDaemonAudioRecordingInterruptionContext"];
    objc_opt_class();
    v186 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [[MHSchemaMHAssistantDaemonAudioRecordingInterruptionContext alloc] initWithDictionary:v48];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioRecordingInterruptionContext:v49];
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"assistantDaemonAudioRecordingInterruptionStartedTier1"];
    objc_opt_class();
    v185 = v50;
    if (objc_opt_isKindOfClass())
    {
      v51 = [[MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 alloc] initWithDictionary:v50];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioRecordingInterruptionStartedTier1:v51];
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"assistantDaemonAudioBluetoothInfo"];
    objc_opt_class();
    v184 = v52;
    if (objc_opt_isKindOfClass())
    {
      v53 = [[MHSchemaMHAssistantDaemonAudioBluetoothInfo alloc] initWithDictionary:v52];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioBluetoothInfo:v53];
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"voiceTriggerTwoShotDetected"];
    objc_opt_class();
    v183 = v54;
    if (objc_opt_isKindOfClass())
    {
      v55 = [[MHSchemaMHVoiceTriggerTwoShotDetected alloc] initWithDictionary:v54];
      [(MHSchemaMHClientEvent *)v5 setVoiceTriggerTwoShotDetected:v55];
    }

    v56 = [dictionaryCopy objectForKeyedSubscript:@"assistantDaemonAudioTwoShotTransitionContext"];
    objc_opt_class();
    v182 = v56;
    if (objc_opt_isKindOfClass())
    {
      v57 = [[MHSchemaMHAssistantDaemonAudioTwoShotTransitionContext alloc] initWithDictionary:v56];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioTwoShotTransitionContext:v57];
    }

    v58 = [dictionaryCopy objectForKeyedSubscript:@"voiceTriggerContext"];
    objc_opt_class();
    v181 = v58;
    if (objc_opt_isKindOfClass())
    {
      v59 = [[MHSchemaMHVoiceTriggerContext alloc] initWithDictionary:v58];
      [(MHSchemaMHClientEvent *)v5 setVoiceTriggerContext:v59];
    }

    v60 = [dictionaryCopy objectForKeyedSubscript:@"endpointDetected"];
    objc_opt_class();
    v180 = v60;
    if (objc_opt_isKindOfClass())
    {
      v61 = [[MHSchemaMHEndpointDetected alloc] initWithDictionary:v60];
      [(MHSchemaMHClientEvent *)v5 setEndpointDetected:v61];
    }

    v62 = [dictionaryCopy objectForKeyedSubscript:@"endpointLatencyInfoReported"];
    objc_opt_class();
    v179 = v62;
    if (objc_opt_isKindOfClass())
    {
      v63 = [[MHSchemaMHEndpointLatencyInfoReported alloc] initWithDictionary:v62];
      [(MHSchemaMHClientEvent *)v5 setEndpointLatencyInfoReported:v63];
    }

    v64 = [dictionaryCopy objectForKeyedSubscript:@"adblockerContext"];
    objc_opt_class();
    v178 = v64;
    if (objc_opt_isKindOfClass())
    {
      v65 = [[MHSchemaMHVoiceAdBlockerContext alloc] initWithDictionary:v64];
      [(MHSchemaMHClientEvent *)v5 setAdblockerContext:v65];
    }

    v66 = [dictionaryCopy objectForKeyedSubscript:@"onDeviceEndpointerContext"];
    objc_opt_class();
    v177 = v66;
    if (objc_opt_isKindOfClass())
    {
      v67 = [[MHSchemaMHOnDeviceEndpointerContext alloc] initWithDictionary:v66];
      [(MHSchemaMHClientEvent *)v5 setOnDeviceEndpointerContext:v67];
    }

    v68 = [dictionaryCopy objectForKeyedSubscript:@"serverEndpointerContext"];
    objc_opt_class();
    v176 = v68;
    if (objc_opt_isKindOfClass())
    {
      v69 = [[MHSchemaMHServerEndpointerContext alloc] initWithDictionary:v68];
      [(MHSchemaMHClientEvent *)v5 setServerEndpointerContext:v69];
    }

    v70 = [dictionaryCopy objectForKeyedSubscript:@"endpointerUsed"];
    objc_opt_class();
    v175 = v70;
    if (objc_opt_isKindOfClass())
    {
      v71 = [[MHSchemaMHEndpointerUsed alloc] initWithDictionary:v70];
      [(MHSchemaMHClientEvent *)v5 setEndpointerUsed:v71];
    }

    v72 = [dictionaryCopy objectForKeyedSubscript:@"endpointDelayContext"];
    objc_opt_class();
    v174 = v72;
    if (objc_opt_isKindOfClass())
    {
      v73 = [[MHSchemaMHEndpointDelayContext alloc] initWithDictionary:v72];
      [(MHSchemaMHClientEvent *)v5 setEndpointDelayContext:v73];
    }

    v74 = [dictionaryCopy objectForKeyedSubscript:@"finalMitigationRecommendation"];
    objc_opt_class();
    v173 = v74;
    if (objc_opt_isKindOfClass())
    {
      v75 = [[MHSchemaMHMitigationDecisionRecommended alloc] initWithDictionary:v74];
      [(MHSchemaMHClientEvent *)v5 setFinalMitigationRecommendation:v75];
    }

    v76 = [dictionaryCopy objectForKeyedSubscript:@"applicationPlaybackAttempted"];
    objc_opt_class();
    v172 = v76;
    if (objc_opt_isKindOfClass())
    {
      v77 = [[MHSchemaMHApplicationPlaybackAttempted alloc] initWithDictionary:v76];
      [(MHSchemaMHClientEvent *)v5 setApplicationPlaybackAttempted:v77];
    }

    v78 = [dictionaryCopy objectForKeyedSubscript:@"siriLaunchRequestContext"];
    objc_opt_class();
    v171 = v78;
    if (objc_opt_isKindOfClass())
    {
      v79 = [[MHSchemaMHSiriLaunchRequestContext alloc] initWithDictionary:v78];
      [(MHSchemaMHClientEvent *)v5 setSiriLaunchRequestContext:v79];
    }

    v80 = [dictionaryCopy objectForKeyedSubscript:@"endpointerAccessibleContext"];
    objc_opt_class();
    v170 = v80;
    if (objc_opt_isKindOfClass())
    {
      v81 = [[MHSchemaMHEndpointerAccessibleContext alloc] initWithDictionary:v80];
      [(MHSchemaMHClientEvent *)v5 setEndpointerAccessibleContext:v81];
    }

    v82 = [dictionaryCopy objectForKeyedSubscript:@"carPlayLangaugeMismatched"];
    objc_opt_class();
    v169 = v82;
    if (objc_opt_isKindOfClass())
    {
      v83 = [[MHSchemaMHCarplayLanguageMismatch alloc] initWithDictionary:v82];
      [(MHSchemaMHClientEvent *)v5 setCarPlayLangaugeMismatched:v83];
    }

    v84 = [dictionaryCopy objectForKeyedSubscript:@"darwinConnectedDeviceWakeContext"];
    objc_opt_class();
    v168 = v84;
    if (objc_opt_isKindOfClass())
    {
      v85 = [[MHSchemaMHDarwinConnectedDeviceWakeContext alloc] initWithDictionary:v84];
      [(MHSchemaMHClientEvent *)v5 setDarwinConnectedDeviceWakeContext:v85];
    }

    v86 = [dictionaryCopy objectForKeyedSubscript:@"odldFalseTriggerMitigated"];
    objc_opt_class();
    v167 = v86;
    if (objc_opt_isKindOfClass())
    {
      v87 = [[MHSchemaMHOdldFalseTriggerMitigated alloc] initWithDictionary:v86];
      [(MHSchemaMHClientEvent *)v5 setOdldFalseTriggerMitigated:v87];
    }

    v88 = [dictionaryCopy objectForKeyedSubscript:@"speakerFalseTriggerMitigated"];
    objc_opt_class();
    v166 = v88;
    if (objc_opt_isKindOfClass())
    {
      v89 = [[MHSchemaMHSpeakerFalseTriggerMitigated alloc] initWithDictionary:v88];
      [(MHSchemaMHClientEvent *)v5 setSpeakerFalseTriggerMitigated:v89];
    }

    v90 = [dictionaryCopy objectForKeyedSubscript:@"siriDirectedSpeechDetectionFailed"];
    objc_opt_class();
    v165 = v90;
    if (objc_opt_isKindOfClass())
    {
      v91 = [[MHSchemaMHSiriDirectedSpeechDetectionFailed alloc] initWithDictionary:v90];
      [(MHSchemaMHClientEvent *)v5 setSiriDirectedSpeechDetectionFailed:v91];
    }

    v92 = [dictionaryCopy objectForKeyedSubscript:@"audioDucked"];
    objc_opt_class();
    v164 = v92;
    if (objc_opt_isKindOfClass())
    {
      v93 = [[MHSchemaMHAudioDucked alloc] initWithDictionary:v92];
      [(MHSchemaMHClientEvent *)v5 setAudioDucked:v93];
    }

    v94 = [dictionaryCopy objectForKeyedSubscript:@"audioRecordingFailed"];
    objc_opt_class();
    v163 = v94;
    if (objc_opt_isKindOfClass())
    {
      v95 = [[MHSchemaMHAssistantDaemonAudioRecordingFailed alloc] initWithDictionary:v94];
      [(MHSchemaMHClientEvent *)v5 setAudioRecordingFailed:v95];
    }

    v96 = [dictionaryCopy objectForKeyedSubscript:@"rtsFalseRejectDetected"];
    objc_opt_class();
    v162 = v96;
    if (objc_opt_isKindOfClass())
    {
      v97 = [[MHSchemaMHRTSFalseRejectDetected alloc] initWithDictionary:v96];
      [(MHSchemaMHClientEvent *)v5 setRtsFalseRejectDetected:v97];
    }

    v98 = [dictionaryCopy objectForKeyedSubscript:@"trpCreated"];
    objc_opt_class();
    v161 = v98;
    if (objc_opt_isKindOfClass())
    {
      v99 = [[MHSchemaMHTRPCreated alloc] initWithDictionary:v98];
      [(MHSchemaMHClientEvent *)v5 setTrpCreated:v99];
    }

    v100 = [dictionaryCopy objectForKeyedSubscript:@"userSpeakingContext"];
    objc_opt_class();
    v160 = v100;
    if (objc_opt_isKindOfClass())
    {
      v101 = [[MHSchemaMHUserSpeakingContext alloc] initWithDictionary:v100];
      [(MHSchemaMHClientEvent *)v5 setUserSpeakingContext:v101];
    }

    v102 = [dictionaryCopy objectForKeyedSubscript:@"speechStopDetected"];
    objc_opt_class();
    v159 = v102;
    if (objc_opt_isKindOfClass())
    {
      v103 = [[MHSchemaMHSpeechStopDetected alloc] initWithDictionary:v102];
      [(MHSchemaMHClientEvent *)v5 setSpeechStopDetected:v103];
    }

    v104 = [dictionaryCopy objectForKeyedSubscript:@"speechDetectorContext"];
    objc_opt_class();
    v158 = v104;
    if (objc_opt_isKindOfClass())
    {
      v105 = [[MHSchemaMHSpeechDetectorContext alloc] initWithDictionary:v104];
      [(MHSchemaMHClientEvent *)v5 setSpeechDetectorContext:v105];
    }

    v106 = [dictionaryCopy objectForKeyedSubscript:@"stoppedListeningForSpeechContinuation"];
    objc_opt_class();
    v157 = v106;
    if (objc_opt_isKindOfClass())
    {
      v107 = [[MHSchemaMHStoppedListeningForSpeechContinuation alloc] initWithDictionary:v106];
      [(MHSchemaMHClientEvent *)v5 setStoppedListeningForSpeechContinuation:v107];
    }

    v108 = [dictionaryCopy objectForKeyedSubscript:@"userEngagementModelContext"];
    objc_opt_class();
    v156 = v108;
    if (objc_opt_isKindOfClass())
    {
      v109 = [[MHSchemaMHUserEngagementFalseTriggerMitigationEvaluationContext alloc] initWithDictionary:v108];
      [(MHSchemaMHClientEvent *)v5 setUserEngagementModelContext:v109];
    }

    v110 = [dictionaryCopy objectForKeyedSubscript:@"attendingContext"];
    objc_opt_class();
    v155 = v110;
    if (objc_opt_isKindOfClass())
    {
      v111 = [[MHSchemaMHAttendingContext alloc] initWithDictionary:v110];
      [(MHSchemaMHClientEvent *)v5 setAttendingContext:v111];
    }

    v112 = [dictionaryCopy objectForKeyedSubscript:@"crownPressed"];
    objc_opt_class();
    v154 = v112;
    if (objc_opt_isKindOfClass())
    {
      v113 = [[MHSchemaMHCrownPressed alloc] initWithDictionary:v112];
      [(MHSchemaMHClientEvent *)v5 setCrownPressed:v113];
    }

    v114 = [dictionaryCopy objectForKeyedSubscript:@"rtsTriggered"];
    objc_opt_class();
    v153 = v114;
    if (objc_opt_isKindOfClass())
    {
      v115 = [[MHSchemaMHRaiseToSpeakTriggered alloc] initWithDictionary:v114];
      [(MHSchemaMHClientEvent *)v5 setRtsTriggered:v115];
    }

    v116 = [dictionaryCopy objectForKeyedSubscript:@"rtsFirstPassPolicyTriggered"];
    objc_opt_class();
    v152 = v116;
    if (objc_opt_isKindOfClass())
    {
      v117 = [[MHSchemaMHRaiseToSpeakFirstPassPolicyTriggered alloc] initWithDictionary:v116];
      [(MHSchemaMHClientEvent *)v5 setRtsFirstPassPolicyTriggered:v117];
    }

    v118 = [dictionaryCopy objectForKeyedSubscript:@"rtsSecondPassPolicyDecisionMade"];
    objc_opt_class();
    v151 = v118;
    if (objc_opt_isKindOfClass())
    {
      v119 = [[MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade alloc] initWithDictionary:v118];
      [(MHSchemaMHClientEvent *)v5 setRtsSecondPassPolicyDecisionMade:v119];
    }

    v120 = [dictionaryCopy objectForKeyedSubscript:@"voiceProfileOnboarded"];
    objc_opt_class();
    v150 = v120;
    if (objc_opt_isKindOfClass())
    {
      v121 = [[MHSchemaMHVoiceProfileOnboarded alloc] initWithDictionary:v120];
      [(MHSchemaMHClientEvent *)v5 setVoiceProfileOnboarded:v121];
    }

    v122 = [dictionaryCopy objectForKeyedSubscript:@"voiceTriggerRePrompted"];
    objc_opt_class();
    v149 = v122;
    if (objc_opt_isKindOfClass())
    {
      v123 = [[MHSchemaMHVoiceTriggerRePrompted alloc] initWithDictionary:v122];
      [(MHSchemaMHClientEvent *)v5 setVoiceTriggerRePrompted:v123];
    }

    v146 = v10;
    v124 = [dictionaryCopy objectForKeyedSubscript:@"assistantDaemonAudioRecordingFailureInsufficientPriority"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v125 = [[MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority alloc] initWithDictionary:v124];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioRecordingFailureInsufficientPriority:v125];
    }

    v142 = v124;
    v145 = v12;
    v126 = [dictionaryCopy objectForKeyedSubscript:@"voiceProfileICloudSyncFinished"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v127 = [[MHSchemaMHVoiceProfileICloudSyncFinished alloc] initWithDictionary:v126];
      [(MHSchemaMHClientEvent *)v5 setVoiceProfileICloudSyncFinished:v127];
    }

    v144 = v14;
    v128 = [dictionaryCopy objectForKeyedSubscript:@"voiceTriggerRejectDetected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v129 = [[MHSchemaMHVoiceTriggerRejectDetected alloc] initWithDictionary:v128];
      [(MHSchemaMHClientEvent *)v5 setVoiceTriggerRejectDetected:v129];
    }

    v143 = v16;
    v130 = [dictionaryCopy objectForKeyedSubscript:@"adaptiveSiriVolumeTTSVolumeQueried"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v131 = [[MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried alloc] initWithDictionary:v130];
      [(MHSchemaMHClientEvent *)v5 setAdaptiveSiriVolumeTTSVolumeQueried:v131];
    }

    v148 = v6;
    v132 = [dictionaryCopy objectForKeyedSubscript:@"adaptiveSiriVolumeUserIntentDetected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v133 = [[MHSchemaMHAdaptiveSiriVolumeUserIntentDetected alloc] initWithDictionary:v132];
      [(MHSchemaMHClientEvent *)v5 setAdaptiveSiriVolumeUserIntentDetected:v133];
    }

    v147 = v8;
    v134 = [dictionaryCopy objectForKeyedSubscript:@"speakerIdEnrollmentDataReportedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v135 = [[MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 alloc] initWithDictionary:v134];
      [(MHSchemaMHClientEvent *)v5 setSpeakerIdEnrollmentDataReportedTier1:v135];
    }

    v136 = [dictionaryCopy objectForKeyedSubscript:@"speakerIdModelSelectedClockSessionInfoTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v137 = [[MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 alloc] initWithDictionary:v136];
      [(MHSchemaMHClientEvent *)v5 setSpeakerIdModelSelectedClockSessionInfoTier1:v137];
    }

    v138 = [dictionaryCopy objectForKeyedSubscript:@"speakerIdModelOneSessionReportedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v139 = [[MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 alloc] initWithDictionary:v138];
      [(MHSchemaMHClientEvent *)v5 setSpeakerIdModelOneSessionReportedTier1:v139];
    }

    v140 = v5;
  }

  return v5;
}

- (MHSchemaMHClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHClientEvent *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_acousticFalseTriggerMitigationEvaluationContext)
  {
    acousticFalseTriggerMitigationEvaluationContext = [(MHSchemaMHClientEvent *)self acousticFalseTriggerMitigationEvaluationContext];
    dictionaryRepresentation = [acousticFalseTriggerMitigationEvaluationContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"acousticFalseTriggerMitigationEvaluationContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"acousticFalseTriggerMitigationEvaluationContext"];
    }
  }

  if (self->_adaptiveSiriVolumeTTSVolumeQueried)
  {
    adaptiveSiriVolumeTTSVolumeQueried = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeTTSVolumeQueried];
    dictionaryRepresentation2 = [adaptiveSiriVolumeTTSVolumeQueried dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"adaptiveSiriVolumeTTSVolumeQueried"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"adaptiveSiriVolumeTTSVolumeQueried"];
    }
  }

  if (self->_adaptiveSiriVolumeUserIntentDetected)
  {
    adaptiveSiriVolumeUserIntentDetected = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeUserIntentDetected];
    dictionaryRepresentation3 = [adaptiveSiriVolumeUserIntentDetected dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"adaptiveSiriVolumeUserIntentDetected"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"adaptiveSiriVolumeUserIntentDetected"];
    }
  }

  if (self->_adblockerContext)
  {
    adblockerContext = [(MHSchemaMHClientEvent *)self adblockerContext];
    dictionaryRepresentation4 = [adblockerContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"adblockerContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"adblockerContext"];
    }
  }

  if (self->_applicationPlaybackAttempted)
  {
    applicationPlaybackAttempted = [(MHSchemaMHClientEvent *)self applicationPlaybackAttempted];
    dictionaryRepresentation5 = [applicationPlaybackAttempted dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"applicationPlaybackAttempted"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"applicationPlaybackAttempted"];
    }
  }

  if (self->_asrAudioConfigureStarted)
  {
    asrAudioConfigureStarted = [(MHSchemaMHClientEvent *)self asrAudioConfigureStarted];
    dictionaryRepresentation6 = [asrAudioConfigureStarted dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"asrAudioConfigureStarted"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"asrAudioConfigureStarted"];
    }
  }

  if (self->_assistantDaemonAudioBluetoothInfo)
  {
    assistantDaemonAudioBluetoothInfo = [(MHSchemaMHClientEvent *)self assistantDaemonAudioBluetoothInfo];
    dictionaryRepresentation7 = [assistantDaemonAudioBluetoothInfo dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"assistantDaemonAudioBluetoothInfo"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"assistantDaemonAudioBluetoothInfo"];
    }
  }

  if (self->_assistantDaemonAudioConfigureContext)
  {
    assistantDaemonAudioConfigureContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioConfigureContext];
    dictionaryRepresentation8 = [assistantDaemonAudioConfigureContext dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"assistantDaemonAudioConfigureContext"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"assistantDaemonAudioConfigureContext"];
    }
  }

  if (self->_assistantDaemonAudioFetchRouteContext)
  {
    assistantDaemonAudioFetchRouteContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioFetchRouteContext];
    dictionaryRepresentation9 = [assistantDaemonAudioFetchRouteContext dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"assistantDaemonAudioFetchRouteContext"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"assistantDaemonAudioFetchRouteContext"];
    }
  }

  if (self->_assistantDaemonAudioInitContext)
  {
    assistantDaemonAudioInitContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioInitContext];
    dictionaryRepresentation10 = [assistantDaemonAudioInitContext dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"assistantDaemonAudioInitContext"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"assistantDaemonAudioInitContext"];
    }
  }

  if (self->_assistantDaemonAudioLateBufferDetected)
  {
    assistantDaemonAudioLateBufferDetected = [(MHSchemaMHClientEvent *)self assistantDaemonAudioLateBufferDetected];
    dictionaryRepresentation11 = [assistantDaemonAudioLateBufferDetected dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"assistantDaemonAudioLateBufferDetected"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"assistantDaemonAudioLateBufferDetected"];
    }
  }

  if (self->_assistantDaemonAudioPrepareContext)
  {
    assistantDaemonAudioPrepareContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrepareContext];
    dictionaryRepresentation12 = [assistantDaemonAudioPrepareContext dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"assistantDaemonAudioPrepareContext"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"assistantDaemonAudioPrepareContext"];
    }
  }

  if (self->_assistantDaemonAudioPrewarmContext)
  {
    assistantDaemonAudioPrewarmContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrewarmContext];
    dictionaryRepresentation13 = [assistantDaemonAudioPrewarmContext dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"assistantDaemonAudioPrewarmContext"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"assistantDaemonAudioPrewarmContext"];
    }
  }

  if (self->_assistantDaemonAudioRecordingContext)
  {
    assistantDaemonAudioRecordingContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingContext];
    dictionaryRepresentation14 = [assistantDaemonAudioRecordingContext dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"assistantDaemonAudioRecordingContext"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"assistantDaemonAudioRecordingContext"];
    }
  }

  if (self->_assistantDaemonAudioRecordingFailureInsufficientPriority)
  {
    assistantDaemonAudioRecordingFailureInsufficientPriority = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFailureInsufficientPriority];
    dictionaryRepresentation15 = [assistantDaemonAudioRecordingFailureInsufficientPriority dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"assistantDaemonAudioRecordingFailureInsufficientPriority"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"assistantDaemonAudioRecordingFailureInsufficientPriority"];
    }
  }

  if (self->_assistantDaemonAudioRecordingFirstBufferContext)
  {
    assistantDaemonAudioRecordingFirstBufferContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFirstBufferContext];
    dictionaryRepresentation16 = [assistantDaemonAudioRecordingFirstBufferContext dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"assistantDaemonAudioRecordingFirstBufferContext"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"assistantDaemonAudioRecordingFirstBufferContext"];
    }
  }

  if (self->_assistantDaemonAudioRecordingInterruptionContext)
  {
    assistantDaemonAudioRecordingInterruptionContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionContext];
    dictionaryRepresentation17 = [assistantDaemonAudioRecordingInterruptionContext dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"assistantDaemonAudioRecordingInterruptionContext"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"assistantDaemonAudioRecordingInterruptionContext"];
    }
  }

  if (self->_assistantDaemonAudioRecordingInterruptionStartedTier1)
  {
    assistantDaemonAudioRecordingInterruptionStartedTier1 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionStartedTier1];
    dictionaryRepresentation18 = [assistantDaemonAudioRecordingInterruptionStartedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation18)
    {
      [dictionary setObject:dictionaryRepresentation18 forKeyedSubscript:@"assistantDaemonAudioRecordingInterruptionStartedTier1"];
    }

    else
    {
      null18 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null18 forKeyedSubscript:@"assistantDaemonAudioRecordingInterruptionStartedTier1"];
    }
  }

  if (self->_assistantDaemonAudioRecordingLastBufferContext)
  {
    assistantDaemonAudioRecordingLastBufferContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingLastBufferContext];
    dictionaryRepresentation19 = [assistantDaemonAudioRecordingLastBufferContext dictionaryRepresentation];
    if (dictionaryRepresentation19)
    {
      [dictionary setObject:dictionaryRepresentation19 forKeyedSubscript:@"assistantDaemonAudioRecordingLastBufferContext"];
    }

    else
    {
      null19 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null19 forKeyedSubscript:@"assistantDaemonAudioRecordingLastBufferContext"];
    }
  }

  if (self->_assistantDaemonAudioRecordingMissedBufferDetected)
  {
    assistantDaemonAudioRecordingMissedBufferDetected = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingMissedBufferDetected];
    dictionaryRepresentation20 = [assistantDaemonAudioRecordingMissedBufferDetected dictionaryRepresentation];
    if (dictionaryRepresentation20)
    {
      [dictionary setObject:dictionaryRepresentation20 forKeyedSubscript:@"assistantDaemonAudioRecordingMissedBufferDetected"];
    }

    else
    {
      null20 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null20 forKeyedSubscript:@"assistantDaemonAudioRecordingMissedBufferDetected"];
    }
  }

  if (self->_assistantDaemonAudioSessionSetActiveContext)
  {
    assistantDaemonAudioSessionSetActiveContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetActiveContext];
    dictionaryRepresentation21 = [assistantDaemonAudioSessionSetActiveContext dictionaryRepresentation];
    if (dictionaryRepresentation21)
    {
      [dictionary setObject:dictionaryRepresentation21 forKeyedSubscript:@"assistantDaemonAudioSessionSetActiveContext"];
    }

    else
    {
      null21 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null21 forKeyedSubscript:@"assistantDaemonAudioSessionSetActiveContext"];
    }
  }

  if (self->_assistantDaemonAudioSessionSetInactiveContext)
  {
    assistantDaemonAudioSessionSetInactiveContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetInactiveContext];
    dictionaryRepresentation22 = [assistantDaemonAudioSessionSetInactiveContext dictionaryRepresentation];
    if (dictionaryRepresentation22)
    {
      [dictionary setObject:dictionaryRepresentation22 forKeyedSubscript:@"assistantDaemonAudioSessionSetInactiveContext"];
    }

    else
    {
      null22 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null22 forKeyedSubscript:@"assistantDaemonAudioSessionSetInactiveContext"];
    }
  }

  if (self->_assistantDaemonAudioStartRecordingContext)
  {
    assistantDaemonAudioStartRecordingContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStartRecordingContext];
    dictionaryRepresentation23 = [assistantDaemonAudioStartRecordingContext dictionaryRepresentation];
    if (dictionaryRepresentation23)
    {
      [dictionary setObject:dictionaryRepresentation23 forKeyedSubscript:@"assistantDaemonAudioStartRecordingContext"];
    }

    else
    {
      null23 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null23 forKeyedSubscript:@"assistantDaemonAudioStartRecordingContext"];
    }
  }

  if (self->_assistantDaemonAudioStopRecordingContext)
  {
    assistantDaemonAudioStopRecordingContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStopRecordingContext];
    dictionaryRepresentation24 = [assistantDaemonAudioStopRecordingContext dictionaryRepresentation];
    if (dictionaryRepresentation24)
    {
      [dictionary setObject:dictionaryRepresentation24 forKeyedSubscript:@"assistantDaemonAudioStopRecordingContext"];
    }

    else
    {
      null24 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null24 forKeyedSubscript:@"assistantDaemonAudioStopRecordingContext"];
    }
  }

  if (self->_assistantDaemonAudioTwoShotTransitionContext)
  {
    assistantDaemonAudioTwoShotTransitionContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioTwoShotTransitionContext];
    dictionaryRepresentation25 = [assistantDaemonAudioTwoShotTransitionContext dictionaryRepresentation];
    if (dictionaryRepresentation25)
    {
      [dictionary setObject:dictionaryRepresentation25 forKeyedSubscript:@"assistantDaemonAudioTwoShotTransitionContext"];
    }

    else
    {
      null25 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null25 forKeyedSubscript:@"assistantDaemonAudioTwoShotTransitionContext"];
    }
  }

  if (self->_attendingContext)
  {
    attendingContext = [(MHSchemaMHClientEvent *)self attendingContext];
    dictionaryRepresentation26 = [attendingContext dictionaryRepresentation];
    if (dictionaryRepresentation26)
    {
      [dictionary setObject:dictionaryRepresentation26 forKeyedSubscript:@"attendingContext"];
    }

    else
    {
      null26 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null26 forKeyedSubscript:@"attendingContext"];
    }
  }

  if (self->_audioDucked)
  {
    audioDucked = [(MHSchemaMHClientEvent *)self audioDucked];
    dictionaryRepresentation27 = [audioDucked dictionaryRepresentation];
    if (dictionaryRepresentation27)
    {
      [dictionary setObject:dictionaryRepresentation27 forKeyedSubscript:@"audioDucked"];
    }

    else
    {
      null27 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null27 forKeyedSubscript:@"audioDucked"];
    }
  }

  if (self->_audioRecordingFailed)
  {
    audioRecordingFailed = [(MHSchemaMHClientEvent *)self audioRecordingFailed];
    dictionaryRepresentation28 = [audioRecordingFailed dictionaryRepresentation];
    if (dictionaryRepresentation28)
    {
      [dictionary setObject:dictionaryRepresentation28 forKeyedSubscript:@"audioRecordingFailed"];
    }

    else
    {
      null28 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null28 forKeyedSubscript:@"audioRecordingFailed"];
    }
  }

  if (self->_carPlayLangaugeMismatched)
  {
    carPlayLangaugeMismatched = [(MHSchemaMHClientEvent *)self carPlayLangaugeMismatched];
    dictionaryRepresentation29 = [carPlayLangaugeMismatched dictionaryRepresentation];
    if (dictionaryRepresentation29)
    {
      [dictionary setObject:dictionaryRepresentation29 forKeyedSubscript:@"carPlayLangaugeMismatched"];
    }

    else
    {
      null29 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null29 forKeyedSubscript:@"carPlayLangaugeMismatched"];
    }
  }

  if (self->_coreSpeechPreprocessorCompleted)
  {
    coreSpeechPreprocessorCompleted = [(MHSchemaMHClientEvent *)self coreSpeechPreprocessorCompleted];
    dictionaryRepresentation30 = [coreSpeechPreprocessorCompleted dictionaryRepresentation];
    if (dictionaryRepresentation30)
    {
      [dictionary setObject:dictionaryRepresentation30 forKeyedSubscript:@"coreSpeechPreprocessorCompleted"];
    }

    else
    {
      null30 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null30 forKeyedSubscript:@"coreSpeechPreprocessorCompleted"];
    }
  }

  if (self->_crownPressed)
  {
    crownPressed = [(MHSchemaMHClientEvent *)self crownPressed];
    dictionaryRepresentation31 = [crownPressed dictionaryRepresentation];
    if (dictionaryRepresentation31)
    {
      [dictionary setObject:dictionaryRepresentation31 forKeyedSubscript:@"crownPressed"];
    }

    else
    {
      null31 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null31 forKeyedSubscript:@"crownPressed"];
    }
  }

  if (self->_darwinConnectedDeviceWakeContext)
  {
    darwinConnectedDeviceWakeContext = [(MHSchemaMHClientEvent *)self darwinConnectedDeviceWakeContext];
    dictionaryRepresentation32 = [darwinConnectedDeviceWakeContext dictionaryRepresentation];
    if (dictionaryRepresentation32)
    {
      [dictionary setObject:dictionaryRepresentation32 forKeyedSubscript:@"darwinConnectedDeviceWakeContext"];
    }

    else
    {
      null32 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null32 forKeyedSubscript:@"darwinConnectedDeviceWakeContext"];
    }
  }

  if (self->_endpointDelayContext)
  {
    endpointDelayContext = [(MHSchemaMHClientEvent *)self endpointDelayContext];
    dictionaryRepresentation33 = [endpointDelayContext dictionaryRepresentation];
    if (dictionaryRepresentation33)
    {
      [dictionary setObject:dictionaryRepresentation33 forKeyedSubscript:@"endpointDelayContext"];
    }

    else
    {
      null33 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null33 forKeyedSubscript:@"endpointDelayContext"];
    }
  }

  if (self->_endpointDetected)
  {
    endpointDetected = [(MHSchemaMHClientEvent *)self endpointDetected];
    dictionaryRepresentation34 = [endpointDetected dictionaryRepresentation];
    if (dictionaryRepresentation34)
    {
      [dictionary setObject:dictionaryRepresentation34 forKeyedSubscript:@"endpointDetected"];
    }

    else
    {
      null34 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null34 forKeyedSubscript:@"endpointDetected"];
    }
  }

  if (self->_endpointLatencyInfoReported)
  {
    endpointLatencyInfoReported = [(MHSchemaMHClientEvent *)self endpointLatencyInfoReported];
    dictionaryRepresentation35 = [endpointLatencyInfoReported dictionaryRepresentation];
    if (dictionaryRepresentation35)
    {
      [dictionary setObject:dictionaryRepresentation35 forKeyedSubscript:@"endpointLatencyInfoReported"];
    }

    else
    {
      null35 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null35 forKeyedSubscript:@"endpointLatencyInfoReported"];
    }
  }

  if (self->_endpointerAccessibleContext)
  {
    endpointerAccessibleContext = [(MHSchemaMHClientEvent *)self endpointerAccessibleContext];
    dictionaryRepresentation36 = [endpointerAccessibleContext dictionaryRepresentation];
    if (dictionaryRepresentation36)
    {
      [dictionary setObject:dictionaryRepresentation36 forKeyedSubscript:@"endpointerAccessibleContext"];
    }

    else
    {
      null36 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null36 forKeyedSubscript:@"endpointerAccessibleContext"];
    }
  }

  if (self->_endpointerUsed)
  {
    endpointerUsed = [(MHSchemaMHClientEvent *)self endpointerUsed];
    dictionaryRepresentation37 = [endpointerUsed dictionaryRepresentation];
    if (dictionaryRepresentation37)
    {
      [dictionary setObject:dictionaryRepresentation37 forKeyedSubscript:@"endpointerUsed"];
    }

    else
    {
      null37 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null37 forKeyedSubscript:@"endpointerUsed"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(MHSchemaMHClientEvent *)self eventMetadata];
    dictionaryRepresentation38 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation38)
    {
      [dictionary setObject:dictionaryRepresentation38 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null38 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null38 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_finalMitigationRecommendation)
  {
    finalMitigationRecommendation = [(MHSchemaMHClientEvent *)self finalMitigationRecommendation];
    dictionaryRepresentation39 = [finalMitigationRecommendation dictionaryRepresentation];
    if (dictionaryRepresentation39)
    {
      [dictionary setObject:dictionaryRepresentation39 forKeyedSubscript:@"finalMitigationRecommendation"];
    }

    else
    {
      null39 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null39 forKeyedSubscript:@"finalMitigationRecommendation"];
    }
  }

  if (self->_latticeFalseTriggerMitigationEvaluationContext)
  {
    latticeFalseTriggerMitigationEvaluationContext = [(MHSchemaMHClientEvent *)self latticeFalseTriggerMitigationEvaluationContext];
    dictionaryRepresentation40 = [latticeFalseTriggerMitigationEvaluationContext dictionaryRepresentation];
    if (dictionaryRepresentation40)
    {
      [dictionary setObject:dictionaryRepresentation40 forKeyedSubscript:@"latticeFalseTriggerMitigationEvaluationContext"];
    }

    else
    {
      null40 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null40 forKeyedSubscript:@"latticeFalseTriggerMitigationEvaluationContext"];
    }
  }

  if (self->_mhId)
  {
    mhId = [(MHSchemaMHClientEvent *)self mhId];
    dictionaryRepresentation41 = [mhId dictionaryRepresentation];
    if (dictionaryRepresentation41)
    {
      [dictionary setObject:dictionaryRepresentation41 forKeyedSubscript:@"mhId"];
    }

    else
    {
      null41 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null41 forKeyedSubscript:@"mhId"];
    }
  }

  if (self->_odldFalseTriggerMitigated)
  {
    odldFalseTriggerMitigated = [(MHSchemaMHClientEvent *)self odldFalseTriggerMitigated];
    dictionaryRepresentation42 = [odldFalseTriggerMitigated dictionaryRepresentation];
    if (dictionaryRepresentation42)
    {
      [dictionary setObject:dictionaryRepresentation42 forKeyedSubscript:@"odldFalseTriggerMitigated"];
    }

    else
    {
      null42 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null42 forKeyedSubscript:@"odldFalseTriggerMitigated"];
    }
  }

  if (self->_onDeviceEndpointerContext)
  {
    onDeviceEndpointerContext = [(MHSchemaMHClientEvent *)self onDeviceEndpointerContext];
    dictionaryRepresentation43 = [onDeviceEndpointerContext dictionaryRepresentation];
    if (dictionaryRepresentation43)
    {
      [dictionary setObject:dictionaryRepresentation43 forKeyedSubscript:@"onDeviceEndpointerContext"];
    }

    else
    {
      null43 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null43 forKeyedSubscript:@"onDeviceEndpointerContext"];
    }
  }

  if (self->_rtsFalseRejectDetected)
  {
    rtsFalseRejectDetected = [(MHSchemaMHClientEvent *)self rtsFalseRejectDetected];
    dictionaryRepresentation44 = [rtsFalseRejectDetected dictionaryRepresentation];
    if (dictionaryRepresentation44)
    {
      [dictionary setObject:dictionaryRepresentation44 forKeyedSubscript:@"rtsFalseRejectDetected"];
    }

    else
    {
      null44 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null44 forKeyedSubscript:@"rtsFalseRejectDetected"];
    }
  }

  if (self->_rtsFirstPassPolicyTriggered)
  {
    rtsFirstPassPolicyTriggered = [(MHSchemaMHClientEvent *)self rtsFirstPassPolicyTriggered];
    dictionaryRepresentation45 = [rtsFirstPassPolicyTriggered dictionaryRepresentation];
    if (dictionaryRepresentation45)
    {
      [dictionary setObject:dictionaryRepresentation45 forKeyedSubscript:@"rtsFirstPassPolicyTriggered"];
    }

    else
    {
      null45 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null45 forKeyedSubscript:@"rtsFirstPassPolicyTriggered"];
    }
  }

  if (self->_rtsSecondPassPolicyDecisionMade)
  {
    rtsSecondPassPolicyDecisionMade = [(MHSchemaMHClientEvent *)self rtsSecondPassPolicyDecisionMade];
    dictionaryRepresentation46 = [rtsSecondPassPolicyDecisionMade dictionaryRepresentation];
    if (dictionaryRepresentation46)
    {
      [dictionary setObject:dictionaryRepresentation46 forKeyedSubscript:@"rtsSecondPassPolicyDecisionMade"];
    }

    else
    {
      null46 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null46 forKeyedSubscript:@"rtsSecondPassPolicyDecisionMade"];
    }
  }

  if (self->_rtsTriggered)
  {
    rtsTriggered = [(MHSchemaMHClientEvent *)self rtsTriggered];
    dictionaryRepresentation47 = [rtsTriggered dictionaryRepresentation];
    if (dictionaryRepresentation47)
    {
      [dictionary setObject:dictionaryRepresentation47 forKeyedSubscript:@"rtsTriggered"];
    }

    else
    {
      null47 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null47 forKeyedSubscript:@"rtsTriggered"];
    }
  }

  if (self->_serverEndpointerContext)
  {
    serverEndpointerContext = [(MHSchemaMHClientEvent *)self serverEndpointerContext];
    dictionaryRepresentation48 = [serverEndpointerContext dictionaryRepresentation];
    if (dictionaryRepresentation48)
    {
      [dictionary setObject:dictionaryRepresentation48 forKeyedSubscript:@"serverEndpointerContext"];
    }

    else
    {
      null48 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null48 forKeyedSubscript:@"serverEndpointerContext"];
    }
  }

  if (self->_siriDirectedSpeechDetectionFailed)
  {
    siriDirectedSpeechDetectionFailed = [(MHSchemaMHClientEvent *)self siriDirectedSpeechDetectionFailed];
    dictionaryRepresentation49 = [siriDirectedSpeechDetectionFailed dictionaryRepresentation];
    if (dictionaryRepresentation49)
    {
      [dictionary setObject:dictionaryRepresentation49 forKeyedSubscript:@"siriDirectedSpeechDetectionFailed"];
    }

    else
    {
      null49 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null49 forKeyedSubscript:@"siriDirectedSpeechDetectionFailed"];
    }
  }

  if (self->_siriLaunchRequestContext)
  {
    siriLaunchRequestContext = [(MHSchemaMHClientEvent *)self siriLaunchRequestContext];
    dictionaryRepresentation50 = [siriLaunchRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation50)
    {
      [dictionary setObject:dictionaryRepresentation50 forKeyedSubscript:@"siriLaunchRequestContext"];
    }

    else
    {
      null50 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null50 forKeyedSubscript:@"siriLaunchRequestContext"];
    }
  }

  if (self->_speakerFalseTriggerMitigated)
  {
    speakerFalseTriggerMitigated = [(MHSchemaMHClientEvent *)self speakerFalseTriggerMitigated];
    dictionaryRepresentation51 = [speakerFalseTriggerMitigated dictionaryRepresentation];
    if (dictionaryRepresentation51)
    {
      [dictionary setObject:dictionaryRepresentation51 forKeyedSubscript:@"speakerFalseTriggerMitigated"];
    }

    else
    {
      null51 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null51 forKeyedSubscript:@"speakerFalseTriggerMitigated"];
    }
  }

  if (self->_speakerIdEnrollmentDataReportedTier1)
  {
    speakerIdEnrollmentDataReportedTier1 = [(MHSchemaMHClientEvent *)self speakerIdEnrollmentDataReportedTier1];
    dictionaryRepresentation52 = [speakerIdEnrollmentDataReportedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation52)
    {
      [dictionary setObject:dictionaryRepresentation52 forKeyedSubscript:@"speakerIdEnrollmentDataReportedTier1"];
    }

    else
    {
      null52 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null52 forKeyedSubscript:@"speakerIdEnrollmentDataReportedTier1"];
    }
  }

  if (self->_speakerIdModelOneSessionReportedTier1)
  {
    speakerIdModelOneSessionReportedTier1 = [(MHSchemaMHClientEvent *)self speakerIdModelOneSessionReportedTier1];
    dictionaryRepresentation53 = [speakerIdModelOneSessionReportedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation53)
    {
      [dictionary setObject:dictionaryRepresentation53 forKeyedSubscript:@"speakerIdModelOneSessionReportedTier1"];
    }

    else
    {
      null53 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null53 forKeyedSubscript:@"speakerIdModelOneSessionReportedTier1"];
    }
  }

  if (self->_speakerIdModelSelectedClockSessionInfoTier1)
  {
    speakerIdModelSelectedClockSessionInfoTier1 = [(MHSchemaMHClientEvent *)self speakerIdModelSelectedClockSessionInfoTier1];
    dictionaryRepresentation54 = [speakerIdModelSelectedClockSessionInfoTier1 dictionaryRepresentation];
    if (dictionaryRepresentation54)
    {
      [dictionary setObject:dictionaryRepresentation54 forKeyedSubscript:@"speakerIdModelSelectedClockSessionInfoTier1"];
    }

    else
    {
      null54 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null54 forKeyedSubscript:@"speakerIdModelSelectedClockSessionInfoTier1"];
    }
  }

  if (self->_speechDetectorContext)
  {
    speechDetectorContext = [(MHSchemaMHClientEvent *)self speechDetectorContext];
    dictionaryRepresentation55 = [speechDetectorContext dictionaryRepresentation];
    if (dictionaryRepresentation55)
    {
      [dictionary setObject:dictionaryRepresentation55 forKeyedSubscript:@"speechDetectorContext"];
    }

    else
    {
      null55 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null55 forKeyedSubscript:@"speechDetectorContext"];
    }
  }

  if (self->_speechStopDetected)
  {
    speechStopDetected = [(MHSchemaMHClientEvent *)self speechStopDetected];
    dictionaryRepresentation56 = [speechStopDetected dictionaryRepresentation];
    if (dictionaryRepresentation56)
    {
      [dictionary setObject:dictionaryRepresentation56 forKeyedSubscript:@"speechStopDetected"];
    }

    else
    {
      null56 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null56 forKeyedSubscript:@"speechStopDetected"];
    }
  }

  if (self->_stoppedListeningForSpeechContinuation)
  {
    stoppedListeningForSpeechContinuation = [(MHSchemaMHClientEvent *)self stoppedListeningForSpeechContinuation];
    dictionaryRepresentation57 = [stoppedListeningForSpeechContinuation dictionaryRepresentation];
    if (dictionaryRepresentation57)
    {
      [dictionary setObject:dictionaryRepresentation57 forKeyedSubscript:@"stoppedListeningForSpeechContinuation"];
    }

    else
    {
      null57 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null57 forKeyedSubscript:@"stoppedListeningForSpeechContinuation"];
    }
  }

  if (self->_trpCreated)
  {
    trpCreated = [(MHSchemaMHClientEvent *)self trpCreated];
    dictionaryRepresentation58 = [trpCreated dictionaryRepresentation];
    if (dictionaryRepresentation58)
    {
      [dictionary setObject:dictionaryRepresentation58 forKeyedSubscript:@"trpCreated"];
    }

    else
    {
      null58 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null58 forKeyedSubscript:@"trpCreated"];
    }
  }

  if (self->_unintendedResponseSuppressionExecutionContext)
  {
    unintendedResponseSuppressionExecutionContext = [(MHSchemaMHClientEvent *)self unintendedResponseSuppressionExecutionContext];
    dictionaryRepresentation59 = [unintendedResponseSuppressionExecutionContext dictionaryRepresentation];
    if (dictionaryRepresentation59)
    {
      [dictionary setObject:dictionaryRepresentation59 forKeyedSubscript:@"unintendedResponseSuppressionExecutionContext"];
    }

    else
    {
      null59 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null59 forKeyedSubscript:@"unintendedResponseSuppressionExecutionContext"];
    }
  }

  if (self->_userEngagementModelContext)
  {
    userEngagementModelContext = [(MHSchemaMHClientEvent *)self userEngagementModelContext];
    dictionaryRepresentation60 = [userEngagementModelContext dictionaryRepresentation];
    if (dictionaryRepresentation60)
    {
      [dictionary setObject:dictionaryRepresentation60 forKeyedSubscript:@"userEngagementModelContext"];
    }

    else
    {
      null60 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null60 forKeyedSubscript:@"userEngagementModelContext"];
    }
  }

  if (self->_userSpeakingContext)
  {
    userSpeakingContext = [(MHSchemaMHClientEvent *)self userSpeakingContext];
    dictionaryRepresentation61 = [userSpeakingContext dictionaryRepresentation];
    if (dictionaryRepresentation61)
    {
      [dictionary setObject:dictionaryRepresentation61 forKeyedSubscript:@"userSpeakingContext"];
    }

    else
    {
      null61 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null61 forKeyedSubscript:@"userSpeakingContext"];
    }
  }

  if (self->_voiceProfileICloudSyncFinished)
  {
    voiceProfileICloudSyncFinished = [(MHSchemaMHClientEvent *)self voiceProfileICloudSyncFinished];
    dictionaryRepresentation62 = [voiceProfileICloudSyncFinished dictionaryRepresentation];
    if (dictionaryRepresentation62)
    {
      [dictionary setObject:dictionaryRepresentation62 forKeyedSubscript:@"voiceProfileICloudSyncFinished"];
    }

    else
    {
      null62 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null62 forKeyedSubscript:@"voiceProfileICloudSyncFinished"];
    }
  }

  if (self->_voiceProfileOnboarded)
  {
    voiceProfileOnboarded = [(MHSchemaMHClientEvent *)self voiceProfileOnboarded];
    dictionaryRepresentation63 = [voiceProfileOnboarded dictionaryRepresentation];
    if (dictionaryRepresentation63)
    {
      [dictionary setObject:dictionaryRepresentation63 forKeyedSubscript:@"voiceProfileOnboarded"];
    }

    else
    {
      null63 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null63 forKeyedSubscript:@"voiceProfileOnboarded"];
    }
  }

  if (self->_voiceTriggerContext)
  {
    voiceTriggerContext = [(MHSchemaMHClientEvent *)self voiceTriggerContext];
    dictionaryRepresentation64 = [voiceTriggerContext dictionaryRepresentation];
    if (dictionaryRepresentation64)
    {
      [dictionary setObject:dictionaryRepresentation64 forKeyedSubscript:@"voiceTriggerContext"];
    }

    else
    {
      null64 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null64 forKeyedSubscript:@"voiceTriggerContext"];
    }
  }

  if (self->_voiceTriggerRePrompted)
  {
    voiceTriggerRePrompted = [(MHSchemaMHClientEvent *)self voiceTriggerRePrompted];
    dictionaryRepresentation65 = [voiceTriggerRePrompted dictionaryRepresentation];
    if (dictionaryRepresentation65)
    {
      [dictionary setObject:dictionaryRepresentation65 forKeyedSubscript:@"voiceTriggerRePrompted"];
    }

    else
    {
      null65 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null65 forKeyedSubscript:@"voiceTriggerRePrompted"];
    }
  }

  if (self->_voiceTriggerRejectDetected)
  {
    voiceTriggerRejectDetected = [(MHSchemaMHClientEvent *)self voiceTriggerRejectDetected];
    dictionaryRepresentation66 = [voiceTriggerRejectDetected dictionaryRepresentation];
    if (dictionaryRepresentation66)
    {
      [dictionary setObject:dictionaryRepresentation66 forKeyedSubscript:@"voiceTriggerRejectDetected"];
    }

    else
    {
      null66 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null66 forKeyedSubscript:@"voiceTriggerRejectDetected"];
    }
  }

  if (self->_voiceTriggerTwoShotDetected)
  {
    voiceTriggerTwoShotDetected = [(MHSchemaMHClientEvent *)self voiceTriggerTwoShotDetected];
    dictionaryRepresentation67 = [voiceTriggerTwoShotDetected dictionaryRepresentation];
    if (dictionaryRepresentation67)
    {
      [dictionary setObject:dictionaryRepresentation67 forKeyedSubscript:@"voiceTriggerTwoShotDetected"];
    }

    else
    {
      null67 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null67 forKeyedSubscript:@"voiceTriggerTwoShotDetected"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v205 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_mhId hash];
  v4 = [(MHSchemaMHClientEventMetadata *)self->_eventMetadata hash]^ v3;
  v5 = [(MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext *)self->_acousticFalseTriggerMitigationEvaluationContext hash];
  v6 = v4 ^ v5 ^ [(MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext *)self->_latticeFalseTriggerMitigationEvaluationContext hash];
  v7 = [(MHSchemaMHUnintendedResponseSuppressionEvaluationContext *)self->_unintendedResponseSuppressionExecutionContext hash];
  v8 = v7 ^ [(MHSchemaMHCoreSpeechPreprocessorCompleted *)self->_coreSpeechPreprocessorCompleted hash];
  v9 = v6 ^ v8 ^ [(MHSchemaMHASRAudioConfigureStarted *)self->_asrAudioConfigureStarted hash];
  v10 = [(MHSchemaMHAssistantDaemonAudioInitContext *)self->_assistantDaemonAudioInitContext hash];
  v11 = v10 ^ [(MHSchemaMHAssistantDaemonAudioConfigureContext *)self->_assistantDaemonAudioConfigureContext hash];
  v12 = v11 ^ [(MHSchemaMHAssistantDaemonAudioPrepareContext *)self->_assistantDaemonAudioPrepareContext hash];
  v13 = v9 ^ v12 ^ [(MHSchemaMHAssistantDaemonAudioPrewarmContext *)self->_assistantDaemonAudioPrewarmContext hash];
  v14 = [(MHSchemaMHAssistantDaemonAudioStartRecordingContext *)self->_assistantDaemonAudioStartRecordingContext hash];
  v15 = v14 ^ [(MHSchemaMHAssistantDaemonAudioStopRecordingContext *)self->_assistantDaemonAudioStopRecordingContext hash];
  v16 = v15 ^ [(MHSchemaMHAssistantDaemonAudioSessionSetActiveContext *)self->_assistantDaemonAudioSessionSetActiveContext hash];
  v17 = v16 ^ [(MHSchemaMHAssistantDaemonAudioSessionSetInactiveContext *)self->_assistantDaemonAudioSessionSetInactiveContext hash];
  v18 = v13 ^ v17 ^ [(MHSchemaMHAssistantDaemonAudioFetchRouteContext *)self->_assistantDaemonAudioFetchRouteContext hash];
  v19 = [(MHSchemaMHAssistantDaemonAudioRecordingContext *)self->_assistantDaemonAudioRecordingContext hash];
  v20 = v19 ^ [(MHSchemaMHAssistantDaemonAudioRecordingMissedBufferDetected *)self->_assistantDaemonAudioRecordingMissedBufferDetected hash];
  v21 = v20 ^ [(MHSchemaMHAssistantDaemonAudioLateBufferDetected *)self->_assistantDaemonAudioLateBufferDetected hash];
  v22 = v21 ^ [(MHSchemaMHAssistantDaemonAudioRecordingFirstBufferContext *)self->_assistantDaemonAudioRecordingFirstBufferContext hash];
  v23 = v22 ^ [(MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext *)self->_assistantDaemonAudioRecordingLastBufferContext hash];
  v24 = v18 ^ v23 ^ [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionContext *)self->_assistantDaemonAudioRecordingInterruptionContext hash];
  v25 = [(MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 *)self->_assistantDaemonAudioRecordingInterruptionStartedTier1 hash];
  v26 = v25 ^ [(MHSchemaMHAssistantDaemonAudioBluetoothInfo *)self->_assistantDaemonAudioBluetoothInfo hash];
  v27 = v26 ^ [(MHSchemaMHVoiceTriggerTwoShotDetected *)self->_voiceTriggerTwoShotDetected hash];
  v28 = v27 ^ [(MHSchemaMHAssistantDaemonAudioTwoShotTransitionContext *)self->_assistantDaemonAudioTwoShotTransitionContext hash];
  v29 = v28 ^ [(MHSchemaMHVoiceTriggerContext *)self->_voiceTriggerContext hash];
  v30 = v29 ^ [(MHSchemaMHEndpointDetected *)self->_endpointDetected hash];
  v31 = v24 ^ v30 ^ [(MHSchemaMHEndpointLatencyInfoReported *)self->_endpointLatencyInfoReported hash];
  v32 = [(MHSchemaMHVoiceAdBlockerContext *)self->_adblockerContext hash];
  v33 = v32 ^ [(MHSchemaMHOnDeviceEndpointerContext *)self->_onDeviceEndpointerContext hash];
  v34 = v33 ^ [(MHSchemaMHServerEndpointerContext *)self->_serverEndpointerContext hash];
  v35 = v34 ^ [(MHSchemaMHEndpointerUsed *)self->_endpointerUsed hash];
  v36 = v35 ^ [(MHSchemaMHEndpointDelayContext *)self->_endpointDelayContext hash];
  v37 = v36 ^ [(MHSchemaMHMitigationDecisionRecommended *)self->_finalMitigationRecommendation hash];
  v38 = v37 ^ [(MHSchemaMHApplicationPlaybackAttempted *)self->_applicationPlaybackAttempted hash];
  v39 = v31 ^ v38 ^ [(MHSchemaMHSiriLaunchRequestContext *)self->_siriLaunchRequestContext hash];
  v40 = [(MHSchemaMHEndpointerAccessibleContext *)self->_endpointerAccessibleContext hash];
  v41 = v40 ^ [(MHSchemaMHCarplayLanguageMismatch *)self->_carPlayLangaugeMismatched hash];
  v42 = v41 ^ [(MHSchemaMHDarwinConnectedDeviceWakeContext *)self->_darwinConnectedDeviceWakeContext hash];
  v43 = v42 ^ [(MHSchemaMHOdldFalseTriggerMitigated *)self->_odldFalseTriggerMitigated hash];
  v44 = v43 ^ [(MHSchemaMHSpeakerFalseTriggerMitigated *)self->_speakerFalseTriggerMitigated hash];
  v45 = v44 ^ [(MHSchemaMHSiriDirectedSpeechDetectionFailed *)self->_siriDirectedSpeechDetectionFailed hash];
  v46 = v45 ^ [(MHSchemaMHAudioDucked *)self->_audioDucked hash];
  v47 = v46 ^ [(MHSchemaMHAssistantDaemonAudioRecordingFailed *)self->_audioRecordingFailed hash];
  v48 = v39 ^ v47 ^ [(MHSchemaMHRTSFalseRejectDetected *)self->_rtsFalseRejectDetected hash];
  v49 = [(MHSchemaMHTRPCreated *)self->_trpCreated hash];
  v50 = v49 ^ [(MHSchemaMHUserSpeakingContext *)self->_userSpeakingContext hash];
  v51 = v50 ^ [(MHSchemaMHSpeechStopDetected *)self->_speechStopDetected hash];
  v52 = v51 ^ [(MHSchemaMHSpeechDetectorContext *)self->_speechDetectorContext hash];
  v53 = v52 ^ [(MHSchemaMHStoppedListeningForSpeechContinuation *)self->_stoppedListeningForSpeechContinuation hash];
  v54 = v53 ^ [(MHSchemaMHUserEngagementFalseTriggerMitigationEvaluationContext *)self->_userEngagementModelContext hash];
  v55 = v54 ^ [(MHSchemaMHAttendingContext *)self->_attendingContext hash];
  v56 = v55 ^ [(MHSchemaMHCrownPressed *)self->_crownPressed hash];
  v57 = v56 ^ [(MHSchemaMHRaiseToSpeakTriggered *)self->_rtsTriggered hash];
  v58 = v48 ^ v57 ^ [(MHSchemaMHRaiseToSpeakFirstPassPolicyTriggered *)self->_rtsFirstPassPolicyTriggered hash];
  v59 = [(MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade *)self->_rtsSecondPassPolicyDecisionMade hash];
  v60 = v59 ^ [(MHSchemaMHVoiceProfileOnboarded *)self->_voiceProfileOnboarded hash];
  v61 = v60 ^ [(MHSchemaMHVoiceTriggerRePrompted *)self->_voiceTriggerRePrompted hash];
  v62 = v61 ^ [(MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority *)self->_assistantDaemonAudioRecordingFailureInsufficientPriority hash];
  v63 = v62 ^ [(MHSchemaMHVoiceProfileICloudSyncFinished *)self->_voiceProfileICloudSyncFinished hash];
  v64 = v63 ^ [(MHSchemaMHVoiceTriggerRejectDetected *)self->_voiceTriggerRejectDetected hash];
  v65 = v64 ^ [(MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried *)self->_adaptiveSiriVolumeTTSVolumeQueried hash];
  v66 = v65 ^ [(MHSchemaMHAdaptiveSiriVolumeUserIntentDetected *)self->_adaptiveSiriVolumeUserIntentDetected hash];
  v67 = v66 ^ [(MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 *)self->_speakerIdEnrollmentDataReportedTier1 hash];
  v68 = v67 ^ [(MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 *)self->_speakerIdModelSelectedClockSessionInfoTier1 hash];
  return v58 ^ v68 ^ [(MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1 *)self->_speakerIdModelOneSessionReportedTier1 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_338;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_338;
  }

  mhId = [(MHSchemaMHClientEvent *)self mhId];
  mhId2 = [equalCopy mhId];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  mhId3 = [(MHSchemaMHClientEvent *)self mhId];
  if (mhId3)
  {
    v9 = mhId3;
    mhId4 = [(MHSchemaMHClientEvent *)self mhId];
    mhId5 = [equalCopy mhId];
    v12 = [mhId4 isEqual:mhId5];

    if (!v12)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self eventMetadata];
  mhId2 = [equalCopy eventMetadata];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  eventMetadata = [(MHSchemaMHClientEvent *)self eventMetadata];
  if (eventMetadata)
  {
    v14 = eventMetadata;
    eventMetadata2 = [(MHSchemaMHClientEvent *)self eventMetadata];
    eventMetadata3 = [equalCopy eventMetadata];
    v17 = [eventMetadata2 isEqual:eventMetadata3];

    if (!v17)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self acousticFalseTriggerMitigationEvaluationContext];
  mhId2 = [equalCopy acousticFalseTriggerMitigationEvaluationContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  acousticFalseTriggerMitigationEvaluationContext = [(MHSchemaMHClientEvent *)self acousticFalseTriggerMitigationEvaluationContext];
  if (acousticFalseTriggerMitigationEvaluationContext)
  {
    v19 = acousticFalseTriggerMitigationEvaluationContext;
    acousticFalseTriggerMitigationEvaluationContext2 = [(MHSchemaMHClientEvent *)self acousticFalseTriggerMitigationEvaluationContext];
    acousticFalseTriggerMitigationEvaluationContext3 = [equalCopy acousticFalseTriggerMitigationEvaluationContext];
    v22 = [acousticFalseTriggerMitigationEvaluationContext2 isEqual:acousticFalseTriggerMitigationEvaluationContext3];

    if (!v22)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self latticeFalseTriggerMitigationEvaluationContext];
  mhId2 = [equalCopy latticeFalseTriggerMitigationEvaluationContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  latticeFalseTriggerMitigationEvaluationContext = [(MHSchemaMHClientEvent *)self latticeFalseTriggerMitigationEvaluationContext];
  if (latticeFalseTriggerMitigationEvaluationContext)
  {
    v24 = latticeFalseTriggerMitigationEvaluationContext;
    latticeFalseTriggerMitigationEvaluationContext2 = [(MHSchemaMHClientEvent *)self latticeFalseTriggerMitigationEvaluationContext];
    latticeFalseTriggerMitigationEvaluationContext3 = [equalCopy latticeFalseTriggerMitigationEvaluationContext];
    v27 = [latticeFalseTriggerMitigationEvaluationContext2 isEqual:latticeFalseTriggerMitigationEvaluationContext3];

    if (!v27)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self unintendedResponseSuppressionExecutionContext];
  mhId2 = [equalCopy unintendedResponseSuppressionExecutionContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  unintendedResponseSuppressionExecutionContext = [(MHSchemaMHClientEvent *)self unintendedResponseSuppressionExecutionContext];
  if (unintendedResponseSuppressionExecutionContext)
  {
    v29 = unintendedResponseSuppressionExecutionContext;
    unintendedResponseSuppressionExecutionContext2 = [(MHSchemaMHClientEvent *)self unintendedResponseSuppressionExecutionContext];
    unintendedResponseSuppressionExecutionContext3 = [equalCopy unintendedResponseSuppressionExecutionContext];
    v32 = [unintendedResponseSuppressionExecutionContext2 isEqual:unintendedResponseSuppressionExecutionContext3];

    if (!v32)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self coreSpeechPreprocessorCompleted];
  mhId2 = [equalCopy coreSpeechPreprocessorCompleted];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  coreSpeechPreprocessorCompleted = [(MHSchemaMHClientEvent *)self coreSpeechPreprocessorCompleted];
  if (coreSpeechPreprocessorCompleted)
  {
    v34 = coreSpeechPreprocessorCompleted;
    coreSpeechPreprocessorCompleted2 = [(MHSchemaMHClientEvent *)self coreSpeechPreprocessorCompleted];
    coreSpeechPreprocessorCompleted3 = [equalCopy coreSpeechPreprocessorCompleted];
    v37 = [coreSpeechPreprocessorCompleted2 isEqual:coreSpeechPreprocessorCompleted3];

    if (!v37)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self asrAudioConfigureStarted];
  mhId2 = [equalCopy asrAudioConfigureStarted];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  asrAudioConfigureStarted = [(MHSchemaMHClientEvent *)self asrAudioConfigureStarted];
  if (asrAudioConfigureStarted)
  {
    v39 = asrAudioConfigureStarted;
    asrAudioConfigureStarted2 = [(MHSchemaMHClientEvent *)self asrAudioConfigureStarted];
    asrAudioConfigureStarted3 = [equalCopy asrAudioConfigureStarted];
    v42 = [asrAudioConfigureStarted2 isEqual:asrAudioConfigureStarted3];

    if (!v42)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self assistantDaemonAudioInitContext];
  mhId2 = [equalCopy assistantDaemonAudioInitContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  assistantDaemonAudioInitContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioInitContext];
  if (assistantDaemonAudioInitContext)
  {
    v44 = assistantDaemonAudioInitContext;
    assistantDaemonAudioInitContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioInitContext];
    assistantDaemonAudioInitContext3 = [equalCopy assistantDaemonAudioInitContext];
    v47 = [assistantDaemonAudioInitContext2 isEqual:assistantDaemonAudioInitContext3];

    if (!v47)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self assistantDaemonAudioConfigureContext];
  mhId2 = [equalCopy assistantDaemonAudioConfigureContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  assistantDaemonAudioConfigureContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioConfigureContext];
  if (assistantDaemonAudioConfigureContext)
  {
    v49 = assistantDaemonAudioConfigureContext;
    assistantDaemonAudioConfigureContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioConfigureContext];
    assistantDaemonAudioConfigureContext3 = [equalCopy assistantDaemonAudioConfigureContext];
    v52 = [assistantDaemonAudioConfigureContext2 isEqual:assistantDaemonAudioConfigureContext3];

    if (!v52)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrepareContext];
  mhId2 = [equalCopy assistantDaemonAudioPrepareContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  assistantDaemonAudioPrepareContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrepareContext];
  if (assistantDaemonAudioPrepareContext)
  {
    v54 = assistantDaemonAudioPrepareContext;
    assistantDaemonAudioPrepareContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrepareContext];
    assistantDaemonAudioPrepareContext3 = [equalCopy assistantDaemonAudioPrepareContext];
    v57 = [assistantDaemonAudioPrepareContext2 isEqual:assistantDaemonAudioPrepareContext3];

    if (!v57)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrewarmContext];
  mhId2 = [equalCopy assistantDaemonAudioPrewarmContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  assistantDaemonAudioPrewarmContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrewarmContext];
  if (assistantDaemonAudioPrewarmContext)
  {
    v59 = assistantDaemonAudioPrewarmContext;
    assistantDaemonAudioPrewarmContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrewarmContext];
    assistantDaemonAudioPrewarmContext3 = [equalCopy assistantDaemonAudioPrewarmContext];
    v62 = [assistantDaemonAudioPrewarmContext2 isEqual:assistantDaemonAudioPrewarmContext3];

    if (!v62)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStartRecordingContext];
  mhId2 = [equalCopy assistantDaemonAudioStartRecordingContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  assistantDaemonAudioStartRecordingContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStartRecordingContext];
  if (assistantDaemonAudioStartRecordingContext)
  {
    v64 = assistantDaemonAudioStartRecordingContext;
    assistantDaemonAudioStartRecordingContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStartRecordingContext];
    assistantDaemonAudioStartRecordingContext3 = [equalCopy assistantDaemonAudioStartRecordingContext];
    v67 = [assistantDaemonAudioStartRecordingContext2 isEqual:assistantDaemonAudioStartRecordingContext3];

    if (!v67)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStopRecordingContext];
  mhId2 = [equalCopy assistantDaemonAudioStopRecordingContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  assistantDaemonAudioStopRecordingContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStopRecordingContext];
  if (assistantDaemonAudioStopRecordingContext)
  {
    v69 = assistantDaemonAudioStopRecordingContext;
    assistantDaemonAudioStopRecordingContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStopRecordingContext];
    assistantDaemonAudioStopRecordingContext3 = [equalCopy assistantDaemonAudioStopRecordingContext];
    v72 = [assistantDaemonAudioStopRecordingContext2 isEqual:assistantDaemonAudioStopRecordingContext3];

    if (!v72)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetActiveContext];
  mhId2 = [equalCopy assistantDaemonAudioSessionSetActiveContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  assistantDaemonAudioSessionSetActiveContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetActiveContext];
  if (assistantDaemonAudioSessionSetActiveContext)
  {
    v74 = assistantDaemonAudioSessionSetActiveContext;
    assistantDaemonAudioSessionSetActiveContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetActiveContext];
    assistantDaemonAudioSessionSetActiveContext3 = [equalCopy assistantDaemonAudioSessionSetActiveContext];
    v77 = [assistantDaemonAudioSessionSetActiveContext2 isEqual:assistantDaemonAudioSessionSetActiveContext3];

    if (!v77)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetInactiveContext];
  mhId2 = [equalCopy assistantDaemonAudioSessionSetInactiveContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  assistantDaemonAudioSessionSetInactiveContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetInactiveContext];
  if (assistantDaemonAudioSessionSetInactiveContext)
  {
    v79 = assistantDaemonAudioSessionSetInactiveContext;
    assistantDaemonAudioSessionSetInactiveContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetInactiveContext];
    assistantDaemonAudioSessionSetInactiveContext3 = [equalCopy assistantDaemonAudioSessionSetInactiveContext];
    v82 = [assistantDaemonAudioSessionSetInactiveContext2 isEqual:assistantDaemonAudioSessionSetInactiveContext3];

    if (!v82)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self assistantDaemonAudioFetchRouteContext];
  mhId2 = [equalCopy assistantDaemonAudioFetchRouteContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  assistantDaemonAudioFetchRouteContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioFetchRouteContext];
  if (assistantDaemonAudioFetchRouteContext)
  {
    v84 = assistantDaemonAudioFetchRouteContext;
    assistantDaemonAudioFetchRouteContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioFetchRouteContext];
    assistantDaemonAudioFetchRouteContext3 = [equalCopy assistantDaemonAudioFetchRouteContext];
    v87 = [assistantDaemonAudioFetchRouteContext2 isEqual:assistantDaemonAudioFetchRouteContext3];

    if (!v87)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingContext];
  mhId2 = [equalCopy assistantDaemonAudioRecordingContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  assistantDaemonAudioRecordingContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingContext];
  if (assistantDaemonAudioRecordingContext)
  {
    v89 = assistantDaemonAudioRecordingContext;
    assistantDaemonAudioRecordingContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingContext];
    assistantDaemonAudioRecordingContext3 = [equalCopy assistantDaemonAudioRecordingContext];
    v92 = [assistantDaemonAudioRecordingContext2 isEqual:assistantDaemonAudioRecordingContext3];

    if (!v92)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingMissedBufferDetected];
  mhId2 = [equalCopy assistantDaemonAudioRecordingMissedBufferDetected];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  assistantDaemonAudioRecordingMissedBufferDetected = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingMissedBufferDetected];
  if (assistantDaemonAudioRecordingMissedBufferDetected)
  {
    v94 = assistantDaemonAudioRecordingMissedBufferDetected;
    assistantDaemonAudioRecordingMissedBufferDetected2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingMissedBufferDetected];
    assistantDaemonAudioRecordingMissedBufferDetected3 = [equalCopy assistantDaemonAudioRecordingMissedBufferDetected];
    v97 = [assistantDaemonAudioRecordingMissedBufferDetected2 isEqual:assistantDaemonAudioRecordingMissedBufferDetected3];

    if (!v97)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self assistantDaemonAudioLateBufferDetected];
  mhId2 = [equalCopy assistantDaemonAudioLateBufferDetected];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  assistantDaemonAudioLateBufferDetected = [(MHSchemaMHClientEvent *)self assistantDaemonAudioLateBufferDetected];
  if (assistantDaemonAudioLateBufferDetected)
  {
    v99 = assistantDaemonAudioLateBufferDetected;
    assistantDaemonAudioLateBufferDetected2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioLateBufferDetected];
    assistantDaemonAudioLateBufferDetected3 = [equalCopy assistantDaemonAudioLateBufferDetected];
    v102 = [assistantDaemonAudioLateBufferDetected2 isEqual:assistantDaemonAudioLateBufferDetected3];

    if (!v102)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFirstBufferContext];
  mhId2 = [equalCopy assistantDaemonAudioRecordingFirstBufferContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  assistantDaemonAudioRecordingFirstBufferContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFirstBufferContext];
  if (assistantDaemonAudioRecordingFirstBufferContext)
  {
    v104 = assistantDaemonAudioRecordingFirstBufferContext;
    assistantDaemonAudioRecordingFirstBufferContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFirstBufferContext];
    assistantDaemonAudioRecordingFirstBufferContext3 = [equalCopy assistantDaemonAudioRecordingFirstBufferContext];
    v107 = [assistantDaemonAudioRecordingFirstBufferContext2 isEqual:assistantDaemonAudioRecordingFirstBufferContext3];

    if (!v107)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingLastBufferContext];
  mhId2 = [equalCopy assistantDaemonAudioRecordingLastBufferContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  assistantDaemonAudioRecordingLastBufferContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingLastBufferContext];
  if (assistantDaemonAudioRecordingLastBufferContext)
  {
    v109 = assistantDaemonAudioRecordingLastBufferContext;
    assistantDaemonAudioRecordingLastBufferContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingLastBufferContext];
    assistantDaemonAudioRecordingLastBufferContext3 = [equalCopy assistantDaemonAudioRecordingLastBufferContext];
    v112 = [assistantDaemonAudioRecordingLastBufferContext2 isEqual:assistantDaemonAudioRecordingLastBufferContext3];

    if (!v112)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionContext];
  mhId2 = [equalCopy assistantDaemonAudioRecordingInterruptionContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  assistantDaemonAudioRecordingInterruptionContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionContext];
  if (assistantDaemonAudioRecordingInterruptionContext)
  {
    v114 = assistantDaemonAudioRecordingInterruptionContext;
    assistantDaemonAudioRecordingInterruptionContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionContext];
    assistantDaemonAudioRecordingInterruptionContext3 = [equalCopy assistantDaemonAudioRecordingInterruptionContext];
    v117 = [assistantDaemonAudioRecordingInterruptionContext2 isEqual:assistantDaemonAudioRecordingInterruptionContext3];

    if (!v117)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionStartedTier1];
  mhId2 = [equalCopy assistantDaemonAudioRecordingInterruptionStartedTier1];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  assistantDaemonAudioRecordingInterruptionStartedTier1 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionStartedTier1];
  if (assistantDaemonAudioRecordingInterruptionStartedTier1)
  {
    v119 = assistantDaemonAudioRecordingInterruptionStartedTier1;
    assistantDaemonAudioRecordingInterruptionStartedTier12 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionStartedTier1];
    assistantDaemonAudioRecordingInterruptionStartedTier13 = [equalCopy assistantDaemonAudioRecordingInterruptionStartedTier1];
    v122 = [assistantDaemonAudioRecordingInterruptionStartedTier12 isEqual:assistantDaemonAudioRecordingInterruptionStartedTier13];

    if (!v122)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self assistantDaemonAudioBluetoothInfo];
  mhId2 = [equalCopy assistantDaemonAudioBluetoothInfo];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  assistantDaemonAudioBluetoothInfo = [(MHSchemaMHClientEvent *)self assistantDaemonAudioBluetoothInfo];
  if (assistantDaemonAudioBluetoothInfo)
  {
    v124 = assistantDaemonAudioBluetoothInfo;
    assistantDaemonAudioBluetoothInfo2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioBluetoothInfo];
    assistantDaemonAudioBluetoothInfo3 = [equalCopy assistantDaemonAudioBluetoothInfo];
    v127 = [assistantDaemonAudioBluetoothInfo2 isEqual:assistantDaemonAudioBluetoothInfo3];

    if (!v127)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self voiceTriggerTwoShotDetected];
  mhId2 = [equalCopy voiceTriggerTwoShotDetected];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  voiceTriggerTwoShotDetected = [(MHSchemaMHClientEvent *)self voiceTriggerTwoShotDetected];
  if (voiceTriggerTwoShotDetected)
  {
    v129 = voiceTriggerTwoShotDetected;
    voiceTriggerTwoShotDetected2 = [(MHSchemaMHClientEvent *)self voiceTriggerTwoShotDetected];
    voiceTriggerTwoShotDetected3 = [equalCopy voiceTriggerTwoShotDetected];
    v132 = [voiceTriggerTwoShotDetected2 isEqual:voiceTriggerTwoShotDetected3];

    if (!v132)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self assistantDaemonAudioTwoShotTransitionContext];
  mhId2 = [equalCopy assistantDaemonAudioTwoShotTransitionContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  assistantDaemonAudioTwoShotTransitionContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioTwoShotTransitionContext];
  if (assistantDaemonAudioTwoShotTransitionContext)
  {
    v134 = assistantDaemonAudioTwoShotTransitionContext;
    assistantDaemonAudioTwoShotTransitionContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioTwoShotTransitionContext];
    assistantDaemonAudioTwoShotTransitionContext3 = [equalCopy assistantDaemonAudioTwoShotTransitionContext];
    v137 = [assistantDaemonAudioTwoShotTransitionContext2 isEqual:assistantDaemonAudioTwoShotTransitionContext3];

    if (!v137)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self voiceTriggerContext];
  mhId2 = [equalCopy voiceTriggerContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  voiceTriggerContext = [(MHSchemaMHClientEvent *)self voiceTriggerContext];
  if (voiceTriggerContext)
  {
    v139 = voiceTriggerContext;
    voiceTriggerContext2 = [(MHSchemaMHClientEvent *)self voiceTriggerContext];
    voiceTriggerContext3 = [equalCopy voiceTriggerContext];
    v142 = [voiceTriggerContext2 isEqual:voiceTriggerContext3];

    if (!v142)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self endpointDetected];
  mhId2 = [equalCopy endpointDetected];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  endpointDetected = [(MHSchemaMHClientEvent *)self endpointDetected];
  if (endpointDetected)
  {
    v144 = endpointDetected;
    endpointDetected2 = [(MHSchemaMHClientEvent *)self endpointDetected];
    endpointDetected3 = [equalCopy endpointDetected];
    v147 = [endpointDetected2 isEqual:endpointDetected3];

    if (!v147)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self endpointLatencyInfoReported];
  mhId2 = [equalCopy endpointLatencyInfoReported];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  endpointLatencyInfoReported = [(MHSchemaMHClientEvent *)self endpointLatencyInfoReported];
  if (endpointLatencyInfoReported)
  {
    v149 = endpointLatencyInfoReported;
    endpointLatencyInfoReported2 = [(MHSchemaMHClientEvent *)self endpointLatencyInfoReported];
    endpointLatencyInfoReported3 = [equalCopy endpointLatencyInfoReported];
    v152 = [endpointLatencyInfoReported2 isEqual:endpointLatencyInfoReported3];

    if (!v152)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self adblockerContext];
  mhId2 = [equalCopy adblockerContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  adblockerContext = [(MHSchemaMHClientEvent *)self adblockerContext];
  if (adblockerContext)
  {
    v154 = adblockerContext;
    adblockerContext2 = [(MHSchemaMHClientEvent *)self adblockerContext];
    adblockerContext3 = [equalCopy adblockerContext];
    v157 = [adblockerContext2 isEqual:adblockerContext3];

    if (!v157)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self onDeviceEndpointerContext];
  mhId2 = [equalCopy onDeviceEndpointerContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  onDeviceEndpointerContext = [(MHSchemaMHClientEvent *)self onDeviceEndpointerContext];
  if (onDeviceEndpointerContext)
  {
    v159 = onDeviceEndpointerContext;
    onDeviceEndpointerContext2 = [(MHSchemaMHClientEvent *)self onDeviceEndpointerContext];
    onDeviceEndpointerContext3 = [equalCopy onDeviceEndpointerContext];
    v162 = [onDeviceEndpointerContext2 isEqual:onDeviceEndpointerContext3];

    if (!v162)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self serverEndpointerContext];
  mhId2 = [equalCopy serverEndpointerContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  serverEndpointerContext = [(MHSchemaMHClientEvent *)self serverEndpointerContext];
  if (serverEndpointerContext)
  {
    v164 = serverEndpointerContext;
    serverEndpointerContext2 = [(MHSchemaMHClientEvent *)self serverEndpointerContext];
    serverEndpointerContext3 = [equalCopy serverEndpointerContext];
    v167 = [serverEndpointerContext2 isEqual:serverEndpointerContext3];

    if (!v167)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self endpointerUsed];
  mhId2 = [equalCopy endpointerUsed];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  endpointerUsed = [(MHSchemaMHClientEvent *)self endpointerUsed];
  if (endpointerUsed)
  {
    v169 = endpointerUsed;
    endpointerUsed2 = [(MHSchemaMHClientEvent *)self endpointerUsed];
    endpointerUsed3 = [equalCopy endpointerUsed];
    v172 = [endpointerUsed2 isEqual:endpointerUsed3];

    if (!v172)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self endpointDelayContext];
  mhId2 = [equalCopy endpointDelayContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  endpointDelayContext = [(MHSchemaMHClientEvent *)self endpointDelayContext];
  if (endpointDelayContext)
  {
    v174 = endpointDelayContext;
    endpointDelayContext2 = [(MHSchemaMHClientEvent *)self endpointDelayContext];
    endpointDelayContext3 = [equalCopy endpointDelayContext];
    v177 = [endpointDelayContext2 isEqual:endpointDelayContext3];

    if (!v177)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self finalMitigationRecommendation];
  mhId2 = [equalCopy finalMitigationRecommendation];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  finalMitigationRecommendation = [(MHSchemaMHClientEvent *)self finalMitigationRecommendation];
  if (finalMitigationRecommendation)
  {
    v179 = finalMitigationRecommendation;
    finalMitigationRecommendation2 = [(MHSchemaMHClientEvent *)self finalMitigationRecommendation];
    finalMitigationRecommendation3 = [equalCopy finalMitigationRecommendation];
    v182 = [finalMitigationRecommendation2 isEqual:finalMitigationRecommendation3];

    if (!v182)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self applicationPlaybackAttempted];
  mhId2 = [equalCopy applicationPlaybackAttempted];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  applicationPlaybackAttempted = [(MHSchemaMHClientEvent *)self applicationPlaybackAttempted];
  if (applicationPlaybackAttempted)
  {
    v184 = applicationPlaybackAttempted;
    applicationPlaybackAttempted2 = [(MHSchemaMHClientEvent *)self applicationPlaybackAttempted];
    applicationPlaybackAttempted3 = [equalCopy applicationPlaybackAttempted];
    v187 = [applicationPlaybackAttempted2 isEqual:applicationPlaybackAttempted3];

    if (!v187)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self siriLaunchRequestContext];
  mhId2 = [equalCopy siriLaunchRequestContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  siriLaunchRequestContext = [(MHSchemaMHClientEvent *)self siriLaunchRequestContext];
  if (siriLaunchRequestContext)
  {
    v189 = siriLaunchRequestContext;
    siriLaunchRequestContext2 = [(MHSchemaMHClientEvent *)self siriLaunchRequestContext];
    siriLaunchRequestContext3 = [equalCopy siriLaunchRequestContext];
    v192 = [siriLaunchRequestContext2 isEqual:siriLaunchRequestContext3];

    if (!v192)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self endpointerAccessibleContext];
  mhId2 = [equalCopy endpointerAccessibleContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  endpointerAccessibleContext = [(MHSchemaMHClientEvent *)self endpointerAccessibleContext];
  if (endpointerAccessibleContext)
  {
    v194 = endpointerAccessibleContext;
    endpointerAccessibleContext2 = [(MHSchemaMHClientEvent *)self endpointerAccessibleContext];
    endpointerAccessibleContext3 = [equalCopy endpointerAccessibleContext];
    v197 = [endpointerAccessibleContext2 isEqual:endpointerAccessibleContext3];

    if (!v197)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self carPlayLangaugeMismatched];
  mhId2 = [equalCopy carPlayLangaugeMismatched];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  carPlayLangaugeMismatched = [(MHSchemaMHClientEvent *)self carPlayLangaugeMismatched];
  if (carPlayLangaugeMismatched)
  {
    v199 = carPlayLangaugeMismatched;
    carPlayLangaugeMismatched2 = [(MHSchemaMHClientEvent *)self carPlayLangaugeMismatched];
    carPlayLangaugeMismatched3 = [equalCopy carPlayLangaugeMismatched];
    v202 = [carPlayLangaugeMismatched2 isEqual:carPlayLangaugeMismatched3];

    if (!v202)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self darwinConnectedDeviceWakeContext];
  mhId2 = [equalCopy darwinConnectedDeviceWakeContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  darwinConnectedDeviceWakeContext = [(MHSchemaMHClientEvent *)self darwinConnectedDeviceWakeContext];
  if (darwinConnectedDeviceWakeContext)
  {
    v204 = darwinConnectedDeviceWakeContext;
    darwinConnectedDeviceWakeContext2 = [(MHSchemaMHClientEvent *)self darwinConnectedDeviceWakeContext];
    darwinConnectedDeviceWakeContext3 = [equalCopy darwinConnectedDeviceWakeContext];
    v207 = [darwinConnectedDeviceWakeContext2 isEqual:darwinConnectedDeviceWakeContext3];

    if (!v207)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self odldFalseTriggerMitigated];
  mhId2 = [equalCopy odldFalseTriggerMitigated];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  odldFalseTriggerMitigated = [(MHSchemaMHClientEvent *)self odldFalseTriggerMitigated];
  if (odldFalseTriggerMitigated)
  {
    v209 = odldFalseTriggerMitigated;
    odldFalseTriggerMitigated2 = [(MHSchemaMHClientEvent *)self odldFalseTriggerMitigated];
    odldFalseTriggerMitigated3 = [equalCopy odldFalseTriggerMitigated];
    v212 = [odldFalseTriggerMitigated2 isEqual:odldFalseTriggerMitigated3];

    if (!v212)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self speakerFalseTriggerMitigated];
  mhId2 = [equalCopy speakerFalseTriggerMitigated];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  speakerFalseTriggerMitigated = [(MHSchemaMHClientEvent *)self speakerFalseTriggerMitigated];
  if (speakerFalseTriggerMitigated)
  {
    v214 = speakerFalseTriggerMitigated;
    speakerFalseTriggerMitigated2 = [(MHSchemaMHClientEvent *)self speakerFalseTriggerMitigated];
    speakerFalseTriggerMitigated3 = [equalCopy speakerFalseTriggerMitigated];
    v217 = [speakerFalseTriggerMitigated2 isEqual:speakerFalseTriggerMitigated3];

    if (!v217)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self siriDirectedSpeechDetectionFailed];
  mhId2 = [equalCopy siriDirectedSpeechDetectionFailed];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  siriDirectedSpeechDetectionFailed = [(MHSchemaMHClientEvent *)self siriDirectedSpeechDetectionFailed];
  if (siriDirectedSpeechDetectionFailed)
  {
    v219 = siriDirectedSpeechDetectionFailed;
    siriDirectedSpeechDetectionFailed2 = [(MHSchemaMHClientEvent *)self siriDirectedSpeechDetectionFailed];
    siriDirectedSpeechDetectionFailed3 = [equalCopy siriDirectedSpeechDetectionFailed];
    v222 = [siriDirectedSpeechDetectionFailed2 isEqual:siriDirectedSpeechDetectionFailed3];

    if (!v222)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self audioDucked];
  mhId2 = [equalCopy audioDucked];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  audioDucked = [(MHSchemaMHClientEvent *)self audioDucked];
  if (audioDucked)
  {
    v224 = audioDucked;
    audioDucked2 = [(MHSchemaMHClientEvent *)self audioDucked];
    audioDucked3 = [equalCopy audioDucked];
    v227 = [audioDucked2 isEqual:audioDucked3];

    if (!v227)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self audioRecordingFailed];
  mhId2 = [equalCopy audioRecordingFailed];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  audioRecordingFailed = [(MHSchemaMHClientEvent *)self audioRecordingFailed];
  if (audioRecordingFailed)
  {
    v229 = audioRecordingFailed;
    audioRecordingFailed2 = [(MHSchemaMHClientEvent *)self audioRecordingFailed];
    audioRecordingFailed3 = [equalCopy audioRecordingFailed];
    v232 = [audioRecordingFailed2 isEqual:audioRecordingFailed3];

    if (!v232)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self rtsFalseRejectDetected];
  mhId2 = [equalCopy rtsFalseRejectDetected];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  rtsFalseRejectDetected = [(MHSchemaMHClientEvent *)self rtsFalseRejectDetected];
  if (rtsFalseRejectDetected)
  {
    v234 = rtsFalseRejectDetected;
    rtsFalseRejectDetected2 = [(MHSchemaMHClientEvent *)self rtsFalseRejectDetected];
    rtsFalseRejectDetected3 = [equalCopy rtsFalseRejectDetected];
    v237 = [rtsFalseRejectDetected2 isEqual:rtsFalseRejectDetected3];

    if (!v237)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self trpCreated];
  mhId2 = [equalCopy trpCreated];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  trpCreated = [(MHSchemaMHClientEvent *)self trpCreated];
  if (trpCreated)
  {
    v239 = trpCreated;
    trpCreated2 = [(MHSchemaMHClientEvent *)self trpCreated];
    trpCreated3 = [equalCopy trpCreated];
    v242 = [trpCreated2 isEqual:trpCreated3];

    if (!v242)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self userSpeakingContext];
  mhId2 = [equalCopy userSpeakingContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  userSpeakingContext = [(MHSchemaMHClientEvent *)self userSpeakingContext];
  if (userSpeakingContext)
  {
    v244 = userSpeakingContext;
    userSpeakingContext2 = [(MHSchemaMHClientEvent *)self userSpeakingContext];
    userSpeakingContext3 = [equalCopy userSpeakingContext];
    v247 = [userSpeakingContext2 isEqual:userSpeakingContext3];

    if (!v247)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self speechStopDetected];
  mhId2 = [equalCopy speechStopDetected];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  speechStopDetected = [(MHSchemaMHClientEvent *)self speechStopDetected];
  if (speechStopDetected)
  {
    v249 = speechStopDetected;
    speechStopDetected2 = [(MHSchemaMHClientEvent *)self speechStopDetected];
    speechStopDetected3 = [equalCopy speechStopDetected];
    v252 = [speechStopDetected2 isEqual:speechStopDetected3];

    if (!v252)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self speechDetectorContext];
  mhId2 = [equalCopy speechDetectorContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  speechDetectorContext = [(MHSchemaMHClientEvent *)self speechDetectorContext];
  if (speechDetectorContext)
  {
    v254 = speechDetectorContext;
    speechDetectorContext2 = [(MHSchemaMHClientEvent *)self speechDetectorContext];
    speechDetectorContext3 = [equalCopy speechDetectorContext];
    v257 = [speechDetectorContext2 isEqual:speechDetectorContext3];

    if (!v257)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self stoppedListeningForSpeechContinuation];
  mhId2 = [equalCopy stoppedListeningForSpeechContinuation];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  stoppedListeningForSpeechContinuation = [(MHSchemaMHClientEvent *)self stoppedListeningForSpeechContinuation];
  if (stoppedListeningForSpeechContinuation)
  {
    v259 = stoppedListeningForSpeechContinuation;
    stoppedListeningForSpeechContinuation2 = [(MHSchemaMHClientEvent *)self stoppedListeningForSpeechContinuation];
    stoppedListeningForSpeechContinuation3 = [equalCopy stoppedListeningForSpeechContinuation];
    v262 = [stoppedListeningForSpeechContinuation2 isEqual:stoppedListeningForSpeechContinuation3];

    if (!v262)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self userEngagementModelContext];
  mhId2 = [equalCopy userEngagementModelContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  userEngagementModelContext = [(MHSchemaMHClientEvent *)self userEngagementModelContext];
  if (userEngagementModelContext)
  {
    v264 = userEngagementModelContext;
    userEngagementModelContext2 = [(MHSchemaMHClientEvent *)self userEngagementModelContext];
    userEngagementModelContext3 = [equalCopy userEngagementModelContext];
    v267 = [userEngagementModelContext2 isEqual:userEngagementModelContext3];

    if (!v267)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self attendingContext];
  mhId2 = [equalCopy attendingContext];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  attendingContext = [(MHSchemaMHClientEvent *)self attendingContext];
  if (attendingContext)
  {
    v269 = attendingContext;
    attendingContext2 = [(MHSchemaMHClientEvent *)self attendingContext];
    attendingContext3 = [equalCopy attendingContext];
    v272 = [attendingContext2 isEqual:attendingContext3];

    if (!v272)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self crownPressed];
  mhId2 = [equalCopy crownPressed];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  crownPressed = [(MHSchemaMHClientEvent *)self crownPressed];
  if (crownPressed)
  {
    v274 = crownPressed;
    crownPressed2 = [(MHSchemaMHClientEvent *)self crownPressed];
    crownPressed3 = [equalCopy crownPressed];
    v277 = [crownPressed2 isEqual:crownPressed3];

    if (!v277)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self rtsTriggered];
  mhId2 = [equalCopy rtsTriggered];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  rtsTriggered = [(MHSchemaMHClientEvent *)self rtsTriggered];
  if (rtsTriggered)
  {
    v279 = rtsTriggered;
    rtsTriggered2 = [(MHSchemaMHClientEvent *)self rtsTriggered];
    rtsTriggered3 = [equalCopy rtsTriggered];
    v282 = [rtsTriggered2 isEqual:rtsTriggered3];

    if (!v282)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self rtsFirstPassPolicyTriggered];
  mhId2 = [equalCopy rtsFirstPassPolicyTriggered];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  rtsFirstPassPolicyTriggered = [(MHSchemaMHClientEvent *)self rtsFirstPassPolicyTriggered];
  if (rtsFirstPassPolicyTriggered)
  {
    v284 = rtsFirstPassPolicyTriggered;
    rtsFirstPassPolicyTriggered2 = [(MHSchemaMHClientEvent *)self rtsFirstPassPolicyTriggered];
    rtsFirstPassPolicyTriggered3 = [equalCopy rtsFirstPassPolicyTriggered];
    v287 = [rtsFirstPassPolicyTriggered2 isEqual:rtsFirstPassPolicyTriggered3];

    if (!v287)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self rtsSecondPassPolicyDecisionMade];
  mhId2 = [equalCopy rtsSecondPassPolicyDecisionMade];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  rtsSecondPassPolicyDecisionMade = [(MHSchemaMHClientEvent *)self rtsSecondPassPolicyDecisionMade];
  if (rtsSecondPassPolicyDecisionMade)
  {
    v289 = rtsSecondPassPolicyDecisionMade;
    rtsSecondPassPolicyDecisionMade2 = [(MHSchemaMHClientEvent *)self rtsSecondPassPolicyDecisionMade];
    rtsSecondPassPolicyDecisionMade3 = [equalCopy rtsSecondPassPolicyDecisionMade];
    v292 = [rtsSecondPassPolicyDecisionMade2 isEqual:rtsSecondPassPolicyDecisionMade3];

    if (!v292)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self voiceProfileOnboarded];
  mhId2 = [equalCopy voiceProfileOnboarded];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  voiceProfileOnboarded = [(MHSchemaMHClientEvent *)self voiceProfileOnboarded];
  if (voiceProfileOnboarded)
  {
    v294 = voiceProfileOnboarded;
    voiceProfileOnboarded2 = [(MHSchemaMHClientEvent *)self voiceProfileOnboarded];
    voiceProfileOnboarded3 = [equalCopy voiceProfileOnboarded];
    v297 = [voiceProfileOnboarded2 isEqual:voiceProfileOnboarded3];

    if (!v297)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self voiceTriggerRePrompted];
  mhId2 = [equalCopy voiceTriggerRePrompted];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  voiceTriggerRePrompted = [(MHSchemaMHClientEvent *)self voiceTriggerRePrompted];
  if (voiceTriggerRePrompted)
  {
    v299 = voiceTriggerRePrompted;
    voiceTriggerRePrompted2 = [(MHSchemaMHClientEvent *)self voiceTriggerRePrompted];
    voiceTriggerRePrompted3 = [equalCopy voiceTriggerRePrompted];
    v302 = [voiceTriggerRePrompted2 isEqual:voiceTriggerRePrompted3];

    if (!v302)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFailureInsufficientPriority];
  mhId2 = [equalCopy assistantDaemonAudioRecordingFailureInsufficientPriority];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  assistantDaemonAudioRecordingFailureInsufficientPriority = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFailureInsufficientPriority];
  if (assistantDaemonAudioRecordingFailureInsufficientPriority)
  {
    v304 = assistantDaemonAudioRecordingFailureInsufficientPriority;
    assistantDaemonAudioRecordingFailureInsufficientPriority2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFailureInsufficientPriority];
    assistantDaemonAudioRecordingFailureInsufficientPriority3 = [equalCopy assistantDaemonAudioRecordingFailureInsufficientPriority];
    v307 = [assistantDaemonAudioRecordingFailureInsufficientPriority2 isEqual:assistantDaemonAudioRecordingFailureInsufficientPriority3];

    if (!v307)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self voiceProfileICloudSyncFinished];
  mhId2 = [equalCopy voiceProfileICloudSyncFinished];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  voiceProfileICloudSyncFinished = [(MHSchemaMHClientEvent *)self voiceProfileICloudSyncFinished];
  if (voiceProfileICloudSyncFinished)
  {
    v309 = voiceProfileICloudSyncFinished;
    voiceProfileICloudSyncFinished2 = [(MHSchemaMHClientEvent *)self voiceProfileICloudSyncFinished];
    voiceProfileICloudSyncFinished3 = [equalCopy voiceProfileICloudSyncFinished];
    v312 = [voiceProfileICloudSyncFinished2 isEqual:voiceProfileICloudSyncFinished3];

    if (!v312)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self voiceTriggerRejectDetected];
  mhId2 = [equalCopy voiceTriggerRejectDetected];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  voiceTriggerRejectDetected = [(MHSchemaMHClientEvent *)self voiceTriggerRejectDetected];
  if (voiceTriggerRejectDetected)
  {
    v314 = voiceTriggerRejectDetected;
    voiceTriggerRejectDetected2 = [(MHSchemaMHClientEvent *)self voiceTriggerRejectDetected];
    voiceTriggerRejectDetected3 = [equalCopy voiceTriggerRejectDetected];
    v317 = [voiceTriggerRejectDetected2 isEqual:voiceTriggerRejectDetected3];

    if (!v317)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeTTSVolumeQueried];
  mhId2 = [equalCopy adaptiveSiriVolumeTTSVolumeQueried];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  adaptiveSiriVolumeTTSVolumeQueried = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeTTSVolumeQueried];
  if (adaptiveSiriVolumeTTSVolumeQueried)
  {
    v319 = adaptiveSiriVolumeTTSVolumeQueried;
    adaptiveSiriVolumeTTSVolumeQueried2 = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeTTSVolumeQueried];
    adaptiveSiriVolumeTTSVolumeQueried3 = [equalCopy adaptiveSiriVolumeTTSVolumeQueried];
    v322 = [adaptiveSiriVolumeTTSVolumeQueried2 isEqual:adaptiveSiriVolumeTTSVolumeQueried3];

    if (!v322)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeUserIntentDetected];
  mhId2 = [equalCopy adaptiveSiriVolumeUserIntentDetected];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  adaptiveSiriVolumeUserIntentDetected = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeUserIntentDetected];
  if (adaptiveSiriVolumeUserIntentDetected)
  {
    v324 = adaptiveSiriVolumeUserIntentDetected;
    adaptiveSiriVolumeUserIntentDetected2 = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeUserIntentDetected];
    adaptiveSiriVolumeUserIntentDetected3 = [equalCopy adaptiveSiriVolumeUserIntentDetected];
    v327 = [adaptiveSiriVolumeUserIntentDetected2 isEqual:adaptiveSiriVolumeUserIntentDetected3];

    if (!v327)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self speakerIdEnrollmentDataReportedTier1];
  mhId2 = [equalCopy speakerIdEnrollmentDataReportedTier1];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  speakerIdEnrollmentDataReportedTier1 = [(MHSchemaMHClientEvent *)self speakerIdEnrollmentDataReportedTier1];
  if (speakerIdEnrollmentDataReportedTier1)
  {
    v329 = speakerIdEnrollmentDataReportedTier1;
    speakerIdEnrollmentDataReportedTier12 = [(MHSchemaMHClientEvent *)self speakerIdEnrollmentDataReportedTier1];
    speakerIdEnrollmentDataReportedTier13 = [equalCopy speakerIdEnrollmentDataReportedTier1];
    v332 = [speakerIdEnrollmentDataReportedTier12 isEqual:speakerIdEnrollmentDataReportedTier13];

    if (!v332)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self speakerIdModelSelectedClockSessionInfoTier1];
  mhId2 = [equalCopy speakerIdModelSelectedClockSessionInfoTier1];
  if ((mhId != 0) == (mhId2 == 0))
  {
    goto LABEL_337;
  }

  speakerIdModelSelectedClockSessionInfoTier1 = [(MHSchemaMHClientEvent *)self speakerIdModelSelectedClockSessionInfoTier1];
  if (speakerIdModelSelectedClockSessionInfoTier1)
  {
    v334 = speakerIdModelSelectedClockSessionInfoTier1;
    speakerIdModelSelectedClockSessionInfoTier12 = [(MHSchemaMHClientEvent *)self speakerIdModelSelectedClockSessionInfoTier1];
    speakerIdModelSelectedClockSessionInfoTier13 = [equalCopy speakerIdModelSelectedClockSessionInfoTier1];
    v337 = [speakerIdModelSelectedClockSessionInfoTier12 isEqual:speakerIdModelSelectedClockSessionInfoTier13];

    if (!v337)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  mhId = [(MHSchemaMHClientEvent *)self speakerIdModelOneSessionReportedTier1];
  mhId2 = [equalCopy speakerIdModelOneSessionReportedTier1];
  if ((mhId != 0) != (mhId2 == 0))
  {
    speakerIdModelOneSessionReportedTier1 = [(MHSchemaMHClientEvent *)self speakerIdModelOneSessionReportedTier1];
    if (!speakerIdModelOneSessionReportedTier1)
    {

LABEL_341:
      v343 = 1;
      goto LABEL_339;
    }

    v339 = speakerIdModelOneSessionReportedTier1;
    speakerIdModelOneSessionReportedTier12 = [(MHSchemaMHClientEvent *)self speakerIdModelOneSessionReportedTier1];
    speakerIdModelOneSessionReportedTier13 = [equalCopy speakerIdModelOneSessionReportedTier1];
    v342 = [speakerIdModelOneSessionReportedTier12 isEqual:speakerIdModelOneSessionReportedTier13];

    if (v342)
    {
      goto LABEL_341;
    }
  }

  else
  {
LABEL_337:
  }

LABEL_338:
  v343 = 0;
LABEL_339:

  return v343;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  mhId = [(MHSchemaMHClientEvent *)self mhId];

  if (mhId)
  {
    mhId2 = [(MHSchemaMHClientEvent *)self mhId];
    PBDataWriterWriteSubmessage();
  }

  eventMetadata = [(MHSchemaMHClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(MHSchemaMHClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  acousticFalseTriggerMitigationEvaluationContext = [(MHSchemaMHClientEvent *)self acousticFalseTriggerMitigationEvaluationContext];

  if (acousticFalseTriggerMitigationEvaluationContext)
  {
    acousticFalseTriggerMitigationEvaluationContext2 = [(MHSchemaMHClientEvent *)self acousticFalseTriggerMitigationEvaluationContext];
    PBDataWriterWriteSubmessage();
  }

  latticeFalseTriggerMitigationEvaluationContext = [(MHSchemaMHClientEvent *)self latticeFalseTriggerMitigationEvaluationContext];

  if (latticeFalseTriggerMitigationEvaluationContext)
  {
    latticeFalseTriggerMitigationEvaluationContext2 = [(MHSchemaMHClientEvent *)self latticeFalseTriggerMitigationEvaluationContext];
    PBDataWriterWriteSubmessage();
  }

  unintendedResponseSuppressionExecutionContext = [(MHSchemaMHClientEvent *)self unintendedResponseSuppressionExecutionContext];

  if (unintendedResponseSuppressionExecutionContext)
  {
    unintendedResponseSuppressionExecutionContext2 = [(MHSchemaMHClientEvent *)self unintendedResponseSuppressionExecutionContext];
    PBDataWriterWriteSubmessage();
  }

  coreSpeechPreprocessorCompleted = [(MHSchemaMHClientEvent *)self coreSpeechPreprocessorCompleted];

  if (coreSpeechPreprocessorCompleted)
  {
    coreSpeechPreprocessorCompleted2 = [(MHSchemaMHClientEvent *)self coreSpeechPreprocessorCompleted];
    PBDataWriterWriteSubmessage();
  }

  asrAudioConfigureStarted = [(MHSchemaMHClientEvent *)self asrAudioConfigureStarted];

  if (asrAudioConfigureStarted)
  {
    asrAudioConfigureStarted2 = [(MHSchemaMHClientEvent *)self asrAudioConfigureStarted];
    PBDataWriterWriteSubmessage();
  }

  assistantDaemonAudioInitContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioInitContext];

  if (assistantDaemonAudioInitContext)
  {
    assistantDaemonAudioInitContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioInitContext];
    PBDataWriterWriteSubmessage();
  }

  assistantDaemonAudioConfigureContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioConfigureContext];

  if (assistantDaemonAudioConfigureContext)
  {
    assistantDaemonAudioConfigureContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioConfigureContext];
    PBDataWriterWriteSubmessage();
  }

  assistantDaemonAudioPrepareContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrepareContext];

  if (assistantDaemonAudioPrepareContext)
  {
    assistantDaemonAudioPrepareContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrepareContext];
    PBDataWriterWriteSubmessage();
  }

  assistantDaemonAudioPrewarmContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrewarmContext];

  if (assistantDaemonAudioPrewarmContext)
  {
    assistantDaemonAudioPrewarmContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrewarmContext];
    PBDataWriterWriteSubmessage();
  }

  assistantDaemonAudioStartRecordingContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStartRecordingContext];

  if (assistantDaemonAudioStartRecordingContext)
  {
    assistantDaemonAudioStartRecordingContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStartRecordingContext];
    PBDataWriterWriteSubmessage();
  }

  assistantDaemonAudioStopRecordingContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStopRecordingContext];

  if (assistantDaemonAudioStopRecordingContext)
  {
    assistantDaemonAudioStopRecordingContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStopRecordingContext];
    PBDataWriterWriteSubmessage();
  }

  assistantDaemonAudioSessionSetActiveContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetActiveContext];

  if (assistantDaemonAudioSessionSetActiveContext)
  {
    assistantDaemonAudioSessionSetActiveContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetActiveContext];
    PBDataWriterWriteSubmessage();
  }

  assistantDaemonAudioSessionSetInactiveContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetInactiveContext];

  if (assistantDaemonAudioSessionSetInactiveContext)
  {
    assistantDaemonAudioSessionSetInactiveContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetInactiveContext];
    PBDataWriterWriteSubmessage();
  }

  assistantDaemonAudioFetchRouteContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioFetchRouteContext];

  if (assistantDaemonAudioFetchRouteContext)
  {
    assistantDaemonAudioFetchRouteContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioFetchRouteContext];
    PBDataWriterWriteSubmessage();
  }

  assistantDaemonAudioRecordingContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingContext];

  if (assistantDaemonAudioRecordingContext)
  {
    assistantDaemonAudioRecordingContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingContext];
    PBDataWriterWriteSubmessage();
  }

  assistantDaemonAudioRecordingMissedBufferDetected = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingMissedBufferDetected];

  if (assistantDaemonAudioRecordingMissedBufferDetected)
  {
    assistantDaemonAudioRecordingMissedBufferDetected2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingMissedBufferDetected];
    PBDataWriterWriteSubmessage();
  }

  assistantDaemonAudioLateBufferDetected = [(MHSchemaMHClientEvent *)self assistantDaemonAudioLateBufferDetected];

  if (assistantDaemonAudioLateBufferDetected)
  {
    assistantDaemonAudioLateBufferDetected2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioLateBufferDetected];
    PBDataWriterWriteSubmessage();
  }

  assistantDaemonAudioRecordingFirstBufferContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFirstBufferContext];

  if (assistantDaemonAudioRecordingFirstBufferContext)
  {
    assistantDaemonAudioRecordingFirstBufferContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFirstBufferContext];
    PBDataWriterWriteSubmessage();
  }

  assistantDaemonAudioRecordingLastBufferContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingLastBufferContext];

  if (assistantDaemonAudioRecordingLastBufferContext)
  {
    assistantDaemonAudioRecordingLastBufferContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingLastBufferContext];
    PBDataWriterWriteSubmessage();
  }

  assistantDaemonAudioRecordingInterruptionContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionContext];

  if (assistantDaemonAudioRecordingInterruptionContext)
  {
    assistantDaemonAudioRecordingInterruptionContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionContext];
    PBDataWriterWriteSubmessage();
  }

  assistantDaemonAudioRecordingInterruptionStartedTier1 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionStartedTier1];

  if (assistantDaemonAudioRecordingInterruptionStartedTier1)
  {
    assistantDaemonAudioRecordingInterruptionStartedTier12 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionStartedTier1];
    PBDataWriterWriteSubmessage();
  }

  assistantDaemonAudioBluetoothInfo = [(MHSchemaMHClientEvent *)self assistantDaemonAudioBluetoothInfo];

  if (assistantDaemonAudioBluetoothInfo)
  {
    assistantDaemonAudioBluetoothInfo2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioBluetoothInfo];
    PBDataWriterWriteSubmessage();
  }

  voiceTriggerTwoShotDetected = [(MHSchemaMHClientEvent *)self voiceTriggerTwoShotDetected];

  if (voiceTriggerTwoShotDetected)
  {
    voiceTriggerTwoShotDetected2 = [(MHSchemaMHClientEvent *)self voiceTriggerTwoShotDetected];
    PBDataWriterWriteSubmessage();
  }

  assistantDaemonAudioTwoShotTransitionContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioTwoShotTransitionContext];

  if (assistantDaemonAudioTwoShotTransitionContext)
  {
    assistantDaemonAudioTwoShotTransitionContext2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioTwoShotTransitionContext];
    PBDataWriterWriteSubmessage();
  }

  voiceTriggerContext = [(MHSchemaMHClientEvent *)self voiceTriggerContext];

  if (voiceTriggerContext)
  {
    voiceTriggerContext2 = [(MHSchemaMHClientEvent *)self voiceTriggerContext];
    PBDataWriterWriteSubmessage();
  }

  endpointDetected = [(MHSchemaMHClientEvent *)self endpointDetected];

  if (endpointDetected)
  {
    endpointDetected2 = [(MHSchemaMHClientEvent *)self endpointDetected];
    PBDataWriterWriteSubmessage();
  }

  endpointLatencyInfoReported = [(MHSchemaMHClientEvent *)self endpointLatencyInfoReported];

  if (endpointLatencyInfoReported)
  {
    endpointLatencyInfoReported2 = [(MHSchemaMHClientEvent *)self endpointLatencyInfoReported];
    PBDataWriterWriteSubmessage();
  }

  adblockerContext = [(MHSchemaMHClientEvent *)self adblockerContext];

  if (adblockerContext)
  {
    adblockerContext2 = [(MHSchemaMHClientEvent *)self adblockerContext];
    PBDataWriterWriteSubmessage();
  }

  onDeviceEndpointerContext = [(MHSchemaMHClientEvent *)self onDeviceEndpointerContext];

  if (onDeviceEndpointerContext)
  {
    onDeviceEndpointerContext2 = [(MHSchemaMHClientEvent *)self onDeviceEndpointerContext];
    PBDataWriterWriteSubmessage();
  }

  serverEndpointerContext = [(MHSchemaMHClientEvent *)self serverEndpointerContext];

  if (serverEndpointerContext)
  {
    serverEndpointerContext2 = [(MHSchemaMHClientEvent *)self serverEndpointerContext];
    PBDataWriterWriteSubmessage();
  }

  endpointerUsed = [(MHSchemaMHClientEvent *)self endpointerUsed];

  if (endpointerUsed)
  {
    endpointerUsed2 = [(MHSchemaMHClientEvent *)self endpointerUsed];
    PBDataWriterWriteSubmessage();
  }

  endpointDelayContext = [(MHSchemaMHClientEvent *)self endpointDelayContext];

  if (endpointDelayContext)
  {
    endpointDelayContext2 = [(MHSchemaMHClientEvent *)self endpointDelayContext];
    PBDataWriterWriteSubmessage();
  }

  finalMitigationRecommendation = [(MHSchemaMHClientEvent *)self finalMitigationRecommendation];

  if (finalMitigationRecommendation)
  {
    finalMitigationRecommendation2 = [(MHSchemaMHClientEvent *)self finalMitigationRecommendation];
    PBDataWriterWriteSubmessage();
  }

  applicationPlaybackAttempted = [(MHSchemaMHClientEvent *)self applicationPlaybackAttempted];

  if (applicationPlaybackAttempted)
  {
    applicationPlaybackAttempted2 = [(MHSchemaMHClientEvent *)self applicationPlaybackAttempted];
    PBDataWriterWriteSubmessage();
  }

  siriLaunchRequestContext = [(MHSchemaMHClientEvent *)self siriLaunchRequestContext];

  if (siriLaunchRequestContext)
  {
    siriLaunchRequestContext2 = [(MHSchemaMHClientEvent *)self siriLaunchRequestContext];
    PBDataWriterWriteSubmessage();
  }

  endpointerAccessibleContext = [(MHSchemaMHClientEvent *)self endpointerAccessibleContext];

  if (endpointerAccessibleContext)
  {
    endpointerAccessibleContext2 = [(MHSchemaMHClientEvent *)self endpointerAccessibleContext];
    PBDataWriterWriteSubmessage();
  }

  carPlayLangaugeMismatched = [(MHSchemaMHClientEvent *)self carPlayLangaugeMismatched];

  if (carPlayLangaugeMismatched)
  {
    carPlayLangaugeMismatched2 = [(MHSchemaMHClientEvent *)self carPlayLangaugeMismatched];
    PBDataWriterWriteSubmessage();
  }

  darwinConnectedDeviceWakeContext = [(MHSchemaMHClientEvent *)self darwinConnectedDeviceWakeContext];

  if (darwinConnectedDeviceWakeContext)
  {
    darwinConnectedDeviceWakeContext2 = [(MHSchemaMHClientEvent *)self darwinConnectedDeviceWakeContext];
    PBDataWriterWriteSubmessage();
  }

  odldFalseTriggerMitigated = [(MHSchemaMHClientEvent *)self odldFalseTriggerMitigated];

  if (odldFalseTriggerMitigated)
  {
    odldFalseTriggerMitigated2 = [(MHSchemaMHClientEvent *)self odldFalseTriggerMitigated];
    PBDataWriterWriteSubmessage();
  }

  speakerFalseTriggerMitigated = [(MHSchemaMHClientEvent *)self speakerFalseTriggerMitigated];

  if (speakerFalseTriggerMitigated)
  {
    speakerFalseTriggerMitigated2 = [(MHSchemaMHClientEvent *)self speakerFalseTriggerMitigated];
    PBDataWriterWriteSubmessage();
  }

  siriDirectedSpeechDetectionFailed = [(MHSchemaMHClientEvent *)self siriDirectedSpeechDetectionFailed];

  if (siriDirectedSpeechDetectionFailed)
  {
    siriDirectedSpeechDetectionFailed2 = [(MHSchemaMHClientEvent *)self siriDirectedSpeechDetectionFailed];
    PBDataWriterWriteSubmessage();
  }

  audioDucked = [(MHSchemaMHClientEvent *)self audioDucked];

  if (audioDucked)
  {
    audioDucked2 = [(MHSchemaMHClientEvent *)self audioDucked];
    PBDataWriterWriteSubmessage();
  }

  audioRecordingFailed = [(MHSchemaMHClientEvent *)self audioRecordingFailed];

  if (audioRecordingFailed)
  {
    audioRecordingFailed2 = [(MHSchemaMHClientEvent *)self audioRecordingFailed];
    PBDataWriterWriteSubmessage();
  }

  rtsFalseRejectDetected = [(MHSchemaMHClientEvent *)self rtsFalseRejectDetected];

  if (rtsFalseRejectDetected)
  {
    rtsFalseRejectDetected2 = [(MHSchemaMHClientEvent *)self rtsFalseRejectDetected];
    PBDataWriterWriteSubmessage();
  }

  trpCreated = [(MHSchemaMHClientEvent *)self trpCreated];

  if (trpCreated)
  {
    trpCreated2 = [(MHSchemaMHClientEvent *)self trpCreated];
    PBDataWriterWriteSubmessage();
  }

  userSpeakingContext = [(MHSchemaMHClientEvent *)self userSpeakingContext];

  if (userSpeakingContext)
  {
    userSpeakingContext2 = [(MHSchemaMHClientEvent *)self userSpeakingContext];
    PBDataWriterWriteSubmessage();
  }

  speechStopDetected = [(MHSchemaMHClientEvent *)self speechStopDetected];

  if (speechStopDetected)
  {
    speechStopDetected2 = [(MHSchemaMHClientEvent *)self speechStopDetected];
    PBDataWriterWriteSubmessage();
  }

  speechDetectorContext = [(MHSchemaMHClientEvent *)self speechDetectorContext];

  if (speechDetectorContext)
  {
    speechDetectorContext2 = [(MHSchemaMHClientEvent *)self speechDetectorContext];
    PBDataWriterWriteSubmessage();
  }

  stoppedListeningForSpeechContinuation = [(MHSchemaMHClientEvent *)self stoppedListeningForSpeechContinuation];

  if (stoppedListeningForSpeechContinuation)
  {
    stoppedListeningForSpeechContinuation2 = [(MHSchemaMHClientEvent *)self stoppedListeningForSpeechContinuation];
    PBDataWriterWriteSubmessage();
  }

  userEngagementModelContext = [(MHSchemaMHClientEvent *)self userEngagementModelContext];

  if (userEngagementModelContext)
  {
    userEngagementModelContext2 = [(MHSchemaMHClientEvent *)self userEngagementModelContext];
    PBDataWriterWriteSubmessage();
  }

  attendingContext = [(MHSchemaMHClientEvent *)self attendingContext];

  if (attendingContext)
  {
    attendingContext2 = [(MHSchemaMHClientEvent *)self attendingContext];
    PBDataWriterWriteSubmessage();
  }

  crownPressed = [(MHSchemaMHClientEvent *)self crownPressed];

  if (crownPressed)
  {
    crownPressed2 = [(MHSchemaMHClientEvent *)self crownPressed];
    PBDataWriterWriteSubmessage();
  }

  rtsTriggered = [(MHSchemaMHClientEvent *)self rtsTriggered];

  if (rtsTriggered)
  {
    rtsTriggered2 = [(MHSchemaMHClientEvent *)self rtsTriggered];
    PBDataWriterWriteSubmessage();
  }

  rtsFirstPassPolicyTriggered = [(MHSchemaMHClientEvent *)self rtsFirstPassPolicyTriggered];

  if (rtsFirstPassPolicyTriggered)
  {
    rtsFirstPassPolicyTriggered2 = [(MHSchemaMHClientEvent *)self rtsFirstPassPolicyTriggered];
    PBDataWriterWriteSubmessage();
  }

  rtsSecondPassPolicyDecisionMade = [(MHSchemaMHClientEvent *)self rtsSecondPassPolicyDecisionMade];

  if (rtsSecondPassPolicyDecisionMade)
  {
    rtsSecondPassPolicyDecisionMade2 = [(MHSchemaMHClientEvent *)self rtsSecondPassPolicyDecisionMade];
    PBDataWriterWriteSubmessage();
  }

  voiceProfileOnboarded = [(MHSchemaMHClientEvent *)self voiceProfileOnboarded];

  if (voiceProfileOnboarded)
  {
    voiceProfileOnboarded2 = [(MHSchemaMHClientEvent *)self voiceProfileOnboarded];
    PBDataWriterWriteSubmessage();
  }

  voiceTriggerRePrompted = [(MHSchemaMHClientEvent *)self voiceTriggerRePrompted];

  if (voiceTriggerRePrompted)
  {
    voiceTriggerRePrompted2 = [(MHSchemaMHClientEvent *)self voiceTriggerRePrompted];
    PBDataWriterWriteSubmessage();
  }

  assistantDaemonAudioRecordingFailureInsufficientPriority = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFailureInsufficientPriority];

  if (assistantDaemonAudioRecordingFailureInsufficientPriority)
  {
    assistantDaemonAudioRecordingFailureInsufficientPriority2 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFailureInsufficientPriority];
    PBDataWriterWriteSubmessage();
  }

  voiceProfileICloudSyncFinished = [(MHSchemaMHClientEvent *)self voiceProfileICloudSyncFinished];

  if (voiceProfileICloudSyncFinished)
  {
    voiceProfileICloudSyncFinished2 = [(MHSchemaMHClientEvent *)self voiceProfileICloudSyncFinished];
    PBDataWriterWriteSubmessage();
  }

  voiceTriggerRejectDetected = [(MHSchemaMHClientEvent *)self voiceTriggerRejectDetected];

  if (voiceTriggerRejectDetected)
  {
    voiceTriggerRejectDetected2 = [(MHSchemaMHClientEvent *)self voiceTriggerRejectDetected];
    PBDataWriterWriteSubmessage();
  }

  adaptiveSiriVolumeTTSVolumeQueried = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeTTSVolumeQueried];

  if (adaptiveSiriVolumeTTSVolumeQueried)
  {
    adaptiveSiriVolumeTTSVolumeQueried2 = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeTTSVolumeQueried];
    PBDataWriterWriteSubmessage();
  }

  adaptiveSiriVolumeUserIntentDetected = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeUserIntentDetected];

  if (adaptiveSiriVolumeUserIntentDetected)
  {
    adaptiveSiriVolumeUserIntentDetected2 = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeUserIntentDetected];
    PBDataWriterWriteSubmessage();
  }

  speakerIdEnrollmentDataReportedTier1 = [(MHSchemaMHClientEvent *)self speakerIdEnrollmentDataReportedTier1];

  if (speakerIdEnrollmentDataReportedTier1)
  {
    speakerIdEnrollmentDataReportedTier12 = [(MHSchemaMHClientEvent *)self speakerIdEnrollmentDataReportedTier1];
    PBDataWriterWriteSubmessage();
  }

  speakerIdModelSelectedClockSessionInfoTier1 = [(MHSchemaMHClientEvent *)self speakerIdModelSelectedClockSessionInfoTier1];

  if (speakerIdModelSelectedClockSessionInfoTier1)
  {
    speakerIdModelSelectedClockSessionInfoTier12 = [(MHSchemaMHClientEvent *)self speakerIdModelSelectedClockSessionInfoTier1];
    PBDataWriterWriteSubmessage();
  }

  speakerIdModelOneSessionReportedTier1 = [(MHSchemaMHClientEvent *)self speakerIdModelOneSessionReportedTier1];

  v137 = toCopy;
  if (speakerIdModelOneSessionReportedTier1)
  {
    speakerIdModelOneSessionReportedTier12 = [(MHSchemaMHClientEvent *)self speakerIdModelOneSessionReportedTier1];
    PBDataWriterWriteSubmessage();

    v137 = toCopy;
  }
}

- (void)deleteSpeakerIdModelOneSessionReportedTier1
{
  if (self->_whichEvent_Type == 165)
  {
    self->_whichEvent_Type = 0;
    self->_speakerIdModelOneSessionReportedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MHSchemaMHSpeakerIdDataCollectionSampleSessionReportedTier1)speakerIdModelOneSessionReportedTier1
{
  if (self->_whichEvent_Type == 165)
  {
    v3 = self->_speakerIdModelOneSessionReportedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSpeakerIdModelOneSessionReportedTier1:(id)tier1
{
  tier1Copy = tier1;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  v69 = 165;
  if (!tier1Copy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = tier1Copy;
}

- (void)deleteSpeakerIdModelSelectedClockSessionInfoTier1
{
  if (self->_whichEvent_Type == 164)
  {
    self->_whichEvent_Type = 0;
    self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1)speakerIdModelSelectedClockSessionInfoTier1
{
  if (self->_whichEvent_Type == 164)
  {
    v3 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSpeakerIdModelSelectedClockSessionInfoTier1:(id)tier1
{
  tier1Copy = tier1;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 164;
  if (!tier1Copy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = tier1Copy;
}

- (void)deleteSpeakerIdEnrollmentDataReportedTier1
{
  if (self->_whichEvent_Type == 163)
  {
    self->_whichEvent_Type = 0;
    self->_speakerIdEnrollmentDataReportedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1)speakerIdEnrollmentDataReportedTier1
{
  if (self->_whichEvent_Type == 163)
  {
    v3 = self->_speakerIdEnrollmentDataReportedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSpeakerIdEnrollmentDataReportedTier1:(id)tier1
{
  tier1Copy = tier1;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 163;
  if (!tier1Copy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = tier1Copy;
}

- (void)deleteAdaptiveSiriVolumeUserIntentDetected
{
  if (self->_whichEvent_Type == 162)
  {
    self->_whichEvent_Type = 0;
    self->_adaptiveSiriVolumeUserIntentDetected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAdaptiveSiriVolumeUserIntentDetected:(id)detected
{
  detectedCopy = detected;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 162;
  if (!detectedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = detectedCopy;
}

- (void)deleteAdaptiveSiriVolumeTTSVolumeQueried
{
  if (self->_whichEvent_Type == 161)
  {
    self->_whichEvent_Type = 0;
    self->_adaptiveSiriVolumeTTSVolumeQueried = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAdaptiveSiriVolumeTTSVolumeQueried:(id)queried
{
  queriedCopy = queried;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 161;
  if (!queriedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = queriedCopy;
}

- (void)deleteVoiceTriggerRejectDetected
{
  if (self->_whichEvent_Type == 160)
  {
    self->_whichEvent_Type = 0;
    self->_voiceTriggerRejectDetected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setVoiceTriggerRejectDetected:(id)detected
{
  detectedCopy = detected;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 160;
  if (!detectedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = detectedCopy;
}

- (void)deleteVoiceProfileICloudSyncFinished
{
  if (self->_whichEvent_Type == 159)
  {
    self->_whichEvent_Type = 0;
    self->_voiceProfileICloudSyncFinished = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setVoiceProfileICloudSyncFinished:(id)finished
{
  finishedCopy = finished;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 159;
  if (!finishedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = finishedCopy;
}

- (void)deleteAssistantDaemonAudioRecordingFailureInsufficientPriority
{
  if (self->_whichEvent_Type == 158)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssistantDaemonAudioRecordingFailureInsufficientPriority:(id)priority
{
  priorityCopy = priority;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 158;
  if (!priorityCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = priorityCopy;
}

- (void)deleteVoiceTriggerRePrompted
{
  if (self->_whichEvent_Type == 157)
  {
    self->_whichEvent_Type = 0;
    self->_voiceTriggerRePrompted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setVoiceTriggerRePrompted:(id)prompted
{
  promptedCopy = prompted;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 157;
  if (!promptedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = promptedCopy;
}

- (void)deleteVoiceProfileOnboarded
{
  if (self->_whichEvent_Type == 155)
  {
    self->_whichEvent_Type = 0;
    self->_voiceProfileOnboarded = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setVoiceProfileOnboarded:(id)onboarded
{
  onboardedCopy = onboarded;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 155;
  if (!onboardedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = onboardedCopy;
}

- (void)deleteRtsSecondPassPolicyDecisionMade
{
  if (self->_whichEvent_Type == 154)
  {
    self->_whichEvent_Type = 0;
    self->_rtsSecondPassPolicyDecisionMade = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setRtsSecondPassPolicyDecisionMade:(id)made
{
  madeCopy = made;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 154;
  if (!madeCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = madeCopy;
}

- (void)deleteRtsFirstPassPolicyTriggered
{
  if (self->_whichEvent_Type == 153)
  {
    self->_whichEvent_Type = 0;
    self->_rtsFirstPassPolicyTriggered = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setRtsFirstPassPolicyTriggered:(id)triggered
{
  triggeredCopy = triggered;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 153;
  if (!triggeredCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = triggeredCopy;
}

- (void)deleteRtsTriggered
{
  if (self->_whichEvent_Type == 152)
  {
    self->_whichEvent_Type = 0;
    self->_rtsTriggered = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setRtsTriggered:(id)triggered
{
  triggeredCopy = triggered;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 152;
  if (!triggeredCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = triggeredCopy;
}

- (void)deleteCrownPressed
{
  if (self->_whichEvent_Type == 151)
  {
    self->_whichEvent_Type = 0;
    self->_crownPressed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCrownPressed:(id)pressed
{
  pressedCopy = pressed;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 151;
  if (!pressedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  crownPressed = self->_crownPressed;
  self->_crownPressed = pressedCopy;
}

- (void)deleteAttendingContext
{
  if (self->_whichEvent_Type == 150)
  {
    self->_whichEvent_Type = 0;
    self->_attendingContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAttendingContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 150;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  attendingContext = self->_attendingContext;
  self->_attendingContext = contextCopy;
}

- (void)deleteUserEngagementModelContext
{
  if (self->_whichEvent_Type == 149)
  {
    self->_whichEvent_Type = 0;
    self->_userEngagementModelContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUserEngagementModelContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 149;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = contextCopy;
}

- (void)deleteStoppedListeningForSpeechContinuation
{
  if (self->_whichEvent_Type == 148)
  {
    self->_whichEvent_Type = 0;
    self->_stoppedListeningForSpeechContinuation = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setStoppedListeningForSpeechContinuation:(id)continuation
{
  continuationCopy = continuation;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 148;
  if (!continuationCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = continuationCopy;
}

- (void)deleteSpeechDetectorContext
{
  if (self->_whichEvent_Type == 147)
  {
    self->_whichEvent_Type = 0;
    self->_speechDetectorContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setSpeechDetectorContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 147;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = contextCopy;
}

- (void)deleteSpeechStopDetected
{
  if (self->_whichEvent_Type == 146)
  {
    self->_whichEvent_Type = 0;
    self->_speechStopDetected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setSpeechStopDetected:(id)detected
{
  detectedCopy = detected;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 146;
  if (!detectedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = detectedCopy;
}

- (void)deleteUserSpeakingContext
{
  if (self->_whichEvent_Type == 145)
  {
    self->_whichEvent_Type = 0;
    self->_userSpeakingContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUserSpeakingContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 145;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = contextCopy;
}

- (void)deleteTrpCreated
{
  if (self->_whichEvent_Type == 144)
  {
    self->_whichEvent_Type = 0;
    self->_trpCreated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setTrpCreated:(id)created
{
  createdCopy = created;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 144;
  if (!createdCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  trpCreated = self->_trpCreated;
  self->_trpCreated = createdCopy;
}

- (void)deleteRtsFalseRejectDetected
{
  if (self->_whichEvent_Type == 143)
  {
    self->_whichEvent_Type = 0;
    self->_rtsFalseRejectDetected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setRtsFalseRejectDetected:(id)detected
{
  detectedCopy = detected;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 143;
  if (!detectedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = detectedCopy;
}

- (void)deleteAudioRecordingFailed
{
  if (self->_whichEvent_Type == 142)
  {
    self->_whichEvent_Type = 0;
    self->_audioRecordingFailed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAudioRecordingFailed:(id)failed
{
  failedCopy = failed;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 142;
  if (!failedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = failedCopy;
}

- (void)deleteAudioDucked
{
  if (self->_whichEvent_Type == 141)
  {
    self->_whichEvent_Type = 0;
    self->_audioDucked = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAudioDucked:(id)ducked
{
  duckedCopy = ducked;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 141;
  if (!duckedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  audioDucked = self->_audioDucked;
  self->_audioDucked = duckedCopy;
}

- (void)deleteSiriDirectedSpeechDetectionFailed
{
  if (self->_whichEvent_Type == 140)
  {
    self->_whichEvent_Type = 0;
    self->_siriDirectedSpeechDetectionFailed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setSiriDirectedSpeechDetectionFailed:(id)failed
{
  failedCopy = failed;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 140;
  if (!failedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = failedCopy;
}

- (void)deleteSpeakerFalseTriggerMitigated
{
  if (self->_whichEvent_Type == 139)
  {
    self->_whichEvent_Type = 0;
    self->_speakerFalseTriggerMitigated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setSpeakerFalseTriggerMitigated:(id)mitigated
{
  mitigatedCopy = mitigated;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 139;
  if (!mitigatedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = mitigatedCopy;
}

- (void)deleteOdldFalseTriggerMitigated
{
  if (self->_whichEvent_Type == 138)
  {
    self->_whichEvent_Type = 0;
    self->_odldFalseTriggerMitigated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setOdldFalseTriggerMitigated:(id)mitigated
{
  mitigatedCopy = mitigated;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 138;
  if (!mitigatedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = mitigatedCopy;
}

- (void)deleteDarwinConnectedDeviceWakeContext
{
  if (self->_whichEvent_Type == 137)
  {
    self->_whichEvent_Type = 0;
    self->_darwinConnectedDeviceWakeContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDarwinConnectedDeviceWakeContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 137;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = contextCopy;
}

- (void)deleteCarPlayLangaugeMismatched
{
  if (self->_whichEvent_Type == 136)
  {
    self->_whichEvent_Type = 0;
    self->_carPlayLangaugeMismatched = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCarPlayLangaugeMismatched:(id)mismatched
{
  mismatchedCopy = mismatched;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 136;
  if (!mismatchedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = mismatchedCopy;
}

- (void)deleteEndpointerAccessibleContext
{
  if (self->_whichEvent_Type == 135)
  {
    self->_whichEvent_Type = 0;
    self->_endpointerAccessibleContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setEndpointerAccessibleContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 135;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = contextCopy;
}

- (void)deleteSiriLaunchRequestContext
{
  if (self->_whichEvent_Type == 134)
  {
    self->_whichEvent_Type = 0;
    self->_siriLaunchRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setSiriLaunchRequestContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 134;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = contextCopy;
}

- (void)deleteApplicationPlaybackAttempted
{
  if (self->_whichEvent_Type == 133)
  {
    self->_whichEvent_Type = 0;
    self->_applicationPlaybackAttempted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setApplicationPlaybackAttempted:(id)attempted
{
  attemptedCopy = attempted;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 133;
  if (!attemptedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = attemptedCopy;
}

- (void)deleteFinalMitigationRecommendation
{
  if (self->_whichEvent_Type == 132)
  {
    self->_whichEvent_Type = 0;
    self->_finalMitigationRecommendation = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setFinalMitigationRecommendation:(id)recommendation
{
  recommendationCopy = recommendation;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 132;
  if (!recommendationCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = recommendationCopy;
}

- (void)deleteEndpointDelayContext
{
  if (self->_whichEvent_Type == 131)
  {
    self->_whichEvent_Type = 0;
    self->_endpointDelayContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setEndpointDelayContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 131;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = contextCopy;
}

- (void)deleteEndpointerUsed
{
  if (self->_whichEvent_Type == 130)
  {
    self->_whichEvent_Type = 0;
    self->_endpointerUsed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setEndpointerUsed:(id)used
{
  usedCopy = used;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 130;
  if (!usedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = usedCopy;
}

- (void)deleteServerEndpointerContext
{
  if (self->_whichEvent_Type == 129)
  {
    self->_whichEvent_Type = 0;
    self->_serverEndpointerContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setServerEndpointerContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 129;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = contextCopy;
}

- (void)deleteOnDeviceEndpointerContext
{
  if (self->_whichEvent_Type == 128)
  {
    self->_whichEvent_Type = 0;
    self->_onDeviceEndpointerContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setOnDeviceEndpointerContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  self->_whichEvent_Type = (contextCopy != 0) << 7;
  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = contextCopy;
}

- (void)deleteAdblockerContext
{
  if (self->_whichEvent_Type == 127)
  {
    self->_whichEvent_Type = 0;
    self->_adblockerContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAdblockerContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 127;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = contextCopy;
}

- (void)deleteEndpointLatencyInfoReported
{
  if (self->_whichEvent_Type == 126)
  {
    self->_whichEvent_Type = 0;
    self->_endpointLatencyInfoReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setEndpointLatencyInfoReported:(id)reported
{
  reportedCopy = reported;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 126;
  if (!reportedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = reportedCopy;
}

- (void)deleteEndpointDetected
{
  if (self->_whichEvent_Type == 125)
  {
    self->_whichEvent_Type = 0;
    self->_endpointDetected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setEndpointDetected:(id)detected
{
  detectedCopy = detected;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 125;
  if (!detectedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = detectedCopy;
}

- (void)deleteVoiceTriggerContext
{
  if (self->_whichEvent_Type == 124)
  {
    self->_whichEvent_Type = 0;
    self->_voiceTriggerContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setVoiceTriggerContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 124;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = contextCopy;
}

- (void)deleteAssistantDaemonAudioTwoShotTransitionContext
{
  if (self->_whichEvent_Type == 123)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDaemonAudioTwoShotTransitionContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssistantDaemonAudioTwoShotTransitionContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 123;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = contextCopy;
}

- (void)deleteVoiceTriggerTwoShotDetected
{
  if (self->_whichEvent_Type == 122)
  {
    self->_whichEvent_Type = 0;
    self->_voiceTriggerTwoShotDetected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setVoiceTriggerTwoShotDetected:(id)detected
{
  detectedCopy = detected;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 122;
  if (!detectedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = detectedCopy;
}

- (void)deleteAssistantDaemonAudioBluetoothInfo
{
  if (self->_whichEvent_Type == 121)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDaemonAudioBluetoothInfo = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssistantDaemonAudioBluetoothInfo:(id)info
{
  infoCopy = info;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 121;
  if (!infoCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = infoCopy;
}

- (void)deleteAssistantDaemonAudioRecordingInterruptionStartedTier1
{
  if (self->_whichEvent_Type == 120)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssistantDaemonAudioRecordingInterruptionStartedTier1:(id)tier1
{
  tier1Copy = tier1;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 120;
  if (!tier1Copy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = tier1Copy;
}

- (void)deleteAssistantDaemonAudioRecordingInterruptionContext
{
  if (self->_whichEvent_Type == 119)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDaemonAudioRecordingInterruptionContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssistantDaemonAudioRecordingInterruptionContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 119;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = contextCopy;
}

- (void)deleteAssistantDaemonAudioRecordingLastBufferContext
{
  if (self->_whichEvent_Type == 118)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDaemonAudioRecordingLastBufferContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssistantDaemonAudioRecordingLastBufferContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 118;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = contextCopy;
}

- (void)deleteAssistantDaemonAudioRecordingFirstBufferContext
{
  if (self->_whichEvent_Type == 117)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDaemonAudioRecordingFirstBufferContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssistantDaemonAudioRecordingFirstBufferContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 117;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = contextCopy;
}

- (void)deleteAssistantDaemonAudioLateBufferDetected
{
  if (self->_whichEvent_Type == 116)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDaemonAudioLateBufferDetected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssistantDaemonAudioLateBufferDetected:(id)detected
{
  detectedCopy = detected;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 116;
  if (!detectedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = detectedCopy;
}

- (void)deleteAssistantDaemonAudioRecordingMissedBufferDetected
{
  if (self->_whichEvent_Type == 115)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssistantDaemonAudioRecordingMissedBufferDetected:(id)detected
{
  detectedCopy = detected;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 115;
  if (!detectedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = detectedCopy;
}

- (void)deleteAssistantDaemonAudioRecordingContext
{
  if (self->_whichEvent_Type == 114)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDaemonAudioRecordingContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssistantDaemonAudioRecordingContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 114;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = contextCopy;
}

- (void)deleteAssistantDaemonAudioFetchRouteContext
{
  if (self->_whichEvent_Type == 113)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDaemonAudioFetchRouteContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssistantDaemonAudioFetchRouteContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 113;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = contextCopy;
}

- (void)deleteAssistantDaemonAudioSessionSetInactiveContext
{
  if (self->_whichEvent_Type == 112)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDaemonAudioSessionSetInactiveContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssistantDaemonAudioSessionSetInactiveContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 112;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = contextCopy;
}

- (void)deleteAssistantDaemonAudioSessionSetActiveContext
{
  if (self->_whichEvent_Type == 111)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDaemonAudioSessionSetActiveContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssistantDaemonAudioSessionSetActiveContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 111;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = contextCopy;
}

- (void)deleteAssistantDaemonAudioStopRecordingContext
{
  if (self->_whichEvent_Type == 110)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDaemonAudioStopRecordingContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssistantDaemonAudioStopRecordingContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 110;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = contextCopy;
}

- (void)deleteAssistantDaemonAudioStartRecordingContext
{
  if (self->_whichEvent_Type == 109)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDaemonAudioStartRecordingContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssistantDaemonAudioStartRecordingContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 109;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = contextCopy;
}

- (void)deleteAssistantDaemonAudioPrewarmContext
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDaemonAudioPrewarmContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssistantDaemonAudioPrewarmContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 108;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = contextCopy;
}

- (void)deleteAssistantDaemonAudioPrepareContext
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDaemonAudioPrepareContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssistantDaemonAudioPrepareContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 107;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = contextCopy;
}

- (void)deleteAssistantDaemonAudioConfigureContext
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDaemonAudioConfigureContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssistantDaemonAudioConfigureContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 106;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = contextCopy;
}

- (void)deleteAssistantDaemonAudioInitContext
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_assistantDaemonAudioInitContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAssistantDaemonAudioInitContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 105;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = contextCopy;
}

- (void)deleteAsrAudioConfigureStarted
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_asrAudioConfigureStarted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAsrAudioConfigureStarted:(id)started
{
  startedCopy = started;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 104;
  if (!startedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = startedCopy;
}

- (void)deleteCoreSpeechPreprocessorCompleted
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_coreSpeechPreprocessorCompleted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCoreSpeechPreprocessorCompleted:(id)completed
{
  completedCopy = completed;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 103;
  if (!completedCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = completedCopy;
}

- (void)deleteUnintendedResponseSuppressionExecutionContext
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_unintendedResponseSuppressionExecutionContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUnintendedResponseSuppressionExecutionContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 102;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = contextCopy;
}

- (void)deleteLatticeFalseTriggerMitigationEvaluationContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_latticeFalseTriggerMitigationEvaluationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setLatticeFalseTriggerMitigationEvaluationContext:(id)context
{
  contextCopy = context;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 101;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = contextCopy;
}

- (void)deleteAcousticFalseTriggerMitigationEvaluationContext
{
  if (self->_whichEvent_Type == 100)
  {
    self->_whichEvent_Type = 0;
    self->_acousticFalseTriggerMitigationEvaluationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAcousticFalseTriggerMitigationEvaluationContext:(id)context
{
  contextCopy = context;
  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = 0;

  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = 0;

  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = 0;

  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = 0;

  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = 0;

  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = 0;

  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = 0;

  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = 0;

  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = 0;

  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = 0;

  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = 0;

  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = 0;

  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = 0;

  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = 0;

  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = 0;

  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = 0;

  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = 0;

  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = 0;

  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = 0;

  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = 0;

  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = 0;

  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = 0;

  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = 0;

  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = 0;

  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = 0;

  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = 0;

  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = 0;

  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = 0;

  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = 0;

  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = 0;

  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = 0;

  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = 0;

  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = 0;

  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = 0;

  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = 0;

  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = 0;

  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = 0;

  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = 0;

  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = 0;

  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = 0;

  audioDucked = self->_audioDucked;
  self->_audioDucked = 0;

  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = 0;

  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = 0;

  trpCreated = self->_trpCreated;
  self->_trpCreated = 0;

  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = 0;

  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = 0;

  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = 0;

  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = 0;

  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = 0;

  attendingContext = self->_attendingContext;
  self->_attendingContext = 0;

  crownPressed = self->_crownPressed;
  self->_crownPressed = 0;

  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = 0;

  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = 0;

  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = 0;

  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = 0;

  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = 0;

  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = 0;

  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = 0;

  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = 0;

  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = 0;

  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = 0;

  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = 0;

  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = 0;

  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = 0;

  v69 = 100;
  if (!contextCopy)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = contextCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v209.receiver = self;
  v209.super_class = MHSchemaMHClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v209 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdEnrollmentDataReportedTier1];
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelSelectedClockSessionInfoTier1];
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelOneSessionReportedTier1];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdEnrollmentDataReportedTier1];
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelSelectedClockSessionInfoTier1];
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelOneSessionReportedTier1];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdEnrollmentDataReportedTier1];
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelSelectedClockSessionInfoTier1];
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelOneSessionReportedTier1];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdEnrollmentDataReportedTier1];
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelSelectedClockSessionInfoTier1];
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelOneSessionReportedTier1];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdEnrollmentDataReportedTier1];
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelSelectedClockSessionInfoTier1];
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelOneSessionReportedTier1];
  }

  mhId = [(MHSchemaMHClientEvent *)self mhId];
  v7 = [mhId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(MHSchemaMHClientEvent *)self deleteMhId];
  }

  eventMetadata = [(MHSchemaMHClientEvent *)self eventMetadata];
  v10 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(MHSchemaMHClientEvent *)self deleteEventMetadata];
  }

  acousticFalseTriggerMitigationEvaluationContext = [(MHSchemaMHClientEvent *)self acousticFalseTriggerMitigationEvaluationContext];
  v13 = [acousticFalseTriggerMitigationEvaluationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(MHSchemaMHClientEvent *)self deleteAcousticFalseTriggerMitigationEvaluationContext];
  }

  latticeFalseTriggerMitigationEvaluationContext = [(MHSchemaMHClientEvent *)self latticeFalseTriggerMitigationEvaluationContext];
  v16 = [latticeFalseTriggerMitigationEvaluationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(MHSchemaMHClientEvent *)self deleteLatticeFalseTriggerMitigationEvaluationContext];
  }

  unintendedResponseSuppressionExecutionContext = [(MHSchemaMHClientEvent *)self unintendedResponseSuppressionExecutionContext];
  v19 = [unintendedResponseSuppressionExecutionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(MHSchemaMHClientEvent *)self deleteUnintendedResponseSuppressionExecutionContext];
  }

  coreSpeechPreprocessorCompleted = [(MHSchemaMHClientEvent *)self coreSpeechPreprocessorCompleted];
  v22 = [coreSpeechPreprocessorCompleted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(MHSchemaMHClientEvent *)self deleteCoreSpeechPreprocessorCompleted];
  }

  asrAudioConfigureStarted = [(MHSchemaMHClientEvent *)self asrAudioConfigureStarted];
  v25 = [asrAudioConfigureStarted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(MHSchemaMHClientEvent *)self deleteAsrAudioConfigureStarted];
  }

  assistantDaemonAudioInitContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioInitContext];
  v28 = [assistantDaemonAudioInitContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioInitContext];
  }

  assistantDaemonAudioConfigureContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioConfigureContext];
  v31 = [assistantDaemonAudioConfigureContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioConfigureContext];
  }

  assistantDaemonAudioPrepareContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrepareContext];
  v34 = [assistantDaemonAudioPrepareContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioPrepareContext];
  }

  assistantDaemonAudioPrewarmContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrewarmContext];
  v37 = [assistantDaemonAudioPrewarmContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioPrewarmContext];
  }

  assistantDaemonAudioStartRecordingContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStartRecordingContext];
  v40 = [assistantDaemonAudioStartRecordingContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioStartRecordingContext];
  }

  assistantDaemonAudioStopRecordingContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStopRecordingContext];
  v43 = [assistantDaemonAudioStopRecordingContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioStopRecordingContext];
  }

  assistantDaemonAudioSessionSetActiveContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetActiveContext];
  v46 = [assistantDaemonAudioSessionSetActiveContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioSessionSetActiveContext];
  }

  assistantDaemonAudioSessionSetInactiveContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetInactiveContext];
  v49 = [assistantDaemonAudioSessionSetInactiveContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage15 = [v49 suppressMessage];

  if (suppressMessage15)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioSessionSetInactiveContext];
  }

  assistantDaemonAudioFetchRouteContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioFetchRouteContext];
  v52 = [assistantDaemonAudioFetchRouteContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage16 = [v52 suppressMessage];

  if (suppressMessage16)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioFetchRouteContext];
  }

  assistantDaemonAudioRecordingContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingContext];
  v55 = [assistantDaemonAudioRecordingContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage17 = [v55 suppressMessage];

  if (suppressMessage17)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioRecordingContext];
  }

  assistantDaemonAudioRecordingMissedBufferDetected = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingMissedBufferDetected];
  v58 = [assistantDaemonAudioRecordingMissedBufferDetected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage18 = [v58 suppressMessage];

  if (suppressMessage18)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioRecordingMissedBufferDetected];
  }

  assistantDaemonAudioLateBufferDetected = [(MHSchemaMHClientEvent *)self assistantDaemonAudioLateBufferDetected];
  v61 = [assistantDaemonAudioLateBufferDetected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage19 = [v61 suppressMessage];

  if (suppressMessage19)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioLateBufferDetected];
  }

  assistantDaemonAudioRecordingFirstBufferContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFirstBufferContext];
  v64 = [assistantDaemonAudioRecordingFirstBufferContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage20 = [v64 suppressMessage];

  if (suppressMessage20)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioRecordingFirstBufferContext];
  }

  assistantDaemonAudioRecordingLastBufferContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingLastBufferContext];
  v67 = [assistantDaemonAudioRecordingLastBufferContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage21 = [v67 suppressMessage];

  if (suppressMessage21)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioRecordingLastBufferContext];
  }

  assistantDaemonAudioRecordingInterruptionContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionContext];
  v70 = [assistantDaemonAudioRecordingInterruptionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage22 = [v70 suppressMessage];

  if (suppressMessage22)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioRecordingInterruptionContext];
  }

  assistantDaemonAudioRecordingInterruptionStartedTier1 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionStartedTier1];
  v73 = [assistantDaemonAudioRecordingInterruptionStartedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage23 = [v73 suppressMessage];

  if (suppressMessage23)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioRecordingInterruptionStartedTier1];
  }

  assistantDaemonAudioBluetoothInfo = [(MHSchemaMHClientEvent *)self assistantDaemonAudioBluetoothInfo];
  v76 = [assistantDaemonAudioBluetoothInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage24 = [v76 suppressMessage];

  if (suppressMessage24)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioBluetoothInfo];
  }

  voiceTriggerTwoShotDetected = [(MHSchemaMHClientEvent *)self voiceTriggerTwoShotDetected];
  v79 = [voiceTriggerTwoShotDetected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage25 = [v79 suppressMessage];

  if (suppressMessage25)
  {
    [(MHSchemaMHClientEvent *)self deleteVoiceTriggerTwoShotDetected];
  }

  assistantDaemonAudioTwoShotTransitionContext = [(MHSchemaMHClientEvent *)self assistantDaemonAudioTwoShotTransitionContext];
  v82 = [assistantDaemonAudioTwoShotTransitionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage26 = [v82 suppressMessage];

  if (suppressMessage26)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioTwoShotTransitionContext];
  }

  voiceTriggerContext = [(MHSchemaMHClientEvent *)self voiceTriggerContext];
  v85 = [voiceTriggerContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage27 = [v85 suppressMessage];

  if (suppressMessage27)
  {
    [(MHSchemaMHClientEvent *)self deleteVoiceTriggerContext];
  }

  endpointDetected = [(MHSchemaMHClientEvent *)self endpointDetected];
  v88 = [endpointDetected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage28 = [v88 suppressMessage];

  if (suppressMessage28)
  {
    [(MHSchemaMHClientEvent *)self deleteEndpointDetected];
  }

  endpointLatencyInfoReported = [(MHSchemaMHClientEvent *)self endpointLatencyInfoReported];
  v91 = [endpointLatencyInfoReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage29 = [v91 suppressMessage];

  if (suppressMessage29)
  {
    [(MHSchemaMHClientEvent *)self deleteEndpointLatencyInfoReported];
  }

  adblockerContext = [(MHSchemaMHClientEvent *)self adblockerContext];
  v94 = [adblockerContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage30 = [v94 suppressMessage];

  if (suppressMessage30)
  {
    [(MHSchemaMHClientEvent *)self deleteAdblockerContext];
  }

  onDeviceEndpointerContext = [(MHSchemaMHClientEvent *)self onDeviceEndpointerContext];
  v97 = [onDeviceEndpointerContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage31 = [v97 suppressMessage];

  if (suppressMessage31)
  {
    [(MHSchemaMHClientEvent *)self deleteOnDeviceEndpointerContext];
  }

  serverEndpointerContext = [(MHSchemaMHClientEvent *)self serverEndpointerContext];
  v100 = [serverEndpointerContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage32 = [v100 suppressMessage];

  if (suppressMessage32)
  {
    [(MHSchemaMHClientEvent *)self deleteServerEndpointerContext];
  }

  endpointerUsed = [(MHSchemaMHClientEvent *)self endpointerUsed];
  v103 = [endpointerUsed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage33 = [v103 suppressMessage];

  if (suppressMessage33)
  {
    [(MHSchemaMHClientEvent *)self deleteEndpointerUsed];
  }

  endpointDelayContext = [(MHSchemaMHClientEvent *)self endpointDelayContext];
  v106 = [endpointDelayContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage34 = [v106 suppressMessage];

  if (suppressMessage34)
  {
    [(MHSchemaMHClientEvent *)self deleteEndpointDelayContext];
  }

  finalMitigationRecommendation = [(MHSchemaMHClientEvent *)self finalMitigationRecommendation];
  v109 = [finalMitigationRecommendation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage35 = [v109 suppressMessage];

  if (suppressMessage35)
  {
    [(MHSchemaMHClientEvent *)self deleteFinalMitigationRecommendation];
  }

  applicationPlaybackAttempted = [(MHSchemaMHClientEvent *)self applicationPlaybackAttempted];
  v112 = [applicationPlaybackAttempted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage36 = [v112 suppressMessage];

  if (suppressMessage36)
  {
    [(MHSchemaMHClientEvent *)self deleteApplicationPlaybackAttempted];
  }

  siriLaunchRequestContext = [(MHSchemaMHClientEvent *)self siriLaunchRequestContext];
  v115 = [siriLaunchRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage37 = [v115 suppressMessage];

  if (suppressMessage37)
  {
    [(MHSchemaMHClientEvent *)self deleteSiriLaunchRequestContext];
  }

  endpointerAccessibleContext = [(MHSchemaMHClientEvent *)self endpointerAccessibleContext];
  v118 = [endpointerAccessibleContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage38 = [v118 suppressMessage];

  if (suppressMessage38)
  {
    [(MHSchemaMHClientEvent *)self deleteEndpointerAccessibleContext];
  }

  carPlayLangaugeMismatched = [(MHSchemaMHClientEvent *)self carPlayLangaugeMismatched];
  v121 = [carPlayLangaugeMismatched applySensitiveConditionsPolicy:policyCopy];
  suppressMessage39 = [v121 suppressMessage];

  if (suppressMessage39)
  {
    [(MHSchemaMHClientEvent *)self deleteCarPlayLangaugeMismatched];
  }

  darwinConnectedDeviceWakeContext = [(MHSchemaMHClientEvent *)self darwinConnectedDeviceWakeContext];
  v124 = [darwinConnectedDeviceWakeContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage40 = [v124 suppressMessage];

  if (suppressMessage40)
  {
    [(MHSchemaMHClientEvent *)self deleteDarwinConnectedDeviceWakeContext];
  }

  odldFalseTriggerMitigated = [(MHSchemaMHClientEvent *)self odldFalseTriggerMitigated];
  v127 = [odldFalseTriggerMitigated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage41 = [v127 suppressMessage];

  if (suppressMessage41)
  {
    [(MHSchemaMHClientEvent *)self deleteOdldFalseTriggerMitigated];
  }

  speakerFalseTriggerMitigated = [(MHSchemaMHClientEvent *)self speakerFalseTriggerMitigated];
  v130 = [speakerFalseTriggerMitigated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage42 = [v130 suppressMessage];

  if (suppressMessage42)
  {
    [(MHSchemaMHClientEvent *)self deleteSpeakerFalseTriggerMitigated];
  }

  siriDirectedSpeechDetectionFailed = [(MHSchemaMHClientEvent *)self siriDirectedSpeechDetectionFailed];
  v133 = [siriDirectedSpeechDetectionFailed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage43 = [v133 suppressMessage];

  if (suppressMessage43)
  {
    [(MHSchemaMHClientEvent *)self deleteSiriDirectedSpeechDetectionFailed];
  }

  audioDucked = [(MHSchemaMHClientEvent *)self audioDucked];
  v136 = [audioDucked applySensitiveConditionsPolicy:policyCopy];
  suppressMessage44 = [v136 suppressMessage];

  if (suppressMessage44)
  {
    [(MHSchemaMHClientEvent *)self deleteAudioDucked];
  }

  audioRecordingFailed = [(MHSchemaMHClientEvent *)self audioRecordingFailed];
  v139 = [audioRecordingFailed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage45 = [v139 suppressMessage];

  if (suppressMessage45)
  {
    [(MHSchemaMHClientEvent *)self deleteAudioRecordingFailed];
  }

  rtsFalseRejectDetected = [(MHSchemaMHClientEvent *)self rtsFalseRejectDetected];
  v142 = [rtsFalseRejectDetected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage46 = [v142 suppressMessage];

  if (suppressMessage46)
  {
    [(MHSchemaMHClientEvent *)self deleteRtsFalseRejectDetected];
  }

  trpCreated = [(MHSchemaMHClientEvent *)self trpCreated];
  v145 = [trpCreated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage47 = [v145 suppressMessage];

  if (suppressMessage47)
  {
    [(MHSchemaMHClientEvent *)self deleteTrpCreated];
  }

  userSpeakingContext = [(MHSchemaMHClientEvent *)self userSpeakingContext];
  v148 = [userSpeakingContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage48 = [v148 suppressMessage];

  if (suppressMessage48)
  {
    [(MHSchemaMHClientEvent *)self deleteUserSpeakingContext];
  }

  speechStopDetected = [(MHSchemaMHClientEvent *)self speechStopDetected];
  v151 = [speechStopDetected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage49 = [v151 suppressMessage];

  if (suppressMessage49)
  {
    [(MHSchemaMHClientEvent *)self deleteSpeechStopDetected];
  }

  speechDetectorContext = [(MHSchemaMHClientEvent *)self speechDetectorContext];
  v154 = [speechDetectorContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage50 = [v154 suppressMessage];

  if (suppressMessage50)
  {
    [(MHSchemaMHClientEvent *)self deleteSpeechDetectorContext];
  }

  stoppedListeningForSpeechContinuation = [(MHSchemaMHClientEvent *)self stoppedListeningForSpeechContinuation];
  v157 = [stoppedListeningForSpeechContinuation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage51 = [v157 suppressMessage];

  if (suppressMessage51)
  {
    [(MHSchemaMHClientEvent *)self deleteStoppedListeningForSpeechContinuation];
  }

  userEngagementModelContext = [(MHSchemaMHClientEvent *)self userEngagementModelContext];
  v160 = [userEngagementModelContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage52 = [v160 suppressMessage];

  if (suppressMessage52)
  {
    [(MHSchemaMHClientEvent *)self deleteUserEngagementModelContext];
  }

  attendingContext = [(MHSchemaMHClientEvent *)self attendingContext];
  v163 = [attendingContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage53 = [v163 suppressMessage];

  if (suppressMessage53)
  {
    [(MHSchemaMHClientEvent *)self deleteAttendingContext];
  }

  crownPressed = [(MHSchemaMHClientEvent *)self crownPressed];
  v166 = [crownPressed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage54 = [v166 suppressMessage];

  if (suppressMessage54)
  {
    [(MHSchemaMHClientEvent *)self deleteCrownPressed];
  }

  rtsTriggered = [(MHSchemaMHClientEvent *)self rtsTriggered];
  v169 = [rtsTriggered applySensitiveConditionsPolicy:policyCopy];
  suppressMessage55 = [v169 suppressMessage];

  if (suppressMessage55)
  {
    [(MHSchemaMHClientEvent *)self deleteRtsTriggered];
  }

  rtsFirstPassPolicyTriggered = [(MHSchemaMHClientEvent *)self rtsFirstPassPolicyTriggered];
  v172 = [rtsFirstPassPolicyTriggered applySensitiveConditionsPolicy:policyCopy];
  suppressMessage56 = [v172 suppressMessage];

  if (suppressMessage56)
  {
    [(MHSchemaMHClientEvent *)self deleteRtsFirstPassPolicyTriggered];
  }

  rtsSecondPassPolicyDecisionMade = [(MHSchemaMHClientEvent *)self rtsSecondPassPolicyDecisionMade];
  v175 = [rtsSecondPassPolicyDecisionMade applySensitiveConditionsPolicy:policyCopy];
  suppressMessage57 = [v175 suppressMessage];

  if (suppressMessage57)
  {
    [(MHSchemaMHClientEvent *)self deleteRtsSecondPassPolicyDecisionMade];
  }

  voiceProfileOnboarded = [(MHSchemaMHClientEvent *)self voiceProfileOnboarded];
  v178 = [voiceProfileOnboarded applySensitiveConditionsPolicy:policyCopy];
  suppressMessage58 = [v178 suppressMessage];

  if (suppressMessage58)
  {
    [(MHSchemaMHClientEvent *)self deleteVoiceProfileOnboarded];
  }

  voiceTriggerRePrompted = [(MHSchemaMHClientEvent *)self voiceTriggerRePrompted];
  v181 = [voiceTriggerRePrompted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage59 = [v181 suppressMessage];

  if (suppressMessage59)
  {
    [(MHSchemaMHClientEvent *)self deleteVoiceTriggerRePrompted];
  }

  assistantDaemonAudioRecordingFailureInsufficientPriority = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFailureInsufficientPriority];
  v184 = [assistantDaemonAudioRecordingFailureInsufficientPriority applySensitiveConditionsPolicy:policyCopy];
  suppressMessage60 = [v184 suppressMessage];

  if (suppressMessage60)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioRecordingFailureInsufficientPriority];
  }

  voiceProfileICloudSyncFinished = [(MHSchemaMHClientEvent *)self voiceProfileICloudSyncFinished];
  v187 = [voiceProfileICloudSyncFinished applySensitiveConditionsPolicy:policyCopy];
  suppressMessage61 = [v187 suppressMessage];

  if (suppressMessage61)
  {
    [(MHSchemaMHClientEvent *)self deleteVoiceProfileICloudSyncFinished];
  }

  voiceTriggerRejectDetected = [(MHSchemaMHClientEvent *)self voiceTriggerRejectDetected];
  v190 = [voiceTriggerRejectDetected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage62 = [v190 suppressMessage];

  if (suppressMessage62)
  {
    [(MHSchemaMHClientEvent *)self deleteVoiceTriggerRejectDetected];
  }

  adaptiveSiriVolumeTTSVolumeQueried = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeTTSVolumeQueried];
  v193 = [adaptiveSiriVolumeTTSVolumeQueried applySensitiveConditionsPolicy:policyCopy];
  suppressMessage63 = [v193 suppressMessage];

  if (suppressMessage63)
  {
    [(MHSchemaMHClientEvent *)self deleteAdaptiveSiriVolumeTTSVolumeQueried];
  }

  adaptiveSiriVolumeUserIntentDetected = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeUserIntentDetected];
  v196 = [adaptiveSiriVolumeUserIntentDetected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage64 = [v196 suppressMessage];

  if (suppressMessage64)
  {
    [(MHSchemaMHClientEvent *)self deleteAdaptiveSiriVolumeUserIntentDetected];
  }

  speakerIdEnrollmentDataReportedTier1 = [(MHSchemaMHClientEvent *)self speakerIdEnrollmentDataReportedTier1];
  v199 = [speakerIdEnrollmentDataReportedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage65 = [v199 suppressMessage];

  if (suppressMessage65)
  {
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdEnrollmentDataReportedTier1];
  }

  speakerIdModelSelectedClockSessionInfoTier1 = [(MHSchemaMHClientEvent *)self speakerIdModelSelectedClockSessionInfoTier1];
  v202 = [speakerIdModelSelectedClockSessionInfoTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage66 = [v202 suppressMessage];

  if (suppressMessage66)
  {
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelSelectedClockSessionInfoTier1];
  }

  speakerIdModelOneSessionReportedTier1 = [(MHSchemaMHClientEvent *)self speakerIdModelOneSessionReportedTier1];
  v205 = [speakerIdModelOneSessionReportedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage67 = [v205 suppressMessage];

  if (suppressMessage67)
  {
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelOneSessionReportedTier1];
  }

  v207 = v5;

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (int)componentName
{
  eventMetadata = [(MHSchemaMHClientEvent *)self eventMetadata];
  mhId = [eventMetadata mhId];

  if (mhId)
  {
    value = [mhId value];
    if (value)
    {
      value2 = [mhId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 9;
      }

      else
      {
        LODWORD(value) = 0;
      }
    }
  }

  else
  {
    LODWORD(value) = 0;
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(MHSchemaMHClientEvent *)self eventMetadata];
  mhId = [eventMetadata mhId];

  if (!mhId)
  {
    goto LABEL_5;
  }

  value = [mhId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [mhId value];
  v6 = [value2 length];

  if (v6)
  {
    value = mhId;
  }

  else
  {
LABEL_5:
    value = 0;
  }

LABEL_6:

  return value;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(MHSchemaMHClientEvent *)self whichEvent_Type];
  v4 = 0;
  v5 = whichEvent_Type - 100;
  v6 = &OBJC_IVAR___MHSchemaMHClientEvent__acousticFalseTriggerMitigationEvaluationContext;
  switch(v5)
  {
    case 0uLL:
      goto LABEL_66;
    case 1uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__latticeFalseTriggerMitigationEvaluationContext;
      goto LABEL_66;
    case 2uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__unintendedResponseSuppressionExecutionContext;
      goto LABEL_66;
    case 3uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__coreSpeechPreprocessorCompleted;
      goto LABEL_66;
    case 4uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__asrAudioConfigureStarted;
      goto LABEL_66;
    case 5uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__assistantDaemonAudioInitContext;
      goto LABEL_66;
    case 6uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__assistantDaemonAudioConfigureContext;
      goto LABEL_66;
    case 7uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__assistantDaemonAudioPrepareContext;
      goto LABEL_66;
    case 8uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__assistantDaemonAudioPrewarmContext;
      goto LABEL_66;
    case 9uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__assistantDaemonAudioStartRecordingContext;
      goto LABEL_66;
    case 0xAuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__assistantDaemonAudioStopRecordingContext;
      goto LABEL_66;
    case 0xBuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__assistantDaemonAudioSessionSetActiveContext;
      goto LABEL_66;
    case 0xCuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__assistantDaemonAudioSessionSetInactiveContext;
      goto LABEL_66;
    case 0xDuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__assistantDaemonAudioFetchRouteContext;
      goto LABEL_66;
    case 0xEuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__assistantDaemonAudioRecordingContext;
      goto LABEL_66;
    case 0xFuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__assistantDaemonAudioRecordingMissedBufferDetected;
      goto LABEL_66;
    case 0x10uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__assistantDaemonAudioLateBufferDetected;
      goto LABEL_66;
    case 0x11uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__assistantDaemonAudioRecordingFirstBufferContext;
      goto LABEL_66;
    case 0x12uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__assistantDaemonAudioRecordingLastBufferContext;
      goto LABEL_66;
    case 0x13uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__assistantDaemonAudioRecordingInterruptionContext;
      goto LABEL_66;
    case 0x14uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__assistantDaemonAudioRecordingInterruptionStartedTier1;
      goto LABEL_66;
    case 0x15uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__assistantDaemonAudioBluetoothInfo;
      goto LABEL_66;
    case 0x16uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__voiceTriggerTwoShotDetected;
      goto LABEL_66;
    case 0x17uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__assistantDaemonAudioTwoShotTransitionContext;
      goto LABEL_66;
    case 0x18uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__voiceTriggerContext;
      goto LABEL_66;
    case 0x19uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__endpointDetected;
      goto LABEL_66;
    case 0x1AuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__endpointLatencyInfoReported;
      goto LABEL_66;
    case 0x1BuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__adblockerContext;
      goto LABEL_66;
    case 0x1CuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__onDeviceEndpointerContext;
      goto LABEL_66;
    case 0x1DuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__serverEndpointerContext;
      goto LABEL_66;
    case 0x1EuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__endpointerUsed;
      goto LABEL_66;
    case 0x1FuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__endpointDelayContext;
      goto LABEL_66;
    case 0x20uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__finalMitigationRecommendation;
      goto LABEL_66;
    case 0x21uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__applicationPlaybackAttempted;
      goto LABEL_66;
    case 0x22uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__siriLaunchRequestContext;
      goto LABEL_66;
    case 0x23uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__endpointerAccessibleContext;
      goto LABEL_66;
    case 0x24uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__carPlayLangaugeMismatched;
      goto LABEL_66;
    case 0x25uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__darwinConnectedDeviceWakeContext;
      goto LABEL_66;
    case 0x26uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__odldFalseTriggerMitigated;
      goto LABEL_66;
    case 0x27uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__speakerFalseTriggerMitigated;
      goto LABEL_66;
    case 0x28uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__siriDirectedSpeechDetectionFailed;
      goto LABEL_66;
    case 0x29uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__audioDucked;
      goto LABEL_66;
    case 0x2AuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__audioRecordingFailed;
      goto LABEL_66;
    case 0x2BuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__rtsFalseRejectDetected;
      goto LABEL_66;
    case 0x2CuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__trpCreated;
      goto LABEL_66;
    case 0x2DuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__userSpeakingContext;
      goto LABEL_66;
    case 0x2EuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__speechStopDetected;
      goto LABEL_66;
    case 0x2FuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__speechDetectorContext;
      goto LABEL_66;
    case 0x30uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__stoppedListeningForSpeechContinuation;
      goto LABEL_66;
    case 0x31uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__userEngagementModelContext;
      goto LABEL_66;
    case 0x32uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__attendingContext;
      goto LABEL_66;
    case 0x33uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__crownPressed;
      goto LABEL_66;
    case 0x34uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__rtsTriggered;
      goto LABEL_66;
    case 0x35uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__rtsFirstPassPolicyTriggered;
      goto LABEL_66;
    case 0x36uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__rtsSecondPassPolicyDecisionMade;
      goto LABEL_66;
    case 0x37uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__voiceProfileOnboarded;
      goto LABEL_66;
    case 0x39uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__voiceTriggerRePrompted;
      goto LABEL_66;
    case 0x3AuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__assistantDaemonAudioRecordingFailureInsufficientPriority;
      goto LABEL_66;
    case 0x3BuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__voiceProfileICloudSyncFinished;
      goto LABEL_66;
    case 0x3CuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__voiceTriggerRejectDetected;
      goto LABEL_66;
    case 0x3DuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__adaptiveSiriVolumeTTSVolumeQueried;
      goto LABEL_66;
    case 0x3EuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__adaptiveSiriVolumeUserIntentDetected;
      goto LABEL_66;
    case 0x3FuLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__speakerIdEnrollmentDataReportedTier1;
      goto LABEL_66;
    case 0x40uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__speakerIdModelSelectedClockSessionInfoTier1;
      goto LABEL_66;
    case 0x41uLL:
      v6 = &OBJC_IVAR___MHSchemaMHClientEvent__speakerIdModelOneSessionReportedTier1;
LABEL_66:
      v4 = *(&self->super.super.super.super.isa + *v6);
      break;
    default:
      break;
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 100 > 0x41)
  {
    return 0;
  }

  else
  {
    return off_1E78E9D18[tag - 100];
  }
}

@end