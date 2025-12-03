@interface TUCall
+ (id)_supplementalDialTelephonyCallStringForLocString:(id)string destination:(id)destination isPhoneNumber:(BOOL)number includeFaceTimeAudio:(BOOL)audio;
+ (id)stringForReceptionistState:(int)state;
- (BOOL)_isEligibleForManualScreening:(BOOL)screening languageIdentifier:(id)identifier;
- (BOOL)hasSentInvitation;
- (BOOL)isCaptioningAvailable;
- (BOOL)isConferenced;
- (BOOL)isConnected;
- (BOOL)isConnecting;
- (BOOL)isDialRequestVideoUpgrade:(id)upgrade;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCall:(id)call;
- (BOOL)isFromSiri;
- (BOOL)isJunk;
- (BOOL)isOnHold;
- (BOOL)isPodcastRecordingAllowed;
- (BOOL)isRTT;
- (BOOL)isRecording;
- (BOOL)isRecordingPodcast;
- (BOOL)isTTY;
- (BOOL)isVideoUpgradeFromCall:(id)call;
- (BOOL)isWiFiCall;
- (BOOL)supportsDTMFTones;
- (BOOL)supportsRecents;
- (BOOL)supportsSimultaneousVoiceAndData;
- (CGRect)remoteVideoContentRect;
- (CGSize)remoteScreenAspectRatio;
- (NSArray)contactIdentifiers;
- (NSNotificationCenter)notificationCenter;
- (NSNumber)handoffRecipientParticipant;
- (NSSet)remoteParticipantHandles;
- (NSString)callDirectoryIdentityExtension;
- (NSString)callDirectoryName;
- (NSString)callDurationString;
- (NSString)companyDepartment;
- (NSString)companyName;
- (NSString)contactIdentifier;
- (NSString)destinationID;
- (NSString)displayFirstName;
- (NSString)displayName;
- (NSString)hardPauseDigitsDisplayString;
- (NSString)localizedHandoffRecipientDeviceCategory;
- (NSString)localizedLabel;
- (NSString)reminderString;
- (NSString)suggestedDisplayName;
- (NSURL)imageURL;
- (NSUUID)uniqueProxyIdentifierUUID;
- (TUCall)init;
- (TUCall)initWithCall:(id)call;
- (TUCall)initWithCoder:(id)coder;
- (TUCall)initWithNotificationCenter:(id)center;
- (TUCall)initWithUniqueProxyIdentifier:(id)identifier endpointOnCurrentDevice:(BOOL)device notificationCenter:(id)center;
- (TUCallCenter)callCenter;
- (TUCallProvider)provider;
- (TUCallServicesInterface)callServicesInterface;
- (TUConfigurationProvider)configurationProvider;
- (TUDialRequest)dialRequestForRedial;
- (TUSenderIdentity)localSenderIdentity;
- (double)callDuration;
- (double)startTime;
- (id)description;
- (id)errorAlertMessage;
- (id)errorAlertTitle;
- (id)serviceDisplayString;
- (id)supplementalInCallString;
- (int)abUID;
- (int)resolvedStatus;
- (int)service;
- (int)smartHoldingAvailability;
- (int)smartHoldingHoldDetectionAvailability;
- (int)status;
- (int64_t)callDirectoryIdentityType;
- (int64_t)faceTimeTransportType;
- (unint64_t)hash;
- (void)_handleStatusChange;
- (void)answerWithRequest:(id)request;
- (void)dealloc;
- (void)dialRequestForRedial;
- (void)disconnectWithReason:(int)reason;
- (void)encodeWithCoder:(id)coder;
- (void)setIsOnHold:(BOOL)hold;
- (void)suppressRingtoneDueToRemoteSuppression;
- (void)updateComparativeCall;
- (void)updateWithCall:(id)call;
@end

@implementation TUCall

- (BOOL)isOnHold
{
  provisionalHoldStatus = [(TUCall *)self provisionalHoldStatus];
  if (provisionalHoldStatus != 1)
  {
    LOBYTE(provisionalHoldStatus) = [(TUCall *)self provisionalHoldStatus]!= 2 && [(TUCall *)self status]== 2;
  }

  return provisionalHoldStatus;
}

- (int)status
{
  callStatus = [(TUCall *)self callStatus];
  transitionStatus = [(TUCall *)self transitionStatus];
  if (![(TUCall *)self isPTT]&& (callStatus <= 4 && transitionStatus == 5 || callStatus == 4 && transitionStatus == 1))
  {
    return transitionStatus;
  }

  return callStatus;
}

- (NSString)callDurationString
{
  [(TUCall *)self callDuration];
  if (v2 == 0.0)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v3 = vcvtmd_s64_f64(v2);
  if (v3 < 1)
  {
    v5 = 0;
    v4 = 0;
  }

  else
  {
    v4 = v3 % 0xE10 / 0x3C;
    if (v3 > 0xE0F)
    {
      [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%02d:%02d:%02d", v3 / 0xE10uLL, v4, v3 % 0xE10 % 0x3C];
      goto LABEL_9;
    }

    v5 = v3 % 0xE10 % 0x3C;
  }

  [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%02d:%02d", v4, v5, v8];
  v6 = LABEL_9:;
LABEL_10:

  return v6;
}

- (double)callDuration
{
  dateScreeningEnded = [(TUCall *)self dateScreeningEnded];
  if (!dateScreeningEnded)
  {
    dateScreeningEnded = [(TUCall *)self dateConnected];
    if (!dateScreeningEnded)
    {
      return 0.0;
    }
  }

  v4 = dateScreeningEnded;
  dateEnded = [(TUCall *)self dateEnded];

  if (dateEnded)
  {
    dateEnded2 = [(TUCall *)self dateEnded];
    [dateEnded2 timeIntervalSinceDate:v4];
    v8 = v7;
  }

  else
  {
    [v4 timeIntervalSinceNow];
    v8 = -v9;
  }

  return v8;
}

- (TUCall)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [(TUCall *)self initWithUniqueProxyIdentifier:uUIDString];

  return v5;
}

- (TUCallProvider)provider
{
  callCenter = [(TUCall *)self callCenter];
  providerManager = [callCenter providerManager];
  defaultProvider = [providerManager defaultProvider];

  return defaultProvider;
}

- (TUCallCenter)callCenter
{
  callServicesInterface = [(TUCall *)self callServicesInterface];
  callCenter = [callServicesInterface callCenter];

  return callCenter;
}

- (TUCallServicesInterface)callServicesInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_callServicesInterface);

  return WeakRetained;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  provider = [(TUCall *)self provider];
  identifier = [provider identifier];
  [v3 appendFormat:@" p=%@", identifier];

  announceProviderIdentifier = [(TUCall *)self announceProviderIdentifier];
  [v3 appendFormat:@" aPI=%@", announceProviderIdentifier];

  initiator = [(TUCall *)self initiator];
  [v3 appendFormat:@" initr=%@", initiator];

  currentRecordingSession = [(TUCall *)self currentRecordingSession];
  [v3 appendFormat:@" crs=%@", currentRecordingSession];

  recordingSession = [(TUCall *)self recordingSession];
  [v3 appendFormat:@" rs=%@", recordingSession];

  podcastRecordingSession = [(TUCall *)self podcastRecordingSession];
  [v3 appendFormat:@" prs=%@", podcastRecordingSession];

  translationSession = [(TUCall *)self translationSession];
  [v3 appendFormat:@" ctrans=%@", translationSession];

  v12 = TUStringForCallService([(TUCall *)self service]);
  [v3 appendFormat:@" svc=%@", v12];

  handle = [(TUCall *)self handle];
  [v3 appendFormat:@" hdl=%@", handle];

  remoteParticipantHandles = [(TUCall *)self remoteParticipantHandles];
  [v3 appendFormat:@" hdls=%@", remoteParticipantHandles];

  isoCountryCode = [(TUCall *)self isoCountryCode];
  [v3 appendFormat:@" isoCC=%@", isoCountryCode];

  v16 = TUStringForCallStatus([(TUCall *)self status]);
  [v3 appendFormat:@" stat=%@", v16];

  [v3 appendFormat:@" tStat=%d", -[TUCall transitionStatus](self, "transitionStatus")];
  [v3 appendFormat:@" dR=%d", -[TUCall disconnectedReason](self, "disconnectedReason")];
  [v3 appendFormat:@" fR=%d", -[TUCall filteredOutReason](self, "filteredOutReason")];
  [v3 appendFormat:@" supportsR=%d", -[TUCall supportsRecents](self, "supportsRecents")];
  uniqueProxyIdentifier = [(TUCall *)self uniqueProxyIdentifier];
  [v3 appendFormat:@" uPI=%@", uniqueProxyIdentifier];

  callGroupUUID = [(TUCall *)self callGroupUUID];
  [v3 appendFormat:@" grp=%@", callGroupUUID];

  localSenderIdentityUUID = [(TUCall *)self localSenderIdentityUUID];
  [v3 appendFormat:@" lSIUUID=%@", localSenderIdentityUUID];

  localSenderIdentityAccountUUID = [(TUCall *)self localSenderIdentityAccountUUID];
  [v3 appendFormat:@" lSIAccountUUID=%@", localSenderIdentityAccountUUID];

  upgradedFromCallUUID = [(TUCall *)self upgradedFromCallUUID];
  [v3 appendFormat:@" upgradedFromCallUUID=%@", upgradedFromCallUUID];

  [v3 appendFormat:@" hosted=%d", -[TUCall isHostedOnCurrentDevice](self, "isHostedOnCurrentDevice")];
  [v3 appendFormat:@" endpt=%d", -[TUCall isEndpointOnCurrentDevice](self, "isEndpointOnCurrentDevice")];
  callerNameFromNetwork = [(TUCall *)self callerNameFromNetwork];
  [v3 appendFormat:@" callerNFN=%@", callerNameFromNetwork];

  sourceIdentifier = [(TUCall *)self sourceIdentifier];
  [v3 appendFormat:@" srcID=%@", sourceIdentifier];

  audioCategory = [(TUCall *)self audioCategory];
  [v3 appendFormat:@" aC=%@", audioCategory];

  audioMode = [(TUCall *)self audioMode];
  [v3 appendFormat:@" aM=%@", audioMode];

  [v3 appendFormat:@" iUB=%d", -[TUCall isUsingBaseband](self, "isUsingBaseband")];
  [v3 appendFormat:@" vm=%d", -[TUCall isVoicemail](self, "isVoicemail")];
  [v3 appendFormat:@" connStat=%d%d", -[TUCall isConnecting](self, "isConnecting"), -[TUCall isConnected](self, "isConnected")];
  [v3 appendFormat:@" nMICS=%d", -[TUCall needsManualInCallSounds](self, "needsManualInCallSounds")];
  [v3 appendFormat:@" sR=%ld", -[TUCall soundRegion](self, "soundRegion")];
  [v3 appendFormat:@" iSA=%d", -[TUCall isSendingAudio](self, "isSendingAudio")];
  [v3 appendFormat:@" iSV=%d", -[TUCall isSendingVideo](self, "isSendingVideo")];
  [v3 appendFormat:@" iSS=%d", -[TUCall isSharingScreen](self, "isSharingScreen")];
  [v3 appendFormat:@" wHM=%d", -[TUCall wantsHoldMusic](self, "wantsHoldMusic")];
  [v3 appendFormat:@" hSI=%d", -[TUCall hasSentInvitation](self, "hasSentInvitation")];
  [v3 appendFormat:@" vST=%ld", -[TUCall videoStreamToken](self, "videoStreamToken")];
  [v3 appendFormat:@" iapST=%ld", -[TUCall inputAudioPowerSpectrumToken](self, "inputAudioPowerSpectrumToken")];
  [v3 appendFormat:@" oapST=%ld", -[TUCall outputAudioPowerSpectrumToken](self, "outputAudioPowerSpectrumToken")];
  tokens = [(TUCall *)self tokens];

  if (tokens)
  {
    tokens2 = [(TUCall *)self tokens];
    [v3 appendFormat:@" tokens=%@", tokens2];
  }

  localMemberHandleValue = [(TUCall *)self localMemberHandleValue];

  if (localMemberHandleValue)
  {
    localMemberHandleValue2 = [(TUCall *)self localMemberHandleValue];
    [v3 appendFormat:@" localMemberHandleValue=%@", localMemberHandleValue2];
  }

  videoCallAttributes = [(TUCall *)self videoCallAttributes];
  [v3 appendFormat:@" vCA=%@", videoCallAttributes];

  screenShareAttributes = [(TUCall *)self screenShareAttributes];
  [v3 appendFormat:@" ssA=%@", screenShareAttributes];

  [v3 appendFormat:@" ssI=%ld", -[TUCall screenSharingIntention](self, "screenSharingIntention")];
  model = [(TUCall *)self model];
  [v3 appendFormat:@" model=%@", model];

  [v3 appendFormat:@" dtmfU=%d", -[TUCall supportsDTMFUpdates](self, "supportsDTMFUpdates")];
  [v3 appendFormat:@" em=%d", -[TUCall isEmergency](self, "isEmergency")];
  [v3 appendFormat:@" emvs=%d", -[TUCall hasEmergencyVideoStream](self, "hasEmergencyVideoStream")];
  emergencyMediaItems = [(TUCall *)self emergencyMediaItems];
  [v3 appendFormat:@" emmi=%@", emergencyMediaItems];

  [v3 appendFormat:@" iFE=%d", -[TUCall isFailureExpected](self, "isFailureExpected")];
  [v3 appendFormat:@" sos=%d", -[TUCall isSOS](self, "isSOS")];
  [v3 appendFormat:@" sSR=%d", -[TUCall shouldSuppressRingtone](self, "shouldSuppressRingtone")];
  [v3 appendFormat:@" sSUI=%d", -[TUCall shouldSuppressInCallUI](self, "shouldSuppressInCallUI")];
  [v3 appendFormat:@" lIB=%d", -[TUCall launchInBackground](self, "launchInBackground")];
  [v3 appendFormat:@" mX=%d", -[TUCall isMutuallyExclusiveCall](self, "isMutuallyExclusiveCall")];
  [v3 appendFormat:@" iUM=%d", -[TUCall isUplinkMuted](self, "isUplinkMuted")];
  [v3 appendFormat:@" iDM=%d", -[TUCall isDownlinkMuted](self, "isDownlinkMuted")];
  [v3 appendFormat:@" tty=%ld", -[TUCall ttyType](self, "ttyType")];
  [v3 appendFormat:@" ttyWV=%d", -[TUCall supportsTTYWithVoice](self, "supportsTTYWithVoice")];
  [v3 appendFormat:@" convo=%d", -[TUCall isConversation](self, "isConversation")];
  [v3 appendFormat:@" rUM=%d", -[TUCall isRemoteUplinkMuted](self, "isRemoteUplinkMuted")];
  [v3 appendFormat:@" ver=%ld", -[TUCall verificationStatus](self, "verificationStatus")];
  [v3 appendFormat:@" pri=%ld", -[TUCall priority](self, "priority")];
  [v3 appendFormat:@" oUI=%ld", -[TUCall originatingUIType](self, "originatingUIType")];
  [v3 appendFormat:@" lvmR=%ld", -[TUCall liveVoicemailUnavailableReason](self, "liveVoicemailUnavailableReason")];
  [v3 appendFormat:@" jConf=%ld", -[TUCall junkConfidence](self, "junkConfidence")];
  [v3 appendFormat:@" iCat=%ld", -[TUCall identificationCategory](self, "identificationCategory")];
  [v3 appendFormat:@" iKC=%d", -[TUCall isKnownCaller](self, "isKnownCaller")];
  [v3 appendFormat:@" JFL=%d", -[TUCall joinedFromLink](self, "joinedFromLink")];
  [v3 appendFormat:@" btAF=%ld", -[TUCall bluetoothAudioFormat](self, "bluetoothAudioFormat")];
  [v3 appendFormat:@" mVM=%d", -[TUCall mixesVoiceWithMedia](self, "mixesVoiceWithMedia")];
  [v3 appendFormat:@" sEF=%d", -[TUCall supportsEmergencyFallback](self, "supportsEmergencyFallback")];
  [v3 appendFormat:@" cs=%d", -[TUCall isScreening](self, "isScreening")];
  [v3 appendFormat:@" rs=%d", -[TUCall receptionistState](self, "receptionistState")];
  lastReceptionistMessage = [(TUCall *)self lastReceptionistMessage];
  v35 = [lastReceptionistMessage copy];

  if (v35 && ([v35 length] > 9 || objc_msgSend(v35, "length")))
  {
    v36 = [v35 substringToIndex:9];
    [v3 appendFormat:@" rm=%@...", v36];
  }

  [v3 appendFormat:@" rC=%d", -[TUCall isReceptionistCapable](self, "isReceptionistCapable")];
  receptionistSession = [(TUCall *)self receptionistSession];
  [v3 appendFormat:@" receptionistSession=%@", receptionistSession];

  [v3 appendFormat:@" csUI=%d", -[TUCall isScreeningDueToUserInteraction](self, "isScreeningDueToUserInteraction")];
  [v3 appendFormat:@" ss=%d", -[TUCall supportsScreening](self, "supportsScreening")];
  [v3 appendFormat:@" ae=%d", -[TUCall screeningAnnouncementHasFinished](self, "screeningAnnouncementHasFinished")];
  [v3 appendFormat:@" hBR=%d", -[TUCall hasBeenRedirected](self, "hasBeenRedirected")];
  providerContext = [(TUCall *)self providerContext];
  [v3 appendFormat:@" pCtx=%@", providerContext];

  [v3 appendFormat:@" amst=%ld", -[TUCall answeringMachineStreamToken](self, "answeringMachineStreamToken")];
  [v3 appendFormat:@" lUHC=%d", -[TUCall isLocalUserInHomeCountry](self, "isLocalUserInHomeCountry")];
  [v3 appendFormat:@" iSCN=%d", -[TUCall hasIdentifiedSpamInCallerName](self, "hasIdentifiedSpamInCallerName")];
  [v3 appendFormat:@" reRing=%d", -[TUCall isReRing](self, "isReRing")];
  [v3 appendFormat:@" cST=%d", -[TUCall callSubType](self, "callSubType")];
  [v3 appendFormat:@" screenSharingType=%ld", -[TUCall screenSharingType](self, "screenSharingType")];
  [v3 appendFormat:@" spC=%d", -[TUCall isSharePlayCapable](self, "isSharePlayCapable")];
  [v3 appendFormat:@" arSRSS=%d", -[TUCall anyRemoteSupportsRequestToScreenShare](self, "anyRemoteSupportsRequestToScreenShare")];
  conversationGroupUUID = [(TUCall *)self conversationGroupUUID];
  [v3 appendFormat:@" cGrp=%@", conversationGroupUUID];

  [v3 appendFormat:@" nearbyMode=%ld", -[TUCall nearbyMode](self, "nearbyMode")];
  smartHoldingSession = [(TUCall *)self smartHoldingSession];
  [v3 appendFormat:@" smartHoldingSession=%@", smartHoldingSession];

  [v3 appendFormat:@" cTS=%d", -[TUCall commTrustScore](self, "commTrustScore")];
  [v3 appendFormat:@" sUK=%d", -[TUCall specialUnknown](self, "specialUnknown")];
  reminderUUID = [(TUCall *)self reminderUUID];
  [v3 appendFormat:@" rUUID=%@", reminderUUID];

  [v3 appendString:@">"];

  return v3;
}

- (int)service
{
  selfCopy = self;
  provider = [(TUCall *)self provider];
  LODWORD(selfCopy) = [TUCallProviderManager serviceForProvider:provider video:[(TUCall *)selfCopy isVideo]];

  return selfCopy;
}

- (BOOL)supportsRecents
{
  if (!self->_supportsRecents)
  {
    return 0;
  }

  provider = [(TUCall *)self provider];
  supportsRecents = [provider supportsRecents];

  return supportsRecents;
}

- (BOOL)isConnecting
{
  dateStartedConnecting = [(TUCall *)self dateStartedConnecting];
  v3 = dateStartedConnecting != 0;

  return v3;
}

- (BOOL)isConnected
{
  dateConnected = [(TUCall *)self dateConnected];
  v3 = dateConnected != 0;

  return v3;
}

- (BOOL)hasSentInvitation
{
  dateSentInvitation = [(TUCall *)self dateSentInvitation];
  v3 = dateSentInvitation != 0;

  return v3;
}

- (NSURL)imageURL
{
  if ([(TUCall *)self isPTT])
  {
    channelImageURL = [(TUCall *)self channelImageURL];
  }

  else
  {
    displayContext = [(TUCall *)self displayContext];
    channelImageURL = [displayContext companyLogoURL];
  }

  return channelImageURL;
}

- (void)updateComparativeCall
{
  comparativeCall = [(TUCall *)self comparativeCall];
  [comparativeCall updateWithCall:self];
}

- (NSString)callDirectoryIdentityExtension
{
  displayContext = [(TUCall *)self displayContext];
  callDirectoryLocalizedExtensionContainingAppName = [displayContext callDirectoryLocalizedExtensionContainingAppName];

  return callDirectoryLocalizedExtensionContainingAppName;
}

- (void)_handleStatusChange
{
  [(TUCall *)self resetProvisionalState];
  if ([(TUCall *)self isOnHold])
  {

    [(TUCall *)self resetWantsHoldMusic];
  }
}

- (NSUUID)uniqueProxyIdentifierUUID
{
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  uniqueProxyIdentifier = [(TUCall *)self uniqueProxyIdentifier];
  v5 = [v3 initWithUUIDString:uniqueProxyIdentifier];

  return v5;
}

- (NSSet)remoteParticipantHandles
{
  handle = [(TUCall *)self handle];
  v4 = MEMORY[0x1E695DFD8];
  if (handle)
  {
    handle2 = [(TUCall *)self handle];
    v6 = [v4 setWithObject:handle2];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFD8] set];
  }

  return v6;
}

- (unint64_t)hash
{
  uniqueProxyIdentifier = [(TUCall *)self uniqueProxyIdentifier];
  v3 = [uniqueProxyIdentifier hash];

  return v3;
}

- (BOOL)isConferenced
{
  callGroupUUID = [(TUCall *)self callGroupUUID];
  if (callGroupUUID)
  {
    provider = [(TUCall *)self provider];
    isTelephonyProvider = [provider isTelephonyProvider];
  }

  else
  {
    isTelephonyProvider = 0;
  }

  return isTelephonyProvider;
}

- (NSString)contactIdentifier
{
  displayContext = [(TUCall *)self displayContext];
  contactIdentifiers = [displayContext contactIdentifiers];
  firstObject = [contactIdentifiers firstObject];

  return firstObject;
}

- (NSArray)contactIdentifiers
{
  displayContext = [(TUCall *)self displayContext];
  contactIdentifiers = [displayContext contactIdentifiers];

  return contactIdentifiers;
}

- (BOOL)isRTT
{
  if ([(TUCall *)self ttyType]- 1 > 1)
  {
    return 0;
  }

  return [(TUCall *)self supportsTTYWithVoice];
}

- (BOOL)isTTY
{
  if ([(TUCall *)self ttyType]- 1 > 1)
  {
    return 0;
  }

  else
  {
    return ![(TUCall *)self supportsTTYWithVoice];
  }
}

- (BOOL)isRecording
{
  recordingSession = [(TUCall *)self recordingSession];

  if (!recordingSession)
  {
    return 0;
  }

  recordingSession2 = [(TUCall *)self recordingSession];
  v5 = [recordingSession2 recordingState] == 3 && -[TUCall status](self, "status") != 6;

  return v5;
}

- (NSString)displayName
{
  displayContext = [(TUCall *)self displayContext];
  name = [displayContext name];

  if ([name length])
  {
    qmemcpy(v9, ", * ", sizeof(v9));
    v4 = MEMORY[0x1E696AEC0];
    v5 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v9[1] length:1];
    v6 = [MEMORY[0x1E696AEC0] stringWithCharacters:v9 length:1];
    v7 = [v4 stringWithFormat:@"%@%@%@", v5, name, v6];

    name = v7;
  }

  return name;
}

- (NSString)localizedLabel
{
  displayContext = [(TUCall *)self displayContext];
  label = [displayContext label];

  return label;
}

- (id)supplementalInCallString
{
  if ([(TUCall *)self isHostedOnCurrentDevice])
  {
    v3 = 0;
  }

  else
  {
    isOutgoing = [(TUCall *)self isOutgoing];
    v5 = TUBundle();
    v6 = v5;
    if (isOutgoing)
    {
      v7 = @"IN_CALL_OUTGOING_RELAY";
    }

    else
    {
      v7 = @"IN_CALL_INCOMING_RELAY";
    }

    v3 = [v5 localizedStringForKey:v7 value:&stru_1F098C218 table:@"TelephonyUtilities"];
  }

  return v3;
}

- (void)dealloc
{
  notificationCenter = [(TUCall *)self notificationCenter];
  [notificationCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TUCall;
  [(TUCall *)&v4 dealloc];
}

- (NSNotificationCenter)notificationCenter
{
  callNotificationManager = [(TUCall *)self callNotificationManager];
  notificationCenter = [callNotificationManager notificationCenter];

  return notificationCenter;
}

- (TUSenderIdentity)localSenderIdentity
{
  localSenderIdentityAccountUUID = [(TUCall *)self localSenderIdentityAccountUUID];
  if (localSenderIdentityAccountUUID)
  {
    provider = [(TUCall *)self provider];
    v5 = [provider senderIdentityForAccountUUID:localSenderIdentityAccountUUID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int)smartHoldingAvailability
{
  v55 = *MEMORY[0x1E69E9840];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  remoteParticipantHandles = [(TUCall *)self remoteParticipantHandles];
  v26 = [remoteParticipantHandles count];

  isConferenced = [(TUCall *)self isConferenced];
  provider = [(TUCall *)self provider];
  isSystemProvider = [provider isSystemProvider];

  isEmergency = [(TUCall *)self isEmergency];
  status = [(TUCall *)self status];
  isEndpointOnCurrentDevice = [(TUCall *)self isEndpointOnCurrentDevice];
  isVideo = [(TUCall *)self isVideo];
  v11 = TUCurrentLocaleIdentifier();
  v12 = [&unk_1F09C64F0 containsObject:v11];

  isCaptioningAvailable = [(TUCall *)self isCaptioningAvailable];
  isSmartHoldingGASRAvailable = [(TUCall *)self isSmartHoldingGASRAvailable];
  v15 = isSmartHoldingGASRAvailable;
  v25 = isSystemProvider;
  v16 = isSystemProvider ^ 1;
  v17 = isConferenced;
  v18 = (v26 != 1) | isConferenced | v16 | (isEmergency || status != 1) | ~isEndpointOnCurrentDevice | isVideo | ~v12;
  if (isCaptioningAvailable && isSmartHoldingGASRAvailable)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  if (v18)
  {
    v20 = 2;
  }

  else
  {
    v20 = v19;
  }

  v27 = v20;
  v21 = TUDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67112194;
    v30 = v27;
    v31 = 1024;
    v32 = v26 == 1;
    v33 = 1024;
    v34 = !v17;
    v35 = 1024;
    v36 = v25 & 1;
    v37 = 1024;
    v38 = !isEmergency;
    v39 = 1024;
    v40 = status == 1;
    v41 = 1024;
    callStatus = [(TUCall *)self callStatus];
    v43 = 1024;
    v44 = isEndpointOnCurrentDevice & 1;
    v45 = 1024;
    v46 = !isVideo;
    v47 = 1024;
    v48 = v12 & 1;
    v49 = 2112;
    v50 = localeIdentifier;
    v51 = 1024;
    v52 = isCaptioningAvailable;
    v53 = 1024;
    v54 = v15;
    _os_log_impl(&dword_1956FD000, v21, OS_LOG_TYPE_DEFAULT, "smartHoldingAvailability=%i, validRemoteParticipantCount=%i validNotConferenced=%i, validSystemProvider=%i, validNotEmergencyCall=%i, validCallStatus=%i(%i), validEndpointOnCurrentDevice=%i, validIsNotVideo=%i, validLocale=%i(%@), validCaptioningAvailable=%i, isGASRAvailable=%i", buf, 0x54u);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v27;
}

- (NSString)hardPauseDigitsDisplayString
{
  hardPauseDigits = [(TUCall *)self hardPauseDigits];
  v3 = TUHardPauseDigitsDisplayString(hardPauseDigits);

  return v3;
}

- (BOOL)isJunk
{
  if (([objc_opt_class() isJunkConfidenceLevelJunk:{-[TUCall junkConfidence](self, "junkConfidence")}] & 1) != 0 || -[TUCall commTrustScore](self, "commTrustScore") == 1)
  {
    return ![(TUCall *)self isKnownCaller];
  }

  else
  {
    return 0;
  }
}

- (TUCall)initWithNotificationCenter:(id)center
{
  centerCopy = center;
  v5 = objc_opt_new();
  uUIDString = [v5 UUIDString];
  v7 = [(TUCall *)self initWithUniqueProxyIdentifier:uUIDString endpointOnCurrentDevice:1 notificationCenter:centerCopy];

  return v7;
}

- (TUCall)initWithCall:(id)call
{
  callCopy = call;
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v6 = [(TUCall *)self initWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    [(TUCall *)v6 updateWithCall:callCopy];
  }

  return v6;
}

- (TUCall)initWithUniqueProxyIdentifier:(id)identifier endpointOnCurrentDevice:(BOOL)device notificationCenter:(id)center
{
  identifierCopy = identifier;
  centerCopy = center;
  v36.receiver = self;
  v36.super_class = TUCall;
  v11 = [(TUCall *)&v36 init];
  if (v11)
  {
    [centerCopy addObserver:v11 selector:sel__handleStatusChange name:@"TUCallCenterCallStatusChangedInternalNotification" object:v11];
    v12 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v11->_featureFlags;
    v11->_featureFlags = v12;

    v11->_lockdownModeEnabled = TULockdownModeEnabled();
    v14 = [[TUCallNotificationManager alloc] initWithNotificationCenter:centerCopy];
    callNotificationManager = v11->_callNotificationManager;
    v11->_callNotificationManager = v14;

    v16 = objc_alloc_init(TUCallModel);
    model = v11->_model;
    v11->_model = v16;

    *&v11->_hasEverUnsuppressedRingtone = 256;
    v11->_supportsRecents = 1;
    date = [MEMORY[0x1E695DF00] date];
    dateCreated = v11->_dateCreated;
    v11->_dateCreated = date;

    objc_storeStrong(&v11->_uniqueProxyIdentifier, identifier);
    v11->_endpointOnCurrentDevice = device;
    v20 = objc_alloc_init(TUVideoCallAttributes);
    videoCallAttributes = v11->_videoCallAttributes;
    v11->_videoCallAttributes = v20;

    objc_initWeak(&location, v11);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__TUCall_initWithUniqueProxyIdentifier_endpointOnCurrentDevice_notificationCenter___block_invoke;
    aBlock[3] = &unk_1E74276C8;
    objc_copyWeak(&v34, &location);
    v22 = _Block_copy(aBlock);
    contactsDataSourceCreationBlock = v11->_contactsDataSourceCreationBlock;
    v11->_contactsDataSourceCreationBlock = v22;

    clarityEnabledBlock = v11->_clarityEnabledBlock;
    v11->_clarityEnabledBlock = &__block_literal_global_53;

    if (_TUIsInternalInstall() && ([MEMORY[0x1E695E000] tu_defaults], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "BOOLForKey:", @"isInternalBypassAIForCalls"), v25, v26))
    {
      v27 = TUDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v32[0] = 0;
        _os_log_impl(&dword_1956FD000, v27, OS_LOG_TYPE_DEFAULT, "_isAppleIntelligenceEnabled defaults to YES", v32, 2u);
      }

      v28 = &__block_literal_global_271;
    }

    else
    {
      v28 = &__block_literal_global_274;
    }

    isAppleIntelligenceEnabled = v11->_isAppleIntelligenceEnabled;
    v11->_isAppleIntelligenceEnabled = v28;

    lowPowerModeEnabledBlock = v11->_lowPowerModeEnabledBlock;
    v11->_lowPowerModeEnabledBlock = &__block_literal_global_277;

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v11;
}

id __83__TUCall_initWithUniqueProxyIdentifier_endpointOnCurrentDevice_notificationCenter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x1E695CE28] tu_contactStoreConfigurationForCall:WeakRetained];
    [v2 setIncludeLocalContacts:1];
    v3 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __83__TUCall_initWithUniqueProxyIdentifier_endpointOnCurrentDevice_notificationCenter___block_invoke_3()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 isLowPowerModeEnabled];

  return v1;
}

- (BOOL)isCaptioningAvailable
{
  CUTWeakLinkClass();
  v2 = objc_opt_class();

  return [v2 isCaptioningSupported];
}

+ (id)stringForReceptionistState:(int)state
{
  if (state > 7)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E74276E8 + state);
  }
}

- (void)answerWithRequest:(id)request
{
  requestCopy = request;
  callNotificationManager = [(TUCall *)self callNotificationManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__TUCall_answerWithRequest___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  [callNotificationManager deferNotificationsUntilAfterPerformingBlock:v7];
}

uint64_t __28__TUCall_answerWithRequest___block_invoke(uint64_t a1)
{
  v2 = 1;
  [*(a1 + 32) setTransitionStatus:1];
  v3 = [*(a1 + 40) sourceIdentifier];
  [*(a1 + 32) setSourceIdentifier:v3];

  [*(a1 + 32) setWantsHoldMusic:{objc_msgSend(*(a1 + 40), "wantsHoldMusic")}];
  if (([*(a1 + 40) sendToScreening] & 1) == 0)
  {
    v2 = [*(a1 + 40) screeningType] != 0;
  }

  [*(a1 + 32) setScreening:v2];
  if (![*(a1 + 32) isHostedOnCurrentDevice])
  {
    if ([*(a1 + 40) screeningType] != 2)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = [*(a1 + 32) featureFlags];
  if (!TUReceptionistAvailable(v4) || ([*(a1 + 32) isReceptionistCapable] & 1) == 0)
  {

    goto LABEL_11;
  }

  v5 = [*(a1 + 40) screeningType];

  if (v5 == 2)
  {
LABEL_9:
    [*(a1 + 32) setReceptionistState:1];
  }

LABEL_11:
  [*(a1 + 32) setScreeningDueToUserInteraction:{objc_msgSend(*(a1 + 40), "screeningDueToUserInteraction")}];
  if ([*(a1 + 40) pauseVideoToStart])
  {
    [*(a1 + 32) setIsSendingVideo:0];
  }

  if ([*(a1 + 40) behavior] == 4 || (result = objc_msgSend(*(a1 + 40), "downgradeToAudio"), result))
  {
    [*(a1 + 32) setIsSendingVideo:0];
    result = [*(a1 + 32) isConversation];
    if ((result & 1) == 0)
    {
      v7 = *(a1 + 32);

      return [v7 setVideo:0];
    }
  }

  return result;
}

- (void)setIsOnHold:(BOOL)hold
{
  holdCopy = hold;
  callCenter = [(TUCall *)self callCenter];
  v6 = callCenter;
  if (holdCopy)
  {
    [callCenter holdCall:self];
  }

  else
  {
    [callCenter unholdCall:self];
  }
}

- (void)disconnectWithReason:(int)reason
{
  callNotificationManager = [(TUCall *)self callNotificationManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__TUCall_disconnectWithReason___block_invoke;
  v6[3] = &unk_1E74256D0;
  v6[4] = self;
  reasonCopy = reason;
  [callNotificationManager deferNotificationsUntilAfterPerformingBlock:v6];
}

uint64_t __31__TUCall_disconnectWithReason___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTransitionStatus:5];
  result = [*(a1 + 32) disconnectedReason];
  if (!result)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);

    return [v4 setDisconnectedReason:v3];
  }

  return result;
}

- (double)startTime
{
  dateConnected = [(TUCall *)self dateConnected];
  [dateConnected timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (void)suppressRingtoneDueToRemoteSuppression
{
  [(TUCall *)self setRingtoneSuppressedRemotely:1];

  [(TUCall *)self suppressRingtone];
}

- (BOOL)isWiFiCall
{
  if ([(TUCall *)self service]== 1)
  {
    return ![(TUCall *)self isUsingBaseband];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isRecordingPodcast
{
  podcastRecordingSession = [(TUCall *)self podcastRecordingSession];

  if (!podcastRecordingSession)
  {
    return 0;
  }

  podcastRecordingSession2 = [(TUCall *)self podcastRecordingSession];
  v5 = [podcastRecordingSession2 recordingState] == 3;

  return v5;
}

- (int64_t)faceTimeTransportType
{
  providerContext = [(TUCall *)self providerContext];
  v4 = [providerContext objectForKeyedSubscript:@"TUCallFaceTimeTransportTypeKey"];

  if (!v4)
  {
    return 0;
  }

  providerContext2 = [(TUCall *)self providerContext];
  v6 = [providerContext2 objectForKeyedSubscript:@"TUCallFaceTimeTransportTypeKey"];
  integerValue = [v6 integerValue];

  return integerValue;
}

- (NSString)localizedHandoffRecipientDeviceCategory
{
  providerContext = [(TUCall *)self providerContext];
  v4 = [providerContext objectForKeyedSubscript:@"TUCallFaceTimeLocalizedHandoffRecipientDeviceCategoryKey"];

  if (v4)
  {
    providerContext2 = [(TUCall *)self providerContext];
    v6 = [providerContext2 objectForKeyedSubscript:@"TUCallFaceTimeLocalizedHandoffRecipientDeviceCategoryKey"];
    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSNumber)handoffRecipientParticipant
{
  providerContext = [(TUCall *)self providerContext];
  v4 = [providerContext objectForKeyedSubscript:@"TUCallFaceTimeHandoffRecipientParticipantKey"];

  if (v4)
  {
    providerContext2 = [(TUCall *)self providerContext];
    v6 = [providerContext2 objectForKeyedSubscript:@"TUCallFaceTimeHandoffRecipientParticipantKey"];
    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (TUDialRequest)dialRequestForRedial
{
  v3 = [TUDialRequest alloc];
  provider = [(TUCall *)self provider];
  v5 = [(TUDialRequest *)v3 initWithProvider:provider];

  if ([(TUDialRequest *)v5 service]!= 1)
  {
    goto LABEL_7;
  }

  if ([(TUCall *)self isVoicemail])
  {
    v6 = 2;
  }

  else
  {
    if (![(TUCall *)self isEmergency])
    {
      goto LABEL_7;
    }

    v6 = 1;
  }

  [(TUDialRequest *)v5 setDialType:v6];
LABEL_7:
  handle = [(TUCall *)self handle];
  [(TUDialRequest *)v5 setHandle:handle];

  contactIdentifiers = [(TUCall *)self contactIdentifiers];
  firstObject = [contactIdentifiers firstObject];
  [(TUDialRequest *)v5 setContactIdentifier:firstObject];

  isThirdPartyVideo = [(TUCall *)self isVideo]|| [(TUCall *)self isThirdPartyVideo];
  [(TUDialRequest *)v5 setVideo:isThirdPartyVideo];
  [(TUDialRequest *)v5 setSOS:[(TUCall *)self isSOS]];
  [(TUDialRequest *)v5 setRedial:1];
  sourceIdentifier = [(TUCall *)self sourceIdentifier];
  [(TUDialRequest *)v5 setAudioSourceIdentifier:sourceIdentifier];

  [(TUDialRequest *)v5 setOriginatingUIType:25];
  [(TUDialRequest *)v5 setPerformDialAssist:0];
  [(TUDialRequest *)v5 setPerformLocalDialAssist:0];
  [(TUDialRequest *)v5 setDialAssisted:[(TUCall *)self wasDialAssisted]];
  [(TUDialRequest *)v5 setTtyType:TUDialRequestTTYTypeForTUCallTTYType([(TUCall *)self ttyType])];
  localSenderIdentityUUID = [(TUCall *)self localSenderIdentityUUID];
  [(TUDialRequest *)v5 setLocalSenderIdentityUUID:localSenderIdentityUUID];

  localSenderIdentityAccountUUID = [(TUCall *)self localSenderIdentityAccountUUID];
  [(TUDialRequest *)v5 setLocalSenderIdentityAccountUUID:localSenderIdentityAccountUUID];

  if ([(TUDialRequest *)v5 dialType]== 1)
  {
    validityErrorForEmergencyCall = [(TUDialRequest *)v5 validityErrorForEmergencyCall];

    if (validityErrorForEmergencyCall)
    {
      v15 = TUDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(TUCall *)v5 dialRequestForRedial];
      }

      [(TUDialRequest *)v5 setDialType:0];
    }
  }

  return v5;
}

- (NSString)destinationID
{
  handle = [(TUCall *)self handle];
  value = [handle value];

  return value;
}

- (BOOL)isEqualToCall:(id)call
{
  callCopy = call;
  uniqueProxyIdentifier = [(TUCall *)self uniqueProxyIdentifier];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];

  LOBYTE(callCopy) = [uniqueProxyIdentifier isEqualToString:uniqueProxyIdentifier2];
  return callCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCall *)self isEqualToCall:equalCopy];

  return v5;
}

- (NSString)reminderString
{
  if ([(TUCall *)self isVideo])
  {
    v3 = TUBundle();
    v4 = v3;
    v5 = @"FACETIME_REMINDER";
  }

  else
  {
    service = [(TUCall *)self service];
    v3 = TUBundle();
    v4 = v3;
    if (service == 1)
    {
      v5 = @"TELEPHONY_REMINDER";
    }

    else
    {
      v5 = @"FACETIME_AUDIO_REMINDER";
    }
  }

  v7 = [v3 localizedStringForKey:v5 value:&stru_1F098C218 table:@"TelephonyUtilities"];

  return v7;
}

- (int)resolvedStatus
{
  featureFlags = [(TUCall *)self featureFlags];
  receptionistEnabled = [featureFlags receptionistEnabled];

  result = [(TUCall *)self status];
  if (receptionistEnabled)
  {
    if (result == 1 && [(TUCall *)self receptionistState]== 3 && [(TUCall *)self isScreening])
    {
      return 4;
    }

    else
    {

      return [(TUCall *)self status];
    }
  }

  return result;
}

- (BOOL)isFromSiri
{
  sourceIdentifier = [(TUCall *)self sourceIdentifier];
  v3 = [sourceIdentifier isEqual:@"TUCallSourceIdentifierHeySiri"];

  return v3;
}

- (BOOL)supportsSimultaneousVoiceAndData
{
  provider = [(TUCall *)self provider];
  if ([provider isTelephonyProvider])
  {
    localSenderIdentityUUID = [(TUCall *)self localSenderIdentityUUID];
    v5 = [TUCallCapabilities isSimultaneousVoiceAndDataSupportedForSIMWithUUID:localSenderIdentityUUID];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)supportsDTMFTones
{
  model = [(TUCall *)self model];
  supportsDTMF = [model supportsDTMF];

  return supportsDTMF;
}

- (NSString)displayFirstName
{
  displayContext = [(TUCall *)self displayContext];
  personNameComponents = [displayContext personNameComponents];
  givenName = [personNameComponents givenName];
  v6 = givenName;
  if (givenName)
  {
    name = givenName;
  }

  else
  {
    displayContext2 = [(TUCall *)self displayContext];
    name = [displayContext2 name];
  }

  return name;
}

- (NSString)suggestedDisplayName
{
  displayContext = [(TUCall *)self displayContext];
  suggestedName = [displayContext suggestedName];

  return suggestedName;
}

- (NSString)callDirectoryName
{
  displayContext = [(TUCall *)self displayContext];
  callDirectoryLocalizedExtensionContainingAppName = [displayContext callDirectoryLocalizedExtensionContainingAppName];
  if (!callDirectoryLocalizedExtensionContainingAppName)
  {
    v12 = 0;
    goto LABEL_5;
  }

  v5 = callDirectoryLocalizedExtensionContainingAppName;
  displayContext2 = [(TUCall *)self displayContext];
  callDirectoryLabel = [displayContext2 callDirectoryLabel];

  if (callDirectoryLabel)
  {
    v8 = MEMORY[0x1E696AEC0];
    displayContext = [(TUCall *)self displayContext];
    callDirectoryLocalizedExtensionContainingAppName2 = [displayContext callDirectoryLocalizedExtensionContainingAppName];
    displayContext3 = [(TUCall *)self displayContext];
    callDirectoryLabel2 = [displayContext3 callDirectoryLabel];
    v12 = [v8 stringWithFormat:@"%@: %@", callDirectoryLocalizedExtensionContainingAppName2, callDirectoryLabel2];

LABEL_5:
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (int64_t)callDirectoryIdentityType
{
  displayContext = [(TUCall *)self displayContext];
  callDirectoryIdentityType = [displayContext callDirectoryIdentityType];

  return callDirectoryIdentityType;
}

- (NSString)companyName
{
  displayContext = [(TUCall *)self displayContext];
  companyName = [displayContext companyName];

  return companyName;
}

- (NSString)companyDepartment
{
  displayContext = [(TUCall *)self displayContext];
  companyDepartment = [displayContext companyDepartment];

  return companyDepartment;
}

- (int)abUID
{
  displayContext = [(TUCall *)self displayContext];
  legacyAddressBookIdentifier = [displayContext legacyAddressBookIdentifier];

  return legacyAddressBookIdentifier;
}

+ (id)_supplementalDialTelephonyCallStringForLocString:(id)string destination:(id)destination isPhoneNumber:(BOOL)number includeFaceTimeAudio:(BOOL)audio
{
  audioCopy = audio;
  numberCopy = number;
  stringCopy = string;
  destinationCopy = destination;
  if (!+[TUCallCapabilities supportsTelephonyCalls](TUCallCapabilities, "supportsTelephonyCalls") || +[TUCallCapabilities supportsPrimaryCalling])
  {
    v11 = 0;
    goto LABEL_23;
  }

  v12 = [MEMORY[0x1E696AD60] stringWithString:stringCopy];
  array = [MEMORY[0x1E695DF70] array];
  if (destinationCopy)
  {
    if (numberCopy)
    {
      v14 = @"_TO_NUMBER_%@";
    }

    else
    {
      v14 = @"_TO_CONTACT_%@";
    }

    [v12 appendString:v14];
    [array addObject:destinationCopy];
  }

  if (+[TUCallCapabilities isDirectTelephonyCallingCurrentlyAvailable])
  {
    v15 = @"_CARRIER";
  }

  else
  {
    if (!+[TUCallCapabilities areRelayCallingFeaturesEnabled])
    {
      goto LABEL_14;
    }

    v15 = @"_RELAY";
  }

  [v12 appendString:v15];
LABEL_14:
  if (audioCopy)
  {
    [v12 appendString:@"_FTA"];
  }

  if ([array count] == 1)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = TUBundle();
    v18 = TUStringKeyForPlatform(v12);
    v19 = [v17 localizedStringForKey:v18 value:&stru_1F098C218 table:@"TelephonyUtilities"];
    v20 = [array objectAtIndex:0];
    v11 = [v16 stringWithFormat:v19, v20];

LABEL_21:
    goto LABEL_22;
  }

  if (![array count])
  {
    v17 = TUBundle();
    v18 = TUStringKeyForPlatform(v12);
    v11 = [v17 localizedStringForKey:v18 value:&stru_1F098C218 table:@"TelephonyUtilities"];
    goto LABEL_21;
  }

  v11 = 0;
LABEL_22:

LABEL_23:

  return v11;
}

- (id)serviceDisplayString
{
  provider = [(TUCall *)self provider];
  isFaceTimeProvider = [provider isFaceTimeProvider];

  if (!isFaceTimeProvider)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v5 = objc_alloc_init(MEMORY[0x1E699C018]);
  if ([(TUCall *)self isVideo])
  {
    if ([(TUCall *)self isConversation])
    {
      callCenter = [(TUCall *)self callCenter];
      v7 = [callCenter activeConversationForCall:self];

      if (v7 && [v7 resolvedAudioVideoMode] != 2)
      {
        faceTimeAudioServiceName = [v5 faceTimeAudioServiceName];
      }

      else
      {
        faceTimeAudioServiceName = [v5 faceTimeVideoServiceName];
      }

      v9 = faceTimeAudioServiceName;

      goto LABEL_13;
    }

    faceTimeVideoServiceName = [v5 faceTimeVideoServiceName];
  }

  else
  {
    faceTimeVideoServiceName = [v5 faceTimeAudioServiceName];
  }

  v9 = faceTimeVideoServiceName;
LABEL_13:

LABEL_14:

  return v9;
}

- (id)errorAlertTitle
{
  v3 = 0;
  switch([(TUCall *)self disconnectedReason])
  {
    case 8:
      dateConnected = TUBundle();
      v5 = @"ALERT_RELAY_FAILED_CONFERENCE_FAILED_TITLE";
      goto LABEL_25;
    case 9:
    case 0xC:
      dateConnected = TUBundle();
      v5 = @"ALERT_RELAY_FAILED_RELAY_DEVICE_UNAVAILABLE_TITLE";
      goto LABEL_25;
    case 0xA:
      dateConnected = TUBundle();
      v5 = @"ALERT_HOST_DEVICE_BUSY_TITLE";
      goto LABEL_25;
    case 0xB:
    case 0x2E:
      dateConnected = TUBundle();
      goto LABEL_5;
    case 0xD:
      v15 = +[TUCallCapabilities isThumperCallingEnabled];
      dateConnected = TUBundle();
      if (v15)
      {
LABEL_5:
        v5 = @"ALERT_GENERIC_FAILURE_TITLE";
      }

      else
      {
        v5 = @"ALERT_RELAY_FAILED_NO_REMOTE_NETWORK_TITLE";
      }

      goto LABEL_25;
    case 0xE:
      if ([(TUCall *)self isVideo]&& [(TUCall *)self isIncoming])
      {
        v13 = TUBundle();
        dateConnected = v13;
        v14 = @"ALERT_GENERIC_FAILURE_TITLE_IOS";
LABEL_29:
        v3 = [(__CFString *)v13 localizedStringForKey:v14 value:&stru_1F098C218 table:@"TelephonyUtilities"];
LABEL_30:
      }

      else
      {
        v3 = 0;
      }

LABEL_31:

      return v3;
    case 0x10:
      dateConnected = TUBundle();
      v5 = @"ALERT_CLIENT_DEVICE_BUSY_TITLE";
LABEL_25:
      v11 = TUStringKeyForPlatform(v5);
      v10 = dateConnected;
      v12 = v11;
      goto LABEL_26;
    case 0x1A:
      v13 = TUBundle();
      dateConnected = v13;
      v14 = @"ALERT_KICKED_OUT_TITLE";
      goto LABEL_29;
    case 0x1B:
      v13 = TUBundle();
      dateConnected = v13;
      v14 = @"ALERT_REJECTED_TITLE";
      goto LABEL_29;
    case 0x1D:
      v13 = TUBundle();
      dateConnected = v13;
      v14 = @"ALERT_LINKS_DISABLED_TITLE";
      goto LABEL_29;
    case 0x1E:
    case 0x31:
      v6 = MEMORY[0x1E696AEC0];
      dateConnected = TUBundle();
      v7 = [(__CFString *)dateConnected localizedStringForKey:@"NO_DESTINATIONS_AVAILABLE_TITLE_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
      displayName = [(TUCall *)self displayName];
      v3 = [v6 stringWithFormat:v7, displayName];

      goto LABEL_30;
    case 0x23:
      v13 = TUBundle();
      dateConnected = v13;
      v14 = @"ALERT_OFFRAMPED_TITLE";
      goto LABEL_29;
    case 0x26:
      dateConnected = [(TUCall *)self dateConnected];
      v10 = TUBundle();
      v11 = v10;
      if (dateConnected)
      {
        v12 = @"ALERT_BLOCKED_REMOTE_PARTICIPANT_REMOTE_JOINING_TITLE";
      }

      else
      {
        v12 = @"ALERT_BLOCKED_REMOTE_PARTICIPANT_SELF_JOINING_TITLE";
      }

      goto LABEL_26;
    case 0x2A:
      v13 = TUBundle();
      dateConnected = v13;
      v14 = @"TRAVEL_MODE_TITLE";
      goto LABEL_29;
    case 0x2B:
      v13 = TUBundle();
      dateConnected = v13;
      v14 = @"GUEST_MODE_TITLE";
      goto LABEL_29;
    case 0x2C:
      dateConnected = [(TUCall *)self featureFlags];
      appleAccountRebrandEnabled = [(__CFString *)dateConnected appleAccountRebrandEnabled];
      v10 = TUBundle();
      v11 = v10;
      if (appleAccountRebrandEnabled)
      {
        v12 = @"NOT_SIGNED_IN_TITLE_APPLEACCOUNT";
      }

      else
      {
        v12 = @"NOT_SIGNED_IN_TITLE";
      }

LABEL_26:
      v3 = [(__CFString *)v10 localizedStringForKey:v12 value:&stru_1F098C218 table:@"TelephonyUtilities"];

      goto LABEL_30;
    case 0x2D:
      v13 = TUBundle();
      dateConnected = v13;
      v14 = @"APP_NOT_INSTALLED_TITLE";
      goto LABEL_29;
    default:
      goto LABEL_31;
  }
}

- (id)errorAlertMessage
{
  v3 = 0;
  switch([(TUCall *)self disconnectedReason])
  {
    case 8:
      featureFlags = TUBundle();
      v19 = @"ALERT_RELAY_FAILED_LEARN_MORE_GUIDANCE_MESSAGE";
      goto LABEL_29;
    case 9:
      featureFlags = [(TUCall *)self featureFlags];
      appleAccountRebrandEnabled = [featureFlags appleAccountRebrandEnabled];
      v12 = TUBundle();
      if (appleAccountRebrandEnabled)
      {
        v16 = @"ALERT_RELAY_FAILED_RELAY_DEVICE_UNAVAILABLE_ACCOUNTS_MESSAGE_APPLEACCOUNT";
      }

      else
      {
        v16 = @"ALERT_RELAY_FAILED_RELAY_DEVICE_UNAVAILABLE_ACCOUNTS_MESSAGE";
      }

      v14 = TUStringKeyForProduct(v16);
      goto LABEL_14;
    case 0xA:
      featureFlags = TUBundle();
      v18 = @"ALERT_HOST_DEVICE_BUSY_MESSAGE";
      goto LABEL_19;
    case 0xC:
      featureFlags = TUBundle();
      v18 = @"ALERT_RELAY_FAILED_RELAY_DEVICE_UNAVAILABLE_ENABLE_MESSAGE";
      goto LABEL_19;
    case 0xD:
      if (+[TUCallCapabilities isThumperCallingEnabled])
      {
        featureFlags = [CUTWeakLinkClass() sharedInstance];
        wiFiActiveAndReachable = [featureFlags wiFiActiveAndReachable];
        v12 = TUBundle();
        if (wiFiActiveAndReachable)
        {
          v13 = @"ALERT_THUMPER_FAILED_CALLING_NOT_AVAILABLE_MESSAGE";
        }

        else
        {
          v13 = @"ALERT_THUMPER_FAILED_NO_NETWORK_MESSAGE";
        }

        v14 = TUStringKeyForNetwork(v13);
LABEL_14:
        v17 = v14;
        v3 = [v12 localizedStringForKey:v14 value:&stru_1F098C218 table:@"TelephonyUtilities"];
      }

      else
      {
        featureFlags = TUBundle();
        v19 = @"ALERT_RELAY_FAILED_NO_REMOTE_NETWORK_MESSAGE";
LABEL_29:
        v20 = TUStringKeyForNetworkAndProduct(v19);
LABEL_30:
        v12 = v20;
        v3 = [featureFlags localizedStringForKey:v20 value:&stru_1F098C218 table:@"TelephonyUtilities"];
      }

      goto LABEL_32;
    case 0x10:
      featureFlags = TUBundle();
      v18 = @"ALERT_CLIENT_DEVICE_BUSY_MESSAGE";
LABEL_19:
      v20 = TUStringKeyForProduct(v18);
      goto LABEL_30;
    case 0x1A:
      v9 = TUBundle();
      featureFlags = v9;
      v10 = @"ALERT_KICKED_OUT_MESSAGE";
      goto LABEL_27;
    case 0x1B:
      v9 = TUBundle();
      featureFlags = v9;
      v10 = @"ALERT_REJECTED_MESSAGE";
      goto LABEL_27;
    case 0x1C:
      v9 = TUBundle();
      featureFlags = v9;
      v10 = @"ALERT_INVALID_LINK_MESSAGE";
      goto LABEL_27;
    case 0x1D:
      v9 = TUBundle();
      featureFlags = v9;
      v10 = @"ALERT_LINKS_DISABLED_MESSAGE";
      goto LABEL_27;
    case 0x1E:
    case 0x31:
      v4 = MEMORY[0x1E696AEC0];
      featureFlags = TUBundle();
      v6 = [featureFlags localizedStringForKey:@"NO_DESTINATIONS_AVAILABLE_MESSAGE_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
      handle = [(TUCall *)self handle];
      value = [handle value];
      v3 = [v4 stringWithFormat:v6, value];

      goto LABEL_32;
    case 0x23:
      v9 = TUBundle();
      featureFlags = v9;
      v10 = @"ALERT_OFFRAMPED_MESSAGE";
      goto LABEL_27;
    case 0x2A:
      v9 = TUBundle();
      featureFlags = v9;
      v10 = @"TRAVEL_MODE_MESSAGE";
      goto LABEL_27;
    case 0x2B:
      v9 = TUBundle();
      featureFlags = v9;
      v10 = @"GUEST_MODE_MESSAGE";
      goto LABEL_27;
    case 0x2C:
      v9 = TUBundle();
      featureFlags = v9;
      v10 = @"NOT_SIGNED_IN_MESSAGE";
      goto LABEL_27;
    case 0x2D:
      v9 = TUBundle();
      featureFlags = v9;
      v10 = @"APP_NOT_INSTALLED_MESSAGE";
LABEL_27:
      v3 = [v9 localizedStringForKey:v10 value:&stru_1F098C218 table:@"TelephonyUtilities"];
LABEL_32:

      break;
    default:
      break;
  }

  return v3;
}

- (void)updateWithCall:(id)call
{
  callCopy = call;
  [(TUCall *)self resetProvisionalState];
  self->_disconnectedReason = [callCopy disconnectedReason];
  self->_filteredOutReason = [callCopy filteredOutReason];
  self->_supportsRecents = [callCopy supportsRecents];
  dateAnsweredOrDialed = [callCopy dateAnsweredOrDialed];
  dateAnsweredOrDialed = self->_dateAnsweredOrDialed;
  self->_dateAnsweredOrDialed = dateAnsweredOrDialed;

  dateCreated = [callCopy dateCreated];
  dateCreated = self->_dateCreated;
  self->_dateCreated = dateCreated;

  dateSentInvitation = [callCopy dateSentInvitation];
  dateSentInvitation = self->_dateSentInvitation;
  self->_dateSentInvitation = dateSentInvitation;

  dateStartedConnecting = [callCopy dateStartedConnecting];
  dateStartedConnecting = self->_dateStartedConnecting;
  self->_dateStartedConnecting = dateStartedConnecting;

  dateConnected = [callCopy dateConnected];
  dateConnected = self->_dateConnected;
  self->_dateConnected = dateConnected;

  dateScreeningEnded = [callCopy dateScreeningEnded];
  dateScreeningEnded = self->_dateScreeningEnded;
  self->_dateScreeningEnded = dateScreeningEnded;

  dateEnded = [callCopy dateEnded];
  dateEnded = self->_dateEnded;
  self->_dateEnded = dateEnded;

  self->_wantsHoldMusic = [callCopy wantsHoldMusic];
  self->_endpointOnCurrentDevice = [callCopy isEndpointOnCurrentDevice];
  self->_localUserInHomeCountry = [callCopy isLocalUserInHomeCountry];
  self->_answeringMachineAvailable = [callCopy isAnsweringMachineAvailable];
  self->_nondisclosedGreeting = [callCopy hasNondisclosedGreeting];
  self->_identifiedSpamInCallerName = [callCopy hasIdentifiedSpamInCallerName];
  self->_screening = [callCopy isScreening];
  self->_screeningDueToUserInteraction = [callCopy isScreeningDueToUserInteraction];
  self->_wasScreened = [callCopy wasScreened];
  self->_receptionistState = [callCopy receptionistState];
  lastReceptionistMessage = [callCopy lastReceptionistMessage];
  v20 = [lastReceptionistMessage copy];
  lastReceptionistMessage = self->_lastReceptionistMessage;
  self->_lastReceptionistMessage = v20;

  receptionistSession = [callCopy receptionistSession];
  v23 = [receptionistSession copy];
  receptionistSession = self->_receptionistSession;
  self->_receptionistSession = v23;

  self->_screeningAnnouncementHasFinished = [callCopy screeningAnnouncementHasFinished];
  self->_shouldSuppressRingtone = [callCopy shouldSuppressRingtone];
  self->_hasEverUnsuppressedRingtone = [callCopy hasEverUnsuppressedRingtone];
  sourceIdentifier = [callCopy sourceIdentifier];
  v26 = [sourceIdentifier copy];
  sourceIdentifier = self->_sourceIdentifier;
  self->_sourceIdentifier = v26;

  self->_wasDialAssisted = [callCopy wasDialAssisted];
  self->_faceTimeIDStatus = [callCopy faceTimeIDStatus];
  self->_hardPauseDigitsState = [callCopy hardPauseDigitsState];
  hardPauseDigits = [callCopy hardPauseDigits];
  v29 = [hardPauseDigits copy];
  hardPauseDigits = self->_hardPauseDigits;
  self->_hardPauseDigits = v29;

  self->_wasPulledToCurrentDevice = [callCopy wasPulledToCurrentDevice];
  self->_soundRegion = [callCopy soundRegion];
  model = [callCopy model];
  v32 = [model copy];
  model = self->_model;
  self->_model = v32;

  self->_supportsDTMFUpdates = [callCopy supportsDTMFUpdates];
  self->_video = [callCopy isVideo];
  self->_launchInBackground = [callCopy launchInBackground];
  self->_verificationStatus = [callCopy verificationStatus];
  self->_priority = [callCopy priority];
  self->_originatingUIType = [callCopy originatingUIType];
  self->_liveVoicemailUnavailableReason = [callCopy liveVoicemailUnavailableReason];
  self->_junkConfidence = [callCopy junkConfidence];
  self->_identificationCategory = [callCopy identificationCategory];
  self->_isKnownCaller = [callCopy isKnownCaller];
  self->_joinedFromLink = [callCopy joinedFromLink];
  self->_callSubType = [callCopy callSubType];
  self->_hasEmergencyVideoStream = [callCopy hasEmergencyVideoStream];
  emergencyMediaItems = [callCopy emergencyMediaItems];
  v35 = [emergencyMediaItems copy];
  emergencyMediaItems = self->_emergencyMediaItems;
  self->_emergencyMediaItems = v35;

  recordingSession = [callCopy recordingSession];
  v38 = [recordingSession copy];
  recordingSession = self->_recordingSession;
  self->_recordingSession = v38;

  currentRecordingSession = [callCopy currentRecordingSession];
  v41 = [currentRecordingSession copy];
  currentRecordingSession = self->_currentRecordingSession;
  self->_currentRecordingSession = v41;

  podcastRecordingSession = [callCopy podcastRecordingSession];
  v44 = [podcastRecordingSession copy];
  podcastRecordingSession = self->_podcastRecordingSession;
  self->_podcastRecordingSession = v44;

  translationSession = [callCopy translationSession];
  v47 = [translationSession copy];
  translationSession = self->_translationSession;
  self->_translationSession = v47;

  smartHoldingSession = [callCopy smartHoldingSession];
  v50 = [smartHoldingSession copy];
  smartHoldingSession = self->_smartHoldingSession;
  self->_smartHoldingSession = v50;

  blockedByExtension = [callCopy blockedByExtension];
  v53 = [blockedByExtension copy];
  blockedByExtension = self->_blockedByExtension;
  self->_blockedByExtension = v53;

  callDirectoryIdentityExtension = [callCopy callDirectoryIdentityExtension];
  v56 = [callDirectoryIdentityExtension copy];
  callDirectoryIdentityExtension = self->_callDirectoryIdentityExtension;
  self->_callDirectoryIdentityExtension = v56;

  self->_screenSharingIntention = [callCopy screenSharingIntention];
  self->_commTrustScore = [callCopy commTrustScore];
  self->_specialUnknown = [callCopy specialUnknown];
  upgradedFromCallUUID = [callCopy upgradedFromCallUUID];
  v59 = [upgradedFromCallUUID copy];
  upgradedFromCallUUID = self->_upgradedFromCallUUID;
  self->_upgradedFromCallUUID = v59;

  self->_isReceptionistCapable = [callCopy isReceptionistCapable];
  [callCopy hostCreationTime];
  self->_hostCreationTime = v61;
  [callCopy hostMessageSendTime];
  self->_hostMessageSendTime = v62;
  [callCopy clientMessageReceiveTime];
  self->_clientMessageReceiveTime = v63;
  self->_answeringMachineStreamToken = [callCopy answeringMachineStreamToken];
  self->_providerErrorCode = [callCopy providerErrorCode];
  self->_providerEndedReason = [callCopy providerEndedReason];
  self->_screenSharingType = [callCopy screenSharingType];
  self->_isSharePlayCapable = [callCopy isSharePlayCapable];
  self->_anyRemoteSupportsRequestToScreenShare = [callCopy anyRemoteSupportsRequestToScreenShare];
  reminderUUID = [callCopy reminderUUID];
  reminderUUID = self->_reminderUUID;
  self->_reminderUUID = reminderUUID;

  conversationGroupUUID = [callCopy conversationGroupUUID];

  conversationGroupUUID = self->_conversationGroupUUID;
  self->_conversationGroupUUID = conversationGroupUUID;
}

- (TUCall)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueProxyIdentifier"];
  v6 = [(TUCall *)self initWithUniqueProxyIdentifier:v5];

  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];
    v8 = [v7 copy];
    sourceIdentifier = v6->_sourceIdentifier;
    v6->_sourceIdentifier = v8;

    v6->_disconnectedReason = [coderCopy decodeInt32ForKey:@"disconnectedReason"];
    v6->_filteredOutReason = [coderCopy decodeInt32ForKey:@"filteredOutReason"];
    v6->_supportsRecents = [coderCopy decodeBoolForKey:@"supportsRecents"];
    v6->_faceTimeIDStatus = [coderCopy decodeInt32ForKey:@"faceTimeIDStatus"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateCreated"];
    dateCreated = v6->_dateCreated;
    v6->_dateCreated = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateAnsweredOrDialed"];
    dateAnsweredOrDialed = v6->_dateAnsweredOrDialed;
    v6->_dateAnsweredOrDialed = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateSentInvitation"];
    dateSentInvitation = v6->_dateSentInvitation;
    v6->_dateSentInvitation = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateStartedConnecting"];
    dateStartedConnecting = v6->_dateStartedConnecting;
    v6->_dateStartedConnecting = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateConnected"];
    dateConnected = v6->_dateConnected;
    v6->_dateConnected = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateScreeningEnded"];
    dateScreeningEnded = v6->_dateScreeningEnded;
    v6->_dateScreeningEnded = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateEnded"];
    dateEnded = v6->_dateEnded;
    v6->_dateEnded = v22;

    v6->_wasDialAssisted = [coderCopy decodeBoolForKey:@"wasDialAssisted"];
    v6->_wantsHoldMusic = [coderCopy decodeBoolForKey:@"wantsHoldMusic"];
    v6->_endpointOnCurrentDevice = [coderCopy decodeBoolForKey:@"endpointOnCurrentDevice"];
    v6->_localUserInHomeCountry = [coderCopy decodeBoolForKey:@"localUserInHomeCountry"];
    v6->_answeringMachineAvailable = [coderCopy decodeBoolForKey:@"answeringMachineAvailable"];
    v6->_nondisclosedGreeting = [coderCopy decodeBoolForKey:@"nondisclosedGreeting"];
    v6->_identifiedSpamInCallerName = [coderCopy decodeBoolForKey:@"identifiedSpamInCallerName"];
    v6->_screening = [coderCopy decodeBoolForKey:@"screening"];
    v6->_screeningDueToUserInteraction = [coderCopy decodeBoolForKey:@"screeningDueToUserInteraction"];
    v6->_wasScreened = [coderCopy decodeBoolForKey:@"wasScreened"];
    v6->_receptionistState = [coderCopy decodeInt32ForKey:@"receptionistState"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastReceptionistMessage"];
    lastReceptionistMessage = v6->_lastReceptionistMessage;
    v6->_lastReceptionistMessage = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"receptionistSession"];
    receptionistSession = v6->_receptionistSession;
    v6->_receptionistSession = v26;

    v6->_screeningAnnouncementHasFinished = [coderCopy decodeBoolForKey:@"screeningAnnouncementHasFinished"];
    v6->_shouldSuppressRingtone = [coderCopy decodeBoolForKey:@"shouldSuppressRingtone"];
    v6->_hasEverUnsuppressedRingtone = [coderCopy decodeBoolForKey:@"hasEverUnsuppressedRingtone"];
    v6->_hardPauseDigitsState = [coderCopy decodeInt32ForKey:@"hardPauseDigitsState"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hardPauseDigits"];
    hardPauseDigits = v6->_hardPauseDigits;
    v6->_hardPauseDigits = v28;

    v6->_wasPulledToCurrentDevice = [coderCopy decodeBoolForKey:@"wasPulledToCurrentDevice"];
    v6->_soundRegion = [coderCopy decodeIntegerForKey:@"soundRegion"];
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"model"];
    model = v6->_model;
    v6->_model = v30;

    v6->_supportsDTMFUpdates = [coderCopy decodeBoolForKey:@"supportsDTMFUpdates"];
    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"videoCallAttributes"];
    videoCallAttributes = v6->_videoCallAttributes;
    v6->_videoCallAttributes = v32;

    v6->_launchInBackground = [coderCopy decodeBoolForKey:@"launchInBackground"];
    v6->_verificationStatus = [coderCopy decodeInt32ForKey:@"verificationStatus"];
    v6->_priority = [coderCopy decodeInt32ForKey:@"priority"];
    v6->_originatingUIType = [coderCopy decodeInt32ForKey:@"originatingUIType"];
    v6->_liveVoicemailUnavailableReason = [coderCopy decodeInt32ForKey:@"liveVoicemailUnavailableReason"];
    v6->_junkConfidence = [coderCopy decodeInt32ForKey:@"junkConfidence"];
    v6->_identificationCategory = [coderCopy decodeInt32ForKey:@"identificationCategory"];
    v6->_isKnownCaller = [coderCopy decodeBoolForKey:@"isKnownCaller"];
    v6->_joinedFromLink = [coderCopy decodeBoolForKey:@"joinedFromLink"];
    v6->_answeringMachineStreamToken = [coderCopy decodeIntForKey:@"answeringMachineStreamToken"];
    v6->_callSubType = [coderCopy decodeIntForKey:@"callSubType"];
    v6->_screenSharingIntention = [coderCopy decodeIntForKey:@"screenSharingIntention"];
    v6->_hasEmergencyVideoStream = [coderCopy decodeBoolForKey:@"hasEmergencyVideoStream"];
    v34 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
    v37 = [coderCopy decodeObjectOfClasses:v36 forKey:@"emergencyMediaItems"];
    emergencyMediaItems = v6->_emergencyMediaItems;
    v6->_emergencyMediaItems = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"blockedByExtension"];
    v40 = [v39 copy];
    blockedByExtension = v6->_blockedByExtension;
    v6->_blockedByExtension = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callDirectoryIdentityExtension"];
    v43 = [v42 copy];
    callDirectoryIdentityExtension = v6->_callDirectoryIdentityExtension;
    v6->_callDirectoryIdentityExtension = v43;

    v6->_commTrustScore = [coderCopy decodeInt32ForKey:@"commTrustScore"];
    v6->_specialUnknown = [coderCopy decodeBoolForKey:@"specialUnknown"];
    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"upgradedFromCallUUID"];
    upgradedFromCallUUID = v6->_upgradedFromCallUUID;
    v6->_upgradedFromCallUUID = v45;

    v6->_isReceptionistCapable = [coderCopy decodeBoolForKey:@"receptionistCapable"];
    [coderCopy decodeDoubleForKey:@"hostCreationTime"];
    v6->_hostCreationTime = v47;
    [coderCopy decodeDoubleForKey:@"hostMessageSendTime"];
    v6->_hostMessageSendTime = v48;
    [coderCopy decodeDoubleForKey:@"clientMessageReceiveTime"];
    v6->_clientMessageReceiveTime = v49;
    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordingSession"];
    recordingSession = v6->_recordingSession;
    v6->_recordingSession = v50;

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentRecordingSession"];
    currentRecordingSession = v6->_currentRecordingSession;
    v6->_currentRecordingSession = v52;

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"podcastRecordingSession"];
    podcastRecordingSession = v6->_podcastRecordingSession;
    v6->_podcastRecordingSession = v54;

    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"translationSession"];
    translationSession = v6->_translationSession;
    v6->_translationSession = v56;

    v6->_providerErrorCode = [coderCopy decodeIntForKey:@"providerErrorCode"];
    v6->_providerEndedReason = [coderCopy decodeIntForKey:@"providerEndedReason"];
    v6->_screenSharingType = [coderCopy decodeIntegerForKey:@"screenSharingType"];
    v6->_isSharePlayCapable = [coderCopy decodeBoolForKey:@"isSharePlayCapable"];
    v6->_anyRemoteSupportsRequestToScreenShare = [coderCopy decodeBoolForKey:@"anyRemoteSupportsRequestToScreenShare"];
    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"smartHoldingSession"];
    smartHoldingSession = v6->_smartHoldingSession;
    v6->_smartHoldingSession = v58;

    v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reminderUUID"];
    reminderUUID = v6->_reminderUUID;
    v6->_reminderUUID = v60;

    v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"conversationGroupUUID"];
    conversationGroupUUID = v6->_conversationGroupUUID;
    v6->_conversationGroupUUID = v62;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  uniqueProxyIdentifier = self->_uniqueProxyIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:uniqueProxyIdentifier forKey:@"uniqueProxyIdentifier"];
  [coderCopy encodeObject:self->_sourceIdentifier forKey:@"sourceIdentifier"];
  [coderCopy encodeInt32:self->_disconnectedReason forKey:@"disconnectedReason"];
  [coderCopy encodeInt32:self->_filteredOutReason forKey:@"filteredOutReason"];
  [coderCopy encodeBool:self->_supportsRecents forKey:@"supportsRecents"];
  [coderCopy encodeInt32:self->_faceTimeIDStatus forKey:@"faceTimeIDStatus"];
  [coderCopy encodeObject:self->_dateCreated forKey:@"dateCreated"];
  [coderCopy encodeObject:self->_dateAnsweredOrDialed forKey:@"dateAnsweredOrDialed"];
  [coderCopy encodeObject:self->_dateSentInvitation forKey:@"dateSentInvitation"];
  [coderCopy encodeObject:self->_dateStartedConnecting forKey:@"dateStartedConnecting"];
  [coderCopy encodeObject:self->_dateConnected forKey:@"dateConnected"];
  [coderCopy encodeObject:self->_dateScreeningEnded forKey:@"dateScreeningEnded"];
  [coderCopy encodeObject:self->_dateEnded forKey:@"dateEnded"];
  [coderCopy encodeBool:self->_wasDialAssisted forKey:@"wasDialAssisted"];
  [coderCopy encodeInt32:self->_transitionStatus forKey:@"transitionStatus"];
  [coderCopy encodeBool:self->_wantsHoldMusic forKey:@"wantsHoldMusic"];
  [coderCopy encodeBool:self->_endpointOnCurrentDevice forKey:@"endpointOnCurrentDevice"];
  [coderCopy encodeBool:self->_localUserInHomeCountry forKey:@"localUserInHomeCountry"];
  [coderCopy encodeBool:self->_answeringMachineAvailable forKey:@"answeringMachineAvailable"];
  [coderCopy encodeBool:self->_nondisclosedGreeting forKey:@"nondisclosedGreeting"];
  [coderCopy encodeBool:self->_identifiedSpamInCallerName forKey:@"identifiedSpamInCallerName"];
  [coderCopy encodeBool:self->_screening forKey:@"screening"];
  [coderCopy encodeBool:self->_screeningDueToUserInteraction forKey:@"screeningDueToUserInteraction"];
  [coderCopy encodeBool:self->_wasScreened forKey:@"wasScreened"];
  [coderCopy encodeInt32:self->_receptionistState forKey:@"receptionistState"];
  [coderCopy encodeObject:self->_lastReceptionistMessage forKey:@"lastReceptionistMessage"];
  [coderCopy encodeObject:self->_receptionistSession forKey:@"receptionistSession"];
  [coderCopy encodeBool:self->_screeningAnnouncementHasFinished forKey:@"screeningAnnouncementHasFinished"];
  [coderCopy encodeBool:self->_shouldSuppressRingtone forKey:@"shouldSuppressRingtone"];
  [coderCopy encodeBool:self->_hasEverUnsuppressedRingtone forKey:@"hasEverUnsuppressedRingtone"];
  [coderCopy encodeInt32:self->_hardPauseDigitsState forKey:@"hardPauseDigitsState"];
  [coderCopy encodeObject:self->_hardPauseDigits forKey:@"hardPauseDigits"];
  [coderCopy encodeBool:self->_wasPulledToCurrentDevice forKey:@"wasPulledToCurrentDevice"];
  [coderCopy encodeInteger:self->_soundRegion forKey:@"soundRegion"];
  [coderCopy encodeInteger:self->_screenSharingIntention forKey:@"screenSharingIntention"];
  [coderCopy encodeObject:self->_model forKey:@"model"];
  [coderCopy encodeBool:self->_supportsDTMFUpdates forKey:@"supportsDTMFUpdates"];
  [coderCopy encodeObject:self->_videoCallAttributes forKey:@"videoCallAttributes"];
  [coderCopy encodeBool:self->_launchInBackground forKey:@"launchInBackground"];
  [coderCopy encodeInteger:self->_verificationStatus forKey:@"verificationStatus"];
  [coderCopy encodeInteger:self->_priority forKey:@"priority"];
  [coderCopy encodeInt32:self->_originatingUIType forKey:@"originatingUIType"];
  [coderCopy encodeInteger:self->_liveVoicemailUnavailableReason forKey:@"liveVoicemailUnavailableReason"];
  [coderCopy encodeInteger:self->_junkConfidence forKey:@"junkConfidence"];
  [coderCopy encodeInteger:self->_identificationCategory forKey:@"identificationCategory"];
  [coderCopy encodeBool:self->_isKnownCaller forKey:@"isKnownCaller"];
  [coderCopy encodeBool:self->_joinedFromLink forKey:@"joinedFromLink"];
  [coderCopy encodeInt:self->_callSubType forKey:@"callSubType"];
  [coderCopy encodeBool:self->_hasEmergencyVideoStream forKey:@"hasEmergencyVideoStream"];
  [coderCopy encodeObject:self->_emergencyMediaItems forKey:@"emergencyMediaItems"];
  [coderCopy encodeObject:self->_upgradedFromCallUUID forKey:@"upgradedFromCallUUID"];
  [coderCopy encodeObject:self->_recordingSession forKey:@"recordingSession"];
  [coderCopy encodeObject:self->_currentRecordingSession forKey:@"currentRecordingSession"];
  [coderCopy encodeObject:self->_podcastRecordingSession forKey:@"podcastRecordingSession"];
  [coderCopy encodeObject:self->_translationSession forKey:@"translationSession"];
  [coderCopy encodeObject:self->_blockedByExtension forKey:@"blockedByExtension"];
  [coderCopy encodeObject:self->_callDirectoryIdentityExtension forKey:@"callDirectoryIdentityExtension"];
  [coderCopy encodeBool:self->_isSharePlayCapable forKey:@"isSharePlayCapable"];
  [coderCopy encodeBool:self->_anyRemoteSupportsRequestToScreenShare forKey:@"anyRemoteSupportsRequestToScreenShare"];
  [coderCopy encodeDouble:@"hostCreationTime" forKey:self->_hostCreationTime];
  [coderCopy encodeDouble:@"hostMessageSendTime" forKey:self->_hostMessageSendTime];
  [coderCopy encodeDouble:@"clientMessageReceiveTime" forKey:self->_clientMessageReceiveTime];
  [coderCopy encodeInteger:self->_answeringMachineStreamToken forKey:@"answeringMachineStreamToken"];
  [coderCopy encodeInteger:self->_providerErrorCode forKey:@"providerErrorCode"];
  [coderCopy encodeInteger:self->_providerEndedReason forKey:@"providerEndedReason"];
  [coderCopy encodeInteger:self->_screenSharingType forKey:@"screenSharingType"];
  [coderCopy encodeInt32:self->_commTrustScore forKey:@"commTrustScore"];
  [coderCopy encodeBool:self->_specialUnknown forKey:@"specialUnknown"];
  [coderCopy encodeBool:self->_isReceptionistCapable forKey:@"receptionistCapable"];
  [coderCopy encodeObject:self->_smartHoldingSession forKey:@"smartHoldingSession"];
  [coderCopy encodeObject:self->_reminderUUID forKey:@"reminderUUID"];
  [coderCopy encodeObject:self->_conversationGroupUUID forKey:@"conversationGroupUUID"];
}

- (CGRect)remoteVideoContentRect
{
  if (__CUTWeakCGRectZero__pred_CGRectZeroCoreGraphics != -1)
  {
    [TUCall remoteVideoContentRect];
  }

  v3 = *(&__CUTStaticWeak_CGRectZero + 1);
  v2 = *&__CUTStaticWeak_CGRectZero;
  v4 = *&qword_1EAED6270;
  v5 = unk_1EAED6278;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)isVideoUpgradeFromCall:(id)call
{
  callCopy = call;
  if (-[TUCall isVideo](self, "isVideo") && ([callCopy isVideo] & 1) == 0 && (-[TUCall handle](self, "handle"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(callCopy, "handle"), v6 = objc_claimAutoreleasedReturnValue(), v7 = TUHandlesAreCanonicallyEqual(v5, v6), v6, v5, v7))
  {
    provider = [callCopy provider];
    v9 = [provider isTinCanProvider] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)isDialRequestVideoUpgrade:(id)upgrade
{
  upgradeCopy = upgrade;
  featureFlags = [(TUCall *)self featureFlags];
  uplevelFTAEnabled = [featureFlags uplevelFTAEnabled];

  if (uplevelFTAEnabled)
  {
    upgradedFromCallUUID = [(TUCall *)self upgradedFromCallUUID];
    v8 = upgradedFromCallUUID != 0;
  }

  else
  {
    if (![upgradeCopy isVideo] || -[TUCall isVideo](self, "isVideo"))
    {
      v8 = 0;
      goto LABEL_7;
    }

    upgradedFromCallUUID = [(TUCall *)self handle];
    handle = [upgradeCopy handle];
    v8 = TUHandlesAreCanonicallyEqual(upgradedFromCallUUID, handle);
  }

LABEL_7:
  return v8;
}

- (BOOL)_isEligibleForManualScreening:(BOOL)screening languageIdentifier:(id)identifier
{
  screeningCopy = screening;
  v38 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (screeningCopy)
  {
    featureFlags = [(TUCall *)self featureFlags];
    if ([featureFlags LVMEverywhere] && -[TUCall supportsScreening](self, "supportsScreening"))
    {
      isHostedOnCurrentDevice = [(TUCall *)self isHostedOnCurrentDevice];

      if (!isHostedOnCurrentDevice)
      {
        v9 = TUDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v32) = 0;
          _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "isEligibleForScreening: YES because it is a relay call that can screen", &v32, 2u);
        }

        LOBYTE(v10) = 1;
        goto LABEL_49;
      }
    }

    else
    {
    }
  }

  featureFlags2 = [(TUCall *)self featureFlags];
  v10 = TUCallScreeningEnabled(featureFlags2, 0, identifierCopy);

  if (v10)
  {
    clarityEnabledBlock = [(TUCall *)self clarityEnabledBlock];
    v13 = clarityEnabledBlock[2]();

    if (v13)
    {
      v9 = TUDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32) = 0;
        v14 = "isEligibleForScreening: NO because ClarityUI is enabled";
LABEL_23:
        _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, v14, &v32, 2u);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    if (!screeningCopy)
    {
      lowPowerModeEnabledBlock = [(TUCall *)self lowPowerModeEnabledBlock];
      v16 = lowPowerModeEnabledBlock[2]();

      if (v16)
      {
        v9 = TUDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v32) = 0;
          v14 = "isEligibleForScreening: NO because the device is in low power mode";
          goto LABEL_23;
        }

LABEL_24:
        LOBYTE(v10) = 0;
        goto LABEL_49;
      }
    }

    if (![(TUCall *)self supportsScreening])
    {
      v9 = TUDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32) = 0;
        v14 = "isEligibleForScreening: NO because the call provider reports this call does not support screening";
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    if ([(TUCall *)self priority]== 2)
    {
      [(TUCall *)self setLiveVoicemailUnavailableReason:7];
      remoteParticipantHandles = TUDefaultLog();
      if (os_log_type_enabled(remoteParticipantHandles, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_1956FD000, remoteParticipantHandles, OS_LOG_TYPE_DEFAULT, "isEligibleForScreening: High Priority call, not screenable", &v32, 2u);
      }

      goto LABEL_37;
    }

    provider = [(TUCall *)self provider];
    isTelephonyProvider = [provider isTelephonyProvider];

    if (!isTelephonyProvider || screeningCopy)
    {
      if (isTelephonyProvider)
      {
        goto LABEL_32;
      }
    }

    else if ([(TUCall *)self isLocalUserInHomeCountry]&& ![(TUCall *)self hasIdentifiedSpamInCallerName]&& [(TUCall *)self junkConfidence]< 2)
    {
      goto LABEL_32;
    }

    provider2 = [(TUCall *)self provider];
    isFaceTimeProvider = [provider2 isFaceTimeProvider];

    if (!isFaceTimeProvider)
    {
LABEL_38:
      v22 = TUDefaultLog();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
LABEL_41:

        v10 = 0;
        goto LABEL_42;
      }

      LOWORD(v32) = 0;
      v23 = "isEligibleForScreening: NO, either telephony roaming, Junk Call, or Emergency or not a U+1 audio call from a contact";
LABEL_40:
      _os_log_impl(&dword_1956FD000, v22, OS_LOG_TYPE_DEFAULT, v23, &v32, 2u);
      goto LABEL_41;
    }

    remoteParticipantHandles = [(TUCall *)self remoteParticipantHandles];
    if ([remoteParticipantHandles count]> 1 || [(TUCall *)self isVideo])
    {
LABEL_37:

      goto LABEL_38;
    }

    isConversation = [(TUCall *)self isConversation];
    v29 = isConversation;
    if (!isConversation || screeningCopy)
    {

      if (!v29)
      {
        goto LABEL_38;
      }
    }

    else
    {
      contactIdentifiers = [(TUCall *)self contactIdentifiers];
      v31 = [contactIdentifiers count];

      if (!v31)
      {
        goto LABEL_38;
      }
    }

LABEL_32:
    if ([(TUCall *)self isAnsweringMachineAvailable]|| [(TUCall *)self supportsScreening]&& ![(TUCall *)self isHostedOnCurrentDevice])
    {
      v10 = 1;
      goto LABEL_42;
    }

    v22 = TUDefaultLog();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    LOWORD(v32) = 0;
    v23 = "isEligibleForScreening: NO, Answering Machine is not currently available for host";
    goto LABEL_40;
  }

LABEL_42:
  v9 = TUDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v24 = @"NO";
    if (v10)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v32 = 138412802;
    v33 = v25;
    v34 = 2112;
    if (screeningCopy)
    {
      v24 = @"YES";
    }

    v35 = v24;
    v36 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "isEligibleForScreening: %@ manualScreening: %@ for call: %@", &v32, 0x20u);
  }

LABEL_49:

  v26 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isPodcastRecordingAllowed
{
  featureFlags = [(TUCall *)self featureFlags];
  enhancedCallRecordingEnabled = [featureFlags enhancedCallRecordingEnabled];

  return enhancedCallRecordingEnabled;
}

- (int)smartHoldingHoldDetectionAvailability
{
  v37 = *MEMORY[0x1E69E9840];
  displayContext = [(TUCall *)self displayContext];
  contactName = [displayContext contactName];

  if ([(TUCall *)self smartHoldingAvailability]!= 1)
  {
    v20 = 2;
    goto LABEL_19;
  }

  configurationProvider = [(TUCall *)self configurationProvider];
  if ([configurationProvider isHoldAssistDetectionEnabled])
  {
    provider = [(TUCall *)self provider];
    if (![provider isTelephonyProvider])
    {
      v20 = 2;
LABEL_17:

      goto LABEL_18;
    }

    lowPowerModeEnabledBlock = [(TUCall *)self lowPowerModeEnabledBlock];
    if (lowPowerModeEnabledBlock[2]())
    {
      v8 = 2;
    }

    else
    {
      v20 = 2;
      if (![(TUCall *)self isOutgoing])
      {
LABEL_16:

        goto LABEL_17;
      }

      isEmergency = [(TUCall *)self isEmergency];
      if (contactName)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      if (isEmergency)
      {
        v8 = 2;
      }
    }

    v20 = v8;
    goto LABEL_16;
  }

  v20 = 2;
LABEL_18:

LABEL_19:
  v10 = TUDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19 = contactName == 0;
    configurationProvider2 = [(TUCall *)self configurationProvider];
    isHoldAssistDetectionEnabled = [configurationProvider2 isHoldAssistDetectionEnabled];
    provider2 = [(TUCall *)self provider];
    isTelephonyProvider = [provider2 isTelephonyProvider];
    lowPowerModeEnabledBlock2 = [(TUCall *)self lowPowerModeEnabledBlock];
    v16 = lowPowerModeEnabledBlock2[2]();
    *buf = 67110912;
    v22 = v20;
    v23 = 1024;
    v24 = isHoldAssistDetectionEnabled;
    v25 = 1024;
    v26 = isTelephonyProvider;
    v27 = 1024;
    v28 = v16;
    v29 = 1024;
    smartHoldingAvailability = [(TUCall *)self smartHoldingAvailability];
    v31 = 1024;
    isOutgoing = [(TUCall *)self isOutgoing];
    v33 = 1024;
    isEmergency2 = [(TUCall *)self isEmergency];
    v35 = 1024;
    v36 = v19;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "smartHoldingHoldDetectionAvailability=%i, isHoldAssistDetectionEnabled=%i, isTelephonyProvider=%i, lowPowerModeEnabledBlock=%i, smartHoldingAvailability=%i, isOutgoing=%i, isEmergency=%i, isUnknownContact=%i", buf, 0x32u);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v20;
}

- (TUConfigurationProvider)configurationProvider
{
  v2 = objc_alloc_init(TUConfigurationProvider);

  return v2;
}

- (CGSize)remoteScreenAspectRatio
{
  width = self->_remoteScreenAspectRatio.width;
  height = self->_remoteScreenAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)dialRequestForRedial
{
  v7 = *MEMORY[0x1E69E9840];
  handle = [self handle];
  v5 = 138412290;
  v6 = handle;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Call was emergency, but handle %@ is not considered to be an emergency handle. Setting redial dialType to normal.", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end