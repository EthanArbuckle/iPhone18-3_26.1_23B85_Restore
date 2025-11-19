void sub_1000EE4B4(uint64_t a1)
{
  v1 = [*(a1 + 32) sessionMessenger];
  [v1 prepareConnectedSessionsToEnd];
}

void sub_1000EE628(uint64_t a1)
{
  v1 = [*(a1 + 32) sessionMessenger];
  [v1 endEndingSessions];
}

void sub_1000EE720(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"CSDRelayConferenceConnectionDidReceiveDataNotificationDataKey"];

  v4 = [[CSDMessagingRelayMessage alloc] initWithData:v3];
  if (v4)
  {
    v5 = +[NSDate date];
    [v5 timeIntervalSince1970];
    v7 = v6;
    [(CSDMessagingRelayMessage *)v4 messageSendTime];
    v9 = v8;

    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) name];
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      v18 = 2048;
      v19 = ((v7 - v9) * 1000.0);
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Handling %@ with message: %@ latency: %llu", &v14, 0x20u);
    }

    v12 = [(CSDMessagingRelayMessage *)v4 type];
    if (v12 == 38)
    {
      v13 = [*(a1 + 40) commonMessagingDelegate];
      [v13 handleSetUplinkMutedMessage:v4];
    }

    else if (v12 == 39)
    {
      v13 = [*(a1 + 40) clientMessagingDelegate];
      [v13 handleUpdateRemoteUplinkMutedMessageFromHost:v4];
    }

    else
    {
      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100474494(v4);
      }
    }
  }

  else
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100474518(v13);
    }
  }
}

CSDMessagingRelayMessage *sub_1000EF4A8(uint64_t a1)
{
  v2 = [CSDMessagingRelayMessage alloc];
  v3 = [*(a1 + 32) uniqueProxyIdentifier];
  v4 = [(CSDMessagingRelayMessage *)v2 initWithType:1 uniqueProxyIdentifier:v3];

  v5 = [*(a1 + 32) handle];
  [(CSDMessagingRelayMessage *)v4 setTuHandle:v5];

  v6 = [*(a1 + 32) isoCountryCode];
  [(CSDMessagingRelayMessage *)v4 setIsoCountryCode:v6];

  v7 = [*(a1 + 32) provider];
  -[CSDMessagingRelayMessage setTuProvider:isVideo:](v4, "setTuProvider:isVideo:", v7, [*(a1 + 32) isVideo]);

  v8 = [*(a1 + 32) sourceIdentifier];
  [(CSDMessagingRelayMessage *)v4 setSourceIdentifier:v8];

  v9 = [*(a1 + 32) model];
  [(CSDMessagingRelayMessage *)v4 setCallModel:v9];

  v10 = [*(a1 + 32) callerNameFromNetwork];
  [(CSDMessagingRelayMessage *)v4 setCallerNameFromNetwork:v10];

  -[CSDMessagingRelayMessage setShouldSuppressRingtone:](v4, "setShouldSuppressRingtone:", [*(a1 + 32) shouldSuppressRingtone]);
  -[CSDMessagingRelayMessage setNeedsManualInCallSounds:](v4, "setNeedsManualInCallSounds:", [*(a1 + 32) needsManualInCallSounds]);
  -[CSDMessagingRelayMessage setSoundRegion:](v4, "setSoundRegion:", [*(a1 + 32) soundRegion]);
  [(CSDMessagingRelayMessage *)v4 setCannotRelayAudioOrVideoOnPairedDevice:*(a1 + 40)];
  v11 = [*(a1 + 32) displayContext];
  [(CSDMessagingRelayMessage *)v4 setDisplayContext:v11];

  -[CSDMessagingRelayMessage setFailureExpected:](v4, "setFailureExpected:", [*(a1 + 32) isFailureExpected]);
  -[CSDMessagingRelayMessage setSupportsEmergencyFallback:](v4, "setSupportsEmergencyFallback:", [*(a1 + 32) supportsEmergencyFallback]);
  -[CSDMessagingRelayMessage setSupportsDTMFUpdates:](v4, "setSupportsDTMFUpdates:", [*(a1 + 32) supportsDTMFUpdates]);
  v12 = [*(a1 + 32) localSenderIdentityUUID];
  [(CSDMessagingRelayMessage *)v4 setLocalSenderIdentityUUID:v12];

  v13 = [*(a1 + 32) localSenderIdentityAccountUUID];
  [(CSDMessagingRelayMessage *)v4 setLocalSenderIdentityAccountUUID:v13];

  -[CSDMessagingRelayMessage setRemoteUplinkMuted:](v4, "setRemoteUplinkMuted:", [*(a1 + 32) isRemoteUplinkMuted]);
  v14 = [*(a1 + 32) remoteParticipantHandles];
  [(CSDMessagingRelayMessage *)v4 setRemoteParticipantTUHandles:v14];

  -[CSDMessagingRelayMessage setTtyType:](v4, "setTtyType:", [*(a1 + 32) ttyType]);
  -[CSDMessagingRelayMessage setSupportsTTYWithVoice:](v4, "setSupportsTTYWithVoice:", [*(a1 + 32) supportsTTYWithVoice]);
  -[CSDMessagingRelayMessage setPriority:](v4, "setPriority:", [*(a1 + 32) priority]);
  -[CSDMessagingRelayMessage setOriginatingUIType:](v4, "setOriginatingUIType:", [*(a1 + 32) originatingUIType]);
  v15 = [*(a1 + 32) callGroupUUID];
  v16 = [v15 UUIDString];
  [(CSDMessagingRelayMessage *)v4 setGroupUUIDString:v16];

  -[CSDMessagingRelayMessage setRelayHostCanScreen:](v4, "setRelayHostCanScreen:", [*(a1 + 32) isEligibleForManualScreening]);
  -[CSDMessagingRelayMessage setIsReceptionistCapable:](v4, "setIsReceptionistCapable:", [*(a1 + 32) isReceptionistCapable]);
  -[CSDMessagingRelayMessage setIsLocalUserInHomeCountry:](v4, "setIsLocalUserInHomeCountry:", [*(a1 + 32) isLocalUserInHomeCountry]);
  v17 = [*(a1 + 32) imageURL];

  if (v17)
  {
    v18 = [NSData alloc];
    v19 = [*(a1 + 32) imageURL];
    v20 = [v18 initWithContentsOfURL:v19];

    [(CSDMessagingRelayMessage *)v4 setImage:v20];
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [*(a1 + 32) imageURL];
      v27 = 138412290;
      v28 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) Sending url to client: %@", &v27, 0xCu);
    }
  }

  v23 = +[CSDRelayIDSService sharedInstance];
  v24 = [v23 pairedDeviceExists];

  if (v24)
  {
    v25 = [*(a1 + 32) dateCreated];
    [v25 timeIntervalSince1970];
    [(CSDMessagingRelayMessage *)v4 setHostCallCreationTime:?];
  }

  return v4;
}

void sub_1000EF8FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) status] != 4)
  {
    v4 = sub_100004778();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v9 = *(a1 + 32);
    v12 = 138412290;
    v13 = v9;
    v10 = "Not sending out incoming call invitation because call is no longer ringing: %@";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v10, &v12, 0xCu);
    goto LABEL_9;
  }

  if (!v3)
  {
    v4 = sub_100004778();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v11 = *(a1 + 32);
    v12 = 138412290;
    v13 = v11;
    v10 = "[WARN] Failed to prepare conference for call %@. Not sending incoming call message to relay clients";
    goto LABEL_8;
  }

  v4 = (*(*(a1 + 48) + 16))();
  v5 = [[CSDMessagingAVConferenceInviteData alloc] initWithRelayInviteDictionary:v3];
  [v4 setInviteData:v5];

  v6 = [*(a1 + 40) sessionMessenger];
  v7 = [*(a1 + 32) uniqueProxyIdentifier];
  v8 = [*(a1 + 32) provider];
  [v6 sendMessage:v4 andStartSessionIfNecessaryForIdentifier:v7 toDevicesSupportingProvider:v8 requiresConversationRelay:objc_msgSend(*(a1 + 32) withTimeout:{"needsConversationRelaySupport"), TUIncomingInvitationTimeout()}];

LABEL_9:
}

CSDMessagingRelayMessage *sub_1000EFDE0(uint64_t a1)
{
  v2 = [[CSDMessagingRelayMessage alloc] initWithType:49];
  v3 = [[CSDMessagingConversationRelayMessage alloc] initWithConversation:*(a1 + 32)];
  [(CSDMessagingConversationRelayMessage *)v3 setType:*(a1 + 40)];
  v4 = [(CSDMessagingRelayMessage *)v2 conversations];

  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    [(CSDMessagingRelayMessage *)v2 setConversations:v5];
  }

  v6 = [(CSDMessagingRelayMessage *)v2 conversations];
  [v6 addObject:v3];

  return v2;
}

CSDMessagingRelayMessage *sub_1000F0004(uint64_t a1)
{
  v2 = [[CSDMessagingRelayMessage alloc] initWithType:53];
  v3 = [*(a1 + 32) UUID];
  v4 = [v3 UUIDString];
  [(CSDMessagingRelayMessage *)v2 setConversationUUIDString:v4];

  v5 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [*(a1 + 32) activeRemoteParticipants];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = objc_alloc_init(CSDMessagingParticipantProminenceEntry);
        -[CSDMessagingParticipantProminenceEntry setParticipantIdentifier:](v12, "setParticipantIdentifier:", [v11 identifier]);
        -[CSDMessagingParticipantProminenceEntry setAudioPriority:](v12, "setAudioPriority:", [v11 audioPriority]);
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(CSDMessagingRelayMessage *)v2 setProminenceEntrys:v5];

  return v2;
}

void sub_1000F0B58(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) sessionMessenger];
    [v3 sendMessage:*(a1 + 40) forCall:*(a1 + 48) completionHandler:0];
  }
}

void sub_1000F1F30(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionMessenger];
  [v2 sendMessage:*(a1 + 40) forCall:*(a1 + 48) completionHandler:0];

  if ([*(a1 + 32) _shouldSendToPairedIDSDevice])
  {
    v3 = [*(a1 + 32) pairedDeviceMessenger];
    [v3 sendMessage:*(a1 + 40) completionHandler:0];
  }
}

void sub_1000F21DC(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionMessenger];
  [v2 sendMessage:*(a1 + 40) forCall:*(a1 + 48) completionHandler:0];
}

void sub_1000F2408(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionMessenger];
  [v2 sendMessage:*(a1 + 40) forCall:*(a1 + 48) completionHandler:0];
}

void sub_1000F2640(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionMessenger];
  [v2 sendMessage:*(a1 + 40) forCall:*(a1 + 48) completionHandler:0];
}

void sub_1000F28D8(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionMessenger];
  [v2 sendMessage:*(a1 + 40) forCall:*(a1 + 48) completionHandler:0];
}

void sub_1000F2B4C(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionMessenger];
  [v2 sendMessage:*(a1 + 40) forCall:*(a1 + 48) completionHandler:0];
}

void sub_1000F2D88(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionMessenger];
  [v2 sendMessage:*(a1 + 40) forCall:*(a1 + 48) completionHandler:0];
}

void sub_1000F2FDC(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionMessenger];
  [v2 sendMessage:*(a1 + 40) forCall:*(a1 + 48) completionHandler:0];
}

void sub_1000F3F2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(a1 + 40) addCall:{*(*(&v11 + 1) + 8 * v8), v11}];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    v9 = [[CSDMessagingAVConferenceInviteData alloc] initWithRelayInviteDictionary:v3];
    [*(a1 + 40) setInviteData:v9];

    v10 = [*(a1 + 48) sessionMessenger];
    [v10 sendMessage:*(a1 + 40) andStartSessionIfNecessaryForIdentifiers:*(a1 + 56) toDestination:*(a1 + 64) timeout:TUTransferTimeout() completionHandler:0];
  }
}

void sub_1000F4B34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 32);
  if ([*(a1 + 32) status] == 3)
  {
    if (v3)
    {
      v5 = [CSDMessagingRelayMessage alloc];
      v6 = [*(a1 + 32) uniqueProxyIdentifier];
      v7 = [(CSDMessagingRelayMessage *)v5 initWithType:2 uniqueProxyIdentifier:v6];

      v8 = [*(a1 + 32) handle];
      [(CSDMessagingRelayMessage *)v7 setTuHandle:v8];

      v9 = [*(a1 + 32) isoCountryCode];
      [(CSDMessagingRelayMessage *)v7 setIsoCountryCode:v9];

      v10 = [*(a1 + 32) provider];
      -[CSDMessagingRelayMessage setTuProvider:isVideo:](v7, "setTuProvider:isVideo:", v10, [*(a1 + 32) isVideo]);

      v11 = [*(a1 + 32) sourceIdentifier];
      [(CSDMessagingRelayMessage *)v7 setSourceIdentifier:v11];

      -[CSDMessagingRelayMessage setCannotRelayAudioOrVideoOnPairedDevice:](v7, "setCannotRelayAudioOrVideoOnPairedDevice:", [*(a1 + 32) isEndpointOnCurrentDevice] ^ 1);
      -[CSDMessagingRelayMessage setVoicemail:](v7, "setVoicemail:", [*(a1 + 32) isVoicemail]);
      -[CSDMessagingRelayMessage setEmergency:](v7, "setEmergency:", [*(a1 + 32) isEmergency]);
      -[CSDMessagingRelayMessage setFailureExpected:](v7, "setFailureExpected:", [*(a1 + 32) isFailureExpected]);
      -[CSDMessagingRelayMessage setSupportsEmergencyFallback:](v7, "setSupportsEmergencyFallback:", [*(a1 + 32) supportsEmergencyFallback]);
      -[CSDMessagingRelayMessage setSOS:](v7, "setSOS:", [*(a1 + 32) isSOS]);
      v12 = [*(a1 + 32) localSenderIdentityUUID];
      [(CSDMessagingRelayMessage *)v7 setLocalSenderIdentityUUID:v12];

      v13 = [*(a1 + 32) localSenderIdentityAccountUUID];
      [(CSDMessagingRelayMessage *)v7 setLocalSenderIdentityAccountUUID:v13];

      -[CSDMessagingRelayMessage setTtyType:](v7, "setTtyType:", [*(a1 + 32) ttyType]);
      -[CSDMessagingRelayMessage setSupportsTTYWithVoice:](v7, "setSupportsTTYWithVoice:", [*(a1 + 32) supportsTTYWithVoice]);
      -[CSDMessagingRelayMessage setOriginatingUIType:](v7, "setOriginatingUIType:", [*(a1 + 32) originatingUIType]);
      v14 = [*(a1 + 32) dialRequest];
      v15 = [v14 contactIdentifier];
      [(CSDMessagingRelayMessage *)v7 setContactIdentifier:v15];

      v16 = [[CSDMessagingAVConferenceInviteData alloc] initWithRelayInviteDictionary:v3];
      [(CSDMessagingRelayMessage *)v7 setInviteData:v16];

      v17 = [*(a1 + 40) sessionMessenger];
      v18 = [*(a1 + 32) uniqueProxyIdentifier];
      v19 = [*(a1 + 40) dialingIDSDestination];
      v20 = [*(a1 + 32) provider];
      [*(a1 + 32) isVideo];
      [v17 sendMessage:v7 andStartSessionIfNecessaryForIdentifier:v18 toDestination:v19 timeout:TUOutgoingInvitationTimeoutForCallProvider() completionHandler:*(a1 + 48)];
    }

    else
    {
      v23 = sub_100004778();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1004745C8((a1 + 32));
      }

      v7 = [*(a1 + 40) callCenter];
      [(CSDMessagingRelayMessage *)v7 disconnectCall:*(a1 + 32) withReason:8];
    }
  }

  else
  {
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *v4;
      v24 = 138412290;
      v25 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Not sending out dial call invitation because call is no longer sending: %@", &v24, 0xCu);
    }
  }
}

void sub_1000F50D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 32);
  if ([*(a1 + 32) status] == 3)
  {
    if (v3)
    {
      v5 = [CSDMessagingRelayMessage alloc];
      v6 = [*(a1 + 32) uniqueProxyIdentifier];
      v7 = [(CSDMessagingRelayMessage *)v5 initWithType:50 uniqueProxyIdentifier:v6];

      v8 = [*(a1 + 32) joinConversationRequest];
      v9 = [v8 URL];
      v10 = [v9 absoluteString];
      [(CSDMessagingRelayMessage *)v7 setJoinConversationRequestURLString:v10];

      v11 = [[CSDMessagingAVConferenceInviteData alloc] initWithRelayInviteDictionary:v3];
      [(CSDMessagingRelayMessage *)v7 setInviteData:v11];

      v12 = [*(a1 + 40) sessionMessenger];
      v13 = [*(a1 + 32) uniqueProxyIdentifier];
      v14 = [*(a1 + 40) dialingIDSDestination];
      v15 = [*(a1 + 32) provider];
      [*(a1 + 32) isVideo];
      [v12 sendMessage:v7 andStartSessionIfNecessaryForIdentifier:v13 toDestination:v14 timeout:TUOutgoingInvitationTimeoutForCallProvider() completionHandler:*(a1 + 48)];
    }

    else
    {
      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1004745C8((a1 + 32));
      }

      v7 = [*(a1 + 40) callCenter];
      [(CSDMessagingRelayMessage *)v7 disconnectCall:*(a1 + 32) withReason:8];
    }
  }

  else
  {
    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *v4;
      v19 = 138412290;
      v20 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not sending out TUJoinConversationRequest invitation because call is no longer sending: %@", &v19, 0xCu);
    }
  }
}

CSDMessagingRelayMessage *sub_1000F57E8(uint64_t a1)
{
  v2 = [CSDMessagingRelayMessage alloc];
  v3 = [*(a1 + 32) uniqueProxyIdentifier];
  v4 = [(CSDMessagingRelayMessage *)v2 initWithType:4 uniqueProxyIdentifier:v3];

  v5 = [*(a1 + 32) sourceIdentifier];
  [(CSDMessagingRelayMessage *)v4 setSourceIdentifier:v5];

  -[CSDMessagingRelayMessage setWantsHoldMusic:](v4, "setWantsHoldMusic:", [*(a1 + 32) wantsHoldMusic]);
  -[CSDMessagingRelayMessage setVideo:](v4, "setVideo:", [*(a1 + 32) isVideo]);
  -[CSDMessagingRelayMessage setCannotRelayAudioOrVideoOnPairedDevice:](v4, "setCannotRelayAudioOrVideoOnPairedDevice:", [*(a1 + 32) cannotRelayAudioOrVideo]);
  v6 = [*(a1 + 32) cannotRelayAudioOrVideo];
  if (v6 && ([*(a1 + 32) isScreening] & 1) != 0)
  {
    v7 = [*(a1 + 40) featureFlags];
    -[CSDMessagingRelayMessage setExpectedEndpointOnMessagingDevice:](v4, "setExpectedEndpointOnMessagingDevice:", [v7 LVMEverywhere] ^ 1);
  }

  else
  {
    [(CSDMessagingRelayMessage *)v4 setExpectedEndpointOnMessagingDevice:v6];
  }

  if ([*(a1 + 32) isScreening])
  {
    v8 = [*(a1 + 40) featureFlags];
    -[CSDMessagingRelayMessage setIsScreening:](v4, "setIsScreening:", [v8 LVMEverywhere]);
  }

  else
  {
    [(CSDMessagingRelayMessage *)v4 setIsScreening:0];
  }

  -[CSDMessagingRelayMessage setReceptionistState:](v4, "setReceptionistState:", [*(a1 + 32) receptionistState]);

  return v4;
}

void sub_1000F595C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = (*(*(a1 + 48) + 16))();
    v5 = [[CSDMessagingAVConferenceInviteData alloc] initWithRelayInviteDictionary:v3];
    [v4 setInviteData:v5];

    v6 = [*(a1 + 32) sessionMessenger];
    v7 = [*(a1 + 40) uniqueProxyIdentifier];
    v8 = [v6 sendMessage:v4 andAcceptInvitationIfNecessaryForIdentifier:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [*(a1 + 32) sessionMessenger];
      [v9 sendMessage:v4 forCall:*(a1 + 40) completionHandler:0];
    }
  }

  else
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100474634(a1);
    }

    v4 = [*(a1 + 32) callCenter];
    [v4 disconnectCall:*(a1 + 40) withReason:8];
  }
}

void sub_1000F6444(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [CSDMessagingRelayMessage alloc];
    v5 = [*(a1 + 32) uniqueProxyIdentifier];
    v6 = [(CSDMessagingRelayMessage *)v4 initWithType:19 uniqueProxyIdentifier:v5];

    v7 = [[CSDMessagingAVConferenceInviteData alloc] initWithRelayInviteDictionary:v3];
    [(CSDMessagingRelayMessage *)v6 setInviteData:v7];

    v8 = [*(a1 + 40) sessionMessenger];
    v9 = [*(a1 + 32) uniqueProxyIdentifier];
    [v8 sendMessage:v6 andAcceptInvitationIfNecessaryForIdentifier:v9];

    if ([*(a1 + 40) _shouldSendToPairedIDSDevice])
    {
      v10 = [*(a1 + 40) pairedDeviceMessenger];
      [v10 sendMessage:v6 completionHandler:0];
    }
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1004746A0(a1);
    }

    v6 = [*(a1 + 40) callCenter];
    [(CSDMessagingRelayMessage *)v6 disconnectCall:*(a1 + 32) withReason:8];
  }
}

void sub_1000F66E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [CSDMessagingRelayMessage alloc];
    v5 = [*(a1 + 32) uniqueProxyIdentifier];
    v6 = [(CSDMessagingRelayMessage *)v4 initWithType:20 uniqueProxyIdentifier:v5];

    v7 = [[CSDMessagingAVConferenceInviteData alloc] initWithRelayInviteDictionary:v3];
    [(CSDMessagingRelayMessage *)v6 setInviteData:v7];

    v8 = [*(a1 + 40) sessionMessenger];
    v9 = [*(a1 + 32) uniqueProxyIdentifier];
    [v8 sendMessage:v6 andAcceptInvitationIfNecessaryForIdentifier:v9];

    if ([*(a1 + 40) _shouldSendToPairedIDSDevice])
    {
      v10 = [*(a1 + 40) pairedDeviceMessenger];
      [v10 sendMessage:v6 completionHandler:0];
    }
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1004746A0(a1);
    }

    v6 = [*(a1 + 40) callCenter];
    [(CSDMessagingRelayMessage *)v6 disconnectCall:*(a1 + 32) withReason:8];
  }
}

void sub_1000F6A58(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [CSDMessagingRelayMessage alloc];
    v5 = [*(a1 + 32) uniqueProxyIdentifier];
    v6 = [(CSDMessagingRelayMessage *)v4 initWithType:36 uniqueProxyIdentifier:v5];

    v7 = [[CSDMessagingAVConferenceInviteData alloc] initWithRelayInviteDictionary:v3];
    [(CSDMessagingRelayMessage *)v6 setInviteData:v7];

    v8 = [*(a1 + 40) sessionMessenger];
    v9 = [*(a1 + 32) uniqueProxyIdentifier];
    [v8 sendMessage:v6 andAcceptInvitationIfNecessaryForIdentifier:v9];

    if ([*(a1 + 40) _shouldSendToPairedIDSDevice])
    {
      v10 = [*(a1 + 40) pairedDeviceMessenger];
      [v10 sendMessage:v6 completionHandler:0];
    }
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1004746A0(a1);
    }

    v6 = [*(a1 + 40) callCenter];
    [(CSDMessagingRelayMessage *)v6 disconnectCall:*(a1 + 32) withReason:8];
  }
}

void sub_1000F7254(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [[CSDMessagingAVConferenceInviteData alloc] initWithRelayInviteDictionary:v3];
    [*(a1 + 32) setInviteData:v4];

    v5 = [*(a1 + 40) sessionMessenger];
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v8 = +[CSDRelayIDSService sharedInstance];
    v9 = [v8 pairedDevice];
    v10 = [v9 destination];
    [v5 sendMessage:v6 andStartSessionIfNecessaryForIdentifiers:v7 toDestination:v10 timeout:TUTransferTimeout() completionHandler:0];
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to prepare conference while pulling calls", v12, 2u);
    }
  }
}

void sub_1000F9150(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = *(a1 + 40);

    [v4 _handleRetrievedLocalInviteDictionary:a3 forMessage:v5];
  }

  else
  {
    v8 = [v4 sessionMessenger];
    v6 = [[CSDMessagingRelayMessage alloc] initWithType:10];
    v7 = [*(a1 + 40) uniqueProxyIdentifier];
    [v8 sendMessage:v6 andCancelOrDeclineInvitationIfNecessaryForIdentifier:v7];
  }
}

void sub_1000F9204(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = *(a1 + 40);

    [v4 _handleRetrievedLocalInviteDictionary:a3 forMessage:v5];
  }

  else
  {
    v8 = [v4 sessionMessenger];
    v6 = [[CSDMessagingRelayMessage alloc] initWithType:10];
    v7 = [*(a1 + 40) uniqueProxyIdentifier];
    [v8 sendMessage:v6 andCancelOrDeclineInvitationIfNecessaryForIdentifier:v7];
  }
}

void sub_1000FAD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000FADA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setUpSandbox];
  v3 = objc_alloc_init(TUFeatureFlags);
  [WeakRetained setFeatureFlags:v3];

  v4 = [WeakRetained queue];
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v4, &stru_10061B840);

  v5 = [WeakRetained queue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000FBCFC;
  handler[3] = &unk_10061B178;
  v6 = WeakRetained;
  v139 = v6;
  xpc_set_event_stream_handler("com.apple.distnoted.matching", v5, handler);

  v7 = [v6 queue];
  xpc_set_event_stream_handler("com.apple.CTTelephonyCenter", v7, &stru_10061B860);

  v8 = +[NSMutableArray array];
  [v6 setSignalHandlerDispatchSources:v8];

  v136[0] = _NSConcreteStackBlock;
  v136[1] = 3221225472;
  v136[2] = sub_1000FBEC8;
  v136[3] = &unk_10061A740;
  objc_copyWeak(&v137, (a1 + 32));
  [v6 _observeSignal:29 usingHandler:v136];
  [v6 _observeSignal:30 usingHandler:&stru_10061B880];
  [v6 _observeSignal:31 usingHandler:&stru_10061B8A0];
  signal(15, 0);
  Default = CTTelephonyCenterGetDefault();
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v141 = Default;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Created call center: %@", buf, 0xCu);
  }

  v11 = objc_alloc_init(TUUserConfiguration);
  v12 = [v6 queue];
  [v11 addDelegate:v6 queue:v12];

  [v6 setUserConfiguration:v11];
  v13 = [CSDDeviceLockStateObserver alloc];
  v14 = [v6 queue];
  v15 = [(CSDDeviceLockStateObserver *)v13 initWithQueue:v14];
  [v6 setDeviceLockStateObserver:v15];

  v16 = [v6 deviceLockStateObserver];
  v134[0] = _NSConcreteStackBlock;
  v134[1] = 3221225472;
  v134[2] = sub_1000FC0AC;
  v134[3] = &unk_100619D38;
  v17 = v6;
  v135 = v17;
  [v16 performBlockAfterFirstUnlock:v134];

  v18 = [CSDVoiceOverObserver alloc];
  v19 = [v17 queue];
  v20 = [(CSDVoiceOverObserver *)v18 initWithQueue:v19];
  [v17 setVoiceOverObserver:v20];

  v21 = +[CSDCallCapabilities sharedInstance];
  v22 = objc_alloc_init(CHManager);
  [v17 setChManager:v22];

  v23 = [v17 queue];
  v24 = [CSDReportingController sharedInstanceWithQueue:v23];

  v25 = [v17 queue];
  v26 = [CSDCallDirectoryManager sharedInstanceWithQueue:v25];

  v27 = [CSDConversationProviderManagerXPCServer alloc];
  v28 = +[CSDConversationProviderManager sharedInstance];
  v29 = [(CSDConversationProviderManagerXPCServer *)v27 initWithConversationProviderManager:v28];
  v30 = v17[2];
  v17[2] = v29;

  v31 = [CSDCallStateController alloc];
  v32 = [v17 queue];
  v33 = [v17 assistantServicesObserver];
  v34 = [v17 chManager];
  v35 = [(CSDCallStateController *)v31 initWithQueue:v32 assistantServicesObserver:v33 chManager:v34];
  [v17 setCallStateController:v35];

  v36 = [CSDCallStateMonitor alloc];
  v37 = [v17 callStateController];
  v38 = [v37 callCenter];
  v39 = [(CSDCallStateMonitor *)v36 initWithCallCenter:v38];
  [v17 setCallStateMonitor:v39];

  v40 = [CSDRelayMessagingController alloc];
  v41 = [v17 queue];
  v42 = [v17 callStateController];
  v43 = [v42 localRouteController];
  v44 = [(CSDRelayMessagingController *)v40 initWithQueue:v41 localRouteController:v43];
  [v17 setRelayMessagingController:v44];

  v45 = [CSDRelayConversationController alloc];
  v46 = [v17 queue];
  v47 = [v17 relayMessagingController];
  v48 = [v17 callStateController];
  v49 = [v48 callCenter];
  v50 = [v17 featureFlags];
  v51 = [(CSDRelayConversationController *)v45 initWithQueue:v46 messenger:v47 callCenter:v49 featureFlags:v50];
  [v17 setRelayConversationController:v51];

  v52 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v53 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.reportingcontroller", v52);

  v54 = objc_alloc_init(CSDPowerLogReporter);
  [v24 addReporter:v54];

  v55 = objc_alloc_init(CSDAggregateDictionaryReporter);
  [v24 addReporter:v55];

  v56 = [[CSDABCReporter alloc] initWithQueue:v53];
  [v24 addReporter:v56];

  v57 = [CSDRTCReporter alloc];
  v58 = [v17 chManager];
  v59 = [(CSDRTCReporter *)v57 initWithQueue:v53 chManager:v58];
  [v24 addReporter:v59];

  v60 = [CSDFaceTimeUnknownReporter alloc];
  v61 = [v17 chManager];
  v62 = [(CSDFaceTimeUnknownReporter *)v60 initWithQueue:v53 chManager:v61];
  [v24 addReporter:v62];

  v63 = objc_alloc_init(CSDAnalyticsReporter);
  [v24 addReporter:v63];

  v64 = [v17 queue];
  v65 = [CSDReportingController sharedInstanceWithQueue:v64];
  v66 = [[CSDDuetDonater alloc] initWithQueue:v53];
  [v65 addReporter:v66];

  if (+[CSDStatusBarManager isDeviceSupported])
  {
    v67 = objc_alloc_init(CSDStatusBarManager);
    [v17 setStatusBarManager:v67];
  }

  v68 = [v17 featureFlags];
  v69 = [v68 conversationHandoffEnabled];

  if (v69)
  {
    v70 = objc_alloc_init(CSDHandoffAudioController);
    [v17 setHandoffAudioController:v70];
  }

  v71 = objc_alloc_init(CSDVoIPApplicationController);
  [v17 setVoipApplicationController:v71];

  v72 = [v17 callStateController];
  v73 = [v17 voipApplicationController];
  [v73 setCallStateController:v72];

  v74 = [v17 voipApplicationController];
  v75 = [v17 callStateController];
  [v75 setVoipApplicationController:v74];

  v76 = [v17 relayMessagingController];
  v77 = [v17 callStateController];
  [v77 setRelayMessagingController:v76];

  v78 = [CSDRelayClientController alloc];
  v79 = [v17 queue];
  v80 = [v17 assistantServicesObserver];
  v81 = [(CSDRelayClientController *)v78 initWithQueue:v79 assistantServicesObserver:v80];
  [v17 setRelayClientController:v81];

  v82 = [v17 callStateController];
  v83 = [v17 relayClientController];
  [v83 setCallStateController:v82];

  v84 = [CSDRelayHostController alloc];
  v85 = [v17 queue];
  v86 = +[TUCallCenter sharedInstance];
  v87 = [v86 conversationManager];
  v88 = [v17 featureFlags];
  v89 = [(CSDRelayHostController *)v84 initWithQueue:v85 conversationManager:v87 featureFlags:v88];
  [v17 setRelayHostController:v89];

  v90 = [v17 callStateController];
  v91 = [v17 relayHostController];
  [v91 setCallStateController:v90];

  v92 = [CSDRelayCommonController alloc];
  v93 = [v17 queue];
  v94 = [(CSDRelayCommonController *)v92 initWithQueue:v93];
  [v17 setRelayCommonController:v94];

  v95 = [v17 callStateController];
  v96 = [v17 relayCommonController];
  [v96 setCallStateController:v95];

  v97 = [v17 callStateController];
  v98 = [v17 relayMessagingController];
  [v98 setDelegate:v97];

  v99 = [v17 relayClientController];
  v100 = [v17 relayMessagingController];
  [v100 setClientMessagingDelegate:v99];

  v101 = [v17 relayHostController];
  v102 = [v17 relayMessagingController];
  [v102 setHostMessagingDelegate:v101];

  v103 = [v17 relayCommonController];
  v104 = [v17 relayMessagingController];
  [v104 setCommonMessagingDelegate:v103];

  v105 = [v17 queue];
  v106 = [CSDTransactionManager sharedInstanceWithQueue:v105];

  v107 = [v17 queue];
  v108 = [CSDUserActivityManager sharedInstanceWithQueue:v107];

  v109 = +[CSDRouteManager sharedInstance];
  v110 = +[CPApplicationPolicyManager sharedInstance];
  [v17 setApplicationPolicyManager:v110];

  if (MGGetBoolAnswer())
  {
    v111 = [CSDProximitySensorObserver alloc];
    v112 = [v17 queue];
    v113 = [(CSDProximitySensorObserver *)v111 initWithQueue:v112];
    [v17 setProximitySensorObserver:v113];

    v114 = [CSDProximityController alloc];
    v115 = [v17 queue];
    v116 = [v17 proximitySensorObserver];
    v117 = [v17 voiceOverObserver];
    v118 = [(CSDProximityController *)v114 initWithQueue:v115 proximitySensorObserver:v116 voiceOverObserver:v117];
    [v17 setProximityController:v118];
  }

  v119 = objc_alloc_init(CSDRaiseToAnswerController);
  [v17 setRaiseToAnswerController:v119];

  v120 = [CSDAudioController alloc];
  v121 = [v17 voiceOverObserver];
  v122 = [(CSDAudioController *)v120 initWithVoiceOverObserver:v121];
  [v17 setAudioController:v122];

  v123 = [v17 audioController];
  v124 = [v17 callStateController];
  [v124 setAudioController:v123];

  [v17 _setUpLanguageChangeListener];
  *buf = 0;
  notify_register_check("com.apple.telephonyutilities.callservicesdaemon.connectionrequest", buf);
  notify_set_state(*buf, 1uLL);
  notify_post("com.apple.telephonyutilities.callservicesdaemon.connectionrequest");
  v125 = [CSDUserNotificationController alloc];
  v126 = [v17 callStateController];
  v127 = [v126 callFilterController];
  v128 = [(CSDUserNotificationController *)v125 initWithCallFilterController:v127];
  v129 = v17[14];
  v17[14] = v128;

  v130 = objc_alloc_init(CSDPowerAssertionManager);
  v131 = v17[23];
  v17[23] = v130;

  v132 = sub_100004778();
  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
  {
    *v133 = 0;
    _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "Initialized CSDDaemon", v133, 2u);
  }

  objc_destroyWeak(&v137);
}

void sub_1000FBC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_1000FBC70(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (!strcmp(string, "com.apple.telephonyutilities.callservicesd.kFZACAppBundleIdentifierLaunchNotification"))
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Launched by IMDaemon notification", v4, 2u);
    }
  }
}

void sub_1000FBCFC(uint64_t a1, void *a2)
{
  v3 = a2;
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
  if (!strcmp(string, "com.apple.callhistory.save.distributed.notification"))
  {
    v9 = [*(a1 + 32) callStateController];
    v10 = [v9 recentsController];
    [v10 clearNotificationsIfNecessary];

LABEL_11:
    goto LABEL_12;
  }

  if (!strcmp(string, "com.apple.telephonyutilities.callservicesdaemon.app-installed"))
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Launched by application installed notification", buf, 2u);
    }

    goto LABEL_11;
  }

  if (!strcmp(string, "com.apple.telephonyutilities.callservicesdaemon.app-uninstalled"))
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Launched by application uninstalled notification", v11, 2u);
    }

    v6 = TUNotificationFromXPCObject();
    if (v6)
    {
      v7 = [*(a1 + 32) voipApplicationController];
      [v7 handleApplicationUninstalledNotification:v6];

      v8 = [*(a1 + 32) applicationPolicyManager];
      [v8 handleApplicationUninstalledNotification:v6];
    }

    else
    {
      v8 = sub_100004778();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10047482C(v3, v8);
      }
    }
  }

LABEL_12:
}

void sub_1000FBEC8(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Caught SIGINFO. Dumping debug info.", &v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [WeakRetained debugDescription];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }
}

void sub_1000FBFDC(id a1)
{
  v1 = sub_100004778();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Caught SIGUSR1", v2, 2u);
  }
}

void sub_1000FC044(id a1)
{
  v1 = sub_100004778();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Caught SIGUSR2", v2, 2u);
  }
}

void sub_1000FC0AC(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Performing user configuration migration", v9, 2u);
  }

  v3 = objc_alloc_init(CSDUserConfigurationMigrator);
  [(CSDUserConfigurationMigrator *)v3 perform];
  v4 = [*(a1 + 32) featureFlags];
  v5 = [v4 dualSIMRingtoneEnabled];

  if (v5)
  {
    v6 = [CSDDualSIMRingtoneHelper alloc];
    v7 = [*(a1 + 32) queue];
    v8 = [(CSDDualSIMRingtoneHelper *)v6 initWithQueue:v7];
    [*(a1 + 32) setDualSIMRingtoneHelper:v8];
  }

  [*(a1 + 32) setDeviceLockStateObserver:0];
}

void sub_1000FC564(id a1, int a2)
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling xpc_transaction_exit_clean() due to language change", v4, 2u);
  }

  notify_cancel(a2);
  xpc_transaction_exit_clean();
}

id sub_1000FCB74(void *a1, unint64_t a2)
{
  v3 = a1;
  v5 = v3;
  if (qword_1006ACC78 != -1)
  {
    sub_1004749B4();
  }

  if (qword_1006ACC88 != -1)
  {
    sub_1004749C8();
  }

  if (qword_1006ACC98 != -1)
  {
    sub_1004749DC();
  }

  if (qword_1006ACCA8 != -1)
  {
    sub_1004749F0();
  }

  if (qword_1006ACCB8 != -1)
  {
    sub_100474A04();
  }

  if (qword_1006ACCC8 != -1)
  {
    sub_100474A18();
    if (v5)
    {
      goto LABEL_13;
    }

LABEL_63:
    v58 = 0;
    goto LABEL_64;
  }

  if (!v5)
  {
    goto LABEL_63;
  }

LABEL_13:
  v6 = __chkstk_darwin(v3, v4);
  v7 = (&v64 - ((8 * a2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6, v8);
  v10 = &v64 - v9;
  v11 = v5;
  if ([v11 isFileURL])
  {
    v75 = AVURLAssetReferenceRestrictionsKey;
    buf.value = &off_10063EC60;
    v12 = [NSDictionary dictionaryWithObjects:&buf forKeys:&v75 count:1];
    v13 = [[AVURLAsset alloc] initWithURL:v11 options:v12];
  }

  else
  {
    v12 = sub_10022AD98();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 138412290;
      *(&buf.value + 4) = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Trying to create an AVURLAsset for invalid fileURL: %@", &buf, 0xCu);
    }

    v13 = 0;
  }

  if (v13)
  {
    [v13 duration];
  }

  else
  {
    memset(&buf, 0, sizeof(buf));
  }

  Seconds = CMTimeGetSeconds(&buf);
  bzero(v7, 8 * a2);
  bzero(v10, 8 * a2);
  v15 = [AVAssetReader assetReaderWithAsset:v13 error:0];
  v16 = [v13 tracksWithMediaType:AVMediaTypeAudio];
  if ([v16 count])
  {
    v67 = v13;
    v68 = &v64;
    v69 = v5;
    v65 = v16;
    v17 = [v16 objectAtIndex:0];
    v72 = AVFormatIDKey;
    v18 = [NSNumber numberWithUnsignedInt:1819304813];
    v73 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v64 = v17;
    v20 = [AVAssetReaderTrackOutput assetReaderTrackOutputWithTrack:v17 outputSettings:v19];

    [v20 setAlwaysCopiesSampleData:0];
    [v15 addOutput:v20];
    v66 = v15;
    [v15 startReading];
    v71 = v20;
    v21 = [v20 copyNextSampleBuffer];
    if (v21)
    {
      v23 = v21;
      v24 = 0;
      v25 = Seconds / a2;
      *&v22 = 67109376;
      v70 = v22;
      while (1)
      {
        v26 = off_1006ACC80;
        v27 = off_1006ACC90(v23);
        v28 = v26(v27);
        v29 = off_1006ACC70;
        off_1006ACCB0(&buf, v23);
        v30 = v29(&buf);
        v31 = off_1006ACC70;
        off_1006ACCC0(&buf, v23);
        v32 = v31(&buf);
        v33 = *(v28 + 32);
        if (v33 == 16)
        {
          v35 = 0;
          v34 = (*(v28 + 12) >> 2) & 1;
          if (v34)
          {
            goto LABEL_34;
          }
        }

        else if (v33 == 32)
        {
          v34 = 0;
          v35 = *(v28 + 12) & 1;
        }

        else
        {
          v35 = 0;
          v34 = 0;
        }

        if (v35)
        {
LABEL_34:
          memset(&buf, 0, sizeof(buf));
          v75 = 0;
          off_1006ACCA0(v23, 0, &buf, 24, 0, 0, 0, &v75);
          value_low = LODWORD(buf.value);
          if (LODWORD(buf.value))
          {
            v39 = 0;
            v40 = *(v28 + 24);
            do
            {
              v41 = &buf.timescale + 4 * v39;
              v42 = v41[1];
              if (v40 <= v42)
              {
                v43 = 0;
                v44 = *(v41 + 1);
                v45 = v42 / v40;
                v46 = *(v28 + 28);
                v47 = 0.0;
                do
                {
                  if (v46)
                  {
                    v48 = (v30 + v47 / (v45 - 1) * v32) / v25;
                    if (v48 >= (a2 - 1))
                    {
                      v48 = (a2 - 1);
                    }

                    v49 = v48;
                    v50 = v7[v48];
                    v51 = v46;
                    v52 = v43;
                    v53 = *&v10[8 * v49];
                    do
                    {
                      if (v34)
                      {
                        v54 = *(v44 + 2 * v52);
                      }

                      else
                      {
                        v54 = 0.0;
                        if (v35)
                        {
                          v54 = fmaxf(fminf(*(v44 + 4 * v52) * 32767.0, 32767.0), -32768.0);
                        }
                      }

                      v55 = v54 * v54 + v50 * v50 * v53++;
                      v50 = sqrt(v55 / v53);
                      ++v52;
                      --v51;
                    }

                    while (v51);
                    v56 = (v46 - 1) + 1 + *&v10[8 * v49];
                    v7[v49] = v50;
                    *&v10[8 * v49] = v56;
                    v24 = 1;
                  }

                  v47 = v47 + 1.0;
                  ++v43;
                }

                while (v43 < v45);
              }

              ++v39;
            }

            while (v39 != value_low);
          }

          CFRelease(v75);
          goto LABEL_51;
        }

        v36 = sub_10022AD98();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = *(v28 + 12);
          buf.value = __PAIR64__(*(v28 + 8), v70);
          LOWORD(buf.timescale) = 1024;
          *(&buf.timescale + 2) = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Audio file is in unsupported format to generate waveform data. formatID %d, formatFlags %d", &buf, 0xEu);
        }

LABEL_51:
        CFRelease(v23);
        v23 = [v71 copyNextSampleBuffer];
        if (!v23)
        {
          goto LABEL_57;
        }
      }
    }

    v24 = 0;
LABEL_57:
    v59 = objc_alloc_init(NSMutableArray);
    if ((v24 & 1) != 0 && a2)
    {
      do
      {
        v60 = *v7++;
        HIDWORD(v61) = HIDWORD(v60);
        *&v61 = v60;
        v62 = [NSNumber numberWithFloat:v61];
        [v59 addObject:v62];

        --a2;
      }

      while (a2);
    }

    v58 = [v59 copy];

    v5 = v69;
    v13 = v67;
    v15 = v66;
    v16 = v65;
    v57 = v64;
  }

  else
  {
    v57 = sub_10022AD98();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 138412290;
      *(&buf.value + 4) = v11;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%@ has no tracks.", &buf, 0xCu);
    }

    v58 = 0;
  }

LABEL_64:

  return v58;
}

void sub_1000FD5AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CSDIDSDualSessionProvider *__cdecl sub_1000FD5C8(id a1, IDSSession *a2, OS_dispatch_queue *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[CSDIDSDualSessionProvider alloc] initWithSession:v5 queue:v4];

  return v6;
}

id sub_1000FD63C(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a3;
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = [WeakRetained queue];
  dispatch_assert_queue_V2(v13);

  v14 = [[CSDIDSChat alloc] initIncomingWithSession:v11 remoteHandle:v10 wantsVideo:a4 remoteInviteDictionary:v9];

  return v14;
}

void sub_1000FDFC4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Incoming call was denied with error %@ so ignoring chat: %@", &v6, 0x16u);
    }
  }
}

void sub_1000FE8BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 code];
    v6 = sub_100004778();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5 == 102)
    {
      if (v7)
      {
        v8 = *(a1 + 40);
        v10 = 138412546;
        v11 = v4;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Incoming call was denied with error %@ so declining chat: %@", &v10, 0x16u);
      }

      [*(a1 + 48) declineInvitation];
    }

    else
    {
      if (v7)
      {
        v9 = *(a1 + 40);
        v10 = 138412546;
        v11 = v4;
        v12 = 2112;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Incoming call was denied with error %@ so ignoring chat: %@", &v10, 0x16u);
      }
    }
  }

  else
  {
    [*(a1 + 32) updateCacheWithChat:*(a1 + 40)];
  }
}

uint64_t sub_100100720(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_10061BA50[v13];
        v15 = PBReaderReadData();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100103E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CSDIDSService *__cdecl sub_100103E1C(id a1, BOOL a2)
{
  v2 = off_100616620;
  if (!a2)
  {
    v2 = off_100616610;
  }

  v3 = [(__objc2_class *)*v2 sharedInstance];

  return v3;
}

CSDIDSDualSessionProvider *sub_100103E6C(uint64_t a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = a2;
  v15 = [[IDSSession alloc] initWithAccount:v14 destinations:v13 options:v12];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v17 = [WeakRetained featureFlags];
  if ([v17 uPlusOneSessionWithCapabilitiesEnabled])
  {
    v18 = [WeakRetained conversationServerBag];
    v19 = [v18 isUPlusOneSessionCapabilitiesEnabled];

    if (!v19)
    {
      goto LABEL_8;
    }

    if (a5)
    {
      [NSSet setWithObjects:IDSRegistrationPropertySupportsSSRC, IDSRegistrationPropertySupportsModernGFT, 0];
    }

    else
    {
      [NSSet setWithObject:IDSRegistrationPropertySupportsModernGFT];
    }
    v17 = ;
    [v15 setRequiredCapabilities:0 requiredLackOfCapabilities:v17];
  }

LABEL_8:
  v20 = [[CSDIDSDualSessionProvider alloc] initWithSession:v15 queue:v11];

  return v20;
}

void sub_100104D14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100474CFC(a1, v3, v5);
    }

    [*(a1 + 40) endCallWithUUID:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully requested transaction to answer already-ringing call", v6, 2u);
    }
  }
}

id sub_1001057E0(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ending chat that is being upgraded: %@", &v5, 0xCu);
  }

  return [*(a1 + 32) end];
}

void sub_1001087A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) URL];
  [v2 transferFileAtTemporaryURL:v3 toDestinations:*(a1 + 48) withMetadata:*(a1 + 56) fromMember:*(a1 + 64)];
}

void sub_100108984(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100108A40;
  v5[3] = &unk_10061B030;
  v6 = v4;
  v7 = *(a1 + 56);
  [v2 performFileCopierOperation:1 onInputURL:v3 outputURL:v6 completion:v5];
}

void sub_100108A40(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = *(a1 + 32);
  v21 = 0;
  v4 = [v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:0 error:&v21];
  v5 = v21;

  if (v4)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v26 count:16];
    if (v7)
    {
      v15 = v5;
      v16 = a1;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          buf[0] = 0;
          v11 = [NSFileManager defaultManager:v15];
          v12 = [v10 path];
          v13 = [v11 fileExistsAtPath:v12 isDirectory:buf];

          if (v13 && buf[0] == 1)
          {
            v7 = v10;
            goto LABEL_16;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v17 objects:v26 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

LABEL_16:
      v5 = v15;
      a1 = v16;
    }

    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "new directory urls: %@, unzippedDirectoryURL: %@", buf, 0x16u);
    }
  }

  else
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100474E68((a1 + 32));
    }

    v7 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100108FCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138412802;
    v24 = v3;
    v25 = 2112;
    v26 = v5;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending resource at URL %@ to destinations %@ with metadata %@", buf, 0x20u);
  }

  if (v3)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = [v8 idsFromID];
      [v7 setObject:v9 forKeyedSubscript:IDSSendMessageOptionFromIDKey];
    }

    v10 = [*(a1 + 56) service];
    v11 = [v10 service];
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v21 = 0;
    v22 = 0;
    v14 = [v11 sendResourceAtURL:v3 metadata:v12 toDestinations:v13 priority:300 options:v7 identifier:&v22 error:&v21];
    v15 = v22;
    v16 = v21;

    if (v14)
    {
      v17 = *(a1 + 64);
      v18 = [*(a1 + 56) clientFileURLByIdentifier];
      [v18 setObject:v17 forKeyedSubscript:v15];

      v19 = sub_100004778();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v15;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Successfully started sending resource with identifier %@", buf, 0xCu);
      }
    }

    else
    {
      [*(a1 + 56) cleanUpTemporaryFileIfExistsForClientFileURL:*(a1 + 64)];
      v20 = sub_100004778();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100474F60();
      }

      v19 = [*(a1 + 56) delegate];
      [v19 fileTransferer:*(a1 + 56) didTransferFileAtURL:*(a1 + 64) successfully:0];
    }
  }
}

void sub_10010922C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = [*(a1 + 32) temporaryFileURLByClientFileURL];
  [v5 setObject:v6 forKeyedSubscript:*(a1 + 40)];

  (*(*(a1 + 48) + 16))();
}

uint64_t sub_100109E9C(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100475100(a1);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_10010A0E8(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 didErrorOccur];
  v5 = sub_100004778();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10047517C(a1);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[7];
    v8 = a1[4];
    v9 = a1[5];
    v13 = 134218498;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "completed operation: %ld, inputURL: %@, outputURL: %@", &v13, 0x20u);
  }

  [v3 cleanup];
  v10 = a1[6];
  v11 = [v3 didErrorOccur];

  return (*(v10 + 16))(v10, v11 ^ 1);
}

void sub_10010AAE8(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingCompletions];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v4 = objc_retainBlock(*(a1 + 48));
  v5 = [v3 containsObject:v4];

  if (v5)
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Timed out waiting for call source with identifier %@ to check in", &v9, 0xCu);
    }

    v8 = objc_retainBlock(*(a1 + 48));
    [v3 removeObject:v8];

    (*(*(a1 + 56) + 16))();
  }
}

void sub_10010B42C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 responseInformation];
  v5 = [v4 objectForKey:IMUserNotificationTextFieldValuesKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = [v3 response];
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User notification has been completed with response %lu and entered PIN %@", &v9, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, [v3 response] == 0, v6);
  }
}

uint64_t sub_10010B824(uint64_t a1, void *a2)
{
  v3 = [a2 response];
  v4 = sub_100004778();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Canceling pin request from iPhone", v8, 2u);
    }

    result = *(a1 + 32);
    if (result)
    {
      v7 = *(result + 16);
      return v7();
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Requesting pin from iPhone", buf, 2u);
    }

    result = *(a1 + 32);
    if (result)
    {
      v7 = *(result + 16);
      return v7();
    }
  }

  return result;
}

void sub_10010BE30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User tapped cancel on the Pin Display Alert", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, [v3 response] == 0);
  }
}

uint64_t sub_10010D528(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v158) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v158 & 0x7F) << v6;
      if ((v158 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 136;
        goto LABEL_222;
      case 2u:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 160) |= 0x20u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v82 = [a2 position] + 1;
          if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
          {
            v84 = [a2 data];
            [v84 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v81 |= (v158 & 0x7F) << v79;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v12 = v80++ >= 9;
          if (v12)
          {
            v41 = 0;
            goto LABEL_270;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v81;
        }

LABEL_270:
        v155 = 112;
        goto LABEL_300;
      case 3u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 160) |= 0x80u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v158 & 0x7F) << v61;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v12 = v62++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_260;
          }
        }

        v22 = (v63 != 0) & ~[a2 hasError];
LABEL_260:
        v154 = 144;
        goto LABEL_291;
      case 4u:
        v14 = PBReaderReadString();
        v15 = 32;
        goto LABEL_222;
      case 5u:
        v14 = PBReaderReadString();
        v15 = 128;
        goto LABEL_222;
      case 6u:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 160) |= 8u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v100 = [a2 position] + 1;
          if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
          {
            v102 = [a2 data];
            [v102 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v99 |= (v158 & 0x7F) << v97;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v12 = v98++ >= 9;
          if (v12)
          {
            v41 = 0;
            goto LABEL_278;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v99;
        }

LABEL_278:
        v155 = 104;
        goto LABEL_300;
      case 7u:
        v115 = 0;
        v116 = 0;
        v117 = 0;
        *(a1 + 160) |= 0x400000u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v118 = [a2 position] + 1;
          if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 1, v119 <= objc_msgSend(a2, "length")))
          {
            v120 = [a2 data];
            [v120 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v117 |= (v158 & 0x7F) << v115;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v115 += 7;
          v12 = v116++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_284;
          }
        }

        v22 = (v117 != 0) & ~[a2 hasError];
LABEL_284:
        v154 = 159;
        goto LABEL_291;
      case 8u:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        *(a1 + 160) |= 2u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v76 = [a2 position] + 1;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v75 |= (v158 & 0x7F) << v73;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v12 = v74++ >= 9;
          if (v12)
          {
            v41 = 0;
            goto LABEL_266;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v75;
        }

LABEL_266:
        v155 = 88;
        goto LABEL_300;
      case 9u:
        v129 = 0;
        v130 = 0;
        v131 = 0;
        *(a1 + 160) |= 0x200000u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v132 = [a2 position] + 1;
          if (v132 >= [a2 position] && (v133 = objc_msgSend(a2, "position") + 1, v133 <= objc_msgSend(a2, "length")))
          {
            v134 = [a2 data];
            [v134 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v131 |= (v158 & 0x7F) << v129;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v129 += 7;
          v12 = v130++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_288;
          }
        }

        v22 = (v131 != 0) & ~[a2 hasError];
LABEL_288:
        v154 = 158;
        goto LABEL_291;
      case 0xAu:
        v14 = PBReaderReadString();
        v15 = 16;
        goto LABEL_222;
      case 0xBu:
        *(a1 + 160) |= 1u;
        v158 = 0;
        v127 = [a2 position] + 8;
        if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 8, v128 <= objc_msgSend(a2, "length")))
        {
          v156 = [a2 data];
          [v156 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v158;
        goto LABEL_301;
      case 0xCu:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 160) |= 0x1000u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v158 & 0x7F) << v48;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_256;
          }
        }

        v22 = (v50 != 0) & ~[a2 hasError];
LABEL_256:
        v154 = 149;
        goto LABEL_291;
      case 0xDu:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 160) |= 0x8000u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v158 & 0x7F) << v54;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v12 = v55++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_258;
          }
        }

        v22 = (v56 != 0) & ~[a2 hasError];
LABEL_258:
        v154 = 152;
        goto LABEL_291;
      case 0xEu:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        *(a1 + 160) |= 0x800u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v112 = [a2 position] + 1;
          if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
          {
            v114 = [a2 data];
            [v114 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v111 |= (v158 & 0x7F) << v109;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v109 += 7;
          v12 = v110++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_282;
          }
        }

        v22 = (v111 != 0) & ~[a2 hasError];
LABEL_282:
        v154 = 148;
        goto LABEL_291;
      case 0xFu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 160) |= 0x10u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v158 & 0x7F) << v35;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            v41 = 0;
            goto LABEL_252;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v37;
        }

LABEL_252:
        v155 = 108;
        goto LABEL_300;
      case 0x10u:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 160) |= 0x100u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v158 & 0x7F) << v67;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v12 = v68++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_262;
          }
        }

        v22 = (v69 != 0) & ~[a2 hasError];
LABEL_262:
        v154 = 145;
        goto LABEL_291;
      case 0x11u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 160) |= 0x400u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v158 & 0x7F) << v29;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_248;
          }
        }

        v22 = (v31 != 0) & ~[a2 hasError];
LABEL_248:
        v154 = 147;
        goto LABEL_291;
      case 0x12u:
        v60 = objc_alloc_init(CSDMessagingHandle);
        objc_storeStrong((a1 + 48), v60);
        goto LABEL_135;
      case 0x13u:
        v121 = 0;
        v122 = 0;
        v123 = 0;
        *(a1 + 160) |= 0x4000u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v124 = [a2 position] + 1;
          if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
          {
            v126 = [a2 data];
            [v126 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v123 |= (v158 & 0x7F) << v121;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v121 += 7;
          v12 = v122++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_286;
          }
        }

        v22 = (v123 != 0) & ~[a2 hasError];
LABEL_286:
        v154 = 151;
        goto LABEL_291;
      case 0x14u:
        v60 = objc_alloc_init(CSDMessagingCallProvider);
        objc_storeStrong((a1 + 96), v60);
        v158 = 0;
        v159 = 0;
        if (PBReaderPlaceMark() && sub_1000EB7CC(v60, a2))
        {
          goto LABEL_219;
        }

        goto LABEL_305;
      case 0x15u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 160) |= 0x100000u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v158 & 0x7F) << v91;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_274;
          }
        }

        v22 = (v93 != 0) & ~[a2 hasError];
LABEL_274:
        v154 = 157;
        goto LABEL_291;
      case 0x16u:
        v103 = 0;
        v104 = 0;
        v105 = 0;
        *(a1 + 160) |= 0x80000u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v106 = [a2 position] + 1;
          if (v106 >= [a2 position] && (v107 = objc_msgSend(a2, "position") + 1, v107 <= objc_msgSend(a2, "length")))
          {
            v108 = [a2 data];
            [v108 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v105 |= (v158 & 0x7F) << v103;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v103 += 7;
          v12 = v104++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_280;
          }
        }

        v22 = (v105 != 0) & ~[a2 hasError];
LABEL_280:
        v154 = 156;
        goto LABEL_291;
      case 0x17u:
        v60 = objc_alloc_init(CSDMessagingCallModel);
        objc_storeStrong((a1 + 80), v60);
        v158 = 0;
        v159 = 0;
        if (!PBReaderPlaceMark() || !sub_1000AB06C(v60, a2))
        {
          goto LABEL_305;
        }

        goto LABEL_219;
      case 0x18u:
        v14 = PBReaderReadString();
        v15 = 72;
        goto LABEL_222;
      case 0x19u:
        v60 = objc_alloc_init(CSDMessagingHandle);
        [a1 addRemoteParticipantHandles:v60];
LABEL_135:
        v158 = 0;
        v159 = 0;
        if (PBReaderPlaceMark() && sub_1000D1450(v60, a2))
        {
LABEL_219:
          PBReaderRecallMark();

LABEL_301:
          v4 = a2;
          continue;
        }

LABEL_305:

        return 0;
      case 0x1Au:
        v14 = PBReaderReadString();
        v15 = 64;
        goto LABEL_222;
      case 0x1Bu:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        *(a1 + 160) |= 0x40u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v151 = [a2 position] + 1;
          if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
          {
            v153 = [a2 data];
            [v153 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v150 |= (v158 & 0x7F) << v148;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v12 = v149++ >= 9;
          if (v12)
          {
            v41 = 0;
            goto LABEL_299;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v150;
        }

LABEL_299:
        v155 = 116;
        goto LABEL_300;
      case 0x1Cu:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 160) |= 0x40000u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v158 & 0x7F) << v23;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_246;
          }
        }

        v22 = (v25 != 0) & ~[a2 hasError];
LABEL_246:
        v154 = 155;
        goto LABEL_291;
      case 0x1Du:
        v14 = PBReaderReadString();
        v15 = 56;
        goto LABEL_222;
      case 0x1Eu:
        v142 = 0;
        v143 = 0;
        v144 = 0;
        *(a1 + 160) |= 4u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v145 = [a2 position] + 1;
          if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
          {
            v147 = [a2 data];
            [v147 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v144 |= (v158 & 0x7F) << v142;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v142 += 7;
          v12 = v143++ >= 9;
          if (v12)
          {
            v41 = 0;
            goto LABEL_295;
          }
        }

        if ([a2 hasError])
        {
          v41 = 0;
        }

        else
        {
          v41 = v144;
        }

LABEL_295:
        v155 = 92;
LABEL_300:
        *(a1 + v155) = v41;
        goto LABEL_301;
      case 0x1Fu:
        v135 = 0;
        v136 = 0;
        v137 = 0;
        *(a1 + 160) |= 0x200u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v138 = [a2 position] + 1;
          if (v138 >= [a2 position] && (v139 = objc_msgSend(a2, "position") + 1, v139 <= objc_msgSend(a2, "length")))
          {
            v140 = [a2 data];
            [v140 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v137 |= (v158 & 0x7F) << v135;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v135 += 7;
          v12 = v136++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_290;
          }
        }

        v22 = (v137 != 0) & ~[a2 hasError];
LABEL_290:
        v154 = 146;
        goto LABEL_291;
      case 0x20u:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 160) |= 0x20000u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (v158 & 0x7F) << v85;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v12 = v86++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_272;
          }
        }

        v22 = (v87 != 0) & ~[a2 hasError];
LABEL_272:
        v154 = 154;
        goto LABEL_291;
      case 0x21u:
        v14 = PBReaderReadString();
        v15 = 40;
        goto LABEL_222;
      case 0x22u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 160) |= 0x10000u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v158 & 0x7F) << v42;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_254;
          }
        }

        v22 = (v44 != 0) & ~[a2 hasError];
LABEL_254:
        v154 = 153;
        goto LABEL_291;
      case 0x23u:
        v14 = PBReaderReadString();
        v15 = 24;
LABEL_222:
        v141 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_301;
      case 0x24u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 160) |= 0x2000u;
        while (1)
        {
          LOBYTE(v158) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v158 & 0x7F) << v16;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_244;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_244:
        v154 = 150;
LABEL_291:
        *(a1 + v154) = v22;
        goto LABEL_301;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_301;
    }
  }
}

BOOL sub_1001116B0(id a1, CSDCall *a2)
{
  v2 = a2;
  v3 = ([(CSDCall *)v2 isPTT]& 1) == 0 && ([(CSDCall *)v2 status]== 1 || [(CSDCall *)v2 status]== 3);

  return v3;
}

void sub_100113300(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v23 = v3;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Channel source manager %@ completed transaction group %@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [*(a1 + 40) allActions];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 channelUUID];
          v13 = [*(a1 + 48) _callWithUUID:v12];
          v14 = sub_100004778();
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          if (v13)
          {
            if (v15)
            {
              *buf = 138412290;
              v23 = v12;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Channel action completed for call with UUID %@", buf, 0xCu);
            }

            [*(a1 + 48) _processCompletedChannelAction:v11 forCall:v13];
          }

          else
          {
            if (v15)
            {
              *buf = 138412290;
              v23 = v11;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call for completed channel action %@", buf, 0xCu);
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v16 = +[CSDReportingController sharedInstance];
  [v16 reportTransactionGroupCompleted:*(a1 + 40)];
}

void sub_100113638(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) channelSources];
    *buf = 138412290;
    v29 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Channel sources changed: %@", buf, 0xCu);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [*(a1 + 40) calls];
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v25;
    *&v6 = 138412546;
    v22 = v6;
    v23 = a1;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 providerSource];
          v12 = v11;
          if (v11)
          {
            if (([v11 isConnected] & 1) == 0)
            {
              v13 = sub_100004778();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v14 = [v10 uniqueProxyIdentifierUUID];
                *buf = v22;
                v29 = v14;
                v30 = 2112;
                v31 = v12;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Suspending channel with UUID %@; channel source %@ is no longer available", buf, 0x16u);

                a1 = v23;
              }

              if ([v10 transmissionState] != 1)
              {
                [v10 setHeld:1];
                [v10 setTransmissionState:1];
              }

              [v10 setProviderSource:{0, v22}];
            }
          }

          else
          {
            v15 = *(a1 + 32);
            v16 = [v10 providerIdentifier];
            v17 = [v15 channelSourceForIdentifier:v16];

            LODWORD(v16) = [v17 isConnected];
            v18 = sub_100004778();
            v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
            if (v16)
            {
              if (v19)
              {
                v20 = [v10 uniqueProxyIdentifierUUID];
                *buf = v22;
                v29 = v20;
                v30 = 2112;
                v31 = v17;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Adding channel source %@ to channel with UUID %@", buf, 0x16u);
              }

              [v10 setProviderSource:v17];
              a1 = v23;
              [*(v23 + 40) _startMonitoringAppForCall:v10];
            }

            else
            {
              if (v19)
              {
                v21 = [v10 uniqueProxyIdentifierUUID];
                *buf = v22;
                v29 = v21;
                v30 = 2112;
                v31 = v17;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Can't add channel source %@ to channel with UUID %@ because it's not connected", buf, 0x16u);
              }

              a1 = v23;
            }
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v7);
  }
}

void sub_100114DE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "TUOpenURLWithCompletion result: %@, error: %@", &v15, 0x16u);
  }

  if (v6)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100475540(a1, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

void sub_100114F80(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "TUOpenURLWithCompletion result: %@, error: %@", &v15, 0x16u);
  }

  if (v6)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100475540(a1, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

void sub_1001151FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100115214(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bundleIdentifier];
  v4 = [v2 fetchCurrentProcessStatesForBundleIdentifier:v3];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [v4 allValues];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) integerValue] == 4)
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

id sub_10011592C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1004756C4(a1);
  }

  return [*(a1 + 32) invalidate];
}

void sub_100116050(id *a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011615C;
  block[3] = &unk_10061BCB0;
  v17 = a2;
  v11 = a1[5];
  v12 = a1[6];
  v13 = v5;
  v14 = a1[7];
  v7 = a1[8];
  v8 = a1[4];
  v15 = v7;
  v16 = v8;
  v9 = v5;
  dispatch_async(v6, block);
}

void *sub_10011615C(void *result)
{
  v1 = result;
  if (*(result + 80) == 1)
  {
    v2 = result[4];
    v3 = *(v1 + 40);

    return [v2 setDeferredTransmitStartAction:v3];
  }

  else if (result[6])
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100475760(v1, (v1 + 48), v4);
    }

    [*(v1 + 64) fail];
    return [*(v1 + 72) _processCompletedChannelAction:*(v1 + 64) forCall:*(v1 + 32)];
  }

  return result;
}

void sub_100116408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100116424(uint64_t a1)
{
  v5 = [*(a1 + 32) processObserver];
  v2 = [*(a1 + 40) providerSource];
  v3 = [v2 bundleIdentifier];
  v4 = [v5 processIdentifiersForBundleIdentifier:v3];
}

void sub_1001164A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained _processPushToTalkAppStateChangedForCall:*(a1 + 32) withPID:a2 processState:a3];
    WeakRetained = v7;
  }
}

uint64_t sub_100116DF4(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v48[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v48 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v48[0] & 0x7F) << v5;
        if ((v48[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 == 1)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 52) |= 0x10u;
        while (1)
        {
          LOBYTE(v48[0]) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v48[0] & 0x7F) << v25;
          if ((v48[0] & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            LOBYTE(v31) = 0;
            goto LABEL_66;
          }
        }

        v31 = (v27 != 0) & ~[a2 hasError];
LABEL_66:
        *(a1 + 48) = v31;
        goto LABEL_81;
      }

      if (v13 != 2)
      {
        if (v13 == 3)
        {
          v21 = PBReaderReadString();
          v22 = *(a1 + 24);
          *(a1 + 24) = v21;

          goto LABEL_81;
        }

        goto LABEL_48;
      }

      v40 = objc_alloc_init(CSDMessagingCaptionsToken);
      [a1 addTokens:v40];
      v48[0] = 0;
      v48[1] = 0;
      if (!PBReaderPlaceMark() || !sub_1001183C8(v40, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_81:
      v46 = [a2 position];
      if (v46 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 5)
    {
      if (v13 == 6)
      {
        *(a1 + 52) |= 2u;
        v48[0] = 0;
        v38 = [a2 position] + 8;
        if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 8, v39 <= objc_msgSend(a2, "length")))
        {
          v42 = [a2 data];
          [v42 getBytes:v48 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v43 = v48[0];
        v44 = 16;
        goto LABEL_80;
      }

      if (v13 == 7)
      {
        *(a1 + 52) |= 1u;
        v48[0] = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v45 = [a2 data];
          [v45 getBytes:v48 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v43 = v48[0];
        v44 = 8;
LABEL_80:
        *(a1 + v44) = v43;
        goto LABEL_81;
      }
    }

    else
    {
      if (v13 == 4)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        *(a1 + 52) |= 8u;
        while (1)
        {
          LOBYTE(v48[0]) = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v34 |= (v48[0] & 0x7F) << v32;
          if ((v48[0] & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v11 = v33++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_70;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v34;
        }

LABEL_70:
        v41 = 44;
        goto LABEL_75;
      }

      if (v13 == 5)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 52) |= 4u;
        while (1)
        {
          LOBYTE(v48[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v48[0] & 0x7F) << v14;
          if ((v48[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_74;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_74:
        v41 = 40;
LABEL_75:
        *(a1 + v41) = v20;
        goto LABEL_81;
      }
    }

LABEL_48:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_81;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1001183C8(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v36 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v36 & 0x7F) << v5;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 32) |= 4u;
          while (1)
          {
            v38 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v38 & 0x7F) << v26;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_53;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v28;
          }

LABEL_53:
          v32 = 20;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_34:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_57;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v37 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v37 & 0x7F) << v16;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_49;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_49:
          v32 = 16;
        }

        *(a1 + v32) = v22;
      }

      else if (v13 == 1)
      {
        v24 = PBReaderReadString();
        v25 = *(a1 + 24);
        *(a1 + 24) = v24;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_34;
        }

        *(a1 + 32) |= 1u;
        v35 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v35;
      }

LABEL_57:
      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100119850(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACCD0, v2);
}

void sub_1001198E4(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACCE0, v2);
}

id sub_10011AA68(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDRelayCall;
  return objc_msgSendSuper2(&v3, "setHardPauseDigitsState:", v1);
}

id sub_10011AB70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = CSDRelayCall;
  return objc_msgSendSuper2(&v3, "setHardPauseDigits:", v1);
}

id sub_10011B0E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[CSDRelayConferenceInterface sharedInstance];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10011C294(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) relayDelegate];
  v7 = sub_100004778();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Started conference successfully for answered relay call %@", &v11, 0xCu);
    }

    [v6 relayCallConferenceDidStartSuccessfullyForIncomingAnsweredCall:*(a1 + 32)];
  }

  else
  {
    if (v8)
    {
      v10 = *(a1 + 32);
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to start conference connection when answering call %@: %@", &v11, 0x16u);
    }

    [v6 relayCallConferenceFailedToStart:*(a1 + 32)];
  }
}

void sub_10011C3DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9[0] = 67109634;
    v9[1] = a2;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Conference connection stopped (cleanly=%d) for answered call %@: %@", v9, 0x1Cu);
  }

  v8 = [*(a1 + 32) relayDelegate];
  [v8 relayCallConferenceDidStop:*(a1 + 32) cleanly:a2 error:v5];
}

void sub_10011C5E8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) relayDelegate];
  v7 = sub_100004778();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Started conference successfully for dialed relay call %@", &v11, 0xCu);
    }

    [v6 relayCallConferenceDidStartSuccessfullyForOutgoingDialedCall:*(a1 + 32)];
  }

  else
  {
    if (v8)
    {
      v10 = *(a1 + 32);
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to start conference connection when dialing call %@: %@", &v11, 0x16u);
    }

    [v6 relayCallConferenceFailedToStart:*(a1 + 32)];
  }
}

void sub_10011C730(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9[0] = 67109634;
    v9[1] = a2;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Conference connection stopped (cleanly=%d) for dialed call %@: %@", v9, 0x1Cu);
  }

  v8 = [*(a1 + 32) relayDelegate];
  [v8 relayCallConferenceDidStop:*(a1 + 32) cleanly:a2 error:v5];
}

void sub_10011C93C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100004778();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Started conference successfully for pulled relay call %@", &v10, 0xCu);
    }

    v9 = [*(a1 + 32) relayDelegate];
    [v9 relayCallConferenceDidStartSuccessfullyForPulledCall:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100475818(a1, v5, v7);
    }

    [*(a1 + 32) setEndpointOnCurrentDevice:0];
  }
}

void sub_10011CA50(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9[0] = 67109634;
    v9[1] = a2;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Conference connection stopped (cleanly=%d) for pulled call %@: %@", v9, 0x1Cu);
  }

  v8 = [*(a1 + 32) relayDelegate];
  [v8 relayCallConferenceDidStop:*(a1 + 32) cleanly:a2 error:v5];
}

void sub_10011D9E0(uint64_t a1)
{
  v2 = +[TUCallHistoryManagerXPCClient callHistoryManagerClientXPCInterface];
  [*(*(a1 + 32) + 24) setRemoteObjectInterface:v2];

  v3 = +[TUCallHistoryManagerXPCClient callHistoryManagerServerXPCInterface];
  [*(*(a1 + 32) + 24) setExportedInterface:v3];

  [*(*(a1 + 32) + 24) setExportedObject:?];
  [*(*(a1 + 32) + 24) setRequiredConnectionCapability:@"access-call-history"];
  [*(*(a1 + 32) + 24) setInterruptionHandler:&stru_10061BD88];
  [*(*(a1 + 32) + 24) setInvalidationHandler:&stru_10061BDA8];
  v4 = [*(*(a1 + 32) + 24) asynchronousExportedObjectProxy];
  [TUCallHistoryManagerXPCClient setAsynchronousServer:v4];

  v5 = [*(*(a1 + 32) + 24) synchronousExportedObjectProxy];
  [TUCallHistoryManagerXPCClient setSynchronousServer:v5];
}

void sub_10011DB00(id a1, CSDClient *a2)
{
  v2 = a2;
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted from client %@", &v4, 0xCu);
  }
}

void sub_10011DBAC(id a1, CSDClient *a2)
{
  v2 = a2;
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated from client %@", &v4, 0xCu);
  }
}

void sub_10011DCF4(uint64_t a1)
{
  v1 = [*(a1 + 32) clientManager];
  [v1 invalidate];
}

void sub_10011DE60(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryManager];
  [v2 reportRecentCallForConversation:*(a1 + 40) withStartDate:*(a1 + 48) avMode:*(a1 + 56)];
}

void sub_10011DFDC(uint64_t a1)
{
  v2 = [*(a1 + 32) callHistoryManager];
  [v2 updateOutgoingLocalParticipantUUID:*(a1 + 40) forCallsWithOutgoingLocalParticipantUUID:*(a1 + 48)];
}

void sub_10011E0E4(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  [v2 addLocalClientObject:*(a1 + 40)];
}

void sub_10011E1EC(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  [v2 removeLocalClientObject:*(a1 + 40)];
}

void sub_10011EAB4(id a1)
{
  v6 = [NSCharacterSet characterSetWithCharactersInString:@", "];
  v1 = [NSCharacterSet characterSetWithCharactersInString:@""];;
  v2 = qword_1006ACCF0;
  qword_1006ACCF0 = v1;

  v3 = objc_alloc_init(NSMutableCharacterSet);
  [v3 formUnionWithCharacterSet:v6];
  [v3 formUnionWithCharacterSet:qword_1006ACCF0];
  v4 = [v3 copy];
  v5 = qword_1006ACCF8;
  qword_1006ACCF8 = v4;
}

uint64_t sub_10011EF78(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v27 = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27 & 0x7F) << v17;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_37;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_37:
        *(a1 + 16) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 8;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_38;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10011FB8C(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  dispatch_async(v2, *(a1 + 40));
}

void sub_100120810(uint64_t a1)
{
  v2 = [*(a1 + 32) identifiersWaitingForAcknowledgement];
  v3 = [v2 containsObject:*(a1 + 40)];

  v4 = sub_100004778();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received acknowledgement for message with identifier: %@. Removing from waiting messages.", &v8, 0xCu);
    }

    v4 = [*(a1 + 32) identifiersWaitingForAcknowledgement];
    [v4 removeObject:*(a1 + 40)];
  }

  else if (v5)
  {
    v7 = *(a1 + 40);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WARN] Received acknowledgement for unknown message with identifier: %@", &v8, 0xCu);
  }
}

void sub_100120A48(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = sub_100004778();
  v4 = v3;
  if (v2 == 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received successful didSend for message with identifier %@ using account %@", &v7, 0x16u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1004759CC(a1, v4);
  }
}

void sub_100120F08(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 messenger:*(a1 + 32) handledMessage:*(a1 + 40) fromDestination:*(a1 + 48) device:*(a1 + 56)];
}

void sub_100121444(uint64_t a1)
{
  v2 = +[CSDRelayIDSService sharedInstance];
  v3 = [v2 pairedDevice];

  if (v3)
  {
    v35 = v3;
    v4 = IDSCopyIDForDevice();
    v5 = [NSSet setWithObject:v4];

    v6 = [*(a1 + 32) _sendMessageOptionsWithTimeout:*(a1 + 72) wantsAcknowledgement:*(a1 + 56)];
    v7 = +[CSDRelayIDSService sharedInstance];
    v8 = [v7 service];
    v9 = (a1 + 40);
    v10 = [*(a1 + 40) data];
    v47 = 0;
    v46 = 0;
    v36 = v6;
    v11 = [v8 sendData:v10 toDestinations:v5 priority:300 options:v6 identifier:&v47 error:&v46];
    v12 = v47;
    v13 = v46;

    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*v9 typeString];
      *buf = 138413058;
      v49 = v15;
      v50 = 2112;
      v51 = v12;
      v52 = 2112;
      v53 = v36;
      v54 = 2112;
      v55 = v5;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending %@ message with identifier %@ and options %@ to destinations %@", buf, 0x2Au);
    }

    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *v9;
      *buf = 138412546;
      v49 = v12;
      v50 = 2112;
      v51 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "identifier %@ message %@", buf, 0x16u);
    }

    v18 = sub_100004778();
    v19 = v18;
    v20 = v13;
    if (v11)
    {
      v3 = v35;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [*v9 typeString];
        *buf = 138412290;
        v49 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Successfully sent %@ message", buf, 0xCu);
      }

      if (*(a1 + 48))
      {
        v22 = +[TUCallCenter sharedInstance];
        v23 = [v22 queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100121A7C;
        block[3] = &unk_10061A7E0;
        v45 = *(a1 + 48);
        dispatch_async(v23, block);
      }

      if (*(a1 + 72) != 1)
      {
        goto LABEL_25;
      }

      v24 = sub_100004778();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [*v9 type];
        if (v25 >= 0x43)
        {
          v26 = [NSString stringWithFormat:@"(unknown: %i)", v25];
        }

        else
        {
          v26 = *(&off_10061BEA8 + v25);
        }

        v31 = *(a1 + 64);
        *buf = 138412802;
        v49 = v26;
        v50 = 2112;
        v51 = v12;
        v52 = 2048;
        v53 = v31;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Setting up reliable message delivery for %@ message with identifier: %@ and retry attempts left: %lu", buf, 0x20u);
      }

      v32 = [*(a1 + 32) identifiersWaitingForAcknowledgement];
      [v32 addObject:v12];

      v33 = dispatch_time(0, (*(a1 + 56) * 1000000000.0));
      v34 = [*(a1 + 32) queue];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_100121A90;
      v39[3] = &unk_10061BE60;
      v39[4] = *(a1 + 32);
      v40 = v12;
      v41 = *(a1 + 40);
      v42 = *(a1 + 56);
      v43 = *(a1 + 64);
      dispatch_after(v33, v34, v39);

      v30 = v40;
    }

    else
    {
      v3 = v35;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100475A60((a1 + 40), v20, v19);
      }

      if (!*(a1 + 48))
      {
        goto LABEL_25;
      }

      v28 = +[TUCallCenter sharedInstance];
      v29 = [v28 queue];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100121AA8;
      v37[3] = &unk_10061A7E0;
      v38 = *(a1 + 48);
      dispatch_async(v29, v37);

      v30 = v38;
    }

LABEL_25:
    goto LABEL_26;
  }

  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [*(a1 + 40) typeString];
    *buf = 138412290;
    v49 = v27;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] No paired device, so unable to send message %@", buf, 0xCu);
  }

LABEL_26:
}

uint64_t sub_100122144(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = PBReaderReadString();
        v15 = 8;
      }

      else
      {
        if (v13 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v27 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v27 & 0x7F) << v16;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_35;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_35:
          *(a1 + 24) = v22;
          goto LABEL_36;
        }

        if (v13 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_36;
        }

        v14 = PBReaderReadString();
        v15 = 16;
      }

      v23 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_36:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100122CA8(uint64_t a1)
{
  if (a1 == 3)
  {
    return 2;
  }

  else
  {
    return a1 == 2;
  }
}

uint64_t sub_100122CC0(int a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

uint64_t sub_100122CD8(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    return 1;
  }

  else
  {
    return (a1 + 1);
  }
}

void sub_100122F6C(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACD08, v2);
}

void sub_100122FBC(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACD18, v2);
}

void sub_10012300C(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACD28, v2);
}

void sub_100123208(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[CXMember alloc] initWithHandle:v3];

  [v2 addObject:v4];
}

void sub_100123780(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [CXMember alloc];
  v7 = [v3 handle];

  v5 = [CXHandle handleWithTUHandle:v7];
  v6 = [v4 initWithHandle:v5];
  [v2 addObject:v6];
}

void sub_100123834(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [CXMember alloc];
  v6 = [CXHandle handleWithTUHandle:v3];

  v5 = [v4 initWithHandle:v6];
  [v2 addObject:v5];
}

void sub_1001238D0(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 handle];
  v4 = [v3 value];
  v5 = [v4 length];

  if (v5)
  {
    [*(a1 + 32) addObject:v6];
  }
}

id sub_100124CF4(CSDMessagingConversationParticipantDidJoinContext *self, SEL a2)
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationParticipantDidJoinContext;
  v3 = [(CSDMessagingConversationParticipantDidJoinContext *)&v7 description];
  v4 = [(CSDMessagingConversationParticipantDidJoinContext *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

uint64_t sub_1001258C4(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v167) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v167 & 0x7F) << v6;
      if ((v167 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 160) |= 4u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v167 & 0x7F) << v14;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_297:
            v165 = 128;
            goto LABEL_325;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        goto LABEL_297;
      case 2u:
        v34 = objc_alloc_init(CSDMessagingConversationMember);
        [a1 addMembers:v34];
        goto LABEL_138;
      case 3u:
        v34 = objc_alloc_init(CSDMessagingConversationMessage);
        objc_storeStrong((a1 + 40), v34);
        v167 = 0;
        v168 = 0;
        if (!PBReaderPlaceMark() || !sub_10022500C(v34, a2))
        {
          goto LABEL_328;
        }

        goto LABEL_209;
      case 4u:
        v65 = PBReaderReadString();
        v66 = 56;
        goto LABEL_152;
      case 5u:
        v65 = PBReaderReadString();
        v66 = 48;
        goto LABEL_152;
      case 6u:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        *(a1 + 160) |= 0x100u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v167 & 0x7F) << v98;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v12 = v99++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_301;
          }
        }

        v27 = (v100 != 0) & ~[a2 hasError];
LABEL_301:
        v164 = 143;
        goto LABEL_320;
      case 7u:
        v34 = objc_alloc_init(CSDMessagingConversationActivitySession);
        objc_storeStrong((a1 + 8), v34);
        v167 = 0;
        v168 = 0;
        if (!PBReaderPlaceMark() || !sub_100138158(v34, a2))
        {
          goto LABEL_328;
        }

        goto LABEL_209;
      case 8u:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 160) |= 0x400000u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (v167 & 0x7F) << v85;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v12 = v86++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_293;
          }
        }

        v27 = (v87 != 0) & ~[a2 hasError];
LABEL_293:
        v164 = 157;
        goto LABEL_320;
      case 9u:
        v116 = 0;
        v117 = 0;
        v118 = 0;
        *(a1 + 160) |= 0x1000u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v119 = [a2 position] + 1;
          if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
          {
            v121 = [a2 data];
            [v121 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v118 |= (v167 & 0x7F) << v116;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v116 += 7;
          v12 = v117++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_307;
          }
        }

        v27 = (v118 != 0) & ~[a2 hasError];
LABEL_307:
        v164 = 147;
        goto LABEL_320;
      case 0xAu:
        v65 = PBReaderReadString();
        v66 = 96;
        goto LABEL_152;
      case 0xBu:
        v34 = objc_alloc_init(CSDMessagingHandle);
        [a1 addOtherInvitedHandles:v34];
        v167 = 0;
        v168 = 0;
        if (!PBReaderPlaceMark() || !sub_1000D1450(v34, a2))
        {
          goto LABEL_328;
        }

        goto LABEL_209;
      case 0xCu:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 160) |= 0x400u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v62 = [a2 position] + 1;
          if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v61 |= (v167 & 0x7F) << v59;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v12 = v60++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_283;
          }
        }

        v27 = (v61 != 0) & ~[a2 hasError];
LABEL_283:
        v164 = 145;
        goto LABEL_320;
      case 0xDu:
        v34 = objc_alloc_init(CSDMessagingConversationMember);
        [a1 addLightweightMembers:v34];
LABEL_138:
        v167 = 0;
        v168 = 0;
        if (!PBReaderPlaceMark() || !sub_1001579E4(v34, a2))
        {
          goto LABEL_328;
        }

        goto LABEL_209;
      case 0xEu:
        v110 = 0;
        v111 = 0;
        v112 = 0;
        *(a1 + 160) |= 0x80u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v113 = [a2 position] + 1;
          if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 1, v114 <= objc_msgSend(a2, "length")))
          {
            v115 = [a2 data];
            [v115 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v112 |= (v167 & 0x7F) << v110;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v110 += 7;
          v12 = v111++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_305;
          }
        }

        v27 = (v112 != 0) & ~[a2 hasError];
LABEL_305:
        v164 = 142;
        goto LABEL_320;
      case 0xFu:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 160) |= 0x40u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (v167 & 0x7F) << v47;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v12 = v48++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_279;
          }
        }

        v27 = (v49 != 0) & ~[a2 hasError];
LABEL_279:
        v164 = 141;
        goto LABEL_320;
      case 0x10u:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 160) |= 0x800000u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v82 = [a2 position] + 1;
          if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
          {
            v84 = [a2 data];
            [v84 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v81 |= (v167 & 0x7F) << v79;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v12 = v80++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_291;
          }
        }

        v27 = (v81 != 0) & ~[a2 hasError];
LABEL_291:
        v164 = 158;
        goto LABEL_320;
      case 0x11u:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 160) |= 2u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v167 & 0x7F) << v41;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v12 = v42++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_277;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v43;
        }

LABEL_277:
        v165 = 112;
        goto LABEL_325;
      case 0x12u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 160) |= 0x20u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v167 & 0x7F) << v91;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_299;
          }
        }

        v27 = (v93 != 0) & ~[a2 hasError];
LABEL_299:
        v164 = 140;
        goto LABEL_320;
      case 0x13u:
        v34 = objc_alloc_init(CSDMessagingConversationParticipantAssociation);
        objc_storeStrong((a1 + 80), v34);
        v167 = 0;
        v168 = 0;
        if (!PBReaderPlaceMark() || !sub_1000609B0(v34, a2))
        {
          goto LABEL_328;
        }

        goto LABEL_209;
      case 0x14u:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        *(a1 + 160) |= 0x8000u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v137 = [a2 position] + 1;
          if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
          {
            v139 = [a2 data];
            [v139 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v136 |= (v167 & 0x7F) << v134;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v12 = v135++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_313;
          }
        }

        v27 = (v136 != 0) & ~[a2 hasError];
LABEL_313:
        v164 = 150;
        goto LABEL_320;
      case 0x15u:
        v65 = PBReaderReadString();
        v66 = 16;
        goto LABEL_152;
      case 0x16u:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 160) |= 0x100000u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v107 = [a2 position] + 1;
          if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 1, v108 <= objc_msgSend(a2, "length")))
          {
            v109 = [a2 data];
            [v109 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v106 |= (v167 & 0x7F) << v104;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v12 = v105++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_303;
          }
        }

        v27 = (v106 != 0) & ~[a2 hasError];
LABEL_303:
        v164 = 155;
        goto LABEL_320;
      case 0x17u:
        v128 = 0;
        v129 = 0;
        v130 = 0;
        *(a1 + 160) |= 0x20000u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v131 = [a2 position] + 1;
          if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 1, v132 <= objc_msgSend(a2, "length")))
          {
            v133 = [a2 data];
            [v133 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v130 |= (v167 & 0x7F) << v128;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v128 += 7;
          v12 = v129++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_311;
          }
        }

        v27 = (v130 != 0) & ~[a2 hasError];
LABEL_311:
        v164 = 152;
        goto LABEL_320;
      case 0x18u:
        v140 = 0;
        v141 = 0;
        v142 = 0;
        *(a1 + 160) |= 0x2000u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v143 = [a2 position] + 1;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
          {
            v145 = [a2 data];
            [v145 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v142 |= (v167 & 0x7F) << v140;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v140 += 7;
          v12 = v141++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_315;
          }
        }

        v27 = (v142 != 0) & ~[a2 hasError];
LABEL_315:
        v164 = 148;
        goto LABEL_320;
      case 0x19u:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        *(a1 + 160) |= 0x10000u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v76 = [a2 position] + 1;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v75 |= (v167 & 0x7F) << v73;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v12 = v74++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_289;
          }
        }

        v27 = (v75 != 0) & ~[a2 hasError];
LABEL_289:
        v164 = 151;
        goto LABEL_320;
      case 0x1Au:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 160) |= 0x10u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v167 & 0x7F) << v67;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v12 = v68++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_287;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v69;
        }

LABEL_287:
        v165 = 136;
        goto LABEL_325;
      case 0x1Bu:
        v158 = 0;
        v159 = 0;
        v160 = 0;
        *(a1 + 160) |= 8u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v161 = [a2 position] + 1;
          if (v161 >= [a2 position] && (v162 = objc_msgSend(a2, "position") + 1, v162 <= objc_msgSend(a2, "length")))
          {
            v163 = [a2 data];
            [v163 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v160 |= (v167 & 0x7F) << v158;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v158 += 7;
          v12 = v159++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_324;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v160;
        }

LABEL_324:
        v165 = 132;
        goto LABEL_325;
      case 0x1Cu:
        v34 = objc_alloc_init(CSDMessagingScreenShareContext);
        objc_storeStrong((a1 + 104), v34);
        v167 = 0;
        v168 = 0;
        if (!PBReaderPlaceMark() || !sub_1000C7A98(v34, a2))
        {
          goto LABEL_328;
        }

        goto LABEL_209;
      case 0x1Du:
        v146 = 0;
        v147 = 0;
        v148 = 0;
        *(a1 + 160) |= 0x40000u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v149 = [a2 position] + 1;
          if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 1, v150 <= objc_msgSend(a2, "length")))
          {
            v151 = [a2 data];
            [v151 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v148 |= (v167 & 0x7F) << v146;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v146 += 7;
          v12 = v147++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_317;
          }
        }

        v27 = (v148 != 0) & ~[a2 hasError];
LABEL_317:
        v164 = 153;
        goto LABEL_320;
      case 0x1Eu:
        v152 = 0;
        v153 = 0;
        v154 = 0;
        *(a1 + 160) |= 0x200000u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v155 = [a2 position] + 1;
          if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
          {
            v157 = [a2 data];
            [v157 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v154 |= (v167 & 0x7F) << v152;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v152 += 7;
          v12 = v153++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_319;
          }
        }

        v27 = (v154 != 0) & ~[a2 hasError];
LABEL_319:
        v164 = 156;
        goto LABEL_320;
      case 0x1Fu:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        *(a1 + 160) |= 0x800u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v125 = [a2 position] + 1;
          if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 1, v126 <= objc_msgSend(a2, "length")))
          {
            v127 = [a2 data];
            [v127 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v124 |= (v167 & 0x7F) << v122;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v12 = v123++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_309;
          }
        }

        v27 = (v124 != 0) & ~[a2 hasError];
LABEL_309:
        v164 = 146;
        goto LABEL_320;
      case 0x20u:
        v65 = PBReaderReadString();
        v66 = 120;
LABEL_152:
        v97 = *(a1 + v66);
        *(a1 + v66) = v65;

        goto LABEL_326;
      case 0x21u:
        v34 = objc_alloc_init(CSDMessagingConversationParticipantCluster);
        objc_storeStrong((a1 + 88), v34);
        v167 = 0;
        v168 = 0;
        if (PBReaderPlaceMark() && sub_10022A638(v34, a2))
        {
LABEL_209:
          PBReaderRecallMark();

LABEL_326:
          v4 = a2;
          continue;
        }

LABEL_328:

        return 0;
      case 0x22u:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        *(a1 + 160) |= 0x4000u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v56 = [a2 position] + 1;
          if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v55 |= (v167 & 0x7F) << v53;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v12 = v54++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_281;
          }
        }

        v27 = (v55 != 0) & ~[a2 hasError];
LABEL_281:
        v164 = 149;
        goto LABEL_320;
      case 0x23u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 160) |= 0x200u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v167 & 0x7F) << v35;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_273;
          }
        }

        v27 = (v37 != 0) & ~[a2 hasError];
LABEL_273:
        v164 = 144;
        goto LABEL_320;
      case 0x24u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 160) |= 0x80000u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v167 & 0x7F) << v21;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_267;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_267:
        v164 = 154;
LABEL_320:
        *(a1 + v164) = v27;
        goto LABEL_326;
      case 0x25u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 160) |= 1u;
        while (1)
        {
          LOBYTE(v167) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v167 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v167 & 0x7F) << v28;
          if ((v167 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_271;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v30;
        }

LABEL_271:
        v165 = 64;
LABEL_325:
        *(a1 + v165) = v20;
        goto LABEL_326;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_326;
    }
  }
}

void sub_10012A374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10012A394(void *a1)
{
  v6 = [CUTWeakLinkClass() creationRequestForAsset];
  v2 = objc_alloc_init(CUTWeakLinkClass());
  [v2 setShouldMoveFile:1];
  [v6 addResourceWithType:1 fileURL:a1[4] options:v2];
  [v6 addResourceWithType:9 fileURL:a1[5] options:v2];
  v3 = [v6 placeholderForCreatedAsset];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10012A460(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(*(*(a1 + 40) + 8) + 40) localIdentifier];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "saved photo with localIdentifier: %@ error: %@", &v9, 0x16u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = [*(*(*(a1 + 40) + 8) + 40) localIdentifier];
    (*(v7 + 16))(v7, v8, v4);
  }
}

void sub_10012A778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10012A798(uint64_t a1)
{
  v6 = [CUTWeakLinkClass() creationRequestForAsset];
  v2 = objc_alloc_init(CUTWeakLinkClass());
  [v2 setShouldMoveFile:1];
  [v6 addResourceWithType:2 fileURL:*(a1 + 32) options:v2];
  v3 = [v6 placeholderForCreatedAsset];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10012A850(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(*(*(a1 + 40) + 8) + 40) localIdentifier];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saved video with localIdentifier: %@ error: %@", &v9, 0x16u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = [*(*(*(a1 + 40) + 8) + 40) localIdentifier];
    (*(v7 + 16))(v7, v8, v4);
  }
}

void sub_10012AB50(id a1, NSString *a2, NSDictionary *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = sub_10003D4D0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Logging power log event name=%@ dictionary=%@", &v7, 0x16u);
  }

  if (qword_1006ACD40 != -1)
  {
    sub_100475C40();
  }

  off_1006ACD38(36, v4, v5, 0);
}

void sub_10012C804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012C820(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 service];
      v7 = [v6 description];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Called begin listening block:%@", &v9, 0xCu);
    }

    v8 = [WeakRetained conversationManager];
    [v8 beginListeningOnService:v3];
  }
}

void sub_10012CBDC(uint64_t a1)
{
  v2 = [*(a1 + 32) provider];
  [v2 reportAudioFinishedForCallWithUUID:*(a1 + 40)];
}

void sub_10012E774(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v9 = a3;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_10012E8B8;
  v18 = &unk_10061C2D8;
  v10 = *(a1 + 40);
  v19 = *(a1 + 32);
  v20 = v10;
  v21 = v8;
  v22 = v9;
  v23 = *(a1 + 48);
  v24 = *(a1 + 56);
  v25 = *(a1 + 64);
  v26 = a5;
  v11 = v9;
  v12 = v8;
  v13 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, &v15);
  v14 = [*(a1 + 32) queue];
  dispatch_async(v14, v13);
}

void sub_10012E8B8(uint64_t a1)
{
  v2 = [*(a1 + 32) callDataSource];
  v3 = [*(a1 + 40) callUUID];
  v4 = [v2 _callWithUUID:v3];

  if (!v4)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Skipping to invite remote destinations since we don't have a call tracking any longer", buf, 2u);
    }

    goto LABEL_82;
  }

  v5 = [NSMutableArray arrayWithArray:*(a1 + 48)];
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v72 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "modernFTDestinations: %@", buf, 0xCu);
  }

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 56);
    *buf = 138412290;
    v72 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "gftOneToOneDestinations: %@", buf, 0xCu);
  }

  if (![*(a1 + 56) count])
  {
    goto LABEL_58;
  }

  v9 = [*(a1 + 32) _createJoinCallAction:*(a1 + 40) outgoingCallerID:*(a1 + 64) gftOneToOneDestinations:*(a1 + 56)];
  v10 = +[NSDate now];
  [v10 timeIntervalSinceDate:*(a1 + 72)];
  v12 = v11 * 1000.0;

  if (v12 > 5000.0)
  {
    v75 = TUCallTUStartCallActionDuration;
    v13 = [NSNumber numberWithDouble:v12];
    v14 = [v13 stringValue];
    v15 = [v14 stringByAppendingString:@"ms duration"];
    v76 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];

    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v72 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "reportJoinDurationLongerThanThreasholdForCallUUID: %@", buf, 0xCu);
    }

    v18 = +[CSDReportingController sharedInstance];
    v19 = [*(a1 + 40) callUUID];
    [v18 reportJoinDurationLongerThanThreasholdForCallUUID:v19 report:v16];
  }

  v20 = sub_100004778();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 56);
    *buf = 138412546;
    v72 = v9;
    v73 = 2112;
    v74 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Created join call action: %@ for gftOneToOneDestinations: %@", buf, 0x16u);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v22 = [*(a1 + 32) delayedActionsByCallUUID];
  v23 = [v9 callUUID];
  v24 = [v22 objectForKeyedSubscript:v23];

  v25 = [v24 countByEnumeratingWithState:&v66 objects:v70 count:16];
  if (!v25)
  {

    v27 = 0;
    v28 = 0;
    goto LABEL_55;
  }

  v26 = v25;
  v64 = v9;
  v65 = v5;
  v27 = 0;
  v28 = 0;
  v29 = *v67;
  do
  {
    for (i = 0; i != v26; i = i + 1)
    {
      if (*v67 != v29)
      {
        objc_enumerationMutation(v24);
      }

      v31 = *(*(&v66 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v28;
        v33 = v27;
        v28 = v31;
      }

      else
      {
        objc_opt_class();
        v32 = v27;
        v33 = v31;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }
      }

      v34 = v31;

      v27 = v33;
    }

    v26 = [v24 countByEnumeratingWithState:&v66 objects:v70 count:16];
  }

  while (v26);

  v5 = v65;
  v9 = v64;
  if (v28)
  {
    v35 = [v64 isUplinkMuted];
    if (v35 == [v28 isMuted])
    {
      v36 = sub_100004778();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v39 = "Not changing joinCallAction.uplinkMuted";
        v40 = v36;
        v41 = 2;
        goto LABEL_39;
      }
    }

    else
    {
      [v64 setUplinkMuted:{objc_msgSend(v28, "isMuted")}];
      v36 = sub_100004778();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        if ([v64 isUplinkMuted])
        {
          v37 = @"YES";
        }

        else
        {
          v37 = @"NO";
        }

        if ([v28 isMuted])
        {
          v38 = @"YES";
        }

        else
        {
          v38 = @"NO";
        }

        v5 = v65;
        *buf = 138412546;
        v72 = v37;
        v73 = 2112;
        v74 = v38;
        v39 = "Setting videoEnabled from %@ to %@ because of lastSendintVideoCallAction";
        v40 = v36;
        v41 = 22;
LABEL_39:
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v39, buf, v41);
      }
    }
  }

  if (v27)
  {
    v42 = [v64 isVideoEnabled];
    v43 = [v27 isSendingVideo];
    v44 = sub_100004778();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
    if (v42 == v43)
    {
      if (v45)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Not changing joinCallAction.videoEnabled", buf, 2u);
      }
    }

    else
    {
      if (v45)
      {
        if ([v64 isVideoEnabled])
        {
          v46 = @"YES";
        }

        else
        {
          v46 = @"NO";
        }

        if ([v27 isSendingVideo])
        {
          v47 = @"YES";
        }

        else
        {
          v47 = @"NO";
        }

        v5 = v65;
        *buf = 138412546;
        v72 = v46;
        v73 = 2112;
        v74 = v47;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Setting videoEnabled from %@ to %@ because of lastSendintVideoCallAction", buf, 0x16u);
      }

      [v64 setVideoEnabled:{objc_msgSend(v27, "isSendingVideo")}];
    }
  }

LABEL_55:
  [*(a1 + 32) provider:*(a1 + 80) performJoinCallAction:v9 shouldUseIDSDemuxer:0];
  if (![v5 count])
  {
    v48 = objc_alloc_init(CXCallUpdate);
    [v48 setConversation:1];
    v49 = *(a1 + 80);
    v50 = [*(a1 + 40) callUUID];
    [v49 reportCallWithUUID:v50 updated:v48];
  }

LABEL_58:
  if ([v5 count])
  {
    [*(a1 + 32) initiateModernFTInviteForAction:*(a1 + 40) destinations:v5 excludedIMAVDestinations:*(a1 + 56) joinCallActionToFulfill:0];
  }

  if (![*(a1 + 56) count] && !-[NSObject count](v5, "count"))
  {
    v51 = sub_100004778();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_100475C68();
    }

    v52 = *(a1 + 88);
    if (v52 == 2)
    {
      v53 = sub_100004778();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v54 = "The device is trying to call a GreenTea device";
LABEL_70:
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, v54, buf, 2u);
      }

LABEL_71:

      v55 = [*(a1 + 32) provider];
      v56 = [*(a1 + 40) callUUID];
      v57 = +[NSDate now];
      [v55 reportCallWithUUID:v56 endedAtDate:v57 privateReason:105];
    }

    else
    {
      if (v52 == 1)
      {
        v53 = sub_100004778();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v54 = "The device is calling itsself, no other devices sign into the same account";
          goto LABEL_70;
        }

        goto LABEL_71;
      }

      v55 = objc_alloc_init(CXCallFailureContext);
      [v55 setProviderErrorCode:*(a1 + 88)];
      v58 = [*(a1 + 32) featureFlags];
      v59 = [v58 ftAppDeletionEnabled];

      if (v59 && !+[CSDFaceTimeInstallationNotifier isFaceTimeInstalled])
      {
        [v55 setFailureReason:23];
      }

      else
      {
        [v55 setFailureReason:11];
        if ((TUIsIDSAvailableForFaceTime() & 1) == 0)
        {
          [v55 setFailureReason:22];
          v60 = sub_100004778();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "TUIsIDSAvailableForFaceTime returns false for start call action", buf, 2u);
          }
        }
      }

      v56 = [*(a1 + 32) provider];
      v57 = [*(a1 + 40) callUUID];
      v61 = +[NSDate now];
      [v56 reportCallWithUUID:v57 failedAtDate:v61 withContext:v55];
    }

    [*(a1 + 40) fail];
  }

  v62 = *(a1 + 32);
  v63 = [*(a1 + 40) callUUID];
  [v62 _processDelayedActionList:v63 provider:*(a1 + 80)];

LABEL_82:
}

void sub_10012F3B0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v38 = v5;
    v39 = 1024;
    v40 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Invited push tokens via IDS: %@ wasCanceled: %d", buf, 0x12u);
  }

  v7 = [*(a1 + 32) callDataSource];
  v8 = (a1 + 40);
  v9 = [*(a1 + 40) callUUID];
  v10 = [v7 _callWithUUID:v9];

  if (v10)
  {
    if (a3)
    {
      v11 = sub_100004778();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not sending IMAV invites because IDS session was canceled", buf, 2u);
      }
    }

    else
    {
      v11 = [NSMutableArray arrayWithArray:v5];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v14 = *(a1 + 48);
      v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v33;
        do
        {
          v18 = 0;
          do
          {
            if (*v33 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v32 + 1) + 8 * v18);
            v31 = 0;
            v20 = [v19 _stripPotentialTokenURIWithToken:&v31];
            v21 = v31;
            [v11 addObject:v21];

            v18 = v18 + 1;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v16);
      }

      v22 = [*(a1 + 32) faceTimeIMAVProviderDelegate];
      v23 = *(a1 + 40);
      v24 = [v11 copy];
      [v22 inviteIMAVPeersWithAction:v23 tokensToExclude:v24 joinCallActionToFulfill:*(a1 + 56)];

      v25 = [*(a1 + 32) faceTimeIDSProviderDelegate];
      v26 = [*(a1 + 40) callUUID];
      if ([v25 isManagingCallWithUUID:v26])
      {
      }

      else
      {
        v27 = [*(a1 + 32) faceTimeIMAVProviderDelegate];
        v28 = [*(a1 + 40) callUUID];
        v29 = [v27 isManagingCallWithUUID:v28];

        if ((v29 & 1) == 0)
        {
          v30 = sub_100004778();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_100475C9C(v8);
          }

          [*v8 fail];
        }
      }
    }
  }

  else
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100475D28((a1 + 40));
    }

    v11 = [*(a1 + 32) faceTimeIDSProviderDelegate];
    v13 = [*(a1 + 40) callUUID];
    [v11 endCallWithUUIDAsLocalHangup:v13];
  }
}

void sub_1001301B8(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100130300;
  block[3] = &unk_10061C350;
  v12 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v19 = v12;
  v20 = *(a1 + 48);
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = a5;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, QOS_CLASS_USER_INITIATED, 0, block);
  v17 = [*(a1 + 32) queue];
  dispatch_async(v17, v16);
}

void sub_100130300(uint64_t a1)
{
  v2 = [*(a1 + 32) callDataSource];
  v3 = [*(a1 + 40) callUUID];
  v4 = [v2 _callWithUUID:v3];

  v5 = sub_100004778();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 56);
      *v48 = 138412290;
      *&v48[4] = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "modernFTDestinations: %@", v48, 0xCu);
    }

    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 64);
      *v48 = 138412290;
      *&v48[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "gftOneToOneDestinations: %@", v48, 0xCu);
    }

    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 72);
      *v48 = 138412290;
      *&v48[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "screenSharingRemoteControlDestinations: %@", v48, 0xCu);
    }

    v12 = *(a1 + 64);
    v13 = *(a1 + 56);
    v14 = [*(a1 + 32) featureFlags];
    if ([v14 usesModernScreenSharingFromMessages])
    {
      v15 = [*(a1 + 40) screenShareRequestType];

      if (v15)
      {
        v16 = *(a1 + 72);

        v17 = [*(a1 + 72) count];
        if (v17 < [*(a1 + 64) count] || objc_msgSend(*(a1 + 56), "count"))
        {
          [*(a1 + 40) setShouldSendLegacyScreenSharingInvite:1];
        }

        v13 = &__NSArray0__struct;
LABEL_19:
        if ([v16 count])
        {
          v19 = [NSSet setWithArray:v16];
          [*(a1 + 40) setRemotePushTokens:v19];

          v20 = [*(a1 + 32) faceTimeConversationProviderDelegate];
          [v20 provider:*(a1 + 48) performJoinCallAction:*(a1 + 40)];
        }

        if ([v13 count])
        {
          v21 = [CXStartCallAction alloc];
          v22 = [*(a1 + 40) callUUID];
          v23 = [*(a1 + 40) remoteMembers];
          v24 = [v23 anyObject];
          v25 = [v24 handle];
          v26 = [v21 initWithCallUUID:v22 handle:v25];

          [v26 setVideo:{objc_msgSend(*(a1 + 40), "isVideo")}];
          v27 = sub_100004778();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = *(a1 + 56);
            *v48 = 138412546;
            *&v48[4] = v26;
            v49 = 2112;
            v50 = v28;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Created start call action: %@ for modernFTDestinations: %@", v48, 0x16u);
          }

          v29 = *(a1 + 32);
          if ([v16 count])
          {
            v30 = 0;
          }

          else
          {
            v30 = *(a1 + 40);
          }

          [v29 initiateModernFTInviteForAction:v26 destinations:v13 excludedIMAVDestinations:v16 joinCallActionToFulfill:v30];
          if (![v16 count])
          {
            v31 = objc_alloc_init(CXCallUpdate);
            [v31 setConversation:0];
            v32 = *(a1 + 48);
            v33 = [*(a1 + 40) callUUID];
            [v32 reportCallWithUUID:v33 updated:v31];
          }
        }

        if ([v16 count] || objc_msgSend(v13, "count"))
        {
          goto LABEL_52;
        }

        v34 = sub_100004778();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_100475E50();
        }

        v35 = *(a1 + 80);
        if (v35 == 2)
        {
          v36 = sub_100004778();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *v48 = 0;
            v37 = "The device is trying to call a GreenTea device";
            goto LABEL_40;
          }

LABEL_41:

          v38 = [*(a1 + 32) provider];
          v39 = [*(a1 + 40) callUUID];
          v40 = +[NSDate now];
          [v38 reportCallWithUUID:v39 endedAtDate:v40 privateReason:105];
LABEL_51:

          [*(a1 + 40) fail];
LABEL_52:
          v46 = *(a1 + 32);
          v47 = [*(a1 + 40) callUUID];
          [v46 _processDelayedActionList:v47 provider:*(a1 + 48)];

          goto LABEL_53;
        }

        if (v35 == 1)
        {
          v36 = sub_100004778();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *v48 = 0;
            v37 = "The device is calling itsself and on other devices sign into the same account";
LABEL_40:
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v37, v48, 2u);
            goto LABEL_41;
          }

          goto LABEL_41;
        }

        v38 = objc_alloc_init(CXCallFailureContext);
        [v38 setProviderErrorCode:*(a1 + 80)];
        v41 = [*(a1 + 32) featureFlags];
        v42 = [v41 ftAppDeletionEnabled];

        if (v42 && !+[CSDFaceTimeInstallationNotifier isFaceTimeInstalled])
        {
          v44 = 23;
        }

        else
        {
          [v38 setFailureReason:11];
          if (TUIsIDSAvailableForFaceTime())
          {
LABEL_50:
            v39 = [*(a1 + 32) provider];
            v40 = [*(a1 + 40) callUUID];
            v45 = +[NSDate now];
            [v39 reportCallWithUUID:v40 failedAtDate:v45 withContext:v38];

            goto LABEL_51;
          }

          v43 = sub_100004778();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *v48 = 0;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "TUIsIDSAvailableForFaceTime returns false for join call action", v48, 2u);
          }

          v44 = 22;
        }

        [v38 setFailureReason:v44];
        goto LABEL_50;
      }
    }

    else
    {
    }

    v16 = v12;
    goto LABEL_19;
  }

  if (v6)
  {
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Skipping to invite remote destinations since we don't have a call tracking any longer", v48, 2u);
  }

  v18 = *(a1 + 32);
  v16 = [*(a1 + 40) callUUID];
  [v18 _processDelayedActionList:v16 provider:*(a1 + 48)];
LABEL_53:
}

BOOL sub_1001365CC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 length] && objc_msgSend(v4, "length") && objc_msgSend(v3, "compare:options:", v4, 64) < 2;

  return v5;
}

void sub_100137C84(uint64_t a1)
{
  v2 = [*(a1 + 32) assertion];

  if (v2)
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 40) bundleIdentifier];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating process assertion for bundle identifier %@ from completion handler", &v6, 0xCu);
    }

    v5 = [*(a1 + 32) assertion];
    [v5 invalidate];
  }
}

void sub_100137D74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 4)
  {
    (*(*(a1 + 32) + 16))();
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100138158(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v22) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          *(a1 + 40) |= 1u;
          v22 = 0;
          v17 = [a2 position] + 8;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v22 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v22;
          goto LABEL_36;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(CSDMessagingConversationActivitySessionLocallyPersistedMetadata);
          objc_storeStrong((a1 + 32), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !sub_1000C85F0(v14, a2))
          {
LABEL_38:

            return 0;
          }

          goto LABEL_27;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v16 = *(a1 + 24);
          *(a1 + 24) = v15;

          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(CSDMessagingConversationActivity);
          objc_storeStrong((a1 + 16), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !sub_1001A812C(v14, a2))
          {
            goto LABEL_38;
          }

LABEL_27:
          PBReaderRecallMark();

          goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100138C28(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 32;
            goto LABEL_37;
          case 2:
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_37;
          case 3:
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_37;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = PBReaderReadString();
          v15 = 48;
          goto LABEL_37;
        }

        if (v13 == 7)
        {
          v16 = objc_alloc_init(CSDMessagingPersonNameComponents);
          objc_storeStrong((a1 + 56), v16);
          v19[0] = 0;
          v19[1] = 0;
          if (!PBReaderPlaceMark() || !sub_100138C28(v16, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_38;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          v15 = 8;
          goto LABEL_37;
        }

        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          v15 = 40;
LABEL_37:
          v16 = *(a1 + v15);
          *(a1 + v15) = v14;
LABEL_38:

          goto LABEL_39;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1001399F4(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(CSDMessagingConversationLink);
        [a1 addLink:v20];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !sub_100064394(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 16) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10013A7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  objc_destroyWeak((v37 + 32));
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak(&a37);
  objc_destroyWeak((v40 - 184));
  _Unwind_Resume(a1);
}

void sub_10013A848(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationManager];
  [v2 addDelegate:*(a1 + 40) queue:*(a1 + 48)];
}

void sub_10013A89C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v4 = [WeakRetained springBoardProcessObserver];
    v5 = [v4 processIdentifiersForBundleIdentifier:TUBundleIdentifierSpringBoardApplication];

    v6 = [NSNumber numberWithInt:a2];
    v7 = [v5 containsObject:v6];

    if (v7)
    {
      v8 = [NSNumber numberWithInt:a2];
      [v9 handleSpringBoardPIDChanged:v8];
    }

    WeakRetained = v9;
  }
}

void sub_10013A978(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 allKeys];
    v5 = [v4 firstObject];
    [WeakRetained handleSpringBoardPIDChanged:v5];
  }
}

void sub_10013AA08(uint64_t a1, uint64_t a2, void *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained inCallServiceProcessObserver];
    v8 = [v7 processIdentifiersForBundleIdentifier:TUBundleIdentifierInCallServiceApplication];

    if ([v8 count] >= 2)
    {
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] InCallService has multiple process identifiers: %@", &v13, 0xCu);
      }
    }

    v10 = [NSNumber numberWithInt:a2];
    v11 = [v8 containsObject:v10];

    if (v11)
    {
      [v6 setInCallServiceProcessState:a3];
      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134217984;
        v14 = a3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "InCallService process state is now %ld", &v13, 0xCu);
      }

      [v6 updateResolvedDescriptor];
    }
  }
}

void sub_10013ABA8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([v3 count] >= 2)
    {
      v5 = sub_100004778();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] InCallService has multiple process identifiers: %@", &v10, 0xCu);
      }
    }

    v6 = [v3 allValues];
    v7 = [v6 firstObject];
    [WeakRetained setInCallServiceProcessState:{objc_msgSend(v7, "integerValue")}];

    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [WeakRetained inCallServiceProcessState];
      v10 = 134217984;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Initialized inCallServiceProcessState to %ld", &v10, 0xCu);
    }

    [WeakRetained updateResolvedDescriptor];
  }
}

void sub_10013AE80(uint64_t a1)
{
  v2 = [*(a1 + 32) springBoardPID];

  if (v2)
  {
    v3 = [*(a1 + 32) springBoardPID];
    v4 = *(a1 + 40);

    if (v3 != v4)
    {
      v5 = sub_100004778();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 32) springBoardPID];
        v7 = *(a1 + 40);
        v10 = 138412546;
        v11 = v6;
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SpringBoard process has changed PID from %@ to %@", &v10, 0x16u);
      }

      [*(a1 + 32) setSpringBoardPID:*(a1 + 40)];
      [*(a1 + 32) updateResolvedDescriptor];
    }
  }

  else
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Started tracking SpringBoard process with PID %@", &v10, 0xCu);
    }

    [*(a1 + 32) setSpringBoardPID:*(a1 + 40)];
  }
}

void sub_10013AFF8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) callCenterObserver];
  v3 = [v4 activeConversationForCall:*(a1 + 40)];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

id sub_10013BA90(uint64_t a1)
{
  [*(a1 + 32) setShouldRegisterForPillDatasource:*(a1 + 48)];
  [*(a1 + 32) setResolvedCallForActiveDescriptor:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 updateResolvedDescriptor];
}

void sub_10013CD1C(uint64_t a1)
{
  v1 = [[CSDRelayConferenceInterface alloc] initWithSerialQueue:*(a1 + 32)];
  v2 = qword_1006ACD48;
  qword_1006ACD48 = v1;
}

CSDAVConference *__cdecl sub_10013CE90(id a1)
{
  v1 = objc_alloc_init(CSDAVConference);

  return v1;
}

void sub_10013CF6C(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"CSDRelayConferenceMutedChangedNotification" object:0];
}

void sub_10013E55C(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) conferenceConnections];
  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  v6 = [v3 containsObject:v5];

  if (v6)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100475FB0(v2, v4, v7);
    }

    v8 = *v2;
    v9 = [*v4 conference];
    [v8 _cleanUpAllConferenceConnectionsForConference:v9 withError:0];
  }
}

void sub_10013FD2C(uint64_t a1)
{
  v2 = [*(a1 + 32) conferencesAwaitingConnectionClose];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WARN] Timed out waiting for conference %@ to close connection after receiving end", &v6, 0xCu);
    }

    [*(a1 + 32) _postDidCloseNotificationForConferenceIfNecessary:*(a1 + 40)];
  }
}

uint64_t sub_100141A34(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v52) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v52 & 0x7F) << v5;
      if ((v52 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 96) |= 8u;
        while (1)
        {
          LOBYTE(v52) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v52 & 0x7F) << v13;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_94:
            v49 = 88;
            goto LABEL_99;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_94;
      case 2u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 96) |= 4u;
        while (1)
        {
          LOBYTE(v52) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v52 & 0x7F) << v35;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_98;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v37;
        }

LABEL_98:
        v49 = 76;
        goto LABEL_99;
      case 3u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 96) |= 2u;
        while (1)
        {
          LOBYTE(v52) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v52 & 0x7F) << v29;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_90;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v31;
        }

LABEL_90:
        v49 = 72;
        goto LABEL_99;
      case 4u:
        v26 = PBReaderReadString();
        v27 = 80;
        goto LABEL_64;
      case 5u:
        v26 = PBReaderReadString();
        v27 = 24;
        goto LABEL_64;
      case 6u:
        v26 = PBReaderReadString();
        v27 = 48;
LABEL_64:
        v41 = *(a1 + v27);
        *(a1 + v27) = v26;

        goto LABEL_100;
      case 7u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 96) |= 0x10u;
        while (1)
        {
          LOBYTE(v52) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v52 & 0x7F) << v42;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            LOBYTE(v48) = 0;
            goto LABEL_103;
          }
        }

        v48 = (v44 != 0) & ~[a2 hasError];
LABEL_103:
        *(a1 + 92) = v48;
        goto LABEL_100;
      case 8u:
        v28 = objc_alloc_init(CSDMessagingHandle);
        objc_storeStrong((a1 + 32), v28);
        v52 = 0;
        v53 = 0;
        if (!PBReaderPlaceMark() || !sub_1000D1450(v28, a2))
        {
          goto LABEL_105;
        }

        goto LABEL_82;
      case 9u:
        v28 = objc_alloc_init(CSDMessagingConversationMember);
        objc_storeStrong((a1 + 40), v28);
        goto LABEL_80;
      case 0xAu:
        v28 = objc_alloc_init(CSDMessagingConversationMember);
        [a1 addRemoteMembers:v28];
LABEL_80:
        v52 = 0;
        v53 = 0;
        if (PBReaderPlaceMark() && sub_1001579E4(v28, a2))
        {
          goto LABEL_82;
        }

        goto LABEL_105;
      case 0xBu:
        v28 = objc_alloc_init(CSDMessagingConversationParticipant);
        [a1 addActiveParticipants:v28];
        v52 = 0;
        v53 = 0;
        if (!PBReaderPlaceMark() || !sub_100072604(v28, a2))
        {
          goto LABEL_105;
        }

        goto LABEL_82;
      case 0xCu:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 96) |= 1u;
        while (1)
        {
          LOBYTE(v52) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v52 & 0x7F) << v20;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_86;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v22;
        }

LABEL_86:
        v49 = 16;
LABEL_99:
        *(a1 + v49) = v19;
        goto LABEL_100;
      case 0xDu:
        v28 = objc_alloc_init(CSDMessagingConversationReport);
        objc_storeStrong((a1 + 64), v28);
        v52 = 0;
        v53 = 0;
        if (PBReaderPlaceMark() && sub_10015C41C(v28, a2))
        {
LABEL_82:
          PBReaderRecallMark();

LABEL_100:
          v50 = [a2 position];
          if (v50 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_105:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_100;
    }
  }
}

id *sub_100143768(id *result, int a2)
{
  if (a2)
  {
    return [result[4] sendIDSAction:@"CSDPinExchangeActionRequestPIN" toDevice:result[5]];
  }

  return result;
}

void sub_100143D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100143DB4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a2)
    {
      v7 = objc_alloc_init(NSNumberFormatter);
      v8 = [WeakRetained pendingCodesToDevicesForApproval];
      v9 = [*(a1 + 32) uniqueID];
      v10 = [v8 _numberForKey:v9];

      v11 = [v7 numberFromString:v5];
      if (v11 && v10 && [v10 isEqualToNumber:v11])
      {
        v12 = sub_100004778();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "The entered PIN code is correct", &v24, 2u);
        }

        v13 = [WeakRetained pinExchangeDelegate];
        [v13 enrollDevice:*(a1 + 32) forSenderIdentityUUID:*(a1 + 40)];

        v14 = sub_100004778();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          v24 = 138412290;
          v25 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Activated Thumper for requesting device %@", &v24, 0xCu);
        }

        v16 = 1;
      }

      else
      {
        v18 = sub_100004778();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] The entered PIN code is incorrect, could not register device.", &v24, 2u);
        }

        [WeakRetained displayPinErrorNotification];
        v16 = 0;
      }
    }

    else
    {
      v17 = sub_100004778();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "The user entered no code... or the code entered was not an NSString", &v24, 2u);
      }

      v7 = [WeakRetained pinExchangeDelegate];
      [v7 unenrollDevice:*(a1 + 32)];
      v16 = 0;
    }

    [WeakRetained sendApprovalResponseToDevice:*(a1 + 32) enteredCorrectly:v16 wasCancelled:a2 ^ 1u];
    v19 = [WeakRetained pendingCodesToDevicesForApproval];
    v20 = [*(a1 + 32) uniqueID];
    v21 = [v19 objectForKey:v20];

    if (v21)
    {
      v22 = [WeakRetained pendingCodesToDevicesForApproval];
      v23 = [*(a1 + 32) uniqueID];
      [v22 removeObjectForKey:v23];

      [WeakRetained setPendingCodesToDevicesForApproval:0];
    }
  }
}

void sub_1001449CC(uint64_t a1)
{
  [*(a1 + 32) setUsesNotificationCenter:0];
  [*(a1 + 32) setRepresentedApplicationBundle:TUBundleIdentifierTelephonyUtilitiesFramework];
  v2 = +[IMUserNotificationCenter sharedInstance];
  [v2 addUserNotification:*(a1 + 32) listener:0 completionHandler:0];
}

id *sub_1001455F8(id *result, int a2)
{
  if (a2)
  {
    return [result[4] cancelPinRequests];
  }

  return result;
}

uint64_t sub_100145BF0(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v42[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v42[0] & 0x7F) << v5;
        if ((v42[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        if (v13 == 1)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 56) |= 4u;
          while (1)
          {
            LOBYTE(v42[0]) = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v42[0] & 0x7F) << v30;
            if ((v42[0] & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_66;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v32;
          }

LABEL_66:
          v39 = 52;
          goto LABEL_71;
        }

        if (v13 != 2)
        {
          if (v13 == 3)
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              LOBYTE(v42[0]) = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v42[0] & 0x7F) << v16;
              if ((v42[0] & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_75;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_75:
            *(a1 + 8) = v22;
            goto LABEL_76;
          }

LABEL_54:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_76;
        }

        v14 = objc_alloc_init(CSDMessagingHandle);
        v15 = 40;
      }

      else
      {
        if (v13 > 5)
        {
          if (v13 == 6)
          {
            v36 = PBReaderReadString();
            v37 = 24;
            goto LABEL_58;
          }

          if (v13 == 7)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 56) |= 2u;
            while (1)
            {
              LOBYTE(v42[0]) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:v42 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v42[0] & 0x7F) << v23;
              if ((v42[0] & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_70;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_70:
            v39 = 48;
LABEL_71:
            *(a1 + v39) = v29;
            goto LABEL_76;
          }

          goto LABEL_54;
        }

        if (v13 == 4)
        {
          v36 = PBReaderReadString();
          v37 = 32;
LABEL_58:
          v38 = *(a1 + v37);
          *(a1 + v37) = v36;

          goto LABEL_76;
        }

        if (v13 != 5)
        {
          goto LABEL_54;
        }

        v14 = objc_alloc_init(CSDMessagingHandle);
        v15 = 16;
      }

      objc_storeStrong((a1 + v15), v14);
      v42[0] = 0;
      v42[1] = 0;
      if (!PBReaderPlaceMark() || !sub_1000D1450(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_76:
      v40 = [a2 position];
    }

    while (v40 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100146B60(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1006ACD58;
  qword_1006ACD58 = v1;
}

void sub_100147090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001470CC(uint64_t a1)
{
  v2 = +[TUCallCapabilitiesXPCClient callCapabilitiesClientXPCInterface];
  v3 = [*(a1 + 32) clientManager];
  [v3 setRemoteObjectInterface:v2];

  v4 = +[TUCallCapabilitiesXPCClient callCapabilitiesServerXPCInterface];
  v5 = [*(a1 + 32) clientManager];
  [v5 setExportedInterface:v4];

  v6 = *(a1 + 32);
  v7 = [v6 clientManager];
  [v7 setExportedObject:v6];

  v8 = [*(a1 + 32) clientManager];
  [v8 setInterruptionHandler:&stru_10061C608];

  v9 = [*(a1 + 32) clientManager];
  [v9 setInvalidationHandler:&stru_10061C628];

  v10 = [*(a1 + 32) clientManager];
  v11 = [v10 asynchronousExportedObjectProxy];
  [TUCallCapabilitiesXPCClient setAsynchronousServer:v11];

  v13 = [*(a1 + 32) clientManager];
  v12 = [v13 synchronousExportedObjectProxy];
  [TUCallCapabilitiesXPCClient setSynchronousServer:v12];
}

void sub_100147230(id a1, CSDClient *a2)
{
  v2 = a2;
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted from client %@", &v4, 0xCu);
  }
}

void sub_1001472DC(id a1, CSDClient *a2)
{
  v2 = a2;
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated from client %@", &v4, 0xCu);
  }
}

void sub_100147388(uint64_t a1, uint64_t a2, void *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained processObserver];
    v8 = TUBundleIdentifierInCallServiceApplication;
    v9 = [v7 processIdentifiersForBundleIdentifier:TUBundleIdentifierInCallServiceApplication];

    if ([v9 count] >= 2)
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] InCallService has multiple process identifiers: %@", buf, 0xCu);
      }
    }

    v11 = [NSNumber numberWithInt:a2];
    v12 = [v9 containsObject:v11];

    if (v12)
    {
      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v32 = a3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "InCallService has changed process state to %ld", buf, 0xCu);
      }

      if (a3 == 2)
      {
        v25 = v9;
        v14 = sub_100004778();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "InCallService has been suspended; invalidating its XPC client connections.", buf, 2u);
        }

        v15 = [v6 clientManager];
        v16 = [v15 clients];

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v17 = v16;
        v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v27;
          do
          {
            v21 = 0;
            do
            {
              if (*v27 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v26 + 1) + 8 * v21);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v23 = [v22 processBundleIdentifier];
                v24 = [v23 isEqualToString:v8];

                if (v24)
                {
                  [v22 invalidate];
                }
              }

              v21 = v21 + 1;
            }

            while (v19 != v21);
            v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
          }

          while (v19);
        }

        v9 = v25;
      }
    }
  }
}

void sub_100147670(uint64_t a1)
{
  v2 = objc_alloc_init(TUCallCapabilitiesState);
  [*(a1 + 32) setState:v2];

  [*(a1 + 32) _initializePairedHostDeviceState];
  [*(a1 + 32) _updateState];
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) state];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initialized capability state: %@", &v7, 0xCu);
  }

  v5 = [*(a1 + 32) thumperCapabilitiesMonitor];
  [v5 updateState];

  [*(a1 + 32) _updateDefaultCallingAppIfNecessary];
  v6 = [*(a1 + 32) clientManager];
  [v6 startListeningOnMachServiceWithName:@"com.apple.telephonyutilities.callservicesdaemon.callcapabilities"];
}

void sub_100147878(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) state];
  v4 = [v3 debugDescription];
  [v2 appendFormat:@"State: %@\n", v4];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) telephonyCallCapabilities];
  v7 = [v6 debugDescription];
  [v5 appendFormat:@"Telephony capabilities: %@\n", v7];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) accountsController];
  v10 = [v9 debugDescription];
  [v8 appendFormat:@"Accounts controller: %@\n", v10];

  v11 = *(a1 + 32);
  v13 = [*(a1 + 40) pairedHostDeviceState];
  v12 = [v13 debugDescription];
  [v11 appendFormat:@"Paired Host Device State: %@\n", v12];
}

void sub_100147BF4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 48);
  v6 = *(v5 + 16);
  v9 = a3;
  v7 = v6(v5, a2);
  v8 = 40;
  if (v7)
  {
    v8 = 32;
  }

  [v9 capabilityStateUpdated:*(a1 + v8)];
}

void sub_100147D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100147D9C(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_100147E9C(uint64_t a1)
{
  result = [*(a1 + 32) _isWatchDevice];
  if (result)
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating paired host device state", v4, 2u);
    }

    [*(a1 + 32) setPairedHostDeviceState:*(a1 + 40)];
    [*(a1 + 32) _updateDynamicCapabilitiesAndUpdateClients];
    [*(a1 + 32) _updateClientsWithState];
    return [*(a1 + 32) _savePairedHostDeviceState];
  }

  return result;
}

void sub_100148134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100148154(uint64_t a1)
{
  v5 = [*(a1 + 32) state];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001481B8(uint64_t a1)
{
  v5 = [*(a1 + 32) state];
  v2 = [v5 publiclyAccessibleCopy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_1001482E4(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TUCallCapabilitiesXPCServer - setRelayCallingEnabled: %d", v5, 8u);
  }

  return [*(a1 + 32) _setRelayCallingEnabled:*(a1 + 40)];
}

id sub_100148488(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TUCallCapabilitiesXPCServer - setRelayCallingEnabled: %d forDeviceWithID: %@", v6, 0x12u);
  }

  return [*(a1 + 40) _setRelayCallingEnabled:*(a1 + 48) forDeviceWithID:*(a1 + 32)];
}