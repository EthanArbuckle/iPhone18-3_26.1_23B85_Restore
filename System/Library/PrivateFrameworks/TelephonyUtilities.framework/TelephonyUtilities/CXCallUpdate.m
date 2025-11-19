@interface CXCallUpdate
- (BOOL)isRemoteMomentsAvailable;
- (CXCallUpdate)initWithDialRequest:(id)a3;
- (CXCallUpdate)initWithFaceTimeIDSChat:(id)a3;
- (CXCallUpdate)initWithIDSChat:(id)a3;
- (CXCallUpdate)initWithIMAVChat:(id)a3;
- (CXCallUpdate)initWithJoinConversationRequest:(id)a3;
- (CXCallUpdate)initWithStartCallAction:(id)a3;
- (CXCallUpdate)initWithTUConversation:(id)a3;
- (CXCallUpdate)initWithTinCanIDSChat:(id)a3;
- (CXCallUpdate)sanitizedCallUpdate;
- (NSNumber)handoffRecipientParticipant;
- (NSString)localizedHandoffRecipientDeviceCategory;
- (NSString)remoteIDSDestination;
- (NSUUID)conversationID;
- (TUMediaTokens)tuMediaTokens;
- (id)tuCallUpdateWithProvider:(id)a3 withCallUUID:(id)a4;
- (int64_t)faceTimeTransportType;
- (int64_t)inputAudioPowerSpectrumToken;
- (int64_t)outputAudioPowerSpectrumToken;
- (unint64_t)initialLinkType;
- (void)setConversationID:(id)a3;
- (void)setFaceTimeTransportType:(int64_t)a3;
- (void)setHandoffRecipientParticipant:(id)a3;
- (void)setInitialLinkType:(unint64_t)a3;
- (void)setInputAudioPowerSpectrumToken:(int64_t)a3;
- (void)setLocalizedHandoffRecipientDeviceCategory:(id)a3;
- (void)setOutputAudioPowerSpectrumToken:(int64_t)a3;
- (void)setRemoteIDSDestination:(id)a3;
@end

@implementation CXCallUpdate

- (CXCallUpdate)sanitizedCallUpdate
{
  v2 = [(CXCallUpdate *)self copy];
  if (([v2 hasSet] & 4) == 0)
  {
    goto LABEL_3;
  }

  v3 = [v2 remoteMember];
  v4 = [v3 handle];
  v5 = [v4 value];
  v6 = [v5 length];

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
      v8 = [v2 remoteParticipantHandles];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1001238D0;
      v12[3] = &unk_10061C190;
      v13 = v7;
      v9 = v7;
      [v8 enumerateObjectsUsingBlock:v12];

      v10 = [v9 copy];
      [v2 setRemoteParticipantHandles:v10];
    }
  }

  return v2;
}

- (TUMediaTokens)tuMediaTokens
{
  v3 = objc_alloc_init(TUMediaTokens);
  v4 = [(CXCallUpdate *)self callTokens];
  [v3 setCombinedAudioStreamToken:{objc_msgSend(v4, "combinedAudioStreamToken")}];

  v5 = [(CXCallUpdate *)self callTokens];
  [v3 setUplinkStreamToken:{objc_msgSend(v5, "uplinkStreamToken")}];

  v6 = [(CXCallUpdate *)self callTokens];
  [v3 setDownlinkStreamToken:{objc_msgSend(v6, "downlinkStreamToken")}];

  return v3;
}

- (CXCallUpdate)initWithFaceTimeIDSChat:(id)a3
{
  v4 = a3;
  v5 = [(CXCallUpdate *)self initWithIDSChat:v4];
  v6 = v5;
  if (v5)
  {
    [(CXCallUpdate *)v5 setFaceTimeTransportType:2];
    -[CXCallUpdate setRemoteMomentsAvailable:](v6, "setRemoteMomentsAvailable:", [v4 isRemoteMomentsAvailable]);
    -[CXCallUpdate setShouldSuppressInCallUI:](v6, "setShouldSuppressInCallUI:", [v4 shouldSuppressInCallUI]);
    [(CXCallUpdate *)v6 setSupportsScreening:0];
    [(CXCallUpdate *)v6 setSupportsRecording:0];
    [(CXCallUpdate *)v6 setIsUnderlyingLinksConnected:1];
  }

  return v6;
}

- (CXCallUpdate)initWithIMAVChat:(id)a3
{
  v4 = a3;
  v5 = [(CXCallUpdate *)self init];
  if (v5)
  {
    v6 = [CXMember alloc];
    v7 = [CXHandle alloc];
    v8 = [v4 otherIMHandle];
    v9 = [v8 ID];
    v10 = [v7 initWithDestinationID:v9];
    v11 = [v6 initWithHandle:v10];
    [(CXCallUpdate *)v5 setRemoteMember:v11];

    -[CXCallUpdate setSupportsHolding:](v5, "setSupportsHolding:", [v4 isVideo] ^ 1);
    [(CXCallUpdate *)v5 setSupportsGrouping:0];
    [(CXCallUpdate *)v5 setSupportsUngrouping:0];
    [(CXCallUpdate *)v5 setSupportsDTMF:0];
    [(CXCallUpdate *)v5 setSupportsRecording:0];
    [(CXCallUpdate *)v5 setIsUnderlyingLinksConnected:1];
    [(CXCallUpdate *)v5 setSupportsScreening:0];
    [(CXCallUpdate *)v5 setRequiresInCallSounds:1];
    v12 = sub_10007BFE0(v4);
    [(CXCallUpdate *)v5 setCrossDeviceIdentifier:v12];

    [(CXCallUpdate *)v5 setAudioInterruptionProvider:1];
    if ([v4 isVideo])
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
    -[CXCallUpdate updatePropertiesForVideo:](v5, "updatePropertiesForVideo:", [v4 isVideo]);
  }

  return v5;
}

- (CXCallUpdate)initWithTUConversation:(id)a3
{
  v4 = a3;
  v5 = [(CXCallUpdate *)self init];
  if (!v5)
  {
    goto LABEL_116;
  }

  v6 = [v4 remoteMembers];
  v7 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v6 count]);

  v8 = [v4 remoteMembers];
  v119[0] = _NSConcreteStackBlock;
  v119[1] = 3221225472;
  v119[2] = sub_10007D0A8;
  v119[3] = &unk_10061A200;
  v9 = v7;
  v120 = v9;
  [v8 enumerateObjectsUsingBlock:v119];

  [(CXCallUpdate *)v5 setRemoteParticipantHandles:v9];
  v10 = [v4 localMember];
  v11 = [v10 handle];
  v12 = [v11 value];
  [(CXCallUpdate *)v5 setLocalMemberHandleValue:v12];

  v13 = [v4 initiator];
  v14 = [CXHandle handleWithTUHandle:v13];
  [(CXCallUpdate *)v5 setInitiator:v14];

  v15 = [v4 groupUUID];
  [(CXCallUpdate *)v5 setParticipantGroupUUID:v15];

  [(CXCallUpdate *)v5 setSupportsGrouping:0];
  [(CXCallUpdate *)v5 setSupportsUngrouping:0];
  [(CXCallUpdate *)v5 setSupportsDTMF:0];
  v16 = [v4 remoteMembers];
  v17 = [v16 count];
  v18 = 0;
  if (v17 == 1)
  {
    v18 = [v4 avMode] != 2;
  }

  [(CXCallUpdate *)v5 setSupportsHolding:v18];

  v19 = [v4 remoteMembers];
  v20 = [v19 count] == 1 && objc_msgSend(v4, "avMode") != 2;
  [(CXCallUpdate *)v5 setSupportsRecording:v20];

  -[CXCallUpdate setIsUnderlyingLinksConnected:](v5, "setIsUnderlyingLinksConnected:", [v4 isUnderlyingLinksConnected]);
  -[CXCallUpdate setIsUpgradeToVideo:](v5, "setIsUpgradeToVideo:", [v4 isUpgradeToVideo]);
  v21 = [v4 localScreenSharingRequest];
  v22 = v21;
  if (v21)
  {
    if ([v21 type] == 2)
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
  if ([v9 count] > 1 || objc_msgSend(v4, "avMode") == 2)
  {
    [(CXCallUpdate *)v5 setSupportsScreening:0];
  }

  else
  {
    v24 = [v4 screenSharingRequests];
    -[CXCallUpdate setSupportsScreening:](v5, "setSupportsScreening:", [v24 count] == 0);
  }

  v25 = [v4 provider];
  v26 = [v25 isDefaultProvider];
  if (v26 & 1) != 0 || ([v4 provider], v12 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v12, "isTelephonyWithSharePlayProvider")))
  {
    -[CXCallUpdate setSupportsRecents:](v5, "setSupportsRecents:", [v4 isNearbySession] ^ 1);
    if (v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
    [(CXCallUpdate *)v5 setSupportsRecents:0];
  }

LABEL_22:
  v27 = [v4 provider];
  -[CXCallUpdate setMutuallyExclusiveCall:](v5, "setMutuallyExclusiveCall:", [v27 isDefaultProvider] ^ 1);

  if (![v4 isLocallyCreated] || !objc_msgSend(v4, "isOneToOneModeEnabled") || objc_msgSend(v4, "state") == 3)
  {
    [(CXCallUpdate *)v5 setConversation:1];
  }

  v28 = [v4 provider];
  if ([v28 isDefaultProvider])
  {
    v29 = [v4 localMember];
    -[CXCallUpdate setRequiresInCallSounds:](v5, "setRequiresInCallSounds:", [v29 isLightweightMember] ^ 1);
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
  if ([v4 avMode])
  {
    -[CXCallUpdate updatePropertiesForVideo:](v5, "updatePropertiesForVideo:", [v4 avMode] == 2);
  }

  else
  {
    v30 = sub_100004778();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v4 UUID];
      *buf = 138412290;
      v127 = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Not setting video properties for conversation UUID: %@ because we're in AVLess", buf, 0xCu);
    }
  }

  v97 = v5;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v32 = [v4 activeRemoteParticipants];
  v33 = [v32 countByEnumeratingWithState:&v115 objects:v125 count:16];
  v98 = v4;
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
          objc_enumerationMutation(v32);
        }

        if ([*(*(&v115 + 1) + 8 * i) isScreenEnabled])
        {
          v37 = 1;
          goto LABEL_46;
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v115 objects:v125 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }

    v37 = 0;
LABEL_46:
    v4 = v98;
  }

  else
  {
    v37 = 0;
  }

  v95 = v22;

  v38 = +[CPAudioRoutePolicyManager sharedInstance];
  v93 = [v38 sharePlaySupported];

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v39 = [v4 activitySessions];
  v40 = [v39 countByEnumeratingWithState:&v111 objects:v124 count:16];
  if (v40)
  {
    v41 = v40;
    LOBYTE(v42) = 0;
    v43 = *v112;
LABEL_50:
    v44 = 0;
    while (1)
    {
      if (*v112 != v43)
      {
        objc_enumerationMutation(v39);
      }

      v45 = *(*(&v111 + 1) + 8 * v44);
      if (v42)
      {
        v42 = 1;
      }

      else
      {
        v42 = [*(*(&v111 + 1) + 8 * v44) isUsingAirplay];
      }

      v46 = [v45 state];
      v47 = v46 != 4;
      if (v46 == 4)
      {
        goto LABEL_68;
      }

      if ([v45 state] == 1)
      {
        break;
      }

      v48 = [v45 activity];
      if ([v48 isScreenSharingActivity])
      {
        v49 = [v45 state];

        if (!v49)
        {
          goto LABEL_70;
        }
      }

      else
      {
      }

      if (v41 == ++v44)
      {
        v41 = [v39 countByEnumeratingWithState:&v111 objects:v124 count:16];
        v47 = 0;
        if (v41)
        {
          goto LABEL_50;
        }

        goto LABEL_70;
      }
    }

    if (v42)
    {
      v47 = 1;
LABEL_68:
      v42 = 1;
      goto LABEL_70;
    }

    v42 = [v45 isUsingAirplay];
    v47 = 1;
  }

  else
  {
    v47 = 0;
    v42 = 0;
  }

LABEL_70:

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v50 = [v4 mergedActiveRemoteParticipants];
  v51 = [v50 countByEnumeratingWithState:&v107 objects:v123 count:16];
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
          objc_enumerationMutation(v50);
        }

        v56 = [*(*(&v107 + 1) + 8 * j) capabilities];
        v53 |= [v56 supportsRequestToScreenShare];
      }

      v52 = [v50 countByEnumeratingWithState:&v107 objects:v123 count:16];
    }

    while (v52);
  }

  else
  {
    LOBYTE(v53) = 0;
  }

  [(CXCallUpdate *)v97 setAnyRemoteSupportsRequestToScreenShare:v53 & 1];
  [(CXCallUpdate *)v97 setMediaPlaybackOnExternalDevice:v42];
  if ((v37 & 1) == 0 && (v47 | [v98 isScreenEnabled]) != 1)
  {
    [(CXCallUpdate *)v97 setMixesVoiceWithMedia:0];
    goto LABEL_84;
  }

  if (!v93)
  {
LABEL_84:
    [(CXCallUpdate *)v97 setIgnoresBluetoothDeviceUID:0];
    goto LABEL_85;
  }

  [(CXCallUpdate *)v97 setMixesVoiceWithMedia:1];
LABEL_85:
  v57 = [v98 selectiveSharingSessionUUID];

  if (v57)
  {
    v58 = objc_alloc_init(CXScreenShareAttributes);
    v59 = [v98 selectiveSharingSessionUUID];
    [v58 setWindowUUID:v59];

    [(CXCallUpdate *)v97 setScreenShareAttributes:v58];
  }

  v60 = [v98 handoffContext];

  if (v60)
  {
    v61 = [v98 handoffContext];
    -[CXCallUpdate setPrefersToPlayDuringWombat:](v97, "setPrefersToPlayDuringWombat:", [v61 prefersToPlayDuringWombat]);
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
  v64 = [v98 activeRemoteParticipants];
  v65 = [v64 countByEnumeratingWithState:&v103 objects:v122 count:16];
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
          objc_enumerationMutation(v64);
        }

        v69 = *(*(&v103 + 1) + 8 * k);
        v70 = [NSUUID alloc];
        v71 = [v69 avcIdentifier];
        v72 = [v70 initWithUUIDString:v71];

        if (v72)
        {
          v73 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v69 captionsToken]);
          [v63 setObject:v73 forKeyedSubscript:v72];
        }
      }

      v66 = [v64 countByEnumeratingWithState:&v103 objects:v122 count:16];
    }

    while (v66);
  }

  v74 = [v63 copy];
  [v62 setStreamTokensByParticipantID:v74];

  v75 = [v63 allValues];
  v76 = [v75 firstObject];
  [v62 setDownlinkStreamToken:{objc_msgSend(v76, "integerValue")}];

  v5 = v97;
  [(CXCallUpdate *)v97 setCallTokens:v94];
  v4 = v98;
  v77 = [v98 report];
  v78 = [v77 conversationID];
  [(CXCallUpdate *)v97 setConversationID:v78];

  v79 = [v98 localParticipantCluster];
  if (v79)
  {
    v80 = v79;
    v81 = [v98 localParticipantCluster];
    v82 = [v81 type];

    if (v82 == 1)
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
        v84 = [v98 activeRemoteParticipants];
        v85 = [v84 countByEnumeratingWithState:&v99 objects:v121 count:16];
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
              objc_enumerationMutation(v84);
            }

            v89 = [*(*(&v99 + 1) + 8 * v88) cluster];
            v90 = [v98 localParticipantCluster];
            v91 = [v89 isEqual:v90];

            if (v91)
            {
              break;
            }

            if (v86 == ++v88)
            {
              v86 = [v84 countByEnumeratingWithState:&v99 objects:v121 count:16];
              if (v86)
              {
                goto LABEL_104;
              }

              v83 = 0;
              break;
            }
          }

          v5 = v97;
          v4 = v98;
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
  v2 = [(CXCallUpdate *)self context];
  v3 = [v2 objectForKeyedSubscript:TUCallFaceTimeTransportTypeKey];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFaceTimeTransportType:(int64_t)a3
{
  v5 = [(CXCallUpdate *)self context];
  if (v5)
  {
    v6 = [(CXCallUpdate *)self context];
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = +[NSMutableDictionary dictionary];
  }

  v7 = [NSNumber numberWithInteger:a3];
  [v8 setObject:v7 forKeyedSubscript:TUCallFaceTimeTransportTypeKey];

  [(CXCallUpdate *)self setContext:v8];
}

- (BOOL)isRemoteMomentsAvailable
{
  v2 = [(CXCallUpdate *)self context];
  v3 = [v2 objectForKeyedSubscript:TUCallFaceTimeRemoteMomentsAvailableKey];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSString)localizedHandoffRecipientDeviceCategory
{
  v2 = [(CXCallUpdate *)self context];
  v3 = [v2 objectForKeyedSubscript:TUCallFaceTimeLocalizedHandoffRecipientDeviceCategoryKey];
  v4 = [v3 stringValue];

  return v4;
}

- (void)setLocalizedHandoffRecipientDeviceCategory:(id)a3
{
  v4 = a3;
  v5 = [(CXCallUpdate *)self context];
  if (v5)
  {
    v6 = [(CXCallUpdate *)self context];
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = +[NSMutableDictionary dictionary];
  }

  [v7 setObject:v4 forKeyedSubscript:TUCallFaceTimeLocalizedHandoffRecipientDeviceCategoryKey];
  [(CXCallUpdate *)self setContext:v7];
}

- (NSNumber)handoffRecipientParticipant
{
  v2 = [(CXCallUpdate *)self context];
  v3 = [v2 objectForKeyedSubscript:TUCallFaceTimeHandoffRecipientParticipantKey];
  v4 = [v3 numberValue];

  return v4;
}

- (void)setHandoffRecipientParticipant:(id)a3
{
  v4 = a3;
  v5 = [(CXCallUpdate *)self context];
  if (v5)
  {
    v6 = [(CXCallUpdate *)self context];
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = +[NSMutableDictionary dictionary];
  }

  [v7 setObject:v4 forKeyedSubscript:TUCallFaceTimeHandoffRecipientParticipantKey];
  [(CXCallUpdate *)self setContext:v7];
}

- (void)setConversationID:(id)a3
{
  v4 = a3;
  v5 = [(CXCallUpdate *)self context];
  if (v5)
  {
    v6 = [(CXCallUpdate *)self context];
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = +[NSMutableDictionary dictionary];
  }

  [v7 setObject:v4 forKeyedSubscript:@"conversationID"];
  [(CXCallUpdate *)self setContext:v7];
}

- (NSUUID)conversationID
{
  v3 = [(CXCallUpdate *)self context];

  if (v3)
  {
    v4 = [(CXCallUpdate *)self context];
    v5 = [v4 objectForKeyedSubscript:@"conversationID"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CXCallUpdate)initWithTinCanIDSChat:(id)a3
{
  v3 = [(CXCallUpdate *)self initWithIDSChat:a3];
  v4 = v3;
  if (v3)
  {
    [(CXCallUpdate *)v3 setHasVideo:0];
    [(CXCallUpdate *)v4 setSupportsHolding:0];
    [(CXCallUpdate *)v4 setMutuallyExclusiveCall:1];
  }

  return v4;
}

- (CXCallUpdate)initWithIDSChat:(id)a3
{
  v4 = a3;
  v5 = [(CXCallUpdate *)self init];
  if (v5)
  {
    v6 = [CXMember alloc];
    v7 = [v4 handle];
    v8 = [CXHandle handleWithTUHandle:v7];
    v9 = [v6 initWithHandle:v8];
    [(CXCallUpdate *)v5 setRemoteMember:v9];

    -[CXCallUpdate setHasVideo:](v5, "setHasVideo:", [v4 isVideo]);
    -[CXCallUpdate setSupportsHolding:](v5, "setSupportsHolding:", [v4 isVideo] ^ 1);
    [(CXCallUpdate *)v5 setSupportsGrouping:0];
    [(CXCallUpdate *)v5 setSupportsUngrouping:0];
    [(CXCallUpdate *)v5 setSupportsDTMF:0];
    [(CXCallUpdate *)v5 setSupportsRecording:0];
    [(CXCallUpdate *)v5 setIsUnderlyingLinksConnected:1];
    [(CXCallUpdate *)v5 setRequiresInCallSounds:1];
    -[CXCallUpdate setRemoteUplinkMuted:](v5, "setRemoteUplinkMuted:", [v4 isRemoteUplinkMuted]);
    v10 = [v4 crossDeviceIdentifier];
    [(CXCallUpdate *)v5 setCrossDeviceIdentifier:v10];

    v11 = [v4 remoteFromID];
    [(CXCallUpdate *)v5 setRemoteIDSDestination:v11];

    -[CXCallUpdate setInitialLinkType:](v5, "setInitialLinkType:", [v4 initialLinkType]);
    -[CXCallUpdate setInputAudioPowerSpectrumToken:](v5, "setInputAudioPowerSpectrumToken:", [v4 inputAudioPowerSpectrumToken]);
    -[CXCallUpdate setOutputAudioPowerSpectrumToken:](v5, "setOutputAudioPowerSpectrumToken:", [v4 outputAudioPowerSpectrumToken]);
    [(CXCallUpdate *)v5 setAudioInterruptionProvider:1];
    if ([v4 isVideo])
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    [(CXCallUpdate *)v5 setAudioInterruptionOperationMode:v12];
    v13 = [v4 localSenderIdentityUUID];
    [(CXCallUpdate *)v5 setLocalSenderIdentityUUID:v13];

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

    v14 = [v4 isVideo];
    v15 = &unk_1006ACD28;
    if (!v14)
    {
      v15 = &unk_1006ACD18;
    }

    [(CXCallUpdate *)v5 setAudioMode:*v15];
  }

  return v5;
}

- (CXCallUpdate)initWithStartCallAction:(id)a3
{
  v4 = a3;
  v5 = [(CXCallUpdate *)self init];
  if (v5)
  {
    v6 = [CXMember alloc];
    v7 = [v4 handle];
    v8 = [v6 initWithHandle:v7];
    [(CXCallUpdate *)v5 setRemoteMember:v8];

    v9 = [v4 handles];
    v10 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v9 count]);

    v11 = [v4 handles];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100123208;
    v15[3] = &unk_10061C140;
    v16 = v10;
    v12 = v10;
    [v11 enumerateObjectsUsingBlock:v15];

    [(CXCallUpdate *)v5 setRemoteParticipantHandles:v12];
    -[CXCallUpdate setTTYType:](v5, "setTTYType:", [v4 ttyType]);
    -[CXCallUpdate setHasVideo:](v5, "setHasVideo:", [v4 isVideo]);
    -[CXCallUpdate setEmergency:](v5, "setEmergency:", [v4 isEmergency]);
    v13 = [v4 localSenderIdentityUUID];
    [(CXCallUpdate *)v5 setLocalSenderIdentityUUID:v13];
  }

  return v5;
}

- (CXCallUpdate)initWithDialRequest:(id)a3
{
  v4 = a3;
  v5 = [(CXCallUpdate *)self init];
  if (v5)
  {
    v6 = [v4 handle];

    if (v6)
    {
      v7 = [CXMember alloc];
      v8 = [v4 handle];
      v9 = [CXHandle handleWithTUHandle:v8];
      v10 = [v7 initWithHandle:v9];
      [(CXCallUpdate *)v5 setRemoteMember:v10];
    }

    v11 = [v4 ttyType];
    if (v11 == 3)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11 == 2;
    }

    [(CXCallUpdate *)v5 setTTYType:v12];
    -[CXCallUpdate setEmergency:](v5, "setEmergency:", [v4 dialType] == 1);
    v13 = [v4 localSenderIdentityUUID];
    [(CXCallUpdate *)v5 setLocalSenderIdentityUUID:v13];

    -[CXCallUpdate setShouldSuppressInCallUI:](v5, "setShouldSuppressInCallUI:", [v4 shouldSuppressInCallUI]);
    -[CXCallUpdate setLaunchInBackground:](v5, "setLaunchInBackground:", [v4 launchInBackground]);
    -[CXCallUpdate setStartCallMuted:](v5, "setStartCallMuted:", [v4 shouldStartWithUplinkMuted]);
  }

  return v5;
}

- (CXCallUpdate)initWithJoinConversationRequest:(id)a3
{
  v4 = a3;
  v5 = [(CXCallUpdate *)self init];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = [v4 remoteMembers];
  v7 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v6 count]);

  v8 = [v4 remoteMembers];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100123780;
  v29[3] = &unk_10061A200;
  v9 = v7;
  v30 = v9;
  [v8 enumerateObjectsUsingBlock:v29];

  [(CXCallUpdate *)v5 setRemoteParticipantHandles:v9];
  v10 = [(CXCallUpdate *)v5 remoteParticipantHandles];
  v11 = [v10 anyObject];
  [(CXCallUpdate *)v5 setRemoteMember:v11];

  v12 = [v4 otherInvitedHandles];
  v13 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v12 count]);

  v14 = [v4 otherInvitedHandles];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100123834;
  v27[3] = &unk_10061C168;
  v15 = v13;
  v28 = v15;
  [v14 enumerateObjectsUsingBlock:v27];

  [(CXCallUpdate *)v5 setOtherInvitedHandles:v15];
  -[CXCallUpdate setHasVideo:](v5, "setHasVideo:", [v4 avMode] == 2);
  -[CXCallUpdate setShouldSuppressInCallUI:](v5, "setShouldSuppressInCallUI:", [v4 shouldSuppressInCallUI]);
  -[CXCallUpdate setLaunchInBackground:](v5, "setLaunchInBackground:", [v4 launchInBackground]);
  v31 = TUConversationProviderIdentifierKey;
  v16 = [v4 provider];
  v17 = [v16 identifier];
  v32 = v17;
  v18 = 1;
  v19 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  [(CXCallUpdate *)v5 setContext:v19];

  if (([v4 requestToShareMyScreen] & 1) == 0)
  {
    if (![v4 requestToShareScreen])
    {
      goto LABEL_6;
    }

    v18 = 2;
  }

  [(CXCallUpdate *)v5 setScreenSharingIntention:v18];
LABEL_6:
  v20 = [v4 invitationPreferences];
  v21 = +[TUConversationInvitationPreference nearbyInvitationPreferences];
  if (([v20 isEqualToSet:v21] & 1) != 0 && (objc_msgSend(v4, "participantCluster"), (v22 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v23 = v22;
    v24 = [v4 participantCluster];
    v25 = [v24 type];

    if (v25 == 1)
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
  v2 = [(CXCallUpdate *)self context];
  v3 = [v2 objectForKeyedSubscript:TUCallFaceTimeRemoteIDSDestinationKey];

  return v3;
}

- (void)setRemoteIDSDestination:(id)a3
{
  v4 = a3;
  v5 = [(CXCallUpdate *)self context];
  if (v5)
  {
    v6 = [(CXCallUpdate *)self context];
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = +[NSMutableDictionary dictionary];
  }

  [v7 setObject:v4 forKeyedSubscript:TUCallFaceTimeRemoteIDSDestinationKey];
  [(CXCallUpdate *)self setContext:v7];
}

- (unint64_t)initialLinkType
{
  v2 = [(CXCallUpdate *)self context];
  v3 = [v2 objectForKeyedSubscript:@"CSDIDSInitialLinkTypeKey"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setInitialLinkType:(unint64_t)a3
{
  v5 = [(CXCallUpdate *)self context];
  if (v5)
  {
    v6 = [(CXCallUpdate *)self context];
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = +[NSMutableDictionary dictionary];
  }

  v7 = [NSNumber numberWithUnsignedInteger:a3];
  [v8 setObject:v7 forKeyedSubscript:@"CSDIDSInitialLinkTypeKey"];

  [(CXCallUpdate *)self setContext:v8];
}

- (int64_t)inputAudioPowerSpectrumToken
{
  v2 = [(CXCallUpdate *)self context];
  v3 = [v2 objectForKeyedSubscript:@"CSDIDSInputAudioPowerSpectrumTokenKey"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setInputAudioPowerSpectrumToken:(int64_t)a3
{
  v5 = [(CXCallUpdate *)self context];
  if (v5)
  {
    v6 = [(CXCallUpdate *)self context];
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = +[NSMutableDictionary dictionary];
  }

  v7 = [NSNumber numberWithInteger:a3];
  [v8 setObject:v7 forKeyedSubscript:@"CSDIDSInputAudioPowerSpectrumTokenKey"];

  [(CXCallUpdate *)self setContext:v8];
}

- (int64_t)outputAudioPowerSpectrumToken
{
  v2 = [(CXCallUpdate *)self context];
  v3 = [v2 objectForKeyedSubscript:@"CSDIDSOutputAudioPowerSpectrumTokenKey"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)setOutputAudioPowerSpectrumToken:(int64_t)a3
{
  v5 = [(CXCallUpdate *)self context];
  if (v5)
  {
    v6 = [(CXCallUpdate *)self context];
    v8 = [v6 mutableCopy];
  }

  else
  {
    v8 = +[NSMutableDictionary dictionary];
  }

  v7 = [NSNumber numberWithInteger:a3];
  [v8 setObject:v7 forKeyedSubscript:@"CSDIDSOutputAudioPowerSpectrumTokenKey"];

  [(CXCallUpdate *)self setContext:v8];
}

- (id)tuCallUpdateWithProvider:(id)a3 withCallUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[TUCallUpdate alloc] initWithProvider:v7];

  v9 = [(CXCallUpdate *)self UUID];
  v10 = [v9 copy];
  [v8 setUUID:v10];

  v11 = [v6 copy];
  [v8 setCallUUID:v11];

  v12 = [(CXCallUpdate *)self remoteMember];
  v13 = [v12 handle];
  v14 = [v13 tuHandle];
  v15 = [v14 copy];
  [v8 setHandle:v15];

  v16 = [(CXCallUpdate *)self junkConfidence];
  if ((v16 - 1) >= 3)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  [v8 setJunkConfidence:v17];
  v18 = [(CXCallUpdate *)self priority];
  if (v18 == 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = v18 == 1;
  }

  [v8 setPriority:v19];
  v20 = [(CXCallUpdate *)self remoteParticipantHandles];
  [v8 setRemoteParticipantCount:{objc_msgSend(v20, "count")}];

  [v8 setHasVideo:{-[CXCallUpdate hasVideo](self, "hasVideo")}];
  [v8 setConversation:{-[CXCallUpdate isConversation](self, "isConversation")}];
  v21 = [v8 copy];

  return v21;
}

@end