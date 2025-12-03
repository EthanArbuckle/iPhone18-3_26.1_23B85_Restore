@interface TUCallNotificationManager
- (BOOL)hasReceptionistSessionChangedFromOldSession:(id)session newSession:(id)newSession;
- (BOOL)hasSmartHoldingSessionChangedFromOldSession:(id)session newSession:(id)newSession;
- (TUCallNotificationManager)initWithNotificationCenter:(id)center wantsCallNotifications:(BOOL)notifications;
- (void)_postNotificationName:(id)name object:(id)object userInfo:(id)info;
- (void)answeringMachineStreamTokenChangedForCall:(id)call;
- (void)anyRemoteSupportsRequestToScreenShareChangedForCall:(id)call;
- (void)audioPropertiesChangedForCall:(id)call;
- (void)bluetoothAudioFormatChangedForCall:(id)call;
- (void)callGroupUUIDChangedForCall:(id)call;
- (void)callRecordingAvailabilityChangedForCall:(id)call;
- (void)callRecordingStateChanged:(id)changed;
- (void)callSubtypeChangedForCall:(id)call;
- (void)callTranslationAvailabilityChangedForCall:(id)call newValue:(BOOL)value;
- (void)callTranslationStateChanged:(id)changed;
- (void)cameraTypeChangedForCall:(id)call;
- (void)conferenceParticipantCallsChangedForCallContainer:(id)container conferenceParticipantCalls:(id)calls;
- (void)connectedChangedForCall:(id)call;
- (void)connectingChangedForCall:(id)call;
- (void)conversationChangedForCall:(id)call;
- (void)conversationGroupUUIDChangedForCall:(id)call;
- (void)deferNotificationsUntilAfterPerformingBlock:(id)block;
- (void)destinationIDChangedForCall:(id)call;
- (void)displayContextChangedForCall:(id)call;
- (void)endpointOnCurrentDeviceChangedForCall:(id)call;
- (void)faceTimeIDStatusChangedForCall:(id)call;
- (void)hardPauseDigitsStateChangedForCall:(id)call;
- (void)hasBeenRedirectedChangedForCall:(id)call;
- (void)hasSentInvitationChangedForCall:(id)call;
- (void)isEmergencyChangedForCall:(id)call;
- (void)isFailureExpectedChangedForCall:(id)call;
- (void)isOnHoldChangedForCall:(id)call;
- (void)isScreeningChangedForCall:(id)call;
- (void)isSendingAudioChangedForCall:(id)call;
- (void)isSendingVideoChangedForCall:(id)call;
- (void)isSharePlayCapableChangedForCall:(id)call;
- (void)isThirdPartyVideoChangedForCall:(id)call;
- (void)isUplinkMutedChangedForCall:(id)call;
- (void)isUsingBasebandChangedForCall:(id)call;
- (void)localSenderIdentityAccountUUIDChangedForCall:(id)call;
- (void)mediaPropertiesChangedForCall:(id)call remoteAspectRatioDidChange:(BOOL)change remoteCameraOrientationDidChange:(BOOL)didChange;
- (void)mediaStalledChangedForCall:(id)call;
- (void)mediaTokensChangedForCall:(id)call;
- (void)mixesVoiceWithMediaChangedForCall:(id)call;
- (void)modelChangedForCall:(id)call;
- (void)nearbyModeChangedForCall:(id)call;
- (void)needsManualInCallSoundsChangedForCall:(id)call;
- (void)postNotificationsForCall:(id)call usingComparisonCall:(id)comparisonCall afterUpdatesInBlock:(id)block;
- (void)postNotificationsForCallContainer:(id)container afterUpdatesInBlock:(id)block;
- (void)prefersExclusiveAccessToCellularNetworkChangedForCall:(id)call;
- (void)providerContextChangedForCall:(id)call;
- (void)receptionistMessageChangedForCall:(id)call;
- (void)receptionistSessionChangedForCall:(id)call;
- (void)remoteAspectRatioChangedForCall:(id)call;
- (void)remoteCameraOrientationChangedForCall:(id)call;
- (void)remoteScreenAspectRatioChangedForCall:(id)call;
- (void)remoteScreenOrientationChangedForCall:(id)call;
- (void)remoteUplinkMutedChangedForCall:(id)call;
- (void)remoteVideoContentRectChangedForCall:(id)call;
- (void)resolvedStatusChangedForCall:(id)call;
- (void)screeningAnnouncementFinishedChangedForCall:(id)call;
- (void)sharingScreenChangedForCall:(id)call;
- (void)shouldSuppressRingtoneChangedForCall:(id)call;
- (void)smartHoldingSessionChanged:(id)changed;
- (void)statusChangedForCall:(id)call;
- (void)supportsDTMFUpdatesChangedForCall:(id)call;
- (void)supportsEmergencyFallbackChangedForCall:(id)call;
- (void)supportsTTYWithVoiceChangedForCall:(id)call;
- (void)ttyTypeChangedForCall:(id)call;
- (void)videoDegradedChangedForCall:(id)call;
- (void)videoMirroredChangedForCall:(id)call;
- (void)videoPausedChangedForCall:(id)call;
- (void)videoStreamTokenChangedForCall:(id)call;
- (void)wantsHoldMusicChangedForCall:(id)call;
@end

@implementation TUCallNotificationManager

- (TUCallNotificationManager)initWithNotificationCenter:(id)center wantsCallNotifications:(BOOL)notifications
{
  centerCopy = center;
  v11.receiver = self;
  v11.super_class = TUCallNotificationManager;
  v8 = [(TUCallNotificationManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notificationCenter, center);
    v9->_wantsCallNotifications = notifications;
  }

  return v9;
}

- (void)postNotificationsForCall:(id)call usingComparisonCall:(id)comparisonCall afterUpdatesInBlock:(id)block
{
  callCopy = call;
  comparisonCallCopy = comparisonCall;
  blockCopy = block;
  if (postNotificationsForCall_usingComparisonCall_afterUpdatesInBlock___pred_CGRectEqualToRectCoreGraphics != -1)
  {
    [TUCallNotificationManager postNotificationsForCall:usingComparisonCall:afterUpdatesInBlock:];
  }

  selfCopy = self;
  activeRemoteParticipant = [comparisonCallCopy activeRemoteParticipant];
  callerNameFromNetwork = [comparisonCallCopy callerNameFromNetwork];
  status = [comparisonCallCopy status];
  resolvedCallStatus = [comparisonCallCopy resolvedCallStatus];
  isConnecting = [comparisonCallCopy isConnecting];
  isConnected = [comparisonCallCopy isConnected];
  wantsHoldMusic = [comparisonCallCopy wantsHoldMusic];
  isEndpointOnCurrentDevice = [comparisonCallCopy isEndpointOnCurrentDevice];
  shouldSuppressRingtone = [comparisonCallCopy shouldSuppressRingtone];
  faceTimeIDStatus = [comparisonCallCopy faceTimeIDStatus];
  hardPauseDigits = [comparisonCallCopy hardPauseDigits];
  hardPauseDigitsState = [comparisonCallCopy hardPauseDigitsState];
  needsManualInCallSounds = [comparisonCallCopy needsManualInCallSounds];
  hasSentInvitation = [comparisonCallCopy hasSentInvitation];
  imageURL = [comparisonCallCopy imageURL];
  isUsingBaseband = [comparisonCallCopy isUsingBaseband];
  isOnHold = [comparisonCallCopy isOnHold];
  isUplinkMuted = [comparisonCallCopy isUplinkMuted];
  isSendingAudio = [comparisonCallCopy isSendingAudio];
  isSendingVideo = [comparisonCallCopy isSendingVideo];
  isSharingScreen = [comparisonCallCopy isSharingScreen];
  isThirdPartyVideo = [comparisonCallCopy isThirdPartyVideo];
  isMediaStalled = [comparisonCallCopy isMediaStalled];
  isVideoDegraded = [comparisonCallCopy isVideoDegraded];
  isVideoPaused = [comparisonCallCopy isVideoPaused];
  isVideoMirrored = [comparisonCallCopy isVideoMirrored];
  handle = [comparisonCallCopy handle];
  value = [handle value];

  displayContext = [comparisonCallCopy displayContext];
  isEmergency = [comparisonCallCopy isEmergency];
  isFailureExpected = [comparisonCallCopy isFailureExpected];
  supportsEmergencyFallback = [comparisonCallCopy supportsEmergencyFallback];
  audioCategory = [comparisonCallCopy audioCategory];
  audioMode = [comparisonCallCopy audioMode];
  ttyType = [comparisonCallCopy ttyType];
  supportsTTYWithVoice = [comparisonCallCopy supportsTTYWithVoice];
  bluetoothAudioFormat = [comparisonCallCopy bluetoothAudioFormat];
  [comparisonCallCopy remoteAspectRatio];
  v178 = v11;
  v176 = v12;
  [comparisonCallCopy remoteVideoContentRect];
  v172 = v13;
  v170 = v14;
  v168 = v15;
  v166 = v16;
  cameraType = [comparisonCallCopy cameraType];
  remoteCameraOrientation = [comparisonCallCopy remoteCameraOrientation];
  remoteScreenOrientation = [comparisonCallCopy remoteScreenOrientation];
  [comparisonCallCopy remoteScreenAspectRatio];
  v149 = v17;
  v148 = v18;
  prefersExclusiveAccessToCellularNetwork = [comparisonCallCopy prefersExclusiveAccessToCellularNetwork];
  isRemoteUplinkMuted = [comparisonCallCopy isRemoteUplinkMuted];
  localSenderIdentityAccountUUID = [comparisonCallCopy localSenderIdentityAccountUUID];
  model = [comparisonCallCopy model];
  providerContext = [comparisonCallCopy providerContext];
  remoteParticipantHandles = [comparisonCallCopy remoteParticipantHandles];
  isVideo = [comparisonCallCopy isVideo];
  videoStreamToken = [comparisonCallCopy videoStreamToken];
  answeringMachineStreamToken = [comparisonCallCopy answeringMachineStreamToken];
  isConversation = [comparisonCallCopy isConversation];
  callGroupUUID = [comparisonCallCopy callGroupUUID];
  mixesVoiceWithMedia = [comparisonCallCopy mixesVoiceWithMedia];
  screenShareAttributes = [comparisonCallCopy screenShareAttributes];
  serviceStatus = [comparisonCallCopy serviceStatus];
  transmissionMode = [comparisonCallCopy transmissionMode];
  isReceivingTransmission = [comparisonCallCopy isReceivingTransmission];
  isSendingTransmission = [comparisonCallCopy isSendingTransmission];
  isScreening = [comparisonCallCopy isScreening];
  receptionistState = [comparisonCallCopy receptionistState];
  lastReceptionistMessage = [comparisonCallCopy lastReceptionistMessage];
  receptionistSession = [comparisonCallCopy receptionistSession];
  screeningAnnouncementHasFinished = [comparisonCallCopy screeningAnnouncementHasFinished];
  hasBeenRedirected = [comparisonCallCopy hasBeenRedirected];
  supportsDTMFUpdates = [comparisonCallCopy supportsDTMFUpdates];
  callSubType = [comparisonCallCopy callSubType];
  recordingSession = [comparisonCallCopy recordingSession];
  recordingAvailability = [comparisonCallCopy recordingAvailability];
  translationSession = [comparisonCallCopy translationSession];
  translationAvailability = [comparisonCallCopy translationAvailability];
  smartHoldingSession = [comparisonCallCopy smartHoldingSession];
  tokens = [comparisonCallCopy tokens];
  isSharePlayCapable = [comparisonCallCopy isSharePlayCapable];
  anyRemoteSupportsRequestToScreenShare = [comparisonCallCopy anyRemoteSupportsRequestToScreenShare];
  conversationGroupUUID = [comparisonCallCopy conversationGroupUUID];
  v113 = [comparisonCallCopy nearbyMode] != 0;
  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

  v187 = blockCopy;
  activeRemoteParticipant2 = [comparisonCallCopy activeRemoteParticipant];
  callerNameFromNetwork2 = [comparisonCallCopy callerNameFromNetwork];
  status2 = [comparisonCallCopy status];
  resolvedCallStatus2 = [comparisonCallCopy resolvedCallStatus];
  callSubType2 = [comparisonCallCopy callSubType];
  isConnecting2 = [comparisonCallCopy isConnecting];
  isConnected2 = [comparisonCallCopy isConnected];
  wantsHoldMusic2 = [comparisonCallCopy wantsHoldMusic];
  isEndpointOnCurrentDevice2 = [comparisonCallCopy isEndpointOnCurrentDevice];
  shouldSuppressRingtone2 = [comparisonCallCopy shouldSuppressRingtone];
  faceTimeIDStatus2 = [comparisonCallCopy faceTimeIDStatus];
  hardPauseDigits2 = [comparisonCallCopy hardPauseDigits];
  hardPauseDigitsState2 = [comparisonCallCopy hardPauseDigitsState];
  needsManualInCallSounds2 = [comparisonCallCopy needsManualInCallSounds];
  hasSentInvitation2 = [comparisonCallCopy hasSentInvitation];
  imageURL2 = [comparisonCallCopy imageURL];
  isUsingBaseband2 = [comparisonCallCopy isUsingBaseband];
  isOnHold2 = [comparisonCallCopy isOnHold];
  isUplinkMuted2 = [comparisonCallCopy isUplinkMuted];
  isSendingAudio2 = [comparisonCallCopy isSendingAudio];
  isSendingVideo2 = [comparisonCallCopy isSendingVideo];
  isSharingScreen2 = [comparisonCallCopy isSharingScreen];
  isThirdPartyVideo2 = [comparisonCallCopy isThirdPartyVideo];
  isMediaStalled2 = [comparisonCallCopy isMediaStalled];
  isVideoDegraded2 = [comparisonCallCopy isVideoDegraded];
  isVideoPaused2 = [comparisonCallCopy isVideoPaused];
  isVideoMirrored2 = [comparisonCallCopy isVideoMirrored];
  handle2 = [comparisonCallCopy handle];
  value2 = [handle2 value];

  displayContext2 = [comparisonCallCopy displayContext];
  isEmergency2 = [comparisonCallCopy isEmergency];
  isFailureExpected2 = [comparisonCallCopy isFailureExpected];
  supportsEmergencyFallback2 = [comparisonCallCopy supportsEmergencyFallback];
  audioCategory2 = [comparisonCallCopy audioCategory];
  audioMode2 = [comparisonCallCopy audioMode];
  ttyType2 = [comparisonCallCopy ttyType];
  supportsTTYWithVoice2 = [comparisonCallCopy supportsTTYWithVoice];
  bluetoothAudioFormat2 = [comparisonCallCopy bluetoothAudioFormat];
  [comparisonCallCopy remoteAspectRatio];
  v21 = v20;
  v23 = v22;
  [comparisonCallCopy remoteVideoContentRect];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  cameraType2 = [comparisonCallCopy cameraType];
  remoteCameraOrientation2 = [comparisonCallCopy remoteCameraOrientation];
  remoteScreenOrientation2 = [comparisonCallCopy remoteScreenOrientation];
  [comparisonCallCopy remoteScreenAspectRatio];
  v33 = v32;
  v35 = v34;
  prefersExclusiveAccessToCellularNetwork2 = [comparisonCallCopy prefersExclusiveAccessToCellularNetwork];
  isRemoteUplinkMuted2 = [comparisonCallCopy isRemoteUplinkMuted];
  localSenderIdentityAccountUUID2 = [comparisonCallCopy localSenderIdentityAccountUUID];
  model2 = [comparisonCallCopy model];
  providerContext2 = [comparisonCallCopy providerContext];
  remoteParticipantHandles2 = [comparisonCallCopy remoteParticipantHandles];
  isVideo2 = [comparisonCallCopy isVideo];
  videoStreamToken2 = [comparisonCallCopy videoStreamToken];
  answeringMachineStreamToken2 = [comparisonCallCopy answeringMachineStreamToken];
  isConversation2 = [comparisonCallCopy isConversation];
  callGroupUUID2 = [comparisonCallCopy callGroupUUID];
  mixesVoiceWithMedia2 = [comparisonCallCopy mixesVoiceWithMedia];
  screenShareAttributes2 = [comparisonCallCopy screenShareAttributes];
  serviceStatus2 = [comparisonCallCopy serviceStatus];
  transmissionMode2 = [comparisonCallCopy transmissionMode];
  isReceivingTransmission2 = [comparisonCallCopy isReceivingTransmission];
  isSendingTransmission2 = [comparisonCallCopy isSendingTransmission];
  isScreening2 = [comparisonCallCopy isScreening];
  receptionistState2 = [comparisonCallCopy receptionistState];
  lastReceptionistMessage2 = [comparisonCallCopy lastReceptionistMessage];
  receptionistSession2 = [comparisonCallCopy receptionistSession];
  screeningAnnouncementHasFinished2 = [comparisonCallCopy screeningAnnouncementHasFinished];
  hasBeenRedirected2 = [comparisonCallCopy hasBeenRedirected];
  supportsDTMFUpdates2 = [comparisonCallCopy supportsDTMFUpdates];
  isSharePlayCapable2 = [comparisonCallCopy isSharePlayCapable];
  anyRemoteSupportsRequestToScreenShare2 = [comparisonCallCopy anyRemoteSupportsRequestToScreenShare];
  conversationGroupUUID2 = [comparisonCallCopy conversationGroupUUID];
  v60 = [comparisonCallCopy nearbyMode] != 0;
  recordingSession2 = [comparisonCallCopy recordingSession];
  recordingAvailability2 = [comparisonCallCopy recordingAvailability];
  translationSession2 = [comparisonCallCopy translationSession];
  LODWORD(handle2) = [comparisonCallCopy translationAvailability];
  smartHoldingSession2 = [comparisonCallCopy smartHoldingSession];
  tokens2 = [comparisonCallCopy tokens];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__TUCallNotificationManager_postNotificationsForCall_usingComparisonCall_afterUpdatesInBlock___block_invoke_2;
  aBlock[3] = &unk_1E7426A00;
  v319 = status;
  v320 = status2;
  v321 = resolvedCallStatus;
  v322 = resolvedCallStatus2;
  v287 = transmissionMode;
  v288 = transmissionMode2;
  v337 = isReceivingTransmission;
  v338 = isReceivingTransmission2;
  v339 = isSendingTransmission;
  v340 = isSendingTransmission2;
  v341 = isConnecting;
  v342 = isConnecting2;
  v343 = isConnected;
  v344 = isConnected2;
  v345 = wantsHoldMusic;
  v346 = wantsHoldMusic2;
  v347 = isEndpointOnCurrentDevice;
  v348 = isEndpointOnCurrentDevice2;
  v349 = shouldSuppressRingtone;
  v350 = shouldSuppressRingtone2;
  v323 = faceTimeIDStatus;
  v324 = faceTimeIDStatus2;
  v325 = hardPauseDigitsState;
  v326 = hardPauseDigitsState2;
  v351 = needsManualInCallSounds;
  v352 = needsManualInCallSounds2;
  v353 = hasSentInvitation;
  v354 = hasSentInvitation2;
  v355 = isUsingBaseband;
  v356 = isUsingBaseband2;
  v357 = isOnHold;
  v358 = isOnHold2;
  v359 = isUplinkMuted;
  v360 = isUplinkMuted2;
  v361 = isSendingAudio;
  v362 = isSendingAudio2;
  v363 = isSendingVideo;
  v364 = isSendingVideo2;
  v365 = isSharingScreen;
  v366 = isSharingScreen2;
  v367 = isThirdPartyVideo;
  v368 = isThirdPartyVideo2;
  v369 = isMediaStalled;
  v370 = isMediaStalled2;
  v371 = isVideoDegraded;
  v372 = isVideoDegraded2;
  v373 = isVideoPaused;
  v374 = isVideoPaused2;
  v375 = isEmergency;
  v376 = isEmergency2;
  v377 = isFailureExpected;
  v378 = isFailureExpected2;
  v379 = supportsEmergencyFallback;
  v380 = supportsEmergencyFallback2;
  v327 = callSubType;
  v328 = callSubType2;
  v329 = ttyType;
  v330 = ttyType2;
  v381 = supportsTTYWithVoice;
  v382 = supportsTTYWithVoice2;
  v289 = bluetoothAudioFormat;
  v290 = bluetoothAudioFormat2;
  v291 = cameraType;
  v292 = cameraType2;
  v383 = isVideoMirrored;
  v384 = isVideoMirrored2;
  v293 = remoteScreenOrientation;
  v294 = remoteScreenOrientation2;
  v385 = prefersExclusiveAccessToCellularNetwork;
  v386 = prefersExclusiveAccessToCellularNetwork2;
  v387 = isRemoteUplinkMuted;
  v388 = isRemoteUplinkMuted2;
  v389 = isVideo;
  v390 = isVideo2;
  v299 = videoStreamToken;
  v300 = videoStreamToken2;
  v301 = answeringMachineStreamToken;
  v302 = answeringMachineStreamToken2;
  v391 = isConversation;
  v392 = isConversation2;
  v393 = mixesVoiceWithMedia;
  v394 = mixesVoiceWithMedia2;
  v395 = isScreening;
  v396 = isScreening2;
  v331 = receptionistState;
  v332 = receptionistState2;
  v397 = screeningAnnouncementHasFinished;
  v398 = screeningAnnouncementHasFinished2;
  v315 = remoteCameraOrientation;
  v316 = remoteCameraOrientation2;
  v399 = hasBeenRedirected2;
  v400 = hasBeenRedirected;
  v401 = supportsDTMFUpdates2;
  v402 = supportsDTMFUpdates;
  v317 = serviceStatus;
  v318 = serviceStatus2;
  v333 = recordingAvailability;
  v334 = recordingAvailability2;
  v335 = translationAvailability;
  v336 = handle2;
  v403 = isSharePlayCapable;
  v404 = isSharePlayCapable2;
  v405 = anyRemoteSupportsRequestToScreenShare;
  v406 = anyRemoteSupportsRequestToScreenShare2;
  v407 = v113;
  v408 = v60;
  aBlock[4] = selfCopy;
  v244 = callCopy;
  v245 = activeRemoteParticipant;
  v246 = activeRemoteParticipant2;
  v247 = callerNameFromNetwork;
  v248 = callerNameFromNetwork2;
  v249 = hardPauseDigits;
  v250 = hardPauseDigits2;
  v251 = imageURL;
  v252 = imageURL2;
  v253 = value;
  v254 = value2;
  v255 = displayContext;
  v256 = displayContext2;
  v257 = audioCategory;
  v258 = audioCategory2;
  v259 = audioMode;
  v260 = audioMode2;
  v295 = v149;
  v296 = v148;
  v297 = v33;
  v298 = v35;
  v261 = localSenderIdentityAccountUUID;
  v262 = localSenderIdentityAccountUUID2;
  v263 = model;
  v264 = model2;
  v265 = providerContext;
  v266 = providerContext2;
  v267 = remoteParticipantHandles;
  v268 = remoteParticipantHandles2;
  v269 = callGroupUUID;
  v270 = callGroupUUID2;
  v271 = lastReceptionistMessage;
  v272 = lastReceptionistMessage2;
  v273 = receptionistSession;
  v274 = receptionistSession2;
  v303 = v178;
  v304 = v176;
  v305 = v21;
  v306 = v23;
  v307 = v172;
  v308 = v170;
  v309 = v168;
  v310 = v166;
  v311 = v25;
  v312 = v27;
  v313 = v29;
  v314 = v31;
  v275 = screenShareAttributes;
  v276 = screenShareAttributes2;
  v277 = recordingSession;
  v278 = recordingSession2;
  v279 = translationSession;
  v280 = translationSession2;
  v281 = smartHoldingSession;
  v282 = smartHoldingSession2;
  v283 = tokens;
  v41 = tokens2;
  v284 = tokens2;
  v285 = conversationGroupUUID;
  v286 = conversationGroupUUID2;
  v185 = conversationGroupUUID2;
  v183 = conversationGroupUUID;
  v181 = v41;
  v179 = tokens;
  v177 = smartHoldingSession2;
  v175 = smartHoldingSession;
  v173 = translationSession2;
  v171 = translationSession;
  v169 = recordingSession2;
  v211 = recordingSession;
  v189 = screenShareAttributes2;
  v217 = screenShareAttributes;
  v167 = receptionistSession2;
  v42 = receptionistSession;
  v213 = lastReceptionistMessage2;
  v215 = lastReceptionistMessage;
  v165 = callGroupUUID2;
  v219 = callGroupUUID;
  v163 = remoteParticipantHandles2;
  v221 = remoteParticipantHandles;
  v191 = providerContext2;
  v223 = providerContext;
  v193 = model2;
  v225 = model;
  v195 = localSenderIdentityAccountUUID2;
  v227 = localSenderIdentityAccountUUID;
  v197 = audioMode2;
  v229 = audioMode;
  v199 = audioCategory2;
  v231 = audioCategory;
  v201 = displayContext2;
  v233 = displayContext;
  v203 = value2;
  v235 = value;
  v205 = imageURL2;
  v237 = imageURL;
  v207 = hardPauseDigits2;
  v239 = hardPauseDigits;
  v43 = callerNameFromNetwork2;
  v44 = callerNameFromNetwork;
  v45 = activeRemoteParticipant2;
  v46 = activeRemoteParticipant;
  v47 = callCopy;
  v48 = _Block_copy(aBlock);
  deferredNotificationBlocks = [(TUCallNotificationManager *)selfCopy deferredNotificationBlocks];

  if (deferredNotificationBlocks)
  {
    deferredNotificationBlocks2 = [(TUCallNotificationManager *)selfCopy deferredNotificationBlocks];
    v51 = v42;
    v52 = _Block_copy(v48);
    [deferredNotificationBlocks2 addObject:v52];

    v42 = v51;
  }

  else
  {
    v48[2](v48);
  }
}

uint64_t (*__94__TUCallNotificationManager_postNotificationsForCall_usingComparisonCall_afterUpdatesInBlock___block_invoke())(void, double, double, double, double, double, double, double, double)
{
  result = CUTWeakLinkSymbol();
  postNotificationsForCall_usingComparisonCall_afterUpdatesInBlock___CGRectEqualToRect = result;
  return result;
}

uint64_t __94__TUCallNotificationManager_postNotificationsForCall_usingComparisonCall_afterUpdatesInBlock___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) wantsCallNotifications];
  if (!result)
  {
    return result;
  }

  v3 = [*(a1 + 40) isPTT];
  v4 = *(a1 + 640);
  v5 = *(a1 + 644);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  if (v4 != v5)
  {
    [*(a1 + 32) statusChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 648) != *(a1 + 652))
  {
    [*(a1 + 32) resolvedStatusChangedForCall:*(a1 + 40)];
  }

  if ((TUObjectsAreEqualOrNil(*(a1 + 48), *(a1 + 56)) & 1) == 0)
  {
    v7 = @"TUCallActiveRemoteParticipantChangedNotification";
    if ([*(a1 + 40) isPTT])
    {
      v8 = @"TUBargeCallActiveRemoteParticipantChangedNotification";
      if (v6)
      {
        v8 = 0;
      }

      v9 = v8;

      v7 = v9;
    }

    if ([(__CFString *)v7 length])
    {
      [*(a1 + 32) _postNotificationName:v7 object:*(a1 + 40)];
    }
  }

  if ((TUObjectsAreEqualOrNil(*(a1 + 64), *(a1 + 72)) & 1) == 0)
  {
    if ([*(a1 + 40) isPTT])
    {
      v10 = @"TUBargeCallNameChangedNotification";
      if (v6)
      {
        v10 = 0;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if ([(__CFString *)v11 length])
    {
      [*(a1 + 32) _postNotificationName:v11 object:*(a1 + 40)];
    }
  }

  if (*(a1 + 384) != *(a1 + 392))
  {
    v12 = @"TUCallTransmissionModeChangedNotification";
    if ([*(a1 + 40) isPTT])
    {
      v13 = @"TUBargeCallTransmissionModeChangedNotification";
      if (v6)
      {
        v13 = 0;
      }

      v14 = v13;

      v12 = v14;
    }

    if ([(__CFString *)v12 length])
    {
      [*(a1 + 32) _postNotificationName:v12 object:*(a1 + 40)];
    }
  }

  if ([*(a1 + 40) isActive] && (*(a1 + 712) != *(a1 + 713) || *(a1 + 714) != *(a1 + 715)))
  {
    v15 = @"TUCallTransmissionStateChangedNotification";
    if ([*(a1 + 40) isPTT])
    {
      v16 = @"TUBargeCallTransmissionStateChangedNotification";
      if (v6)
      {
        v16 = 0;
      }

      v17 = v16;

      v15 = v17;
    }

    if ([(__CFString *)v15 length])
    {
      [*(a1 + 32) _postNotificationName:v15 object:*(a1 + 40)];
    }
  }

  if (*(a1 + 716) != *(a1 + 717))
  {
    [*(a1 + 32) connectingChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 718) != *(a1 + 719))
  {
    [*(a1 + 32) connectedChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 720) != *(a1 + 721))
  {
    [*(a1 + 32) wantsHoldMusicChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 722) != *(a1 + 723))
  {
    [*(a1 + 32) endpointOnCurrentDeviceChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 724) != *(a1 + 725))
  {
    [*(a1 + 32) shouldSuppressRingtoneChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 656) != *(a1 + 660))
  {
    [*(a1 + 32) faceTimeIDStatusChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 664) != *(a1 + 668) || (TUStringsAreEqualOrNil(*(a1 + 80), *(a1 + 88)) & 1) == 0)
  {
    [*(a1 + 32) hardPauseDigitsStateChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 726) != *(a1 + 727))
  {
    [*(a1 + 32) needsManualInCallSoundsChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 728) != *(a1 + 729))
  {
    [*(a1 + 32) hasSentInvitationChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 730) != *(a1 + 731))
  {
    [*(a1 + 32) isUsingBasebandChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 732) != *(a1 + 733))
  {
    [*(a1 + 32) isOnHoldChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 734) != *(a1 + 735))
  {
    [*(a1 + 32) isUplinkMutedChangedForCall:*(a1 + 40)];
  }

  if ((TUObjectsAreEqualOrNil(*(a1 + 96), *(a1 + 104)) & 1) == 0)
  {
    v18 = @"TUCallImageURLChangedNotification";
    if ([*(a1 + 40) isPTT])
    {
      v19 = @"TUBargeCallImageURLChangedNotification";
      if (v6)
      {
        v19 = 0;
      }

      v20 = v19;

      v18 = v20;
    }

    if ([(__CFString *)v18 length])
    {
      [*(a1 + 32) _postNotificationName:v18 object:*(a1 + 40)];
    }
  }

  if (*(a1 + 736) != *(a1 + 737))
  {
    [*(a1 + 32) isSendingAudioChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 738) != *(a1 + 739))
  {
    [*(a1 + 32) isSendingVideoChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 740) != *(a1 + 741))
  {
    [*(a1 + 32) sharingScreenChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 742) != *(a1 + 743))
  {
    [*(a1 + 32) isThirdPartyVideoChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 744) != *(a1 + 745))
  {
    [*(a1 + 32) mediaStalledChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 746) != *(a1 + 747))
  {
    [*(a1 + 32) videoDegradedChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 748) != *(a1 + 749))
  {
    [*(a1 + 32) videoPausedChangedForCall:*(a1 + 40)];
  }

  if ((TUStringsAreEqualOrNil(*(a1 + 112), *(a1 + 120)) & 1) == 0)
  {
    [*(a1 + 32) destinationIDChangedForCall:*(a1 + 40)];
  }

  if ((TUObjectsAreEqualOrNil(*(a1 + 128), *(a1 + 136)) & 1) == 0)
  {
    [*(a1 + 32) displayContextChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 750) != *(a1 + 751))
  {
    [*(a1 + 32) isEmergencyChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 752) != *(a1 + 753))
  {
    [*(a1 + 32) isFailureExpectedChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 754) != *(a1 + 755))
  {
    [*(a1 + 32) supportsEmergencyFallbackChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 672) != *(a1 + 676))
  {
    [*(a1 + 32) callSubtypeChangedForCall:*(a1 + 40)];
  }

  if (!TUStringsAreEqualOrNil(*(a1 + 144), *(a1 + 152)) || !TUStringsAreEqualOrNil(*(a1 + 160), *(a1 + 168)) || *(a1 + 672) != *(a1 + 676))
  {
    [*(a1 + 32) audioPropertiesChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 680) != *(a1 + 684))
  {
    [*(a1 + 32) ttyTypeChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 756) != *(a1 + 757))
  {
    [*(a1 + 32) supportsTTYWithVoiceChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 400) != *(a1 + 408))
  {
    [*(a1 + 32) bluetoothAudioFormatChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 416) != *(a1 + 424))
  {
    [*(a1 + 32) cameraTypeChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 758) != *(a1 + 759))
  {
    [*(a1 + 32) videoMirroredChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 432) != *(a1 + 440))
  {
    [*(a1 + 32) remoteScreenOrientationChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 448) != *(a1 + 464) || *(a1 + 456) != *(a1 + 472))
  {
    [*(a1 + 32) remoteScreenAspectRatioChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 760) != *(a1 + 761))
  {
    [*(a1 + 32) prefersExclusiveAccessToCellularNetworkChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 762) != *(a1 + 763))
  {
    [*(a1 + 32) remoteUplinkMutedChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 176) != *(a1 + 184))
  {
    [*(a1 + 32) localSenderIdentityAccountUUIDChangedForCall:*(a1 + 40)];
  }

  if ((TUObjectsAreEqualOrNil(*(a1 + 192), *(a1 + 200)) & 1) == 0)
  {
    [*(a1 + 32) modelChangedForCall:*(a1 + 40)];
  }

  if ((TUObjectsAreEqualOrNil(*(a1 + 208), *(a1 + 216)) & 1) == 0)
  {
    [*(a1 + 32) providerContextChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 764) == 1 && (*(a1 + 765) & 1) == 0)
  {
    [*(a1 + 32) _postNotificationName:@"TUCallDowngradedToAudioNotification" object:*(a1 + 40)];
    if (*(a1 + 764))
    {
      goto LABEL_138;
    }
  }

  else if (*(a1 + 764))
  {
    goto LABEL_138;
  }

  if (*(a1 + 765))
  {
    [*(a1 + 32) _postNotificationName:@"TUCallUpgradedToVideoNotification" object:*(a1 + 40)];
  }

LABEL_138:
  if ((TUObjectsAreEqualOrNil(*(a1 + 224), *(a1 + 232)) & 1) == 0)
  {
    v21 = @"TUCallRemoteParticipantHandlesChangedNotification";
    if ([*(a1 + 40) isPTT])
    {
      v22 = @"TUBargeCallRemoteParticipantHandlesChangedNotification";
      if (v6)
      {
        v22 = 0;
      }

      v23 = v22;

      v21 = v23;
    }

    if ([(__CFString *)v21 length])
    {
      [*(a1 + 32) _postNotificationName:v21 object:*(a1 + 40)];
    }
  }

  if (*(a1 + 480) != *(a1 + 488))
  {
    [*(a1 + 32) videoStreamTokenChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 496) != *(a1 + 504))
  {
    [*(a1 + 32) answeringMachineStreamTokenChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 766) != *(a1 + 767))
  {
    [*(a1 + 32) conversationChangedForCall:*(a1 + 40)];
  }

  if ((TUObjectsAreEqualOrNil(*(a1 + 240), *(a1 + 248)) & 1) == 0)
  {
    [*(a1 + 32) callGroupUUIDChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 768) != *(a1 + 769))
  {
    [*(a1 + 32) mixesVoiceWithMediaChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 770) != *(a1 + 771))
  {
    [*(a1 + 32) isScreeningChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 688) != *(a1 + 692))
  {
    [*(a1 + 32) receptionistStateChangedForCall:*(a1 + 40) oldValue:?];
  }

  if (*(a1 + 256) != 0 && ([*(a1 + 256) isEqualToString:?] & 1) == 0)
  {
    [*(a1 + 32) receptionistMessageChangedForCall:*(a1 + 40)];
  }

  v24 = [*(a1 + 32) hasReceptionistSessionChangedFromOldSession:*(a1 + 272) newSession:*(a1 + 280)];
  if (v24)
  {
    v24 = [*(a1 + 32) receptionistSessionChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 772) != *(a1 + 773))
  {
    v24 = [*(a1 + 32) screeningAnnouncementFinishedChangedForCall:*(a1 + 40)];
  }

  v25 = *(a1 + 520) != *(a1 + 536) || *(a1 + 512) != *(a1 + 528);
  if (v25)
  {
    v24 = [*(a1 + 32) remoteAspectRatioChangedForCall:*(a1 + 40)];
  }

  v26 = postNotificationsForCall_usingComparisonCall_afterUpdatesInBlock___CGRectEqualToRect(v24, *(a1 + 544), *(a1 + 552), *(a1 + 560), *(a1 + 568), *(a1 + 576), *(a1 + 584), *(a1 + 592), *(a1 + 600));
  if ((v26 & 1) == 0)
  {
    [*(a1 + 32) remoteVideoContentRectChangedForCall:*(a1 + 40)];
  }

  v27 = *(a1 + 608);
  v28 = *(a1 + 616);
  if (v27 != v28)
  {
    [*(a1 + 32) remoteCameraOrientationChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 774) != *(a1 + 775))
  {
    [*(a1 + 32) hasBeenRedirectedChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 776) != *(a1 + 777))
  {
    [*(a1 + 32) supportsDTMFUpdatesChangedForCall:*(a1 + 40)];
  }

  if ((TUObjectsAreEqualOrNil(*(a1 + 288), *(a1 + 296)) & 1) == 0)
  {
    [*(a1 + 32) _postNotificationName:@"TUCallScreenShareAttributesChangedNotification" object:*(a1 + 40)];
  }

  if (*(a1 + 624) != *(a1 + 632))
  {
    v29 = @"TUCallServiceStatusChangedNotification";
    if ([*(a1 + 40) isPTT])
    {
      v30 = @"TUBargeCallServiceStatusChangedNotification";
      if (v6)
      {
        v30 = 0;
      }

      v31 = v30;

      v29 = v31;
    }

    if ([(__CFString *)v29 length])
    {
      [*(a1 + 32) _postNotificationName:v29 object:*(a1 + 40)];
    }
  }

  if (v25 | v26 ^ 1u || v27 != v28)
  {
    [*(a1 + 32) mediaPropertiesChangedForCall:*(a1 + 40) remoteAspectRatioDidChange:v25 remoteCameraOrientationDidChange:v27 != v28];
  }

  v32 = *(a1 + 304);
  if ((v32 == 0) != (*(a1 + 312) == 0) || (v33 = [v32 recordingState], v33 != objc_msgSend(*(a1 + 312), "recordingState")))
  {
    [*(a1 + 32) callRecordingStateChanged:*(a1 + 40)];
  }

  if (*(a1 + 696) != *(a1 + 700))
  {
    [*(a1 + 32) callRecordingAvailabilityChangedForCall:*(a1 + 40)];
  }

  v34 = *(a1 + 320);
  if ((v34 == 0) != (*(a1 + 328) == 0))
  {
    goto LABEL_204;
  }

  v35 = [v34 translationState];
  if (v35 != [*(a1 + 328) translationState])
  {
    goto LABEL_204;
  }

  v36 = [*(a1 + 320) translationLinks];
  if (v36 != [*(a1 + 328) translationLinks])
  {
    goto LABEL_204;
  }

  v37 = [*(a1 + 320) localLocale];
  v38 = [*(a1 + 328) localLocale];
  v39 = v38;
  if (v37 != v38)
  {

LABEL_204:
    [*(a1 + 32) callTranslationStateChanged:*(a1 + 40)];
    goto LABEL_205;
  }

  v40 = [*(a1 + 320) remoteLocale];
  v41 = [*(a1 + 328) remoteLocale];

  if (v40 != v41)
  {
    goto LABEL_204;
  }

LABEL_205:
  v42 = *(a1 + 708);
  if (*(a1 + 704) != v42)
  {
    [*(a1 + 32) callTranslationAvailabilityChangedForCall:*(a1 + 40) newValue:v42 != 0];
  }

  if ([*(a1 + 32) hasSmartHoldingSessionChangedFromOldSession:*(a1 + 336) newSession:*(a1 + 344)])
  {
    [*(a1 + 32) smartHoldingSessionChanged:*(a1 + 40)];
  }

  result = TUObjectsAreEqualOrNil(*(a1 + 352), *(a1 + 360));
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) mediaTokensChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 778) != *(a1 + 779))
  {
    result = [*(a1 + 32) isSharePlayCapableChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 780) != *(a1 + 781))
  {
    result = [*(a1 + 32) anyRemoteSupportsRequestToScreenShareChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 368) != *(a1 + 376))
  {
    result = [*(a1 + 32) conversationGroupUUIDChangedForCall:*(a1 + 40)];
  }

  if (*(a1 + 782) != *(a1 + 783))
  {
    v43 = *(a1 + 32);
    v44 = *(a1 + 40);

    return [v43 nearbyModeChangedForCall:v44];
  }

  return result;
}

- (void)postNotificationsForCallContainer:(id)container afterUpdatesInBlock:(id)block
{
  containerCopy = container;
  blockCopy = block;
  conferenceParticipantCalls = [containerCopy conferenceParticipantCalls];
  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

  conferenceParticipantCalls2 = [containerCopy conferenceParticipantCalls];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __83__TUCallNotificationManager_postNotificationsForCallContainer_afterUpdatesInBlock___block_invoke;
  v20 = &unk_1E7425188;
  v21 = conferenceParticipantCalls;
  v22 = conferenceParticipantCalls2;
  selfCopy = self;
  v24 = containerCopy;
  v10 = containerCopy;
  v11 = conferenceParticipantCalls2;
  v12 = conferenceParticipantCalls;
  v13 = _Block_copy(&v17);
  v14 = [(TUCallNotificationManager *)self deferredNotificationBlocks:v17];

  if (v14)
  {
    deferredNotificationBlocks = [(TUCallNotificationManager *)self deferredNotificationBlocks];
    v16 = _Block_copy(v13);
    [deferredNotificationBlocks addObject:v16];
  }

  else
  {
    v13[2](v13);
  }
}

uint64_t __83__TUCallNotificationManager_postNotificationsForCallContainer_afterUpdatesInBlock___block_invoke(void *a1)
{
  result = a1[4];
  if (result != a1[5])
  {
    result = [result isEqualToArray:?];
    if ((result & 1) == 0)
    {
      v3 = a1[6];
      v4 = a1[7];
      v5 = a1[5];

      return [v3 conferenceParticipantCallsChangedForCallContainer:v4 conferenceParticipantCalls:v5];
    }
  }

  return result;
}

- (void)deferNotificationsUntilAfterPerformingBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  deferredNotificationBlocks = [(TUCallNotificationManager *)self deferredNotificationBlocks];

  if (deferredNotificationBlocks)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"deferredNotificationBlocks was not nil! This means that somehow calls to deferNotificationsUntilAfterPerformingBlock have been nested"];
    NSLog(&cfstr_TuassertionFai.isa, v7);

    if (_TUAssertShouldCrashApplication())
    {
      deferredNotificationBlocks2 = [(TUCallNotificationManager *)self deferredNotificationBlocks];

      if (deferredNotificationBlocks2)
      {
        [(TUCallNotificationManager *)a2 deferNotificationsUntilAfterPerformingBlock:?];
      }
    }
  }

  array = [MEMORY[0x1E695DF70] array];
  [(TUCallNotificationManager *)self setDeferredNotificationBlocks:array];

  blockCopy[2](blockCopy);
  deferredNotificationBlocks3 = [(TUCallNotificationManager *)self deferredNotificationBlocks];
  [(TUCallNotificationManager *)self setDeferredNotificationBlocks:0];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = deferredNotificationBlocks3;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        (*(*(*(&v17 + 1) + 8 * v15++) + 16))();
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_postNotificationName:(id)name object:(id)object userInfo:(id)info
{
  v20 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  objectCopy = object;
  infoCopy = info;
  v11 = TUDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = nameCopy;
    v16 = 2112;
    v17 = objectCopy;
    v18 = 2112;
    v19 = infoCopy;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Posting %@ with object %@ userInfo %@", &v14, 0x20u);
  }

  notificationCenter = [(TUCallNotificationManager *)self notificationCenter];
  [notificationCenter postNotificationName:nameCopy object:objectCopy userInfo:infoCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)statusChangedForCall:(id)call
{
  v11 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "statusChangedForCall %@", &v9, 0xCu);
  }

  if ([callCopy isVideo])
  {
    [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterVideoCallStatusChangedNotification" object:callCopy];
  }

  else
  {
    [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterCallStatusChangedInternalNotification" object:callCopy];
    v6 = @"TUCallCenterCallStatusChangedNotification";
    if ([callCopy isPTT])
    {
      v7 = @"TUBargeCallStatusChangedNotification";

      v6 = v7;
    }

    [(TUCallNotificationManager *)self _postNotificationName:v6 object:callCopy];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)resolvedStatusChangedForCall:(id)call
{
  v11 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "resolvedStatusChangedForCall %@", &v9, 0xCu);
  }

  if ([callCopy isVideo])
  {
    [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterVideoCallResolvedStatusChangedNotification" object:callCopy];
  }

  else
  {
    [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterCallStatusChangedInternalNotification" object:callCopy];
    v6 = @"TUCallCenterResolvedCallStatusChangedNotification";
    if ([callCopy isPTT])
    {
      v7 = @"TUBargeCallResolvedStatusChangedNotification";

      v6 = v7;
    }

    [(TUCallNotificationManager *)self _postNotificationName:v6 object:callCopy];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)connectingChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "connectingChangedForCall %@", &v7, 0xCu);
  }

  if ([callCopy isConnecting])
  {
    [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterCallStartedConnectingNotification" object:callCopy];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)connectedChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "connectedChangedForCall %@", &v7, 0xCu);
  }

  if ([callCopy isConnected])
  {
    [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterCallConnectedNotification" object:callCopy];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)wantsHoldMusicChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "wantsHoldMusicChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterCallWantsHoldMusicChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)endpointOnCurrentDeviceChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "endpointOnCurrentDeviceChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterCallContinuityStateChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)shouldSuppressRingtoneChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "shouldSuppressRingtoneChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallShouldSuppressRingingChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)faceTimeIDStatusChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "faceTimeIDStatusChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallFaceTimeIDStatusChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)hardPauseDigitsStateChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "hardPauseDigitsStateChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallHardPauseDigitsStateChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)needsManualInCallSoundsChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "needsManualInCallSoundsChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallNeedsManualInCallSoundsChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)hasSentInvitationChangedForCall:(id)call
{
  v11 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "hasSentInvitationChangedForCall %@", &v9, 0xCu);
  }

  isVideo = [callCopy isVideo];
  v7 = &TUCallCenterVideoCallInvitationSentNotification;
  if (!isVideo)
  {
    v7 = &TUCallCenterCallInvitationSentNotification;
  }

  [(TUCallNotificationManager *)self _postNotificationName:*v7 object:callCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)isUsingBasebandChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isUsingBasebandChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallIsUsingBasebandChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isOnHoldChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isOnHoldChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallIsOnHoldChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isUplinkMutedChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isUplinkMutedChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallIsUplinkMutedChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)destinationIDChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "destinationIDChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterCallerIDChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)displayContextChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "displayContextChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallDisplayContextChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isEmergencyChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isEmergencyChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterIsEmergencyChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isFailureExpectedChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isFailureExpectedChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterIsFailureExpectedChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)supportsEmergencyFallbackChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "supportsEmergencyFallbackChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterSupportsEmergencyFallbackChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isSendingAudioChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isSendingAudioChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallIsSendingAudioChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isSendingVideoChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isSendingVideoChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallIsSendingVideoChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)sharingScreenChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "sharingScreenChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallIsSharingScreenChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isThirdPartyVideoChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isThirdPartyVideoChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallIsThirdPartyVideoChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)mediaStalledChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "mediaStalledChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterVideoCallMediaStalledChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)videoDegradedChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "videoDegradedChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterVideoCallVideoQualityChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)videoPausedChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "videoPausedChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterVideoCallPauseChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)audioPropertiesChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "audioPropertiesChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallAudioPropertiesChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)callSubtypeChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "callSubtypeChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallSubtypeChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)ttyTypeChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "ttyTypeChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallTTYTypeChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)bluetoothAudioFormatChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "bluetoothAudioFormatChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallBluetoothAudioFormatChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteUplinkMutedChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "remoteUplinkMutedChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallRemoteUplinkMutedChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)localSenderIdentityAccountUUIDChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "localSenderIdentityAccountUUIDChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallLocalSenderIdentityAccountUUIDChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)supportsTTYWithVoiceChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "supportsTTYWithVoiceChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallSupportsTTYWithVoiceChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteAspectRatioChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "remoteAspectRatioChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallRemoteAspectRatioChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteVideoContentRectChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "remoteVideoContentRectChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallRemoteVideoContentRectChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)cameraTypeChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "cameraTypeChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCameraTypeChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)videoMirroredChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "videoMirroredChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUVideoMirroredChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteCameraOrientationChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "remoteCameraOrientationChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallRemoteCameraOrientationChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteScreenOrientationChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "remoteScreenOrientationChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallRemoteScreenOrientationChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteScreenAspectRatioChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "remoteScreenAspectRatioChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallRemoteScreenAspectRatioChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)providerContextChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "providerContextChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallProviderContextChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)mediaPropertiesChangedForCall:(id)call remoteAspectRatioDidChange:(BOOL)change remoteCameraOrientationDidChange:(BOOL)didChange
{
  didChangeCopy = didChange;
  changeCopy = change;
  v18 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v9 = TUDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = callCopy;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "mediaPropertiesChangedForCall %@", &v16, 0xCu);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (changeCopy)
  {
    v11 = MEMORY[0x1E696B098];
    [callCopy remoteAspectRatio];
    v12 = [v11 valueWithSize:?];
    [dictionary setObject:v12 forKeyedSubscript:@"TUCallCenterVideoCallCameraAspectRatioKey"];
  }

  if (didChangeCopy)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(callCopy, "remoteCameraOrientation")}];
    [dictionary setObject:v13 forKeyedSubscript:@"TUCallCenterVideoCallCameraOrientationKey"];
  }

  v14 = [dictionary copy];
  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterVideoCallMediaPropertiesChangedNotification" object:callCopy userInfo:v14];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)videoStreamTokenChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "videoStreamTokenChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallVideoStreamTokenChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)answeringMachineStreamTokenChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "answeringMachineStreamTokenChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallAnsewringMachineStreamTokenChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)conversationChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "conversationChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallConversationChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isSharePlayCapableChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isSharePlayCapableChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallIsSharePlayCapableChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)anyRemoteSupportsRequestToScreenShareChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "anyRemoteSupportsRequestToScreenShareChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallAnyRemoteSupportsRequestToScreenShareChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)conversationGroupUUIDChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "conversationGroupUUIDChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallConversationGroupUUIDChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)nearbyModeChangedForCall:(id)call
{
  v10 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "nearbyModeChangedForCall %@", &v8, 0xCu);
  }

  v6 = TUDefaultLog();
  if (os_signpost_enabled(v6))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_1956FD000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TUCallNotificationManager", "nearbyModeChangedForCall", &v8, 2u);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallNearbyModeChangedNotification" object:callCopy];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)callGroupUUIDChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "callGroupUUIDChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallGroupUUIDChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)mixesVoiceWithMediaChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "mixesVoiceWithMediaChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallMixesVoiceWithMediaChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)prefersExclusiveAccessToCellularNetworkChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "prefersExclusiveAccessToCellularNetworkChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallPrefersExclusiveAccessToCellularNetworkChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isScreeningChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isScreeningChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterIsScreeningChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)receptionistMessageChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "receptionistMesssageChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterLastReceptionistMessageChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)receptionistSessionChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "receptionistSessionChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterReceptionistSessionChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)screeningAnnouncementFinishedChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isScreeningAnnouncementFinishedChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallScreeningDidFinishAnnouncementNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)hasBeenRedirectedChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "hasBeenRedirectedChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallHasBeenRedirectedChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)supportsDTMFUpdatesChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "supportsDTMFUpdatesChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallSupportsDTMFUpdatesChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)callRecordingStateChanged:(id)changed
{
  v12 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    recordingSession = [changedCopy recordingSession];
    v8 = 138412546;
    v9 = changedCopy;
    v10 = 1024;
    recordingState = [recordingSession recordingState];
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "callRecordingStateChangedForCall %@, changed to %d", &v8, 0x12u);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallRecordingStateChangedNotification" object:changedCopy];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)callRecordingAvailabilityChangedForCall:(id)call
{
  v11 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = callCopy;
    v9 = 1024;
    recordingAvailability = [callCopy recordingAvailability];
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "callRecordingAvailabilityChangedForCall %@, changed to %d", &v7, 0x12u);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallRecordingAvailabilityChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)callTranslationStateChanged:(id)changed
{
  v11 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    translationSession = [changedCopy translationSession];
    v8[0] = 67109378;
    v8[1] = [translationSession translationState];
    v9 = 2112;
    v10 = changedCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "callTranslationStateChanged to %d for call %@", v8, 0x12u);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallTranslationStateChangedNotification" object:changedCopy];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)callTranslationAvailabilityChangedForCall:(id)call newValue:(BOOL)value
{
  valueCopy = value;
  v13 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v7 = TUDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = callCopy;
    v11 = 1024;
    v12 = valueCopy;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "callTranslationAvailabilityChangedForCall %@, changed to %d", &v9, 0x12u);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallTranslationAvailabilityChangedNotification" object:callCopy];
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasReceptionistSessionChangedFromOldSession:(id)session newSession:(id)newSession
{
  if (session && newSession)
  {
    return [session isEqual:newSession] ^ 1;
  }

  else
  {
    return (session | newSession) != 0;
  }
}

- (BOOL)hasSmartHoldingSessionChangedFromOldSession:(id)session newSession:(id)newSession
{
  if (session && newSession)
  {
    return [session isEqual:newSession] ^ 1;
  }

  else
  {
    return (session | newSession) != 0;
  }
}

- (void)smartHoldingSessionChanged:(id)changed
{
  v12 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    smartHoldingSession = [changedCopy smartHoldingSession];
    v8 = 138412546;
    v9 = smartHoldingSession;
    v10 = 2112;
    v11 = changedCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "smartHoldingSessionChanged to %@ forCall %@", &v8, 0x16u);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallSmartHoldingSessionChangedNotification" object:changedCopy];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)mediaTokensChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "mediaTokensChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallMediaTokensChangedNotification" object:callCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)modelChangedForCall:(id)call
{
  v9 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "modelChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallModelChangedNotification" object:callCopy];
  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterModelStateChangedNotification" object:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)conferenceParticipantCallsChangedForCallContainer:(id)container conferenceParticipantCalls:(id)calls
{
  v14 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  callsCopy = calls;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = containerCopy;
    v12 = 2112;
    v13 = callsCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "conferenceParticipantCallsChangedForCallContainer %@ conferenceParticipantCalls %@", &v10, 0x16u);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterConferenceParticipantsChangedNotification" object:callsCopy];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)deferNotificationsUntilAfterPerformingBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TUCallNotificationManager.m" lineNumber:642 description:@"deferredNotificationBlocks was not nil! This means that somehow calls to deferNotificationsUntilAfterPerformingBlock have been nested"];
}

@end