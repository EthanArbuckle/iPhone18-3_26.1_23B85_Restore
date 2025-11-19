void sub_100076A40(uint64_t a1)
{
  v2 = [CSDUserActivityManager alloc];
  v3 = *(a1 + 32);
  v8 = objc_alloc_init(CSDUserActivityCommunicator);
  v4 = +[TUCallCenter sharedInstance];
  v5 = objc_alloc_init(TUFeatureFlags);
  v6 = [(CSDUserActivityManager *)v2 initWithQueue:v3 activityCommunicator:v8 callCenter:v4 featureFlags:v5];
  v7 = qword_1006ACAE0;
  qword_1006ACAE0 = v6;
}

id sub_10007799C(uint64_t a1, void *a2)
{
  v3 = [a2 callGroupUUID];
  v4 = [*(a1 + 32) groupUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

void sub_1000797B8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == 5)
  {
    v24 = [*(a1 + 40) featureFlags];
    v25 = [v24 conversationHandoffEnabled];

    if (v25)
    {
      v26 = *(a1 + 32);
      if (v26)
      {
        v23 = [v26 tu_handoffEligibility];
        [v23 setOriginatingDeviceType:*(a1 + 48)];
        if (v23)
        {
          v27 = +[NSNotificationCenter defaultCenter];
          [v27 postNotificationName:@"CSDUserActivityConversationHandoffRecommendationChangedNotification" object:v23 userInfo:0];
        }

        else
        {
          v28 = sub_100004778();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(a1 + 32);
            *buf = 138412290;
            *v37 = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[WARN] User activity manager could not parse eligibility from dynamicIdentifier %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v23 = sub_100004778();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot process received broadcast for conversation handoff activity type because it did not have a dynamic identifier set.", buf, 2u);
        }
      }

      goto LABEL_18;
    }
  }

  else if (v2 == 3)
  {
    v30 = [*(a1 + 32) componentsSeparatedByString:@"."];
    v3 = [v30 lastObject];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v4 = [*(a1 + 40) callCenter];
    v5 = [v4 audioAndVideoCallsWithStatus:4];

    v6 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v33;
      v31 = v3;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v32 + 1) + 8 * i);
          v11 = [v10 handle];
          v12 = [v11 value];
          v13 = [v12 isEqualToString:v3];

          v14 = sub_100004778();
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          if (v13)
          {
            if (v15)
            {
              v16 = *(a1 + 56);
              *buf = 67109634;
              *v37 = v16;
              *&v37[4] = 2112;
              *&v37[6] = v3;
              v38 = 2112;
              v39 = v10;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received broadcast for activity type %d and destination ID %@. Suppressing ringtone due to remote suppression for call %@", buf, 0x1Cu);
            }

            [v10 suppressRingtoneDueToRemoteSuppression];
          }

          else
          {
            if (v15)
            {
              v17 = v7;
              v18 = v8;
              v19 = v5;
              v20 = *(a1 + 56);
              v21 = [v10 handle];
              v22 = [v21 value];
              *buf = 67109634;
              *v37 = v20;
              v5 = v19;
              v8 = v18;
              v7 = v17;
              v3 = v31;
              *&v37[4] = 2112;
              *&v37[6] = v31;
              v38 = 2112;
              v39 = v22;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received broadcast for activity type %d but ignoring it because its destination ID (%@) does not match this ringing call's desination ID (%@)", buf, 0x1Cu);
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v7);
    }

    [*(a1 + 40) checkForSmartHoldingCallForSuppressRingtone:v3];
    v23 = v30;
LABEL_18:
  }
}

void sub_100079C10(uint64_t a1)
{
  if (*(a1 + 40) == 5)
  {
    v1 = [*(a1 + 32) featureFlags];
    v2 = [v1 conversationHandoffEnabled];

    if (v2)
    {
      v3 = +[NSNotificationCenter defaultCenter];
      [v3 postNotificationName:@"CSDUserActivityConversationHandoffRecommendationChangedNotification" object:0];
    }
  }
}

void sub_10007AE24(id a1, NSString *a2, double a3)
{
  v4 = a2;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = v4;
    v8 = 2048;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Calling ADClientSetValueForDistributionKey() with key %@ and value %f", &v6, 0x16u);
  }

  if (qword_1006ACAF8 != -1)
  {
    sub_100471708();
  }

  off_1006ACAF0(v4, a3);
}

void sub_10007B5F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v5 - 128));
  _Unwind_Resume(a1);
}

void sub_10007B62C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10007B77C;
    v8[3] = &unk_100619D88;
    v9 = v3;
    v10 = v6;
    dispatch_async(v7, v8);
  }
}

id sub_10007B77C(uint64_t a1)
{
  v2 = [*(a1 + 32) orientation] < 3;
  v3 = *(a1 + 40);

  return [v3 setInterfaceOrientationPortrait:v2];
}

id sub_10007B7CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained voiceOverObserver];
  v3 = [v2 isEnabled];

  return v3;
}

id sub_10007B81C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained voiceOverObserver];
  v3 = [v2 shouldRouteToSpeakerWithProximity];

  return v3;
}

id sub_10007B86C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained voiceOverObserver];
  v3 = [v2 isBrailleScreenInputEnabled];

  return v3;
}

void sub_10007B8BC(id a1, int a2)
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Asking BackBoard to set the proximity detection mode to (%u).", v4, 8u);
  }

  BKSHIDServicesRequestProximityDetectionMode();
}

BOOL sub_10007BC28(id a1, TUCall *a2)
{
  v2 = a2;
  v3 = ([(TUCall *)v2 isScreening]& 1) == 0 && ([(TUCall *)v2 isVideo]& 1) == 0 && ([(TUCall *)v2 status]== 1 || [(TUCall *)v2 status]== 2 || [(TUCall *)v2 status]== 5 || [(TUCall *)v2 status]== 3);

  return v3;
}

id sub_10007BE98(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating proximity sensor state; audio routes changed.", v4, 2u);
  }

  return [*(a1 + 32) updateProximitySensorState];
}

id sub_10007BFE0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 conferenceID];
    if ([v3 hasPrefix:@"ConferenceID:"])
    {
      v4 = [v3 substringFromIndex:{objc_msgSend(@"ConferenceID:", "length")}];

      v3 = v4;
    }

    if ([v3 length])
    {
      v5 = v3;
    }

    else
    {
      v6 = sub_100004778();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v2 conferenceID];
        v8 = [v2 GUID];
        v11 = 138412802;
        v12 = v2;
        v13 = 2112;
        v14 = v7;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Tried to get the call history identifier for this call (%@) but no conference ID was available (%@), we'll fall back to another method (GUID = %@). This call may now not sync properly between devices.", &v11, 0x20u);
      }

      v5 = [v2 GUID];

      if (![v5 length])
      {
        v9 = sub_100004778();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1004719D0(v9);
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

char *sub_10007C19C(void *a1)
{
  v1 = a1;
  v2 = [v1 dataUploaded];
  v3 = [v2 integerValue];
  v4 = [v1 dataDownloaded];

  v5 = [v4 integerValue];
  return &v3[v5];
}

void sub_10007C458(id a1)
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

  objc_storeStrong(&qword_1006ACB00, v2);
}

void sub_10007D0A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [CXMember alloc];
  v7 = [v3 handle];

  v5 = [CXHandle handleWithTUHandle:v7];
  v6 = [v4 initWithHandle:v5];
  [v2 addObject:v6];
}

void sub_10007D15C(id a1)
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

  objc_storeStrong(&qword_1006ACB10, v2);
}

void sub_10007D6F8(id a1)
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

  objc_storeStrong(&qword_1006ACB20, v2);
}

void sub_10007D748(id a1)
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

  objc_storeStrong(&qword_1006ACB30, v2);
}

uint64_t sub_10007DB00(uint64_t a1, void *a2)
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
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___CSDMessagingParticipantProminenceEntry__participantIdentifier;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___CSDMessagingParticipantProminenceEntry__participantIdentifier;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 24) |= 1u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___CSDMessagingParticipantProminenceEntry__audioPriority;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___CSDMessagingParticipantProminenceEntry__audioPriority;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

IMAccount *__cdecl sub_10007E2AC(id a1, CXStartCallAction *a2)
{
  if ([(CXStartCallAction *)a2 isVideo])
  {
    +[IMService facetimeService];
  }

  else
  {
    +[IMService callService];
  }
  v2 = ;
  if (qword_1006ACB48 != -1)
  {
    sub_100471A78();
  }

  v3 = off_1006ACB40(v2);

  return v3;
}

void sub_10007EBA4(id a1)
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

  objc_storeStrong(&qword_1006ACB50, v2);
}

void sub_10007EBF4(id a1)
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

  objc_storeStrong(&qword_1006ACB60, v2);
}

void sub_10007EC44(id a1)
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

  objc_storeStrong(&qword_1006ACB70, v2);
}

void sub_10007EC94(id a1)
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

  objc_storeStrong(&qword_1006ACB80, v2);
}

void sub_10007ECE4(id a1)
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

  objc_storeStrong(&qword_1006ACB90, v2);
}

void sub_10007ED34(id a1)
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

  objc_storeStrong(&qword_1006ACBA0, v2);
}

void sub_10007ED84(id a1)
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

  objc_storeStrong(&qword_1006ACBB0, v2);
}

void sub_10007EDD4(id a1)
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

  objc_storeStrong(&qword_1006ACBC0, v2);
}

void sub_10007EE24(id a1)
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

  objc_storeStrong(&qword_1006ACBD0, v2);
}

void sub_10007EE74(id a1)
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

  objc_storeStrong(&qword_1006ACBE0, v2);
}

id sub_10007F560(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling endChatWithReason on chat %@ with reason %ld", &v6, 0x16u);
  }

  return [*(a1 + 32) endChatWithReason:*(a1 + 40)];
}

void sub_10007F780(id *a1)
{
  v2 = a1 + 4;
  v3 = [a1[4] isVideo];
  v4 = objc_alloc_init(TUCallProviderManager);
  v5 = [v2[1] imAccountForActionBlock];
  v6 = (v5)[2](v5, *v2);

  if (v6 && [v6 isRegistered])
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Using account %@", buf, 0xCu);
    }

    v8 = [*v2 handle];
    v9 = [v8 value];
    v10 = [v6 imHandleWithID:v9];

    v11 = [v10 ID];
    v12 = [v11 length];

    if (v12)
    {
      v36 = v4;
      v13 = objc_alloc(CUTWeakLinkClass());
      v47 = v10;
      v14 = [NSArray arrayWithObjects:&v47 count:1];
      v15 = [*v2 isRelay];
      v16 = [*v2 callUUID];
      v17 = [v16 UUIDString];
      v18 = [v13 initOutgoingTo:v14 isVideo:v3 isRelayed:v15 GUID:v17];

      if (v18)
      {
        [v18 setConnectionTimeoutTime:TUConnectionTimeoutForCallService()];
        v4 = v36;
        v19 = [v36 faceTimeProvider];
        [a1[4] isUpgrade];
        [v18 setInvitationTimeoutTime:TUOutgoingInvitationTimeoutForCallProviderAndIsUpgrade()];

        v20 = a1[5];
        [a1[4] localLandscapeAspectRatio];
        v22 = v21;
        v24 = v23;
        [a1[4] localPortraitAspectRatio];
        [v20 _setLocalLandscapeAspectRatio:v18 localPortraitAspectRatio:v22 forChat:{v24, v25, v26}];
        v27 = sub_100004778();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [v18 otherIMHandle];
          v29 = a1[6];
          *buf = 138412546;
          v44 = v28;
          v45 = 2112;
          v46 = v29;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Inviting handle %@ excluding push tokens %@", buf, 0x16u);
        }

        v30 = [v18 otherIMHandle];
        [v18 invite:v30 additionalPeers:&__NSArray0__struct excludingPushTokens:a1[6]];

        v31 = sub_100004778();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = v18;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Registering imav chat %@", buf, 0xCu);
        }

        [a1[5] registerChat:v18];
        v32 = [a1[5] queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10007FC70;
        block[3] = &unk_10061A428;
        v38 = a1[4];
        v39 = a1[7];
        v40 = v18;
        v33 = a1[6];
        v34 = a1[5];
        v41 = v33;
        v42 = v34;
        v35 = v18;
        dispatch_async(v32, block);
      }

      else
      {
        v35 = sub_100004778();
        v4 = v36;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_100471C08(v2);
        }
      }
    }

    else
    {
      v35 = sub_100004778();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_100471CA8(v2);
      }
    }
  }

  else
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100471D48();
    }
  }
}

void sub_10007FC70(uint64_t a1)
{
  if (![*(a1 + 32) isComplete] || (v2 = *(a1 + 40)) != 0 && (objc_msgSend(v2, "isComplete") & 1) == 0)
  {
    v5 = [[CXCallUpdate alloc] initWithIMAVChat:*(a1 + 48)];
    if (![*(a1 + 56) count])
    {
      [v5 setFaceTimeTransportType:1];
    }

    v3 = [*(a1 + 64) provider];
    v4 = [*(a1 + 32) callUUID];
    [v3 reportCallWithUUID:v4 updated:v5];

    [*(a1 + 32) fulfill];
    [*(a1 + 40) fulfill];
  }
}

void sub_1000806E0(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  switch(v2)
  {
    case 5u:
      [*(a1 + 40) _updateProviderForEndedChat:*(a1 + 32)];
      if ([*(a1 + 32) endedError])
      {
        v7 = 1;
LABEL_34:
        v13 = [*(a1 + 40) faceTimeDemuxerDelegate];
        v14 = *(a1 + 40);
        v15 = *(a1 + 32);
        v16 = [NSUUID alloc];
        v17 = [v15 GUID];

        v18 = [v16 initWithUUIDString:v17];
        v19 = [*(a1 + 32) dateEnded];
        v20 = [*(a1 + 40) failureContextForChat:*(a1 + 32)];
        [v13 providerDelegate:v14 callWithUUID:v18 endedAtDate:v19 withReason:v7 failureContext:v20];

        return;
      }

      if (qword_1006ACBF8 != -1)
      {
        sub_100471DB0();
      }

      v8 = (off_1006ACBF0)([*(a1 + 32) endedReason]);
      v9 = [*(a1 + 32) endedReason];
      v7 = -1;
      if (v9 > 10)
      {
        if ((v9 - 11) >= 0xA)
        {
          if (v9 <= 0x1E)
          {
            if (((1 << v9) & 0x57800000) != 0)
            {
              goto LABEL_30;
            }

            if (v9 == 27)
            {
              v22 = sub_100004778();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = 138412290;
                v24 = v8;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Using call ended reason answered elsewhere because ended reason is %@", &v23, 0xCu);
              }

              v7 = 4;
              goto LABEL_33;
            }

            if (v9 == 29)
            {
              v11 = sub_100004778();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                v23 = 138412290;
                v24 = v8;
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Using call ended reason declined elsewhere because ended reason is %@", &v23, 0xCu);
              }

              v7 = 5;
              goto LABEL_33;
            }
          }

          if ((v9 - 21) < 2)
          {
            v21 = sub_100004778();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v23 = 138412290;
              v24 = v8;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Using call ended reason unanswered because ended reason is %@", &v23, 0xCu);
            }

            v7 = 3;
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (v9 <= 5)
        {
          if ((v9 - 2) >= 4)
          {
            if (v9 == 1)
            {
              if ([*(a1 + 32) isCaller])
              {
                v7 = -1;
              }

              else
              {
                v7 = 2;
              }
            }

            goto LABEL_33;
          }

          goto LABEL_18;
        }

        if ((v9 - 6) >= 2)
        {
          if (v9 != 9)
          {
LABEL_33:

            goto LABEL_34;
          }

LABEL_18:
          v10 = sub_100004778();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v23 = 138412290;
            v24 = v8;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Using call ended reason remote hangup because ended reason is %@", &v23, 0xCu);
          }

          v7 = 2;
          goto LABEL_33;
        }
      }

LABEL_30:
      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412290;
        v24 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Using call ended reason failed because ended reason is %@", &v23, 0xCu);
      }

      v7 = 1;
      goto LABEL_33;
    case 4u:
      if (([*(a1 + 32) isVideo] & 1) == 0)
      {
        v6 = *(a1 + 32);
        v5 = *(a1 + 40);

        [v5 _updateProviderForConnectedChat:v6];
      }

      break;
    case 3u:
      v4 = *(a1 + 32);
      v3 = *(a1 + 40);

      [v3 _updateProviderForConnectingChat:v4];
      break;
  }
}

void sub_10008167C(uint64_t a1)
{
  if (([*(a1 + 32) isLocalParticipant] & 1) == 0)
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) avChat];
    [v2 _updateProviderForConnectedChat:v3];
  }
}

void sub_100081828(uint64_t a1)
{
  v6 = [*(a1 + 32) provider];
  v2 = [*(a1 + 40) avChat];
  v3 = [NSUUID alloc];
  v4 = [v2 GUID];
  v5 = [v3 initWithUUIDString:v4];

  [v6 reportOutgoingCallWithUUID:v5 sentInvitationAtDate:0];
}

void sub_100081A38(id *a1)
{
  if ([a1[4] isVideo])
  {
    v7 = objc_alloc_init(CXCallUpdate);
    [v7 setVideoStreamToken:{objc_msgSend(a1[5], "_activeCallID")}];
    v2 = [a1[6] provider];
    v3 = a1[4];
    v4 = [NSUUID alloc];
    v5 = [v3 GUID];

    v6 = [v4 initWithUUIDString:v5];
    [v2 reportCallWithUUID:v6 updated:v7];
  }
}

void sub_100081C7C(uint64_t a1)
{
  v8 = objc_alloc_init(CXCallUpdate);
  v2 = sub_10007BFE0(*(a1 + 32));
  [v8 setCrossDeviceIdentifier:v2];

  v3 = [*(a1 + 40) provider];
  v4 = *(a1 + 32);
  v5 = [NSUUID alloc];
  v6 = [v4 GUID];

  v7 = [v5 initWithUUIDString:v6];
  [v3 reportCallWithUUID:v7 updated:v8];
}

void sub_100081EA0(uint64_t a1)
{
  v7 = [*(a1 + 32) provider];
  v2 = *(a1 + 40);
  v3 = [NSUUID alloc];
  v4 = [v2 GUID];

  v5 = [v3 initWithUUIDString:v4];
  v6 = sub_10007BFE0(*(a1 + 40));
  [v7 reportCallWithUUID:v5 crossDeviceIdentifier:v6 changedBytesOfDataUsed:sub_10007C19C(*(a1 + 40))];
}

void sub_1000820B4(uint64_t a1)
{
  v7 = objc_alloc_init(CXCallUpdate);
  [v7 setMayRequireBreakBeforeMake:{objc_msgSend(*(a1 + 32), "mayRequireBreakBeforeMake")}];
  v2 = [*(a1 + 40) provider];
  v3 = *(a1 + 32);
  v4 = [NSUUID alloc];
  v5 = [v3 GUID];

  v6 = [v4 initWithUUIDString:v5];
  [v2 reportCallWithUUID:v6 updated:v7];
}

void sub_100082240(uint64_t a1)
{
  v8 = [*(a1 + 32) object];
  v2 = [*(a1 + 40) provider];
  v3 = [v8 avChat];
  v4 = [NSUUID alloc];
  v5 = [v3 GUID];
  v6 = [v4 initWithUUIDString:v5];

  v7 = [v8 inFrequencyLevel];
  [v2 reportCallWithUUID:v6 changedFrequencyData:v7 forDirection:2];
}

void sub_1000823D0(uint64_t a1)
{
  v8 = [*(a1 + 32) object];
  v2 = [*(a1 + 40) provider];
  v3 = [v8 avChat];
  v4 = [NSUUID alloc];
  v5 = [v3 GUID];
  v6 = [v4 initWithUUIDString:v5];

  v7 = [v8 outFrequencyLevel];
  [v2 reportCallWithUUID:v6 changedFrequencyData:v7 forDirection:1];
}

void sub_1000825EC(uint64_t a1)
{
  v2 = [[CXCallUpdate alloc] initWithIMAVChat:*(a1 + 32)];
  [v2 setShouldSilentlyRegisterIMAVCall:0];
  [v2 setFaceTimeTransportType:1];
  v3 = [*(a1 + 40) provider];
  v4 = *(a1 + 32);
  v5 = [NSUUID alloc];
  v6 = [v4 GUID];

  v7 = [v5 initWithUUIDString:v6];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100082724;
  v10[3] = &unk_10061A498;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = v8;
  v12 = v9;
  [v3 reportNewIncomingCallWithUUID:v7 update:v2 completion:v10];
}

void sub_100082724(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000827D8;
  block[3] = &unk_100619E58;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_1000827D8(uint64_t a1)
{
  [*(a1 + 32) isVideo];
  [*(a1 + 32) setConnectionTimeoutTime:TUConnectionTimeoutForCallService()];
  [*(a1 + 32) setInvitationTimeoutTime:TUIncomingInvitationTimeout()];
  if (*(a1 + 40))
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Incoming call was denied with error %@ so declining chat with IMAVResponseFilteredCall: %@", &v8, 0x16u);
    }

    return [*(a1 + 32) declineInvitationWithResponse:11];
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);

    return [v6 registerChat:v7];
  }
}

void sub_100082A54(uint64_t a1)
{
  v2 = [[CXCallUpdate alloc] initWithIMAVChat:*(a1 + 32)];
  [v2 setShouldSilentlyRegisterIMAVCall:1];
  [v2 setFaceTimeTransportType:1];
  v3 = [*(a1 + 40) provider];
  v4 = *(a1 + 32);
  v5 = [NSUUID alloc];
  v6 = [v4 GUID];

  v7 = [v5 initWithUUIDString:v6];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100082B88;
  v8[3] = &unk_10061A4C0;
  v9 = *(a1 + 32);
  [v3 reportNewIncomingCallWithUUID:v7 update:v2 completion:v8];
}

void sub_100082B88(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100082C34;
  v5[3] = &unk_100619D88;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

id sub_100082C34(uint64_t a1)
{
  [*(a1 + 32) isVideo];
  [*(a1 + 32) setConnectionTimeoutTime:TUConnectionTimeoutForCallService()];
  [*(a1 + 32) setInvitationTimeoutTime:TUIncomingInvitationTimeout()];
  if (*(a1 + 40))
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      v7 = 138412546;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Incoming call was denied with error %@ so declining chat with IMAVResponseFilteredCall: %@", &v7, 0x16u);
    }

    return [*(a1 + 32) declineInvitationWithResponse:11];
  }

  else
  {
    v6 = *(a1 + 32);

    return [v6 endChat];
  }
}

void sub_100082E88(uint64_t a1)
{
  [*(a1 + 32) _setUpListeners];
  v2 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100082F20;
  block[3] = &unk_100619D38;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_100082F20(uint64_t a1)
{
  v2 = [*(a1 + 32) providerDidBegin];

  if (v2)
  {
    v3 = [*(a1 + 32) providerDidBegin];
    v3[2]();
  }
}

id sub_100083328(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) localLandscapeAspectRatio];
  v4 = v3;
  v6 = v5;
  [*(a1 + 40) localPortraitAspectRatio];
  [v2 _setLocalLandscapeAspectRatio:*(a1 + 48) localPortraitAspectRatio:v4 forChat:{v6, v7, v8}];
  if ([*(a1 + 40) downgradeToAudio])
  {
    [*(a1 + 48) setIsSendingVideo:0];
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 48);
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling acceptInvitation on chat %@", &v12, 0xCu);
  }

  return [*(a1 + 48) acceptInvitation];
}

id sub_1000837A0(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling setIsSendingAudio with %d for chat %@", v6, 0x12u);
  }

  return [*(a1 + 32) setIsSendingAudio:*(a1 + 40)];
}

id sub_1000839D4(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) isSendingVideo];
    v4 = *(a1 + 40);
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling setIsSendingVideo with %d for chat %@", v6, 0x12u);
  }

  return [*(a1 + 40) setIsSendingVideo:{objc_msgSend(*(a1 + 32), "isSendingVideo")}];
}

id sub_100083D7C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    [*(a1 + 32) videoPresentationSize];
    v3 = NSStringFromSize(v11);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling setRemoteVideoPresentationSize with %@ for call %@", &v7, 0x16u);
  }

  v5 = *(a1 + 40);
  [*(a1 + 32) videoPresentationSize];
  return [v5 setRemoteVideoPresentationSize:?];
}

id sub_100083FD4(id *a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] videoPresentationState];
    v4 = a1[5];
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling setRemoteVideoPresentationState with %ld for chat %@", &v6, 0x16u);
  }

  return [a1[5] setRemoteVideoPresentationState:{objc_msgSend(a1[6], "IMAVChatRemoteVideoPresentationStateFromCXVideoPresentationState:", objc_msgSend(a1[4], "videoPresentationState"))}];
}

id sub_10008422C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) isRelaying];
    v4 = *(a1 + 40);
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling setRelayed with %d for chat %@", v6, 0x12u);
  }

  return [*(a1 + 40) setRelayed:{objc_msgSend(*(a1 + 32), "isRelaying")}];
}

id sub_10008446C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) isMuted];
    v4 = *(a1 + 40);
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling setMuted with %d for chat %@", v6, 0x12u);
  }

  return [*(a1 + 40) setMute:{objc_msgSend(*(a1 + 32), "isMuted")}];
}

void sub_10008480C(uint64_t a1)
{
  v2 = +[TUCallHistoryControllerXPCClient callHistoryControllerClientXPCInterface];
  [*(*(a1 + 32) + 32) setRemoteObjectInterface:v2];

  v3 = +[TUCallHistoryControllerXPCClient callHistoryControllerServerXPCInterface];
  [*(*(a1 + 32) + 32) setExportedInterface:v3];

  [*(*(a1 + 32) + 32) setExportedObject:?];
  [*(*(a1 + 32) + 32) setRequiredConnectionCapability:@"access-calls"];
  [*(*(a1 + 32) + 32) setInterruptionHandler:&stru_10061A500];
  [*(*(a1 + 32) + 32) setInvalidationHandler:&stru_10061A520];
  v4 = [*(a1 + 32) clientManager];
  v5 = [v4 asynchronousExportedObjectProxy];
  [TUCallHistoryControllerXPCClient setAsynchronousServer:v5];

  v7 = [*(a1 + 32) clientManager];
  v6 = [v7 synchronousExportedObjectProxy];
  [TUCallHistoryControllerXPCClient setSynchronousServer:v6];
}

void sub_100084944(id a1, CSDClient *a2)
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

void sub_1000849F0(id a1, CSDClient *a2)
{
  v2 = a2;
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated from client %@ for CSDCallHistoryControllerXPCServer", &v4, 0xCu);
  }
}

id sub_100084A9C(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  [v2 startListeningOnMachServiceWithName:@"com.apple.telephonyutilities.callservicesdaemon.callhistorycontroller"];

  notify_register_check("CSDCallHistoryControllerClientsShouldConnectNotification", (*(a1 + 32) + 8));
  notify_set_state(*(*(a1 + 32) + 8), 0);
  v3 = *(a1 + 32);

  return [v3 notifyClientsToConnectIfNecessary];
}

void sub_100084C74(uint64_t a1)
{
  v1 = [*(a1 + 32) clientManager];
  [v1 invalidate];
}

void sub_100084E04(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  [v2 addLocalClientObject:*(a1 + 40)];
}

void sub_100084F0C(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  [v2 removeLocalClientObject:*(a1 + 40)];
}

void sub_100085014(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "recent calls deleted: %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) callHistoryController];
  [v4 recentCallsDeleted:*(a1 + 32)];
}

void sub_100085160(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "All recent calls deleted", v4, 2u);
  }

  v3 = [*(a1 + 32) callHistoryController];
  [v3 allCallHistoryDeleted];
}

void sub_100086368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id location)
{
  objc_destroyWeak((v57 + 32));
  objc_destroyWeak((v56 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CSDAVCSession *sub_100086398(uint64_t a1, void *a2, void *a3, void *a4, char a5, unsigned int a6, void *a7)
{
  v40 = a7;
  v38 = a4;
  v11 = a3;
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = [WeakRetained queue];
  dispatch_assert_queue_V2(v14);

  v15 = [WeakRetained reportingHierarchyToken];
  v16 = [RTCReporting newHierarchyTokenFromParentToken:v15];
  [WeakRetained setReportingHierarchySubToken:v16];

  v17 = [WeakRetained provider];
  if ([v17 isDefaultProvider])
  {
    v18 = 0;
  }

  else
  {
    v19 = [WeakRetained provider];
    v18 = [v19 identifier];
  }

  v20 = [WeakRetained provider];
  v21 = [v20 isTelephonyWithSharePlayProvider];
  v22 = @"ThirdPartyScreenShare";
  v36 = v18;
  if (!v21)
  {
    v22 = v18;
  }

  v23 = v22;

  v24 = +[CSDAVCSession defaultSessionMode];
  v25 = [WeakRetained featureFlags];
  if ([v25 sharePlayInCallsEnabled])
  {
    v26 = [WeakRetained provider];
    v27 = [v26 isTelephonyWithSharePlayProvider];

    if (v27)
    {
      v24 = 3;
    }
  }

  else
  {
  }

  v28 = [CSDAVCSession alloc];
  v29 = [WeakRetained reportingHierarchySubToken];
  v30 = [WeakRetained avMode];
  v31 = [WeakRetained ABTestConfiguration];
  LOBYTE(v35) = [WeakRetained isNearbySession];
  LOBYTE(v34) = a5;
  v32 = [(CSDAVCSession *)v28 initWithTransportToken:v12 delegate:v11 queue:v38 reportingHierarchyToken:v29 oneToOneModeEnabled:a6 avMode:v30 videoEnabled:v34 report:v40 serviceName:v23 ABTestConfiguration:v31 sessionMode:v24 isNearbyConversation:v35];

  return v32;
}

id sub_100086608(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [TUVideoDeviceController alloc];
  v3 = [WeakRetained queue];
  v4 = [v2 initWithSerialQueue:v3];

  return v4;
}

void sub_10008C0E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100471F10();
    }
  }

  v6 = *(a1 + 32);
  TUOpenURL();
}

void sub_10008D458(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained activeRemoteParticipantsByIdentifier];
  v4 = [v3 count];

  if (v4 >= 2)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] GreenTea device leaving handoff conversation after timeout", v8, 2u);
    }

    v6 = *(a1 + 32);
    v7 = +[CSDConversationLeaveContext greenTeaLeaveContext];
    [v6 leaveUsingContext:v7];
  }
}

id sub_100090BF4(uint64_t a1, void *a2)
{
  v3 = [a2 handle];
  v4 = [v3 isEquivalentToHandle:*(a1 + 32)];

  return v4;
}

void sub_1000914E8(uint64_t a1)
{
  if ([*(a1 + 32) state] == 3)
  {
    v1 = +[TUCallCenter sharedInstance];
    v3 = [v1 frontmostAudioOrVideoCall];

    if (v3)
    {
      v2 = +[NSNotificationCenter defaultCenter];
      [v2 postNotificationName:TUCallCenterPendingMemberAddedNotification object:v3];
    }
  }
}

void sub_1000928AC(uint64_t a1, int a2)
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"YES";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Session dismissal alert for activitySessionUUID %@ success: %@", &v7, 0x16u);
  }
}

void sub_100092C0C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "User chose to take no action", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 audioRoutePolicyManager];
  [v3 updateScreenEnabledForRemoteParticipants:{objc_msgSend(v4, "sharePlaySupported")}];
}

void sub_10009435C(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100094448;
  block[3] = &unk_10061A678;
  v9 = v3;
  v5 = a1[5];
  v6 = a1[4];
  v10 = v5;
  v11 = v6;
  v13 = v3 != 0;
  v12 = a1[6];
  v7 = v3;
  dispatch_async(v4, block);
}

void sub_100094448(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) updateApplicationState:1];
  }

  v2 = [*(a1 + 48) delegate];
  [v2 conversation:*(a1 + 48) appLaunchState:*(a1 + 64) forActivitySession:*(a1 + 56)];
}

void sub_1000944B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Launched pip for activity %@ error %@", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

id sub_100096938(uint64_t a1, void *a2)
{
  v3 = [a2 handle];
  v4 = [*(a1 + 32) handle];
  v5 = [v3 isEquivalentToHandle:v4];

  return v5;
}

id sub_100096BA8(uint64_t a1, void *a2)
{
  v3 = [a2 handle];
  v4 = [*(a1 + 32) handle];
  v5 = [v3 isEquivalentToHandle:v4];

  return v5;
}

void sub_100098B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100098B88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeNearbyMemberWithHandleIfNecessary:*(a1 + 32)];
}

void sub_100098D78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (![WeakRetained state] && objc_msgSend(WeakRetained, "isNearbySession"))
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [WeakRetained UUID];
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cleaning up timed out nearby conversation: %@", &v5, 0xCu);
    }

    [WeakRetained _cleanUpConversation];
    v4 = [WeakRetained delegate];
    [v4 conversationChanged:WeakRetained];
  }
}

void sub_10009B4DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009B4FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained state];
    v5 = sub_100004778();
    v6 = v5;
    if (v4 == 4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        *buf = 138412290;
        v9 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Timed out waiting for session to stop after %@, moving to waiting state and cleaning up.", buf, 0xCu);
      }

      [CSDCrashReporter simulateCrashReportWithFormat:@"Timed out waiting for sessions to end in leaving state (left conversation for reason: %@). Please file a bug on [TelephonyUtilities | New Bugs] so we can direct it to the appropriate team.", *(a1 + 32)];
      [v3 setState:0];
      [v3 setAvcSession:0];
      [v3 setAvcSessionInProgress:0];
      [v3 _reportConversationFailedWithProviderEndedReason:501];
      v6 = [v3 delegate];
      [v6 conversationChanged:v3];
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100472364(v3);
    }

    [v3 setTimeoutBlock:0];
  }
}

void sub_10009BA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009BA98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained activeParticipantDestinationsByIdentifier];
    if ([v3 count] <= 1)
    {
    }

    else
    {
      v4 = [v2 activeRemoteParticipants];
      v5 = [v4 count];

      if (!v5)
      {
        v6 = sub_100004778();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [v2 activeParticipantDestinationsByIdentifier];
          v8 = 138412290;
          v9 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_endCallIfNecessary: The participant couldn't add any active participants in the session, end call,  activeParticipantDestinationsByIdentifier: %@", &v8, 0xCu);
        }

        [v2 _reportConversationFailedWithProviderEndedReason:533];
        [v2 leave];
      }
    }

    [v2 setNoConversationParticipantTimeoutBlock:0];
  }
}

void sub_10009C1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009C214(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_alloc_init(NSMutableSet);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = [WeakRetained pendingRemoteMembers];
  v33 = [v3 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (!v33)
  {
LABEL_23:

    goto LABEL_24;
  }

  v29 = 0;
  v32 = *v35;
  v30 = WeakRetained;
  obj = v3;
  do
  {
    v4 = 0;
    do
    {
      if (*v35 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v34 + 1) + 8 * v4);
      v6 = [v5 handle];
      if (!v6)
      {
        goto LABEL_10;
      }

      v7 = v6;
      v8 = [WeakRetained remoteMemberHandles];
      v9 = [v5 handle];
      if ([v8 containsObject:v9])
      {

LABEL_10:
        v15 = sub_100004778();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [WeakRetained remoteMembers];
          *buf = 138412546;
          v39 = v5;
          v40 = 2112;
          v41 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "link based call, member: %@ is already added to remoteMembers: %@", buf, 0x16u);
        }

        v17 = [WeakRetained pendingMemberHandles];
        v18 = [v5 handle];
        v19 = [v17 containsObject:v18];

        if (v19)
        {
          v20 = [NSSet setWithObject:v5];
          [WeakRetained removePendingMembers:v20 triggeredLocally:1];
        }

        [v2 addObject:v5];
        goto LABEL_15;
      }

      [WeakRetained localMember];
      v11 = v10 = v2;
      v12 = [v11 handle];
      v13 = [v5 handle];
      v14 = [v12 isEquivalentToHandle:v13];

      v2 = v10;
      WeakRetained = v30;

      if (v14)
      {
        goto LABEL_10;
      }

      v21 = sub_100004778();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v30 remoteMemberHandles];
        *buf = 138412546;
        v39 = v5;
        v40 = 2112;
        v41 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "link based call, show up LMI request UI for %@, remoteHandles: %@", buf, 0x16u);
      }

      v23 = [NSSet setWithObject:v5];
      v29 = 1;
      [v30 addPendingMembers:v23 triggeredLocally:1];

LABEL_15:
      v4 = v4 + 1;
    }

    while (v33 != v4);
    v24 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    v33 = v24;
  }

  while (v24);

  if (v29)
  {
    v3 = +[CSDReportingController sharedInstance];
    v25 = [WeakRetained tuConversation];
    [v3 remoteMemberNotInMemberListForConversation:v25];

    goto LABEL_23;
  }

LABEL_24:
  v26 = [WeakRetained pendingRemoteMembers];
  [v26 minusSet:v2];

  v27 = sub_100004778();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [WeakRetained pendingRemoteMembers];
    *buf = 138412290;
    v39 = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "updated pendingRemoteMembers: %@", buf, 0xCu);
  }

  [WeakRetained setLetMeInRequestUINotificationBlock:0];
}

void sub_10009C900(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained activeParticipantDestinationsByIdentifier];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

    v6 = [v3 activeRemoteParticipantsByIdentifier];
    v7 = [v6 objectForKeyedSubscript:*(a1 + 32)];
    if (v7)
    {
    }

    else
    {
      v8 = [v3 inflightAVCBlobRecoveryBlocksByIdentifier];
      v9 = [v8 objectForKeyedSubscript:*(a1 + 32)];

      if (!v9 && v5)
      {
        v10 = +[CSDReportingController sharedInstance];
        v11 = [v3 tuConversation];
        [v10 avcBlobRecoveryStartedForConversation:v11];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10009CB1C;
        block[3] = &unk_10061A600;
        objc_copyWeak(&v19, (a1 + 40));
        block[4] = *(a1 + 32);
        v12 = dispatch_block_create(0, block);
        v13 = [v3 delegate];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10009CC54;
        v16[3] = &unk_10061A768;
        v14 = *(a1 + 32);
        v16[4] = v3;
        v16[5] = v14;
        v15 = v12;
        v17 = v15;
        [v13 conversation:v3 requestBlobRecoveryForParticipantDestination:v5 completion:v16];

        objc_destroyWeak(&v19);
      }
    }
  }
}

void sub_10009CB1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[CSDReportingController sharedInstance];
    v4 = [WeakRetained tuConversation];
    [v3 avcBlobRecoveryTimedOutForConversation:v4];

    v5 = [WeakRetained activeRemoteParticipantsByIdentifier];
    v7 = *(a1 + 32);
    v6 = (a1 + 32);
    v8 = [v5 objectForKeyedSubscript:v7];
    if (v8)
    {
    }

    else
    {
      v9 = [WeakRetained activeParticipantDestinationsByIdentifier];
      v10 = [v9 objectForKeyedSubscript:*v6];

      if (v10)
      {
        v11 = sub_100004778();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1004723E8(v6);
        }

        [WeakRetained _reportConversationFailedWithProviderEndedReason:500];
        [WeakRetained leave];
      }
    }

    v12 = [WeakRetained inflightAVCBlobRecoveryBlocksByIdentifier];
    [v12 setObject:0 forKeyedSubscript:*v6];
  }
}

void sub_10009CC54(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) inflightAVCBlobRecoveryBlocksByIdentifier];
    v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

    if (v4)
    {
      v5 = sub_100004778();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        v16 = 138412290;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Replacing existing recovery timeout for participant with identifier %@", &v16, 0xCu);
      }

      v7 = [*(a1 + 32) inflightAVCBlobRecoveryBlocksByIdentifier];
      v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];
      dispatch_block_cancel(v8);
    }

    v9 = objc_retainBlock(*(a1 + 48));
    v10 = [*(a1 + 32) inflightAVCBlobRecoveryBlocksByIdentifier];
    [v10 setObject:v9 forKeyedSubscript:*(a1 + 40)];

    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v16 = 138412290;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting up AVC blob recovery timeout for participant with identifier %@", &v16, 0xCu);
    }

    v13 = [*(a1 + 32) serverBag];
    v14 = dispatch_time(0, 1000000000 * [v13 AVCBlobRecoveryTimeout]);
    v15 = [*(a1 + 32) queue];
    dispatch_after(v14, v15, *(a1 + 48));
  }
}

void sub_10009D30C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained serverProvidedParticipantIdentifiers];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 serverProvidedLightweightParticipantIdentifiers];

      if (v5)
      {
        v6 = objc_alloc_init(NSMutableSet);
        v7 = [v2 serverProvidedParticipantIdentifiers];
        [v6 unionSet:v7];

        v8 = [v2 serverProvidedLightweightParticipantIdentifiers];
        [v6 unionSet:v8];

        v9 = objc_alloc_init(NSMutableSet);
        v10 = [v2 activeRemoteParticipants];
        [v9 unionSet:v10];

        v11 = [v2 activeLightweightParticipants];
        [v9 unionSet:v11];

        v12 = sub_100004778();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v6;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Pruning remote participants as necessary, current server identifiers: %@", buf, 0xCu);
        }

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v13 = v9;
        v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v26;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v25 + 1) + 8 * i);
              v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v18 identifier]);
              v20 = [v6 containsObject:v19];

              if ((v20 & 1) == 0)
              {
                v21 = [v2 activeRemoteParticipants];
                if ([v21 containsObject:v18] && objc_msgSend(v2, "isOneToOneModeEnabled"))
                {
                  v22 = [v2 state];

                  if (v22 == 3)
                  {
                    v23 = sub_100004778();
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Joined in oneToOneMode, do not prune remote participant", buf, 2u);
                    }

                    goto LABEL_19;
                  }
                }

                else
                {
                }

                v24 = [v18 identifier];
                v23 = [v18 handle];
                [v2 removeParticipantWithIdentifier:v24 fromHandle:v23 withReason:0];
LABEL_19:

                continue;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v15);
        }
      }
    }

    [v2 setWaitingToPruneParticipants:{0, v25}];
  }
}

void sub_10009D7A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009D7C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setServerProvidedParticipantIdentifiers:0];
    [v3 setServerProvidedLightweightParticipantIdentifiers:0];
    v2 = [v3 idsSession];
    [v2 requestActiveParticipants];

    [v3 setParticipantRefreshBlock:0];
    WeakRetained = v3;
  }
}

void sub_10009E67C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_10009E6A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Delayed downgrade triggered, checking if we're still eligible", v3, 2u);
  }

  [WeakRetained setDowngradeToOneToOneAfterDelayBlock:0];
  [WeakRetained switchBackToOneToOneIfPossibleUsingDelay:0];
}

void sub_1000A0E08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) pendingConversationParticipantsByIdentifier];
    v4 = [v3 objectForKey:*(a1 + 40)];

    v5 = [*(a1 + 32) activeParticipantDestinationsByIdentifier];
    v6 = [v5 objectForKey:*(a1 + 40)];

    if (v4 && v6)
    {
      [*(a1 + 32) addActiveParticipant:*(a1 + 48)];
      v7 = [*(a1 + 32) pendingConversationParticipantsByIdentifier];
      [v7 removeObjectForKey:*(a1 + 40)];
    }

    else
    {
      v8 = sub_100004778();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = @"YES";
        v10 = *(a1 + 40);
        if (v4)
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        v12 = 138412802;
        v13 = v10;
        v14 = 2112;
        if (!v6)
        {
          v9 = @"NO";
        }

        v15 = v11;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not adding the participant: %@, participantPendingToBeAdded: %@, participantIsInActiveList: %@", &v12, 0x20u);
      }
    }
  }
}

id sub_1000A37FC(uint64_t a1, void *a2)
{
  v3 = [a2 handle];
  v4 = [*(a1 + 32) handle];
  v5 = [v3 isEquivalentToHandle:v4];

  return v5;
}

id sub_1000A41A0(uint64_t a1, void *a2)
{
  v3 = [a2 handle];
  v4 = [v3 isEquivalentToHandle:*(a1 + 32)];

  return v4;
}

void sub_1000A8298(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    *buf = 138412290;
    v24 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "sharePlayAllowedStateChanged: %@", buf, 0xCu);
  }

  [*(a1 + 32) updateScreenEnabledForRemoteParticipants:*(a1 + 40)];
  if ((*(a1 + 40) & 1) == 0 && [*(a1 + 32) isScreenEnabled])
  {
    v4 = [*(a1 + 32) tuConversation];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [v4 activitySessions];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [v10 activity];
          v12 = [v11 isScreenSharingActivity];

          if (v12)
          {
            v14 = v10;
            v13 = [v14 activity];

            if (v13)
            {
              v15 = *(a1 + 32);
              v16[0] = _NSConcreteStackBlock;
              v16[1] = 3221225472;
              v16[2] = sub_1000A84F4;
              v16[3] = &unk_100619D88;
              v16[4] = v15;
              v14 = v14;
              v17 = v14;
              [v15 postUserNotificationForUnsupportedScreenSharingActivity:v13 alternateReponseHandler:v16];
            }

            goto LABEL_19;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
    v14 = 0;
LABEL_19:
  }
}

void sub_1000A84F4(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopping screen on local device since route does not support share play", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = +[TUCallScreenShareAttributes defaultAttributes];
  [v3 setScreenEnabled:0 attributes:v4];

  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Leaving activity session for screen sharing since route does not support share play", v8, 2u);
  }

  v6 = [*(a1 + 32) activitySessionManager];
  v7 = [*(a1 + 40) UUID];
  [v6 leaveActivitySessionWithUUID:v7];
}

void sub_1000A87D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 response])
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "user requested to switch to speaker route", buf, 2u);
    }

    v5 = [*(a1 + 32) audioRoutePolicyManager];
    [v5 switchToSpeakerRouteIfNecessary];
  }

  if ([v3 response] == 1)
  {
    v6 = [*(a1 + 32) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A8900;
    block[3] = &unk_10061A7E0;
    v8 = *(a1 + 40);
    dispatch_async(v6, block);
  }
}

void sub_1000A9080(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) remoteParticipantForIdentifier:a2];
  v4 = v3;
  if (!v3)
  {
    v3 = *(a1 + 40);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v3);
}

void sub_1000AABD8(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithName:@"com.apple.private.alloy.phonecontinuity"];
  v2 = qword_1006ACC00;
  qword_1006ACC00 = v1;
}

uint64_t sub_1000AB06C(uint64_t a1, void *a2)
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
        v55 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
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
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 16) |= 8u;
            while (1)
            {
              v62 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v62 & 0x7F) << v33;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                LOBYTE(v21) = 0;
                v22 = &OBJC_IVAR___CSDMessagingCallModel__supportsHolding;
                goto LABEL_99;
              }
            }

            v22 = &OBJC_IVAR___CSDMessagingCallModel__supportsHolding;
            goto LABEL_98;
          case 2:
            v48 = 0;
            v49 = 0;
            v16 = 0;
            *(a1 + 16) |= 4u;
            while (1)
            {
              v61 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v61 & 0x7F) << v48;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v20 = v49++ > 8;
              if (v20)
              {
                LOBYTE(v21) = 0;
                v22 = &OBJC_IVAR___CSDMessagingCallModel__supportsGrouping;
                goto LABEL_99;
              }
            }

            v22 = &OBJC_IVAR___CSDMessagingCallModel__supportsGrouping;
LABEL_98:
            v21 = (v16 != 0) & ~[a2 hasError];
LABEL_99:
            *(a1 + *v22) = v21;
            goto LABEL_100;
          case 3:
            v23 = 0;
            v24 = 0;
            v16 = 0;
            *(a1 + 16) |= 0x40u;
            while (1)
            {
              v60 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v60 & 0x7F) << v23;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v20 = v24++ > 8;
              if (v20)
              {
                LOBYTE(v21) = 0;
                v22 = &OBJC_IVAR___CSDMessagingCallModel__supportsUngrouping;
                goto LABEL_99;
              }
            }

            v22 = &OBJC_IVAR___CSDMessagingCallModel__supportsUngrouping;
            goto LABEL_98;
        }
      }

      else if (v13 > 6)
      {
        if (v13 == 7)
        {
          v43 = 0;
          v44 = 0;
          v16 = 0;
          *(a1 + 16) |= 1u;
          while (1)
          {
            v57 = 0;
            v45 = [a2 position] + 1;
            if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
            {
              v47 = [a2 data];
              [v47 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v57 & 0x7F) << v43;
            if ((v57 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v20 = v44++ > 8;
            if (v20)
            {
              LOBYTE(v21) = 0;
              v22 = &OBJC_IVAR___CSDMessagingCallModel__supportsAddCall;
              goto LABEL_99;
            }
          }

          v22 = &OBJC_IVAR___CSDMessagingCallModel__supportsAddCall;
          goto LABEL_98;
        }

        if (v13 == 8)
        {
          v28 = 0;
          v29 = 0;
          v16 = 0;
          *(a1 + 16) |= 0x10u;
          while (1)
          {
            v56 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v56 & 0x7F) << v28;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v20 = v29++ > 8;
            if (v20)
            {
              LOBYTE(v21) = 0;
              v22 = &OBJC_IVAR___CSDMessagingCallModel__supportsSendingToVoicemail;
              goto LABEL_99;
            }
          }

          v22 = &OBJC_IVAR___CSDMessagingCallModel__supportsSendingToVoicemail;
          goto LABEL_98;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v38 = 0;
          v39 = 0;
          v16 = 0;
          *(a1 + 16) |= 2u;
          while (1)
          {
            v59 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v59 & 0x7F) << v38;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v20 = v39++ > 8;
            if (v20)
            {
              LOBYTE(v21) = 0;
              v22 = &OBJC_IVAR___CSDMessagingCallModel__supportsDTMF;
              goto LABEL_99;
            }
          }

          v22 = &OBJC_IVAR___CSDMessagingCallModel__supportsDTMF;
          goto LABEL_98;
        }

        if (v13 == 6)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 16) |= 0x20u;
          while (1)
          {
            v58 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v58 & 0x7F) << v14;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v20 = v15++ > 8;
            if (v20)
            {
              LOBYTE(v21) = 0;
              v22 = &OBJC_IVAR___CSDMessagingCallModel__supportsUnambiguousMultiPartyState;
              goto LABEL_99;
            }
          }

          v22 = &OBJC_IVAR___CSDMessagingCallModel__supportsUnambiguousMultiPartyState;
          goto LABEL_98;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_100:
      v53 = [a2 position];
    }

    while (v53 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000AC810(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uniqueProxyIdentifier];
  v4 = [v2 callWithUniqueProxyIdentifier:v3];

  if (v4 && [v4 status] == 4)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "We still have a ringing call after 90 seconds, mark it as answered elsewhere, call %@", &v6, 0xCu);
    }

    if (*(a1 + 48))
    {
      [v4 setEndpointOnCurrentDevice:0];
    }

    else
    {
      [v4 setLocallyDisconnectedWithReasonIfNone:1];
    }
  }
}

void sub_1000B096C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 64) + 8) + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

  if (v3)
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) uniqueProxyIdentifier];
    v9 = [v7 callWithUniqueProxyIdentifier:v8];

    if (!v9)
    {
      v10 = [CSDRelayCall alloc];
      v11 = [*(a1 + 40) uniqueProxyIdentifier];
      v9 = [(CSDRelayCall *)v10 initWithUniqueProxyIdentifier:v11 endpointOnCurrentDevice:0];

      v12 = [*(a1 + 32) callStateController];
      [v12 setCallDelegatesIfNeeded:v9];

      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 40);
        v17 = 138412546;
        v18 = v9;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updating call %@ with protoCall %@", &v17, 0x16u);
      }

      [*(a1 + 40) updateRelayCall:v9];
      v15 = [*(a1 + 32) callStateController];
      [v15 propertiesChangedForCall:v9];
    }

    [*(a1 + 48) updateCall:v9];
    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Pulling remotely hosted call: %@", &v17, 0xCu);
    }

    [v9 becomeEndpointForPullFromRemoteDevice];
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100472B30(a1, v9);
    }
  }
}

void sub_1000B0D10(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 isEqualToString:@"destinationID"])
  {
    [*(a1 + 32) setDestinationID:v5];
  }

  else if ([v6 isEqualToString:@"service"])
  {
    [*(a1 + 32) setService:{objc_msgSend(v5, "intValue")}];
  }

  else if ([v6 isEqualToString:@"uniqueProxyIdentifier"])
  {
    [*(a1 + 32) setUniqueProxyIdentifier:v5];
  }

  else if ([v6 isEqualToString:@"sourceIdentifier"])
  {
    [*(a1 + 32) setSourceIdentifier:v5];
  }

  else if ([v6 isEqualToString:@"wantsHoldMusic"])
  {
    [*(a1 + 32) setWantsHoldMusic:{objc_msgSend(v5, "BOOLValue")}];
  }

  else if ([v6 isEqualToString:@"dtmfKey"])
  {
    [*(a1 + 32) setDTMFKey:{objc_msgSend(v5, "intValue")}];
  }

  else if ([v6 isEqualToString:@"disconnectedReason"])
  {
    [*(a1 + 32) setDisconnectedReason:{objc_msgSend(v5, "intValue")}];
  }
}

uint64_t sub_1000B387C(uint64_t a1, void *a2)
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
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v22 = PBReaderReadString();
        v23 = *(a1 + 8);
        *(a1 + 8) = v22;
      }

      else if (v13 == 2)
      {
        v21 = objc_alloc_init(CSDMessagingConversationParticipant);
        objc_storeStrong((a1 + 16), v21);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !sub_100072604(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v26[0] & 0x7F) << v14;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_38;
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

LABEL_38:
        *(a1 + 24) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000B58A8(uint64_t a1)
{
  if ([*(a1 + 32) shouldHandleMuteRequests])
  {
    v2 = [*(a1 + 32) provider];
    v3 = [v2 isTinCanProvider];

    v4 = [*(a1 + 32) systemControllerUplinkMutedBlock];
    v5 = v4[2]();

    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) uniqueProxyIdentifier];
      v8 = v7;
      v9 = @"NO";
      if (v5)
      {
        v9 = @"YES";
      }

      v18 = 138412546;
      v19 = v7;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Call with UPI %@ responding to bottom-up mute notification mute=%@", &v18, 0x16u);
    }

    v10 = [*(a1 + 32) usesSystemMutingBlock];
    v11 = v10[2]();

    if (!(v3 & 1 | ((v11 & 1) == 0)))
    {
      [*(a1 + 32) setUnderlyingUplinkMuted:v5 bottomUpMute:1];
    }

    if (([*(a1 + 32) isPTT] & 1) == 0)
    {
      v12 = [CXSetMutedCallAction alloc];
      v13 = [*(a1 + 32) uniqueProxyIdentifierUUID];
      v14 = [v12 initWithCallUUID:v13 muted:v5 bottomUpMute:1];

      v15 = [*(a1 + 32) providerCallDelegate];
      [v15 performCallAction:v14 forCall:*(a1 + 32)];
    }

    [*(a1 + 32) propertiesChanged];
  }

  else
  {
    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [*(a1 + 32) uniqueProxyIdentifier];
      v18 = 138412290;
      v19 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Call with UPI %@ is not handling systemMuteStatusChanged notification", &v18, 0xCu);
    }
  }
}

id sub_1000B5BD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained usesSystemMuting];

  return v2;
}

BOOL sub_1000B5C60(id a1)
{
  v1 = +[TUAudioSystemController sharedAudioSystemController];
  v2 = [v1 isUplinkMuted];

  return v2;
}

void sub_1000B5F9C(id *a1)
{
  if (([a1[4] hasSet] & 4) != 0)
  {
    v2 = [a1[4] remoteMember];
    v3 = [v2 handle];
    v4 = [v3 siriDisplayName];
    if (![v4 length])
    {
      v5 = [a1[5] mergedCallUpdate];
      v6 = [v5 remoteMember];
      v7 = [v6 handle];
      v8 = [v7 siriDisplayName];
      v9 = [v8 length];

      if (!v9)
      {
        goto LABEL_6;
      }

      v2 = [a1[5] mergedCallUpdate];
      v3 = [v2 remoteMember];
      v4 = [v3 handle];
      v10 = [v4 siriDisplayName];
      v11 = [a1[4] remoteMember];
      v12 = [v11 handle];
      [v12 setSiriDisplayName:v10];
    }
  }

LABEL_6:
  v13 = [*(a1[5] + 66) isSharingScreen];
  [*(a1[5] + 66) updateWithUpdate:a1[4]];
  if (([a1[6] hasSet] & 2) != 0)
  {
    v14 = [a1[5] activeRemoteParticipantForCallUpdate:a1[6]];
    [a1[5] setActiveRemoteParticipant:v14];
  }

  if (([a1[6] hasSet] & 0x10) == 0)
  {
    goto LABEL_70;
  }

  v15 = [a1[5] activeRemoteParticipant];
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = v15;
  v17 = [a1[5] activeRemoteParticipant];
  v18 = [v17 sandboxExtendedImageURL];

  if (v18)
  {
LABEL_70:
    if (([a1[6] hasSet] & 0x10) != 0)
    {
      v19 = [a1[6] localizedCallerImageURL];
      v20 = [v19 sandboxExtensionHandle];

      if (v20 >= 1)
      {
        v21 = sub_100004778();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [a1[6] localizedCallerImageURL];
          v23 = [v22 URL];
          v77 = 138412290;
          v78 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Releasing sandbox extension handle because we are not processing the channel image URL: %@", &v77, 0xCu);
        }

        sandbox_extension_release();
      }
    }
  }

  else
  {
LABEL_16:
    v24 = [a1[6] localizedCallerImageURL];
    v25 = [a1[5] displayContext];

    if (v25)
    {
      v26 = a1[5];
      if (v24)
      {
        v27 = [a1[6] localizedCallerImageURL];
        v28 = [v26 imageURLForCXSandboxExtendedURL:v27];
        v29 = [a1[5] dynamicDisplayContext];
        [v29 setCompanyLogoURL:v28];
      }

      else
      {
        v27 = [a1[5] dynamicDisplayContext];
        [v27 setCompanyLogoURL:0];
      }
    }

    if ([a1[5] isPTT])
    {
      v30 = a1[5];
      v31 = [a1[6] localizedCallerImageURL];
      v32 = [v30 imageURLForCXSandboxExtendedURL:v31];
      [a1[5] setChannelImageURL:v32];
    }
  }

  if (([a1[6] hasSet] & 0x2000) != 0)
  {
    [a1[5] setVideo:{objc_msgSend(a1[6], "hasVideo")}];
    if (([a1[6] hasVideo] & 1) == 0)
    {
      *(a1[5] + 351) = 0;
    }
  }

  [a1[6] hasSet];
  if ((v33 & 0x800000) != 0)
  {
    *(a1[5] + 349) = [a1[6] specialUnknown];
  }

  [a1[6] hasSet];
  if (v34 < 0)
  {
    *(a1[5] + 351) = [a1[6] isSendingVideo];
  }

  [a1[6] hasSet];
  if ((v35 & 2) != 0)
  {
    *(a1[5] + 340) = [a1[6] isSharingScreen];
    v36 = a1[5];
    if ((v36[340] & 1) == 0 && ((*(v36 + 49) != 0) & v13) == 1)
    {
      v37 = sub_100004778();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v77) = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Clearing _screenShareAttributes since call is not sharing screen", &v77, 2u);
      }

      v38 = a1[5];
      v39 = v38[49];
      v38[49] = 0;
    }
  }

  if (([a1[6] hasSet] & 0x2000000000000000) != 0)
  {
    *(a1[5] + 342) = [a1[6] mixesVoiceWithMedia];
  }

  if (([a1[6] hasSet] & 0x4000000000000000) != 0)
  {
    *(a1[5] + 345) = [a1[6] prefersToPlayDuringWombat];
  }

  if (([a1[6] hasSet] & 0x8000000000000000) != 0)
  {
    *(a1[5] + 343) = [a1[6] mediaPlaybackOnExternalDevice];
  }

  if (([a1[6] hasSet] & 0x1000000000000000) != 0)
  {
    [a1[5] setConversation:{objc_msgSend(a1[6], "isConversation")}];
  }

  [a1[6] hasSet];
  if ((v40 & 0x200) != 0)
  {
    [a1[5] setIsKnownCaller:{objc_msgSend(a1[6], "isKnownCaller")}];
  }

  [a1[6] hasSet];
  if ((v41 & 0x400) != 0)
  {
    [a1[5] setFilteredOutReason:{objc_msgSend(a1[6], "filteredOutReason")}];
  }

  v42 = [a1[6] silencingUserInfo];
  v43 = [v42 copy];
  [a1[5] setSilencingUserInfo:v43];

  v44 = [a1[5] featureFlags];
  if ([v44 dualSIMRingtoneEnabled])
  {
    v45 = [a1[6] hasSet];

    if ((v45 & 0x100000000000) == 0)
    {
      goto LABEL_53;
    }

    v44 = [a1[6] localSenderSubscriptionIdentifier];
    [a1[5] setRingtoneSubscriptionIdentifier:v44];
  }

LABEL_53:
  [a1[6] hasSet];
  if ((v46 & 0x2000) != 0)
  {
    [a1[5] setShouldSuppressRingtone:{objc_msgSend(a1[6], "suppressRingtone")}];
  }

  [a1[6] hasSet];
  if ((v47 & 0x4000) != 0)
  {
    [a1[5] setCallSubType:{sub_100122CD8(objc_msgSend(a1[6], "callSubType"))}];
  }

  if (([a1[6] hasSet] & 0x80000000000000) != 0)
  {
    [a1[5] setLaunchInBackground:{objc_msgSend(a1[6], "launchInBackground")}];
  }

  v48 = [a1[5] mergedCallUpdate];
  v49 = [v48 supportsHolding];
  v50 = [a1[5] model];
  [v50 setSupportsHolding:v49];

  v51 = [v48 supportsGrouping];
  v52 = [a1[5] model];
  [v52 setSupportsGrouping:v51];

  v53 = [v48 supportsUngrouping];
  v54 = [a1[5] model];
  [v54 setSupportsUngrouping:v53];

  v55 = [v48 supportsDTMF];
  v56 = [a1[5] model];
  [v56 setSupportsDTMF:v55];

  v57 = [v48 supportsUnambiguousMultiPartyState];
  v58 = [a1[5] model];
  [v58 setSupportsUnambiguousMultiPartyState:v57];

  v59 = [v48 supportsAddCall];
  v60 = [a1[5] model];
  [v60 setSupportsAddCall:v59];

  v61 = [v48 supportsSendingToVoicemail];
  v62 = [a1[5] model];
  [v62 setSupportsSendingToVoicemail:v61];

  [a1[5] setSupportsDTMFUpdates:{objc_msgSend(v48, "supportsDTMFUpdates")}];
  [a1[5] setIsUnderlyingLinksConnected:{objc_msgSend(v48, "isUnderlyingLinksConnected")}];
  [a1[5] setVerificationStatus:{sub_100020104(objc_msgSend(v48, "verificationStatus"))}];
  [a1[5] setPriority:{sub_100020114(objc_msgSend(v48, "priority"))}];
  [a1[5] setIdentificationCategory:{sub_100020228(objc_msgSend(v48, "identificationCategory"))}];
  [a1[5] setJunkConfidence:{sub_100020128(objc_msgSend(v48, "junkConfidence"))}];
  v63 = [v48 tuMediaTokens];
  v64 = a1[5];
  v65 = v64[50];
  v64[50] = v63;

  v66 = [v48 localMemberHandleValue];
  v67 = a1[5];
  v68 = v67[53];
  v67[53] = v66;

  *(a1[5] + 54) = sub_1000233F8([v48 screenSharingIntention]);
  v69 = [a1[6] screenShareAttributes];

  if (v69)
  {
    v70 = a1[5];
    v71 = [a1[6] screenShareAttributes];
    v72 = [v70 tuScreenShareAttributesForScreenAttributes:v71];

    v73 = a1[5];
    v74 = v73[49];
    v73[49] = v72;
  }

  if ([a1[6] screenSharingType])
  {
    [a1[5] setScreenSharingType:{objc_msgSend(a1[6], "screenSharingType")}];
  }

  [a1[6] hasSet];
  if ((v75 & 0x80000) != 0)
  {
    [a1[5] setIsSharePlayCapable:{objc_msgSend(a1[6], "isSharePlayCapable")}];
  }

  [a1[6] hasSet];
  if ((v76 & 0x100000) != 0)
  {
    [a1[5] setAnyRemoteSupportsRequestToScreenShare:{objc_msgSend(a1[6], "anyRemoteSupportsRequestToScreenShare")}];
  }
}

id sub_1000B78B0(uint64_t a1)
{
  v2 = sub_1000213A4(*(a1 + 40));
  v3 = *(*(a1 + 32) + 528);

  return [v3 setBluetoothAudioFormat:v2];
}

id sub_1000B8834(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDProviderCall;
  objc_msgSendSuper2(&v3, "hold");
  return [*(a1 + 32) _setIsOnHold:1];
}

id sub_1000B88F4(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDProviderCall;
  objc_msgSendSuper2(&v3, "unhold");
  return [*(a1 + 32) _setIsOnHold:0];
}

void sub_1000BB294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BB2CC(uint64_t a1, void *a2)
{
  v3 = a2;
  +[CSDCallStateMonitor breakBeforeMakeTimeout];
  v5 = v4;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Break before make timeout: %lfs", &v9, 0xCu);
  }

  v7 = dispatch_time(0, (v5 * 1000000000.0));
  v8 = [*(a1 + 32) queue];
  dispatch_after(v7, v8, v3);
}

void sub_1000BB3E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handlePasscodeLockedOrBlocked];
    WeakRetained = v2;
  }
}

void sub_1000BB424(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleLockStateChanged];
    WeakRetained = v2;
  }
}

void sub_1000BC01C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained callContainer];
    v4 = [v3 hasCurrentCalls];

    v5 = sub_100004778();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "There are calls on the system, not clearing system mute cache", v7, 2u);
      }
    }

    else
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "All calls ended. Clearing system uplink muted cache", buf, 2u);
      }

      v5 = +[TUAudioSystemController sharedAudioSystemController];
      [v5 clearUplinkMutedCache];
    }
  }
}

void sub_1000BD6AC(uint64_t a1)
{
  v2 = [*(a1 + 32) callContainer];
  v3 = [v2 callWithUniqueProxyIdentifier:*(a1 + 40)];

  if (v3 && [v3 status] == 3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [*(a1 + 32) callContainer];
    v5 = [v4 currentAudioAndVideoCalls];

    v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if (v10 != v3)
          {
            v11 = sub_100004778();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v18 = v10;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Disconnecting call because video call is still sending and break before make timeout fired: %@", buf, 0xCu);
            }

            v12 = [*(a1 + 32) callCenter];
            [v12 disconnectCall:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v7);
    }
  }
}

void sub_1000BDC78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained callContainer];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000BDE24;
    v9[3] = &unk_10061A040;
    v10 = *(a1 + 32);
    v5 = [v4 callPassingTest:v9];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setTimeoutTimer:0];
    }

    if ([v5 callStatus] == 4)
    {
      v6 = sub_100004778();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        *buf = 134218242;
        v12 = 60;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Exceeded ringing duration of %llu seconds; disconnecting call with identifier %@", buf, 0x16u);
      }

      v8 = [v3 callCenter];
      [v8 disconnectCall:v5];
    }
  }
}

id sub_1000BDE24(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueProxyIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

BOOL sub_1000BDE68(id a1, TUCall *a2)
{
  v2 = [(TUCall *)a2 provider];
  v3 = [v2 hasRestrictionsInRetailEnvironment];

  return v3;
}

void sub_1000BDEA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained callDurationLimitTimer];
    dispatch_source_cancel(v2);

    [v3 _handleCallDurationTimerFired];
    WeakRetained = v3;
  }
}

BOOL sub_1000BE1C0(id a1, TUCall *a2)
{
  v2 = [(TUCall *)a2 provider];
  v3 = [v2 hasRestrictionsInRetailEnvironment];

  return v3;
}

void sub_1000BEE20(uint64_t a1)
{
  v9 = [[CSDStatusBarResolver alloc] initWithQueue:*(a1 + 32)];
  v2 = objc_alloc_init(STCallingStatusDomainPublisher);
  v3 = [*(a1 + 40) initWithResolver:v9 withSystemStatusPublisher:v2 queue:*(a1 + 32)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = objc_alloc_init(CSDSharedConversationServerBag);
  v7 = *(a1 + 40);
  v8 = *(v7 + 56);
  *(v7 + 56) = v6;
}

void sub_1000BF01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BF03C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BF0D8;
    block[3] = &unk_100619D38;
    v5 = WeakRetained;
    dispatch_async(v3, block);
  }
}

void sub_1000BF0D8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) resolvedCall];
  v3 = [*(a1 + 32) shouldOpenInCallServiceForCall:v2];
  v4 = [*(*(a1 + 32) + 24) shouldDisplaySystemCallControls];
  v5 = [*(*(a1 + 32) + 24) shouldDisplayHandoffEligibleConversationControls];
  v6 = [*(*(a1 + 32) + 24) shouldDisplayLagunaPullConversationControls];
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v2 callUUID];
    v12 = 67109890;
    v13 = v3;
    v14 = 1024;
    v15 = v4;
    v16 = 1024;
    LODWORD(v17[0]) = v6;
    WORD2(v17[0]) = 2112;
    *(v17 + 6) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "handleUserInteractionWithBlock: shouldOpenInCallService: %d shouldDisplaySystemCallControls: %d shouldDisplayLagunaPullConversationControls: %d callUUID: %@", &v12, 0x1Eu);
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v2 callUUID];
    v12 = 67109634;
    v13 = v3;
    v14 = 1024;
    v15 = v4;
    v16 = 2112;
    v17[0] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "handleUserInteractionWithBlock: shouldOpenInCallService: %d shouldDisplaySystemCallControls: %d callUUID: %@", &v12, 0x18u);
  }

  v11 = *(a1 + 32);
  if (v4)
  {
    [v11 displaySystemCallControlsByURL];
  }

  else if (v5)
  {
    [v11 displayHandoffEligibleNearbyByURL];
  }

  else
  {
    if (!v6)
    {
      if (v3)
      {
        [v11 openInCallServiceByURL];
        if (![v2 isPTT])
        {
          goto LABEL_15;
        }

        v11 = *(a1 + 32);
      }

      [v11 openVoIPApplicationForCall:v2];
      goto LABEL_15;
    }

    [v11 displayLagunaPullByURL];
  }

LABEL_15:
}

void sub_1000BF640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000BF660(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    [v3 removeCallDescriptor:?];
    v3 = v4;
  }

  if (*(a1 + 32))
  {
    [v4 addCallDescriptor:?];
    v3 = v4;
  }
}

void sub_1000BFB60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "TUOpenURLWithCompletion result: %@, error: %@", &v9, 0x16u);
  }

  if (v6)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100473974(a1, v8);
    }
  }
}

void sub_1000BFF10(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully launched application with bundle identifier %@", &v12, 0xCu);
    }

    v9 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = *(a1 + 48);
      v11 = [v10 providerBargeCallDelegate];
      [v11 acquireTemporaryProcessAssertionForCall:v10];

LABEL_9:
    }
  }

  else if (v5)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1004739F0(a1, v6, v11);
    }

    goto LABEL_9;
  }
}

CSDMessagingConversationParticipant *sub_1000C01A0(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(CSDMessagingConversationParticipant);
  -[CSDMessagingConversationParticipant setAvMode:](v2, "setAvMode:", [v1 audioVideoMode]);
  -[CSDMessagingConversationParticipant setPresentationMode:](v2, "setPresentationMode:", [v1 presentationMode]);
  v3 = [v1 identifier];

  [(CSDMessagingConversationParticipant *)v2 setIdentifier:v3];
  if ([(CSDMessagingConversationParticipant *)v2 identifier])
  {
    v4 = v2;
  }

  else
  {
    [CSDCrashReporter simulateCrashReportWithFormat:@"Trying to send a participant update change with a participantIdentifier of 0. Please file a bug to [FaceTime Foundation | Protocol]"];
    v4 = 0;
  }

  return v4;
}

CSDMessagingConversationMessage *sub_1000C026C(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a1;
  v7 = a4;
  v8 = a2;
  v9 = [[CSDMessagingConversationMessage alloc] initWithType:33 groupUUID:v8 link:0];

  if (v7)
  {
    [(CSDMessagingConversationMessage *)v9 setTUInvitationPreferences:v7];
  }

  [(CSDMessagingConversationMessage *)v9 addActiveParticipants:v6];

  return v9;
}

uint64_t sub_1000C0318(void *a1)
{
  v1 = a1;
  v2 = [v1 activeParticipants];
  v3 = [v2 count];

  v4 = [v1 activeParticipants];
  v5 = [v4 firstObject];

  if (v3 && v5 && [v5 identifier])
  {
    if (v3 < 2)
    {
      v8 = 1;
      goto LABEL_11;
    }

    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v1;
      v7 = "[WARN] Ignoring message %@ because multiple participants were specified.";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 0xCu);
    }
  }

  else
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v1;
      v7 = "[WARN] Ignoring message %@ because a participant was not specified.";
      goto LABEL_9;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

void sub_1000C0768(uint64_t a1)
{
  v5 = [*(a1 + 32) fetchServiceProviders];
  v2 = [v5 copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;
}

void sub_1000C08CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C09FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C0A14(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v6 = [NSPredicate predicateWithBlock:&stru_10061ACA8];
  v3 = [v2 filteredArrayUsingPredicate:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

BOOL sub_1000C0A98(id a1, CSDCarrierBundlePhoneNumberProvider *a2, NSDictionary *a3)
{
  v3 = [(CSDCarrierBundlePhoneNumberProvider *)a2 carrierPhoneNumbers];
  v4 = v3 != 0;

  return v4;
}

void sub_1000C0B84(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  if (v2 != v1)
  {
    v4 = v2;
    v5 = [v1 copy];
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = v5;

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C0C44;
    block[3] = &unk_100619D38;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_1000C0C44(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didChangeServiceProvidersForCarrierBundlePhoneNumberProviderController:*(a1 + 32)];
}

void sub_1000C1594(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchServiceProviders];
  [*(a1 + 32) setServiceProviders:v2];
}

void sub_1000C16BC(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchServiceProviders];
  [*(a1 + 32) setServiceProviders:v2];
}

void sub_1000C5D3C(uint64_t a1)
{
  v2 = [*(a1 + 32) blocksPendingTransportAvailability];
  v3 = objc_retainBlock(*(a1 + 40));
  v4 = [v2 containsObject:v3];

  if (v4)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_retainBlock(*(a1 + 40));
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Transport availability block timed out: %@", &v9, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
    v7 = [*(a1 + 32) blocksPendingTransportAvailability];
    v8 = objc_retainBlock(*(a1 + 40));
    [v7 removeObject:v8];
  }
}

uint64_t sub_1000C7A98(uint64_t a1, void *a2)
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
        LOBYTE(v33[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33[0] & 0x7F) << v5;
        if ((v33[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          LOBYTE(v33[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v33[0] & 0x7F) << v24;
          if ((v33[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_53;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v26;
        }

LABEL_53:
        v30 = 16;
        goto LABEL_54;
      }

      if (v13 != 4)
      {
        goto LABEL_34;
      }

      v21 = objc_alloc_init(CSDMessagingScreenShareContextMetadata);
      objc_storeStrong((a1 + 8), v21);
      v33[0] = 0;
      v33[1] = 0;
      if (!PBReaderPlaceMark() || !sub_1000D3808(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_55:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v22 = PBReaderReadString();
      v23 = *(a1 + 24);
      *(a1 + 24) = v22;

      goto LABEL_55;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v33[0] & 0x7F) << v14;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_49;
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

LABEL_49:
      v30 = 32;
LABEL_54:
      *(a1 + v30) = v20;
      goto LABEL_55;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_55;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000C85F0(uint64_t a1, void *a2)
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
        v22 = 0;
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

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_30;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_30:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000C8EE0(uint64_t a1, void *a2)
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
        LOBYTE(v31) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            LOBYTE(v31) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v31 & 0x7F) << v22;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_55;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v24;
          }

LABEL_55:
          v28 = 40;
          goto LABEL_60;
        }

        if (v13 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            LOBYTE(v31) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v31 & 0x7F) << v15;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_59;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_59:
          v28 = 24;
LABEL_60:
          *(a1 + v28) = v21;
          goto LABEL_61;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(CSDMessagingLinkSyncUpdateMessage);
            objc_storeStrong((a1 + 32), v14);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !sub_1001399F4(v14, a2))
            {
LABEL_63:

              return 0;
            }

            goto LABEL_40;
          case 4:
            v14 = objc_alloc_init(CSDMessagingLinkSyncCheckInMessage);
            objc_storeStrong((a1 + 8), v14);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !sub_10023F288(v14, a2))
            {
              goto LABEL_63;
            }

            goto LABEL_40;
          case 5:
            v14 = objc_alloc_init(CSDMessagingLinkSyncRecoverMessage);
            objc_storeStrong((a1 + 16), v14);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !sub_100061460(v14, a2))
            {
              goto LABEL_63;
            }

LABEL_40:
            PBReaderRecallMark();

            goto LABEL_61;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_61:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_1000C9BD4(uint64_t a1)
{
  [*(a1 + 32) _updateDefaultPairedDeviceUniqueIDDefault];
  [*(a1 + 32) _updateThumperCallingPreferences];
  v2 = *(a1 + 32);

  return [v2 _checkIfDevicesShouldBeUnenrolled];
}

id sub_1000CB194(uint64_t a1)
{
  [*(a1 + 32) _updateDefaultPairedDeviceUniqueIDDefault];
  v2 = *(a1 + 32);

  return [v2 _checkIfDevicesShouldBeUnenrolled];
}

void sub_1000CB4B4(uint64_t a1)
{
  v2 = +[IMUserNotificationCenter sharedInstance];
  v3 = [v2 countForIdentifier:*(a1 + 32)];

  if (v3)
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WARN] Not adding user notification because we are already displaying one", buf, 2u);
    }
  }

  else
  {
    [*(a1 + 40) setUsesNotificationCenter:0];
    [*(a1 + 40) setRepresentedApplicationBundle:TUBundleIdentifierTelephonyUtilitiesFramework];
    v5 = +[IMUserNotificationCenter sharedInstance];
    [v5 addUserNotification:*(a1 + 40) listener:0 completionHandler:&stru_10061AD50];
  }
}

void sub_1000CB5BC(id a1, IMUserNotification *a2)
{
  if (![(IMUserNotification *)a2 response])
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "User requested to Turn On Thumper calling", v3, 2u);
    }

    +[TUCallCapabilities requestPinFromPrimaryDevice];
  }
}

void sub_1000CB650(id a1)
{
  v1 = +[IMUserNotificationCenter sharedInstance];
  v2 = [v1 countForIdentifier:@"com.apple.telephonyutilities.callservicesd.thumperpushhandler.secondarydevicethumpersupported"];

  if (v2)
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing existing reminder notification", v5, 2u);
    }

    v4 = +[IMUserNotificationCenter sharedInstance];
    [v4 removeNotificationsForServiceIdentifier:@"com.apple.telephonyutilities.callservicesd.thumperpushhandler.secondarydevicethumpersupported"];
  }
}

void sub_1000CB904(uint64_t a1)
{
  v2 = +[IMUserNotificationCenter sharedInstance];
  v3 = [v2 countForIdentifier:*(a1 + 32)];

  if (v3)
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WARN] Not adding user notification because we are already displaying one", buf, 2u);
    }
  }

  else
  {
    [*(a1 + 40) setUsesNotificationCenter:0];
    [*(a1 + 40) setRepresentedApplicationBundle:TUBundleIdentifierTelephonyUtilitiesFramework];
    v5 = +[IMUserNotificationCenter sharedInstance];
    [v5 addUserNotification:*(a1 + 40) listener:0 completionHandler:&stru_10061AD90];
  }
}

void sub_1000CBA0C(id a1, IMUserNotification *a2)
{
  if ([(IMUserNotification *)a2 response]== 1)
  {
    v2 = [CUTWeakLinkClass() preferencesURL];
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Emergency Address disclaimer: Preferences button pressed, open URL (%@).", &v4, 0xCu);
    }

    TUOpenSensitiveURL();
  }
}

void sub_1000CBAFC(id a1)
{
  v1 = +[IMUserNotificationCenter sharedInstance];
  v2 = [v1 countForIdentifier:@"com.apple.telephonyutilities.callservicesd.thumperpushhandler.secondarydevicethumperenabled"];

  if (v2)
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing existing emergency address disclaimer", v5, 2u);
    }

    v4 = +[IMUserNotificationCenter sharedInstance];
    [v4 removeNotificationsForServiceIdentifier:@"com.apple.telephonyutilities.callservicesd.thumperpushhandler.secondarydevicethumperenabled"];
  }
}

void sub_1000CC700(id a1)
{
  v1 = [CSDPersistedChannelRegistry alloc];
  v4 = +[NSUserDefaults tu_defaults];
  v2 = [(CSDPersistedChannelRegistry *)v1 initWithUserDefaults:v4];
  v3 = qword_1006ACC10;
  qword_1006ACC10 = v2;
}

void sub_1000CC96C(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

void sub_1000CCA58(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

void sub_1000CCEA8(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) activePersistedChannelIdentityChangedTo:*(a1 + 40)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_1000CD07C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) providerIdentifier];
  *(*(*(a1 + 48) + 8) + 24) = [v2 _queue_tearDownPersistedChannelForApplicationIdentifier:v3 teardownType:*(a1 + 56)];
}

void sub_1000CD1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000CD1E8(uint64_t a1)
{
  result = [*(a1 + 32) _queue_tearDownPersistedChannelForBundleIdentifier:*(a1 + 40) teardownType:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

id sub_1000CD564(uint64_t a1)
{
  [*(a1 + 32) _queue_tearDownPersistedChannelForBundleIdentifier:*(a1 + 40) teardownType:2];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _queue_clearPendingChannelTeardownAcknowledgementsForBundleIdentfier:v3];
}

void sub_1000CD780(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_activePersistedChannelIdentity];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000CDA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000CDA68(void *a1)
{
  v2 = [*(a1[4] + 8) dictionaryForKey:@"CSDPersistedTornDownChannelIdentities"];
  v3 = [v2 objectForKey:a1[5]];
  if ([v3 length])
  {
    v12 = 0;
    v4 = [CSDPersistedChannelIdentity unarchivedObjectFromData:v3 error:&v12];
    v5 = v12;
    v6 = v5;
    if (v4)
    {
      v7 = [v4 channelUUID];
      v8 = [v7 UUIDString];
      v9 = *(a1[6] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    else
    {
      if (!v5)
      {
LABEL_9:

        goto LABEL_10;
      }

      v11 = sub_100004778();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100473CCC();
      }

      v7 = [v2 mutableCopy];
      [v7 removeObjectForKey:a1[5]];
      [*(a1[4] + 8) setObject:v7 forKey:@"CSDPersistedTornDownChannelIdentities"];
    }

    goto LABEL_9;
  }

LABEL_10:
}

void sub_1000CEE50(uint64_t a1)
{
  v2 = +[CSDFaceTimeVideoIDSService sharedInstance];
  [v2 addServiceDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 24)];

  v3 = +[NSNotificationCenter defaultCenter];
  v4 = *(a1 + 32);
  v5 = +[CSDRelayIDSService sharedInstance];
  [v3 addObserver:v4 selector:"devicesChanged:" name:@"CSDIDSDeviceListChangedNotification" object:v5];

  v6 = +[NSNotificationCenter defaultCenter];
  v7 = *(a1 + 32);
  v8 = +[CSDFaceTimeVideoIDSService sharedInstance];
  [v6 addObserver:v7 selector:"callerIDChanged:" name:@"CSDIDSServiceCallerIDChangedNotification" object:v8];

  v9 = +[FTCServiceAvailabilityCenter sharedInstance];
  [v9 addListenerID:@"com.apple.telephonyutilities.callservicesd.accountscontroller" forService:0];

  v10 = +[FTCServiceAvailabilityCenter sharedInstance];
  [v10 addListenerID:@"com.apple.telephonyutilities.callservicesd.accountscontroller" forService:2];

  TURegisterIDSAvailabilityListener();
  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:*(a1 + 32) selector:"serviceAvailabilityChanged:" name:FTCServiceAvailabilityDidChangeNotification object:0];

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 32) _faceTimeAudioAvailability];
    v14 = [*(a1 + 32) _faceTimeVideoAvailability];
    v19 = 134218240;
    v20 = v13;
    v21 = 2048;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FaceTime Audio availability is %ld. FaceTime Video availability is %ld", &v19, 0x16u);
  }

  [*(a1 + 32) _updateOutgoingCallerID];
  v15 = sub_100004778();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = objc_opt_class();
    v19 = 138412290;
    v20 = v17;
    v18 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Initialized %@", &v19, 0xCu);
  }
}

id sub_1000CF464(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received caller ID changed notification: %@", &v5, 0xCu);
  }

  return [*(a1 + 40) updateOutgoingCallerIDAndSendDelegateCallbacksIfNecessary];
}

void sub_1000CF5C8(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received service availability changed notification: %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) delegate];
  [v4 faceTimeAvailabilityChanged];
}

id sub_1000CF73C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received devices changed notification: %@", &v5, 0xCu);
  }

  return [*(a1 + 40) updateOutgoingCallerIDAndSendDelegateCallbacksIfNecessary];
}

void sub_1000CFB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000CFCB0(uint64_t a1)
{
  v4 = *(*(a1 + 32) + 16);
  [*(a1 + 32) _updateOutgoingCallerID];
  v2 = *(*(a1 + 32) + 16);
  if ((TUStringsAreEqualOrNil() & 1) == 0)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 outgoingCallerIDChanged];
  }
}

uint64_t sub_1000D1450(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          v15 = 8;
        }

        else
        {
          if (v13 != 5)
          {
LABEL_24:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_41;
          }

          v14 = PBReaderReadString();
          v15 = 16;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 40) |= 1u;
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
              goto LABEL_40;
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

LABEL_40:
          *(a1 + 24) = v23;
          goto LABEL_41;
        }

        if (v13 != 2)
        {
          goto LABEL_24;
        }

        v14 = PBReaderReadString();
        v15 = 32;
      }

      v24 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_41:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000D1DE0(uint64_t a1)
{
  v2 = +[TUConversationProviderManagerXPCClient conversationProviderManagerClientXPCInterface];
  [*(*(a1 + 32) + 48) setRemoteObjectInterface:v2];

  v3 = +[TUConversationProviderManagerXPCClient conversationProviderManagerServerXPCInterface];
  [*(*(a1 + 32) + 48) setExportedInterface:v3];

  [*(*(a1 + 32) + 48) setExportedObject:?];
  [*(*(a1 + 32) + 48) setRequiredConnectionCapability:@"register-gft-service"];
  [*(*(a1 + 32) + 48) setInterruptionHandler:&stru_10061AED0];
  objc_initWeak(&location, *(a1 + 32));
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000D2044;
  v11 = &unk_10061AEF8;
  objc_copyWeak(&v12, &location);
  [*(*(a1 + 32) + 48) setInvalidationHandler:&v8];
  v4 = [*(a1 + 32) clientManager];
  v5 = [v4 asynchronousExportedObjectProxy];
  [TUConversationProviderManagerXPCClient setAsynchronousServer:v5];

  v6 = [*(a1 + 32) clientManager];
  v7 = [v6 synchronousExportedObjectProxy];
  [TUConversationProviderManagerXPCClient setSynchronousServer:v7];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void sub_1000D1F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000D1F98(id a1, CSDClient *a2)
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

void sub_1000D2044(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated from client %@ for CSDConversationProviderManagerXPCServer", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [v3 capabilities];
  if (![v6 wantsCallDisconnectionOnInvalidation])
  {
    goto LABEL_19;
  }

  v7 = [WeakRetained featureFlags];
  v8 = [v7 groupFacetimeAsAServiceEnabled];

  if (v8)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = [WeakRetained conversationManager];
    v6 = [v9 activeConversations];

    v10 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v33;
      *&v11 = 138412290;
      v30 = v11;
      do
      {
        v14 = 0;
        v31 = v12;
        do
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(v6);
          }

          v15 = *(*(&v32 + 1) + 8 * v14);
          v16 = [v15 provider];
          v17 = [v16 isDefaultProvider];

          if ((v17 & 1) == 0)
          {
            v18 = [WeakRetained providerManager];
            v19 = [v18 providerIdentifiersForClient:v3];

            if ([v19 count])
            {
              v20 = [v15 provider];
              [v20 identifier];
              v21 = v13;
              v22 = WeakRetained;
              v23 = v6;
              v25 = v24 = v3;
              v26 = [v19 containsObject:v25];

              v3 = v24;
              v6 = v23;
              WeakRetained = v22;
              v13 = v21;
              v12 = v31;

              if (v26)
              {
                v27 = sub_100004778();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v30;
                  v38 = v15;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Leaving since client got invalidated conversation: %@", buf, 0xCu);
                }

                v28 = [WeakRetained conversationManager];
                v29 = [v15 UUID];
                [v28 leaveConversationWithUUID:v29];
              }
            }
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v12);
    }

LABEL_19:
  }
}

id sub_1000D2348(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  [v2 startListeningOnMachServiceWithName:@"com.apple.telephonyutilities.callservicesdaemon.conversationprovidermanager"];

  notify_register_check("CSDConversationProviderManagerClientsShouldConnectNotification", (*(a1 + 32) + 8));
  notify_set_state(*(*(a1 + 32) + 8), 0);
  v3 = *(a1 + 32);

  return [v3 notifyClientsToConnectIfNecessary];
}

void sub_1000D2520(uint64_t a1)
{
  v1 = [*(a1 + 32) clientManager];
  [v1 invalidate];
}

void sub_1000D2758(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  [v2 addLocalClientObject:*(a1 + 40)];
}

void sub_1000D2860(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  [v2 removeLocalClientObject:*(a1 + 40)];
}

void sub_1000D298C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationProviderForIdentifier: %@", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) providerManager];
  v5 = [v4 conversationProviderForIdentifier:*(a1 + 32)];
  v6 = [v5 tuProvider];

  (*(*(a1 + 48) + 16))();
}

void sub_1000D2B98(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = TULoggableStringForHandle();
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "generatePseudonymHandleForConversationProviderURI: %@", &v6, 0xCu);
  }

  v5 = [*(a1 + 40) providerManager];
  [v5 generatePseudonymHandleForConversationProvider:*(a1 + 48) expiryDuration:*(a1 + 32) URI:*(a1 + 56) completionHandler:*(a1 + 64)];
}

void sub_1000D2DA0(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "renewPseudonymHandle: %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) providerManager];
  [v4 renewPseudonymHandle:*(a1 + 32) forConversationProvider:*(a1 + 48) expirationDate:*(a1 + 56) completionHandler:*(a1 + 64)];
}

void sub_1000D2F6C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "revokePseudonymHandle: %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) providerManager];
  [v4 revokePseudonymHandle:*(a1 + 32) forConversationProvider:*(a1 + 48) completionHandler:*(a1 + 56)];
}

void sub_1000D3134(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "doesHandleCorrespondToConversationProvider: %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) providerManager];
  [v4 doesHandle:*(a1 + 32) correspondToConversationProvider:*(a1 + 48) completionHandler:*(a1 + 56)];
}

void sub_1000D34C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(TUCallServicesClientCapabilities);
  v5 = [*(a1 + 32) providerConfiguration];
  [v4 setWantsCallDisconnectionOnInvalidation:{objc_msgSend(v5, "wantsLeaveOnInvalidation")}];

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "clientCapabilities: %@", &v11, 0xCu);
  }

  [*(a1 + 40) setCapabilities:v4];
  v7 = +[CSDConversationProviderManager sharedInstance];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) identifier];
  [v7 startTrackingClient:v8 forProviderIdentifier:v9];

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }
}

uint64_t sub_1000D3808(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___CSDMessagingScreenShareContextMetadata__bundleIdentifier;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___CSDMessagingScreenShareContextMetadata__appName;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000D3FD8(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___CSDMessagingReceptionistSession__predictedName;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___CSDMessagingReceptionistSession__summary;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

BOOL sub_1000D52E4(id a1, TUCall *a2)
{
  v2 = a2;
  v3 = ([(TUCall *)v2 isPTT]& 1) == 0 && [(TUCall *)v2 callStatus]== 1;

  return v3;
}

void sub_1000D5A6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handlePushToTalkRecordingStateChanged:*(a1 + 32)];
}

void sub_1000D5ED0(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5F84;
  block[3] = &unk_10061B008;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v5;
  v8 = a2;
  dispatch_async(v4, block);
}

uint64_t sub_1000D5F84(uint64_t a1)
{
  [*(a1 + 32) setIsPlayingSystemSound:0];
  [*(a1 + 32) updateUplinkMuteState];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(a1 + 48);
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1000D6140(uint64_t a1)
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 frontmostAudioOrVideoCall];

  v4 = sub_100004778();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Barge call is ignoring audioApplicationMuteStatusChanged because another call is present", &v10, 2u);
    }

    goto LABEL_10;
  }

  if (v5)
  {
    v6 = *(a1 + 32);
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling audioApplicationMuteStatusChanged notification for barge call: %@", &v10, 0xCu);
  }

  if ([*(a1 + 40) callStatus] != 6)
  {
    v7 = [*(a1 + 32) userInfo];
    v4 = [v7 objectForKey:AVAudioApplicationMuteStateKey];

    v8 = [v4 BOOLValue];
    v9 = *(a1 + 40);
    if (v8)
    {
      [v9 stopTransmissionWithOriginator:1];
    }

    else
    {
      [v9 startTransmissionWithOriginator:1];
    }

LABEL_10:
  }
}

uint64_t sub_1000D658C(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      if (v14)
      {
        [a1 addNearbyStableDeviceIdentifiers:v14];
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_1000D6D78(uint64_t a1)
{
  v2 = +[TUCallProviderManagerXPCClient callProviderManagerClientXPCInterface];
  v3 = [*(a1 + 32) clientManager];
  [v3 setRemoteObjectInterface:v2];

  v4 = +[TUCallProviderManagerXPCClient callProviderManagerServerXPCInterface];
  v5 = [*(a1 + 32) clientManager];
  [v5 setExportedInterface:v4];

  v6 = *(a1 + 32);
  v7 = [v6 clientManager];
  [v7 setExportedObject:v6];

  v8 = TUEntitlementsAccessCallProvidersCapability;
  v9 = [*(a1 + 32) clientManager];
  [v9 setRequiredConnectionCapability:v8];

  v10 = [*(a1 + 32) clientManager];
  [v10 setInterruptionHandler:&stru_10061B050];

  v11 = [*(a1 + 32) clientManager];
  [v11 setInvalidationHandler:&stru_10061B070];

  v12 = [*(a1 + 32) clientManager];
  v13 = [v12 asynchronousExportedObjectProxy];
  [TUCallProviderManagerXPCClient setAsynchronousServer:v13];

  v15 = [*(a1 + 32) clientManager];
  v14 = [v15 synchronousExportedObjectProxy];
  [TUCallProviderManagerXPCClient setSynchronousServer:v14];
}

void sub_1000D6F04(id a1, CSDClient *a2)
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

void sub_1000D6FB0(id a1, CSDClient *a2)
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

void sub_1000D705C(uint64_t a1)
{
  v1 = [*(a1 + 32) clientManager];
  [v1 startListeningOnMachServiceWithName:@"com.apple.telephonyutilities.callservicesdaemon.callprovidermanager"];
}

void sub_1000D7130(uint64_t a1)
{
  v1 = [*(a1 + 32) clientManager];
  [v1 invalidate];
}

void sub_1000D79B8(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  [v2 addLocalClientObject:*(a1 + 40)];
}

void sub_1000D7AC0(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  [v2 removeLocalClientObject:*(a1 + 40)];
}

void sub_1000D7BD4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v10 = [v5 providersByIdentifierForClient:v7];
  v8 = [*(a1 + 32) localProvidersByIdentifierForClient:v7];
  v9 = [*(a1 + 32) pairedHostDeviceProvidersByIdentifierForClient:v7];

  [v6 updateProvidersByIdentifier:v10 localProvidersByIdentifier:v8 pairedHostDeviceProvidersByIdentifier:v9];
}

void sub_1000D7D80(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithName:@"com.apple.private.alloy.facetime.video"];
  v2 = qword_1006ACC30;
  qword_1006ACC30 = v1;
}

void sub_1000D8308(id a1)
{
  v1 = TUPreferredFaceTimeBundleIdentifier();
  v2 = [LSApplicationRecord csd_applicationRecordForBundleIdentifier:v1];
  v3 = [v2 machOUUIDs];
  v4 = [v3 firstObject];
  v5 = qword_1006ACC40;
  qword_1006ACC40 = v4;

  if (!qword_1006ACC40)
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100473F20(v1, v6);
    }
  }
}

CSDAVConference *__cdecl sub_1000D84E0(id a1)
{
  v1 = objc_alloc_init(CSDAVConference);

  return v1;
}

void sub_1000D92F4(id a1)
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"disableFaceTimeKeyExchange", TUBundleIdentifierTelephonyUtilitiesFramework, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v2 = AppBooleanValue == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  byte_1006ACC50 = v3;
  if (!v2)
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = @"disableFaceTimeKeyExchange";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WARN] Disabling key exchange because %@ default is set to YES", buf, 0xCu);
    }
  }
}

void sub_1000DB6E0(uint64_t a1)
{
  v2 = [*(a1 + 32) dateReceivedFirstRemoteFrame];

  if (!v2)
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v7 = 134218242;
      v8 = 0x4008000000000000;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[WARN] First frame not received after %f seconds for %@", &v7, 0x16u);
    }

    v5 = *(a1 + 32);
    v6 = [v5 conference];
    [v5 receivedFirstRemoteFrameForConference:v6];
  }
}

uint64_t sub_1000DC2A0(uint64_t a1, void *a2)
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
      if (v13 >= 4)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_10061B150[v13];
        v15 = PBReaderReadString();
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

void sub_1000DCC6C(uint64_t a1)
{
  v1 = [[CSDCallDirectoryManager alloc] initWithQueue:*(a1 + 32)];
  v2 = qword_1006ACC60;
  qword_1006ACC60 = v1;
}

void sub_1000DCEA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1000DCEC0(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device first unlock block invoked, initializing CXCallDirectoryManager...", v5, 2u);
  }

  v3 = objc_alloc_init(CXCallDirectoryManager);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setManager:v3];
}

void sub_1000DCF58(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    [*(a1 + 32) beginDailyMaintenanceWithActivity:v3];
  }

  else if (!state)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = xpc_activity_copy_criteria(v3);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "XPC activity checked in. Criteria: %@", &v7, 0xCu);
    }
  }
}

void sub_1000DD4D4(uint64_t a1)
{
  v2 = [*(a1 + 32) manager];

  v3 = sub_100004778();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beginning daily maintenance with activity %@", buf, 0xCu);
    }

    v6 = [*(a1 + 32) manager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000DD684;
    v9[3] = &unk_10061A498;
    v7 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v7;
    [v6 compactStoreWithCompletionHandler:v9];
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting activity state to XPC_ACTIVITY_STATE_DONE", buf, 2u);
    }

    if (!xpc_activity_set_state(*(a1 + 40), 5))
    {
      v8 = sub_100004778();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100474294();
      }
    }
  }
}

void sub_1000DD684(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1004742D4();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully compacted store", buf, 2u);
  }

  v6 = [*(a1 + 32) manager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DD79C;
  v7[3] = &unk_10061A4C0;
  v8 = *(a1 + 40);
  [v6 cleanUpLiveLookupDataWithCompletionHandler:v7];
}

void sub_1000DD79C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100474344();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cleaned up LiveLookupData", buf, 2u);
  }

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting activity state to XPC_ACTIVITY_STATE_DONE", v8, 2u);
  }

  if (!xpc_activity_set_state(*(a1 + 32), 5))
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100474294();
    }
  }
}

void sub_1000DDA34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100474424();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully synchronized call directory extensions", buf, 2u);
  }

  v6 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DDB4C;
  block[3] = &unk_100619D38;
  v8 = *(a1 + 40);
  dispatch_async(v6, block);
}

void sub_1000DDB4C(uint64_t a1)
{
  v2 = +[CSDTransactionManager sharedInstance];
  [v2 endTransactionIfNecessaryForObject:*(a1 + 32)];
}

uint64_t sub_1000DE104(uint64_t a1, void *a2)
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
        LOBYTE(v33) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
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
          *(a1 + 40) |= 2u;
          v33 = 0;
          v26 = [a2 position] + 8;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v29 = v33;
          v30 = 16;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_26:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_49;
          }

          *(a1 + 40) |= 1u;
          v33 = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v29 = v33;
          v30 = 8;
        }

        *(a1 + v30) = v29;
      }

      else if (v13 == 1)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 40) |= 4u;
        while (1)
        {
          LOBYTE(v33) = 0;
          v22 = [a2 position] + 1;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v21 |= (v33 & 0x7F) << v19;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v11 = v20++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_43;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v21;
        }

LABEL_43:
        *(a1 + 24) = v25;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_26;
        }

        v14 = PBReaderReadString();
        v15 = *(a1 + 32);
        *(a1 + 32) = v14;
      }

LABEL_49:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000E21B4(uint64_t a1, void *a2)
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
      LOBYTE(v238) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v238 & 0x7F) << v6;
      if ((v238 & 0x80) == 0)
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
        *(a1 + 464) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v238 & 0x7F) << v14;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_462:
            v232 = 428;
            goto LABEL_510;
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

        goto LABEL_462;
      case 2u:
        v35 = PBReaderReadString();
        v36 = 432;
        goto LABEL_339;
      case 3u:
        v35 = PBReaderReadString();
        v36 = 80;
        goto LABEL_339;
      case 4u:
        v35 = PBReaderReadString();
        v36 = 416;
        goto LABEL_339;
      case 5u:
        v34 = objc_alloc_init(CSDMessagingCallModelState);
        objc_storeStrong((a1 + 248), v34);
        v238 = 0;
        v239 = 0;
        if (!PBReaderPlaceMark() || (sub_100233C8C(v34, a2) & 1) == 0)
        {
          goto LABEL_520;
        }

        goto LABEL_413;
      case 6u:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        *(a1 + 464) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v110 = [a2 position] + 1;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
          {
            v112 = [a2 data];
            [v112 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v109 |= (v238 & 0x7F) << v107;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v12 = v108++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_450;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v109;
        }

LABEL_450:
        v232 = 312;
        goto LABEL_510;
      case 7u:
        v113 = 0;
        v114 = 0;
        v115 = 0;
        *(a1 + 464) |= 0x800000000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v116 = [a2 position] + 1;
          if (v116 >= [a2 position] && (v117 = objc_msgSend(a2, "position") + 1, v117 <= objc_msgSend(a2, "length")))
          {
            v118 = [a2 data];
            [v118 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v115 |= (v238 & 0x7F) << v113;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v113 += 7;
          v12 = v114++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_452;
          }
        }

        v27 = (v115 != 0) & ~[a2 hasError];
LABEL_452:
        v231 = 460;
        goto LABEL_501;
      case 8u:
        v93 = 0;
        v94 = 0;
        v95 = 0;
        *(a1 + 464) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v96 = [a2 position] + 1;
          if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
          {
            v98 = [a2 data];
            [v98 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v95 |= (v238 & 0x7F) << v93;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v93 += 7;
          v12 = v94++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_444;
          }
        }

        v27 = (v95 != 0) & ~[a2 hasError];
LABEL_444:
        v231 = 445;
        goto LABEL_501;
      case 9u:
        v35 = PBReaderReadData();
        v36 = 264;
        goto LABEL_339;
      case 0xAu:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        *(a1 + 464) |= 8uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v76 = [a2 position] + 1;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v75 |= (v238 & 0x7F) << v73;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v12 = v74++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_438;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v75;
        }

LABEL_438:
        v232 = 272;
        goto LABEL_510;
      case 0xBu:
        v35 = PBReaderReadString();
        v36 = 208;
        goto LABEL_339;
      case 0xCu:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        *(a1 + 464) |= 0x400000000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v128 = [a2 position] + 1;
          if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
          {
            v130 = [a2 data];
            [v130 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v127 |= (v238 & 0x7F) << v125;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v12 = v126++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_456;
          }
        }

        v27 = (v127 != 0) & ~[a2 hasError];
LABEL_456:
        v231 = 459;
        goto LABEL_501;
      case 0xDu:
        v35 = PBReaderReadString();
        v36 = 24;
        goto LABEL_339;
      case 0xEu:
        v34 = objc_alloc_init(CSDMessagingCall);
        [a1 addProtoCall:v34];
        v238 = 0;
        v239 = 0;
        if (!PBReaderPlaceMark() || (sub_10010D528(v34, a2) & 1) == 0)
        {
          goto LABEL_520;
        }

        goto LABEL_413;
      case 0xFu:
        v35 = PBReaderReadString();
        v36 = 136;
        goto LABEL_339;
      case 0x10u:
        v167 = 0;
        v168 = 0;
        v169 = 0;
        *(a1 + 464) |= 4uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v170 = [a2 position] + 1;
          if (v170 >= [a2 position] && (v171 = objc_msgSend(a2, "position") + 1, v171 <= objc_msgSend(a2, "length")))
          {
            v172 = [a2 data];
            [v172 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v169 |= (v238 & 0x7F) << v167;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v167 += 7;
          v12 = v168++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_478;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v169;
        }

LABEL_478:
        v232 = 144;
        goto LABEL_510;
      case 0x11u:
        v179 = 0;
        v180 = 0;
        v181 = 0;
        *(a1 + 464) |= 0x400uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v182 = [a2 position] + 1;
          if (v182 >= [a2 position] && (v183 = objc_msgSend(a2, "position") + 1, v183 <= objc_msgSend(a2, "length")))
          {
            v184 = [a2 data];
            [v184 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v181 |= (v238 & 0x7F) << v179;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v179 += 7;
          v12 = v180++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_486;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v181;
        }

LABEL_486:
        v232 = 336;
        goto LABEL_510;
      case 0x12u:
        v173 = 0;
        v174 = 0;
        v175 = 0;
        *(a1 + 464) |= 0x40uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v176 = [a2 position] + 1;
          if (v176 >= [a2 position] && (v177 = objc_msgSend(a2, "position") + 1, v177 <= objc_msgSend(a2, "length")))
          {
            v178 = [a2 data];
            [v178 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v175 |= (v238 & 0x7F) << v173;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v173 += 7;
          v12 = v174++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_482;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v175;
        }

LABEL_482:
        v232 = 296;
        goto LABEL_510;
      case 0x13u:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 464) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v238 & 0x7F) << v67;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v12 = v68++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_434;
          }
        }

        v27 = (v69 != 0) & ~[a2 hasError];
LABEL_434:
        v231 = 453;
        goto LABEL_501;
      case 0x14u:
        v35 = PBReaderReadData();
        v36 = 96;
        goto LABEL_339;
      case 0x15u:
        *(a1 + 464) |= 1uLL;
        v238 = 0;
        v191 = [a2 position] + 8;
        if (v191 >= [a2 position] && (v192 = objc_msgSend(a2, "position") + 8, v192 <= objc_msgSend(a2, "length")))
        {
          v237 = [a2 data];
          [v237 getBytes:&v238 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v234 = v238;
        v235 = 8;
        goto LABEL_518;
      case 0x16u:
        *(a1 + 464) |= 2uLL;
        v238 = 0;
        v79 = [a2 position] + 8;
        if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 8, v80 <= objc_msgSend(a2, "length")))
        {
          v233 = [a2 data];
          [v233 getBytes:&v238 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v234 = v238;
        v235 = 16;
LABEL_518:
        *(a1 + v235) = v234;
        goto LABEL_511;
      case 0x17u:
        v119 = 0;
        v120 = 0;
        v121 = 0;
        *(a1 + 464) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v122 = [a2 position] + 1;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 1, v123 <= objc_msgSend(a2, "length")))
          {
            v124 = [a2 data];
            [v124 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v121 |= (v238 & 0x7F) << v119;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v119 += 7;
          v12 = v120++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_454;
          }
        }

        v27 = (v121 != 0) & ~[a2 hasError];
LABEL_454:
        v231 = 450;
        goto LABEL_501;
      case 0x18u:
        v87 = 0;
        v88 = 0;
        v89 = 0;
        *(a1 + 464) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v90 = [a2 position] + 1;
          if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
          {
            v92 = [a2 data];
            [v92 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v89 |= (v238 & 0x7F) << v87;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v87 += 7;
          v12 = v88++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_442;
          }
        }

        v27 = (v89 != 0) & ~[a2 hasError];
LABEL_442:
        v231 = 446;
        goto LABEL_501;
      case 0x19u:
        v137 = 0;
        v138 = 0;
        v139 = 0;
        *(a1 + 464) |= 0x800000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v140 = [a2 position] + 1;
          if (v140 >= [a2 position] && (v141 = objc_msgSend(a2, "position") + 1, v141 <= objc_msgSend(a2, "length")))
          {
            v142 = [a2 data];
            [v142 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v139 |= (v238 & 0x7F) << v137;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v137 += 7;
          v12 = v138++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_464;
          }
        }

        v27 = (v139 != 0) & ~[a2 hasError];
LABEL_464:
        v231 = 448;
        goto LABEL_501;
      case 0x1Au:
        v35 = PBReaderReadString();
        v36 = 40;
        goto LABEL_339;
      case 0x1Bu:
        v34 = objc_alloc_init(CSDMessagingCallCapabilitiesState);
        objc_storeStrong((a1 + 232), v34);
        v238 = 0;
        v239 = 0;
        if (!PBReaderPlaceMark() || (sub_1001AA634(v34, a2) & 1) == 0)
        {
          goto LABEL_520;
        }

        goto LABEL_413;
      case 0x1Cu:
        v194 = 0;
        v195 = 0;
        v196 = 0;
        *(a1 + 464) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v197 = [a2 position] + 1;
          if (v197 >= [a2 position] && (v198 = objc_msgSend(a2, "position") + 1, v198 <= objc_msgSend(a2, "length")))
          {
            v199 = [a2 data];
            [v199 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v196 |= (v238 & 0x7F) << v194;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v194 += 7;
          v12 = v195++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_492;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v196;
        }

LABEL_492:
        v232 = 316;
        goto LABEL_510;
      case 0x1Du:
        v101 = 0;
        v102 = 0;
        v103 = 0;
        *(a1 + 464) |= 0x400000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v104 = [a2 position] + 1;
          if (v104 >= [a2 position] && (v105 = objc_msgSend(a2, "position") + 1, v105 <= objc_msgSend(a2, "length")))
          {
            v106 = [a2 data];
            [v106 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v103 |= (v238 & 0x7F) << v101;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v101 += 7;
          v12 = v102++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_446;
          }
        }

        v27 = (v103 != 0) & ~[a2 hasError];
LABEL_446:
        v231 = 447;
        goto LABEL_501;
      case 0x1Fu:
        v34 = PBReaderReadString();
        if (v34)
        {
          [a1 addOtherUniqueProxyIdentifiers:v34];
        }

        goto LABEL_414;
      case 0x20u:
        v34 = objc_alloc_init(CSDMessagingCallModel);
        objc_storeStrong((a1 + 240), v34);
        v238 = 0;
        v239 = 0;
        if (!PBReaderPlaceMark() || (sub_1000AB06C(v34, a2) & 1) == 0)
        {
          goto LABEL_520;
        }

        goto LABEL_413;
      case 0x21u:
        v34 = objc_alloc_init(CSDMessagingHandle);
        objc_storeStrong((a1 + 120), v34);
        goto LABEL_375;
      case 0x22u:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 464) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v238 & 0x7F) << v43;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_424;
          }
        }

        v27 = (v45 != 0) & ~[a2 hasError];
LABEL_424:
        v231 = 452;
        goto LABEL_501;
      case 0x23u:
        v34 = objc_alloc_init(CSDMessagingCallProvider);
        [a1 addProviders:v34];
        goto LABEL_129;
      case 0x24u:
        v34 = objc_alloc_init(CSDMessagingCallDisplayContext);
        objc_storeStrong((a1 + 280), v34);
        v238 = 0;
        v239 = 0;
        if (!PBReaderPlaceMark() || (sub_1001B44D8(v34, a2) & 1) == 0)
        {
          goto LABEL_520;
        }

        goto LABEL_413;
      case 0x25u:
        v34 = objc_alloc_init(CSDMessagingAVConferenceInviteData);
        objc_storeStrong((a1 + 160), v34);
        v238 = 0;
        v239 = 0;
        if (!PBReaderPlaceMark() || (sub_100100720(v34, a2) & 1) == 0)
        {
          goto LABEL_520;
        }

        goto LABEL_413;
      case 0x26u:
        v34 = objc_alloc_init(CSDMessagingCallProvider);
        objc_storeStrong((a1 + 304), v34);
LABEL_129:
        v238 = 0;
        v239 = 0;
        if (!PBReaderPlaceMark() || (sub_1000EB7CC(v34, a2) & 1) == 0)
        {
          goto LABEL_520;
        }

        goto LABEL_413;
      case 0x27u:
        v149 = 0;
        v150 = 0;
        v151 = 0;
        *(a1 + 464) |= 0x200000000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v152 = [a2 position] + 1;
          if (v152 >= [a2 position] && (v153 = objc_msgSend(a2, "position") + 1, v153 <= objc_msgSend(a2, "length")))
          {
            v154 = [a2 data];
            [v154 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v151 |= (v238 & 0x7F) << v149;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v149 += 7;
          v12 = v150++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_470;
          }
        }

        v27 = (v151 != 0) & ~[a2 hasError];
LABEL_470:
        v231 = 458;
        goto LABEL_501;
      case 0x28u:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 464) |= &_mh_execute_header;
        while (1)
        {
          LOBYTE(v238) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v238 & 0x7F) << v55;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v12 = v56++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_428;
          }
        }

        v27 = (v57 != 0) & ~[a2 hasError];
LABEL_428:
        v231 = 457;
        goto LABEL_501;
      case 0x29u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 464) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v238 & 0x7F) << v49;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_426;
          }
        }

        v27 = (v51 != 0) & ~[a2 hasError];
LABEL_426:
        v231 = 451;
        goto LABEL_501;
      case 0x2Au:
        *(a1 + 464) |= 0x2000uLL;
        LODWORD(v238) = 0;
        v99 = [a2 position] + 4;
        if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 4, v100 <= objc_msgSend(a2, "length")))
        {
          v236 = [a2 data];
          [v236 getBytes:&v238 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 424) = v238;
        goto LABEL_511;
      case 0x2Bu:
        v35 = PBReaderReadString();
        v36 = 200;
        goto LABEL_339;
      case 0x2Cu:
        v34 = objc_alloc_init(CSDMessagingHandle);
        [a1 addRemoteParticipantHandles:v34];
        goto LABEL_375;
      case 0x2Du:
        v35 = PBReaderReadString();
        v36 = 192;
        goto LABEL_339;
      case 0x2Eu:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 464) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v238 & 0x7F) << v61;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v12 = v62++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_432;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v63;
        }

LABEL_432:
        v232 = 320;
        goto LABEL_510;
      case 0x2Fu:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        *(a1 + 464) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v134 = [a2 position] + 1;
          if (v134 >= [a2 position] && (v135 = objc_msgSend(a2, "position") + 1, v135 <= objc_msgSend(a2, "length")))
          {
            v136 = [a2 data];
            [v136 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v133 |= (v238 & 0x7F) << v131;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v131 += 7;
          v12 = v132++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_458;
          }
        }

        v27 = (v133 != 0) & ~[a2 hasError];
LABEL_458:
        v231 = 456;
        goto LABEL_501;
      case 0x30u:
        v143 = 0;
        v144 = 0;
        v145 = 0;
        *(a1 + 464) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v146 = [a2 position] + 1;
          if (v146 >= [a2 position] && (v147 = objc_msgSend(a2, "position") + 1, v147 <= objc_msgSend(a2, "length")))
          {
            v148 = [a2 data];
            [v148 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v145 |= (v238 & 0x7F) << v143;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v12 = v144++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_468;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v145;
        }

LABEL_468:
        v232 = 368;
        goto LABEL_510;
      case 0x31u:
        v34 = objc_alloc_init(CSDMessagingRoute);
        [a1 addRoutes:v34];
        goto LABEL_362;
      case 0x32u:
        v34 = objc_alloc_init(CSDMessagingRoute);
        objc_storeStrong((a1 + 376), v34);
LABEL_362:
        v238 = 0;
        v239 = 0;
        if (!PBReaderPlaceMark() || (sub_10021EB8C(v34, a2) & 1) == 0)
        {
          goto LABEL_520;
        }

        goto LABEL_413;
      case 0x33u:
        v34 = PBReaderReadString();
        if (v34)
        {
          [a1 addEndpointIDSDestinationURIs:v34];
        }

        goto LABEL_414;
      case 0x34u:
        v35 = PBReaderReadString();
        v36 = 168;
        goto LABEL_339;
      case 0x35u:
        v218 = 0;
        v219 = 0;
        v220 = 0;
        *(a1 + 464) |= 0x20uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v221 = [a2 position] + 1;
          if (v221 >= [a2 position] && (v222 = objc_msgSend(a2, "position") + 1, v222 <= objc_msgSend(a2, "length")))
          {
            v223 = [a2 data];
            [v223 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v220 |= (v238 & 0x7F) << v218;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v218 += 7;
          v12 = v219++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_505;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v220;
        }

LABEL_505:
        v232 = 292;
        goto LABEL_510;
      case 0x36u:
        v200 = 0;
        v201 = 0;
        v202 = 0;
        *(a1 + 464) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v203 = [a2 position] + 1;
          if (v203 >= [a2 position] && (v204 = objc_msgSend(a2, "position") + 1, v204 <= objc_msgSend(a2, "length")))
          {
            v205 = [a2 data];
            [v205 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v202 |= (v238 & 0x7F) << v200;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v200 += 7;
          v12 = v201++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_496;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v202;
        }

LABEL_496:
        v232 = 288;
        goto LABEL_510;
      case 0x37u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 464) |= 0x1000000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v238 & 0x7F) << v37;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v12 = v38++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_422;
          }
        }

        v27 = (v39 != 0) & ~[a2 hasError];
LABEL_422:
        v231 = 449;
        goto LABEL_501;
      case 0x38u:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        *(a1 + 464) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v158 = [a2 position] + 1;
          if (v158 >= [a2 position] && (v159 = objc_msgSend(a2, "position") + 1, v159 <= objc_msgSend(a2, "length")))
          {
            v160 = [a2 data];
            [v160 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v157 |= (v238 & 0x7F) << v155;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v12 = v156++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_472;
          }
        }

        v27 = (v157 != 0) & ~[a2 hasError];
LABEL_472:
        v231 = 455;
        goto LABEL_501;
      case 0x39u:
        v35 = PBReaderReadString();
        v36 = 112;
        goto LABEL_339;
      case 0x3Au:
        v34 = objc_alloc_init(CSDMessagingConversationRelayMessage);
        [a1 addConversations:v34];
        v238 = 0;
        v239 = 0;
        if (!PBReaderPlaceMark() || (sub_100141A34(v34, a2) & 1) == 0)
        {
          goto LABEL_520;
        }

        goto LABEL_413;
      case 0x3Bu:
        v35 = PBReaderReadString();
        v36 = 176;
        goto LABEL_339;
      case 0x3Cu:
        v35 = PBReaderReadString();
        v36 = 56;
        goto LABEL_339;
      case 0x3Du:
        v34 = objc_alloc_init(CSDMessagingConversationMember);
        [a1 addConversationMembers:v34];
        v238 = 0;
        v239 = 0;
        if (!PBReaderPlaceMark() || (sub_1001579E4(v34, a2) & 1) == 0)
        {
          goto LABEL_520;
        }

        goto LABEL_413;
      case 0x3Eu:
        v34 = objc_alloc_init(CSDMessagingHandle);
        [a1 addHandlesToInvite:v34];
LABEL_375:
        v238 = 0;
        v239 = 0;
        if (!PBReaderPlaceMark() || (sub_1000D1450(v34, a2) & 1) == 0)
        {
          goto LABEL_520;
        }

        goto LABEL_413;
      case 0x3Fu:
        v34 = objc_alloc_init(CSDMessagingParticipantProminenceEntry);
        [a1 addProminenceEntry:v34];
        v238 = 0;
        v239 = 0;
        if (!PBReaderPlaceMark() || (sub_10007DB00(v34, a2) & 1) == 0)
        {
          goto LABEL_520;
        }

        goto LABEL_413;
      case 0x40u:
        v185 = 0;
        v186 = 0;
        v187 = 0;
        *(a1 + 464) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v188 = [a2 position] + 1;
          if (v188 >= [a2 position] && (v189 = objc_msgSend(a2, "position") + 1, v189 <= objc_msgSend(a2, "length")))
          {
            v190 = [a2 data];
            [v190 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v187 |= (v238 & 0x7F) << v185;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v185 += 7;
          v12 = v186++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_488;
          }
        }

        v27 = (v187 != 0) & ~[a2 hasError];
LABEL_488:
        v231 = 454;
        goto LABEL_501;
      case 0x41u:
        v35 = PBReaderReadString();
        v36 = 88;
        goto LABEL_339;
      case 0x42u:
        v35 = PBReaderReadData();
        v36 = 152;
        goto LABEL_339;
      case 0x43u:
        v35 = PBReaderReadString();
        v36 = 392;
        goto LABEL_339;
      case 0x44u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 464) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v238 & 0x7F) << v28;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_420;
          }
        }

        v27 = (v30 != 0) & ~[a2 hasError];
LABEL_420:
        v231 = 441;
        goto LABEL_501;
      case 0x45u:
        v206 = 0;
        v207 = 0;
        v208 = 0;
        *(a1 + 464) |= 0x1000000000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v209 = [a2 position] + 1;
          if (v209 >= [a2 position] && (v210 = objc_msgSend(a2, "position") + 1, v210 <= objc_msgSend(a2, "length")))
          {
            v211 = [a2 data];
            [v211 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v208 |= (v238 & 0x7F) << v206;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v206 += 7;
          v12 = v207++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_498;
          }
        }

        v27 = (v208 != 0) & ~[a2 hasError];
LABEL_498:
        v231 = 461;
        goto LABEL_501;
      case 0x46u:
        v212 = 0;
        v213 = 0;
        v214 = 0;
        *(a1 + 464) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v215 = [a2 position] + 1;
          if (v215 >= [a2 position] && (v216 = objc_msgSend(a2, "position") + 1, v216 <= objc_msgSend(a2, "length")))
          {
            v217 = [a2 data];
            [v217 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v214 |= (v238 & 0x7F) << v212;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v212 += 7;
          v12 = v213++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_500;
          }
        }

        v27 = (v214 != 0) & ~[a2 hasError];
LABEL_500:
        v231 = 444;
        goto LABEL_501;
      case 0x47u:
        v34 = objc_alloc_init(CSDMessagingCaptionsResult);
        objc_storeStrong((a1 + 32), v34);
        v238 = 0;
        v239 = 0;
        if (!PBReaderPlaceMark() || (sub_100116DF4(v34, a2) & 1) == 0)
        {
          goto LABEL_520;
        }

        goto LABEL_413;
      case 0x48u:
        v224 = 0;
        v225 = 0;
        v226 = 0;
        *(a1 + 464) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v227 = [a2 position] + 1;
          if (v227 >= [a2 position] && (v228 = objc_msgSend(a2, "position") + 1, v228 <= objc_msgSend(a2, "length")))
          {
            v229 = [a2 data];
            [v229 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v226 |= (v238 & 0x7F) << v224;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v224 += 7;
          v12 = v225++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_509;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v226;
        }

LABEL_509:
        v232 = 352;
LABEL_510:
        *(a1 + v232) = v20;
        goto LABEL_511;
      case 0x49u:
        v35 = PBReaderReadString();
        v36 = 184;
        goto LABEL_339;
      case 0x4Au:
        v34 = objc_alloc_init(CSDMessagingSmartHoldingSession);
        objc_storeStrong((a1 + 408), v34);
        v238 = 0;
        v239 = 0;
        if (!PBReaderPlaceMark() || (sub_10020B968(v34, a2) & 1) == 0)
        {
          goto LABEL_520;
        }

        goto LABEL_413;
      case 0x4Bu:
        v35 = PBReaderReadString();
        v36 = 72;
LABEL_339:
        v193 = *(a1 + v36);
        *(a1 + v36) = v35;

        goto LABEL_511;
      case 0x4Cu:
        v161 = 0;
        v162 = 0;
        v163 = 0;
        *(a1 + 464) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v164 = [a2 position] + 1;
          if (v164 >= [a2 position] && (v165 = objc_msgSend(a2, "position") + 1, v165 <= objc_msgSend(a2, "length")))
          {
            v166 = [a2 data];
            [v166 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v163 |= (v238 & 0x7F) << v161;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v161 += 7;
          v12 = v162++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_474;
          }
        }

        v27 = (v163 != 0) & ~[a2 hasError];
LABEL_474:
        v231 = 440;
        goto LABEL_501;
      case 0x4Du:
        v34 = objc_alloc_init(CSDMessagingReceptionistSession);
        objc_storeStrong((a1 + 344), v34);
        v238 = 0;
        v239 = 0;
        if (!PBReaderPlaceMark() || (sub_1000D3FD8(v34, a2) & 1) == 0)
        {
          goto LABEL_520;
        }

        goto LABEL_413;
      case 0x4Eu:
        v34 = objc_alloc_init(CSDMessagingSmartHoldingRequest);
        objc_storeStrong((a1 + 400), v34);
        v238 = 0;
        v239 = 0;
        if (PBReaderPlaceMark() && (sub_10011EF78(v34, a2) & 1) != 0)
        {
LABEL_413:
          PBReaderRecallMark();
LABEL_414:

LABEL_511:
          v4 = a2;
          continue;
        }

LABEL_520:

        return 0;
      case 0x4Fu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 464) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v238 & 0x7F) << v21;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_418;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_418:
        v231 = 443;
        goto LABEL_501;
      case 0x50u:
        v81 = 0;
        v82 = 0;
        v83 = 0;
        *(a1 + 464) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v238) = 0;
          v84 = [a2 position] + 1;
          if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
          {
            v86 = [a2 data];
            [v86 getBytes:&v238 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v83 |= (v238 & 0x7F) << v81;
          if ((v238 & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          v12 = v82++ >= 9;
          if (v12)
          {
            LOBYTE(v27) = 0;
            goto LABEL_440;
          }
        }

        v27 = (v83 != 0) & ~[a2 hasError];
LABEL_440:
        v231 = 442;
LABEL_501:
        *(a1 + v231) = v27;
        goto LABEL_511;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_511;
    }
  }
}

uint64_t sub_1000EB7CC(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  v5 = &selRef_audioDeviceControllerMutedTalkerDidEnd_;
  v6 = &selRef_audioDeviceControllerMutedTalkerDidEnd_;
  v7 = &selRef_audioDeviceControllerMutedTalkerDidEnd_;
  v8 = &selRef_audioDeviceControllerMutedTalkerDidEnd_;
  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      LOBYTE(v85) = 0;
      v12 = [a2 position] + 1;
      if (v12 >= [a2 position] && (v13 = objc_msgSend(a2, "position") + 1, v13 <= objc_msgSend(a2, "length")))
      {
        v14 = [a2 data];
        [v14 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v11 |= (v85 & 0x7F) << v9;
      if ((v85 & 0x80) == 0)
      {
        break;
      }

      v9 += 7;
      v15 = v10++ >= 9;
      if (v15)
      {
        v16 = 0;
        goto LABEL_16;
      }
    }

    v16 = [a2 hasError] ? 0 : v11;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v16 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v16 >> 3))
    {
      case 1u:
        v17 = PBReaderReadString();
        v18 = *(v5 + 618);
        goto LABEL_108;
      case 2u:
        v17 = PBReaderReadString();
        v18 = *(v6 + 619);
        goto LABEL_108;
      case 3u:
        v17 = PBReaderReadString();
        v18 = *(v7 + 620);
        goto LABEL_108;
      case 4u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        a1[*(v8 + 621)] |= 1u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v85 & 0x7F) << v42;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v15 = v43++ >= 9;
          if (v15)
          {
            v33 = 0;
            goto LABEL_127;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v44;
        }

LABEL_127:
        v74 = 88;
        goto LABEL_128;
      case 5u:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        a1[*(v8 + 621)] |= 2u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v85 & 0x7F) << v27;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v15 = v28++ >= 9;
          if (v15)
          {
            v33 = 0;
            goto LABEL_123;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v29;
        }

LABEL_123:
        v74 = 92;
LABEL_128:
        *&a1[v74] = v33;
        goto LABEL_138;
      case 6u:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        a1[*(v8 + 621)] |= 8u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v85 & 0x7F) << v54;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v15 = v55++ >= 9;
          if (v15)
          {
            LOBYTE(v26) = 0;
            goto LABEL_132;
          }
        }

        v26 = (v56 != 0) & ~[a2 hasError];
LABEL_132:
        v73 = 121;
        goto LABEL_137;
      case 7u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        a1[*(v8 + 621)] |= 4u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v85 & 0x7F) << v60;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v15 = v61++ >= 9;
          if (v15)
          {
            LOBYTE(v26) = 0;
            goto LABEL_134;
          }
        }

        v26 = (v62 != 0) & ~[a2 hasError];
LABEL_134:
        v73 = 120;
        goto LABEL_137;
      case 8u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        a1[*(v8 + 621)] |= 0x10u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v85 & 0x7F) << v48;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v15 = v49++ >= 9;
          if (v15)
          {
            LOBYTE(v26) = 0;
            goto LABEL_130;
          }
        }

        v26 = (v50 != 0) & ~[a2 hasError];
LABEL_130:
        v73 = 122;
        goto LABEL_137;
      case 9u:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        a1[*(v8 + 621)] |= 0x40u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v85 & 0x7F) << v67;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v15 = v68++ >= 9;
          if (v15)
          {
            LOBYTE(v26) = 0;
            goto LABEL_136;
          }
        }

        v26 = (v69 != 0) & ~[a2 hasError];
LABEL_136:
        v73 = 124;
        goto LABEL_137;
      case 0xAu:
        v17 = PBReaderReadString();
        v18 = 112;
        goto LABEL_108;
      case 0xBu:
        v17 = PBReaderReadString();
        v18 = 96;
        goto LABEL_108;
      case 0xCu:
        v19 = PBReaderReadString();
        if (v19)
        {
          [a1 addHandoffIdentifier:v19];
        }

        goto LABEL_95;
      case 0xDu:
        if ((v16 & 7) == 2)
        {
          v85 = 0;
          v86 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v35 = [a2 position];
            if (v35 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v36 = 0;
            v37 = 0;
            v38 = 0;
            while (1)
            {
              v87 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v87 & 0x7F) << v36;
              if ((v87 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v15 = v37++ >= 9;
              if (v15)
              {
                goto LABEL_57;
              }
            }

            [a2 hasError];
LABEL_57:
            PBRepeatedUInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v76 = v7;
          v77 = v6;
          v78 = v5;
          v79 = 0;
          v80 = 0;
          v81 = 0;
          while (1)
          {
            LOBYTE(v85) = 0;
            v82 = [a2 position] + 1;
            if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
            {
              v84 = [a2 data];
              [v84 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v81 |= (v85 & 0x7F) << v79;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v79 += 7;
            v15 = v80++ >= 9;
            if (v15)
            {
              goto LABEL_151;
            }
          }

          [a2 hasError];
LABEL_151:
          PBRepeatedUInt32Add();
          v5 = v78;
          v6 = v77;
          v7 = v76;
          v8 = &selRef_audioDeviceControllerMutedTalkerDidEnd_;
        }

        goto LABEL_138;
      case 0xEu:
        v19 = objc_alloc_init(CSDMessagingLabeledHandle);
        [a1 addEmergencyLabeledHandles:v19];
        v85 = 0;
        v86 = 0;
        if (PBReaderPlaceMark() && sub_1001E76CC(v19, a2))
        {
          goto LABEL_94;
        }

        goto LABEL_154;
      case 0xFu:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        a1[*(v8 + 621)] |= 0x20u;
        while (1)
        {
          LOBYTE(v85) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v85 & 0x7F) << v20;
          if ((v85 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v15 = v21++ >= 9;
          if (v15)
          {
            LOBYTE(v26) = 0;
            goto LABEL_119;
          }
        }

        v26 = (v22 != 0) & ~[a2 hasError];
LABEL_119:
        v73 = 123;
LABEL_137:
        a1[v73] = v26;
        goto LABEL_138;
      case 0x10u:
        v19 = objc_alloc_init(CSDMessagingSenderIdentity);
        [a1 addPrioritizedSenderIdentities:v19];
        v85 = 0;
        v86 = 0;
        if (!PBReaderPlaceMark() || !sub_100235AE4(v19, a2))
        {
          goto LABEL_154;
        }

        goto LABEL_94;
      case 0x11u:
        v19 = objc_alloc_init(CSDMessagingHandle);
        [a1 addEmergencyHandles:v19];
        v85 = 0;
        v86 = 0;
        if (PBReaderPlaceMark() && sub_1000D1450(v19, a2))
        {
LABEL_94:
          PBReaderRecallMark();
LABEL_95:

LABEL_138:
          v75 = [a2 position];
          if (v75 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_154:

        return 0;
      case 0x12u:
        v17 = PBReaderReadString();
        v18 = 32;
LABEL_108:
        v66 = *&a1[v18];
        *&a1[v18] = v17;

        goto LABEL_138;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_138;
    }
  }
}