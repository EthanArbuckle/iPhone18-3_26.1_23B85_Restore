void sub_1001C19B4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C1A78;
    block[3] = &unk_100619D38;
    v8 = v3;
    dispatch_async(v6, block);
  }
}

void sub_1001C1A78(uint64_t a1)
{
  v2 = +[CSDReportingController sharedInstance];
  [v2 reportTimedOutPickingRoute:*(a1 + 32)];
}

void sub_1001C1BA8(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001C1C58;
  v4[3] = &unk_10061DAC0;
  v5 = *(a1 + 40);
  v3 = NSStringFromSelector("handlePairedHostVolumeChanged:");
  [v2 performBlockOnClients:v4 coalescedByIdentifier:v3];
}

void sub_1001C1D34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 capabilities];
    *buf = 138412546;
    v32 = v3;
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated from client: %@ capabilities: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v3 capabilities];
  v8 = [v7 wantsCallDisconnectionOnInvalidation];

  if (v8)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v3 processName];
      *buf = 138412290;
      v32 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Disconnecting all calls because wantsCallDisconnectionOnInvalidation=YES for %@", buf, 0xCu);
    }

    v11 = [WeakRetained callCenter];
    [v11 disconnectAllCalls];
  }

  v12 = [v3 capabilities];
  v13 = [v12 wantsCallStopStreamingOnInvalidation];

  if (v13)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = WeakRetained;
    v14 = [WeakRetained callContainer];
    v15 = [v14 currentVideoCalls];

    v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          v21 = [v20 provider];
          if ([v21 isSystemProvider])
          {
            v22 = [v20 status];

            if (v22 == 1)
            {
              v23 = sub_100004778();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = [v3 processName];
                *buf = 138412546;
                v32 = v20;
                v33 = 2112;
                v34 = v24;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Setting isSendingVideo:NO isSharingScreen:NO on call: %@ because wantsCallStopStreamingOnInvalidation=YES for %@", buf, 0x16u);
              }

              [v20 setIsSendingVideo:0];
              [v20 setSharingScreen:0];
            }
          }

          else
          {
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
    }

    WeakRetained = v25;
  }
}

void sub_1001C2198(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001C22A0;
  v3[3] = &unk_10061A740;
  objc_copyWeak(&v4, &location);
  [AVAudioClient registerSecureMicrophoneEngagedHandler:v3];
  v1 = sub_100004778();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Registered for registerSecureMicrophoneEngagedHandler", v2, 2u);
  }

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void sub_1001C2280(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1001C22A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C233C;
    block[3] = &unk_100619D38;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void sub_1001C233C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received AVAudioClient secure microphone interruption", v5, 2u);
  }

  v3 = [*(a1 + 32) shouldHandleSecureMicrophoneEvents];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    [*(a1 + 32) performDisconnectAllCallsWithReason:39];
  }
}

void sub_1001C2A38(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v14 = 138412290;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received LocaleDidChange notification: %@", &v14, 0xCu);
  }

  if (TUTranscriptionAvailabilityForUseCase())
  {
    v4 = [*(a1 + 40) answeringMachineController];

    if (!v4)
    {
      v5 = [*(a1 + 40) featureFlags];
      v6 = TUCallScreeningActivatable();

      if (v6)
      {
        v7 = sub_100004778();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "creating answeringMachineController", &v14, 2u);
        }

        v8 = [CSDAnsweringMachineController alloc];
        v9 = *(a1 + 40);
        v10 = [v9 speechAssetManager];
        v11 = [(CSDAnsweringMachineController *)v8 initWith:v9 speechAssetManager:v10];
        [*(a1 + 40) setAnsweringMachineController:v11];

        v12 = +[_TtC13callservicesd19CSDAnalyticsManager sharedInstance];
        [v12 setAnalyticsManagerProvider:*(a1 + 40)];
      }
    }
  }

  else
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "setting answeringMachineController to nil", &v14, 2u);
    }

    [*(a1 + 40) setAnsweringMachineController:0];
  }
}

void sub_1001C2CF4(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received AudioSession Interruption notification: %@", &v11, 0xCu);
  }

  v4 = [*(a1 + 40) shouldHandleSecureMicrophoneEvents];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [*(a1 + 32) userInfo];
    v7 = [v6 valueForKey:AVAudioSessionInterruptionReasonKey];
    v8 = [NSNumber numberWithInt:2];
    v9 = [v7 isEqualToNumber:v8];

    if (v9)
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Determined that audio interruption was caused due to built in mic muted, ending all calls", &v11, 2u);
      }

      [*(a1 + 40) performDisconnectAllCallsWithReason:40];
    }
  }
}

BOOL sub_1001C2FC8(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 status]== 1 && [(TUCall *)v2 isHostedOnCurrentDevice])
  {
    v3 = [(TUCall *)v2 isEndpointOnCurrentDevice];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1001C30D4(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) description];
    v29 = 138412290;
    v30 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received CarPlay hardware control: %@", &v29, 0xCu);
  }

  if ([*(a1 + 40) shouldHandleCarPlayControlEvents])
  {
    v4 = [*(a1 + 32) userInfo];
    v5 = [v4 valueForKey:kTUCarPlayHardwareControlButtonKey];

    v6 = [*(a1 + 40) callContainer];
    v7 = [v6 callPassingTest:&stru_10061DB00];

    v8 = [*(a1 + 40) callContainer];
    v9 = [v8 callPassingTest:&stru_10061DB20];

    v10 = [*(a1 + 40) callContainer];
    v11 = [v10 callPassingTest:&stru_10061DB40];

    v12 = [*(a1 + 40) callContainer];
    v13 = [v12 frontmostBargeCall];

    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 138413058;
      v30 = v7;
      v31 = 2112;
      v32 = v9;
      v33 = 2112;
      v34 = v11;
      v35 = 2112;
      v36 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating calls in response to CarPlay hardware control: incomingCall %@, activeCall %@, heldCall %@ bargeCall %@", &v29, 0x2Au);
    }

    if (v7)
    {
      if (v5 == kTUCarPlayHardwareControlButtonWhiteTelephoneLongPress)
      {
        v15 = [*(a1 + 40) callCenter];
        [v15 disconnectCall:v7];
      }

      else
      {
        if (v5 == kTUCarPlayHardwareControlButtonGreenTelephone || v5 == kTUCarPlayHardwareControlButtonWhiteTelephone)
        {
          if (!v9)
          {
            if ([v7 status] == 4)
            {
              v23 = *(a1 + 40);
              if ([v7 isVideo])
              {
                v24 = 4;
              }

              else
              {
                v24 = 0;
              }

              [v23 _answerIncomingCall:v7 withBehavior:v24];
            }

            else if ([v7 isConversation])
            {
              [*(a1 + 40) _answerIncomingCallAsConversation:v7];
            }

            goto LABEL_47;
          }

          if ([v7 isConversation])
          {
            v20 = [v7 status];
            v21 = *(a1 + 40);
            v22 = v7;
            if (v20 == 3)
            {
              [v21 _answerIncomingCallAsConversation:v7];
              goto LABEL_44;
            }

            v25 = 0;
          }

          else
          {
            v21 = *(a1 + 40);
            v22 = v7;
            if (v11)
            {
              v25 = 1;
            }

            else
            {
              v25 = 2;
            }
          }

          [v21 _answerIncomingCall:v22 withBehavior:v25];
LABEL_44:
          if (v9)
          {
            if (v5 == kTUCarPlayHardwareControlButtonMute)
            {
              [v9 setUplinkMuted:{objc_msgSend(v9, "isUplinkMuted") ^ 1}];
            }
          }

          goto LABEL_47;
        }

        if (v5 != kTUCarPlayHardwareControlButtonRedTelephone)
        {
          goto LABEL_44;
        }

        v15 = +[TUCallCenter sharedInstance];
        [v15 disconnectCall:v7 withReason:2];
      }

LABEL_43:

      goto LABEL_44;
    }

    if (v5 != kTUCarPlayHardwareControlButtonWhiteTelephoneLongPress && v5 != kTUCarPlayHardwareControlButtonRedTelephone)
    {
      if (v5 != kTUCarPlayHardwareControlButtonWhiteTelephone)
      {
        if (v5 != kTUCarPlayHardwareControlButtonGreenTelephone)
        {
          goto LABEL_44;
        }

        v16 = [v9 model];
        if ([v16 supportsHolding])
        {
          v17 = [*(a1 + 40) callCenter];
          v18 = [v17 currentCallCount];

          if (v18 >= 2)
          {
            v19 = +[TUCallCenter sharedInstance];
LABEL_34:
            v15 = v19;
            [v19 swapCalls];
            goto LABEL_43;
          }
        }

        else
        {
        }

        if (v11)
        {
          v15 = [*(a1 + 40) callCenter];
          [v15 unholdCall:v11];
        }

        else
        {
          if (!v9)
          {
LABEL_47:

            return;
          }

          v15 = [*(a1 + 40) callCenter];
          [v15 holdCall:v9];
        }

        goto LABEL_43;
      }

      v26 = [v9 model];
      if ([v26 supportsHolding])
      {
        v27 = [*(a1 + 40) callCenter];
        v28 = [v27 currentCallCount];

        if (v28 >= 2)
        {
          v19 = [*(a1 + 40) callCenter];
          goto LABEL_34;
        }
      }

      else
      {
      }

      if (v13)
      {
        if ([v13 status] == 2)
        {
          [*(a1 + 40) startTransmissionForBargeCall:v13 sourceIsHandsfreeAccessory:1];
        }

        else if ([v13 status] == 1)
        {
          [*(a1 + 40) stopTransmissionForBargeCall:v13 sourceIsHandsfreeAccessory:0];
        }

        goto LABEL_44;
      }
    }

    v15 = [*(a1 + 40) callCenter];
    [v15 disconnectCurrentCall];
    goto LABEL_43;
  }
}

BOOL sub_1001C3600(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 status]== 4)
  {
    v3 = 1;
  }

  else if ([(TUCall *)v2 status]== 3)
  {
    v3 = [(TUCall *)v2 isConversation];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1001C3B44(uint64_t a1, void *a2, void *a3)
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
      sub_1004794A0(a1);
    }
  }
}

void sub_1001C3EC0(uint64_t a1, void *a2, void *a3)
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
      sub_1004794A0(a1);
    }
  }
}

void sub_1001C4088(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C4188;
  block[3] = &unk_10061A428;
  v13 = v5;
  v14 = v6;
  v15 = a1[5];
  v8 = a1[6];
  v9 = a1[4];
  v16 = v8;
  v17 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

void sub_1001C4188(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TUOpenURLWithCompletion result: %@, error: %@", &v9, 0x16u);
  }

  if (*(a1 + 40))
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100479508(a1);
    }

    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 56);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Disconnecting call because there wont be a UI to host the call: %@", &v9, 0xCu);
    }

    v8 = [*(a1 + 64) callCenter];
    [v8 disconnectCall:*(a1 + 56)];
  }
}

void sub_1001C46A4(id *a1)
{
  v2 = [a1[4] clientManager];
  v3 = [v2 clients];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [a1[4] clientManager];
  v6 = [v5 clients];

  v7 = [v6 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [v11 processName];
        if (v12)
        {
          [v11 processName];
        }

        else
        {
          [v11 processBundleIdentifier];
        }
        v13 = ;

        [v4 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v8);
  }

  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = a1[5];
    v16 = [a1[4] callContainer];
    v17 = [v16 _allCalls];
    *buf = 138412802;
    v34 = v4;
    v35 = 2112;
    v36 = v15;
    v37 = 2112;
    v38 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating clients: %@ with call: %@ and with calls: %@", buf, 0x20u);
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1001C49C4;
  v26[3] = &unk_10061DB90;
  *&v18 = a1[6];
  *(&v18 + 1) = a1[4];
  v25 = v18;
  v19 = a1[7];
  v20 = a1[5];
  *&v21 = v19;
  *(&v21 + 1) = v20;
  v27 = v25;
  v28 = v21;
  v22 = objc_retainBlock(v26);
  v23 = [a1[4] clientManager];
  [v23 filterClientsUsingPredicate:&stru_10061DBD0 andPerformBlock:v22];

  v24 = [a1[4] clientManager];
  [v24 filterClientsUsingPredicate:&stru_10061DBF0 andPerformBlock:v22];
}

void sub_1001C49C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (a1 + 32);
  v8 = [*(a1 + 32) originatingUIType];
  v9 = v8 > 0xD || ((1 << v8) & 0x3440) == 0;
  if (!v9 && [*v7 isEmergency] && objc_msgSend(*v7, "supportsEmergencyFallback") && (objc_msgSend(*v7, "isEndpointOnCurrentDevice") & 1) == 0)
  {
    v33 = [v5 processBundleIdentifier];
    if ([v33 isEqualToString:TUBundleIdentifierInCallServiceApplication])
    {
      v10 = [v5 isProcessSuspended];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  if ([*v7 isScreening])
  {
    v11 = [v5 processBundleIdentifier];
    v12 = [v11 isEqualToString:TUBundleIdentifierInCallServiceApplication];
    if (v12)
    {
      v12 = [v5 isProcessSuspended];
    }

    v13 = v12 | v10;

    if (!v13)
    {
      goto LABEL_13;
    }

LABEL_15:
    [*(a1 + 40) _launchInCallApplicationInTheBackground];
    v14 = 0;
    goto LABEL_16;
  }

  if (v10)
  {
    goto LABEL_15;
  }

LABEL_13:
  v14 = 1;
LABEL_16:
  v15 = [v5 capabilities];
  if (![v15 wantsCallNotificationsDisabledWhileSuspended] || !objc_msgSend(v5, "isProcessSuspended"))
  {

LABEL_22:
    [CSDSignposts trace:3];
    v18 = [v5 isRemote];
    v19 = *(a1 + 40);
    if (v18)
    {
      v16 = [v19 eligibleCallsByFilteringCalls:*(a1 + 48) forClient:v5];
      v7 = (a1 + 56);
      if (([*(a1 + 40) isCallEligible:*(a1 + 56) forClient:v5] & 1) == 0)
      {
        v17 = 0;
LABEL_31:
        if ([v16 count])
        {
          v24 = [NSMutableArray arrayWithCapacity:[v16 count]];
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v16 = v16;
          v25 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v35;
            do
            {
              for (i = 0; i != v26; i = i + 1)
              {
                if (*v35 != v27)
                {
                  objc_enumerationMutation(v16);
                }

                v29 = [*(*(&v34 + 1) + 8 * i) callUUID];
                [v24 addObject:v29];
              }

              v26 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
            }

            while (v26);
          }

          v30 = sub_100004778();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [v5 processName];
            v32 = [v5 processBundleIdentifier];
            *buf = 138412802;
            v40 = v31;
            v41 = 2112;
            v42 = v32;
            v43 = 2112;
            v44 = v24;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Updating client %@ (%@) with calls: %@", buf, 0x20u);
          }

          [v6 handleCurrentCallsChanged:v16 callDisconnected:0];
        }

        goto LABEL_42;
      }
    }

    else
    {
      v20 = [v19 callContainer];
      v16 = [v20 _allCalls];
    }

    v21 = *v7;
    v17 = v21;
    if (v21 && [v21 status] == 6)
    {
      v22 = sub_100004778();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v5 processName];
        *buf = 138412802;
        v40 = v23;
        v41 = 2112;
        v42 = v17;
        v43 = 2112;
        v44 = v16;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Updating client %@ with disconnected call: %@ calls: %@", buf, 0x20u);
      }

      [v6 handleCurrentCallsChanged:v16 callDisconnected:v17];
      goto LABEL_42;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_22;
  }

  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v5 processName];
    *buf = 138412290;
    v40 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Ignoring call update for client %@ because it's suspended", buf, 0xCu);
LABEL_42:
  }
}

BOOL sub_1001C4E6C(id a1, CSDClient *a2)
{
  v2 = [(CSDClient *)a2 processBundleIdentifier];
  v3 = [v2 isEqualToString:TUBundleIdentifierTelephonyUtilitiesFramework];

  return v3 ^ 1;
}

BOOL sub_1001C4EB4(id a1, CSDClient *a2)
{
  v2 = [(CSDClient *)a2 processBundleIdentifier];
  v3 = [v2 isEqualToString:TUBundleIdentifierTelephonyUtilitiesFramework];

  return v3;
}

void sub_1001C54EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C5604(uint64_t a1)
{
  v2 = NSStringFromSelector("handleFrequencyChangedTo:inDirection:forCallsWithUniqueProxyIdentifiers:");
  v3 = [NSString stringWithFormat:@"%@-%d", v2, *(a1 + 56)];

  v4 = [*(a1 + 32) clientManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001C5758;
  v6[3] = &unk_10061DC38;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  [v4 filterClientsUsingPredicate:&stru_10061DC10 andPerformBlock:v6 coalescedByIdentifier:v3];
}

BOOL sub_1001C571C(id a1, CSDClient *a2)
{
  v2 = [(CSDClient *)a2 capabilities];
  v3 = [v2 wantsFrequencyChangeNotifications];

  return v3;
}

void sub_1001C5758(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) eligibleCallsByFilteringCalls:*(a1 + 40) forClient:a2];
  v6 = [v5 arrayByApplyingSelector:"uniqueProxyIdentifier"];
  if ([v6 count])
  {
    [v7 handleFrequencyChangedTo:*(a1 + 48) inDirection:*(a1 + 56) forCallsWithUniqueProxyIdentifiers:v6];
  }
}

void sub_1001C58C0(uint64_t a1)
{
  v2 = NSStringFromSelector("handleMeterLevelChangedTo:inDirection:forCallsWithUniqueProxyIdentifiers:");
  v3 = [NSString stringWithFormat:@"%@-%d", v2, *(a1 + 48)];

  v4 = [*(a1 + 32) clientManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001C59D4;
  v6[3] = &unk_10061DC80;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v8 = *(a1 + 52);
  v9 = *(a1 + 48);
  [v4 filterClientsUsingPredicate:&stru_10061DC58 andPerformBlock:v6 coalescedByIdentifier:v3];
}

void sub_1001C59D4(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) eligibleCallsByFilteringCalls:*(a1 + 40) forClient:a2];
  v6 = [v5 arrayByApplyingSelector:"uniqueProxyIdentifier"];
  if ([v6 count])
  {
    LODWORD(v7) = *(a1 + 48);
    [v8 handleMeterLevelChangedTo:*(a1 + 52) inDirection:v6 forCallsWithUniqueProxyIdentifiers:v7];
  }
}

void sub_1001C5B24(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001C5BE0;
  v4[3] = &unk_10061DA78;
  v5 = *(a1 + 40);
  v3 = NSStringFromSelector("handleNewCaptionsResult:");
  [v2 performBlockOnClients:v4 coalescedByIdentifier:v3];
}

void sub_1001C5C78(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  v1 = NSStringFromSelector("resetCallProvisionalStates");
  [v2 performBlockOnClients:&stru_10061DCC0 coalescedByIdentifier:v1];
}

void sub_1001C5E08(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 uniqueProxyIdentifier];
  }

  else
  {
    v3 = 0;
  }

  v4 = [*(a1 + 40) clientManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C5F18;
  v8[3] = &unk_10061DCE8;
  v7 = *(a1 + 32);
  v5 = v7.i64[0];
  v9 = vextq_s8(v7, v7, 8uLL);
  v10 = *(a1 + 48);
  v11 = v3;
  v12 = *(a1 + 56);
  v6 = v3;
  [v4 performBlockOnClients:v8];
}

void sub_1001C5F18(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) isCallEligible:*(a1 + 40) forClient:a2])
  {
    [v5 handleNotificationName:*(a1 + 48) forCallWithUniqueProxyIdentifier:*(a1 + 56) userInfo:*(a1 + 64)];
  }
}

void sub_1001C60E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 uniqueProxyIdentifier];
  }

  else
  {
    v3 = 0;
  }

  v4 = [*(a1 + 40) clientManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C61E4;
  v8[3] = &unk_10061DB90;
  v7 = *(a1 + 32);
  v5 = v7.i64[0];
  v9 = vextq_s8(v7, v7, 8uLL);
  v10 = *(a1 + 48);
  v11 = v3;
  v6 = v3;
  [v4 performBlockOnClients:v8];
}

void sub_1001C61E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) isCallEligible:*(a1 + 40) forClient:a2])
  {
    [v5 handleReceivedCallDTMFUpdate:*(a1 + 48) forCallWithUniqueProxyIdentifier:*(a1 + 56)];
  }
}

id sub_1001C84A8(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "notification: %@", &v5, 0xCu);
  }

  return [*(a1 + 40) _requestCallStateFromHost];
}

void sub_1001C860C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "notification: %@", &v11, 0xCu);
  }

  v4 = [*(a1 + 40) relayMessagingController];
  v5 = [*(a1 + 40) callProviderManager];
  [v4 sendUpdateCallContextMessageToClientForCallProviderManager:v5];

  v6 = [*(a1 + 40) relayMessagingController];
  v7 = [*(a1 + 40) callCenter];
  v8 = [v7 conversationManager];
  v9 = [v8 activeConversations];
  v10 = [v9 allObjects];
  [v6 sendUpdateConversationsMessageToClient:v10];
}

void sub_1001C8810(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v24 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "notification: %@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) callContainer];
  v5 = [v4 callsPassingTest:&stru_10061DD08];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = +[CSDRouteManager sharedInstance];
        v13 = [v12 isEligibleRouteAvailableForCall:v11];

        v14 = [v11 expectedRelayClientDestination];

        if (v14 && (v13 & 1) == 0)
        {
          v15 = sub_100004778();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v11 expectedRelayClientDestination];
            *buf = 138412546;
            v24 = v16;
            v25 = 2112;
            v26 = v11;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Pushing all calls to device with destination %@ because an eligible audio route is not available and we found a call hosted here with its expected endpoint on another device: %@", buf, 0x16u);
          }

          v17 = *(a1 + 40);
          v18 = [v11 expectedRelayClientDestination];
          [v17 performPushHostedCallsToDestination:v18];

          goto LABEL_16;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

void sub_1001CA6E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = [TUHandle normalizedGenericHandleForValue:a2];
  v3 = [v4 normalizedValue];
  [v2 addObject:v3];
}

void sub_1001CA750(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status] == 2)
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 locale];
      v6 = [v5 localeIdentifier];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting download and generate disclosure for: %@", &v9, 0xCu);
    }

    v7 = [*(a1 + 32) callTranslationController];
    v8 = [v3 locale];
    [v7 downloadAndGenerateRemoteLocaleDisclosureWithLocale:v8];
  }
}

void sub_1001CAB1C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "completed perform translation request with error: %@", &v4, 0xCu);
  }
}

BOOL sub_1001CB790(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 status]== 1)
  {
    v3 = [(TUCall *)v2 isOnHold]^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

BOOL sub_1001CE854(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 isHostedOnCurrentDevice])
  {
    v3 = [(TUCall *)v2 hasRelaySupport:2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL sub_1001CEA58(id a1, TUCall *a2)
{
  v2 = a2;
  if (([(TUCall *)v2 isHostedOnCurrentDevice]& 1) != 0 || ([(TUCall *)v2 isEndpointOnCurrentDevice]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(TUCall *)v2 hasRelaySupport:2];
  }

  return v3;
}

void sub_1001CEE94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "TUOpenURLWithCompletion url: %@, result: %@, error: %@", &v10, 0x20u);
  }

  if (v6)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1004794A0(a1);
    }
  }
}

void sub_1001CF0EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 callUpdate];
  v6 = [v4 provider];
  v7 = [v4 callUUID];

  v9 = [v5 tuCallUpdateWithProvider:v6 withCallUUID:v7];

  v8 = [*(a1 + 32) answeringMachineController];
  [v9 setAnsweringMachineAvailable:{objc_msgSend(v8, "isAvailable")}];

  [*(a1 + 40) addObject:v9];
}

void sub_1001CF824(uint64_t a1)
{
  v2 = [*(a1 + 32) callContainer];
  v4 = [v2 screeningCall];

  if (v4 && ![v4 isHostedOnCurrentDevice])
  {
    v3 = [*(a1 + 32) relayMessagingController];
    [v3 sendStartReceptionistReplyForCall:v4];
  }

  else
  {
    v3 = [*(a1 + 32) answeringMachineController];
    [v3 startReceptionistReply];
  }
}

void sub_1001CFA3C(uint64_t a1)
{
  v2 = [*(a1 + 32) callContainer];
  v4 = [v2 screeningCall];

  if (v4 && ![v4 isHostedOnCurrentDevice])
  {
    v3 = [*(a1 + 32) relayMessagingController];
    [v3 sendSetCustomReply:*(a1 + 40) forCall:v4];
  }

  else
  {
    v3 = [*(a1 + 32) answeringMachineController];
    [v3 setCustomReply:*(a1 + 40)];
  }
}

void sub_1001CFCC4(uint64_t a1)
{
  v2 = [*(a1 + 32) callContainer];
  v3 = [*(a1 + 40) callUUID];
  v4 = [v3 UUIDString];
  v5 = [v2 callWithUniqueProxyIdentifier:v4];

  if (v5)
  {
    v6 = [*(a1 + 32) callRecordingControllerFacade];
    [v6 performRequest:*(a1 + 40) forCall:v5 completion:*(a1 + 48)];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100479B00((a1 + 40));
    }

    v8 = *(a1 + 48);
    v9 = [NSError alloc];
    v6 = [v9 initWithDomain:TUStartRecordingErrorDomain code:1 userInfo:0];
    (*(v8 + 16))(v8, v6);
  }
}

void sub_1001CFFCC(uint64_t a1)
{
  v2 = [*(a1 + 32) callContainer];
  v3 = (a1 + 40);
  v4 = [*(a1 + 40) callUUID];
  v5 = [v4 UUIDString];
  v6 = [v2 callWithUniqueProxyIdentifier:v5];

  if (v6)
  {
    v7 = [v6 provider];
    if ([v7 isTelephonyProvider])
    {

LABEL_8:
      v14 = [*(a1 + 32) callTranslationController];
      [v14 performRequest:*(a1 + 40) forCall:v6 completion:*(a1 + 48)];

      goto LABEL_9;
    }

    v12 = [v6 provider];
    v13 = [v12 isFaceTimeProvider];

    if (v13)
    {
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = *v3;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v17 = +[NSLocale currentLocale];
      v18 = +[NSLocale currentLocale];
      if (isKindOfClass)
      {
        v19 = *v3;
        v20 = [v19 localLocale];

        v21 = [v19 remoteLocale];

        v18 = v21;
        v17 = v20;
      }

      v22 = [CXSetTranslatingCallAction alloc];
      v23 = [v6 uniqueProxyIdentifierUUID];
      v24 = [v17 localeIdentifier];
      v25 = [v18 localeIdentifier];
      v26 = [v22 initWithCallUUID:v23 isTranslating:isKindOfClass & 1 isSystemInitiated:1 localLanguage:v24 remoteLanguage:v25];

      v27 = v6;
      v28 = [v27 providerCallDelegate];
      [v28 performCallAction:v26 forCall:v27];
    }
  }

  else
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100479B68((a1 + 40));
    }

    v9 = *(a1 + 48);
    v10 = [NSError alloc];
    v11 = [v10 initWithDomain:TUTranslationErrorDomain code:1 userInfo:0];
    (*(v9 + 16))(v9, v11);
  }

LABEL_9:
}

uint64_t sub_1001D0278(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100479BD0(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1001D04B0(uint64_t a1)
{
  v2 = [*(a1 + 32) callContainer];
  v3 = [*(a1 + 40) callUUID];
  v4 = [v3 UUIDString];
  v5 = [v2 callWithUniqueProxyIdentifier:v4];

  if (v5)
  {
    v6 = [*(a1 + 32) smartHoldingController];
    v7 = *(a1 + 40);
    v16 = 0;
    [v6 _performRequest:v7 call:v5 error:&v16];
    v8 = v16;

    v9 = [*(a1 + 32) relayMessagingController];
    [v9 sendSmartHoldingSessionChangedForCall:v5];

    if (v8)
    {
      v10 = [v5 smartHoldingError];

      if (!v10)
      {
        [v5 setSmartHoldingError:v8];
        v11 = sub_100004778();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100479C40();
        }
      }
    }

    v12 = *(*(a1 + 48) + 16);
  }

  else
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100479CA8((a1 + 40));
    }

    v14 = *(a1 + 48);
    v15 = [NSError alloc];
    v8 = [v15 initWithDomain:TUSmartHoldingErrorDomain code:4 userInfo:0];
    v12 = *(v14 + 16);
  }

  v12();
}

uint64_t sub_1001D0664(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100479D10(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1001D089C(id *a1)
{
  v2 = [a1[4] callContainer];
  v3 = [a1[5] callUUID];
  v4 = [v3 UUIDString];
  v5 = [v2 callWithUniqueProxyIdentifier:v4];

  if (!v5)
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100479D80(a1 + 5);
    }

    v14 = a1[6];
    v15 = [NSError alloc];
    v16 = [v15 initWithDomain:TUSmartHoldingErrorDomain code:4 userInfo:0];
    v14[2](v14, v16);
    goto LABEL_14;
  }

  v6 = [v5 smartHoldingSession];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 smartHoldingSession];
    v9 = [v8 isHostedOnCurrentDevice];

    if (!v9)
    {
      if ([a1[5] requestType] != 4)
      {
        goto LABEL_15;
      }

      v17 = sub_100004778();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Smart holding session is not locally hosted but is instruction to stop so pulling call", buf, 2u);
      }

      v16 = [[TUAnswerRequest alloc] initWithCall:v5];
      [v16 setBehavior:4];
      [a1[4] performAnswerCall:v5 withRequest:v16];
LABEL_14:

      goto LABEL_15;
    }
  }

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Smart holding session is locally hosted, performing request", buf, 2u);
  }

  v11 = [a1[4] smartHoldingController];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001D0B54;
  v18[3] = &unk_10061DE70;
  v12 = a1[5];
  v18[4] = a1[4];
  v19 = v5;
  v20 = a1[5];
  v21 = a1[6];
  [v11 performRequest:v12 call:v19 completion:v18];

LABEL_15:
}

void sub_1001D0B54(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001D0C44;
  v6[3] = &unk_10061AF98;
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t sub_1001D0C44(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) smartHoldingError];

    if (!v3)
    {
      v4 = [*(a1 + 48) requestType];
      if ((v4 - 1) >= 4)
      {
        v5 = 0;
      }

      else
      {
        v5 = v4 + 6;
      }

      v6 = [NSError alloc];
      v7 = [v6 initWithDomain:TUSmartHoldingErrorDomain code:v5 userInfo:0];
      [*(a1 + 40) setSmartHoldingError:v7];
      v8 = sub_100004778();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100479DE8(v2);
      }
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAVID FINISHED PERFORMING REQUEST", v12, 2u);
  }

  v10 = *(a1 + 32);
  return (*(*(a1 + 56) + 16))();
}

void sub_1001D0D6C(uint64_t a1)
{
  v2 = TUErrorDomain;
  v6 = NSLocalizedDescriptionKey;
  v7 = @"Missing entitlement";
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [NSError errorWithDomain:v2 code:1 userInfo:v3];

  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100479E50();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1001D0FB4(uint64_t a1)
{
  [*(a1 + 32) setUiXPCEndpoint:*(a1 + 40)];
  v2 = [*(a1 + 32) clientManager];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001D1058;
  v3[3] = &unk_10061DA78;
  v3[4] = *(a1 + 32);
  [v2 filterClientsEntitledForCapability:@"access-calls" andPerformBlock:v3];
}

void sub_1001D1058(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "handleUIXPCEndpointChanged client: %@", &v9, 0xCu);
  }

  v8 = [*(a1 + 32) uiXPCEndpoint];
  [v6 handleUIXPCEndpointChanged:v8];
}

void sub_1001D1818(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v28 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "dialRequest: %@", buf, 0xCu);
  }

  if ([*(a1 + 32) launchInBackground])
  {
    v4 = TUEntitlementsBackgroundCallsCapability;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001D1AAC;
    v24[3] = &unk_10061DEC0;
    v5 = *(a1 + 40);
    v15 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = *(a1 + 56);
    *&v8 = *(a1 + 40);
    *(&v8 + 1) = v7;
    *&v9 = v15;
    *(&v9 + 1) = v6;
    v25 = v9;
    v26 = v8;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001D1BEC;
    v21[3] = &unk_10061C440;
    v23 = *(a1 + 56);
    v16 = *(a1 + 40);
    v10 = v16.i64[0];
    v22 = vextq_s8(v16, v16, 8uLL);
    sub_100004AA4(v5, v4, v24, v21, "[CSDCallStateController dialWithRequest:reply:]_block_invoke_4");

    v11 = *(&v25 + 1);
  }

  else
  {
    v12 = *(a1 + 32);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001D1C54;
    v18[3] = &unk_10061DE98;
    v13 = *(a1 + 48);
    v20 = *(a1 + 56);
    v17 = *(a1 + 40);
    v14 = v17.i64[0];
    v19 = vextq_s8(v17, v17, 8uLL);
    [v13 _dial:v12 displayContext:0 completion:v18];

    v11 = v20;
  }
}

void sub_1001D1AAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001D1B68;
  v6[3] = &unk_10061DE98;
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v8 = v4;
  v6[4] = v5;
  v7 = *(a1 + 48);
  [v2 _dial:v3 displayContext:0 completion:v6];
}

void sub_1001D1B68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v5 = [*(a1 + 32) callForClient:*(a1 + 40) usingCall:a2];
  v4 = [*(a1 + 32) currentCallsForClient:*(a1 + 40)];
  (*(v3 + 16))(v3, v5, v4);
}

void sub_1001D1BEC(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) currentCallsForClient:*(a1 + 40)];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_1001D1C54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v5 = [*(a1 + 32) callForClient:*(a1 + 40) usingCall:a2];
  v4 = [*(a1 + 32) currentCallsForClient:*(a1 + 40)];
  (*(v3 + 16))(v3, v5, v4);
}

void sub_1001D1CD8(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) currentCallsForClient:*(a1 + 40)];
  (*(v1 + 16))(v1, 0, v2);
}

id sub_1001D1E4C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "dialRequest: %@ displayContext: %@", &v6, 0x16u);
  }

  return [*(a1 + 48) _dial:*(a1 + 32) displayContext:*(a1 + 40) completion:0];
}

void sub_1001D20E4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "completed perform request with error: %@", &v4, 0xCu);
  }
}

void sub_1001D22E4(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v20 = 138412290;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "answerRequest: %@", &v20, 0xCu);
  }

  v4 = [*(a1 + 40) callContainer];
  v5 = (a1 + 32);
  v6 = [*(a1 + 32) uniqueProxyIdentifier];
  v7 = [v4 callWithUniqueProxyIdentifier:v6];

  if (*(a1 + 48) == 1)
  {
    [v7 setLaunchInBackground:1];
  }

  if (v7)
  {
    if ([v7 isHostedOnCurrentDevice] && objc_msgSend(*v5, "screeningType") == 2)
    {
      v8 = [*(a1 + 40) featureFlags];
      if (TUReceptionistAvailable())
      {
      }

      else
      {
        v13 = [v7 isReceptionistCapable];

        if (v13)
        {
          v14 = sub_100004778();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v20) = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] attempting to send to receptionist when it is not disclosed, sending to LVM instead", &v20, 2u);
          }

          [*v5 setScreeningType:1];
        }
      }
    }

    if ([v7 isEndpointOnCurrentDevice] && (objc_msgSend(v7, "provider"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isTinCanProvider"), v15, v16))
    {
      v17 = sub_100004778();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100479EB8(v5);
      }
    }

    else
    {
      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *v5;
        v20 = 138412546;
        v21 = v19;
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Performing answer request %@ for call %@", &v20, 0x16u);
      }

      [CSDSignposts trace:6];
      [*(a1 + 40) performAnswerCall:v7 withRequest:*(a1 + 32)];
    }
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) uniqueProxyIdentifier];
      v11 = [*(a1 + 40) callContainer];
      v12 = [v11 _allCalls];
      v20 = 138412546;
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call for uniqueProxyIdentifier %@. All calls: %@", &v20, 0x16u);
    }
  }
}

void sub_1001D26F0(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Holding call with identifier: %@", &v10, 0xCu);
  }

  v4 = [*(a1 + 40) callContainer];
  v5 = [v4 callWithUniqueProxyIdentifier:*(a1 + 32)];

  if (v5 || ([*(a1 + 40) callContainer], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "bargeCallWithUniqueProxyIdentifier:", *(a1 + 32)), v5 = objc_claimAutoreleasedReturnValue(), v6, v5))
  {
    [*(a1 + 40) performHoldCall:v5];
  }

  else
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) callContainer];
      v9 = [v8 _allCalls];
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call for uniqueProxyIdentifier %@. All calls: %@", &v10, 0x16u);
    }
  }
}

void sub_1001D2960(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Unholding call with identifier: %@", &v10, 0xCu);
  }

  v4 = [*(a1 + 40) callContainer];
  v5 = [v4 callWithUniqueProxyIdentifier:*(a1 + 32)];

  if (v5 || ([*(a1 + 40) callContainer], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "bargeCallWithUniqueProxyIdentifier:", *(a1 + 32)), v5 = objc_claimAutoreleasedReturnValue(), v6, v5))
  {
    [*(a1 + 40) performUnholdCall:v5];
  }

  else
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) callContainer];
      v9 = [v8 _allCalls];
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call for uniqueProxyIdentifier %@. All calls: %@", &v10, 0x16u);
    }
  }
}

void sub_1001D2BD0(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v33 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Requesting video upgrade for call with identifier: %@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) callContainer];
  v5 = [v4 callWithUniqueProxyIdentifier:*(a1 + 32)];

  if (v5)
  {
    v6 = [CXEnableVideoCallAction alloc];
    v7 = [v5 uniqueProxyIdentifierUUID];
    v8 = [v6 initWithCallUUID:v7 videoEnabled:1];

    v9 = [v5 providerCallDelegate];
    v27 = v8;
    [v9 performCallAction:v8 forCall:v5];

    [v5 setVideo:1];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [*(a1 + 40) callContainer];
    v11 = [v10 currentAudioAndVideoCalls];

    v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = [v16 uniqueProxyIdentifier];
          v18 = [v5 uniqueProxyIdentifier];
          v19 = [v17 isEqualToString:v18];

          if ((v19 & 1) == 0)
          {
            v20 = sub_100004778();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v16 uniqueProxyIdentifier];
              v22 = [v5 uniqueProxyIdentifier];
              *buf = 138412546;
              v33 = v21;
              v34 = 2112;
              v35 = v22;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Requesting to disconnect call %@ since also requesting call %@ to upgrade to video", buf, 0x16u);
            }

            [*(a1 + 40) performDisconnectCall:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v13);
    }

    [*(a1 + 40) _launchInCallApplicationForExistingCall];
    v23 = v27;
  }

  else
  {
    v23 = sub_100004778();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 32);
      v25 = [*(a1 + 40) callContainer];
      v26 = [v25 _allCalls];
      *buf = 138412546;
      v33 = v24;
      v34 = 2112;
      v35 = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call for uniqueProxyIdentifier %@. All calls: %@", buf, 0x16u);
    }
  }
}

void sub_1001D3024(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v11 = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Disconnecting call with identifier: %@, client: %@", &v11, 0x16u);
  }

  v5 = [*(a1 + 48) callContainer];
  v6 = [v5 callWithUniqueProxyIdentifier:*(a1 + 32)];

  if (v6 || ([*(a1 + 48) callContainer], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "bargeCallWithUniqueProxyIdentifier:", *(a1 + 32)), v6 = objc_claimAutoreleasedReturnValue(), v7, v6))
  {
    [*(a1 + 48) performDisconnectCall:v6];
  }

  else
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 48) callContainer];
      v10 = [v9 _allCalls];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call for uniqueProxyIdentifier %@. All calls: %@", &v11, 0x16u);
    }
  }
}

void sub_1001D32D0(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v14 = 138412546;
    v15 = v3;
    v16 = 2112;
    *v17 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Grouping calls with identifiers %@ %@", &v14, 0x16u);
  }

  v5 = [*(a1 + 48) callContainer];
  v6 = [v5 callWithUniqueProxyIdentifier:*(a1 + 32)];

  v7 = [*(a1 + 48) callContainer];
  v8 = [v7 callWithUniqueProxyIdentifier:*(a1 + 40)];

  if (v6 && v8)
  {
    v9 = [v6 dataSource];
    v10 = [v8 dataSource];
    if (v9 == v10)
    {
      [*(a1 + 48) performGroupCall:v6 withCall:v8];
    }

    else
    {
      v11 = sub_100004778();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = v9;
        v16 = 2112;
        *v17 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Asked to group call with data source %@ with another call with a different data source %@", &v14, 0x16u);
      }
    }
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = 138413058;
      v15 = v12;
      v16 = 1024;
      *v17 = v6 == 0;
      *&v17[4] = 2112;
      *&v17[6] = v13;
      v18 = 1024;
      v19 = v8 == 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call for uniqueProxyIdentifier %@ (%d) or could not find call for otherUniqueProxyIdentifier %@ (%d)", &v14, 0x22u);
    }
  }
}

void sub_1001D35F0(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ungrouping call with identifier: %@", &v10, 0xCu);
  }

  v4 = [*(a1 + 40) callContainer];
  v5 = [v4 callWithUniqueProxyIdentifier:*(a1 + 32)];

  if (v5)
  {
    [*(a1 + 40) performUngroupCall:v5];
  }

  else
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) callContainer];
      v9 = [v8 _allCalls];
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call for uniqueProxyIdentifier %@. All calls: %@", &v10, 0x16u);
    }
  }
}

id sub_1001D3820(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Swapping calls", v4, 2u);
  }

  return [*(a1 + 32) performSwapCalls];
}

void sub_1001D3984(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v11 = 138412546;
    v12 = v3;
    v13 = 1024;
    LODWORD(v14) = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Playing DTMF tone for call with identifier: %@ key: %d", &v11, 0x12u);
  }

  v5 = [*(a1 + 40) callContainer];
  v6 = [v5 callWithUniqueProxyIdentifier:*(a1 + 32)];

  if (v6)
  {
    [*(a1 + 40) performPlayDTMFToneForCall:v6 key:*(a1 + 48)];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) callContainer];
      v10 = [v9 _allCalls];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call for uniqueProxyIdentifier %@. All calls: %@", &v11, 0x16u);
    }
  }
}

id sub_1001D3BC8(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Disconnecting current call", v4, 2u);
  }

  return [*(a1 + 32) performDisconnectCurrentCall];
}

id sub_1001D3CF8(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Disconnecting current call and activating held call", v4, 2u);
  }

  return [*(a1 + 32) performDisconnectCurrentCallAndActivateHeld:1];
}

id sub_1001D3E2C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Disconnecting all calls", v4, 2u);
  }

  return [*(a1 + 32) performDisconnectAllCallsWithReason:41];
}

void sub_1001D3F94(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v7[0] = 67109378;
    v7[1] = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting TTY type to %d for call with identifier %@", v7, 0x12u);
  }

  v5 = [*(a1 + 40) callContainer];
  v6 = [v5 callWithUniqueProxyIdentifier:*(a1 + 32)];

  [*(a1 + 40) performSetTTYType:*(a1 + 48) forCall:v6];
}

void sub_1001D417C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v7 = 134218242;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting TTY TULiveVoicemailUnavailableReason to %d for call with identifier %@", &v7, 0x16u);
  }

  v5 = [*(a1 + 40) callContainer];
  v6 = [v5 callWithUniqueProxyIdentifier:*(a1 + 32)];

  if (![v6 liveVoicemailUnavailableReason])
  {
    [*(a1 + 40) performSetLiveVoicemailUnavailableReason:*(a1 + 48) forCall:v6];
  }
}

id sub_1001D4338(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Pulling relaying calls from client", v4, 2u);
  }

  return [*(a1 + 32) performPullRelayingCallsFromClientAndUpdateEndpoint:1 updateExpectedDestination:1];
}

id sub_1001D4470(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Pulling relaying GFT calls from client if endpoint does not support GFT relay", v4, 2u);
  }

  return [*(a1 + 32) performPullRelayingCallsFromClientAndUpdateEndpoint:1 updateExpectedDestination:1 onlyIfNeedsEndpointConversationRelaySupport:1];
}

id sub_1001D45D0(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Pushing relaying calls to host with source identifier: %@", &v5, 0xCu);
  }

  return [*(a1 + 40) performPushRelayingCallsToHostWithSourceIdentifier:*(a1 + 32)];
}

void sub_1001D4850(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v5 = [*(a1 + 32) callForClient:*(a1 + 40) usingCall:a2];
  v4 = [*(a1 + 32) currentCallsForClient:*(a1 + 40)];
  (*(v3 + 16))(v3, v5, v4);
}

id sub_1001D48D4(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Pulling calls from client using handoff info %@", &v5, 0xCu);
  }

  return [*(a1 + 40) performPullCallFromClientUsingHandoffActivityUserInfo:*(a1 + 32) completion:*(a1 + 48)];
}

void sub_1001D4ABC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) bundleIdentifier];
  v3 = [*(a1 + 32) channelUUID];
  v4 = [v3 UUIDString];
  (*(v2 + 16))(v2, v5, v4);
}

id sub_1001D4DFC(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending MMI or USSD code for dial request: %@", &v5, 0xCu);
  }

  return [*(a1 + 40) performSendMMIOrUSSDCodeWithRequest:*(a1 + 32)];
}

void sub_1001D4F9C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v11 = 67109378;
    *v12 = v3;
    *&v12[4] = 2112;
    *&v12[6] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting uplink muted (%d) for call with identifier %@", &v11, 0x12u);
  }

  v5 = [*(a1 + 40) callContainer];
  v6 = [v5 callWithUniqueProxyIdentifier:*(a1 + 32)];

  if (v6)
  {
    [*(a1 + 40) performSetUplinkMuted:*(a1 + 48) forCall:v6];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) callContainer];
      v10 = [v9 _allCalls];
      v11 = 138412546;
      *v12 = v8;
      *&v12[8] = 2112;
      *&v12[10] = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call for uniqueProxyIdentifier %@. All calls: %@", &v11, 0x16u);
    }
  }
}

void sub_1001D5214(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v11 = 67109378;
    *v12 = v3;
    *&v12[4] = 2112;
    *&v12[6] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting downlink muted (%d) for call with identifier %@", &v11, 0x12u);
  }

  v5 = [*(a1 + 40) callContainer];
  v6 = [v5 callWithUniqueProxyIdentifier:*(a1 + 32)];

  if (v6)
  {
    [v6 setDownlinkMuted:*(a1 + 48)];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) callContainer];
      v10 = [v9 _allCalls];
      v11 = 138412546;
      *v12 = v8;
      *&v12[8] = 2112;
      *&v12[10] = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call for uniqueProxyIdentifier %@. All calls: %@", &v11, 0x16u);
    }
  }
}

void sub_1001D5488(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v11 = 67109378;
    *v12 = v3;
    *&v12[4] = 2112;
    *&v12[6] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting is sending video (%d) for call with identifier %@", &v11, 0x12u);
  }

  if (*(a1 + 48) == 1 && ([*(a1 + 40) isInCallUIActive] & 1) == 0)
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100479F2C((a1 + 48));
    }
  }

  else
  {
    v5 = [*(a1 + 40) callContainer];
    v6 = [v5 callWithUniqueProxyIdentifier:*(a1 + 32)];

    if (v6)
    {
      [v6 setIsSendingVideo:*(a1 + 48)];
    }

    else
    {
      v7 = sub_100004778();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = [*(a1 + 40) callContainer];
        v10 = [v9 _allCalls];
        v11 = 138412546;
        *v12 = v8;
        *&v12[8] = 2112;
        *&v12[10] = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call for uniqueProxyIdentifier %@. All calls: %@", &v11, 0x16u);
      }
    }
  }
}

void sub_1001D5744(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v11 = 67109378;
    *v12 = v3;
    *&v12[4] = 2112;
    *&v12[6] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Settings mixes voice with media (%d) for call with identifier %@", &v11, 0x12u);
  }

  v5 = [*(a1 + 40) callContainer];
  v6 = [v5 callWithUniqueProxyIdentifier:*(a1 + 32)];

  if (v6)
  {
    [v6 setMixesVoiceWithMedia:*(a1 + 48)];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) callContainer];
      v10 = [v9 _allCalls];
      v11 = 138412546;
      *v12 = v8;
      *&v12[8] = 2112;
      *&v12[10] = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call for uniqueProxyIdentifier %@. All calls: %@", &v11, 0x16u);
    }
  }
}

void sub_1001D59B8(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v11 = 67109378;
    *v12 = v3;
    *&v12[4] = 2112;
    *&v12[6] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting sharing screen (%d) for call with identifier %@", &v11, 0x12u);
  }

  v5 = [*(a1 + 40) callContainer];
  v6 = [v5 callWithUniqueProxyIdentifier:*(a1 + 32)];

  if (v6)
  {
    [v6 setSharingScreen:*(a1 + 48)];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) callContainer];
      v10 = [v9 _allCalls];
      v11 = 138412546;
      *v12 = v8;
      *&v12[8] = 2112;
      *&v12[10] = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call for uniqueProxyIdentifier %@. All calls: %@", &v11, 0x16u);
    }
  }
}

void sub_1001D5C2C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v11 = 67109378;
    *v12 = v3;
    *&v12[4] = 2112;
    *&v12[6] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting has emergency video stream (%d) for call with identifier %@", &v11, 0x12u);
  }

  v5 = [*(a1 + 40) callContainer];
  v6 = [v5 callWithUniqueProxyIdentifier:*(a1 + 32)];

  if (v6)
  {
    [v6 setHasEmergencyVideoStream:*(a1 + 48)];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) callContainer];
      v10 = [v9 _allCalls];
      v11 = 138412546;
      *v12 = v8;
      *&v12[8] = 2112;
      *&v12[10] = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call for uniqueProxyIdentifier %@. All calls: %@", &v11, 0x16u);
    }
  }
}

void sub_1001D5EBC(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v11 = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting emergency media items (%@) for call with identifier %@", &v11, 0x16u);
  }

  v5 = [*(a1 + 48) callContainer];
  v6 = [v5 callWithUniqueProxyIdentifier:*(a1 + 40)];

  if (v6)
  {
    v7 = [*(a1 + 32) copy];
    [v6 setEmergencyMediaItems:v7];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 48) callContainer];
      v10 = [v9 _allCalls];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call for uniqueProxyIdentifier %@. All calls: %@", &v11, 0x16u);
    }
  }
}

id sub_1001D6128(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Pusing hosted calls to destination %@", &v5, 0xCu);
  }

  return [*(a1 + 40) performPushHostedCallsToDestination:*(a1 + 32)];
}

id sub_1001D6294(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Pulling calls hosted on paired device", v4, 2u);
  }

  return [*(a1 + 32) performPullHostedCallsFromPairedHostDevice];
}

void sub_1001D63E8(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending hard pause digits for call with identifier %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) callContainer];
  v5 = [v4 callWithUniqueProxyIdentifier:*(a1 + 32)];

  [v5 sendHardPauseDigits];
}

id sub_1001D65A0(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating call with proxy call %@", &v5, 0xCu);
  }

  return [*(a1 + 40) performUpdateCallWithProxy:*(a1 + 32)];
}

void sub_1001D6730(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Entered foreground for call with identifier %@", &v8, 0xCu);
  }

  v4 = [*(a1 + 40) callContainer];
  v5 = [v4 callWithUniqueProxyIdentifier:*(a1 + 32)];

  v6 = +[CSDReportingController sharedInstance];
  [v6 reportCallEnteredForeground:v5];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"CSDCallEnteredForegroundNotification" object:v5];
}

void sub_1001D68C8(id a1)
{
  v1 = sub_100004778();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Entering background for all calls", v3, 2u);
  }

  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"CSDCallsWillEnterBackgroundNotification" object:0];
}

void sub_1001D69D8(id a1)
{
  v1 = sub_100004778();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Entered background for all calls", v3, 2u);
  }

  v2 = +[CSDReportingController sharedInstance];
  [v2 reportAllCallsBackgrounded];
}

void sub_1001D6B50(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromSize(*(a1 + 48));
    v4 = *(a1 + 32);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting remote video presentation size to %@ for call with identifier %@", &v7, 0x16u);
  }

  v5 = [*(a1 + 40) callContainer];
  v6 = [v5 callWithUniqueProxyIdentifier:*(a1 + 32)];

  [v6 setRemoteVideoPresentationSize:{*(a1 + 48), *(a1 + 56)}];
}

void sub_1001D6D44(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v7[0] = 67109378;
    v7[1] = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting remote video presentation state to %d for call with identifier %@", v7, 0x12u);
  }

  v5 = [*(a1 + 40) callContainer];
  v6 = [v5 callWithUniqueProxyIdentifier:*(a1 + 32)];

  [v6 setRemoteVideoPresentationState:*(a1 + 48)];
}

void sub_1001D6F44(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting screen share attributes to %@ for call with identifier %@", &v7, 0x16u);
  }

  v5 = [*(a1 + 48) callContainer];
  v6 = [v5 callWithUniqueProxyIdentifier:*(a1 + 40)];

  [v6 setScreenShareAttributes:*(a1 + 32)];
}

void sub_1001D7148(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = 67109634;
    v8[1] = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting screen sharing to (%d) and attributes to %@ for call with identifier %@", v8, 0x1Cu);
  }

  v6 = [*(a1 + 48) callContainer];
  v7 = [v6 callWithUniqueProxyIdentifier:*(a1 + 40)];

  [v7 setSharingScreen:*(a1 + 56) attributes:*(a1 + 32)];
}

void sub_1001D7338(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v9 = 134218242;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting Bluetooth audio format to %ld for call with identifier %@", &v9, 0x16u);
  }

  v5 = [*(a1 + 40) callContainer];
  v6 = [v5 callWithUniqueProxyIdentifier:*(a1 + 32)];

  v7 = [v6 bluetoothAudioFormat];
  if (v7 != *(a1 + 48))
  {
    if ([v6 bluetoothAudioFormat] == 1 || (v7 = *(a1 + 48), v7 == 1))
    {
      v8 = +[TUAudioSystemController sharedAudioSystemController];
      [v8 switchBluetoothAudioFormats];

      v7 = *(a1 + 48);
    }
  }

  [v6 setBluetoothAudioFormat:v7];
}

void sub_1001D7540(uint64_t a1)
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

    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting should suppress in-call status bar to %@", &v8, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = [NSString stringWithCString:TUCallCenterInCallServiceSuppressInCallStatusBarToken encoding:4];
  v6 = [NSNumber numberWithBool:*(a1 + 40)];
  v7 = [NSDictionary dictionaryWithObject:v6 forKey:@"ShouldSuppress"];

  [v4 postNotificationName:v5 object:*(a1 + 32) userInfo:v7];
}

void sub_1001D7770(uint64_t a1)
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

    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting should allow ringing call status indicator to %@", &v8, 0xCu);
  }

  v4 = [NSString stringWithCString:TUCallCenterInCallServiceAllowRingingCallStatusIndicatorToken encoding:4];
  v5 = [NSNumber numberWithBool:*(a1 + 40)];
  v6 = [NSDictionary dictionaryWithObject:v5 forKey:@"ShouldAllow"];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:v4 object:*(a1 + 32) userInfo:v6];
}

void sub_1001D79B0(int8x16_t *a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[2].i64[0];
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Processing SpringBoard request to continue user activity with identifier: %@", buf, 0xCu);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D7AD8;
  v5[3] = &unk_10061DF98;
  v4 = a1[2];
  v6 = vextq_s8(v4, v4, 8uLL);
  [NSUserActivity _fetchUserActivityWithUUID:v4.i64[0] completionHandler:v5];
}

void sub_1001D7AD8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001D7BD0;
    v11[3] = &unk_100619D88;
    v8 = v5;
    v9 = *(a1 + 32);
    v12 = v8;
    v13 = v9;
    dispatch_async(v7, v11);

    v10 = v12;
  }

  else
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100479FA4(a1);
    }
  }
}

void sub_1001D7BD0(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Initiating request to pull call for user activity %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) userInfo];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001D7D00;
  v8[3] = &unk_10061DF70;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = v6;
  v10 = v7;
  [v4 performPullCallFromClientUsingHandoffActivityUserInfo:v5 completion:v8];
}

void sub_1001D7D00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 uniqueProxyIdentifier];
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Lauching in-call application; pulled call with identifier %@ for user activity %@", &v8, 0x16u);
    }

    [*(a1 + 40) _launchInCallApplicationForIncomingCallIfNecessary:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10047A01C(a1);
    }
  }
}

id sub_1001D7FD8(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CSDCallStateController: joinConversationWithRequest: %@", &v5, 0xCu);
  }

  return [*(a1 + 40) performJoinConversation:*(a1 + 32)];
}

void sub_1001D8170(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting current audio input to device with UID %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) callCenter];
  v5 = [v4 audioDeviceController];
  [v5 setCurrentAudioInputDeviceToDeviceWithUID:*(a1 + 32)];
}

void sub_1001D832C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting current audio output to device with UID %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) callCenter];
  v5 = [v4 audioDeviceController];
  [v5 setCurrentAudioOutputDeviceToDeviceWithUID:*(a1 + 32)];
}

void sub_1001D84E8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) localRouteController];
  v2 = [v3 routesByUniqueIdentifier];
  (*(v1 + 16))(v1, v2);
}

void sub_1001D8634(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) pairedHostDeviceRouteController];
  v2 = [v3 routesByUniqueIdentifier];
  (*(v1 + 16))(v1, v2);
}

void sub_1001D8790(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Picking local route with identifier: %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) localRouteController];
  [v4 pickRouteWithUniqueIdentifier:*(a1 + 32) shouldWaitUntilAvailable:*(a1 + 48)];
}

void sub_1001D8948(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Picking paired device with identifier %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) pairedHostDeviceRouteController];
  [v4 pickRouteWithUniqueIdentifier:*(a1 + 32) shouldWaitUntilAvailable:*(a1 + 48)];
}

void sub_1001D8ADC(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting paired host device volume: %f", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) relayMessagingController];
  LODWORD(v5) = *(a1 + 40);
  [v4 sendUpdateSystemVolume:v5];
}

void sub_1001D8C60(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Setting local device volume: %f", &v6, 0xCu);
  }

  v4 = +[TUAudioSystemController sharedAudioSystemController];
  LODWORD(v5) = *(a1 + 32);
  [v4 setActiveCategoryVolume:v5];
}

void sub_1001D8E2C(uint64_t a1)
{
  v2 = objc_alloc_init(_TtC13callservicesd28CSDFaceTimeIMAVPushValidator);
  (*(*(a1 + 40) + 16))(*(a1 + 40), [(CSDFaceTimeIMAVPushValidator *)v2 shouldAllowIDSPushMessageFor:*(a1 + 32)]);
}

void sub_1001D8FD0(uint64_t a1)
{
  v2 = *(a1 + 56);
  v4 = [*(a1 + 32) providerCallDataSource];
  v3 = [v4 callFilterController];
  (*(v2 + 16))(v2, [v3 containsOutgoingRestrictedHandle:*(a1 + 40) forBundleIdentifier:*(a1 + 48) performSynchronously:*(a1 + 64)]);
}

void sub_1001D9184(uint64_t a1)
{
  v2 = *(a1 + 56);
  v4 = [*(a1 + 32) providerCallDataSource];
  v3 = [v4 policyForAddresses:*(a1 + 40) forBundleIdentifier:*(a1 + 48)];
  (*(v2 + 16))(v2, v3);
}

void sub_1001D9328(uint64_t a1)
{
  v2 = *(a1 + 56);
  v5 = [*(a1 + 32) providerCallDataSource];
  v3 = [v5 callFilterController];
  v4 = [*(a1 + 40) allObjects];
  (*(v2 + 16))(v2, [v3 willRestrictAddresses:v4 forBundleIdentifier:*(a1 + 48)]);
}

void sub_1001D9504(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) providerCallDataSource];
  (*(v2 + 16))(v2, [v3 shouldRestrictAddresses:*(a1 + 40) forBundleIdentifier:*(a1 + 48) performSynchronously:*(a1 + 64)]);
}

void sub_1001D96CC(uint64_t a1)
{
  v2 = *(a1 + 64);
  v4 = [*(a1 + 32) providerCallDataSource];
  v3 = [v4 callFilterController];
  (*(v2 + 16))(v2, [v3 isUnknownAddress:*(a1 + 40) normalizedAddress:*(a1 + 48) forBundleIdentifier:*(a1 + 56)]);
}

void sub_1001D9880(uint64_t a1)
{
  v2 = *(a1 + 56);
  v5 = [*(a1 + 32) providerCallDataSource];
  v3 = [v5 callFilterController];
  v4 = [*(a1 + 40) allObjects];
  (*(v2 + 16))(v2, [v3 filterStatusForAddresses:v4 withBundleIdentifier:*(a1 + 48)]);
}

void sub_1001D9A5C(uint64_t a1)
{
  v2 = *(a1 + 56);
  v4 = [*(a1 + 32) providerCallDataSource];
  v3 = [v4 callFilterController];
  (*(v2 + 16))(v2, [v3 isRestrictedExclusivelyByScreenTime:*(a1 + 40) forBundleIdentifier:*(a1 + 48) performSynchronously:*(a1 + 64)]);
}

BOOL sub_1001D9CDC(id a1, TUCall *a2, NSDictionary *a3)
{
  v3 = a2;
  if (([(TUCall *)v3 isHostedOnCurrentDevice]& 1) != 0 || ![(TUCall *)v3 isEndpointOnCurrentDevice])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [(TUCall *)v3 isScreening]^ 1;
  }

  return v4;
}

BOOL sub_1001D9EC0(id a1, TUCall *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = [(TUCall *)v3 isHostedOnCurrentDevice];
  v5 = [(TUCall *)v3 isEndpointOnCurrentDevice];

  return v4 ^ v5;
}

void sub_1001DA1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001DA1EC(uint64_t a1)
{
  v2 = [*(a1 + 32) callContainer];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001DA2BC;
  v4[3] = &unk_10061A040;
  v5 = *(a1 + 40);
  v3 = [v2 callsPassingTest:v4];

  *(*(*(a1 + 48) + 8) + 24) = [v3 count] != 0;
}

id sub_1001DA2BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 provider];
  if ([v4 isSystemProvider])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 provider];
    v7 = [v6 bundleIdentifier];
    v5 = [v7 isEqualToString:*(a1 + 32)];
  }

  return v5;
}

void sub_1001DA5F8(uint64_t a1)
{
  v2 = [*(a1 + 32) callContainer];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001DA7F8;
  v17[3] = &unk_10061A040;
  v18 = *(a1 + 40);
  v3 = [v2 bargeCallsPassingTest:v17];

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    *buf = 138412546;
    v21 = v5;
    v22 = 1024;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "disconnectBargeCallsWithBundleIdentifier, bundleIdentifier: %@, reason: %d", buf, 0x12u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11) disconnectWithReason:{*(a1 + 48), v13}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v9);
  }

  if (*(a1 + 48) == 31)
  {
    v12 = [*(a1 + 32) channelProviderManager];
    [v12 updateProviderByIdentifier];
  }
}

id sub_1001DA7F8(uint64_t a1, void *a2)
{
  v3 = [a2 provider];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

void sub_1001DB0CC(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("CSDCallStateController-AutomaticNameAndPhotoQueue", v3);
  v2 = qword_1006ACE70;
  qword_1006ACE70 = v1;
}

void sub_1001DB240(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) value];
  v4 = [NSSet setWithObject:v3];
  v5 = [*(a1 + 48) provider];
  LODWORD(v2) = [v2 shouldAutomaticallySendNameAndPhotoToHandles:v4 callProvider:v5];

  if (v2)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);

    [v6 sendNameAndPhotoUsingDialRequest:v7];
  }
}

void sub_1001DB3D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) sanitizedHandles];
  v4 = [*(a1 + 40) provider];
  LODWORD(v2) = [v2 shouldAutomaticallySendNameAndPhotoToHandles:v3 conversationProvider:v4];

  if (v2)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    [v5 sendNameAndPhotoUsingJoinRequest:v6];
  }
}

void sub_1001DC830(uint64_t a1)
{
  v1 = [*(a1 + 32) callCenter];
  [v1 pullRelayingCallsFromClient];
}

void sub_1001DCA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL sub_1001DCA9C(id a1)
{
  if (qword_1006ACE88 != -1)
  {
    sub_10047A168();
  }

  return off_1006ACE80() == 1;
}

int sub_1001DCB0C(id a1)
{
  if (qword_1006ACE98 != -1)
  {
    sub_10047A17C();
  }

  v2 = off_1006ACE90;

  return v2(0);
}

void sub_1001DCB84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDeviceFirstUnlockNotification];
}

void sub_1001DCBC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDeviceLockStatusNotification];
}

void sub_1001DE4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001DE4F0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 objectForKeyedSubscript:BKSApplicationStateDisplayIDKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if ([v6 length])
    {
      v7 = [v3 objectForKeyedSubscript:BKSApplicationStateKey];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [WeakRetained setApplicationState:v7 forBundleIdentifier:v6];
      }

      else
      {
        v9 = sub_100004778();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_10047A190(v3, v9);
        }
      }
    }

    else
    {
      v8 = sub_100004778();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10047A208(v3, v8);
      }

      v7 = v5;
    }
  }
}

void sub_1001DEEF8(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleIdentifierToVoIPApplication];
  v3 = [CSDClientManager alloc];
  v4 = [*(a1 + 32) queue];
  v5 = [(CSDClientManager *)v3 initWithSerialQueue:v4];
  [*(a1 + 32) setNetworkExtensionClientManager:v5];

  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CXNetworkExtensionVoIPXPCClient];
  v7 = [*(a1 + 32) networkExtensionClientManager];
  [v7 setRemoteObjectInterface:v6];

  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CXNetworkExtensionVoIPXPCServer];
  v9 = [*(a1 + 32) networkExtensionClientManager];
  [v9 setExportedInterface:v8];

  v10 = *(a1 + 32);
  v11 = [v10 networkExtensionClientManager];
  [v11 setExportedObject:v10];

  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_1001DF688;
  v73[3] = &unk_10061E1D8;
  v12 = v2;
  v74 = v12;
  v13 = [*(a1 + 32) networkExtensionClientManager];
  [v13 setInterruptionHandler:v73];

  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_1001DF798;
  v71[3] = &unk_10061E1D8;
  v14 = v12;
  v72 = v14;
  v15 = [*(a1 + 32) networkExtensionClientManager];
  [v15 setInvalidationHandler:v71];

  v16 = [*(a1 + 32) networkExtensionClientManager];
  [v16 startListeningOnMachServiceWithName:@"com.apple.callkit.networkextension.voip"];

  v17 = objc_alloc_init(CXNetworkExtensionMessageControllerHost);
  v18 = *(a1 + 32);
  v19 = *(v18 + 80);
  *(v18 + 80) = v17;

  [*(*(a1 + 32) + 80) addDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 16)];
  notify_post("com.apple.networkextension.voip.launch");
  v20 = [CSDClientManager alloc];
  v21 = [*(a1 + 32) queue];
  v22 = [(CSDClientManager *)v20 initWithSerialQueue:v21];
  [*(a1 + 32) setPushKitClientManager:v22];

  v23 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PKVoIPXPCClient];
  v24 = [*(a1 + 32) pushKitClientManager];
  [v24 setRemoteObjectInterface:v23];

  v25 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PKVoIPXPCServer];
  v26 = [*(a1 + 32) pushKitClientManager];
  [v26 setExportedInterface:v25];

  v27 = *(a1 + 32);
  v28 = [v27 pushKitClientManager];
  [v28 setExportedObject:v27];

  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_1001DF8A8;
  v69[3] = &unk_10061E1D8;
  v29 = v14;
  v70 = v29;
  v30 = [*(a1 + 32) pushKitClientManager];
  [v30 setInterruptionHandler:v69];

  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_1001DF9B8;
  v67[3] = &unk_10061E1D8;
  v31 = v29;
  v68 = v31;
  v32 = [*(a1 + 32) pushKitClientManager];
  [v32 setInvalidationHandler:v67];

  v33 = [*(a1 + 32) pushKitClientManager];
  [v33 startListeningOnMachServiceWithName:@"com.apple.telephonyutilities.callservicesdaemon.voip"];

  v34 = [*(a1 + 32) _apsConnectionForEnvironment:APSEnvironmentDevelopment];
  v35 = [*(a1 + 32) _apsConnectionForEnvironment:APSEnvironmentProduction];
  notify_post("com.apple.pushkit.launch.voip");
  v36 = +[CSDPersistedChannelRegistry sharedInstance];
  v37 = *(a1 + 32);
  v38 = *(v37 + 48);
  *(v37 + 48) = v36;

  [*(*(a1 + 32) + 48) addObserver:?];
  v39 = +[NSNotificationCenter defaultCenter];
  [v39 addObserver:*(a1 + 32) selector:"handlePTTAppReportedValidActiveRemoteParticipant:" name:@"CSDBargeCallSetValidActiveRemoteParticipantNameNotification" object:0];

  v40 = [CSDClientManager alloc];
  v41 = [*(a1 + 32) queue];
  v42 = [(CSDClientManager *)v40 initWithSerialQueue:v41];
  [*(a1 + 32) setChannelClientManager:v42];

  v43 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CXChannelPushClientProtocol];
  v44 = [*(a1 + 32) channelClientManager];
  [v44 setRemoteObjectInterface:v43];

  v45 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CXChannelPushServerProtocol];
  v46 = [*(a1 + 32) channelClientManager];
  [v46 setExportedInterface:v45];

  v47 = *(a1 + 32);
  v48 = [v47 channelClientManager];
  [v48 setExportedObject:v47];

  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_1001DFAC8;
  v65[3] = &unk_10061E1D8;
  v49 = v31;
  v66 = v49;
  v50 = [*(a1 + 32) channelClientManager];
  [v50 setInterruptionHandler:v65];

  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_1001DFBD8;
  v63[3] = &unk_10061E1D8;
  v51 = v49;
  v64 = v51;
  v52 = [*(a1 + 32) channelClientManager];
  [v52 setInvalidationHandler:v63];

  v53 = [*(a1 + 32) channelClientManager];
  [v53 startListeningOnMachServiceWithName:@"com.apple.telephonyutilities.callservicesdaemon.ptt"];

  notify_post("com.apple.callservicesd.launch.ptt");
  v54 = [CSDPTTServiceUpdatePushMonitor alloc];
  v55 = objc_alloc_init(CSDPTTServiceUpdatePushBudgetTUDefaultsDataSource);
  v56 = [(CSDPTTServiceUpdatePushMonitor *)v54 initWithServiceUpdatePushBudgetDataSource:v55];
  [*(a1 + 32) setPttServiceUpdatePushMonitor:v56];

  v57 = [[CXNotificationServiceExtensionVoIPXPCHost alloc] initWithDelegate:*(a1 + 32)];
  v58 = *(a1 + 32);
  v59 = *(v58 + 88);
  *(v58 + 88) = v57;

  objc_initWeak(&location, *(a1 + 32));
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_1001DFCE8;
  v60[3] = &unk_100619D10;
  objc_copyWeak(&v61, &location);
  xpc_activity_register("com.apple.telephonyutilities.callservicesd.csdvoipapplicationcontroller.daily", XPC_ACTIVITY_CHECK_IN, v60);
  objc_destroyWeak(&v61);
  objc_destroyWeak(&location);
}

void sub_1001DF66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001DF688(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "XPC network extension connection interrupted from client %@", &v9, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [v3 processBundleIdentifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v7 networkExtensionClient];
  if (v8 == v3)
  {
    [v7 setNetworkExtensionClient:0];
  }
}

void sub_1001DF798(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "XPC network extension connection invalidated from client %@", &v9, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [v3 processBundleIdentifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v7 networkExtensionClient];
  if (v8 == v3)
  {
    [v7 setNetworkExtensionClient:0];
  }
}

void sub_1001DF8A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "XPC PushKit connection interrupted from client %@", &v9, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [v3 processBundleIdentifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v7 pushKitClient];
  if (v8 == v3)
  {
    [v7 setPushKitClient:0];
  }
}

void sub_1001DF9B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "XPC PushKit connection invalidated from client %@", &v9, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [v3 processBundleIdentifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v7 pushKitClient];
  if (v8 == v3)
  {
    [v7 setPushKitClient:0];
  }
}

void sub_1001DFAC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "XPC channel push connection interrupted from client %@", &v9, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [v3 processBundleIdentifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v7 channelPushClient];
  if (v8 == v3)
  {
    [v7 setChannelPushClient:0];
  }
}

void sub_1001DFBD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "XPC channel push connection interrupted from client %@", &v9, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [v3 processBundleIdentifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v7 channelPushClient];
  if (v8 == v3)
  {
    [v7 setChannelPushClient:0];
  }
}

void sub_1001DFCE8(uint64_t a1, void *a2)
{
  activity = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    [WeakRetained _removeAllApplicationsFromKillCountsDictionary];
    [WeakRetained _pruneUninstalledAppPushTopics];
  }

  else if (!state)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_int64(v5, XPC_ACTIVITY_DELAY, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_dictionary_set_int64(v5, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_activity_set_criteria(activity, v5);
  }
}

void sub_1001DFF48(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v24 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Handling %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) userInfo];
  v5 = [v4 objectForKeyedSubscript:@"bundleIDs"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [*(a1 + 32) userInfo];
    v8 = [v7 objectForKeyedSubscript:@"bundleIDs"];

    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [*(a1 + 40) _findOrCreateApplicationWithBundleIdentifier:v13];
            [*(a1 + 40) _removeApplicationFromKillCountsDictionary:v14];
            v15 = [*(a1 + 40) callStateController];
            [v15 disconnectBargeCallsWithBundleIdentifier:v13 reason:31];

            v16 = [*(a1 + 40) persistedChannelRegistry];
            [v16 handleAppUninstall:v13];

            [*(a1 + 40) _unregisterPushApplication:v14 inEnvironment:0 pushType:3 destroyApp:0];
            [*(a1 + 40) removeApplicationFromPTTDeprecationAlertDictionary:v14];
            v17 = [*(a1 + 40) pttServiceUpdatePushMonitor];
            [v17 removeApplicationFromPTTWakingServiceUpdateDictionary:v14];

            [*(a1 + 40) _unregisterPushApplication:v14 inEnvironment:0 pushType:2 destroyApp:1];
          }

          else
          {
            v14 = sub_100004778();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              sub_10047A344(buf, v13, &v24, v14);
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10047A280((a1 + 32));
    }
  }
}

void sub_1001E0C8C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 != 2 && a2 != 4)
  {
    v6 = [*(a1 + 32) callStateController];
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) bundleIdentifier];
    [v6 disconnectBargeCall:v7 bundleIdentifier:v8 reason:2];

    v9 = *(a1 + 32);
    v10 = [*(a1 + 48) bundleIdentifier];
    [v9 removeOutstandingMessagesForBundleIdentifier:v10];
  }

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218243;
    v13 = a2;
    v14 = 2113;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Channel: received ptt push result type :%ld participant:%{private}@", &v12, 0x16u);
  }
}

void sub_1001E3040(uint64_t a1)
{
  v2 = [*(a1 + 32) outstandingMessages];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

void sub_1001E38A8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully launched application with bundle identifier %@", &v10, 0xCu);
    }
  }

  else if (v5)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10047A750(a1);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1001E39BC(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v29 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Invalidating process assertion for bundle ID %@ from timeout", buf, 0xCu);
  }

  [*(a1 + 40) invalidate];
  v4 = *(a1 + 48);
  if (*(a1 + 72) == 1)
  {
    v5 = [v4 containsOutstandingMessage:*(a1 + 56) forBundleIdentifier:*(a1 + 32)];
    v6 = [*(a1 + 48) persistedChannelRegistry];
    v7 = [v6 activePersistedChannelIdentity];

    v8 = [v7 bundleIdentifier];
    v9 = [v8 isEqualToString:*(a1 + 32)];

    v10 = v9 & v5;
  }

  else if (([v4 _appHasOngoingCall:*(a1 + 64)] & 1) != 0 || !objc_msgSend(*(a1 + 48), "containsOutstandingMessage:forBundleIdentifier:", *(a1 + 56), *(a1 + 32)))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 73);
  }

  if ([*(a1 + 48) _appHasOngoingCall:*(a1 + 64)])
  {
    goto LABEL_10;
  }

  v17 = [*(a1 + 48) containsOutstandingMessage:*(a1 + 56) forBundleIdentifier:*(a1 + 32)];
  v11 = 0;
  if ((*(a1 + 72) & 1) == 0 && v17)
  {
    if (![*(a1 + 64) isEligibleForPTTEntitlementDeprecationNotice] || MKBGetDeviceLockState() == 1 || MKBGetDeviceLockState() == 2 || !objc_msgSend(*(a1 + 48), "pttDeprecationAlertWaitingPeriodHasPassedForApplication:", *(a1 + 64)))
    {
LABEL_10:
      v11 = 0;
      goto LABEL_11;
    }

    v18 = [*(a1 + 64) localizedAppName];
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] %@ must be updated to use the new PushToTalk framework. The com.apple.developer.pushkit.unrestricted-voip.ptt entitlement is not supported for apps built using the iOS 26 SDK.", buf, 0xCu);
    }

    [*(a1 + 48) displayPTTDeprecationAlert:v18];
    [*(a1 + 48) updatePTTDeprecationAlertLogForApplication:*(a1 + 64)];

    v11 = 1;
  }

LABEL_11:
  if ((*(a1 + 74) & v10 & 1) == 0)
  {
    return;
  }

  v12 = [*(a1 + 48) applicationMonitor];
  v13 = [v12 isRunningForegroundForVoIPApplication:*(a1 + 64)];

  if (v13)
  {
    return;
  }

  [*(a1 + 48) removeOutstandingMessagesForBundleIdentifier:*(a1 + 32)];
  v14 = *(a1 + 72);
  v15 = sub_100004778();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (v14 == 1)
  {
    if (v16)
    {
      sub_10047A834((a1 + 32));
    }
  }

  else
  {
    if (v16)
    {
      sub_10047A7BC((a1 + 32));
    }

    if ((v11 & 1) != 0 || ![*(a1 + 64) isEligibleForPTTEntitlementDeprecationNotice])
    {
      goto LABEL_31;
    }

    v15 = [*(a1 + 64) localizedAppName];
    [*(a1 + 48) displayPTTDeprecationAlert:v15];
  }

LABEL_31:
  v20 = [*(a1 + 64) bundleIdentifier];
  v21 = [RBSProcessIdentity identityForEmbeddedApplicationIdentifier:v20];

  v22 = [RBSProcessPredicate predicateMatchingIdentity:v21];
  v23 = objc_alloc_init(RBSTerminateContext);
  [v23 setReportType:1];
  [v23 setExceptionDomain:10];
  [v23 setExceptionCode:3131951633];
  v24 = [[RBSTerminateRequest alloc] initWithPredicate:v22 context:v23];
  v27 = 0;
  [v24 execute:&v27];
  v25 = v27;
  if (v25)
  {
    v26 = sub_100004778();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10047A8AC((a1 + 32));
    }
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    [*(a1 + 48) _incrementKillCountForApplication:*(a1 + 64)];
  }
}

void sub_1001E5950(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100004778();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10047AC44(a1, v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully opened URL %@ for bundle: %@", &v9, 0x16u);
  }
}

uint64_t sub_1001E76CC(uint64_t a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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
        v13 = objc_alloc_init(CSDMessagingHandle);
        objc_storeStrong((a1 + 8), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !sub_1000D1450(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v13 = *(a1 + 16);
    *(a1 + 16) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

void sub_1001E7F38(uint64_t a1)
{
  v2 = [*(a1 + 32) identifiersWithPendingCoalescingBlocks];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) blockToExecuteAfterPendingCoalescingBlocksByIdentifier];
  v5 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  if (v5)
  {
    v4 = [*(a1 + 32) blockToExecuteAfterPendingCoalescingBlocksByIdentifier];
    [v4 setObject:0 forKeyedSubscript:*(a1 + 40)];

    [*(a1 + 32) performBlock:v5 coalescedByIdentifier:*(a1 + 40)];
  }
}

uint64_t sub_1001E858C(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v28 = PBReaderReadString();
            v29 = 48;
            goto LABEL_63;
          }

          if (v13 == 4)
          {
            v28 = PBReaderReadString();
            v29 = 40;
LABEL_63:
            v37 = *(a1 + v29);
            *(a1 + v29) = v28;

            goto LABEL_89;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v28 = PBReaderReadString();
            v29 = 8;
            goto LABEL_63;
          }

          if (v13 == 2)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 60) |= 8u;
            while (1)
            {
              LOBYTE(v48[0]) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v48[0] & 0x7F) << v21;
              if ((v48[0] & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                LOBYTE(v27) = 0;
                goto LABEL_76;
              }
            }

            v27 = (v23 != 0) & ~[a2 hasError];
LABEL_76:
            v44 = 57;
            goto LABEL_88;
          }
        }

        goto LABEL_73;
      }

      if (v13 <= 6)
      {
        break;
      }

      if (v13 != 7)
      {
        if (v13 == 8)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 60) |= 4u;
          while (1)
          {
            LOBYTE(v48[0]) = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v48[0] & 0x7F) << v38;
            if ((v48[0] & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_87;
            }
          }

          v27 = (v40 != 0) & ~[a2 hasError];
LABEL_87:
          v44 = 56;
LABEL_88:
          *(a1 + v44) = v27;
          goto LABEL_89;
        }

        if (v13 == 9)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 60) |= 1u;
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
              goto LABEL_84;
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

LABEL_84:
          v45 = 24;
LABEL_85:
          *(a1 + v45) = v20;
          goto LABEL_89;
        }

LABEL_73:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_89;
      }

      v36 = objc_alloc_init(CSDMessagingConversationActivitySceneAssociationBehavior);
      objc_storeStrong((a1 + 32), v36);
      v48[0] = 0;
      v48[1] = 0;
      if (!PBReaderPlaceMark() || !sub_100122144(v36, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_89:
      v46 = [a2 position];
      if (v46 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 5)
    {
      v28 = PBReaderReadData();
      v29 = 16;
      goto LABEL_63;
    }

    if (v13 == 6)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      *(a1 + 60) |= 2u;
      while (1)
      {
        LOBYTE(v48[0]) = 0;
        v33 = [a2 position] + 1;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:v48 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v32 |= (v48[0] & 0x7F) << v30;
        if ((v48[0] & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v11 = v31++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_80;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v32;
      }

LABEL_80:
      v45 = 28;
      goto LABEL_85;
    }

    goto LABEL_73;
  }

  return [a2 hasError] ^ 1;
}

void sub_1001EA2E0(uint64_t a1)
{
  v2 = [*(a1 + 32) messagingController];
  [v2 sendConversationAudioPriorityToClientForConversation:*(a1 + 40)];
}

void sub_1001EA6CC(uint64_t a1)
{
  v1 = sub_100004778();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Updating IDS firewall with allowed handles", buf, 2u);
  }

  v2 = objc_alloc_init(CHManager);
  v3 = *(a1 + 32);
  v4 = [objc_opt_class() predicateForUpgrade];
  v25 = objc_alloc_init(CSDSharedConversationServerBag);
  v5 = [(CSDSharedConversationServerBag *)v25 idsFirewallBatchSize];
  v26 = v4;
  v6 = [v2 callsWithPredicate:v4 limit:0 offset:0 batchSize:v5];
  v7 = +[NSMutableDictionary dictionary];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v6;
  v30 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  v27 = v2;
  if (v30)
  {
    v29 = *v39;
    do
    {
      v8 = 0;
      do
      {
        if (*v39 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * v8);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v31 = v8;
        v32 = v9;
        v10 = [v9 validRemoteParticipantHandles];
        v11 = [v10 countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v35;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v35 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v34 + 1) + 8 * i);
              v16 = [v15 tuHandle];
              if (v16)
              {
                v17 = v16;
                v18 = [v15 tuHandle];
                v19 = [v7 objectForKeyedSubscript:v18];

                if (!v19)
                {
                  v20 = [v32 date];
                  v21 = [v15 tuHandle];
                  [v7 setObject:v20 forKeyedSubscript:v21];
                }
              }

              if ([v7 count] > v5)
              {
                v22 = [*(a1 + 32) service];
                [v22 addFirewallEntriesForHandleToDate:v7];

                v23 = +[NSMutableDictionary dictionary];

                v7 = v23;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v34 objects:v43 count:16];
          }

          while (v12);
        }

        v8 = v31 + 1;
      }

      while ((v31 + 1) != v30);
      v30 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v30);
  }

  v24 = +[NSUserDefaults tu_defaults];
  [v24 setInteger:1 forKey:@"kLastIDSFirewallVersionDefaultsKey"];
}

uint64_t sub_1001EAED0(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = *(a1 + 32);
  v4 = [v16 tuHandle];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v6 = [*(a1 + 40) latestRecentOutgoingFacetimeCallWithRemoteParticipantHandle:v16 sinceDate:*(a1 + 48) noDeletedCallsPredicate:*(a1 + 56)];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 date];
      v9 = [*(a1 + 64) date];
      v10 = [v8 isBeforeDate:v9];

      if (!v10)
      {
LABEL_7:

        goto LABEL_8;
      }

      v11 = [v7 date];
      v12 = *(a1 + 32);
      v13 = [v16 tuHandle];
      [v12 setObject:v11 forKeyedSubscript:v13];
    }

    else
    {
      v14 = *(a1 + 72);
      v11 = [v16 tuHandle];
      [v14 addObject:v11];
    }

    goto LABEL_7;
  }

LABEL_8:

  return _objc_release_x2();
}

void sub_1001EB60C(uint64_t a1)
{
  v2 = +[TUConversationManagerXPCClient conversationManagerClientXPCInterface];
  v3 = [*(a1 + 32) clientManager];
  [v3 setRemoteObjectInterface:v2];

  v4 = +[TUConversationManagerXPCClient conversationManagerServerXPCInterface];
  v5 = [*(a1 + 32) clientManager];
  [v5 setExportedInterface:v4];

  v6 = *(a1 + 32);
  v7 = [v6 clientManager];
  [v7 setExportedObject:v6];

  v8 = [*(a1 + 32) clientManager];
  [v8 setRequiredConnectionCapability:@"access-calls"];

  v9 = [*(a1 + 32) clientManager];
  [v9 setInterruptionHandler:&stru_10061E2C0];

  v10 = [*(a1 + 32) clientManager];
  [v10 setInvalidationHandler:&stru_10061E2E0];

  v11 = [*(a1 + 32) clientManager];
  [v11 setSupportsClientAssertions:1];

  v12 = [*(a1 + 32) clientManager];
  v13 = [v12 asynchronousExportedObjectProxy];
  [TUConversationManagerXPCClient setAsynchronousServer:v13];

  v14 = [*(a1 + 32) clientManager];
  v15 = [v14 synchronousExportedObjectProxy];
  [TUConversationManagerXPCClient setSynchronousServer:v15];

  if (qword_1006ACEA0 != -1)
  {
    sub_10047ACD8();
  }
}

void sub_1001EB7B4(id a1, CSDClient *a2)
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

void sub_1001EB860(id a1, CSDClient *a2)
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

void sub_1001EB90C(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:TUConversationManagerDidBecomeAvailableNotification object:0];

  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "CPSystemStateObserver XPC post notification success", v3, 2u);
  }
}

id sub_1001EB9A0(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  [v2 startListeningOnMachServiceWithName:@"com.apple.telephonyutilities.callservicesdaemon.conversationmanager"];

  notify_register_check("CSDConversationManagerClientsShouldConnectNotification", (*(a1 + 32) + 8));
  notify_set_state(*(*(a1 + 32) + 8), 0);
  v3 = *(a1 + 32);

  return [v3 notifyClientsToConnectIfNecessary];
}

void sub_1001EBAEC(uint64_t a1)
{
  v1 = [*(a1 + 32) clientManager];
  [v1 invalidate];
}

void sub_1001EC878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001ECAE8(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationManager];
  [v2 setUsingAirplay:*(a1 + 56) onActivitySession:*(a1 + 40) onConversationWithUUID:*(a1 + 48)];
}

void sub_1001ECE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001EE144(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  [v2 addLocalClientObject:*(a1 + 40)];
}

void sub_1001EE24C(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  [v2 removeLocalClientObject:*(a1 + 40)];
}

void sub_1001EE778(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationManager];
  [v2 addCollaborationDictionary:*(a1 + 40) forConversationWithUUID:*(a1 + 48) fromMe:*(a1 + 56)];
}

void sub_1001EE974(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationManager];
  [v2 getNeedsDisclosureOfCollaborationInitiator:*(a1 + 40) forConversationUUID:*(a1 + 48) completionHandler:*(a1 + 56)];
}

void sub_1001EE9CC(uint64_t a1)
{
  v2 = TUConversationManagerCollaborationErrorDomain;
  v5 = NSLocalizedDescriptionKey;
  v6 = @"Client is not entitled to access collaboration disclosures";
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = [NSError errorWithDomain:v2 code:1 userInfo:v3];

  (*(*(a1 + 32) + 16))();
}

void sub_1001EEBD4(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationManager];
  [v2 addDisclosedCollaborationInitiator:*(a1 + 40) toConversationUUID:*(a1 + 48)];
}

void sub_1001EFB38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = [v4 _conversationsByGroupUUID:v5 filteredForClient:a2];
  [v6 updateConversationsByGroupUUID:v7];
}

void sub_1001F038C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 activityAuthorizedBundleIdentifierState];
  [v4 updateActivityAuthorizedBundleIdentifierState:v5];
}

void sub_1001F15F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001F1610(uint64_t a1)
{
  v2 = [[CSDDeviceLockStateObserver alloc] initWithQueue:*(*(a1 + 32) + 16)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  v5 = *(*(a1 + 32) + 80);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001F16E8;
  v6[3] = &unk_10061A740;
  objc_copyWeak(&v7, (a1 + 40));
  [v5 performBlockAfterFirstUnlock:v6];
  objc_destroyWeak(&v7);
}

void sub_1001F16E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device first unlock block invoked, attempting to retrieve saved providers", v6, 2u);
    }

    [WeakRetained retrieveSavedProvidersByIdentifierAndNotify:1 unregister:0];
    v3 = [WeakRetained featureFlags];
    v4 = [v3 isDualSimParityEnabled];

    if (v4)
    {
      v5 = [WeakRetained relayCallProviderDataSource];
      [v5 prepare];
    }
  }
}

id sub_1001F1854(uint64_t a1)
{
  v2 = [*(a1 + 32) localProvidersByIdentifier];
  v3 = [*(a1 + 32) dataSource];
  v4 = [v3 registeredLocalProvidersByIdentifier];
  [v2 addEntriesFromDictionary:v4];

  v5 = [*(a1 + 32) pairedHostDeviceProvidersByIdentifier];
  v6 = [*(a1 + 32) dataSource];
  v7 = [v6 registeredPairedHostDeviceProvidersByIdentifier];
  [v5 addEntriesFromDictionary:v7];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [*(a1 + 32) localProvidersByIdentifier];
  v9 = [v8 allKeys];

  v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    v13 = TUBundleIdentifierPhoneApplication;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        if ([v15 isEqualToString:@"com.apple.coretelephony"])
        {
          v16 = [*(a1 + 32) localProvidersByIdentifier];
          v17 = [v16 objectForKeyedSubscript:v15];
          [v17 setBundleIdentifier:v13];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v11);
  }

  v18 = sub_100004778();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Loaded registered providers", buf, 2u);
  }

  v19 = sub_100004778();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [*(a1 + 32) localProvidersByIdentifier];
    *buf = 138412290;
    v29 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Loaded registered local providers: %@", buf, 0xCu);
  }

  v21 = sub_100004778();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [*(a1 + 32) pairedHostDeviceProvidersByIdentifier];
    *buf = 138412290;
    v29 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Loaded registered relay providers: %@", buf, 0xCu);
  }

  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _unregisterUninstalledProvidersAndNotify:*(a1 + 41)];
  }

  return [*(a1 + 32) _updateProvidersByIdentifierAndNotifyIfCanAccessKeychain:*(a1 + 41)];
}

void sub_1001F2010(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 dataSource];
  [v1 providersChangedForProviderManager:v2 withValidKeychain:{objc_msgSend(v3, "hasSucceededAccessingKeychainOnLastAttempt")}];
}

void sub_1001F2828(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

void sub_1001F2930(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_1001F2A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001F2AA8(uint64_t a1)
{
  v2 = [*(a1 + 32) _providersByIdentifierForRemoteClients:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001F2CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001F2CC0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = objc_opt_class();
    v8 = [*(a1 + 32) localProvidersByIdentifier];
    v5 = [v4 _providersByIdentifierByFilteringForRemoteClientsFromProvidersByIdentifier:?];
  }

  else
  {
    v8 = [v3 localProvidersByIdentifier];
    v5 = [v8 copy];
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1001F2E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001F2E80(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = objc_opt_class();
    v8 = [*(a1 + 32) pairedHostDeviceProvidersByIdentifier];
    v5 = [v4 _providersByIdentifierByFilteringForRemoteClientsFromProvidersByIdentifier:?];
  }

  else
  {
    v8 = [v3 pairedHostDeviceProvidersByIdentifier];
    v5 = [v8 copy];
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1001F3028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001F3040(uint64_t a1)
{
  v2 = [*(a1 + 32) _sortedProvidersForRemoteClients:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

int64_t sub_1001F31E8(id a1, TUCallProvider *a2, TUCallProvider *a3)
{
  v4 = a3;
  v5 = [(TUCallProvider *)a2 localizedName];
  v6 = [(TUCallProvider *)v4 localizedName];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

void sub_1001F3400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001F3424(uint64_t a1)
{
  v2 = [*(a1 + 32) _defaultAppProviderForRemoteClients:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_1001F3990(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_1001F3A88(uint64_t a1)
{
  v2 = [*(a1 + 32) originalRingtoneSoundURL];
  v3 = [v2 lastPathComponent];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [*(a1 + 40) uniqueRingtoneSoundLinkFilenameWithOriginalFilename:v3];
    v7 = [*(a1 + 40) dataSource];
    v8 = [v7 isSymbolicLinkAtURL:v2];

    if (v8)
    {
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Skipping Sandboxing URL as the passed in URL turns out to be a symbolic link: %@", buf, 0xCu);
      }
    }

    else
    {
      v10 = [*(a1 + 40) dataSource];
      v11 = [v10 createLinkIfNecessaryWithFilename:v6 toURL:v2];
      [*(a1 + 32) setRingtoneSoundURL:v11];

      if ([*(a1 + 32) sandboxExtensionHandle] >= 1)
      {
        v12 = sub_100004778();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 32);
          *buf = 138412290;
          v49 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Releasing sandboxExtensionHandle for provider: %@", buf, 0xCu);
        }

        [*(a1 + 32) sandboxExtensionHandle];
        sandbox_extension_release();
      }
    }
  }

  v14 = [*(a1 + 40) localProvidersByIdentifier];
  v15 = [*(a1 + 32) identifier];
  v16 = [v14 objectForKeyedSubscript:v15];
  v17 = [v16 isEqualToCallProvider:*(a1 + 32)];

  if ((v17 & 1) == 0)
  {
    v42 = v4;
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [*(a1 + 40) localProvidersByIdentifier];
      v20 = [*(a1 + 32) identifier];
      v21 = [v19 objectForKeyedSubscript:v20];
      v22 = *(a1 + 32);
      *buf = 138412546;
      v49 = v21;
      v50 = 2112;
      v51 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updating provider from %@ to %@", buf, 0x16u);
    }

    v23 = *(a1 + 32);
    v24 = [*(a1 + 40) localProvidersByIdentifier];
    v25 = [*(a1 + 32) identifier];
    [v24 setObject:v23 forKeyedSubscript:v25];

    v26 = [*(a1 + 40) localProvidersByIdentifier];
    v27 = [*(a1 + 40) dataSource];
    [v27 setRegisteredLocalProvidersByIdentifier:v26];

    v28 = [*(a1 + 40) localProvidersByIdentifier];
    v29 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v28 count]);

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v30 = [*(a1 + 40) localProvidersByIdentifier];
    v31 = [v30 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v44;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v44 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v43 + 1) + 8 * i);
          v36 = [*(a1 + 40) localProvidersByIdentifier];
          v37 = [v36 objectForKeyedSubscript:v35];

          v38 = [v37 ringtoneSoundURL];
          v39 = [v38 lastPathComponent];

          if (v39)
          {
            [v29 addObject:v39];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v32);
    }

    v40 = [*(a1 + 40) dataSource];
    v41 = [v29 copy];
    [v40 removeLinksForFilenamesNotInArray:v41];

    [*(a1 + 40) _updateProvidersByIdentifierAndNotifyIfCanAccessKeychain:1];
    v4 = v42;
  }
}

void sub_1001F3FD8(uint64_t a1)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v25;
    *&v4 = 138412546;
    v22 = v4;
    obj = v2;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [*(a1 + 40) pairedHostDeviceProvidersByIdentifier];
        v11 = [v9 identifier];
        v12 = [v10 objectForKeyedSubscript:v11];
        v13 = [v12 isEqualToCallProvider:v9];

        if ((v13 & 1) == 0)
        {
          v14 = sub_100004778();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [*(a1 + 40) pairedHostDeviceProvidersByIdentifier];
            v16 = [v9 identifier];
            v17 = [v15 objectForKeyedSubscript:v16];
            *buf = v22;
            v29 = v17;
            v30 = 2112;
            v31 = v9;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating relay provider from %@ to %@", buf, 0x16u);
          }

          v18 = [*(a1 + 40) pairedHostDeviceProvidersByIdentifier];
          v19 = [v9 identifier];
          [v18 setObject:v9 forKeyedSubscript:v19];

          v6 = 1;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v5);

    if (v6)
    {
      v20 = [*(a1 + 40) pairedHostDeviceProvidersByIdentifier];
      v21 = [*(a1 + 40) dataSource];
      [v21 setRegisteredPairedHostDeviceProvidersByIdentifier:v20];

      [*(a1 + 40) _updateProvidersByIdentifierAndNotifyIfCanAccessKeychain:1];
    }
  }

  else
  {
  }
}

void sub_1001F4328(uint64_t a1)
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = 0;
    v7 = *v23;
    *&v4 = 138412546;
    v20 = v4;
    obj = v2;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [*(a1 + 40) relayHostDeviceProvidersByIdentifier];
        v11 = [v9 identifier];
        v12 = [v10 objectForKeyedSubscript:v11];
        v13 = [v12 isEqualToCallProvider:v9];

        if ((v13 & 1) == 0)
        {
          v14 = sub_100004778();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [*(a1 + 40) relayHostDeviceProvidersByIdentifier];
            v16 = [v9 identifier];
            v17 = [v15 objectForKeyedSubscript:v16];
            *buf = v20;
            v27 = v17;
            v28 = 2112;
            v29 = v9;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating relay provider from %@ to %@", buf, 0x16u);
          }

          v18 = [*(a1 + 40) relayHostDeviceProvidersByIdentifier];
          v19 = [v9 identifier];
          [v18 setObject:v9 forKeyedSubscript:v19];

          v6 = 1;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v5);

    if (v6)
    {
      [*(a1 + 40) _updateProvidersByIdentifierAndNotifyIfCanAccessKeychain:1];
    }
  }

  else
  {
  }
}

void sub_1001F4720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001F4738(uint64_t a1)
{
  v2 = [*(a1 + 32) userIntentManager];
  *(*(*(a1 + 48) + 8) + 24) = [v2 validateUserIntentForCallSource:*(a1 + 40)];
}

void sub_1001F4940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001F4958(uint64_t a1)
{
  v2 = [*(a1 + 32) userIntentManager];
  *(*(*(a1 + 48) + 8) + 24) = [v2 validateBackgroundCallIntentForCallSource:*(a1 + 40)];
}

void sub_1001F4A90(id *a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138412290;
    *v64 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "dialRequest: %@", buf, 0xCu);
  }

  v4 = objc_retainBlock(a1[6]);
  v5 = [a1[5] featureFlags];
  if ([v5 appProtectionEnabled])
  {
    v6 = [a1[5] protectedAppsUtilities];
    v7 = [a1[4] provider];
    v8 = [v7 bundleIdentifier];
    v9 = [v6 shouldBlockCallWithBundleIdentifier:v8];

    if (v9)
    {
      v10 = [NSString stringWithFormat:@"Cannot launch app because the app is protected for dial request: %@", a1[4]];
      v11 = sub_100004778();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  if (![a1[4] isValid])
  {
    v10 = [NSString stringWithFormat:@"Cannot launch app for invalid dial request: %@", a1[4]];
    v11 = sub_100004778();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v12 = [a1[4] provider];
  v13 = [v12 isSystemProvider];

  if ((v13 & 1) == 0)
  {
    v18 = a1[5];
    v19 = [a1[4] provider];
    v20 = [v19 identifier];
    [v18 _donateUserIntentForProviderWithIdentifier:v20];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v21 = [a1[5] dataSource];
    v22 = [v21 providerIdentifiersForExistingCalls];

    v23 = [v22 countByEnumeratingWithState:&v57 objects:v68 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v58;
      while (2)
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v58 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v57 + 1) + 8 * i);
          v28 = [a1[4] provider];
          v29 = [v28 identifier];
          LODWORD(v27) = [v29 isEqualToString:v27];

          if (!v27)
          {
            v30 = 1;
            goto LABEL_29;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v57 objects:v68 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v30 = 0;
LABEL_29:

    v17 = +[NSMutableDictionary dictionary];
    v31 = [a1[5] dataSource];
    v32 = [v31 isDevicePasscodeLocked];

    if ((v30 & 1) != 0 || v32)
    {
      v41 = sub_100004778();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [a1[5] dataSource];
        v43 = [v42 isDevicePasscodeLocked];
        *buf = 67109376;
        *v64 = v43;
        *&v64[4] = 1024;
        *&v64[6] = v30;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Device is passcode locked (%d) or existing call has different provider (%d). Indicating activity should open in background.", buf, 0xEu);
      }

      v39 = &__kCFBooleanTrue;
      v40 = &FBSOpenApplicationOptionKeyActivateSuspended;
    }

    else
    {
      v33 = [a1[4] launchInBackground];
      v34 = sub_100004778();
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
      if (v33)
      {
        if (v35)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Device is NOT passcode locked, but activity should open in background.", buf, 2u);
        }

        v36 = a1[5];
        v37 = [a1[4] provider];
        v38 = [v37 identifier];
        [v36 _donateBackgroundCallIntentForProviderWithIdentifier:v38];

        [v17 setObject:&__kCFBooleanTrue forKeyedSubscript:FBSOpenApplicationOptionKeyActivateSuspended];
        [v17 setObject:&__kCFBooleanTrue forKeyedSubscript:FBSOpenApplicationOptionKeyUnlockDevice];
        v39 = &off_10063ED80;
        v40 = &FBSOpenApplicationOptionKeyLaunchIntent;
      }

      else
      {
        if (v35)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Device is NOT passcode locked. Indicating activity should open in foreground.", buf, 2u);
        }

        v39 = &__kCFBooleanTrue;
        v40 = &FBSOpenApplicationOptionKeyUnlockDevice;
      }
    }

    [v17 setObject:v39 forKeyedSubscript:*v40];
    v44 = [a1[5] dataSource];
    v45 = [v44 dialAssistedDialRequestForDialRequest:a1[4]];

    v46 = [v45 provider];
    v47 = [v46 bundleIdentifier];

    v48 = [v45 userActivityUsingDeprecatedCallingIntents:{objc_msgSend(a1[5], "appShouldUseDeprecatedCallingIntents:", v47)}];
    v49 = sub_100004778();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *v64 = v48;
      *&v64[8] = 2112;
      v65 = v47;
      v66 = 2112;
      v67 = v17;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Opening user activity %@ for bundle identifier %@ with options %@", buf, 0x20u);
    }

    v50 = [a1[5] dataSource];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_1001F51F8;
    v53[3] = &unk_10061D218;
    v54 = v48;
    v55 = v47;
    v56 = v4;
    v51 = v47;
    v52 = v48;
    [v50 openUserActivity:v52 usingApplicationWithBundleIdentifier:v51 frontBoardOptions:v17 completion:v53];

    v10 = 0;
    goto LABEL_44;
  }

  v10 = [NSString stringWithFormat:@"Cannot launch app for dial request with a system provider: %@", a1[4]];
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
LABEL_13:
    sub_10047AE2C();
  }

LABEL_14:

  if (v4)
  {
    if (v10)
    {
      v14 = TUBundleIdentifierCallServicesDaemon;
      v61 = NSLocalizedDescriptionKey;
      v62 = v10;
      v15 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      v16 = [NSError errorWithDomain:v14 code:1 userInfo:v15];
      (*(v4 + 2))(v4, v16);
    }

    else
    {
      (*(v4 + 2))(v4, 0);
    }

    v17 = v4;
LABEL_44:
  }
}

void sub_1001F51F8(void *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100004778();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v9 = a1[5];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Successfully opened user activity %@ for bundle identifier %@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10047AE94(a1, v5, v7);
  }

  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, v5);
  }
}

void sub_1001F6088(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = [WeakRetained recentlyDeletedCallUUIDsByConversationUUID];
      v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "setting recentlyDeletedCallUUIDsByConversationUUID[%@]: %@ to nil", &v8, 0x16u);
    }

    v7 = [WeakRetained recentlyDeletedCallUUIDsByConversationUUID];
    [v7 setObject:0 forKeyedSubscript:*(a1 + 32)];
  }
}

void sub_1001F751C(uint64_t a1, void *a2, int a3, unsigned int a4, unsigned int a5, void *a6, void *a7, void *a8)
{
  v13 = a2;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = (a1 + 32);
  if ([*(a1 + 32) hasProtoUpgradeSessionUUID])
  {
    v18 = [NSUUID alloc];
    [*v17 protoUpgradeSessionUUID];
    v20 = v19 = v16;
    v21 = [v18 initWithUUIDString:v20];

    v16 = v19;
    if (v21)
    {
      goto LABEL_8;
    }

    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10047AFB4((a1 + 32), v22);
    }
  }

  else
  {
    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *v17;
      *buf = 138412290;
      v87 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[WARN] Did not receive protoUpgradeSessionUUID part of message %@", buf, 0xCu);
    }
  }

  v21 = 0;
LABEL_8:
  v24 = sub_100004778();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v14;
    v26 = *(a1 + 40);
    TULoggableStringForHandle();
    v27 = v80 = v16;
    v28 = [*(a1 + 48) participantDestinationID];
    TULoggableStringForHandle();
    v78 = a1;
    v30 = v29 = a3;
    *buf = 138413826;
    v87 = v13;
    v88 = 2112;
    v89 = v25;
    v90 = 2112;
    v91 = v21;
    v92 = 2112;
    v93 = v15;
    v94 = 2112;
    v95 = v26;
    v14 = v25;
    v96 = 2112;
    v97 = v27;
    v98 = 2112;
    v99 = v30;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Current callUUID: %@, upgradeSessionUUID: %@, conversationUpgradeSessionUUID: %@, existingHandle: %@, upgradeMessageHandle: %@, participantDestination: %@, fromDestination: %@", buf, 0x48u);

    a3 = v29;
    a1 = v78;

    v16 = v80;
  }

  v31 = [*(a1 + 48) participantDestinationID];
  v85 = 0;
  v32 = [v31 _stripPotentialTokenURIWithToken:&v85];
  v79 = v85;

  v84 = 0;
  v33 = [v16 _stripPotentialTokenURIWithToken:&v84];
  v81 = v84;
  if (v13)
  {
    v77 = v15;
    v34 = [*(a1 + 56) callUUIDsByConversationUUID];
    v35 = [*(a1 + 64) UUID];
    v36 = [v34 objectForKeyedSubscript:v35];
    v37 = v36;
    if (v14 && !v36 && v21 && v81 && v79 && ([v79 isEqualToData:v81] & 1) != 0)
    {
      v38 = [v14 isEqual:v21];

      v15 = v77;
      if (v38)
      {
        v39 = *(a1 + 56);
        v40 = [*(a1 + 64) UUID];
        [v39 associateCallUUID:v13 withConversationUUID:v40 waitingToJoin:1];

        v41 = [*(a1 + 64) remoteMembers];
        v42 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v41 count]);

        v43 = [*(a1 + 64) remoteMembers];
        v82[0] = _NSConcreteStackBlock;
        v82[1] = 3221225472;
        v82[2] = sub_1001F7CD4;
        v82[3] = &unk_10061A200;
        v44 = v42;
        v83 = v44;
        [v43 enumerateObjectsUsingBlock:v82];

        v45 = [[CXCallUpdate alloc] initWithTUConversation:*(a1 + 64)];
        [v45 setRemoteParticipantHandles:v44];
        v46 = [v44 anyObject];
        [v45 setRemoteMember:v46];

        v47 = [v45 localSenderIdentityUUID];

        v74 = v45;
        if (!v47)
        {
          v48 = [*(a1 + 56) conversationManager];
          v49 = [*(a1 + 64) initiator];
          v50 = [v48 senderIdentityUUIDForCallerIDHandle:v49];
          [v74 setLocalSenderIdentityUUID:v50];

          v45 = v74;
        }

        v51 = [*(a1 + 56) provider];
        [v51 reportCallWithUUID:v13 updated:v45];

        v52 = objc_alloc_init(CSDConversationJoinContext);
        [(CSDConversationJoinContext *)v52 setVideoEnabled:a4];
        [(CSDConversationJoinContext *)v52 setVideo:a5];
        if (a5)
        {
          v53 = 2;
        }

        else
        {
          v53 = 1;
        }

        [(CSDConversationJoinContext *)v52 setAvMode:v53];
        [(CSDConversationJoinContext *)v52 setPresentationMode:0];
        v54 = [*(a1 + 64) provider];
        [(CSDConversationJoinContext *)v52 setProvider:v54];

        v55 = [*(a1 + 56) conversationManager];
        v56 = [*(a1 + 64) UUID];
        [v55 joinExistingConversationWithUUID:v56 context:v52];

        v57 = sub_100004778();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = [*(a1 + 64) UUID];
          *buf = 138412290;
          v87 = v58;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Starting audio for conversation with conversationUUID %@", buf, 0xCu);
        }

        v59 = [*(a1 + 56) conversationManager];
        v60 = [*(a1 + 64) UUID];
        [v59 startAudioForConversationWithUUID:v60];

        if (a3)
        {
          v61 = sub_100004778();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v62 = *(a1 + 64);
            *buf = 138412290;
            v87 = v62;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Determined that current uplink is muted - muting conversation %@", buf, 0xCu);
          }

          v63 = [*(a1 + 56) conversationManager];
          v64 = [*(a1 + 64) UUID];
          [v63 setUplinkMuted:1 forConversationWithUUID:v64];
        }

        [*(a1 + 56) declineRemoteDevicesForConversation:*(a1 + 64) reason:4];

        v15 = v77;
LABEL_36:

        goto LABEL_37;
      }
    }

    else
    {

      v15 = v77;
    }
  }

  v65 = [*(a1 + 56) conversationManager];
  v66 = [v65 isValidLocalHandle:*(a1 + 40)];

  if ((v66 & 1) == 0)
  {
    v67 = v16;
    v68 = v13;
    v69 = v15;
    v70 = v14;
    v71 = [*(a1 + 56) conversationManager];
    v72 = [*(a1 + 64) remoteMembers];
    v73 = [*(a1 + 64) link];
    v44 = [v71 conversationRepresentedByRemoteMembers:v72 andLink:v73];

    if (!v44 || ![v44 state])
    {
      [*(a1 + 56) reportNewIncomingCallForConversation:*(a1 + 64) fromHandle:*(a1 + 40) isReRing:0 invitationContext:0];
    }

    v14 = v70;
    v15 = v69;
    v13 = v68;
    v16 = v67;
    goto LABEL_36;
  }

LABEL_37:
}

void sub_1001F7CD4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [CXMember alloc];
  v8 = [v3 handles];

  v5 = [v8 anyObject];
  v6 = [CXHandle handleWithTUHandle:v5];
  v7 = [v4 initWithHandle:v6];
  [v2 addObject:v7];
}

void sub_1001F894C(uint64_t a1)
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [*(a1 + 32) UUIDString];
  v5 = [v2 callWithCallUUID:v3];

  if (v5)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:TUCallCenterHaveBeenLetInNotification object:v5];
  }
}

void sub_1001F9104(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationManager];
  v3 = [v2 conversationsByUUID];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  if (![*(a1 + 32) isUnansweredOutgoingOneToOneConversation:v4])
  {
    goto LABEL_15;
  }

  v5 = [*(a1 + 32) callUUIDsByConversationUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v7 = [v6 isEqual:*(a1 + 48)];

  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = [*(a1 + 32) conversationUUIDsUpgradedFromAVLess];
  if (![v8 containsObject:*(a1 + 40)] || objc_msgSend(*(a1 + 56), "state") != 3)
  {
    goto LABEL_10;
  }

  v9 = [*(a1 + 56) remoteMembers];
  if ([v9 count] != 1)
  {

LABEL_10:
    goto LABEL_11;
  }

  v10 = [*(a1 + 56) activeRemoteParticipants];
  if (![v10 count])
  {

LABEL_17:
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 40);
      v22 = 138412290;
      v23 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Downgrading local participant since remote participant did not upgrade before the timeout: %@", &v22, 0xCu);
    }

    v19 = [*(a1 + 32) conversationManager];
    v20 = [*(a1 + 56) UUID];
    [v19 updateLocalParticipantToAVLessWithPresentationMode:1 forConversationUUID:v20];

    v21 = [*(a1 + 32) conversationUUIDsUpgradedFromAVLess];
    [v21 removeObject:*(a1 + 40)];

    goto LABEL_12;
  }

  v11 = [*(a1 + 56) activeRemoteParticipants];
  v12 = [v11 anyObject];
  v13 = [v12 audioVideoMode];

  if (!v13)
  {
    goto LABEL_17;
  }

LABEL_11:
  [*(a1 + 32) cleanupConversationWithCallUUID:*(a1 + 48)];
LABEL_12:
  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 40);
    v22 = 138412290;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Ending unanswered outgoing call for conversation with UUID: %@", &v22, 0xCu);
  }

  v16 = [*(a1 + 32) provider];
  [v16 reportCallWithUUID:*(a1 + 48) endedAtDate:0 reason:3];

LABEL_15:
}

void sub_1001FB274(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [CXMember alloc];
  v7 = [v3 handle];

  v5 = [CXHandle handleWithTUHandle:v7];
  v6 = [v4 initWithHandle:v5];
  [v2 addObject:v6];
}

void sub_1001FB328(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[CXMember alloc] initWithHandle:v3];

  [v2 addObject:v4];
}

void sub_1001FF384(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100004778();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10047B6B0();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Renewed link %@ with new expiration date %@", &v10, 0x16u);
  }
}

void sub_100201DF0(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (!a2 && WeakRetained)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Raise to ear gesture detected, answering incoming call.", v10, 2u);
    }

    [v4 setDetectingRaiseToAnswer:0];
    v6 = +[TUCallCenter sharedInstance];
    v7 = [v4 callCenterObserver];
    v8 = [v7 callContainer];
    v9 = [v8 incomingCall];
    [v6 answerCall:v9];
  }
}

void sub_100201EE8(id a1)
{
  v1 = CUTWeakLinkClass();
  if (v1)
  {
    byte_1006ACEA8 = [v1 isGestureServiceAvailable];
  }
}

void sub_100202980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10020299C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = [WeakRetained callUUIDsByConversationUUID];
    v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v3)
    {
      goto LABEL_14;
    }

    v4 = v3;
    v5 = *v17;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = [v2 conversationManager];
        v9 = [v8 conversationsByUUID];
        v10 = [v9 objectForKeyedSubscript:v7];

        if (v10)
        {
          v11 = [v10 provider];
          if (([v11 isDefaultProvider] & 1) == 0)
          {
            v12 = [v10 provider];
            v13 = [v12 bundleIdentifier];
            v14 = [v2 isProviderForeground:v13];

            if (v14)
            {
              goto LABEL_12;
            }

            v11 = objc_alloc_init(CXCallFailureContext);
            [v11 setFailureReason:3];
            [v2 cleanUpConversationIfNecessaryForConversationUUID:v7 failureContext:v11];
          }
        }

LABEL_12:

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (!v4)
      {
LABEL_14:

        break;
      }
    }
  }
}

void sub_100203EB8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [CXMember alloc];
  v7 = [v3 handle];

  v5 = [CXHandle handleWithTUHandle:v7];
  v6 = [v4 initWithHandle:v5];
  [v2 addObject:v6];
}

void sub_100203F6C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[CXMember alloc] initWithHandle:v3];

  [v2 addObject:v4];
}

uint64_t sub_100204450(uint64_t a1, void *a2)
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
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
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
      if ((v12 >> 3) == 1)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v38 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v38 & 0x7F) << v28;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_54;
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

LABEL_54:
        v35 = 12;
      }

      else
      {
        if (v13 == 3)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 20) |= 2u;
          while (1)
          {
            v40 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v40 & 0x7F) << v21;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v27) = 0;
              goto LABEL_50;
            }
          }

          v27 = (v23 != 0) & ~[a2 hasError];
LABEL_50:
          *(a1 + 16) = v27;
          goto LABEL_60;
        }

        if (v13 != 2)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_60;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          v39 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v39 & 0x7F) << v14;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_58;
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

LABEL_58:
        v35 = 8;
      }

      *(a1 + v35) = v20;
LABEL_60:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100204FC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[CSDRelayConferenceInterface sharedInstance];
    v8 = [*(a1 + 32) uniqueProxyIdentifier];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1002051E4;
    v16[3] = &unk_10061D218;
    v17 = *(a1 + 32);
    v18 = v5;
    v19 = *(a1 + 48);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1002052A0;
    v13[3] = &unk_10061AC68;
    v13[4] = *(a1 + 40);
    v14 = v18;
    v15 = *(a1 + 32);
    [v7 startConferenceForIdentifier:v8 usingTransport:v14 remoteInviteDictionary:v6 didStartHandler:v16 didStopHandler:v13];

    v9 = v17;
  }

  else
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10047BAA4(a1);
    }

    v11 = +[CSDRelayConferenceInterface sharedInstance];
    v12 = [*(a1 + 32) uniqueProxyIdentifier];
    [v11 stopConferenceForIdentifier:v12];

    v9 = +[TUCallCenter sharedInstance];
    [v9 disconnectCall:*(a1 + 32) withReason:8];
  }
}

void sub_1002051E4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) setEndpointOnCurrentDevice:0];
    [*(a1 + 32) setRelayClientTransport:*(a1 + 40)];
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))();
    }
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10047BB10(a1);
    }

    v8 = +[TUCallCenter sharedInstance];
    [v8 disconnectCall:*(a1 + 32) withReason:8];
  }
}

void sub_1002055AC(id a1)
{
  if (qword_1006ACEC0 != -1)
  {
    sub_10047BBF0();
  }

  v2 = off_1006ACEB8;
  v3 = TUBundleIdentifierInCallServiceApplication;

  v2(v3, 1);
}

void sub_100206060(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) cannotRelayAudioOrVideoOnPairedDevice] & 1) == 0)
  {
    [v3 setExpectedRelayClientDestination:*(a1 + 40)];
  }

  if (v3 && [v3 status] != 6)
  {
    v7 = [*(a1 + 48) callStateController];
    [v7 updateClientsWithCall:v3];

    [*(a1 + 48) _launchInCallApplicationForOutgoingCallOnHostIfNecessary];
  }

  else
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10047BD74((a1 + 32));
    }

    v5 = [*(a1 + 48) relayMessagingController];
    v6 = [*(a1 + 32) uniqueProxyIdentifier];
    [v5 sendDialCallFailedForUniqueProxyIdentifier:v6];
  }
}

void sub_100206154(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) relayMessagingController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100206254;
    v8[3] = &unk_10061E8B8;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v9 = v5;
    v10 = v6;
    v11 = *(a1 + 48);
    v7 = [*(a1 + 40) uniqueProxyIdentifier];
    [v4 performBlockOnTransportAvailability:v8 forIdentifier:v7];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100206254(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1002064A8;
    v21[3] = &unk_10061E890;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v22 = v7;
    v23 = v8;
    v9 = v5;
    v24 = v9;
    v25 = *(a1 + 48);
    v10 = objc_retainBlock(v21);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1002066A4;
    v18[3] = &unk_10061AC68;
    v11 = *(a1 + 48);
    v18[4] = *(a1 + 40);
    v19 = v11;
    v12 = v9;
    v20 = v12;
    v13 = objc_retainBlock(v18);
    v14 = +[CSDRelayConferenceInterface sharedInstance];
    [v14 startConferenceForIdentifier:*(a1 + 48) usingTransport:v12 remoteInviteDictionary:v6 didStartHandler:v10 didStopHandler:v13];

    v15 = v22;
  }

  else
  {
    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [*(a1 + 32) typeString];
      *buf = 138412290;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Received %@ message, but the transport didn't become available", buf, 0xCu);
    }

    v15 = +[CSDRelayConferenceInterface sharedInstance];
    [v15 stopConferenceForIdentifier:*(a1 + 48)];
  }
}

void sub_1002064A8(id *a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a1[4] dialRequest];
    v7 = [a1[5] featureFlags];
    v8 = [v7 isDualSimParityEnabled];

    if (v8)
    {
      [a1[5] _updateSenderIdentityBasedOnPreferredSimSettingForDialRequest:v6];
    }

    v9 = +[TUCallCenter sharedInstance];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1002065FC;
    v12[3] = &unk_10061E868;
    v10 = a1[6];
    v11 = a1[5];
    v13 = v10;
    v14 = v11;
    v15 = a1[7];
    [v9 dialWithRequest:v6 completion:v12];
  }

  else
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10047BDFC(a1);
    }
  }
}

void sub_1002065FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 status] != 6)
  {
    [v4 setRelayClientTransport:*(a1 + 32)];
    [*(a1 + 40) _launchInCallApplicationForOutgoingCallOnHostIfNecessary];
  }

  else
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10047BE68(a1);
    }

    v6 = [*(a1 + 40) relayMessagingController];
    [v6 sendDialCallFailedForUniqueProxyIdentifier:*(a1 + 48)];
  }
}

void sub_1002066A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) callWithUniqueProxyIdentifier:*(a1 + 40)];
  v7 = sub_100004778();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v10 = 67109634;
      v11 = a2;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Conference connection stopped (cleanly=%d) for dialed call %@: %@", &v10, 0x1Cu);
    }

    [*(a1 + 32) _conferenceTransport:*(a1 + 48) didStopForCall:v6 cleanly:a2 error:v5];
  }

  else
  {
    if (v8)
    {
      v9 = *(a1 + 40);
      v10 = 67109634;
      v11 = a2;
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Conference connection stopped (cleanly=%d) for dialed call uniqueProxyIdentifier %@: %@", &v10, 0x1Cu);
    }
  }
}

void sub_100206B28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Prepared conference connection with invite dictionary: %@", buf, 0xCu);
  }

  if (v3)
  {
    v5 = [*(a1 + 32) relayMessagingController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100206CDC;
    v12[3] = &unk_10061E908;
    v11 = *(a1 + 32);
    v6 = *(&v11 + 1);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    v13 = v11;
    v14 = v9;
    v15 = *(a1 + 64);
    v10 = [*(a1 + 64) uniqueProxyIdentifier];
    [v5 performBlockOnTransportAvailability:v12 forIdentifier:v10];
  }

  (*(*(a1 + 72) + 16))();
}

void sub_100206CDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100206F4C;
    v23[3] = &unk_10061BCD8;
    v7 = *(a1 + 40);
    v23[4] = *(a1 + 32);
    v24 = v7;
    v8 = v5;
    v25 = v8;
    v26 = *(a1 + 48);
    v27 = *(a1 + 56);
    v9 = objc_retainBlock(v23);
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100207068;
    v19 = &unk_10061AC68;
    v20 = *(a1 + 32);
    v21 = *(a1 + 56);
    v10 = v8;
    v22 = v10;
    v11 = objc_retainBlock(&v16);
    v12 = [CSDRelayConferenceInterface sharedInstance:v16];
    [v12 startConferenceForIdentifier:*(a1 + 56) usingTransport:v10 remoteInviteDictionary:v6 didStartHandler:v9 didStopHandler:v11];
  }

  else
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 64) typeString];
      *buf = 138412290;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Received %@ message, but the transport didn't become available", buf, 0xCu);
    }

    v15 = +[CSDRelayConferenceInterface sharedInstance];
    [v15 stopConferenceForIdentifier:*(a1 + 56)];
  }
}

void sub_100206F4C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) callStateController];
    v7 = [v6 performJoinConversation:*(a1 + 40)];

    if (v7 && [v7 status]!= 6)
    {
      [v7 setRelayClientTransport:*(a1 + 48)];
      [v7 setExpectedRelayClientDestination:*(a1 + 56)];
      [*(a1 + 32) _launchInCallApplicationForOutgoingCallOnHostIfNecessary];
    }

    else
    {
      v8 = sub_100004778();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10047BF40((a1 + 40));
      }

      v9 = [*(a1 + 32) relayMessagingController];
      [v9 sendDialCallFailedForUniqueProxyIdentifier:*(a1 + 64)];
    }
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10047BED4(a1);
    }
  }
}

void sub_100207068(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) callWithUniqueProxyIdentifier:*(a1 + 40)];
  v7 = sub_100004778();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v10 = 67109634;
      v11 = a2;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Conference connection stopped (cleanly=%d) for joined call %@: %@", &v10, 0x1Cu);
    }

    [*(a1 + 32) _conferenceTransport:*(a1 + 48) didStopForCall:v6 cleanly:a2 error:v5];
  }

  else
  {
    if (v8)
    {
      v9 = *(a1 + 40);
      v10 = 67109634;
      v11 = a2;
      v12 = 2112;
      v13 = v9;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Conference connection stopped (cleanly=%d) for joined call uniqueProxyIdentifier %@: %@", &v10, 0x1Cu);
    }
  }
}

void sub_1002077F0(uint64_t a1)
{
  v5 = [[TUAnswerRequest alloc] initWithCall:*(a1 + 32)];
  v2 = [*(a1 + 40) sourceIdentifier];
  [v5 setSourceIdentifier:v2];

  [v5 setWantsHoldMusic:{objc_msgSend(*(a1 + 40), "wantsHoldMusic")}];
  [v5 setPauseVideoToStart:{objc_msgSend(*(a1 + 40), "wantsHoldMusic")}];
  if ([*(a1 + 32) isVideo] && (objc_msgSend(*(a1 + 40), "hasProtoVideo") & 1) != 0)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  [v5 setBehavior:v3];
  v4 = +[TUCallCenter sharedInstance];
  [v4 answerWithRequest:v5];
}

BOOL sub_100208060(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  LODWORD(v2) = [v2 status];
  v4 = [v3 status];

  return v2 != v4;
}

void sub_1002083C0(uint64_t a1)
{
  [*(a1 + 32) setEndpointOnCurrentDevice:0];
  v2 = +[TUCallCenter sharedInstance];
  [v2 endActiveAndAnswerCall:*(a1 + 32)];
}

void sub_1002085A8(uint64_t a1)
{
  [*(a1 + 32) setEndpointOnCurrentDevice:0];
  v2 = +[TUCallCenter sharedInstance];
  [v2 endHeldAndAnswerCall:*(a1 + 32)];
}

void sub_100208790(uint64_t a1)
{
  [*(a1 + 32) setEndpointOnCurrentDevice:0];
  v2 = +[TUCallCenter sharedInstance];
  [v2 holdActiveAndAnswerCall:*(a1 + 32)];
}

BOOL sub_100208AD0(id a1, TUCall *a2)
{
  v2 = a2;
  if ([(TUCall *)v2 isHostedOnCurrentDevice])
  {
    v3 = [(TUCall *)v2 hardPauseDigitsState]== 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100209570(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

  if (v3)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Pushing hosted call: %@", buf, 0xCu);
    }

    [*(a1 + 32) setWantsHoldMusic:0];
    v9 = [*(a1 + 40) relayMessagingController];
    v10 = [*(a1 + 32) uniqueProxyIdentifier];
    [v9 performBlockOnTransportAvailability:&v15 forIdentifier:v10];
  }

  else
  {
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = (a1 + 32);
    if (([v11 _endCallWithActiveReceptionistState:v12 reason:3] & 1) == 0)
    {
      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10047BFEC(v13);
      }

      [*v13 setEndpointOnCurrentDevice:1];
      [*v13 setExpectedRelayClientDestination:0];
    }
  }
}

void sub_10020974C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[CSDRelayConferenceInterface sharedInstance];
    v8 = [*(a1 + 32) uniqueProxyIdentifier];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100209930;
    v19[3] = &unk_10061AC68;
    v19[4] = *(a1 + 32);
    v9 = v5;
    v10 = *(a1 + 40);
    v20 = v9;
    v21 = v10;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1002099E8;
    v16[3] = &unk_10061AC68;
    v16[4] = v10;
    v11 = v9;
    v12 = *(a1 + 32);
    v17 = v11;
    v18 = v12;
    [v7 startConferenceForIdentifier:v8 usingTransport:v11 remoteInviteDictionary:v6 didStartHandler:v19 didStopHandler:v16];
  }

  else if (([*(a1 + 40) _endCallWithActiveReceptionistState:*(a1 + 32) reason:2] & 1) == 0)
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10047C054((a1 + 32));
    }

    [*(a1 + 32) setEndpointOnCurrentDevice:1];
    [*(a1 + 32) setExpectedRelayClientDestination:0];
    v14 = +[CSDRelayConferenceInterface sharedInstance];
    v15 = [*(a1 + 32) uniqueProxyIdentifier];
    [v14 stopConferenceForIdentifier:v15];
  }
}

void sub_100209930(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if ([*(a1 + 32) receptionistState])
    {
      [*(a1 + 32) setUplinkMuted:0];
    }

    [*(a1 + 32) setRelayClientTransport:*(a1 + 40)];
    [*(a1 + 32) setScreening:0];
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = a1 + 32;
    if (([*(v6 + 16) _endCallWithActiveReceptionistState:v7 reason:1] & 1) == 0)
    {
      v8 = sub_100004778();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10047C0BC(v6);
      }

      [*v6 setEndpointOnCurrentDevice:1];
    }
  }
}

void sub_10020A30C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100004778();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10047C200();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Performed relayed TUSmartHoldingRequest %@", &v7, 0xCu);
  }
}

void *sub_10020A620(void *a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10020A6C4;
  v4[3] = &unk_10061EA60;
  v5 = a1;
  v1 = v5;
  v2 = objc_retainBlock(v4);

  return v2;
}

uint64_t sub_10020B968(uint64_t a1, void *a2)
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

      if (v13 != 3)
      {
        if (v13 == 4)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            LOBYTE(v33[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v33[0] & 0x7F) << v21;
            if ((v33[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
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
            v20 = v23;
          }

LABEL_53:
          v30 = 16;
          goto LABEL_54;
        }

LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_55;
      }

      v29 = objc_alloc_init(CSDMessagingSmartHoldingEvent);
      [a1 addEvents:v29];
      v33[0] = 0;
      v33[1] = 0;
      if (!PBReaderPlaceMark() || !sub_1000DE104(v29, a2))
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
      v27 = PBReaderReadString();
      v28 = *(a1 + 24);
      *(a1 + 24) = v27;

      goto LABEL_55;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 32) |= 2u;
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
      v30 = 20;
LABEL_54:
      *(a1 + v30) = v20;
      goto LABEL_55;
    }

    goto LABEL_40;
  }

  return [a2 hasError] ^ 1;
}

void sub_10020C7FC(uint64_t a1)
{
  v16 = 0;
  v2 = [[CSDSandboxExtensionDirectory alloc] initWithName:@"Ringtones" error:&v16];
  v3 = v16;
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = v2;

  if (!*(*(a1 + 32) + 40))
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10047C2E0();
    }
  }

  v7 = objc_alloc_init(CSDCallCenterObserver);
  v8 = *(a1 + 32);
  v9 = *(v8 + 48);
  *(v8 + 48) = v7;

  [*(*(a1 + 32) + 48) setTriggers:1];
  [*(*(a1 + 32) + 48) setDelegate:?];
  v10 = +[NSMutableSet set];
  v11 = *(a1 + 32);
  v12 = *(v11 + 56);
  *(v11 + 56) = v10;

  *(*(a1 + 32) + 8) = 0;
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 72), *(a1 + 48));
  v13 = *(a1 + 32);
  v14 = *(v13 + 24);
  *(v13 + 24) = &stru_10061EAF0;

  [TUCallCapabilities addDelegate:*(a1 + 32) queue:*(a1 + 56)];
  v15 = +[NSDistributedNotificationCenter defaultCenter];
  [v15 addObserver:*(a1 + 32) selector:"handleApplicationUnregisteredNotification:" name:@"com.apple.LaunchServices.applicationUnregistered" object:0];

  [*(a1 + 32) moveExistingPreferencesToKeychain];
}

id sub_10020C98C(id a1, NSString *a2)
{
  v2 = CFPreferencesCopyAppValue(a2, TUBundleIdentifierTelephonyUtilitiesFramework);

  return v2;
}

void sub_10020E718(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 installedProvidersChangedForDataSource:*(a1 + 32)];
}

void sub_10020EADC(id a1)
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"shouldTraceSignposts", TUBundleIdentifierTelephonyUtilitiesFramework, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v2 = AppBooleanValue == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  byte_1006ACEC8 = v3;
}

void sub_10020EEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10020EECC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [AVCSessionParticipant alloc];
  v6 = [v3 identifier];
  v7 = [v3 avcData];

  v8 = [WeakRetained queue];
  v9 = [v5 initWithParticipantID:v6 data:v7 delegate:WeakRetained queue:v8];

  return v9;
}

void sub_10020F1A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

__CFString *sub_10020F1BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [objc_opt_class() defaultConfiguration];
  [(__CFString *)v11 setReportingHierarchyToken:v9];

  [(__CFString *)v11 setOneToOneModeEnabled:*(a1 + 72)];
  v12 = [*(a1 + 40) conversationID];
  [(__CFString *)v11 setConversationID:v12];

  v13 = [*(a1 + 40) timebase];
  [(__CFString *)v11 setConversationTimeBase:v13];

  [(__CFString *)v11 setServiceName:*(a1 + 48)];
  [(__CFString *)v11 setSessionMode:*(a1 + 64)];
  v14 = [(__CFString *)v11 abTestConfiguration];

  v15 = sub_100004778();
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if ([*(a1 + 56) isAuthTagEnabled])
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      if ([*(a1 + 56) isTLEEnabled])
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      v19 = [*(a1 + 56) isTLEUPlusOneEnabled];
      v29 = 138412802;
      if (v19)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v30 = v17;
      v31 = 2112;
      v32 = v18;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "testConfiguration: isAuthTagEnabled: %@, isTLEEnabled: %@, isTLEUPlusOneEnabled: %@", &v29, 0x20u);
    }

    v21 = [*(a1 + 56) isAuthTagEnabled];
    v22 = [(__CFString *)v11 abTestConfiguration];
    [v22 setOneToOneAuthenticationTagEnabled:v21];

    v23 = [*(a1 + 56) isTLEEnabled];
    v24 = [(__CFString *)v11 abTestConfiguration];
    [v24 setGftTLEEnabled:v23];

    v25 = [*(a1 + 56) isTLEUPlusOneEnabled];
    v16 = [(__CFString *)v11 abTestConfiguration];
    [v16 setP2pEncryptionEnabled:v25];
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_10047C6D4();
  }

  v26 = [[AVCSession alloc] initWithTransportToken:v10 configuration:v11 delegate:*(a1 + 32) queue:v8];
  v27 = sub_100004778();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138412546;
    v30 = v26;
    v31 = 2112;
    v32 = v11;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Created AVCSession %@ with config: %@", &v29, 0x16u);
  }

  return v26;
}

id sub_10020F4C8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [[AVCScreenCapture alloc] initWithDelegate:WeakRetained withConfig:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1002111A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002111CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained isOneToOneModeEnabled])
    {
      v4 = [v3 shouldDisableOneToOneModeForScreenShare] ^ 1;
    }

    else
    {
      v4 = 1;
    }

    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v4)
      {
        v6 = @"YES";
      }

      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Determined shouldSetScreenEnabled: %@", &v12, 0xCu);
    }

    v7 = sub_100004778();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v8)
      {
        if (*(a1 + 48))
        {
          v9 = @"YES";
        }

        else
        {
          v9 = @"NO";
        }

        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating session screenEnabled: %@", &v12, 0xCu);
      }

      v10 = *(a1 + 48);
      v11 = [v3 session];
      [v11 setScreenEnabled:v10];

      if (*(a1 + 48) == 1)
      {
        [v3 startAVCScreenCaptureWithAttributes:*(a1 + 32) preferImmediateActivation:0 screenControlEnabled:0 capturesCursor:1];
      }
    }

    else
    {
      if (v8)
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not setting screenEnabled since oneToOneModeEnabled is YES", &v12, 2u);
      }
    }
  }
}

void sub_100211A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100211A68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setAvcScreenCapture:0];
    v4 = [v3 captureSessionCreationBlock];
    v5 = v4[2](v4, *(a1 + 32));
    [v3 setAvcScreenCapture:v5];

    v6 = [v3 avcScreenCapture];
    [v6 startCapture];

    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 avcScreenCapture];
      v9 = *(a1 + 32);
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Started capture of %@ with configuration: %@", &v11, 0x16u);
    }

    v10 = [*(a1 + 40) clientBundleIDForAVCSession];
    sub_10022B084(v10, 1);
  }
}

void sub_100211BC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained avcScreenCapture];
    v5 = [v4 updateScreenCaptureWithConfig:*(a1 + 32)];

    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 avcScreenCapture];
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updated capture=%@ with configuration=%@", &v9, 0x16u);
    }
  }
}

void sub_100212484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002124AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "oneToOne transition completed, re-requesting addParticipant", v4, 2u);
    }

    [WeakRetained addParticipant:*(a1 + 32) withVideoEnabled:*(a1 + 48) audioPaused:*(a1 + 49) screenEnabled:*(a1 + 50)];
  }
}

void sub_1002128B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002128D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 48);
      v6 = *(a1 + 49);
      v7 = *(a1 + 50);
      *v19 = 138413058;
      *&v19[4] = v4;
      *&v19[12] = 1024;
      *&v19[14] = v5;
      *&v19[18] = 1024;
      *&v19[20] = v6;
      LOWORD(v20) = 1024;
      *(&v20 + 2) = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "addParticipant: %@ videoEnabled: %d audioPaused: %d screenEnabled: %d", v19, 0x1Eu);
    }

    v8 = [WeakRetained avcSessionParticipantCreationBlock];
    v9 = v8[2](v8, *(a1 + 32));

    [v9 setAudioPaused:*(a1 + 49)];
    [v9 setScreenEnabled:*(a1 + 50)];
    *v19 = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *&v19[8] = _Q0;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    [v9 setVideoPositionalInfo:v19];
    v15 = [v9 uuid];
    [*(a1 + 32) setAvcIdentifier:v15];

    v16 = [WeakRetained remoteParticipantsByIdentifier];
    v17 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) identifier]);
    [v16 setObject:v9 forKeyedSubscript:v17];

    v18 = [WeakRetained session];
    [v18 addParticipant:v9];
  }
}

void sub_100212EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100212EF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "oneToOne transition completed, re-requesting removeParticipant", v4, 2u);
    }

    [WeakRetained removeParticipant:*(a1 + 32)];
  }
}

void sub_100216DB4(uint64_t a1)
{
  v2 = (a1 + 56);
  v3 = *(a1 + 56);
  v4 = sub_100004778();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56);
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = 138412802;
      v11 = v7;
      v12 = 1024;
      v13 = v6;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "screenCapture: %@ didStart: %d, captureWithError: %@", &v10, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10047CD24(a1, v2);
  }

  v9 = [*(a1 + 48) delegate];
  [v9 session:*(a1 + 48) screenCaptureDidStart:*(a1 + 56) withError:*(a1 + 40)];
}

void sub_100217038(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) captureSessionQueue];
    v3 = [v2 count];

    if (v3)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v4 = [*(a1 + 32) captureSessionQueue];
      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v15;
        do
        {
          v8 = 0;
          do
          {
            if (*v15 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v14 + 1) + 8 * v8);
            v10 = sub_100004778();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *v13 = 0;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "executing queued up block since capture session stop succeeded", v13, 2u);
            }

            (*(v9 + 16))(v9);
            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v6);
      }
    }

    else
    {
      [*(a1 + 32) setAvcScreenCapture:0];
    }
  }

  v11 = [*(a1 + 32) captureSessionQueue];
  [v11 removeAllObjects];

  v12 = [*(a1 + 32) delegate];
  [v12 session:*(a1 + 32) screenCaptureDidStop:*(a1 + 48) withError:*(a1 + 40)];
}

void sub_100217388(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(a1 + 32))
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10047CDB8(v1);
    }
  }

  else
  {
    v2 = [[TUCallScreenShareAttributes alloc] initWithScreenCaptureAttributes:*(a1 + 40)];
    if ([*(a1 + 40) contentType] == 2 || (objc_msgSend(*(a1 + 48), "mostRecentScreenShareAttributes"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isSignificantChangeFromAttributes:", v2), v4, v5))
    {
      v6 = sub_100004778();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Restarting capture due to change in capture content", buf, 2u);
      }

      v7 = [*(a1 + 48) delegate];
      [v7 session:*(a1 + 48) screenShareAttributesUpdated:v2];
    }

    else
    {
      v7 = sub_100004778();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not restarting capture since content attributes are similar", v8, 2u);
      }
    }
  }
}

void sub_100219060(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100219134;
    block[3] = &unk_100619E58;
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v13 = v9;
    dispatch_async(v6, block);
  }
}

void sub_10021A6C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10021A6DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 telephonyCallCapabilitiesChanged];
}

int64_t sub_10021DB60(id a1, CSDThumperAccount *a2, CSDThumperAccount *a3)
{
  v4 = a3;
  v5 = [(CSDThumperAccount *)a2 accountID];
  v6 = [(CSDThumperAccount *)v4 accountID];

  v7 = TUStringsAreCaseInsensitiveEqual();
  return v7;
}

int64_t sub_10021DBD0(id a1, CSDThumperAccount *a2, CSDThumperAccount *a3)
{
  v4 = a3;
  v5 = [(CSDThumperAccount *)a2 accountID];
  v6 = [(CSDThumperAccount *)v4 accountID];

  v7 = TUStringsAreCaseInsensitiveEqual();
  return v7;
}

uint64_t sub_10021EB8C(uint64_t a1, void *a2)
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
        v46 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46 & 0x7F) << v5;
        if ((v46 & 0x80) == 0)
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
        switch(v13)
        {
          case 4:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              v50 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v50 & 0x7F) << v30;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                LOBYTE(v27) = 0;
                goto LABEL_66;
              }
            }

            v27 = (v32 != 0) & ~[a2 hasError];
LABEL_66:
            v44 = 32;
            break;
          case 5:
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 36) |= 4u;
            while (1)
            {
              v49 = 0;
              v41 = [a2 position] + 1;
              if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
              {
                v43 = [a2 data];
                [v43 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v40 |= (v49 & 0x7F) << v38;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v11 = v39++ >= 9;
              if (v11)
              {
                LOBYTE(v27) = 0;
                goto LABEL_74;
              }
            }

            v27 = (v40 != 0) & ~[a2 hasError];
LABEL_74:
            v44 = 33;
            break;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 36) |= 8u;
            while (1)
            {
              v48 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v48 & 0x7F) << v21;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                LOBYTE(v27) = 0;
                goto LABEL_72;
              }
            }

            v27 = (v23 != 0) & ~[a2 hasError];
LABEL_72:
            v44 = 34;
            break;
          default:
LABEL_52:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_76;
        }

        *(a1 + v44) = v27;
      }

      else
      {
        if (v13 == 1)
        {
          v28 = PBReaderReadString();
          v29 = 24;
LABEL_55:
          v37 = *(a1 + v29);
          *(a1 + v29) = v28;

          goto LABEL_76;
        }

        if (v13 == 2)
        {
          v28 = PBReaderReadString();
          v29 = 16;
          goto LABEL_55;
        }

        if (v13 != 3)
        {
          goto LABEL_52;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          v47 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v47 & 0x7F) << v14;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
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
          v20 = v16;
        }

LABEL_70:
        *(a1 + 8) = v20;
      }

LABEL_76:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10021F9E8(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1006ACEE8;
  qword_1006ACEE8 = v1;
}

void sub_100220128(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v33 = *(a1 + 32);
    os_unfair_lock_lock(v33 + 2);
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 24);
    v6 = [v4 identifier];
    [v5 setObject:v4 forKeyedSubscript:v6];

    v7 = [*(a1 + 32) beginListeningBlock];

    if (v7)
    {
      v8 = [*(a1 + 32) beginListeningBlock];
      v9 = [*(a1 + 40) service];
      (v8)[2](v8, v9);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = [*(a1 + 32) pidToCachedProviderIdentifiers];
    v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v11)
    {
      v12 = *v35;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          v15 = [*(a1 + 32) pidToCachedProviderIdentifiers];
          v16 = [v15 objectForKeyedSubscript:v14];
          v17 = [*(a1 + 48) identifier];
          v18 = [v16 containsObject:v17];

          if (v18)
          {
            v19 = [*(a1 + 32) pidToProviderIdentifiers];
            v20 = [v19 objectForKeyedSubscript:v14];
            v21 = v20 == 0;

            if (v21)
            {
              v22 = objc_alloc_init(NSMutableSet);
              v23 = [*(a1 + 32) pidToProviderIdentifiers];
              [v23 setObject:v22 forKeyedSubscript:v14];
            }

            v24 = [*(a1 + 32) pidToProviderIdentifiers];
            v25 = [v24 objectForKeyedSubscript:v14];
            v26 = [*(a1 + 48) identifier];
            v27 = [v26 copy];
            [v25 addObject:v27];

            v28 = [*(a1 + 32) pidToCachedProviderIdentifiers];
            v29 = [v28 objectForKeyedSubscript:v14];
            v30 = [*(a1 + 48) identifier];
            [v29 removeObject:v30];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v11);
    }

    os_unfair_lock_unlock(v33 + 2);
    v3 = v32;
  }

  v31 = v3;
  (*(*(a1 + 56) + 16))();
}

void sub_1002212C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002212F0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [NSNumber alloc];
  v5 = [v3 pid];

  v6 = [v4 initWithInt:v5];
  if (WeakRetained)
  {
    v7 = [WeakRetained pidToProcessHandle];
    [v7 setObject:0 forKeyedSubscript:v6];

    v8 = [WeakRetained pidToProviderIdentifiers];
    [v8 setObject:0 forKeyedSubscript:v6];

    v9 = [WeakRetained pidToCachedProviderIdentifiers];
    [v9 setObject:0 forKeyedSubscript:v6];
  }
}

void sub_1002219A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) setLocallyHasStartedOutgoing];
    [*(a1 + 32) setInitialLinkType:{objc_msgSend(v5, "initialLinkType")}];
    [*(a1 + 32) startConferenceForDialedCallWithTransport:v5 remoteInviteDictionary:v6];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Transport did not become available when dialing call %@", &v9, 0xCu);
    }

    [*(a1 + 32) stopConference];
  }
}

void sub_100221F58(uint64_t a1, char a2, char a3)
{
  if ((a2 & 1) == 0)
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10047CF14(a1);
    }

    v7 = *(a1 + 32);
    v8 = 9;
    goto LABEL_11;
  }

  if ((a3 & 1) == 0)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10047CF7C(a1);
    }

    v7 = *(a1 + 32);
    v8 = 8;
LABEL_11:
    [v7 setLocallyDisconnectedWithReasonIfNone:v8];
    return;
  }

  if ([*(a1 + 32) isEndpointOnCurrentDevice])
  {
    v4 = [*(a1 + 40) relayMessagingController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100222098;
    v10[3] = &unk_10061EE88;
    v11 = *(a1 + 32);
    v5 = [*(a1 + 32) uniqueProxyIdentifier];
    [v4 performBlockOnTransportAvailability:v10 forIdentifier:v5];
  }
}

void sub_100222098(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) setLocallyHasStartedOutgoing];
    [*(a1 + 32) setInitialLinkType:{objc_msgSend(v5, "initialLinkType")}];
    [*(a1 + 32) startConferenceForDialedCallWithTransport:v5 remoteInviteDictionary:v6];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Transport did not become available when dialing call %@", &v9, 0xCu);
    }

    [*(a1 + 32) stopConference];
  }
}