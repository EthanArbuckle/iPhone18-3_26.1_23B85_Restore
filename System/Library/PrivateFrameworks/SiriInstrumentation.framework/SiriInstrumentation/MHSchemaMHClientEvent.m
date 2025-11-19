@interface MHSchemaMHClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
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
- (MHSchemaMHClientEvent)initWithDictionary:(id)a3;
- (MHSchemaMHClientEvent)initWithJSON:(id)a3;
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
- (id)applySensitiveConditionsPolicy:(id)a3;
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
- (void)setAcousticFalseTriggerMitigationEvaluationContext:(id)a3;
- (void)setAdaptiveSiriVolumeTTSVolumeQueried:(id)a3;
- (void)setAdaptiveSiriVolumeUserIntentDetected:(id)a3;
- (void)setAdblockerContext:(id)a3;
- (void)setApplicationPlaybackAttempted:(id)a3;
- (void)setAsrAudioConfigureStarted:(id)a3;
- (void)setAssistantDaemonAudioBluetoothInfo:(id)a3;
- (void)setAssistantDaemonAudioConfigureContext:(id)a3;
- (void)setAssistantDaemonAudioFetchRouteContext:(id)a3;
- (void)setAssistantDaemonAudioInitContext:(id)a3;
- (void)setAssistantDaemonAudioLateBufferDetected:(id)a3;
- (void)setAssistantDaemonAudioPrepareContext:(id)a3;
- (void)setAssistantDaemonAudioPrewarmContext:(id)a3;
- (void)setAssistantDaemonAudioRecordingContext:(id)a3;
- (void)setAssistantDaemonAudioRecordingFailureInsufficientPriority:(id)a3;
- (void)setAssistantDaemonAudioRecordingFirstBufferContext:(id)a3;
- (void)setAssistantDaemonAudioRecordingInterruptionContext:(id)a3;
- (void)setAssistantDaemonAudioRecordingInterruptionStartedTier1:(id)a3;
- (void)setAssistantDaemonAudioRecordingLastBufferContext:(id)a3;
- (void)setAssistantDaemonAudioRecordingMissedBufferDetected:(id)a3;
- (void)setAssistantDaemonAudioSessionSetActiveContext:(id)a3;
- (void)setAssistantDaemonAudioSessionSetInactiveContext:(id)a3;
- (void)setAssistantDaemonAudioStartRecordingContext:(id)a3;
- (void)setAssistantDaemonAudioStopRecordingContext:(id)a3;
- (void)setAssistantDaemonAudioTwoShotTransitionContext:(id)a3;
- (void)setAttendingContext:(id)a3;
- (void)setAudioDucked:(id)a3;
- (void)setAudioRecordingFailed:(id)a3;
- (void)setCarPlayLangaugeMismatched:(id)a3;
- (void)setCoreSpeechPreprocessorCompleted:(id)a3;
- (void)setCrownPressed:(id)a3;
- (void)setDarwinConnectedDeviceWakeContext:(id)a3;
- (void)setEndpointDelayContext:(id)a3;
- (void)setEndpointDetected:(id)a3;
- (void)setEndpointLatencyInfoReported:(id)a3;
- (void)setEndpointerAccessibleContext:(id)a3;
- (void)setEndpointerUsed:(id)a3;
- (void)setFinalMitigationRecommendation:(id)a3;
- (void)setLatticeFalseTriggerMitigationEvaluationContext:(id)a3;
- (void)setOdldFalseTriggerMitigated:(id)a3;
- (void)setOnDeviceEndpointerContext:(id)a3;
- (void)setRtsFalseRejectDetected:(id)a3;
- (void)setRtsFirstPassPolicyTriggered:(id)a3;
- (void)setRtsSecondPassPolicyDecisionMade:(id)a3;
- (void)setRtsTriggered:(id)a3;
- (void)setServerEndpointerContext:(id)a3;
- (void)setSiriDirectedSpeechDetectionFailed:(id)a3;
- (void)setSiriLaunchRequestContext:(id)a3;
- (void)setSpeakerFalseTriggerMitigated:(id)a3;
- (void)setSpeakerIdEnrollmentDataReportedTier1:(id)a3;
- (void)setSpeakerIdModelOneSessionReportedTier1:(id)a3;
- (void)setSpeakerIdModelSelectedClockSessionInfoTier1:(id)a3;
- (void)setSpeechDetectorContext:(id)a3;
- (void)setSpeechStopDetected:(id)a3;
- (void)setStoppedListeningForSpeechContinuation:(id)a3;
- (void)setTrpCreated:(id)a3;
- (void)setUnintendedResponseSuppressionExecutionContext:(id)a3;
- (void)setUserEngagementModelContext:(id)a3;
- (void)setUserSpeakingContext:(id)a3;
- (void)setVoiceProfileICloudSyncFinished:(id)a3;
- (void)setVoiceProfileOnboarded:(id)a3;
- (void)setVoiceTriggerContext:(id)a3;
- (void)setVoiceTriggerRePrompted:(id)a3;
- (void)setVoiceTriggerRejectDetected:(id)a3;
- (void)setVoiceTriggerTwoShotDetected:(id)a3;
- (void)writeTo:(id)a3;
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
  v2 = [(MHSchemaMHClientEvent *)self whichEvent_Type];
  if (v2 - 157 > 8)
  {
    return 1;
  }

  else
  {
    return dword_1AA738C64[v2 - 157];
  }
}

- (id)qualifiedMessageName
{
  v2 = [(MHSchemaMHClientEvent *)self whichEvent_Type];
  if (v2 - 100 > 0x41)
  {
    return @"com.apple.aiml.siri.mh.MHClientEvent";
  }

  else
  {
    return off_1E78D9570[v2 - 100];
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

- (MHSchemaMHClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v202.receiver = self;
  v202.super_class = MHSchemaMHClientEvent;
  v5 = [(MHSchemaMHClientEvent *)&v202 init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"mhId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(MHSchemaMHClientEvent *)v5 setMhId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[MHSchemaMHClientEventMetadata alloc] initWithDictionary:v8];
      [(MHSchemaMHClientEvent *)v5 setEventMetadata:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"acousticFalseTriggerMitigationEvaluationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[MHSchemaMHAcousticFalseTriggerMitigationEvaluationContext alloc] initWithDictionary:v10];
      [(MHSchemaMHClientEvent *)v5 setAcousticFalseTriggerMitigationEvaluationContext:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"latticeFalseTriggerMitigationEvaluationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[MHSchemaMHLatticeFalseTriggerMitigationEvaluationContext alloc] initWithDictionary:v12];
      [(MHSchemaMHClientEvent *)v5 setLatticeFalseTriggerMitigationEvaluationContext:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"unintendedResponseSuppressionExecutionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[MHSchemaMHUnintendedResponseSuppressionEvaluationContext alloc] initWithDictionary:v14];
      [(MHSchemaMHClientEvent *)v5 setUnintendedResponseSuppressionExecutionContext:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"coreSpeechPreprocessorCompleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[MHSchemaMHCoreSpeechPreprocessorCompleted alloc] initWithDictionary:v16];
      [(MHSchemaMHClientEvent *)v5 setCoreSpeechPreprocessorCompleted:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"asrAudioConfigureStarted"];
    objc_opt_class();
    v201 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[MHSchemaMHASRAudioConfigureStarted alloc] initWithDictionary:v18];
      [(MHSchemaMHClientEvent *)v5 setAsrAudioConfigureStarted:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"assistantDaemonAudioInitContext"];
    objc_opt_class();
    v200 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[MHSchemaMHAssistantDaemonAudioInitContext alloc] initWithDictionary:v20];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioInitContext:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"assistantDaemonAudioConfigureContext"];
    objc_opt_class();
    v199 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[MHSchemaMHAssistantDaemonAudioConfigureContext alloc] initWithDictionary:v22];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioConfigureContext:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"assistantDaemonAudioPrepareContext"];
    objc_opt_class();
    v198 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[MHSchemaMHAssistantDaemonAudioPrepareContext alloc] initWithDictionary:v24];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioPrepareContext:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"assistantDaemonAudioPrewarmContext"];
    objc_opt_class();
    v197 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[MHSchemaMHAssistantDaemonAudioPrewarmContext alloc] initWithDictionary:v26];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioPrewarmContext:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"assistantDaemonAudioStartRecordingContext"];
    objc_opt_class();
    v196 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[MHSchemaMHAssistantDaemonAudioStartRecordingContext alloc] initWithDictionary:v28];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioStartRecordingContext:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"assistantDaemonAudioStopRecordingContext"];
    objc_opt_class();
    v195 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[MHSchemaMHAssistantDaemonAudioStopRecordingContext alloc] initWithDictionary:v30];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioStopRecordingContext:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"assistantDaemonAudioSessionSetActiveContext"];
    objc_opt_class();
    v194 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[MHSchemaMHAssistantDaemonAudioSessionSetActiveContext alloc] initWithDictionary:v32];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioSessionSetActiveContext:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"assistantDaemonAudioSessionSetInactiveContext"];
    objc_opt_class();
    v193 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[MHSchemaMHAssistantDaemonAudioSessionSetInactiveContext alloc] initWithDictionary:v34];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioSessionSetInactiveContext:v35];
    }

    v36 = [v4 objectForKeyedSubscript:@"assistantDaemonAudioFetchRouteContext"];
    objc_opt_class();
    v192 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[MHSchemaMHAssistantDaemonAudioFetchRouteContext alloc] initWithDictionary:v36];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioFetchRouteContext:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"assistantDaemonAudioRecordingContext"];
    objc_opt_class();
    v191 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[MHSchemaMHAssistantDaemonAudioRecordingContext alloc] initWithDictionary:v38];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioRecordingContext:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"assistantDaemonAudioRecordingMissedBufferDetected"];
    objc_opt_class();
    v190 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[MHSchemaMHAssistantDaemonAudioRecordingMissedBufferDetected alloc] initWithDictionary:v40];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioRecordingMissedBufferDetected:v41];
    }

    v42 = [v4 objectForKeyedSubscript:@"assistantDaemonAudioLateBufferDetected"];
    objc_opt_class();
    v189 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [[MHSchemaMHAssistantDaemonAudioLateBufferDetected alloc] initWithDictionary:v42];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioLateBufferDetected:v43];
    }

    v44 = [v4 objectForKeyedSubscript:@"assistantDaemonAudioRecordingFirstBufferContext"];
    objc_opt_class();
    v188 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [[MHSchemaMHAssistantDaemonAudioRecordingFirstBufferContext alloc] initWithDictionary:v44];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioRecordingFirstBufferContext:v45];
    }

    v46 = [v4 objectForKeyedSubscript:@"assistantDaemonAudioRecordingLastBufferContext"];
    objc_opt_class();
    v187 = v46;
    if (objc_opt_isKindOfClass())
    {
      v47 = [[MHSchemaMHAssistantDaemonAudioRecordingLastBufferContext alloc] initWithDictionary:v46];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioRecordingLastBufferContext:v47];
    }

    v48 = [v4 objectForKeyedSubscript:@"assistantDaemonAudioRecordingInterruptionContext"];
    objc_opt_class();
    v186 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [[MHSchemaMHAssistantDaemonAudioRecordingInterruptionContext alloc] initWithDictionary:v48];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioRecordingInterruptionContext:v49];
    }

    v50 = [v4 objectForKeyedSubscript:@"assistantDaemonAudioRecordingInterruptionStartedTier1"];
    objc_opt_class();
    v185 = v50;
    if (objc_opt_isKindOfClass())
    {
      v51 = [[MHSchemaMHAssistantDaemonAudioRecordingInterruptionStartedTier1 alloc] initWithDictionary:v50];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioRecordingInterruptionStartedTier1:v51];
    }

    v52 = [v4 objectForKeyedSubscript:@"assistantDaemonAudioBluetoothInfo"];
    objc_opt_class();
    v184 = v52;
    if (objc_opt_isKindOfClass())
    {
      v53 = [[MHSchemaMHAssistantDaemonAudioBluetoothInfo alloc] initWithDictionary:v52];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioBluetoothInfo:v53];
    }

    v54 = [v4 objectForKeyedSubscript:@"voiceTriggerTwoShotDetected"];
    objc_opt_class();
    v183 = v54;
    if (objc_opt_isKindOfClass())
    {
      v55 = [[MHSchemaMHVoiceTriggerTwoShotDetected alloc] initWithDictionary:v54];
      [(MHSchemaMHClientEvent *)v5 setVoiceTriggerTwoShotDetected:v55];
    }

    v56 = [v4 objectForKeyedSubscript:@"assistantDaemonAudioTwoShotTransitionContext"];
    objc_opt_class();
    v182 = v56;
    if (objc_opt_isKindOfClass())
    {
      v57 = [[MHSchemaMHAssistantDaemonAudioTwoShotTransitionContext alloc] initWithDictionary:v56];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioTwoShotTransitionContext:v57];
    }

    v58 = [v4 objectForKeyedSubscript:@"voiceTriggerContext"];
    objc_opt_class();
    v181 = v58;
    if (objc_opt_isKindOfClass())
    {
      v59 = [[MHSchemaMHVoiceTriggerContext alloc] initWithDictionary:v58];
      [(MHSchemaMHClientEvent *)v5 setVoiceTriggerContext:v59];
    }

    v60 = [v4 objectForKeyedSubscript:@"endpointDetected"];
    objc_opt_class();
    v180 = v60;
    if (objc_opt_isKindOfClass())
    {
      v61 = [[MHSchemaMHEndpointDetected alloc] initWithDictionary:v60];
      [(MHSchemaMHClientEvent *)v5 setEndpointDetected:v61];
    }

    v62 = [v4 objectForKeyedSubscript:@"endpointLatencyInfoReported"];
    objc_opt_class();
    v179 = v62;
    if (objc_opt_isKindOfClass())
    {
      v63 = [[MHSchemaMHEndpointLatencyInfoReported alloc] initWithDictionary:v62];
      [(MHSchemaMHClientEvent *)v5 setEndpointLatencyInfoReported:v63];
    }

    v64 = [v4 objectForKeyedSubscript:@"adblockerContext"];
    objc_opt_class();
    v178 = v64;
    if (objc_opt_isKindOfClass())
    {
      v65 = [[MHSchemaMHVoiceAdBlockerContext alloc] initWithDictionary:v64];
      [(MHSchemaMHClientEvent *)v5 setAdblockerContext:v65];
    }

    v66 = [v4 objectForKeyedSubscript:@"onDeviceEndpointerContext"];
    objc_opt_class();
    v177 = v66;
    if (objc_opt_isKindOfClass())
    {
      v67 = [[MHSchemaMHOnDeviceEndpointerContext alloc] initWithDictionary:v66];
      [(MHSchemaMHClientEvent *)v5 setOnDeviceEndpointerContext:v67];
    }

    v68 = [v4 objectForKeyedSubscript:@"serverEndpointerContext"];
    objc_opt_class();
    v176 = v68;
    if (objc_opt_isKindOfClass())
    {
      v69 = [[MHSchemaMHServerEndpointerContext alloc] initWithDictionary:v68];
      [(MHSchemaMHClientEvent *)v5 setServerEndpointerContext:v69];
    }

    v70 = [v4 objectForKeyedSubscript:@"endpointerUsed"];
    objc_opt_class();
    v175 = v70;
    if (objc_opt_isKindOfClass())
    {
      v71 = [[MHSchemaMHEndpointerUsed alloc] initWithDictionary:v70];
      [(MHSchemaMHClientEvent *)v5 setEndpointerUsed:v71];
    }

    v72 = [v4 objectForKeyedSubscript:@"endpointDelayContext"];
    objc_opt_class();
    v174 = v72;
    if (objc_opt_isKindOfClass())
    {
      v73 = [[MHSchemaMHEndpointDelayContext alloc] initWithDictionary:v72];
      [(MHSchemaMHClientEvent *)v5 setEndpointDelayContext:v73];
    }

    v74 = [v4 objectForKeyedSubscript:@"finalMitigationRecommendation"];
    objc_opt_class();
    v173 = v74;
    if (objc_opt_isKindOfClass())
    {
      v75 = [[MHSchemaMHMitigationDecisionRecommended alloc] initWithDictionary:v74];
      [(MHSchemaMHClientEvent *)v5 setFinalMitigationRecommendation:v75];
    }

    v76 = [v4 objectForKeyedSubscript:@"applicationPlaybackAttempted"];
    objc_opt_class();
    v172 = v76;
    if (objc_opt_isKindOfClass())
    {
      v77 = [[MHSchemaMHApplicationPlaybackAttempted alloc] initWithDictionary:v76];
      [(MHSchemaMHClientEvent *)v5 setApplicationPlaybackAttempted:v77];
    }

    v78 = [v4 objectForKeyedSubscript:@"siriLaunchRequestContext"];
    objc_opt_class();
    v171 = v78;
    if (objc_opt_isKindOfClass())
    {
      v79 = [[MHSchemaMHSiriLaunchRequestContext alloc] initWithDictionary:v78];
      [(MHSchemaMHClientEvent *)v5 setSiriLaunchRequestContext:v79];
    }

    v80 = [v4 objectForKeyedSubscript:@"endpointerAccessibleContext"];
    objc_opt_class();
    v170 = v80;
    if (objc_opt_isKindOfClass())
    {
      v81 = [[MHSchemaMHEndpointerAccessibleContext alloc] initWithDictionary:v80];
      [(MHSchemaMHClientEvent *)v5 setEndpointerAccessibleContext:v81];
    }

    v82 = [v4 objectForKeyedSubscript:@"carPlayLangaugeMismatched"];
    objc_opt_class();
    v169 = v82;
    if (objc_opt_isKindOfClass())
    {
      v83 = [[MHSchemaMHCarplayLanguageMismatch alloc] initWithDictionary:v82];
      [(MHSchemaMHClientEvent *)v5 setCarPlayLangaugeMismatched:v83];
    }

    v84 = [v4 objectForKeyedSubscript:@"darwinConnectedDeviceWakeContext"];
    objc_opt_class();
    v168 = v84;
    if (objc_opt_isKindOfClass())
    {
      v85 = [[MHSchemaMHDarwinConnectedDeviceWakeContext alloc] initWithDictionary:v84];
      [(MHSchemaMHClientEvent *)v5 setDarwinConnectedDeviceWakeContext:v85];
    }

    v86 = [v4 objectForKeyedSubscript:@"odldFalseTriggerMitigated"];
    objc_opt_class();
    v167 = v86;
    if (objc_opt_isKindOfClass())
    {
      v87 = [[MHSchemaMHOdldFalseTriggerMitigated alloc] initWithDictionary:v86];
      [(MHSchemaMHClientEvent *)v5 setOdldFalseTriggerMitigated:v87];
    }

    v88 = [v4 objectForKeyedSubscript:@"speakerFalseTriggerMitigated"];
    objc_opt_class();
    v166 = v88;
    if (objc_opt_isKindOfClass())
    {
      v89 = [[MHSchemaMHSpeakerFalseTriggerMitigated alloc] initWithDictionary:v88];
      [(MHSchemaMHClientEvent *)v5 setSpeakerFalseTriggerMitigated:v89];
    }

    v90 = [v4 objectForKeyedSubscript:@"siriDirectedSpeechDetectionFailed"];
    objc_opt_class();
    v165 = v90;
    if (objc_opt_isKindOfClass())
    {
      v91 = [[MHSchemaMHSiriDirectedSpeechDetectionFailed alloc] initWithDictionary:v90];
      [(MHSchemaMHClientEvent *)v5 setSiriDirectedSpeechDetectionFailed:v91];
    }

    v92 = [v4 objectForKeyedSubscript:@"audioDucked"];
    objc_opt_class();
    v164 = v92;
    if (objc_opt_isKindOfClass())
    {
      v93 = [[MHSchemaMHAudioDucked alloc] initWithDictionary:v92];
      [(MHSchemaMHClientEvent *)v5 setAudioDucked:v93];
    }

    v94 = [v4 objectForKeyedSubscript:@"audioRecordingFailed"];
    objc_opt_class();
    v163 = v94;
    if (objc_opt_isKindOfClass())
    {
      v95 = [[MHSchemaMHAssistantDaemonAudioRecordingFailed alloc] initWithDictionary:v94];
      [(MHSchemaMHClientEvent *)v5 setAudioRecordingFailed:v95];
    }

    v96 = [v4 objectForKeyedSubscript:@"rtsFalseRejectDetected"];
    objc_opt_class();
    v162 = v96;
    if (objc_opt_isKindOfClass())
    {
      v97 = [[MHSchemaMHRTSFalseRejectDetected alloc] initWithDictionary:v96];
      [(MHSchemaMHClientEvent *)v5 setRtsFalseRejectDetected:v97];
    }

    v98 = [v4 objectForKeyedSubscript:@"trpCreated"];
    objc_opt_class();
    v161 = v98;
    if (objc_opt_isKindOfClass())
    {
      v99 = [[MHSchemaMHTRPCreated alloc] initWithDictionary:v98];
      [(MHSchemaMHClientEvent *)v5 setTrpCreated:v99];
    }

    v100 = [v4 objectForKeyedSubscript:@"userSpeakingContext"];
    objc_opt_class();
    v160 = v100;
    if (objc_opt_isKindOfClass())
    {
      v101 = [[MHSchemaMHUserSpeakingContext alloc] initWithDictionary:v100];
      [(MHSchemaMHClientEvent *)v5 setUserSpeakingContext:v101];
    }

    v102 = [v4 objectForKeyedSubscript:@"speechStopDetected"];
    objc_opt_class();
    v159 = v102;
    if (objc_opt_isKindOfClass())
    {
      v103 = [[MHSchemaMHSpeechStopDetected alloc] initWithDictionary:v102];
      [(MHSchemaMHClientEvent *)v5 setSpeechStopDetected:v103];
    }

    v104 = [v4 objectForKeyedSubscript:@"speechDetectorContext"];
    objc_opt_class();
    v158 = v104;
    if (objc_opt_isKindOfClass())
    {
      v105 = [[MHSchemaMHSpeechDetectorContext alloc] initWithDictionary:v104];
      [(MHSchemaMHClientEvent *)v5 setSpeechDetectorContext:v105];
    }

    v106 = [v4 objectForKeyedSubscript:@"stoppedListeningForSpeechContinuation"];
    objc_opt_class();
    v157 = v106;
    if (objc_opt_isKindOfClass())
    {
      v107 = [[MHSchemaMHStoppedListeningForSpeechContinuation alloc] initWithDictionary:v106];
      [(MHSchemaMHClientEvent *)v5 setStoppedListeningForSpeechContinuation:v107];
    }

    v108 = [v4 objectForKeyedSubscript:@"userEngagementModelContext"];
    objc_opt_class();
    v156 = v108;
    if (objc_opt_isKindOfClass())
    {
      v109 = [[MHSchemaMHUserEngagementFalseTriggerMitigationEvaluationContext alloc] initWithDictionary:v108];
      [(MHSchemaMHClientEvent *)v5 setUserEngagementModelContext:v109];
    }

    v110 = [v4 objectForKeyedSubscript:@"attendingContext"];
    objc_opt_class();
    v155 = v110;
    if (objc_opt_isKindOfClass())
    {
      v111 = [[MHSchemaMHAttendingContext alloc] initWithDictionary:v110];
      [(MHSchemaMHClientEvent *)v5 setAttendingContext:v111];
    }

    v112 = [v4 objectForKeyedSubscript:@"crownPressed"];
    objc_opt_class();
    v154 = v112;
    if (objc_opt_isKindOfClass())
    {
      v113 = [[MHSchemaMHCrownPressed alloc] initWithDictionary:v112];
      [(MHSchemaMHClientEvent *)v5 setCrownPressed:v113];
    }

    v114 = [v4 objectForKeyedSubscript:@"rtsTriggered"];
    objc_opt_class();
    v153 = v114;
    if (objc_opt_isKindOfClass())
    {
      v115 = [[MHSchemaMHRaiseToSpeakTriggered alloc] initWithDictionary:v114];
      [(MHSchemaMHClientEvent *)v5 setRtsTriggered:v115];
    }

    v116 = [v4 objectForKeyedSubscript:@"rtsFirstPassPolicyTriggered"];
    objc_opt_class();
    v152 = v116;
    if (objc_opt_isKindOfClass())
    {
      v117 = [[MHSchemaMHRaiseToSpeakFirstPassPolicyTriggered alloc] initWithDictionary:v116];
      [(MHSchemaMHClientEvent *)v5 setRtsFirstPassPolicyTriggered:v117];
    }

    v118 = [v4 objectForKeyedSubscript:@"rtsSecondPassPolicyDecisionMade"];
    objc_opt_class();
    v151 = v118;
    if (objc_opt_isKindOfClass())
    {
      v119 = [[MHSchemaMHRaiseToSpeakSecondPassPolicyDecisionMade alloc] initWithDictionary:v118];
      [(MHSchemaMHClientEvent *)v5 setRtsSecondPassPolicyDecisionMade:v119];
    }

    v120 = [v4 objectForKeyedSubscript:@"voiceProfileOnboarded"];
    objc_opt_class();
    v150 = v120;
    if (objc_opt_isKindOfClass())
    {
      v121 = [[MHSchemaMHVoiceProfileOnboarded alloc] initWithDictionary:v120];
      [(MHSchemaMHClientEvent *)v5 setVoiceProfileOnboarded:v121];
    }

    v122 = [v4 objectForKeyedSubscript:@"voiceTriggerRePrompted"];
    objc_opt_class();
    v149 = v122;
    if (objc_opt_isKindOfClass())
    {
      v123 = [[MHSchemaMHVoiceTriggerRePrompted alloc] initWithDictionary:v122];
      [(MHSchemaMHClientEvent *)v5 setVoiceTriggerRePrompted:v123];
    }

    v146 = v10;
    v124 = [v4 objectForKeyedSubscript:@"assistantDaemonAudioRecordingFailureInsufficientPriority"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v125 = [[MHSchemaMHAssistantDaemonAudioRecordingFailureInsufficientPriority alloc] initWithDictionary:v124];
      [(MHSchemaMHClientEvent *)v5 setAssistantDaemonAudioRecordingFailureInsufficientPriority:v125];
    }

    v142 = v124;
    v145 = v12;
    v126 = [v4 objectForKeyedSubscript:@"voiceProfileICloudSyncFinished"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v127 = [[MHSchemaMHVoiceProfileICloudSyncFinished alloc] initWithDictionary:v126];
      [(MHSchemaMHClientEvent *)v5 setVoiceProfileICloudSyncFinished:v127];
    }

    v144 = v14;
    v128 = [v4 objectForKeyedSubscript:@"voiceTriggerRejectDetected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v129 = [[MHSchemaMHVoiceTriggerRejectDetected alloc] initWithDictionary:v128];
      [(MHSchemaMHClientEvent *)v5 setVoiceTriggerRejectDetected:v129];
    }

    v143 = v16;
    v130 = [v4 objectForKeyedSubscript:@"adaptiveSiriVolumeTTSVolumeQueried"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v131 = [[MHSchemaMHAdaptiveSiriVolumeTTSVolumeQueried alloc] initWithDictionary:v130];
      [(MHSchemaMHClientEvent *)v5 setAdaptiveSiriVolumeTTSVolumeQueried:v131];
    }

    v148 = v6;
    v132 = [v4 objectForKeyedSubscript:@"adaptiveSiriVolumeUserIntentDetected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v133 = [[MHSchemaMHAdaptiveSiriVolumeUserIntentDetected alloc] initWithDictionary:v132];
      [(MHSchemaMHClientEvent *)v5 setAdaptiveSiriVolumeUserIntentDetected:v133];
    }

    v147 = v8;
    v134 = [v4 objectForKeyedSubscript:@"speakerIdEnrollmentDataReportedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v135 = [[MHSchemaMHSpeakerIdDataCollectionEnrollmentDataReportedTier1 alloc] initWithDictionary:v134];
      [(MHSchemaMHClientEvent *)v5 setSpeakerIdEnrollmentDataReportedTier1:v135];
    }

    v136 = [v4 objectForKeyedSubscript:@"speakerIdModelSelectedClockSessionInfoTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v137 = [[MHSchemaMHSpeakerIdDataCollectionSelectedClockSessionInfoTier1 alloc] initWithDictionary:v136];
      [(MHSchemaMHClientEvent *)v5 setSpeakerIdModelSelectedClockSessionInfoTier1:v137];
    }

    v138 = [v4 objectForKeyedSubscript:@"speakerIdModelOneSessionReportedTier1"];
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

- (MHSchemaMHClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(MHSchemaMHClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(MHSchemaMHClientEvent *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_acousticFalseTriggerMitigationEvaluationContext)
  {
    v4 = [(MHSchemaMHClientEvent *)self acousticFalseTriggerMitigationEvaluationContext];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"acousticFalseTriggerMitigationEvaluationContext"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"acousticFalseTriggerMitigationEvaluationContext"];
    }
  }

  if (self->_adaptiveSiriVolumeTTSVolumeQueried)
  {
    v7 = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeTTSVolumeQueried];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"adaptiveSiriVolumeTTSVolumeQueried"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"adaptiveSiriVolumeTTSVolumeQueried"];
    }
  }

  if (self->_adaptiveSiriVolumeUserIntentDetected)
  {
    v10 = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeUserIntentDetected];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"adaptiveSiriVolumeUserIntentDetected"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"adaptiveSiriVolumeUserIntentDetected"];
    }
  }

  if (self->_adblockerContext)
  {
    v13 = [(MHSchemaMHClientEvent *)self adblockerContext];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"adblockerContext"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"adblockerContext"];
    }
  }

  if (self->_applicationPlaybackAttempted)
  {
    v16 = [(MHSchemaMHClientEvent *)self applicationPlaybackAttempted];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"applicationPlaybackAttempted"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"applicationPlaybackAttempted"];
    }
  }

  if (self->_asrAudioConfigureStarted)
  {
    v19 = [(MHSchemaMHClientEvent *)self asrAudioConfigureStarted];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"asrAudioConfigureStarted"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"asrAudioConfigureStarted"];
    }
  }

  if (self->_assistantDaemonAudioBluetoothInfo)
  {
    v22 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioBluetoothInfo];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"assistantDaemonAudioBluetoothInfo"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"assistantDaemonAudioBluetoothInfo"];
    }
  }

  if (self->_assistantDaemonAudioConfigureContext)
  {
    v25 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioConfigureContext];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"assistantDaemonAudioConfigureContext"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"assistantDaemonAudioConfigureContext"];
    }
  }

  if (self->_assistantDaemonAudioFetchRouteContext)
  {
    v28 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioFetchRouteContext];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"assistantDaemonAudioFetchRouteContext"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"assistantDaemonAudioFetchRouteContext"];
    }
  }

  if (self->_assistantDaemonAudioInitContext)
  {
    v31 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioInitContext];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"assistantDaemonAudioInitContext"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"assistantDaemonAudioInitContext"];
    }
  }

  if (self->_assistantDaemonAudioLateBufferDetected)
  {
    v34 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioLateBufferDetected];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"assistantDaemonAudioLateBufferDetected"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"assistantDaemonAudioLateBufferDetected"];
    }
  }

  if (self->_assistantDaemonAudioPrepareContext)
  {
    v37 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrepareContext];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"assistantDaemonAudioPrepareContext"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"assistantDaemonAudioPrepareContext"];
    }
  }

  if (self->_assistantDaemonAudioPrewarmContext)
  {
    v40 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrewarmContext];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"assistantDaemonAudioPrewarmContext"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"assistantDaemonAudioPrewarmContext"];
    }
  }

  if (self->_assistantDaemonAudioRecordingContext)
  {
    v43 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingContext];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"assistantDaemonAudioRecordingContext"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"assistantDaemonAudioRecordingContext"];
    }
  }

  if (self->_assistantDaemonAudioRecordingFailureInsufficientPriority)
  {
    v46 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFailureInsufficientPriority];
    v47 = [v46 dictionaryRepresentation];
    if (v47)
    {
      [v3 setObject:v47 forKeyedSubscript:@"assistantDaemonAudioRecordingFailureInsufficientPriority"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v48 forKeyedSubscript:@"assistantDaemonAudioRecordingFailureInsufficientPriority"];
    }
  }

  if (self->_assistantDaemonAudioRecordingFirstBufferContext)
  {
    v49 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFirstBufferContext];
    v50 = [v49 dictionaryRepresentation];
    if (v50)
    {
      [v3 setObject:v50 forKeyedSubscript:@"assistantDaemonAudioRecordingFirstBufferContext"];
    }

    else
    {
      v51 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v51 forKeyedSubscript:@"assistantDaemonAudioRecordingFirstBufferContext"];
    }
  }

  if (self->_assistantDaemonAudioRecordingInterruptionContext)
  {
    v52 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionContext];
    v53 = [v52 dictionaryRepresentation];
    if (v53)
    {
      [v3 setObject:v53 forKeyedSubscript:@"assistantDaemonAudioRecordingInterruptionContext"];
    }

    else
    {
      v54 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v54 forKeyedSubscript:@"assistantDaemonAudioRecordingInterruptionContext"];
    }
  }

  if (self->_assistantDaemonAudioRecordingInterruptionStartedTier1)
  {
    v55 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionStartedTier1];
    v56 = [v55 dictionaryRepresentation];
    if (v56)
    {
      [v3 setObject:v56 forKeyedSubscript:@"assistantDaemonAudioRecordingInterruptionStartedTier1"];
    }

    else
    {
      v57 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v57 forKeyedSubscript:@"assistantDaemonAudioRecordingInterruptionStartedTier1"];
    }
  }

  if (self->_assistantDaemonAudioRecordingLastBufferContext)
  {
    v58 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingLastBufferContext];
    v59 = [v58 dictionaryRepresentation];
    if (v59)
    {
      [v3 setObject:v59 forKeyedSubscript:@"assistantDaemonAudioRecordingLastBufferContext"];
    }

    else
    {
      v60 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v60 forKeyedSubscript:@"assistantDaemonAudioRecordingLastBufferContext"];
    }
  }

  if (self->_assistantDaemonAudioRecordingMissedBufferDetected)
  {
    v61 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingMissedBufferDetected];
    v62 = [v61 dictionaryRepresentation];
    if (v62)
    {
      [v3 setObject:v62 forKeyedSubscript:@"assistantDaemonAudioRecordingMissedBufferDetected"];
    }

    else
    {
      v63 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v63 forKeyedSubscript:@"assistantDaemonAudioRecordingMissedBufferDetected"];
    }
  }

  if (self->_assistantDaemonAudioSessionSetActiveContext)
  {
    v64 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetActiveContext];
    v65 = [v64 dictionaryRepresentation];
    if (v65)
    {
      [v3 setObject:v65 forKeyedSubscript:@"assistantDaemonAudioSessionSetActiveContext"];
    }

    else
    {
      v66 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v66 forKeyedSubscript:@"assistantDaemonAudioSessionSetActiveContext"];
    }
  }

  if (self->_assistantDaemonAudioSessionSetInactiveContext)
  {
    v67 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetInactiveContext];
    v68 = [v67 dictionaryRepresentation];
    if (v68)
    {
      [v3 setObject:v68 forKeyedSubscript:@"assistantDaemonAudioSessionSetInactiveContext"];
    }

    else
    {
      v69 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v69 forKeyedSubscript:@"assistantDaemonAudioSessionSetInactiveContext"];
    }
  }

  if (self->_assistantDaemonAudioStartRecordingContext)
  {
    v70 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStartRecordingContext];
    v71 = [v70 dictionaryRepresentation];
    if (v71)
    {
      [v3 setObject:v71 forKeyedSubscript:@"assistantDaemonAudioStartRecordingContext"];
    }

    else
    {
      v72 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v72 forKeyedSubscript:@"assistantDaemonAudioStartRecordingContext"];
    }
  }

  if (self->_assistantDaemonAudioStopRecordingContext)
  {
    v73 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStopRecordingContext];
    v74 = [v73 dictionaryRepresentation];
    if (v74)
    {
      [v3 setObject:v74 forKeyedSubscript:@"assistantDaemonAudioStopRecordingContext"];
    }

    else
    {
      v75 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v75 forKeyedSubscript:@"assistantDaemonAudioStopRecordingContext"];
    }
  }

  if (self->_assistantDaemonAudioTwoShotTransitionContext)
  {
    v76 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioTwoShotTransitionContext];
    v77 = [v76 dictionaryRepresentation];
    if (v77)
    {
      [v3 setObject:v77 forKeyedSubscript:@"assistantDaemonAudioTwoShotTransitionContext"];
    }

    else
    {
      v78 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v78 forKeyedSubscript:@"assistantDaemonAudioTwoShotTransitionContext"];
    }
  }

  if (self->_attendingContext)
  {
    v79 = [(MHSchemaMHClientEvent *)self attendingContext];
    v80 = [v79 dictionaryRepresentation];
    if (v80)
    {
      [v3 setObject:v80 forKeyedSubscript:@"attendingContext"];
    }

    else
    {
      v81 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v81 forKeyedSubscript:@"attendingContext"];
    }
  }

  if (self->_audioDucked)
  {
    v82 = [(MHSchemaMHClientEvent *)self audioDucked];
    v83 = [v82 dictionaryRepresentation];
    if (v83)
    {
      [v3 setObject:v83 forKeyedSubscript:@"audioDucked"];
    }

    else
    {
      v84 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v84 forKeyedSubscript:@"audioDucked"];
    }
  }

  if (self->_audioRecordingFailed)
  {
    v85 = [(MHSchemaMHClientEvent *)self audioRecordingFailed];
    v86 = [v85 dictionaryRepresentation];
    if (v86)
    {
      [v3 setObject:v86 forKeyedSubscript:@"audioRecordingFailed"];
    }

    else
    {
      v87 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v87 forKeyedSubscript:@"audioRecordingFailed"];
    }
  }

  if (self->_carPlayLangaugeMismatched)
  {
    v88 = [(MHSchemaMHClientEvent *)self carPlayLangaugeMismatched];
    v89 = [v88 dictionaryRepresentation];
    if (v89)
    {
      [v3 setObject:v89 forKeyedSubscript:@"carPlayLangaugeMismatched"];
    }

    else
    {
      v90 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v90 forKeyedSubscript:@"carPlayLangaugeMismatched"];
    }
  }

  if (self->_coreSpeechPreprocessorCompleted)
  {
    v91 = [(MHSchemaMHClientEvent *)self coreSpeechPreprocessorCompleted];
    v92 = [v91 dictionaryRepresentation];
    if (v92)
    {
      [v3 setObject:v92 forKeyedSubscript:@"coreSpeechPreprocessorCompleted"];
    }

    else
    {
      v93 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v93 forKeyedSubscript:@"coreSpeechPreprocessorCompleted"];
    }
  }

  if (self->_crownPressed)
  {
    v94 = [(MHSchemaMHClientEvent *)self crownPressed];
    v95 = [v94 dictionaryRepresentation];
    if (v95)
    {
      [v3 setObject:v95 forKeyedSubscript:@"crownPressed"];
    }

    else
    {
      v96 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v96 forKeyedSubscript:@"crownPressed"];
    }
  }

  if (self->_darwinConnectedDeviceWakeContext)
  {
    v97 = [(MHSchemaMHClientEvent *)self darwinConnectedDeviceWakeContext];
    v98 = [v97 dictionaryRepresentation];
    if (v98)
    {
      [v3 setObject:v98 forKeyedSubscript:@"darwinConnectedDeviceWakeContext"];
    }

    else
    {
      v99 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v99 forKeyedSubscript:@"darwinConnectedDeviceWakeContext"];
    }
  }

  if (self->_endpointDelayContext)
  {
    v100 = [(MHSchemaMHClientEvent *)self endpointDelayContext];
    v101 = [v100 dictionaryRepresentation];
    if (v101)
    {
      [v3 setObject:v101 forKeyedSubscript:@"endpointDelayContext"];
    }

    else
    {
      v102 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v102 forKeyedSubscript:@"endpointDelayContext"];
    }
  }

  if (self->_endpointDetected)
  {
    v103 = [(MHSchemaMHClientEvent *)self endpointDetected];
    v104 = [v103 dictionaryRepresentation];
    if (v104)
    {
      [v3 setObject:v104 forKeyedSubscript:@"endpointDetected"];
    }

    else
    {
      v105 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v105 forKeyedSubscript:@"endpointDetected"];
    }
  }

  if (self->_endpointLatencyInfoReported)
  {
    v106 = [(MHSchemaMHClientEvent *)self endpointLatencyInfoReported];
    v107 = [v106 dictionaryRepresentation];
    if (v107)
    {
      [v3 setObject:v107 forKeyedSubscript:@"endpointLatencyInfoReported"];
    }

    else
    {
      v108 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v108 forKeyedSubscript:@"endpointLatencyInfoReported"];
    }
  }

  if (self->_endpointerAccessibleContext)
  {
    v109 = [(MHSchemaMHClientEvent *)self endpointerAccessibleContext];
    v110 = [v109 dictionaryRepresentation];
    if (v110)
    {
      [v3 setObject:v110 forKeyedSubscript:@"endpointerAccessibleContext"];
    }

    else
    {
      v111 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v111 forKeyedSubscript:@"endpointerAccessibleContext"];
    }
  }

  if (self->_endpointerUsed)
  {
    v112 = [(MHSchemaMHClientEvent *)self endpointerUsed];
    v113 = [v112 dictionaryRepresentation];
    if (v113)
    {
      [v3 setObject:v113 forKeyedSubscript:@"endpointerUsed"];
    }

    else
    {
      v114 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v114 forKeyedSubscript:@"endpointerUsed"];
    }
  }

  if (self->_eventMetadata)
  {
    v115 = [(MHSchemaMHClientEvent *)self eventMetadata];
    v116 = [v115 dictionaryRepresentation];
    if (v116)
    {
      [v3 setObject:v116 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v117 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v117 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_finalMitigationRecommendation)
  {
    v118 = [(MHSchemaMHClientEvent *)self finalMitigationRecommendation];
    v119 = [v118 dictionaryRepresentation];
    if (v119)
    {
      [v3 setObject:v119 forKeyedSubscript:@"finalMitigationRecommendation"];
    }

    else
    {
      v120 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v120 forKeyedSubscript:@"finalMitigationRecommendation"];
    }
  }

  if (self->_latticeFalseTriggerMitigationEvaluationContext)
  {
    v121 = [(MHSchemaMHClientEvent *)self latticeFalseTriggerMitigationEvaluationContext];
    v122 = [v121 dictionaryRepresentation];
    if (v122)
    {
      [v3 setObject:v122 forKeyedSubscript:@"latticeFalseTriggerMitigationEvaluationContext"];
    }

    else
    {
      v123 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v123 forKeyedSubscript:@"latticeFalseTriggerMitigationEvaluationContext"];
    }
  }

  if (self->_mhId)
  {
    v124 = [(MHSchemaMHClientEvent *)self mhId];
    v125 = [v124 dictionaryRepresentation];
    if (v125)
    {
      [v3 setObject:v125 forKeyedSubscript:@"mhId"];
    }

    else
    {
      v126 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v126 forKeyedSubscript:@"mhId"];
    }
  }

  if (self->_odldFalseTriggerMitigated)
  {
    v127 = [(MHSchemaMHClientEvent *)self odldFalseTriggerMitigated];
    v128 = [v127 dictionaryRepresentation];
    if (v128)
    {
      [v3 setObject:v128 forKeyedSubscript:@"odldFalseTriggerMitigated"];
    }

    else
    {
      v129 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v129 forKeyedSubscript:@"odldFalseTriggerMitigated"];
    }
  }

  if (self->_onDeviceEndpointerContext)
  {
    v130 = [(MHSchemaMHClientEvent *)self onDeviceEndpointerContext];
    v131 = [v130 dictionaryRepresentation];
    if (v131)
    {
      [v3 setObject:v131 forKeyedSubscript:@"onDeviceEndpointerContext"];
    }

    else
    {
      v132 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v132 forKeyedSubscript:@"onDeviceEndpointerContext"];
    }
  }

  if (self->_rtsFalseRejectDetected)
  {
    v133 = [(MHSchemaMHClientEvent *)self rtsFalseRejectDetected];
    v134 = [v133 dictionaryRepresentation];
    if (v134)
    {
      [v3 setObject:v134 forKeyedSubscript:@"rtsFalseRejectDetected"];
    }

    else
    {
      v135 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v135 forKeyedSubscript:@"rtsFalseRejectDetected"];
    }
  }

  if (self->_rtsFirstPassPolicyTriggered)
  {
    v136 = [(MHSchemaMHClientEvent *)self rtsFirstPassPolicyTriggered];
    v137 = [v136 dictionaryRepresentation];
    if (v137)
    {
      [v3 setObject:v137 forKeyedSubscript:@"rtsFirstPassPolicyTriggered"];
    }

    else
    {
      v138 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v138 forKeyedSubscript:@"rtsFirstPassPolicyTriggered"];
    }
  }

  if (self->_rtsSecondPassPolicyDecisionMade)
  {
    v139 = [(MHSchemaMHClientEvent *)self rtsSecondPassPolicyDecisionMade];
    v140 = [v139 dictionaryRepresentation];
    if (v140)
    {
      [v3 setObject:v140 forKeyedSubscript:@"rtsSecondPassPolicyDecisionMade"];
    }

    else
    {
      v141 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v141 forKeyedSubscript:@"rtsSecondPassPolicyDecisionMade"];
    }
  }

  if (self->_rtsTriggered)
  {
    v142 = [(MHSchemaMHClientEvent *)self rtsTriggered];
    v143 = [v142 dictionaryRepresentation];
    if (v143)
    {
      [v3 setObject:v143 forKeyedSubscript:@"rtsTriggered"];
    }

    else
    {
      v144 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v144 forKeyedSubscript:@"rtsTriggered"];
    }
  }

  if (self->_serverEndpointerContext)
  {
    v145 = [(MHSchemaMHClientEvent *)self serverEndpointerContext];
    v146 = [v145 dictionaryRepresentation];
    if (v146)
    {
      [v3 setObject:v146 forKeyedSubscript:@"serverEndpointerContext"];
    }

    else
    {
      v147 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v147 forKeyedSubscript:@"serverEndpointerContext"];
    }
  }

  if (self->_siriDirectedSpeechDetectionFailed)
  {
    v148 = [(MHSchemaMHClientEvent *)self siriDirectedSpeechDetectionFailed];
    v149 = [v148 dictionaryRepresentation];
    if (v149)
    {
      [v3 setObject:v149 forKeyedSubscript:@"siriDirectedSpeechDetectionFailed"];
    }

    else
    {
      v150 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v150 forKeyedSubscript:@"siriDirectedSpeechDetectionFailed"];
    }
  }

  if (self->_siriLaunchRequestContext)
  {
    v151 = [(MHSchemaMHClientEvent *)self siriLaunchRequestContext];
    v152 = [v151 dictionaryRepresentation];
    if (v152)
    {
      [v3 setObject:v152 forKeyedSubscript:@"siriLaunchRequestContext"];
    }

    else
    {
      v153 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v153 forKeyedSubscript:@"siriLaunchRequestContext"];
    }
  }

  if (self->_speakerFalseTriggerMitigated)
  {
    v154 = [(MHSchemaMHClientEvent *)self speakerFalseTriggerMitigated];
    v155 = [v154 dictionaryRepresentation];
    if (v155)
    {
      [v3 setObject:v155 forKeyedSubscript:@"speakerFalseTriggerMitigated"];
    }

    else
    {
      v156 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v156 forKeyedSubscript:@"speakerFalseTriggerMitigated"];
    }
  }

  if (self->_speakerIdEnrollmentDataReportedTier1)
  {
    v157 = [(MHSchemaMHClientEvent *)self speakerIdEnrollmentDataReportedTier1];
    v158 = [v157 dictionaryRepresentation];
    if (v158)
    {
      [v3 setObject:v158 forKeyedSubscript:@"speakerIdEnrollmentDataReportedTier1"];
    }

    else
    {
      v159 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v159 forKeyedSubscript:@"speakerIdEnrollmentDataReportedTier1"];
    }
  }

  if (self->_speakerIdModelOneSessionReportedTier1)
  {
    v160 = [(MHSchemaMHClientEvent *)self speakerIdModelOneSessionReportedTier1];
    v161 = [v160 dictionaryRepresentation];
    if (v161)
    {
      [v3 setObject:v161 forKeyedSubscript:@"speakerIdModelOneSessionReportedTier1"];
    }

    else
    {
      v162 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v162 forKeyedSubscript:@"speakerIdModelOneSessionReportedTier1"];
    }
  }

  if (self->_speakerIdModelSelectedClockSessionInfoTier1)
  {
    v163 = [(MHSchemaMHClientEvent *)self speakerIdModelSelectedClockSessionInfoTier1];
    v164 = [v163 dictionaryRepresentation];
    if (v164)
    {
      [v3 setObject:v164 forKeyedSubscript:@"speakerIdModelSelectedClockSessionInfoTier1"];
    }

    else
    {
      v165 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v165 forKeyedSubscript:@"speakerIdModelSelectedClockSessionInfoTier1"];
    }
  }

  if (self->_speechDetectorContext)
  {
    v166 = [(MHSchemaMHClientEvent *)self speechDetectorContext];
    v167 = [v166 dictionaryRepresentation];
    if (v167)
    {
      [v3 setObject:v167 forKeyedSubscript:@"speechDetectorContext"];
    }

    else
    {
      v168 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v168 forKeyedSubscript:@"speechDetectorContext"];
    }
  }

  if (self->_speechStopDetected)
  {
    v169 = [(MHSchemaMHClientEvent *)self speechStopDetected];
    v170 = [v169 dictionaryRepresentation];
    if (v170)
    {
      [v3 setObject:v170 forKeyedSubscript:@"speechStopDetected"];
    }

    else
    {
      v171 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v171 forKeyedSubscript:@"speechStopDetected"];
    }
  }

  if (self->_stoppedListeningForSpeechContinuation)
  {
    v172 = [(MHSchemaMHClientEvent *)self stoppedListeningForSpeechContinuation];
    v173 = [v172 dictionaryRepresentation];
    if (v173)
    {
      [v3 setObject:v173 forKeyedSubscript:@"stoppedListeningForSpeechContinuation"];
    }

    else
    {
      v174 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v174 forKeyedSubscript:@"stoppedListeningForSpeechContinuation"];
    }
  }

  if (self->_trpCreated)
  {
    v175 = [(MHSchemaMHClientEvent *)self trpCreated];
    v176 = [v175 dictionaryRepresentation];
    if (v176)
    {
      [v3 setObject:v176 forKeyedSubscript:@"trpCreated"];
    }

    else
    {
      v177 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v177 forKeyedSubscript:@"trpCreated"];
    }
  }

  if (self->_unintendedResponseSuppressionExecutionContext)
  {
    v178 = [(MHSchemaMHClientEvent *)self unintendedResponseSuppressionExecutionContext];
    v179 = [v178 dictionaryRepresentation];
    if (v179)
    {
      [v3 setObject:v179 forKeyedSubscript:@"unintendedResponseSuppressionExecutionContext"];
    }

    else
    {
      v180 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v180 forKeyedSubscript:@"unintendedResponseSuppressionExecutionContext"];
    }
  }

  if (self->_userEngagementModelContext)
  {
    v181 = [(MHSchemaMHClientEvent *)self userEngagementModelContext];
    v182 = [v181 dictionaryRepresentation];
    if (v182)
    {
      [v3 setObject:v182 forKeyedSubscript:@"userEngagementModelContext"];
    }

    else
    {
      v183 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v183 forKeyedSubscript:@"userEngagementModelContext"];
    }
  }

  if (self->_userSpeakingContext)
  {
    v184 = [(MHSchemaMHClientEvent *)self userSpeakingContext];
    v185 = [v184 dictionaryRepresentation];
    if (v185)
    {
      [v3 setObject:v185 forKeyedSubscript:@"userSpeakingContext"];
    }

    else
    {
      v186 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v186 forKeyedSubscript:@"userSpeakingContext"];
    }
  }

  if (self->_voiceProfileICloudSyncFinished)
  {
    v187 = [(MHSchemaMHClientEvent *)self voiceProfileICloudSyncFinished];
    v188 = [v187 dictionaryRepresentation];
    if (v188)
    {
      [v3 setObject:v188 forKeyedSubscript:@"voiceProfileICloudSyncFinished"];
    }

    else
    {
      v189 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v189 forKeyedSubscript:@"voiceProfileICloudSyncFinished"];
    }
  }

  if (self->_voiceProfileOnboarded)
  {
    v190 = [(MHSchemaMHClientEvent *)self voiceProfileOnboarded];
    v191 = [v190 dictionaryRepresentation];
    if (v191)
    {
      [v3 setObject:v191 forKeyedSubscript:@"voiceProfileOnboarded"];
    }

    else
    {
      v192 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v192 forKeyedSubscript:@"voiceProfileOnboarded"];
    }
  }

  if (self->_voiceTriggerContext)
  {
    v193 = [(MHSchemaMHClientEvent *)self voiceTriggerContext];
    v194 = [v193 dictionaryRepresentation];
    if (v194)
    {
      [v3 setObject:v194 forKeyedSubscript:@"voiceTriggerContext"];
    }

    else
    {
      v195 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v195 forKeyedSubscript:@"voiceTriggerContext"];
    }
  }

  if (self->_voiceTriggerRePrompted)
  {
    v196 = [(MHSchemaMHClientEvent *)self voiceTriggerRePrompted];
    v197 = [v196 dictionaryRepresentation];
    if (v197)
    {
      [v3 setObject:v197 forKeyedSubscript:@"voiceTriggerRePrompted"];
    }

    else
    {
      v198 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v198 forKeyedSubscript:@"voiceTriggerRePrompted"];
    }
  }

  if (self->_voiceTriggerRejectDetected)
  {
    v199 = [(MHSchemaMHClientEvent *)self voiceTriggerRejectDetected];
    v200 = [v199 dictionaryRepresentation];
    if (v200)
    {
      [v3 setObject:v200 forKeyedSubscript:@"voiceTriggerRejectDetected"];
    }

    else
    {
      v201 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v201 forKeyedSubscript:@"voiceTriggerRejectDetected"];
    }
  }

  if (self->_voiceTriggerTwoShotDetected)
  {
    v202 = [(MHSchemaMHClientEvent *)self voiceTriggerTwoShotDetected];
    v203 = [v202 dictionaryRepresentation];
    if (v203)
    {
      [v3 setObject:v203 forKeyedSubscript:@"voiceTriggerTwoShotDetected"];
    }

    else
    {
      v204 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v204 forKeyedSubscript:@"voiceTriggerTwoShotDetected"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v205 = v3;

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_338;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_338;
  }

  v6 = [(MHSchemaMHClientEvent *)self mhId];
  v7 = [v4 mhId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v8 = [(MHSchemaMHClientEvent *)self mhId];
  if (v8)
  {
    v9 = v8;
    v10 = [(MHSchemaMHClientEvent *)self mhId];
    v11 = [v4 mhId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v13 = [(MHSchemaMHClientEvent *)self eventMetadata];
  if (v13)
  {
    v14 = v13;
    v15 = [(MHSchemaMHClientEvent *)self eventMetadata];
    v16 = [v4 eventMetadata];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self acousticFalseTriggerMitigationEvaluationContext];
  v7 = [v4 acousticFalseTriggerMitigationEvaluationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v18 = [(MHSchemaMHClientEvent *)self acousticFalseTriggerMitigationEvaluationContext];
  if (v18)
  {
    v19 = v18;
    v20 = [(MHSchemaMHClientEvent *)self acousticFalseTriggerMitigationEvaluationContext];
    v21 = [v4 acousticFalseTriggerMitigationEvaluationContext];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self latticeFalseTriggerMitigationEvaluationContext];
  v7 = [v4 latticeFalseTriggerMitigationEvaluationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v23 = [(MHSchemaMHClientEvent *)self latticeFalseTriggerMitigationEvaluationContext];
  if (v23)
  {
    v24 = v23;
    v25 = [(MHSchemaMHClientEvent *)self latticeFalseTriggerMitigationEvaluationContext];
    v26 = [v4 latticeFalseTriggerMitigationEvaluationContext];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self unintendedResponseSuppressionExecutionContext];
  v7 = [v4 unintendedResponseSuppressionExecutionContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v28 = [(MHSchemaMHClientEvent *)self unintendedResponseSuppressionExecutionContext];
  if (v28)
  {
    v29 = v28;
    v30 = [(MHSchemaMHClientEvent *)self unintendedResponseSuppressionExecutionContext];
    v31 = [v4 unintendedResponseSuppressionExecutionContext];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self coreSpeechPreprocessorCompleted];
  v7 = [v4 coreSpeechPreprocessorCompleted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v33 = [(MHSchemaMHClientEvent *)self coreSpeechPreprocessorCompleted];
  if (v33)
  {
    v34 = v33;
    v35 = [(MHSchemaMHClientEvent *)self coreSpeechPreprocessorCompleted];
    v36 = [v4 coreSpeechPreprocessorCompleted];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self asrAudioConfigureStarted];
  v7 = [v4 asrAudioConfigureStarted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v38 = [(MHSchemaMHClientEvent *)self asrAudioConfigureStarted];
  if (v38)
  {
    v39 = v38;
    v40 = [(MHSchemaMHClientEvent *)self asrAudioConfigureStarted];
    v41 = [v4 asrAudioConfigureStarted];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioInitContext];
  v7 = [v4 assistantDaemonAudioInitContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v43 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioInitContext];
  if (v43)
  {
    v44 = v43;
    v45 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioInitContext];
    v46 = [v4 assistantDaemonAudioInitContext];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioConfigureContext];
  v7 = [v4 assistantDaemonAudioConfigureContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v48 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioConfigureContext];
  if (v48)
  {
    v49 = v48;
    v50 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioConfigureContext];
    v51 = [v4 assistantDaemonAudioConfigureContext];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrepareContext];
  v7 = [v4 assistantDaemonAudioPrepareContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v53 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrepareContext];
  if (v53)
  {
    v54 = v53;
    v55 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrepareContext];
    v56 = [v4 assistantDaemonAudioPrepareContext];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrewarmContext];
  v7 = [v4 assistantDaemonAudioPrewarmContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v58 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrewarmContext];
  if (v58)
  {
    v59 = v58;
    v60 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrewarmContext];
    v61 = [v4 assistantDaemonAudioPrewarmContext];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStartRecordingContext];
  v7 = [v4 assistantDaemonAudioStartRecordingContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v63 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStartRecordingContext];
  if (v63)
  {
    v64 = v63;
    v65 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStartRecordingContext];
    v66 = [v4 assistantDaemonAudioStartRecordingContext];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStopRecordingContext];
  v7 = [v4 assistantDaemonAudioStopRecordingContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v68 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStopRecordingContext];
  if (v68)
  {
    v69 = v68;
    v70 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStopRecordingContext];
    v71 = [v4 assistantDaemonAudioStopRecordingContext];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetActiveContext];
  v7 = [v4 assistantDaemonAudioSessionSetActiveContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v73 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetActiveContext];
  if (v73)
  {
    v74 = v73;
    v75 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetActiveContext];
    v76 = [v4 assistantDaemonAudioSessionSetActiveContext];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetInactiveContext];
  v7 = [v4 assistantDaemonAudioSessionSetInactiveContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v78 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetInactiveContext];
  if (v78)
  {
    v79 = v78;
    v80 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetInactiveContext];
    v81 = [v4 assistantDaemonAudioSessionSetInactiveContext];
    v82 = [v80 isEqual:v81];

    if (!v82)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioFetchRouteContext];
  v7 = [v4 assistantDaemonAudioFetchRouteContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v83 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioFetchRouteContext];
  if (v83)
  {
    v84 = v83;
    v85 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioFetchRouteContext];
    v86 = [v4 assistantDaemonAudioFetchRouteContext];
    v87 = [v85 isEqual:v86];

    if (!v87)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingContext];
  v7 = [v4 assistantDaemonAudioRecordingContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v88 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingContext];
  if (v88)
  {
    v89 = v88;
    v90 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingContext];
    v91 = [v4 assistantDaemonAudioRecordingContext];
    v92 = [v90 isEqual:v91];

    if (!v92)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingMissedBufferDetected];
  v7 = [v4 assistantDaemonAudioRecordingMissedBufferDetected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v93 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingMissedBufferDetected];
  if (v93)
  {
    v94 = v93;
    v95 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingMissedBufferDetected];
    v96 = [v4 assistantDaemonAudioRecordingMissedBufferDetected];
    v97 = [v95 isEqual:v96];

    if (!v97)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioLateBufferDetected];
  v7 = [v4 assistantDaemonAudioLateBufferDetected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v98 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioLateBufferDetected];
  if (v98)
  {
    v99 = v98;
    v100 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioLateBufferDetected];
    v101 = [v4 assistantDaemonAudioLateBufferDetected];
    v102 = [v100 isEqual:v101];

    if (!v102)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFirstBufferContext];
  v7 = [v4 assistantDaemonAudioRecordingFirstBufferContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v103 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFirstBufferContext];
  if (v103)
  {
    v104 = v103;
    v105 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFirstBufferContext];
    v106 = [v4 assistantDaemonAudioRecordingFirstBufferContext];
    v107 = [v105 isEqual:v106];

    if (!v107)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingLastBufferContext];
  v7 = [v4 assistantDaemonAudioRecordingLastBufferContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v108 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingLastBufferContext];
  if (v108)
  {
    v109 = v108;
    v110 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingLastBufferContext];
    v111 = [v4 assistantDaemonAudioRecordingLastBufferContext];
    v112 = [v110 isEqual:v111];

    if (!v112)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionContext];
  v7 = [v4 assistantDaemonAudioRecordingInterruptionContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v113 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionContext];
  if (v113)
  {
    v114 = v113;
    v115 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionContext];
    v116 = [v4 assistantDaemonAudioRecordingInterruptionContext];
    v117 = [v115 isEqual:v116];

    if (!v117)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionStartedTier1];
  v7 = [v4 assistantDaemonAudioRecordingInterruptionStartedTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v118 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionStartedTier1];
  if (v118)
  {
    v119 = v118;
    v120 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionStartedTier1];
    v121 = [v4 assistantDaemonAudioRecordingInterruptionStartedTier1];
    v122 = [v120 isEqual:v121];

    if (!v122)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioBluetoothInfo];
  v7 = [v4 assistantDaemonAudioBluetoothInfo];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v123 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioBluetoothInfo];
  if (v123)
  {
    v124 = v123;
    v125 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioBluetoothInfo];
    v126 = [v4 assistantDaemonAudioBluetoothInfo];
    v127 = [v125 isEqual:v126];

    if (!v127)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self voiceTriggerTwoShotDetected];
  v7 = [v4 voiceTriggerTwoShotDetected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v128 = [(MHSchemaMHClientEvent *)self voiceTriggerTwoShotDetected];
  if (v128)
  {
    v129 = v128;
    v130 = [(MHSchemaMHClientEvent *)self voiceTriggerTwoShotDetected];
    v131 = [v4 voiceTriggerTwoShotDetected];
    v132 = [v130 isEqual:v131];

    if (!v132)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioTwoShotTransitionContext];
  v7 = [v4 assistantDaemonAudioTwoShotTransitionContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v133 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioTwoShotTransitionContext];
  if (v133)
  {
    v134 = v133;
    v135 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioTwoShotTransitionContext];
    v136 = [v4 assistantDaemonAudioTwoShotTransitionContext];
    v137 = [v135 isEqual:v136];

    if (!v137)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self voiceTriggerContext];
  v7 = [v4 voiceTriggerContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v138 = [(MHSchemaMHClientEvent *)self voiceTriggerContext];
  if (v138)
  {
    v139 = v138;
    v140 = [(MHSchemaMHClientEvent *)self voiceTriggerContext];
    v141 = [v4 voiceTriggerContext];
    v142 = [v140 isEqual:v141];

    if (!v142)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self endpointDetected];
  v7 = [v4 endpointDetected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v143 = [(MHSchemaMHClientEvent *)self endpointDetected];
  if (v143)
  {
    v144 = v143;
    v145 = [(MHSchemaMHClientEvent *)self endpointDetected];
    v146 = [v4 endpointDetected];
    v147 = [v145 isEqual:v146];

    if (!v147)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self endpointLatencyInfoReported];
  v7 = [v4 endpointLatencyInfoReported];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v148 = [(MHSchemaMHClientEvent *)self endpointLatencyInfoReported];
  if (v148)
  {
    v149 = v148;
    v150 = [(MHSchemaMHClientEvent *)self endpointLatencyInfoReported];
    v151 = [v4 endpointLatencyInfoReported];
    v152 = [v150 isEqual:v151];

    if (!v152)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self adblockerContext];
  v7 = [v4 adblockerContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v153 = [(MHSchemaMHClientEvent *)self adblockerContext];
  if (v153)
  {
    v154 = v153;
    v155 = [(MHSchemaMHClientEvent *)self adblockerContext];
    v156 = [v4 adblockerContext];
    v157 = [v155 isEqual:v156];

    if (!v157)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self onDeviceEndpointerContext];
  v7 = [v4 onDeviceEndpointerContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v158 = [(MHSchemaMHClientEvent *)self onDeviceEndpointerContext];
  if (v158)
  {
    v159 = v158;
    v160 = [(MHSchemaMHClientEvent *)self onDeviceEndpointerContext];
    v161 = [v4 onDeviceEndpointerContext];
    v162 = [v160 isEqual:v161];

    if (!v162)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self serverEndpointerContext];
  v7 = [v4 serverEndpointerContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v163 = [(MHSchemaMHClientEvent *)self serverEndpointerContext];
  if (v163)
  {
    v164 = v163;
    v165 = [(MHSchemaMHClientEvent *)self serverEndpointerContext];
    v166 = [v4 serverEndpointerContext];
    v167 = [v165 isEqual:v166];

    if (!v167)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self endpointerUsed];
  v7 = [v4 endpointerUsed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v168 = [(MHSchemaMHClientEvent *)self endpointerUsed];
  if (v168)
  {
    v169 = v168;
    v170 = [(MHSchemaMHClientEvent *)self endpointerUsed];
    v171 = [v4 endpointerUsed];
    v172 = [v170 isEqual:v171];

    if (!v172)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self endpointDelayContext];
  v7 = [v4 endpointDelayContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v173 = [(MHSchemaMHClientEvent *)self endpointDelayContext];
  if (v173)
  {
    v174 = v173;
    v175 = [(MHSchemaMHClientEvent *)self endpointDelayContext];
    v176 = [v4 endpointDelayContext];
    v177 = [v175 isEqual:v176];

    if (!v177)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self finalMitigationRecommendation];
  v7 = [v4 finalMitigationRecommendation];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v178 = [(MHSchemaMHClientEvent *)self finalMitigationRecommendation];
  if (v178)
  {
    v179 = v178;
    v180 = [(MHSchemaMHClientEvent *)self finalMitigationRecommendation];
    v181 = [v4 finalMitigationRecommendation];
    v182 = [v180 isEqual:v181];

    if (!v182)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self applicationPlaybackAttempted];
  v7 = [v4 applicationPlaybackAttempted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v183 = [(MHSchemaMHClientEvent *)self applicationPlaybackAttempted];
  if (v183)
  {
    v184 = v183;
    v185 = [(MHSchemaMHClientEvent *)self applicationPlaybackAttempted];
    v186 = [v4 applicationPlaybackAttempted];
    v187 = [v185 isEqual:v186];

    if (!v187)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self siriLaunchRequestContext];
  v7 = [v4 siriLaunchRequestContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v188 = [(MHSchemaMHClientEvent *)self siriLaunchRequestContext];
  if (v188)
  {
    v189 = v188;
    v190 = [(MHSchemaMHClientEvent *)self siriLaunchRequestContext];
    v191 = [v4 siriLaunchRequestContext];
    v192 = [v190 isEqual:v191];

    if (!v192)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self endpointerAccessibleContext];
  v7 = [v4 endpointerAccessibleContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v193 = [(MHSchemaMHClientEvent *)self endpointerAccessibleContext];
  if (v193)
  {
    v194 = v193;
    v195 = [(MHSchemaMHClientEvent *)self endpointerAccessibleContext];
    v196 = [v4 endpointerAccessibleContext];
    v197 = [v195 isEqual:v196];

    if (!v197)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self carPlayLangaugeMismatched];
  v7 = [v4 carPlayLangaugeMismatched];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v198 = [(MHSchemaMHClientEvent *)self carPlayLangaugeMismatched];
  if (v198)
  {
    v199 = v198;
    v200 = [(MHSchemaMHClientEvent *)self carPlayLangaugeMismatched];
    v201 = [v4 carPlayLangaugeMismatched];
    v202 = [v200 isEqual:v201];

    if (!v202)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self darwinConnectedDeviceWakeContext];
  v7 = [v4 darwinConnectedDeviceWakeContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v203 = [(MHSchemaMHClientEvent *)self darwinConnectedDeviceWakeContext];
  if (v203)
  {
    v204 = v203;
    v205 = [(MHSchemaMHClientEvent *)self darwinConnectedDeviceWakeContext];
    v206 = [v4 darwinConnectedDeviceWakeContext];
    v207 = [v205 isEqual:v206];

    if (!v207)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self odldFalseTriggerMitigated];
  v7 = [v4 odldFalseTriggerMitigated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v208 = [(MHSchemaMHClientEvent *)self odldFalseTriggerMitigated];
  if (v208)
  {
    v209 = v208;
    v210 = [(MHSchemaMHClientEvent *)self odldFalseTriggerMitigated];
    v211 = [v4 odldFalseTriggerMitigated];
    v212 = [v210 isEqual:v211];

    if (!v212)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self speakerFalseTriggerMitigated];
  v7 = [v4 speakerFalseTriggerMitigated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v213 = [(MHSchemaMHClientEvent *)self speakerFalseTriggerMitigated];
  if (v213)
  {
    v214 = v213;
    v215 = [(MHSchemaMHClientEvent *)self speakerFalseTriggerMitigated];
    v216 = [v4 speakerFalseTriggerMitigated];
    v217 = [v215 isEqual:v216];

    if (!v217)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self siriDirectedSpeechDetectionFailed];
  v7 = [v4 siriDirectedSpeechDetectionFailed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v218 = [(MHSchemaMHClientEvent *)self siriDirectedSpeechDetectionFailed];
  if (v218)
  {
    v219 = v218;
    v220 = [(MHSchemaMHClientEvent *)self siriDirectedSpeechDetectionFailed];
    v221 = [v4 siriDirectedSpeechDetectionFailed];
    v222 = [v220 isEqual:v221];

    if (!v222)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self audioDucked];
  v7 = [v4 audioDucked];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v223 = [(MHSchemaMHClientEvent *)self audioDucked];
  if (v223)
  {
    v224 = v223;
    v225 = [(MHSchemaMHClientEvent *)self audioDucked];
    v226 = [v4 audioDucked];
    v227 = [v225 isEqual:v226];

    if (!v227)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self audioRecordingFailed];
  v7 = [v4 audioRecordingFailed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v228 = [(MHSchemaMHClientEvent *)self audioRecordingFailed];
  if (v228)
  {
    v229 = v228;
    v230 = [(MHSchemaMHClientEvent *)self audioRecordingFailed];
    v231 = [v4 audioRecordingFailed];
    v232 = [v230 isEqual:v231];

    if (!v232)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self rtsFalseRejectDetected];
  v7 = [v4 rtsFalseRejectDetected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v233 = [(MHSchemaMHClientEvent *)self rtsFalseRejectDetected];
  if (v233)
  {
    v234 = v233;
    v235 = [(MHSchemaMHClientEvent *)self rtsFalseRejectDetected];
    v236 = [v4 rtsFalseRejectDetected];
    v237 = [v235 isEqual:v236];

    if (!v237)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self trpCreated];
  v7 = [v4 trpCreated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v238 = [(MHSchemaMHClientEvent *)self trpCreated];
  if (v238)
  {
    v239 = v238;
    v240 = [(MHSchemaMHClientEvent *)self trpCreated];
    v241 = [v4 trpCreated];
    v242 = [v240 isEqual:v241];

    if (!v242)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self userSpeakingContext];
  v7 = [v4 userSpeakingContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v243 = [(MHSchemaMHClientEvent *)self userSpeakingContext];
  if (v243)
  {
    v244 = v243;
    v245 = [(MHSchemaMHClientEvent *)self userSpeakingContext];
    v246 = [v4 userSpeakingContext];
    v247 = [v245 isEqual:v246];

    if (!v247)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self speechStopDetected];
  v7 = [v4 speechStopDetected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v248 = [(MHSchemaMHClientEvent *)self speechStopDetected];
  if (v248)
  {
    v249 = v248;
    v250 = [(MHSchemaMHClientEvent *)self speechStopDetected];
    v251 = [v4 speechStopDetected];
    v252 = [v250 isEqual:v251];

    if (!v252)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self speechDetectorContext];
  v7 = [v4 speechDetectorContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v253 = [(MHSchemaMHClientEvent *)self speechDetectorContext];
  if (v253)
  {
    v254 = v253;
    v255 = [(MHSchemaMHClientEvent *)self speechDetectorContext];
    v256 = [v4 speechDetectorContext];
    v257 = [v255 isEqual:v256];

    if (!v257)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self stoppedListeningForSpeechContinuation];
  v7 = [v4 stoppedListeningForSpeechContinuation];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v258 = [(MHSchemaMHClientEvent *)self stoppedListeningForSpeechContinuation];
  if (v258)
  {
    v259 = v258;
    v260 = [(MHSchemaMHClientEvent *)self stoppedListeningForSpeechContinuation];
    v261 = [v4 stoppedListeningForSpeechContinuation];
    v262 = [v260 isEqual:v261];

    if (!v262)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self userEngagementModelContext];
  v7 = [v4 userEngagementModelContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v263 = [(MHSchemaMHClientEvent *)self userEngagementModelContext];
  if (v263)
  {
    v264 = v263;
    v265 = [(MHSchemaMHClientEvent *)self userEngagementModelContext];
    v266 = [v4 userEngagementModelContext];
    v267 = [v265 isEqual:v266];

    if (!v267)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self attendingContext];
  v7 = [v4 attendingContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v268 = [(MHSchemaMHClientEvent *)self attendingContext];
  if (v268)
  {
    v269 = v268;
    v270 = [(MHSchemaMHClientEvent *)self attendingContext];
    v271 = [v4 attendingContext];
    v272 = [v270 isEqual:v271];

    if (!v272)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self crownPressed];
  v7 = [v4 crownPressed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v273 = [(MHSchemaMHClientEvent *)self crownPressed];
  if (v273)
  {
    v274 = v273;
    v275 = [(MHSchemaMHClientEvent *)self crownPressed];
    v276 = [v4 crownPressed];
    v277 = [v275 isEqual:v276];

    if (!v277)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self rtsTriggered];
  v7 = [v4 rtsTriggered];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v278 = [(MHSchemaMHClientEvent *)self rtsTriggered];
  if (v278)
  {
    v279 = v278;
    v280 = [(MHSchemaMHClientEvent *)self rtsTriggered];
    v281 = [v4 rtsTriggered];
    v282 = [v280 isEqual:v281];

    if (!v282)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self rtsFirstPassPolicyTriggered];
  v7 = [v4 rtsFirstPassPolicyTriggered];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v283 = [(MHSchemaMHClientEvent *)self rtsFirstPassPolicyTriggered];
  if (v283)
  {
    v284 = v283;
    v285 = [(MHSchemaMHClientEvent *)self rtsFirstPassPolicyTriggered];
    v286 = [v4 rtsFirstPassPolicyTriggered];
    v287 = [v285 isEqual:v286];

    if (!v287)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self rtsSecondPassPolicyDecisionMade];
  v7 = [v4 rtsSecondPassPolicyDecisionMade];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v288 = [(MHSchemaMHClientEvent *)self rtsSecondPassPolicyDecisionMade];
  if (v288)
  {
    v289 = v288;
    v290 = [(MHSchemaMHClientEvent *)self rtsSecondPassPolicyDecisionMade];
    v291 = [v4 rtsSecondPassPolicyDecisionMade];
    v292 = [v290 isEqual:v291];

    if (!v292)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self voiceProfileOnboarded];
  v7 = [v4 voiceProfileOnboarded];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v293 = [(MHSchemaMHClientEvent *)self voiceProfileOnboarded];
  if (v293)
  {
    v294 = v293;
    v295 = [(MHSchemaMHClientEvent *)self voiceProfileOnboarded];
    v296 = [v4 voiceProfileOnboarded];
    v297 = [v295 isEqual:v296];

    if (!v297)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self voiceTriggerRePrompted];
  v7 = [v4 voiceTriggerRePrompted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v298 = [(MHSchemaMHClientEvent *)self voiceTriggerRePrompted];
  if (v298)
  {
    v299 = v298;
    v300 = [(MHSchemaMHClientEvent *)self voiceTriggerRePrompted];
    v301 = [v4 voiceTriggerRePrompted];
    v302 = [v300 isEqual:v301];

    if (!v302)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFailureInsufficientPriority];
  v7 = [v4 assistantDaemonAudioRecordingFailureInsufficientPriority];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v303 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFailureInsufficientPriority];
  if (v303)
  {
    v304 = v303;
    v305 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFailureInsufficientPriority];
    v306 = [v4 assistantDaemonAudioRecordingFailureInsufficientPriority];
    v307 = [v305 isEqual:v306];

    if (!v307)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self voiceProfileICloudSyncFinished];
  v7 = [v4 voiceProfileICloudSyncFinished];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v308 = [(MHSchemaMHClientEvent *)self voiceProfileICloudSyncFinished];
  if (v308)
  {
    v309 = v308;
    v310 = [(MHSchemaMHClientEvent *)self voiceProfileICloudSyncFinished];
    v311 = [v4 voiceProfileICloudSyncFinished];
    v312 = [v310 isEqual:v311];

    if (!v312)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self voiceTriggerRejectDetected];
  v7 = [v4 voiceTriggerRejectDetected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v313 = [(MHSchemaMHClientEvent *)self voiceTriggerRejectDetected];
  if (v313)
  {
    v314 = v313;
    v315 = [(MHSchemaMHClientEvent *)self voiceTriggerRejectDetected];
    v316 = [v4 voiceTriggerRejectDetected];
    v317 = [v315 isEqual:v316];

    if (!v317)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeTTSVolumeQueried];
  v7 = [v4 adaptiveSiriVolumeTTSVolumeQueried];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v318 = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeTTSVolumeQueried];
  if (v318)
  {
    v319 = v318;
    v320 = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeTTSVolumeQueried];
    v321 = [v4 adaptiveSiriVolumeTTSVolumeQueried];
    v322 = [v320 isEqual:v321];

    if (!v322)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeUserIntentDetected];
  v7 = [v4 adaptiveSiriVolumeUserIntentDetected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v323 = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeUserIntentDetected];
  if (v323)
  {
    v324 = v323;
    v325 = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeUserIntentDetected];
    v326 = [v4 adaptiveSiriVolumeUserIntentDetected];
    v327 = [v325 isEqual:v326];

    if (!v327)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self speakerIdEnrollmentDataReportedTier1];
  v7 = [v4 speakerIdEnrollmentDataReportedTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v328 = [(MHSchemaMHClientEvent *)self speakerIdEnrollmentDataReportedTier1];
  if (v328)
  {
    v329 = v328;
    v330 = [(MHSchemaMHClientEvent *)self speakerIdEnrollmentDataReportedTier1];
    v331 = [v4 speakerIdEnrollmentDataReportedTier1];
    v332 = [v330 isEqual:v331];

    if (!v332)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self speakerIdModelSelectedClockSessionInfoTier1];
  v7 = [v4 speakerIdModelSelectedClockSessionInfoTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_337;
  }

  v333 = [(MHSchemaMHClientEvent *)self speakerIdModelSelectedClockSessionInfoTier1];
  if (v333)
  {
    v334 = v333;
    v335 = [(MHSchemaMHClientEvent *)self speakerIdModelSelectedClockSessionInfoTier1];
    v336 = [v4 speakerIdModelSelectedClockSessionInfoTier1];
    v337 = [v335 isEqual:v336];

    if (!v337)
    {
      goto LABEL_338;
    }
  }

  else
  {
  }

  v6 = [(MHSchemaMHClientEvent *)self speakerIdModelOneSessionReportedTier1];
  v7 = [v4 speakerIdModelOneSessionReportedTier1];
  if ((v6 != 0) != (v7 == 0))
  {
    v338 = [(MHSchemaMHClientEvent *)self speakerIdModelOneSessionReportedTier1];
    if (!v338)
    {

LABEL_341:
      v343 = 1;
      goto LABEL_339;
    }

    v339 = v338;
    v340 = [(MHSchemaMHClientEvent *)self speakerIdModelOneSessionReportedTier1];
    v341 = [v4 speakerIdModelOneSessionReportedTier1];
    v342 = [v340 isEqual:v341];

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

- (void)writeTo:(id)a3
{
  v139 = a3;
  v4 = [(MHSchemaMHClientEvent *)self mhId];

  if (v4)
  {
    v5 = [(MHSchemaMHClientEvent *)self mhId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(MHSchemaMHClientEvent *)self eventMetadata];

  if (v6)
  {
    v7 = [(MHSchemaMHClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(MHSchemaMHClientEvent *)self acousticFalseTriggerMitigationEvaluationContext];

  if (v8)
  {
    v9 = [(MHSchemaMHClientEvent *)self acousticFalseTriggerMitigationEvaluationContext];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(MHSchemaMHClientEvent *)self latticeFalseTriggerMitigationEvaluationContext];

  if (v10)
  {
    v11 = [(MHSchemaMHClientEvent *)self latticeFalseTriggerMitigationEvaluationContext];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(MHSchemaMHClientEvent *)self unintendedResponseSuppressionExecutionContext];

  if (v12)
  {
    v13 = [(MHSchemaMHClientEvent *)self unintendedResponseSuppressionExecutionContext];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(MHSchemaMHClientEvent *)self coreSpeechPreprocessorCompleted];

  if (v14)
  {
    v15 = [(MHSchemaMHClientEvent *)self coreSpeechPreprocessorCompleted];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(MHSchemaMHClientEvent *)self asrAudioConfigureStarted];

  if (v16)
  {
    v17 = [(MHSchemaMHClientEvent *)self asrAudioConfigureStarted];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioInitContext];

  if (v18)
  {
    v19 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioInitContext];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioConfigureContext];

  if (v20)
  {
    v21 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioConfigureContext];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrepareContext];

  if (v22)
  {
    v23 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrepareContext];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrewarmContext];

  if (v24)
  {
    v25 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrewarmContext];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStartRecordingContext];

  if (v26)
  {
    v27 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStartRecordingContext];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStopRecordingContext];

  if (v28)
  {
    v29 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStopRecordingContext];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetActiveContext];

  if (v30)
  {
    v31 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetActiveContext];
    PBDataWriterWriteSubmessage();
  }

  v32 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetInactiveContext];

  if (v32)
  {
    v33 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetInactiveContext];
    PBDataWriterWriteSubmessage();
  }

  v34 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioFetchRouteContext];

  if (v34)
  {
    v35 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioFetchRouteContext];
    PBDataWriterWriteSubmessage();
  }

  v36 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingContext];

  if (v36)
  {
    v37 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingContext];
    PBDataWriterWriteSubmessage();
  }

  v38 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingMissedBufferDetected];

  if (v38)
  {
    v39 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingMissedBufferDetected];
    PBDataWriterWriteSubmessage();
  }

  v40 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioLateBufferDetected];

  if (v40)
  {
    v41 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioLateBufferDetected];
    PBDataWriterWriteSubmessage();
  }

  v42 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFirstBufferContext];

  if (v42)
  {
    v43 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFirstBufferContext];
    PBDataWriterWriteSubmessage();
  }

  v44 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingLastBufferContext];

  if (v44)
  {
    v45 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingLastBufferContext];
    PBDataWriterWriteSubmessage();
  }

  v46 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionContext];

  if (v46)
  {
    v47 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionContext];
    PBDataWriterWriteSubmessage();
  }

  v48 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionStartedTier1];

  if (v48)
  {
    v49 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionStartedTier1];
    PBDataWriterWriteSubmessage();
  }

  v50 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioBluetoothInfo];

  if (v50)
  {
    v51 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioBluetoothInfo];
    PBDataWriterWriteSubmessage();
  }

  v52 = [(MHSchemaMHClientEvent *)self voiceTriggerTwoShotDetected];

  if (v52)
  {
    v53 = [(MHSchemaMHClientEvent *)self voiceTriggerTwoShotDetected];
    PBDataWriterWriteSubmessage();
  }

  v54 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioTwoShotTransitionContext];

  if (v54)
  {
    v55 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioTwoShotTransitionContext];
    PBDataWriterWriteSubmessage();
  }

  v56 = [(MHSchemaMHClientEvent *)self voiceTriggerContext];

  if (v56)
  {
    v57 = [(MHSchemaMHClientEvent *)self voiceTriggerContext];
    PBDataWriterWriteSubmessage();
  }

  v58 = [(MHSchemaMHClientEvent *)self endpointDetected];

  if (v58)
  {
    v59 = [(MHSchemaMHClientEvent *)self endpointDetected];
    PBDataWriterWriteSubmessage();
  }

  v60 = [(MHSchemaMHClientEvent *)self endpointLatencyInfoReported];

  if (v60)
  {
    v61 = [(MHSchemaMHClientEvent *)self endpointLatencyInfoReported];
    PBDataWriterWriteSubmessage();
  }

  v62 = [(MHSchemaMHClientEvent *)self adblockerContext];

  if (v62)
  {
    v63 = [(MHSchemaMHClientEvent *)self adblockerContext];
    PBDataWriterWriteSubmessage();
  }

  v64 = [(MHSchemaMHClientEvent *)self onDeviceEndpointerContext];

  if (v64)
  {
    v65 = [(MHSchemaMHClientEvent *)self onDeviceEndpointerContext];
    PBDataWriterWriteSubmessage();
  }

  v66 = [(MHSchemaMHClientEvent *)self serverEndpointerContext];

  if (v66)
  {
    v67 = [(MHSchemaMHClientEvent *)self serverEndpointerContext];
    PBDataWriterWriteSubmessage();
  }

  v68 = [(MHSchemaMHClientEvent *)self endpointerUsed];

  if (v68)
  {
    v69 = [(MHSchemaMHClientEvent *)self endpointerUsed];
    PBDataWriterWriteSubmessage();
  }

  v70 = [(MHSchemaMHClientEvent *)self endpointDelayContext];

  if (v70)
  {
    v71 = [(MHSchemaMHClientEvent *)self endpointDelayContext];
    PBDataWriterWriteSubmessage();
  }

  v72 = [(MHSchemaMHClientEvent *)self finalMitigationRecommendation];

  if (v72)
  {
    v73 = [(MHSchemaMHClientEvent *)self finalMitigationRecommendation];
    PBDataWriterWriteSubmessage();
  }

  v74 = [(MHSchemaMHClientEvent *)self applicationPlaybackAttempted];

  if (v74)
  {
    v75 = [(MHSchemaMHClientEvent *)self applicationPlaybackAttempted];
    PBDataWriterWriteSubmessage();
  }

  v76 = [(MHSchemaMHClientEvent *)self siriLaunchRequestContext];

  if (v76)
  {
    v77 = [(MHSchemaMHClientEvent *)self siriLaunchRequestContext];
    PBDataWriterWriteSubmessage();
  }

  v78 = [(MHSchemaMHClientEvent *)self endpointerAccessibleContext];

  if (v78)
  {
    v79 = [(MHSchemaMHClientEvent *)self endpointerAccessibleContext];
    PBDataWriterWriteSubmessage();
  }

  v80 = [(MHSchemaMHClientEvent *)self carPlayLangaugeMismatched];

  if (v80)
  {
    v81 = [(MHSchemaMHClientEvent *)self carPlayLangaugeMismatched];
    PBDataWriterWriteSubmessage();
  }

  v82 = [(MHSchemaMHClientEvent *)self darwinConnectedDeviceWakeContext];

  if (v82)
  {
    v83 = [(MHSchemaMHClientEvent *)self darwinConnectedDeviceWakeContext];
    PBDataWriterWriteSubmessage();
  }

  v84 = [(MHSchemaMHClientEvent *)self odldFalseTriggerMitigated];

  if (v84)
  {
    v85 = [(MHSchemaMHClientEvent *)self odldFalseTriggerMitigated];
    PBDataWriterWriteSubmessage();
  }

  v86 = [(MHSchemaMHClientEvent *)self speakerFalseTriggerMitigated];

  if (v86)
  {
    v87 = [(MHSchemaMHClientEvent *)self speakerFalseTriggerMitigated];
    PBDataWriterWriteSubmessage();
  }

  v88 = [(MHSchemaMHClientEvent *)self siriDirectedSpeechDetectionFailed];

  if (v88)
  {
    v89 = [(MHSchemaMHClientEvent *)self siriDirectedSpeechDetectionFailed];
    PBDataWriterWriteSubmessage();
  }

  v90 = [(MHSchemaMHClientEvent *)self audioDucked];

  if (v90)
  {
    v91 = [(MHSchemaMHClientEvent *)self audioDucked];
    PBDataWriterWriteSubmessage();
  }

  v92 = [(MHSchemaMHClientEvent *)self audioRecordingFailed];

  if (v92)
  {
    v93 = [(MHSchemaMHClientEvent *)self audioRecordingFailed];
    PBDataWriterWriteSubmessage();
  }

  v94 = [(MHSchemaMHClientEvent *)self rtsFalseRejectDetected];

  if (v94)
  {
    v95 = [(MHSchemaMHClientEvent *)self rtsFalseRejectDetected];
    PBDataWriterWriteSubmessage();
  }

  v96 = [(MHSchemaMHClientEvent *)self trpCreated];

  if (v96)
  {
    v97 = [(MHSchemaMHClientEvent *)self trpCreated];
    PBDataWriterWriteSubmessage();
  }

  v98 = [(MHSchemaMHClientEvent *)self userSpeakingContext];

  if (v98)
  {
    v99 = [(MHSchemaMHClientEvent *)self userSpeakingContext];
    PBDataWriterWriteSubmessage();
  }

  v100 = [(MHSchemaMHClientEvent *)self speechStopDetected];

  if (v100)
  {
    v101 = [(MHSchemaMHClientEvent *)self speechStopDetected];
    PBDataWriterWriteSubmessage();
  }

  v102 = [(MHSchemaMHClientEvent *)self speechDetectorContext];

  if (v102)
  {
    v103 = [(MHSchemaMHClientEvent *)self speechDetectorContext];
    PBDataWriterWriteSubmessage();
  }

  v104 = [(MHSchemaMHClientEvent *)self stoppedListeningForSpeechContinuation];

  if (v104)
  {
    v105 = [(MHSchemaMHClientEvent *)self stoppedListeningForSpeechContinuation];
    PBDataWriterWriteSubmessage();
  }

  v106 = [(MHSchemaMHClientEvent *)self userEngagementModelContext];

  if (v106)
  {
    v107 = [(MHSchemaMHClientEvent *)self userEngagementModelContext];
    PBDataWriterWriteSubmessage();
  }

  v108 = [(MHSchemaMHClientEvent *)self attendingContext];

  if (v108)
  {
    v109 = [(MHSchemaMHClientEvent *)self attendingContext];
    PBDataWriterWriteSubmessage();
  }

  v110 = [(MHSchemaMHClientEvent *)self crownPressed];

  if (v110)
  {
    v111 = [(MHSchemaMHClientEvent *)self crownPressed];
    PBDataWriterWriteSubmessage();
  }

  v112 = [(MHSchemaMHClientEvent *)self rtsTriggered];

  if (v112)
  {
    v113 = [(MHSchemaMHClientEvent *)self rtsTriggered];
    PBDataWriterWriteSubmessage();
  }

  v114 = [(MHSchemaMHClientEvent *)self rtsFirstPassPolicyTriggered];

  if (v114)
  {
    v115 = [(MHSchemaMHClientEvent *)self rtsFirstPassPolicyTriggered];
    PBDataWriterWriteSubmessage();
  }

  v116 = [(MHSchemaMHClientEvent *)self rtsSecondPassPolicyDecisionMade];

  if (v116)
  {
    v117 = [(MHSchemaMHClientEvent *)self rtsSecondPassPolicyDecisionMade];
    PBDataWriterWriteSubmessage();
  }

  v118 = [(MHSchemaMHClientEvent *)self voiceProfileOnboarded];

  if (v118)
  {
    v119 = [(MHSchemaMHClientEvent *)self voiceProfileOnboarded];
    PBDataWriterWriteSubmessage();
  }

  v120 = [(MHSchemaMHClientEvent *)self voiceTriggerRePrompted];

  if (v120)
  {
    v121 = [(MHSchemaMHClientEvent *)self voiceTriggerRePrompted];
    PBDataWriterWriteSubmessage();
  }

  v122 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFailureInsufficientPriority];

  if (v122)
  {
    v123 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFailureInsufficientPriority];
    PBDataWriterWriteSubmessage();
  }

  v124 = [(MHSchemaMHClientEvent *)self voiceProfileICloudSyncFinished];

  if (v124)
  {
    v125 = [(MHSchemaMHClientEvent *)self voiceProfileICloudSyncFinished];
    PBDataWriterWriteSubmessage();
  }

  v126 = [(MHSchemaMHClientEvent *)self voiceTriggerRejectDetected];

  if (v126)
  {
    v127 = [(MHSchemaMHClientEvent *)self voiceTriggerRejectDetected];
    PBDataWriterWriteSubmessage();
  }

  v128 = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeTTSVolumeQueried];

  if (v128)
  {
    v129 = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeTTSVolumeQueried];
    PBDataWriterWriteSubmessage();
  }

  v130 = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeUserIntentDetected];

  if (v130)
  {
    v131 = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeUserIntentDetected];
    PBDataWriterWriteSubmessage();
  }

  v132 = [(MHSchemaMHClientEvent *)self speakerIdEnrollmentDataReportedTier1];

  if (v132)
  {
    v133 = [(MHSchemaMHClientEvent *)self speakerIdEnrollmentDataReportedTier1];
    PBDataWriterWriteSubmessage();
  }

  v134 = [(MHSchemaMHClientEvent *)self speakerIdModelSelectedClockSessionInfoTier1];

  if (v134)
  {
    v135 = [(MHSchemaMHClientEvent *)self speakerIdModelSelectedClockSessionInfoTier1];
    PBDataWriterWriteSubmessage();
  }

  v136 = [(MHSchemaMHClientEvent *)self speakerIdModelOneSessionReportedTier1];

  v137 = v139;
  if (v136)
  {
    v138 = [(MHSchemaMHClientEvent *)self speakerIdModelOneSessionReportedTier1];
    PBDataWriterWriteSubmessage();

    v137 = v139;
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

- (void)setSpeakerIdModelOneSessionReportedTier1:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  speakerIdModelOneSessionReportedTier1 = self->_speakerIdModelOneSessionReportedTier1;
  self->_speakerIdModelOneSessionReportedTier1 = v4;
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

- (void)setSpeakerIdModelSelectedClockSessionInfoTier1:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  speakerIdModelSelectedClockSessionInfoTier1 = self->_speakerIdModelSelectedClockSessionInfoTier1;
  self->_speakerIdModelSelectedClockSessionInfoTier1 = v4;
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

- (void)setSpeakerIdEnrollmentDataReportedTier1:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  speakerIdEnrollmentDataReportedTier1 = self->_speakerIdEnrollmentDataReportedTier1;
  self->_speakerIdEnrollmentDataReportedTier1 = v4;
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

- (void)setAdaptiveSiriVolumeUserIntentDetected:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  adaptiveSiriVolumeUserIntentDetected = self->_adaptiveSiriVolumeUserIntentDetected;
  self->_adaptiveSiriVolumeUserIntentDetected = v4;
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

- (void)setAdaptiveSiriVolumeTTSVolumeQueried:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  adaptiveSiriVolumeTTSVolumeQueried = self->_adaptiveSiriVolumeTTSVolumeQueried;
  self->_adaptiveSiriVolumeTTSVolumeQueried = v4;
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

- (void)setVoiceTriggerRejectDetected:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  voiceTriggerRejectDetected = self->_voiceTriggerRejectDetected;
  self->_voiceTriggerRejectDetected = v4;
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

- (void)setVoiceProfileICloudSyncFinished:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  voiceProfileICloudSyncFinished = self->_voiceProfileICloudSyncFinished;
  self->_voiceProfileICloudSyncFinished = v4;
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

- (void)setAssistantDaemonAudioRecordingFailureInsufficientPriority:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioRecordingFailureInsufficientPriority = self->_assistantDaemonAudioRecordingFailureInsufficientPriority;
  self->_assistantDaemonAudioRecordingFailureInsufficientPriority = v4;
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

- (void)setVoiceTriggerRePrompted:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  voiceTriggerRePrompted = self->_voiceTriggerRePrompted;
  self->_voiceTriggerRePrompted = v4;
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

- (void)setVoiceProfileOnboarded:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  voiceProfileOnboarded = self->_voiceProfileOnboarded;
  self->_voiceProfileOnboarded = v4;
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

- (void)setRtsSecondPassPolicyDecisionMade:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  rtsSecondPassPolicyDecisionMade = self->_rtsSecondPassPolicyDecisionMade;
  self->_rtsSecondPassPolicyDecisionMade = v4;
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

- (void)setRtsFirstPassPolicyTriggered:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  rtsFirstPassPolicyTriggered = self->_rtsFirstPassPolicyTriggered;
  self->_rtsFirstPassPolicyTriggered = v4;
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

- (void)setRtsTriggered:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  rtsTriggered = self->_rtsTriggered;
  self->_rtsTriggered = v4;
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

- (void)setCrownPressed:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  crownPressed = self->_crownPressed;
  self->_crownPressed = v4;
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

- (void)setAttendingContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  attendingContext = self->_attendingContext;
  self->_attendingContext = v4;
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

- (void)setUserEngagementModelContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  userEngagementModelContext = self->_userEngagementModelContext;
  self->_userEngagementModelContext = v4;
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

- (void)setStoppedListeningForSpeechContinuation:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  stoppedListeningForSpeechContinuation = self->_stoppedListeningForSpeechContinuation;
  self->_stoppedListeningForSpeechContinuation = v4;
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

- (void)setSpeechDetectorContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  speechDetectorContext = self->_speechDetectorContext;
  self->_speechDetectorContext = v4;
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

- (void)setSpeechStopDetected:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  speechStopDetected = self->_speechStopDetected;
  self->_speechStopDetected = v4;
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

- (void)setUserSpeakingContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  userSpeakingContext = self->_userSpeakingContext;
  self->_userSpeakingContext = v4;
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

- (void)setTrpCreated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  trpCreated = self->_trpCreated;
  self->_trpCreated = v4;
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

- (void)setRtsFalseRejectDetected:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  rtsFalseRejectDetected = self->_rtsFalseRejectDetected;
  self->_rtsFalseRejectDetected = v4;
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

- (void)setAudioRecordingFailed:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  audioRecordingFailed = self->_audioRecordingFailed;
  self->_audioRecordingFailed = v4;
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

- (void)setAudioDucked:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  audioDucked = self->_audioDucked;
  self->_audioDucked = v4;
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

- (void)setSiriDirectedSpeechDetectionFailed:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  siriDirectedSpeechDetectionFailed = self->_siriDirectedSpeechDetectionFailed;
  self->_siriDirectedSpeechDetectionFailed = v4;
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

- (void)setSpeakerFalseTriggerMitigated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  speakerFalseTriggerMitigated = self->_speakerFalseTriggerMitigated;
  self->_speakerFalseTriggerMitigated = v4;
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

- (void)setOdldFalseTriggerMitigated:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  odldFalseTriggerMitigated = self->_odldFalseTriggerMitigated;
  self->_odldFalseTriggerMitigated = v4;
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

- (void)setDarwinConnectedDeviceWakeContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  darwinConnectedDeviceWakeContext = self->_darwinConnectedDeviceWakeContext;
  self->_darwinConnectedDeviceWakeContext = v4;
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

- (void)setCarPlayLangaugeMismatched:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  carPlayLangaugeMismatched = self->_carPlayLangaugeMismatched;
  self->_carPlayLangaugeMismatched = v4;
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

- (void)setEndpointerAccessibleContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  endpointerAccessibleContext = self->_endpointerAccessibleContext;
  self->_endpointerAccessibleContext = v4;
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

- (void)setSiriLaunchRequestContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  siriLaunchRequestContext = self->_siriLaunchRequestContext;
  self->_siriLaunchRequestContext = v4;
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

- (void)setApplicationPlaybackAttempted:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  applicationPlaybackAttempted = self->_applicationPlaybackAttempted;
  self->_applicationPlaybackAttempted = v4;
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

- (void)setFinalMitigationRecommendation:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  finalMitigationRecommendation = self->_finalMitigationRecommendation;
  self->_finalMitigationRecommendation = v4;
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

- (void)setEndpointDelayContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  endpointDelayContext = self->_endpointDelayContext;
  self->_endpointDelayContext = v4;
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

- (void)setEndpointerUsed:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  endpointerUsed = self->_endpointerUsed;
  self->_endpointerUsed = v4;
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

- (void)setServerEndpointerContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  serverEndpointerContext = self->_serverEndpointerContext;
  self->_serverEndpointerContext = v4;
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

- (void)setOnDeviceEndpointerContext:(id)a3
{
  v4 = a3;
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

  self->_whichEvent_Type = (v4 != 0) << 7;
  onDeviceEndpointerContext = self->_onDeviceEndpointerContext;
  self->_onDeviceEndpointerContext = v4;
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

- (void)setAdblockerContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  adblockerContext = self->_adblockerContext;
  self->_adblockerContext = v4;
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

- (void)setEndpointLatencyInfoReported:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  endpointLatencyInfoReported = self->_endpointLatencyInfoReported;
  self->_endpointLatencyInfoReported = v4;
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

- (void)setEndpointDetected:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  endpointDetected = self->_endpointDetected;
  self->_endpointDetected = v4;
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

- (void)setVoiceTriggerContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  voiceTriggerContext = self->_voiceTriggerContext;
  self->_voiceTriggerContext = v4;
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

- (void)setAssistantDaemonAudioTwoShotTransitionContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioTwoShotTransitionContext = self->_assistantDaemonAudioTwoShotTransitionContext;
  self->_assistantDaemonAudioTwoShotTransitionContext = v4;
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

- (void)setVoiceTriggerTwoShotDetected:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  voiceTriggerTwoShotDetected = self->_voiceTriggerTwoShotDetected;
  self->_voiceTriggerTwoShotDetected = v4;
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

- (void)setAssistantDaemonAudioBluetoothInfo:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioBluetoothInfo = self->_assistantDaemonAudioBluetoothInfo;
  self->_assistantDaemonAudioBluetoothInfo = v4;
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

- (void)setAssistantDaemonAudioRecordingInterruptionStartedTier1:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioRecordingInterruptionStartedTier1 = self->_assistantDaemonAudioRecordingInterruptionStartedTier1;
  self->_assistantDaemonAudioRecordingInterruptionStartedTier1 = v4;
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

- (void)setAssistantDaemonAudioRecordingInterruptionContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioRecordingInterruptionContext = self->_assistantDaemonAudioRecordingInterruptionContext;
  self->_assistantDaemonAudioRecordingInterruptionContext = v4;
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

- (void)setAssistantDaemonAudioRecordingLastBufferContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioRecordingLastBufferContext = self->_assistantDaemonAudioRecordingLastBufferContext;
  self->_assistantDaemonAudioRecordingLastBufferContext = v4;
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

- (void)setAssistantDaemonAudioRecordingFirstBufferContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioRecordingFirstBufferContext = self->_assistantDaemonAudioRecordingFirstBufferContext;
  self->_assistantDaemonAudioRecordingFirstBufferContext = v4;
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

- (void)setAssistantDaemonAudioLateBufferDetected:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioLateBufferDetected = self->_assistantDaemonAudioLateBufferDetected;
  self->_assistantDaemonAudioLateBufferDetected = v4;
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

- (void)setAssistantDaemonAudioRecordingMissedBufferDetected:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioRecordingMissedBufferDetected = self->_assistantDaemonAudioRecordingMissedBufferDetected;
  self->_assistantDaemonAudioRecordingMissedBufferDetected = v4;
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

- (void)setAssistantDaemonAudioRecordingContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioRecordingContext = self->_assistantDaemonAudioRecordingContext;
  self->_assistantDaemonAudioRecordingContext = v4;
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

- (void)setAssistantDaemonAudioFetchRouteContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioFetchRouteContext = self->_assistantDaemonAudioFetchRouteContext;
  self->_assistantDaemonAudioFetchRouteContext = v4;
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

- (void)setAssistantDaemonAudioSessionSetInactiveContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioSessionSetInactiveContext = self->_assistantDaemonAudioSessionSetInactiveContext;
  self->_assistantDaemonAudioSessionSetInactiveContext = v4;
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

- (void)setAssistantDaemonAudioSessionSetActiveContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioSessionSetActiveContext = self->_assistantDaemonAudioSessionSetActiveContext;
  self->_assistantDaemonAudioSessionSetActiveContext = v4;
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

- (void)setAssistantDaemonAudioStopRecordingContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioStopRecordingContext = self->_assistantDaemonAudioStopRecordingContext;
  self->_assistantDaemonAudioStopRecordingContext = v4;
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

- (void)setAssistantDaemonAudioStartRecordingContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioStartRecordingContext = self->_assistantDaemonAudioStartRecordingContext;
  self->_assistantDaemonAudioStartRecordingContext = v4;
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

- (void)setAssistantDaemonAudioPrewarmContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioPrewarmContext = self->_assistantDaemonAudioPrewarmContext;
  self->_assistantDaemonAudioPrewarmContext = v4;
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

- (void)setAssistantDaemonAudioPrepareContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioPrepareContext = self->_assistantDaemonAudioPrepareContext;
  self->_assistantDaemonAudioPrepareContext = v4;
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

- (void)setAssistantDaemonAudioConfigureContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioConfigureContext = self->_assistantDaemonAudioConfigureContext;
  self->_assistantDaemonAudioConfigureContext = v4;
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

- (void)setAssistantDaemonAudioInitContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  assistantDaemonAudioInitContext = self->_assistantDaemonAudioInitContext;
  self->_assistantDaemonAudioInitContext = v4;
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

- (void)setAsrAudioConfigureStarted:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  asrAudioConfigureStarted = self->_asrAudioConfigureStarted;
  self->_asrAudioConfigureStarted = v4;
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

- (void)setCoreSpeechPreprocessorCompleted:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  coreSpeechPreprocessorCompleted = self->_coreSpeechPreprocessorCompleted;
  self->_coreSpeechPreprocessorCompleted = v4;
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

- (void)setUnintendedResponseSuppressionExecutionContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  unintendedResponseSuppressionExecutionContext = self->_unintendedResponseSuppressionExecutionContext;
  self->_unintendedResponseSuppressionExecutionContext = v4;
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

- (void)setLatticeFalseTriggerMitigationEvaluationContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  latticeFalseTriggerMitigationEvaluationContext = self->_latticeFalseTriggerMitigationEvaluationContext;
  self->_latticeFalseTriggerMitigationEvaluationContext = v4;
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

- (void)setAcousticFalseTriggerMitigationEvaluationContext:(id)a3
{
  v4 = a3;
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
  if (!v4)
  {
    v69 = 0;
  }

  self->_whichEvent_Type = v69;
  acousticFalseTriggerMitigationEvaluationContext = self->_acousticFalseTriggerMitigationEvaluationContext;
  self->_acousticFalseTriggerMitigationEvaluationContext = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v209.receiver = self;
  v209.super_class = MHSchemaMHClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v209 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdEnrollmentDataReportedTier1];
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelSelectedClockSessionInfoTier1];
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelOneSessionReportedTier1];
  }

  if ([v4 isConditionSet:4])
  {
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdEnrollmentDataReportedTier1];
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelSelectedClockSessionInfoTier1];
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelOneSessionReportedTier1];
  }

  if ([v4 isConditionSet:5])
  {
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdEnrollmentDataReportedTier1];
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelSelectedClockSessionInfoTier1];
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelOneSessionReportedTier1];
  }

  if ([v4 isConditionSet:6])
  {
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdEnrollmentDataReportedTier1];
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelSelectedClockSessionInfoTier1];
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelOneSessionReportedTier1];
  }

  if ([v4 isConditionSet:7])
  {
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdEnrollmentDataReportedTier1];
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelSelectedClockSessionInfoTier1];
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelOneSessionReportedTier1];
  }

  v6 = [(MHSchemaMHClientEvent *)self mhId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(MHSchemaMHClientEvent *)self deleteMhId];
  }

  v9 = [(MHSchemaMHClientEvent *)self eventMetadata];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(MHSchemaMHClientEvent *)self deleteEventMetadata];
  }

  v12 = [(MHSchemaMHClientEvent *)self acousticFalseTriggerMitigationEvaluationContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(MHSchemaMHClientEvent *)self deleteAcousticFalseTriggerMitigationEvaluationContext];
  }

  v15 = [(MHSchemaMHClientEvent *)self latticeFalseTriggerMitigationEvaluationContext];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(MHSchemaMHClientEvent *)self deleteLatticeFalseTriggerMitigationEvaluationContext];
  }

  v18 = [(MHSchemaMHClientEvent *)self unintendedResponseSuppressionExecutionContext];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(MHSchemaMHClientEvent *)self deleteUnintendedResponseSuppressionExecutionContext];
  }

  v21 = [(MHSchemaMHClientEvent *)self coreSpeechPreprocessorCompleted];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(MHSchemaMHClientEvent *)self deleteCoreSpeechPreprocessorCompleted];
  }

  v24 = [(MHSchemaMHClientEvent *)self asrAudioConfigureStarted];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(MHSchemaMHClientEvent *)self deleteAsrAudioConfigureStarted];
  }

  v27 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioInitContext];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioInitContext];
  }

  v30 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioConfigureContext];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioConfigureContext];
  }

  v33 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrepareContext];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioPrepareContext];
  }

  v36 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioPrewarmContext];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioPrewarmContext];
  }

  v39 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStartRecordingContext];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioStartRecordingContext];
  }

  v42 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioStopRecordingContext];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioStopRecordingContext];
  }

  v45 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetActiveContext];
  v46 = [v45 applySensitiveConditionsPolicy:v4];
  v47 = [v46 suppressMessage];

  if (v47)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioSessionSetActiveContext];
  }

  v48 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioSessionSetInactiveContext];
  v49 = [v48 applySensitiveConditionsPolicy:v4];
  v50 = [v49 suppressMessage];

  if (v50)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioSessionSetInactiveContext];
  }

  v51 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioFetchRouteContext];
  v52 = [v51 applySensitiveConditionsPolicy:v4];
  v53 = [v52 suppressMessage];

  if (v53)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioFetchRouteContext];
  }

  v54 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingContext];
  v55 = [v54 applySensitiveConditionsPolicy:v4];
  v56 = [v55 suppressMessage];

  if (v56)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioRecordingContext];
  }

  v57 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingMissedBufferDetected];
  v58 = [v57 applySensitiveConditionsPolicy:v4];
  v59 = [v58 suppressMessage];

  if (v59)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioRecordingMissedBufferDetected];
  }

  v60 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioLateBufferDetected];
  v61 = [v60 applySensitiveConditionsPolicy:v4];
  v62 = [v61 suppressMessage];

  if (v62)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioLateBufferDetected];
  }

  v63 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFirstBufferContext];
  v64 = [v63 applySensitiveConditionsPolicy:v4];
  v65 = [v64 suppressMessage];

  if (v65)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioRecordingFirstBufferContext];
  }

  v66 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingLastBufferContext];
  v67 = [v66 applySensitiveConditionsPolicy:v4];
  v68 = [v67 suppressMessage];

  if (v68)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioRecordingLastBufferContext];
  }

  v69 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionContext];
  v70 = [v69 applySensitiveConditionsPolicy:v4];
  v71 = [v70 suppressMessage];

  if (v71)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioRecordingInterruptionContext];
  }

  v72 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingInterruptionStartedTier1];
  v73 = [v72 applySensitiveConditionsPolicy:v4];
  v74 = [v73 suppressMessage];

  if (v74)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioRecordingInterruptionStartedTier1];
  }

  v75 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioBluetoothInfo];
  v76 = [v75 applySensitiveConditionsPolicy:v4];
  v77 = [v76 suppressMessage];

  if (v77)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioBluetoothInfo];
  }

  v78 = [(MHSchemaMHClientEvent *)self voiceTriggerTwoShotDetected];
  v79 = [v78 applySensitiveConditionsPolicy:v4];
  v80 = [v79 suppressMessage];

  if (v80)
  {
    [(MHSchemaMHClientEvent *)self deleteVoiceTriggerTwoShotDetected];
  }

  v81 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioTwoShotTransitionContext];
  v82 = [v81 applySensitiveConditionsPolicy:v4];
  v83 = [v82 suppressMessage];

  if (v83)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioTwoShotTransitionContext];
  }

  v84 = [(MHSchemaMHClientEvent *)self voiceTriggerContext];
  v85 = [v84 applySensitiveConditionsPolicy:v4];
  v86 = [v85 suppressMessage];

  if (v86)
  {
    [(MHSchemaMHClientEvent *)self deleteVoiceTriggerContext];
  }

  v87 = [(MHSchemaMHClientEvent *)self endpointDetected];
  v88 = [v87 applySensitiveConditionsPolicy:v4];
  v89 = [v88 suppressMessage];

  if (v89)
  {
    [(MHSchemaMHClientEvent *)self deleteEndpointDetected];
  }

  v90 = [(MHSchemaMHClientEvent *)self endpointLatencyInfoReported];
  v91 = [v90 applySensitiveConditionsPolicy:v4];
  v92 = [v91 suppressMessage];

  if (v92)
  {
    [(MHSchemaMHClientEvent *)self deleteEndpointLatencyInfoReported];
  }

  v93 = [(MHSchemaMHClientEvent *)self adblockerContext];
  v94 = [v93 applySensitiveConditionsPolicy:v4];
  v95 = [v94 suppressMessage];

  if (v95)
  {
    [(MHSchemaMHClientEvent *)self deleteAdblockerContext];
  }

  v96 = [(MHSchemaMHClientEvent *)self onDeviceEndpointerContext];
  v97 = [v96 applySensitiveConditionsPolicy:v4];
  v98 = [v97 suppressMessage];

  if (v98)
  {
    [(MHSchemaMHClientEvent *)self deleteOnDeviceEndpointerContext];
  }

  v99 = [(MHSchemaMHClientEvent *)self serverEndpointerContext];
  v100 = [v99 applySensitiveConditionsPolicy:v4];
  v101 = [v100 suppressMessage];

  if (v101)
  {
    [(MHSchemaMHClientEvent *)self deleteServerEndpointerContext];
  }

  v102 = [(MHSchemaMHClientEvent *)self endpointerUsed];
  v103 = [v102 applySensitiveConditionsPolicy:v4];
  v104 = [v103 suppressMessage];

  if (v104)
  {
    [(MHSchemaMHClientEvent *)self deleteEndpointerUsed];
  }

  v105 = [(MHSchemaMHClientEvent *)self endpointDelayContext];
  v106 = [v105 applySensitiveConditionsPolicy:v4];
  v107 = [v106 suppressMessage];

  if (v107)
  {
    [(MHSchemaMHClientEvent *)self deleteEndpointDelayContext];
  }

  v108 = [(MHSchemaMHClientEvent *)self finalMitigationRecommendation];
  v109 = [v108 applySensitiveConditionsPolicy:v4];
  v110 = [v109 suppressMessage];

  if (v110)
  {
    [(MHSchemaMHClientEvent *)self deleteFinalMitigationRecommendation];
  }

  v111 = [(MHSchemaMHClientEvent *)self applicationPlaybackAttempted];
  v112 = [v111 applySensitiveConditionsPolicy:v4];
  v113 = [v112 suppressMessage];

  if (v113)
  {
    [(MHSchemaMHClientEvent *)self deleteApplicationPlaybackAttempted];
  }

  v114 = [(MHSchemaMHClientEvent *)self siriLaunchRequestContext];
  v115 = [v114 applySensitiveConditionsPolicy:v4];
  v116 = [v115 suppressMessage];

  if (v116)
  {
    [(MHSchemaMHClientEvent *)self deleteSiriLaunchRequestContext];
  }

  v117 = [(MHSchemaMHClientEvent *)self endpointerAccessibleContext];
  v118 = [v117 applySensitiveConditionsPolicy:v4];
  v119 = [v118 suppressMessage];

  if (v119)
  {
    [(MHSchemaMHClientEvent *)self deleteEndpointerAccessibleContext];
  }

  v120 = [(MHSchemaMHClientEvent *)self carPlayLangaugeMismatched];
  v121 = [v120 applySensitiveConditionsPolicy:v4];
  v122 = [v121 suppressMessage];

  if (v122)
  {
    [(MHSchemaMHClientEvent *)self deleteCarPlayLangaugeMismatched];
  }

  v123 = [(MHSchemaMHClientEvent *)self darwinConnectedDeviceWakeContext];
  v124 = [v123 applySensitiveConditionsPolicy:v4];
  v125 = [v124 suppressMessage];

  if (v125)
  {
    [(MHSchemaMHClientEvent *)self deleteDarwinConnectedDeviceWakeContext];
  }

  v126 = [(MHSchemaMHClientEvent *)self odldFalseTriggerMitigated];
  v127 = [v126 applySensitiveConditionsPolicy:v4];
  v128 = [v127 suppressMessage];

  if (v128)
  {
    [(MHSchemaMHClientEvent *)self deleteOdldFalseTriggerMitigated];
  }

  v129 = [(MHSchemaMHClientEvent *)self speakerFalseTriggerMitigated];
  v130 = [v129 applySensitiveConditionsPolicy:v4];
  v131 = [v130 suppressMessage];

  if (v131)
  {
    [(MHSchemaMHClientEvent *)self deleteSpeakerFalseTriggerMitigated];
  }

  v132 = [(MHSchemaMHClientEvent *)self siriDirectedSpeechDetectionFailed];
  v133 = [v132 applySensitiveConditionsPolicy:v4];
  v134 = [v133 suppressMessage];

  if (v134)
  {
    [(MHSchemaMHClientEvent *)self deleteSiriDirectedSpeechDetectionFailed];
  }

  v135 = [(MHSchemaMHClientEvent *)self audioDucked];
  v136 = [v135 applySensitiveConditionsPolicy:v4];
  v137 = [v136 suppressMessage];

  if (v137)
  {
    [(MHSchemaMHClientEvent *)self deleteAudioDucked];
  }

  v138 = [(MHSchemaMHClientEvent *)self audioRecordingFailed];
  v139 = [v138 applySensitiveConditionsPolicy:v4];
  v140 = [v139 suppressMessage];

  if (v140)
  {
    [(MHSchemaMHClientEvent *)self deleteAudioRecordingFailed];
  }

  v141 = [(MHSchemaMHClientEvent *)self rtsFalseRejectDetected];
  v142 = [v141 applySensitiveConditionsPolicy:v4];
  v143 = [v142 suppressMessage];

  if (v143)
  {
    [(MHSchemaMHClientEvent *)self deleteRtsFalseRejectDetected];
  }

  v144 = [(MHSchemaMHClientEvent *)self trpCreated];
  v145 = [v144 applySensitiveConditionsPolicy:v4];
  v146 = [v145 suppressMessage];

  if (v146)
  {
    [(MHSchemaMHClientEvent *)self deleteTrpCreated];
  }

  v147 = [(MHSchemaMHClientEvent *)self userSpeakingContext];
  v148 = [v147 applySensitiveConditionsPolicy:v4];
  v149 = [v148 suppressMessage];

  if (v149)
  {
    [(MHSchemaMHClientEvent *)self deleteUserSpeakingContext];
  }

  v150 = [(MHSchemaMHClientEvent *)self speechStopDetected];
  v151 = [v150 applySensitiveConditionsPolicy:v4];
  v152 = [v151 suppressMessage];

  if (v152)
  {
    [(MHSchemaMHClientEvent *)self deleteSpeechStopDetected];
  }

  v153 = [(MHSchemaMHClientEvent *)self speechDetectorContext];
  v154 = [v153 applySensitiveConditionsPolicy:v4];
  v155 = [v154 suppressMessage];

  if (v155)
  {
    [(MHSchemaMHClientEvent *)self deleteSpeechDetectorContext];
  }

  v156 = [(MHSchemaMHClientEvent *)self stoppedListeningForSpeechContinuation];
  v157 = [v156 applySensitiveConditionsPolicy:v4];
  v158 = [v157 suppressMessage];

  if (v158)
  {
    [(MHSchemaMHClientEvent *)self deleteStoppedListeningForSpeechContinuation];
  }

  v159 = [(MHSchemaMHClientEvent *)self userEngagementModelContext];
  v160 = [v159 applySensitiveConditionsPolicy:v4];
  v161 = [v160 suppressMessage];

  if (v161)
  {
    [(MHSchemaMHClientEvent *)self deleteUserEngagementModelContext];
  }

  v162 = [(MHSchemaMHClientEvent *)self attendingContext];
  v163 = [v162 applySensitiveConditionsPolicy:v4];
  v164 = [v163 suppressMessage];

  if (v164)
  {
    [(MHSchemaMHClientEvent *)self deleteAttendingContext];
  }

  v165 = [(MHSchemaMHClientEvent *)self crownPressed];
  v166 = [v165 applySensitiveConditionsPolicy:v4];
  v167 = [v166 suppressMessage];

  if (v167)
  {
    [(MHSchemaMHClientEvent *)self deleteCrownPressed];
  }

  v168 = [(MHSchemaMHClientEvent *)self rtsTriggered];
  v169 = [v168 applySensitiveConditionsPolicy:v4];
  v170 = [v169 suppressMessage];

  if (v170)
  {
    [(MHSchemaMHClientEvent *)self deleteRtsTriggered];
  }

  v171 = [(MHSchemaMHClientEvent *)self rtsFirstPassPolicyTriggered];
  v172 = [v171 applySensitiveConditionsPolicy:v4];
  v173 = [v172 suppressMessage];

  if (v173)
  {
    [(MHSchemaMHClientEvent *)self deleteRtsFirstPassPolicyTriggered];
  }

  v174 = [(MHSchemaMHClientEvent *)self rtsSecondPassPolicyDecisionMade];
  v175 = [v174 applySensitiveConditionsPolicy:v4];
  v176 = [v175 suppressMessage];

  if (v176)
  {
    [(MHSchemaMHClientEvent *)self deleteRtsSecondPassPolicyDecisionMade];
  }

  v177 = [(MHSchemaMHClientEvent *)self voiceProfileOnboarded];
  v178 = [v177 applySensitiveConditionsPolicy:v4];
  v179 = [v178 suppressMessage];

  if (v179)
  {
    [(MHSchemaMHClientEvent *)self deleteVoiceProfileOnboarded];
  }

  v180 = [(MHSchemaMHClientEvent *)self voiceTriggerRePrompted];
  v181 = [v180 applySensitiveConditionsPolicy:v4];
  v182 = [v181 suppressMessage];

  if (v182)
  {
    [(MHSchemaMHClientEvent *)self deleteVoiceTriggerRePrompted];
  }

  v183 = [(MHSchemaMHClientEvent *)self assistantDaemonAudioRecordingFailureInsufficientPriority];
  v184 = [v183 applySensitiveConditionsPolicy:v4];
  v185 = [v184 suppressMessage];

  if (v185)
  {
    [(MHSchemaMHClientEvent *)self deleteAssistantDaemonAudioRecordingFailureInsufficientPriority];
  }

  v186 = [(MHSchemaMHClientEvent *)self voiceProfileICloudSyncFinished];
  v187 = [v186 applySensitiveConditionsPolicy:v4];
  v188 = [v187 suppressMessage];

  if (v188)
  {
    [(MHSchemaMHClientEvent *)self deleteVoiceProfileICloudSyncFinished];
  }

  v189 = [(MHSchemaMHClientEvent *)self voiceTriggerRejectDetected];
  v190 = [v189 applySensitiveConditionsPolicy:v4];
  v191 = [v190 suppressMessage];

  if (v191)
  {
    [(MHSchemaMHClientEvent *)self deleteVoiceTriggerRejectDetected];
  }

  v192 = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeTTSVolumeQueried];
  v193 = [v192 applySensitiveConditionsPolicy:v4];
  v194 = [v193 suppressMessage];

  if (v194)
  {
    [(MHSchemaMHClientEvent *)self deleteAdaptiveSiriVolumeTTSVolumeQueried];
  }

  v195 = [(MHSchemaMHClientEvent *)self adaptiveSiriVolumeUserIntentDetected];
  v196 = [v195 applySensitiveConditionsPolicy:v4];
  v197 = [v196 suppressMessage];

  if (v197)
  {
    [(MHSchemaMHClientEvent *)self deleteAdaptiveSiriVolumeUserIntentDetected];
  }

  v198 = [(MHSchemaMHClientEvent *)self speakerIdEnrollmentDataReportedTier1];
  v199 = [v198 applySensitiveConditionsPolicy:v4];
  v200 = [v199 suppressMessage];

  if (v200)
  {
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdEnrollmentDataReportedTier1];
  }

  v201 = [(MHSchemaMHClientEvent *)self speakerIdModelSelectedClockSessionInfoTier1];
  v202 = [v201 applySensitiveConditionsPolicy:v4];
  v203 = [v202 suppressMessage];

  if (v203)
  {
    [(MHSchemaMHClientEvent *)self deleteSpeakerIdModelSelectedClockSessionInfoTier1];
  }

  v204 = [(MHSchemaMHClientEvent *)self speakerIdModelOneSessionReportedTier1];
  v205 = [v204 applySensitiveConditionsPolicy:v4];
  v206 = [v205 suppressMessage];

  if (v206)
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
  v2 = [(MHSchemaMHClientEvent *)self eventMetadata];
  v3 = [v2 mhId];

  if (v3)
  {
    v4 = [v3 value];
    if (v4)
    {
      v5 = [v3 value];
      v6 = [v5 length];

      if (v6)
      {
        LODWORD(v4) = 9;
      }

      else
      {
        LODWORD(v4) = 0;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  return v4;
}

- (id)getComponentId
{
  v2 = [(MHSchemaMHClientEvent *)self eventMetadata];
  v3 = [v2 mhId];

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [v3 value];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [v3 value];
  v6 = [v5 length];

  if (v6)
  {
    v4 = v3;
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

LABEL_6:

  return v4;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(MHSchemaMHClientEvent *)self whichEvent_Type];
  v4 = 0;
  v5 = v3 - 100;
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

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 100 > 0x41)
  {
    return 0;
  }

  else
  {
    return off_1E78E9D18[a3 - 100];
  }
}

@end