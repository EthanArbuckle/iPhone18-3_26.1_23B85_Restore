@interface SISchemaClientEvent
+ (Class)getEventTypeClassForTag:(int)a3;
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
+ (id)getTagForEventTypeClass:(Class)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaAnnounceCarPlayBannerTapped)announceCarPlayBannerTapped;
- (SISchemaAnnounceCarPlayGlyphSettingToggled)announceCarPlayGlyphSettingToggled;
- (SISchemaAudioFirstBufferRecorded)audioFirstBufferRecorded;
- (SISchemaAudioStopRecording)audioStopRecording;
- (SISchemaAudioStopRecordingStarted)audioStopRecordingStarted;
- (SISchemaBluetoothCarPreferredAudioRouteChanged)preferredAudioRouteChanged;
- (SISchemaCarPlayHeadUnitContext)carPlayHeadUnitContext;
- (SISchemaCasinoRelationship)casinoRelationship;
- (SISchemaClientEvent)initWithDictionary:(id)a3;
- (SISchemaClientEvent)initWithJSON:(id)a3;
- (SISchemaClientFlow)clientFlow;
- (SISchemaConversationTrace)clientConversationTrace;
- (SISchemaDeviceDynamicContext)deviceDynamicContext;
- (SISchemaDeviceFixedContext)deviceFixedContext;
- (SISchemaDeviceLockStateChanged)deviceLockStateChanged;
- (SISchemaDialogOutput)dialogOutput;
- (SISchemaDictationAlternativeSelected)dictationAlternativeSelected;
- (SISchemaDictationAlternativesViewed)dictationAlternativesViewed;
- (SISchemaDictationContentEdited)dictationContentEdited;
- (SISchemaDictationContext)dictationContext;
- (SISchemaDictationEndPointCancel)dictationEndPointCancel;
- (SISchemaDictationEndPointStop)dictationEndPointStop;
- (SISchemaDictationTranscriptionMetadata)dictationTranscriptionMetadata;
- (SISchemaEngagedAccessoryContext)engagedAccessoryContext;
- (SISchemaInstrumentationMessage)innerEvent;
- (SISchemaIntercomMessageRecorded)intercomMessageRecorded;
- (SISchemaInvocation)invocation;
- (SISchemaKeyboardDismissed)keyboardDismissed;
- (SISchemaLocation)location;
- (SISchemaPNRFatalError)pnrFatalError;
- (SISchemaPNRSpeechRecognitionSourceContext)pnrSpeechRecognitionSourceContext;
- (SISchemaPNRTextToSpeechRequestReceived)pnrTextToSpeechRequestReceived;
- (SISchemaPunchOut)punchOut;
- (SISchemaSiriCue)siriCue;
- (SISchemaSpeechTranscription)speechTranscription;
- (SISchemaTextToSpeechBegin)textToSpeechBegin;
- (SISchemaTextToSpeechEnd)textToSpeechEnd;
- (SISchemaTurnMTERequest)turnMTERequest;
- (SISchemaTypingRequestTrace)typingRequestTrace;
- (SISchemaUEIDictationAlternativeConfusionPairsSelected)dictationAlternativesSelected;
- (SISchemaUEIDictationAlternativeTextPairsSelected)ueiDictationAlternativeTextPairsSelected;
- (SISchemaUEIDictationContentEditedTier1)ueiDictationContentEditedTier1;
- (SISchemaUEIDictationDiscoveryToolTipDisplayContext)ueiDictationToolTipDisplayContext;
- (SISchemaUEIDictationEnablementPromptShown)ueiDictationEnablementPromptShown;
- (SISchemaUEIDictationEuclidAlternativesEvent)ueiDictationEuclidAlternativesEvent;
- (SISchemaUEIDictationEuclidAlternativesEventTier1)ueiDictationEuclidAlternativesEventTier1;
- (SISchemaUEIDictationEuclidSpeechAlternativesSelected)ueiDictationEuclidSpeechAlternativesSelected;
- (SISchemaUEIDictationEuclidSpeechAlternativesSelectedTier1)ueiDictationEuclidSpeechAlternativesSelectedTier1;
- (SISchemaUEIDictationInputModeSwitchContext)ueiDictationInputModeSwitchContext;
- (SISchemaUEIDictationPartialResultUpdated)ueiDictationPartialResultUpdated;
- (SISchemaUEIDictationTranscriptionTokenized)ueiDictationTranscriptionTokenized;
- (SISchemaUEIDictationVoiceCommandDisambiguationAction)ueiDictationVoiceCommandDisambiguationAction;
- (SISchemaUEIDictationVoiceCommandExecuted)ueiDictationVoiceCommandExecuted;
- (SISchemaUEIDictationVoiceCommandKeyboardAction)ueiDictationVoiceCommandKeyboardAction;
- (SISchemaUEIDictationVoiceCommandUndoTapAction)ueiDictationVoiceCommandUndoTapAction;
- (SISchemaUEIHostingPlatformViewAppearContext)hostPlatformViewAppearContext;
- (SISchemaUEIHostingPlatformViewDisappearContext)hostPlatformViewDisappearContext;
- (SISchemaUEIInvocationTier1)ueiInvocationTier1;
- (SISchemaUEILaunchContext)ueiLaunchContext;
- (SISchemaUEIRequestCategorization)ueiRequestCategorization;
- (SISchemaUEISiriCarCommandContext)ueiSiriCarCommandContext;
- (SISchemaUEISiriWasUnavailable)ueiSiriWasUnavailable;
- (SISchemaUEITranscriptShown)transcriptShown;
- (SISchemaUEITranscriptTapped)transcriptTapped;
- (SISchemaUEIUIRenderingContext)ueiUIRenderingContext;
- (SISchemaUEIUUFRReady)ueiUUFRReady;
- (SISchemaUEIUserBargeInDetected)ueiUserBargeInDetected;
- (SISchemaUEIUserSpeakingContext)ueiUserSpeakingContext;
- (SISchemaUEIVisionSnippetDismissed)ueiVisionSnippetDismissed;
- (SISchemaUIStateTransition)uiStateTransition;
- (SISchemaUUFRCompletion)uufrCompletion;
- (SISchemaUUFRFatalError)uufrFatalError;
- (SISchemaUUFRPresented)uufrPresented;
- (SISchemaUUFRSaid)uufrSaid;
- (SISchemaUUFRSelected)uufrSelected;
- (SISchemaUUFRShown)uufrShown;
- (SISchemaUUFRShownTier1)uufrShownTier1;
- (SISchemaUserViewRegionInteraction)userViewRegionInteraction;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)getEventType;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteAnnounceCarPlayBannerTapped;
- (void)deleteAnnounceCarPlayGlyphSettingToggled;
- (void)deleteAudioFirstBufferRecorded;
- (void)deleteAudioStopRecording;
- (void)deleteAudioStopRecordingStarted;
- (void)deleteCarPlayHeadUnitContext;
- (void)deleteCasinoRelationship;
- (void)deleteClientConversationTrace;
- (void)deleteClientFlow;
- (void)deleteDeviceDynamicContext;
- (void)deleteDeviceFixedContext;
- (void)deleteDeviceLockStateChanged;
- (void)deleteDialogOutput;
- (void)deleteDictationAlternativeSelected;
- (void)deleteDictationAlternativesSelected;
- (void)deleteDictationAlternativesViewed;
- (void)deleteDictationContentEdited;
- (void)deleteDictationContext;
- (void)deleteDictationEndPointCancel;
- (void)deleteDictationEndPointStop;
- (void)deleteDictationTranscriptionMetadata;
- (void)deleteEngagedAccessoryContext;
- (void)deleteHostPlatformViewAppearContext;
- (void)deleteHostPlatformViewDisappearContext;
- (void)deleteIntercomMessageRecorded;
- (void)deleteInvocation;
- (void)deleteKeyboardDismissed;
- (void)deleteLocation;
- (void)deletePnrFatalError;
- (void)deletePnrSpeechRecognitionSourceContext;
- (void)deletePnrTextToSpeechRequestReceived;
- (void)deletePreferredAudioRouteChanged;
- (void)deletePunchOut;
- (void)deleteSiriCue;
- (void)deleteSpeechTranscription;
- (void)deleteTextToSpeechBegin;
- (void)deleteTextToSpeechEnd;
- (void)deleteTranscriptShown;
- (void)deleteTranscriptTapped;
- (void)deleteTurnMTERequest;
- (void)deleteTypingRequestTrace;
- (void)deleteUeiDictationAlternativeTextPairsSelected;
- (void)deleteUeiDictationContentEditedTier1;
- (void)deleteUeiDictationEnablementPromptShown;
- (void)deleteUeiDictationEuclidAlternativesEvent;
- (void)deleteUeiDictationEuclidAlternativesEventTier1;
- (void)deleteUeiDictationEuclidSpeechAlternativesSelected;
- (void)deleteUeiDictationEuclidSpeechAlternativesSelectedTier1;
- (void)deleteUeiDictationInputModeSwitchContext;
- (void)deleteUeiDictationPartialResultUpdated;
- (void)deleteUeiDictationToolTipDisplayContext;
- (void)deleteUeiDictationTranscriptionTokenized;
- (void)deleteUeiDictationVoiceCommandDisambiguationAction;
- (void)deleteUeiDictationVoiceCommandExecuted;
- (void)deleteUeiDictationVoiceCommandKeyboardAction;
- (void)deleteUeiDictationVoiceCommandUndoTapAction;
- (void)deleteUeiInvocationTier1;
- (void)deleteUeiLaunchContext;
- (void)deleteUeiRequestCategorization;
- (void)deleteUeiSiriCarCommandContext;
- (void)deleteUeiSiriWasUnavailable;
- (void)deleteUeiUIRenderingContext;
- (void)deleteUeiUUFRReady;
- (void)deleteUeiUserBargeInDetected;
- (void)deleteUeiUserSpeakingContext;
- (void)deleteUeiVisionSnippetDismissed;
- (void)deleteUiStateTransition;
- (void)deleteUserViewRegionInteraction;
- (void)deleteUufrCompletion;
- (void)deleteUufrFatalError;
- (void)deleteUufrPresented;
- (void)deleteUufrSaid;
- (void)deleteUufrSelected;
- (void)deleteUufrShown;
- (void)deleteUufrShownTier1;
- (void)setAnnounceCarPlayBannerTapped:(id)a3;
- (void)setAnnounceCarPlayGlyphSettingToggled:(id)a3;
- (void)setAudioFirstBufferRecorded:(id)a3;
- (void)setAudioStopRecording:(id)a3;
- (void)setAudioStopRecordingStarted:(id)a3;
- (void)setCarPlayHeadUnitContext:(id)a3;
- (void)setCasinoRelationship:(id)a3;
- (void)setClientConversationTrace:(id)a3;
- (void)setClientFlow:(id)a3;
- (void)setDeviceDynamicContext:(id)a3;
- (void)setDeviceFixedContext:(id)a3;
- (void)setDeviceLockStateChanged:(id)a3;
- (void)setDialogOutput:(id)a3;
- (void)setDictationAlternativeSelected:(id)a3;
- (void)setDictationAlternativesSelected:(id)a3;
- (void)setDictationAlternativesViewed:(id)a3;
- (void)setDictationContentEdited:(id)a3;
- (void)setDictationContext:(id)a3;
- (void)setDictationEndPointCancel:(id)a3;
- (void)setDictationEndPointStop:(id)a3;
- (void)setDictationTranscriptionMetadata:(id)a3;
- (void)setEngagedAccessoryContext:(id)a3;
- (void)setEventType:(id)a3;
- (void)setHostPlatformViewAppearContext:(id)a3;
- (void)setHostPlatformViewDisappearContext:(id)a3;
- (void)setIntercomMessageRecorded:(id)a3;
- (void)setInvocation:(id)a3;
- (void)setKeyboardDismissed:(id)a3;
- (void)setLocation:(id)a3;
- (void)setPnrFatalError:(id)a3;
- (void)setPnrSpeechRecognitionSourceContext:(id)a3;
- (void)setPnrTextToSpeechRequestReceived:(id)a3;
- (void)setPreferredAudioRouteChanged:(id)a3;
- (void)setPunchOut:(id)a3;
- (void)setSiriCue:(id)a3;
- (void)setSpeechTranscription:(id)a3;
- (void)setTextToSpeechBegin:(id)a3;
- (void)setTextToSpeechEnd:(id)a3;
- (void)setTranscriptShown:(id)a3;
- (void)setTranscriptTapped:(id)a3;
- (void)setTurnMTERequest:(id)a3;
- (void)setTypingRequestTrace:(id)a3;
- (void)setUeiDictationAlternativeTextPairsSelected:(id)a3;
- (void)setUeiDictationContentEditedTier1:(id)a3;
- (void)setUeiDictationEnablementPromptShown:(id)a3;
- (void)setUeiDictationEuclidAlternativesEvent:(id)a3;
- (void)setUeiDictationEuclidAlternativesEventTier1:(id)a3;
- (void)setUeiDictationEuclidSpeechAlternativesSelected:(id)a3;
- (void)setUeiDictationEuclidSpeechAlternativesSelectedTier1:(id)a3;
- (void)setUeiDictationInputModeSwitchContext:(id)a3;
- (void)setUeiDictationPartialResultUpdated:(id)a3;
- (void)setUeiDictationToolTipDisplayContext:(id)a3;
- (void)setUeiDictationTranscriptionTokenized:(id)a3;
- (void)setUeiDictationVoiceCommandDisambiguationAction:(id)a3;
- (void)setUeiDictationVoiceCommandExecuted:(id)a3;
- (void)setUeiDictationVoiceCommandKeyboardAction:(id)a3;
- (void)setUeiDictationVoiceCommandUndoTapAction:(id)a3;
- (void)setUeiInvocationTier1:(id)a3;
- (void)setUeiLaunchContext:(id)a3;
- (void)setUeiRequestCategorization:(id)a3;
- (void)setUeiSiriCarCommandContext:(id)a3;
- (void)setUeiSiriWasUnavailable:(id)a3;
- (void)setUeiUIRenderingContext:(id)a3;
- (void)setUeiUUFRReady:(id)a3;
- (void)setUeiUserBargeInDetected:(id)a3;
- (void)setUeiUserSpeakingContext:(id)a3;
- (void)setUeiVisionSnippetDismissed:(id)a3;
- (void)setUiStateTransition:(id)a3;
- (void)setUserViewRegionInteraction:(id)a3;
- (void)setUufrCompletion:(id)a3;
- (void)setUufrFatalError:(id)a3;
- (void)setUufrPresented:(id)a3;
- (void)setUufrSaid:(id)a3;
- (void)setUufrSelected:(id)a3;
- (void)setUufrShown:(id)a3;
- (void)setUufrShownTier1:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaClientEvent

- (SISchemaSpeechTranscription)speechTranscription
{
  if (self->_whichEvent_Type == 113)
  {
    v3 = self->_speechTranscription;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaDictationTranscriptionMetadata)dictationTranscriptionMetadata
{
  if (self->_whichEvent_Type == 122)
  {
    v3 = self->_dictationTranscriptionMetadata;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaInvocation)invocation
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_invocation;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaConversationTrace)clientConversationTrace
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_clientConversationTrace;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaDeviceDynamicContext)deviceDynamicContext
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_deviceDynamicContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaDeviceFixedContext)deviceFixedContext
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_deviceFixedContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaPunchOut)punchOut
{
  if (self->_whichEvent_Type == 109)
  {
    v3 = self->_punchOut;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaAudioStopRecording)audioStopRecording
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_audioStopRecording;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaDictationContext)dictationContext
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_dictationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaLocation)location
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_location;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaAudioFirstBufferRecorded)audioFirstBufferRecorded
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_audioFirstBufferRecorded;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaSiriCue)siriCue
{
  if (self->_whichEvent_Type == 111)
  {
    v3 = self->_siriCue;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUUFRPresented)uufrPresented
{
  if (self->_whichEvent_Type == 112)
  {
    v3 = self->_uufrPresented;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaTextToSpeechBegin)textToSpeechBegin
{
  if (self->_whichEvent_Type == 114)
  {
    v3 = self->_textToSpeechBegin;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaTextToSpeechEnd)textToSpeechEnd
{
  if (self->_whichEvent_Type == 115)
  {
    v3 = self->_textToSpeechEnd;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUIStateTransition)uiStateTransition
{
  if (self->_whichEvent_Type == 116)
  {
    v3 = self->_uiStateTransition;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaClientFlow)clientFlow
{
  if (self->_whichEvent_Type == 117)
  {
    v3 = self->_clientFlow;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaDialogOutput)dialogOutput
{
  if (self->_whichEvent_Type == 118)
  {
    v3 = self->_dialogOutput;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaDictationEndPointStop)dictationEndPointStop
{
  if (self->_whichEvent_Type == 119)
  {
    v3 = self->_dictationEndPointStop;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaDictationEndPointCancel)dictationEndPointCancel
{
  if (self->_whichEvent_Type == 120)
  {
    v3 = self->_dictationEndPointCancel;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaDictationAlternativeSelected)dictationAlternativeSelected
{
  if (self->_whichEvent_Type == 121)
  {
    v3 = self->_dictationAlternativeSelected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUUFRSaid)uufrSaid
{
  if (self->_whichEvent_Type == 126)
  {
    v3 = self->_uufrSaid;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaDictationAlternativesViewed)dictationAlternativesViewed
{
  if (self->_whichEvent_Type == 128)
  {
    v3 = self->_dictationAlternativesViewed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaCasinoRelationship)casinoRelationship
{
  if (self->_whichEvent_Type == 130)
  {
    v3 = self->_casinoRelationship;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUserViewRegionInteraction)userViewRegionInteraction
{
  if (self->_whichEvent_Type == 131)
  {
    v3 = self->_userViewRegionInteraction;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUUFRCompletion)uufrCompletion
{
  if (self->_whichEvent_Type == 124)
  {
    v3 = self->_uufrCompletion;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUUFRShown)uufrShown
{
  if (self->_whichEvent_Type == 125)
  {
    v3 = self->_uufrShown;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUUFRFatalError)uufrFatalError
{
  if (self->_whichEvent_Type == 127)
  {
    v3 = self->_uufrFatalError;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaIntercomMessageRecorded)intercomMessageRecorded
{
  if (self->_whichEvent_Type == 129)
  {
    v3 = self->_intercomMessageRecorded;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIRequestCategorization)ueiRequestCategorization
{
  if (self->_whichEvent_Type == 133)
  {
    v3 = self->_ueiRequestCategorization;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaAudioStopRecordingStarted)audioStopRecordingStarted
{
  if (self->_whichEvent_Type == 134)
  {
    v3 = self->_audioStopRecordingStarted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEILaunchContext)ueiLaunchContext
{
  if (self->_whichEvent_Type == 135)
  {
    v3 = self->_ueiLaunchContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIUUFRReady)ueiUUFRReady
{
  if (self->_whichEvent_Type == 137)
  {
    v3 = self->_ueiUUFRReady;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIDictationInputModeSwitchContext)ueiDictationInputModeSwitchContext
{
  if (self->_whichEvent_Type == 152)
  {
    v3 = self->_ueiDictationInputModeSwitchContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEISiriCarCommandContext)ueiSiriCarCommandContext
{
  if (self->_whichEvent_Type == 162)
  {
    v3 = self->_ueiSiriCarCommandContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIDictationEuclidAlternativesEventTier1)ueiDictationEuclidAlternativesEventTier1
{
  if (self->_whichEvent_Type == 171)
  {
    v3 = self->_ueiDictationEuclidAlternativesEventTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIHostingPlatformViewAppearContext)hostPlatformViewAppearContext
{
  if (self->_whichEvent_Type == 154)
  {
    v3 = self->_hostPlatformViewAppearContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaCarPlayHeadUnitContext)carPlayHeadUnitContext
{
  if (self->_whichEvent_Type == 123)
  {
    v3 = self->_carPlayHeadUnitContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaDeviceLockStateChanged)deviceLockStateChanged
{
  if (self->_whichEvent_Type == 132)
  {
    v3 = self->_deviceLockStateChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaTurnMTERequest)turnMTERequest
{
  if (self->_whichEvent_Type == 142)
  {
    v3 = self->_turnMTERequest;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaPNRFatalError)pnrFatalError
{
  if (self->_whichEvent_Type == 141)
  {
    v3 = self->_pnrFatalError;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaEngagedAccessoryContext)engagedAccessoryContext
{
  if (self->_whichEvent_Type == 144)
  {
    v3 = self->_engagedAccessoryContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIDictationVoiceCommandDisambiguationAction)ueiDictationVoiceCommandDisambiguationAction
{
  if (self->_whichEvent_Type == 168)
  {
    v3 = self->_ueiDictationVoiceCommandDisambiguationAction;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIUserSpeakingContext)ueiUserSpeakingContext
{
  if (self->_whichEvent_Type == 136)
  {
    v3 = self->_ueiUserSpeakingContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIUIRenderingContext)ueiUIRenderingContext
{
  if (self->_whichEvent_Type == 138)
  {
    v3 = self->_ueiUIRenderingContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaPNRTextToSpeechRequestReceived)pnrTextToSpeechRequestReceived
{
  if (self->_whichEvent_Type == 139)
  {
    v3 = self->_pnrTextToSpeechRequestReceived;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaPNRSpeechRecognitionSourceContext)pnrSpeechRecognitionSourceContext
{
  if (self->_whichEvent_Type == 140)
  {
    v3 = self->_pnrSpeechRecognitionSourceContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaKeyboardDismissed)keyboardDismissed
{
  if (self->_whichEvent_Type == 143)
  {
    v3 = self->_keyboardDismissed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaAnnounceCarPlayBannerTapped)announceCarPlayBannerTapped
{
  if (self->_whichEvent_Type == 145)
  {
    v3 = self->_announceCarPlayBannerTapped;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaAnnounceCarPlayGlyphSettingToggled)announceCarPlayGlyphSettingToggled
{
  if (self->_whichEvent_Type == 146)
  {
    v3 = self->_announceCarPlayGlyphSettingToggled;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaDictationContentEdited)dictationContentEdited
{
  if (self->_whichEvent_Type == 147)
  {
    v3 = self->_dictationContentEdited;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUUFRShownTier1)uufrShownTier1
{
  if (self->_whichEvent_Type == 148)
  {
    v3 = self->_uufrShownTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIDictationPartialResultUpdated)ueiDictationPartialResultUpdated
{
  if (self->_whichEvent_Type == 150)
  {
    v3 = self->_ueiDictationPartialResultUpdated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIDictationVoiceCommandExecuted)ueiDictationVoiceCommandExecuted
{
  if (self->_whichEvent_Type == 151)
  {
    v3 = self->_ueiDictationVoiceCommandExecuted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIDictationDiscoveryToolTipDisplayContext)ueiDictationToolTipDisplayContext
{
  if (self->_whichEvent_Type == 153)
  {
    v3 = self->_ueiDictationToolTipDisplayContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIDictationEuclidSpeechAlternativesSelected)ueiDictationEuclidSpeechAlternativesSelected
{
  if (self->_whichEvent_Type == 172)
  {
    v3 = self->_ueiDictationEuclidSpeechAlternativesSelected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)qualifiedMessageName
{
  v2 = [(SISchemaClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 0x4C)
  {
    return @"com.apple.aiml.siri.uei.ClientEvent";
  }

  else
  {
    return off_1E78E3A00[v2 - 101];
  }
}

- (SISchemaUEIDictationEnablementPromptShown)ueiDictationEnablementPromptShown
{
  if (self->_whichEvent_Type == 161)
  {
    v3 = self->_ueiDictationEnablementPromptShown;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIDictationContentEditedTier1)ueiDictationContentEditedTier1
{
  if (self->_whichEvent_Type == 166)
  {
    v3 = self->_ueiDictationContentEditedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIDictationVoiceCommandUndoTapAction)ueiDictationVoiceCommandUndoTapAction
{
  if (self->_whichEvent_Type == 167)
  {
    v3 = self->_ueiDictationVoiceCommandUndoTapAction;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIDictationEuclidAlternativesEvent)ueiDictationEuclidAlternativesEvent
{
  if (self->_whichEvent_Type == 170)
  {
    v3 = self->_ueiDictationEuclidAlternativesEvent;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEITranscriptShown)transcriptShown
{
  if (self->_whichEvent_Type == 176)
  {
    v3 = self->_transcriptShown;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEITranscriptTapped)transcriptTapped
{
  if (self->_whichEvent_Type == 177)
  {
    v3 = self->_transcriptTapped;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIHostingPlatformViewDisappearContext)hostPlatformViewDisappearContext
{
  if (self->_whichEvent_Type == 155)
  {
    v3 = self->_hostPlatformViewDisappearContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIDictationTranscriptionTokenized)ueiDictationTranscriptionTokenized
{
  if (self->_whichEvent_Type == 156)
  {
    v3 = self->_ueiDictationTranscriptionTokenized;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIDictationAlternativeConfusionPairsSelected)dictationAlternativesSelected
{
  if (self->_whichEvent_Type == 157)
  {
    v3 = self->_dictationAlternativesSelected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUUFRSelected)uufrSelected
{
  if (self->_whichEvent_Type == 158)
  {
    v3 = self->_uufrSelected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIDictationAlternativeTextPairsSelected)ueiDictationAlternativeTextPairsSelected
{
  if (self->_whichEvent_Type == 159)
  {
    v3 = self->_ueiDictationAlternativeTextPairsSelected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIUserBargeInDetected)ueiUserBargeInDetected
{
  if (self->_whichEvent_Type == 160)
  {
    v3 = self->_ueiUserBargeInDetected;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIVisionSnippetDismissed)ueiVisionSnippetDismissed
{
  if (self->_whichEvent_Type == 163)
  {
    v3 = self->_ueiVisionSnippetDismissed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEISiriWasUnavailable)ueiSiriWasUnavailable
{
  if (self->_whichEvent_Type == 164)
  {
    v3 = self->_ueiSiriWasUnavailable;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaBluetoothCarPreferredAudioRouteChanged)preferredAudioRouteChanged
{
  if (self->_whichEvent_Type == 165)
  {
    v3 = self->_preferredAudioRouteChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIDictationVoiceCommandKeyboardAction)ueiDictationVoiceCommandKeyboardAction
{
  if (self->_whichEvent_Type == 169)
  {
    v3 = self->_ueiDictationVoiceCommandKeyboardAction;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIDictationEuclidSpeechAlternativesSelectedTier1)ueiDictationEuclidSpeechAlternativesSelectedTier1
{
  if (self->_whichEvent_Type == 173)
  {
    v3 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaTypingRequestTrace)typingRequestTrace
{
  if (self->_whichEvent_Type == 174)
  {
    v3 = self->_typingRequestTrace;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SISchemaUEIInvocationTier1)ueiInvocationTier1
{
  if (self->_whichEvent_Type == 175)
  {
    v3 = self->_ueiInvocationTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)getEventType
{
  v3 = 0;
  v4 = &OBJC_IVAR___SISchemaClientEvent__audioFirstBufferRecorded;
  switch(self->_whichEvent_Type)
  {
    case 0x65uLL:
      goto LABEL_76;
    case 0x66uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__audioStopRecording;
      goto LABEL_76;
    case 0x67uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__clientConversationTrace;
      goto LABEL_76;
    case 0x68uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__deviceDynamicContext;
      goto LABEL_76;
    case 0x69uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__deviceFixedContext;
      goto LABEL_76;
    case 0x6AuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__dictationContext;
      goto LABEL_76;
    case 0x6BuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__invocation;
      goto LABEL_76;
    case 0x6CuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__location;
      goto LABEL_76;
    case 0x6DuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__punchOut;
      goto LABEL_76;
    case 0x6FuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__siriCue;
      goto LABEL_76;
    case 0x70uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__uufrPresented;
      goto LABEL_76;
    case 0x71uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__speechTranscription;
      goto LABEL_76;
    case 0x72uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__textToSpeechBegin;
      goto LABEL_76;
    case 0x73uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__textToSpeechEnd;
      goto LABEL_76;
    case 0x74uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__uiStateTransition;
      goto LABEL_76;
    case 0x75uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__clientFlow;
      goto LABEL_76;
    case 0x76uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__dialogOutput;
      goto LABEL_76;
    case 0x77uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__dictationEndPointStop;
      goto LABEL_76;
    case 0x78uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__dictationEndPointCancel;
      goto LABEL_76;
    case 0x79uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__dictationAlternativeSelected;
      goto LABEL_76;
    case 0x7AuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__dictationTranscriptionMetadata;
      goto LABEL_76;
    case 0x7BuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__carPlayHeadUnitContext;
      goto LABEL_76;
    case 0x7CuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__uufrCompletion;
      goto LABEL_76;
    case 0x7DuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__uufrShown;
      goto LABEL_76;
    case 0x7EuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__uufrSaid;
      goto LABEL_76;
    case 0x7FuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__uufrFatalError;
      goto LABEL_76;
    case 0x80uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__dictationAlternativesViewed;
      goto LABEL_76;
    case 0x81uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__intercomMessageRecorded;
      goto LABEL_76;
    case 0x82uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__casinoRelationship;
      goto LABEL_76;
    case 0x83uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__userViewRegionInteraction;
      goto LABEL_76;
    case 0x84uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__deviceLockStateChanged;
      goto LABEL_76;
    case 0x85uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiRequestCategorization;
      goto LABEL_76;
    case 0x86uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__audioStopRecordingStarted;
      goto LABEL_76;
    case 0x87uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiLaunchContext;
      goto LABEL_76;
    case 0x88uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiUserSpeakingContext;
      goto LABEL_76;
    case 0x89uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiUUFRReady;
      goto LABEL_76;
    case 0x8AuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiUIRenderingContext;
      goto LABEL_76;
    case 0x8BuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__pnrTextToSpeechRequestReceived;
      goto LABEL_76;
    case 0x8CuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__pnrSpeechRecognitionSourceContext;
      goto LABEL_76;
    case 0x8DuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__pnrFatalError;
      goto LABEL_76;
    case 0x8EuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__turnMTERequest;
      goto LABEL_76;
    case 0x8FuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__keyboardDismissed;
      goto LABEL_76;
    case 0x90uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__engagedAccessoryContext;
      goto LABEL_76;
    case 0x91uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__announceCarPlayBannerTapped;
      goto LABEL_76;
    case 0x92uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__announceCarPlayGlyphSettingToggled;
      goto LABEL_76;
    case 0x93uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__dictationContentEdited;
      goto LABEL_76;
    case 0x94uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__uufrShownTier1;
      goto LABEL_76;
    case 0x96uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationPartialResultUpdated;
      goto LABEL_76;
    case 0x97uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationVoiceCommandExecuted;
      goto LABEL_76;
    case 0x98uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationInputModeSwitchContext;
      goto LABEL_76;
    case 0x99uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationToolTipDisplayContext;
      goto LABEL_76;
    case 0x9AuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__hostPlatformViewAppearContext;
      goto LABEL_76;
    case 0x9BuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__hostPlatformViewDisappearContext;
      goto LABEL_76;
    case 0x9CuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationTranscriptionTokenized;
      goto LABEL_76;
    case 0x9DuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__dictationAlternativesSelected;
      goto LABEL_76;
    case 0x9EuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__uufrSelected;
      goto LABEL_76;
    case 0x9FuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationAlternativeTextPairsSelected;
      goto LABEL_76;
    case 0xA0uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiUserBargeInDetected;
      goto LABEL_76;
    case 0xA1uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationEnablementPromptShown;
      goto LABEL_76;
    case 0xA2uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiSiriCarCommandContext;
      goto LABEL_76;
    case 0xA3uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiVisionSnippetDismissed;
      goto LABEL_76;
    case 0xA4uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiSiriWasUnavailable;
      goto LABEL_76;
    case 0xA5uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__preferredAudioRouteChanged;
      goto LABEL_76;
    case 0xA6uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationContentEditedTier1;
      goto LABEL_76;
    case 0xA7uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationVoiceCommandUndoTapAction;
      goto LABEL_76;
    case 0xA8uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationVoiceCommandDisambiguationAction;
      goto LABEL_76;
    case 0xA9uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationVoiceCommandKeyboardAction;
      goto LABEL_76;
    case 0xAAuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationEuclidAlternativesEvent;
      goto LABEL_76;
    case 0xABuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationEuclidAlternativesEventTier1;
      goto LABEL_76;
    case 0xACuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationEuclidSpeechAlternativesSelected;
      goto LABEL_76;
    case 0xADuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationEuclidSpeechAlternativesSelectedTier1;
      goto LABEL_76;
    case 0xAEuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__typingRequestTrace;
      goto LABEL_76;
    case 0xAFuLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__ueiInvocationTier1;
      goto LABEL_76;
    case 0xB0uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__transcriptShown;
      goto LABEL_76;
    case 0xB1uLL:
      v4 = &OBJC_IVAR___SISchemaClientEvent__transcriptTapped;
LABEL_76:
      v3 = *(&self->super.super.super.super.isa + *v4);
      break;
    default:
      break;
  }

  return v3;
}

- (void)setEventType:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SISchemaClientEvent *)self setAudioFirstBufferRecorded:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SISchemaClientEvent *)self setAudioStopRecording:v4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SISchemaClientEvent *)self setClientConversationTrace:v4];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SISchemaClientEvent *)self setDeviceDynamicContext:v4];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(SISchemaClientEvent *)self setDeviceFixedContext:v4];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(SISchemaClientEvent *)self setDictationContext:v4];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(SISchemaClientEvent *)self setInvocation:v4];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [(SISchemaClientEvent *)self setLocation:v4];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [(SISchemaClientEvent *)self setPunchOut:v4];
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [(SISchemaClientEvent *)self setSiriCue:v4];
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [(SISchemaClientEvent *)self setUufrPresented:v4];
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          [(SISchemaClientEvent *)self setSpeechTranscription:v4];
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [(SISchemaClientEvent *)self setTextToSpeechBegin:v4];
                          }

                          else
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              [(SISchemaClientEvent *)self setTextToSpeechEnd:v4];
                            }

                            else
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                [(SISchemaClientEvent *)self setUiStateTransition:v4];
                              }

                              else
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  [(SISchemaClientEvent *)self setClientFlow:v4];
                                }

                                else
                                {
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    [(SISchemaClientEvent *)self setDialogOutput:v4];
                                  }

                                  else
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      [(SISchemaClientEvent *)self setDictationEndPointStop:v4];
                                    }

                                    else
                                    {
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        [(SISchemaClientEvent *)self setDictationEndPointCancel:v4];
                                      }

                                      else
                                      {
                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          [(SISchemaClientEvent *)self setDictationAlternativeSelected:v4];
                                        }

                                        else
                                        {
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            [(SISchemaClientEvent *)self setDictationTranscriptionMetadata:v4];
                                          }

                                          else
                                          {
                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              [(SISchemaClientEvent *)self setCarPlayHeadUnitContext:v4];
                                            }

                                            else
                                            {
                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                [(SISchemaClientEvent *)self setUufrCompletion:v4];
                                              }

                                              else
                                              {
                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  [(SISchemaClientEvent *)self setUufrShown:v4];
                                                }

                                                else
                                                {
                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    [(SISchemaClientEvent *)self setUufrSaid:v4];
                                                  }

                                                  else
                                                  {
                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      [(SISchemaClientEvent *)self setUufrFatalError:v4];
                                                    }

                                                    else
                                                    {
                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        [(SISchemaClientEvent *)self setDictationAlternativesViewed:v4];
                                                      }

                                                      else
                                                      {
                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          [(SISchemaClientEvent *)self setIntercomMessageRecorded:v4];
                                                        }

                                                        else
                                                        {
                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            [(SISchemaClientEvent *)self setCasinoRelationship:v4];
                                                          }

                                                          else
                                                          {
                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              [(SISchemaClientEvent *)self setUserViewRegionInteraction:v4];
                                                            }

                                                            else
                                                            {
                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                [(SISchemaClientEvent *)self setDeviceLockStateChanged:v4];
                                                              }

                                                              else
                                                              {
                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  [(SISchemaClientEvent *)self setUeiRequestCategorization:v4];
                                                                }

                                                                else
                                                                {
                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    [(SISchemaClientEvent *)self setAudioStopRecordingStarted:v4];
                                                                  }

                                                                  else
                                                                  {
                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      [(SISchemaClientEvent *)self setUeiLaunchContext:v4];
                                                                    }

                                                                    else
                                                                    {
                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        [(SISchemaClientEvent *)self setUeiUserSpeakingContext:v4];
                                                                      }

                                                                      else
                                                                      {
                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          [(SISchemaClientEvent *)self setUeiUUFRReady:v4];
                                                                        }

                                                                        else
                                                                        {
                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            [(SISchemaClientEvent *)self setUeiUIRenderingContext:v4];
                                                                          }

                                                                          else
                                                                          {
                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              [(SISchemaClientEvent *)self setPnrTextToSpeechRequestReceived:v4];
                                                                            }

                                                                            else
                                                                            {
                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                [(SISchemaClientEvent *)self setPnrSpeechRecognitionSourceContext:v4];
                                                                              }

                                                                              else
                                                                              {
                                                                                objc_opt_class();
                                                                                if (objc_opt_isKindOfClass())
                                                                                {
                                                                                  [(SISchemaClientEvent *)self setPnrFatalError:v4];
                                                                                }

                                                                                else
                                                                                {
                                                                                  objc_opt_class();
                                                                                  if (objc_opt_isKindOfClass())
                                                                                  {
                                                                                    [(SISchemaClientEvent *)self setTurnMTERequest:v4];
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if (objc_opt_isKindOfClass())
                                                                                    {
                                                                                      [(SISchemaClientEvent *)self setKeyboardDismissed:v4];
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      objc_opt_class();
                                                                                      if (objc_opt_isKindOfClass())
                                                                                      {
                                                                                        [(SISchemaClientEvent *)self setEngagedAccessoryContext:v4];
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        objc_opt_class();
                                                                                        if (objc_opt_isKindOfClass())
                                                                                        {
                                                                                          [(SISchemaClientEvent *)self setAnnounceCarPlayBannerTapped:v4];
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          objc_opt_class();
                                                                                          if (objc_opt_isKindOfClass())
                                                                                          {
                                                                                            [(SISchemaClientEvent *)self setAnnounceCarPlayGlyphSettingToggled:v4];
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            objc_opt_class();
                                                                                            if (objc_opt_isKindOfClass())
                                                                                            {
                                                                                              [(SISchemaClientEvent *)self setDictationContentEdited:v4];
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              objc_opt_class();
                                                                                              if (objc_opt_isKindOfClass())
                                                                                              {
                                                                                                [(SISchemaClientEvent *)self setUufrShownTier1:v4];
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                objc_opt_class();
                                                                                                if (objc_opt_isKindOfClass())
                                                                                                {
                                                                                                  [(SISchemaClientEvent *)self setUeiDictationPartialResultUpdated:v4];
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  objc_opt_class();
                                                                                                  if (objc_opt_isKindOfClass())
                                                                                                  {
                                                                                                    [(SISchemaClientEvent *)self setUeiDictationVoiceCommandExecuted:v4];
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    objc_opt_class();
                                                                                                    if (objc_opt_isKindOfClass())
                                                                                                    {
                                                                                                      [(SISchemaClientEvent *)self setUeiDictationInputModeSwitchContext:v4];
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        [(SISchemaClientEvent *)self setUeiDictationToolTipDisplayContext:v4];
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if (objc_opt_isKindOfClass())
                                                                                                        {
                                                                                                          [(SISchemaClientEvent *)self setHostPlatformViewAppearContext:v4];
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          objc_opt_class();
                                                                                                          if (objc_opt_isKindOfClass())
                                                                                                          {
                                                                                                            [(SISchemaClientEvent *)self setHostPlatformViewDisappearContext:v4];
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            objc_opt_class();
                                                                                                            if (objc_opt_isKindOfClass())
                                                                                                            {
                                                                                                              [(SISchemaClientEvent *)self setUeiDictationTranscriptionTokenized:v4];
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              objc_opt_class();
                                                                                                              if (objc_opt_isKindOfClass())
                                                                                                              {
                                                                                                                [(SISchemaClientEvent *)self setDictationAlternativesSelected:v4];
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                objc_opt_class();
                                                                                                                if (objc_opt_isKindOfClass())
                                                                                                                {
                                                                                                                  [(SISchemaClientEvent *)self setUufrSelected:v4];
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  objc_opt_class();
                                                                                                                  if (objc_opt_isKindOfClass())
                                                                                                                  {
                                                                                                                    [(SISchemaClientEvent *)self setUeiDictationAlternativeTextPairsSelected:v4];
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    objc_opt_class();
                                                                                                                    if (objc_opt_isKindOfClass())
                                                                                                                    {
                                                                                                                      [(SISchemaClientEvent *)self setUeiUserBargeInDetected:v4];
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      objc_opt_class();
                                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                                      {
                                                                                                                        [(SISchemaClientEvent *)self setUeiDictationEnablementPromptShown:v4];
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        objc_opt_class();
                                                                                                                        if (objc_opt_isKindOfClass())
                                                                                                                        {
                                                                                                                          [(SISchemaClientEvent *)self setUeiSiriCarCommandContext:v4];
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          objc_opt_class();
                                                                                                                          if (objc_opt_isKindOfClass())
                                                                                                                          {
                                                                                                                            [(SISchemaClientEvent *)self setUeiVisionSnippetDismissed:v4];
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            objc_opt_class();
                                                                                                                            if (objc_opt_isKindOfClass())
                                                                                                                            {
                                                                                                                              [(SISchemaClientEvent *)self setUeiSiriWasUnavailable:v4];
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              objc_opt_class();
                                                                                                                              if (objc_opt_isKindOfClass())
                                                                                                                              {
                                                                                                                                [(SISchemaClientEvent *)self setPreferredAudioRouteChanged:v4];
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                objc_opt_class();
                                                                                                                                if (objc_opt_isKindOfClass())
                                                                                                                                {
                                                                                                                                  [(SISchemaClientEvent *)self setUeiDictationContentEditedTier1:v4];
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  objc_opt_class();
                                                                                                                                  if (objc_opt_isKindOfClass())
                                                                                                                                  {
                                                                                                                                    [(SISchemaClientEvent *)self setUeiDictationVoiceCommandUndoTapAction:v4];
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    objc_opt_class();
                                                                                                                                    if (objc_opt_isKindOfClass())
                                                                                                                                    {
                                                                                                                                      [(SISchemaClientEvent *)self setUeiDictationVoiceCommandDisambiguationAction:v4];
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      objc_opt_class();
                                                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                                                      {
                                                                                                                                        [(SISchemaClientEvent *)self setUeiDictationVoiceCommandKeyboardAction:v4];
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        objc_opt_class();
                                                                                                                                        if (objc_opt_isKindOfClass())
                                                                                                                                        {
                                                                                                                                          [(SISchemaClientEvent *)self setUeiDictationEuclidAlternativesEvent:v4];
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          objc_opt_class();
                                                                                                                                          if (objc_opt_isKindOfClass())
                                                                                                                                          {
                                                                                                                                            [(SISchemaClientEvent *)self setUeiDictationEuclidAlternativesEventTier1:v4];
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            objc_opt_class();
                                                                                                                                            if (objc_opt_isKindOfClass())
                                                                                                                                            {
                                                                                                                                              [(SISchemaClientEvent *)self setUeiDictationEuclidSpeechAlternativesSelected:v4];
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              objc_opt_class();
                                                                                                                                              if (objc_opt_isKindOfClass())
                                                                                                                                              {
                                                                                                                                                [(SISchemaClientEvent *)self setUeiDictationEuclidSpeechAlternativesSelectedTier1:v4];
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                objc_opt_class();
                                                                                                                                                if (objc_opt_isKindOfClass())
                                                                                                                                                {
                                                                                                                                                  [(SISchemaClientEvent *)self setTypingRequestTrace:v4];
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  objc_opt_class();
                                                                                                                                                  if (objc_opt_isKindOfClass())
                                                                                                                                                  {
                                                                                                                                                    [(SISchemaClientEvent *)self setUeiInvocationTier1:v4];
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    objc_opt_class();
                                                                                                                                                    if (objc_opt_isKindOfClass())
                                                                                                                                                    {
                                                                                                                                                      [(SISchemaClientEvent *)self setTranscriptShown:v4];
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      objc_opt_class();
                                                                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                                                                      {
                                                                                                                                                        [(SISchemaClientEvent *)self setTranscriptTapped:v4];
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
          }
        }
      }
    }
  }
}

- (SISchemaClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v232.receiver = self;
  v232.super_class = SISchemaClientEvent;
  v5 = [(SISchemaClientEvent *)&v232 init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaClientEventMetadata alloc] initWithDictionary:v6];
      [(SISchemaClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"transportMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaClientTransportEventMetadata alloc] initWithDictionary:v8];
      [(SISchemaClientEvent *)v5 setTransportMetadata:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"audioFirstBufferRecorded"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaAudioFirstBufferRecorded alloc] initWithDictionary:v10];
      [(SISchemaClientEvent *)v5 setAudioFirstBufferRecorded:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"audioStopRecording"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaAudioStopRecording alloc] initWithDictionary:v12];
      [(SISchemaClientEvent *)v5 setAudioStopRecording:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"clientConversationTrace"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaConversationTrace alloc] initWithDictionary:v14];
      [(SISchemaClientEvent *)v5 setClientConversationTrace:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"deviceDynamicContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaDeviceDynamicContext alloc] initWithDictionary:v16];
      [(SISchemaClientEvent *)v5 setDeviceDynamicContext:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"deviceFixedContext"];
    objc_opt_class();
    v231 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[SISchemaDeviceFixedContext alloc] initWithDictionary:v18];
      [(SISchemaClientEvent *)v5 setDeviceFixedContext:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"dictationContext"];
    objc_opt_class();
    v230 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[SISchemaDictationContext alloc] initWithDictionary:v20];
      [(SISchemaClientEvent *)v5 setDictationContext:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"invocation"];
    objc_opt_class();
    v229 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[SISchemaInvocation alloc] initWithDictionary:v22];
      [(SISchemaClientEvent *)v5 setInvocation:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"location"];
    objc_opt_class();
    v228 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[SISchemaLocation alloc] initWithDictionary:v24];
      [(SISchemaClientEvent *)v5 setLocation:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"punchOut"];
    objc_opt_class();
    v227 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[SISchemaPunchOut alloc] initWithDictionary:v26];
      [(SISchemaClientEvent *)v5 setPunchOut:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"siriCue"];
    objc_opt_class();
    v226 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[SISchemaSiriCue alloc] initWithDictionary:v28];
      [(SISchemaClientEvent *)v5 setSiriCue:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"uufrPresented"];
    objc_opt_class();
    v225 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[SISchemaUUFRPresented alloc] initWithDictionary:v30];
      [(SISchemaClientEvent *)v5 setUufrPresented:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"speechTranscription"];
    objc_opt_class();
    v224 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[SISchemaSpeechTranscription alloc] initWithDictionary:v32];
      [(SISchemaClientEvent *)v5 setSpeechTranscription:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"textToSpeechBegin"];
    objc_opt_class();
    v223 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[SISchemaTextToSpeechBegin alloc] initWithDictionary:v34];
      [(SISchemaClientEvent *)v5 setTextToSpeechBegin:v35];
    }

    v36 = [v4 objectForKeyedSubscript:@"textToSpeechEnd"];
    objc_opt_class();
    v222 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[SISchemaTextToSpeechEnd alloc] initWithDictionary:v36];
      [(SISchemaClientEvent *)v5 setTextToSpeechEnd:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"uiStateTransition"];
    objc_opt_class();
    v221 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[SISchemaUIStateTransition alloc] initWithDictionary:v38];
      [(SISchemaClientEvent *)v5 setUiStateTransition:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"clientFlow"];
    objc_opt_class();
    v220 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[SISchemaClientFlow alloc] initWithDictionary:v40];
      [(SISchemaClientEvent *)v5 setClientFlow:v41];
    }

    v42 = [v4 objectForKeyedSubscript:@"dialogOutput"];
    objc_opt_class();
    v219 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [[SISchemaDialogOutput alloc] initWithDictionary:v42];
      [(SISchemaClientEvent *)v5 setDialogOutput:v43];
    }

    v44 = [v4 objectForKeyedSubscript:@"dictationEndPointStop"];
    objc_opt_class();
    v218 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [[SISchemaDictationEndPointStop alloc] initWithDictionary:v44];
      [(SISchemaClientEvent *)v5 setDictationEndPointStop:v45];
    }

    v46 = [v4 objectForKeyedSubscript:@"dictationEndPointCancel"];
    objc_opt_class();
    v217 = v46;
    if (objc_opt_isKindOfClass())
    {
      v47 = [[SISchemaDictationEndPointCancel alloc] initWithDictionary:v46];
      [(SISchemaClientEvent *)v5 setDictationEndPointCancel:v47];
    }

    v48 = [v4 objectForKeyedSubscript:@"dictationAlternativeSelected"];
    objc_opt_class();
    v216 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [[SISchemaDictationAlternativeSelected alloc] initWithDictionary:v48];
      [(SISchemaClientEvent *)v5 setDictationAlternativeSelected:v49];
    }

    v50 = [v4 objectForKeyedSubscript:@"dictationTranscriptionMetadata"];
    objc_opt_class();
    v215 = v50;
    if (objc_opt_isKindOfClass())
    {
      v51 = [[SISchemaDictationTranscriptionMetadata alloc] initWithDictionary:v50];
      [(SISchemaClientEvent *)v5 setDictationTranscriptionMetadata:v51];
    }

    v52 = [v4 objectForKeyedSubscript:@"carPlayHeadUnitContext"];
    objc_opt_class();
    v214 = v52;
    if (objc_opt_isKindOfClass())
    {
      v53 = [[SISchemaCarPlayHeadUnitContext alloc] initWithDictionary:v52];
      [(SISchemaClientEvent *)v5 setCarPlayHeadUnitContext:v53];
    }

    v54 = [v4 objectForKeyedSubscript:@"uufrCompletion"];
    objc_opt_class();
    v213 = v54;
    if (objc_opt_isKindOfClass())
    {
      v55 = [[SISchemaUUFRCompletion alloc] initWithDictionary:v54];
      [(SISchemaClientEvent *)v5 setUufrCompletion:v55];
    }

    v56 = [v4 objectForKeyedSubscript:@"uufrShown"];
    objc_opt_class();
    v212 = v56;
    if (objc_opt_isKindOfClass())
    {
      v57 = [[SISchemaUUFRShown alloc] initWithDictionary:v56];
      [(SISchemaClientEvent *)v5 setUufrShown:v57];
    }

    v58 = [v4 objectForKeyedSubscript:@"uufrSaid"];
    objc_opt_class();
    v211 = v58;
    if (objc_opt_isKindOfClass())
    {
      v59 = [[SISchemaUUFRSaid alloc] initWithDictionary:v58];
      [(SISchemaClientEvent *)v5 setUufrSaid:v59];
    }

    v60 = [v4 objectForKeyedSubscript:@"uufrFatalError"];
    objc_opt_class();
    v210 = v60;
    if (objc_opt_isKindOfClass())
    {
      v61 = [[SISchemaUUFRFatalError alloc] initWithDictionary:v60];
      [(SISchemaClientEvent *)v5 setUufrFatalError:v61];
    }

    v62 = [v4 objectForKeyedSubscript:@"dictationAlternativesViewed"];
    objc_opt_class();
    v209 = v62;
    if (objc_opt_isKindOfClass())
    {
      v63 = [[SISchemaDictationAlternativesViewed alloc] initWithDictionary:v62];
      [(SISchemaClientEvent *)v5 setDictationAlternativesViewed:v63];
    }

    v64 = [v4 objectForKeyedSubscript:@"intercomMessageRecorded"];
    objc_opt_class();
    v208 = v64;
    if (objc_opt_isKindOfClass())
    {
      v65 = [[SISchemaIntercomMessageRecorded alloc] initWithDictionary:v64];
      [(SISchemaClientEvent *)v5 setIntercomMessageRecorded:v65];
    }

    v66 = [v4 objectForKeyedSubscript:@"casinoRelationship"];
    objc_opt_class();
    v207 = v66;
    if (objc_opt_isKindOfClass())
    {
      v67 = [[SISchemaCasinoRelationship alloc] initWithDictionary:v66];
      [(SISchemaClientEvent *)v5 setCasinoRelationship:v67];
    }

    v68 = [v4 objectForKeyedSubscript:@"userViewRegionInteraction"];
    objc_opt_class();
    v206 = v68;
    if (objc_opt_isKindOfClass())
    {
      v69 = [[SISchemaUserViewRegionInteraction alloc] initWithDictionary:v68];
      [(SISchemaClientEvent *)v5 setUserViewRegionInteraction:v69];
    }

    v70 = [v4 objectForKeyedSubscript:@"deviceLockStateChanged"];
    objc_opt_class();
    v205 = v70;
    if (objc_opt_isKindOfClass())
    {
      v71 = [[SISchemaDeviceLockStateChanged alloc] initWithDictionary:v70];
      [(SISchemaClientEvent *)v5 setDeviceLockStateChanged:v71];
    }

    v72 = [v4 objectForKeyedSubscript:@"ueiRequestCategorization"];
    objc_opt_class();
    v204 = v72;
    if (objc_opt_isKindOfClass())
    {
      v73 = [[SISchemaUEIRequestCategorization alloc] initWithDictionary:v72];
      [(SISchemaClientEvent *)v5 setUeiRequestCategorization:v73];
    }

    v74 = [v4 objectForKeyedSubscript:@"audioStopRecordingStarted"];
    objc_opt_class();
    v203 = v74;
    if (objc_opt_isKindOfClass())
    {
      v75 = [[SISchemaAudioStopRecordingStarted alloc] initWithDictionary:v74];
      [(SISchemaClientEvent *)v5 setAudioStopRecordingStarted:v75];
    }

    v76 = [v4 objectForKeyedSubscript:@"ueiLaunchContext"];
    objc_opt_class();
    v202 = v76;
    if (objc_opt_isKindOfClass())
    {
      v77 = [[SISchemaUEILaunchContext alloc] initWithDictionary:v76];
      [(SISchemaClientEvent *)v5 setUeiLaunchContext:v77];
    }

    v78 = [v4 objectForKeyedSubscript:@"ueiUserSpeakingContext"];
    objc_opt_class();
    v201 = v78;
    if (objc_opt_isKindOfClass())
    {
      v79 = [[SISchemaUEIUserSpeakingContext alloc] initWithDictionary:v78];
      [(SISchemaClientEvent *)v5 setUeiUserSpeakingContext:v79];
    }

    v80 = [v4 objectForKeyedSubscript:@"ueiUUFRReady"];
    objc_opt_class();
    v200 = v80;
    if (objc_opt_isKindOfClass())
    {
      v81 = [[SISchemaUEIUUFRReady alloc] initWithDictionary:v80];
      [(SISchemaClientEvent *)v5 setUeiUUFRReady:v81];
    }

    v82 = [v4 objectForKeyedSubscript:@"ueiUIRenderingContext"];
    objc_opt_class();
    v199 = v82;
    if (objc_opt_isKindOfClass())
    {
      v83 = [[SISchemaUEIUIRenderingContext alloc] initWithDictionary:v82];
      [(SISchemaClientEvent *)v5 setUeiUIRenderingContext:v83];
    }

    v84 = [v4 objectForKeyedSubscript:@"pnrTextToSpeechRequestReceived"];
    objc_opt_class();
    v198 = v84;
    if (objc_opt_isKindOfClass())
    {
      v85 = [[SISchemaPNRTextToSpeechRequestReceived alloc] initWithDictionary:v84];
      [(SISchemaClientEvent *)v5 setPnrTextToSpeechRequestReceived:v85];
    }

    v86 = [v4 objectForKeyedSubscript:@"pnrSpeechRecognitionSourceContext"];
    objc_opt_class();
    v197 = v86;
    if (objc_opt_isKindOfClass())
    {
      v87 = [[SISchemaPNRSpeechRecognitionSourceContext alloc] initWithDictionary:v86];
      [(SISchemaClientEvent *)v5 setPnrSpeechRecognitionSourceContext:v87];
    }

    v88 = [v4 objectForKeyedSubscript:@"pnrFatalError"];
    objc_opt_class();
    v196 = v88;
    if (objc_opt_isKindOfClass())
    {
      v89 = [[SISchemaPNRFatalError alloc] initWithDictionary:v88];
      [(SISchemaClientEvent *)v5 setPnrFatalError:v89];
    }

    v90 = [v4 objectForKeyedSubscript:@"turnMTERequest"];
    objc_opt_class();
    v195 = v90;
    if (objc_opt_isKindOfClass())
    {
      v91 = [[SISchemaTurnMTERequest alloc] initWithDictionary:v90];
      [(SISchemaClientEvent *)v5 setTurnMTERequest:v91];
    }

    v92 = [v4 objectForKeyedSubscript:@"keyboardDismissed"];
    objc_opt_class();
    v194 = v92;
    if (objc_opt_isKindOfClass())
    {
      v93 = [[SISchemaKeyboardDismissed alloc] initWithDictionary:v92];
      [(SISchemaClientEvent *)v5 setKeyboardDismissed:v93];
    }

    v94 = [v4 objectForKeyedSubscript:@"engagedAccessoryContext"];
    objc_opt_class();
    v193 = v94;
    if (objc_opt_isKindOfClass())
    {
      v95 = [[SISchemaEngagedAccessoryContext alloc] initWithDictionary:v94];
      [(SISchemaClientEvent *)v5 setEngagedAccessoryContext:v95];
    }

    v96 = [v4 objectForKeyedSubscript:@"announceCarPlayBannerTapped"];
    objc_opt_class();
    v192 = v96;
    if (objc_opt_isKindOfClass())
    {
      v97 = [[SISchemaAnnounceCarPlayBannerTapped alloc] initWithDictionary:v96];
      [(SISchemaClientEvent *)v5 setAnnounceCarPlayBannerTapped:v97];
    }

    v98 = [v4 objectForKeyedSubscript:@"announceCarPlayGlyphSettingToggled"];
    objc_opt_class();
    v191 = v98;
    if (objc_opt_isKindOfClass())
    {
      v99 = [[SISchemaAnnounceCarPlayGlyphSettingToggled alloc] initWithDictionary:v98];
      [(SISchemaClientEvent *)v5 setAnnounceCarPlayGlyphSettingToggled:v99];
    }

    v100 = [v4 objectForKeyedSubscript:@"dictationContentEdited"];
    objc_opt_class();
    v190 = v100;
    if (objc_opt_isKindOfClass())
    {
      v101 = [[SISchemaDictationContentEdited alloc] initWithDictionary:v100];
      [(SISchemaClientEvent *)v5 setDictationContentEdited:v101];
    }

    v102 = [v4 objectForKeyedSubscript:@"uufrShownTier1"];
    objc_opt_class();
    v189 = v102;
    if (objc_opt_isKindOfClass())
    {
      v103 = [[SISchemaUUFRShownTier1 alloc] initWithDictionary:v102];
      [(SISchemaClientEvent *)v5 setUufrShownTier1:v103];
    }

    v104 = [v4 objectForKeyedSubscript:@"ueiDictationPartialResultUpdated"];
    objc_opt_class();
    v188 = v104;
    if (objc_opt_isKindOfClass())
    {
      v105 = [[SISchemaUEIDictationPartialResultUpdated alloc] initWithDictionary:v104];
      [(SISchemaClientEvent *)v5 setUeiDictationPartialResultUpdated:v105];
    }

    v106 = [v4 objectForKeyedSubscript:@"ueiDictationVoiceCommandExecuted"];
    objc_opt_class();
    v187 = v106;
    if (objc_opt_isKindOfClass())
    {
      v107 = [[SISchemaUEIDictationVoiceCommandExecuted alloc] initWithDictionary:v106];
      [(SISchemaClientEvent *)v5 setUeiDictationVoiceCommandExecuted:v107];
    }

    v108 = [v4 objectForKeyedSubscript:@"ueiDictationInputModeSwitchContext"];
    objc_opt_class();
    v186 = v108;
    if (objc_opt_isKindOfClass())
    {
      v109 = [[SISchemaUEIDictationInputModeSwitchContext alloc] initWithDictionary:v108];
      [(SISchemaClientEvent *)v5 setUeiDictationInputModeSwitchContext:v109];
    }

    v110 = [v4 objectForKeyedSubscript:@"ueiDictationToolTipDisplayContext"];
    objc_opt_class();
    v185 = v110;
    if (objc_opt_isKindOfClass())
    {
      v111 = [[SISchemaUEIDictationDiscoveryToolTipDisplayContext alloc] initWithDictionary:v110];
      [(SISchemaClientEvent *)v5 setUeiDictationToolTipDisplayContext:v111];
    }

    v112 = [v4 objectForKeyedSubscript:@"hostPlatformViewAppearContext"];
    objc_opt_class();
    v184 = v112;
    if (objc_opt_isKindOfClass())
    {
      v113 = [[SISchemaUEIHostingPlatformViewAppearContext alloc] initWithDictionary:v112];
      [(SISchemaClientEvent *)v5 setHostPlatformViewAppearContext:v113];
    }

    v114 = [v4 objectForKeyedSubscript:@"hostPlatformViewDisappearContext"];
    objc_opt_class();
    v183 = v114;
    if (objc_opt_isKindOfClass())
    {
      v115 = [[SISchemaUEIHostingPlatformViewDisappearContext alloc] initWithDictionary:v114];
      [(SISchemaClientEvent *)v5 setHostPlatformViewDisappearContext:v115];
    }

    v116 = [v4 objectForKeyedSubscript:@"ueiDictationTranscriptionTokenized"];
    objc_opt_class();
    v182 = v116;
    if (objc_opt_isKindOfClass())
    {
      v117 = [[SISchemaUEIDictationTranscriptionTokenized alloc] initWithDictionary:v116];
      [(SISchemaClientEvent *)v5 setUeiDictationTranscriptionTokenized:v117];
    }

    v118 = [v4 objectForKeyedSubscript:@"dictationAlternativesSelected"];
    objc_opt_class();
    v181 = v118;
    if (objc_opt_isKindOfClass())
    {
      v119 = [[SISchemaUEIDictationAlternativeConfusionPairsSelected alloc] initWithDictionary:v118];
      [(SISchemaClientEvent *)v5 setDictationAlternativesSelected:v119];
    }

    v120 = [v4 objectForKeyedSubscript:@"uufrSelected"];
    objc_opt_class();
    v180 = v120;
    if (objc_opt_isKindOfClass())
    {
      v121 = [[SISchemaUUFRSelected alloc] initWithDictionary:v120];
      [(SISchemaClientEvent *)v5 setUufrSelected:v121];
    }

    v122 = [v4 objectForKeyedSubscript:@"ueiDictationAlternativeTextPairsSelected"];
    objc_opt_class();
    v179 = v122;
    if (objc_opt_isKindOfClass())
    {
      v123 = [[SISchemaUEIDictationAlternativeTextPairsSelected alloc] initWithDictionary:v122];
      [(SISchemaClientEvent *)v5 setUeiDictationAlternativeTextPairsSelected:v123];
    }

    v124 = [v4 objectForKeyedSubscript:@"ueiUserBargeInDetected"];
    objc_opt_class();
    v178 = v124;
    if (objc_opt_isKindOfClass())
    {
      v125 = [[SISchemaUEIUserBargeInDetected alloc] initWithDictionary:v124];
      [(SISchemaClientEvent *)v5 setUeiUserBargeInDetected:v125];
    }

    v126 = [v4 objectForKeyedSubscript:@"ueiDictationEnablementPromptShown"];
    objc_opt_class();
    v177 = v126;
    if (objc_opt_isKindOfClass())
    {
      v127 = [[SISchemaUEIDictationEnablementPromptShown alloc] initWithDictionary:v126];
      [(SISchemaClientEvent *)v5 setUeiDictationEnablementPromptShown:v127];
    }

    v128 = [v4 objectForKeyedSubscript:@"ueiSiriCarCommandContext"];
    objc_opt_class();
    v176 = v128;
    if (objc_opt_isKindOfClass())
    {
      v129 = [[SISchemaUEISiriCarCommandContext alloc] initWithDictionary:v128];
      [(SISchemaClientEvent *)v5 setUeiSiriCarCommandContext:v129];
    }

    v130 = [v4 objectForKeyedSubscript:@"ueiVisionSnippetDismissed"];
    objc_opt_class();
    v175 = v130;
    if (objc_opt_isKindOfClass())
    {
      v131 = [[SISchemaUEIVisionSnippetDismissed alloc] initWithDictionary:v130];
      [(SISchemaClientEvent *)v5 setUeiVisionSnippetDismissed:v131];
    }

    v132 = [v4 objectForKeyedSubscript:@"ueiSiriWasUnavailable"];
    objc_opt_class();
    v174 = v132;
    if (objc_opt_isKindOfClass())
    {
      v133 = [[SISchemaUEISiriWasUnavailable alloc] initWithDictionary:v132];
      [(SISchemaClientEvent *)v5 setUeiSiriWasUnavailable:v133];
    }

    v134 = [v4 objectForKeyedSubscript:@"preferredAudioRouteChanged"];
    objc_opt_class();
    v173 = v134;
    if (objc_opt_isKindOfClass())
    {
      v135 = [[SISchemaBluetoothCarPreferredAudioRouteChanged alloc] initWithDictionary:v134];
      [(SISchemaClientEvent *)v5 setPreferredAudioRouteChanged:v135];
    }

    v136 = [v4 objectForKeyedSubscript:@"ueiDictationContentEditedTier1"];
    objc_opt_class();
    v172 = v136;
    if (objc_opt_isKindOfClass())
    {
      v137 = [[SISchemaUEIDictationContentEditedTier1 alloc] initWithDictionary:v136];
      [(SISchemaClientEvent *)v5 setUeiDictationContentEditedTier1:v137];
    }

    v138 = [v4 objectForKeyedSubscript:@"ueiDictationVoiceCommandUndoTapAction"];
    objc_opt_class();
    v171 = v138;
    if (objc_opt_isKindOfClass())
    {
      v139 = [[SISchemaUEIDictationVoiceCommandUndoTapAction alloc] initWithDictionary:v138];
      [(SISchemaClientEvent *)v5 setUeiDictationVoiceCommandUndoTapAction:v139];
    }

    v140 = [v4 objectForKeyedSubscript:@"ueiDictationVoiceCommandDisambiguationAction"];
    objc_opt_class();
    v170 = v140;
    if (objc_opt_isKindOfClass())
    {
      v141 = [[SISchemaUEIDictationVoiceCommandDisambiguationAction alloc] initWithDictionary:v140];
      [(SISchemaClientEvent *)v5 setUeiDictationVoiceCommandDisambiguationAction:v141];
    }

    v142 = [v4 objectForKeyedSubscript:@"ueiDictationVoiceCommandKeyboardAction"];
    objc_opt_class();
    v169 = v142;
    if (objc_opt_isKindOfClass())
    {
      v143 = [[SISchemaUEIDictationVoiceCommandKeyboardAction alloc] initWithDictionary:v142];
      [(SISchemaClientEvent *)v5 setUeiDictationVoiceCommandKeyboardAction:v143];
    }

    v164 = v14;
    v144 = [v4 objectForKeyedSubscript:@"ueiDictationEuclidAlternativesEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v145 = [[SISchemaUEIDictationEuclidAlternativesEvent alloc] initWithDictionary:v144];
      [(SISchemaClientEvent *)v5 setUeiDictationEuclidAlternativesEvent:v145];
    }

    v162 = v144;
    v163 = v16;
    v146 = [v4 objectForKeyedSubscript:@"ueiDictationEuclidAlternativesEventTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v147 = [[SISchemaUEIDictationEuclidAlternativesEventTier1 alloc] initWithDictionary:v146];
      [(SISchemaClientEvent *)v5 setUeiDictationEuclidAlternativesEventTier1:v147];
    }

    v168 = v6;
    v148 = [v4 objectForKeyedSubscript:@"ueiDictationEuclidSpeechAlternativesSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v149 = [[SISchemaUEIDictationEuclidSpeechAlternativesSelected alloc] initWithDictionary:v148];
      [(SISchemaClientEvent *)v5 setUeiDictationEuclidSpeechAlternativesSelected:v149];
    }

    v167 = v8;
    v150 = [v4 objectForKeyedSubscript:@"ueiDictationEuclidSpeechAlternativesSelectedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v151 = [[SISchemaUEIDictationEuclidSpeechAlternativesSelectedTier1 alloc] initWithDictionary:v150];
      [(SISchemaClientEvent *)v5 setUeiDictationEuclidSpeechAlternativesSelectedTier1:v151];
    }

    v166 = v10;
    v152 = [v4 objectForKeyedSubscript:@"typingRequestTrace"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v153 = [[SISchemaTypingRequestTrace alloc] initWithDictionary:v152];
      [(SISchemaClientEvent *)v5 setTypingRequestTrace:v153];
    }

    v165 = v12;
    v154 = [v4 objectForKeyedSubscript:@"ueiInvocationTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v155 = [[SISchemaUEIInvocationTier1 alloc] initWithDictionary:v154];
      [(SISchemaClientEvent *)v5 setUeiInvocationTier1:v155];
    }

    v156 = [v4 objectForKeyedSubscript:@"transcriptShown"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v157 = [[SISchemaUEITranscriptShown alloc] initWithDictionary:v156];
      [(SISchemaClientEvent *)v5 setTranscriptShown:v157];
    }

    v158 = [v4 objectForKeyedSubscript:@"transcriptTapped"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v159 = [[SISchemaUEITranscriptTapped alloc] initWithDictionary:v158];
      [(SISchemaClientEvent *)v5 setTranscriptTapped:v159];
    }

    v160 = v5;
  }

  return v5;
}

- (SISchemaClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaClientEvent *)self dictionaryRepresentation];
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
  if (self->_announceCarPlayBannerTapped)
  {
    v4 = [(SISchemaClientEvent *)self announceCarPlayBannerTapped];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"announceCarPlayBannerTapped"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"announceCarPlayBannerTapped"];
    }
  }

  if (self->_announceCarPlayGlyphSettingToggled)
  {
    v7 = [(SISchemaClientEvent *)self announceCarPlayGlyphSettingToggled];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"announceCarPlayGlyphSettingToggled"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"announceCarPlayGlyphSettingToggled"];
    }
  }

  if (self->_audioFirstBufferRecorded)
  {
    v10 = [(SISchemaClientEvent *)self audioFirstBufferRecorded];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"audioFirstBufferRecorded"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"audioFirstBufferRecorded"];
    }
  }

  if (self->_audioStopRecording)
  {
    v13 = [(SISchemaClientEvent *)self audioStopRecording];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"audioStopRecording"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"audioStopRecording"];
    }
  }

  if (self->_audioStopRecordingStarted)
  {
    v16 = [(SISchemaClientEvent *)self audioStopRecordingStarted];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"audioStopRecordingStarted"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"audioStopRecordingStarted"];
    }
  }

  if (self->_carPlayHeadUnitContext)
  {
    v19 = [(SISchemaClientEvent *)self carPlayHeadUnitContext];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"carPlayHeadUnitContext"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"carPlayHeadUnitContext"];
    }
  }

  if (self->_casinoRelationship)
  {
    v22 = [(SISchemaClientEvent *)self casinoRelationship];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"casinoRelationship"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"casinoRelationship"];
    }
  }

  if (self->_clientConversationTrace)
  {
    v25 = [(SISchemaClientEvent *)self clientConversationTrace];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"clientConversationTrace"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"clientConversationTrace"];
    }
  }

  if (self->_clientFlow)
  {
    v28 = [(SISchemaClientEvent *)self clientFlow];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"clientFlow"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"clientFlow"];
    }
  }

  if (self->_deviceDynamicContext)
  {
    v31 = [(SISchemaClientEvent *)self deviceDynamicContext];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"deviceDynamicContext"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"deviceDynamicContext"];
    }
  }

  if (self->_deviceFixedContext)
  {
    v34 = [(SISchemaClientEvent *)self deviceFixedContext];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"deviceFixedContext"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"deviceFixedContext"];
    }
  }

  if (self->_deviceLockStateChanged)
  {
    v37 = [(SISchemaClientEvent *)self deviceLockStateChanged];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"deviceLockStateChanged"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"deviceLockStateChanged"];
    }
  }

  if (self->_dialogOutput)
  {
    v40 = [(SISchemaClientEvent *)self dialogOutput];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"dialogOutput"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"dialogOutput"];
    }
  }

  if (self->_dictationAlternativeSelected)
  {
    v43 = [(SISchemaClientEvent *)self dictationAlternativeSelected];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"dictationAlternativeSelected"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"dictationAlternativeSelected"];
    }
  }

  if (self->_dictationAlternativesSelected)
  {
    v46 = [(SISchemaClientEvent *)self dictationAlternativesSelected];
    v47 = [v46 dictionaryRepresentation];
    if (v47)
    {
      [v3 setObject:v47 forKeyedSubscript:@"dictationAlternativesSelected"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v48 forKeyedSubscript:@"dictationAlternativesSelected"];
    }
  }

  if (self->_dictationAlternativesViewed)
  {
    v49 = [(SISchemaClientEvent *)self dictationAlternativesViewed];
    v50 = [v49 dictionaryRepresentation];
    if (v50)
    {
      [v3 setObject:v50 forKeyedSubscript:@"dictationAlternativesViewed"];
    }

    else
    {
      v51 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v51 forKeyedSubscript:@"dictationAlternativesViewed"];
    }
  }

  if (self->_dictationContentEdited)
  {
    v52 = [(SISchemaClientEvent *)self dictationContentEdited];
    v53 = [v52 dictionaryRepresentation];
    if (v53)
    {
      [v3 setObject:v53 forKeyedSubscript:@"dictationContentEdited"];
    }

    else
    {
      v54 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v54 forKeyedSubscript:@"dictationContentEdited"];
    }
  }

  if (self->_dictationContext)
  {
    v55 = [(SISchemaClientEvent *)self dictationContext];
    v56 = [v55 dictionaryRepresentation];
    if (v56)
    {
      [v3 setObject:v56 forKeyedSubscript:@"dictationContext"];
    }

    else
    {
      v57 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v57 forKeyedSubscript:@"dictationContext"];
    }
  }

  if (self->_dictationEndPointCancel)
  {
    v58 = [(SISchemaClientEvent *)self dictationEndPointCancel];
    v59 = [v58 dictionaryRepresentation];
    if (v59)
    {
      [v3 setObject:v59 forKeyedSubscript:@"dictationEndPointCancel"];
    }

    else
    {
      v60 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v60 forKeyedSubscript:@"dictationEndPointCancel"];
    }
  }

  if (self->_dictationEndPointStop)
  {
    v61 = [(SISchemaClientEvent *)self dictationEndPointStop];
    v62 = [v61 dictionaryRepresentation];
    if (v62)
    {
      [v3 setObject:v62 forKeyedSubscript:@"dictationEndPointStop"];
    }

    else
    {
      v63 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v63 forKeyedSubscript:@"dictationEndPointStop"];
    }
  }

  if (self->_dictationTranscriptionMetadata)
  {
    v64 = [(SISchemaClientEvent *)self dictationTranscriptionMetadata];
    v65 = [v64 dictionaryRepresentation];
    if (v65)
    {
      [v3 setObject:v65 forKeyedSubscript:@"dictationTranscriptionMetadata"];
    }

    else
    {
      v66 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v66 forKeyedSubscript:@"dictationTranscriptionMetadata"];
    }
  }

  if (self->_engagedAccessoryContext)
  {
    v67 = [(SISchemaClientEvent *)self engagedAccessoryContext];
    v68 = [v67 dictionaryRepresentation];
    if (v68)
    {
      [v3 setObject:v68 forKeyedSubscript:@"engagedAccessoryContext"];
    }

    else
    {
      v69 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v69 forKeyedSubscript:@"engagedAccessoryContext"];
    }
  }

  if (self->_eventMetadata)
  {
    v70 = [(SISchemaClientEvent *)self eventMetadata];
    v71 = [v70 dictionaryRepresentation];
    if (v71)
    {
      [v3 setObject:v71 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v72 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v72 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_hostPlatformViewAppearContext)
  {
    v73 = [(SISchemaClientEvent *)self hostPlatformViewAppearContext];
    v74 = [v73 dictionaryRepresentation];
    if (v74)
    {
      [v3 setObject:v74 forKeyedSubscript:@"hostPlatformViewAppearContext"];
    }

    else
    {
      v75 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v75 forKeyedSubscript:@"hostPlatformViewAppearContext"];
    }
  }

  if (self->_hostPlatformViewDisappearContext)
  {
    v76 = [(SISchemaClientEvent *)self hostPlatformViewDisappearContext];
    v77 = [v76 dictionaryRepresentation];
    if (v77)
    {
      [v3 setObject:v77 forKeyedSubscript:@"hostPlatformViewDisappearContext"];
    }

    else
    {
      v78 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v78 forKeyedSubscript:@"hostPlatformViewDisappearContext"];
    }
  }

  if (self->_intercomMessageRecorded)
  {
    v79 = [(SISchemaClientEvent *)self intercomMessageRecorded];
    v80 = [v79 dictionaryRepresentation];
    if (v80)
    {
      [v3 setObject:v80 forKeyedSubscript:@"intercomMessageRecorded"];
    }

    else
    {
      v81 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v81 forKeyedSubscript:@"intercomMessageRecorded"];
    }
  }

  if (self->_invocation)
  {
    v82 = [(SISchemaClientEvent *)self invocation];
    v83 = [v82 dictionaryRepresentation];
    if (v83)
    {
      [v3 setObject:v83 forKeyedSubscript:@"invocation"];
    }

    else
    {
      v84 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v84 forKeyedSubscript:@"invocation"];
    }
  }

  if (self->_keyboardDismissed)
  {
    v85 = [(SISchemaClientEvent *)self keyboardDismissed];
    v86 = [v85 dictionaryRepresentation];
    if (v86)
    {
      [v3 setObject:v86 forKeyedSubscript:@"keyboardDismissed"];
    }

    else
    {
      v87 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v87 forKeyedSubscript:@"keyboardDismissed"];
    }
  }

  if (self->_location)
  {
    v88 = [(SISchemaClientEvent *)self location];
    v89 = [v88 dictionaryRepresentation];
    if (v89)
    {
      [v3 setObject:v89 forKeyedSubscript:@"location"];
    }

    else
    {
      v90 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v90 forKeyedSubscript:@"location"];
    }
  }

  if (self->_pnrFatalError)
  {
    v91 = [(SISchemaClientEvent *)self pnrFatalError];
    v92 = [v91 dictionaryRepresentation];
    if (v92)
    {
      [v3 setObject:v92 forKeyedSubscript:@"pnrFatalError"];
    }

    else
    {
      v93 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v93 forKeyedSubscript:@"pnrFatalError"];
    }
  }

  if (self->_pnrSpeechRecognitionSourceContext)
  {
    v94 = [(SISchemaClientEvent *)self pnrSpeechRecognitionSourceContext];
    v95 = [v94 dictionaryRepresentation];
    if (v95)
    {
      [v3 setObject:v95 forKeyedSubscript:@"pnrSpeechRecognitionSourceContext"];
    }

    else
    {
      v96 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v96 forKeyedSubscript:@"pnrSpeechRecognitionSourceContext"];
    }
  }

  if (self->_pnrTextToSpeechRequestReceived)
  {
    v97 = [(SISchemaClientEvent *)self pnrTextToSpeechRequestReceived];
    v98 = [v97 dictionaryRepresentation];
    if (v98)
    {
      [v3 setObject:v98 forKeyedSubscript:@"pnrTextToSpeechRequestReceived"];
    }

    else
    {
      v99 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v99 forKeyedSubscript:@"pnrTextToSpeechRequestReceived"];
    }
  }

  if (self->_preferredAudioRouteChanged)
  {
    v100 = [(SISchemaClientEvent *)self preferredAudioRouteChanged];
    v101 = [v100 dictionaryRepresentation];
    if (v101)
    {
      [v3 setObject:v101 forKeyedSubscript:@"preferredAudioRouteChanged"];
    }

    else
    {
      v102 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v102 forKeyedSubscript:@"preferredAudioRouteChanged"];
    }
  }

  if (self->_punchOut)
  {
    v103 = [(SISchemaClientEvent *)self punchOut];
    v104 = [v103 dictionaryRepresentation];
    if (v104)
    {
      [v3 setObject:v104 forKeyedSubscript:@"punchOut"];
    }

    else
    {
      v105 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v105 forKeyedSubscript:@"punchOut"];
    }
  }

  if (self->_siriCue)
  {
    v106 = [(SISchemaClientEvent *)self siriCue];
    v107 = [v106 dictionaryRepresentation];
    if (v107)
    {
      [v3 setObject:v107 forKeyedSubscript:@"siriCue"];
    }

    else
    {
      v108 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v108 forKeyedSubscript:@"siriCue"];
    }
  }

  if (self->_speechTranscription)
  {
    v109 = [(SISchemaClientEvent *)self speechTranscription];
    v110 = [v109 dictionaryRepresentation];
    if (v110)
    {
      [v3 setObject:v110 forKeyedSubscript:@"speechTranscription"];
    }

    else
    {
      v111 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v111 forKeyedSubscript:@"speechTranscription"];
    }
  }

  if (self->_textToSpeechBegin)
  {
    v112 = [(SISchemaClientEvent *)self textToSpeechBegin];
    v113 = [v112 dictionaryRepresentation];
    if (v113)
    {
      [v3 setObject:v113 forKeyedSubscript:@"textToSpeechBegin"];
    }

    else
    {
      v114 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v114 forKeyedSubscript:@"textToSpeechBegin"];
    }
  }

  if (self->_textToSpeechEnd)
  {
    v115 = [(SISchemaClientEvent *)self textToSpeechEnd];
    v116 = [v115 dictionaryRepresentation];
    if (v116)
    {
      [v3 setObject:v116 forKeyedSubscript:@"textToSpeechEnd"];
    }

    else
    {
      v117 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v117 forKeyedSubscript:@"textToSpeechEnd"];
    }
  }

  if (self->_transcriptShown)
  {
    v118 = [(SISchemaClientEvent *)self transcriptShown];
    v119 = [v118 dictionaryRepresentation];
    if (v119)
    {
      [v3 setObject:v119 forKeyedSubscript:@"transcriptShown"];
    }

    else
    {
      v120 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v120 forKeyedSubscript:@"transcriptShown"];
    }
  }

  if (self->_transcriptTapped)
  {
    v121 = [(SISchemaClientEvent *)self transcriptTapped];
    v122 = [v121 dictionaryRepresentation];
    if (v122)
    {
      [v3 setObject:v122 forKeyedSubscript:@"transcriptTapped"];
    }

    else
    {
      v123 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v123 forKeyedSubscript:@"transcriptTapped"];
    }
  }

  if (self->_transportMetadata)
  {
    v124 = [(SISchemaClientEvent *)self transportMetadata];
    v125 = [v124 dictionaryRepresentation];
    if (v125)
    {
      [v3 setObject:v125 forKeyedSubscript:@"transportMetadata"];
    }

    else
    {
      v126 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v126 forKeyedSubscript:@"transportMetadata"];
    }
  }

  if (self->_turnMTERequest)
  {
    v127 = [(SISchemaClientEvent *)self turnMTERequest];
    v128 = [v127 dictionaryRepresentation];
    if (v128)
    {
      [v3 setObject:v128 forKeyedSubscript:@"turnMTERequest"];
    }

    else
    {
      v129 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v129 forKeyedSubscript:@"turnMTERequest"];
    }
  }

  if (self->_typingRequestTrace)
  {
    v130 = [(SISchemaClientEvent *)self typingRequestTrace];
    v131 = [v130 dictionaryRepresentation];
    if (v131)
    {
      [v3 setObject:v131 forKeyedSubscript:@"typingRequestTrace"];
    }

    else
    {
      v132 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v132 forKeyedSubscript:@"typingRequestTrace"];
    }
  }

  if (self->_ueiDictationAlternativeTextPairsSelected)
  {
    v133 = [(SISchemaClientEvent *)self ueiDictationAlternativeTextPairsSelected];
    v134 = [v133 dictionaryRepresentation];
    if (v134)
    {
      [v3 setObject:v134 forKeyedSubscript:@"ueiDictationAlternativeTextPairsSelected"];
    }

    else
    {
      v135 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v135 forKeyedSubscript:@"ueiDictationAlternativeTextPairsSelected"];
    }
  }

  if (self->_ueiDictationContentEditedTier1)
  {
    v136 = [(SISchemaClientEvent *)self ueiDictationContentEditedTier1];
    v137 = [v136 dictionaryRepresentation];
    if (v137)
    {
      [v3 setObject:v137 forKeyedSubscript:@"ueiDictationContentEditedTier1"];
    }

    else
    {
      v138 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v138 forKeyedSubscript:@"ueiDictationContentEditedTier1"];
    }
  }

  if (self->_ueiDictationEnablementPromptShown)
  {
    v139 = [(SISchemaClientEvent *)self ueiDictationEnablementPromptShown];
    v140 = [v139 dictionaryRepresentation];
    if (v140)
    {
      [v3 setObject:v140 forKeyedSubscript:@"ueiDictationEnablementPromptShown"];
    }

    else
    {
      v141 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v141 forKeyedSubscript:@"ueiDictationEnablementPromptShown"];
    }
  }

  if (self->_ueiDictationEuclidAlternativesEvent)
  {
    v142 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEvent];
    v143 = [v142 dictionaryRepresentation];
    if (v143)
    {
      [v3 setObject:v143 forKeyedSubscript:@"ueiDictationEuclidAlternativesEvent"];
    }

    else
    {
      v144 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v144 forKeyedSubscript:@"ueiDictationEuclidAlternativesEvent"];
    }
  }

  if (self->_ueiDictationEuclidAlternativesEventTier1)
  {
    v145 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEventTier1];
    v146 = [v145 dictionaryRepresentation];
    if (v146)
    {
      [v3 setObject:v146 forKeyedSubscript:@"ueiDictationEuclidAlternativesEventTier1"];
    }

    else
    {
      v147 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v147 forKeyedSubscript:@"ueiDictationEuclidAlternativesEventTier1"];
    }
  }

  if (self->_ueiDictationEuclidSpeechAlternativesSelected)
  {
    v148 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelected];
    v149 = [v148 dictionaryRepresentation];
    if (v149)
    {
      [v3 setObject:v149 forKeyedSubscript:@"ueiDictationEuclidSpeechAlternativesSelected"];
    }

    else
    {
      v150 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v150 forKeyedSubscript:@"ueiDictationEuclidSpeechAlternativesSelected"];
    }
  }

  if (self->_ueiDictationEuclidSpeechAlternativesSelectedTier1)
  {
    v151 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelectedTier1];
    v152 = [v151 dictionaryRepresentation];
    if (v152)
    {
      [v3 setObject:v152 forKeyedSubscript:@"ueiDictationEuclidSpeechAlternativesSelectedTier1"];
    }

    else
    {
      v153 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v153 forKeyedSubscript:@"ueiDictationEuclidSpeechAlternativesSelectedTier1"];
    }
  }

  if (self->_ueiDictationInputModeSwitchContext)
  {
    v154 = [(SISchemaClientEvent *)self ueiDictationInputModeSwitchContext];
    v155 = [v154 dictionaryRepresentation];
    if (v155)
    {
      [v3 setObject:v155 forKeyedSubscript:@"ueiDictationInputModeSwitchContext"];
    }

    else
    {
      v156 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v156 forKeyedSubscript:@"ueiDictationInputModeSwitchContext"];
    }
  }

  if (self->_ueiDictationPartialResultUpdated)
  {
    v157 = [(SISchemaClientEvent *)self ueiDictationPartialResultUpdated];
    v158 = [v157 dictionaryRepresentation];
    if (v158)
    {
      [v3 setObject:v158 forKeyedSubscript:@"ueiDictationPartialResultUpdated"];
    }

    else
    {
      v159 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v159 forKeyedSubscript:@"ueiDictationPartialResultUpdated"];
    }
  }

  if (self->_ueiDictationToolTipDisplayContext)
  {
    v160 = [(SISchemaClientEvent *)self ueiDictationToolTipDisplayContext];
    v161 = [v160 dictionaryRepresentation];
    if (v161)
    {
      [v3 setObject:v161 forKeyedSubscript:@"ueiDictationToolTipDisplayContext"];
    }

    else
    {
      v162 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v162 forKeyedSubscript:@"ueiDictationToolTipDisplayContext"];
    }
  }

  if (self->_ueiDictationTranscriptionTokenized)
  {
    v163 = [(SISchemaClientEvent *)self ueiDictationTranscriptionTokenized];
    v164 = [v163 dictionaryRepresentation];
    if (v164)
    {
      [v3 setObject:v164 forKeyedSubscript:@"ueiDictationTranscriptionTokenized"];
    }

    else
    {
      v165 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v165 forKeyedSubscript:@"ueiDictationTranscriptionTokenized"];
    }
  }

  if (self->_ueiDictationVoiceCommandDisambiguationAction)
  {
    v166 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandDisambiguationAction];
    v167 = [v166 dictionaryRepresentation];
    if (v167)
    {
      [v3 setObject:v167 forKeyedSubscript:@"ueiDictationVoiceCommandDisambiguationAction"];
    }

    else
    {
      v168 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v168 forKeyedSubscript:@"ueiDictationVoiceCommandDisambiguationAction"];
    }
  }

  if (self->_ueiDictationVoiceCommandExecuted)
  {
    v169 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandExecuted];
    v170 = [v169 dictionaryRepresentation];
    if (v170)
    {
      [v3 setObject:v170 forKeyedSubscript:@"ueiDictationVoiceCommandExecuted"];
    }

    else
    {
      v171 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v171 forKeyedSubscript:@"ueiDictationVoiceCommandExecuted"];
    }
  }

  if (self->_ueiDictationVoiceCommandKeyboardAction)
  {
    v172 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandKeyboardAction];
    v173 = [v172 dictionaryRepresentation];
    if (v173)
    {
      [v3 setObject:v173 forKeyedSubscript:@"ueiDictationVoiceCommandKeyboardAction"];
    }

    else
    {
      v174 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v174 forKeyedSubscript:@"ueiDictationVoiceCommandKeyboardAction"];
    }
  }

  if (self->_ueiDictationVoiceCommandUndoTapAction)
  {
    v175 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandUndoTapAction];
    v176 = [v175 dictionaryRepresentation];
    if (v176)
    {
      [v3 setObject:v176 forKeyedSubscript:@"ueiDictationVoiceCommandUndoTapAction"];
    }

    else
    {
      v177 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v177 forKeyedSubscript:@"ueiDictationVoiceCommandUndoTapAction"];
    }
  }

  if (self->_ueiInvocationTier1)
  {
    v178 = [(SISchemaClientEvent *)self ueiInvocationTier1];
    v179 = [v178 dictionaryRepresentation];
    if (v179)
    {
      [v3 setObject:v179 forKeyedSubscript:@"ueiInvocationTier1"];
    }

    else
    {
      v180 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v180 forKeyedSubscript:@"ueiInvocationTier1"];
    }
  }

  if (self->_ueiLaunchContext)
  {
    v181 = [(SISchemaClientEvent *)self ueiLaunchContext];
    v182 = [v181 dictionaryRepresentation];
    if (v182)
    {
      [v3 setObject:v182 forKeyedSubscript:@"ueiLaunchContext"];
    }

    else
    {
      v183 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v183 forKeyedSubscript:@"ueiLaunchContext"];
    }
  }

  if (self->_ueiRequestCategorization)
  {
    v184 = [(SISchemaClientEvent *)self ueiRequestCategorization];
    v185 = [v184 dictionaryRepresentation];
    if (v185)
    {
      [v3 setObject:v185 forKeyedSubscript:@"ueiRequestCategorization"];
    }

    else
    {
      v186 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v186 forKeyedSubscript:@"ueiRequestCategorization"];
    }
  }

  if (self->_ueiSiriCarCommandContext)
  {
    v187 = [(SISchemaClientEvent *)self ueiSiriCarCommandContext];
    v188 = [v187 dictionaryRepresentation];
    if (v188)
    {
      [v3 setObject:v188 forKeyedSubscript:@"ueiSiriCarCommandContext"];
    }

    else
    {
      v189 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v189 forKeyedSubscript:@"ueiSiriCarCommandContext"];
    }
  }

  if (self->_ueiSiriWasUnavailable)
  {
    v190 = [(SISchemaClientEvent *)self ueiSiriWasUnavailable];
    v191 = [v190 dictionaryRepresentation];
    if (v191)
    {
      [v3 setObject:v191 forKeyedSubscript:@"ueiSiriWasUnavailable"];
    }

    else
    {
      v192 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v192 forKeyedSubscript:@"ueiSiriWasUnavailable"];
    }
  }

  if (self->_ueiUIRenderingContext)
  {
    v193 = [(SISchemaClientEvent *)self ueiUIRenderingContext];
    v194 = [v193 dictionaryRepresentation];
    if (v194)
    {
      [v3 setObject:v194 forKeyedSubscript:@"ueiUIRenderingContext"];
    }

    else
    {
      v195 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v195 forKeyedSubscript:@"ueiUIRenderingContext"];
    }
  }

  if (self->_ueiUUFRReady)
  {
    v196 = [(SISchemaClientEvent *)self ueiUUFRReady];
    v197 = [v196 dictionaryRepresentation];
    if (v197)
    {
      [v3 setObject:v197 forKeyedSubscript:@"ueiUUFRReady"];
    }

    else
    {
      v198 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v198 forKeyedSubscript:@"ueiUUFRReady"];
    }
  }

  if (self->_ueiUserBargeInDetected)
  {
    v199 = [(SISchemaClientEvent *)self ueiUserBargeInDetected];
    v200 = [v199 dictionaryRepresentation];
    if (v200)
    {
      [v3 setObject:v200 forKeyedSubscript:@"ueiUserBargeInDetected"];
    }

    else
    {
      v201 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v201 forKeyedSubscript:@"ueiUserBargeInDetected"];
    }
  }

  if (self->_ueiUserSpeakingContext)
  {
    v202 = [(SISchemaClientEvent *)self ueiUserSpeakingContext];
    v203 = [v202 dictionaryRepresentation];
    if (v203)
    {
      [v3 setObject:v203 forKeyedSubscript:@"ueiUserSpeakingContext"];
    }

    else
    {
      v204 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v204 forKeyedSubscript:@"ueiUserSpeakingContext"];
    }
  }

  if (self->_ueiVisionSnippetDismissed)
  {
    v205 = [(SISchemaClientEvent *)self ueiVisionSnippetDismissed];
    v206 = [v205 dictionaryRepresentation];
    if (v206)
    {
      [v3 setObject:v206 forKeyedSubscript:@"ueiVisionSnippetDismissed"];
    }

    else
    {
      v207 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v207 forKeyedSubscript:@"ueiVisionSnippetDismissed"];
    }
  }

  if (self->_uiStateTransition)
  {
    v208 = [(SISchemaClientEvent *)self uiStateTransition];
    v209 = [v208 dictionaryRepresentation];
    if (v209)
    {
      [v3 setObject:v209 forKeyedSubscript:@"uiStateTransition"];
    }

    else
    {
      v210 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v210 forKeyedSubscript:@"uiStateTransition"];
    }
  }

  if (self->_userViewRegionInteraction)
  {
    v211 = [(SISchemaClientEvent *)self userViewRegionInteraction];
    v212 = [v211 dictionaryRepresentation];
    if (v212)
    {
      [v3 setObject:v212 forKeyedSubscript:@"userViewRegionInteraction"];
    }

    else
    {
      v213 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v213 forKeyedSubscript:@"userViewRegionInteraction"];
    }
  }

  if (self->_uufrCompletion)
  {
    v214 = [(SISchemaClientEvent *)self uufrCompletion];
    v215 = [v214 dictionaryRepresentation];
    if (v215)
    {
      [v3 setObject:v215 forKeyedSubscript:@"uufrCompletion"];
    }

    else
    {
      v216 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v216 forKeyedSubscript:@"uufrCompletion"];
    }
  }

  if (self->_uufrFatalError)
  {
    v217 = [(SISchemaClientEvent *)self uufrFatalError];
    v218 = [v217 dictionaryRepresentation];
    if (v218)
    {
      [v3 setObject:v218 forKeyedSubscript:@"uufrFatalError"];
    }

    else
    {
      v219 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v219 forKeyedSubscript:@"uufrFatalError"];
    }
  }

  if (self->_uufrPresented)
  {
    v220 = [(SISchemaClientEvent *)self uufrPresented];
    v221 = [v220 dictionaryRepresentation];
    if (v221)
    {
      [v3 setObject:v221 forKeyedSubscript:@"uufrPresented"];
    }

    else
    {
      v222 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v222 forKeyedSubscript:@"uufrPresented"];
    }
  }

  if (self->_uufrSaid)
  {
    v223 = [(SISchemaClientEvent *)self uufrSaid];
    v224 = [v223 dictionaryRepresentation];
    if (v224)
    {
      [v3 setObject:v224 forKeyedSubscript:@"uufrSaid"];
    }

    else
    {
      v225 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v225 forKeyedSubscript:@"uufrSaid"];
    }
  }

  if (self->_uufrSelected)
  {
    v226 = [(SISchemaClientEvent *)self uufrSelected];
    v227 = [v226 dictionaryRepresentation];
    if (v227)
    {
      [v3 setObject:v227 forKeyedSubscript:@"uufrSelected"];
    }

    else
    {
      v228 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v228 forKeyedSubscript:@"uufrSelected"];
    }
  }

  if (self->_uufrShown)
  {
    v229 = [(SISchemaClientEvent *)self uufrShown];
    v230 = [v229 dictionaryRepresentation];
    if (v230)
    {
      [v3 setObject:v230 forKeyedSubscript:@"uufrShown"];
    }

    else
    {
      v231 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v231 forKeyedSubscript:@"uufrShown"];
    }
  }

  if (self->_uufrShownTier1)
  {
    v232 = [(SISchemaClientEvent *)self uufrShownTier1];
    v233 = [v232 dictionaryRepresentation];
    if (v233)
    {
      [v3 setObject:v233 forKeyedSubscript:@"uufrShownTier1"];
    }

    else
    {
      v234 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v234 forKeyedSubscript:@"uufrShownTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v235 = v3;

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(SISchemaClientTransportEventMetadata *)self->_transportMetadata hash]^ v3;
  v5 = [(SISchemaAudioFirstBufferRecorded *)self->_audioFirstBufferRecorded hash];
  v6 = v4 ^ v5 ^ [(SISchemaAudioStopRecording *)self->_audioStopRecording hash];
  v7 = [(SISchemaConversationTrace *)self->_clientConversationTrace hash];
  v8 = v7 ^ [(SISchemaDeviceDynamicContext *)self->_deviceDynamicContext hash];
  v9 = v6 ^ v8 ^ [(SISchemaDeviceFixedContext *)self->_deviceFixedContext hash];
  v10 = [(SISchemaDictationContext *)self->_dictationContext hash];
  v11 = v10 ^ [(SISchemaInvocation *)self->_invocation hash];
  v12 = v11 ^ [(SISchemaLocation *)self->_location hash];
  v13 = v9 ^ v12 ^ [(SISchemaPunchOut *)self->_punchOut hash];
  v14 = [(SISchemaSiriCue *)self->_siriCue hash];
  v15 = v14 ^ [(SISchemaUUFRPresented *)self->_uufrPresented hash];
  v16 = v15 ^ [(SISchemaSpeechTranscription *)self->_speechTranscription hash];
  v17 = v16 ^ [(SISchemaTextToSpeechBegin *)self->_textToSpeechBegin hash];
  v18 = v13 ^ v17 ^ [(SISchemaTextToSpeechEnd *)self->_textToSpeechEnd hash];
  v19 = [(SISchemaUIStateTransition *)self->_uiStateTransition hash];
  v20 = v19 ^ [(SISchemaClientFlow *)self->_clientFlow hash];
  v21 = v20 ^ [(SISchemaDialogOutput *)self->_dialogOutput hash];
  v22 = v21 ^ [(SISchemaDictationEndPointStop *)self->_dictationEndPointStop hash];
  v23 = v22 ^ [(SISchemaDictationEndPointCancel *)self->_dictationEndPointCancel hash];
  v24 = v18 ^ v23 ^ [(SISchemaDictationAlternativeSelected *)self->_dictationAlternativeSelected hash];
  v25 = [(SISchemaDictationTranscriptionMetadata *)self->_dictationTranscriptionMetadata hash];
  v26 = v25 ^ [(SISchemaCarPlayHeadUnitContext *)self->_carPlayHeadUnitContext hash];
  v27 = v26 ^ [(SISchemaUUFRCompletion *)self->_uufrCompletion hash];
  v28 = v27 ^ [(SISchemaUUFRShown *)self->_uufrShown hash];
  v29 = v28 ^ [(SISchemaUUFRSaid *)self->_uufrSaid hash];
  v30 = v29 ^ [(SISchemaUUFRFatalError *)self->_uufrFatalError hash];
  v31 = v24 ^ v30 ^ [(SISchemaDictationAlternativesViewed *)self->_dictationAlternativesViewed hash];
  v32 = [(SISchemaIntercomMessageRecorded *)self->_intercomMessageRecorded hash];
  v33 = v32 ^ [(SISchemaCasinoRelationship *)self->_casinoRelationship hash];
  v34 = v33 ^ [(SISchemaUserViewRegionInteraction *)self->_userViewRegionInteraction hash];
  v35 = v34 ^ [(SISchemaDeviceLockStateChanged *)self->_deviceLockStateChanged hash];
  v36 = v35 ^ [(SISchemaUEIRequestCategorization *)self->_ueiRequestCategorization hash];
  v37 = v36 ^ [(SISchemaAudioStopRecordingStarted *)self->_audioStopRecordingStarted hash];
  v38 = v37 ^ [(SISchemaUEILaunchContext *)self->_ueiLaunchContext hash];
  v39 = v31 ^ v38 ^ [(SISchemaUEIUserSpeakingContext *)self->_ueiUserSpeakingContext hash];
  v40 = [(SISchemaUEIUUFRReady *)self->_ueiUUFRReady hash];
  v41 = v40 ^ [(SISchemaUEIUIRenderingContext *)self->_ueiUIRenderingContext hash];
  v42 = v41 ^ [(SISchemaPNRTextToSpeechRequestReceived *)self->_pnrTextToSpeechRequestReceived hash];
  v43 = v42 ^ [(SISchemaPNRSpeechRecognitionSourceContext *)self->_pnrSpeechRecognitionSourceContext hash];
  v44 = v43 ^ [(SISchemaPNRFatalError *)self->_pnrFatalError hash];
  v45 = v44 ^ [(SISchemaTurnMTERequest *)self->_turnMTERequest hash];
  v46 = v45 ^ [(SISchemaKeyboardDismissed *)self->_keyboardDismissed hash];
  v47 = v46 ^ [(SISchemaEngagedAccessoryContext *)self->_engagedAccessoryContext hash];
  v48 = v39 ^ v47 ^ [(SISchemaAnnounceCarPlayBannerTapped *)self->_announceCarPlayBannerTapped hash];
  v49 = [(SISchemaAnnounceCarPlayGlyphSettingToggled *)self->_announceCarPlayGlyphSettingToggled hash];
  v50 = v49 ^ [(SISchemaDictationContentEdited *)self->_dictationContentEdited hash];
  v51 = v50 ^ [(SISchemaUUFRShownTier1 *)self->_uufrShownTier1 hash];
  v52 = v51 ^ [(SISchemaUEIDictationPartialResultUpdated *)self->_ueiDictationPartialResultUpdated hash];
  v53 = v52 ^ [(SISchemaUEIDictationVoiceCommandExecuted *)self->_ueiDictationVoiceCommandExecuted hash];
  v54 = v53 ^ [(SISchemaUEIDictationInputModeSwitchContext *)self->_ueiDictationInputModeSwitchContext hash];
  v55 = v54 ^ [(SISchemaUEIDictationDiscoveryToolTipDisplayContext *)self->_ueiDictationToolTipDisplayContext hash];
  v56 = v55 ^ [(SISchemaUEIHostingPlatformViewAppearContext *)self->_hostPlatformViewAppearContext hash];
  v57 = v56 ^ [(SISchemaUEIHostingPlatformViewDisappearContext *)self->_hostPlatformViewDisappearContext hash];
  v58 = v48 ^ v57 ^ [(SISchemaUEIDictationTranscriptionTokenized *)self->_ueiDictationTranscriptionTokenized hash];
  v59 = [(SISchemaUEIDictationAlternativeConfusionPairsSelected *)self->_dictationAlternativesSelected hash];
  v60 = v59 ^ [(SISchemaUUFRSelected *)self->_uufrSelected hash];
  v61 = v60 ^ [(SISchemaUEIDictationAlternativeTextPairsSelected *)self->_ueiDictationAlternativeTextPairsSelected hash];
  v62 = v61 ^ [(SISchemaUEIUserBargeInDetected *)self->_ueiUserBargeInDetected hash];
  v63 = v62 ^ [(SISchemaUEIDictationEnablementPromptShown *)self->_ueiDictationEnablementPromptShown hash];
  v64 = v63 ^ [(SISchemaUEISiriCarCommandContext *)self->_ueiSiriCarCommandContext hash];
  v65 = v64 ^ [(SISchemaUEIVisionSnippetDismissed *)self->_ueiVisionSnippetDismissed hash];
  v66 = v65 ^ [(SISchemaUEISiriWasUnavailable *)self->_ueiSiriWasUnavailable hash];
  v67 = v66 ^ [(SISchemaBluetoothCarPreferredAudioRouteChanged *)self->_preferredAudioRouteChanged hash];
  v68 = v67 ^ [(SISchemaUEIDictationContentEditedTier1 *)self->_ueiDictationContentEditedTier1 hash];
  v69 = v58 ^ v68 ^ [(SISchemaUEIDictationVoiceCommandUndoTapAction *)self->_ueiDictationVoiceCommandUndoTapAction hash];
  v70 = [(SISchemaUEIDictationVoiceCommandDisambiguationAction *)self->_ueiDictationVoiceCommandDisambiguationAction hash];
  v71 = v70 ^ [(SISchemaUEIDictationVoiceCommandKeyboardAction *)self->_ueiDictationVoiceCommandKeyboardAction hash];
  v72 = v71 ^ [(SISchemaUEIDictationEuclidAlternativesEvent *)self->_ueiDictationEuclidAlternativesEvent hash];
  v73 = v72 ^ [(SISchemaUEIDictationEuclidAlternativesEventTier1 *)self->_ueiDictationEuclidAlternativesEventTier1 hash];
  v74 = v73 ^ [(SISchemaUEIDictationEuclidSpeechAlternativesSelected *)self->_ueiDictationEuclidSpeechAlternativesSelected hash];
  v75 = v74 ^ [(SISchemaUEIDictationEuclidSpeechAlternativesSelectedTier1 *)self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 hash];
  v76 = v75 ^ [(SISchemaTypingRequestTrace *)self->_typingRequestTrace hash];
  v77 = v76 ^ [(SISchemaUEIInvocationTier1 *)self->_ueiInvocationTier1 hash];
  v78 = v77 ^ [(SISchemaUEITranscriptShown *)self->_transcriptShown hash];
  return v69 ^ v78 ^ [(SISchemaUEITranscriptTapped *)self->_transcriptTapped hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_388;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_388;
  }

  v6 = [(SISchemaClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v8 = [(SISchemaClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(SISchemaClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self transportMetadata];
  v7 = [v4 transportMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v13 = [(SISchemaClientEvent *)self transportMetadata];
  if (v13)
  {
    v14 = v13;
    v15 = [(SISchemaClientEvent *)self transportMetadata];
    v16 = [v4 transportMetadata];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self audioFirstBufferRecorded];
  v7 = [v4 audioFirstBufferRecorded];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v18 = [(SISchemaClientEvent *)self audioFirstBufferRecorded];
  if (v18)
  {
    v19 = v18;
    v20 = [(SISchemaClientEvent *)self audioFirstBufferRecorded];
    v21 = [v4 audioFirstBufferRecorded];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self audioStopRecording];
  v7 = [v4 audioStopRecording];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v23 = [(SISchemaClientEvent *)self audioStopRecording];
  if (v23)
  {
    v24 = v23;
    v25 = [(SISchemaClientEvent *)self audioStopRecording];
    v26 = [v4 audioStopRecording];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self clientConversationTrace];
  v7 = [v4 clientConversationTrace];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v28 = [(SISchemaClientEvent *)self clientConversationTrace];
  if (v28)
  {
    v29 = v28;
    v30 = [(SISchemaClientEvent *)self clientConversationTrace];
    v31 = [v4 clientConversationTrace];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self deviceDynamicContext];
  v7 = [v4 deviceDynamicContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v33 = [(SISchemaClientEvent *)self deviceDynamicContext];
  if (v33)
  {
    v34 = v33;
    v35 = [(SISchemaClientEvent *)self deviceDynamicContext];
    v36 = [v4 deviceDynamicContext];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self deviceFixedContext];
  v7 = [v4 deviceFixedContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v38 = [(SISchemaClientEvent *)self deviceFixedContext];
  if (v38)
  {
    v39 = v38;
    v40 = [(SISchemaClientEvent *)self deviceFixedContext];
    v41 = [v4 deviceFixedContext];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self dictationContext];
  v7 = [v4 dictationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v43 = [(SISchemaClientEvent *)self dictationContext];
  if (v43)
  {
    v44 = v43;
    v45 = [(SISchemaClientEvent *)self dictationContext];
    v46 = [v4 dictationContext];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self invocation];
  v7 = [v4 invocation];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v48 = [(SISchemaClientEvent *)self invocation];
  if (v48)
  {
    v49 = v48;
    v50 = [(SISchemaClientEvent *)self invocation];
    v51 = [v4 invocation];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self location];
  v7 = [v4 location];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v53 = [(SISchemaClientEvent *)self location];
  if (v53)
  {
    v54 = v53;
    v55 = [(SISchemaClientEvent *)self location];
    v56 = [v4 location];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self punchOut];
  v7 = [v4 punchOut];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v58 = [(SISchemaClientEvent *)self punchOut];
  if (v58)
  {
    v59 = v58;
    v60 = [(SISchemaClientEvent *)self punchOut];
    v61 = [v4 punchOut];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self siriCue];
  v7 = [v4 siriCue];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v63 = [(SISchemaClientEvent *)self siriCue];
  if (v63)
  {
    v64 = v63;
    v65 = [(SISchemaClientEvent *)self siriCue];
    v66 = [v4 siriCue];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self uufrPresented];
  v7 = [v4 uufrPresented];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v68 = [(SISchemaClientEvent *)self uufrPresented];
  if (v68)
  {
    v69 = v68;
    v70 = [(SISchemaClientEvent *)self uufrPresented];
    v71 = [v4 uufrPresented];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self speechTranscription];
  v7 = [v4 speechTranscription];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v73 = [(SISchemaClientEvent *)self speechTranscription];
  if (v73)
  {
    v74 = v73;
    v75 = [(SISchemaClientEvent *)self speechTranscription];
    v76 = [v4 speechTranscription];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self textToSpeechBegin];
  v7 = [v4 textToSpeechBegin];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v78 = [(SISchemaClientEvent *)self textToSpeechBegin];
  if (v78)
  {
    v79 = v78;
    v80 = [(SISchemaClientEvent *)self textToSpeechBegin];
    v81 = [v4 textToSpeechBegin];
    v82 = [v80 isEqual:v81];

    if (!v82)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self textToSpeechEnd];
  v7 = [v4 textToSpeechEnd];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v83 = [(SISchemaClientEvent *)self textToSpeechEnd];
  if (v83)
  {
    v84 = v83;
    v85 = [(SISchemaClientEvent *)self textToSpeechEnd];
    v86 = [v4 textToSpeechEnd];
    v87 = [v85 isEqual:v86];

    if (!v87)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self uiStateTransition];
  v7 = [v4 uiStateTransition];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v88 = [(SISchemaClientEvent *)self uiStateTransition];
  if (v88)
  {
    v89 = v88;
    v90 = [(SISchemaClientEvent *)self uiStateTransition];
    v91 = [v4 uiStateTransition];
    v92 = [v90 isEqual:v91];

    if (!v92)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self clientFlow];
  v7 = [v4 clientFlow];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v93 = [(SISchemaClientEvent *)self clientFlow];
  if (v93)
  {
    v94 = v93;
    v95 = [(SISchemaClientEvent *)self clientFlow];
    v96 = [v4 clientFlow];
    v97 = [v95 isEqual:v96];

    if (!v97)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self dialogOutput];
  v7 = [v4 dialogOutput];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v98 = [(SISchemaClientEvent *)self dialogOutput];
  if (v98)
  {
    v99 = v98;
    v100 = [(SISchemaClientEvent *)self dialogOutput];
    v101 = [v4 dialogOutput];
    v102 = [v100 isEqual:v101];

    if (!v102)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self dictationEndPointStop];
  v7 = [v4 dictationEndPointStop];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v103 = [(SISchemaClientEvent *)self dictationEndPointStop];
  if (v103)
  {
    v104 = v103;
    v105 = [(SISchemaClientEvent *)self dictationEndPointStop];
    v106 = [v4 dictationEndPointStop];
    v107 = [v105 isEqual:v106];

    if (!v107)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self dictationEndPointCancel];
  v7 = [v4 dictationEndPointCancel];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v108 = [(SISchemaClientEvent *)self dictationEndPointCancel];
  if (v108)
  {
    v109 = v108;
    v110 = [(SISchemaClientEvent *)self dictationEndPointCancel];
    v111 = [v4 dictationEndPointCancel];
    v112 = [v110 isEqual:v111];

    if (!v112)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self dictationAlternativeSelected];
  v7 = [v4 dictationAlternativeSelected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v113 = [(SISchemaClientEvent *)self dictationAlternativeSelected];
  if (v113)
  {
    v114 = v113;
    v115 = [(SISchemaClientEvent *)self dictationAlternativeSelected];
    v116 = [v4 dictationAlternativeSelected];
    v117 = [v115 isEqual:v116];

    if (!v117)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self dictationTranscriptionMetadata];
  v7 = [v4 dictationTranscriptionMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v118 = [(SISchemaClientEvent *)self dictationTranscriptionMetadata];
  if (v118)
  {
    v119 = v118;
    v120 = [(SISchemaClientEvent *)self dictationTranscriptionMetadata];
    v121 = [v4 dictationTranscriptionMetadata];
    v122 = [v120 isEqual:v121];

    if (!v122)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self carPlayHeadUnitContext];
  v7 = [v4 carPlayHeadUnitContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v123 = [(SISchemaClientEvent *)self carPlayHeadUnitContext];
  if (v123)
  {
    v124 = v123;
    v125 = [(SISchemaClientEvent *)self carPlayHeadUnitContext];
    v126 = [v4 carPlayHeadUnitContext];
    v127 = [v125 isEqual:v126];

    if (!v127)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self uufrCompletion];
  v7 = [v4 uufrCompletion];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v128 = [(SISchemaClientEvent *)self uufrCompletion];
  if (v128)
  {
    v129 = v128;
    v130 = [(SISchemaClientEvent *)self uufrCompletion];
    v131 = [v4 uufrCompletion];
    v132 = [v130 isEqual:v131];

    if (!v132)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self uufrShown];
  v7 = [v4 uufrShown];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v133 = [(SISchemaClientEvent *)self uufrShown];
  if (v133)
  {
    v134 = v133;
    v135 = [(SISchemaClientEvent *)self uufrShown];
    v136 = [v4 uufrShown];
    v137 = [v135 isEqual:v136];

    if (!v137)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self uufrSaid];
  v7 = [v4 uufrSaid];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v138 = [(SISchemaClientEvent *)self uufrSaid];
  if (v138)
  {
    v139 = v138;
    v140 = [(SISchemaClientEvent *)self uufrSaid];
    v141 = [v4 uufrSaid];
    v142 = [v140 isEqual:v141];

    if (!v142)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self uufrFatalError];
  v7 = [v4 uufrFatalError];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v143 = [(SISchemaClientEvent *)self uufrFatalError];
  if (v143)
  {
    v144 = v143;
    v145 = [(SISchemaClientEvent *)self uufrFatalError];
    v146 = [v4 uufrFatalError];
    v147 = [v145 isEqual:v146];

    if (!v147)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self dictationAlternativesViewed];
  v7 = [v4 dictationAlternativesViewed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v148 = [(SISchemaClientEvent *)self dictationAlternativesViewed];
  if (v148)
  {
    v149 = v148;
    v150 = [(SISchemaClientEvent *)self dictationAlternativesViewed];
    v151 = [v4 dictationAlternativesViewed];
    v152 = [v150 isEqual:v151];

    if (!v152)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self intercomMessageRecorded];
  v7 = [v4 intercomMessageRecorded];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v153 = [(SISchemaClientEvent *)self intercomMessageRecorded];
  if (v153)
  {
    v154 = v153;
    v155 = [(SISchemaClientEvent *)self intercomMessageRecorded];
    v156 = [v4 intercomMessageRecorded];
    v157 = [v155 isEqual:v156];

    if (!v157)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self casinoRelationship];
  v7 = [v4 casinoRelationship];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v158 = [(SISchemaClientEvent *)self casinoRelationship];
  if (v158)
  {
    v159 = v158;
    v160 = [(SISchemaClientEvent *)self casinoRelationship];
    v161 = [v4 casinoRelationship];
    v162 = [v160 isEqual:v161];

    if (!v162)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self userViewRegionInteraction];
  v7 = [v4 userViewRegionInteraction];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v163 = [(SISchemaClientEvent *)self userViewRegionInteraction];
  if (v163)
  {
    v164 = v163;
    v165 = [(SISchemaClientEvent *)self userViewRegionInteraction];
    v166 = [v4 userViewRegionInteraction];
    v167 = [v165 isEqual:v166];

    if (!v167)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self deviceLockStateChanged];
  v7 = [v4 deviceLockStateChanged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v168 = [(SISchemaClientEvent *)self deviceLockStateChanged];
  if (v168)
  {
    v169 = v168;
    v170 = [(SISchemaClientEvent *)self deviceLockStateChanged];
    v171 = [v4 deviceLockStateChanged];
    v172 = [v170 isEqual:v171];

    if (!v172)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiRequestCategorization];
  v7 = [v4 ueiRequestCategorization];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v173 = [(SISchemaClientEvent *)self ueiRequestCategorization];
  if (v173)
  {
    v174 = v173;
    v175 = [(SISchemaClientEvent *)self ueiRequestCategorization];
    v176 = [v4 ueiRequestCategorization];
    v177 = [v175 isEqual:v176];

    if (!v177)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self audioStopRecordingStarted];
  v7 = [v4 audioStopRecordingStarted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v178 = [(SISchemaClientEvent *)self audioStopRecordingStarted];
  if (v178)
  {
    v179 = v178;
    v180 = [(SISchemaClientEvent *)self audioStopRecordingStarted];
    v181 = [v4 audioStopRecordingStarted];
    v182 = [v180 isEqual:v181];

    if (!v182)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiLaunchContext];
  v7 = [v4 ueiLaunchContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v183 = [(SISchemaClientEvent *)self ueiLaunchContext];
  if (v183)
  {
    v184 = v183;
    v185 = [(SISchemaClientEvent *)self ueiLaunchContext];
    v186 = [v4 ueiLaunchContext];
    v187 = [v185 isEqual:v186];

    if (!v187)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiUserSpeakingContext];
  v7 = [v4 ueiUserSpeakingContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v188 = [(SISchemaClientEvent *)self ueiUserSpeakingContext];
  if (v188)
  {
    v189 = v188;
    v190 = [(SISchemaClientEvent *)self ueiUserSpeakingContext];
    v191 = [v4 ueiUserSpeakingContext];
    v192 = [v190 isEqual:v191];

    if (!v192)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiUUFRReady];
  v7 = [v4 ueiUUFRReady];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v193 = [(SISchemaClientEvent *)self ueiUUFRReady];
  if (v193)
  {
    v194 = v193;
    v195 = [(SISchemaClientEvent *)self ueiUUFRReady];
    v196 = [v4 ueiUUFRReady];
    v197 = [v195 isEqual:v196];

    if (!v197)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiUIRenderingContext];
  v7 = [v4 ueiUIRenderingContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v198 = [(SISchemaClientEvent *)self ueiUIRenderingContext];
  if (v198)
  {
    v199 = v198;
    v200 = [(SISchemaClientEvent *)self ueiUIRenderingContext];
    v201 = [v4 ueiUIRenderingContext];
    v202 = [v200 isEqual:v201];

    if (!v202)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self pnrTextToSpeechRequestReceived];
  v7 = [v4 pnrTextToSpeechRequestReceived];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v203 = [(SISchemaClientEvent *)self pnrTextToSpeechRequestReceived];
  if (v203)
  {
    v204 = v203;
    v205 = [(SISchemaClientEvent *)self pnrTextToSpeechRequestReceived];
    v206 = [v4 pnrTextToSpeechRequestReceived];
    v207 = [v205 isEqual:v206];

    if (!v207)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self pnrSpeechRecognitionSourceContext];
  v7 = [v4 pnrSpeechRecognitionSourceContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v208 = [(SISchemaClientEvent *)self pnrSpeechRecognitionSourceContext];
  if (v208)
  {
    v209 = v208;
    v210 = [(SISchemaClientEvent *)self pnrSpeechRecognitionSourceContext];
    v211 = [v4 pnrSpeechRecognitionSourceContext];
    v212 = [v210 isEqual:v211];

    if (!v212)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self pnrFatalError];
  v7 = [v4 pnrFatalError];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v213 = [(SISchemaClientEvent *)self pnrFatalError];
  if (v213)
  {
    v214 = v213;
    v215 = [(SISchemaClientEvent *)self pnrFatalError];
    v216 = [v4 pnrFatalError];
    v217 = [v215 isEqual:v216];

    if (!v217)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self turnMTERequest];
  v7 = [v4 turnMTERequest];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v218 = [(SISchemaClientEvent *)self turnMTERequest];
  if (v218)
  {
    v219 = v218;
    v220 = [(SISchemaClientEvent *)self turnMTERequest];
    v221 = [v4 turnMTERequest];
    v222 = [v220 isEqual:v221];

    if (!v222)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self keyboardDismissed];
  v7 = [v4 keyboardDismissed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v223 = [(SISchemaClientEvent *)self keyboardDismissed];
  if (v223)
  {
    v224 = v223;
    v225 = [(SISchemaClientEvent *)self keyboardDismissed];
    v226 = [v4 keyboardDismissed];
    v227 = [v225 isEqual:v226];

    if (!v227)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self engagedAccessoryContext];
  v7 = [v4 engagedAccessoryContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v228 = [(SISchemaClientEvent *)self engagedAccessoryContext];
  if (v228)
  {
    v229 = v228;
    v230 = [(SISchemaClientEvent *)self engagedAccessoryContext];
    v231 = [v4 engagedAccessoryContext];
    v232 = [v230 isEqual:v231];

    if (!v232)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self announceCarPlayBannerTapped];
  v7 = [v4 announceCarPlayBannerTapped];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v233 = [(SISchemaClientEvent *)self announceCarPlayBannerTapped];
  if (v233)
  {
    v234 = v233;
    v235 = [(SISchemaClientEvent *)self announceCarPlayBannerTapped];
    v236 = [v4 announceCarPlayBannerTapped];
    v237 = [v235 isEqual:v236];

    if (!v237)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self announceCarPlayGlyphSettingToggled];
  v7 = [v4 announceCarPlayGlyphSettingToggled];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v238 = [(SISchemaClientEvent *)self announceCarPlayGlyphSettingToggled];
  if (v238)
  {
    v239 = v238;
    v240 = [(SISchemaClientEvent *)self announceCarPlayGlyphSettingToggled];
    v241 = [v4 announceCarPlayGlyphSettingToggled];
    v242 = [v240 isEqual:v241];

    if (!v242)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self dictationContentEdited];
  v7 = [v4 dictationContentEdited];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v243 = [(SISchemaClientEvent *)self dictationContentEdited];
  if (v243)
  {
    v244 = v243;
    v245 = [(SISchemaClientEvent *)self dictationContentEdited];
    v246 = [v4 dictationContentEdited];
    v247 = [v245 isEqual:v246];

    if (!v247)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self uufrShownTier1];
  v7 = [v4 uufrShownTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v248 = [(SISchemaClientEvent *)self uufrShownTier1];
  if (v248)
  {
    v249 = v248;
    v250 = [(SISchemaClientEvent *)self uufrShownTier1];
    v251 = [v4 uufrShownTier1];
    v252 = [v250 isEqual:v251];

    if (!v252)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiDictationPartialResultUpdated];
  v7 = [v4 ueiDictationPartialResultUpdated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v253 = [(SISchemaClientEvent *)self ueiDictationPartialResultUpdated];
  if (v253)
  {
    v254 = v253;
    v255 = [(SISchemaClientEvent *)self ueiDictationPartialResultUpdated];
    v256 = [v4 ueiDictationPartialResultUpdated];
    v257 = [v255 isEqual:v256];

    if (!v257)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandExecuted];
  v7 = [v4 ueiDictationVoiceCommandExecuted];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v258 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandExecuted];
  if (v258)
  {
    v259 = v258;
    v260 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandExecuted];
    v261 = [v4 ueiDictationVoiceCommandExecuted];
    v262 = [v260 isEqual:v261];

    if (!v262)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiDictationInputModeSwitchContext];
  v7 = [v4 ueiDictationInputModeSwitchContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v263 = [(SISchemaClientEvent *)self ueiDictationInputModeSwitchContext];
  if (v263)
  {
    v264 = v263;
    v265 = [(SISchemaClientEvent *)self ueiDictationInputModeSwitchContext];
    v266 = [v4 ueiDictationInputModeSwitchContext];
    v267 = [v265 isEqual:v266];

    if (!v267)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiDictationToolTipDisplayContext];
  v7 = [v4 ueiDictationToolTipDisplayContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v268 = [(SISchemaClientEvent *)self ueiDictationToolTipDisplayContext];
  if (v268)
  {
    v269 = v268;
    v270 = [(SISchemaClientEvent *)self ueiDictationToolTipDisplayContext];
    v271 = [v4 ueiDictationToolTipDisplayContext];
    v272 = [v270 isEqual:v271];

    if (!v272)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self hostPlatformViewAppearContext];
  v7 = [v4 hostPlatformViewAppearContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v273 = [(SISchemaClientEvent *)self hostPlatformViewAppearContext];
  if (v273)
  {
    v274 = v273;
    v275 = [(SISchemaClientEvent *)self hostPlatformViewAppearContext];
    v276 = [v4 hostPlatformViewAppearContext];
    v277 = [v275 isEqual:v276];

    if (!v277)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self hostPlatformViewDisappearContext];
  v7 = [v4 hostPlatformViewDisappearContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v278 = [(SISchemaClientEvent *)self hostPlatformViewDisappearContext];
  if (v278)
  {
    v279 = v278;
    v280 = [(SISchemaClientEvent *)self hostPlatformViewDisappearContext];
    v281 = [v4 hostPlatformViewDisappearContext];
    v282 = [v280 isEqual:v281];

    if (!v282)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiDictationTranscriptionTokenized];
  v7 = [v4 ueiDictationTranscriptionTokenized];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v283 = [(SISchemaClientEvent *)self ueiDictationTranscriptionTokenized];
  if (v283)
  {
    v284 = v283;
    v285 = [(SISchemaClientEvent *)self ueiDictationTranscriptionTokenized];
    v286 = [v4 ueiDictationTranscriptionTokenized];
    v287 = [v285 isEqual:v286];

    if (!v287)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self dictationAlternativesSelected];
  v7 = [v4 dictationAlternativesSelected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v288 = [(SISchemaClientEvent *)self dictationAlternativesSelected];
  if (v288)
  {
    v289 = v288;
    v290 = [(SISchemaClientEvent *)self dictationAlternativesSelected];
    v291 = [v4 dictationAlternativesSelected];
    v292 = [v290 isEqual:v291];

    if (!v292)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self uufrSelected];
  v7 = [v4 uufrSelected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v293 = [(SISchemaClientEvent *)self uufrSelected];
  if (v293)
  {
    v294 = v293;
    v295 = [(SISchemaClientEvent *)self uufrSelected];
    v296 = [v4 uufrSelected];
    v297 = [v295 isEqual:v296];

    if (!v297)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiDictationAlternativeTextPairsSelected];
  v7 = [v4 ueiDictationAlternativeTextPairsSelected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v298 = [(SISchemaClientEvent *)self ueiDictationAlternativeTextPairsSelected];
  if (v298)
  {
    v299 = v298;
    v300 = [(SISchemaClientEvent *)self ueiDictationAlternativeTextPairsSelected];
    v301 = [v4 ueiDictationAlternativeTextPairsSelected];
    v302 = [v300 isEqual:v301];

    if (!v302)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiUserBargeInDetected];
  v7 = [v4 ueiUserBargeInDetected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v303 = [(SISchemaClientEvent *)self ueiUserBargeInDetected];
  if (v303)
  {
    v304 = v303;
    v305 = [(SISchemaClientEvent *)self ueiUserBargeInDetected];
    v306 = [v4 ueiUserBargeInDetected];
    v307 = [v305 isEqual:v306];

    if (!v307)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiDictationEnablementPromptShown];
  v7 = [v4 ueiDictationEnablementPromptShown];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v308 = [(SISchemaClientEvent *)self ueiDictationEnablementPromptShown];
  if (v308)
  {
    v309 = v308;
    v310 = [(SISchemaClientEvent *)self ueiDictationEnablementPromptShown];
    v311 = [v4 ueiDictationEnablementPromptShown];
    v312 = [v310 isEqual:v311];

    if (!v312)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiSiriCarCommandContext];
  v7 = [v4 ueiSiriCarCommandContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v313 = [(SISchemaClientEvent *)self ueiSiriCarCommandContext];
  if (v313)
  {
    v314 = v313;
    v315 = [(SISchemaClientEvent *)self ueiSiriCarCommandContext];
    v316 = [v4 ueiSiriCarCommandContext];
    v317 = [v315 isEqual:v316];

    if (!v317)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiVisionSnippetDismissed];
  v7 = [v4 ueiVisionSnippetDismissed];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v318 = [(SISchemaClientEvent *)self ueiVisionSnippetDismissed];
  if (v318)
  {
    v319 = v318;
    v320 = [(SISchemaClientEvent *)self ueiVisionSnippetDismissed];
    v321 = [v4 ueiVisionSnippetDismissed];
    v322 = [v320 isEqual:v321];

    if (!v322)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiSiriWasUnavailable];
  v7 = [v4 ueiSiriWasUnavailable];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v323 = [(SISchemaClientEvent *)self ueiSiriWasUnavailable];
  if (v323)
  {
    v324 = v323;
    v325 = [(SISchemaClientEvent *)self ueiSiriWasUnavailable];
    v326 = [v4 ueiSiriWasUnavailable];
    v327 = [v325 isEqual:v326];

    if (!v327)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self preferredAudioRouteChanged];
  v7 = [v4 preferredAudioRouteChanged];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v328 = [(SISchemaClientEvent *)self preferredAudioRouteChanged];
  if (v328)
  {
    v329 = v328;
    v330 = [(SISchemaClientEvent *)self preferredAudioRouteChanged];
    v331 = [v4 preferredAudioRouteChanged];
    v332 = [v330 isEqual:v331];

    if (!v332)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiDictationContentEditedTier1];
  v7 = [v4 ueiDictationContentEditedTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v333 = [(SISchemaClientEvent *)self ueiDictationContentEditedTier1];
  if (v333)
  {
    v334 = v333;
    v335 = [(SISchemaClientEvent *)self ueiDictationContentEditedTier1];
    v336 = [v4 ueiDictationContentEditedTier1];
    v337 = [v335 isEqual:v336];

    if (!v337)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandUndoTapAction];
  v7 = [v4 ueiDictationVoiceCommandUndoTapAction];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v338 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandUndoTapAction];
  if (v338)
  {
    v339 = v338;
    v340 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandUndoTapAction];
    v341 = [v4 ueiDictationVoiceCommandUndoTapAction];
    v342 = [v340 isEqual:v341];

    if (!v342)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandDisambiguationAction];
  v7 = [v4 ueiDictationVoiceCommandDisambiguationAction];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v343 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandDisambiguationAction];
  if (v343)
  {
    v344 = v343;
    v345 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandDisambiguationAction];
    v346 = [v4 ueiDictationVoiceCommandDisambiguationAction];
    v347 = [v345 isEqual:v346];

    if (!v347)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandKeyboardAction];
  v7 = [v4 ueiDictationVoiceCommandKeyboardAction];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v348 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandKeyboardAction];
  if (v348)
  {
    v349 = v348;
    v350 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandKeyboardAction];
    v351 = [v4 ueiDictationVoiceCommandKeyboardAction];
    v352 = [v350 isEqual:v351];

    if (!v352)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEvent];
  v7 = [v4 ueiDictationEuclidAlternativesEvent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v353 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEvent];
  if (v353)
  {
    v354 = v353;
    v355 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEvent];
    v356 = [v4 ueiDictationEuclidAlternativesEvent];
    v357 = [v355 isEqual:v356];

    if (!v357)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEventTier1];
  v7 = [v4 ueiDictationEuclidAlternativesEventTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v358 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEventTier1];
  if (v358)
  {
    v359 = v358;
    v360 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEventTier1];
    v361 = [v4 ueiDictationEuclidAlternativesEventTier1];
    v362 = [v360 isEqual:v361];

    if (!v362)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelected];
  v7 = [v4 ueiDictationEuclidSpeechAlternativesSelected];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v363 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelected];
  if (v363)
  {
    v364 = v363;
    v365 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelected];
    v366 = [v4 ueiDictationEuclidSpeechAlternativesSelected];
    v367 = [v365 isEqual:v366];

    if (!v367)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelectedTier1];
  v7 = [v4 ueiDictationEuclidSpeechAlternativesSelectedTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v368 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelectedTier1];
  if (v368)
  {
    v369 = v368;
    v370 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelectedTier1];
    v371 = [v4 ueiDictationEuclidSpeechAlternativesSelectedTier1];
    v372 = [v370 isEqual:v371];

    if (!v372)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self typingRequestTrace];
  v7 = [v4 typingRequestTrace];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v373 = [(SISchemaClientEvent *)self typingRequestTrace];
  if (v373)
  {
    v374 = v373;
    v375 = [(SISchemaClientEvent *)self typingRequestTrace];
    v376 = [v4 typingRequestTrace];
    v377 = [v375 isEqual:v376];

    if (!v377)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self ueiInvocationTier1];
  v7 = [v4 ueiInvocationTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v378 = [(SISchemaClientEvent *)self ueiInvocationTier1];
  if (v378)
  {
    v379 = v378;
    v380 = [(SISchemaClientEvent *)self ueiInvocationTier1];
    v381 = [v4 ueiInvocationTier1];
    v382 = [v380 isEqual:v381];

    if (!v382)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self transcriptShown];
  v7 = [v4 transcriptShown];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_387;
  }

  v383 = [(SISchemaClientEvent *)self transcriptShown];
  if (v383)
  {
    v384 = v383;
    v385 = [(SISchemaClientEvent *)self transcriptShown];
    v386 = [v4 transcriptShown];
    v387 = [v385 isEqual:v386];

    if (!v387)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  v6 = [(SISchemaClientEvent *)self transcriptTapped];
  v7 = [v4 transcriptTapped];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_387:

    goto LABEL_388;
  }

  v388 = [(SISchemaClientEvent *)self transcriptTapped];
  if (!v388)
  {

LABEL_391:
    v393 = 1;
    goto LABEL_389;
  }

  v389 = v388;
  v390 = [(SISchemaClientEvent *)self transcriptTapped];
  v391 = [v4 transcriptTapped];
  v392 = [v390 isEqual:v391];

  if (v392)
  {
    goto LABEL_391;
  }

LABEL_388:
  v393 = 0;
LABEL_389:

  return v393;
}

- (void)writeTo:(id)a3
{
  v159 = a3;
  v4 = [(SISchemaClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(SISchemaClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SISchemaClientEvent *)self transportMetadata];

  if (v6)
  {
    v7 = [(SISchemaClientEvent *)self transportMetadata];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(SISchemaClientEvent *)self audioFirstBufferRecorded];

  if (v8)
  {
    v9 = [(SISchemaClientEvent *)self audioFirstBufferRecorded];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(SISchemaClientEvent *)self audioStopRecording];

  if (v10)
  {
    v11 = [(SISchemaClientEvent *)self audioStopRecording];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(SISchemaClientEvent *)self clientConversationTrace];

  if (v12)
  {
    v13 = [(SISchemaClientEvent *)self clientConversationTrace];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(SISchemaClientEvent *)self deviceDynamicContext];

  if (v14)
  {
    v15 = [(SISchemaClientEvent *)self deviceDynamicContext];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(SISchemaClientEvent *)self deviceFixedContext];

  if (v16)
  {
    v17 = [(SISchemaClientEvent *)self deviceFixedContext];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(SISchemaClientEvent *)self dictationContext];

  if (v18)
  {
    v19 = [(SISchemaClientEvent *)self dictationContext];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(SISchemaClientEvent *)self invocation];

  if (v20)
  {
    v21 = [(SISchemaClientEvent *)self invocation];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(SISchemaClientEvent *)self location];

  if (v22)
  {
    v23 = [(SISchemaClientEvent *)self location];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(SISchemaClientEvent *)self punchOut];

  if (v24)
  {
    v25 = [(SISchemaClientEvent *)self punchOut];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(SISchemaClientEvent *)self siriCue];

  if (v26)
  {
    v27 = [(SISchemaClientEvent *)self siriCue];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(SISchemaClientEvent *)self uufrPresented];

  if (v28)
  {
    v29 = [(SISchemaClientEvent *)self uufrPresented];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(SISchemaClientEvent *)self speechTranscription];

  if (v30)
  {
    v31 = [(SISchemaClientEvent *)self speechTranscription];
    PBDataWriterWriteSubmessage();
  }

  v32 = [(SISchemaClientEvent *)self textToSpeechBegin];

  if (v32)
  {
    v33 = [(SISchemaClientEvent *)self textToSpeechBegin];
    PBDataWriterWriteSubmessage();
  }

  v34 = [(SISchemaClientEvent *)self textToSpeechEnd];

  if (v34)
  {
    v35 = [(SISchemaClientEvent *)self textToSpeechEnd];
    PBDataWriterWriteSubmessage();
  }

  v36 = [(SISchemaClientEvent *)self uiStateTransition];

  if (v36)
  {
    v37 = [(SISchemaClientEvent *)self uiStateTransition];
    PBDataWriterWriteSubmessage();
  }

  v38 = [(SISchemaClientEvent *)self clientFlow];

  if (v38)
  {
    v39 = [(SISchemaClientEvent *)self clientFlow];
    PBDataWriterWriteSubmessage();
  }

  v40 = [(SISchemaClientEvent *)self dialogOutput];

  if (v40)
  {
    v41 = [(SISchemaClientEvent *)self dialogOutput];
    PBDataWriterWriteSubmessage();
  }

  v42 = [(SISchemaClientEvent *)self dictationEndPointStop];

  if (v42)
  {
    v43 = [(SISchemaClientEvent *)self dictationEndPointStop];
    PBDataWriterWriteSubmessage();
  }

  v44 = [(SISchemaClientEvent *)self dictationEndPointCancel];

  if (v44)
  {
    v45 = [(SISchemaClientEvent *)self dictationEndPointCancel];
    PBDataWriterWriteSubmessage();
  }

  v46 = [(SISchemaClientEvent *)self dictationAlternativeSelected];

  if (v46)
  {
    v47 = [(SISchemaClientEvent *)self dictationAlternativeSelected];
    PBDataWriterWriteSubmessage();
  }

  v48 = [(SISchemaClientEvent *)self dictationTranscriptionMetadata];

  if (v48)
  {
    v49 = [(SISchemaClientEvent *)self dictationTranscriptionMetadata];
    PBDataWriterWriteSubmessage();
  }

  v50 = [(SISchemaClientEvent *)self carPlayHeadUnitContext];

  if (v50)
  {
    v51 = [(SISchemaClientEvent *)self carPlayHeadUnitContext];
    PBDataWriterWriteSubmessage();
  }

  v52 = [(SISchemaClientEvent *)self uufrCompletion];

  if (v52)
  {
    v53 = [(SISchemaClientEvent *)self uufrCompletion];
    PBDataWriterWriteSubmessage();
  }

  v54 = [(SISchemaClientEvent *)self uufrShown];

  if (v54)
  {
    v55 = [(SISchemaClientEvent *)self uufrShown];
    PBDataWriterWriteSubmessage();
  }

  v56 = [(SISchemaClientEvent *)self uufrSaid];

  if (v56)
  {
    v57 = [(SISchemaClientEvent *)self uufrSaid];
    PBDataWriterWriteSubmessage();
  }

  v58 = [(SISchemaClientEvent *)self uufrFatalError];

  if (v58)
  {
    v59 = [(SISchemaClientEvent *)self uufrFatalError];
    PBDataWriterWriteSubmessage();
  }

  v60 = [(SISchemaClientEvent *)self dictationAlternativesViewed];

  if (v60)
  {
    v61 = [(SISchemaClientEvent *)self dictationAlternativesViewed];
    PBDataWriterWriteSubmessage();
  }

  v62 = [(SISchemaClientEvent *)self intercomMessageRecorded];

  if (v62)
  {
    v63 = [(SISchemaClientEvent *)self intercomMessageRecorded];
    PBDataWriterWriteSubmessage();
  }

  v64 = [(SISchemaClientEvent *)self casinoRelationship];

  if (v64)
  {
    v65 = [(SISchemaClientEvent *)self casinoRelationship];
    PBDataWriterWriteSubmessage();
  }

  v66 = [(SISchemaClientEvent *)self userViewRegionInteraction];

  if (v66)
  {
    v67 = [(SISchemaClientEvent *)self userViewRegionInteraction];
    PBDataWriterWriteSubmessage();
  }

  v68 = [(SISchemaClientEvent *)self deviceLockStateChanged];

  if (v68)
  {
    v69 = [(SISchemaClientEvent *)self deviceLockStateChanged];
    PBDataWriterWriteSubmessage();
  }

  v70 = [(SISchemaClientEvent *)self ueiRequestCategorization];

  if (v70)
  {
    v71 = [(SISchemaClientEvent *)self ueiRequestCategorization];
    PBDataWriterWriteSubmessage();
  }

  v72 = [(SISchemaClientEvent *)self audioStopRecordingStarted];

  if (v72)
  {
    v73 = [(SISchemaClientEvent *)self audioStopRecordingStarted];
    PBDataWriterWriteSubmessage();
  }

  v74 = [(SISchemaClientEvent *)self ueiLaunchContext];

  if (v74)
  {
    v75 = [(SISchemaClientEvent *)self ueiLaunchContext];
    PBDataWriterWriteSubmessage();
  }

  v76 = [(SISchemaClientEvent *)self ueiUserSpeakingContext];

  if (v76)
  {
    v77 = [(SISchemaClientEvent *)self ueiUserSpeakingContext];
    PBDataWriterWriteSubmessage();
  }

  v78 = [(SISchemaClientEvent *)self ueiUUFRReady];

  if (v78)
  {
    v79 = [(SISchemaClientEvent *)self ueiUUFRReady];
    PBDataWriterWriteSubmessage();
  }

  v80 = [(SISchemaClientEvent *)self ueiUIRenderingContext];

  if (v80)
  {
    v81 = [(SISchemaClientEvent *)self ueiUIRenderingContext];
    PBDataWriterWriteSubmessage();
  }

  v82 = [(SISchemaClientEvent *)self pnrTextToSpeechRequestReceived];

  if (v82)
  {
    v83 = [(SISchemaClientEvent *)self pnrTextToSpeechRequestReceived];
    PBDataWriterWriteSubmessage();
  }

  v84 = [(SISchemaClientEvent *)self pnrSpeechRecognitionSourceContext];

  if (v84)
  {
    v85 = [(SISchemaClientEvent *)self pnrSpeechRecognitionSourceContext];
    PBDataWriterWriteSubmessage();
  }

  v86 = [(SISchemaClientEvent *)self pnrFatalError];

  if (v86)
  {
    v87 = [(SISchemaClientEvent *)self pnrFatalError];
    PBDataWriterWriteSubmessage();
  }

  v88 = [(SISchemaClientEvent *)self turnMTERequest];

  if (v88)
  {
    v89 = [(SISchemaClientEvent *)self turnMTERequest];
    PBDataWriterWriteSubmessage();
  }

  v90 = [(SISchemaClientEvent *)self keyboardDismissed];

  if (v90)
  {
    v91 = [(SISchemaClientEvent *)self keyboardDismissed];
    PBDataWriterWriteSubmessage();
  }

  v92 = [(SISchemaClientEvent *)self engagedAccessoryContext];

  if (v92)
  {
    v93 = [(SISchemaClientEvent *)self engagedAccessoryContext];
    PBDataWriterWriteSubmessage();
  }

  v94 = [(SISchemaClientEvent *)self announceCarPlayBannerTapped];

  if (v94)
  {
    v95 = [(SISchemaClientEvent *)self announceCarPlayBannerTapped];
    PBDataWriterWriteSubmessage();
  }

  v96 = [(SISchemaClientEvent *)self announceCarPlayGlyphSettingToggled];

  if (v96)
  {
    v97 = [(SISchemaClientEvent *)self announceCarPlayGlyphSettingToggled];
    PBDataWriterWriteSubmessage();
  }

  v98 = [(SISchemaClientEvent *)self dictationContentEdited];

  if (v98)
  {
    v99 = [(SISchemaClientEvent *)self dictationContentEdited];
    PBDataWriterWriteSubmessage();
  }

  v100 = [(SISchemaClientEvent *)self uufrShownTier1];

  if (v100)
  {
    v101 = [(SISchemaClientEvent *)self uufrShownTier1];
    PBDataWriterWriteSubmessage();
  }

  v102 = [(SISchemaClientEvent *)self ueiDictationPartialResultUpdated];

  if (v102)
  {
    v103 = [(SISchemaClientEvent *)self ueiDictationPartialResultUpdated];
    PBDataWriterWriteSubmessage();
  }

  v104 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandExecuted];

  if (v104)
  {
    v105 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandExecuted];
    PBDataWriterWriteSubmessage();
  }

  v106 = [(SISchemaClientEvent *)self ueiDictationInputModeSwitchContext];

  if (v106)
  {
    v107 = [(SISchemaClientEvent *)self ueiDictationInputModeSwitchContext];
    PBDataWriterWriteSubmessage();
  }

  v108 = [(SISchemaClientEvent *)self ueiDictationToolTipDisplayContext];

  if (v108)
  {
    v109 = [(SISchemaClientEvent *)self ueiDictationToolTipDisplayContext];
    PBDataWriterWriteSubmessage();
  }

  v110 = [(SISchemaClientEvent *)self hostPlatformViewAppearContext];

  if (v110)
  {
    v111 = [(SISchemaClientEvent *)self hostPlatformViewAppearContext];
    PBDataWriterWriteSubmessage();
  }

  v112 = [(SISchemaClientEvent *)self hostPlatformViewDisappearContext];

  if (v112)
  {
    v113 = [(SISchemaClientEvent *)self hostPlatformViewDisappearContext];
    PBDataWriterWriteSubmessage();
  }

  v114 = [(SISchemaClientEvent *)self ueiDictationTranscriptionTokenized];

  if (v114)
  {
    v115 = [(SISchemaClientEvent *)self ueiDictationTranscriptionTokenized];
    PBDataWriterWriteSubmessage();
  }

  v116 = [(SISchemaClientEvent *)self dictationAlternativesSelected];

  if (v116)
  {
    v117 = [(SISchemaClientEvent *)self dictationAlternativesSelected];
    PBDataWriterWriteSubmessage();
  }

  v118 = [(SISchemaClientEvent *)self uufrSelected];

  if (v118)
  {
    v119 = [(SISchemaClientEvent *)self uufrSelected];
    PBDataWriterWriteSubmessage();
  }

  v120 = [(SISchemaClientEvent *)self ueiDictationAlternativeTextPairsSelected];

  if (v120)
  {
    v121 = [(SISchemaClientEvent *)self ueiDictationAlternativeTextPairsSelected];
    PBDataWriterWriteSubmessage();
  }

  v122 = [(SISchemaClientEvent *)self ueiUserBargeInDetected];

  if (v122)
  {
    v123 = [(SISchemaClientEvent *)self ueiUserBargeInDetected];
    PBDataWriterWriteSubmessage();
  }

  v124 = [(SISchemaClientEvent *)self ueiDictationEnablementPromptShown];

  if (v124)
  {
    v125 = [(SISchemaClientEvent *)self ueiDictationEnablementPromptShown];
    PBDataWriterWriteSubmessage();
  }

  v126 = [(SISchemaClientEvent *)self ueiSiriCarCommandContext];

  if (v126)
  {
    v127 = [(SISchemaClientEvent *)self ueiSiriCarCommandContext];
    PBDataWriterWriteSubmessage();
  }

  v128 = [(SISchemaClientEvent *)self ueiVisionSnippetDismissed];

  if (v128)
  {
    v129 = [(SISchemaClientEvent *)self ueiVisionSnippetDismissed];
    PBDataWriterWriteSubmessage();
  }

  v130 = [(SISchemaClientEvent *)self ueiSiriWasUnavailable];

  if (v130)
  {
    v131 = [(SISchemaClientEvent *)self ueiSiriWasUnavailable];
    PBDataWriterWriteSubmessage();
  }

  v132 = [(SISchemaClientEvent *)self preferredAudioRouteChanged];

  if (v132)
  {
    v133 = [(SISchemaClientEvent *)self preferredAudioRouteChanged];
    PBDataWriterWriteSubmessage();
  }

  v134 = [(SISchemaClientEvent *)self ueiDictationContentEditedTier1];

  if (v134)
  {
    v135 = [(SISchemaClientEvent *)self ueiDictationContentEditedTier1];
    PBDataWriterWriteSubmessage();
  }

  v136 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandUndoTapAction];

  if (v136)
  {
    v137 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandUndoTapAction];
    PBDataWriterWriteSubmessage();
  }

  v138 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandDisambiguationAction];

  if (v138)
  {
    v139 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandDisambiguationAction];
    PBDataWriterWriteSubmessage();
  }

  v140 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandKeyboardAction];

  if (v140)
  {
    v141 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandKeyboardAction];
    PBDataWriterWriteSubmessage();
  }

  v142 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEvent];

  if (v142)
  {
    v143 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEvent];
    PBDataWriterWriteSubmessage();
  }

  v144 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEventTier1];

  if (v144)
  {
    v145 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEventTier1];
    PBDataWriterWriteSubmessage();
  }

  v146 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelected];

  if (v146)
  {
    v147 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelected];
    PBDataWriterWriteSubmessage();
  }

  v148 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelectedTier1];

  if (v148)
  {
    v149 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelectedTier1];
    PBDataWriterWriteSubmessage();
  }

  v150 = [(SISchemaClientEvent *)self typingRequestTrace];

  if (v150)
  {
    v151 = [(SISchemaClientEvent *)self typingRequestTrace];
    PBDataWriterWriteSubmessage();
  }

  v152 = [(SISchemaClientEvent *)self ueiInvocationTier1];

  if (v152)
  {
    v153 = [(SISchemaClientEvent *)self ueiInvocationTier1];
    PBDataWriterWriteSubmessage();
  }

  v154 = [(SISchemaClientEvent *)self transcriptShown];

  if (v154)
  {
    v155 = [(SISchemaClientEvent *)self transcriptShown];
    PBDataWriterWriteSubmessage();
  }

  v156 = [(SISchemaClientEvent *)self transcriptTapped];

  v157 = v159;
  if (v156)
  {
    v158 = [(SISchemaClientEvent *)self transcriptTapped];
    PBDataWriterWriteSubmessage();

    v157 = v159;
  }
}

- (void)deleteTranscriptTapped
{
  if (self->_whichEvent_Type == 177)
  {
    self->_whichEvent_Type = 0;
    self->_transcriptTapped = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setTranscriptTapped:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  v79 = 177;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = v4;
}

- (void)deleteTranscriptShown
{
  if (self->_whichEvent_Type == 176)
  {
    self->_whichEvent_Type = 0;
    self->_transcriptShown = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setTranscriptShown:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 176;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = v4;
}

- (void)deleteUeiInvocationTier1
{
  if (self->_whichEvent_Type == 175)
  {
    self->_whichEvent_Type = 0;
    self->_ueiInvocationTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiInvocationTier1:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 175;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = v4;
}

- (void)deleteTypingRequestTrace
{
  if (self->_whichEvent_Type == 174)
  {
    self->_whichEvent_Type = 0;
    self->_typingRequestTrace = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setTypingRequestTrace:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 174;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = v4;
}

- (void)deleteUeiDictationEuclidSpeechAlternativesSelectedTier1
{
  if (self->_whichEvent_Type == 173)
  {
    self->_whichEvent_Type = 0;
    self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiDictationEuclidSpeechAlternativesSelectedTier1:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 173;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = v4;
}

- (void)deleteUeiDictationEuclidSpeechAlternativesSelected
{
  if (self->_whichEvent_Type == 172)
  {
    self->_whichEvent_Type = 0;
    self->_ueiDictationEuclidSpeechAlternativesSelected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiDictationEuclidSpeechAlternativesSelected:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 172;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = v4;
}

- (void)deleteUeiDictationEuclidAlternativesEventTier1
{
  if (self->_whichEvent_Type == 171)
  {
    self->_whichEvent_Type = 0;
    self->_ueiDictationEuclidAlternativesEventTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiDictationEuclidAlternativesEventTier1:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 171;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = v4;
}

- (void)deleteUeiDictationEuclidAlternativesEvent
{
  if (self->_whichEvent_Type == 170)
  {
    self->_whichEvent_Type = 0;
    self->_ueiDictationEuclidAlternativesEvent = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiDictationEuclidAlternativesEvent:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 170;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = v4;
}

- (void)deleteUeiDictationVoiceCommandKeyboardAction
{
  if (self->_whichEvent_Type == 169)
  {
    self->_whichEvent_Type = 0;
    self->_ueiDictationVoiceCommandKeyboardAction = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiDictationVoiceCommandKeyboardAction:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 169;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = v4;
}

- (void)deleteUeiDictationVoiceCommandDisambiguationAction
{
  if (self->_whichEvent_Type == 168)
  {
    self->_whichEvent_Type = 0;
    self->_ueiDictationVoiceCommandDisambiguationAction = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiDictationVoiceCommandDisambiguationAction:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 168;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = v4;
}

- (void)deleteUeiDictationVoiceCommandUndoTapAction
{
  if (self->_whichEvent_Type == 167)
  {
    self->_whichEvent_Type = 0;
    self->_ueiDictationVoiceCommandUndoTapAction = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiDictationVoiceCommandUndoTapAction:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 167;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = v4;
}

- (void)deleteUeiDictationContentEditedTier1
{
  if (self->_whichEvent_Type == 166)
  {
    self->_whichEvent_Type = 0;
    self->_ueiDictationContentEditedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiDictationContentEditedTier1:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 166;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = v4;
}

- (void)deletePreferredAudioRouteChanged
{
  if (self->_whichEvent_Type == 165)
  {
    self->_whichEvent_Type = 0;
    self->_preferredAudioRouteChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setPreferredAudioRouteChanged:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 165;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = v4;
}

- (void)deleteUeiSiriWasUnavailable
{
  if (self->_whichEvent_Type == 164)
  {
    self->_whichEvent_Type = 0;
    self->_ueiSiriWasUnavailable = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiSiriWasUnavailable:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 164;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = v4;
}

- (void)deleteUeiVisionSnippetDismissed
{
  if (self->_whichEvent_Type == 163)
  {
    self->_whichEvent_Type = 0;
    self->_ueiVisionSnippetDismissed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiVisionSnippetDismissed:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 163;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = v4;
}

- (void)deleteUeiSiriCarCommandContext
{
  if (self->_whichEvent_Type == 162)
  {
    self->_whichEvent_Type = 0;
    self->_ueiSiriCarCommandContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiSiriCarCommandContext:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 162;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = v4;
}

- (void)deleteUeiDictationEnablementPromptShown
{
  if (self->_whichEvent_Type == 161)
  {
    self->_whichEvent_Type = 0;
    self->_ueiDictationEnablementPromptShown = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiDictationEnablementPromptShown:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 161;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = v4;
}

- (void)deleteUeiUserBargeInDetected
{
  if (self->_whichEvent_Type == 160)
  {
    self->_whichEvent_Type = 0;
    self->_ueiUserBargeInDetected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiUserBargeInDetected:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 160;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = v4;
}

- (void)deleteUeiDictationAlternativeTextPairsSelected
{
  if (self->_whichEvent_Type == 159)
  {
    self->_whichEvent_Type = 0;
    self->_ueiDictationAlternativeTextPairsSelected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiDictationAlternativeTextPairsSelected:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 159;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = v4;
}

- (void)deleteUufrSelected
{
  if (self->_whichEvent_Type == 158)
  {
    self->_whichEvent_Type = 0;
    self->_uufrSelected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUufrSelected:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 158;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = v4;
}

- (void)deleteDictationAlternativesSelected
{
  if (self->_whichEvent_Type == 157)
  {
    self->_whichEvent_Type = 0;
    self->_dictationAlternativesSelected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDictationAlternativesSelected:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 157;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = v4;
}

- (void)deleteUeiDictationTranscriptionTokenized
{
  if (self->_whichEvent_Type == 156)
  {
    self->_whichEvent_Type = 0;
    self->_ueiDictationTranscriptionTokenized = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiDictationTranscriptionTokenized:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 156;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = v4;
}

- (void)deleteHostPlatformViewDisappearContext
{
  if (self->_whichEvent_Type == 155)
  {
    self->_whichEvent_Type = 0;
    self->_hostPlatformViewDisappearContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setHostPlatformViewDisappearContext:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 155;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = v4;
}

- (void)deleteHostPlatformViewAppearContext
{
  if (self->_whichEvent_Type == 154)
  {
    self->_whichEvent_Type = 0;
    self->_hostPlatformViewAppearContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setHostPlatformViewAppearContext:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 154;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = v4;
}

- (void)deleteUeiDictationToolTipDisplayContext
{
  if (self->_whichEvent_Type == 153)
  {
    self->_whichEvent_Type = 0;
    self->_ueiDictationToolTipDisplayContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiDictationToolTipDisplayContext:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 153;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = v4;
}

- (void)deleteUeiDictationInputModeSwitchContext
{
  if (self->_whichEvent_Type == 152)
  {
    self->_whichEvent_Type = 0;
    self->_ueiDictationInputModeSwitchContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiDictationInputModeSwitchContext:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 152;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = v4;
}

- (void)deleteUeiDictationVoiceCommandExecuted
{
  if (self->_whichEvent_Type == 151)
  {
    self->_whichEvent_Type = 0;
    self->_ueiDictationVoiceCommandExecuted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiDictationVoiceCommandExecuted:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 151;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = v4;
}

- (void)deleteUeiDictationPartialResultUpdated
{
  if (self->_whichEvent_Type == 150)
  {
    self->_whichEvent_Type = 0;
    self->_ueiDictationPartialResultUpdated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiDictationPartialResultUpdated:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 150;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = v4;
}

- (void)deleteUufrShownTier1
{
  if (self->_whichEvent_Type == 148)
  {
    self->_whichEvent_Type = 0;
    self->_uufrShownTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUufrShownTier1:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 148;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = v4;
}

- (void)deleteDictationContentEdited
{
  if (self->_whichEvent_Type == 147)
  {
    self->_whichEvent_Type = 0;
    self->_dictationContentEdited = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDictationContentEdited:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 147;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = v4;
}

- (void)deleteAnnounceCarPlayGlyphSettingToggled
{
  if (self->_whichEvent_Type == 146)
  {
    self->_whichEvent_Type = 0;
    self->_announceCarPlayGlyphSettingToggled = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAnnounceCarPlayGlyphSettingToggled:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 146;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = v4;
}

- (void)deleteAnnounceCarPlayBannerTapped
{
  if (self->_whichEvent_Type == 145)
  {
    self->_whichEvent_Type = 0;
    self->_announceCarPlayBannerTapped = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAnnounceCarPlayBannerTapped:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 145;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = v4;
}

- (void)deleteEngagedAccessoryContext
{
  if (self->_whichEvent_Type == 144)
  {
    self->_whichEvent_Type = 0;
    self->_engagedAccessoryContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setEngagedAccessoryContext:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 144;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = v4;
}

- (void)deleteKeyboardDismissed
{
  if (self->_whichEvent_Type == 143)
  {
    self->_whichEvent_Type = 0;
    self->_keyboardDismissed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setKeyboardDismissed:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 143;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = v4;
}

- (void)deleteTurnMTERequest
{
  if (self->_whichEvent_Type == 142)
  {
    self->_whichEvent_Type = 0;
    self->_turnMTERequest = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setTurnMTERequest:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 142;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = v4;
}

- (void)deletePnrFatalError
{
  if (self->_whichEvent_Type == 141)
  {
    self->_whichEvent_Type = 0;
    self->_pnrFatalError = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setPnrFatalError:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 141;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = v4;
}

- (void)deletePnrSpeechRecognitionSourceContext
{
  if (self->_whichEvent_Type == 140)
  {
    self->_whichEvent_Type = 0;
    self->_pnrSpeechRecognitionSourceContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setPnrSpeechRecognitionSourceContext:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 140;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = v4;
}

- (void)deletePnrTextToSpeechRequestReceived
{
  if (self->_whichEvent_Type == 139)
  {
    self->_whichEvent_Type = 0;
    self->_pnrTextToSpeechRequestReceived = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setPnrTextToSpeechRequestReceived:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 139;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = v4;
}

- (void)deleteUeiUIRenderingContext
{
  if (self->_whichEvent_Type == 138)
  {
    self->_whichEvent_Type = 0;
    self->_ueiUIRenderingContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiUIRenderingContext:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 138;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = v4;
}

- (void)deleteUeiUUFRReady
{
  if (self->_whichEvent_Type == 137)
  {
    self->_whichEvent_Type = 0;
    self->_ueiUUFRReady = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiUUFRReady:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 137;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = v4;
}

- (void)deleteUeiUserSpeakingContext
{
  if (self->_whichEvent_Type == 136)
  {
    self->_whichEvent_Type = 0;
    self->_ueiUserSpeakingContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiUserSpeakingContext:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 136;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = v4;
}

- (void)deleteUeiLaunchContext
{
  if (self->_whichEvent_Type == 135)
  {
    self->_whichEvent_Type = 0;
    self->_ueiLaunchContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiLaunchContext:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 135;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = v4;
}

- (void)deleteAudioStopRecordingStarted
{
  if (self->_whichEvent_Type == 134)
  {
    self->_whichEvent_Type = 0;
    self->_audioStopRecordingStarted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAudioStopRecordingStarted:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 134;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = v4;
}

- (void)deleteUeiRequestCategorization
{
  if (self->_whichEvent_Type == 133)
  {
    self->_whichEvent_Type = 0;
    self->_ueiRequestCategorization = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUeiRequestCategorization:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 133;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = v4;
}

- (void)deleteDeviceLockStateChanged
{
  if (self->_whichEvent_Type == 132)
  {
    self->_whichEvent_Type = 0;
    self->_deviceLockStateChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDeviceLockStateChanged:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 132;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = v4;
}

- (void)deleteUserViewRegionInteraction
{
  if (self->_whichEvent_Type == 131)
  {
    self->_whichEvent_Type = 0;
    self->_userViewRegionInteraction = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUserViewRegionInteraction:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 131;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = v4;
}

- (void)deleteCasinoRelationship
{
  if (self->_whichEvent_Type == 130)
  {
    self->_whichEvent_Type = 0;
    self->_casinoRelationship = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCasinoRelationship:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 130;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = v4;
}

- (void)deleteIntercomMessageRecorded
{
  if (self->_whichEvent_Type == 129)
  {
    self->_whichEvent_Type = 0;
    self->_intercomMessageRecorded = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setIntercomMessageRecorded:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 129;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = v4;
}

- (void)deleteDictationAlternativesViewed
{
  if (self->_whichEvent_Type == 128)
  {
    self->_whichEvent_Type = 0;
    self->_dictationAlternativesViewed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDictationAlternativesViewed:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  self->_whichEvent_Type = (v4 != 0) << 7;
  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = v4;
}

- (void)deleteUufrFatalError
{
  if (self->_whichEvent_Type == 127)
  {
    self->_whichEvent_Type = 0;
    self->_uufrFatalError = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUufrFatalError:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 127;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = v4;
}

- (void)deleteUufrSaid
{
  if (self->_whichEvent_Type == 126)
  {
    self->_whichEvent_Type = 0;
    self->_uufrSaid = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUufrSaid:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 126;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = v4;
}

- (void)deleteUufrShown
{
  if (self->_whichEvent_Type == 125)
  {
    self->_whichEvent_Type = 0;
    self->_uufrShown = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUufrShown:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 125;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  uufrShown = self->_uufrShown;
  self->_uufrShown = v4;
}

- (void)deleteUufrCompletion
{
  if (self->_whichEvent_Type == 124)
  {
    self->_whichEvent_Type = 0;
    self->_uufrCompletion = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUufrCompletion:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 124;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = v4;
}

- (void)deleteCarPlayHeadUnitContext
{
  if (self->_whichEvent_Type == 123)
  {
    self->_whichEvent_Type = 0;
    self->_carPlayHeadUnitContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCarPlayHeadUnitContext:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 123;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = v4;
}

- (void)deleteDictationTranscriptionMetadata
{
  if (self->_whichEvent_Type == 122)
  {
    self->_whichEvent_Type = 0;
    self->_dictationTranscriptionMetadata = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDictationTranscriptionMetadata:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 122;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = v4;
}

- (void)deleteDictationAlternativeSelected
{
  if (self->_whichEvent_Type == 121)
  {
    self->_whichEvent_Type = 0;
    self->_dictationAlternativeSelected = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDictationAlternativeSelected:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 121;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = v4;
}

- (void)deleteDictationEndPointCancel
{
  if (self->_whichEvent_Type == 120)
  {
    self->_whichEvent_Type = 0;
    self->_dictationEndPointCancel = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDictationEndPointCancel:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 120;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = v4;
}

- (void)deleteDictationEndPointStop
{
  if (self->_whichEvent_Type == 119)
  {
    self->_whichEvent_Type = 0;
    self->_dictationEndPointStop = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDictationEndPointStop:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 119;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = v4;
}

- (void)deleteDialogOutput
{
  if (self->_whichEvent_Type == 118)
  {
    self->_whichEvent_Type = 0;
    self->_dialogOutput = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDialogOutput:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 118;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = v4;
}

- (void)deleteClientFlow
{
  if (self->_whichEvent_Type == 117)
  {
    self->_whichEvent_Type = 0;
    self->_clientFlow = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setClientFlow:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 117;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  clientFlow = self->_clientFlow;
  self->_clientFlow = v4;
}

- (void)deleteUiStateTransition
{
  if (self->_whichEvent_Type == 116)
  {
    self->_whichEvent_Type = 0;
    self->_uiStateTransition = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUiStateTransition:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 116;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = v4;
}

- (void)deleteTextToSpeechEnd
{
  if (self->_whichEvent_Type == 115)
  {
    self->_whichEvent_Type = 0;
    self->_textToSpeechEnd = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setTextToSpeechEnd:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 115;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = v4;
}

- (void)deleteTextToSpeechBegin
{
  if (self->_whichEvent_Type == 114)
  {
    self->_whichEvent_Type = 0;
    self->_textToSpeechBegin = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setTextToSpeechBegin:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 114;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = v4;
}

- (void)deleteSpeechTranscription
{
  if (self->_whichEvent_Type == 113)
  {
    self->_whichEvent_Type = 0;
    self->_speechTranscription = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setSpeechTranscription:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 113;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = v4;
}

- (void)deleteUufrPresented
{
  if (self->_whichEvent_Type == 112)
  {
    self->_whichEvent_Type = 0;
    self->_uufrPresented = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setUufrPresented:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 112;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = v4;
}

- (void)deleteSiriCue
{
  if (self->_whichEvent_Type == 111)
  {
    self->_whichEvent_Type = 0;
    self->_siriCue = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setSiriCue:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 111;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  siriCue = self->_siriCue;
  self->_siriCue = v4;
}

- (void)deletePunchOut
{
  if (self->_whichEvent_Type == 109)
  {
    self->_whichEvent_Type = 0;
    self->_punchOut = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setPunchOut:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 109;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  punchOut = self->_punchOut;
  self->_punchOut = v4;
}

- (void)deleteLocation
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_location = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setLocation:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 108;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  location = self->_location;
  self->_location = v4;
}

- (void)deleteInvocation
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_invocation = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setInvocation:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 107;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  invocation = self->_invocation;
  self->_invocation = v4;
}

- (void)deleteDictationContext
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_dictationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDictationContext:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 106;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  dictationContext = self->_dictationContext;
  self->_dictationContext = v4;
}

- (void)deleteDeviceFixedContext
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_deviceFixedContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDeviceFixedContext:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 105;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = v4;
}

- (void)deleteDeviceDynamicContext
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_deviceDynamicContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDeviceDynamicContext:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 104;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = v4;
}

- (void)deleteClientConversationTrace
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_clientConversationTrace = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setClientConversationTrace:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 103;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = v4;
}

- (void)deleteAudioStopRecording
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_audioStopRecording = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAudioStopRecording:(id)a3
{
  v4 = a3;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 102;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = v4;
}

- (void)deleteAudioFirstBufferRecorded
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_audioFirstBufferRecorded = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setAudioFirstBufferRecorded:(id)a3
{
  v4 = a3;
  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = 0;

  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = 0;

  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = 0;

  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = 0;

  dictationContext = self->_dictationContext;
  self->_dictationContext = 0;

  invocation = self->_invocation;
  self->_invocation = 0;

  location = self->_location;
  self->_location = 0;

  punchOut = self->_punchOut;
  self->_punchOut = 0;

  siriCue = self->_siriCue;
  self->_siriCue = 0;

  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = 0;

  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = 0;

  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = 0;

  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = 0;

  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = 0;

  clientFlow = self->_clientFlow;
  self->_clientFlow = 0;

  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = 0;

  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = 0;

  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = 0;

  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = 0;

  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = 0;

  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = 0;

  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = 0;

  uufrShown = self->_uufrShown;
  self->_uufrShown = 0;

  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = 0;

  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = 0;

  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = 0;

  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = 0;

  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = 0;

  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = 0;

  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = 0;

  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = 0;

  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = 0;

  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = 0;

  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = 0;

  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = 0;

  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = 0;

  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = 0;

  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = 0;

  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = 0;

  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = 0;

  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = 0;

  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = 0;

  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = 0;

  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = 0;

  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = 0;

  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = 0;

  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = 0;

  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = 0;

  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = 0;

  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = 0;

  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = 0;

  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = 0;

  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = 0;

  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = 0;

  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = 0;

  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = 0;

  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = 0;

  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = 0;

  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = 0;

  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = 0;

  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = 0;

  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = 0;

  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = 0;

  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = 0;

  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = 0;

  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = 0;

  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = 0;

  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = 0;

  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = 0;

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = 0;

  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = 0;

  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = 0;

  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = 0;

  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = 0;

  v79 = 101;
  if (!v4)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = v4;
}

+ (id)getTagForEventTypeClass:(Class)a3
{
  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F703F0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70408;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70420;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70438;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70450;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70468;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70480;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70498;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F704B0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F704C8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F704E0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F704F8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70510;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70528;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70540;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70558;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70570;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70588;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F705A0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F705B8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F705D0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F705E8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70600;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70618;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70630;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70648;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70660;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70678;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70690;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F706A8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F706C0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F706D8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F706F0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70708;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70720;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70738;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70750;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70768;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70780;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70798;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F707B0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F707C8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F707E0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F707F8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70810;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70828;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70840;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70858;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70870;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70888;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F708A0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F708B8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F708D0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F708E8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70900;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70918;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70930;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70948;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70960;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70978;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70990;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F709A8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F709C0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F709D8;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F709F0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70A08;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70A20;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70A38;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70A50;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70A68;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70A80;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70A98;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70AB0;
  }

  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70AC8;
  }

  if ([(objc_class *)a3 isEqual:objc_opt_class()])
  {
    return &unk_1F1F70AE0;
  }

  return 0;
}

+ (Class)getEventTypeClassForTag:(int)a3
{
  v4 = 0;
  switch(a3)
  {
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
      v4 = objc_opt_class();
      break;
    default:
      break;
  }

  return v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v239.receiver = self;
  v239.super_class = SISchemaClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v239 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(SISchemaClientEvent *)self deleteUufrShownTier1];
    [(SISchemaClientEvent *)self deleteDictationAlternativesSelected];
    [(SISchemaClientEvent *)self deleteUeiDictationAlternativeTextPairsSelected];
    [(SISchemaClientEvent *)self deleteUeiDictationContentEditedTier1];
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidAlternativesEventTier1];
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidSpeechAlternativesSelectedTier1];
    [(SISchemaClientEvent *)self deleteUeiInvocationTier1];
  }

  if ([v4 isConditionSet:4])
  {
    [(SISchemaClientEvent *)self deleteUufrShownTier1];
    [(SISchemaClientEvent *)self deleteDictationAlternativesSelected];
    [(SISchemaClientEvent *)self deleteUufrSelected];
    [(SISchemaClientEvent *)self deleteUeiDictationAlternativeTextPairsSelected];
    [(SISchemaClientEvent *)self deleteUeiDictationContentEditedTier1];
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidAlternativesEventTier1];
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidSpeechAlternativesSelectedTier1];
    [(SISchemaClientEvent *)self deleteUeiInvocationTier1];
  }

  if ([v4 isConditionSet:5])
  {
    [(SISchemaClientEvent *)self deleteUufrShownTier1];
    [(SISchemaClientEvent *)self deleteDictationAlternativesSelected];
    [(SISchemaClientEvent *)self deleteUeiDictationAlternativeTextPairsSelected];
    [(SISchemaClientEvent *)self deleteUeiDictationContentEditedTier1];
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidAlternativesEventTier1];
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidSpeechAlternativesSelectedTier1];
    [(SISchemaClientEvent *)self deleteUeiInvocationTier1];
  }

  if ([v4 isConditionSet:6])
  {
    [(SISchemaClientEvent *)self deleteUufrShownTier1];
    [(SISchemaClientEvent *)self deleteDictationAlternativesSelected];
    [(SISchemaClientEvent *)self deleteUeiDictationAlternativeTextPairsSelected];
    [(SISchemaClientEvent *)self deleteUeiDictationContentEditedTier1];
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidAlternativesEventTier1];
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidSpeechAlternativesSelectedTier1];
    [(SISchemaClientEvent *)self deleteUeiInvocationTier1];
  }

  if ([v4 isConditionSet:7])
  {
    [(SISchemaClientEvent *)self deleteUufrShownTier1];
    [(SISchemaClientEvent *)self deleteDictationAlternativesSelected];
    [(SISchemaClientEvent *)self deleteUeiDictationAlternativeTextPairsSelected];
    [(SISchemaClientEvent *)self deleteUeiDictationContentEditedTier1];
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidAlternativesEventTier1];
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidSpeechAlternativesSelectedTier1];
    [(SISchemaClientEvent *)self deleteUeiInvocationTier1];
  }

  v6 = [(SISchemaClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SISchemaClientEvent *)self deleteEventMetadata];
  }

  v9 = [(SISchemaClientEvent *)self transportMetadata];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SISchemaClientEvent *)self deleteTransportMetadata];
  }

  v12 = [(SISchemaClientEvent *)self audioFirstBufferRecorded];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(SISchemaClientEvent *)self deleteAudioFirstBufferRecorded];
  }

  v15 = [(SISchemaClientEvent *)self audioStopRecording];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(SISchemaClientEvent *)self deleteAudioStopRecording];
  }

  v18 = [(SISchemaClientEvent *)self clientConversationTrace];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(SISchemaClientEvent *)self deleteClientConversationTrace];
  }

  v21 = [(SISchemaClientEvent *)self deviceDynamicContext];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(SISchemaClientEvent *)self deleteDeviceDynamicContext];
  }

  v24 = [(SISchemaClientEvent *)self deviceFixedContext];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(SISchemaClientEvent *)self deleteDeviceFixedContext];
  }

  v27 = [(SISchemaClientEvent *)self dictationContext];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(SISchemaClientEvent *)self deleteDictationContext];
  }

  v30 = [(SISchemaClientEvent *)self invocation];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(SISchemaClientEvent *)self deleteInvocation];
  }

  v33 = [(SISchemaClientEvent *)self location];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(SISchemaClientEvent *)self deleteLocation];
  }

  v36 = [(SISchemaClientEvent *)self punchOut];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(SISchemaClientEvent *)self deletePunchOut];
  }

  v39 = [(SISchemaClientEvent *)self siriCue];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(SISchemaClientEvent *)self deleteSiriCue];
  }

  v42 = [(SISchemaClientEvent *)self uufrPresented];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
  {
    [(SISchemaClientEvent *)self deleteUufrPresented];
  }

  v45 = [(SISchemaClientEvent *)self speechTranscription];
  v46 = [v45 applySensitiveConditionsPolicy:v4];
  v47 = [v46 suppressMessage];

  if (v47)
  {
    [(SISchemaClientEvent *)self deleteSpeechTranscription];
  }

  v48 = [(SISchemaClientEvent *)self textToSpeechBegin];
  v49 = [v48 applySensitiveConditionsPolicy:v4];
  v50 = [v49 suppressMessage];

  if (v50)
  {
    [(SISchemaClientEvent *)self deleteTextToSpeechBegin];
  }

  v51 = [(SISchemaClientEvent *)self textToSpeechEnd];
  v52 = [v51 applySensitiveConditionsPolicy:v4];
  v53 = [v52 suppressMessage];

  if (v53)
  {
    [(SISchemaClientEvent *)self deleteTextToSpeechEnd];
  }

  v54 = [(SISchemaClientEvent *)self uiStateTransition];
  v55 = [v54 applySensitiveConditionsPolicy:v4];
  v56 = [v55 suppressMessage];

  if (v56)
  {
    [(SISchemaClientEvent *)self deleteUiStateTransition];
  }

  v57 = [(SISchemaClientEvent *)self clientFlow];
  v58 = [v57 applySensitiveConditionsPolicy:v4];
  v59 = [v58 suppressMessage];

  if (v59)
  {
    [(SISchemaClientEvent *)self deleteClientFlow];
  }

  v60 = [(SISchemaClientEvent *)self dialogOutput];
  v61 = [v60 applySensitiveConditionsPolicy:v4];
  v62 = [v61 suppressMessage];

  if (v62)
  {
    [(SISchemaClientEvent *)self deleteDialogOutput];
  }

  v63 = [(SISchemaClientEvent *)self dictationEndPointStop];
  v64 = [v63 applySensitiveConditionsPolicy:v4];
  v65 = [v64 suppressMessage];

  if (v65)
  {
    [(SISchemaClientEvent *)self deleteDictationEndPointStop];
  }

  v66 = [(SISchemaClientEvent *)self dictationEndPointCancel];
  v67 = [v66 applySensitiveConditionsPolicy:v4];
  v68 = [v67 suppressMessage];

  if (v68)
  {
    [(SISchemaClientEvent *)self deleteDictationEndPointCancel];
  }

  v69 = [(SISchemaClientEvent *)self dictationAlternativeSelected];
  v70 = [v69 applySensitiveConditionsPolicy:v4];
  v71 = [v70 suppressMessage];

  if (v71)
  {
    [(SISchemaClientEvent *)self deleteDictationAlternativeSelected];
  }

  v72 = [(SISchemaClientEvent *)self dictationTranscriptionMetadata];
  v73 = [v72 applySensitiveConditionsPolicy:v4];
  v74 = [v73 suppressMessage];

  if (v74)
  {
    [(SISchemaClientEvent *)self deleteDictationTranscriptionMetadata];
  }

  v75 = [(SISchemaClientEvent *)self carPlayHeadUnitContext];
  v76 = [v75 applySensitiveConditionsPolicy:v4];
  v77 = [v76 suppressMessage];

  if (v77)
  {
    [(SISchemaClientEvent *)self deleteCarPlayHeadUnitContext];
  }

  v78 = [(SISchemaClientEvent *)self uufrCompletion];
  v79 = [v78 applySensitiveConditionsPolicy:v4];
  v80 = [v79 suppressMessage];

  if (v80)
  {
    [(SISchemaClientEvent *)self deleteUufrCompletion];
  }

  v81 = [(SISchemaClientEvent *)self uufrShown];
  v82 = [v81 applySensitiveConditionsPolicy:v4];
  v83 = [v82 suppressMessage];

  if (v83)
  {
    [(SISchemaClientEvent *)self deleteUufrShown];
  }

  v84 = [(SISchemaClientEvent *)self uufrSaid];
  v85 = [v84 applySensitiveConditionsPolicy:v4];
  v86 = [v85 suppressMessage];

  if (v86)
  {
    [(SISchemaClientEvent *)self deleteUufrSaid];
  }

  v87 = [(SISchemaClientEvent *)self uufrFatalError];
  v88 = [v87 applySensitiveConditionsPolicy:v4];
  v89 = [v88 suppressMessage];

  if (v89)
  {
    [(SISchemaClientEvent *)self deleteUufrFatalError];
  }

  v90 = [(SISchemaClientEvent *)self dictationAlternativesViewed];
  v91 = [v90 applySensitiveConditionsPolicy:v4];
  v92 = [v91 suppressMessage];

  if (v92)
  {
    [(SISchemaClientEvent *)self deleteDictationAlternativesViewed];
  }

  v93 = [(SISchemaClientEvent *)self intercomMessageRecorded];
  v94 = [v93 applySensitiveConditionsPolicy:v4];
  v95 = [v94 suppressMessage];

  if (v95)
  {
    [(SISchemaClientEvent *)self deleteIntercomMessageRecorded];
  }

  v96 = [(SISchemaClientEvent *)self casinoRelationship];
  v97 = [v96 applySensitiveConditionsPolicy:v4];
  v98 = [v97 suppressMessage];

  if (v98)
  {
    [(SISchemaClientEvent *)self deleteCasinoRelationship];
  }

  v99 = [(SISchemaClientEvent *)self userViewRegionInteraction];
  v100 = [v99 applySensitiveConditionsPolicy:v4];
  v101 = [v100 suppressMessage];

  if (v101)
  {
    [(SISchemaClientEvent *)self deleteUserViewRegionInteraction];
  }

  v102 = [(SISchemaClientEvent *)self deviceLockStateChanged];
  v103 = [v102 applySensitiveConditionsPolicy:v4];
  v104 = [v103 suppressMessage];

  if (v104)
  {
    [(SISchemaClientEvent *)self deleteDeviceLockStateChanged];
  }

  v105 = [(SISchemaClientEvent *)self ueiRequestCategorization];
  v106 = [v105 applySensitiveConditionsPolicy:v4];
  v107 = [v106 suppressMessage];

  if (v107)
  {
    [(SISchemaClientEvent *)self deleteUeiRequestCategorization];
  }

  v108 = [(SISchemaClientEvent *)self audioStopRecordingStarted];
  v109 = [v108 applySensitiveConditionsPolicy:v4];
  v110 = [v109 suppressMessage];

  if (v110)
  {
    [(SISchemaClientEvent *)self deleteAudioStopRecordingStarted];
  }

  v111 = [(SISchemaClientEvent *)self ueiLaunchContext];
  v112 = [v111 applySensitiveConditionsPolicy:v4];
  v113 = [v112 suppressMessage];

  if (v113)
  {
    [(SISchemaClientEvent *)self deleteUeiLaunchContext];
  }

  v114 = [(SISchemaClientEvent *)self ueiUserSpeakingContext];
  v115 = [v114 applySensitiveConditionsPolicy:v4];
  v116 = [v115 suppressMessage];

  if (v116)
  {
    [(SISchemaClientEvent *)self deleteUeiUserSpeakingContext];
  }

  v117 = [(SISchemaClientEvent *)self ueiUUFRReady];
  v118 = [v117 applySensitiveConditionsPolicy:v4];
  v119 = [v118 suppressMessage];

  if (v119)
  {
    [(SISchemaClientEvent *)self deleteUeiUUFRReady];
  }

  v120 = [(SISchemaClientEvent *)self ueiUIRenderingContext];
  v121 = [v120 applySensitiveConditionsPolicy:v4];
  v122 = [v121 suppressMessage];

  if (v122)
  {
    [(SISchemaClientEvent *)self deleteUeiUIRenderingContext];
  }

  v123 = [(SISchemaClientEvent *)self pnrTextToSpeechRequestReceived];
  v124 = [v123 applySensitiveConditionsPolicy:v4];
  v125 = [v124 suppressMessage];

  if (v125)
  {
    [(SISchemaClientEvent *)self deletePnrTextToSpeechRequestReceived];
  }

  v126 = [(SISchemaClientEvent *)self pnrSpeechRecognitionSourceContext];
  v127 = [v126 applySensitiveConditionsPolicy:v4];
  v128 = [v127 suppressMessage];

  if (v128)
  {
    [(SISchemaClientEvent *)self deletePnrSpeechRecognitionSourceContext];
  }

  v129 = [(SISchemaClientEvent *)self pnrFatalError];
  v130 = [v129 applySensitiveConditionsPolicy:v4];
  v131 = [v130 suppressMessage];

  if (v131)
  {
    [(SISchemaClientEvent *)self deletePnrFatalError];
  }

  v132 = [(SISchemaClientEvent *)self turnMTERequest];
  v133 = [v132 applySensitiveConditionsPolicy:v4];
  v134 = [v133 suppressMessage];

  if (v134)
  {
    [(SISchemaClientEvent *)self deleteTurnMTERequest];
  }

  v135 = [(SISchemaClientEvent *)self keyboardDismissed];
  v136 = [v135 applySensitiveConditionsPolicy:v4];
  v137 = [v136 suppressMessage];

  if (v137)
  {
    [(SISchemaClientEvent *)self deleteKeyboardDismissed];
  }

  v138 = [(SISchemaClientEvent *)self engagedAccessoryContext];
  v139 = [v138 applySensitiveConditionsPolicy:v4];
  v140 = [v139 suppressMessage];

  if (v140)
  {
    [(SISchemaClientEvent *)self deleteEngagedAccessoryContext];
  }

  v141 = [(SISchemaClientEvent *)self announceCarPlayBannerTapped];
  v142 = [v141 applySensitiveConditionsPolicy:v4];
  v143 = [v142 suppressMessage];

  if (v143)
  {
    [(SISchemaClientEvent *)self deleteAnnounceCarPlayBannerTapped];
  }

  v144 = [(SISchemaClientEvent *)self announceCarPlayGlyphSettingToggled];
  v145 = [v144 applySensitiveConditionsPolicy:v4];
  v146 = [v145 suppressMessage];

  if (v146)
  {
    [(SISchemaClientEvent *)self deleteAnnounceCarPlayGlyphSettingToggled];
  }

  v147 = [(SISchemaClientEvent *)self dictationContentEdited];
  v148 = [v147 applySensitiveConditionsPolicy:v4];
  v149 = [v148 suppressMessage];

  if (v149)
  {
    [(SISchemaClientEvent *)self deleteDictationContentEdited];
  }

  v150 = [(SISchemaClientEvent *)self uufrShownTier1];
  v151 = [v150 applySensitiveConditionsPolicy:v4];
  v152 = [v151 suppressMessage];

  if (v152)
  {
    [(SISchemaClientEvent *)self deleteUufrShownTier1];
  }

  v153 = [(SISchemaClientEvent *)self ueiDictationPartialResultUpdated];
  v154 = [v153 applySensitiveConditionsPolicy:v4];
  v155 = [v154 suppressMessage];

  if (v155)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationPartialResultUpdated];
  }

  v156 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandExecuted];
  v157 = [v156 applySensitiveConditionsPolicy:v4];
  v158 = [v157 suppressMessage];

  if (v158)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationVoiceCommandExecuted];
  }

  v159 = [(SISchemaClientEvent *)self ueiDictationInputModeSwitchContext];
  v160 = [v159 applySensitiveConditionsPolicy:v4];
  v161 = [v160 suppressMessage];

  if (v161)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationInputModeSwitchContext];
  }

  v162 = [(SISchemaClientEvent *)self ueiDictationToolTipDisplayContext];
  v163 = [v162 applySensitiveConditionsPolicy:v4];
  v164 = [v163 suppressMessage];

  if (v164)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationToolTipDisplayContext];
  }

  v165 = [(SISchemaClientEvent *)self hostPlatformViewAppearContext];
  v166 = [v165 applySensitiveConditionsPolicy:v4];
  v167 = [v166 suppressMessage];

  if (v167)
  {
    [(SISchemaClientEvent *)self deleteHostPlatformViewAppearContext];
  }

  v168 = [(SISchemaClientEvent *)self hostPlatformViewDisappearContext];
  v169 = [v168 applySensitiveConditionsPolicy:v4];
  v170 = [v169 suppressMessage];

  if (v170)
  {
    [(SISchemaClientEvent *)self deleteHostPlatformViewDisappearContext];
  }

  v171 = [(SISchemaClientEvent *)self ueiDictationTranscriptionTokenized];
  v172 = [v171 applySensitiveConditionsPolicy:v4];
  v173 = [v172 suppressMessage];

  if (v173)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationTranscriptionTokenized];
  }

  v174 = [(SISchemaClientEvent *)self dictationAlternativesSelected];
  v175 = [v174 applySensitiveConditionsPolicy:v4];
  v176 = [v175 suppressMessage];

  if (v176)
  {
    [(SISchemaClientEvent *)self deleteDictationAlternativesSelected];
  }

  v177 = [(SISchemaClientEvent *)self uufrSelected];
  v178 = [v177 applySensitiveConditionsPolicy:v4];
  v179 = [v178 suppressMessage];

  if (v179)
  {
    [(SISchemaClientEvent *)self deleteUufrSelected];
  }

  v180 = [(SISchemaClientEvent *)self ueiDictationAlternativeTextPairsSelected];
  v181 = [v180 applySensitiveConditionsPolicy:v4];
  v182 = [v181 suppressMessage];

  if (v182)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationAlternativeTextPairsSelected];
  }

  v183 = [(SISchemaClientEvent *)self ueiUserBargeInDetected];
  v184 = [v183 applySensitiveConditionsPolicy:v4];
  v185 = [v184 suppressMessage];

  if (v185)
  {
    [(SISchemaClientEvent *)self deleteUeiUserBargeInDetected];
  }

  v186 = [(SISchemaClientEvent *)self ueiDictationEnablementPromptShown];
  v187 = [v186 applySensitiveConditionsPolicy:v4];
  v188 = [v187 suppressMessage];

  if (v188)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationEnablementPromptShown];
  }

  v189 = [(SISchemaClientEvent *)self ueiSiriCarCommandContext];
  v190 = [v189 applySensitiveConditionsPolicy:v4];
  v191 = [v190 suppressMessage];

  if (v191)
  {
    [(SISchemaClientEvent *)self deleteUeiSiriCarCommandContext];
  }

  v192 = [(SISchemaClientEvent *)self ueiVisionSnippetDismissed];
  v193 = [v192 applySensitiveConditionsPolicy:v4];
  v194 = [v193 suppressMessage];

  if (v194)
  {
    [(SISchemaClientEvent *)self deleteUeiVisionSnippetDismissed];
  }

  v195 = [(SISchemaClientEvent *)self ueiSiriWasUnavailable];
  v196 = [v195 applySensitiveConditionsPolicy:v4];
  v197 = [v196 suppressMessage];

  if (v197)
  {
    [(SISchemaClientEvent *)self deleteUeiSiriWasUnavailable];
  }

  v198 = [(SISchemaClientEvent *)self preferredAudioRouteChanged];
  v199 = [v198 applySensitiveConditionsPolicy:v4];
  v200 = [v199 suppressMessage];

  if (v200)
  {
    [(SISchemaClientEvent *)self deletePreferredAudioRouteChanged];
  }

  v201 = [(SISchemaClientEvent *)self ueiDictationContentEditedTier1];
  v202 = [v201 applySensitiveConditionsPolicy:v4];
  v203 = [v202 suppressMessage];

  if (v203)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationContentEditedTier1];
  }

  v204 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandUndoTapAction];
  v205 = [v204 applySensitiveConditionsPolicy:v4];
  v206 = [v205 suppressMessage];

  if (v206)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationVoiceCommandUndoTapAction];
  }

  v207 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandDisambiguationAction];
  v208 = [v207 applySensitiveConditionsPolicy:v4];
  v209 = [v208 suppressMessage];

  if (v209)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationVoiceCommandDisambiguationAction];
  }

  v210 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandKeyboardAction];
  v211 = [v210 applySensitiveConditionsPolicy:v4];
  v212 = [v211 suppressMessage];

  if (v212)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationVoiceCommandKeyboardAction];
  }

  v213 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEvent];
  v214 = [v213 applySensitiveConditionsPolicy:v4];
  v215 = [v214 suppressMessage];

  if (v215)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidAlternativesEvent];
  }

  v216 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEventTier1];
  v217 = [v216 applySensitiveConditionsPolicy:v4];
  v218 = [v217 suppressMessage];

  if (v218)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidAlternativesEventTier1];
  }

  v219 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelected];
  v220 = [v219 applySensitiveConditionsPolicy:v4];
  v221 = [v220 suppressMessage];

  if (v221)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidSpeechAlternativesSelected];
  }

  v222 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelectedTier1];
  v223 = [v222 applySensitiveConditionsPolicy:v4];
  v224 = [v223 suppressMessage];

  if (v224)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidSpeechAlternativesSelectedTier1];
  }

  v225 = [(SISchemaClientEvent *)self typingRequestTrace];
  v226 = [v225 applySensitiveConditionsPolicy:v4];
  v227 = [v226 suppressMessage];

  if (v227)
  {
    [(SISchemaClientEvent *)self deleteTypingRequestTrace];
  }

  v228 = [(SISchemaClientEvent *)self ueiInvocationTier1];
  v229 = [v228 applySensitiveConditionsPolicy:v4];
  v230 = [v229 suppressMessage];

  if (v230)
  {
    [(SISchemaClientEvent *)self deleteUeiInvocationTier1];
  }

  v231 = [(SISchemaClientEvent *)self transcriptShown];
  v232 = [v231 applySensitiveConditionsPolicy:v4];
  v233 = [v232 suppressMessage];

  if (v233)
  {
    [(SISchemaClientEvent *)self deleteTranscriptShown];
  }

  v234 = [(SISchemaClientEvent *)self transcriptTapped];
  v235 = [v234 applySensitiveConditionsPolicy:v4];
  v236 = [v235 suppressMessage];

  if (v236)
  {
    [(SISchemaClientEvent *)self deleteTranscriptTapped];
  }

  v237 = v5;

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
  v3 = [SISchemaUUID alloc];
  v4 = [(SISchemaClientEvent *)self eventMetadata];
  v5 = [v4 turnID];
  v6 = [(SISchemaUUID *)v3 initWithBytesAsData:v5];

  if (v6)
  {
    v7 = [(SISchemaUUID *)v6 value];
    if (v7)
    {
      v8 = [(SISchemaUUID *)v6 value];
      v9 = [v8 length] != 0;

      LODWORD(v7) = 2 * v9;
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  return v7;
}

- (id)getComponentId
{
  v3 = [SISchemaUUID alloc];
  v4 = [(SISchemaClientEvent *)self eventMetadata];
  v5 = [v4 turnID];
  v6 = [(SISchemaUUID *)v3 initWithBytesAsData:v5];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [(SISchemaUUID *)v6 value];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [(SISchemaUUID *)v6 value];
  v9 = [v8 length];

  if (v9)
  {
    v7 = v6;
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

LABEL_6:

  return v7;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(SISchemaClientEvent *)self whichEvent_Type];
  v4 = 0;
  v5 = v3 - 101;
  v6 = &OBJC_IVAR___SISchemaClientEvent__audioFirstBufferRecorded;
  switch(v5)
  {
    case 0uLL:
      goto LABEL_76;
    case 1uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__audioStopRecording;
      goto LABEL_76;
    case 2uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__clientConversationTrace;
      goto LABEL_76;
    case 3uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__deviceDynamicContext;
      goto LABEL_76;
    case 4uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__deviceFixedContext;
      goto LABEL_76;
    case 5uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__dictationContext;
      goto LABEL_76;
    case 6uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__invocation;
      goto LABEL_76;
    case 7uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__location;
      goto LABEL_76;
    case 8uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__punchOut;
      goto LABEL_76;
    case 0xAuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__siriCue;
      goto LABEL_76;
    case 0xBuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__uufrPresented;
      goto LABEL_76;
    case 0xCuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__speechTranscription;
      goto LABEL_76;
    case 0xDuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__textToSpeechBegin;
      goto LABEL_76;
    case 0xEuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__textToSpeechEnd;
      goto LABEL_76;
    case 0xFuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__uiStateTransition;
      goto LABEL_76;
    case 0x10uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__clientFlow;
      goto LABEL_76;
    case 0x11uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__dialogOutput;
      goto LABEL_76;
    case 0x12uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__dictationEndPointStop;
      goto LABEL_76;
    case 0x13uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__dictationEndPointCancel;
      goto LABEL_76;
    case 0x14uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__dictationAlternativeSelected;
      goto LABEL_76;
    case 0x15uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__dictationTranscriptionMetadata;
      goto LABEL_76;
    case 0x16uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__carPlayHeadUnitContext;
      goto LABEL_76;
    case 0x17uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__uufrCompletion;
      goto LABEL_76;
    case 0x18uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__uufrShown;
      goto LABEL_76;
    case 0x19uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__uufrSaid;
      goto LABEL_76;
    case 0x1AuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__uufrFatalError;
      goto LABEL_76;
    case 0x1BuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__dictationAlternativesViewed;
      goto LABEL_76;
    case 0x1CuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__intercomMessageRecorded;
      goto LABEL_76;
    case 0x1DuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__casinoRelationship;
      goto LABEL_76;
    case 0x1EuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__userViewRegionInteraction;
      goto LABEL_76;
    case 0x1FuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__deviceLockStateChanged;
      goto LABEL_76;
    case 0x20uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiRequestCategorization;
      goto LABEL_76;
    case 0x21uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__audioStopRecordingStarted;
      goto LABEL_76;
    case 0x22uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiLaunchContext;
      goto LABEL_76;
    case 0x23uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiUserSpeakingContext;
      goto LABEL_76;
    case 0x24uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiUUFRReady;
      goto LABEL_76;
    case 0x25uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiUIRenderingContext;
      goto LABEL_76;
    case 0x26uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__pnrTextToSpeechRequestReceived;
      goto LABEL_76;
    case 0x27uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__pnrSpeechRecognitionSourceContext;
      goto LABEL_76;
    case 0x28uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__pnrFatalError;
      goto LABEL_76;
    case 0x29uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__turnMTERequest;
      goto LABEL_76;
    case 0x2AuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__keyboardDismissed;
      goto LABEL_76;
    case 0x2BuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__engagedAccessoryContext;
      goto LABEL_76;
    case 0x2CuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__announceCarPlayBannerTapped;
      goto LABEL_76;
    case 0x2DuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__announceCarPlayGlyphSettingToggled;
      goto LABEL_76;
    case 0x2EuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__dictationContentEdited;
      goto LABEL_76;
    case 0x2FuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__uufrShownTier1;
      goto LABEL_76;
    case 0x31uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationPartialResultUpdated;
      goto LABEL_76;
    case 0x32uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationVoiceCommandExecuted;
      goto LABEL_76;
    case 0x33uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationInputModeSwitchContext;
      goto LABEL_76;
    case 0x34uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationToolTipDisplayContext;
      goto LABEL_76;
    case 0x35uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__hostPlatformViewAppearContext;
      goto LABEL_76;
    case 0x36uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__hostPlatformViewDisappearContext;
      goto LABEL_76;
    case 0x37uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationTranscriptionTokenized;
      goto LABEL_76;
    case 0x38uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__dictationAlternativesSelected;
      goto LABEL_76;
    case 0x39uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__uufrSelected;
      goto LABEL_76;
    case 0x3AuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationAlternativeTextPairsSelected;
      goto LABEL_76;
    case 0x3BuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiUserBargeInDetected;
      goto LABEL_76;
    case 0x3CuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationEnablementPromptShown;
      goto LABEL_76;
    case 0x3DuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiSiriCarCommandContext;
      goto LABEL_76;
    case 0x3EuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiVisionSnippetDismissed;
      goto LABEL_76;
    case 0x3FuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiSiriWasUnavailable;
      goto LABEL_76;
    case 0x40uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__preferredAudioRouteChanged;
      goto LABEL_76;
    case 0x41uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationContentEditedTier1;
      goto LABEL_76;
    case 0x42uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationVoiceCommandUndoTapAction;
      goto LABEL_76;
    case 0x43uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationVoiceCommandDisambiguationAction;
      goto LABEL_76;
    case 0x44uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationVoiceCommandKeyboardAction;
      goto LABEL_76;
    case 0x45uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationEuclidAlternativesEvent;
      goto LABEL_76;
    case 0x46uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationEuclidAlternativesEventTier1;
      goto LABEL_76;
    case 0x47uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationEuclidSpeechAlternativesSelected;
      goto LABEL_76;
    case 0x48uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiDictationEuclidSpeechAlternativesSelectedTier1;
      goto LABEL_76;
    case 0x49uLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__typingRequestTrace;
      goto LABEL_76;
    case 0x4AuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__ueiInvocationTier1;
      goto LABEL_76;
    case 0x4BuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__transcriptShown;
      goto LABEL_76;
    case 0x4CuLL:
      v6 = &OBJC_IVAR___SISchemaClientEvent__transcriptTapped;
LABEL_76:
      v4 = *(&self->super.super.super.super.isa + *v6);
      break;
    default:
      break;
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 0x4C)
  {
    return 0;
  }

  else
  {
    return off_1E78E9240[a3 - 101];
  }
}

@end