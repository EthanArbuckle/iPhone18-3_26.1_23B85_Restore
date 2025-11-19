@interface TUCall
+ (id)_supplementalDialTelephonyCallStringForLocString:(id)a3 destination:(id)a4 isPhoneNumber:(BOOL)a5 includeFaceTimeAudio:(BOOL)a6;
+ (id)stringForReceptionistState:(int)a3;
- (BOOL)_isEligibleForManualScreening:(BOOL)a3 languageIdentifier:(id)a4;
- (BOOL)hasSentInvitation;
- (BOOL)isCaptioningAvailable;
- (BOOL)isConferenced;
- (BOOL)isConnected;
- (BOOL)isConnecting;
- (BOOL)isDialRequestVideoUpgrade:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCall:(id)a3;
- (BOOL)isFromSiri;
- (BOOL)isJunk;
- (BOOL)isOnHold;
- (BOOL)isPodcastRecordingAllowed;
- (BOOL)isRTT;
- (BOOL)isRecording;
- (BOOL)isRecordingPodcast;
- (BOOL)isTTY;
- (BOOL)isVideoUpgradeFromCall:(id)a3;
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
- (TUCall)initWithCall:(id)a3;
- (TUCall)initWithCoder:(id)a3;
- (TUCall)initWithNotificationCenter:(id)a3;
- (TUCall)initWithUniqueProxyIdentifier:(id)a3 endpointOnCurrentDevice:(BOOL)a4 notificationCenter:(id)a5;
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
- (void)answerWithRequest:(id)a3;
- (void)dealloc;
- (void)dialRequestForRedial;
- (void)disconnectWithReason:(int)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setIsOnHold:(BOOL)a3;
- (void)suppressRingtoneDueToRemoteSuppression;
- (void)updateComparativeCall;
- (void)updateWithCall:(id)a3;
@end

@implementation TUCall

- (BOOL)isOnHold
{
  v3 = [(TUCall *)self provisionalHoldStatus];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(TUCall *)self provisionalHoldStatus]!= 2 && [(TUCall *)self status]== 2;
  }

  return v3;
}

- (int)status
{
  v3 = [(TUCall *)self callStatus];
  v4 = [(TUCall *)self transitionStatus];
  if (![(TUCall *)self isPTT]&& (v3 <= 4 && v4 == 5 || v3 == 4 && v4 == 1))
  {
    return v4;
  }

  return v3;
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
  v3 = [(TUCall *)self dateScreeningEnded];
  if (!v3)
  {
    v3 = [(TUCall *)self dateConnected];
    if (!v3)
    {
      return 0.0;
    }
  }

  v4 = v3;
  v5 = [(TUCall *)self dateEnded];

  if (v5)
  {
    v6 = [(TUCall *)self dateEnded];
    [v6 timeIntervalSinceDate:v4];
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
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v5 = [(TUCall *)self initWithUniqueProxyIdentifier:v4];

  return v5;
}

- (TUCallProvider)provider
{
  v2 = [(TUCall *)self callCenter];
  v3 = [v2 providerManager];
  v4 = [v3 defaultProvider];

  return v4;
}

- (TUCallCenter)callCenter
{
  v2 = [(TUCall *)self callServicesInterface];
  v3 = [v2 callCenter];

  return v3;
}

- (TUCallServicesInterface)callServicesInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_callServicesInterface);

  return WeakRetained;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUCall *)self provider];
  v5 = [v4 identifier];
  [v3 appendFormat:@" p=%@", v5];

  v6 = [(TUCall *)self announceProviderIdentifier];
  [v3 appendFormat:@" aPI=%@", v6];

  v7 = [(TUCall *)self initiator];
  [v3 appendFormat:@" initr=%@", v7];

  v8 = [(TUCall *)self currentRecordingSession];
  [v3 appendFormat:@" crs=%@", v8];

  v9 = [(TUCall *)self recordingSession];
  [v3 appendFormat:@" rs=%@", v9];

  v10 = [(TUCall *)self podcastRecordingSession];
  [v3 appendFormat:@" prs=%@", v10];

  v11 = [(TUCall *)self translationSession];
  [v3 appendFormat:@" ctrans=%@", v11];

  v12 = TUStringForCallService([(TUCall *)self service]);
  [v3 appendFormat:@" svc=%@", v12];

  v13 = [(TUCall *)self handle];
  [v3 appendFormat:@" hdl=%@", v13];

  v14 = [(TUCall *)self remoteParticipantHandles];
  [v3 appendFormat:@" hdls=%@", v14];

  v15 = [(TUCall *)self isoCountryCode];
  [v3 appendFormat:@" isoCC=%@", v15];

  v16 = TUStringForCallStatus([(TUCall *)self status]);
  [v3 appendFormat:@" stat=%@", v16];

  [v3 appendFormat:@" tStat=%d", -[TUCall transitionStatus](self, "transitionStatus")];
  [v3 appendFormat:@" dR=%d", -[TUCall disconnectedReason](self, "disconnectedReason")];
  [v3 appendFormat:@" fR=%d", -[TUCall filteredOutReason](self, "filteredOutReason")];
  [v3 appendFormat:@" supportsR=%d", -[TUCall supportsRecents](self, "supportsRecents")];
  v17 = [(TUCall *)self uniqueProxyIdentifier];
  [v3 appendFormat:@" uPI=%@", v17];

  v18 = [(TUCall *)self callGroupUUID];
  [v3 appendFormat:@" grp=%@", v18];

  v19 = [(TUCall *)self localSenderIdentityUUID];
  [v3 appendFormat:@" lSIUUID=%@", v19];

  v20 = [(TUCall *)self localSenderIdentityAccountUUID];
  [v3 appendFormat:@" lSIAccountUUID=%@", v20];

  v21 = [(TUCall *)self upgradedFromCallUUID];
  [v3 appendFormat:@" upgradedFromCallUUID=%@", v21];

  [v3 appendFormat:@" hosted=%d", -[TUCall isHostedOnCurrentDevice](self, "isHostedOnCurrentDevice")];
  [v3 appendFormat:@" endpt=%d", -[TUCall isEndpointOnCurrentDevice](self, "isEndpointOnCurrentDevice")];
  v22 = [(TUCall *)self callerNameFromNetwork];
  [v3 appendFormat:@" callerNFN=%@", v22];

  v23 = [(TUCall *)self sourceIdentifier];
  [v3 appendFormat:@" srcID=%@", v23];

  v24 = [(TUCall *)self audioCategory];
  [v3 appendFormat:@" aC=%@", v24];

  v25 = [(TUCall *)self audioMode];
  [v3 appendFormat:@" aM=%@", v25];

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
  v26 = [(TUCall *)self tokens];

  if (v26)
  {
    v27 = [(TUCall *)self tokens];
    [v3 appendFormat:@" tokens=%@", v27];
  }

  v28 = [(TUCall *)self localMemberHandleValue];

  if (v28)
  {
    v29 = [(TUCall *)self localMemberHandleValue];
    [v3 appendFormat:@" localMemberHandleValue=%@", v29];
  }

  v30 = [(TUCall *)self videoCallAttributes];
  [v3 appendFormat:@" vCA=%@", v30];

  v31 = [(TUCall *)self screenShareAttributes];
  [v3 appendFormat:@" ssA=%@", v31];

  [v3 appendFormat:@" ssI=%ld", -[TUCall screenSharingIntention](self, "screenSharingIntention")];
  v32 = [(TUCall *)self model];
  [v3 appendFormat:@" model=%@", v32];

  [v3 appendFormat:@" dtmfU=%d", -[TUCall supportsDTMFUpdates](self, "supportsDTMFUpdates")];
  [v3 appendFormat:@" em=%d", -[TUCall isEmergency](self, "isEmergency")];
  [v3 appendFormat:@" emvs=%d", -[TUCall hasEmergencyVideoStream](self, "hasEmergencyVideoStream")];
  v33 = [(TUCall *)self emergencyMediaItems];
  [v3 appendFormat:@" emmi=%@", v33];

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
  v34 = [(TUCall *)self lastReceptionistMessage];
  v35 = [v34 copy];

  if (v35 && ([v35 length] > 9 || objc_msgSend(v35, "length")))
  {
    v36 = [v35 substringToIndex:9];
    [v3 appendFormat:@" rm=%@...", v36];
  }

  [v3 appendFormat:@" rC=%d", -[TUCall isReceptionistCapable](self, "isReceptionistCapable")];
  v37 = [(TUCall *)self receptionistSession];
  [v3 appendFormat:@" receptionistSession=%@", v37];

  [v3 appendFormat:@" csUI=%d", -[TUCall isScreeningDueToUserInteraction](self, "isScreeningDueToUserInteraction")];
  [v3 appendFormat:@" ss=%d", -[TUCall supportsScreening](self, "supportsScreening")];
  [v3 appendFormat:@" ae=%d", -[TUCall screeningAnnouncementHasFinished](self, "screeningAnnouncementHasFinished")];
  [v3 appendFormat:@" hBR=%d", -[TUCall hasBeenRedirected](self, "hasBeenRedirected")];
  v38 = [(TUCall *)self providerContext];
  [v3 appendFormat:@" pCtx=%@", v38];

  [v3 appendFormat:@" amst=%ld", -[TUCall answeringMachineStreamToken](self, "answeringMachineStreamToken")];
  [v3 appendFormat:@" lUHC=%d", -[TUCall isLocalUserInHomeCountry](self, "isLocalUserInHomeCountry")];
  [v3 appendFormat:@" iSCN=%d", -[TUCall hasIdentifiedSpamInCallerName](self, "hasIdentifiedSpamInCallerName")];
  [v3 appendFormat:@" reRing=%d", -[TUCall isReRing](self, "isReRing")];
  [v3 appendFormat:@" cST=%d", -[TUCall callSubType](self, "callSubType")];
  [v3 appendFormat:@" screenSharingType=%ld", -[TUCall screenSharingType](self, "screenSharingType")];
  [v3 appendFormat:@" spC=%d", -[TUCall isSharePlayCapable](self, "isSharePlayCapable")];
  [v3 appendFormat:@" arSRSS=%d", -[TUCall anyRemoteSupportsRequestToScreenShare](self, "anyRemoteSupportsRequestToScreenShare")];
  v39 = [(TUCall *)self conversationGroupUUID];
  [v3 appendFormat:@" cGrp=%@", v39];

  [v3 appendFormat:@" nearbyMode=%ld", -[TUCall nearbyMode](self, "nearbyMode")];
  v40 = [(TUCall *)self smartHoldingSession];
  [v3 appendFormat:@" smartHoldingSession=%@", v40];

  [v3 appendFormat:@" cTS=%d", -[TUCall commTrustScore](self, "commTrustScore")];
  [v3 appendFormat:@" sUK=%d", -[TUCall specialUnknown](self, "specialUnknown")];
  v41 = [(TUCall *)self reminderUUID];
  [v3 appendFormat:@" rUUID=%@", v41];

  [v3 appendString:@">"];

  return v3;
}

- (int)service
{
  v2 = self;
  v3 = [(TUCall *)self provider];
  LODWORD(v2) = [TUCallProviderManager serviceForProvider:v3 video:[(TUCall *)v2 isVideo]];

  return v2;
}

- (BOOL)supportsRecents
{
  if (!self->_supportsRecents)
  {
    return 0;
  }

  v2 = [(TUCall *)self provider];
  v3 = [v2 supportsRecents];

  return v3;
}

- (BOOL)isConnecting
{
  v2 = [(TUCall *)self dateStartedConnecting];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isConnected
{
  v2 = [(TUCall *)self dateConnected];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasSentInvitation
{
  v2 = [(TUCall *)self dateSentInvitation];
  v3 = v2 != 0;

  return v3;
}

- (NSURL)imageURL
{
  if ([(TUCall *)self isPTT])
  {
    v3 = [(TUCall *)self channelImageURL];
  }

  else
  {
    v4 = [(TUCall *)self displayContext];
    v3 = [v4 companyLogoURL];
  }

  return v3;
}

- (void)updateComparativeCall
{
  v3 = [(TUCall *)self comparativeCall];
  [v3 updateWithCall:self];
}

- (NSString)callDirectoryIdentityExtension
{
  v2 = [(TUCall *)self displayContext];
  v3 = [v2 callDirectoryLocalizedExtensionContainingAppName];

  return v3;
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
  v4 = [(TUCall *)self uniqueProxyIdentifier];
  v5 = [v3 initWithUUIDString:v4];

  return v5;
}

- (NSSet)remoteParticipantHandles
{
  v3 = [(TUCall *)self handle];
  v4 = MEMORY[0x1E695DFD8];
  if (v3)
  {
    v5 = [(TUCall *)self handle];
    v6 = [v4 setWithObject:v5];
  }

  else
  {
    v6 = [MEMORY[0x1E695DFD8] set];
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(TUCall *)self uniqueProxyIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isConferenced
{
  v3 = [(TUCall *)self callGroupUUID];
  if (v3)
  {
    v4 = [(TUCall *)self provider];
    v5 = [v4 isTelephonyProvider];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)contactIdentifier
{
  v2 = [(TUCall *)self displayContext];
  v3 = [v2 contactIdentifiers];
  v4 = [v3 firstObject];

  return v4;
}

- (NSArray)contactIdentifiers
{
  v2 = [(TUCall *)self displayContext];
  v3 = [v2 contactIdentifiers];

  return v3;
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
  v3 = [(TUCall *)self recordingSession];

  if (!v3)
  {
    return 0;
  }

  v4 = [(TUCall *)self recordingSession];
  v5 = [v4 recordingState] == 3 && -[TUCall status](self, "status") != 6;

  return v5;
}

- (NSString)displayName
{
  v2 = [(TUCall *)self displayContext];
  v3 = [v2 name];

  if ([v3 length])
  {
    qmemcpy(v9, ", * ", sizeof(v9));
    v4 = MEMORY[0x1E696AEC0];
    v5 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v9[1] length:1];
    v6 = [MEMORY[0x1E696AEC0] stringWithCharacters:v9 length:1];
    v7 = [v4 stringWithFormat:@"%@%@%@", v5, v3, v6];

    v3 = v7;
  }

  return v3;
}

- (NSString)localizedLabel
{
  v2 = [(TUCall *)self displayContext];
  v3 = [v2 label];

  return v3;
}

- (id)supplementalInCallString
{
  if ([(TUCall *)self isHostedOnCurrentDevice])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(TUCall *)self isOutgoing];
    v5 = TUBundle();
    v6 = v5;
    if (v4)
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
  v3 = [(TUCall *)self notificationCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TUCall;
  [(TUCall *)&v4 dealloc];
}

- (NSNotificationCenter)notificationCenter
{
  v2 = [(TUCall *)self callNotificationManager];
  v3 = [v2 notificationCenter];

  return v3;
}

- (TUSenderIdentity)localSenderIdentity
{
  v3 = [(TUCall *)self localSenderIdentityAccountUUID];
  if (v3)
  {
    v4 = [(TUCall *)self provider];
    v5 = [v4 senderIdentityForAccountUUID:v3];
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
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v28 = [v3 localeIdentifier];

  v4 = [(TUCall *)self remoteParticipantHandles];
  v26 = [v4 count];

  v5 = [(TUCall *)self isConferenced];
  v6 = [(TUCall *)self provider];
  v7 = [v6 isSystemProvider];

  v8 = [(TUCall *)self isEmergency];
  v24 = [(TUCall *)self status];
  v9 = [(TUCall *)self isEndpointOnCurrentDevice];
  v10 = [(TUCall *)self isVideo];
  v11 = TUCurrentLocaleIdentifier();
  v12 = [&unk_1F09C64F0 containsObject:v11];

  v13 = [(TUCall *)self isCaptioningAvailable];
  v14 = [(TUCall *)self isSmartHoldingGASRAvailable];
  v15 = v14;
  v25 = v7;
  v16 = v7 ^ 1;
  v17 = v5;
  v18 = (v26 != 1) | v5 | v16 | (v8 || v24 != 1) | ~v9 | v10 | ~v12;
  if (v13 && v14)
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
    v38 = !v8;
    v39 = 1024;
    v40 = v24 == 1;
    v41 = 1024;
    v42 = [(TUCall *)self callStatus];
    v43 = 1024;
    v44 = v9 & 1;
    v45 = 1024;
    v46 = !v10;
    v47 = 1024;
    v48 = v12 & 1;
    v49 = 2112;
    v50 = v28;
    v51 = 1024;
    v52 = v13;
    v53 = 1024;
    v54 = v15;
    _os_log_impl(&dword_1956FD000, v21, OS_LOG_TYPE_DEFAULT, "smartHoldingAvailability=%i, validRemoteParticipantCount=%i validNotConferenced=%i, validSystemProvider=%i, validNotEmergencyCall=%i, validCallStatus=%i(%i), validEndpointOnCurrentDevice=%i, validIsNotVideo=%i, validLocale=%i(%@), validCaptioningAvailable=%i, isGASRAvailable=%i", buf, 0x54u);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v27;
}

- (NSString)hardPauseDigitsDisplayString
{
  v2 = [(TUCall *)self hardPauseDigits];
  v3 = TUHardPauseDigitsDisplayString(v2);

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

- (TUCall)initWithNotificationCenter:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v5 UUIDString];
  v7 = [(TUCall *)self initWithUniqueProxyIdentifier:v6 endpointOnCurrentDevice:1 notificationCenter:v4];

  return v7;
}

- (TUCall)initWithCall:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(TUCall *)self initWithUniqueProxyIdentifier:v5];

  if (v6)
  {
    [(TUCall *)v6 updateWithCall:v4];
  }

  return v6;
}

- (TUCall)initWithUniqueProxyIdentifier:(id)a3 endpointOnCurrentDevice:(BOOL)a4 notificationCenter:(id)a5
{
  v9 = a3;
  v10 = a5;
  v36.receiver = self;
  v36.super_class = TUCall;
  v11 = [(TUCall *)&v36 init];
  if (v11)
  {
    [v10 addObserver:v11 selector:sel__handleStatusChange name:@"TUCallCenterCallStatusChangedInternalNotification" object:v11];
    v12 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v11->_featureFlags;
    v11->_featureFlags = v12;

    v11->_lockdownModeEnabled = TULockdownModeEnabled();
    v14 = [[TUCallNotificationManager alloc] initWithNotificationCenter:v10];
    callNotificationManager = v11->_callNotificationManager;
    v11->_callNotificationManager = v14;

    v16 = objc_alloc_init(TUCallModel);
    model = v11->_model;
    v11->_model = v16;

    *&v11->_hasEverUnsuppressedRingtone = 256;
    v11->_supportsRecents = 1;
    v18 = [MEMORY[0x1E695DF00] date];
    dateCreated = v11->_dateCreated;
    v11->_dateCreated = v18;

    objc_storeStrong(&v11->_uniqueProxyIdentifier, a3);
    v11->_endpointOnCurrentDevice = a4;
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

+ (id)stringForReceptionistState:(int)a3
{
  if (a3 > 7)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E74276E8 + a3);
  }
}

- (void)answerWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(TUCall *)self callNotificationManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__TUCall_answerWithRequest___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 deferNotificationsUntilAfterPerformingBlock:v7];
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

- (void)setIsOnHold:(BOOL)a3
{
  v3 = a3;
  v5 = [(TUCall *)self callCenter];
  v6 = v5;
  if (v3)
  {
    [v5 holdCall:self];
  }

  else
  {
    [v5 unholdCall:self];
  }
}

- (void)disconnectWithReason:(int)a3
{
  v5 = [(TUCall *)self callNotificationManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__TUCall_disconnectWithReason___block_invoke;
  v6[3] = &unk_1E74256D0;
  v6[4] = self;
  v7 = a3;
  [v5 deferNotificationsUntilAfterPerformingBlock:v6];
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
  v2 = [(TUCall *)self dateConnected];
  [v2 timeIntervalSinceReferenceDate];
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
  v3 = [(TUCall *)self podcastRecordingSession];

  if (!v3)
  {
    return 0;
  }

  v4 = [(TUCall *)self podcastRecordingSession];
  v5 = [v4 recordingState] == 3;

  return v5;
}

- (int64_t)faceTimeTransportType
{
  v3 = [(TUCall *)self providerContext];
  v4 = [v3 objectForKeyedSubscript:@"TUCallFaceTimeTransportTypeKey"];

  if (!v4)
  {
    return 0;
  }

  v5 = [(TUCall *)self providerContext];
  v6 = [v5 objectForKeyedSubscript:@"TUCallFaceTimeTransportTypeKey"];
  v7 = [v6 integerValue];

  return v7;
}

- (NSString)localizedHandoffRecipientDeviceCategory
{
  v3 = [(TUCall *)self providerContext];
  v4 = [v3 objectForKeyedSubscript:@"TUCallFaceTimeLocalizedHandoffRecipientDeviceCategoryKey"];

  if (v4)
  {
    v5 = [(TUCall *)self providerContext];
    v6 = [v5 objectForKeyedSubscript:@"TUCallFaceTimeLocalizedHandoffRecipientDeviceCategoryKey"];
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
  v3 = [(TUCall *)self providerContext];
  v4 = [v3 objectForKeyedSubscript:@"TUCallFaceTimeHandoffRecipientParticipantKey"];

  if (v4)
  {
    v5 = [(TUCall *)self providerContext];
    v6 = [v5 objectForKeyedSubscript:@"TUCallFaceTimeHandoffRecipientParticipantKey"];
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
  v4 = [(TUCall *)self provider];
  v5 = [(TUDialRequest *)v3 initWithProvider:v4];

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
  v7 = [(TUCall *)self handle];
  [(TUDialRequest *)v5 setHandle:v7];

  v8 = [(TUCall *)self contactIdentifiers];
  v9 = [v8 firstObject];
  [(TUDialRequest *)v5 setContactIdentifier:v9];

  v10 = [(TUCall *)self isVideo]|| [(TUCall *)self isThirdPartyVideo];
  [(TUDialRequest *)v5 setVideo:v10];
  [(TUDialRequest *)v5 setSOS:[(TUCall *)self isSOS]];
  [(TUDialRequest *)v5 setRedial:1];
  v11 = [(TUCall *)self sourceIdentifier];
  [(TUDialRequest *)v5 setAudioSourceIdentifier:v11];

  [(TUDialRequest *)v5 setOriginatingUIType:25];
  [(TUDialRequest *)v5 setPerformDialAssist:0];
  [(TUDialRequest *)v5 setPerformLocalDialAssist:0];
  [(TUDialRequest *)v5 setDialAssisted:[(TUCall *)self wasDialAssisted]];
  [(TUDialRequest *)v5 setTtyType:TUDialRequestTTYTypeForTUCallTTYType([(TUCall *)self ttyType])];
  v12 = [(TUCall *)self localSenderIdentityUUID];
  [(TUDialRequest *)v5 setLocalSenderIdentityUUID:v12];

  v13 = [(TUCall *)self localSenderIdentityAccountUUID];
  [(TUDialRequest *)v5 setLocalSenderIdentityAccountUUID:v13];

  if ([(TUDialRequest *)v5 dialType]== 1)
  {
    v14 = [(TUDialRequest *)v5 validityErrorForEmergencyCall];

    if (v14)
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
  v2 = [(TUCall *)self handle];
  v3 = [v2 value];

  return v3;
}

- (BOOL)isEqualToCall:(id)a3
{
  v4 = a3;
  v5 = [(TUCall *)self uniqueProxyIdentifier];
  v6 = [v4 uniqueProxyIdentifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCall *)self isEqualToCall:v4];

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
    v6 = [(TUCall *)self service];
    v3 = TUBundle();
    v4 = v3;
    if (v6 == 1)
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
  v3 = [(TUCall *)self featureFlags];
  v4 = [v3 receptionistEnabled];

  result = [(TUCall *)self status];
  if (v4)
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
  v2 = [(TUCall *)self sourceIdentifier];
  v3 = [v2 isEqual:@"TUCallSourceIdentifierHeySiri"];

  return v3;
}

- (BOOL)supportsSimultaneousVoiceAndData
{
  v3 = [(TUCall *)self provider];
  if ([v3 isTelephonyProvider])
  {
    v4 = [(TUCall *)self localSenderIdentityUUID];
    v5 = [TUCallCapabilities isSimultaneousVoiceAndDataSupportedForSIMWithUUID:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)supportsDTMFTones
{
  v2 = [(TUCall *)self model];
  v3 = [v2 supportsDTMF];

  return v3;
}

- (NSString)displayFirstName
{
  v3 = [(TUCall *)self displayContext];
  v4 = [v3 personNameComponents];
  v5 = [v4 givenName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(TUCall *)self displayContext];
    v7 = [v8 name];
  }

  return v7;
}

- (NSString)suggestedDisplayName
{
  v2 = [(TUCall *)self displayContext];
  v3 = [v2 suggestedName];

  return v3;
}

- (NSString)callDirectoryName
{
  v3 = [(TUCall *)self displayContext];
  v4 = [v3 callDirectoryLocalizedExtensionContainingAppName];
  if (!v4)
  {
    v12 = 0;
    goto LABEL_5;
  }

  v5 = v4;
  v6 = [(TUCall *)self displayContext];
  v7 = [v6 callDirectoryLabel];

  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v3 = [(TUCall *)self displayContext];
    v9 = [v3 callDirectoryLocalizedExtensionContainingAppName];
    v10 = [(TUCall *)self displayContext];
    v11 = [v10 callDirectoryLabel];
    v12 = [v8 stringWithFormat:@"%@: %@", v9, v11];

LABEL_5:
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

- (int64_t)callDirectoryIdentityType
{
  v2 = [(TUCall *)self displayContext];
  v3 = [v2 callDirectoryIdentityType];

  return v3;
}

- (NSString)companyName
{
  v2 = [(TUCall *)self displayContext];
  v3 = [v2 companyName];

  return v3;
}

- (NSString)companyDepartment
{
  v2 = [(TUCall *)self displayContext];
  v3 = [v2 companyDepartment];

  return v3;
}

- (int)abUID
{
  v2 = [(TUCall *)self displayContext];
  v3 = [v2 legacyAddressBookIdentifier];

  return v3;
}

+ (id)_supplementalDialTelephonyCallStringForLocString:(id)a3 destination:(id)a4 isPhoneNumber:(BOOL)a5 includeFaceTimeAudio:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v9 = a3;
  v10 = a4;
  if (!+[TUCallCapabilities supportsTelephonyCalls](TUCallCapabilities, "supportsTelephonyCalls") || +[TUCallCapabilities supportsPrimaryCalling])
  {
    v11 = 0;
    goto LABEL_23;
  }

  v12 = [MEMORY[0x1E696AD60] stringWithString:v9];
  v13 = [MEMORY[0x1E695DF70] array];
  if (v10)
  {
    if (v7)
    {
      v14 = @"_TO_NUMBER_%@";
    }

    else
    {
      v14 = @"_TO_CONTACT_%@";
    }

    [v12 appendString:v14];
    [v13 addObject:v10];
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
  if (v6)
  {
    [v12 appendString:@"_FTA"];
  }

  if ([v13 count] == 1)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = TUBundle();
    v18 = TUStringKeyForPlatform(v12);
    v19 = [v17 localizedStringForKey:v18 value:&stru_1F098C218 table:@"TelephonyUtilities"];
    v20 = [v13 objectAtIndex:0];
    v11 = [v16 stringWithFormat:v19, v20];

LABEL_21:
    goto LABEL_22;
  }

  if (![v13 count])
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
  v3 = [(TUCall *)self provider];
  v4 = [v3 isFaceTimeProvider];

  if (!v4)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v5 = objc_alloc_init(MEMORY[0x1E699C018]);
  if ([(TUCall *)self isVideo])
  {
    if ([(TUCall *)self isConversation])
    {
      v6 = [(TUCall *)self callCenter];
      v7 = [v6 activeConversationForCall:self];

      if (v7 && [v7 resolvedAudioVideoMode] != 2)
      {
        v8 = [v5 faceTimeAudioServiceName];
      }

      else
      {
        v8 = [v5 faceTimeVideoServiceName];
      }

      v9 = v8;

      goto LABEL_13;
    }

    v10 = [v5 faceTimeVideoServiceName];
  }

  else
  {
    v10 = [v5 faceTimeAudioServiceName];
  }

  v9 = v10;
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
      v4 = TUBundle();
      v5 = @"ALERT_RELAY_FAILED_CONFERENCE_FAILED_TITLE";
      goto LABEL_25;
    case 9:
    case 0xC:
      v4 = TUBundle();
      v5 = @"ALERT_RELAY_FAILED_RELAY_DEVICE_UNAVAILABLE_TITLE";
      goto LABEL_25;
    case 0xA:
      v4 = TUBundle();
      v5 = @"ALERT_HOST_DEVICE_BUSY_TITLE";
      goto LABEL_25;
    case 0xB:
    case 0x2E:
      v4 = TUBundle();
      goto LABEL_5;
    case 0xD:
      v15 = +[TUCallCapabilities isThumperCallingEnabled];
      v4 = TUBundle();
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
        v4 = v13;
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
      v4 = TUBundle();
      v5 = @"ALERT_CLIENT_DEVICE_BUSY_TITLE";
LABEL_25:
      v11 = TUStringKeyForPlatform(v5);
      v10 = v4;
      v12 = v11;
      goto LABEL_26;
    case 0x1A:
      v13 = TUBundle();
      v4 = v13;
      v14 = @"ALERT_KICKED_OUT_TITLE";
      goto LABEL_29;
    case 0x1B:
      v13 = TUBundle();
      v4 = v13;
      v14 = @"ALERT_REJECTED_TITLE";
      goto LABEL_29;
    case 0x1D:
      v13 = TUBundle();
      v4 = v13;
      v14 = @"ALERT_LINKS_DISABLED_TITLE";
      goto LABEL_29;
    case 0x1E:
    case 0x31:
      v6 = MEMORY[0x1E696AEC0];
      v4 = TUBundle();
      v7 = [(__CFString *)v4 localizedStringForKey:@"NO_DESTINATIONS_AVAILABLE_TITLE_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
      v8 = [(TUCall *)self displayName];
      v3 = [v6 stringWithFormat:v7, v8];

      goto LABEL_30;
    case 0x23:
      v13 = TUBundle();
      v4 = v13;
      v14 = @"ALERT_OFFRAMPED_TITLE";
      goto LABEL_29;
    case 0x26:
      v4 = [(TUCall *)self dateConnected];
      v10 = TUBundle();
      v11 = v10;
      if (v4)
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
      v4 = v13;
      v14 = @"TRAVEL_MODE_TITLE";
      goto LABEL_29;
    case 0x2B:
      v13 = TUBundle();
      v4 = v13;
      v14 = @"GUEST_MODE_TITLE";
      goto LABEL_29;
    case 0x2C:
      v4 = [(TUCall *)self featureFlags];
      v9 = [(__CFString *)v4 appleAccountRebrandEnabled];
      v10 = TUBundle();
      v11 = v10;
      if (v9)
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
      v4 = v13;
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
      v5 = TUBundle();
      v19 = @"ALERT_RELAY_FAILED_LEARN_MORE_GUIDANCE_MESSAGE";
      goto LABEL_29;
    case 9:
      v5 = [(TUCall *)self featureFlags];
      v15 = [v5 appleAccountRebrandEnabled];
      v12 = TUBundle();
      if (v15)
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
      v5 = TUBundle();
      v18 = @"ALERT_HOST_DEVICE_BUSY_MESSAGE";
      goto LABEL_19;
    case 0xC:
      v5 = TUBundle();
      v18 = @"ALERT_RELAY_FAILED_RELAY_DEVICE_UNAVAILABLE_ENABLE_MESSAGE";
      goto LABEL_19;
    case 0xD:
      if (+[TUCallCapabilities isThumperCallingEnabled])
      {
        v5 = [CUTWeakLinkClass() sharedInstance];
        v11 = [v5 wiFiActiveAndReachable];
        v12 = TUBundle();
        if (v11)
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
        v5 = TUBundle();
        v19 = @"ALERT_RELAY_FAILED_NO_REMOTE_NETWORK_MESSAGE";
LABEL_29:
        v20 = TUStringKeyForNetworkAndProduct(v19);
LABEL_30:
        v12 = v20;
        v3 = [v5 localizedStringForKey:v20 value:&stru_1F098C218 table:@"TelephonyUtilities"];
      }

      goto LABEL_32;
    case 0x10:
      v5 = TUBundle();
      v18 = @"ALERT_CLIENT_DEVICE_BUSY_MESSAGE";
LABEL_19:
      v20 = TUStringKeyForProduct(v18);
      goto LABEL_30;
    case 0x1A:
      v9 = TUBundle();
      v5 = v9;
      v10 = @"ALERT_KICKED_OUT_MESSAGE";
      goto LABEL_27;
    case 0x1B:
      v9 = TUBundle();
      v5 = v9;
      v10 = @"ALERT_REJECTED_MESSAGE";
      goto LABEL_27;
    case 0x1C:
      v9 = TUBundle();
      v5 = v9;
      v10 = @"ALERT_INVALID_LINK_MESSAGE";
      goto LABEL_27;
    case 0x1D:
      v9 = TUBundle();
      v5 = v9;
      v10 = @"ALERT_LINKS_DISABLED_MESSAGE";
      goto LABEL_27;
    case 0x1E:
    case 0x31:
      v4 = MEMORY[0x1E696AEC0];
      v5 = TUBundle();
      v6 = [v5 localizedStringForKey:@"NO_DESTINATIONS_AVAILABLE_MESSAGE_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
      v7 = [(TUCall *)self handle];
      v8 = [v7 value];
      v3 = [v4 stringWithFormat:v6, v8];

      goto LABEL_32;
    case 0x23:
      v9 = TUBundle();
      v5 = v9;
      v10 = @"ALERT_OFFRAMPED_MESSAGE";
      goto LABEL_27;
    case 0x2A:
      v9 = TUBundle();
      v5 = v9;
      v10 = @"TRAVEL_MODE_MESSAGE";
      goto LABEL_27;
    case 0x2B:
      v9 = TUBundle();
      v5 = v9;
      v10 = @"GUEST_MODE_MESSAGE";
      goto LABEL_27;
    case 0x2C:
      v9 = TUBundle();
      v5 = v9;
      v10 = @"NOT_SIGNED_IN_MESSAGE";
      goto LABEL_27;
    case 0x2D:
      v9 = TUBundle();
      v5 = v9;
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

- (void)updateWithCall:(id)a3
{
  v4 = a3;
  [(TUCall *)self resetProvisionalState];
  self->_disconnectedReason = [v4 disconnectedReason];
  self->_filteredOutReason = [v4 filteredOutReason];
  self->_supportsRecents = [v4 supportsRecents];
  v5 = [v4 dateAnsweredOrDialed];
  dateAnsweredOrDialed = self->_dateAnsweredOrDialed;
  self->_dateAnsweredOrDialed = v5;

  v7 = [v4 dateCreated];
  dateCreated = self->_dateCreated;
  self->_dateCreated = v7;

  v9 = [v4 dateSentInvitation];
  dateSentInvitation = self->_dateSentInvitation;
  self->_dateSentInvitation = v9;

  v11 = [v4 dateStartedConnecting];
  dateStartedConnecting = self->_dateStartedConnecting;
  self->_dateStartedConnecting = v11;

  v13 = [v4 dateConnected];
  dateConnected = self->_dateConnected;
  self->_dateConnected = v13;

  v15 = [v4 dateScreeningEnded];
  dateScreeningEnded = self->_dateScreeningEnded;
  self->_dateScreeningEnded = v15;

  v17 = [v4 dateEnded];
  dateEnded = self->_dateEnded;
  self->_dateEnded = v17;

  self->_wantsHoldMusic = [v4 wantsHoldMusic];
  self->_endpointOnCurrentDevice = [v4 isEndpointOnCurrentDevice];
  self->_localUserInHomeCountry = [v4 isLocalUserInHomeCountry];
  self->_answeringMachineAvailable = [v4 isAnsweringMachineAvailable];
  self->_nondisclosedGreeting = [v4 hasNondisclosedGreeting];
  self->_identifiedSpamInCallerName = [v4 hasIdentifiedSpamInCallerName];
  self->_screening = [v4 isScreening];
  self->_screeningDueToUserInteraction = [v4 isScreeningDueToUserInteraction];
  self->_wasScreened = [v4 wasScreened];
  self->_receptionistState = [v4 receptionistState];
  v19 = [v4 lastReceptionistMessage];
  v20 = [v19 copy];
  lastReceptionistMessage = self->_lastReceptionistMessage;
  self->_lastReceptionistMessage = v20;

  v22 = [v4 receptionistSession];
  v23 = [v22 copy];
  receptionistSession = self->_receptionistSession;
  self->_receptionistSession = v23;

  self->_screeningAnnouncementHasFinished = [v4 screeningAnnouncementHasFinished];
  self->_shouldSuppressRingtone = [v4 shouldSuppressRingtone];
  self->_hasEverUnsuppressedRingtone = [v4 hasEverUnsuppressedRingtone];
  v25 = [v4 sourceIdentifier];
  v26 = [v25 copy];
  sourceIdentifier = self->_sourceIdentifier;
  self->_sourceIdentifier = v26;

  self->_wasDialAssisted = [v4 wasDialAssisted];
  self->_faceTimeIDStatus = [v4 faceTimeIDStatus];
  self->_hardPauseDigitsState = [v4 hardPauseDigitsState];
  v28 = [v4 hardPauseDigits];
  v29 = [v28 copy];
  hardPauseDigits = self->_hardPauseDigits;
  self->_hardPauseDigits = v29;

  self->_wasPulledToCurrentDevice = [v4 wasPulledToCurrentDevice];
  self->_soundRegion = [v4 soundRegion];
  v31 = [v4 model];
  v32 = [v31 copy];
  model = self->_model;
  self->_model = v32;

  self->_supportsDTMFUpdates = [v4 supportsDTMFUpdates];
  self->_video = [v4 isVideo];
  self->_launchInBackground = [v4 launchInBackground];
  self->_verificationStatus = [v4 verificationStatus];
  self->_priority = [v4 priority];
  self->_originatingUIType = [v4 originatingUIType];
  self->_liveVoicemailUnavailableReason = [v4 liveVoicemailUnavailableReason];
  self->_junkConfidence = [v4 junkConfidence];
  self->_identificationCategory = [v4 identificationCategory];
  self->_isKnownCaller = [v4 isKnownCaller];
  self->_joinedFromLink = [v4 joinedFromLink];
  self->_callSubType = [v4 callSubType];
  self->_hasEmergencyVideoStream = [v4 hasEmergencyVideoStream];
  v34 = [v4 emergencyMediaItems];
  v35 = [v34 copy];
  emergencyMediaItems = self->_emergencyMediaItems;
  self->_emergencyMediaItems = v35;

  v37 = [v4 recordingSession];
  v38 = [v37 copy];
  recordingSession = self->_recordingSession;
  self->_recordingSession = v38;

  v40 = [v4 currentRecordingSession];
  v41 = [v40 copy];
  currentRecordingSession = self->_currentRecordingSession;
  self->_currentRecordingSession = v41;

  v43 = [v4 podcastRecordingSession];
  v44 = [v43 copy];
  podcastRecordingSession = self->_podcastRecordingSession;
  self->_podcastRecordingSession = v44;

  v46 = [v4 translationSession];
  v47 = [v46 copy];
  translationSession = self->_translationSession;
  self->_translationSession = v47;

  v49 = [v4 smartHoldingSession];
  v50 = [v49 copy];
  smartHoldingSession = self->_smartHoldingSession;
  self->_smartHoldingSession = v50;

  v52 = [v4 blockedByExtension];
  v53 = [v52 copy];
  blockedByExtension = self->_blockedByExtension;
  self->_blockedByExtension = v53;

  v55 = [v4 callDirectoryIdentityExtension];
  v56 = [v55 copy];
  callDirectoryIdentityExtension = self->_callDirectoryIdentityExtension;
  self->_callDirectoryIdentityExtension = v56;

  self->_screenSharingIntention = [v4 screenSharingIntention];
  self->_commTrustScore = [v4 commTrustScore];
  self->_specialUnknown = [v4 specialUnknown];
  v58 = [v4 upgradedFromCallUUID];
  v59 = [v58 copy];
  upgradedFromCallUUID = self->_upgradedFromCallUUID;
  self->_upgradedFromCallUUID = v59;

  self->_isReceptionistCapable = [v4 isReceptionistCapable];
  [v4 hostCreationTime];
  self->_hostCreationTime = v61;
  [v4 hostMessageSendTime];
  self->_hostMessageSendTime = v62;
  [v4 clientMessageReceiveTime];
  self->_clientMessageReceiveTime = v63;
  self->_answeringMachineStreamToken = [v4 answeringMachineStreamToken];
  self->_providerErrorCode = [v4 providerErrorCode];
  self->_providerEndedReason = [v4 providerEndedReason];
  self->_screenSharingType = [v4 screenSharingType];
  self->_isSharePlayCapable = [v4 isSharePlayCapable];
  self->_anyRemoteSupportsRequestToScreenShare = [v4 anyRemoteSupportsRequestToScreenShare];
  v64 = [v4 reminderUUID];
  reminderUUID = self->_reminderUUID;
  self->_reminderUUID = v64;

  v66 = [v4 conversationGroupUUID];

  conversationGroupUUID = self->_conversationGroupUUID;
  self->_conversationGroupUUID = v66;
}

- (TUCall)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueProxyIdentifier"];
  v6 = [(TUCall *)self initWithUniqueProxyIdentifier:v5];

  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceIdentifier"];
    v8 = [v7 copy];
    sourceIdentifier = v6->_sourceIdentifier;
    v6->_sourceIdentifier = v8;

    v6->_disconnectedReason = [v4 decodeInt32ForKey:@"disconnectedReason"];
    v6->_filteredOutReason = [v4 decodeInt32ForKey:@"filteredOutReason"];
    v6->_supportsRecents = [v4 decodeBoolForKey:@"supportsRecents"];
    v6->_faceTimeIDStatus = [v4 decodeInt32ForKey:@"faceTimeIDStatus"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateCreated"];
    dateCreated = v6->_dateCreated;
    v6->_dateCreated = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateAnsweredOrDialed"];
    dateAnsweredOrDialed = v6->_dateAnsweredOrDialed;
    v6->_dateAnsweredOrDialed = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateSentInvitation"];
    dateSentInvitation = v6->_dateSentInvitation;
    v6->_dateSentInvitation = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateStartedConnecting"];
    dateStartedConnecting = v6->_dateStartedConnecting;
    v6->_dateStartedConnecting = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateConnected"];
    dateConnected = v6->_dateConnected;
    v6->_dateConnected = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateScreeningEnded"];
    dateScreeningEnded = v6->_dateScreeningEnded;
    v6->_dateScreeningEnded = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateEnded"];
    dateEnded = v6->_dateEnded;
    v6->_dateEnded = v22;

    v6->_wasDialAssisted = [v4 decodeBoolForKey:@"wasDialAssisted"];
    v6->_wantsHoldMusic = [v4 decodeBoolForKey:@"wantsHoldMusic"];
    v6->_endpointOnCurrentDevice = [v4 decodeBoolForKey:@"endpointOnCurrentDevice"];
    v6->_localUserInHomeCountry = [v4 decodeBoolForKey:@"localUserInHomeCountry"];
    v6->_answeringMachineAvailable = [v4 decodeBoolForKey:@"answeringMachineAvailable"];
    v6->_nondisclosedGreeting = [v4 decodeBoolForKey:@"nondisclosedGreeting"];
    v6->_identifiedSpamInCallerName = [v4 decodeBoolForKey:@"identifiedSpamInCallerName"];
    v6->_screening = [v4 decodeBoolForKey:@"screening"];
    v6->_screeningDueToUserInteraction = [v4 decodeBoolForKey:@"screeningDueToUserInteraction"];
    v6->_wasScreened = [v4 decodeBoolForKey:@"wasScreened"];
    v6->_receptionistState = [v4 decodeInt32ForKey:@"receptionistState"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastReceptionistMessage"];
    lastReceptionistMessage = v6->_lastReceptionistMessage;
    v6->_lastReceptionistMessage = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receptionistSession"];
    receptionistSession = v6->_receptionistSession;
    v6->_receptionistSession = v26;

    v6->_screeningAnnouncementHasFinished = [v4 decodeBoolForKey:@"screeningAnnouncementHasFinished"];
    v6->_shouldSuppressRingtone = [v4 decodeBoolForKey:@"shouldSuppressRingtone"];
    v6->_hasEverUnsuppressedRingtone = [v4 decodeBoolForKey:@"hasEverUnsuppressedRingtone"];
    v6->_hardPauseDigitsState = [v4 decodeInt32ForKey:@"hardPauseDigitsState"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hardPauseDigits"];
    hardPauseDigits = v6->_hardPauseDigits;
    v6->_hardPauseDigits = v28;

    v6->_wasPulledToCurrentDevice = [v4 decodeBoolForKey:@"wasPulledToCurrentDevice"];
    v6->_soundRegion = [v4 decodeIntegerForKey:@"soundRegion"];
    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"model"];
    model = v6->_model;
    v6->_model = v30;

    v6->_supportsDTMFUpdates = [v4 decodeBoolForKey:@"supportsDTMFUpdates"];
    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"videoCallAttributes"];
    videoCallAttributes = v6->_videoCallAttributes;
    v6->_videoCallAttributes = v32;

    v6->_launchInBackground = [v4 decodeBoolForKey:@"launchInBackground"];
    v6->_verificationStatus = [v4 decodeInt32ForKey:@"verificationStatus"];
    v6->_priority = [v4 decodeInt32ForKey:@"priority"];
    v6->_originatingUIType = [v4 decodeInt32ForKey:@"originatingUIType"];
    v6->_liveVoicemailUnavailableReason = [v4 decodeInt32ForKey:@"liveVoicemailUnavailableReason"];
    v6->_junkConfidence = [v4 decodeInt32ForKey:@"junkConfidence"];
    v6->_identificationCategory = [v4 decodeInt32ForKey:@"identificationCategory"];
    v6->_isKnownCaller = [v4 decodeBoolForKey:@"isKnownCaller"];
    v6->_joinedFromLink = [v4 decodeBoolForKey:@"joinedFromLink"];
    v6->_answeringMachineStreamToken = [v4 decodeIntForKey:@"answeringMachineStreamToken"];
    v6->_callSubType = [v4 decodeIntForKey:@"callSubType"];
    v6->_screenSharingIntention = [v4 decodeIntForKey:@"screenSharingIntention"];
    v6->_hasEmergencyVideoStream = [v4 decodeBoolForKey:@"hasEmergencyVideoStream"];
    v34 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"emergencyMediaItems"];
    emergencyMediaItems = v6->_emergencyMediaItems;
    v6->_emergencyMediaItems = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"blockedByExtension"];
    v40 = [v39 copy];
    blockedByExtension = v6->_blockedByExtension;
    v6->_blockedByExtension = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callDirectoryIdentityExtension"];
    v43 = [v42 copy];
    callDirectoryIdentityExtension = v6->_callDirectoryIdentityExtension;
    v6->_callDirectoryIdentityExtension = v43;

    v6->_commTrustScore = [v4 decodeInt32ForKey:@"commTrustScore"];
    v6->_specialUnknown = [v4 decodeBoolForKey:@"specialUnknown"];
    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"upgradedFromCallUUID"];
    upgradedFromCallUUID = v6->_upgradedFromCallUUID;
    v6->_upgradedFromCallUUID = v45;

    v6->_isReceptionistCapable = [v4 decodeBoolForKey:@"receptionistCapable"];
    [v4 decodeDoubleForKey:@"hostCreationTime"];
    v6->_hostCreationTime = v47;
    [v4 decodeDoubleForKey:@"hostMessageSendTime"];
    v6->_hostMessageSendTime = v48;
    [v4 decodeDoubleForKey:@"clientMessageReceiveTime"];
    v6->_clientMessageReceiveTime = v49;
    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordingSession"];
    recordingSession = v6->_recordingSession;
    v6->_recordingSession = v50;

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentRecordingSession"];
    currentRecordingSession = v6->_currentRecordingSession;
    v6->_currentRecordingSession = v52;

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"podcastRecordingSession"];
    podcastRecordingSession = v6->_podcastRecordingSession;
    v6->_podcastRecordingSession = v54;

    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"translationSession"];
    translationSession = v6->_translationSession;
    v6->_translationSession = v56;

    v6->_providerErrorCode = [v4 decodeIntForKey:@"providerErrorCode"];
    v6->_providerEndedReason = [v4 decodeIntForKey:@"providerEndedReason"];
    v6->_screenSharingType = [v4 decodeIntegerForKey:@"screenSharingType"];
    v6->_isSharePlayCapable = [v4 decodeBoolForKey:@"isSharePlayCapable"];
    v6->_anyRemoteSupportsRequestToScreenShare = [v4 decodeBoolForKey:@"anyRemoteSupportsRequestToScreenShare"];
    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"smartHoldingSession"];
    smartHoldingSession = v6->_smartHoldingSession;
    v6->_smartHoldingSession = v58;

    v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reminderUUID"];
    reminderUUID = v6->_reminderUUID;
    v6->_reminderUUID = v60;

    v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"conversationGroupUUID"];
    conversationGroupUUID = v6->_conversationGroupUUID;
    v6->_conversationGroupUUID = v62;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  uniqueProxyIdentifier = self->_uniqueProxyIdentifier;
  v5 = a3;
  [v5 encodeObject:uniqueProxyIdentifier forKey:@"uniqueProxyIdentifier"];
  [v5 encodeObject:self->_sourceIdentifier forKey:@"sourceIdentifier"];
  [v5 encodeInt32:self->_disconnectedReason forKey:@"disconnectedReason"];
  [v5 encodeInt32:self->_filteredOutReason forKey:@"filteredOutReason"];
  [v5 encodeBool:self->_supportsRecents forKey:@"supportsRecents"];
  [v5 encodeInt32:self->_faceTimeIDStatus forKey:@"faceTimeIDStatus"];
  [v5 encodeObject:self->_dateCreated forKey:@"dateCreated"];
  [v5 encodeObject:self->_dateAnsweredOrDialed forKey:@"dateAnsweredOrDialed"];
  [v5 encodeObject:self->_dateSentInvitation forKey:@"dateSentInvitation"];
  [v5 encodeObject:self->_dateStartedConnecting forKey:@"dateStartedConnecting"];
  [v5 encodeObject:self->_dateConnected forKey:@"dateConnected"];
  [v5 encodeObject:self->_dateScreeningEnded forKey:@"dateScreeningEnded"];
  [v5 encodeObject:self->_dateEnded forKey:@"dateEnded"];
  [v5 encodeBool:self->_wasDialAssisted forKey:@"wasDialAssisted"];
  [v5 encodeInt32:self->_transitionStatus forKey:@"transitionStatus"];
  [v5 encodeBool:self->_wantsHoldMusic forKey:@"wantsHoldMusic"];
  [v5 encodeBool:self->_endpointOnCurrentDevice forKey:@"endpointOnCurrentDevice"];
  [v5 encodeBool:self->_localUserInHomeCountry forKey:@"localUserInHomeCountry"];
  [v5 encodeBool:self->_answeringMachineAvailable forKey:@"answeringMachineAvailable"];
  [v5 encodeBool:self->_nondisclosedGreeting forKey:@"nondisclosedGreeting"];
  [v5 encodeBool:self->_identifiedSpamInCallerName forKey:@"identifiedSpamInCallerName"];
  [v5 encodeBool:self->_screening forKey:@"screening"];
  [v5 encodeBool:self->_screeningDueToUserInteraction forKey:@"screeningDueToUserInteraction"];
  [v5 encodeBool:self->_wasScreened forKey:@"wasScreened"];
  [v5 encodeInt32:self->_receptionistState forKey:@"receptionistState"];
  [v5 encodeObject:self->_lastReceptionistMessage forKey:@"lastReceptionistMessage"];
  [v5 encodeObject:self->_receptionistSession forKey:@"receptionistSession"];
  [v5 encodeBool:self->_screeningAnnouncementHasFinished forKey:@"screeningAnnouncementHasFinished"];
  [v5 encodeBool:self->_shouldSuppressRingtone forKey:@"shouldSuppressRingtone"];
  [v5 encodeBool:self->_hasEverUnsuppressedRingtone forKey:@"hasEverUnsuppressedRingtone"];
  [v5 encodeInt32:self->_hardPauseDigitsState forKey:@"hardPauseDigitsState"];
  [v5 encodeObject:self->_hardPauseDigits forKey:@"hardPauseDigits"];
  [v5 encodeBool:self->_wasPulledToCurrentDevice forKey:@"wasPulledToCurrentDevice"];
  [v5 encodeInteger:self->_soundRegion forKey:@"soundRegion"];
  [v5 encodeInteger:self->_screenSharingIntention forKey:@"screenSharingIntention"];
  [v5 encodeObject:self->_model forKey:@"model"];
  [v5 encodeBool:self->_supportsDTMFUpdates forKey:@"supportsDTMFUpdates"];
  [v5 encodeObject:self->_videoCallAttributes forKey:@"videoCallAttributes"];
  [v5 encodeBool:self->_launchInBackground forKey:@"launchInBackground"];
  [v5 encodeInteger:self->_verificationStatus forKey:@"verificationStatus"];
  [v5 encodeInteger:self->_priority forKey:@"priority"];
  [v5 encodeInt32:self->_originatingUIType forKey:@"originatingUIType"];
  [v5 encodeInteger:self->_liveVoicemailUnavailableReason forKey:@"liveVoicemailUnavailableReason"];
  [v5 encodeInteger:self->_junkConfidence forKey:@"junkConfidence"];
  [v5 encodeInteger:self->_identificationCategory forKey:@"identificationCategory"];
  [v5 encodeBool:self->_isKnownCaller forKey:@"isKnownCaller"];
  [v5 encodeBool:self->_joinedFromLink forKey:@"joinedFromLink"];
  [v5 encodeInt:self->_callSubType forKey:@"callSubType"];
  [v5 encodeBool:self->_hasEmergencyVideoStream forKey:@"hasEmergencyVideoStream"];
  [v5 encodeObject:self->_emergencyMediaItems forKey:@"emergencyMediaItems"];
  [v5 encodeObject:self->_upgradedFromCallUUID forKey:@"upgradedFromCallUUID"];
  [v5 encodeObject:self->_recordingSession forKey:@"recordingSession"];
  [v5 encodeObject:self->_currentRecordingSession forKey:@"currentRecordingSession"];
  [v5 encodeObject:self->_podcastRecordingSession forKey:@"podcastRecordingSession"];
  [v5 encodeObject:self->_translationSession forKey:@"translationSession"];
  [v5 encodeObject:self->_blockedByExtension forKey:@"blockedByExtension"];
  [v5 encodeObject:self->_callDirectoryIdentityExtension forKey:@"callDirectoryIdentityExtension"];
  [v5 encodeBool:self->_isSharePlayCapable forKey:@"isSharePlayCapable"];
  [v5 encodeBool:self->_anyRemoteSupportsRequestToScreenShare forKey:@"anyRemoteSupportsRequestToScreenShare"];
  [v5 encodeDouble:@"hostCreationTime" forKey:self->_hostCreationTime];
  [v5 encodeDouble:@"hostMessageSendTime" forKey:self->_hostMessageSendTime];
  [v5 encodeDouble:@"clientMessageReceiveTime" forKey:self->_clientMessageReceiveTime];
  [v5 encodeInteger:self->_answeringMachineStreamToken forKey:@"answeringMachineStreamToken"];
  [v5 encodeInteger:self->_providerErrorCode forKey:@"providerErrorCode"];
  [v5 encodeInteger:self->_providerEndedReason forKey:@"providerEndedReason"];
  [v5 encodeInteger:self->_screenSharingType forKey:@"screenSharingType"];
  [v5 encodeInt32:self->_commTrustScore forKey:@"commTrustScore"];
  [v5 encodeBool:self->_specialUnknown forKey:@"specialUnknown"];
  [v5 encodeBool:self->_isReceptionistCapable forKey:@"receptionistCapable"];
  [v5 encodeObject:self->_smartHoldingSession forKey:@"smartHoldingSession"];
  [v5 encodeObject:self->_reminderUUID forKey:@"reminderUUID"];
  [v5 encodeObject:self->_conversationGroupUUID forKey:@"conversationGroupUUID"];
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

- (BOOL)isVideoUpgradeFromCall:(id)a3
{
  v4 = a3;
  if (-[TUCall isVideo](self, "isVideo") && ([v4 isVideo] & 1) == 0 && (-[TUCall handle](self, "handle"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "handle"), v6 = objc_claimAutoreleasedReturnValue(), v7 = TUHandlesAreCanonicallyEqual(v5, v6), v6, v5, v7))
  {
    v8 = [v4 provider];
    v9 = [v8 isTinCanProvider] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)isDialRequestVideoUpgrade:(id)a3
{
  v4 = a3;
  v5 = [(TUCall *)self featureFlags];
  v6 = [v5 uplevelFTAEnabled];

  if (v6)
  {
    v7 = [(TUCall *)self upgradedFromCallUUID];
    v8 = v7 != 0;
  }

  else
  {
    if (![v4 isVideo] || -[TUCall isVideo](self, "isVideo"))
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = [(TUCall *)self handle];
    v10 = [v4 handle];
    v8 = TUHandlesAreCanonicallyEqual(v7, v10);
  }

LABEL_7:
  return v8;
}

- (BOOL)_isEligibleForManualScreening:(BOOL)a3 languageIdentifier:(id)a4
{
  v4 = a3;
  v38 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v4)
  {
    v7 = [(TUCall *)self featureFlags];
    if ([v7 LVMEverywhere] && -[TUCall supportsScreening](self, "supportsScreening"))
    {
      v8 = [(TUCall *)self isHostedOnCurrentDevice];

      if (!v8)
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

  v11 = [(TUCall *)self featureFlags];
  v10 = TUCallScreeningEnabled(v11, 0, v6);

  if (v10)
  {
    v12 = [(TUCall *)self clarityEnabledBlock];
    v13 = v12[2]();

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

    if (!v4)
    {
      v15 = [(TUCall *)self lowPowerModeEnabledBlock];
      v16 = v15[2]();

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
      v17 = TUDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_1956FD000, v17, OS_LOG_TYPE_DEFAULT, "isEligibleForScreening: High Priority call, not screenable", &v32, 2u);
      }

      goto LABEL_37;
    }

    v18 = [(TUCall *)self provider];
    v19 = [v18 isTelephonyProvider];

    if (!v19 || v4)
    {
      if (v19)
      {
        goto LABEL_32;
      }
    }

    else if ([(TUCall *)self isLocalUserInHomeCountry]&& ![(TUCall *)self hasIdentifiedSpamInCallerName]&& [(TUCall *)self junkConfidence]< 2)
    {
      goto LABEL_32;
    }

    v20 = [(TUCall *)self provider];
    v21 = [v20 isFaceTimeProvider];

    if (!v21)
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

    v17 = [(TUCall *)self remoteParticipantHandles];
    if ([v17 count]> 1 || [(TUCall *)self isVideo])
    {
LABEL_37:

      goto LABEL_38;
    }

    v28 = [(TUCall *)self isConversation];
    v29 = v28;
    if (!v28 || v4)
    {

      if (!v29)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v30 = [(TUCall *)self contactIdentifiers];
      v31 = [v30 count];

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
    if (v4)
    {
      v24 = @"YES";
    }

    v35 = v24;
    v36 = 2112;
    v37 = self;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "isEligibleForScreening: %@ manualScreening: %@ for call: %@", &v32, 0x20u);
  }

LABEL_49:

  v26 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)isPodcastRecordingAllowed
{
  v2 = [(TUCall *)self featureFlags];
  v3 = [v2 enhancedCallRecordingEnabled];

  return v3;
}

- (int)smartHoldingHoldDetectionAvailability
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [(TUCall *)self displayContext];
  v4 = [v3 contactName];

  if ([(TUCall *)self smartHoldingAvailability]!= 1)
  {
    v20 = 2;
    goto LABEL_19;
  }

  v5 = [(TUCall *)self configurationProvider];
  if ([v5 isHoldAssistDetectionEnabled])
  {
    v6 = [(TUCall *)self provider];
    if (![v6 isTelephonyProvider])
    {
      v20 = 2;
LABEL_17:

      goto LABEL_18;
    }

    v7 = [(TUCall *)self lowPowerModeEnabledBlock];
    if (v7[2]())
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

      v9 = [(TUCall *)self isEmergency];
      if (v4)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      if (v9)
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
    v19 = v4 == 0;
    v11 = [(TUCall *)self configurationProvider];
    v12 = [v11 isHoldAssistDetectionEnabled];
    v13 = [(TUCall *)self provider];
    v14 = [v13 isTelephonyProvider];
    v15 = [(TUCall *)self lowPowerModeEnabledBlock];
    v16 = v15[2]();
    *buf = 67110912;
    v22 = v20;
    v23 = 1024;
    v24 = v12;
    v25 = 1024;
    v26 = v14;
    v27 = 1024;
    v28 = v16;
    v29 = 1024;
    v30 = [(TUCall *)self smartHoldingAvailability];
    v31 = 1024;
    v32 = [(TUCall *)self isOutgoing];
    v33 = 1024;
    v34 = [(TUCall *)self isEmergency];
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
  v3 = [a1 handle];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Call was emergency, but handle %@ is not considered to be an emergency handle. Setting redial dialType to normal.", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end