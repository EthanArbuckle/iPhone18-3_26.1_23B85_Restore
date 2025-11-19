void sub_1000011E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1000017DC(uint64_t a1)
{
  sub_100001834();
  result = objc_getClass("ICCloudKitSyncer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100028C10 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100010CA8();
    return sub_100001834();
  }

  return result;
}

uint64_t sub_100001834()
{
  v3[0] = 0;
  if (!qword_100028C18)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100001934;
    v3[4] = &unk_1000205A0;
    v3[5] = v3;
    v4 = off_100020588;
    v5 = 0;
    qword_100028C18 = _sl_dlopen();
  }

  v0 = qword_100028C18;
  v1 = v3[0];
  if (!qword_100028C18)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100001934(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100028C18 = result;
  return result;
}

void *sub_1000019A8(uint64_t a1)
{
  v2 = sub_100001834();
  result = dlsym(v2, "ICCloudContextErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100028C20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000019F8(uint64_t a1)
{
  v2 = sub_100001834();
  result = dlsym(v2, "ICCloudContextErrorSyncingDisabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100028C28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100001B88(id a1)
{
  qword_100028C38 = objc_alloc_init(BYDaemonProximityController);

  _objc_release_x1();
}

void sub_100001ED0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 96));
  _Unwind_Resume(a1);
}

void sub_100001F20(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShowingPIN:1];
  v6 = [WeakRetained delegate];
  [v6 displayProximityPinCode:v5 visual:(a2 >> 8) & 1];
}

void sub_100001FA8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShowingPIN:0];
  v4 = [WeakRetained delegate];
  [v4 proximitySetupCompleted:v3];
}

void sub_100002020(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 279)
    {
      if (a2 > 709)
      {
        if (a2 <= 899)
        {
          if (a2 <= 802)
          {
            if (a2 == 710)
            {
              v7 = "AudioPasscodeEnded";
              goto LABEL_212;
            }

            if (a2 == 800)
            {
              v7 = "AuthAccountsStart";
              goto LABEL_212;
            }

            goto LABEL_211;
          }

          if (a2 == 803)
          {
            v7 = "AuthAccountsiCloudProgress";
            goto LABEL_212;
          }

          if (a2 == 804)
          {
            v7 = "AuthAccountsStoreProgress";
            goto LABEL_212;
          }

          if (a2 != 805)
          {
            goto LABEL_211;
          }

          v7 = "AuthAccountsGameCenterProgress";
        }

        else
        {
          if (a2 <= 999)
          {
            switch(a2)
            {
              case 900:
                v7 = "SU-No-SetupScanAttempt";
                break;
              case 901:
                v7 = "SU-No-SetupStatusUpdate";
                break;
              case 902:
                v7 = "SU-No-SetupWipeWifi";
                break;
              case 903:
                v7 = "SU-No-SetupCancelled";
                break;
              case 904:
                v7 = "SU-No-SetupObliterate";
                break;
              case 905:
                v7 = "SU-No-SetupCannotCancel";
                break;
              case 906:
                v7 = "SysDrop AirDrop Event";
                break;
              case 907:
                v7 = "SysDrop Sysdiagnose Event";
                break;
              case 908:
                v7 = "SysDrop Cancel Event";
                break;
              case 909:
                v7 = "File Transfer Progress Event";
                break;
              case 910:
                v7 = "File Transfer Completed Event";
                break;
              case 911:
                v7 = "iOSWiFiSetup";
                break;
              case 912:
                v7 = "HKPrimaryResidentSSIDFetchStart";
                break;
              case 913:
                v7 = "LoggingProfileTransfer";
                break;
              default:
                goto LABEL_211;
            }

            goto LABEL_212;
          }

          if (a2 <= 1099)
          {
            if (a2 == 1000)
            {
              v7 = "SecureIntentStart";
              goto LABEL_212;
            }

            if (a2 == 1001)
            {
              v7 = "SecureIntentFinish";
              goto LABEL_212;
            }

            goto LABEL_211;
          }

          if (a2 == 1100)
          {
            v7 = "OneTimeCodeDetected";
            goto LABEL_212;
          }

          if (a2 == 2000)
          {
            v7 = "DependentStart";
            goto LABEL_212;
          }

          if (a2 != 2001)
          {
            goto LABEL_211;
          }

          v7 = "DependentEnd";
        }
      }

      else if (a2 <= 499)
      {
        if (a2 > 400)
        {
          if (a2 > 419)
          {
            switch(a2)
            {
              case 420:
                v7 = "FileTransferReady";
                goto LABEL_212;
              case 430:
                v7 = "eSimExternal2FAStart";
                goto LABEL_212;
              case 431:
                v7 = "eSimExternal2FAStop";
                goto LABEL_212;
            }

            goto LABEL_211;
          }

          if (a2 == 401)
          {
            v7 = "PINPair";
            goto LABEL_212;
          }

          if (a2 == 410)
          {
            v7 = "MigrateStart";
            goto LABEL_212;
          }

          if (a2 != 411)
          {
            goto LABEL_211;
          }

          v7 = "MigrateStop";
        }

        else
        {
          if (a2 > 299)
          {
            switch(a2)
            {
              case 300:
                v7 = "BackupProgress";
                goto LABEL_212;
              case 310:
                v7 = "SyncProgress";
                goto LABEL_212;
              case 400:
                v7 = "StopSetup";
                goto LABEL_212;
            }

            goto LABEL_211;
          }

          if (a2 == 280)
          {
            v7 = "TVLCalFailed";
            goto LABEL_212;
          }

          if (a2 == 281)
          {
            v7 = "TVLCalTryAgain";
            goto LABEL_212;
          }

          if (a2 != 282)
          {
            goto LABEL_211;
          }

          v7 = "TVLCalFinal";
        }
      }

      else if (a2 <= 554)
      {
        if (a2 > 529)
        {
          if (a2 == 530)
          {
            v7 = "SiriDialogBHome";
            goto LABEL_212;
          }

          if (a2 == 540)
          {
            v7 = "SiriDialogBNews";
            goto LABEL_212;
          }

          if (a2 != 550)
          {
            goto LABEL_211;
          }

          v7 = "SiriDialogBWeather";
        }

        else
        {
          if (a2 == 500)
          {
            v7 = "SiriWelcome";
            goto LABEL_212;
          }

          if (a2 == 510)
          {
            v7 = "SiriDialogA";
            goto LABEL_212;
          }

          if (a2 != 520)
          {
            goto LABEL_211;
          }

          v7 = "SiriDialogBStart";
        }
      }

      else
      {
        if (a2 <= 569)
        {
          switch(a2)
          {
            case 555:
              v7 = "SiriDialogBClock";
              goto LABEL_212;
            case 558:
              v7 = "SiriDialogBMusic";
              goto LABEL_212;
            case 560:
              v7 = "SiriDialogCMusic";
              goto LABEL_212;
          }

          goto LABEL_211;
        }

        if (a2 > 599)
        {
          if (a2 == 600)
          {
            v7 = "SiriSkipDemo";
            goto LABEL_212;
          }

          if (a2 == 700)
          {
            v7 = "StopSetupLEDs";
            goto LABEL_212;
          }

          goto LABEL_211;
        }

        if (a2 == 570)
        {
          v7 = "SiriDialogCNews";
          goto LABEL_212;
        }

        if (a2 != 580)
        {
          goto LABEL_211;
        }

        v7 = "SiriDialogCWeather";
      }
    }

    else if (a2 <= 121)
    {
      if (a2 > 69)
      {
        if (a2 > 95)
        {
          if (a2 <= 98)
          {
            if (a2 == 96)
            {
              v7 = "SetupFinished";
            }

            else if (a2 == 97)
            {
              v7 = "SetupResumed";
            }

            else
            {
              v7 = "SetupSuspend";
            }

            goto LABEL_212;
          }

          if (a2 == 99)
          {
            v7 = "SetupPeerSWUpdate";
            goto LABEL_212;
          }

          if (a2 == 100)
          {
            v7 = "Finished";
            goto LABEL_212;
          }

          if (a2 != 120)
          {
            goto LABEL_211;
          }

          v7 = "CheckingiCloud";
        }

        else if (a2 > 91)
        {
          if (a2 == 92)
          {
            v7 = "StepStart";
            goto LABEL_212;
          }

          if (a2 == 94)
          {
            v7 = "StepFinish";
            goto LABEL_212;
          }

          if (a2 != 95)
          {
            goto LABEL_211;
          }

          v7 = "PreFinish";
        }

        else
        {
          if (a2 == 70)
          {
            v7 = "SecurityFinish";
            goto LABEL_212;
          }

          if (a2 == 80)
          {
            v7 = "BasicConfigStart";
            goto LABEL_212;
          }

          if (a2 != 90)
          {
            goto LABEL_211;
          }

          v7 = "BasicConfigFinish";
        }
      }

      else if (a2 > 32)
      {
        if (a2 > 49)
        {
          if (a2 == 50)
          {
            v7 = "PreAuthFinish";
            goto LABEL_212;
          }

          if (a2 == 60)
          {
            v7 = "SecurityStart";
            goto LABEL_212;
          }

          if (a2 != 65)
          {
            goto LABEL_211;
          }

          v7 = "SecurityAPCLoopStart";
        }

        else
        {
          if (a2 == 33)
          {
            v7 = "SessionSecured";
            goto LABEL_212;
          }

          if (a2 == 35)
          {
            v7 = "ConnectStart";
            goto LABEL_212;
          }

          if (a2 != 40)
          {
            goto LABEL_211;
          }

          v7 = "PreAuthStart";
        }
      }

      else
      {
        if (a2 > 29)
        {
          if (a2 == 30)
          {
            v7 = "Error";
          }

          else if (a2 == 31)
          {
            v7 = "SessionStarted";
          }

          else
          {
            v7 = "SessionEnded";
          }

          goto LABEL_212;
        }

        if (!a2)
        {
          v7 = "Invalid";
          goto LABEL_212;
        }

        if (a2 == 10)
        {
          v7 = "Start";
          goto LABEL_212;
        }

        if (a2 != 20)
        {
          goto LABEL_211;
        }

        v7 = "Final";
      }
    }

    else if (a2 <= 239)
    {
      if (a2 > 209)
      {
        if (a2 > 229)
        {
          switch(a2)
          {
            case 230:
              v7 = "HomeKitStart";
              goto LABEL_212;
            case 234:
              v7 = "HomeKitSetupStart";
              goto LABEL_212;
            case 236:
              v7 = "CDPSetupStart";
              goto LABEL_212;
          }

          goto LABEL_211;
        }

        if (a2 == 210)
        {
          v7 = "ActivationStart";
          goto LABEL_212;
        }

        if (a2 == 220)
        {
          v7 = "iCloudStart";
          goto LABEL_212;
        }

        if (a2 != 224)
        {
          goto LABEL_211;
        }

        v7 = "AppleIDSetupStart";
      }

      else
      {
        if (a2 > 139)
        {
          switch(a2)
          {
            case 140:
              v7 = "RecognizeVoice";
              goto LABEL_212;
            case 150:
              v7 = "SiriForEveryone";
              goto LABEL_212;
            case 200:
              v7 = "WiFiStart";
              goto LABEL_212;
          }

          goto LABEL_211;
        }

        if (a2 == 122)
        {
          v7 = "CheckingAppleMusic";
          goto LABEL_212;
        }

        if (a2 == 124)
        {
          v7 = "CheckingAccount";
          goto LABEL_212;
        }

        if (a2 != 130)
        {
          goto LABEL_211;
        }

        v7 = "WiFiPoweredOff";
      }
    }

    else
    {
      if (a2 > 269)
      {
        if (a2 > 275)
        {
          if (a2 > 277)
          {
            if (a2 == 278)
            {
              v7 = "TVLCalStart";
            }

            else
            {
              v7 = "TVLCalStep";
            }
          }

          else if (a2 == 276)
          {
            v7 = "TVLSTryAgain";
          }

          else
          {
            v7 = "TVLSToneBegan";
          }

          goto LABEL_212;
        }

        switch(a2)
        {
          case 270:
            v7 = "TVLSEstimateStart";
            goto LABEL_212;
          case 272:
            v7 = "TVLSEstimateFinal";
            goto LABEL_212;
          case 274:
            v7 = "TVLSEstimateFailed";
            goto LABEL_212;
        }

LABEL_211:
        v7 = "?";
        goto LABEL_212;
      }

      if (a2 > 249)
      {
        if (a2 == 250)
        {
          v7 = "ReportSuccess";
          goto LABEL_212;
        }

        if (a2 == 260)
        {
          v7 = "TVLSStart";
          goto LABEL_212;
        }

        if (a2 != 264)
        {
          goto LABEL_211;
        }

        v7 = "TVLSFinish";
      }

      else
      {
        if (a2 == 240)
        {
          v7 = "BuddyStarting";
          goto LABEL_212;
        }

        if (a2 == 241)
        {
          v7 = "BuddyProgress";
          goto LABEL_212;
        }

        if (a2 != 242)
        {
          goto LABEL_211;
        }

        v7 = "BuddyFinished";
      }
    }

LABEL_212:
    v15 = 136315650;
    v16 = v7;
    v17 = 1024;
    v18 = a2;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received proximity progress: %s (%d) %@", &v15, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (a2 <= 32)
  {
    if (a2 == 31)
    {
      v13 = [v5 objectForKeyedSubscript:@"mst"];
      [v9 setMessageSession:v13];

      v12 = [v9 delegate];
      v14 = [v9 messageSession];
      [v12 proximityConnectionPreparing:v14];
    }

    else
    {
      if (a2 != 32)
      {
        goto LABEL_228;
      }

      if ([WeakRetained hasConnection])
      {
        [v9 setHasConnection:0];
        v12 = [v9 delegate];
        [v12 proximityConnectionTerminated];
      }

      else
      {
        if (![v9 showingPIN])
        {
          goto LABEL_228;
        }

        [v9 setShowingPIN:0];
        v12 = [v9 delegate];
        [v12 dismissProximityPinCode];
      }
    }

LABEL_227:

    goto LABEL_228;
  }

  switch(a2)
  {
    case '!':
      [WeakRetained setHasConnection:1];
      [v9 setShowingPIN:0];
      v12 = [v9 delegate];
      [v12 proximityConnectionInitiated];
      goto LABEL_227;
    case 'a':
      [WeakRetained setHasConnection:1];
      v12 = [v9 delegate];
      [v12 proximityConnectionReconnected];
      goto LABEL_227;
    case 'b':
      v10 = [WeakRetained suspendCompletionBlock];

      if (v10)
      {
        v11 = [v9 suspendCompletionBlock];
        v11[2]();
      }

      [v9 setSuspendCompletionBlock:0];
      break;
  }

LABEL_228:
}

void sub_100002B1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"op"];
  v5 = [v4 unsignedIntValue];

  if (v5 == 3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [v3 objectForKeyedSubscript:@"dclass"];
    v8 = [WeakRetained deviceClassForSharingDeviceClass:{objc_msgSend(v7, "integerValue")}];
    [WeakRetained setDeviceClass:v8];

    v9 = [v3 objectForKeyedSubscript:@"model"];
    [WeakRetained setModel:v9];

    v10 = [v3 objectForKeyedSubscript:@"langs"];
    if (![v10 count])
    {
      v11 = [v3 objectForKeyedSubscript:@"lang"];
      v18 = v11;
      v12 = [NSArray arrayWithObjects:&v18 count:1];

      v10 = v12;
    }

    v13 = [WeakRetained delegate];
    v14 = [v3 objectForKeyedSubscript:@"locale"];
    v15 = [WeakRetained model];
    v16 = [WeakRetained deviceClass];
    v17 = [v3 objectForKeyedSubscript:@"axSt"];
    [v13 receivedLanguages:v10 locale:v14 model:v15 deviceClass:v16 accessibilitySettings:v17];
  }
}

void sub_1000032A8(id a1)
{
  qword_100028C40 = objc_alloc_init(BYDaemonExpressActivity);

  _objc_release_x1();
}

void sub_100003584(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 2)
  {
    v4 = _BYLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Maintenance task running...", v5, 2u);
    }

    [*(a1 + 32) _updateSettingsForActivity:v3];
  }
}

void sub_1000036C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 2)
  {
    v4 = _BYLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Backup task running...", v5, 2u);
    }

    [*(a1 + 32) _updateSettingsForActivity:v3];
  }
}

void sub_100003920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100003938(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003950(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating express settings...", buf, 2u);
  }

  v3 = [*(a1 + 32) queue];
  v4 = [BYExpressCloudSettings createExpressSettingsWithQueue:v3];

  if ([*(a1 + 40) shouldDefer])
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deferring update of express settings...", buf, 2u);
    }

    [*(a1 + 40) setState:3];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  else
  {
    v8 = [*(a1 + 40) underlyingActivity];
    v9 = [*(a1 + 32) cloudSettings];
    [v9 setXpcActivity:v8];

    v10 = [*(a1 + 32) cloudSettings];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100003B18;
    v13[3] = &unk_100020708;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14 = v11;
    v15 = v12;
    [v10 updateSettings:v4 withCompletion:v13];

    v7 = v14;
  }
}

void sub_100003B18(uint64_t a1, int a2)
{
  v4 = _BYLoggingFacility();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updated express settings", v9, 2u);
    }

    v6 = 0;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100010CF8(v5);
    }

    v6 = 3;
  }

  [*(a1 + 32) setCompletionStatus:v6];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_10000432C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Failed to get the remote object proxy: %{public}@", &v4, 0xCu);
  }
}

void sub_1000046D0(id a1)
{
  qword_100028C50 = objc_opt_new();

  _objc_release_x1();
}

void sub_100004888(id a1, NSXPCConnection *a2)
{
  v2 = a2;
  [(NSXPCConnection *)v2 invalidate];
  [(NSXPCConnection *)v2 setDelegate:0];
}

void sub_100004C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, id a23)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void sub_100004CCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

void sub_100004CDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

void sub_100004CEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained setupCtlConnections];
  v3 = objc_loadWeakRetained((a1 + 40));
  [v2 removeObject:v3];
}

void sub_100004D60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained setupCtlConnections];
  v3 = objc_loadWeakRetained((a1 + 40));
  [v2 removeObject:v3];
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = _BYLoggingFacility();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "budd starting", buf, 2u);
  }

  v2 = +[BYDaemonConnectionManager sharedInstance];
  [v2 start];

  v3 = +[BYDaemonConnectionManagerOverride sharedInstance];
  [v3 start];

  v4 = +[BYDaemonBetaReEnrollmentManager sharedInstance];
  [v4 daemonStart];

  v5 = +[BYDaemonExpressActivity sharedActivity];
  [v5 registerActivity];

  v6 = +[BYDaemonConnectionManager sharedInstance];
  v7 = [v6 flowSkipController];
  [v7 registerActivities];

  objc_autoreleasePoolPop(v0);
  v8 = _BYLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "budd running", v15, 2u);
  }

  signal(15, 1);
  v9 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, 0);
  v10 = qword_100028C60;
  qword_100028C60 = v9;

  dispatch_source_set_event_handler(qword_100028C60, &stru_1000208B0);
  dispatch_activate(qword_100028C60);
  v11 = +[NSRunLoop mainRunLoop];
  [v11 run];

  v12 = _BYLoggingFacility();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "budd exiting", v14, 2u);
  }

  return 0;
}

void sub_1000051BC(id a1)
{
  v1 = _BYLoggingFacility();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Received SIGTERM, will attempt to exit clean...", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_100005328(uint64_t a1)
{
  v2 = [*(a1 + 32) contextQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000053C8;
  block[3] = &unk_100020868;
  v4 = *(a1 + 32);
  dispatch_async(v2, block);
}

id sub_100005484(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _prepareContextTimeout];
}

void sub_1000055C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000055E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000056C0(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _prepareContextTimeout];
}

void sub_100005804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006458(id a1)
{
  qword_100028C70 = dispatch_queue_create("com.apple.budd.staticVariableSerialQueue", 0);

  _objc_release_x1();
}

void sub_1000068A8(uint64_t a1)
{
  v2 = BYDaemonCreateMetadataArchive();
  (*(*(a1 + 32) + 16))();
}

void sub_100006A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100006A34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006A4C(uint64_t a1)
{
  v2 = [*(a1 + 32) flowSkipController];
  [v2 observeFinishSetupTriggers];

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

uint64_t sub_100006B50(uint64_t a1)
{
  v2 = +[BYAppleIDAccountsManager sharedManager];
  [v2 performSilentICDPUpgrade];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100006C70(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Taking device lock assertion before deferring data migrator exit...", &buf, 2u);
  }

  v20 = @"MKBAssertionKey";
  v21 = @"RestoreFromBackup";
  v3 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  cf = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v4 = off_100028C88;
  v19 = off_100028C88;
  if (!off_100028C88)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v23 = sub_100007C58;
    v24 = &unk_100020568;
    v25 = &v16;
    v5 = sub_100007CA8();
    v6 = dlsym(v5, "MKBDeviceLockAssertion");
    *(v25[1] + 24) = v6;
    off_100028C88 = *(v25[1] + 24);
    v4 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v4)
  {
    sub_100010C40();
    goto LABEL_21;
  }

  [*(a1 + 32) setDeviceLockAssertion:{v4(v3, &cf)}];
  if (![*(a1 + 32) deviceLockAssertion])
  {
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = _BYIsInternalInstall();
      v13 = cf;
      if ((v12 & 1) == 0 && cf)
      {
        v4 = [cf domain];
        v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v4, [cf code]);
        v14 = 1;
      }

      else
      {
        v14 = 0;
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = v13;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to take device lock assertion when deferring data migrator exit - %{public}@", &buf, 0xCu);
      if (v14)
      {
      }
    }

    CFRelease(cf);
  }

  v8 = *(a1 + 40);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v9 = off_100028C98;
  v19 = off_100028C98;
  if (!off_100028C98)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v23 = sub_100007E1C;
    v24 = &unk_100020568;
    v25 = &v16;
    v10 = sub_100007E6C();
    v11 = dlsym(v10, "DMDeferExit");
    *(v25[1] + 24) = v11;
    off_100028C98 = *(v25[1] + 24);
    v9 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v9)
  {
    sub_100010C40();
LABEL_21:
    __break(1u);
  }

  v9(v8);
}

void sub_100006FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000070A0(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceLockAssertion];
  v3 = _BYLoggingFacility();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Promoting device lock assertion before cancelling data migrator deferred exit...", &v15, 2u);
    }

    v5 = [*(a1 + 32) deviceLockAssertion];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v6 = off_100028CA8;
    v23 = off_100028CA8;
    if (!off_100028CA8)
    {
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_100007FE0;
      v18 = &unk_100020568;
      v19 = &v20;
      v7 = sub_100007CA8();
      v8 = dlsym(v7, "MKBDeviceLockAssertionPromote");
      *(v19[1] + 24) = v8;
      off_100028CA8 = *(v19[1] + 24);
      v6 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (!v6)
    {
LABEL_20:
      v14 = sub_100010C40();
      _Block_object_dispose(&v20, 8);
      _Unwind_Resume(v14);
    }

    if (v6(v5))
    {
      v9 = _BYLoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100010D78();
      }
    }

    CFRelease([*(a1 + 32) deviceLockAssertion]);
    [*(a1 + 32) setDeviceLockAssertion:0];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100010DEC();
    }
  }

  v10 = *(a1 + 40);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v11 = off_100028CB0;
  v23 = off_100028CB0;
  if (!off_100028CB0)
  {
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100008030;
    v18 = &unk_100020568;
    v19 = &v20;
    v12 = sub_100007E6C();
    v13 = dlsym(v12, "DMCancelDeferredExit");
    *(v19[1] + 24) = v13;
    off_100028CB0 = *(v19[1] + 24);
    v11 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  if (!v11)
  {
    sub_100010C40();
    goto LABEL_20;
  }

  v11(v10);
}

id sub_10000770C(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000778C;
  v4[3] = &unk_1000209C0;
  v4[4] = a1[6];
  return [v2 attemptSettingsUploadForAttempt:1 maxNumberOfAttempts:3 queue:v1 completion:v4];
}

void sub_10000778C(uint64_t a1, int a2)
{
  v4 = _BYLoggingFacility();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating express settings succeeded", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100010E2C();
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_1000079F4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 64);
    v6 = *(a1 + 56);
    v7 = _BYLoggingFacility();
    v8 = v7;
    if (v6 >= v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100010E6C((a1 + 64));
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 56);
        v10 = *(a1 + 64);
        *buf = 134218240;
        v19 = v9;
        v20 = 2048;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to upload express settings; will attempt again (%ld / %ld attempts)", buf, 0x16u);
      }

      v11 = dispatch_time(0, 5000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100007C08;
      block[3] = &unk_1000209E8;
      v17 = *(a1 + 56);
      v13 = *(a1 + 32);
      v12 = v13.i64[0];
      v15 = vextq_s8(v13, v13, 8uLL);
      v16 = *(a1 + 48);
      dispatch_after(v11, v12, block);
    }
  }
}

void *sub_100007C58(uint64_t a1)
{
  v2 = sub_100007CA8();
  result = dlsym(v2, "MKBDeviceLockAssertion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100028C88 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100007CA8()
{
  v3[0] = 0;
  if (!qword_100028C90)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100007DA8;
    v3[4] = &unk_1000205A0;
    v3[5] = v3;
    v4 = off_100020A30;
    v5 = 0;
    qword_100028C90 = _sl_dlopen();
  }

  v0 = qword_100028C90;
  v1 = v3[0];
  if (!qword_100028C90)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100007DA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100028C90 = result;
  return result;
}

void *sub_100007E1C(uint64_t a1)
{
  v2 = sub_100007E6C();
  result = dlsym(v2, "DMDeferExit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100028C98 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100007E6C()
{
  v3[0] = 0;
  if (!qword_100028CA0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100007F6C;
    v3[4] = &unk_1000205A0;
    v3[5] = v3;
    v4 = off_100020A48;
    v5 = 0;
    qword_100028CA0 = _sl_dlopen();
  }

  v0 = qword_100028CA0;
  v1 = v3[0];
  if (!qword_100028CA0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100007F6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100028CA0 = result;
  return result;
}

void *sub_100007FE0(uint64_t a1)
{
  v2 = sub_100007CA8();
  result = dlsym(v2, "MKBDeviceLockAssertionPromote");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100028CA8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100008030(uint64_t a1)
{
  v2 = sub_100007E6C();
  result = dlsym(v2, "DMCancelDeferredExit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100028CB0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10000879C(id a1, NSXPCConnection *a2)
{
  v2 = [(NSXPCConnection *)a2 remoteObjectProxy];
  [v2 beginAdvertisingProximitySetup];
}

void sub_100008824(id a1, NSXPCConnection *a2)
{
  v2 = [(NSXPCConnection *)a2 remoteObjectProxy];
  [v2 endAdvertisingProximitySetup];
}

void sub_100008874(id a1, NSXPCConnection *a2)
{
  v2 = [(NSXPCConnection *)a2 remoteObjectProxy];
  [v2 endPairing];
}

void sub_100008924(id a1, NSXPCConnection *a2)
{
  v2 = [(NSXPCConnection *)a2 remoteObjectProxy];
  [v2 hasConnection:&stru_100020B00];
}

void sub_100008980(id a1, NSXPCConnection *a2)
{
  v2 = [(NSXPCConnection *)a2 remoteObjectProxy];
  [v2 endDeviceToDeviceMigration];
}

void sub_1000089D0(id a1, NSXPCConnection *a2)
{
  v2 = [(NSXPCConnection *)a2 remoteObjectProxy];
  [v2 beginSIMSetupExternalAuthentication];
}

void sub_100008A20(id a1, NSXPCConnection *a2)
{
  v2 = [(NSXPCConnection *)a2 remoteObjectProxy];
  [v2 endSIMSetupExternalAuthentication];
}

void sub_100008B3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100008B5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v3 = *(a1 + 32);
    v4 = [v6 handshake];
    v5 = [v6 information];
    (*(v3 + 16))(v3, v4, v5, 0, &stru_100021108, &stru_100021108, [v6 isConnected]);
  }
}

void sub_100008C30(id a1, NSXPCConnection *a2)
{
  v2 = [(NSXPCConnection *)a2 remoteObjectProxy];
  [v2 resumeProximitySetup:0];
}

void sub_100008C84(id a1, NSXPCConnection *a2)
{
  v2 = [(NSXPCConnection *)a2 remoteObjectProxy];
  [v2 showMigrationInterfaceOnSource];
}

void sub_100008D6C(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  [v3 storeHandshake:*(a1 + 32)];
}

void sub_100008E64(uint64_t a1, void *a2)
{
  v3 = [a2 remoteObjectProxy];
  [v3 storeInformation:*(a1 + 32)];
}

void sub_100008EF8(id a1, NSXPCConnection *a2)
{
  v2 = [(NSXPCConnection *)a2 remoteObjectProxy];
  [v2 suspendConnectionForSoftwareUpdate:0];
}

void sub_100008F8C(id a1, NSXPCConnection *a2)
{
  v2 = [(NSXPCConnection *)a2 remoteObjectProxy];
  [v2 fileTransferSessionTemplate:0];
}

void sub_10000A8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_10000A8C8(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_100028CC0)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_10000AA08;
    v5[4] = &unk_1000205A0;
    v5[5] = v5;
    v6 = off_100020C50;
    v7 = 0;
    qword_100028CC0 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_100028CC0;
    if (qword_100028CC0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_100028CC0;
LABEL_5:
  result = dlsym(v2, "MKBDeviceLockAssertion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100028CB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000AA08(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100028CC0 = result;
  return result;
}

void sub_10000B118(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100010FE4(v2);
  }

  v3 = [*(a1 + 32) migrationController];
  [v3 cancel];
}

void sub_10000B178(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100011028(v2);
  }

  v3 = [*(a1 + 32) migrationController];
  [v3 cancel];
}

void sub_10000B488(id a1)
{
  v1 = [BYDaemonBetaReEnrollmentManager alloc];
  v7 = objc_alloc_init(BYSeedProgramManager);
  v2 = +[BYXPCActivityRegistrar sharedInstance];
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = objc_alloc_init(BYDaemonLockAssertionManager);
  v5 = [(BYDaemonBetaReEnrollmentManager *)v1 initWithSeedProgramManager:v7 xpcActivityRegistrar:v2 setupAssistantFrameworkDefaults:v3 lockAssertionManager:v4];
  v6 = qword_100028CC8;
  qword_100028CC8 = v5;
}

void sub_10000B6CC(uint64_t a1)
{
  if ([*(a1 + 32) _onSerialQueue_needsEnrollWithCheckForExistingEnrollment:0 enrollBlock:0])
  {
    v2 = *(a1 + 32);

    [v2 _onSerialQueue_registerActivityForPurpose:@"daemon start"];
  }

  else
  {
    v3 = _BYLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beta Re-Enroll: Activity registration unnecessary", v5, 2u);
    }

    v4 = [*(a1 + 32) xpcActivityRegistrar];
    [v4 unregisterActivityWithIdentifier:"com.apple.purplebuddy.betaReEnrollment"];
  }
}

id sub_10000B898(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Beta Re-Enroll: Enroll requested", buf, 2u);
  }

  v3 = [*(a1 + 32) setupAssistantFrameworkDefaults];
  [v3 setObject:*(a1 + 40) forKey:@"SeedEnrollmentProgramName"];

  v4 = [*(a1 + 32) setupAssistantFrameworkDefaults];
  [v4 setObject:*(a1 + 48) forKey:@"SeedEnrollmentAssetAudience"];

  if (*(a1 + 56))
  {
    v5 = [*(a1 + 32) setupAssistantFrameworkDefaults];
    [v5 setObject:*(a1 + 56) forKey:@"SeedEnrollmentProgramID"];
  }

  v6 = [*(a1 + 32) setupAssistantFrameworkDefaults];
  [v6 setObject:&off_1000216F8 forKey:@"SeedEnrollmentFailureCount"];

  v7 = _BYLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Beta Re-Enroll: Unregistering any preexisting activity prior to requested enroll", v10, 2u);
  }

  v8 = [*(a1 + 32) xpcActivityRegistrar];
  [v8 unregisterActivityWithIdentifier:"com.apple.purplebuddy.betaReEnrollment"];

  return [*(a1 + 32) _onSerialQueue_registerActivityForPurpose:@"enroll requested"];
}

void sub_10000BBF8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    if ([v3 state] == 2)
    {
      v4 = _BYLoggingFacility();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Beta Re-Enroll: Activity running", buf, 2u);
      }

      [v3 setState:4];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v21 = sub_10000BF5C;
      v22 = sub_10000BF6C;
      v23 = os_transaction_create();
      v5 = [*(a1 + 40) serialQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000BF74;
      block[3] = &unk_100020730;
      v6 = v3;
      v7 = *(a1 + 40);
      v17 = v6;
      v18 = v7;
      v19 = buf;
      dispatch_async(v5, block);

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v8 = [v3 criteria];
    v9 = v8;
    if (v8)
    {
      int64 = xpc_dictionary_get_int64(v8, XPC_ACTIVITY_INTERVAL);
      v11 = _BYLoggingFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v13 = [NSNumber numberWithLongLong:int64];
        *buf = 138543618;
        *&buf[4] = v12;
        *&buf[12] = 2114;
        *&buf[14] = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Beta Re-Enroll: Activity check-in (%{public}@) keeping existing criteria with interval %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v14 = _BYLoggingFacility();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        *buf = 138543362;
        *&buf[4] = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Beta Re-Enroll: Activity check-in (%{public}@) setting initial criteria", buf, 0xCu);
      }

      v9 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v9, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
      xpc_dictionary_set_BOOL(v9, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
      xpc_dictionary_set_BOOL(v9, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
      xpc_dictionary_set_int64(v9, XPC_ACTIVITY_INTERVAL, 1);
      [v3 setCriteria:v9];
    }
  }
}

void sub_10000BF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000BF5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000BF74(uint64_t a1)
{
  if ([*(a1 + 32) shouldDefer])
  {
    v2 = _BYLoggingFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Beta Re-Enroll: Activity deferring", buf, 2u);
    }

    [*(a1 + 32) setState:3];
    [*(a1 + 40) setLockAssertion:0];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  else
  {
    [*(a1 + 40) _onSerialQueue_attemptLockAssertionIfNecessary];
    v5 = *(a1 + 40);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000C1BC;
    v16[3] = &unk_100020CE0;
    v16[4] = v5;
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v17 = v6;
    v18 = v7;
    if (([v5 _onSerialQueue_needsEnrollWithCheckForExistingEnrollment:1 enrollBlock:v16] & 1) == 0)
    {
      v8 = _BYLoggingFacility();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Beta Re-Enroll: Unregistering activity because no longer needed", buf, 2u);
      }

      [*(a1 + 32) setState:5];
      v9 = [*(a1 + 40) xpcActivityRegistrar];
      [v9 unregisterActivityWithIdentifier:"com.apple.purplebuddy.betaReEnrollment"];

      v10 = [*(a1 + 40) setupAssistantFrameworkDefaults];
      [v10 setObject:0 forKey:@"SeedEnrollmentProgramName"];

      v11 = [*(a1 + 40) setupAssistantFrameworkDefaults];
      [v11 setObject:0 forKey:@"SeedEnrollmentAssetAudience"];

      v12 = [*(a1 + 40) setupAssistantFrameworkDefaults];
      [v12 setObject:0 forKey:@"SeedEnrollmentProgramID"];

      v13 = [*(a1 + 40) setupAssistantFrameworkDefaults];
      [v13 setObject:0 forKey:@"SeedEnrollmentFailureCount"];

      [*(a1 + 40) setLockAssertion:0];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = 0;
    }
  }
}

void sub_10000C1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000C27C;
  v11[3] = &unk_100020CB8;
  v11[4] = v8;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = v9;
  v13 = v10;
  [v8 _onSerialQueue_performOneEnrollWithProgramName:a2 assetAudience:a3 programID:a4 completionOnSerialQueue:v11];
}

void sub_10000C27C(uint64_t a1, int a2)
{
  v4 = _BYLoggingFacility();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Beta Re-Enroll: Unregistering activity after successful enroll", &v10, 2u);
    }

    v6 = [*(a1 + 32) xpcActivityRegistrar];
    [v6 unregisterActivityWithIdentifier:"com.apple.purplebuddy.betaReEnrollment"];
  }

  else
  {
    if (v5)
    {
      v7 = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_1_HOUR];
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Beta Re-Enroll: Adjusting activity interval to %{public}@ seconds", &v10, 0xCu);
    }

    v6 = [*(a1 + 40) criteria];
    if (xpc_dictionary_get_int64(v6, XPC_ACTIVITY_INTERVAL) != XPC_ACTIVITY_INTERVAL_1_HOUR)
    {
      xpc_dictionary_set_int64(v6, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_HOUR);
      [*(a1 + 40) setCriteria:v6];
    }
  }

  [*(a1 + 40) setState:5];
  [*(a1 + 32) setLockAssertion:0];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_10000C878(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C92C;
  block[3] = &unk_100020D30;
  v8 = a2;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(v4, block);
}

uint64_t sub_10000C92C(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = _BYLoggingFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Beta Re-Enroll: Enroll succeeded", v13, 2u);
    }

    v3 = [*(a1 + 32) setupAssistantFrameworkDefaults];
    [v3 setObject:0 forKey:@"SeedEnrollmentProgramName"];

    v4 = [*(a1 + 32) setupAssistantFrameworkDefaults];
    [v4 setObject:0 forKey:@"SeedEnrollmentAssetAudience"];

    v5 = [*(a1 + 32) setupAssistantFrameworkDefaults];
    [v5 setObject:0 forKey:@"SeedEnrollmentProgramID"];

    v6 = [*(a1 + 32) setupAssistantFrameworkDefaults];
    [v6 setObject:0 forKey:@"SeedEnrollmentFailureCount"];
  }

  else
  {
    v7 = [*(a1 + 32) setupAssistantFrameworkDefaults];
    v6 = [v7 objectForKey:@"SeedEnrollmentFailureCount"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 unsignedIntegerValue] + 1);

      v9 = [*(a1 + 32) setupAssistantFrameworkDefaults];
      [v9 setObject:v8 forKey:@"SeedEnrollmentFailureCount"];

      v6 = v8;
    }

    v10 = _BYLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100011080(v6, v10);
    }
  }

  v11 = *(a1 + 48);
  return (*(*(a1 + 40) + 16))();
}

void sub_10000CE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000CFEC(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = _BYLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10001113C(v3);
    }
  }

  if (([*(a1 + 32) takeLock] & 1) == 0)
  {
    v5 = [NSError errorWithDomain:@"BYDaemonBackupControllerErrorDomain" code:1 userInfo:0];
    v6 = [*(a1 + 32) delegate];
    [v6 backupCompletedWithError:v5 dateOfLastBackup:0];
LABEL_11:

    goto LABEL_12;
  }

  v4 = [*(a1 + 32) manager];
  v5 = [v4 backupState];

  if ([v5 state] == 1 || objc_msgSend(v5, "state") == 2)
  {
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109120;
      LODWORD(v12) = [v5 state];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Backup is already running (current state: %d)", &v11, 8u);
    }

    goto LABEL_11;
  }

  v7 = _BYLoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting backup...", &v11, 2u);
  }

  v8 = _BYLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) manager];
    v10 = [v9 dateOfLastBackup];
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Last backup was at %@", &v11, 0xCu);
  }

  [*(a1 + 32) setLastPercentComplete:-1.0];
  [*(a1 + 32) attemptToBeginBackup:5];
LABEL_12:
}

void sub_10000D6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10000D9F8(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100028CE0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10000DB3C;
    v4[4] = &unk_1000205A0;
    v4[5] = v4;
    v5 = off_100020DC8;
    v6 = 0;
    qword_100028CE0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100028CE0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MBManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100011180();
  }

  qword_100028CD8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000DB3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100028CE0 = result;
  return result;
}

void *sub_10000DBB0(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_100028CF0)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_10000DCF0;
    v5[4] = &unk_1000205A0;
    v5[5] = v5;
    v6 = off_100020DE0;
    v7 = 0;
    qword_100028CF0 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_100028CF0;
    if (qword_100028CF0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_100028CF0;
LABEL_5:
  result = dlsym(v2, "MKBDeviceLockAssertion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100028CE8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000DCF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100028CF0 = result;
  return result;
}

void sub_10000DDA8(id a1)
{
  qword_100028D00 = objc_alloc_init(BYDaemonCloudSyncController);

  _objc_release_x1();
}

id sub_10000EC9C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100028D08;
  v7 = qword_100028D08;
  if (!qword_100028D08)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000F25C;
    v3[3] = &unk_100020568;
    v3[4] = &v4;
    sub_10000F25C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10000ED64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000ED7C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100028D18;
  v7 = qword_100028D18;
  if (!qword_100028D18)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000F424;
    v3[3] = &unk_100020568;
    v3[4] = &v4;
    sub_10000F424(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10000EE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000F25C(uint64_t a1)
{
  sub_10000F2B4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_CDClientContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100028D08 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1000111BC();
    sub_10000F2B4();
  }
}

void sub_10000F2B4()
{
  v1[0] = 0;
  if (!qword_100028D10)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_10000F3B0;
    v1[4] = &unk_1000205A0;
    v1[5] = v1;
    v2 = off_100020E18;
    v3 = 0;
    qword_100028D10 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_100028D10)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_10000F3B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100028D10 = result;
  return result;
}

BYDaemonMigrationSourceController *sub_10000F424(uint64_t a1)
{
  sub_10000F2B4();
  result = objc_getClass("_CDContextualKeyPath");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100028D18 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1000111E4();
    return [(BYDaemonMigrationSourceController *)v3 init];
  }

  return result;
}

void sub_10000F808(uint64_t a1)
{
  v2 = [*(a1 + 32) migrationManager];
  if (v2 && (v3 = v2, [*(a1 + 32) migrationManager], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isMigrating"), v4, v3, (v5 & 1) != 0))
  {
    [*(a1 + 32) setMigrationCompleteBlock:*(a1 + 40)];
    v6 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    v7 = [*(a1 + 32) migrationCompleteQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000F93C;
    block[3] = &unk_100020868;
    block[4] = *(a1 + 32);
    dispatch_after(v6, v7, block);
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);

    v8();
  }
}

void sub_10000F93C(uint64_t a1)
{
  v2 = [*(a1 + 32) migrationCompleteBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) migrationCompleteBlock];
    v3[2](v3, 1);

    v4 = *(a1 + 32);

    [v4 setMigrationCompleteBlock:0];
  }
}

void sub_10000FA4C(uint64_t a1)
{
  v2 = [*(a1 + 32) migrationCompleteBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) migrationCompleteBlock];
    v3[2](v3, 0);

    v4 = *(a1 + 32);

    [v4 setMigrationCompleteBlock:0];
  }
}

void sub_10000FBD4(id a1)
{
  qword_100028D20 = objc_opt_new();

  _objc_release_x1();
}

void sub_100010148(uint64_t a1, xpc_object_t xdict)
{
  v3 = [NSString stringWithUTF8String:xpc_dictionary_get_string(xdict, _xpc_event_key_name)];
  if ([v3 isEqual:MCPasscodeChangedNotification])
  {
    [*(*(a1 + 32) + 88) passcodeDidChange];
  }

  else if ([v3 isEqualToString:MCEffectiveSettingsChangedNotification])
  {
    [*(*(a1 + 32) + 88) revisePendingFollowUpsForcingRepost:0];
  }
}

void sub_100010334(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000103A8;
  block[3] = &unk_100020868;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_1000109A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v23 - 88));
  _Unwind_Resume(a1);
}

void sub_1000109EC(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained debugDescription];
    v6 = 138543618;
    v7 = v4;
    v8 = 2114;
    v9 = @"com.apple.purplebuddy.budd.proximityautomateddeviceenrollment.target.xpc";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Connection (%{public}@) to %{public}@ invalidated", &v6, 0x16u);
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 setCurrentProximityAutomatedDeviceEnrollmentConnection:0];
}

void sub_100010AE4(uint64_t a1)
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_100011324(a1, v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCurrentProximityAutomatedDeviceEnrollmentConnection:0];
}

uint64_t sub_100010C40()
{
  dlerror();
  v0 = abort_report_np();
  return sub_100010C64(v0);
}

void sub_100010E6C(uint64_t *a1)
{
  v6 = *a1;
  sub_100008080();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100010F6C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Raw data: %{public}@", &v2, 0xCu);
}

void sub_100011080(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Beta Re-Enroll: Enroll failed (failure count %{public}@)", &v2, 0xCu);
}

void sub_100011220()
{
  sub_100010C2C();
  v2 = @"com.apple.purplebuddy.budd.access";
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Client %{public}@ is missing entitlement %{public}@", v1, 0x16u);
}

void sub_1000112A0(os_log_t log)
{
  v1 = 138543362;
  v2 = @"com.apple.purplebuddy.budd.proximityautomateddeviceenrollment.target.xpc";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Refusing incoming connection to %{public}@, there is an existing connection", &v1, 0xCu);
}

void sub_100011324(uint64_t a1, NSObject *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained debugDescription];
  sub_100010C2C();
  v6 = @"com.apple.purplebuddy.budd.proximityautomateddeviceenrollment.target.xpc";
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Connection (%{public}@) to %{public}@ interrupted.", v5, 0x16u);
}