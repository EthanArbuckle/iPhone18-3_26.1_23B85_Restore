@interface TUCallNotificationManager
- (BOOL)hasReceptionistSessionChangedFromOldSession:(id)a3 newSession:(id)a4;
- (BOOL)hasSmartHoldingSessionChangedFromOldSession:(id)a3 newSession:(id)a4;
- (TUCallNotificationManager)initWithNotificationCenter:(id)a3 wantsCallNotifications:(BOOL)a4;
- (void)_postNotificationName:(id)a3 object:(id)a4 userInfo:(id)a5;
- (void)answeringMachineStreamTokenChangedForCall:(id)a3;
- (void)anyRemoteSupportsRequestToScreenShareChangedForCall:(id)a3;
- (void)audioPropertiesChangedForCall:(id)a3;
- (void)bluetoothAudioFormatChangedForCall:(id)a3;
- (void)callGroupUUIDChangedForCall:(id)a3;
- (void)callRecordingAvailabilityChangedForCall:(id)a3;
- (void)callRecordingStateChanged:(id)a3;
- (void)callSubtypeChangedForCall:(id)a3;
- (void)callTranslationAvailabilityChangedForCall:(id)a3 newValue:(BOOL)a4;
- (void)callTranslationStateChanged:(id)a3;
- (void)cameraTypeChangedForCall:(id)a3;
- (void)conferenceParticipantCallsChangedForCallContainer:(id)a3 conferenceParticipantCalls:(id)a4;
- (void)connectedChangedForCall:(id)a3;
- (void)connectingChangedForCall:(id)a3;
- (void)conversationChangedForCall:(id)a3;
- (void)conversationGroupUUIDChangedForCall:(id)a3;
- (void)deferNotificationsUntilAfterPerformingBlock:(id)a3;
- (void)destinationIDChangedForCall:(id)a3;
- (void)displayContextChangedForCall:(id)a3;
- (void)endpointOnCurrentDeviceChangedForCall:(id)a3;
- (void)faceTimeIDStatusChangedForCall:(id)a3;
- (void)hardPauseDigitsStateChangedForCall:(id)a3;
- (void)hasBeenRedirectedChangedForCall:(id)a3;
- (void)hasSentInvitationChangedForCall:(id)a3;
- (void)isEmergencyChangedForCall:(id)a3;
- (void)isFailureExpectedChangedForCall:(id)a3;
- (void)isOnHoldChangedForCall:(id)a3;
- (void)isScreeningChangedForCall:(id)a3;
- (void)isSendingAudioChangedForCall:(id)a3;
- (void)isSendingVideoChangedForCall:(id)a3;
- (void)isSharePlayCapableChangedForCall:(id)a3;
- (void)isThirdPartyVideoChangedForCall:(id)a3;
- (void)isUplinkMutedChangedForCall:(id)a3;
- (void)isUsingBasebandChangedForCall:(id)a3;
- (void)localSenderIdentityAccountUUIDChangedForCall:(id)a3;
- (void)mediaPropertiesChangedForCall:(id)a3 remoteAspectRatioDidChange:(BOOL)a4 remoteCameraOrientationDidChange:(BOOL)a5;
- (void)mediaStalledChangedForCall:(id)a3;
- (void)mediaTokensChangedForCall:(id)a3;
- (void)mixesVoiceWithMediaChangedForCall:(id)a3;
- (void)modelChangedForCall:(id)a3;
- (void)nearbyModeChangedForCall:(id)a3;
- (void)needsManualInCallSoundsChangedForCall:(id)a3;
- (void)postNotificationsForCall:(id)a3 usingComparisonCall:(id)a4 afterUpdatesInBlock:(id)a5;
- (void)postNotificationsForCallContainer:(id)a3 afterUpdatesInBlock:(id)a4;
- (void)prefersExclusiveAccessToCellularNetworkChangedForCall:(id)a3;
- (void)providerContextChangedForCall:(id)a3;
- (void)receptionistMessageChangedForCall:(id)a3;
- (void)receptionistSessionChangedForCall:(id)a3;
- (void)remoteAspectRatioChangedForCall:(id)a3;
- (void)remoteCameraOrientationChangedForCall:(id)a3;
- (void)remoteScreenAspectRatioChangedForCall:(id)a3;
- (void)remoteScreenOrientationChangedForCall:(id)a3;
- (void)remoteUplinkMutedChangedForCall:(id)a3;
- (void)remoteVideoContentRectChangedForCall:(id)a3;
- (void)resolvedStatusChangedForCall:(id)a3;
- (void)screeningAnnouncementFinishedChangedForCall:(id)a3;
- (void)sharingScreenChangedForCall:(id)a3;
- (void)shouldSuppressRingtoneChangedForCall:(id)a3;
- (void)smartHoldingSessionChanged:(id)a3;
- (void)statusChangedForCall:(id)a3;
- (void)supportsDTMFUpdatesChangedForCall:(id)a3;
- (void)supportsEmergencyFallbackChangedForCall:(id)a3;
- (void)supportsTTYWithVoiceChangedForCall:(id)a3;
- (void)ttyTypeChangedForCall:(id)a3;
- (void)videoDegradedChangedForCall:(id)a3;
- (void)videoMirroredChangedForCall:(id)a3;
- (void)videoPausedChangedForCall:(id)a3;
- (void)videoStreamTokenChangedForCall:(id)a3;
- (void)wantsHoldMusicChangedForCall:(id)a3;
@end

@implementation TUCallNotificationManager

- (TUCallNotificationManager)initWithNotificationCenter:(id)a3 wantsCallNotifications:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TUCallNotificationManager;
  v8 = [(TUCallNotificationManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notificationCenter, a3);
    v9->_wantsCallNotifications = a4;
  }

  return v9;
}

- (void)postNotificationsForCall:(id)a3 usingComparisonCall:(id)a4 afterUpdatesInBlock:(id)a5
{
  v242 = a3;
  v8 = a4;
  v9 = a5;
  if (postNotificationsForCall_usingComparisonCall_afterUpdatesInBlock___pred_CGRectEqualToRectCoreGraphics != -1)
  {
    [TUCallNotificationManager postNotificationsForCall:usingComparisonCall:afterUpdatesInBlock:];
  }

  v186 = self;
  v241 = [v8 activeRemoteParticipant];
  v240 = [v8 callerNameFromNetwork];
  v154 = [v8 status];
  v184 = [v8 resolvedCallStatus];
  v160 = [v8 isConnecting];
  v144 = [v8 isConnected];
  v182 = [v8 wantsHoldMusic];
  v180 = [v8 isEndpointOnCurrentDevice];
  v174 = [v8 shouldSuppressRingtone];
  v164 = [v8 faceTimeIDStatus];
  v238 = [v8 hardPauseDigits];
  v162 = [v8 hardPauseDigitsState];
  v161 = [v8 needsManualInCallSounds];
  v159 = [v8 hasSentInvitation];
  v236 = [v8 imageURL];
  v158 = [v8 isUsingBaseband];
  v157 = [v8 isOnHold];
  v156 = [v8 isUplinkMuted];
  v155 = [v8 isSendingAudio];
  v153 = [v8 isSendingVideo];
  v151 = [v8 isSharingScreen];
  v150 = [v8 isThirdPartyVideo];
  v147 = [v8 isMediaStalled];
  v146 = [v8 isVideoDegraded];
  v145 = [v8 isVideoPaused];
  v152 = [v8 isVideoMirrored];
  v10 = [v8 handle];
  v234 = [v10 value];

  v232 = [v8 displayContext];
  v143 = [v8 isEmergency];
  v141 = [v8 isFailureExpected];
  v140 = [v8 supportsEmergencyFallback];
  v230 = [v8 audioCategory];
  v228 = [v8 audioMode];
  v139 = [v8 ttyType];
  v138 = [v8 supportsTTYWithVoice];
  v137 = [v8 bluetoothAudioFormat];
  [v8 remoteAspectRatio];
  v178 = v11;
  v176 = v12;
  [v8 remoteVideoContentRect];
  v172 = v13;
  v170 = v14;
  v168 = v15;
  v166 = v16;
  v135 = [v8 cameraType];
  v142 = [v8 remoteCameraOrientation];
  v134 = [v8 remoteScreenOrientation];
  [v8 remoteScreenAspectRatio];
  v149 = v17;
  v148 = v18;
  v133 = [v8 prefersExclusiveAccessToCellularNetwork];
  v132 = [v8 isRemoteUplinkMuted];
  v226 = [v8 localSenderIdentityAccountUUID];
  v224 = [v8 model];
  v222 = [v8 providerContext];
  v220 = [v8 remoteParticipantHandles];
  v128 = [v8 isVideo];
  v127 = [v8 videoStreamToken];
  v126 = [v8 answeringMachineStreamToken];
  v125 = [v8 isConversation];
  v218 = [v8 callGroupUUID];
  v124 = [v8 mixesVoiceWithMedia];
  v216 = [v8 screenShareAttributes];
  v130 = [v8 serviceStatus];
  v112 = [v8 transmissionMode];
  v110 = [v8 isReceivingTransmission];
  v109 = [v8 isSendingTransmission];
  v122 = [v8 isScreening];
  v121 = [v8 receptionistState];
  v214 = [v8 lastReceptionistMessage];
  v212 = [v8 receptionistSession];
  v118 = [v8 screeningAnnouncementHasFinished];
  v120 = [v8 hasBeenRedirected];
  v119 = [v8 supportsDTMFUpdates];
  v111 = [v8 callSubType];
  v210 = [v8 recordingSession];
  v117 = [v8 recordingAvailability];
  v136 = [v8 translationSession];
  v116 = [v8 translationAvailability];
  v131 = [v8 smartHoldingSession];
  v129 = [v8 tokens];
  v115 = [v8 isSharePlayCapable];
  v114 = [v8 anyRemoteSupportsRequestToScreenShare];
  v123 = [v8 conversationGroupUUID];
  v113 = [v8 nearbyMode] != 0;
  if (v9)
  {
    v9[2](v9);
  }

  v187 = v9;
  v209 = [v8 activeRemoteParticipant];
  v208 = [v8 callerNameFromNetwork];
  v107 = [v8 status];
  v105 = [v8 resolvedCallStatus];
  v108 = [v8 callSubType];
  v106 = [v8 isConnecting];
  v104 = [v8 isConnected];
  v103 = [v8 wantsHoldMusic];
  v102 = [v8 isEndpointOnCurrentDevice];
  v101 = [v8 shouldSuppressRingtone];
  v100 = [v8 faceTimeIDStatus];
  v206 = [v8 hardPauseDigits];
  v99 = [v8 hardPauseDigitsState];
  v98 = [v8 needsManualInCallSounds];
  v97 = [v8 hasSentInvitation];
  v204 = [v8 imageURL];
  v96 = [v8 isUsingBaseband];
  v95 = [v8 isOnHold];
  v93 = [v8 isUplinkMuted];
  v92 = [v8 isSendingAudio];
  v91 = [v8 isSendingVideo];
  v90 = [v8 isSharingScreen];
  v89 = [v8 isThirdPartyVideo];
  v88 = [v8 isMediaStalled];
  v87 = [v8 isVideoDegraded];
  v86 = [v8 isVideoPaused];
  v94 = [v8 isVideoMirrored];
  v19 = [v8 handle];
  v202 = [v19 value];

  v200 = [v8 displayContext];
  v84 = [v8 isEmergency];
  v83 = [v8 isFailureExpected];
  v82 = [v8 supportsEmergencyFallback];
  v198 = [v8 audioCategory];
  v196 = [v8 audioMode];
  v81 = [v8 ttyType];
  v80 = [v8 supportsTTYWithVoice];
  v79 = [v8 bluetoothAudioFormat];
  [v8 remoteAspectRatio];
  v21 = v20;
  v23 = v22;
  [v8 remoteVideoContentRect];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v78 = [v8 cameraType];
  v85 = [v8 remoteCameraOrientation];
  v77 = [v8 remoteScreenOrientation];
  [v8 remoteScreenAspectRatio];
  v33 = v32;
  v35 = v34;
  v75 = [v8 prefersExclusiveAccessToCellularNetwork];
  v74 = [v8 isRemoteUplinkMuted];
  v194 = [v8 localSenderIdentityAccountUUID];
  v192 = [v8 model];
  v190 = [v8 providerContext];
  v56 = [v8 remoteParticipantHandles];
  v71 = [v8 isVideo];
  v70 = [v8 videoStreamToken];
  v68 = [v8 answeringMachineStreamToken];
  v67 = [v8 isConversation];
  v55 = [v8 callGroupUUID];
  v65 = [v8 mixesVoiceWithMedia];
  v188 = [v8 screenShareAttributes];
  v73 = [v8 serviceStatus];
  v36 = [v8 transmissionMode];
  v37 = [v8 isReceivingTransmission];
  v38 = [v8 isSendingTransmission];
  v62 = [v8 isScreening];
  v59 = [v8 receptionistState];
  v54 = [v8 lastReceptionistMessage];
  v53 = [v8 receptionistSession];
  v57 = [v8 screeningAnnouncementHasFinished];
  v61 = [v8 hasBeenRedirected];
  v58 = [v8 supportsDTMFUpdates];
  v64 = [v8 isSharePlayCapable];
  v63 = [v8 anyRemoteSupportsRequestToScreenShare];
  v76 = [v8 conversationGroupUUID];
  v60 = [v8 nearbyMode] != 0;
  v72 = [v8 recordingSession];
  v39 = [v8 recordingAvailability];
  v69 = [v8 translationSession];
  LODWORD(v19) = [v8 translationAvailability];
  v66 = [v8 smartHoldingSession];
  v40 = [v8 tokens];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__TUCallNotificationManager_postNotificationsForCall_usingComparisonCall_afterUpdatesInBlock___block_invoke_2;
  aBlock[3] = &unk_1E7426A00;
  v319 = v154;
  v320 = v107;
  v321 = v184;
  v322 = v105;
  v287 = v112;
  v288 = v36;
  v337 = v110;
  v338 = v37;
  v339 = v109;
  v340 = v38;
  v341 = v160;
  v342 = v106;
  v343 = v144;
  v344 = v104;
  v345 = v182;
  v346 = v103;
  v347 = v180;
  v348 = v102;
  v349 = v174;
  v350 = v101;
  v323 = v164;
  v324 = v100;
  v325 = v162;
  v326 = v99;
  v351 = v161;
  v352 = v98;
  v353 = v159;
  v354 = v97;
  v355 = v158;
  v356 = v96;
  v357 = v157;
  v358 = v95;
  v359 = v156;
  v360 = v93;
  v361 = v155;
  v362 = v92;
  v363 = v153;
  v364 = v91;
  v365 = v151;
  v366 = v90;
  v367 = v150;
  v368 = v89;
  v369 = v147;
  v370 = v88;
  v371 = v146;
  v372 = v87;
  v373 = v145;
  v374 = v86;
  v375 = v143;
  v376 = v84;
  v377 = v141;
  v378 = v83;
  v379 = v140;
  v380 = v82;
  v327 = v111;
  v328 = v108;
  v329 = v139;
  v330 = v81;
  v381 = v138;
  v382 = v80;
  v289 = v137;
  v290 = v79;
  v291 = v135;
  v292 = v78;
  v383 = v152;
  v384 = v94;
  v293 = v134;
  v294 = v77;
  v385 = v133;
  v386 = v75;
  v387 = v132;
  v388 = v74;
  v389 = v128;
  v390 = v71;
  v299 = v127;
  v300 = v70;
  v301 = v126;
  v302 = v68;
  v391 = v125;
  v392 = v67;
  v393 = v124;
  v394 = v65;
  v395 = v122;
  v396 = v62;
  v331 = v121;
  v332 = v59;
  v397 = v118;
  v398 = v57;
  v315 = v142;
  v316 = v85;
  v399 = v61;
  v400 = v120;
  v401 = v58;
  v402 = v119;
  v317 = v130;
  v318 = v73;
  v333 = v117;
  v334 = v39;
  v335 = v116;
  v336 = v19;
  v403 = v115;
  v404 = v64;
  v405 = v114;
  v406 = v63;
  v407 = v113;
  v408 = v60;
  aBlock[4] = v186;
  v244 = v242;
  v245 = v241;
  v246 = v209;
  v247 = v240;
  v248 = v208;
  v249 = v238;
  v250 = v206;
  v251 = v236;
  v252 = v204;
  v253 = v234;
  v254 = v202;
  v255 = v232;
  v256 = v200;
  v257 = v230;
  v258 = v198;
  v259 = v228;
  v260 = v196;
  v295 = v149;
  v296 = v148;
  v297 = v33;
  v298 = v35;
  v261 = v226;
  v262 = v194;
  v263 = v224;
  v264 = v192;
  v265 = v222;
  v266 = v190;
  v267 = v220;
  v268 = v56;
  v269 = v218;
  v270 = v55;
  v271 = v214;
  v272 = v54;
  v273 = v212;
  v274 = v53;
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
  v275 = v216;
  v276 = v188;
  v277 = v210;
  v278 = v72;
  v279 = v136;
  v280 = v69;
  v281 = v131;
  v282 = v66;
  v283 = v129;
  v41 = v40;
  v284 = v40;
  v285 = v123;
  v286 = v76;
  v185 = v76;
  v183 = v123;
  v181 = v41;
  v179 = v129;
  v177 = v66;
  v175 = v131;
  v173 = v69;
  v171 = v136;
  v169 = v72;
  v211 = v210;
  v189 = v188;
  v217 = v216;
  v167 = v53;
  v42 = v212;
  v213 = v54;
  v215 = v214;
  v165 = v55;
  v219 = v218;
  v163 = v56;
  v221 = v220;
  v191 = v190;
  v223 = v222;
  v193 = v192;
  v225 = v224;
  v195 = v194;
  v227 = v226;
  v197 = v196;
  v229 = v228;
  v199 = v198;
  v231 = v230;
  v201 = v200;
  v233 = v232;
  v203 = v202;
  v235 = v234;
  v205 = v204;
  v237 = v236;
  v207 = v206;
  v239 = v238;
  v43 = v208;
  v44 = v240;
  v45 = v209;
  v46 = v241;
  v47 = v242;
  v48 = _Block_copy(aBlock);
  v49 = [(TUCallNotificationManager *)v186 deferredNotificationBlocks];

  if (v49)
  {
    v50 = [(TUCallNotificationManager *)v186 deferredNotificationBlocks];
    v51 = v42;
    v52 = _Block_copy(v48);
    [v50 addObject:v52];

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

- (void)postNotificationsForCallContainer:(id)a3 afterUpdatesInBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 conferenceParticipantCalls];
  if (v7)
  {
    v7[2](v7);
  }

  v9 = [v6 conferenceParticipantCalls];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __83__TUCallNotificationManager_postNotificationsForCallContainer_afterUpdatesInBlock___block_invoke;
  v20 = &unk_1E7425188;
  v21 = v8;
  v22 = v9;
  v23 = self;
  v24 = v6;
  v10 = v6;
  v11 = v9;
  v12 = v8;
  v13 = _Block_copy(&v17);
  v14 = [(TUCallNotificationManager *)self deferredNotificationBlocks:v17];

  if (v14)
  {
    v15 = [(TUCallNotificationManager *)self deferredNotificationBlocks];
    v16 = _Block_copy(v13);
    [v15 addObject:v16];
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

- (void)deferNotificationsUntilAfterPerformingBlock:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(TUCallNotificationManager *)self deferredNotificationBlocks];

  if (v6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"deferredNotificationBlocks was not nil! This means that somehow calls to deferNotificationsUntilAfterPerformingBlock have been nested"];
    NSLog(&cfstr_TuassertionFai.isa, v7);

    if (_TUAssertShouldCrashApplication())
    {
      v8 = [(TUCallNotificationManager *)self deferredNotificationBlocks];

      if (v8)
      {
        [(TUCallNotificationManager *)a2 deferNotificationsUntilAfterPerformingBlock:?];
      }
    }
  }

  v9 = [MEMORY[0x1E695DF70] array];
  [(TUCallNotificationManager *)self setDeferredNotificationBlocks:v9];

  v5[2](v5);
  v10 = [(TUCallNotificationManager *)self deferredNotificationBlocks];
  [(TUCallNotificationManager *)self setDeferredNotificationBlocks:0];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v10;
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

- (void)_postNotificationName:(id)a3 object:(id)a4 userInfo:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = TUDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Posting %@ with object %@ userInfo %@", &v14, 0x20u);
  }

  v12 = [(TUCallNotificationManager *)self notificationCenter];
  [v12 postNotificationName:v8 object:v9 userInfo:v10];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)statusChangedForCall:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "statusChangedForCall %@", &v9, 0xCu);
  }

  if ([v4 isVideo])
  {
    [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterVideoCallStatusChangedNotification" object:v4];
  }

  else
  {
    [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterCallStatusChangedInternalNotification" object:v4];
    v6 = @"TUCallCenterCallStatusChangedNotification";
    if ([v4 isPTT])
    {
      v7 = @"TUBargeCallStatusChangedNotification";

      v6 = v7;
    }

    [(TUCallNotificationManager *)self _postNotificationName:v6 object:v4];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)resolvedStatusChangedForCall:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "resolvedStatusChangedForCall %@", &v9, 0xCu);
  }

  if ([v4 isVideo])
  {
    [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterVideoCallResolvedStatusChangedNotification" object:v4];
  }

  else
  {
    [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterCallStatusChangedInternalNotification" object:v4];
    v6 = @"TUCallCenterResolvedCallStatusChangedNotification";
    if ([v4 isPTT])
    {
      v7 = @"TUBargeCallResolvedStatusChangedNotification";

      v6 = v7;
    }

    [(TUCallNotificationManager *)self _postNotificationName:v6 object:v4];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)connectingChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "connectingChangedForCall %@", &v7, 0xCu);
  }

  if ([v4 isConnecting])
  {
    [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterCallStartedConnectingNotification" object:v4];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)connectedChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "connectedChangedForCall %@", &v7, 0xCu);
  }

  if ([v4 isConnected])
  {
    [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterCallConnectedNotification" object:v4];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)wantsHoldMusicChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "wantsHoldMusicChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterCallWantsHoldMusicChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)endpointOnCurrentDeviceChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "endpointOnCurrentDeviceChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterCallContinuityStateChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)shouldSuppressRingtoneChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "shouldSuppressRingtoneChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallShouldSuppressRingingChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)faceTimeIDStatusChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "faceTimeIDStatusChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallFaceTimeIDStatusChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)hardPauseDigitsStateChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "hardPauseDigitsStateChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallHardPauseDigitsStateChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)needsManualInCallSoundsChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "needsManualInCallSoundsChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallNeedsManualInCallSoundsChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)hasSentInvitationChangedForCall:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "hasSentInvitationChangedForCall %@", &v9, 0xCu);
  }

  v6 = [v4 isVideo];
  v7 = &TUCallCenterVideoCallInvitationSentNotification;
  if (!v6)
  {
    v7 = &TUCallCenterCallInvitationSentNotification;
  }

  [(TUCallNotificationManager *)self _postNotificationName:*v7 object:v4];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)isUsingBasebandChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isUsingBasebandChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallIsUsingBasebandChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isOnHoldChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isOnHoldChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallIsOnHoldChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isUplinkMutedChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isUplinkMutedChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallIsUplinkMutedChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)destinationIDChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "destinationIDChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterCallerIDChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)displayContextChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "displayContextChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallDisplayContextChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isEmergencyChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isEmergencyChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterIsEmergencyChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isFailureExpectedChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isFailureExpectedChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterIsFailureExpectedChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)supportsEmergencyFallbackChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "supportsEmergencyFallbackChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterSupportsEmergencyFallbackChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isSendingAudioChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isSendingAudioChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallIsSendingAudioChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isSendingVideoChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isSendingVideoChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallIsSendingVideoChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)sharingScreenChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "sharingScreenChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallIsSharingScreenChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isThirdPartyVideoChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isThirdPartyVideoChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallIsThirdPartyVideoChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)mediaStalledChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "mediaStalledChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterVideoCallMediaStalledChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)videoDegradedChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "videoDegradedChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterVideoCallVideoQualityChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)videoPausedChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "videoPausedChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterVideoCallPauseChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)audioPropertiesChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "audioPropertiesChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallAudioPropertiesChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)callSubtypeChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "callSubtypeChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallSubtypeChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)ttyTypeChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "ttyTypeChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallTTYTypeChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)bluetoothAudioFormatChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "bluetoothAudioFormatChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallBluetoothAudioFormatChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteUplinkMutedChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "remoteUplinkMutedChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallRemoteUplinkMutedChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)localSenderIdentityAccountUUIDChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "localSenderIdentityAccountUUIDChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallLocalSenderIdentityAccountUUIDChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)supportsTTYWithVoiceChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "supportsTTYWithVoiceChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallSupportsTTYWithVoiceChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteAspectRatioChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "remoteAspectRatioChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallRemoteAspectRatioChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteVideoContentRectChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "remoteVideoContentRectChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallRemoteVideoContentRectChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)cameraTypeChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "cameraTypeChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCameraTypeChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)videoMirroredChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "videoMirroredChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUVideoMirroredChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteCameraOrientationChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "remoteCameraOrientationChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallRemoteCameraOrientationChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteScreenOrientationChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "remoteScreenOrientationChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallRemoteScreenOrientationChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)remoteScreenAspectRatioChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "remoteScreenAspectRatioChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallRemoteScreenAspectRatioChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)providerContextChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "providerContextChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallProviderContextChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)mediaPropertiesChangedForCall:(id)a3 remoteAspectRatioDidChange:(BOOL)a4 remoteCameraOrientationDidChange:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = TUDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v8;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "mediaPropertiesChangedForCall %@", &v16, 0xCu);
  }

  v10 = [MEMORY[0x1E695DF90] dictionary];
  if (v6)
  {
    v11 = MEMORY[0x1E696B098];
    [v8 remoteAspectRatio];
    v12 = [v11 valueWithSize:?];
    [v10 setObject:v12 forKeyedSubscript:@"TUCallCenterVideoCallCameraAspectRatioKey"];
  }

  if (v5)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "remoteCameraOrientation")}];
    [v10 setObject:v13 forKeyedSubscript:@"TUCallCenterVideoCallCameraOrientationKey"];
  }

  v14 = [v10 copy];
  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterVideoCallMediaPropertiesChangedNotification" object:v8 userInfo:v14];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)videoStreamTokenChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "videoStreamTokenChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallVideoStreamTokenChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)answeringMachineStreamTokenChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "answeringMachineStreamTokenChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallAnsewringMachineStreamTokenChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)conversationChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "conversationChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallConversationChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isSharePlayCapableChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isSharePlayCapableChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallIsSharePlayCapableChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)anyRemoteSupportsRequestToScreenShareChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "anyRemoteSupportsRequestToScreenShareChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallAnyRemoteSupportsRequestToScreenShareChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)conversationGroupUUIDChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "conversationGroupUUIDChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallConversationGroupUUIDChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)nearbyModeChangedForCall:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "nearbyModeChangedForCall %@", &v8, 0xCu);
  }

  v6 = TUDefaultLog();
  if (os_signpost_enabled(v6))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_1956FD000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TUCallNotificationManager", "nearbyModeChangedForCall", &v8, 2u);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallNearbyModeChangedNotification" object:v4];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)callGroupUUIDChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "callGroupUUIDChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallGroupUUIDChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)mixesVoiceWithMediaChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "mixesVoiceWithMediaChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallMixesVoiceWithMediaChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)prefersExclusiveAccessToCellularNetworkChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "prefersExclusiveAccessToCellularNetworkChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallPrefersExclusiveAccessToCellularNetworkChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isScreeningChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isScreeningChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterIsScreeningChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)receptionistMessageChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "receptionistMesssageChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterLastReceptionistMessageChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)receptionistSessionChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "receptionistSessionChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterReceptionistSessionChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)screeningAnnouncementFinishedChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "isScreeningAnnouncementFinishedChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallScreeningDidFinishAnnouncementNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)hasBeenRedirectedChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "hasBeenRedirectedChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallHasBeenRedirectedChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)supportsDTMFUpdatesChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "supportsDTMFUpdatesChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallSupportsDTMFUpdatesChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)callRecordingStateChanged:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 recordingSession];
    v8 = 138412546;
    v9 = v4;
    v10 = 1024;
    v11 = [v6 recordingState];
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "callRecordingStateChangedForCall %@, changed to %d", &v8, 0x12u);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallRecordingStateChangedNotification" object:v4];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)callRecordingAvailabilityChangedForCall:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 1024;
    v10 = [v4 recordingAvailability];
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "callRecordingAvailabilityChangedForCall %@, changed to %d", &v7, 0x12u);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallRecordingAvailabilityChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)callTranslationStateChanged:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 translationSession];
    v8[0] = 67109378;
    v8[1] = [v6 translationState];
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "callTranslationStateChanged to %d for call %@", v8, 0x12u);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallTranslationStateChangedNotification" object:v4];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)callTranslationAvailabilityChangedForCall:(id)a3 newValue:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = TUDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "callTranslationAvailabilityChangedForCall %@, changed to %d", &v9, 0x12u);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallTranslationAvailabilityChangedNotification" object:v6];
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasReceptionistSessionChangedFromOldSession:(id)a3 newSession:(id)a4
{
  if (a3 && a4)
  {
    return [a3 isEqual:a4] ^ 1;
  }

  else
  {
    return (a3 | a4) != 0;
  }
}

- (BOOL)hasSmartHoldingSessionChangedFromOldSession:(id)a3 newSession:(id)a4
{
  if (a3 && a4)
  {
    return [a3 isEqual:a4] ^ 1;
  }

  else
  {
    return (a3 | a4) != 0;
  }
}

- (void)smartHoldingSessionChanged:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 smartHoldingSession];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "smartHoldingSessionChanged to %@ forCall %@", &v8, 0x16u);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallSmartHoldingSessionChangedNotification" object:v4];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)mediaTokensChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "mediaTokensChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallMediaTokensChangedNotification" object:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)modelChangedForCall:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "modelChangedForCall %@", &v7, 0xCu);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallModelChangedNotification" object:v4];
  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterModelStateChangedNotification" object:0];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)conferenceParticipantCallsChangedForCallContainer:(id)a3 conferenceParticipantCalls:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "conferenceParticipantCallsChangedForCallContainer %@ conferenceParticipantCalls %@", &v10, 0x16u);
  }

  [(TUCallNotificationManager *)self _postNotificationName:@"TUCallCenterConferenceParticipantsChangedNotification" object:v7];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)deferNotificationsUntilAfterPerformingBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TUCallNotificationManager.m" lineNumber:642 description:@"deferredNotificationBlocks was not nil! This means that somehow calls to deferNotificationsUntilAfterPerformingBlock have been nested"];
}

@end