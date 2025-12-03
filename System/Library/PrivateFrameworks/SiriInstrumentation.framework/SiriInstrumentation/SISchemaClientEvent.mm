@interface SISchemaClientEvent
+ (Class)getEventTypeClassForTag:(int)tag;
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
+ (id)getTagForEventTypeClass:(Class)class;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaAnnounceCarPlayBannerTapped)announceCarPlayBannerTapped;
- (SISchemaAnnounceCarPlayGlyphSettingToggled)announceCarPlayGlyphSettingToggled;
- (SISchemaAudioFirstBufferRecorded)audioFirstBufferRecorded;
- (SISchemaAudioStopRecording)audioStopRecording;
- (SISchemaAudioStopRecordingStarted)audioStopRecordingStarted;
- (SISchemaBluetoothCarPreferredAudioRouteChanged)preferredAudioRouteChanged;
- (SISchemaCarPlayHeadUnitContext)carPlayHeadUnitContext;
- (SISchemaCasinoRelationship)casinoRelationship;
- (SISchemaClientEvent)initWithDictionary:(id)dictionary;
- (SISchemaClientEvent)initWithJSON:(id)n;
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
- (id)applySensitiveConditionsPolicy:(id)policy;
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
- (void)setAnnounceCarPlayBannerTapped:(id)tapped;
- (void)setAnnounceCarPlayGlyphSettingToggled:(id)toggled;
- (void)setAudioFirstBufferRecorded:(id)recorded;
- (void)setAudioStopRecording:(id)recording;
- (void)setAudioStopRecordingStarted:(id)started;
- (void)setCarPlayHeadUnitContext:(id)context;
- (void)setCasinoRelationship:(id)relationship;
- (void)setClientConversationTrace:(id)trace;
- (void)setClientFlow:(id)flow;
- (void)setDeviceDynamicContext:(id)context;
- (void)setDeviceFixedContext:(id)context;
- (void)setDeviceLockStateChanged:(id)changed;
- (void)setDialogOutput:(id)output;
- (void)setDictationAlternativeSelected:(id)selected;
- (void)setDictationAlternativesSelected:(id)selected;
- (void)setDictationAlternativesViewed:(id)viewed;
- (void)setDictationContentEdited:(id)edited;
- (void)setDictationContext:(id)context;
- (void)setDictationEndPointCancel:(id)cancel;
- (void)setDictationEndPointStop:(id)stop;
- (void)setDictationTranscriptionMetadata:(id)metadata;
- (void)setEngagedAccessoryContext:(id)context;
- (void)setEventType:(id)type;
- (void)setHostPlatformViewAppearContext:(id)context;
- (void)setHostPlatformViewDisappearContext:(id)context;
- (void)setIntercomMessageRecorded:(id)recorded;
- (void)setInvocation:(id)invocation;
- (void)setKeyboardDismissed:(id)dismissed;
- (void)setLocation:(id)location;
- (void)setPnrFatalError:(id)error;
- (void)setPnrSpeechRecognitionSourceContext:(id)context;
- (void)setPnrTextToSpeechRequestReceived:(id)received;
- (void)setPreferredAudioRouteChanged:(id)changed;
- (void)setPunchOut:(id)out;
- (void)setSiriCue:(id)cue;
- (void)setSpeechTranscription:(id)transcription;
- (void)setTextToSpeechBegin:(id)begin;
- (void)setTextToSpeechEnd:(id)end;
- (void)setTranscriptShown:(id)shown;
- (void)setTranscriptTapped:(id)tapped;
- (void)setTurnMTERequest:(id)request;
- (void)setTypingRequestTrace:(id)trace;
- (void)setUeiDictationAlternativeTextPairsSelected:(id)selected;
- (void)setUeiDictationContentEditedTier1:(id)tier1;
- (void)setUeiDictationEnablementPromptShown:(id)shown;
- (void)setUeiDictationEuclidAlternativesEvent:(id)event;
- (void)setUeiDictationEuclidAlternativesEventTier1:(id)tier1;
- (void)setUeiDictationEuclidSpeechAlternativesSelected:(id)selected;
- (void)setUeiDictationEuclidSpeechAlternativesSelectedTier1:(id)tier1;
- (void)setUeiDictationInputModeSwitchContext:(id)context;
- (void)setUeiDictationPartialResultUpdated:(id)updated;
- (void)setUeiDictationToolTipDisplayContext:(id)context;
- (void)setUeiDictationTranscriptionTokenized:(id)tokenized;
- (void)setUeiDictationVoiceCommandDisambiguationAction:(id)action;
- (void)setUeiDictationVoiceCommandExecuted:(id)executed;
- (void)setUeiDictationVoiceCommandKeyboardAction:(id)action;
- (void)setUeiDictationVoiceCommandUndoTapAction:(id)action;
- (void)setUeiInvocationTier1:(id)tier1;
- (void)setUeiLaunchContext:(id)context;
- (void)setUeiRequestCategorization:(id)categorization;
- (void)setUeiSiriCarCommandContext:(id)context;
- (void)setUeiSiriWasUnavailable:(id)unavailable;
- (void)setUeiUIRenderingContext:(id)context;
- (void)setUeiUUFRReady:(id)ready;
- (void)setUeiUserBargeInDetected:(id)detected;
- (void)setUeiUserSpeakingContext:(id)context;
- (void)setUeiVisionSnippetDismissed:(id)dismissed;
- (void)setUiStateTransition:(id)transition;
- (void)setUserViewRegionInteraction:(id)interaction;
- (void)setUufrCompletion:(id)completion;
- (void)setUufrFatalError:(id)error;
- (void)setUufrPresented:(id)presented;
- (void)setUufrSaid:(id)said;
- (void)setUufrSelected:(id)selected;
- (void)setUufrShown:(id)shown;
- (void)setUufrShownTier1:(id)tier1;
- (void)writeTo:(id)to;
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
  whichEvent_Type = [(SISchemaClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 0x4C)
  {
    return @"com.apple.aiml.siri.uei.ClientEvent";
  }

  else
  {
    return off_1E78E3A00[whichEvent_Type - 101];
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

- (void)setEventType:(id)type
{
  typeCopy = type;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SISchemaClientEvent *)self setAudioFirstBufferRecorded:typeCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SISchemaClientEvent *)self setAudioStopRecording:typeCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SISchemaClientEvent *)self setClientConversationTrace:typeCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SISchemaClientEvent *)self setDeviceDynamicContext:typeCopy];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(SISchemaClientEvent *)self setDeviceFixedContext:typeCopy];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(SISchemaClientEvent *)self setDictationContext:typeCopy];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(SISchemaClientEvent *)self setInvocation:typeCopy];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [(SISchemaClientEvent *)self setLocation:typeCopy];
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [(SISchemaClientEvent *)self setPunchOut:typeCopy];
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [(SISchemaClientEvent *)self setSiriCue:typeCopy];
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [(SISchemaClientEvent *)self setUufrPresented:typeCopy];
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          [(SISchemaClientEvent *)self setSpeechTranscription:typeCopy];
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            [(SISchemaClientEvent *)self setTextToSpeechBegin:typeCopy];
                          }

                          else
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              [(SISchemaClientEvent *)self setTextToSpeechEnd:typeCopy];
                            }

                            else
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                [(SISchemaClientEvent *)self setUiStateTransition:typeCopy];
                              }

                              else
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  [(SISchemaClientEvent *)self setClientFlow:typeCopy];
                                }

                                else
                                {
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    [(SISchemaClientEvent *)self setDialogOutput:typeCopy];
                                  }

                                  else
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      [(SISchemaClientEvent *)self setDictationEndPointStop:typeCopy];
                                    }

                                    else
                                    {
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        [(SISchemaClientEvent *)self setDictationEndPointCancel:typeCopy];
                                      }

                                      else
                                      {
                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          [(SISchemaClientEvent *)self setDictationAlternativeSelected:typeCopy];
                                        }

                                        else
                                        {
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            [(SISchemaClientEvent *)self setDictationTranscriptionMetadata:typeCopy];
                                          }

                                          else
                                          {
                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              [(SISchemaClientEvent *)self setCarPlayHeadUnitContext:typeCopy];
                                            }

                                            else
                                            {
                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                [(SISchemaClientEvent *)self setUufrCompletion:typeCopy];
                                              }

                                              else
                                              {
                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  [(SISchemaClientEvent *)self setUufrShown:typeCopy];
                                                }

                                                else
                                                {
                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    [(SISchemaClientEvent *)self setUufrSaid:typeCopy];
                                                  }

                                                  else
                                                  {
                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      [(SISchemaClientEvent *)self setUufrFatalError:typeCopy];
                                                    }

                                                    else
                                                    {
                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        [(SISchemaClientEvent *)self setDictationAlternativesViewed:typeCopy];
                                                      }

                                                      else
                                                      {
                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          [(SISchemaClientEvent *)self setIntercomMessageRecorded:typeCopy];
                                                        }

                                                        else
                                                        {
                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            [(SISchemaClientEvent *)self setCasinoRelationship:typeCopy];
                                                          }

                                                          else
                                                          {
                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              [(SISchemaClientEvent *)self setUserViewRegionInteraction:typeCopy];
                                                            }

                                                            else
                                                            {
                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                [(SISchemaClientEvent *)self setDeviceLockStateChanged:typeCopy];
                                                              }

                                                              else
                                                              {
                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  [(SISchemaClientEvent *)self setUeiRequestCategorization:typeCopy];
                                                                }

                                                                else
                                                                {
                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    [(SISchemaClientEvent *)self setAudioStopRecordingStarted:typeCopy];
                                                                  }

                                                                  else
                                                                  {
                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      [(SISchemaClientEvent *)self setUeiLaunchContext:typeCopy];
                                                                    }

                                                                    else
                                                                    {
                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        [(SISchemaClientEvent *)self setUeiUserSpeakingContext:typeCopy];
                                                                      }

                                                                      else
                                                                      {
                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          [(SISchemaClientEvent *)self setUeiUUFRReady:typeCopy];
                                                                        }

                                                                        else
                                                                        {
                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            [(SISchemaClientEvent *)self setUeiUIRenderingContext:typeCopy];
                                                                          }

                                                                          else
                                                                          {
                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              [(SISchemaClientEvent *)self setPnrTextToSpeechRequestReceived:typeCopy];
                                                                            }

                                                                            else
                                                                            {
                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                [(SISchemaClientEvent *)self setPnrSpeechRecognitionSourceContext:typeCopy];
                                                                              }

                                                                              else
                                                                              {
                                                                                objc_opt_class();
                                                                                if (objc_opt_isKindOfClass())
                                                                                {
                                                                                  [(SISchemaClientEvent *)self setPnrFatalError:typeCopy];
                                                                                }

                                                                                else
                                                                                {
                                                                                  objc_opt_class();
                                                                                  if (objc_opt_isKindOfClass())
                                                                                  {
                                                                                    [(SISchemaClientEvent *)self setTurnMTERequest:typeCopy];
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if (objc_opt_isKindOfClass())
                                                                                    {
                                                                                      [(SISchemaClientEvent *)self setKeyboardDismissed:typeCopy];
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      objc_opt_class();
                                                                                      if (objc_opt_isKindOfClass())
                                                                                      {
                                                                                        [(SISchemaClientEvent *)self setEngagedAccessoryContext:typeCopy];
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        objc_opt_class();
                                                                                        if (objc_opt_isKindOfClass())
                                                                                        {
                                                                                          [(SISchemaClientEvent *)self setAnnounceCarPlayBannerTapped:typeCopy];
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          objc_opt_class();
                                                                                          if (objc_opt_isKindOfClass())
                                                                                          {
                                                                                            [(SISchemaClientEvent *)self setAnnounceCarPlayGlyphSettingToggled:typeCopy];
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            objc_opt_class();
                                                                                            if (objc_opt_isKindOfClass())
                                                                                            {
                                                                                              [(SISchemaClientEvent *)self setDictationContentEdited:typeCopy];
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              objc_opt_class();
                                                                                              if (objc_opt_isKindOfClass())
                                                                                              {
                                                                                                [(SISchemaClientEvent *)self setUufrShownTier1:typeCopy];
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                objc_opt_class();
                                                                                                if (objc_opt_isKindOfClass())
                                                                                                {
                                                                                                  [(SISchemaClientEvent *)self setUeiDictationPartialResultUpdated:typeCopy];
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  objc_opt_class();
                                                                                                  if (objc_opt_isKindOfClass())
                                                                                                  {
                                                                                                    [(SISchemaClientEvent *)self setUeiDictationVoiceCommandExecuted:typeCopy];
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    objc_opt_class();
                                                                                                    if (objc_opt_isKindOfClass())
                                                                                                    {
                                                                                                      [(SISchemaClientEvent *)self setUeiDictationInputModeSwitchContext:typeCopy];
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        [(SISchemaClientEvent *)self setUeiDictationToolTipDisplayContext:typeCopy];
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if (objc_opt_isKindOfClass())
                                                                                                        {
                                                                                                          [(SISchemaClientEvent *)self setHostPlatformViewAppearContext:typeCopy];
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          objc_opt_class();
                                                                                                          if (objc_opt_isKindOfClass())
                                                                                                          {
                                                                                                            [(SISchemaClientEvent *)self setHostPlatformViewDisappearContext:typeCopy];
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            objc_opt_class();
                                                                                                            if (objc_opt_isKindOfClass())
                                                                                                            {
                                                                                                              [(SISchemaClientEvent *)self setUeiDictationTranscriptionTokenized:typeCopy];
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              objc_opt_class();
                                                                                                              if (objc_opt_isKindOfClass())
                                                                                                              {
                                                                                                                [(SISchemaClientEvent *)self setDictationAlternativesSelected:typeCopy];
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                objc_opt_class();
                                                                                                                if (objc_opt_isKindOfClass())
                                                                                                                {
                                                                                                                  [(SISchemaClientEvent *)self setUufrSelected:typeCopy];
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  objc_opt_class();
                                                                                                                  if (objc_opt_isKindOfClass())
                                                                                                                  {
                                                                                                                    [(SISchemaClientEvent *)self setUeiDictationAlternativeTextPairsSelected:typeCopy];
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    objc_opt_class();
                                                                                                                    if (objc_opt_isKindOfClass())
                                                                                                                    {
                                                                                                                      [(SISchemaClientEvent *)self setUeiUserBargeInDetected:typeCopy];
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      objc_opt_class();
                                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                                      {
                                                                                                                        [(SISchemaClientEvent *)self setUeiDictationEnablementPromptShown:typeCopy];
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        objc_opt_class();
                                                                                                                        if (objc_opt_isKindOfClass())
                                                                                                                        {
                                                                                                                          [(SISchemaClientEvent *)self setUeiSiriCarCommandContext:typeCopy];
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          objc_opt_class();
                                                                                                                          if (objc_opt_isKindOfClass())
                                                                                                                          {
                                                                                                                            [(SISchemaClientEvent *)self setUeiVisionSnippetDismissed:typeCopy];
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            objc_opt_class();
                                                                                                                            if (objc_opt_isKindOfClass())
                                                                                                                            {
                                                                                                                              [(SISchemaClientEvent *)self setUeiSiriWasUnavailable:typeCopy];
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              objc_opt_class();
                                                                                                                              if (objc_opt_isKindOfClass())
                                                                                                                              {
                                                                                                                                [(SISchemaClientEvent *)self setPreferredAudioRouteChanged:typeCopy];
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                objc_opt_class();
                                                                                                                                if (objc_opt_isKindOfClass())
                                                                                                                                {
                                                                                                                                  [(SISchemaClientEvent *)self setUeiDictationContentEditedTier1:typeCopy];
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  objc_opt_class();
                                                                                                                                  if (objc_opt_isKindOfClass())
                                                                                                                                  {
                                                                                                                                    [(SISchemaClientEvent *)self setUeiDictationVoiceCommandUndoTapAction:typeCopy];
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    objc_opt_class();
                                                                                                                                    if (objc_opt_isKindOfClass())
                                                                                                                                    {
                                                                                                                                      [(SISchemaClientEvent *)self setUeiDictationVoiceCommandDisambiguationAction:typeCopy];
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      objc_opt_class();
                                                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                                                      {
                                                                                                                                        [(SISchemaClientEvent *)self setUeiDictationVoiceCommandKeyboardAction:typeCopy];
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        objc_opt_class();
                                                                                                                                        if (objc_opt_isKindOfClass())
                                                                                                                                        {
                                                                                                                                          [(SISchemaClientEvent *)self setUeiDictationEuclidAlternativesEvent:typeCopy];
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          objc_opt_class();
                                                                                                                                          if (objc_opt_isKindOfClass())
                                                                                                                                          {
                                                                                                                                            [(SISchemaClientEvent *)self setUeiDictationEuclidAlternativesEventTier1:typeCopy];
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            objc_opt_class();
                                                                                                                                            if (objc_opt_isKindOfClass())
                                                                                                                                            {
                                                                                                                                              [(SISchemaClientEvent *)self setUeiDictationEuclidSpeechAlternativesSelected:typeCopy];
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              objc_opt_class();
                                                                                                                                              if (objc_opt_isKindOfClass())
                                                                                                                                              {
                                                                                                                                                [(SISchemaClientEvent *)self setUeiDictationEuclidSpeechAlternativesSelectedTier1:typeCopy];
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                objc_opt_class();
                                                                                                                                                if (objc_opt_isKindOfClass())
                                                                                                                                                {
                                                                                                                                                  [(SISchemaClientEvent *)self setTypingRequestTrace:typeCopy];
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  objc_opt_class();
                                                                                                                                                  if (objc_opt_isKindOfClass())
                                                                                                                                                  {
                                                                                                                                                    [(SISchemaClientEvent *)self setUeiInvocationTier1:typeCopy];
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    objc_opt_class();
                                                                                                                                                    if (objc_opt_isKindOfClass())
                                                                                                                                                    {
                                                                                                                                                      [(SISchemaClientEvent *)self setTranscriptShown:typeCopy];
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      objc_opt_class();
                                                                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                                                                      {
                                                                                                                                                        [(SISchemaClientEvent *)self setTranscriptTapped:typeCopy];
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

- (SISchemaClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v232.receiver = self;
  v232.super_class = SISchemaClientEvent;
  v5 = [(SISchemaClientEvent *)&v232 init];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaClientEventMetadata alloc] initWithDictionary:v6];
      [(SISchemaClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"transportMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaClientTransportEventMetadata alloc] initWithDictionary:v8];
      [(SISchemaClientEvent *)v5 setTransportMetadata:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"audioFirstBufferRecorded"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaAudioFirstBufferRecorded alloc] initWithDictionary:v10];
      [(SISchemaClientEvent *)v5 setAudioFirstBufferRecorded:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"audioStopRecording"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaAudioStopRecording alloc] initWithDictionary:v12];
      [(SISchemaClientEvent *)v5 setAudioStopRecording:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"clientConversationTrace"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaConversationTrace alloc] initWithDictionary:v14];
      [(SISchemaClientEvent *)v5 setClientConversationTrace:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"deviceDynamicContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaDeviceDynamicContext alloc] initWithDictionary:v16];
      [(SISchemaClientEvent *)v5 setDeviceDynamicContext:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"deviceFixedContext"];
    objc_opt_class();
    v231 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[SISchemaDeviceFixedContext alloc] initWithDictionary:v18];
      [(SISchemaClientEvent *)v5 setDeviceFixedContext:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"dictationContext"];
    objc_opt_class();
    v230 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[SISchemaDictationContext alloc] initWithDictionary:v20];
      [(SISchemaClientEvent *)v5 setDictationContext:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"invocation"];
    objc_opt_class();
    v229 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[SISchemaInvocation alloc] initWithDictionary:v22];
      [(SISchemaClientEvent *)v5 setInvocation:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"location"];
    objc_opt_class();
    v228 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[SISchemaLocation alloc] initWithDictionary:v24];
      [(SISchemaClientEvent *)v5 setLocation:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"punchOut"];
    objc_opt_class();
    v227 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[SISchemaPunchOut alloc] initWithDictionary:v26];
      [(SISchemaClientEvent *)v5 setPunchOut:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"siriCue"];
    objc_opt_class();
    v226 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[SISchemaSiriCue alloc] initWithDictionary:v28];
      [(SISchemaClientEvent *)v5 setSiriCue:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"uufrPresented"];
    objc_opt_class();
    v225 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[SISchemaUUFRPresented alloc] initWithDictionary:v30];
      [(SISchemaClientEvent *)v5 setUufrPresented:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"speechTranscription"];
    objc_opt_class();
    v224 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[SISchemaSpeechTranscription alloc] initWithDictionary:v32];
      [(SISchemaClientEvent *)v5 setSpeechTranscription:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"textToSpeechBegin"];
    objc_opt_class();
    v223 = v34;
    if (objc_opt_isKindOfClass())
    {
      v35 = [[SISchemaTextToSpeechBegin alloc] initWithDictionary:v34];
      [(SISchemaClientEvent *)v5 setTextToSpeechBegin:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"textToSpeechEnd"];
    objc_opt_class();
    v222 = v36;
    if (objc_opt_isKindOfClass())
    {
      v37 = [[SISchemaTextToSpeechEnd alloc] initWithDictionary:v36];
      [(SISchemaClientEvent *)v5 setTextToSpeechEnd:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"uiStateTransition"];
    objc_opt_class();
    v221 = v38;
    if (objc_opt_isKindOfClass())
    {
      v39 = [[SISchemaUIStateTransition alloc] initWithDictionary:v38];
      [(SISchemaClientEvent *)v5 setUiStateTransition:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"clientFlow"];
    objc_opt_class();
    v220 = v40;
    if (objc_opt_isKindOfClass())
    {
      v41 = [[SISchemaClientFlow alloc] initWithDictionary:v40];
      [(SISchemaClientEvent *)v5 setClientFlow:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"dialogOutput"];
    objc_opt_class();
    v219 = v42;
    if (objc_opt_isKindOfClass())
    {
      v43 = [[SISchemaDialogOutput alloc] initWithDictionary:v42];
      [(SISchemaClientEvent *)v5 setDialogOutput:v43];
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"dictationEndPointStop"];
    objc_opt_class();
    v218 = v44;
    if (objc_opt_isKindOfClass())
    {
      v45 = [[SISchemaDictationEndPointStop alloc] initWithDictionary:v44];
      [(SISchemaClientEvent *)v5 setDictationEndPointStop:v45];
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"dictationEndPointCancel"];
    objc_opt_class();
    v217 = v46;
    if (objc_opt_isKindOfClass())
    {
      v47 = [[SISchemaDictationEndPointCancel alloc] initWithDictionary:v46];
      [(SISchemaClientEvent *)v5 setDictationEndPointCancel:v47];
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"dictationAlternativeSelected"];
    objc_opt_class();
    v216 = v48;
    if (objc_opt_isKindOfClass())
    {
      v49 = [[SISchemaDictationAlternativeSelected alloc] initWithDictionary:v48];
      [(SISchemaClientEvent *)v5 setDictationAlternativeSelected:v49];
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"dictationTranscriptionMetadata"];
    objc_opt_class();
    v215 = v50;
    if (objc_opt_isKindOfClass())
    {
      v51 = [[SISchemaDictationTranscriptionMetadata alloc] initWithDictionary:v50];
      [(SISchemaClientEvent *)v5 setDictationTranscriptionMetadata:v51];
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"carPlayHeadUnitContext"];
    objc_opt_class();
    v214 = v52;
    if (objc_opt_isKindOfClass())
    {
      v53 = [[SISchemaCarPlayHeadUnitContext alloc] initWithDictionary:v52];
      [(SISchemaClientEvent *)v5 setCarPlayHeadUnitContext:v53];
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"uufrCompletion"];
    objc_opt_class();
    v213 = v54;
    if (objc_opt_isKindOfClass())
    {
      v55 = [[SISchemaUUFRCompletion alloc] initWithDictionary:v54];
      [(SISchemaClientEvent *)v5 setUufrCompletion:v55];
    }

    v56 = [dictionaryCopy objectForKeyedSubscript:@"uufrShown"];
    objc_opt_class();
    v212 = v56;
    if (objc_opt_isKindOfClass())
    {
      v57 = [[SISchemaUUFRShown alloc] initWithDictionary:v56];
      [(SISchemaClientEvent *)v5 setUufrShown:v57];
    }

    v58 = [dictionaryCopy objectForKeyedSubscript:@"uufrSaid"];
    objc_opt_class();
    v211 = v58;
    if (objc_opt_isKindOfClass())
    {
      v59 = [[SISchemaUUFRSaid alloc] initWithDictionary:v58];
      [(SISchemaClientEvent *)v5 setUufrSaid:v59];
    }

    v60 = [dictionaryCopy objectForKeyedSubscript:@"uufrFatalError"];
    objc_opt_class();
    v210 = v60;
    if (objc_opt_isKindOfClass())
    {
      v61 = [[SISchemaUUFRFatalError alloc] initWithDictionary:v60];
      [(SISchemaClientEvent *)v5 setUufrFatalError:v61];
    }

    v62 = [dictionaryCopy objectForKeyedSubscript:@"dictationAlternativesViewed"];
    objc_opt_class();
    v209 = v62;
    if (objc_opt_isKindOfClass())
    {
      v63 = [[SISchemaDictationAlternativesViewed alloc] initWithDictionary:v62];
      [(SISchemaClientEvent *)v5 setDictationAlternativesViewed:v63];
    }

    v64 = [dictionaryCopy objectForKeyedSubscript:@"intercomMessageRecorded"];
    objc_opt_class();
    v208 = v64;
    if (objc_opt_isKindOfClass())
    {
      v65 = [[SISchemaIntercomMessageRecorded alloc] initWithDictionary:v64];
      [(SISchemaClientEvent *)v5 setIntercomMessageRecorded:v65];
    }

    v66 = [dictionaryCopy objectForKeyedSubscript:@"casinoRelationship"];
    objc_opt_class();
    v207 = v66;
    if (objc_opt_isKindOfClass())
    {
      v67 = [[SISchemaCasinoRelationship alloc] initWithDictionary:v66];
      [(SISchemaClientEvent *)v5 setCasinoRelationship:v67];
    }

    v68 = [dictionaryCopy objectForKeyedSubscript:@"userViewRegionInteraction"];
    objc_opt_class();
    v206 = v68;
    if (objc_opt_isKindOfClass())
    {
      v69 = [[SISchemaUserViewRegionInteraction alloc] initWithDictionary:v68];
      [(SISchemaClientEvent *)v5 setUserViewRegionInteraction:v69];
    }

    v70 = [dictionaryCopy objectForKeyedSubscript:@"deviceLockStateChanged"];
    objc_opt_class();
    v205 = v70;
    if (objc_opt_isKindOfClass())
    {
      v71 = [[SISchemaDeviceLockStateChanged alloc] initWithDictionary:v70];
      [(SISchemaClientEvent *)v5 setDeviceLockStateChanged:v71];
    }

    v72 = [dictionaryCopy objectForKeyedSubscript:@"ueiRequestCategorization"];
    objc_opt_class();
    v204 = v72;
    if (objc_opt_isKindOfClass())
    {
      v73 = [[SISchemaUEIRequestCategorization alloc] initWithDictionary:v72];
      [(SISchemaClientEvent *)v5 setUeiRequestCategorization:v73];
    }

    v74 = [dictionaryCopy objectForKeyedSubscript:@"audioStopRecordingStarted"];
    objc_opt_class();
    v203 = v74;
    if (objc_opt_isKindOfClass())
    {
      v75 = [[SISchemaAudioStopRecordingStarted alloc] initWithDictionary:v74];
      [(SISchemaClientEvent *)v5 setAudioStopRecordingStarted:v75];
    }

    v76 = [dictionaryCopy objectForKeyedSubscript:@"ueiLaunchContext"];
    objc_opt_class();
    v202 = v76;
    if (objc_opt_isKindOfClass())
    {
      v77 = [[SISchemaUEILaunchContext alloc] initWithDictionary:v76];
      [(SISchemaClientEvent *)v5 setUeiLaunchContext:v77];
    }

    v78 = [dictionaryCopy objectForKeyedSubscript:@"ueiUserSpeakingContext"];
    objc_opt_class();
    v201 = v78;
    if (objc_opt_isKindOfClass())
    {
      v79 = [[SISchemaUEIUserSpeakingContext alloc] initWithDictionary:v78];
      [(SISchemaClientEvent *)v5 setUeiUserSpeakingContext:v79];
    }

    v80 = [dictionaryCopy objectForKeyedSubscript:@"ueiUUFRReady"];
    objc_opt_class();
    v200 = v80;
    if (objc_opt_isKindOfClass())
    {
      v81 = [[SISchemaUEIUUFRReady alloc] initWithDictionary:v80];
      [(SISchemaClientEvent *)v5 setUeiUUFRReady:v81];
    }

    v82 = [dictionaryCopy objectForKeyedSubscript:@"ueiUIRenderingContext"];
    objc_opt_class();
    v199 = v82;
    if (objc_opt_isKindOfClass())
    {
      v83 = [[SISchemaUEIUIRenderingContext alloc] initWithDictionary:v82];
      [(SISchemaClientEvent *)v5 setUeiUIRenderingContext:v83];
    }

    v84 = [dictionaryCopy objectForKeyedSubscript:@"pnrTextToSpeechRequestReceived"];
    objc_opt_class();
    v198 = v84;
    if (objc_opt_isKindOfClass())
    {
      v85 = [[SISchemaPNRTextToSpeechRequestReceived alloc] initWithDictionary:v84];
      [(SISchemaClientEvent *)v5 setPnrTextToSpeechRequestReceived:v85];
    }

    v86 = [dictionaryCopy objectForKeyedSubscript:@"pnrSpeechRecognitionSourceContext"];
    objc_opt_class();
    v197 = v86;
    if (objc_opt_isKindOfClass())
    {
      v87 = [[SISchemaPNRSpeechRecognitionSourceContext alloc] initWithDictionary:v86];
      [(SISchemaClientEvent *)v5 setPnrSpeechRecognitionSourceContext:v87];
    }

    v88 = [dictionaryCopy objectForKeyedSubscript:@"pnrFatalError"];
    objc_opt_class();
    v196 = v88;
    if (objc_opt_isKindOfClass())
    {
      v89 = [[SISchemaPNRFatalError alloc] initWithDictionary:v88];
      [(SISchemaClientEvent *)v5 setPnrFatalError:v89];
    }

    v90 = [dictionaryCopy objectForKeyedSubscript:@"turnMTERequest"];
    objc_opt_class();
    v195 = v90;
    if (objc_opt_isKindOfClass())
    {
      v91 = [[SISchemaTurnMTERequest alloc] initWithDictionary:v90];
      [(SISchemaClientEvent *)v5 setTurnMTERequest:v91];
    }

    v92 = [dictionaryCopy objectForKeyedSubscript:@"keyboardDismissed"];
    objc_opt_class();
    v194 = v92;
    if (objc_opt_isKindOfClass())
    {
      v93 = [[SISchemaKeyboardDismissed alloc] initWithDictionary:v92];
      [(SISchemaClientEvent *)v5 setKeyboardDismissed:v93];
    }

    v94 = [dictionaryCopy objectForKeyedSubscript:@"engagedAccessoryContext"];
    objc_opt_class();
    v193 = v94;
    if (objc_opt_isKindOfClass())
    {
      v95 = [[SISchemaEngagedAccessoryContext alloc] initWithDictionary:v94];
      [(SISchemaClientEvent *)v5 setEngagedAccessoryContext:v95];
    }

    v96 = [dictionaryCopy objectForKeyedSubscript:@"announceCarPlayBannerTapped"];
    objc_opt_class();
    v192 = v96;
    if (objc_opt_isKindOfClass())
    {
      v97 = [[SISchemaAnnounceCarPlayBannerTapped alloc] initWithDictionary:v96];
      [(SISchemaClientEvent *)v5 setAnnounceCarPlayBannerTapped:v97];
    }

    v98 = [dictionaryCopy objectForKeyedSubscript:@"announceCarPlayGlyphSettingToggled"];
    objc_opt_class();
    v191 = v98;
    if (objc_opt_isKindOfClass())
    {
      v99 = [[SISchemaAnnounceCarPlayGlyphSettingToggled alloc] initWithDictionary:v98];
      [(SISchemaClientEvent *)v5 setAnnounceCarPlayGlyphSettingToggled:v99];
    }

    v100 = [dictionaryCopy objectForKeyedSubscript:@"dictationContentEdited"];
    objc_opt_class();
    v190 = v100;
    if (objc_opt_isKindOfClass())
    {
      v101 = [[SISchemaDictationContentEdited alloc] initWithDictionary:v100];
      [(SISchemaClientEvent *)v5 setDictationContentEdited:v101];
    }

    v102 = [dictionaryCopy objectForKeyedSubscript:@"uufrShownTier1"];
    objc_opt_class();
    v189 = v102;
    if (objc_opt_isKindOfClass())
    {
      v103 = [[SISchemaUUFRShownTier1 alloc] initWithDictionary:v102];
      [(SISchemaClientEvent *)v5 setUufrShownTier1:v103];
    }

    v104 = [dictionaryCopy objectForKeyedSubscript:@"ueiDictationPartialResultUpdated"];
    objc_opt_class();
    v188 = v104;
    if (objc_opt_isKindOfClass())
    {
      v105 = [[SISchemaUEIDictationPartialResultUpdated alloc] initWithDictionary:v104];
      [(SISchemaClientEvent *)v5 setUeiDictationPartialResultUpdated:v105];
    }

    v106 = [dictionaryCopy objectForKeyedSubscript:@"ueiDictationVoiceCommandExecuted"];
    objc_opt_class();
    v187 = v106;
    if (objc_opt_isKindOfClass())
    {
      v107 = [[SISchemaUEIDictationVoiceCommandExecuted alloc] initWithDictionary:v106];
      [(SISchemaClientEvent *)v5 setUeiDictationVoiceCommandExecuted:v107];
    }

    v108 = [dictionaryCopy objectForKeyedSubscript:@"ueiDictationInputModeSwitchContext"];
    objc_opt_class();
    v186 = v108;
    if (objc_opt_isKindOfClass())
    {
      v109 = [[SISchemaUEIDictationInputModeSwitchContext alloc] initWithDictionary:v108];
      [(SISchemaClientEvent *)v5 setUeiDictationInputModeSwitchContext:v109];
    }

    v110 = [dictionaryCopy objectForKeyedSubscript:@"ueiDictationToolTipDisplayContext"];
    objc_opt_class();
    v185 = v110;
    if (objc_opt_isKindOfClass())
    {
      v111 = [[SISchemaUEIDictationDiscoveryToolTipDisplayContext alloc] initWithDictionary:v110];
      [(SISchemaClientEvent *)v5 setUeiDictationToolTipDisplayContext:v111];
    }

    v112 = [dictionaryCopy objectForKeyedSubscript:@"hostPlatformViewAppearContext"];
    objc_opt_class();
    v184 = v112;
    if (objc_opt_isKindOfClass())
    {
      v113 = [[SISchemaUEIHostingPlatformViewAppearContext alloc] initWithDictionary:v112];
      [(SISchemaClientEvent *)v5 setHostPlatformViewAppearContext:v113];
    }

    v114 = [dictionaryCopy objectForKeyedSubscript:@"hostPlatformViewDisappearContext"];
    objc_opt_class();
    v183 = v114;
    if (objc_opt_isKindOfClass())
    {
      v115 = [[SISchemaUEIHostingPlatformViewDisappearContext alloc] initWithDictionary:v114];
      [(SISchemaClientEvent *)v5 setHostPlatformViewDisappearContext:v115];
    }

    v116 = [dictionaryCopy objectForKeyedSubscript:@"ueiDictationTranscriptionTokenized"];
    objc_opt_class();
    v182 = v116;
    if (objc_opt_isKindOfClass())
    {
      v117 = [[SISchemaUEIDictationTranscriptionTokenized alloc] initWithDictionary:v116];
      [(SISchemaClientEvent *)v5 setUeiDictationTranscriptionTokenized:v117];
    }

    v118 = [dictionaryCopy objectForKeyedSubscript:@"dictationAlternativesSelected"];
    objc_opt_class();
    v181 = v118;
    if (objc_opt_isKindOfClass())
    {
      v119 = [[SISchemaUEIDictationAlternativeConfusionPairsSelected alloc] initWithDictionary:v118];
      [(SISchemaClientEvent *)v5 setDictationAlternativesSelected:v119];
    }

    v120 = [dictionaryCopy objectForKeyedSubscript:@"uufrSelected"];
    objc_opt_class();
    v180 = v120;
    if (objc_opt_isKindOfClass())
    {
      v121 = [[SISchemaUUFRSelected alloc] initWithDictionary:v120];
      [(SISchemaClientEvent *)v5 setUufrSelected:v121];
    }

    v122 = [dictionaryCopy objectForKeyedSubscript:@"ueiDictationAlternativeTextPairsSelected"];
    objc_opt_class();
    v179 = v122;
    if (objc_opt_isKindOfClass())
    {
      v123 = [[SISchemaUEIDictationAlternativeTextPairsSelected alloc] initWithDictionary:v122];
      [(SISchemaClientEvent *)v5 setUeiDictationAlternativeTextPairsSelected:v123];
    }

    v124 = [dictionaryCopy objectForKeyedSubscript:@"ueiUserBargeInDetected"];
    objc_opt_class();
    v178 = v124;
    if (objc_opt_isKindOfClass())
    {
      v125 = [[SISchemaUEIUserBargeInDetected alloc] initWithDictionary:v124];
      [(SISchemaClientEvent *)v5 setUeiUserBargeInDetected:v125];
    }

    v126 = [dictionaryCopy objectForKeyedSubscript:@"ueiDictationEnablementPromptShown"];
    objc_opt_class();
    v177 = v126;
    if (objc_opt_isKindOfClass())
    {
      v127 = [[SISchemaUEIDictationEnablementPromptShown alloc] initWithDictionary:v126];
      [(SISchemaClientEvent *)v5 setUeiDictationEnablementPromptShown:v127];
    }

    v128 = [dictionaryCopy objectForKeyedSubscript:@"ueiSiriCarCommandContext"];
    objc_opt_class();
    v176 = v128;
    if (objc_opt_isKindOfClass())
    {
      v129 = [[SISchemaUEISiriCarCommandContext alloc] initWithDictionary:v128];
      [(SISchemaClientEvent *)v5 setUeiSiriCarCommandContext:v129];
    }

    v130 = [dictionaryCopy objectForKeyedSubscript:@"ueiVisionSnippetDismissed"];
    objc_opt_class();
    v175 = v130;
    if (objc_opt_isKindOfClass())
    {
      v131 = [[SISchemaUEIVisionSnippetDismissed alloc] initWithDictionary:v130];
      [(SISchemaClientEvent *)v5 setUeiVisionSnippetDismissed:v131];
    }

    v132 = [dictionaryCopy objectForKeyedSubscript:@"ueiSiriWasUnavailable"];
    objc_opt_class();
    v174 = v132;
    if (objc_opt_isKindOfClass())
    {
      v133 = [[SISchemaUEISiriWasUnavailable alloc] initWithDictionary:v132];
      [(SISchemaClientEvent *)v5 setUeiSiriWasUnavailable:v133];
    }

    v134 = [dictionaryCopy objectForKeyedSubscript:@"preferredAudioRouteChanged"];
    objc_opt_class();
    v173 = v134;
    if (objc_opt_isKindOfClass())
    {
      v135 = [[SISchemaBluetoothCarPreferredAudioRouteChanged alloc] initWithDictionary:v134];
      [(SISchemaClientEvent *)v5 setPreferredAudioRouteChanged:v135];
    }

    v136 = [dictionaryCopy objectForKeyedSubscript:@"ueiDictationContentEditedTier1"];
    objc_opt_class();
    v172 = v136;
    if (objc_opt_isKindOfClass())
    {
      v137 = [[SISchemaUEIDictationContentEditedTier1 alloc] initWithDictionary:v136];
      [(SISchemaClientEvent *)v5 setUeiDictationContentEditedTier1:v137];
    }

    v138 = [dictionaryCopy objectForKeyedSubscript:@"ueiDictationVoiceCommandUndoTapAction"];
    objc_opt_class();
    v171 = v138;
    if (objc_opt_isKindOfClass())
    {
      v139 = [[SISchemaUEIDictationVoiceCommandUndoTapAction alloc] initWithDictionary:v138];
      [(SISchemaClientEvent *)v5 setUeiDictationVoiceCommandUndoTapAction:v139];
    }

    v140 = [dictionaryCopy objectForKeyedSubscript:@"ueiDictationVoiceCommandDisambiguationAction"];
    objc_opt_class();
    v170 = v140;
    if (objc_opt_isKindOfClass())
    {
      v141 = [[SISchemaUEIDictationVoiceCommandDisambiguationAction alloc] initWithDictionary:v140];
      [(SISchemaClientEvent *)v5 setUeiDictationVoiceCommandDisambiguationAction:v141];
    }

    v142 = [dictionaryCopy objectForKeyedSubscript:@"ueiDictationVoiceCommandKeyboardAction"];
    objc_opt_class();
    v169 = v142;
    if (objc_opt_isKindOfClass())
    {
      v143 = [[SISchemaUEIDictationVoiceCommandKeyboardAction alloc] initWithDictionary:v142];
      [(SISchemaClientEvent *)v5 setUeiDictationVoiceCommandKeyboardAction:v143];
    }

    v164 = v14;
    v144 = [dictionaryCopy objectForKeyedSubscript:@"ueiDictationEuclidAlternativesEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v145 = [[SISchemaUEIDictationEuclidAlternativesEvent alloc] initWithDictionary:v144];
      [(SISchemaClientEvent *)v5 setUeiDictationEuclidAlternativesEvent:v145];
    }

    v162 = v144;
    v163 = v16;
    v146 = [dictionaryCopy objectForKeyedSubscript:@"ueiDictationEuclidAlternativesEventTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v147 = [[SISchemaUEIDictationEuclidAlternativesEventTier1 alloc] initWithDictionary:v146];
      [(SISchemaClientEvent *)v5 setUeiDictationEuclidAlternativesEventTier1:v147];
    }

    v168 = v6;
    v148 = [dictionaryCopy objectForKeyedSubscript:@"ueiDictationEuclidSpeechAlternativesSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v149 = [[SISchemaUEIDictationEuclidSpeechAlternativesSelected alloc] initWithDictionary:v148];
      [(SISchemaClientEvent *)v5 setUeiDictationEuclidSpeechAlternativesSelected:v149];
    }

    v167 = v8;
    v150 = [dictionaryCopy objectForKeyedSubscript:@"ueiDictationEuclidSpeechAlternativesSelectedTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v151 = [[SISchemaUEIDictationEuclidSpeechAlternativesSelectedTier1 alloc] initWithDictionary:v150];
      [(SISchemaClientEvent *)v5 setUeiDictationEuclidSpeechAlternativesSelectedTier1:v151];
    }

    v166 = v10;
    v152 = [dictionaryCopy objectForKeyedSubscript:@"typingRequestTrace"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v153 = [[SISchemaTypingRequestTrace alloc] initWithDictionary:v152];
      [(SISchemaClientEvent *)v5 setTypingRequestTrace:v153];
    }

    v165 = v12;
    v154 = [dictionaryCopy objectForKeyedSubscript:@"ueiInvocationTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v155 = [[SISchemaUEIInvocationTier1 alloc] initWithDictionary:v154];
      [(SISchemaClientEvent *)v5 setUeiInvocationTier1:v155];
    }

    v156 = [dictionaryCopy objectForKeyedSubscript:@"transcriptShown"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v157 = [[SISchemaUEITranscriptShown alloc] initWithDictionary:v156];
      [(SISchemaClientEvent *)v5 setTranscriptShown:v157];
    }

    v158 = [dictionaryCopy objectForKeyedSubscript:@"transcriptTapped"];
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

- (SISchemaClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaClientEvent *)self dictionaryRepresentation];
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
  if (self->_announceCarPlayBannerTapped)
  {
    announceCarPlayBannerTapped = [(SISchemaClientEvent *)self announceCarPlayBannerTapped];
    dictionaryRepresentation = [announceCarPlayBannerTapped dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"announceCarPlayBannerTapped"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"announceCarPlayBannerTapped"];
    }
  }

  if (self->_announceCarPlayGlyphSettingToggled)
  {
    announceCarPlayGlyphSettingToggled = [(SISchemaClientEvent *)self announceCarPlayGlyphSettingToggled];
    dictionaryRepresentation2 = [announceCarPlayGlyphSettingToggled dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"announceCarPlayGlyphSettingToggled"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"announceCarPlayGlyphSettingToggled"];
    }
  }

  if (self->_audioFirstBufferRecorded)
  {
    audioFirstBufferRecorded = [(SISchemaClientEvent *)self audioFirstBufferRecorded];
    dictionaryRepresentation3 = [audioFirstBufferRecorded dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"audioFirstBufferRecorded"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"audioFirstBufferRecorded"];
    }
  }

  if (self->_audioStopRecording)
  {
    audioStopRecording = [(SISchemaClientEvent *)self audioStopRecording];
    dictionaryRepresentation4 = [audioStopRecording dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"audioStopRecording"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"audioStopRecording"];
    }
  }

  if (self->_audioStopRecordingStarted)
  {
    audioStopRecordingStarted = [(SISchemaClientEvent *)self audioStopRecordingStarted];
    dictionaryRepresentation5 = [audioStopRecordingStarted dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"audioStopRecordingStarted"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"audioStopRecordingStarted"];
    }
  }

  if (self->_carPlayHeadUnitContext)
  {
    carPlayHeadUnitContext = [(SISchemaClientEvent *)self carPlayHeadUnitContext];
    dictionaryRepresentation6 = [carPlayHeadUnitContext dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"carPlayHeadUnitContext"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"carPlayHeadUnitContext"];
    }
  }

  if (self->_casinoRelationship)
  {
    casinoRelationship = [(SISchemaClientEvent *)self casinoRelationship];
    dictionaryRepresentation7 = [casinoRelationship dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"casinoRelationship"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"casinoRelationship"];
    }
  }

  if (self->_clientConversationTrace)
  {
    clientConversationTrace = [(SISchemaClientEvent *)self clientConversationTrace];
    dictionaryRepresentation8 = [clientConversationTrace dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"clientConversationTrace"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"clientConversationTrace"];
    }
  }

  if (self->_clientFlow)
  {
    clientFlow = [(SISchemaClientEvent *)self clientFlow];
    dictionaryRepresentation9 = [clientFlow dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"clientFlow"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"clientFlow"];
    }
  }

  if (self->_deviceDynamicContext)
  {
    deviceDynamicContext = [(SISchemaClientEvent *)self deviceDynamicContext];
    dictionaryRepresentation10 = [deviceDynamicContext dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"deviceDynamicContext"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"deviceDynamicContext"];
    }
  }

  if (self->_deviceFixedContext)
  {
    deviceFixedContext = [(SISchemaClientEvent *)self deviceFixedContext];
    dictionaryRepresentation11 = [deviceFixedContext dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"deviceFixedContext"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"deviceFixedContext"];
    }
  }

  if (self->_deviceLockStateChanged)
  {
    deviceLockStateChanged = [(SISchemaClientEvent *)self deviceLockStateChanged];
    dictionaryRepresentation12 = [deviceLockStateChanged dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"deviceLockStateChanged"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"deviceLockStateChanged"];
    }
  }

  if (self->_dialogOutput)
  {
    dialogOutput = [(SISchemaClientEvent *)self dialogOutput];
    dictionaryRepresentation13 = [dialogOutput dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"dialogOutput"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"dialogOutput"];
    }
  }

  if (self->_dictationAlternativeSelected)
  {
    dictationAlternativeSelected = [(SISchemaClientEvent *)self dictationAlternativeSelected];
    dictionaryRepresentation14 = [dictationAlternativeSelected dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"dictationAlternativeSelected"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"dictationAlternativeSelected"];
    }
  }

  if (self->_dictationAlternativesSelected)
  {
    dictationAlternativesSelected = [(SISchemaClientEvent *)self dictationAlternativesSelected];
    dictionaryRepresentation15 = [dictationAlternativesSelected dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"dictationAlternativesSelected"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"dictationAlternativesSelected"];
    }
  }

  if (self->_dictationAlternativesViewed)
  {
    dictationAlternativesViewed = [(SISchemaClientEvent *)self dictationAlternativesViewed];
    dictionaryRepresentation16 = [dictationAlternativesViewed dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"dictationAlternativesViewed"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"dictationAlternativesViewed"];
    }
  }

  if (self->_dictationContentEdited)
  {
    dictationContentEdited = [(SISchemaClientEvent *)self dictationContentEdited];
    dictionaryRepresentation17 = [dictationContentEdited dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"dictationContentEdited"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"dictationContentEdited"];
    }
  }

  if (self->_dictationContext)
  {
    dictationContext = [(SISchemaClientEvent *)self dictationContext];
    dictionaryRepresentation18 = [dictationContext dictionaryRepresentation];
    if (dictionaryRepresentation18)
    {
      [dictionary setObject:dictionaryRepresentation18 forKeyedSubscript:@"dictationContext"];
    }

    else
    {
      null18 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null18 forKeyedSubscript:@"dictationContext"];
    }
  }

  if (self->_dictationEndPointCancel)
  {
    dictationEndPointCancel = [(SISchemaClientEvent *)self dictationEndPointCancel];
    dictionaryRepresentation19 = [dictationEndPointCancel dictionaryRepresentation];
    if (dictionaryRepresentation19)
    {
      [dictionary setObject:dictionaryRepresentation19 forKeyedSubscript:@"dictationEndPointCancel"];
    }

    else
    {
      null19 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null19 forKeyedSubscript:@"dictationEndPointCancel"];
    }
  }

  if (self->_dictationEndPointStop)
  {
    dictationEndPointStop = [(SISchemaClientEvent *)self dictationEndPointStop];
    dictionaryRepresentation20 = [dictationEndPointStop dictionaryRepresentation];
    if (dictionaryRepresentation20)
    {
      [dictionary setObject:dictionaryRepresentation20 forKeyedSubscript:@"dictationEndPointStop"];
    }

    else
    {
      null20 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null20 forKeyedSubscript:@"dictationEndPointStop"];
    }
  }

  if (self->_dictationTranscriptionMetadata)
  {
    dictationTranscriptionMetadata = [(SISchemaClientEvent *)self dictationTranscriptionMetadata];
    dictionaryRepresentation21 = [dictationTranscriptionMetadata dictionaryRepresentation];
    if (dictionaryRepresentation21)
    {
      [dictionary setObject:dictionaryRepresentation21 forKeyedSubscript:@"dictationTranscriptionMetadata"];
    }

    else
    {
      null21 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null21 forKeyedSubscript:@"dictationTranscriptionMetadata"];
    }
  }

  if (self->_engagedAccessoryContext)
  {
    engagedAccessoryContext = [(SISchemaClientEvent *)self engagedAccessoryContext];
    dictionaryRepresentation22 = [engagedAccessoryContext dictionaryRepresentation];
    if (dictionaryRepresentation22)
    {
      [dictionary setObject:dictionaryRepresentation22 forKeyedSubscript:@"engagedAccessoryContext"];
    }

    else
    {
      null22 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null22 forKeyedSubscript:@"engagedAccessoryContext"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(SISchemaClientEvent *)self eventMetadata];
    dictionaryRepresentation23 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation23)
    {
      [dictionary setObject:dictionaryRepresentation23 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null23 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null23 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_hostPlatformViewAppearContext)
  {
    hostPlatformViewAppearContext = [(SISchemaClientEvent *)self hostPlatformViewAppearContext];
    dictionaryRepresentation24 = [hostPlatformViewAppearContext dictionaryRepresentation];
    if (dictionaryRepresentation24)
    {
      [dictionary setObject:dictionaryRepresentation24 forKeyedSubscript:@"hostPlatformViewAppearContext"];
    }

    else
    {
      null24 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null24 forKeyedSubscript:@"hostPlatformViewAppearContext"];
    }
  }

  if (self->_hostPlatformViewDisappearContext)
  {
    hostPlatformViewDisappearContext = [(SISchemaClientEvent *)self hostPlatformViewDisappearContext];
    dictionaryRepresentation25 = [hostPlatformViewDisappearContext dictionaryRepresentation];
    if (dictionaryRepresentation25)
    {
      [dictionary setObject:dictionaryRepresentation25 forKeyedSubscript:@"hostPlatformViewDisappearContext"];
    }

    else
    {
      null25 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null25 forKeyedSubscript:@"hostPlatformViewDisappearContext"];
    }
  }

  if (self->_intercomMessageRecorded)
  {
    intercomMessageRecorded = [(SISchemaClientEvent *)self intercomMessageRecorded];
    dictionaryRepresentation26 = [intercomMessageRecorded dictionaryRepresentation];
    if (dictionaryRepresentation26)
    {
      [dictionary setObject:dictionaryRepresentation26 forKeyedSubscript:@"intercomMessageRecorded"];
    }

    else
    {
      null26 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null26 forKeyedSubscript:@"intercomMessageRecorded"];
    }
  }

  if (self->_invocation)
  {
    invocation = [(SISchemaClientEvent *)self invocation];
    dictionaryRepresentation27 = [invocation dictionaryRepresentation];
    if (dictionaryRepresentation27)
    {
      [dictionary setObject:dictionaryRepresentation27 forKeyedSubscript:@"invocation"];
    }

    else
    {
      null27 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null27 forKeyedSubscript:@"invocation"];
    }
  }

  if (self->_keyboardDismissed)
  {
    keyboardDismissed = [(SISchemaClientEvent *)self keyboardDismissed];
    dictionaryRepresentation28 = [keyboardDismissed dictionaryRepresentation];
    if (dictionaryRepresentation28)
    {
      [dictionary setObject:dictionaryRepresentation28 forKeyedSubscript:@"keyboardDismissed"];
    }

    else
    {
      null28 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null28 forKeyedSubscript:@"keyboardDismissed"];
    }
  }

  if (self->_location)
  {
    location = [(SISchemaClientEvent *)self location];
    dictionaryRepresentation29 = [location dictionaryRepresentation];
    if (dictionaryRepresentation29)
    {
      [dictionary setObject:dictionaryRepresentation29 forKeyedSubscript:@"location"];
    }

    else
    {
      null29 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null29 forKeyedSubscript:@"location"];
    }
  }

  if (self->_pnrFatalError)
  {
    pnrFatalError = [(SISchemaClientEvent *)self pnrFatalError];
    dictionaryRepresentation30 = [pnrFatalError dictionaryRepresentation];
    if (dictionaryRepresentation30)
    {
      [dictionary setObject:dictionaryRepresentation30 forKeyedSubscript:@"pnrFatalError"];
    }

    else
    {
      null30 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null30 forKeyedSubscript:@"pnrFatalError"];
    }
  }

  if (self->_pnrSpeechRecognitionSourceContext)
  {
    pnrSpeechRecognitionSourceContext = [(SISchemaClientEvent *)self pnrSpeechRecognitionSourceContext];
    dictionaryRepresentation31 = [pnrSpeechRecognitionSourceContext dictionaryRepresentation];
    if (dictionaryRepresentation31)
    {
      [dictionary setObject:dictionaryRepresentation31 forKeyedSubscript:@"pnrSpeechRecognitionSourceContext"];
    }

    else
    {
      null31 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null31 forKeyedSubscript:@"pnrSpeechRecognitionSourceContext"];
    }
  }

  if (self->_pnrTextToSpeechRequestReceived)
  {
    pnrTextToSpeechRequestReceived = [(SISchemaClientEvent *)self pnrTextToSpeechRequestReceived];
    dictionaryRepresentation32 = [pnrTextToSpeechRequestReceived dictionaryRepresentation];
    if (dictionaryRepresentation32)
    {
      [dictionary setObject:dictionaryRepresentation32 forKeyedSubscript:@"pnrTextToSpeechRequestReceived"];
    }

    else
    {
      null32 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null32 forKeyedSubscript:@"pnrTextToSpeechRequestReceived"];
    }
  }

  if (self->_preferredAudioRouteChanged)
  {
    preferredAudioRouteChanged = [(SISchemaClientEvent *)self preferredAudioRouteChanged];
    dictionaryRepresentation33 = [preferredAudioRouteChanged dictionaryRepresentation];
    if (dictionaryRepresentation33)
    {
      [dictionary setObject:dictionaryRepresentation33 forKeyedSubscript:@"preferredAudioRouteChanged"];
    }

    else
    {
      null33 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null33 forKeyedSubscript:@"preferredAudioRouteChanged"];
    }
  }

  if (self->_punchOut)
  {
    punchOut = [(SISchemaClientEvent *)self punchOut];
    dictionaryRepresentation34 = [punchOut dictionaryRepresentation];
    if (dictionaryRepresentation34)
    {
      [dictionary setObject:dictionaryRepresentation34 forKeyedSubscript:@"punchOut"];
    }

    else
    {
      null34 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null34 forKeyedSubscript:@"punchOut"];
    }
  }

  if (self->_siriCue)
  {
    siriCue = [(SISchemaClientEvent *)self siriCue];
    dictionaryRepresentation35 = [siriCue dictionaryRepresentation];
    if (dictionaryRepresentation35)
    {
      [dictionary setObject:dictionaryRepresentation35 forKeyedSubscript:@"siriCue"];
    }

    else
    {
      null35 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null35 forKeyedSubscript:@"siriCue"];
    }
  }

  if (self->_speechTranscription)
  {
    speechTranscription = [(SISchemaClientEvent *)self speechTranscription];
    dictionaryRepresentation36 = [speechTranscription dictionaryRepresentation];
    if (dictionaryRepresentation36)
    {
      [dictionary setObject:dictionaryRepresentation36 forKeyedSubscript:@"speechTranscription"];
    }

    else
    {
      null36 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null36 forKeyedSubscript:@"speechTranscription"];
    }
  }

  if (self->_textToSpeechBegin)
  {
    textToSpeechBegin = [(SISchemaClientEvent *)self textToSpeechBegin];
    dictionaryRepresentation37 = [textToSpeechBegin dictionaryRepresentation];
    if (dictionaryRepresentation37)
    {
      [dictionary setObject:dictionaryRepresentation37 forKeyedSubscript:@"textToSpeechBegin"];
    }

    else
    {
      null37 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null37 forKeyedSubscript:@"textToSpeechBegin"];
    }
  }

  if (self->_textToSpeechEnd)
  {
    textToSpeechEnd = [(SISchemaClientEvent *)self textToSpeechEnd];
    dictionaryRepresentation38 = [textToSpeechEnd dictionaryRepresentation];
    if (dictionaryRepresentation38)
    {
      [dictionary setObject:dictionaryRepresentation38 forKeyedSubscript:@"textToSpeechEnd"];
    }

    else
    {
      null38 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null38 forKeyedSubscript:@"textToSpeechEnd"];
    }
  }

  if (self->_transcriptShown)
  {
    transcriptShown = [(SISchemaClientEvent *)self transcriptShown];
    dictionaryRepresentation39 = [transcriptShown dictionaryRepresentation];
    if (dictionaryRepresentation39)
    {
      [dictionary setObject:dictionaryRepresentation39 forKeyedSubscript:@"transcriptShown"];
    }

    else
    {
      null39 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null39 forKeyedSubscript:@"transcriptShown"];
    }
  }

  if (self->_transcriptTapped)
  {
    transcriptTapped = [(SISchemaClientEvent *)self transcriptTapped];
    dictionaryRepresentation40 = [transcriptTapped dictionaryRepresentation];
    if (dictionaryRepresentation40)
    {
      [dictionary setObject:dictionaryRepresentation40 forKeyedSubscript:@"transcriptTapped"];
    }

    else
    {
      null40 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null40 forKeyedSubscript:@"transcriptTapped"];
    }
  }

  if (self->_transportMetadata)
  {
    transportMetadata = [(SISchemaClientEvent *)self transportMetadata];
    dictionaryRepresentation41 = [transportMetadata dictionaryRepresentation];
    if (dictionaryRepresentation41)
    {
      [dictionary setObject:dictionaryRepresentation41 forKeyedSubscript:@"transportMetadata"];
    }

    else
    {
      null41 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null41 forKeyedSubscript:@"transportMetadata"];
    }
  }

  if (self->_turnMTERequest)
  {
    turnMTERequest = [(SISchemaClientEvent *)self turnMTERequest];
    dictionaryRepresentation42 = [turnMTERequest dictionaryRepresentation];
    if (dictionaryRepresentation42)
    {
      [dictionary setObject:dictionaryRepresentation42 forKeyedSubscript:@"turnMTERequest"];
    }

    else
    {
      null42 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null42 forKeyedSubscript:@"turnMTERequest"];
    }
  }

  if (self->_typingRequestTrace)
  {
    typingRequestTrace = [(SISchemaClientEvent *)self typingRequestTrace];
    dictionaryRepresentation43 = [typingRequestTrace dictionaryRepresentation];
    if (dictionaryRepresentation43)
    {
      [dictionary setObject:dictionaryRepresentation43 forKeyedSubscript:@"typingRequestTrace"];
    }

    else
    {
      null43 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null43 forKeyedSubscript:@"typingRequestTrace"];
    }
  }

  if (self->_ueiDictationAlternativeTextPairsSelected)
  {
    ueiDictationAlternativeTextPairsSelected = [(SISchemaClientEvent *)self ueiDictationAlternativeTextPairsSelected];
    dictionaryRepresentation44 = [ueiDictationAlternativeTextPairsSelected dictionaryRepresentation];
    if (dictionaryRepresentation44)
    {
      [dictionary setObject:dictionaryRepresentation44 forKeyedSubscript:@"ueiDictationAlternativeTextPairsSelected"];
    }

    else
    {
      null44 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null44 forKeyedSubscript:@"ueiDictationAlternativeTextPairsSelected"];
    }
  }

  if (self->_ueiDictationContentEditedTier1)
  {
    ueiDictationContentEditedTier1 = [(SISchemaClientEvent *)self ueiDictationContentEditedTier1];
    dictionaryRepresentation45 = [ueiDictationContentEditedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation45)
    {
      [dictionary setObject:dictionaryRepresentation45 forKeyedSubscript:@"ueiDictationContentEditedTier1"];
    }

    else
    {
      null45 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null45 forKeyedSubscript:@"ueiDictationContentEditedTier1"];
    }
  }

  if (self->_ueiDictationEnablementPromptShown)
  {
    ueiDictationEnablementPromptShown = [(SISchemaClientEvent *)self ueiDictationEnablementPromptShown];
    dictionaryRepresentation46 = [ueiDictationEnablementPromptShown dictionaryRepresentation];
    if (dictionaryRepresentation46)
    {
      [dictionary setObject:dictionaryRepresentation46 forKeyedSubscript:@"ueiDictationEnablementPromptShown"];
    }

    else
    {
      null46 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null46 forKeyedSubscript:@"ueiDictationEnablementPromptShown"];
    }
  }

  if (self->_ueiDictationEuclidAlternativesEvent)
  {
    ueiDictationEuclidAlternativesEvent = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEvent];
    dictionaryRepresentation47 = [ueiDictationEuclidAlternativesEvent dictionaryRepresentation];
    if (dictionaryRepresentation47)
    {
      [dictionary setObject:dictionaryRepresentation47 forKeyedSubscript:@"ueiDictationEuclidAlternativesEvent"];
    }

    else
    {
      null47 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null47 forKeyedSubscript:@"ueiDictationEuclidAlternativesEvent"];
    }
  }

  if (self->_ueiDictationEuclidAlternativesEventTier1)
  {
    ueiDictationEuclidAlternativesEventTier1 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEventTier1];
    dictionaryRepresentation48 = [ueiDictationEuclidAlternativesEventTier1 dictionaryRepresentation];
    if (dictionaryRepresentation48)
    {
      [dictionary setObject:dictionaryRepresentation48 forKeyedSubscript:@"ueiDictationEuclidAlternativesEventTier1"];
    }

    else
    {
      null48 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null48 forKeyedSubscript:@"ueiDictationEuclidAlternativesEventTier1"];
    }
  }

  if (self->_ueiDictationEuclidSpeechAlternativesSelected)
  {
    ueiDictationEuclidSpeechAlternativesSelected = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelected];
    dictionaryRepresentation49 = [ueiDictationEuclidSpeechAlternativesSelected dictionaryRepresentation];
    if (dictionaryRepresentation49)
    {
      [dictionary setObject:dictionaryRepresentation49 forKeyedSubscript:@"ueiDictationEuclidSpeechAlternativesSelected"];
    }

    else
    {
      null49 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null49 forKeyedSubscript:@"ueiDictationEuclidSpeechAlternativesSelected"];
    }
  }

  if (self->_ueiDictationEuclidSpeechAlternativesSelectedTier1)
  {
    ueiDictationEuclidSpeechAlternativesSelectedTier1 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelectedTier1];
    dictionaryRepresentation50 = [ueiDictationEuclidSpeechAlternativesSelectedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation50)
    {
      [dictionary setObject:dictionaryRepresentation50 forKeyedSubscript:@"ueiDictationEuclidSpeechAlternativesSelectedTier1"];
    }

    else
    {
      null50 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null50 forKeyedSubscript:@"ueiDictationEuclidSpeechAlternativesSelectedTier1"];
    }
  }

  if (self->_ueiDictationInputModeSwitchContext)
  {
    ueiDictationInputModeSwitchContext = [(SISchemaClientEvent *)self ueiDictationInputModeSwitchContext];
    dictionaryRepresentation51 = [ueiDictationInputModeSwitchContext dictionaryRepresentation];
    if (dictionaryRepresentation51)
    {
      [dictionary setObject:dictionaryRepresentation51 forKeyedSubscript:@"ueiDictationInputModeSwitchContext"];
    }

    else
    {
      null51 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null51 forKeyedSubscript:@"ueiDictationInputModeSwitchContext"];
    }
  }

  if (self->_ueiDictationPartialResultUpdated)
  {
    ueiDictationPartialResultUpdated = [(SISchemaClientEvent *)self ueiDictationPartialResultUpdated];
    dictionaryRepresentation52 = [ueiDictationPartialResultUpdated dictionaryRepresentation];
    if (dictionaryRepresentation52)
    {
      [dictionary setObject:dictionaryRepresentation52 forKeyedSubscript:@"ueiDictationPartialResultUpdated"];
    }

    else
    {
      null52 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null52 forKeyedSubscript:@"ueiDictationPartialResultUpdated"];
    }
  }

  if (self->_ueiDictationToolTipDisplayContext)
  {
    ueiDictationToolTipDisplayContext = [(SISchemaClientEvent *)self ueiDictationToolTipDisplayContext];
    dictionaryRepresentation53 = [ueiDictationToolTipDisplayContext dictionaryRepresentation];
    if (dictionaryRepresentation53)
    {
      [dictionary setObject:dictionaryRepresentation53 forKeyedSubscript:@"ueiDictationToolTipDisplayContext"];
    }

    else
    {
      null53 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null53 forKeyedSubscript:@"ueiDictationToolTipDisplayContext"];
    }
  }

  if (self->_ueiDictationTranscriptionTokenized)
  {
    ueiDictationTranscriptionTokenized = [(SISchemaClientEvent *)self ueiDictationTranscriptionTokenized];
    dictionaryRepresentation54 = [ueiDictationTranscriptionTokenized dictionaryRepresentation];
    if (dictionaryRepresentation54)
    {
      [dictionary setObject:dictionaryRepresentation54 forKeyedSubscript:@"ueiDictationTranscriptionTokenized"];
    }

    else
    {
      null54 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null54 forKeyedSubscript:@"ueiDictationTranscriptionTokenized"];
    }
  }

  if (self->_ueiDictationVoiceCommandDisambiguationAction)
  {
    ueiDictationVoiceCommandDisambiguationAction = [(SISchemaClientEvent *)self ueiDictationVoiceCommandDisambiguationAction];
    dictionaryRepresentation55 = [ueiDictationVoiceCommandDisambiguationAction dictionaryRepresentation];
    if (dictionaryRepresentation55)
    {
      [dictionary setObject:dictionaryRepresentation55 forKeyedSubscript:@"ueiDictationVoiceCommandDisambiguationAction"];
    }

    else
    {
      null55 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null55 forKeyedSubscript:@"ueiDictationVoiceCommandDisambiguationAction"];
    }
  }

  if (self->_ueiDictationVoiceCommandExecuted)
  {
    ueiDictationVoiceCommandExecuted = [(SISchemaClientEvent *)self ueiDictationVoiceCommandExecuted];
    dictionaryRepresentation56 = [ueiDictationVoiceCommandExecuted dictionaryRepresentation];
    if (dictionaryRepresentation56)
    {
      [dictionary setObject:dictionaryRepresentation56 forKeyedSubscript:@"ueiDictationVoiceCommandExecuted"];
    }

    else
    {
      null56 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null56 forKeyedSubscript:@"ueiDictationVoiceCommandExecuted"];
    }
  }

  if (self->_ueiDictationVoiceCommandKeyboardAction)
  {
    ueiDictationVoiceCommandKeyboardAction = [(SISchemaClientEvent *)self ueiDictationVoiceCommandKeyboardAction];
    dictionaryRepresentation57 = [ueiDictationVoiceCommandKeyboardAction dictionaryRepresentation];
    if (dictionaryRepresentation57)
    {
      [dictionary setObject:dictionaryRepresentation57 forKeyedSubscript:@"ueiDictationVoiceCommandKeyboardAction"];
    }

    else
    {
      null57 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null57 forKeyedSubscript:@"ueiDictationVoiceCommandKeyboardAction"];
    }
  }

  if (self->_ueiDictationVoiceCommandUndoTapAction)
  {
    ueiDictationVoiceCommandUndoTapAction = [(SISchemaClientEvent *)self ueiDictationVoiceCommandUndoTapAction];
    dictionaryRepresentation58 = [ueiDictationVoiceCommandUndoTapAction dictionaryRepresentation];
    if (dictionaryRepresentation58)
    {
      [dictionary setObject:dictionaryRepresentation58 forKeyedSubscript:@"ueiDictationVoiceCommandUndoTapAction"];
    }

    else
    {
      null58 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null58 forKeyedSubscript:@"ueiDictationVoiceCommandUndoTapAction"];
    }
  }

  if (self->_ueiInvocationTier1)
  {
    ueiInvocationTier1 = [(SISchemaClientEvent *)self ueiInvocationTier1];
    dictionaryRepresentation59 = [ueiInvocationTier1 dictionaryRepresentation];
    if (dictionaryRepresentation59)
    {
      [dictionary setObject:dictionaryRepresentation59 forKeyedSubscript:@"ueiInvocationTier1"];
    }

    else
    {
      null59 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null59 forKeyedSubscript:@"ueiInvocationTier1"];
    }
  }

  if (self->_ueiLaunchContext)
  {
    ueiLaunchContext = [(SISchemaClientEvent *)self ueiLaunchContext];
    dictionaryRepresentation60 = [ueiLaunchContext dictionaryRepresentation];
    if (dictionaryRepresentation60)
    {
      [dictionary setObject:dictionaryRepresentation60 forKeyedSubscript:@"ueiLaunchContext"];
    }

    else
    {
      null60 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null60 forKeyedSubscript:@"ueiLaunchContext"];
    }
  }

  if (self->_ueiRequestCategorization)
  {
    ueiRequestCategorization = [(SISchemaClientEvent *)self ueiRequestCategorization];
    dictionaryRepresentation61 = [ueiRequestCategorization dictionaryRepresentation];
    if (dictionaryRepresentation61)
    {
      [dictionary setObject:dictionaryRepresentation61 forKeyedSubscript:@"ueiRequestCategorization"];
    }

    else
    {
      null61 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null61 forKeyedSubscript:@"ueiRequestCategorization"];
    }
  }

  if (self->_ueiSiriCarCommandContext)
  {
    ueiSiriCarCommandContext = [(SISchemaClientEvent *)self ueiSiriCarCommandContext];
    dictionaryRepresentation62 = [ueiSiriCarCommandContext dictionaryRepresentation];
    if (dictionaryRepresentation62)
    {
      [dictionary setObject:dictionaryRepresentation62 forKeyedSubscript:@"ueiSiriCarCommandContext"];
    }

    else
    {
      null62 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null62 forKeyedSubscript:@"ueiSiriCarCommandContext"];
    }
  }

  if (self->_ueiSiriWasUnavailable)
  {
    ueiSiriWasUnavailable = [(SISchemaClientEvent *)self ueiSiriWasUnavailable];
    dictionaryRepresentation63 = [ueiSiriWasUnavailable dictionaryRepresentation];
    if (dictionaryRepresentation63)
    {
      [dictionary setObject:dictionaryRepresentation63 forKeyedSubscript:@"ueiSiriWasUnavailable"];
    }

    else
    {
      null63 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null63 forKeyedSubscript:@"ueiSiriWasUnavailable"];
    }
  }

  if (self->_ueiUIRenderingContext)
  {
    ueiUIRenderingContext = [(SISchemaClientEvent *)self ueiUIRenderingContext];
    dictionaryRepresentation64 = [ueiUIRenderingContext dictionaryRepresentation];
    if (dictionaryRepresentation64)
    {
      [dictionary setObject:dictionaryRepresentation64 forKeyedSubscript:@"ueiUIRenderingContext"];
    }

    else
    {
      null64 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null64 forKeyedSubscript:@"ueiUIRenderingContext"];
    }
  }

  if (self->_ueiUUFRReady)
  {
    ueiUUFRReady = [(SISchemaClientEvent *)self ueiUUFRReady];
    dictionaryRepresentation65 = [ueiUUFRReady dictionaryRepresentation];
    if (dictionaryRepresentation65)
    {
      [dictionary setObject:dictionaryRepresentation65 forKeyedSubscript:@"ueiUUFRReady"];
    }

    else
    {
      null65 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null65 forKeyedSubscript:@"ueiUUFRReady"];
    }
  }

  if (self->_ueiUserBargeInDetected)
  {
    ueiUserBargeInDetected = [(SISchemaClientEvent *)self ueiUserBargeInDetected];
    dictionaryRepresentation66 = [ueiUserBargeInDetected dictionaryRepresentation];
    if (dictionaryRepresentation66)
    {
      [dictionary setObject:dictionaryRepresentation66 forKeyedSubscript:@"ueiUserBargeInDetected"];
    }

    else
    {
      null66 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null66 forKeyedSubscript:@"ueiUserBargeInDetected"];
    }
  }

  if (self->_ueiUserSpeakingContext)
  {
    ueiUserSpeakingContext = [(SISchemaClientEvent *)self ueiUserSpeakingContext];
    dictionaryRepresentation67 = [ueiUserSpeakingContext dictionaryRepresentation];
    if (dictionaryRepresentation67)
    {
      [dictionary setObject:dictionaryRepresentation67 forKeyedSubscript:@"ueiUserSpeakingContext"];
    }

    else
    {
      null67 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null67 forKeyedSubscript:@"ueiUserSpeakingContext"];
    }
  }

  if (self->_ueiVisionSnippetDismissed)
  {
    ueiVisionSnippetDismissed = [(SISchemaClientEvent *)self ueiVisionSnippetDismissed];
    dictionaryRepresentation68 = [ueiVisionSnippetDismissed dictionaryRepresentation];
    if (dictionaryRepresentation68)
    {
      [dictionary setObject:dictionaryRepresentation68 forKeyedSubscript:@"ueiVisionSnippetDismissed"];
    }

    else
    {
      null68 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null68 forKeyedSubscript:@"ueiVisionSnippetDismissed"];
    }
  }

  if (self->_uiStateTransition)
  {
    uiStateTransition = [(SISchemaClientEvent *)self uiStateTransition];
    dictionaryRepresentation69 = [uiStateTransition dictionaryRepresentation];
    if (dictionaryRepresentation69)
    {
      [dictionary setObject:dictionaryRepresentation69 forKeyedSubscript:@"uiStateTransition"];
    }

    else
    {
      null69 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null69 forKeyedSubscript:@"uiStateTransition"];
    }
  }

  if (self->_userViewRegionInteraction)
  {
    userViewRegionInteraction = [(SISchemaClientEvent *)self userViewRegionInteraction];
    dictionaryRepresentation70 = [userViewRegionInteraction dictionaryRepresentation];
    if (dictionaryRepresentation70)
    {
      [dictionary setObject:dictionaryRepresentation70 forKeyedSubscript:@"userViewRegionInteraction"];
    }

    else
    {
      null70 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null70 forKeyedSubscript:@"userViewRegionInteraction"];
    }
  }

  if (self->_uufrCompletion)
  {
    uufrCompletion = [(SISchemaClientEvent *)self uufrCompletion];
    dictionaryRepresentation71 = [uufrCompletion dictionaryRepresentation];
    if (dictionaryRepresentation71)
    {
      [dictionary setObject:dictionaryRepresentation71 forKeyedSubscript:@"uufrCompletion"];
    }

    else
    {
      null71 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null71 forKeyedSubscript:@"uufrCompletion"];
    }
  }

  if (self->_uufrFatalError)
  {
    uufrFatalError = [(SISchemaClientEvent *)self uufrFatalError];
    dictionaryRepresentation72 = [uufrFatalError dictionaryRepresentation];
    if (dictionaryRepresentation72)
    {
      [dictionary setObject:dictionaryRepresentation72 forKeyedSubscript:@"uufrFatalError"];
    }

    else
    {
      null72 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null72 forKeyedSubscript:@"uufrFatalError"];
    }
  }

  if (self->_uufrPresented)
  {
    uufrPresented = [(SISchemaClientEvent *)self uufrPresented];
    dictionaryRepresentation73 = [uufrPresented dictionaryRepresentation];
    if (dictionaryRepresentation73)
    {
      [dictionary setObject:dictionaryRepresentation73 forKeyedSubscript:@"uufrPresented"];
    }

    else
    {
      null73 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null73 forKeyedSubscript:@"uufrPresented"];
    }
  }

  if (self->_uufrSaid)
  {
    uufrSaid = [(SISchemaClientEvent *)self uufrSaid];
    dictionaryRepresentation74 = [uufrSaid dictionaryRepresentation];
    if (dictionaryRepresentation74)
    {
      [dictionary setObject:dictionaryRepresentation74 forKeyedSubscript:@"uufrSaid"];
    }

    else
    {
      null74 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null74 forKeyedSubscript:@"uufrSaid"];
    }
  }

  if (self->_uufrSelected)
  {
    uufrSelected = [(SISchemaClientEvent *)self uufrSelected];
    dictionaryRepresentation75 = [uufrSelected dictionaryRepresentation];
    if (dictionaryRepresentation75)
    {
      [dictionary setObject:dictionaryRepresentation75 forKeyedSubscript:@"uufrSelected"];
    }

    else
    {
      null75 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null75 forKeyedSubscript:@"uufrSelected"];
    }
  }

  if (self->_uufrShown)
  {
    uufrShown = [(SISchemaClientEvent *)self uufrShown];
    dictionaryRepresentation76 = [uufrShown dictionaryRepresentation];
    if (dictionaryRepresentation76)
    {
      [dictionary setObject:dictionaryRepresentation76 forKeyedSubscript:@"uufrShown"];
    }

    else
    {
      null76 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null76 forKeyedSubscript:@"uufrShown"];
    }
  }

  if (self->_uufrShownTier1)
  {
    uufrShownTier1 = [(SISchemaClientEvent *)self uufrShownTier1];
    dictionaryRepresentation77 = [uufrShownTier1 dictionaryRepresentation];
    if (dictionaryRepresentation77)
    {
      [dictionary setObject:dictionaryRepresentation77 forKeyedSubscript:@"uufrShownTier1"];
    }

    else
    {
      null77 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null77 forKeyedSubscript:@"uufrShownTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v235 = dictionary;

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_388;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_388;
  }

  eventMetadata = [(SISchemaClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  eventMetadata3 = [(SISchemaClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(SISchemaClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self transportMetadata];
  eventMetadata2 = [equalCopy transportMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  transportMetadata = [(SISchemaClientEvent *)self transportMetadata];
  if (transportMetadata)
  {
    v14 = transportMetadata;
    transportMetadata2 = [(SISchemaClientEvent *)self transportMetadata];
    transportMetadata3 = [equalCopy transportMetadata];
    v17 = [transportMetadata2 isEqual:transportMetadata3];

    if (!v17)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self audioFirstBufferRecorded];
  eventMetadata2 = [equalCopy audioFirstBufferRecorded];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  audioFirstBufferRecorded = [(SISchemaClientEvent *)self audioFirstBufferRecorded];
  if (audioFirstBufferRecorded)
  {
    v19 = audioFirstBufferRecorded;
    audioFirstBufferRecorded2 = [(SISchemaClientEvent *)self audioFirstBufferRecorded];
    audioFirstBufferRecorded3 = [equalCopy audioFirstBufferRecorded];
    v22 = [audioFirstBufferRecorded2 isEqual:audioFirstBufferRecorded3];

    if (!v22)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self audioStopRecording];
  eventMetadata2 = [equalCopy audioStopRecording];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  audioStopRecording = [(SISchemaClientEvent *)self audioStopRecording];
  if (audioStopRecording)
  {
    v24 = audioStopRecording;
    audioStopRecording2 = [(SISchemaClientEvent *)self audioStopRecording];
    audioStopRecording3 = [equalCopy audioStopRecording];
    v27 = [audioStopRecording2 isEqual:audioStopRecording3];

    if (!v27)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self clientConversationTrace];
  eventMetadata2 = [equalCopy clientConversationTrace];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  clientConversationTrace = [(SISchemaClientEvent *)self clientConversationTrace];
  if (clientConversationTrace)
  {
    v29 = clientConversationTrace;
    clientConversationTrace2 = [(SISchemaClientEvent *)self clientConversationTrace];
    clientConversationTrace3 = [equalCopy clientConversationTrace];
    v32 = [clientConversationTrace2 isEqual:clientConversationTrace3];

    if (!v32)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self deviceDynamicContext];
  eventMetadata2 = [equalCopy deviceDynamicContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  deviceDynamicContext = [(SISchemaClientEvent *)self deviceDynamicContext];
  if (deviceDynamicContext)
  {
    v34 = deviceDynamicContext;
    deviceDynamicContext2 = [(SISchemaClientEvent *)self deviceDynamicContext];
    deviceDynamicContext3 = [equalCopy deviceDynamicContext];
    v37 = [deviceDynamicContext2 isEqual:deviceDynamicContext3];

    if (!v37)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self deviceFixedContext];
  eventMetadata2 = [equalCopy deviceFixedContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  deviceFixedContext = [(SISchemaClientEvent *)self deviceFixedContext];
  if (deviceFixedContext)
  {
    v39 = deviceFixedContext;
    deviceFixedContext2 = [(SISchemaClientEvent *)self deviceFixedContext];
    deviceFixedContext3 = [equalCopy deviceFixedContext];
    v42 = [deviceFixedContext2 isEqual:deviceFixedContext3];

    if (!v42)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self dictationContext];
  eventMetadata2 = [equalCopy dictationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  dictationContext = [(SISchemaClientEvent *)self dictationContext];
  if (dictationContext)
  {
    v44 = dictationContext;
    dictationContext2 = [(SISchemaClientEvent *)self dictationContext];
    dictationContext3 = [equalCopy dictationContext];
    v47 = [dictationContext2 isEqual:dictationContext3];

    if (!v47)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self invocation];
  eventMetadata2 = [equalCopy invocation];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  invocation = [(SISchemaClientEvent *)self invocation];
  if (invocation)
  {
    v49 = invocation;
    invocation2 = [(SISchemaClientEvent *)self invocation];
    invocation3 = [equalCopy invocation];
    v52 = [invocation2 isEqual:invocation3];

    if (!v52)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self location];
  eventMetadata2 = [equalCopy location];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  location = [(SISchemaClientEvent *)self location];
  if (location)
  {
    v54 = location;
    location2 = [(SISchemaClientEvent *)self location];
    location3 = [equalCopy location];
    v57 = [location2 isEqual:location3];

    if (!v57)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self punchOut];
  eventMetadata2 = [equalCopy punchOut];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  punchOut = [(SISchemaClientEvent *)self punchOut];
  if (punchOut)
  {
    v59 = punchOut;
    punchOut2 = [(SISchemaClientEvent *)self punchOut];
    punchOut3 = [equalCopy punchOut];
    v62 = [punchOut2 isEqual:punchOut3];

    if (!v62)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self siriCue];
  eventMetadata2 = [equalCopy siriCue];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  siriCue = [(SISchemaClientEvent *)self siriCue];
  if (siriCue)
  {
    v64 = siriCue;
    siriCue2 = [(SISchemaClientEvent *)self siriCue];
    siriCue3 = [equalCopy siriCue];
    v67 = [siriCue2 isEqual:siriCue3];

    if (!v67)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self uufrPresented];
  eventMetadata2 = [equalCopy uufrPresented];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  uufrPresented = [(SISchemaClientEvent *)self uufrPresented];
  if (uufrPresented)
  {
    v69 = uufrPresented;
    uufrPresented2 = [(SISchemaClientEvent *)self uufrPresented];
    uufrPresented3 = [equalCopy uufrPresented];
    v72 = [uufrPresented2 isEqual:uufrPresented3];

    if (!v72)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self speechTranscription];
  eventMetadata2 = [equalCopy speechTranscription];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  speechTranscription = [(SISchemaClientEvent *)self speechTranscription];
  if (speechTranscription)
  {
    v74 = speechTranscription;
    speechTranscription2 = [(SISchemaClientEvent *)self speechTranscription];
    speechTranscription3 = [equalCopy speechTranscription];
    v77 = [speechTranscription2 isEqual:speechTranscription3];

    if (!v77)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self textToSpeechBegin];
  eventMetadata2 = [equalCopy textToSpeechBegin];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  textToSpeechBegin = [(SISchemaClientEvent *)self textToSpeechBegin];
  if (textToSpeechBegin)
  {
    v79 = textToSpeechBegin;
    textToSpeechBegin2 = [(SISchemaClientEvent *)self textToSpeechBegin];
    textToSpeechBegin3 = [equalCopy textToSpeechBegin];
    v82 = [textToSpeechBegin2 isEqual:textToSpeechBegin3];

    if (!v82)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self textToSpeechEnd];
  eventMetadata2 = [equalCopy textToSpeechEnd];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  textToSpeechEnd = [(SISchemaClientEvent *)self textToSpeechEnd];
  if (textToSpeechEnd)
  {
    v84 = textToSpeechEnd;
    textToSpeechEnd2 = [(SISchemaClientEvent *)self textToSpeechEnd];
    textToSpeechEnd3 = [equalCopy textToSpeechEnd];
    v87 = [textToSpeechEnd2 isEqual:textToSpeechEnd3];

    if (!v87)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self uiStateTransition];
  eventMetadata2 = [equalCopy uiStateTransition];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  uiStateTransition = [(SISchemaClientEvent *)self uiStateTransition];
  if (uiStateTransition)
  {
    v89 = uiStateTransition;
    uiStateTransition2 = [(SISchemaClientEvent *)self uiStateTransition];
    uiStateTransition3 = [equalCopy uiStateTransition];
    v92 = [uiStateTransition2 isEqual:uiStateTransition3];

    if (!v92)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self clientFlow];
  eventMetadata2 = [equalCopy clientFlow];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  clientFlow = [(SISchemaClientEvent *)self clientFlow];
  if (clientFlow)
  {
    v94 = clientFlow;
    clientFlow2 = [(SISchemaClientEvent *)self clientFlow];
    clientFlow3 = [equalCopy clientFlow];
    v97 = [clientFlow2 isEqual:clientFlow3];

    if (!v97)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self dialogOutput];
  eventMetadata2 = [equalCopy dialogOutput];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  dialogOutput = [(SISchemaClientEvent *)self dialogOutput];
  if (dialogOutput)
  {
    v99 = dialogOutput;
    dialogOutput2 = [(SISchemaClientEvent *)self dialogOutput];
    dialogOutput3 = [equalCopy dialogOutput];
    v102 = [dialogOutput2 isEqual:dialogOutput3];

    if (!v102)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self dictationEndPointStop];
  eventMetadata2 = [equalCopy dictationEndPointStop];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  dictationEndPointStop = [(SISchemaClientEvent *)self dictationEndPointStop];
  if (dictationEndPointStop)
  {
    v104 = dictationEndPointStop;
    dictationEndPointStop2 = [(SISchemaClientEvent *)self dictationEndPointStop];
    dictationEndPointStop3 = [equalCopy dictationEndPointStop];
    v107 = [dictationEndPointStop2 isEqual:dictationEndPointStop3];

    if (!v107)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self dictationEndPointCancel];
  eventMetadata2 = [equalCopy dictationEndPointCancel];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  dictationEndPointCancel = [(SISchemaClientEvent *)self dictationEndPointCancel];
  if (dictationEndPointCancel)
  {
    v109 = dictationEndPointCancel;
    dictationEndPointCancel2 = [(SISchemaClientEvent *)self dictationEndPointCancel];
    dictationEndPointCancel3 = [equalCopy dictationEndPointCancel];
    v112 = [dictationEndPointCancel2 isEqual:dictationEndPointCancel3];

    if (!v112)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self dictationAlternativeSelected];
  eventMetadata2 = [equalCopy dictationAlternativeSelected];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  dictationAlternativeSelected = [(SISchemaClientEvent *)self dictationAlternativeSelected];
  if (dictationAlternativeSelected)
  {
    v114 = dictationAlternativeSelected;
    dictationAlternativeSelected2 = [(SISchemaClientEvent *)self dictationAlternativeSelected];
    dictationAlternativeSelected3 = [equalCopy dictationAlternativeSelected];
    v117 = [dictationAlternativeSelected2 isEqual:dictationAlternativeSelected3];

    if (!v117)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self dictationTranscriptionMetadata];
  eventMetadata2 = [equalCopy dictationTranscriptionMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  dictationTranscriptionMetadata = [(SISchemaClientEvent *)self dictationTranscriptionMetadata];
  if (dictationTranscriptionMetadata)
  {
    v119 = dictationTranscriptionMetadata;
    dictationTranscriptionMetadata2 = [(SISchemaClientEvent *)self dictationTranscriptionMetadata];
    dictationTranscriptionMetadata3 = [equalCopy dictationTranscriptionMetadata];
    v122 = [dictationTranscriptionMetadata2 isEqual:dictationTranscriptionMetadata3];

    if (!v122)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self carPlayHeadUnitContext];
  eventMetadata2 = [equalCopy carPlayHeadUnitContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  carPlayHeadUnitContext = [(SISchemaClientEvent *)self carPlayHeadUnitContext];
  if (carPlayHeadUnitContext)
  {
    v124 = carPlayHeadUnitContext;
    carPlayHeadUnitContext2 = [(SISchemaClientEvent *)self carPlayHeadUnitContext];
    carPlayHeadUnitContext3 = [equalCopy carPlayHeadUnitContext];
    v127 = [carPlayHeadUnitContext2 isEqual:carPlayHeadUnitContext3];

    if (!v127)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self uufrCompletion];
  eventMetadata2 = [equalCopy uufrCompletion];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  uufrCompletion = [(SISchemaClientEvent *)self uufrCompletion];
  if (uufrCompletion)
  {
    v129 = uufrCompletion;
    uufrCompletion2 = [(SISchemaClientEvent *)self uufrCompletion];
    uufrCompletion3 = [equalCopy uufrCompletion];
    v132 = [uufrCompletion2 isEqual:uufrCompletion3];

    if (!v132)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self uufrShown];
  eventMetadata2 = [equalCopy uufrShown];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  uufrShown = [(SISchemaClientEvent *)self uufrShown];
  if (uufrShown)
  {
    v134 = uufrShown;
    uufrShown2 = [(SISchemaClientEvent *)self uufrShown];
    uufrShown3 = [equalCopy uufrShown];
    v137 = [uufrShown2 isEqual:uufrShown3];

    if (!v137)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self uufrSaid];
  eventMetadata2 = [equalCopy uufrSaid];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  uufrSaid = [(SISchemaClientEvent *)self uufrSaid];
  if (uufrSaid)
  {
    v139 = uufrSaid;
    uufrSaid2 = [(SISchemaClientEvent *)self uufrSaid];
    uufrSaid3 = [equalCopy uufrSaid];
    v142 = [uufrSaid2 isEqual:uufrSaid3];

    if (!v142)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self uufrFatalError];
  eventMetadata2 = [equalCopy uufrFatalError];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  uufrFatalError = [(SISchemaClientEvent *)self uufrFatalError];
  if (uufrFatalError)
  {
    v144 = uufrFatalError;
    uufrFatalError2 = [(SISchemaClientEvent *)self uufrFatalError];
    uufrFatalError3 = [equalCopy uufrFatalError];
    v147 = [uufrFatalError2 isEqual:uufrFatalError3];

    if (!v147)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self dictationAlternativesViewed];
  eventMetadata2 = [equalCopy dictationAlternativesViewed];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  dictationAlternativesViewed = [(SISchemaClientEvent *)self dictationAlternativesViewed];
  if (dictationAlternativesViewed)
  {
    v149 = dictationAlternativesViewed;
    dictationAlternativesViewed2 = [(SISchemaClientEvent *)self dictationAlternativesViewed];
    dictationAlternativesViewed3 = [equalCopy dictationAlternativesViewed];
    v152 = [dictationAlternativesViewed2 isEqual:dictationAlternativesViewed3];

    if (!v152)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self intercomMessageRecorded];
  eventMetadata2 = [equalCopy intercomMessageRecorded];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  intercomMessageRecorded = [(SISchemaClientEvent *)self intercomMessageRecorded];
  if (intercomMessageRecorded)
  {
    v154 = intercomMessageRecorded;
    intercomMessageRecorded2 = [(SISchemaClientEvent *)self intercomMessageRecorded];
    intercomMessageRecorded3 = [equalCopy intercomMessageRecorded];
    v157 = [intercomMessageRecorded2 isEqual:intercomMessageRecorded3];

    if (!v157)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self casinoRelationship];
  eventMetadata2 = [equalCopy casinoRelationship];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  casinoRelationship = [(SISchemaClientEvent *)self casinoRelationship];
  if (casinoRelationship)
  {
    v159 = casinoRelationship;
    casinoRelationship2 = [(SISchemaClientEvent *)self casinoRelationship];
    casinoRelationship3 = [equalCopy casinoRelationship];
    v162 = [casinoRelationship2 isEqual:casinoRelationship3];

    if (!v162)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self userViewRegionInteraction];
  eventMetadata2 = [equalCopy userViewRegionInteraction];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  userViewRegionInteraction = [(SISchemaClientEvent *)self userViewRegionInteraction];
  if (userViewRegionInteraction)
  {
    v164 = userViewRegionInteraction;
    userViewRegionInteraction2 = [(SISchemaClientEvent *)self userViewRegionInteraction];
    userViewRegionInteraction3 = [equalCopy userViewRegionInteraction];
    v167 = [userViewRegionInteraction2 isEqual:userViewRegionInteraction3];

    if (!v167)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self deviceLockStateChanged];
  eventMetadata2 = [equalCopy deviceLockStateChanged];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  deviceLockStateChanged = [(SISchemaClientEvent *)self deviceLockStateChanged];
  if (deviceLockStateChanged)
  {
    v169 = deviceLockStateChanged;
    deviceLockStateChanged2 = [(SISchemaClientEvent *)self deviceLockStateChanged];
    deviceLockStateChanged3 = [equalCopy deviceLockStateChanged];
    v172 = [deviceLockStateChanged2 isEqual:deviceLockStateChanged3];

    if (!v172)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiRequestCategorization];
  eventMetadata2 = [equalCopy ueiRequestCategorization];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiRequestCategorization = [(SISchemaClientEvent *)self ueiRequestCategorization];
  if (ueiRequestCategorization)
  {
    v174 = ueiRequestCategorization;
    ueiRequestCategorization2 = [(SISchemaClientEvent *)self ueiRequestCategorization];
    ueiRequestCategorization3 = [equalCopy ueiRequestCategorization];
    v177 = [ueiRequestCategorization2 isEqual:ueiRequestCategorization3];

    if (!v177)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self audioStopRecordingStarted];
  eventMetadata2 = [equalCopy audioStopRecordingStarted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  audioStopRecordingStarted = [(SISchemaClientEvent *)self audioStopRecordingStarted];
  if (audioStopRecordingStarted)
  {
    v179 = audioStopRecordingStarted;
    audioStopRecordingStarted2 = [(SISchemaClientEvent *)self audioStopRecordingStarted];
    audioStopRecordingStarted3 = [equalCopy audioStopRecordingStarted];
    v182 = [audioStopRecordingStarted2 isEqual:audioStopRecordingStarted3];

    if (!v182)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiLaunchContext];
  eventMetadata2 = [equalCopy ueiLaunchContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiLaunchContext = [(SISchemaClientEvent *)self ueiLaunchContext];
  if (ueiLaunchContext)
  {
    v184 = ueiLaunchContext;
    ueiLaunchContext2 = [(SISchemaClientEvent *)self ueiLaunchContext];
    ueiLaunchContext3 = [equalCopy ueiLaunchContext];
    v187 = [ueiLaunchContext2 isEqual:ueiLaunchContext3];

    if (!v187)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiUserSpeakingContext];
  eventMetadata2 = [equalCopy ueiUserSpeakingContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiUserSpeakingContext = [(SISchemaClientEvent *)self ueiUserSpeakingContext];
  if (ueiUserSpeakingContext)
  {
    v189 = ueiUserSpeakingContext;
    ueiUserSpeakingContext2 = [(SISchemaClientEvent *)self ueiUserSpeakingContext];
    ueiUserSpeakingContext3 = [equalCopy ueiUserSpeakingContext];
    v192 = [ueiUserSpeakingContext2 isEqual:ueiUserSpeakingContext3];

    if (!v192)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiUUFRReady];
  eventMetadata2 = [equalCopy ueiUUFRReady];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiUUFRReady = [(SISchemaClientEvent *)self ueiUUFRReady];
  if (ueiUUFRReady)
  {
    v194 = ueiUUFRReady;
    ueiUUFRReady2 = [(SISchemaClientEvent *)self ueiUUFRReady];
    ueiUUFRReady3 = [equalCopy ueiUUFRReady];
    v197 = [ueiUUFRReady2 isEqual:ueiUUFRReady3];

    if (!v197)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiUIRenderingContext];
  eventMetadata2 = [equalCopy ueiUIRenderingContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiUIRenderingContext = [(SISchemaClientEvent *)self ueiUIRenderingContext];
  if (ueiUIRenderingContext)
  {
    v199 = ueiUIRenderingContext;
    ueiUIRenderingContext2 = [(SISchemaClientEvent *)self ueiUIRenderingContext];
    ueiUIRenderingContext3 = [equalCopy ueiUIRenderingContext];
    v202 = [ueiUIRenderingContext2 isEqual:ueiUIRenderingContext3];

    if (!v202)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self pnrTextToSpeechRequestReceived];
  eventMetadata2 = [equalCopy pnrTextToSpeechRequestReceived];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  pnrTextToSpeechRequestReceived = [(SISchemaClientEvent *)self pnrTextToSpeechRequestReceived];
  if (pnrTextToSpeechRequestReceived)
  {
    v204 = pnrTextToSpeechRequestReceived;
    pnrTextToSpeechRequestReceived2 = [(SISchemaClientEvent *)self pnrTextToSpeechRequestReceived];
    pnrTextToSpeechRequestReceived3 = [equalCopy pnrTextToSpeechRequestReceived];
    v207 = [pnrTextToSpeechRequestReceived2 isEqual:pnrTextToSpeechRequestReceived3];

    if (!v207)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self pnrSpeechRecognitionSourceContext];
  eventMetadata2 = [equalCopy pnrSpeechRecognitionSourceContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  pnrSpeechRecognitionSourceContext = [(SISchemaClientEvent *)self pnrSpeechRecognitionSourceContext];
  if (pnrSpeechRecognitionSourceContext)
  {
    v209 = pnrSpeechRecognitionSourceContext;
    pnrSpeechRecognitionSourceContext2 = [(SISchemaClientEvent *)self pnrSpeechRecognitionSourceContext];
    pnrSpeechRecognitionSourceContext3 = [equalCopy pnrSpeechRecognitionSourceContext];
    v212 = [pnrSpeechRecognitionSourceContext2 isEqual:pnrSpeechRecognitionSourceContext3];

    if (!v212)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self pnrFatalError];
  eventMetadata2 = [equalCopy pnrFatalError];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  pnrFatalError = [(SISchemaClientEvent *)self pnrFatalError];
  if (pnrFatalError)
  {
    v214 = pnrFatalError;
    pnrFatalError2 = [(SISchemaClientEvent *)self pnrFatalError];
    pnrFatalError3 = [equalCopy pnrFatalError];
    v217 = [pnrFatalError2 isEqual:pnrFatalError3];

    if (!v217)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self turnMTERequest];
  eventMetadata2 = [equalCopy turnMTERequest];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  turnMTERequest = [(SISchemaClientEvent *)self turnMTERequest];
  if (turnMTERequest)
  {
    v219 = turnMTERequest;
    turnMTERequest2 = [(SISchemaClientEvent *)self turnMTERequest];
    turnMTERequest3 = [equalCopy turnMTERequest];
    v222 = [turnMTERequest2 isEqual:turnMTERequest3];

    if (!v222)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self keyboardDismissed];
  eventMetadata2 = [equalCopy keyboardDismissed];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  keyboardDismissed = [(SISchemaClientEvent *)self keyboardDismissed];
  if (keyboardDismissed)
  {
    v224 = keyboardDismissed;
    keyboardDismissed2 = [(SISchemaClientEvent *)self keyboardDismissed];
    keyboardDismissed3 = [equalCopy keyboardDismissed];
    v227 = [keyboardDismissed2 isEqual:keyboardDismissed3];

    if (!v227)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self engagedAccessoryContext];
  eventMetadata2 = [equalCopy engagedAccessoryContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  engagedAccessoryContext = [(SISchemaClientEvent *)self engagedAccessoryContext];
  if (engagedAccessoryContext)
  {
    v229 = engagedAccessoryContext;
    engagedAccessoryContext2 = [(SISchemaClientEvent *)self engagedAccessoryContext];
    engagedAccessoryContext3 = [equalCopy engagedAccessoryContext];
    v232 = [engagedAccessoryContext2 isEqual:engagedAccessoryContext3];

    if (!v232)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self announceCarPlayBannerTapped];
  eventMetadata2 = [equalCopy announceCarPlayBannerTapped];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  announceCarPlayBannerTapped = [(SISchemaClientEvent *)self announceCarPlayBannerTapped];
  if (announceCarPlayBannerTapped)
  {
    v234 = announceCarPlayBannerTapped;
    announceCarPlayBannerTapped2 = [(SISchemaClientEvent *)self announceCarPlayBannerTapped];
    announceCarPlayBannerTapped3 = [equalCopy announceCarPlayBannerTapped];
    v237 = [announceCarPlayBannerTapped2 isEqual:announceCarPlayBannerTapped3];

    if (!v237)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self announceCarPlayGlyphSettingToggled];
  eventMetadata2 = [equalCopy announceCarPlayGlyphSettingToggled];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  announceCarPlayGlyphSettingToggled = [(SISchemaClientEvent *)self announceCarPlayGlyphSettingToggled];
  if (announceCarPlayGlyphSettingToggled)
  {
    v239 = announceCarPlayGlyphSettingToggled;
    announceCarPlayGlyphSettingToggled2 = [(SISchemaClientEvent *)self announceCarPlayGlyphSettingToggled];
    announceCarPlayGlyphSettingToggled3 = [equalCopy announceCarPlayGlyphSettingToggled];
    v242 = [announceCarPlayGlyphSettingToggled2 isEqual:announceCarPlayGlyphSettingToggled3];

    if (!v242)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self dictationContentEdited];
  eventMetadata2 = [equalCopy dictationContentEdited];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  dictationContentEdited = [(SISchemaClientEvent *)self dictationContentEdited];
  if (dictationContentEdited)
  {
    v244 = dictationContentEdited;
    dictationContentEdited2 = [(SISchemaClientEvent *)self dictationContentEdited];
    dictationContentEdited3 = [equalCopy dictationContentEdited];
    v247 = [dictationContentEdited2 isEqual:dictationContentEdited3];

    if (!v247)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self uufrShownTier1];
  eventMetadata2 = [equalCopy uufrShownTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  uufrShownTier1 = [(SISchemaClientEvent *)self uufrShownTier1];
  if (uufrShownTier1)
  {
    v249 = uufrShownTier1;
    uufrShownTier12 = [(SISchemaClientEvent *)self uufrShownTier1];
    uufrShownTier13 = [equalCopy uufrShownTier1];
    v252 = [uufrShownTier12 isEqual:uufrShownTier13];

    if (!v252)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiDictationPartialResultUpdated];
  eventMetadata2 = [equalCopy ueiDictationPartialResultUpdated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiDictationPartialResultUpdated = [(SISchemaClientEvent *)self ueiDictationPartialResultUpdated];
  if (ueiDictationPartialResultUpdated)
  {
    v254 = ueiDictationPartialResultUpdated;
    ueiDictationPartialResultUpdated2 = [(SISchemaClientEvent *)self ueiDictationPartialResultUpdated];
    ueiDictationPartialResultUpdated3 = [equalCopy ueiDictationPartialResultUpdated];
    v257 = [ueiDictationPartialResultUpdated2 isEqual:ueiDictationPartialResultUpdated3];

    if (!v257)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiDictationVoiceCommandExecuted];
  eventMetadata2 = [equalCopy ueiDictationVoiceCommandExecuted];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiDictationVoiceCommandExecuted = [(SISchemaClientEvent *)self ueiDictationVoiceCommandExecuted];
  if (ueiDictationVoiceCommandExecuted)
  {
    v259 = ueiDictationVoiceCommandExecuted;
    ueiDictationVoiceCommandExecuted2 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandExecuted];
    ueiDictationVoiceCommandExecuted3 = [equalCopy ueiDictationVoiceCommandExecuted];
    v262 = [ueiDictationVoiceCommandExecuted2 isEqual:ueiDictationVoiceCommandExecuted3];

    if (!v262)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiDictationInputModeSwitchContext];
  eventMetadata2 = [equalCopy ueiDictationInputModeSwitchContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiDictationInputModeSwitchContext = [(SISchemaClientEvent *)self ueiDictationInputModeSwitchContext];
  if (ueiDictationInputModeSwitchContext)
  {
    v264 = ueiDictationInputModeSwitchContext;
    ueiDictationInputModeSwitchContext2 = [(SISchemaClientEvent *)self ueiDictationInputModeSwitchContext];
    ueiDictationInputModeSwitchContext3 = [equalCopy ueiDictationInputModeSwitchContext];
    v267 = [ueiDictationInputModeSwitchContext2 isEqual:ueiDictationInputModeSwitchContext3];

    if (!v267)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiDictationToolTipDisplayContext];
  eventMetadata2 = [equalCopy ueiDictationToolTipDisplayContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiDictationToolTipDisplayContext = [(SISchemaClientEvent *)self ueiDictationToolTipDisplayContext];
  if (ueiDictationToolTipDisplayContext)
  {
    v269 = ueiDictationToolTipDisplayContext;
    ueiDictationToolTipDisplayContext2 = [(SISchemaClientEvent *)self ueiDictationToolTipDisplayContext];
    ueiDictationToolTipDisplayContext3 = [equalCopy ueiDictationToolTipDisplayContext];
    v272 = [ueiDictationToolTipDisplayContext2 isEqual:ueiDictationToolTipDisplayContext3];

    if (!v272)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self hostPlatformViewAppearContext];
  eventMetadata2 = [equalCopy hostPlatformViewAppearContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  hostPlatformViewAppearContext = [(SISchemaClientEvent *)self hostPlatformViewAppearContext];
  if (hostPlatformViewAppearContext)
  {
    v274 = hostPlatformViewAppearContext;
    hostPlatformViewAppearContext2 = [(SISchemaClientEvent *)self hostPlatformViewAppearContext];
    hostPlatformViewAppearContext3 = [equalCopy hostPlatformViewAppearContext];
    v277 = [hostPlatformViewAppearContext2 isEqual:hostPlatformViewAppearContext3];

    if (!v277)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self hostPlatformViewDisappearContext];
  eventMetadata2 = [equalCopy hostPlatformViewDisappearContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  hostPlatformViewDisappearContext = [(SISchemaClientEvent *)self hostPlatformViewDisappearContext];
  if (hostPlatformViewDisappearContext)
  {
    v279 = hostPlatformViewDisappearContext;
    hostPlatformViewDisappearContext2 = [(SISchemaClientEvent *)self hostPlatformViewDisappearContext];
    hostPlatformViewDisappearContext3 = [equalCopy hostPlatformViewDisappearContext];
    v282 = [hostPlatformViewDisappearContext2 isEqual:hostPlatformViewDisappearContext3];

    if (!v282)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiDictationTranscriptionTokenized];
  eventMetadata2 = [equalCopy ueiDictationTranscriptionTokenized];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiDictationTranscriptionTokenized = [(SISchemaClientEvent *)self ueiDictationTranscriptionTokenized];
  if (ueiDictationTranscriptionTokenized)
  {
    v284 = ueiDictationTranscriptionTokenized;
    ueiDictationTranscriptionTokenized2 = [(SISchemaClientEvent *)self ueiDictationTranscriptionTokenized];
    ueiDictationTranscriptionTokenized3 = [equalCopy ueiDictationTranscriptionTokenized];
    v287 = [ueiDictationTranscriptionTokenized2 isEqual:ueiDictationTranscriptionTokenized3];

    if (!v287)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self dictationAlternativesSelected];
  eventMetadata2 = [equalCopy dictationAlternativesSelected];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  dictationAlternativesSelected = [(SISchemaClientEvent *)self dictationAlternativesSelected];
  if (dictationAlternativesSelected)
  {
    v289 = dictationAlternativesSelected;
    dictationAlternativesSelected2 = [(SISchemaClientEvent *)self dictationAlternativesSelected];
    dictationAlternativesSelected3 = [equalCopy dictationAlternativesSelected];
    v292 = [dictationAlternativesSelected2 isEqual:dictationAlternativesSelected3];

    if (!v292)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self uufrSelected];
  eventMetadata2 = [equalCopy uufrSelected];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  uufrSelected = [(SISchemaClientEvent *)self uufrSelected];
  if (uufrSelected)
  {
    v294 = uufrSelected;
    uufrSelected2 = [(SISchemaClientEvent *)self uufrSelected];
    uufrSelected3 = [equalCopy uufrSelected];
    v297 = [uufrSelected2 isEqual:uufrSelected3];

    if (!v297)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiDictationAlternativeTextPairsSelected];
  eventMetadata2 = [equalCopy ueiDictationAlternativeTextPairsSelected];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiDictationAlternativeTextPairsSelected = [(SISchemaClientEvent *)self ueiDictationAlternativeTextPairsSelected];
  if (ueiDictationAlternativeTextPairsSelected)
  {
    v299 = ueiDictationAlternativeTextPairsSelected;
    ueiDictationAlternativeTextPairsSelected2 = [(SISchemaClientEvent *)self ueiDictationAlternativeTextPairsSelected];
    ueiDictationAlternativeTextPairsSelected3 = [equalCopy ueiDictationAlternativeTextPairsSelected];
    v302 = [ueiDictationAlternativeTextPairsSelected2 isEqual:ueiDictationAlternativeTextPairsSelected3];

    if (!v302)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiUserBargeInDetected];
  eventMetadata2 = [equalCopy ueiUserBargeInDetected];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiUserBargeInDetected = [(SISchemaClientEvent *)self ueiUserBargeInDetected];
  if (ueiUserBargeInDetected)
  {
    v304 = ueiUserBargeInDetected;
    ueiUserBargeInDetected2 = [(SISchemaClientEvent *)self ueiUserBargeInDetected];
    ueiUserBargeInDetected3 = [equalCopy ueiUserBargeInDetected];
    v307 = [ueiUserBargeInDetected2 isEqual:ueiUserBargeInDetected3];

    if (!v307)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiDictationEnablementPromptShown];
  eventMetadata2 = [equalCopy ueiDictationEnablementPromptShown];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiDictationEnablementPromptShown = [(SISchemaClientEvent *)self ueiDictationEnablementPromptShown];
  if (ueiDictationEnablementPromptShown)
  {
    v309 = ueiDictationEnablementPromptShown;
    ueiDictationEnablementPromptShown2 = [(SISchemaClientEvent *)self ueiDictationEnablementPromptShown];
    ueiDictationEnablementPromptShown3 = [equalCopy ueiDictationEnablementPromptShown];
    v312 = [ueiDictationEnablementPromptShown2 isEqual:ueiDictationEnablementPromptShown3];

    if (!v312)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiSiriCarCommandContext];
  eventMetadata2 = [equalCopy ueiSiriCarCommandContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiSiriCarCommandContext = [(SISchemaClientEvent *)self ueiSiriCarCommandContext];
  if (ueiSiriCarCommandContext)
  {
    v314 = ueiSiriCarCommandContext;
    ueiSiriCarCommandContext2 = [(SISchemaClientEvent *)self ueiSiriCarCommandContext];
    ueiSiriCarCommandContext3 = [equalCopy ueiSiriCarCommandContext];
    v317 = [ueiSiriCarCommandContext2 isEqual:ueiSiriCarCommandContext3];

    if (!v317)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiVisionSnippetDismissed];
  eventMetadata2 = [equalCopy ueiVisionSnippetDismissed];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiVisionSnippetDismissed = [(SISchemaClientEvent *)self ueiVisionSnippetDismissed];
  if (ueiVisionSnippetDismissed)
  {
    v319 = ueiVisionSnippetDismissed;
    ueiVisionSnippetDismissed2 = [(SISchemaClientEvent *)self ueiVisionSnippetDismissed];
    ueiVisionSnippetDismissed3 = [equalCopy ueiVisionSnippetDismissed];
    v322 = [ueiVisionSnippetDismissed2 isEqual:ueiVisionSnippetDismissed3];

    if (!v322)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiSiriWasUnavailable];
  eventMetadata2 = [equalCopy ueiSiriWasUnavailable];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiSiriWasUnavailable = [(SISchemaClientEvent *)self ueiSiriWasUnavailable];
  if (ueiSiriWasUnavailable)
  {
    v324 = ueiSiriWasUnavailable;
    ueiSiriWasUnavailable2 = [(SISchemaClientEvent *)self ueiSiriWasUnavailable];
    ueiSiriWasUnavailable3 = [equalCopy ueiSiriWasUnavailable];
    v327 = [ueiSiriWasUnavailable2 isEqual:ueiSiriWasUnavailable3];

    if (!v327)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self preferredAudioRouteChanged];
  eventMetadata2 = [equalCopy preferredAudioRouteChanged];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  preferredAudioRouteChanged = [(SISchemaClientEvent *)self preferredAudioRouteChanged];
  if (preferredAudioRouteChanged)
  {
    v329 = preferredAudioRouteChanged;
    preferredAudioRouteChanged2 = [(SISchemaClientEvent *)self preferredAudioRouteChanged];
    preferredAudioRouteChanged3 = [equalCopy preferredAudioRouteChanged];
    v332 = [preferredAudioRouteChanged2 isEqual:preferredAudioRouteChanged3];

    if (!v332)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiDictationContentEditedTier1];
  eventMetadata2 = [equalCopy ueiDictationContentEditedTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiDictationContentEditedTier1 = [(SISchemaClientEvent *)self ueiDictationContentEditedTier1];
  if (ueiDictationContentEditedTier1)
  {
    v334 = ueiDictationContentEditedTier1;
    ueiDictationContentEditedTier12 = [(SISchemaClientEvent *)self ueiDictationContentEditedTier1];
    ueiDictationContentEditedTier13 = [equalCopy ueiDictationContentEditedTier1];
    v337 = [ueiDictationContentEditedTier12 isEqual:ueiDictationContentEditedTier13];

    if (!v337)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiDictationVoiceCommandUndoTapAction];
  eventMetadata2 = [equalCopy ueiDictationVoiceCommandUndoTapAction];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiDictationVoiceCommandUndoTapAction = [(SISchemaClientEvent *)self ueiDictationVoiceCommandUndoTapAction];
  if (ueiDictationVoiceCommandUndoTapAction)
  {
    v339 = ueiDictationVoiceCommandUndoTapAction;
    ueiDictationVoiceCommandUndoTapAction2 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandUndoTapAction];
    ueiDictationVoiceCommandUndoTapAction3 = [equalCopy ueiDictationVoiceCommandUndoTapAction];
    v342 = [ueiDictationVoiceCommandUndoTapAction2 isEqual:ueiDictationVoiceCommandUndoTapAction3];

    if (!v342)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiDictationVoiceCommandDisambiguationAction];
  eventMetadata2 = [equalCopy ueiDictationVoiceCommandDisambiguationAction];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiDictationVoiceCommandDisambiguationAction = [(SISchemaClientEvent *)self ueiDictationVoiceCommandDisambiguationAction];
  if (ueiDictationVoiceCommandDisambiguationAction)
  {
    v344 = ueiDictationVoiceCommandDisambiguationAction;
    ueiDictationVoiceCommandDisambiguationAction2 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandDisambiguationAction];
    ueiDictationVoiceCommandDisambiguationAction3 = [equalCopy ueiDictationVoiceCommandDisambiguationAction];
    v347 = [ueiDictationVoiceCommandDisambiguationAction2 isEqual:ueiDictationVoiceCommandDisambiguationAction3];

    if (!v347)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiDictationVoiceCommandKeyboardAction];
  eventMetadata2 = [equalCopy ueiDictationVoiceCommandKeyboardAction];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiDictationVoiceCommandKeyboardAction = [(SISchemaClientEvent *)self ueiDictationVoiceCommandKeyboardAction];
  if (ueiDictationVoiceCommandKeyboardAction)
  {
    v349 = ueiDictationVoiceCommandKeyboardAction;
    ueiDictationVoiceCommandKeyboardAction2 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandKeyboardAction];
    ueiDictationVoiceCommandKeyboardAction3 = [equalCopy ueiDictationVoiceCommandKeyboardAction];
    v352 = [ueiDictationVoiceCommandKeyboardAction2 isEqual:ueiDictationVoiceCommandKeyboardAction3];

    if (!v352)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEvent];
  eventMetadata2 = [equalCopy ueiDictationEuclidAlternativesEvent];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiDictationEuclidAlternativesEvent = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEvent];
  if (ueiDictationEuclidAlternativesEvent)
  {
    v354 = ueiDictationEuclidAlternativesEvent;
    ueiDictationEuclidAlternativesEvent2 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEvent];
    ueiDictationEuclidAlternativesEvent3 = [equalCopy ueiDictationEuclidAlternativesEvent];
    v357 = [ueiDictationEuclidAlternativesEvent2 isEqual:ueiDictationEuclidAlternativesEvent3];

    if (!v357)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEventTier1];
  eventMetadata2 = [equalCopy ueiDictationEuclidAlternativesEventTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiDictationEuclidAlternativesEventTier1 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEventTier1];
  if (ueiDictationEuclidAlternativesEventTier1)
  {
    v359 = ueiDictationEuclidAlternativesEventTier1;
    ueiDictationEuclidAlternativesEventTier12 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEventTier1];
    ueiDictationEuclidAlternativesEventTier13 = [equalCopy ueiDictationEuclidAlternativesEventTier1];
    v362 = [ueiDictationEuclidAlternativesEventTier12 isEqual:ueiDictationEuclidAlternativesEventTier13];

    if (!v362)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelected];
  eventMetadata2 = [equalCopy ueiDictationEuclidSpeechAlternativesSelected];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiDictationEuclidSpeechAlternativesSelected = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelected];
  if (ueiDictationEuclidSpeechAlternativesSelected)
  {
    v364 = ueiDictationEuclidSpeechAlternativesSelected;
    ueiDictationEuclidSpeechAlternativesSelected2 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelected];
    ueiDictationEuclidSpeechAlternativesSelected3 = [equalCopy ueiDictationEuclidSpeechAlternativesSelected];
    v367 = [ueiDictationEuclidSpeechAlternativesSelected2 isEqual:ueiDictationEuclidSpeechAlternativesSelected3];

    if (!v367)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelectedTier1];
  eventMetadata2 = [equalCopy ueiDictationEuclidSpeechAlternativesSelectedTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelectedTier1];
  if (ueiDictationEuclidSpeechAlternativesSelectedTier1)
  {
    v369 = ueiDictationEuclidSpeechAlternativesSelectedTier1;
    ueiDictationEuclidSpeechAlternativesSelectedTier12 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelectedTier1];
    ueiDictationEuclidSpeechAlternativesSelectedTier13 = [equalCopy ueiDictationEuclidSpeechAlternativesSelectedTier1];
    v372 = [ueiDictationEuclidSpeechAlternativesSelectedTier12 isEqual:ueiDictationEuclidSpeechAlternativesSelectedTier13];

    if (!v372)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self typingRequestTrace];
  eventMetadata2 = [equalCopy typingRequestTrace];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  typingRequestTrace = [(SISchemaClientEvent *)self typingRequestTrace];
  if (typingRequestTrace)
  {
    v374 = typingRequestTrace;
    typingRequestTrace2 = [(SISchemaClientEvent *)self typingRequestTrace];
    typingRequestTrace3 = [equalCopy typingRequestTrace];
    v377 = [typingRequestTrace2 isEqual:typingRequestTrace3];

    if (!v377)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self ueiInvocationTier1];
  eventMetadata2 = [equalCopy ueiInvocationTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  ueiInvocationTier1 = [(SISchemaClientEvent *)self ueiInvocationTier1];
  if (ueiInvocationTier1)
  {
    v379 = ueiInvocationTier1;
    ueiInvocationTier12 = [(SISchemaClientEvent *)self ueiInvocationTier1];
    ueiInvocationTier13 = [equalCopy ueiInvocationTier1];
    v382 = [ueiInvocationTier12 isEqual:ueiInvocationTier13];

    if (!v382)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self transcriptShown];
  eventMetadata2 = [equalCopy transcriptShown];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_387;
  }

  transcriptShown = [(SISchemaClientEvent *)self transcriptShown];
  if (transcriptShown)
  {
    v384 = transcriptShown;
    transcriptShown2 = [(SISchemaClientEvent *)self transcriptShown];
    transcriptShown3 = [equalCopy transcriptShown];
    v387 = [transcriptShown2 isEqual:transcriptShown3];

    if (!v387)
    {
      goto LABEL_388;
    }
  }

  else
  {
  }

  eventMetadata = [(SISchemaClientEvent *)self transcriptTapped];
  eventMetadata2 = [equalCopy transcriptTapped];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
LABEL_387:

    goto LABEL_388;
  }

  transcriptTapped = [(SISchemaClientEvent *)self transcriptTapped];
  if (!transcriptTapped)
  {

LABEL_391:
    v393 = 1;
    goto LABEL_389;
  }

  v389 = transcriptTapped;
  transcriptTapped2 = [(SISchemaClientEvent *)self transcriptTapped];
  transcriptTapped3 = [equalCopy transcriptTapped];
  v392 = [transcriptTapped2 isEqual:transcriptTapped3];

  if (v392)
  {
    goto LABEL_391;
  }

LABEL_388:
  v393 = 0;
LABEL_389:

  return v393;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(SISchemaClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(SISchemaClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  transportMetadata = [(SISchemaClientEvent *)self transportMetadata];

  if (transportMetadata)
  {
    transportMetadata2 = [(SISchemaClientEvent *)self transportMetadata];
    PBDataWriterWriteSubmessage();
  }

  audioFirstBufferRecorded = [(SISchemaClientEvent *)self audioFirstBufferRecorded];

  if (audioFirstBufferRecorded)
  {
    audioFirstBufferRecorded2 = [(SISchemaClientEvent *)self audioFirstBufferRecorded];
    PBDataWriterWriteSubmessage();
  }

  audioStopRecording = [(SISchemaClientEvent *)self audioStopRecording];

  if (audioStopRecording)
  {
    audioStopRecording2 = [(SISchemaClientEvent *)self audioStopRecording];
    PBDataWriterWriteSubmessage();
  }

  clientConversationTrace = [(SISchemaClientEvent *)self clientConversationTrace];

  if (clientConversationTrace)
  {
    clientConversationTrace2 = [(SISchemaClientEvent *)self clientConversationTrace];
    PBDataWriterWriteSubmessage();
  }

  deviceDynamicContext = [(SISchemaClientEvent *)self deviceDynamicContext];

  if (deviceDynamicContext)
  {
    deviceDynamicContext2 = [(SISchemaClientEvent *)self deviceDynamicContext];
    PBDataWriterWriteSubmessage();
  }

  deviceFixedContext = [(SISchemaClientEvent *)self deviceFixedContext];

  if (deviceFixedContext)
  {
    deviceFixedContext2 = [(SISchemaClientEvent *)self deviceFixedContext];
    PBDataWriterWriteSubmessage();
  }

  dictationContext = [(SISchemaClientEvent *)self dictationContext];

  if (dictationContext)
  {
    dictationContext2 = [(SISchemaClientEvent *)self dictationContext];
    PBDataWriterWriteSubmessage();
  }

  invocation = [(SISchemaClientEvent *)self invocation];

  if (invocation)
  {
    invocation2 = [(SISchemaClientEvent *)self invocation];
    PBDataWriterWriteSubmessage();
  }

  location = [(SISchemaClientEvent *)self location];

  if (location)
  {
    location2 = [(SISchemaClientEvent *)self location];
    PBDataWriterWriteSubmessage();
  }

  punchOut = [(SISchemaClientEvent *)self punchOut];

  if (punchOut)
  {
    punchOut2 = [(SISchemaClientEvent *)self punchOut];
    PBDataWriterWriteSubmessage();
  }

  siriCue = [(SISchemaClientEvent *)self siriCue];

  if (siriCue)
  {
    siriCue2 = [(SISchemaClientEvent *)self siriCue];
    PBDataWriterWriteSubmessage();
  }

  uufrPresented = [(SISchemaClientEvent *)self uufrPresented];

  if (uufrPresented)
  {
    uufrPresented2 = [(SISchemaClientEvent *)self uufrPresented];
    PBDataWriterWriteSubmessage();
  }

  speechTranscription = [(SISchemaClientEvent *)self speechTranscription];

  if (speechTranscription)
  {
    speechTranscription2 = [(SISchemaClientEvent *)self speechTranscription];
    PBDataWriterWriteSubmessage();
  }

  textToSpeechBegin = [(SISchemaClientEvent *)self textToSpeechBegin];

  if (textToSpeechBegin)
  {
    textToSpeechBegin2 = [(SISchemaClientEvent *)self textToSpeechBegin];
    PBDataWriterWriteSubmessage();
  }

  textToSpeechEnd = [(SISchemaClientEvent *)self textToSpeechEnd];

  if (textToSpeechEnd)
  {
    textToSpeechEnd2 = [(SISchemaClientEvent *)self textToSpeechEnd];
    PBDataWriterWriteSubmessage();
  }

  uiStateTransition = [(SISchemaClientEvent *)self uiStateTransition];

  if (uiStateTransition)
  {
    uiStateTransition2 = [(SISchemaClientEvent *)self uiStateTransition];
    PBDataWriterWriteSubmessage();
  }

  clientFlow = [(SISchemaClientEvent *)self clientFlow];

  if (clientFlow)
  {
    clientFlow2 = [(SISchemaClientEvent *)self clientFlow];
    PBDataWriterWriteSubmessage();
  }

  dialogOutput = [(SISchemaClientEvent *)self dialogOutput];

  if (dialogOutput)
  {
    dialogOutput2 = [(SISchemaClientEvent *)self dialogOutput];
    PBDataWriterWriteSubmessage();
  }

  dictationEndPointStop = [(SISchemaClientEvent *)self dictationEndPointStop];

  if (dictationEndPointStop)
  {
    dictationEndPointStop2 = [(SISchemaClientEvent *)self dictationEndPointStop];
    PBDataWriterWriteSubmessage();
  }

  dictationEndPointCancel = [(SISchemaClientEvent *)self dictationEndPointCancel];

  if (dictationEndPointCancel)
  {
    dictationEndPointCancel2 = [(SISchemaClientEvent *)self dictationEndPointCancel];
    PBDataWriterWriteSubmessage();
  }

  dictationAlternativeSelected = [(SISchemaClientEvent *)self dictationAlternativeSelected];

  if (dictationAlternativeSelected)
  {
    dictationAlternativeSelected2 = [(SISchemaClientEvent *)self dictationAlternativeSelected];
    PBDataWriterWriteSubmessage();
  }

  dictationTranscriptionMetadata = [(SISchemaClientEvent *)self dictationTranscriptionMetadata];

  if (dictationTranscriptionMetadata)
  {
    dictationTranscriptionMetadata2 = [(SISchemaClientEvent *)self dictationTranscriptionMetadata];
    PBDataWriterWriteSubmessage();
  }

  carPlayHeadUnitContext = [(SISchemaClientEvent *)self carPlayHeadUnitContext];

  if (carPlayHeadUnitContext)
  {
    carPlayHeadUnitContext2 = [(SISchemaClientEvent *)self carPlayHeadUnitContext];
    PBDataWriterWriteSubmessage();
  }

  uufrCompletion = [(SISchemaClientEvent *)self uufrCompletion];

  if (uufrCompletion)
  {
    uufrCompletion2 = [(SISchemaClientEvent *)self uufrCompletion];
    PBDataWriterWriteSubmessage();
  }

  uufrShown = [(SISchemaClientEvent *)self uufrShown];

  if (uufrShown)
  {
    uufrShown2 = [(SISchemaClientEvent *)self uufrShown];
    PBDataWriterWriteSubmessage();
  }

  uufrSaid = [(SISchemaClientEvent *)self uufrSaid];

  if (uufrSaid)
  {
    uufrSaid2 = [(SISchemaClientEvent *)self uufrSaid];
    PBDataWriterWriteSubmessage();
  }

  uufrFatalError = [(SISchemaClientEvent *)self uufrFatalError];

  if (uufrFatalError)
  {
    uufrFatalError2 = [(SISchemaClientEvent *)self uufrFatalError];
    PBDataWriterWriteSubmessage();
  }

  dictationAlternativesViewed = [(SISchemaClientEvent *)self dictationAlternativesViewed];

  if (dictationAlternativesViewed)
  {
    dictationAlternativesViewed2 = [(SISchemaClientEvent *)self dictationAlternativesViewed];
    PBDataWriterWriteSubmessage();
  }

  intercomMessageRecorded = [(SISchemaClientEvent *)self intercomMessageRecorded];

  if (intercomMessageRecorded)
  {
    intercomMessageRecorded2 = [(SISchemaClientEvent *)self intercomMessageRecorded];
    PBDataWriterWriteSubmessage();
  }

  casinoRelationship = [(SISchemaClientEvent *)self casinoRelationship];

  if (casinoRelationship)
  {
    casinoRelationship2 = [(SISchemaClientEvent *)self casinoRelationship];
    PBDataWriterWriteSubmessage();
  }

  userViewRegionInteraction = [(SISchemaClientEvent *)self userViewRegionInteraction];

  if (userViewRegionInteraction)
  {
    userViewRegionInteraction2 = [(SISchemaClientEvent *)self userViewRegionInteraction];
    PBDataWriterWriteSubmessage();
  }

  deviceLockStateChanged = [(SISchemaClientEvent *)self deviceLockStateChanged];

  if (deviceLockStateChanged)
  {
    deviceLockStateChanged2 = [(SISchemaClientEvent *)self deviceLockStateChanged];
    PBDataWriterWriteSubmessage();
  }

  ueiRequestCategorization = [(SISchemaClientEvent *)self ueiRequestCategorization];

  if (ueiRequestCategorization)
  {
    ueiRequestCategorization2 = [(SISchemaClientEvent *)self ueiRequestCategorization];
    PBDataWriterWriteSubmessage();
  }

  audioStopRecordingStarted = [(SISchemaClientEvent *)self audioStopRecordingStarted];

  if (audioStopRecordingStarted)
  {
    audioStopRecordingStarted2 = [(SISchemaClientEvent *)self audioStopRecordingStarted];
    PBDataWriterWriteSubmessage();
  }

  ueiLaunchContext = [(SISchemaClientEvent *)self ueiLaunchContext];

  if (ueiLaunchContext)
  {
    ueiLaunchContext2 = [(SISchemaClientEvent *)self ueiLaunchContext];
    PBDataWriterWriteSubmessage();
  }

  ueiUserSpeakingContext = [(SISchemaClientEvent *)self ueiUserSpeakingContext];

  if (ueiUserSpeakingContext)
  {
    ueiUserSpeakingContext2 = [(SISchemaClientEvent *)self ueiUserSpeakingContext];
    PBDataWriterWriteSubmessage();
  }

  ueiUUFRReady = [(SISchemaClientEvent *)self ueiUUFRReady];

  if (ueiUUFRReady)
  {
    ueiUUFRReady2 = [(SISchemaClientEvent *)self ueiUUFRReady];
    PBDataWriterWriteSubmessage();
  }

  ueiUIRenderingContext = [(SISchemaClientEvent *)self ueiUIRenderingContext];

  if (ueiUIRenderingContext)
  {
    ueiUIRenderingContext2 = [(SISchemaClientEvent *)self ueiUIRenderingContext];
    PBDataWriterWriteSubmessage();
  }

  pnrTextToSpeechRequestReceived = [(SISchemaClientEvent *)self pnrTextToSpeechRequestReceived];

  if (pnrTextToSpeechRequestReceived)
  {
    pnrTextToSpeechRequestReceived2 = [(SISchemaClientEvent *)self pnrTextToSpeechRequestReceived];
    PBDataWriterWriteSubmessage();
  }

  pnrSpeechRecognitionSourceContext = [(SISchemaClientEvent *)self pnrSpeechRecognitionSourceContext];

  if (pnrSpeechRecognitionSourceContext)
  {
    pnrSpeechRecognitionSourceContext2 = [(SISchemaClientEvent *)self pnrSpeechRecognitionSourceContext];
    PBDataWriterWriteSubmessage();
  }

  pnrFatalError = [(SISchemaClientEvent *)self pnrFatalError];

  if (pnrFatalError)
  {
    pnrFatalError2 = [(SISchemaClientEvent *)self pnrFatalError];
    PBDataWriterWriteSubmessage();
  }

  turnMTERequest = [(SISchemaClientEvent *)self turnMTERequest];

  if (turnMTERequest)
  {
    turnMTERequest2 = [(SISchemaClientEvent *)self turnMTERequest];
    PBDataWriterWriteSubmessage();
  }

  keyboardDismissed = [(SISchemaClientEvent *)self keyboardDismissed];

  if (keyboardDismissed)
  {
    keyboardDismissed2 = [(SISchemaClientEvent *)self keyboardDismissed];
    PBDataWriterWriteSubmessage();
  }

  engagedAccessoryContext = [(SISchemaClientEvent *)self engagedAccessoryContext];

  if (engagedAccessoryContext)
  {
    engagedAccessoryContext2 = [(SISchemaClientEvent *)self engagedAccessoryContext];
    PBDataWriterWriteSubmessage();
  }

  announceCarPlayBannerTapped = [(SISchemaClientEvent *)self announceCarPlayBannerTapped];

  if (announceCarPlayBannerTapped)
  {
    announceCarPlayBannerTapped2 = [(SISchemaClientEvent *)self announceCarPlayBannerTapped];
    PBDataWriterWriteSubmessage();
  }

  announceCarPlayGlyphSettingToggled = [(SISchemaClientEvent *)self announceCarPlayGlyphSettingToggled];

  if (announceCarPlayGlyphSettingToggled)
  {
    announceCarPlayGlyphSettingToggled2 = [(SISchemaClientEvent *)self announceCarPlayGlyphSettingToggled];
    PBDataWriterWriteSubmessage();
  }

  dictationContentEdited = [(SISchemaClientEvent *)self dictationContentEdited];

  if (dictationContentEdited)
  {
    dictationContentEdited2 = [(SISchemaClientEvent *)self dictationContentEdited];
    PBDataWriterWriteSubmessage();
  }

  uufrShownTier1 = [(SISchemaClientEvent *)self uufrShownTier1];

  if (uufrShownTier1)
  {
    uufrShownTier12 = [(SISchemaClientEvent *)self uufrShownTier1];
    PBDataWriterWriteSubmessage();
  }

  ueiDictationPartialResultUpdated = [(SISchemaClientEvent *)self ueiDictationPartialResultUpdated];

  if (ueiDictationPartialResultUpdated)
  {
    ueiDictationPartialResultUpdated2 = [(SISchemaClientEvent *)self ueiDictationPartialResultUpdated];
    PBDataWriterWriteSubmessage();
  }

  ueiDictationVoiceCommandExecuted = [(SISchemaClientEvent *)self ueiDictationVoiceCommandExecuted];

  if (ueiDictationVoiceCommandExecuted)
  {
    ueiDictationVoiceCommandExecuted2 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandExecuted];
    PBDataWriterWriteSubmessage();
  }

  ueiDictationInputModeSwitchContext = [(SISchemaClientEvent *)self ueiDictationInputModeSwitchContext];

  if (ueiDictationInputModeSwitchContext)
  {
    ueiDictationInputModeSwitchContext2 = [(SISchemaClientEvent *)self ueiDictationInputModeSwitchContext];
    PBDataWriterWriteSubmessage();
  }

  ueiDictationToolTipDisplayContext = [(SISchemaClientEvent *)self ueiDictationToolTipDisplayContext];

  if (ueiDictationToolTipDisplayContext)
  {
    ueiDictationToolTipDisplayContext2 = [(SISchemaClientEvent *)self ueiDictationToolTipDisplayContext];
    PBDataWriterWriteSubmessage();
  }

  hostPlatformViewAppearContext = [(SISchemaClientEvent *)self hostPlatformViewAppearContext];

  if (hostPlatformViewAppearContext)
  {
    hostPlatformViewAppearContext2 = [(SISchemaClientEvent *)self hostPlatformViewAppearContext];
    PBDataWriterWriteSubmessage();
  }

  hostPlatformViewDisappearContext = [(SISchemaClientEvent *)self hostPlatformViewDisappearContext];

  if (hostPlatformViewDisappearContext)
  {
    hostPlatformViewDisappearContext2 = [(SISchemaClientEvent *)self hostPlatformViewDisappearContext];
    PBDataWriterWriteSubmessage();
  }

  ueiDictationTranscriptionTokenized = [(SISchemaClientEvent *)self ueiDictationTranscriptionTokenized];

  if (ueiDictationTranscriptionTokenized)
  {
    ueiDictationTranscriptionTokenized2 = [(SISchemaClientEvent *)self ueiDictationTranscriptionTokenized];
    PBDataWriterWriteSubmessage();
  }

  dictationAlternativesSelected = [(SISchemaClientEvent *)self dictationAlternativesSelected];

  if (dictationAlternativesSelected)
  {
    dictationAlternativesSelected2 = [(SISchemaClientEvent *)self dictationAlternativesSelected];
    PBDataWriterWriteSubmessage();
  }

  uufrSelected = [(SISchemaClientEvent *)self uufrSelected];

  if (uufrSelected)
  {
    uufrSelected2 = [(SISchemaClientEvent *)self uufrSelected];
    PBDataWriterWriteSubmessage();
  }

  ueiDictationAlternativeTextPairsSelected = [(SISchemaClientEvent *)self ueiDictationAlternativeTextPairsSelected];

  if (ueiDictationAlternativeTextPairsSelected)
  {
    ueiDictationAlternativeTextPairsSelected2 = [(SISchemaClientEvent *)self ueiDictationAlternativeTextPairsSelected];
    PBDataWriterWriteSubmessage();
  }

  ueiUserBargeInDetected = [(SISchemaClientEvent *)self ueiUserBargeInDetected];

  if (ueiUserBargeInDetected)
  {
    ueiUserBargeInDetected2 = [(SISchemaClientEvent *)self ueiUserBargeInDetected];
    PBDataWriterWriteSubmessage();
  }

  ueiDictationEnablementPromptShown = [(SISchemaClientEvent *)self ueiDictationEnablementPromptShown];

  if (ueiDictationEnablementPromptShown)
  {
    ueiDictationEnablementPromptShown2 = [(SISchemaClientEvent *)self ueiDictationEnablementPromptShown];
    PBDataWriterWriteSubmessage();
  }

  ueiSiriCarCommandContext = [(SISchemaClientEvent *)self ueiSiriCarCommandContext];

  if (ueiSiriCarCommandContext)
  {
    ueiSiriCarCommandContext2 = [(SISchemaClientEvent *)self ueiSiriCarCommandContext];
    PBDataWriterWriteSubmessage();
  }

  ueiVisionSnippetDismissed = [(SISchemaClientEvent *)self ueiVisionSnippetDismissed];

  if (ueiVisionSnippetDismissed)
  {
    ueiVisionSnippetDismissed2 = [(SISchemaClientEvent *)self ueiVisionSnippetDismissed];
    PBDataWriterWriteSubmessage();
  }

  ueiSiriWasUnavailable = [(SISchemaClientEvent *)self ueiSiriWasUnavailable];

  if (ueiSiriWasUnavailable)
  {
    ueiSiriWasUnavailable2 = [(SISchemaClientEvent *)self ueiSiriWasUnavailable];
    PBDataWriterWriteSubmessage();
  }

  preferredAudioRouteChanged = [(SISchemaClientEvent *)self preferredAudioRouteChanged];

  if (preferredAudioRouteChanged)
  {
    preferredAudioRouteChanged2 = [(SISchemaClientEvent *)self preferredAudioRouteChanged];
    PBDataWriterWriteSubmessage();
  }

  ueiDictationContentEditedTier1 = [(SISchemaClientEvent *)self ueiDictationContentEditedTier1];

  if (ueiDictationContentEditedTier1)
  {
    ueiDictationContentEditedTier12 = [(SISchemaClientEvent *)self ueiDictationContentEditedTier1];
    PBDataWriterWriteSubmessage();
  }

  ueiDictationVoiceCommandUndoTapAction = [(SISchemaClientEvent *)self ueiDictationVoiceCommandUndoTapAction];

  if (ueiDictationVoiceCommandUndoTapAction)
  {
    ueiDictationVoiceCommandUndoTapAction2 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandUndoTapAction];
    PBDataWriterWriteSubmessage();
  }

  ueiDictationVoiceCommandDisambiguationAction = [(SISchemaClientEvent *)self ueiDictationVoiceCommandDisambiguationAction];

  if (ueiDictationVoiceCommandDisambiguationAction)
  {
    ueiDictationVoiceCommandDisambiguationAction2 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandDisambiguationAction];
    PBDataWriterWriteSubmessage();
  }

  ueiDictationVoiceCommandKeyboardAction = [(SISchemaClientEvent *)self ueiDictationVoiceCommandKeyboardAction];

  if (ueiDictationVoiceCommandKeyboardAction)
  {
    ueiDictationVoiceCommandKeyboardAction2 = [(SISchemaClientEvent *)self ueiDictationVoiceCommandKeyboardAction];
    PBDataWriterWriteSubmessage();
  }

  ueiDictationEuclidAlternativesEvent = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEvent];

  if (ueiDictationEuclidAlternativesEvent)
  {
    ueiDictationEuclidAlternativesEvent2 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEvent];
    PBDataWriterWriteSubmessage();
  }

  ueiDictationEuclidAlternativesEventTier1 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEventTier1];

  if (ueiDictationEuclidAlternativesEventTier1)
  {
    ueiDictationEuclidAlternativesEventTier12 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEventTier1];
    PBDataWriterWriteSubmessage();
  }

  ueiDictationEuclidSpeechAlternativesSelected = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelected];

  if (ueiDictationEuclidSpeechAlternativesSelected)
  {
    ueiDictationEuclidSpeechAlternativesSelected2 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelected];
    PBDataWriterWriteSubmessage();
  }

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelectedTier1];

  if (ueiDictationEuclidSpeechAlternativesSelectedTier1)
  {
    ueiDictationEuclidSpeechAlternativesSelectedTier12 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelectedTier1];
    PBDataWriterWriteSubmessage();
  }

  typingRequestTrace = [(SISchemaClientEvent *)self typingRequestTrace];

  if (typingRequestTrace)
  {
    typingRequestTrace2 = [(SISchemaClientEvent *)self typingRequestTrace];
    PBDataWriterWriteSubmessage();
  }

  ueiInvocationTier1 = [(SISchemaClientEvent *)self ueiInvocationTier1];

  if (ueiInvocationTier1)
  {
    ueiInvocationTier12 = [(SISchemaClientEvent *)self ueiInvocationTier1];
    PBDataWriterWriteSubmessage();
  }

  transcriptShown = [(SISchemaClientEvent *)self transcriptShown];

  if (transcriptShown)
  {
    transcriptShown2 = [(SISchemaClientEvent *)self transcriptShown];
    PBDataWriterWriteSubmessage();
  }

  transcriptTapped = [(SISchemaClientEvent *)self transcriptTapped];

  v157 = toCopy;
  if (transcriptTapped)
  {
    transcriptTapped2 = [(SISchemaClientEvent *)self transcriptTapped];
    PBDataWriterWriteSubmessage();

    v157 = toCopy;
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

- (void)setTranscriptTapped:(id)tapped
{
  tappedCopy = tapped;
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
  if (!tappedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  transcriptTapped = self->_transcriptTapped;
  self->_transcriptTapped = tappedCopy;
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

- (void)setTranscriptShown:(id)shown
{
  shownCopy = shown;
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
  if (!shownCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  transcriptShown = self->_transcriptShown;
  self->_transcriptShown = shownCopy;
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

- (void)setUeiInvocationTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiInvocationTier1 = self->_ueiInvocationTier1;
  self->_ueiInvocationTier1 = tier1Copy;
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

- (void)setTypingRequestTrace:(id)trace
{
  traceCopy = trace;
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
  if (!traceCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  typingRequestTrace = self->_typingRequestTrace;
  self->_typingRequestTrace = traceCopy;
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

- (void)setUeiDictationEuclidSpeechAlternativesSelectedTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationEuclidSpeechAlternativesSelectedTier1 = self->_ueiDictationEuclidSpeechAlternativesSelectedTier1;
  self->_ueiDictationEuclidSpeechAlternativesSelectedTier1 = tier1Copy;
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

- (void)setUeiDictationEuclidSpeechAlternativesSelected:(id)selected
{
  selectedCopy = selected;
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
  if (!selectedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationEuclidSpeechAlternativesSelected = self->_ueiDictationEuclidSpeechAlternativesSelected;
  self->_ueiDictationEuclidSpeechAlternativesSelected = selectedCopy;
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

- (void)setUeiDictationEuclidAlternativesEventTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationEuclidAlternativesEventTier1 = self->_ueiDictationEuclidAlternativesEventTier1;
  self->_ueiDictationEuclidAlternativesEventTier1 = tier1Copy;
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

- (void)setUeiDictationEuclidAlternativesEvent:(id)event
{
  eventCopy = event;
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
  if (!eventCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationEuclidAlternativesEvent = self->_ueiDictationEuclidAlternativesEvent;
  self->_ueiDictationEuclidAlternativesEvent = eventCopy;
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

- (void)setUeiDictationVoiceCommandKeyboardAction:(id)action
{
  actionCopy = action;
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
  if (!actionCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationVoiceCommandKeyboardAction = self->_ueiDictationVoiceCommandKeyboardAction;
  self->_ueiDictationVoiceCommandKeyboardAction = actionCopy;
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

- (void)setUeiDictationVoiceCommandDisambiguationAction:(id)action
{
  actionCopy = action;
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
  if (!actionCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationVoiceCommandDisambiguationAction = self->_ueiDictationVoiceCommandDisambiguationAction;
  self->_ueiDictationVoiceCommandDisambiguationAction = actionCopy;
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

- (void)setUeiDictationVoiceCommandUndoTapAction:(id)action
{
  actionCopy = action;
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
  if (!actionCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationVoiceCommandUndoTapAction = self->_ueiDictationVoiceCommandUndoTapAction;
  self->_ueiDictationVoiceCommandUndoTapAction = actionCopy;
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

- (void)setUeiDictationContentEditedTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationContentEditedTier1 = self->_ueiDictationContentEditedTier1;
  self->_ueiDictationContentEditedTier1 = tier1Copy;
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

- (void)setPreferredAudioRouteChanged:(id)changed
{
  changedCopy = changed;
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
  if (!changedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  preferredAudioRouteChanged = self->_preferredAudioRouteChanged;
  self->_preferredAudioRouteChanged = changedCopy;
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

- (void)setUeiSiriWasUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
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
  if (!unavailableCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiSiriWasUnavailable = self->_ueiSiriWasUnavailable;
  self->_ueiSiriWasUnavailable = unavailableCopy;
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

- (void)setUeiVisionSnippetDismissed:(id)dismissed
{
  dismissedCopy = dismissed;
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
  if (!dismissedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiVisionSnippetDismissed = self->_ueiVisionSnippetDismissed;
  self->_ueiVisionSnippetDismissed = dismissedCopy;
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

- (void)setUeiSiriCarCommandContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiSiriCarCommandContext = self->_ueiSiriCarCommandContext;
  self->_ueiSiriCarCommandContext = contextCopy;
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

- (void)setUeiDictationEnablementPromptShown:(id)shown
{
  shownCopy = shown;
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
  if (!shownCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationEnablementPromptShown = self->_ueiDictationEnablementPromptShown;
  self->_ueiDictationEnablementPromptShown = shownCopy;
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

- (void)setUeiUserBargeInDetected:(id)detected
{
  detectedCopy = detected;
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
  if (!detectedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiUserBargeInDetected = self->_ueiUserBargeInDetected;
  self->_ueiUserBargeInDetected = detectedCopy;
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

- (void)setUeiDictationAlternativeTextPairsSelected:(id)selected
{
  selectedCopy = selected;
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
  if (!selectedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationAlternativeTextPairsSelected = self->_ueiDictationAlternativeTextPairsSelected;
  self->_ueiDictationAlternativeTextPairsSelected = selectedCopy;
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

- (void)setUufrSelected:(id)selected
{
  selectedCopy = selected;
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
  if (!selectedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  uufrSelected = self->_uufrSelected;
  self->_uufrSelected = selectedCopy;
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

- (void)setDictationAlternativesSelected:(id)selected
{
  selectedCopy = selected;
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
  if (!selectedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  dictationAlternativesSelected = self->_dictationAlternativesSelected;
  self->_dictationAlternativesSelected = selectedCopy;
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

- (void)setUeiDictationTranscriptionTokenized:(id)tokenized
{
  tokenizedCopy = tokenized;
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
  if (!tokenizedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationTranscriptionTokenized = self->_ueiDictationTranscriptionTokenized;
  self->_ueiDictationTranscriptionTokenized = tokenizedCopy;
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

- (void)setHostPlatformViewDisappearContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  hostPlatformViewDisappearContext = self->_hostPlatformViewDisappearContext;
  self->_hostPlatformViewDisappearContext = contextCopy;
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

- (void)setHostPlatformViewAppearContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  hostPlatformViewAppearContext = self->_hostPlatformViewAppearContext;
  self->_hostPlatformViewAppearContext = contextCopy;
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

- (void)setUeiDictationToolTipDisplayContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationToolTipDisplayContext = self->_ueiDictationToolTipDisplayContext;
  self->_ueiDictationToolTipDisplayContext = contextCopy;
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

- (void)setUeiDictationInputModeSwitchContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationInputModeSwitchContext = self->_ueiDictationInputModeSwitchContext;
  self->_ueiDictationInputModeSwitchContext = contextCopy;
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

- (void)setUeiDictationVoiceCommandExecuted:(id)executed
{
  executedCopy = executed;
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
  if (!executedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationVoiceCommandExecuted = self->_ueiDictationVoiceCommandExecuted;
  self->_ueiDictationVoiceCommandExecuted = executedCopy;
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

- (void)setUeiDictationPartialResultUpdated:(id)updated
{
  updatedCopy = updated;
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
  if (!updatedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiDictationPartialResultUpdated = self->_ueiDictationPartialResultUpdated;
  self->_ueiDictationPartialResultUpdated = updatedCopy;
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

- (void)setUufrShownTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  uufrShownTier1 = self->_uufrShownTier1;
  self->_uufrShownTier1 = tier1Copy;
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

- (void)setDictationContentEdited:(id)edited
{
  editedCopy = edited;
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
  if (!editedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  dictationContentEdited = self->_dictationContentEdited;
  self->_dictationContentEdited = editedCopy;
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

- (void)setAnnounceCarPlayGlyphSettingToggled:(id)toggled
{
  toggledCopy = toggled;
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
  if (!toggledCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  announceCarPlayGlyphSettingToggled = self->_announceCarPlayGlyphSettingToggled;
  self->_announceCarPlayGlyphSettingToggled = toggledCopy;
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

- (void)setAnnounceCarPlayBannerTapped:(id)tapped
{
  tappedCopy = tapped;
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
  if (!tappedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  announceCarPlayBannerTapped = self->_announceCarPlayBannerTapped;
  self->_announceCarPlayBannerTapped = tappedCopy;
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

- (void)setEngagedAccessoryContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  engagedAccessoryContext = self->_engagedAccessoryContext;
  self->_engagedAccessoryContext = contextCopy;
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

- (void)setKeyboardDismissed:(id)dismissed
{
  dismissedCopy = dismissed;
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
  if (!dismissedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  keyboardDismissed = self->_keyboardDismissed;
  self->_keyboardDismissed = dismissedCopy;
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

- (void)setTurnMTERequest:(id)request
{
  requestCopy = request;
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
  if (!requestCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  turnMTERequest = self->_turnMTERequest;
  self->_turnMTERequest = requestCopy;
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

- (void)setPnrFatalError:(id)error
{
  errorCopy = error;
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
  if (!errorCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  pnrFatalError = self->_pnrFatalError;
  self->_pnrFatalError = errorCopy;
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

- (void)setPnrSpeechRecognitionSourceContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  pnrSpeechRecognitionSourceContext = self->_pnrSpeechRecognitionSourceContext;
  self->_pnrSpeechRecognitionSourceContext = contextCopy;
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

- (void)setPnrTextToSpeechRequestReceived:(id)received
{
  receivedCopy = received;
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
  if (!receivedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  pnrTextToSpeechRequestReceived = self->_pnrTextToSpeechRequestReceived;
  self->_pnrTextToSpeechRequestReceived = receivedCopy;
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

- (void)setUeiUIRenderingContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiUIRenderingContext = self->_ueiUIRenderingContext;
  self->_ueiUIRenderingContext = contextCopy;
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

- (void)setUeiUUFRReady:(id)ready
{
  readyCopy = ready;
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
  if (!readyCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiUUFRReady = self->_ueiUUFRReady;
  self->_ueiUUFRReady = readyCopy;
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

- (void)setUeiUserSpeakingContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiUserSpeakingContext = self->_ueiUserSpeakingContext;
  self->_ueiUserSpeakingContext = contextCopy;
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

- (void)setUeiLaunchContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiLaunchContext = self->_ueiLaunchContext;
  self->_ueiLaunchContext = contextCopy;
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

- (void)setAudioStopRecordingStarted:(id)started
{
  startedCopy = started;
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
  if (!startedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  audioStopRecordingStarted = self->_audioStopRecordingStarted;
  self->_audioStopRecordingStarted = startedCopy;
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

- (void)setUeiRequestCategorization:(id)categorization
{
  categorizationCopy = categorization;
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
  if (!categorizationCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  ueiRequestCategorization = self->_ueiRequestCategorization;
  self->_ueiRequestCategorization = categorizationCopy;
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

- (void)setDeviceLockStateChanged:(id)changed
{
  changedCopy = changed;
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
  if (!changedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  deviceLockStateChanged = self->_deviceLockStateChanged;
  self->_deviceLockStateChanged = changedCopy;
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

- (void)setUserViewRegionInteraction:(id)interaction
{
  interactionCopy = interaction;
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
  if (!interactionCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  userViewRegionInteraction = self->_userViewRegionInteraction;
  self->_userViewRegionInteraction = interactionCopy;
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

- (void)setCasinoRelationship:(id)relationship
{
  relationshipCopy = relationship;
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
  if (!relationshipCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  casinoRelationship = self->_casinoRelationship;
  self->_casinoRelationship = relationshipCopy;
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

- (void)setIntercomMessageRecorded:(id)recorded
{
  recordedCopy = recorded;
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
  if (!recordedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  intercomMessageRecorded = self->_intercomMessageRecorded;
  self->_intercomMessageRecorded = recordedCopy;
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

- (void)setDictationAlternativesViewed:(id)viewed
{
  viewedCopy = viewed;
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

  self->_whichEvent_Type = (viewedCopy != 0) << 7;
  dictationAlternativesViewed = self->_dictationAlternativesViewed;
  self->_dictationAlternativesViewed = viewedCopy;
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

- (void)setUufrFatalError:(id)error
{
  errorCopy = error;
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
  if (!errorCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  uufrFatalError = self->_uufrFatalError;
  self->_uufrFatalError = errorCopy;
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

- (void)setUufrSaid:(id)said
{
  saidCopy = said;
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
  if (!saidCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  uufrSaid = self->_uufrSaid;
  self->_uufrSaid = saidCopy;
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

- (void)setUufrShown:(id)shown
{
  shownCopy = shown;
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
  if (!shownCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  uufrShown = self->_uufrShown;
  self->_uufrShown = shownCopy;
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

- (void)setUufrCompletion:(id)completion
{
  completionCopy = completion;
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
  if (!completionCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  uufrCompletion = self->_uufrCompletion;
  self->_uufrCompletion = completionCopy;
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

- (void)setCarPlayHeadUnitContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  carPlayHeadUnitContext = self->_carPlayHeadUnitContext;
  self->_carPlayHeadUnitContext = contextCopy;
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

- (void)setDictationTranscriptionMetadata:(id)metadata
{
  metadataCopy = metadata;
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
  if (!metadataCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  dictationTranscriptionMetadata = self->_dictationTranscriptionMetadata;
  self->_dictationTranscriptionMetadata = metadataCopy;
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

- (void)setDictationAlternativeSelected:(id)selected
{
  selectedCopy = selected;
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
  if (!selectedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  dictationAlternativeSelected = self->_dictationAlternativeSelected;
  self->_dictationAlternativeSelected = selectedCopy;
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

- (void)setDictationEndPointCancel:(id)cancel
{
  cancelCopy = cancel;
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
  if (!cancelCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  dictationEndPointCancel = self->_dictationEndPointCancel;
  self->_dictationEndPointCancel = cancelCopy;
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

- (void)setDictationEndPointStop:(id)stop
{
  stopCopy = stop;
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
  if (!stopCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  dictationEndPointStop = self->_dictationEndPointStop;
  self->_dictationEndPointStop = stopCopy;
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

- (void)setDialogOutput:(id)output
{
  outputCopy = output;
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
  if (!outputCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  dialogOutput = self->_dialogOutput;
  self->_dialogOutput = outputCopy;
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

- (void)setClientFlow:(id)flow
{
  flowCopy = flow;
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
  if (!flowCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  clientFlow = self->_clientFlow;
  self->_clientFlow = flowCopy;
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

- (void)setUiStateTransition:(id)transition
{
  transitionCopy = transition;
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
  if (!transitionCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  uiStateTransition = self->_uiStateTransition;
  self->_uiStateTransition = transitionCopy;
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

- (void)setTextToSpeechEnd:(id)end
{
  endCopy = end;
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
  if (!endCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  textToSpeechEnd = self->_textToSpeechEnd;
  self->_textToSpeechEnd = endCopy;
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

- (void)setTextToSpeechBegin:(id)begin
{
  beginCopy = begin;
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
  if (!beginCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  textToSpeechBegin = self->_textToSpeechBegin;
  self->_textToSpeechBegin = beginCopy;
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

- (void)setSpeechTranscription:(id)transcription
{
  transcriptionCopy = transcription;
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
  if (!transcriptionCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  speechTranscription = self->_speechTranscription;
  self->_speechTranscription = transcriptionCopy;
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

- (void)setUufrPresented:(id)presented
{
  presentedCopy = presented;
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
  if (!presentedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  uufrPresented = self->_uufrPresented;
  self->_uufrPresented = presentedCopy;
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

- (void)setSiriCue:(id)cue
{
  cueCopy = cue;
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
  if (!cueCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  siriCue = self->_siriCue;
  self->_siriCue = cueCopy;
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

- (void)setPunchOut:(id)out
{
  outCopy = out;
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
  if (!outCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  punchOut = self->_punchOut;
  self->_punchOut = outCopy;
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

- (void)setLocation:(id)location
{
  locationCopy = location;
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
  if (!locationCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  location = self->_location;
  self->_location = locationCopy;
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

- (void)setInvocation:(id)invocation
{
  invocationCopy = invocation;
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
  if (!invocationCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  invocation = self->_invocation;
  self->_invocation = invocationCopy;
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

- (void)setDictationContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  dictationContext = self->_dictationContext;
  self->_dictationContext = contextCopy;
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

- (void)setDeviceFixedContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  deviceFixedContext = self->_deviceFixedContext;
  self->_deviceFixedContext = contextCopy;
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

- (void)setDeviceDynamicContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  deviceDynamicContext = self->_deviceDynamicContext;
  self->_deviceDynamicContext = contextCopy;
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

- (void)setClientConversationTrace:(id)trace
{
  traceCopy = trace;
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
  if (!traceCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  clientConversationTrace = self->_clientConversationTrace;
  self->_clientConversationTrace = traceCopy;
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

- (void)setAudioStopRecording:(id)recording
{
  recordingCopy = recording;
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
  if (!recordingCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  audioStopRecording = self->_audioStopRecording;
  self->_audioStopRecording = recordingCopy;
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

- (void)setAudioFirstBufferRecorded:(id)recorded
{
  recordedCopy = recorded;
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
  if (!recordedCopy)
  {
    v79 = 0;
  }

  self->_whichEvent_Type = v79;
  audioFirstBufferRecorded = self->_audioFirstBufferRecorded;
  self->_audioFirstBufferRecorded = recordedCopy;
}

+ (id)getTagForEventTypeClass:(Class)class
{
  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F703F0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70408;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70420;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70438;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70450;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70468;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70480;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70498;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F704B0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F704C8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F704E0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F704F8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70510;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70528;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70540;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70558;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70570;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70588;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F705A0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F705B8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F705D0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F705E8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70600;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70618;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70630;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70648;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70660;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70678;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70690;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F706A8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F706C0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F706D8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F706F0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70708;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70720;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70738;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70750;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70768;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70780;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70798;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F707B0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F707C8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F707E0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F707F8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70810;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70828;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70840;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70858;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70870;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70888;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F708A0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F708B8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F708D0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F708E8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70900;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70918;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70930;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70948;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70960;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70978;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70990;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F709A8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F709C0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F709D8;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F709F0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70A08;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70A20;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70A38;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70A50;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70A68;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70A80;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70A98;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70AB0;
  }

  if (([(objc_class *)class isEqual:objc_opt_class()]& 1) != 0)
  {
    return &unk_1F1F70AC8;
  }

  if ([(objc_class *)class isEqual:objc_opt_class()])
  {
    return &unk_1F1F70AE0;
  }

  return 0;
}

+ (Class)getEventTypeClassForTag:(int)tag
{
  v4 = 0;
  switch(tag)
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

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v239.receiver = self;
  v239.super_class = SISchemaClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v239 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(SISchemaClientEvent *)self deleteUufrShownTier1];
    [(SISchemaClientEvent *)self deleteDictationAlternativesSelected];
    [(SISchemaClientEvent *)self deleteUeiDictationAlternativeTextPairsSelected];
    [(SISchemaClientEvent *)self deleteUeiDictationContentEditedTier1];
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidAlternativesEventTier1];
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidSpeechAlternativesSelectedTier1];
    [(SISchemaClientEvent *)self deleteUeiInvocationTier1];
  }

  if ([policyCopy isConditionSet:4])
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

  if ([policyCopy isConditionSet:5])
  {
    [(SISchemaClientEvent *)self deleteUufrShownTier1];
    [(SISchemaClientEvent *)self deleteDictationAlternativesSelected];
    [(SISchemaClientEvent *)self deleteUeiDictationAlternativeTextPairsSelected];
    [(SISchemaClientEvent *)self deleteUeiDictationContentEditedTier1];
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidAlternativesEventTier1];
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidSpeechAlternativesSelectedTier1];
    [(SISchemaClientEvent *)self deleteUeiInvocationTier1];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(SISchemaClientEvent *)self deleteUufrShownTier1];
    [(SISchemaClientEvent *)self deleteDictationAlternativesSelected];
    [(SISchemaClientEvent *)self deleteUeiDictationAlternativeTextPairsSelected];
    [(SISchemaClientEvent *)self deleteUeiDictationContentEditedTier1];
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidAlternativesEventTier1];
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidSpeechAlternativesSelectedTier1];
    [(SISchemaClientEvent *)self deleteUeiInvocationTier1];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(SISchemaClientEvent *)self deleteUufrShownTier1];
    [(SISchemaClientEvent *)self deleteDictationAlternativesSelected];
    [(SISchemaClientEvent *)self deleteUeiDictationAlternativeTextPairsSelected];
    [(SISchemaClientEvent *)self deleteUeiDictationContentEditedTier1];
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidAlternativesEventTier1];
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidSpeechAlternativesSelectedTier1];
    [(SISchemaClientEvent *)self deleteUeiInvocationTier1];
  }

  eventMetadata = [(SISchemaClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaClientEvent *)self deleteEventMetadata];
  }

  transportMetadata = [(SISchemaClientEvent *)self transportMetadata];
  v10 = [transportMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaClientEvent *)self deleteTransportMetadata];
  }

  audioFirstBufferRecorded = [(SISchemaClientEvent *)self audioFirstBufferRecorded];
  v13 = [audioFirstBufferRecorded applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(SISchemaClientEvent *)self deleteAudioFirstBufferRecorded];
  }

  audioStopRecording = [(SISchemaClientEvent *)self audioStopRecording];
  v16 = [audioStopRecording applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(SISchemaClientEvent *)self deleteAudioStopRecording];
  }

  clientConversationTrace = [(SISchemaClientEvent *)self clientConversationTrace];
  v19 = [clientConversationTrace applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(SISchemaClientEvent *)self deleteClientConversationTrace];
  }

  deviceDynamicContext = [(SISchemaClientEvent *)self deviceDynamicContext];
  v22 = [deviceDynamicContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(SISchemaClientEvent *)self deleteDeviceDynamicContext];
  }

  deviceFixedContext = [(SISchemaClientEvent *)self deviceFixedContext];
  v25 = [deviceFixedContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(SISchemaClientEvent *)self deleteDeviceFixedContext];
  }

  dictationContext = [(SISchemaClientEvent *)self dictationContext];
  v28 = [dictationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(SISchemaClientEvent *)self deleteDictationContext];
  }

  invocation = [(SISchemaClientEvent *)self invocation];
  v31 = [invocation applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(SISchemaClientEvent *)self deleteInvocation];
  }

  location = [(SISchemaClientEvent *)self location];
  v34 = [location applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(SISchemaClientEvent *)self deleteLocation];
  }

  punchOut = [(SISchemaClientEvent *)self punchOut];
  v37 = [punchOut applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(SISchemaClientEvent *)self deletePunchOut];
  }

  siriCue = [(SISchemaClientEvent *)self siriCue];
  v40 = [siriCue applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(SISchemaClientEvent *)self deleteSiriCue];
  }

  uufrPresented = [(SISchemaClientEvent *)self uufrPresented];
  v43 = [uufrPresented applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(SISchemaClientEvent *)self deleteUufrPresented];
  }

  speechTranscription = [(SISchemaClientEvent *)self speechTranscription];
  v46 = [speechTranscription applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
  {
    [(SISchemaClientEvent *)self deleteSpeechTranscription];
  }

  textToSpeechBegin = [(SISchemaClientEvent *)self textToSpeechBegin];
  v49 = [textToSpeechBegin applySensitiveConditionsPolicy:policyCopy];
  suppressMessage15 = [v49 suppressMessage];

  if (suppressMessage15)
  {
    [(SISchemaClientEvent *)self deleteTextToSpeechBegin];
  }

  textToSpeechEnd = [(SISchemaClientEvent *)self textToSpeechEnd];
  v52 = [textToSpeechEnd applySensitiveConditionsPolicy:policyCopy];
  suppressMessage16 = [v52 suppressMessage];

  if (suppressMessage16)
  {
    [(SISchemaClientEvent *)self deleteTextToSpeechEnd];
  }

  uiStateTransition = [(SISchemaClientEvent *)self uiStateTransition];
  v55 = [uiStateTransition applySensitiveConditionsPolicy:policyCopy];
  suppressMessage17 = [v55 suppressMessage];

  if (suppressMessage17)
  {
    [(SISchemaClientEvent *)self deleteUiStateTransition];
  }

  clientFlow = [(SISchemaClientEvent *)self clientFlow];
  v58 = [clientFlow applySensitiveConditionsPolicy:policyCopy];
  suppressMessage18 = [v58 suppressMessage];

  if (suppressMessage18)
  {
    [(SISchemaClientEvent *)self deleteClientFlow];
  }

  dialogOutput = [(SISchemaClientEvent *)self dialogOutput];
  v61 = [dialogOutput applySensitiveConditionsPolicy:policyCopy];
  suppressMessage19 = [v61 suppressMessage];

  if (suppressMessage19)
  {
    [(SISchemaClientEvent *)self deleteDialogOutput];
  }

  dictationEndPointStop = [(SISchemaClientEvent *)self dictationEndPointStop];
  v64 = [dictationEndPointStop applySensitiveConditionsPolicy:policyCopy];
  suppressMessage20 = [v64 suppressMessage];

  if (suppressMessage20)
  {
    [(SISchemaClientEvent *)self deleteDictationEndPointStop];
  }

  dictationEndPointCancel = [(SISchemaClientEvent *)self dictationEndPointCancel];
  v67 = [dictationEndPointCancel applySensitiveConditionsPolicy:policyCopy];
  suppressMessage21 = [v67 suppressMessage];

  if (suppressMessage21)
  {
    [(SISchemaClientEvent *)self deleteDictationEndPointCancel];
  }

  dictationAlternativeSelected = [(SISchemaClientEvent *)self dictationAlternativeSelected];
  v70 = [dictationAlternativeSelected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage22 = [v70 suppressMessage];

  if (suppressMessage22)
  {
    [(SISchemaClientEvent *)self deleteDictationAlternativeSelected];
  }

  dictationTranscriptionMetadata = [(SISchemaClientEvent *)self dictationTranscriptionMetadata];
  v73 = [dictationTranscriptionMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage23 = [v73 suppressMessage];

  if (suppressMessage23)
  {
    [(SISchemaClientEvent *)self deleteDictationTranscriptionMetadata];
  }

  carPlayHeadUnitContext = [(SISchemaClientEvent *)self carPlayHeadUnitContext];
  v76 = [carPlayHeadUnitContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage24 = [v76 suppressMessage];

  if (suppressMessage24)
  {
    [(SISchemaClientEvent *)self deleteCarPlayHeadUnitContext];
  }

  uufrCompletion = [(SISchemaClientEvent *)self uufrCompletion];
  v79 = [uufrCompletion applySensitiveConditionsPolicy:policyCopy];
  suppressMessage25 = [v79 suppressMessage];

  if (suppressMessage25)
  {
    [(SISchemaClientEvent *)self deleteUufrCompletion];
  }

  uufrShown = [(SISchemaClientEvent *)self uufrShown];
  v82 = [uufrShown applySensitiveConditionsPolicy:policyCopy];
  suppressMessage26 = [v82 suppressMessage];

  if (suppressMessage26)
  {
    [(SISchemaClientEvent *)self deleteUufrShown];
  }

  uufrSaid = [(SISchemaClientEvent *)self uufrSaid];
  v85 = [uufrSaid applySensitiveConditionsPolicy:policyCopy];
  suppressMessage27 = [v85 suppressMessage];

  if (suppressMessage27)
  {
    [(SISchemaClientEvent *)self deleteUufrSaid];
  }

  uufrFatalError = [(SISchemaClientEvent *)self uufrFatalError];
  v88 = [uufrFatalError applySensitiveConditionsPolicy:policyCopy];
  suppressMessage28 = [v88 suppressMessage];

  if (suppressMessage28)
  {
    [(SISchemaClientEvent *)self deleteUufrFatalError];
  }

  dictationAlternativesViewed = [(SISchemaClientEvent *)self dictationAlternativesViewed];
  v91 = [dictationAlternativesViewed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage29 = [v91 suppressMessage];

  if (suppressMessage29)
  {
    [(SISchemaClientEvent *)self deleteDictationAlternativesViewed];
  }

  intercomMessageRecorded = [(SISchemaClientEvent *)self intercomMessageRecorded];
  v94 = [intercomMessageRecorded applySensitiveConditionsPolicy:policyCopy];
  suppressMessage30 = [v94 suppressMessage];

  if (suppressMessage30)
  {
    [(SISchemaClientEvent *)self deleteIntercomMessageRecorded];
  }

  casinoRelationship = [(SISchemaClientEvent *)self casinoRelationship];
  v97 = [casinoRelationship applySensitiveConditionsPolicy:policyCopy];
  suppressMessage31 = [v97 suppressMessage];

  if (suppressMessage31)
  {
    [(SISchemaClientEvent *)self deleteCasinoRelationship];
  }

  userViewRegionInteraction = [(SISchemaClientEvent *)self userViewRegionInteraction];
  v100 = [userViewRegionInteraction applySensitiveConditionsPolicy:policyCopy];
  suppressMessage32 = [v100 suppressMessage];

  if (suppressMessage32)
  {
    [(SISchemaClientEvent *)self deleteUserViewRegionInteraction];
  }

  deviceLockStateChanged = [(SISchemaClientEvent *)self deviceLockStateChanged];
  v103 = [deviceLockStateChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage33 = [v103 suppressMessage];

  if (suppressMessage33)
  {
    [(SISchemaClientEvent *)self deleteDeviceLockStateChanged];
  }

  ueiRequestCategorization = [(SISchemaClientEvent *)self ueiRequestCategorization];
  v106 = [ueiRequestCategorization applySensitiveConditionsPolicy:policyCopy];
  suppressMessage34 = [v106 suppressMessage];

  if (suppressMessage34)
  {
    [(SISchemaClientEvent *)self deleteUeiRequestCategorization];
  }

  audioStopRecordingStarted = [(SISchemaClientEvent *)self audioStopRecordingStarted];
  v109 = [audioStopRecordingStarted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage35 = [v109 suppressMessage];

  if (suppressMessage35)
  {
    [(SISchemaClientEvent *)self deleteAudioStopRecordingStarted];
  }

  ueiLaunchContext = [(SISchemaClientEvent *)self ueiLaunchContext];
  v112 = [ueiLaunchContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage36 = [v112 suppressMessage];

  if (suppressMessage36)
  {
    [(SISchemaClientEvent *)self deleteUeiLaunchContext];
  }

  ueiUserSpeakingContext = [(SISchemaClientEvent *)self ueiUserSpeakingContext];
  v115 = [ueiUserSpeakingContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage37 = [v115 suppressMessage];

  if (suppressMessage37)
  {
    [(SISchemaClientEvent *)self deleteUeiUserSpeakingContext];
  }

  ueiUUFRReady = [(SISchemaClientEvent *)self ueiUUFRReady];
  v118 = [ueiUUFRReady applySensitiveConditionsPolicy:policyCopy];
  suppressMessage38 = [v118 suppressMessage];

  if (suppressMessage38)
  {
    [(SISchemaClientEvent *)self deleteUeiUUFRReady];
  }

  ueiUIRenderingContext = [(SISchemaClientEvent *)self ueiUIRenderingContext];
  v121 = [ueiUIRenderingContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage39 = [v121 suppressMessage];

  if (suppressMessage39)
  {
    [(SISchemaClientEvent *)self deleteUeiUIRenderingContext];
  }

  pnrTextToSpeechRequestReceived = [(SISchemaClientEvent *)self pnrTextToSpeechRequestReceived];
  v124 = [pnrTextToSpeechRequestReceived applySensitiveConditionsPolicy:policyCopy];
  suppressMessage40 = [v124 suppressMessage];

  if (suppressMessage40)
  {
    [(SISchemaClientEvent *)self deletePnrTextToSpeechRequestReceived];
  }

  pnrSpeechRecognitionSourceContext = [(SISchemaClientEvent *)self pnrSpeechRecognitionSourceContext];
  v127 = [pnrSpeechRecognitionSourceContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage41 = [v127 suppressMessage];

  if (suppressMessage41)
  {
    [(SISchemaClientEvent *)self deletePnrSpeechRecognitionSourceContext];
  }

  pnrFatalError = [(SISchemaClientEvent *)self pnrFatalError];
  v130 = [pnrFatalError applySensitiveConditionsPolicy:policyCopy];
  suppressMessage42 = [v130 suppressMessage];

  if (suppressMessage42)
  {
    [(SISchemaClientEvent *)self deletePnrFatalError];
  }

  turnMTERequest = [(SISchemaClientEvent *)self turnMTERequest];
  v133 = [turnMTERequest applySensitiveConditionsPolicy:policyCopy];
  suppressMessage43 = [v133 suppressMessage];

  if (suppressMessage43)
  {
    [(SISchemaClientEvent *)self deleteTurnMTERequest];
  }

  keyboardDismissed = [(SISchemaClientEvent *)self keyboardDismissed];
  v136 = [keyboardDismissed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage44 = [v136 suppressMessage];

  if (suppressMessage44)
  {
    [(SISchemaClientEvent *)self deleteKeyboardDismissed];
  }

  engagedAccessoryContext = [(SISchemaClientEvent *)self engagedAccessoryContext];
  v139 = [engagedAccessoryContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage45 = [v139 suppressMessage];

  if (suppressMessage45)
  {
    [(SISchemaClientEvent *)self deleteEngagedAccessoryContext];
  }

  announceCarPlayBannerTapped = [(SISchemaClientEvent *)self announceCarPlayBannerTapped];
  v142 = [announceCarPlayBannerTapped applySensitiveConditionsPolicy:policyCopy];
  suppressMessage46 = [v142 suppressMessage];

  if (suppressMessage46)
  {
    [(SISchemaClientEvent *)self deleteAnnounceCarPlayBannerTapped];
  }

  announceCarPlayGlyphSettingToggled = [(SISchemaClientEvent *)self announceCarPlayGlyphSettingToggled];
  v145 = [announceCarPlayGlyphSettingToggled applySensitiveConditionsPolicy:policyCopy];
  suppressMessage47 = [v145 suppressMessage];

  if (suppressMessage47)
  {
    [(SISchemaClientEvent *)self deleteAnnounceCarPlayGlyphSettingToggled];
  }

  dictationContentEdited = [(SISchemaClientEvent *)self dictationContentEdited];
  v148 = [dictationContentEdited applySensitiveConditionsPolicy:policyCopy];
  suppressMessage48 = [v148 suppressMessage];

  if (suppressMessage48)
  {
    [(SISchemaClientEvent *)self deleteDictationContentEdited];
  }

  uufrShownTier1 = [(SISchemaClientEvent *)self uufrShownTier1];
  v151 = [uufrShownTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage49 = [v151 suppressMessage];

  if (suppressMessage49)
  {
    [(SISchemaClientEvent *)self deleteUufrShownTier1];
  }

  ueiDictationPartialResultUpdated = [(SISchemaClientEvent *)self ueiDictationPartialResultUpdated];
  v154 = [ueiDictationPartialResultUpdated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage50 = [v154 suppressMessage];

  if (suppressMessage50)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationPartialResultUpdated];
  }

  ueiDictationVoiceCommandExecuted = [(SISchemaClientEvent *)self ueiDictationVoiceCommandExecuted];
  v157 = [ueiDictationVoiceCommandExecuted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage51 = [v157 suppressMessage];

  if (suppressMessage51)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationVoiceCommandExecuted];
  }

  ueiDictationInputModeSwitchContext = [(SISchemaClientEvent *)self ueiDictationInputModeSwitchContext];
  v160 = [ueiDictationInputModeSwitchContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage52 = [v160 suppressMessage];

  if (suppressMessage52)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationInputModeSwitchContext];
  }

  ueiDictationToolTipDisplayContext = [(SISchemaClientEvent *)self ueiDictationToolTipDisplayContext];
  v163 = [ueiDictationToolTipDisplayContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage53 = [v163 suppressMessage];

  if (suppressMessage53)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationToolTipDisplayContext];
  }

  hostPlatformViewAppearContext = [(SISchemaClientEvent *)self hostPlatformViewAppearContext];
  v166 = [hostPlatformViewAppearContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage54 = [v166 suppressMessage];

  if (suppressMessage54)
  {
    [(SISchemaClientEvent *)self deleteHostPlatformViewAppearContext];
  }

  hostPlatformViewDisappearContext = [(SISchemaClientEvent *)self hostPlatformViewDisappearContext];
  v169 = [hostPlatformViewDisappearContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage55 = [v169 suppressMessage];

  if (suppressMessage55)
  {
    [(SISchemaClientEvent *)self deleteHostPlatformViewDisappearContext];
  }

  ueiDictationTranscriptionTokenized = [(SISchemaClientEvent *)self ueiDictationTranscriptionTokenized];
  v172 = [ueiDictationTranscriptionTokenized applySensitiveConditionsPolicy:policyCopy];
  suppressMessage56 = [v172 suppressMessage];

  if (suppressMessage56)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationTranscriptionTokenized];
  }

  dictationAlternativesSelected = [(SISchemaClientEvent *)self dictationAlternativesSelected];
  v175 = [dictationAlternativesSelected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage57 = [v175 suppressMessage];

  if (suppressMessage57)
  {
    [(SISchemaClientEvent *)self deleteDictationAlternativesSelected];
  }

  uufrSelected = [(SISchemaClientEvent *)self uufrSelected];
  v178 = [uufrSelected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage58 = [v178 suppressMessage];

  if (suppressMessage58)
  {
    [(SISchemaClientEvent *)self deleteUufrSelected];
  }

  ueiDictationAlternativeTextPairsSelected = [(SISchemaClientEvent *)self ueiDictationAlternativeTextPairsSelected];
  v181 = [ueiDictationAlternativeTextPairsSelected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage59 = [v181 suppressMessage];

  if (suppressMessage59)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationAlternativeTextPairsSelected];
  }

  ueiUserBargeInDetected = [(SISchemaClientEvent *)self ueiUserBargeInDetected];
  v184 = [ueiUserBargeInDetected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage60 = [v184 suppressMessage];

  if (suppressMessage60)
  {
    [(SISchemaClientEvent *)self deleteUeiUserBargeInDetected];
  }

  ueiDictationEnablementPromptShown = [(SISchemaClientEvent *)self ueiDictationEnablementPromptShown];
  v187 = [ueiDictationEnablementPromptShown applySensitiveConditionsPolicy:policyCopy];
  suppressMessage61 = [v187 suppressMessage];

  if (suppressMessage61)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationEnablementPromptShown];
  }

  ueiSiriCarCommandContext = [(SISchemaClientEvent *)self ueiSiriCarCommandContext];
  v190 = [ueiSiriCarCommandContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage62 = [v190 suppressMessage];

  if (suppressMessage62)
  {
    [(SISchemaClientEvent *)self deleteUeiSiriCarCommandContext];
  }

  ueiVisionSnippetDismissed = [(SISchemaClientEvent *)self ueiVisionSnippetDismissed];
  v193 = [ueiVisionSnippetDismissed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage63 = [v193 suppressMessage];

  if (suppressMessage63)
  {
    [(SISchemaClientEvent *)self deleteUeiVisionSnippetDismissed];
  }

  ueiSiriWasUnavailable = [(SISchemaClientEvent *)self ueiSiriWasUnavailable];
  v196 = [ueiSiriWasUnavailable applySensitiveConditionsPolicy:policyCopy];
  suppressMessage64 = [v196 suppressMessage];

  if (suppressMessage64)
  {
    [(SISchemaClientEvent *)self deleteUeiSiriWasUnavailable];
  }

  preferredAudioRouteChanged = [(SISchemaClientEvent *)self preferredAudioRouteChanged];
  v199 = [preferredAudioRouteChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage65 = [v199 suppressMessage];

  if (suppressMessage65)
  {
    [(SISchemaClientEvent *)self deletePreferredAudioRouteChanged];
  }

  ueiDictationContentEditedTier1 = [(SISchemaClientEvent *)self ueiDictationContentEditedTier1];
  v202 = [ueiDictationContentEditedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage66 = [v202 suppressMessage];

  if (suppressMessage66)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationContentEditedTier1];
  }

  ueiDictationVoiceCommandUndoTapAction = [(SISchemaClientEvent *)self ueiDictationVoiceCommandUndoTapAction];
  v205 = [ueiDictationVoiceCommandUndoTapAction applySensitiveConditionsPolicy:policyCopy];
  suppressMessage67 = [v205 suppressMessage];

  if (suppressMessage67)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationVoiceCommandUndoTapAction];
  }

  ueiDictationVoiceCommandDisambiguationAction = [(SISchemaClientEvent *)self ueiDictationVoiceCommandDisambiguationAction];
  v208 = [ueiDictationVoiceCommandDisambiguationAction applySensitiveConditionsPolicy:policyCopy];
  suppressMessage68 = [v208 suppressMessage];

  if (suppressMessage68)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationVoiceCommandDisambiguationAction];
  }

  ueiDictationVoiceCommandKeyboardAction = [(SISchemaClientEvent *)self ueiDictationVoiceCommandKeyboardAction];
  v211 = [ueiDictationVoiceCommandKeyboardAction applySensitiveConditionsPolicy:policyCopy];
  suppressMessage69 = [v211 suppressMessage];

  if (suppressMessage69)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationVoiceCommandKeyboardAction];
  }

  ueiDictationEuclidAlternativesEvent = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEvent];
  v214 = [ueiDictationEuclidAlternativesEvent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage70 = [v214 suppressMessage];

  if (suppressMessage70)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidAlternativesEvent];
  }

  ueiDictationEuclidAlternativesEventTier1 = [(SISchemaClientEvent *)self ueiDictationEuclidAlternativesEventTier1];
  v217 = [ueiDictationEuclidAlternativesEventTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage71 = [v217 suppressMessage];

  if (suppressMessage71)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidAlternativesEventTier1];
  }

  ueiDictationEuclidSpeechAlternativesSelected = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelected];
  v220 = [ueiDictationEuclidSpeechAlternativesSelected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage72 = [v220 suppressMessage];

  if (suppressMessage72)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidSpeechAlternativesSelected];
  }

  ueiDictationEuclidSpeechAlternativesSelectedTier1 = [(SISchemaClientEvent *)self ueiDictationEuclidSpeechAlternativesSelectedTier1];
  v223 = [ueiDictationEuclidSpeechAlternativesSelectedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage73 = [v223 suppressMessage];

  if (suppressMessage73)
  {
    [(SISchemaClientEvent *)self deleteUeiDictationEuclidSpeechAlternativesSelectedTier1];
  }

  typingRequestTrace = [(SISchemaClientEvent *)self typingRequestTrace];
  v226 = [typingRequestTrace applySensitiveConditionsPolicy:policyCopy];
  suppressMessage74 = [v226 suppressMessage];

  if (suppressMessage74)
  {
    [(SISchemaClientEvent *)self deleteTypingRequestTrace];
  }

  ueiInvocationTier1 = [(SISchemaClientEvent *)self ueiInvocationTier1];
  v229 = [ueiInvocationTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage75 = [v229 suppressMessage];

  if (suppressMessage75)
  {
    [(SISchemaClientEvent *)self deleteUeiInvocationTier1];
  }

  transcriptShown = [(SISchemaClientEvent *)self transcriptShown];
  v232 = [transcriptShown applySensitiveConditionsPolicy:policyCopy];
  suppressMessage76 = [v232 suppressMessage];

  if (suppressMessage76)
  {
    [(SISchemaClientEvent *)self deleteTranscriptShown];
  }

  transcriptTapped = [(SISchemaClientEvent *)self transcriptTapped];
  v235 = [transcriptTapped applySensitiveConditionsPolicy:policyCopy];
  suppressMessage77 = [v235 suppressMessage];

  if (suppressMessage77)
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
  eventMetadata = [(SISchemaClientEvent *)self eventMetadata];
  turnID = [eventMetadata turnID];
  v6 = [(SISchemaUUID *)v3 initWithBytesAsData:turnID];

  if (v6)
  {
    value = [(SISchemaUUID *)v6 value];
    if (value)
    {
      value2 = [(SISchemaUUID *)v6 value];
      v9 = [value2 length] != 0;

      LODWORD(value) = 2 * v9;
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
  v3 = [SISchemaUUID alloc];
  eventMetadata = [(SISchemaClientEvent *)self eventMetadata];
  turnID = [eventMetadata turnID];
  v6 = [(SISchemaUUID *)v3 initWithBytesAsData:turnID];

  if (!v6)
  {
    goto LABEL_5;
  }

  value = [(SISchemaUUID *)v6 value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [(SISchemaUUID *)v6 value];
  v9 = [value2 length];

  if (v9)
  {
    value = v6;
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
  whichEvent_Type = [(SISchemaClientEvent *)self whichEvent_Type];
  v4 = 0;
  v5 = whichEvent_Type - 101;
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

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 0x4C)
  {
    return 0;
  }

  else
  {
    return off_1E78E9240[tag - 101];
  }
}

@end