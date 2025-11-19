@interface CHRecentCall
+ (id)predicateForFilteringOutFaceTimeAudioCalls;
+ (id)recentCallJunkIdentificationCategoryString:(int64_t)a3;
- (CHRecentCall)initWithConversation:(id)a3 startDate:(id)a4 avMode:(unint64_t)a5;
- (id)initWithCall:(id)a3;
- (id)provider;
@end

@implementation CHRecentCall

- (id)initWithCall:(id)a3
{
  v5 = a3;
  v6 = [(CHRecentCall *)self init];

  if (!v6)
  {
    goto LABEL_112;
  }

  v7 = [v5 callHistoryIdentifier];

  if (!v7)
  {
    v8 = [NSString stringWithFormat:@"This call's call history identifier is nil"];
    NSLog(@"** TUAssertion failure: %@", v8);

    if (_TUAssertShouldCrashApplication())
    {
      v9 = [v5 callHistoryIdentifier];

      if (!v9)
      {
        sub_100478CA0(a2, v6);
      }
    }
  }

  v10 = [v5 localSenderIdentityAccountUUID];
  v123 = v6;
  [(CHRecentCall *)v6 setLocalParticipantUUID:v10];

  v122 = v5;
  v11 = v5;
  v12 = [v11 remoteParticipantHandles];
  v13 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v12 count]);

  v14 = v11;
  v15 = [v14 remoteParticipantHandles];
  v16 = [v14 callCenter];
  v17 = [v16 activeConversationForCall:v14 backedByGroupSession:1];

  v125 = v14;
  if (v17)
  {
    v18 = +[NSMutableSet set];
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v19 = [v17 mergedRemoteMembers];
    v20 = [v19 countByEnumeratingWithState:&v130 objects:v135 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v130 + 1) + 8 * i) handle];
          [v18 addObject:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v130 objects:v135 count:16];
      }

      while (v21);
    }

    if ([v18 count])
    {
      v25 = [v18 copy];

      v15 = v25;
    }

    v14 = v125;
  }

  else
  {
    v26 = [v15 bs_filter:&stru_10061D5F0];

    v15 = v26;
  }

  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v27 = v15;
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
        v33 = [v125 isoCountryCode];
        v34 = [CHHandle normalizedHandleWithTUHandle:v32 andISOCountryCode:v33];

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

  v36 = [v125 initiator];
  v37 = [CHHandle handleWithTUHandle:v36];
  [(CHRecentCall *)v123 setInitiator:v37];

  v38 = [NSMutableSet alloc];
  v39 = [v125 emergencyMediaItems];
  v124 = [v38 initWithCapacity:{objc_msgSend(v39, "count")}];

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v40 = [v125 emergencyMediaItems];
  v41 = [v40 countByEnumeratingWithState:&v126 objects:v134 count:16];
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
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v126 + 1) + 8 * k);
        v46 = [CHEmergencyMediaItem alloc];
        v47 = [v45 assetId];
        v48 = [v46 initWithAssetId:v47 mediaType:{+[CHRecentCall toCHEmergencyMediaType:](CHRecentCall, "toCHEmergencyMediaType:", objc_msgSend(v45, "emergencyMediaType"))}];

        [v124 addObject:v48];
      }

      v42 = [v40 countByEnumeratingWithState:&v126 objects:v134 count:16];
    }

    while (v42);
  }

  v6 = v123;
  [(CHRecentCall *)v123 setEmergencyMediaItems:v124];
  -[CHRecentCall setUsedEmergencyVideoStreaming:](v123, "setUsedEmergencyVideoStreaming:", [v125 hasEmergencyVideoStream]);
  -[CHRecentCall setWasEmergencyCall:](v123, "setWasEmergencyCall:", [v125 isEmergency]);
  v49 = [v125 handle];
  v50 = [v49 value];
  [(CHRecentCall *)v123 setCallerId:v50];

  v51 = [v125 handle];
  [(CHRecentCall *)v123 setHandleType:[CHHandle handleTypeForTUHandle:v51]];

  if ([v125 isJunk])
  {
    [(CHRecentCall *)v123 setName:0];
  }

  else
  {
    v52 = [v125 callerNameFromNetwork];
    [(CHRecentCall *)v123 setName:v52];
  }

  v53 = [v125 callDirectoryName];

  if (v53)
  {
    v54 = [v125 callDirectoryName];
    [(CHRecentCall *)v123 setName:v54];
  }

  v55 = [v125 imageURL];
  if (v55)
  {
    v56 = v55;
    v57 = [v125 callDirectoryName];

    if (!v57)
    {
      v58 = [NSURL fileURLWithPath:@"/stock" isDirectory:0];
      [(CHRecentCall *)v123 setImageURL:v58];

      v59 = [v125 companyName];

      if (v59)
      {
        v60 = [v125 companyName];
        [(CHRecentCall *)v123 setName:v60];
      }
    }
  }

  v61 = [v125 callHistoryIdentifier];
  [(CHRecentCall *)v123 setUniqueId:v61];

  v62 = [v125 isoCountryCode];
  [(CHRecentCall *)v123 setIsoCountryCode:v62];

  [v125 callDuration];
  v64 = [NSDate dateWithTimeIntervalSinceNow:-v63];
  [(CHRecentCall *)v123 setDate:v64];

  v65 = [v125 isScreening];
  v66 = 0.0;
  if ((v65 & 1) == 0)
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
  v69 = [v67 ttyType];
  if (v69 == 1)
  {
    v70 = 1;
  }

  else
  {
    v70 = 2 * (v69 == 2);
  }

  [(CHRecentCall *)v123 setTtyType:v70];
  v71 = v67;
  v72 = [v71 provider];
  v73 = [v72 identifier];

  v74 = [v71 provider];
  v75 = [v74 isTelephonyProvider];

  if (v75)
  {
    v76 = &kCHServiceProviderTelephony;
  }

  else
  {
    v77 = [v71 provider];
    v78 = [v77 isFaceTimeProvider];

    if (!v78)
    {
      goto LABEL_58;
    }

    v76 = &kCHServiceProviderFaceTime;
  }

  v79 = *v76;

  v73 = v79;
LABEL_58:

  [(CHRecentCall *)v123 setServiceProvider:v73];
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
    v82 = 1;
  }

  else
  {
    v82 = [v71 isOutgoing];
    if (((v82 | v81) & 1) == 0)
    {
      [v71 callDuration];
      v82 = v88 > 0.0;
    }
  }

  [(CHRecentCall *)v123 setRead:v82];
  v83 = [v71 verificationStatus];
  if (v83 <= 4)
  {
    [(CHRecentCall *)v123 setVerificationStatus:v83];
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

  v5 = v122;
  if (([v84 isScreening] & 1) != 0 || (objc_msgSend(v84, "wasScreened") & 1) == 0)
  {
    v91 = [v84 blockedByExtension];

    if (v91)
    {
      v92 = [v84 blockedByExtension];
      [(CHRecentCall *)v123 setBlockedByExtension:v92];

      v93 = [(CHRecentCall *)v123 blockedByExtension];
      v94 = [NSExtension extensionWithIdentifier:v93 error:0];

      if (v94)
      {
        v95 = [v94 _plugIn];
        v96 = [v95 localizedContainingName];
        [(CHRecentCall *)v123 setBlockedByExtensionName:v96];
      }

      else
      {
        v95 = [(CHRecentCall *)v123 blockedByExtension];
        [(CHRecentCall *)v123 setBlockedByExtensionName:v95];
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
    v98 = [v84 handle];
    v99 = [v98 value];
    -[CHRecentCall setCallerIdAvailability:](v123, "setCallerIdAvailability:", 2 * ([v99 length] == 0));
  }

  v100 = v84;
  if ([v100 isJunk])
  {
    v101 = [v100 junkConfidence];
    if ((v101 - 1) >= 3)
    {
      v102 = 0;
    }

    else
    {
      v102 = v101;
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
  v106 = [v100 conversationID];
  [(CHRecentCall *)v123 setConversationID:v106];

  v107 = [v100 callDirectoryIdentityType];
  if (v107 == 2)
  {
    v108 = 2;
  }

  else
  {
    v108 = v107 == 1;
  }

  [(CHRecentCall *)v123 setCallDirectoryIdentityType:v108];
  v109 = [v100 callDirectoryIdentityExtension];
  [(CHRecentCall *)v123 setIdentityExtension:v109];

  v110 = [v100 dateConnected];

  if (v110)
  {
    v111 = [v100 dateConnected];
LABEL_108:
    v113 = v111;
    v114 = [v100 dateCreated];
    [v113 timeIntervalSinceDate:v114];
    v115 = [NSNumber numberWithDouble:?];
    [(CHRecentCall *)v123 setTimeToEstablish:v115];

    goto LABEL_109;
  }

  v112 = [v100 dateEnded];

  if (v112)
  {
    v111 = [v100 dateEnded];
    goto LABEL_108;
  }

LABEL_109:
  v116 = [v100 provider];
  v117 = [v116 isFaceTimeProvider];

  if (v117)
  {
    v118 = [v100 callGroupUUID];
    [(CHRecentCall *)v123 setParticipantGroupUUID:v118];
  }

  -[CHRecentCall setScreenSharingType:](v123, "setScreenSharingType:", [v100 screenSharingType] & 3);
  v119 = [v100 reminderUUID];
  [(CHRecentCall *)v123 setReminderUUID:v119];

LABEL_112:
  [(CHRecentCall *)v6 setLocation];
  v120 = v6;

  return v120;
}

- (CHRecentCall)initWithConversation:(id)a3 startDate:(id)a4 avMode:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CHRecentCall *)self init];
  if (v10)
  {
    v33 = v9;
    v34 = v8;
    v11 = v8;
    v12 = [v11 remoteMembers];
    v13 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v12 count]);

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = [v11 mergedRemoteMembers];
    v15 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v35 + 1) + 8 * i) handle];
          v20 = [CHHandle handleWithTUHandle:v19];
          [v13 addObject:v20];
        }

        v16 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v16);
    }

    v21 = [v13 copy];
    [(CHRecentCall *)v10 setRemoteParticipantHandles:v21];

    v22 = [v11 initiator];
    v23 = [CHHandle handleWithTUHandle:v22];
    [(CHRecentCall *)v10 setInitiator:v23];

    v24 = [v11 UUID];
    v25 = [v24 UUIDString];
    [(CHRecentCall *)v10 setUniqueId:v25];

    v9 = v33;
    [(CHRecentCall *)v10 setDate:v33];
    v26 = +[NSDate date];
    [v26 timeIntervalSinceDate:v33];
    [(CHRecentCall *)v10 setDuration:?];

    [(CHRecentCall *)v10 setTtyType:0];
    [(CHRecentCall *)v10 setServiceProvider:kCHServiceProviderFaceTime];
    if (a5 == 1)
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

    v31 = [v11 groupUUID];
    [(CHRecentCall *)v10 setParticipantGroupUUID:v31];

    -[CHRecentCall setScreenSharingType:](v10, "setScreenSharingType:", [v11 screenSharingType] & 3);
    v8 = v34;
  }

  return v10;
}

- (id)provider
{
  v3 = +[TUCallCenter sharedInstance];
  v4 = [v3 providerManager];
  v5 = [v4 providerForRecentCall:self];

  return v5;
}

+ (id)predicateForFilteringOutFaceTimeAudioCalls
{
  v2 = [NSNumber numberWithUnsignedInt:kCHCallCategoryAudio];
  v3 = [NSPredicate predicateWithFormat:@"!(call_category == %@ && service_provider == %@)", v2, kCHServiceProviderFaceTime];

  return v3;
}

+ (id)recentCallJunkIdentificationCategoryString:(int64_t)a3
{
  if ((a3 - 1) > 0x14)
  {
    return 0;
  }

  else
  {
    return off_10061D610[a3 - 1];
  }
}

@end