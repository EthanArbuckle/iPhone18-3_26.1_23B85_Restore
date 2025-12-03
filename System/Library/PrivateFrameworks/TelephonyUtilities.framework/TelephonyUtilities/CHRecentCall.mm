@interface CHRecentCall
+ (id)predicateForFilteringOutFaceTimeAudioCalls;
+ (id)recentCallJunkIdentificationCategoryString:(int64_t)string;
- (CHRecentCall)initWithConversation:(id)conversation startDate:(id)date avMode:(unint64_t)mode;
- (id)initWithCall:(id)call;
- (id)provider;
@end

@implementation CHRecentCall

- (id)initWithCall:(id)call
{
  callCopy = call;
  v6 = [(CHRecentCall *)self init];

  if (!v6)
  {
    goto LABEL_112;
  }

  callHistoryIdentifier = [callCopy callHistoryIdentifier];

  if (!callHistoryIdentifier)
  {
    v8 = [NSString stringWithFormat:@"This call's call history identifier is nil"];
    NSLog(@"** TUAssertion failure: %@", v8);

    if (_TUAssertShouldCrashApplication())
    {
      callHistoryIdentifier2 = [callCopy callHistoryIdentifier];

      if (!callHistoryIdentifier2)
      {
        sub_100478CA0(a2, v6);
      }
    }
  }

  localSenderIdentityAccountUUID = [callCopy localSenderIdentityAccountUUID];
  v123 = v6;
  [(CHRecentCall *)v6 setLocalParticipantUUID:localSenderIdentityAccountUUID];

  v122 = callCopy;
  v11 = callCopy;
  remoteParticipantHandles = [v11 remoteParticipantHandles];
  v13 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [remoteParticipantHandles count]);

  v14 = v11;
  remoteParticipantHandles2 = [v14 remoteParticipantHandles];
  callCenter = [v14 callCenter];
  v17 = [callCenter activeConversationForCall:v14 backedByGroupSession:1];

  v125 = v14;
  if (v17)
  {
    v18 = +[NSMutableSet set];
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    mergedRemoteMembers = [v17 mergedRemoteMembers];
    v20 = [mergedRemoteMembers countByEnumeratingWithState:&v130 objects:v135 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v131;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v131 != v22)
          {
            objc_enumerationMutation(mergedRemoteMembers);
          }

          handle = [*(*(&v130 + 1) + 8 * i) handle];
          [v18 addObject:handle];
        }

        v21 = [mergedRemoteMembers countByEnumeratingWithState:&v130 objects:v135 count:16];
      }

      while (v21);
    }

    if ([v18 count])
    {
      v25 = [v18 copy];

      remoteParticipantHandles2 = v25;
    }

    v14 = v125;
  }

  else
  {
    v26 = [remoteParticipantHandles2 bs_filter:&stru_10061D5F0];

    remoteParticipantHandles2 = v26;
  }

  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v27 = remoteParticipantHandles2;
  v28 = [v27 countByEnumeratingWithState:&v130 objects:v135 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v131;
    do
    {
      for (j = 0; j != v29; j = j + 1)
      {
        if (*v131 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v130 + 1) + 8 * j);
        isoCountryCode = [v125 isoCountryCode];
        v34 = [CHHandle normalizedHandleWithTUHandle:v32 andISOCountryCode:isoCountryCode];

        if (v34)
        {
          [v13 addObject:v34];
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v130 objects:v135 count:16];
    }

    while (v29);
  }

  v35 = [v13 copy];
  [(CHRecentCall *)v123 setRemoteParticipantHandles:v35];

  initiator = [v125 initiator];
  v37 = [CHHandle handleWithTUHandle:initiator];
  [(CHRecentCall *)v123 setInitiator:v37];

  v38 = [NSMutableSet alloc];
  emergencyMediaItems = [v125 emergencyMediaItems];
  v124 = [v38 initWithCapacity:{objc_msgSend(emergencyMediaItems, "count")}];

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  emergencyMediaItems2 = [v125 emergencyMediaItems];
  v41 = [emergencyMediaItems2 countByEnumeratingWithState:&v126 objects:v134 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v127;
    do
    {
      for (k = 0; k != v42; k = k + 1)
      {
        if (*v127 != v43)
        {
          objc_enumerationMutation(emergencyMediaItems2);
        }

        v45 = *(*(&v126 + 1) + 8 * k);
        v46 = [CHEmergencyMediaItem alloc];
        assetId = [v45 assetId];
        v48 = [v46 initWithAssetId:assetId mediaType:{+[CHRecentCall toCHEmergencyMediaType:](CHRecentCall, "toCHEmergencyMediaType:", objc_msgSend(v45, "emergencyMediaType"))}];

        [v124 addObject:v48];
      }

      v42 = [emergencyMediaItems2 countByEnumeratingWithState:&v126 objects:v134 count:16];
    }

    while (v42);
  }

  v6 = v123;
  [(CHRecentCall *)v123 setEmergencyMediaItems:v124];
  -[CHRecentCall setUsedEmergencyVideoStreaming:](v123, "setUsedEmergencyVideoStreaming:", [v125 hasEmergencyVideoStream]);
  -[CHRecentCall setWasEmergencyCall:](v123, "setWasEmergencyCall:", [v125 isEmergency]);
  handle2 = [v125 handle];
  value = [handle2 value];
  [(CHRecentCall *)v123 setCallerId:value];

  handle3 = [v125 handle];
  [(CHRecentCall *)v123 setHandleType:[CHHandle handleTypeForTUHandle:handle3]];

  if ([v125 isJunk])
  {
    [(CHRecentCall *)v123 setName:0];
  }

  else
  {
    callerNameFromNetwork = [v125 callerNameFromNetwork];
    [(CHRecentCall *)v123 setName:callerNameFromNetwork];
  }

  callDirectoryName = [v125 callDirectoryName];

  if (callDirectoryName)
  {
    callDirectoryName2 = [v125 callDirectoryName];
    [(CHRecentCall *)v123 setName:callDirectoryName2];
  }

  imageURL = [v125 imageURL];
  if (imageURL)
  {
    v56 = imageURL;
    callDirectoryName3 = [v125 callDirectoryName];

    if (!callDirectoryName3)
    {
      v58 = [NSURL fileURLWithPath:@"/stock" isDirectory:0];
      [(CHRecentCall *)v123 setImageURL:v58];

      companyName = [v125 companyName];

      if (companyName)
      {
        companyName2 = [v125 companyName];
        [(CHRecentCall *)v123 setName:companyName2];
      }
    }
  }

  callHistoryIdentifier3 = [v125 callHistoryIdentifier];
  [(CHRecentCall *)v123 setUniqueId:callHistoryIdentifier3];

  isoCountryCode2 = [v125 isoCountryCode];
  [(CHRecentCall *)v123 setIsoCountryCode:isoCountryCode2];

  [v125 callDuration];
  v64 = [NSDate dateWithTimeIntervalSinceNow:-v63];
  [(CHRecentCall *)v123 setDate:v64];

  isScreening = [v125 isScreening];
  v66 = 0.0;
  if ((isScreening & 1) == 0)
  {
    [v125 callDuration];
  }

  [(CHRecentCall *)v123 setDuration:v66];
  v67 = v125;
  if ([v67 isVideo])
  {
    v68 = 2;
  }

  else if ([v67 isThirdPartyVideo])
  {
    v68 = 2;
  }

  else
  {
    v68 = 1;
  }

  [(CHRecentCall *)v123 setMediaType:v68];
  ttyType = [v67 ttyType];
  if (ttyType == 1)
  {
    v70 = 1;
  }

  else
  {
    v70 = 2 * (ttyType == 2);
  }

  [(CHRecentCall *)v123 setTtyType:v70];
  v71 = v67;
  provider = [v71 provider];
  identifier = [provider identifier];

  provider2 = [v71 provider];
  isTelephonyProvider = [provider2 isTelephonyProvider];

  if (isTelephonyProvider)
  {
    v76 = &kCHServiceProviderTelephony;
  }

  else
  {
    provider3 = [v71 provider];
    isFaceTimeProvider = [provider3 isFaceTimeProvider];

    if (!isFaceTimeProvider)
    {
      goto LABEL_58;
    }

    v76 = &kCHServiceProviderFaceTime;
  }

  v79 = *v76;

  identifier = v79;
LABEL_58:

  [(CHRecentCall *)v123 setServiceProvider:identifier];
  if ([v71 bytesOfDataUsed] >= 1)
  {
    v80 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v71 bytesOfDataUsed]);
    [(CHRecentCall *)v123 setBytesOfDataUsed:v80];
  }

  if ([v71 isScreening])
  {
    v81 = [v71 isScreeningDueToUserInteraction] ^ 1;
  }

  else
  {
    v81 = 0;
  }

  if ([v71 disconnectedReason] == 1 || (objc_msgSend(v71, "wasDeclined") & 1) != 0)
  {
    isOutgoing = 1;
  }

  else
  {
    isOutgoing = [v71 isOutgoing];
    if (((isOutgoing | v81) & 1) == 0)
    {
      [v71 callDuration];
      isOutgoing = v88 > 0.0;
    }
  }

  [(CHRecentCall *)v123 setRead:isOutgoing];
  verificationStatus = [v71 verificationStatus];
  if (verificationStatus <= 4)
  {
    [(CHRecentCall *)v123 setVerificationStatus:verificationStatus];
  }

  v84 = v71;
  if ([v84 isOutgoing])
  {
    [v84 callDuration];
    if (v85 <= 0.0)
    {
      v86 = &kCHCallStatusCancelled;
    }

    else
    {
      v86 = &kCHCallStatusConnectedOutgoing;
    }
  }

  else
  {
    v86 = &kCHCallStatusMissed;
    if (([v84 isScreening] & 1) == 0)
    {
      [v84 callDuration];
      if (v87 <= 0.0)
      {
        if ([v84 disconnectedReason] == 1)
        {
          v86 = &kCHCallStatusAnsweredElsewhere;
        }
      }

      else
      {
        v86 = &kCHCallStatusConnectedIncoming;
      }
    }
  }

  v89 = *v86;

  [(CHRecentCall *)v123 setCallStatus:v89];
  v90 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v84 disconnectedReason]);
  [(CHRecentCall *)v123 setDisconnectedCause:v90];

  callCopy = v122;
  if (([v84 isScreening] & 1) != 0 || (objc_msgSend(v84, "wasScreened") & 1) == 0)
  {
    blockedByExtension = [v84 blockedByExtension];

    if (blockedByExtension)
    {
      blockedByExtension2 = [v84 blockedByExtension];
      [(CHRecentCall *)v123 setBlockedByExtension:blockedByExtension2];

      blockedByExtension3 = [(CHRecentCall *)v123 blockedByExtension];
      v94 = [NSExtension extensionWithIdentifier:blockedByExtension3 error:0];

      if (v94)
      {
        _plugIn = [v94 _plugIn];
        localizedContainingName = [_plugIn localizedContainingName];
        [(CHRecentCall *)v123 setBlockedByExtensionName:localizedContainingName];
      }

      else
      {
        _plugIn = [(CHRecentCall *)v123 blockedByExtension];
        [(CHRecentCall *)v123 setBlockedByExtensionName:_plugIn];
      }
    }

    v97 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v84 filteredOutReason]);
    [(CHRecentCall *)v123 setFilteredOutReason:v97];
  }

  if ([v84 isBlocked])
  {
    [(CHRecentCall *)v123 setCallerIdAvailability:1];
  }

  else
  {
    handle4 = [v84 handle];
    value2 = [handle4 value];
    -[CHRecentCall setCallerIdAvailability:](v123, "setCallerIdAvailability:", 2 * ([value2 length] == 0));
  }

  v100 = v84;
  if ([v100 isJunk])
  {
    junkConfidence = [v100 junkConfidence];
    if ((junkConfidence - 1) >= 3)
    {
      v102 = 0;
    }

    else
    {
      v102 = junkConfidence;
    }
  }

  else
  {
    v102 = 0;
  }

  [(CHRecentCall *)v123 setJunkConfidence:v102];
  if ([v100 isJunk])
  {
    v103 = +[CHRecentCall recentCallJunkIdentificationCategoryString:](CHRecentCall, "recentCallJunkIdentificationCategoryString:", [v100 identificationCategory]);
    [(CHRecentCall *)v123 setJunkIdentificationCategory:v103];
  }

  else
  {
    [(CHRecentCall *)v123 setJunkIdentificationCategory:0];
  }

  v104 = [v100 commTrustScore] - 1;
  if (v104 < 9)
  {
    v105 = v104 + 1;
  }

  else
  {
    v105 = 0;
  }

  [(CHRecentCall *)v123 setCommunicationTrustScore:v105];
  conversationID = [v100 conversationID];
  [(CHRecentCall *)v123 setConversationID:conversationID];

  callDirectoryIdentityType = [v100 callDirectoryIdentityType];
  if (callDirectoryIdentityType == 2)
  {
    v108 = 2;
  }

  else
  {
    v108 = callDirectoryIdentityType == 1;
  }

  [(CHRecentCall *)v123 setCallDirectoryIdentityType:v108];
  callDirectoryIdentityExtension = [v100 callDirectoryIdentityExtension];
  [(CHRecentCall *)v123 setIdentityExtension:callDirectoryIdentityExtension];

  dateConnected = [v100 dateConnected];

  if (dateConnected)
  {
    dateConnected2 = [v100 dateConnected];
LABEL_108:
    v113 = dateConnected2;
    dateCreated = [v100 dateCreated];
    [v113 timeIntervalSinceDate:dateCreated];
    v115 = [NSNumber numberWithDouble:?];
    [(CHRecentCall *)v123 setTimeToEstablish:v115];

    goto LABEL_109;
  }

  dateEnded = [v100 dateEnded];

  if (dateEnded)
  {
    dateConnected2 = [v100 dateEnded];
    goto LABEL_108;
  }

LABEL_109:
  provider4 = [v100 provider];
  isFaceTimeProvider2 = [provider4 isFaceTimeProvider];

  if (isFaceTimeProvider2)
  {
    callGroupUUID = [v100 callGroupUUID];
    [(CHRecentCall *)v123 setParticipantGroupUUID:callGroupUUID];
  }

  -[CHRecentCall setScreenSharingType:](v123, "setScreenSharingType:", [v100 screenSharingType] & 3);
  reminderUUID = [v100 reminderUUID];
  [(CHRecentCall *)v123 setReminderUUID:reminderUUID];

LABEL_112:
  [(CHRecentCall *)v6 setLocation];
  v120 = v6;

  return v120;
}

- (CHRecentCall)initWithConversation:(id)conversation startDate:(id)date avMode:(unint64_t)mode
{
  conversationCopy = conversation;
  dateCopy = date;
  v10 = [(CHRecentCall *)self init];
  if (v10)
  {
    v33 = dateCopy;
    v34 = conversationCopy;
    v11 = conversationCopy;
    remoteMembers = [v11 remoteMembers];
    v13 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [remoteMembers count]);

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    mergedRemoteMembers = [v11 mergedRemoteMembers];
    v15 = [mergedRemoteMembers countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v36;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(mergedRemoteMembers);
          }

          handle = [*(*(&v35 + 1) + 8 * i) handle];
          v20 = [CHHandle handleWithTUHandle:handle];
          [v13 addObject:v20];
        }

        v16 = [mergedRemoteMembers countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v16);
    }

    v21 = [v13 copy];
    [(CHRecentCall *)v10 setRemoteParticipantHandles:v21];

    initiator = [v11 initiator];
    v23 = [CHHandle handleWithTUHandle:initiator];
    [(CHRecentCall *)v10 setInitiator:v23];

    uUID = [v11 UUID];
    uUIDString = [uUID UUIDString];
    [(CHRecentCall *)v10 setUniqueId:uUIDString];

    dateCopy = v33;
    [(CHRecentCall *)v10 setDate:v33];
    v26 = +[NSDate date];
    [v26 timeIntervalSinceDate:v33];
    [(CHRecentCall *)v10 setDuration:?];

    [(CHRecentCall *)v10 setTtyType:0];
    [(CHRecentCall *)v10 setServiceProvider:kCHServiceProviderFaceTime];
    if (mode == 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    [(CHRecentCall *)v10 setMediaType:v27];
    [(CHRecentCall *)v10 setRead:1];
    [(CHRecentCall *)v10 setVerificationStatus:0];
    [(CHRecentCall *)v10 setCallStatus:kCHCallStatusConnectedOutgoing];
    v28 = [NSNumber numberWithInteger:0];
    [(CHRecentCall *)v10 setDisconnectedCause:v28];

    v29 = [NSNumber numberWithInteger:0];
    [(CHRecentCall *)v10 setFilteredOutReason:v29];

    [(CHRecentCall *)v10 setJunkConfidence:0];
    v30 = [CHRecentCall recentCallJunkIdentificationCategoryString:0];
    [(CHRecentCall *)v10 setJunkIdentificationCategory:v30];

    groupUUID = [v11 groupUUID];
    [(CHRecentCall *)v10 setParticipantGroupUUID:groupUUID];

    -[CHRecentCall setScreenSharingType:](v10, "setScreenSharingType:", [v11 screenSharingType] & 3);
    conversationCopy = v34;
  }

  return v10;
}

- (id)provider
{
  v3 = +[TUCallCenter sharedInstance];
  providerManager = [v3 providerManager];
  v5 = [providerManager providerForRecentCall:self];

  return v5;
}

+ (id)predicateForFilteringOutFaceTimeAudioCalls
{
  v2 = [NSNumber numberWithUnsignedInt:kCHCallCategoryAudio];
  kCHServiceProviderFaceTime = [NSPredicate predicateWithFormat:@"!(call_category == %@ && service_provider == %@)", v2, kCHServiceProviderFaceTime];

  return kCHServiceProviderFaceTime;
}

+ (id)recentCallJunkIdentificationCategoryString:(int64_t)string
{
  if ((string - 1) > 0x14)
  {
    return 0;
  }

  else
  {
    return off_10061D610[string - 1];
  }
}

@end