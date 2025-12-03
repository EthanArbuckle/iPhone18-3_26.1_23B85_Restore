@interface CXCallUpdate
- (BOOL)isRemoteMomentsAvailable;
- (CXCallUpdate)initWithDialRequest:(id)request;
- (CXCallUpdate)initWithFaceTimeIDSChat:(id)chat;
- (CXCallUpdate)initWithIDSChat:(id)chat;
- (CXCallUpdate)initWithIMAVChat:(id)chat;
- (CXCallUpdate)initWithJoinConversationRequest:(id)request;
- (CXCallUpdate)initWithStartCallAction:(id)action;
- (CXCallUpdate)initWithTUConversation:(id)conversation;
- (CXCallUpdate)initWithTinCanIDSChat:(id)chat;
- (CXCallUpdate)sanitizedCallUpdate;
- (NSNumber)handoffRecipientParticipant;
- (NSString)localizedHandoffRecipientDeviceCategory;
- (NSString)remoteIDSDestination;
- (NSUUID)conversationID;
- (TUMediaTokens)tuMediaTokens;
- (id)tuCallUpdateWithProvider:(id)provider withCallUUID:(id)d;
- (int64_t)faceTimeTransportType;
- (int64_t)inputAudioPowerSpectrumToken;
- (int64_t)outputAudioPowerSpectrumToken;
- (unint64_t)initialLinkType;
- (void)setConversationID:(id)d;
- (void)setFaceTimeTransportType:(int64_t)type;
- (void)setHandoffRecipientParticipant:(id)participant;
- (void)setInitialLinkType:(unint64_t)type;
- (void)setInputAudioPowerSpectrumToken:(int64_t)token;
- (void)setLocalizedHandoffRecipientDeviceCategory:(id)category;
- (void)setOutputAudioPowerSpectrumToken:(int64_t)token;
- (void)setRemoteIDSDestination:(id)destination;
@end

@implementation CXCallUpdate

- (CXCallUpdate)sanitizedCallUpdate
{
  v2 = [(CXCallUpdate *)self copy];
  if (([v2 hasSet] & 4) == 0)
  {
    goto LABEL_3;
  }

  remoteMember = [v2 remoteMember];
  handle = [remoteMember handle];
  value = [handle value];
  v6 = [value length];

  if (!v6)
  {
    [v2 setRemoteMember:0];
  }

  else
  {
LABEL_3:
    if (([v2 hasSet] & 0x400000000000) != 0)
    {
      v7 = +[NSMutableSet set];
      remoteParticipantHandles = [v2 remoteParticipantHandles];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1001238D0;
      v12[3] = &unk_10061C190;
      v13 = v7;
      v9 = v7;
      [remoteParticipantHandles enumerateObjectsUsingBlock:v12];

      v10 = [v9 copy];
      [v2 setRemoteParticipantHandles:v10];
    }
  }

  return v2;
}

- (TUMediaTokens)tuMediaTokens
{
  v3 = objc_alloc_init(TUMediaTokens);
  callTokens = [(CXCallUpdate *)self callTokens];
  [v3 setCombinedAudioStreamToken:{objc_msgSend(callTokens, "combinedAudioStreamToken")}];

  callTokens2 = [(CXCallUpdate *)self callTokens];
  [v3 setUplinkStreamToken:{objc_msgSend(callTokens2, "uplinkStreamToken")}];

  callTokens3 = [(CXCallUpdate *)self callTokens];
  [v3 setDownlinkStreamToken:{objc_msgSend(callTokens3, "downlinkStreamToken")}];

  return v3;
}

- (CXCallUpdate)initWithFaceTimeIDSChat:(id)chat
{
  chatCopy = chat;
  v5 = [(CXCallUpdate *)self initWithIDSChat:chatCopy];
  v6 = v5;
  if (v5)
  {
    [(CXCallUpdate *)v5 setFaceTimeTransportType:2];
    -[CXCallUpdate setRemoteMomentsAvailable:](v6, "setRemoteMomentsAvailable:", [chatCopy isRemoteMomentsAvailable]);
    -[CXCallUpdate setShouldSuppressInCallUI:](v6, "setShouldSuppressInCallUI:", [chatCopy shouldSuppressInCallUI]);
    [(CXCallUpdate *)v6 setSupportsScreening:0];
    [(CXCallUpdate *)v6 setSupportsRecording:0];
    [(CXCallUpdate *)v6 setIsUnderlyingLinksConnected:1];
  }

  return v6;
}

- (CXCallUpdate)initWithIMAVChat:(id)chat
{
  chatCopy = chat;
  v5 = [(CXCallUpdate *)self init];
  if (v5)
  {
    v6 = [CXMember alloc];
    v7 = [CXHandle alloc];
    otherIMHandle = [chatCopy otherIMHandle];
    v9 = [otherIMHandle ID];
    v10 = [v7 initWithDestinationID:v9];
    v11 = [v6 initWithHandle:v10];
    [(CXCallUpdate *)v5 setRemoteMember:v11];

    -[CXCallUpdate setSupportsHolding:](v5, "setSupportsHolding:", [chatCopy isVideo] ^ 1);
    [(CXCallUpdate *)v5 setSupportsGrouping:0];
    [(CXCallUpdate *)v5 setSupportsUngrouping:0];
    [(CXCallUpdate *)v5 setSupportsDTMF:0];
    [(CXCallUpdate *)v5 setSupportsRecording:0];
    [(CXCallUpdate *)v5 setIsUnderlyingLinksConnected:1];
    [(CXCallUpdate *)v5 setSupportsScreening:0];
    [(CXCallUpdate *)v5 setRequiresInCallSounds:1];
    v12 = sub_10007BFE0(chatCopy);
    [(CXCallUpdate *)v5 setCrossDeviceIdentifier:v12];

    [(CXCallUpdate *)v5 setAudioInterruptionProvider:1];
    if ([chatCopy isVideo])
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    [(CXCallUpdate *)v5 setAudioInterruptionOperationMode:v13];
    if (qword_1006ACB08 != -1)
    {
      sub_100471A14();
    }

    [(CXCallUpdate *)v5 setAudioCategory:qword_1006ACB00];
    -[CXCallUpdate updatePropertiesForVideo:](v5, "updatePropertiesForVideo:", [chatCopy isVideo]);
  }

  return v5;
}

- (CXCallUpdate)initWithTUConversation:(id)conversation
{
  conversationCopy = conversation;
  v5 = [(CXCallUpdate *)self init];
  if (!v5)
  {
    goto LABEL_116;
  }

  remoteMembers = [conversationCopy remoteMembers];
  v7 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [remoteMembers count]);

  remoteMembers2 = [conversationCopy remoteMembers];
  v119[0] = _NSConcreteStackBlock;
  v119[1] = 3221225472;
  v119[2] = sub_10007D0A8;
  v119[3] = &unk_10061A200;
  v9 = v7;
  v120 = v9;
  [remoteMembers2 enumerateObjectsUsingBlock:v119];

  [(CXCallUpdate *)v5 setRemoteParticipantHandles:v9];
  localMember = [conversationCopy localMember];
  handle = [localMember handle];
  value = [handle value];
  [(CXCallUpdate *)v5 setLocalMemberHandleValue:value];

  initiator = [conversationCopy initiator];
  v14 = [CXHandle handleWithTUHandle:initiator];
  [(CXCallUpdate *)v5 setInitiator:v14];

  groupUUID = [conversationCopy groupUUID];
  [(CXCallUpdate *)v5 setParticipantGroupUUID:groupUUID];

  [(CXCallUpdate *)v5 setSupportsGrouping:0];
  [(CXCallUpdate *)v5 setSupportsUngrouping:0];
  [(CXCallUpdate *)v5 setSupportsDTMF:0];
  remoteMembers3 = [conversationCopy remoteMembers];
  v17 = [remoteMembers3 count];
  v18 = 0;
  if (v17 == 1)
  {
    v18 = [conversationCopy avMode] != 2;
  }

  [(CXCallUpdate *)v5 setSupportsHolding:v18];

  remoteMembers4 = [conversationCopy remoteMembers];
  v20 = [remoteMembers4 count] == 1 && objc_msgSend(conversationCopy, "avMode") != 2;
  [(CXCallUpdate *)v5 setSupportsRecording:v20];

  -[CXCallUpdate setIsUnderlyingLinksConnected:](v5, "setIsUnderlyingLinksConnected:", [conversationCopy isUnderlyingLinksConnected]);
  -[CXCallUpdate setIsUpgradeToVideo:](v5, "setIsUpgradeToVideo:", [conversationCopy isUpgradeToVideo]);
  localScreenSharingRequest = [conversationCopy localScreenSharingRequest];
  v22 = localScreenSharingRequest;
  if (localScreenSharingRequest)
  {
    if ([localScreenSharingRequest type] == 2)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    [(CXCallUpdate *)v5 setScreenSharingIntention:v23];
  }

  v96 = v9;
  if ([v9 count] > 1 || objc_msgSend(conversationCopy, "avMode") == 2)
  {
    [(CXCallUpdate *)v5 setSupportsScreening:0];
  }

  else
  {
    screenSharingRequests = [conversationCopy screenSharingRequests];
    -[CXCallUpdate setSupportsScreening:](v5, "setSupportsScreening:", [screenSharingRequests count] == 0);
  }

  provider = [conversationCopy provider];
  isDefaultProvider = [provider isDefaultProvider];
  if (isDefaultProvider & 1) != 0 || ([conversationCopy provider], value = objc_claimAutoreleasedReturnValue(), (objc_msgSend(value, "isTelephonyWithSharePlayProvider")))
  {
    -[CXCallUpdate setSupportsRecents:](v5, "setSupportsRecents:", [conversationCopy isNearbySession] ^ 1);
    if (isDefaultProvider)
    {
      goto LABEL_22;
    }
  }

  else
  {
    [(CXCallUpdate *)v5 setSupportsRecents:0];
  }

LABEL_22:
  provider2 = [conversationCopy provider];
  -[CXCallUpdate setMutuallyExclusiveCall:](v5, "setMutuallyExclusiveCall:", [provider2 isDefaultProvider] ^ 1);

  if (![conversationCopy isLocallyCreated] || !objc_msgSend(conversationCopy, "isOneToOneModeEnabled") || objc_msgSend(conversationCopy, "state") == 3)
  {
    [(CXCallUpdate *)v5 setConversation:1];
  }

  provider3 = [conversationCopy provider];
  if ([provider3 isDefaultProvider])
  {
    localMember2 = [conversationCopy localMember];
    -[CXCallUpdate setRequiresInCallSounds:](v5, "setRequiresInCallSounds:", [localMember2 isLightweightMember] ^ 1);
  }

  else
  {
    [(CXCallUpdate *)v5 setRequiresInCallSounds:0];
  }

  [(CXCallUpdate *)v5 setAudioInterruptionProvider:1];
  [(CXCallUpdate *)v5 setAudioInterruptionOperationMode:2];
  if (qword_1006ACB18 != -1)
  {
    sub_100471A28();
  }

  [(CXCallUpdate *)v5 setAudioCategory:qword_1006ACB10];
  if ([conversationCopy avMode])
  {
    -[CXCallUpdate updatePropertiesForVideo:](v5, "updatePropertiesForVideo:", [conversationCopy avMode] == 2);
  }

  else
  {
    v30 = sub_100004778();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [conversationCopy UUID];
      *buf = 138412290;
      v127 = uUID;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Not setting video properties for conversation UUID: %@ because we're in AVLess", buf, 0xCu);
    }
  }

  v97 = v5;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
  v33 = [activeRemoteParticipants countByEnumeratingWithState:&v115 objects:v125 count:16];
  v98 = conversationCopy;
  if (v33)
  {
    v34 = v33;
    v35 = *v116;
    while (2)
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v116 != v35)
        {
          objc_enumerationMutation(activeRemoteParticipants);
        }

        if ([*(*(&v115 + 1) + 8 * i) isScreenEnabled])
        {
          v37 = 1;
          goto LABEL_46;
        }
      }

      v34 = [activeRemoteParticipants countByEnumeratingWithState:&v115 objects:v125 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }

    v37 = 0;
LABEL_46:
    conversationCopy = v98;
  }

  else
  {
    v37 = 0;
  }

  v95 = v22;

  v38 = +[CPAudioRoutePolicyManager sharedInstance];
  sharePlaySupported = [v38 sharePlaySupported];

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  activitySessions = [conversationCopy activitySessions];
  v40 = [activitySessions countByEnumeratingWithState:&v111 objects:v124 count:16];
  if (v40)
  {
    v41 = v40;
    LOBYTE(isUsingAirplay) = 0;
    v43 = *v112;
LABEL_50:
    v44 = 0;
    while (1)
    {
      if (*v112 != v43)
      {
        objc_enumerationMutation(activitySessions);
      }

      v45 = *(*(&v111 + 1) + 8 * v44);
      if (isUsingAirplay)
      {
        isUsingAirplay = 1;
      }

      else
      {
        isUsingAirplay = [*(*(&v111 + 1) + 8 * v44) isUsingAirplay];
      }

      state = [v45 state];
      v47 = state != 4;
      if (state == 4)
      {
        goto LABEL_68;
      }

      if ([v45 state] == 1)
      {
        break;
      }

      activity = [v45 activity];
      if ([activity isScreenSharingActivity])
      {
        state2 = [v45 state];

        if (!state2)
        {
          goto LABEL_70;
        }
      }

      else
      {
      }

      if (v41 == ++v44)
      {
        v41 = [activitySessions countByEnumeratingWithState:&v111 objects:v124 count:16];
        v47 = 0;
        if (v41)
        {
          goto LABEL_50;
        }

        goto LABEL_70;
      }
    }

    if (isUsingAirplay)
    {
      v47 = 1;
LABEL_68:
      isUsingAirplay = 1;
      goto LABEL_70;
    }

    isUsingAirplay = [v45 isUsingAirplay];
    v47 = 1;
  }

  else
  {
    v47 = 0;
    isUsingAirplay = 0;
  }

LABEL_70:

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  mergedActiveRemoteParticipants = [conversationCopy mergedActiveRemoteParticipants];
  v51 = [mergedActiveRemoteParticipants countByEnumeratingWithState:&v107 objects:v123 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = 0;
    v54 = *v108;
    do
    {
      for (j = 0; j != v52; j = j + 1)
      {
        if (*v108 != v54)
        {
          objc_enumerationMutation(mergedActiveRemoteParticipants);
        }

        capabilities = [*(*(&v107 + 1) + 8 * j) capabilities];
        v53 |= [capabilities supportsRequestToScreenShare];
      }

      v52 = [mergedActiveRemoteParticipants countByEnumeratingWithState:&v107 objects:v123 count:16];
    }

    while (v52);
  }

  else
  {
    LOBYTE(v53) = 0;
  }

  [(CXCallUpdate *)v97 setAnyRemoteSupportsRequestToScreenShare:v53 & 1];
  [(CXCallUpdate *)v97 setMediaPlaybackOnExternalDevice:isUsingAirplay];
  if ((v37 & 1) == 0 && (v47 | [v98 isScreenEnabled]) != 1)
  {
    [(CXCallUpdate *)v97 setMixesVoiceWithMedia:0];
    goto LABEL_84;
  }

  if (!sharePlaySupported)
  {
LABEL_84:
    [(CXCallUpdate *)v97 setIgnoresBluetoothDeviceUID:0];
    goto LABEL_85;
  }

  [(CXCallUpdate *)v97 setMixesVoiceWithMedia:1];
LABEL_85:
  selectiveSharingSessionUUID = [v98 selectiveSharingSessionUUID];

  if (selectiveSharingSessionUUID)
  {
    v58 = objc_alloc_init(CXScreenShareAttributes);
    selectiveSharingSessionUUID2 = [v98 selectiveSharingSessionUUID];
    [v58 setWindowUUID:selectiveSharingSessionUUID2];

    [(CXCallUpdate *)v97 setScreenShareAttributes:v58];
  }

  handoffContext = [v98 handoffContext];

  if (handoffContext)
  {
    handoffContext2 = [v98 handoffContext];
    -[CXCallUpdate setPrefersToPlayDuringWombat:](v97, "setPrefersToPlayDuringWombat:", [handoffContext2 prefersToPlayDuringWombat]);
  }

  v62 = objc_alloc_init(CXCallTokens);
  [v62 setCombinedAudioStreamToken:{objc_msgSend(v98, "avcSessionToken")}];
  v94 = v62;
  [v62 setUplinkStreamToken:{objc_msgSend(v98, "localCaptionToken")}];
  v63 = objc_alloc_init(NSMutableDictionary);
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  activeRemoteParticipants2 = [v98 activeRemoteParticipants];
  v65 = [activeRemoteParticipants2 countByEnumeratingWithState:&v103 objects:v122 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v104;
    do
    {
      for (k = 0; k != v66; k = k + 1)
      {
        if (*v104 != v67)
        {
          objc_enumerationMutation(activeRemoteParticipants2);
        }

        v69 = *(*(&v103 + 1) + 8 * k);
        v70 = [NSUUID alloc];
        avcIdentifier = [v69 avcIdentifier];
        v72 = [v70 initWithUUIDString:avcIdentifier];

        if (v72)
        {
          v73 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v69 captionsToken]);
          [v63 setObject:v73 forKeyedSubscript:v72];
        }
      }

      v66 = [activeRemoteParticipants2 countByEnumeratingWithState:&v103 objects:v122 count:16];
    }

    while (v66);
  }

  v74 = [v63 copy];
  [v62 setStreamTokensByParticipantID:v74];

  allValues = [v63 allValues];
  firstObject = [allValues firstObject];
  [v62 setDownlinkStreamToken:{objc_msgSend(firstObject, "integerValue")}];

  v5 = v97;
  [(CXCallUpdate *)v97 setCallTokens:v94];
  conversationCopy = v98;
  report = [v98 report];
  conversationID = [report conversationID];
  [(CXCallUpdate *)v97 setConversationID:conversationID];

  localParticipantCluster = [v98 localParticipantCluster];
  if (localParticipantCluster)
  {
    v80 = localParticipantCluster;
    localParticipantCluster2 = [v98 localParticipantCluster];
    type = [localParticipantCluster2 type];

    if (type == 1)
    {
      if ([v98 isNearbySession])
      {
        v83 = 2;
      }

      else
      {
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        activeRemoteParticipants3 = [v98 activeRemoteParticipants];
        v85 = [activeRemoteParticipants3 countByEnumeratingWithState:&v99 objects:v121 count:16];
        if (v85)
        {
          v86 = v85;
          v87 = *v100;
          v83 = 1;
LABEL_104:
          v88 = 0;
          while (1)
          {
            if (*v100 != v87)
            {
              objc_enumerationMutation(activeRemoteParticipants3);
            }

            cluster = [*(*(&v99 + 1) + 8 * v88) cluster];
            localParticipantCluster3 = [v98 localParticipantCluster];
            v91 = [cluster isEqual:localParticipantCluster3];

            if (v91)
            {
              break;
            }

            if (v86 == ++v88)
            {
              v86 = [activeRemoteParticipants3 countByEnumeratingWithState:&v99 objects:v121 count:16];
              if (v86)
              {
                goto LABEL_104;
              }

              v83 = 0;
              break;
            }
          }

          v5 = v97;
          conversationCopy = v98;
        }

        else
        {
          v83 = 0;
        }
      }

      [(CXCallUpdate *)v5 setNearbyMode:v83];
    }
  }

LABEL_116:
  return v5;
}

- (int64_t)faceTimeTransportType
{
  context = [(CXCallUpdate *)self context];
  v3 = [context objectForKeyedSubscript:TUCallFaceTimeTransportTypeKey];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)setFaceTimeTransportType:(int64_t)type
{
  context = [(CXCallUpdate *)self context];
  if (context)
  {
    context2 = [(CXCallUpdate *)self context];
    v8 = [context2 mutableCopy];
  }

  else
  {
    v8 = +[NSMutableDictionary dictionary];
  }

  v7 = [NSNumber numberWithInteger:type];
  [v8 setObject:v7 forKeyedSubscript:TUCallFaceTimeTransportTypeKey];

  [(CXCallUpdate *)self setContext:v8];
}

- (BOOL)isRemoteMomentsAvailable
{
  context = [(CXCallUpdate *)self context];
  v3 = [context objectForKeyedSubscript:TUCallFaceTimeRemoteMomentsAvailableKey];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSString)localizedHandoffRecipientDeviceCategory
{
  context = [(CXCallUpdate *)self context];
  v3 = [context objectForKeyedSubscript:TUCallFaceTimeLocalizedHandoffRecipientDeviceCategoryKey];
  stringValue = [v3 stringValue];

  return stringValue;
}

- (void)setLocalizedHandoffRecipientDeviceCategory:(id)category
{
  categoryCopy = category;
  context = [(CXCallUpdate *)self context];
  if (context)
  {
    context2 = [(CXCallUpdate *)self context];
    v7 = [context2 mutableCopy];
  }

  else
  {
    v7 = +[NSMutableDictionary dictionary];
  }

  [v7 setObject:categoryCopy forKeyedSubscript:TUCallFaceTimeLocalizedHandoffRecipientDeviceCategoryKey];
  [(CXCallUpdate *)self setContext:v7];
}

- (NSNumber)handoffRecipientParticipant
{
  context = [(CXCallUpdate *)self context];
  v3 = [context objectForKeyedSubscript:TUCallFaceTimeHandoffRecipientParticipantKey];
  numberValue = [v3 numberValue];

  return numberValue;
}

- (void)setHandoffRecipientParticipant:(id)participant
{
  participantCopy = participant;
  context = [(CXCallUpdate *)self context];
  if (context)
  {
    context2 = [(CXCallUpdate *)self context];
    v7 = [context2 mutableCopy];
  }

  else
  {
    v7 = +[NSMutableDictionary dictionary];
  }

  [v7 setObject:participantCopy forKeyedSubscript:TUCallFaceTimeHandoffRecipientParticipantKey];
  [(CXCallUpdate *)self setContext:v7];
}

- (void)setConversationID:(id)d
{
  dCopy = d;
  context = [(CXCallUpdate *)self context];
  if (context)
  {
    context2 = [(CXCallUpdate *)self context];
    v7 = [context2 mutableCopy];
  }

  else
  {
    v7 = +[NSMutableDictionary dictionary];
  }

  [v7 setObject:dCopy forKeyedSubscript:@"conversationID"];
  [(CXCallUpdate *)self setContext:v7];
}

- (NSUUID)conversationID
{
  context = [(CXCallUpdate *)self context];

  if (context)
  {
    context2 = [(CXCallUpdate *)self context];
    v5 = [context2 objectForKeyedSubscript:@"conversationID"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CXCallUpdate)initWithTinCanIDSChat:(id)chat
{
  v3 = [(CXCallUpdate *)self initWithIDSChat:chat];
  v4 = v3;
  if (v3)
  {
    [(CXCallUpdate *)v3 setHasVideo:0];
    [(CXCallUpdate *)v4 setSupportsHolding:0];
    [(CXCallUpdate *)v4 setMutuallyExclusiveCall:1];
  }

  return v4;
}

- (CXCallUpdate)initWithIDSChat:(id)chat
{
  chatCopy = chat;
  v5 = [(CXCallUpdate *)self init];
  if (v5)
  {
    v6 = [CXMember alloc];
    handle = [chatCopy handle];
    v8 = [CXHandle handleWithTUHandle:handle];
    v9 = [v6 initWithHandle:v8];
    [(CXCallUpdate *)v5 setRemoteMember:v9];

    -[CXCallUpdate setHasVideo:](v5, "setHasVideo:", [chatCopy isVideo]);
    -[CXCallUpdate setSupportsHolding:](v5, "setSupportsHolding:", [chatCopy isVideo] ^ 1);
    [(CXCallUpdate *)v5 setSupportsGrouping:0];
    [(CXCallUpdate *)v5 setSupportsUngrouping:0];
    [(CXCallUpdate *)v5 setSupportsDTMF:0];
    [(CXCallUpdate *)v5 setSupportsRecording:0];
    [(CXCallUpdate *)v5 setIsUnderlyingLinksConnected:1];
    [(CXCallUpdate *)v5 setRequiresInCallSounds:1];
    -[CXCallUpdate setRemoteUplinkMuted:](v5, "setRemoteUplinkMuted:", [chatCopy isRemoteUplinkMuted]);
    crossDeviceIdentifier = [chatCopy crossDeviceIdentifier];
    [(CXCallUpdate *)v5 setCrossDeviceIdentifier:crossDeviceIdentifier];

    remoteFromID = [chatCopy remoteFromID];
    [(CXCallUpdate *)v5 setRemoteIDSDestination:remoteFromID];

    -[CXCallUpdate setInitialLinkType:](v5, "setInitialLinkType:", [chatCopy initialLinkType]);
    -[CXCallUpdate setInputAudioPowerSpectrumToken:](v5, "setInputAudioPowerSpectrumToken:", [chatCopy inputAudioPowerSpectrumToken]);
    -[CXCallUpdate setOutputAudioPowerSpectrumToken:](v5, "setOutputAudioPowerSpectrumToken:", [chatCopy outputAudioPowerSpectrumToken]);
    [(CXCallUpdate *)v5 setAudioInterruptionProvider:1];
    if ([chatCopy isVideo])
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    [(CXCallUpdate *)v5 setAudioInterruptionOperationMode:v12];
    localSenderIdentityUUID = [chatCopy localSenderIdentityUUID];
    [(CXCallUpdate *)v5 setLocalSenderIdentityUUID:localSenderIdentityUUID];

    if (qword_1006ACD10 != -1)
    {
      sub_100475C04();
    }

    [(CXCallUpdate *)v5 setAudioCategory:qword_1006ACD08];
    if (qword_1006ACD20 != -1)
    {
      sub_100475C18();
    }

    if (qword_1006ACD30 != -1)
    {
      sub_100475C2C();
    }

    isVideo = [chatCopy isVideo];
    v15 = &unk_1006ACD28;
    if (!isVideo)
    {
      v15 = &unk_1006ACD18;
    }

    [(CXCallUpdate *)v5 setAudioMode:*v15];
  }

  return v5;
}

- (CXCallUpdate)initWithStartCallAction:(id)action
{
  actionCopy = action;
  v5 = [(CXCallUpdate *)self init];
  if (v5)
  {
    v6 = [CXMember alloc];
    handle = [actionCopy handle];
    v8 = [v6 initWithHandle:handle];
    [(CXCallUpdate *)v5 setRemoteMember:v8];

    handles = [actionCopy handles];
    v10 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [handles count]);

    handles2 = [actionCopy handles];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100123208;
    v15[3] = &unk_10061C140;
    v16 = v10;
    v12 = v10;
    [handles2 enumerateObjectsUsingBlock:v15];

    [(CXCallUpdate *)v5 setRemoteParticipantHandles:v12];
    -[CXCallUpdate setTTYType:](v5, "setTTYType:", [actionCopy ttyType]);
    -[CXCallUpdate setHasVideo:](v5, "setHasVideo:", [actionCopy isVideo]);
    -[CXCallUpdate setEmergency:](v5, "setEmergency:", [actionCopy isEmergency]);
    localSenderIdentityUUID = [actionCopy localSenderIdentityUUID];
    [(CXCallUpdate *)v5 setLocalSenderIdentityUUID:localSenderIdentityUUID];
  }

  return v5;
}

- (CXCallUpdate)initWithDialRequest:(id)request
{
  requestCopy = request;
  v5 = [(CXCallUpdate *)self init];
  if (v5)
  {
    handle = [requestCopy handle];

    if (handle)
    {
      v7 = [CXMember alloc];
      handle2 = [requestCopy handle];
      v9 = [CXHandle handleWithTUHandle:handle2];
      v10 = [v7 initWithHandle:v9];
      [(CXCallUpdate *)v5 setRemoteMember:v10];
    }

    ttyType = [requestCopy ttyType];
    if (ttyType == 3)
    {
      v12 = 2;
    }

    else
    {
      v12 = ttyType == 2;
    }

    [(CXCallUpdate *)v5 setTTYType:v12];
    -[CXCallUpdate setEmergency:](v5, "setEmergency:", [requestCopy dialType] == 1);
    localSenderIdentityUUID = [requestCopy localSenderIdentityUUID];
    [(CXCallUpdate *)v5 setLocalSenderIdentityUUID:localSenderIdentityUUID];

    -[CXCallUpdate setShouldSuppressInCallUI:](v5, "setShouldSuppressInCallUI:", [requestCopy shouldSuppressInCallUI]);
    -[CXCallUpdate setLaunchInBackground:](v5, "setLaunchInBackground:", [requestCopy launchInBackground]);
    -[CXCallUpdate setStartCallMuted:](v5, "setStartCallMuted:", [requestCopy shouldStartWithUplinkMuted]);
  }

  return v5;
}

- (CXCallUpdate)initWithJoinConversationRequest:(id)request
{
  requestCopy = request;
  v5 = [(CXCallUpdate *)self init];
  if (!v5)
  {
    goto LABEL_12;
  }

  remoteMembers = [requestCopy remoteMembers];
  v7 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [remoteMembers count]);

  remoteMembers2 = [requestCopy remoteMembers];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100123780;
  v29[3] = &unk_10061A200;
  v9 = v7;
  v30 = v9;
  [remoteMembers2 enumerateObjectsUsingBlock:v29];

  [(CXCallUpdate *)v5 setRemoteParticipantHandles:v9];
  remoteParticipantHandles = [(CXCallUpdate *)v5 remoteParticipantHandles];
  anyObject = [remoteParticipantHandles anyObject];
  [(CXCallUpdate *)v5 setRemoteMember:anyObject];

  otherInvitedHandles = [requestCopy otherInvitedHandles];
  v13 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [otherInvitedHandles count]);

  otherInvitedHandles2 = [requestCopy otherInvitedHandles];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100123834;
  v27[3] = &unk_10061C168;
  v15 = v13;
  v28 = v15;
  [otherInvitedHandles2 enumerateObjectsUsingBlock:v27];

  [(CXCallUpdate *)v5 setOtherInvitedHandles:v15];
  -[CXCallUpdate setHasVideo:](v5, "setHasVideo:", [requestCopy avMode] == 2);
  -[CXCallUpdate setShouldSuppressInCallUI:](v5, "setShouldSuppressInCallUI:", [requestCopy shouldSuppressInCallUI]);
  -[CXCallUpdate setLaunchInBackground:](v5, "setLaunchInBackground:", [requestCopy launchInBackground]);
  v31 = TUConversationProviderIdentifierKey;
  provider = [requestCopy provider];
  identifier = [provider identifier];
  v32 = identifier;
  v18 = 1;
  v19 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  [(CXCallUpdate *)v5 setContext:v19];

  if (([requestCopy requestToShareMyScreen] & 1) == 0)
  {
    if (![requestCopy requestToShareScreen])
    {
      goto LABEL_6;
    }

    v18 = 2;
  }

  [(CXCallUpdate *)v5 setScreenSharingIntention:v18];
LABEL_6:
  invitationPreferences = [requestCopy invitationPreferences];
  v21 = +[TUConversationInvitationPreference nearbyInvitationPreferences];
  if (([invitationPreferences isEqualToSet:v21] & 1) != 0 && (objc_msgSend(requestCopy, "participantCluster"), (v22 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v23 = v22;
    participantCluster = [requestCopy participantCluster];
    type = [participantCluster type];

    if (type == 1)
    {
      [(CXCallUpdate *)v5 setNearbyMode:2];
    }
  }

  else
  {
  }

LABEL_12:
  return v5;
}

- (NSString)remoteIDSDestination
{
  context = [(CXCallUpdate *)self context];
  v3 = [context objectForKeyedSubscript:TUCallFaceTimeRemoteIDSDestinationKey];

  return v3;
}

- (void)setRemoteIDSDestination:(id)destination
{
  destinationCopy = destination;
  context = [(CXCallUpdate *)self context];
  if (context)
  {
    context2 = [(CXCallUpdate *)self context];
    v7 = [context2 mutableCopy];
  }

  else
  {
    v7 = +[NSMutableDictionary dictionary];
  }

  [v7 setObject:destinationCopy forKeyedSubscript:TUCallFaceTimeRemoteIDSDestinationKey];
  [(CXCallUpdate *)self setContext:v7];
}

- (unint64_t)initialLinkType
{
  context = [(CXCallUpdate *)self context];
  v3 = [context objectForKeyedSubscript:@"CSDIDSInitialLinkTypeKey"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setInitialLinkType:(unint64_t)type
{
  context = [(CXCallUpdate *)self context];
  if (context)
  {
    context2 = [(CXCallUpdate *)self context];
    v8 = [context2 mutableCopy];
  }

  else
  {
    v8 = +[NSMutableDictionary dictionary];
  }

  v7 = [NSNumber numberWithUnsignedInteger:type];
  [v8 setObject:v7 forKeyedSubscript:@"CSDIDSInitialLinkTypeKey"];

  [(CXCallUpdate *)self setContext:v8];
}

- (int64_t)inputAudioPowerSpectrumToken
{
  context = [(CXCallUpdate *)self context];
  v3 = [context objectForKeyedSubscript:@"CSDIDSInputAudioPowerSpectrumTokenKey"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setInputAudioPowerSpectrumToken:(int64_t)token
{
  context = [(CXCallUpdate *)self context];
  if (context)
  {
    context2 = [(CXCallUpdate *)self context];
    v8 = [context2 mutableCopy];
  }

  else
  {
    v8 = +[NSMutableDictionary dictionary];
  }

  v7 = [NSNumber numberWithInteger:token];
  [v8 setObject:v7 forKeyedSubscript:@"CSDIDSInputAudioPowerSpectrumTokenKey"];

  [(CXCallUpdate *)self setContext:v8];
}

- (int64_t)outputAudioPowerSpectrumToken
{
  context = [(CXCallUpdate *)self context];
  v3 = [context objectForKeyedSubscript:@"CSDIDSOutputAudioPowerSpectrumTokenKey"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setOutputAudioPowerSpectrumToken:(int64_t)token
{
  context = [(CXCallUpdate *)self context];
  if (context)
  {
    context2 = [(CXCallUpdate *)self context];
    v8 = [context2 mutableCopy];
  }

  else
  {
    v8 = +[NSMutableDictionary dictionary];
  }

  v7 = [NSNumber numberWithInteger:token];
  [v8 setObject:v7 forKeyedSubscript:@"CSDIDSOutputAudioPowerSpectrumTokenKey"];

  [(CXCallUpdate *)self setContext:v8];
}

- (id)tuCallUpdateWithProvider:(id)provider withCallUUID:(id)d
{
  dCopy = d;
  providerCopy = provider;
  v8 = [[TUCallUpdate alloc] initWithProvider:providerCopy];

  uUID = [(CXCallUpdate *)self UUID];
  v10 = [uUID copy];
  [v8 setUUID:v10];

  v11 = [dCopy copy];
  [v8 setCallUUID:v11];

  remoteMember = [(CXCallUpdate *)self remoteMember];
  handle = [remoteMember handle];
  tuHandle = [handle tuHandle];
  v15 = [tuHandle copy];
  [v8 setHandle:v15];

  junkConfidence = [(CXCallUpdate *)self junkConfidence];
  if ((junkConfidence - 1) >= 3)
  {
    v17 = 0;
  }

  else
  {
    v17 = junkConfidence;
  }

  [v8 setJunkConfidence:v17];
  priority = [(CXCallUpdate *)self priority];
  if (priority == 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = priority == 1;
  }

  [v8 setPriority:v19];
  remoteParticipantHandles = [(CXCallUpdate *)self remoteParticipantHandles];
  [v8 setRemoteParticipantCount:{objc_msgSend(remoteParticipantHandles, "count")}];

  [v8 setHasVideo:{-[CXCallUpdate hasVideo](self, "hasVideo")}];
  [v8 setConversation:{-[CXCallUpdate isConversation](self, "isConversation")}];
  v21 = [v8 copy];

  return v21;
}

@end