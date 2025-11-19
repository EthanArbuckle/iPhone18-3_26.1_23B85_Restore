void sub_100022F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100022F74(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [[TCCDAttributionChain alloc] initWithMessage:v3];
  v6 = [(TCCDAttributionChain *)v5 requestingProcess];
  v7 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, "function")];
  v26 = 0;
  v8 = [qword_1000C1300 serviceFromMessage:v3 error:&v26];
  v9 = v26;
  if (!v8)
  {
    v10 = objc_opt_new();
    [qword_1000C1300 buildErrorString:v10 forError:v9 contextString:0];
    v14 = [qword_1000C1300 logHandle];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100065014();
    }

    goto LABEL_24;
  }

  if (xpc_dictionary_get_string(v3, "client"))
  {
    xdict = v4;
    v10 = [[TCCDAccessIdentity alloc] initWithMessage:v3];
    v11 = [(TCCDAccessIdentity *)v10 identifier];
    v12 = [v11 UTF8String];

    if (v12 && [qword_1000C1300 canProcess:v6 callFunction:v7 forService:v8 withAccessIdentity:v10])
    {
      v13 = [(TCCDAccessIdentity *)v10 identifier];
      goto LABEL_11;
    }

    v4 = xdict;
  }

  else
  {
    v10 = 0;
    if ([qword_1000C1300 canProcess:v6 callFunction:v7 forService:v8 withAccessIdentity:0])
    {
      xdict = v4;
      v13 = @"kTCCClientAll";
LABEL_11:
      v23 = [(TCCDAccessIdentity *)v10 client_type];
      v15 = v8;
      v14 = v13;
      v24 = v15;
      v16 = [v15 name];
      LODWORD(v15) = [v16 isEqualToString:@"kTCCServiceAll"];

      v17 = [v14 isEqualToString:@"kTCCClientAll"];
      if (v15)
      {
        if (v17)
        {
          v18 = db_transaction(&stru_1000A5A68);
        }

        else
        {
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_10002650C;
          v33[3] = &unk_1000A5AB8;
          v34 = v14;
          v35 = v23;
          v18 = db_transaction(v33);
        }

        v19 = v24;
        if (v18)
        {
LABEL_18:

          v4 = xdict;
LABEL_24:

          goto LABEL_25;
        }
      }

      else
      {
        if (v17)
        {
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_100026634;
          v31[3] = &unk_1000A5AE0;
          v19 = v24;
          v32 = v24;
          v20 = db_transaction(v31);
          v21 = v32;
        }

        else
        {
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_10002674C;
          v27[3] = &unk_1000A5B30;
          v19 = v24;
          v28 = v24;
          v29 = v14;
          v30 = v23;
          v20 = db_transaction(v27);

          v21 = v28;
        }

        if (v20)
        {
          goto LABEL_18;
        }
      }

      db_eval("VACUUM expired", 0, 0);
      v22 = qword_1000C1060;
      if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEBUG))
      {
        sub_100064F60(v22, v19);
      }

      v4 = xdict;
      xpc_dictionary_set_BOOL(xdict, "result", 1);
      goto LABEL_24;
    }
  }

LABEL_25:
}

void sub_1000233AC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!has_private_tcc_entitlement(v3, @"com.apple.private.tcc.manager.service-descriptions", 1))
  {
    v15 = 0;
    [qword_1000C1300 makeError:&v15 withCode:5 infoText:0];
    v6 = v15;
    v11 = objc_opt_new();
    [qword_1000C1300 buildErrorString:v11 forError:v6 contextString:0];
    v12 = [qword_1000C1300 logHandle];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100065090();
    }

    goto LABEL_27;
  }

  v5 = [qword_1000C1300 platform];
  v6 = [v5 name];

  string = xpc_dictionary_get_string(v3, "platform_name");
  if (!string)
  {
LABEL_24:
    v11 = [TCCDService serviceDescriptionsForPlatformName:v6];
    v12 = _CFXPCCreateXPCObjectFromCFObject();
    if (v12)
    {
      xpc_dictionary_set_value(v4, "service_descriptions", v12);
    }

    xpc_dictionary_set_BOOL(v4, "result", v12 != 0);
LABEL_27:

    goto LABEL_28;
  }

  v8 = string;
  if (!strncmp(string, "macos", 5uLL))
  {
    v10 = &TCCDPlatformNameMacOS;
    goto LABEL_22;
  }

  v9 = *v8;
  if (v9 == 105 && v8[1] == 111 && v8[2] == 115)
  {
    v10 = &TCCDPlatformNameIOS;
LABEL_22:
    v13 = *v10;
    goto LABEL_23;
  }

  if (!strncmp(v8, "watchos", 7uLL))
  {
    v10 = &TCCDPlatformNameWatchOS;
    goto LABEL_22;
  }

  if (!strncmp(v8, "tvos", 4uLL))
  {
    v10 = &TCCDPlatformNameTVOS;
    goto LABEL_22;
  }

  if (v9 == 97 && v8[1] == 108 && v8[2] == 108)
  {
    v13 = @"all";
LABEL_23:

    v6 = v13;
    goto LABEL_24;
  }

  v14 = [qword_1000C1300 logHandle];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10006510C();
  }

  xpc_dictionary_set_BOOL(v4, "result", 0);
LABEL_28:
}

void sub_100023640(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  string = xpc_dictionary_get_string(v3, "operation");
  v6 = [[TCCDAttributionChain alloc] initWithMessage:v3];
  v7 = [(TCCDAttributionChain *)v6 requestingProcess];
  if ([qword_1000C1300 canProcess:v7 callFunction:0 forService:0 withAccessIdentity:0])
  {
    if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEBUG))
    {
      sub_10006517C();
    }

    if (!strncmp(string, "TestDBAbort", 0xBuLL))
    {
      if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEBUG))
      {
        sub_1000654AC();
      }

      v8 = dispatch_time(0, 5000000000);
      v9 = dispatch_get_global_queue(0, 0);
      dispatch_after(v8, v9, &stru_1000A5B50);
    }

    else
    {
      if (strncmp(string, "TestDatabaseDescription", 0x17uLL))
      {
        if (!strncmp(string, "TestToggleDoComposition", 0x17uLL))
        {
          [qword_1000C1300 setTestDoComposition:{xpc_dictionary_get_BOOL(v3, "arg1")}];
          xpc_dictionary_set_BOOL(v4, "test_do_composition", [qword_1000C1300 testDoComposition]);
          goto LABEL_36;
        }

        if (!strncmp(string, "SyncFull", 8uLL))
        {
          if (qword_1000C1058)
          {
            [qword_1000C1058 testMainResetSync];
            goto LABEL_36;
          }
        }

        else
        {
          if (!strncmp(string, "SyncPromptForWatchApp", 0x15uLL))
          {
            v12 = xpc_dictionary_get_string(v3, "arg1");
            v13 = xpc_dictionary_get_string(v3, "arg2");
            v14 = [qword_1000C1300 platform];
            v15 = [NSString stringWithUTF8String:v13];
            v16 = [v14 serviceByName:v15];

            v17 = [TCCDRequestContext alloc];
            v18 = [NSString stringWithUTF8String:v12];
            v19 = [(TCCDRequestContext *)v17 initForSyncRequestForSubjectBundleIdentifier:v18 service:v16];

            if (!v19)
            {
              LOBYTE(v11) = 0;
              goto LABEL_52;
            }

            buf[0] = 0;
            v20 = sub_100007B54(v19, buf);
            v21 = [v20 error];

            LOBYTE(v11) = v21 == 0;
            if (v21)
            {
              v22 = qword_1000C12F8;
              if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
              {
                sub_1000653FC(v22);
              }
            }

LABEL_46:

LABEL_52:
LABEL_53:

            goto LABEL_37;
          }

          if (!strncmp(string, "SyncStatus", 0xAuLL))
          {
            if (qword_1000C1050)
            {
              [qword_1000C1050 testSyncStatus];
              goto LABEL_36;
            }
          }

          else if (!strncmp(string, "SyncSet", 7uLL))
          {
            if (qword_1000C1050)
            {
              [qword_1000C1050 testSyncSet:v3];
              goto LABEL_36;
            }
          }

          else
          {
            if (strncmp(string, "SyncMemoryPressureCritical", 0x1AuLL))
            {
              if (!strncmp(string, "SetGenerateBacktraceOnPrompt", 0x1CuLL))
              {
                v23 = xpc_dictionary_get_BOOL(v3, "arg1");
                [qword_1000C1300 setGenerateBacktraceOnPrompt:v23];
                v24 = [qword_1000C1300 logHandle];
                if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                {
LABEL_62:

                  goto LABEL_36;
                }

                v25 = "false";
                if (v23)
                {
                  v25 = "true";
                }

                *buf = 136446210;
                v69 = v25;
                v26 = "Setting generateBacktraceOnPrompt: %{public}s";
LABEL_61:
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, v26, buf, 0xCu);
                goto LABEL_62;
              }

              if (!strncmp(string, "PruneDB", 7uLL))
              {
                sub_1000204FC();
                goto LABEL_36;
              }

              if (strncmp(string, "pstate-get", 0xAuLL) && strncmp(string, "pstate-set", 0xAuLL) && strncmp(string, "pstate-reset", 0xCuLL))
              {
                if (strncmp(string, "show-alert", 0xAuLL))
                {
                  if (!strncmp(string, "LogFDs", 6uLL))
                  {
                    log_open_file_descriptors();
                    goto LABEL_36;
                  }

                  if (!strncmp(string, "ExhaustFDs", 0xAuLL))
                  {
                    v24 = dispatch_get_global_queue(0, 0);
                    dispatch_async(v24, &stru_1000A5BB0);
                    goto LABEL_62;
                  }

                  if (!strncmp(string, "SetReminderCooldownPeriod", 0x19uLL))
                  {
                    int64 = xpc_dictionary_get_int64(v3, "arg1");
                    v36 = xpc_dictionary_get_int64(v3, "arg2");
                    v37 = [qword_1000C1300 logHandle];
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                    {
                      *buf = 134349312;
                      v69 = int64;
                      v70 = 2050;
                      v71 = v36;
                      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "SetReminderCooldownPeriod, system: %{public}llu, service: %{public}llu", buf, 0x16u);
                    }

                    v38 = [qword_1000C1300 reminderMonitor];
                    [v38 setReminderCooldownPeriod:int64 with:v36];

                    goto LABEL_36;
                  }

                  if (!strncmp(string, "GetReminderCooldownPeriod", 0x19uLL))
                  {
                    v41 = [qword_1000C1300 logHandle];
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                    {
                      v42 = [qword_1000C1300 reminderMonitor];
                      [v42 systemCooldown];
                      v44 = v43;
                      v45 = [qword_1000C1300 reminderMonitor];
                      [v45 serviceCooldown];
                      *buf = 134349312;
                      v69 = v44;
                      v70 = 2050;
                      v71 = v46;
                      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "GetReminderCooldownPeriod, system: %{public}llu, service: %{public}llu", buf, 0x16u);
                    }

                    v47 = [qword_1000C1300 reminderMonitor];
                    [v47 systemCooldown];
                    xpc_dictionary_set_int64(v4, "systemReminderCooldown", v48);

                    v24 = [qword_1000C1300 reminderMonitor];
                    [v24 serviceCooldown];
                    v50 = v49;
                    v51 = "serviceReminderCooldown";
LABEL_105:
                    xpc_dictionary_set_int64(v4, v51, v50);
                    goto LABEL_62;
                  }

                  if (strncmp(string, "accessSetPrompt", 0xFuLL))
                  {
                    if (!strncmp(string, "TestDatabaseCorrupt", 0x13uLL))
                    {
                      v53 = xpc_dictionary_get_int64(v3, "arg1");
                      v54 = db_test_corrupt(v53);
                      xpc_dictionary_set_int64(v4, "result_type", v54);
                      LOBYTE(v11) = v54 == 0;
                      goto LABEL_37;
                    }

                    if (strncmp(string, "GetIndirectRequestsOutstanding", 0x1EuLL))
                    {
                      if (!strncmp(string, "SurfaceIndirectOutstandingAlert", 0x1FuLL))
                      {
                        v58 = [qword_1000C1300 logHandle];
                        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
                        {
                          *buf = 0;
                          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "SurfaceIndirectOutstandingAlert", buf, 2u);
                        }

                        v9 = [qword_1000C1300 platform];
                        [TCCDTapToRadar surfaceIndirectAlert:[v9 indirectRequestsOutstanding]];
                      }

                      else
                      {
                        if (strncmp(string, "SetIndrectRequesetsOutstanding", 0x1EuLL))
                        {
                          if (strncmp(string, "incomingSyncAuth", 0x10uLL))
                          {
                            if (strncmp(string, "SimulatingDeviceIDChange", 0x18uLL) && os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
                            {
                              sub_1000651EC();
                            }

                            goto LABEL_56;
                          }

                          v61 = xpc_dictionary_get_string(v3, "arg1");
                          v62 = xpc_dictionary_get_string(v3, "arg2");
                          uint64 = xpc_dictionary_get_uint64(v3, "arg3");
                          v67 = xpc_dictionary_get_int64(v3, "arg4");
                          v64 = [TCCDSyncUpdateAccessAction alloc];
                          v65 = [NSString stringWithUTF8String:v61];
                          v11 = [NSString stringWithUTF8String:v62];
                          v16 = [(TCCDSyncClientAccessAction *)v64 initWithServiceIdentifier:v65 mainClientIdentifier:v11 replicaClientIdentifier:0 clientType:uint64];

                          LOBYTE(v11) = v16 != 0;
                          if (v16)
                          {
                            [(TCCDSyncUpdateAccessAction *)v16 setUpdateAccessActionStatus:[TCCDSyncUpdateAccessAction accessUpdateStatusForAuthorizationRight:v67 forMain:0]];
                            [(TCCDSyncUpdateAccessAction *)v16 updateDatabase:1 killClient:0];
                          }

                          else if (os_log_type_enabled(qword_1000C12F8, OS_LOG_TYPE_ERROR))
                          {
                            sub_10006525C();
                          }

                          goto LABEL_53;
                        }

                        v59 = xpc_dictionary_get_int64(v3, "arg1");
                        v60 = [qword_1000C1300 logHandle];
                        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                        {
                          *buf = 67240192;
                          LODWORD(v69) = v59;
                          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "SetIndrectRequesetsOutstanding, requests: %{public}d", buf, 8u);
                        }

                        v9 = [qword_1000C1300 platform];
                        [v9 setIndirectRequestsOutstanding:v59];
                      }

                      goto LABEL_35;
                    }

                    v55 = [qword_1000C1300 logHandle];
                    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                    {
                      v56 = [qword_1000C1300 platform];
                      *buf = 134349056;
                      v69 = [v56 indirectRequestsOutstanding];
                      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "GetIndirectRequestsOutstanding, indirect reuqests outstanding: %{public}llu", buf, 0xCu);
                    }

                    v24 = [qword_1000C1300 platform];
                    v50 = [v24 indirectRequestsOutstanding];
                    v51 = "indirectRequestsOutstanding";
                    goto LABEL_105;
                  }

                  v52 = [qword_1000C1300 logHandle];
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315138;
                    v69 = "handle_TCCTestInternal";
                    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "%s accessSetPrompt", buf, 0xCu);
                  }

                  v24 = [qword_1000C1300 logHandle];
                  if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    goto LABEL_62;
                  }

                  *buf = 136315138;
                  v69 = "handle_TCCTestInternal";
                  v26 = "%s not functional";
                  goto LABEL_61;
                }

                v32 = xpc_dictionary_get_string(v3, "arg1");
                v33 = xpc_dictionary_get_string(v3, "arg2");
                if (v32)
                {
                  v16 = [NSString stringWithUTF8String:v32];
                }

                else
                {
                  v16 = 0;
                }

                if (v33)
                {
                  v34 = [NSString stringWithUTF8String:v33];
                  v19 = v34;
                  if (v16 && v34)
                  {
                    LODWORD(v11) = [v34 isEqualToString:@"FirstPromptFor3Rights"];
                    if (v11)
                    {
                      v66 = 1;
                    }

                    else
                    {
                      if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_ERROR))
                      {
                        sub_100065298();
                      }

                      v66 = 0;
                    }

                    v39 = +[TCCDPlatform currentPlatform];
                    v20 = [v39 serviceByName:v16];

                    if (v20)
                    {
                      if (v11)
                      {
                        v40 = [v20 alertManager];
                        v11 = v40;
                        if (v40)
                        {
                          [v40 displayAlertForCondition:v66 withCustomUserInfo:0];
                        }

                        else
                        {
                          v57 = qword_1000C1060;
                          if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138543362;
                            v69 = v16;
                            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "show-alert: Service: %{public}@ has no alert manager.", buf, 0xCu);
                          }
                        }

                        LOBYTE(v11) = 1;
                      }

                      goto LABEL_46;
                    }

                    if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_ERROR))
                    {
                      sub_100065308();
                    }

                    goto LABEL_91;
                  }
                }

                else
                {
                  v19 = 0;
                }

                if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_ERROR))
                {
                  sub_100065378();
                }

LABEL_91:
                v20 = 0;
                LOBYTE(v11) = 0;
                goto LABEL_46;
              }

              v27 = xpc_dictionary_get_string(v3, "arg1");
              v28 = xpc_dictionary_get_string(v3, "arg2");
              v29 = xpc_dictionary_get_int64(v3, "arg3");
              if (v27)
              {
                v27 = [NSString stringWithUTF8String:v27];
              }

              if (v28)
              {
                v28 = [NSString stringWithUTF8String:v28];
              }

              if (!v27)
              {
                goto LABEL_71;
              }

              v30 = [v27 isEqualToString:@"PostUpgrade3RightAlert"];
              if (!strncmp(string, "pstate-get", 0xAuLL))
              {
                value = db_persistent_state_get_value(v30, v28);
                xpc_dictionary_set_int64(v4, "pstate_value", value);
              }

              else if (!strncmp(string, "pstate-set", 0xAuLL))
              {
                db_persistent_state_set_value(v30, v28, v29);
              }

              else
              {
                if (strncmp(string, "pstate-reset", 0xCuLL))
                {
LABEL_71:
                  LOBYTE(v11) = 0;
LABEL_79:

                  goto LABEL_37;
                }

                db_persistent_state_reset(v30, v28);
              }

              LOBYTE(v11) = 1;
              goto LABEL_79;
            }

            if (qword_1000C1050)
            {
              [qword_1000C1050 testMemoryPressureCritical];
              goto LABEL_36;
            }
          }
        }

LABEL_56:
        LOBYTE(v11) = 0;
        goto LABEL_37;
      }

      v10 = [qword_1000C1300 stateDumpDictionary];
      v9 = [v10 description];

      xpc_dictionary_set_string(v4, "description_string", [v9 UTF8String]);
    }

LABEL_35:

LABEL_36:
    LOBYTE(v11) = 1;
LABEL_37:
    xpc_dictionary_set_BOOL(v4, "result", v11);
  }
}

void sub_100024518(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [TCCDRequestContext alloc];
  v40 = 0;
  v6 = [(TCCDRequestContext *)v5 initWithRequestMessage:v3 forServer:qword_1000C1300 error:&v40];
  v7 = v40;
  [(TCCDRequestContext *)v6 setInitialPrompt:0];
  if (v6)
  {
    v8 = qword_1000C1060;
    if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
    {
      log = v8;
      v9 = [(TCCDRequestContext *)v6 messageIdentifier];
      v10 = [(TCCDRequestContext *)v6 functionName];
      v11 = [(TCCDRequestContext *)v6 service];
      [v11 name];
      v12 = v34 = v3;
      v13 = v4;
      v14 = [(TCCDRequestContext *)v6 queryCount];
      v15 = [(TCCDRequestContext *)v6 clientDict];
      v16 = [(TCCDRequestContext *)v6 daemonDict];
      *buf = 138544642;
      v42 = v9;
      v43 = 2112;
      v44 = v10;
      v45 = 2112;
      v46 = v12;
      v47 = 2048;
      v48 = v14;
      v4 = v13;
      v49 = 2112;
      v50 = v15;
      v51 = 2112;
      v52 = v16;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "AUTHREQ_CTX: msgID=%{public}@, function=%@, service=%@, query=%llu, client_dict=%@, daemon_dict=%@", buf, 0x3Eu);

      v3 = v34;
    }

    v17 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, "function")];
    v39 = v7;
    v18 = [qword_1000C1300 serviceFromMessage:v3 error:&v39];
    v19 = v39;

    if (v18)
    {
      v20 = [v18 downgradeAuthRight];
      v21 = qword_1000C1300;
      if (v20)
      {
        v22 = [(TCCDRequestContext *)v6 attributionChain];
        v23 = [v22 requestingProcess];
        v24 = [v21 canProcess:v23 callFunction:v17 forService:v18 withAccessIdentity:0];

        if (v24)
        {
          v25 = [TCCDAccessIdentity alloc];
          v26 = [(TCCDRequestContext *)v6 attributionChain];
          v27 = [(TCCDRequestContext *)v6 service];
          v28 = -[TCCDAccessIdentity initWithAttributionChain:preferMostSpecificIdentifier:](v25, "initWithAttributionChain:preferMostSpecificIdentifier:", v26, [v27 hasParanoidSecurityPolicy]);
          [(TCCDRequestContext *)v6 setSubjectIdentity:v28];

          v29 = [qword_1000C1300 reminderMonitor];
          v30 = [v29 reportResourceUsage:v6];

          if (v30)
          {
            xpc_dictionary_set_BOOL(v4, "result", 1);
LABEL_22:

            v7 = v19;
            goto LABEL_23;
          }

          v35 = v19;
          [qword_1000C1300 makeError:&v35 withCode:8 infoText:0];
          v31 = v35;

          v30 = objc_opt_new();
          [qword_1000C1300 buildErrorString:v30 forError:v31 contextString:0];
          v32 = [qword_1000C1300 logHandle];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_1000656C8();
          }
        }

        else
        {
          v36 = v19;
          [qword_1000C1300 makeError:&v36 withCode:5 infoText:0];
          v31 = v36;

          v30 = objc_opt_new();
          [qword_1000C1300 buildErrorString:v30 forError:v31 contextString:0];
          v32 = [qword_1000C1300 logHandle];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_1000656C8();
          }
        }
      }

      else
      {
        v37 = v19;
        [qword_1000C1300 makeError:&v37 withCode:2 infoText:0];
        v31 = v37;

        v30 = objc_opt_new();
        [qword_1000C1300 buildErrorString:v30 forError:v31 contextString:0];
        v32 = [qword_1000C1300 logHandle];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_1000656C8();
        }
      }
    }

    else
    {
      v38 = v19;
      [qword_1000C1300 makeError:&v38 withCode:2 infoText:0];
      v31 = v38;

      v30 = objc_opt_new();
      [qword_1000C1300 buildErrorString:v30 forError:v31 contextString:0];
      v32 = [qword_1000C1300 logHandle];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_1000656C8();
      }
    }

    v19 = v31;
    goto LABEL_22;
  }

  if (!v7)
  {
    v7 = [TCCDServer newErrorWithCode:6 format:@"Failed to create Request Context."];
  }

  v17 = objc_opt_new();
  [qword_1000C1300 buildErrorString:v17 forError:v7 contextString:0];
  v18 = [qword_1000C1300 logHandle];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_1000656C8();
  }

LABEL_23:
}

void sub_100024AD4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  [v5 setPromptType:4];
  v6 = qword_1000C1060;
  if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v114 = "handle_TCCSetAccessWithPrompt";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s begin", buf, 0xCu);
  }

  v112 = 0;
  v7 = [qword_1000C1300 serviceFromMessage:v3 error:&v112];
  v8 = v112;
  if (v7)
  {
    if (!_os_feature_enabled_impl() || ([qword_1000C1300 platform], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "protectedAppManager"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "name"), v11 = v4, v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v10, "authenticateForAccessToService:", v12), v12, v4 = v11, v10, v9, (v13 & 1) != 0))
    {
      v14 = objc_alloc_init(TCCDRequestContext);
      [(TCCDRequestContext *)v14 setSpiVersion:2];
      v15 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, "function")];
      [(TCCDRequestContext *)v14 setFunctionName:v15];
      [(TCCDRequestContext *)v14 setService:v7];
      [(TCCDRequestContext *)v14 setAccessSetPrompt:1];
      v16 = [[TCCDAttributionChain alloc] initWithMessage:v3];
      v17 = qword_1000C1060;
      v106 = v16;
      if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = [(TCCDAttributionChain *)v16 requestingProcess];
        *buf = 138412290;
        v114 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "requesting process; %@", buf, 0xCu);

        v16 = v106;
      }

      v20 = qword_1000C1300;
      v21 = [(TCCDAttributionChain *)v16 requestingProcess];
      LOBYTE(v20) = [v20 canProcess:v21 callFunction:v15 forService:v7 withAccessIdentity:0];

      if ((v20 & 1) == 0)
      {
        v110 = v8;
        [qword_1000C1300 makeError:&v110 withCode:5 infoText:0];
        v24 = v110;

        v25 = objc_opt_new();
        [qword_1000C1300 buildErrorString:v25 forError:v24 contextString:0];
        v26 = [qword_1000C1300 logHandle];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_100065744();
        }

        goto LABEL_72;
      }

      string = xpc_dictionary_get_string(v3, "client_type");
      v23 = xpc_dictionary_get_string(v3, "client");
      if (strcmp(string, "bundle"))
      {
        v109 = v8;
        [qword_1000C1300 makeError:&v109 withCode:6 infoText:0];
        v24 = v109;

        v25 = objc_opt_new();
        [qword_1000C1300 buildErrorString:v25 forError:v24 contextString:0];
        v26 = [qword_1000C1300 logHandle];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_100065744();
        }

        goto LABEL_72;
      }

      v33 = [TCCDAccessIdentity alloc];
      v34 = [NSString stringWithUTF8String:v23];
      v35 = [(TCCDAccessIdentity *)v33 initWithIdentifier:v34 type:0 executableURL:0 SDKVersion:0 platformType:0];

      v36 = qword_1000C1060;
      v105 = v35;
      if (!v35)
      {
        if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_ERROR))
        {
          sub_100065830();
        }

        v108 = v8;
        [qword_1000C1300 makeError:&v108 withCode:6 infoText:0];
        v24 = v108;

        v26 = objc_opt_new();
        [qword_1000C1300 buildErrorString:v26 forError:v24 contextString:0];
        v49 = [qword_1000C1300 logHandle];
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_100065744();
        }

        v25 = 0;
        goto LABEL_71;
      }

      v101 = v4;
      if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v36;
        v38 = [(TCCDRequestContext *)v14 subjectIdentity];
        v39 = [v38 identifier];
        *buf = 138412290;
        v114 = v39;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "context.subjectIdentity.identifier: %@", buf, 0xCu);
      }

      [(TCCDRequestContext *)v14 setSubjectIdentity:v105];
      uint64 = xpc_dictionary_get_uint64(v3, "desired_auth_value");
      [(TCCDRequestContext *)v14 setDesiredAuth:uint64];
      v103 = [v7 settingsRequestFullTitleTextLocalizationKey];
      v41 = [(TCCDRequestContext *)v14 service];
      v100 = [v41 requestAdditionalTextForSettingsRequestsLocalizationKey];

      v42 = [v7 buttonTitleLocalizationKeyForAuthorization:uint64 desiredAuth:uint64];
      v43 = [v7 cancelButtontitleLocalizationKey];
      v90 = uint64;
      if ([v7 swapButtonOrderForPromptFromSettings])
      {
        v44 = [v7 buttonTitleLocalizationKeyForAuthorization:uint64 desiredAuth:uint64];
        v45 = v43;
        v43 = v44;

        v46 = [v7 cancelButtontitleLocalizationKey];
        v47 = v42;
        v48 = v46;

        v91 = uint64;
        log = 0;
        v102 = v48;
      }

      else
      {
        v102 = v42;
        v91 = 0;
        log = uint64;
      }

      v104 = v43;
      v50 = qword_1000C1060;
      if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
      {
        v51 = v50;
        v52 = [v7 name];
        *buf = 136315906;
        v114 = "handle_TCCSetAccessWithPrompt";
        v115 = 2048;
        v116 = 1;
        v117 = 2048;
        v118 = uint64;
        v119 = 2112;
        v120 = v52;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%s currentAuth: %llu desiredAuth: %llu, got auth choices for service %@", buf, 0x2Au);
      }

      v95 = v15;
      v53 = qword_1000C1060;
      if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v114 = v91;
        v115 = 2048;
        v116 = log;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "aButtonAuth: %llu bButtonAuth: %llu", buf, 0x16u);
      }

      v54 = [(TCCDRequestContext *)v14 service];
      v99 = [v54 localizedTextWithKey:v104];

      v55 = [(TCCDRequestContext *)v14 service];
      v56 = v102;
      v98 = [v55 localizedTextWithKey:v102];

      v57 = [v7 localizedTextWithKey:v103];
      v96 = v57;
      if (!v57)
      {
        v67 = tcc_access_log();
        v4 = v101;
        v97 = v67;
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v114 = v7;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Could not find localized string for service: %@", buf, 0xCu);
        }

        v49 = v100;
        v15 = v95;
        goto LABEL_70;
      }

      v58 = v57;
      v59 = [(TCCDAccessIdentity *)v105 displayName];
      v60 = [NSString stringWithValidatedFormat:v58 validFormatSpecifiers:@"%@" error:0, v59];

      v97 = v60;
      if (!v60)
      {
        v68 = tcc_access_log();
        v4 = v101;
        v15 = v95;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v114 = v7;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Could not find localized request string for service: %@", buf, 0xCu);
        }

        goto LABEL_69;
      }

      v4 = v101;
      v15 = v95;
      if (v100)
      {
        v61 = [(TCCDRequestContext *)v14 service];
        v87 = [v61 localizedResourcesBundle];
        v62 = [v87 localizedStringForKey:v100 value:&stru_1000A7240 table:0];
        v89 = v62;
        if (v62)
        {
          v63 = v62;
          v64 = [(TCCDAccessIdentity *)v105 displayName];
          v65 = [NSString stringWithValidatedFormat:v63 validFormatSpecifiers:@"%@" error:0, v64];

          v4 = v101;
          if (v65)
          {
            v66 = v65;
            goto LABEL_50;
          }
        }

        else
        {
        }

        v69 = tcc_access_log();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          sub_1000657C0();
        }

        v66 = 0;
      }

      else
      {
        v66 = 0;
        v89 = 0;
      }

LABEL_50:
      v88 = v66;
      [TCCDRequestContext presentSynchronousPromptWithHeader:v14 message:"presentSynchronousPromptWithHeader:message:aButtonTitle:aButtonAuth:bButtonTitle:bButtonAuth:cButtonTitle:cButtonAuth:currentAuth:updatingResult:" aButtonTitle:v97 aButtonAuth:0 bButtonTitle:1 bButtonAuth:1 cButtonTitle:v5 cButtonAuth:? currentAuth:? updatingResult:?];
      v70 = tcc_access_log();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v114 = "handle_TCCSetAccessWithPrompt";
        v115 = 2112;
        v116 = v5;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%s: result %@", buf, 0x16u);
      }

      if (!v5)
      {
        v107 = v8;
        [qword_1000C1300 makeError:&v107 withCode:8 infoText:0];
        v72 = v107;

        v73 = objc_opt_new();
        [qword_1000C1300 buildErrorString:v73 forError:v72 contextString:0];
        v74 = [qword_1000C1300 logHandle];
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          sub_100065744();
        }

        v68 = v88;
        v8 = v72;
        goto LABEL_69;
      }

      if ([v5 databaseAction] != 1 || !objc_msgSend(v5, "authorizationValue"))
      {
LABEL_64:
        v79 = qword_1000C1060;
        if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
        {
          loga = v79;
          v80 = [(TCCDRequestContext *)v14 messageIdentifier];
          v92 = [v5 authorizationValue];
          v86 = [v5 authorizationReason];
          v81 = [v5 authorizationVersion];
          v82 = [v5 error];
          *buf = 138544386;
          v114 = v80;
          v115 = 2048;
          v116 = v92;
          v117 = 2048;
          v118 = v86;
          v119 = 2048;
          v120 = v81;
          v121 = 2114;
          v122 = v82;
          _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "AUTH_SET_PROMPT: msgID=%{public}@, authValue=%llu, authReason=%llu, authVersion=%llu, error=%{public}@,", buf, 0x34u);
        }

        v83 = [qword_1000C1300 platform];
        v84 = [(TCCDRequestContext *)v14 service];
        [v83 sendAnalyticsForAction:4 service:v84 subjectIdentity:v105 indirectObjectIdentity:0 authValue:objc_msgSend(v5 includeV1AuthValue:"authorizationValue") v1AuthValue:0 desiredAuth:objc_msgSend(v5 domainReason:"v1AuthorizationValue") promptType:v90 macBuddyStatus:{0, objc_msgSend(v5, "promptType"), 0}];

        v4 = v101;
        [v5 populateReplyMessage:v101];
        v85 = qword_1000C1060;
        if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v114 = "handle_TCCSetAccessWithPrompt";
          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "%s end", buf, 0xCu);
        }

        v68 = v88;

LABEL_69:
        v49 = v100;
        v56 = v102;

LABEL_70:
        v24 = v8;
        v25 = v105;
        v26 = v103;
LABEL_71:

LABEL_72:
        v8 = v24;
        goto LABEL_73;
      }

      v71 = [v7 name];
      if ([v71 isEqualToString:@"kTCCServicePhotos"])
      {
      }

      else
      {
        v75 = [v7 name];
        v76 = [v75 isEqualToString:@"kTCCServiceCalendar"];

        if (!v76)
        {
          goto LABEL_62;
        }
      }

      [v5 setAuthorizationVersion:{objc_msgSend(v7, "authorizationVersionNumber")}];
LABEL_62:
      if (([qword_1000C1300 updateAuthorizationRecordFromContext:v14 forResult:v5 syncedUpdate:0] & 1) == 0)
      {
        v77 = [(TCCDRequestContext *)v14 service];
        v78 = [(TCCDRequestContext *)v14 identityDescription];
        [v5 denyAuthorizationWithErrorCode:4 format:{@"Failed to update database %@ from %@", v77, v78}];
      }

      goto LABEL_64;
    }

    v30 = qword_1000C1060;
    if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      v32 = [v7 name];
      *buf = 138412290;
      v114 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "service: %@ is locked and authentication failed", buf, 0xCu);
    }
  }

  else
  {
    v111 = v8;
    [qword_1000C1300 makeError:&v111 withCode:2 infoText:0];
    v27 = v111;

    v28 = objc_opt_new();
    [qword_1000C1300 buildErrorString:v28 forError:v27 contextString:0];
    v29 = [qword_1000C1300 logHandle];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100065744();
    }

    v8 = v27;
  }

LABEL_73:
}

void sub_1000259A0(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) name];
  LODWORD(a2) = sqlite3_bind_text(a2, 1, [v3 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  if (a2)
  {

    _db_error(1);
  }
}

void sub_100025A48(uint64_t a1, sqlite3_stmt *a2)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 0)];
  [v2 addObject:v3];
}

BOOL sub_100025AB8(_OWORD *a1)
{
  v1 = a1[1];
  *v8.val = *a1;
  *&v8.val[4] = v1;
  v2 = SecTaskCreateWithAuditToken(0, &v8);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = SecTaskCopyValueForEntitlement(v2, @"com.apple.private.tcc.policy-override", 0);
  if (v4)
  {
    v5 = v4;
    v6 = CFEqual(v4, kCFBooleanTrue) != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v3);
  return v6;
}

void sub_100025B54(uint64_t a1, sqlite3_stmt *a2)
{
  memset(v4, 0, sizeof(v4));
  uuid_unparse(*(a1 + 32), v4);
  if (sqlite3_bind_text(a2, 1, *(a1 + 40), -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_text(a2, 2, v4, -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_text(a2, 3, *(a1 + 48), -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    _db_error(1);
  }
}

uint64_t sub_100025C24(uint64_t a1)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100025D70;
  v8[3] = &unk_1000A52F0;
  v2 = *(a1 + 32);
  v9 = *(a1 + 48);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100025E24;
  v6[3] = &unk_1000A5928;
  v7 = v2;
  result = db_eval_locked("SELECT id FROM policies WHERE bundle_id = ? AND uuid = ?", v8, v6);
  if (!result)
  {
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_100025E6C;
      v5[3] = &unk_1000A5950;
      v4 = *(a1 + 64);
      v5[4] = *(a1 + 32);
      v5[5] = v4;
      return db_eval_locked("INSERT OR REPLACE INTO active_policy VALUES (?, ?, ?)", v5, 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_100025D70(uint64_t a1, sqlite3_stmt *a2)
{
  memset(v4, 0, sizeof(v4));
  uuid_unparse(*(a1 + 32), v4);
  if (sqlite3_bind_text(a2, 1, *(a1 + 40), -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_text(a2, 2, v4, -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    _db_error(1);
  }
}

sqlite3_int64 sub_100025E24(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int64(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

void sub_100025E6C(uint64_t a1, sqlite3_stmt *a2)
{
  if (sqlite3_bind_text(a2, 1, *(a1 + 40), -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_int(a2, 2, 0) || sqlite3_bind_int64(a2, 3, *(*(*(a1 + 32) + 8) + 24)))
  {

    _db_error(1);
  }
}

uint64_t sub_100025F00(uint64_t a1)
{
  v2 = db_eval_locked("CREATE TEMPORARY TABLE _exceptions (uuid TEXT NOT NULL)", 0, 0);
  if (!v2)
  {
    xpc_array_apply(*(a1 + 32), &stru_1000A59B8);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100026120;
    v4[3] = &unk_1000A59D8;
    v4[4] = *(a1 + 40);
    v2 = db_eval_locked("DELETE FROM policies WHERE bundle_id = ? AND uuid NOT IN (SELECT uuid FROM _exceptions)", v4, 0);
  }

  db_eval_locked("DROP TABLE IF EXISTS _exceptions", 0, 0);
  return v2;
}

BOOL sub_100025FD0(id a1, unint64_t a2, OS_xpc_object *a3)
{
  v3 = a3;
  if (xpc_get_type(v3) == &_xpc_type_uuid)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002608C;
    v6[3] = &unk_1000A59D8;
    v6[4] = xpc_uuid_get_bytes(v3);
    v4 = db_eval_locked("INSERT INTO _exceptions VALUES (?)", v6, 0) == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10002608C(uint64_t a1, sqlite3_stmt *a2)
{
  memset(v3, 0, sizeof(v3));
  uuid_unparse(*(a1 + 32), v3);
  if (sqlite3_bind_text(a2, 1, v3, -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    _db_error(1);
  }
}

void sub_100026120(uint64_t a1, sqlite3_stmt *a2)
{
  if (sqlite3_bind_text(a2, 1, *(a1 + 32), -1, 0xFFFFFFFFFFFFFFFFLL))
  {

    _db_error(1);
  }
}

void sub_100026170(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) name];
  LODWORD(a2) = sqlite3_bind_text(a2, 1, [v3 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  if (a2)
  {

    _db_error(1);
  }
}

void sub_1000261F0(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = sqlite3_column_int(a2, 1);
    v6 = v5;
    if (v5 >= 2)
    {
      v7 = [qword_1000C1300 logHandle];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1000658B0(a1, v6, v7);
      }

      goto LABEL_21;
    }

    if (v5 == 1)
    {
      v9 = sqlite3_column_text(a2, 0);
      xpc_dictionary_set_string(v4, "path", v9);
LABEL_11:
      v10 = sqlite3_column_int64(a2, 3);
      xpc_dictionary_set_int64(v4, "last_modified", v10);
      v11 = sqlite3_column_int64(a2, 4);
      xpc_dictionary_set_int64(v4, "expired_at", v11);
      if (sqlite3_column_type(a2, 2) != 5)
      {
        v12 = sqlite3_column_blob(a2, 2);
        v13 = sqlite3_column_bytes(a2, 2);
        xpc_dictionary_set_data(v4, "code_requirement", v12, v13);
      }

      xpc_array_append_value(*(*(*(a1 + 40) + 8) + 40), v4);
      goto LABEL_21;
    }

    v14 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 0)];
    if (!v14)
    {
      goto LABEL_21;
    }

    v15 = v14;
    xpc_dictionary_set_string(v4, "bundle_id", [v14 UTF8String]);
    v16 = [LSApplicationProxy applicationProxyForIdentifier:v15 placeholder:0];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 bundleURL];

      if (v18)
      {
        v19 = [v17 bundleURL];
        v20 = [v19 absoluteString];
        xpc_dictionary_set_string(v4, "bundle", [v20 UTF8String]);

        goto LABEL_11;
      }
    }

    v21 = [qword_1000C1300 logHandle];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "bundle Id: %@ has no LSProxy or URL", &v22, 0xCu);
    }
  }

  else
  {
    v8 = [qword_1000C1300 logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100065964();
    }
  }

LABEL_21:
}

uint64_t sub_10002650C(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000265B0;
  v4[3] = &unk_1000A5A90;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v2 = db_eval_locked("DELETE FROM expired WHERE client = ? AND client_type = ?", v4, 0);

  return v2;
}

void sub_1000265B0(uint64_t a1, sqlite3_stmt *a2)
{
  if (sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_int(a2, 2, *(a1 + 40)))
  {

    _db_error(1);
  }
}

uint64_t sub_100026634(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000266CC;
  v3[3] = &unk_1000A5188;
  v4 = *(a1 + 32);
  v1 = db_eval_locked("DELETE FROM expired WHERE service = ?", v3, 0);

  return v1;
}

void sub_1000266CC(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) name];
  LODWORD(a2) = sqlite3_bind_text(a2, 1, [v3 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  if (a2)
  {

    _db_error(1);
  }
}

uint64_t sub_10002674C(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100026804;
  v4[3] = &unk_1000A5B08;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v2 = db_eval_locked("DELETE FROM expired WHERE service = ? AND client = ? AND client_type = ?", v4, 0);

  return v2;
}

void sub_100026804(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) name];
  if (sqlite3_bind_text(a2, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_text(a2, 2, objc_msgSend(*(a1 + 40), "UTF8String"), -1, 0xFFFFFFFFFFFFFFFFLL))
  {
  }

  else
  {
    v5 = sqlite3_bind_int(a2, 3, *(a1 + 48));

    if (!v5)
    {
      return;
    }
  }

  _db_error(1);
}

void sub_1000268D4(id a1)
{
  if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_DEBUG))
  {
    sub_1000659A0();
  }

  db_eval("SELECT NULL FROM access_overrides WHERE service = ?", &stru_1000A5B70, &stru_1000A5B90);
}

void sub_100026930(id a1, sqlite3_stmt *a2)
{
  if (sqlite3_bind_text(a2, 10, "kTCCBogusService", -1, 0xFFFFFFFFFFFFFFFFLL))
  {

    _db_error(1);
  }
}

void sub_100026984(id a1, sqlite3_stmt *a2)
{
  if (os_log_type_enabled(qword_1000C1060, OS_LOG_TYPE_ERROR))
  {
    sub_1000659DC();
  }
}

void sub_1000269C8(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_text(a2, 0);
  v5 = sqlite3_column_int(a2, 1);
  if (v4)
  {
    v6 = v5;
    v7 = *(a1 + 32);
    v8 = [NSString stringWithUTF8String:v4];
    [v7 addObject:v8];

    v9 = *(a1 + 40);
    v10 = [NSNumber numberWithInt:v6];
    [v9 addObject:v10];
  }
}

void sub_100026A9C(uint64_t a1, sqlite3_stmt *a2)
{
  if (sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_int(a2, 2, *(a1 + 40)))
  {

    _db_error(1);
  }
}

void sub_100026B20(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_text(a2, 0);
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [NSString stringWithUTF8String:v3];
    [v4 addObject:v5];
  }
}

void sub_100026BA4(uint64_t a1, sqlite3_stmt *a2)
{
  if (sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_int(a2, 2, *(a1 + 40)))
  {

    _db_error(1);
  }
}

void sub_100026C28(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_text(a2, 0);
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [NSString stringWithUTF8String:v3];
    [v4 addObject:v5];
  }
}

void sub_100026CAC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_100027950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v45 - 256), 8);
  _Block_object_dispose((v45 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_1000279F8(uint64_t a1, sqlite3_stmt *a2)
{
  if (sqlite3_bind_int64(a2, 1, 2))
  {
    _db_error(1);
  }

  v4 = [*(a1 + 32) identifier];
  v5 = sqlite3_bind_text(a2, 2, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  if (v5)
  {
    _db_error(1);
  }

  v6 = [*(a1 + 40) service];
  v7 = [v6 name];
  v8 = sqlite3_bind_text(a2, 3, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  if (v8)
  {
    _db_error(1);
  }

  if (sqlite3_bind_int64(a2, 4, 2))
  {
    _db_error(1);
  }

  if (sqlite3_bind_int64(a2, 5, 4))
  {

    _db_error(1);
  }
}

void sub_100027B40(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 0)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  *(*(*(a1 + 56) + 8) + 24) = sqlite3_column_int(a2, 1);
  *(*(*(a1 + 64) + 8) + 24) = sqlite3_column_int(a2, 2);
  v7 = sqlite3_column_int(a2, 3);
  *(*(*(a1 + 72) + 8) + 24) = sqlite3_column_int(a2, 4);
  *(*(*(a1 + 80) + 8) + 24) = sqlite3_column_int(a2, 5);
  v8 = *(*(*(a1 + 64) + 8) + 24);
  v9 = *(*(*(a1 + 88) + 8) + 24);
  if (v8 < 1)
  {
    v11 = tcc_access_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(*(a1 + 88) + 8) + 24);
      v24 = 136315650;
      v25 = "[TCCDReminderMonitor reportResourceUsage:]_block_invoke_2";
      v26 = 2048;
      v27 = v12;
      v28 = 1024;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: lastReminded is 0 for this record, now: %f last_modified: %d", &v24, 0x1Cu);
    }

    v10 = v7 - kCFAbsoluteTimeIntervalSince1970;
  }

  else
  {
    v10 = v8;
  }

  v13 = v9 - v10;
  [*(a1 + 32) serviceCooldown];
  *(*(*(a1 + 96) + 8) + 24) = v13 > v14;
  v15 = tcc_access_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(*(*(a1 + 48) + 8) + 40) UTF8String];
    v17 = *(*(*(a1 + 56) + 8) + 24);
    v18 = [*(a1 + 40) service];
    v19 = [v18 name];
    v20 = [v19 UTF8String];
    v21 = *(*(*(a1 + 64) + 8) + 24);
    v22 = *(*(*(a1 + 88) + 8) + 24);
    [*(a1 + 32) serviceCooldown];
    v24 = 136317186;
    v25 = "[TCCDReminderMonitor reportResourceUsage:]_block_invoke";
    v26 = 2080;
    v27 = v16;
    v28 = 1024;
    v29 = v17;
    v30 = 2080;
    v31 = v20;
    v32 = 1024;
    v33 = v21;
    v34 = 1024;
    v35 = v7;
    v36 = 2048;
    v37 = v22;
    v38 = 2048;
    v39 = v13;
    v40 = 2048;
    v41 = v23;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: client: %s clientType: %d service: %s last_reminded: %d last_modified: %d now: %f elapsed: %f service_cooldown: %f", &v24, 0x50u);
  }
}

void sub_1000282BC(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error retrieving authorization record associated with attribution chain: %@ service: %@", buf, 0x16u);
}

void sub_10002896C(id a1)
{
  qword_1000C10A0 = [[TCCDAccessIndirectObject alloc] initWithType:0];

  _objc_release_x1();
}

void sub_100028A60(id a1)
{
  qword_1000C10A8 = os_log_create("com.apple.TCC", "access");

  _objc_release_x1();
}

id tcc_events_log()
{
  if (qword_1000C10C0 != -1)
  {
    sub_100028CD8();
  }

  v1 = qword_1000C10B8;

  return v1;
}

void sub_100028AE8(id a1)
{
  qword_1000C10B8 = os_log_create("com.apple.TCC", "events");

  _objc_release_x1();
}

id tcc_sync_log()
{
  if (qword_1000C10D0 != -1)
  {
    sub_100028CEC();
  }

  v1 = qword_1000C10C8;

  return v1;
}

void sub_100028B70(id a1)
{
  qword_1000C10C8 = os_log_create("com.apple.TCC", "sync");

  _objc_release_x1();
}

id tcc_assumed_identity_monitor_log()
{
  if (qword_1000C10E0 != -1)
  {
    sub_100028D00();
  }

  v1 = qword_1000C10D8;

  return v1;
}

void sub_100028BF8(id a1)
{
  qword_1000C10D8 = os_log_create("com.apple.TCC", "assumed_identity_monitor");

  _objc_release_x1();
}

id tcc_open_fds_log()
{
  if (qword_1000C10F0 != -1)
  {
    sub_100028D14();
  }

  v1 = qword_1000C10E8;

  return v1;
}

void sub_100028C80(id a1)
{
  qword_1000C10E8 = os_log_create("com.apple.TCC", "open_fds");

  _objc_release_x1();
}

void sub_100029118(uint64_t a1)
{
  v1 = sem_open("com.apple.tccd", 2560, 0, 1);
  if (v1 != -1)
  {
    sem_close(v1);
    goto LABEL_30;
  }

  if (*__error() == 17)
  {
    v2 = *(a1 + 32);
    v39 = a1 + 32;
    v3 = *(v2 + 8);
    v55 = 0;
    v4 = [NSData dataWithContentsOfFile:v3 options:0 error:&v55];
    v5 = v55;
    v6 = v5;
    if (!v4)
    {
      if ([v5 code] == 260)
      {
LABEL_45:

        goto LABEL_46;
      }

      v10 = tcc_assumed_identity_monitor_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10002A488();
      }

LABEL_44:

      goto LABEL_45;
    }

    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v7, v8, v9, objc_opt_class(), 0];
    v54 = v6;
    v11 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v10 fromData:v4 error:&v54];
    v12 = v54;

    if (v11)
    {
      v35 = v12;
      v36 = v11;
      v37 = v4;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v13 = v11;
      v41 = [v13 countByEnumeratingWithState:&v49 objects:v58 count:16];
      if (v41)
      {
        v40 = *v50;
        do
        {
          for (i = 0; i != v41; i = i + 1)
          {
            if (*v50 != v40)
            {
              objc_enumerationMutation(v13);
            }

            v15 = *(*(&v49 + 1) + 8 * i);
            v16 = [v13 objectForKeyedSubscript:v15];
            v17 = +[NSMutableSet set];
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v18 = v16;
            v19 = [v18 countByEnumeratingWithState:&v45 objects:v57 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v46;
              do
              {
                for (j = 0; j != v20; j = j + 1)
                {
                  if (*v46 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = *(*(&v45 + 1) + 8 * j);
                  v43 = 0u;
                  v44 = 0u;
                  [v23 getBytes:&v43 length:32];
                  v24 = [TCCDProcess alloc];
                  v42[0] = v43;
                  v42[1] = v44;
                  v25 = [(TCCDProcess *)v24 initWithAuditToken:v42 responsibleIdentity:0];
                  if (v25)
                  {
                    [v17 addObject:v25];
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v45 objects:v57 count:16];
              }

              while (v20);
            }

            if ([v17 count])
            {
              [*(*v39 + 24) setObject:v17 forKeyedSubscript:v15];
            }
          }

          v41 = [v13 countByEnumeratingWithState:&v49 objects:v58 count:16];
        }

        while (v41);
      }

      v26 = tcc_assumed_identity_monitor_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        sub_10002A3A4();
      }

      v6 = v35;
      v11 = v36;
      v4 = v37;
    }

    else
    {
      v31 = tcc_assumed_identity_monitor_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10002A420();
      }

      v32 = +[NSFileManager defaultManager];
      v33 = *(*v39 + 8);
      v53 = v12;
      v34 = [v32 removeItemAtPath:v33 error:&v53];
      v6 = v53;

      if (v34)
      {
        goto LABEL_43;
      }

      v26 = tcc_assumed_identity_monitor_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10002A334();
      }
    }

LABEL_43:
    goto LABEL_44;
  }

  v27 = tcc_assumed_identity_monitor_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    sub_10002A2A4(v27);
  }

LABEL_30:
  v28 = +[NSFileManager defaultManager];
  v29 = *(*(a1 + 32) + 8);
  v56 = 0;
  v30 = [v28 removeItemAtPath:v29 error:&v56];
  v6 = v56;

  if ((v30 & 1) == 0 && [v6 code] != 4)
  {
    v4 = tcc_assumed_identity_monitor_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10002A334();
    }

    goto LABEL_45;
  }

LABEL_46:
}

void sub_1000297BC(uint64_t a1)
{
  v20 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(*(a1 + 32) + 24);
  v1 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v27;
    do
    {
      v4 = 0;
      do
      {
        if (*v27 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v26 + 1) + 8 * v4);
        v6 = objc_opt_new();
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v7 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v5];
        v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v23;
          do
          {
            v11 = 0;
            do
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = [*(*(&v22 + 1) + 8 * v11) description];
              [v6 addObject:v12];

              v11 = v11 + 1;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v9);
        }

        [v20 setObject:v6 forKeyedSubscript:v5];
        v4 = v4 + 1;
      }

      while (v4 != v2);
      v2 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v2);
  }

  v21 = 0;
  v13 = [NSPropertyListSerialization dataWithPropertyList:v20 format:200 options:0 error:&v21];
  v14 = v21;
  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v13;

  if (v14)
  {
    v17 = tcc_assumed_identity_monitor_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10002A564();
    }
  }
}

_DWORD *sub_100029AC0(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  v2 = [*(a1 + 32) _osStateDump];
  v3 = v2;
  if (!v2 || [v2 length] >> 32)
  {
    v5 = 0;
  }

  else
  {
    v4 = [v3 length];
    v5 = malloc_type_calloc(1uLL, v4 + 200, 0x1000040BEF03554uLL);
    *v5 = 1;
    v5[1] = v4;
    __strlcpy_chk();
    memcpy(v5 + 50, [v3 bytes], v4);
    v6 = tcc_assumed_identity_monitor_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10002A5CC(v4, v6);
    }
  }

  return v5;
}

void sub_100029CC8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    if ([v4 containsObject:*(a1 + 48)])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = objc_opt_new();
    v5 = *(*(a1 + 32) + 24);
    v6 = [*(a1 + 40) identifier];
    [v5 setObject:v4 forKeyedSubscript:v6];
  }

  [v4 addObject:*(a1 + 48)];
  v7 = tcc_assumed_identity_monitor_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10002A6AC();
  }

  [*(a1 + 32) _saveState];
LABEL_8:
}

void sub_100029E60(uint64_t a1)
{
  v2 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v8];
        [v9 removeObject:*(a1 + 40)];
        if (![v9 count])
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v2;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(a1 + 32) + 24) removeObjectForKey:{*(*(&v16 + 1) + 8 * j), v16}];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = tcc_assumed_identity_monitor_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_10002A72C(a1, v15);
  }

  [*(a1 + 32) _saveState];
}

void sub_10002A184(void *a1)
{
  v5 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v2 = [v5 copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10002A2A4(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "sem_open() failed: %{darwin.errno}d", v3, 8u);
}

void sub_10002A334()
{
  sub_1000091C8(__stack_chk_guard);
  sub_10000910C();
  sub_100010588(&_mh_execute_header, v0, v1, "Failed to remove file %{public}@: %{public}@");
}

void sub_10002A3A4()
{
  sub_1000091C8(__stack_chk_guard);
  v1 = *(v0 + 24);
  v3 = 138543362;
  v4 = v1;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Loaded saved state: %{public}@", &v3, 0xCu);
}

void sub_10002A488()
{
  sub_1000091C8(__stack_chk_guard);
  sub_10000910C();
  sub_100010588(&_mh_execute_header, v0, v1, "Failed to load saved state from file %{public}@: %{public}@");
}

void sub_10002A4F8()
{
  sub_1000091C8(__stack_chk_guard);
  sub_10000910C();
  sub_100010588(&_mh_execute_header, v0, v1, "Failed to save state file %{public}@: %{public}@");
}

void sub_10002A5CC(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "State dump of %u bytes", v2, 8u);
}

void sub_10002A6AC()
{
  sub_1000091C8(__stack_chk_guard);
  sub_10000910C();
  v3 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Started monitoring %{public}@ with assumed identity %{public}@", v2, 0x16u);
}

void sub_10002A72C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Stopped monitoring %{public}@", &v3, 0xCu);
}

void sub_10002A7D4(id a1)
{
  v1 = [[NSMutableDictionary alloc] initWithCapacity:40];
  v2 = qword_1000C10F8;
  qword_1000C10F8 = v1;

  qword_1000C1100 = [[NSMutableArray alloc] initWithCapacity:40];

  _objc_release_x1();
}

id sub_10002B0B0(uint64_t a1)
{
  v1 = [LSApplicationProxy applicationProxyForIdentifier:*(a1 + 32) placeholder:0];
  v2 = [v1 localizedName];

  return v2;
}

id sub_10002C1D0(uint64_t a1)
{
  v1 = [LSApplicationProxy applicationProxyForIdentifier:*(a1 + 32) placeholder:0];
  v2 = [v1 localizedName];

  return v2;
}

id sub_10002C7EC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 objectForKeyedSubscript:@"type"];
  if (qword_1000C1130 != -1)
  {
    sub_10002E010();
  }

  v5 = [qword_1000C1138 objectForKeyedSubscript:v4];
  if (v5)
  {

    v6 = [v3 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || (v7 = [TCCDServer newErrorWithCode:3 format:@"Invalid identifier type: identifiers should be strings, got %@: %@", objc_opt_class(), v6]) == 0)
    {
LABEL_6:
      [v5 intValue];
      [v6 UTF8String];
      v8 = tcc_identity_create();
      v7 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v9 = tcc_access_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002E024();
    }

    v7 = [TCCDServer newErrorWithCode:3 format:@"Invalid identity type %@", v4];
    v6 = 0;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  if (a2)
  {
    v10 = v7;
    v8 = 0;
    *a2 = v7;
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  return v8;
}

id sub_10002D734(_OWORD *a1)
{
  v2 = a1[1];
  *atoken.val = *a1;
  *&atoken.val[4] = v2;
  v3 = audit_token_to_pid(&atoken);
  v4 = a1[1];
  *atoken.val = *a1;
  *&atoken.val[4] = v4;
  v5 = audit_token_to_pidversion(&atoken);
  v6 = a1[1];
  *atoken.val = *a1;
  *&atoken.val[4] = v6;
  v7 = [NSString stringWithFormat:@"{pid=%d, pidversion=%d, euid=%d}", v3, v5, audit_token_to_euid(&atoken)];

  return v7;
}

void sub_10002D7D0(id a1)
{
  v3[0] = @"bundleID";
  v3[1] = @"path";
  v4[0] = &off_1000ADEF8;
  v4[1] = &off_1000ADF10;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_1000C1138;
  qword_1000C1138 = v1;
}

void sub_10002D898(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "identityCache: evicting: %{public}@", buf, 0xCu);
}

void sub_10002D8F0(void *a1, NSObject *a2)
{
  v3 = [a1 responsibleProcess];
  v4 = [v3 responsiblePath];
  sub_100008F78();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "IDENTITY_ATTRIBUTION: starting for: %{public}@", v5, 0xCu);
}

void sub_10002DA10()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002DA80()
{
  sub_10000909C();
  sub_100009068();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002DAF0()
{
  sub_10002D86C();
  sub_100009068();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002DB60()
{
  sub_10002D86C();
  sub_100009068();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002DBD0()
{
  sub_10000909C();
  sub_100009068();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002DC40(void *a1)
{
  v1 = [a1 responsibleProcess];
  v2 = [v1 responsiblePath];
  sub_100008F78();
  sub_100008FB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10002DCE4(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 28);
  v4 = 138543618;
  v5 = v2;
  v6 = 1024;
  v7 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "IDENTITY_ATTRIBUTION: identifier = %{public}@, type %u", &v4, 0x12u);
}

void sub_10002DD70(void *a1)
{
  v1 = [a1 responsibleProcess];
  v2 = [v1 responsiblePath];
  sub_100008F78();
  sub_100008FB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10002DED4(int a1, id a2)
{
  v3 = a2;
  [a2 fileSystemRepresentation];
  sub_100008FB4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_10002E024()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002E10C(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 136446466;
  *(buf + 4) = a3;
  *(buf + 6) = 2082;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "failed to read commands from %{public}s: %{public}s", buf, 0x16u);
}

void sub_10002E164()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002E1D4()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002E244()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002E2B4()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002E324(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "failed to get filesystem representation for %{public}@", buf, 0xCu);
}

void sub_10002E650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10002E678(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained _doEval:a2 bind:v7 step:v8 lock:0 line:0];
  }

  else
  {
    v12 = +[TCCDPlatform currentPlatform];
    v13 = [v12 server];
    v14 = [v13 logHandle];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003400C();
    }

    v11 = 1;
  }

  return v11;
}

uint64_t sub_10002E75C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained _doEval:a2 bind:v7 step:v8 lock:1 line:0];
  }

  else
  {
    v12 = +[TCCDPlatform currentPlatform];
    v13 = [v12 server];
    v14 = [v13 logHandle];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10003400C();
    }

    v11 = 1;
  }

  return v11;
}

void _generic_db_error(int a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v16 = 0;
  v5 = sub_100031114();
  v6 = sqlite3_errmsg([v4 db]);
  if (asprintf(&v16, "database error: %s", v6) != -1)
  {
    v7 = +[TCCDPlatform currentPlatform];
    v8 = [v7 server];
    v9 = [v8 logHandle];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = v16;
      if (a1)
      {
        v14 = " aborting...";
      }

      else
      {
        v14 = "";
      }

      v15 = [v4 pathToDatabase];
      *buf = 136446978;
      v18 = v13;
      v19 = 2080;
      v20 = v14;
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v15;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s%s\n%@ for path to database:%@", buf, 0x2Au);
    }
  }

  v10 = sqlite3_errcode([v4 db]);
  sqlite3_close([v4 db]);
  [v4 setDb:0];
  if (v10 == 26 || v10 == 11)
  {
    v11 = [v4 pathToDatabase];
    v12 = [v11 stringByDeletingLastPathComponent];

    removefile([v12 UTF8String], 0, 3u);
  }

  if (a1)
  {
    sub_100060514();
  }
}

id sub_10002ECD4(uint64_t a1)
{
  v2 = +[TCCDPlatform currentPlatform];
  v3 = [v2 server];
  v4 = [v3 logHandle];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000340B0();
  }

  sqlite3_close([*(a1 + 32) db]);
  return [*(a1 + 32) setDb:0];
}

void sub_10002F364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002F380(uint64_t a1)
{
  if (![*(a1 + 32) db] && objc_msgSend(*(a1 + 32), "openDatabase"))
  {
    v4 = +[TCCDPlatform currentPlatform];
    v5 = [v4 server];
    v6 = [v5 logHandle];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003425C();
    }

    goto LABEL_9;
  }

  ppStmt = 0;
  if (sqlite3_prepare_v2([*(a1 + 32) db], *(a1 + 64), -1, &ppStmt, 0))
  {
LABEL_10:
    _generic_db_error(0, v2, *(a1 + 32));
LABEL_9:
    *(*(*(a1 + 56) + 8) + 24) = 1;
    return;
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v7 = sqlite3_step(ppStmt);
    if (v7 != 100)
    {
      break;
    }

    v3 = *(a1 + 48);
LABEL_11:
    (*(v3 + 16))(v3, ppStmt);
  }

  v8 = v7;
  if (v7 != 101)
  {
    v9 = sqlite3_expanded_sql(ppStmt);
    v10 = +[TCCDPlatform currentPlatform];
    v11 = [v10 server];
    v12 = [v11 logHandle];

    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v13)
      {
        sub_100034290(v9, v8);
      }

      sqlite3_free(v9);
      _generic_db_error(0, v14, *(a1 + 32));
    }

    else
    {
      if (v13)
      {
        sub_100060608();
      }
    }

    sqlite3_finalize(ppStmt);
    goto LABEL_10;
  }

  sqlite3_finalize(ppStmt);
}

void sub_10002F660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002F678(uint64_t a1)
{
  v2 = [*(a1 + 32) evalLocked];
  if ((v2)[2](v2, "BEGIN", 0, 0) || (*(*(a1 + 40) + 16))())
  {

LABEL_4:
    *(*(*(a1 + 48) + 8) + 24) = 1;
    return;
  }

  v3 = [*(a1 + 32) evalLocked];
  v4 = (v3)[2](v3, "END", 0, 0);

  if (v4)
  {
    goto LABEL_4;
  }
}

uint64_t db_set_access_override(void *a1, int a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if (a2)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10002FB94;
    v24[3] = &unk_1000A5188;
    v10 = &v25;
    v25 = v7;
    v11 = "INSERT OR IGNORE INTO access_overrides VALUES (?)";
    v12 = v24;
  }

  else
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10002FDAC;
    v22[3] = &unk_1000A5188;
    v10 = &v23;
    v23 = v7;
    v11 = "DELETE FROM access_overrides WHERE service = ?";
    v12 = v22;
  }

  v13 = sub_100007608(v11, v12, 0, 0);

  if (!v13)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10002FE28;
    v20[3] = &unk_1000A5188;
    v21 = v7;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002FEA4;
    v15[3] = &unk_1000A5DF0;
    v19 = a2;
    v16 = v8;
    v17 = v21;
    v18 = v9;
    v13 = sub_100007608("SELECT client, client_type, auth_value FROM access WHERE service = ?", v20, v15, 0);
    access_changed();
  }

  return v13;
}

void sub_10002FB94(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) name];
  LODWORD(a2) = sqlite3_bind_text(a2, 1, [v3 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  if (a2)
  {

    _db_error(1);
  }
}

void _db_error(int a1)
{
  v11 = 0;
  v2 = sub_100031114();
  v3 = sqlite3_errmsg(db);
  if (asprintf(&v11, "database error: %s", v3) != -1)
  {
    v4 = +[TCCDPlatform currentPlatform];
    v5 = [v4 server];
    v6 = [v5 logHandle];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = " aborting...";
      *buf = 136446722;
      if (!a1)
      {
        v10 = "";
      }

      v13 = v11;
      v14 = 2080;
      v15 = v10;
      v16 = 2112;
      v17 = v2;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s%s\n%@", buf, 0x20u);
    }
  }

  v7 = sqlite3_errcode(db);
  sqlite3_close(db);
  db = 0;
  if (v7 == 26 || v7 == 11)
  {
    v9 = db_dir_get();
    removefile(v9, 0, 3u);
    free(v9);
  }

  if (a1)
  {
    sub_100060514();
  }
}

void sub_10002FDAC(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) name];
  LODWORD(a2) = sqlite3_bind_text(a2, 1, [v3 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  if (a2)
  {

    _db_error(1);
  }
}

void sub_10002FE28(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) name];
  LODWORD(a2) = sqlite3_bind_text(a2, 1, [v3 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  if (a2)
  {

    _db_error(1);
  }
}

void sub_10002FEA4(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_text(a2, 0);
  v5 = sqlite3_column_int(a2, 1);
  v6 = sqlite3_column_int(a2, 2);
  if (*(a1 + 56))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = [NSString stringWithUTF8String:v4];
  LOBYTE(v10) = 1;
  [v8 publishAccessChangedEvent:2 forService:v9 client:v11 clientType:v5 authValue:v7 authReason:7 andKillClient:v10 attributionChain:*(a1 + 48)];
}

void access_changed()
{
  if (notify_post("com.apple.tcc.access.changed"))
  {
    v0 = +[TCCDPlatform currentPlatform];
    v1 = [v0 server];
    v2 = [v1 logHandle];

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000343B0();
    }
  }
}

uint64_t reset_all_for_client(void *a1, int a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100030260;
  v30[3] = &unk_1000A5A90;
  v10 = v7;
  v31 = v10;
  v32 = a2;
  v11 = objc_retainBlock(v30);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000302E0;
  v25[3] = &unk_1000A5E18;
  v26 = v8;
  v27 = v10;
  v29 = a2;
  v28 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  v15 = objc_retainBlock(v25);
  v16 = [NSString stringWithFormat:@"SELECT service FROM %@ WHERE client = ? AND client_type = ?", @"access"];
  v17 = [NSString stringWithFormat:@"DELETE FROM %@ WHERE client = ? AND client_type = ?", @"access"];
  v18 = sub_100007608([v16 UTF8String], v11, v15, 0);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10003048C;
  v22[3] = &unk_1000A5E40;
  v23 = v17;
  v24 = v11;
  v19 = v11;
  v20 = v17;
  LODWORD(v11) = db_transaction(v22);

  return v11 | v18;
}

void sub_100030260(uint64_t a1, sqlite3_stmt *a2)
{
  if (sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_int(a2, 2, *(a1 + 40)))
  {

    _db_error(1);
  }
}

void sub_1000302E0(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) platform];
  v5 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 0)];
  v8 = [v4 serviceByName:v5];

  v6 = v8;
  if (v8)
  {
    LOBYTE(v7) = 1;
    [*(a1 + 32) publishAccessChangedEvent:3 forService:v8 client:*(a1 + 40) clientType:*(a1 + 56) authValue:1 authReason:0 andKillClient:v7 attributionChain:*(a1 + 48)];
    v6 = v8;
  }
}

uint64_t db_transaction(void *a1)
{
  v1 = a1;
  v2 = v1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (v1)
  {
    v3 = db_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000331B8;
    v6[3] = &unk_1000A5F00;
    v7 = v1;
    v8 = &v9;
    dispatch_sync(v3, v6);
    v4 = *(v10 + 6);
  }

  else
  {
    v4 = 1;
  }

  _Block_object_dispose(&v9, 8);

  return v4;
}

uint64_t sub_10003048C(uint64_t a1)
{
  v2 = [*(a1 + 32) UTF8String];
  v3 = *(a1 + 40);

  return sub_100007608(v2, v3, 0, 1);
}

uint64_t db_reset_access_internal(void *a1, void *a2, int a3, void *a4, uint64_t a5, char a6, void *a7)
{
  v12 = a1;
  v13 = a2;
  v14 = a4;
  v15 = a7;
  v16 = [v12 name];
  v17 = [v16 isEqualToString:@"kTCCServiceAll"];

  v18 = [v13 isEqualToString:@"kTCCClientAll"];
  if (!v17)
  {
    if (v18)
    {
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_100030DA0;
      v64[3] = &unk_1000A5188;
      v22 = v12;
      v65 = v22;
      v23 = objc_retainBlock(v64);
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_100030E1C;
      v60[3] = &unk_1000A5E90;
      v61 = v14;
      v62 = v22;
      v63 = v15;
      LODWORD(v22) = sub_100007608("SELECT client, client_type FROM access WHERE service = ?", v23, v60, 0);
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_100030ED8;
      v58[3] = &unk_1000A5780;
      v59 = v23;
      v24 = v23;
      v20 = db_transaction(v58) | v22;

      v21 = v65;
    }

    else
    {
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_100030EF0;
      v54[3] = &unk_1000A5B08;
      v36 = v12;
      v55 = v36;
      v37 = v13;
      v56 = v37;
      v57 = a3;
      v38 = objc_retainBlock(v54);
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100030FBC;
      v47[3] = &unk_1000A5EB8;
      v48 = v14;
      v49 = v36;
      v50 = v37;
      v52 = a3;
      v53 = a6;
      v51 = v15;
      v39 = sub_100007608("SELECT NULL FROM access WHERE service = ? AND client = ? AND client_type = ?", v38, v47, 0);
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_100031004;
      v45[3] = &unk_1000A5780;
      v46 = v38;
      v40 = v38;
      v20 = db_transaction(v45) | v39;

      v21 = v55;
    }

LABEL_13:

    if (v20)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v18)
  {
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_100033664;
    v73[3] = &unk_1000A5318;
    v74 = v14;
    v75 = v15;
    v19 = sub_100007608("SELECT service, client, client_type FROM access", 0, v73, 0);
    v20 = db_transaction(&stru_1000A5F20) | v19;

    v21 = v74;
    goto LABEL_13;
  }

  v20 = reset_all_for_client(v13, a3, v14, v15);
  v25 = [v14 platform];
  v26 = [v25 prefixOfBundleIdentifiersToResetAfterResetOfAppBundleIdentifier:v13];

  if (v26)
  {
    v27 = [NSString stringWithFormat:@"SELECT service, client FROM access WHERE client LIKE '%@%@' AND client_type = %d", v26, @"%", 0];
    v28 = [v27 UTF8String];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_100030B84;
    v68[3] = &unk_1000A5E68;
    v69 = v14;
    v70 = v15;
    v29 = v26;
    v71 = v29;
    v72 = v12;
    v30 = sub_100007608(v28, 0, v68, 0);
    v31 = [NSString stringWithFormat:@"DELETE FROM access WHERE client LIKE '%@%@' AND client_type = %d", v29, @"%", 0];

    v32 = +[TCCDPlatform currentPlatform];
    v33 = [v32 server];
    v34 = [v33 logHandle];

    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      sub_100034424();
    }

    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_100030D64;
    v66[3] = &unk_1000A5AE0;
    v67 = v31;
    v35 = v31;
    v20 = db_transaction(v66) | v30;
  }

  if (!v20)
  {
LABEL_14:
    sub_100007608("VACUUM access", 0, 0, 0);
    v41 = +[TCCDPlatform currentPlatform];
    v42 = [v41 server];
    v43 = [v42 logHandle];

    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      sub_10003448C(v12, v13, v43);
    }
  }

LABEL_17:
  access_changed();

  return v20;
}

void sub_100030B84(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) platform];
  v5 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 0)];
  v6 = [v4 serviceByName:v5];

  if (v6)
  {
    v7 = sqlite3_column_text(a2, 1);
    v8 = *(a1 + 32);
    v9 = [NSString stringWithUTF8String:v7];
    LOBYTE(v16) = 0;
    [v8 publishAccessChangedEvent:3 forService:v6 client:v9 clientType:0 authValue:1 authReason:0 andKillClient:v16 attributionChain:*(a1 + 40)];

    v10 = +[TCCDPlatform currentPlatform];
    v11 = [v10 server];
    v12 = [v11 logHandle];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 48);
      v14 = [*(a1 + 56) name];
      v15 = [NSString stringWithUTF8String:v7];
      *buf = 138412802;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Bundle Prefix: '%@'; deleting (%@ : %@)", buf, 0x20u);
    }
  }
}

uint64_t sub_100030D64(uint64_t a1)
{
  v1 = [*(a1 + 32) UTF8String];

  return sub_100007608(v1, 0, 0, 1);
}

void sub_100030DA0(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) name];
  LODWORD(a2) = sqlite3_bind_text(a2, 1, [v3 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

  if (a2)
  {

    _db_error(1);
  }
}

void sub_100030E1C(void *a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_text(a2, 0);
  v5 = sqlite3_column_int(a2, 1);
  v6 = a1[4];
  v7 = a1[5];
  v9 = [NSString stringWithUTF8String:v4];
  LOBYTE(v8) = 1;
  [v6 publishAccessChangedEvent:3 forService:v7 client:v9 clientType:v5 authValue:1 authReason:0 andKillClient:v8 attributionChain:a1[6]];
}

void sub_100030EF0(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) name];
  if (sqlite3_bind_text(a2, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_text(a2, 2, objc_msgSend(*(a1 + 40), "UTF8String"), -1, 0xFFFFFFFFFFFFFFFFLL))
  {
  }

  else
  {
    v5 = sqlite3_bind_int(a2, 3, *(a1 + 48));

    if (!v5)
    {
      return;
    }
  }

  _db_error(1);
}

void db_setup_queue()
{
  v0 = dispatch_queue_create("com.apple.tcc.db_queue", 0);
  v1 = db_queue;
  db_queue = v0;

  if (!v0)
  {
    sub_100034538();
  }
}

char *db_dir_get()
{
  v0 = +[TCCDPlatform currentPlatform];
  v1 = [v0 server];
  v2 = [v1 stateDirectory];

  if (!v2)
  {
    sub_1000604F8();
  }

  v3 = strdup([v2 UTF8String]);
  if (!v3)
  {
    sub_1000604DC();
  }

  v4 = v3;

  return v4;
}

id sub_100031114()
{
  __chkstk_darwin();
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *v6 = 0u;
  v7 = 0u;
  v0 = backtrace(v6, 1024);
  v1 = backtrace_symbols(v6, v0);
  v2 = objc_alloc_init(NSMutableString);
  if (v1)
  {
    if (v0 >= 1)
    {
      for (i = 0; i != v0; [v2 appendFormat:v4, v1[i++]])
      {
        if (!v1[i])
        {
          break;
        }

        v4 = i >= (v0 - 1) ? @"%s" : @"%s\n";
      }
    }

    free(v1);
  }

  return v2;
}

uint64_t _create_database(const char *a1, char *path)
{
  patha = 0;
  v4 = mkpath_np(path, 0x1C0u);
  if (v4 && (v5 = v4, v4 != 17))
  {
    v18 = +[TCCDPlatform currentPlatform];
    v19 = [v18 server];
    v20 = [v19 logHandle];

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000345EC();
    }
  }

  else
  {
    if (asprintf(&patha, "%s/TCC.db", path) == -1)
    {
      sub_10006072C();
    }

    v5 = _sqlite3_integrity_check();
    v6 = +[TCCDPlatform currentPlatform];
    v7 = [v6 server];
    v8 = [v7 logHandle];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = patha;
      v28 = 1024;
      v29 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_sqlite3_integrity_check for %s returned (%d)", buf, 0x12u);
    }

    if (v5 == 11)
    {
      v9 = +[TCCDPlatform currentPlatform];
      v10 = [v9 server];
      v11 = [v10 logHandle];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v27 = patha;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "database is corrupt: %s", buf, 0xCu);
      }

      if (!removefile(patha, 0, 3u))
      {
        sub_1000341AC();
      }

      v12 = +[TCCDPlatform currentPlatform];
      v13 = [v12 server];
      v14 = [v13 logHandle];

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000340E4();
      }
    }

    if (sqlite3_open_v2(patha, &db, 4227078, 0))
    {
      v15 = +[TCCDPlatform currentPlatform];
      v16 = [v15 server];
      v17 = [v16 logHandle];

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100034554();
      }

      if (db)
      {
        v5 = sqlite3_errcode(db);
      }

      else
      {
        v5 = 12;
      }
    }

    else if (sqlite3_exec(db, "PRAGMA journal_mode=WAL;PRAGMA foreign_keys=ON;", 0, 0, 0) || sqlite3_exec(db, "BEGIN", 0, 0, 0) || sqlite3_exec(db, a1, 0, 0, 0))
    {
      _db_error(0);
    }

    else
    {
      v22 = +[TCCDPlatform currentPlatform];
      v23 = [v22 server];
      v24 = [v23 logHandle];

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v27 = patha;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "using database: %{public}s", buf, 0xCu);
      }

      v5 = 0;
    }
  }

  if (patha)
  {
    free(patha);
  }

  return v5;
}

uint64_t db_open()
{
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  if (db_unavailable)
  {
    database = 1;
    goto LABEL_94;
  }

  v1 = db_dir_get();
  database = _create_database("CREATE TABLE IF NOT EXISTS admin (key TEXT PRIMARY KEY NOT NULL, value INTEGER NOT NULL);INSERT OR IGNORE INTO admin VALUES ('version', 32);CREATE TABLE IF NOT EXISTS policies(   id        INTEGER    NOT NULL PRIMARY KEY,     bundle_id    TEXT    NOT NULL,     uuid        TEXT    NOT NULL,     display        TEXT    NOT NULL,     UNIQUE (bundle_id, uuid));CREATE TABLE IF NOT EXISTS active_policy(   client        TEXT    NOT NULL,     client_type    INTEGER    NOT NULL,     policy_id    INTEGER NOT NULL,     PRIMARY KEY (client, client_type),     FOREIGN KEY (policy_id) REFERENCES policies(id) ON DELETE CASCADE ON UPDATE CASCADE);CREATE INDEX IF NOT EXISTS active_policy_id ON active_policy(policy_id);CREATE TABLE IF NOT EXISTS access(   service        TEXT        NOT NULL,     client         TEXT        NOT NULL,     client_type    INTEGER     NOT NULL,     auth_value     INTEGER     NOT NULL,     auth_reason    INTEGER     NOT NULL,     auth_version   INTEGER     NOT NULL,     csreq          BLOB,     policy_id      INTEGER,     indirect_object_identifier_type    INTEGER,     indirect_object_identifier         TEXT NOT NULL DEFAULT 'UNUSED',     indirect_object_code_identity      BLOB,     flags          INTEGER,     last_modified  INTEGER     NOT NULL DEFAULT (CAST(strftime('%s','now') AS INTEGER)),     pid            INTEGER,     pid_version    INTEGER,     boot_uuid      TEXT NOT NULL DEFAULT 'UNUSED',     last_reminded  INTEGER     NOT NULL DEFAULT (CAST(strftime('%s','now') AS INTEGER)),     PRIMARY KEY (service, client, client_type, indirect_object_identifier),    FOREIGN KEY (policy_id) REFERENCES policies(id) ON DELETE CASCADE ON UPDATE CASCADE);CREATE TABLE IF NOT EXISTS access_overrides(   service        TEXT    NOT NULL PRIMARY KEY);CREATE TABLE IF NOT EXISTS expired(   service        TEXT        NOT NULL,     client         TEXT        NOT NULL,     client_type    INTEGER     NOT NULL,     csreq          BLOB,     last_modified  INTEGER     NOT NULL ,     expired_at     INTEGER     NOT NULL DEFAULT (CAST(strftime('%s','now') AS INTEGER)),     PRIMARY KEY (service, client, client_type));CREATE TABLE IF NOT EXISTS integrity_flag(   key TEXT PRIMARY KEY NOT NULL,    value INTEGER NOT NULL);INSERT OR IGNORE INTO integrity_flag VALUES ('integrity_flag', 0);", v1);
  if (!database)
  {
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100032468;
    v41[3] = &unk_1000A52A8;
    v41[4] = &v42;
    database = sub_100007608("SELECT value FROM admin WHERE key = 'version'", 0, v41, 1);
    if (!database)
    {
      v2 = +[TCCDPlatform currentPlatform];
      v3 = [v2 server];
      v4 = [v3 logHandle];

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(v43 + 6);
        *buf = 67109120;
        *&buf[4] = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "using database version: %d", buf, 8u);
      }

      switch(*(v43 + 6))
      {
        case 1:
        case 2:
        case 3:
          if (sqlite3_exec(db, "DROP TABLE access; DROP TABLE access_times; DROP TABLE access_overrides;", 0, 0, 0))
          {
            goto LABEL_90;
          }

          v6 = sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS admin (key TEXT PRIMARY KEY NOT NULL, value INTEGER NOT NULL);INSERT OR IGNORE INTO admin VALUES ('version', 32);CREATE TABLE IF NOT EXISTS policies(   id        INTEGER    NOT NULL PRIMARY KEY,     bundle_id    TEXT    NOT NULL,     uuid        TEXT    NOT NULL,     display        TEXT    NOT NULL,     UNIQUE (bundle_id, uuid));CREATE TABLE IF NOT EXISTS active_policy(   client        TEXT    NOT NULL,     client_type    INTEGER    NOT NULL,     policy_id    INTEGER NOT NULL,     PRIMARY KEY (client, client_type),     FOREIGN KEY (policy_id) REFERENCES policies(id) ON DELETE CASCADE ON UPDATE CASCADE);CREATE INDEX IF NOT EXISTS active_policy_id ON active_policy(policy_id);CREATE TABLE IF NOT EXISTS access(   service        TEXT        NOT NULL,     client         TEXT        NOT NULL,     client_type    INTEGER     NOT NULL,     auth_value     INTEGER     NOT NULL,     auth_reason    INTEGER     NOT NULL,     auth_version   INTEGER     NOT NULL,     csreq          BLOB,     policy_id      INTEGER,     indirect_object_identifier_type    INTEGER,     indirect_object_identifier         TEXT NOT NULL DEFAULT 'UNUSED',     indirect_object_code_identity      BLOB,     flags          INTEGER,     last_modified  INTEGER     NOT NULL DEFAULT (CAST(strftime('%s','now') AS INTEGER)),     pid            INTEGER,     pid_version    INTEGER,     boot_uuid      TEXT NOT NULL DEFAULT 'UNUSED',     last_reminded  INTEGER     NOT NULL DEFAULT (CAST(strftime('%s','now') AS INTEGER)),     PRIMARY KEY (service, client, client_type, indirect_object_identifier),    FOREIGN KEY (policy_id) REFERENCES policies(id) ON DELETE CASCADE ON UPDATE CASCADE);CREATE TABLE IF NOT EXISTS access_overrides(   service        TEXT    NOT NULL PRIMARY KEY);CREATE TABLE IF NOT EXISTS expired(   service        TEXT        NOT NULL,     client         TEXT        NOT NULL,     client_type    INTEGER     NOT NULL,     csreq          BLOB,     last_modified  INTEGER     NOT NULL ,     expired_at     INTEGER     NOT NULL DEFAULT (CAST(strftime('%s','now') AS INTEGER)),     PRIMARY KEY (service, client, client_type));CREATE TABLE IF NOT EXISTS integrity_flag(   key TEXT PRIMARY KEY NOT NULL,    value INTEGER NOT NULL);INSERT OR IGNORE INTO integrity_flag VALUES ('integrity_flag', 0);", 0, 0, 0);
          goto LABEL_85;
        case 4:
          if (!sqlite3_exec(db, "ALTER TABLE access ADD COLUMN csreq BLOB", 0, 0, 0))
          {
            goto LABEL_21;
          }

          goto LABEL_90;
        case 5:
LABEL_21:
          if (!sqlite3_exec(db, "DELETE FROM access_times", 0, 0, 0))
          {
            goto LABEL_22;
          }

          goto LABEL_90;
        case 6:
LABEL_22:
          if (sqlite3_exec(db, "DELETE FROM access WHERE service = 'kTCCServicePhotos' AND allowed = 0", 0, 0, 0))
          {
            goto LABEL_90;
          }

          access_changed();
LABEL_24:
          if (sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS NEW_access(   service        TEXT    NOT NULL,     client        TEXT    NOT NULL,     client_type    INTEGER    NOT NULL,     allowed        INTEGER    NOT NULL,     prompt_count    INTEGER    NOT NULL,     csreq        BLOB,     policy_id    INTEGER,     PRIMARY KEY (service, client, client_type),    FOREIGN KEY (policy_id) REFERENCES policies(id) ON DELETE CASCADE ON UPDATE CASCADE)", 0, 0, 0) || sqlite3_exec(db, "INSERT INTO NEW_access SELECT service, client, client_type, allowed, prompt_count, csreq, NULL FROM access", 0, 0, 0) || sqlite3_exec(db, "DROP TABLE access", 0, 0, 0) || sqlite3_exec(db, "ALTER TABLE NEW_access RENAME TO access", 0, 0, 0))
          {
            goto LABEL_90;
          }

LABEL_28:
          if (sqlite3_exec(db, "DELETE FROM access WHERE(service = 'kTCCServicePhotos' or service = 'kTCCServicePhotosAdd')", 0, 0, 0))
          {
            goto LABEL_90;
          }

          access_changed();
LABEL_30:
          if (sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS NEW_access(   service        TEXT    NOT NULL,     client        TEXT    NOT NULL,     client_type    INTEGER    NOT NULL,     allowed        INTEGER    NOT NULL,     prompt_count    INTEGER    NOT NULL,     csreq        BLOB,     policy_id    INTEGER,     indirect_object_identifier_type        INTEGER,     indirect_object_identifier        TEXT NOT NULL,     indirect_object_code_identity        BLOB,     PRIMARY KEY (service, client, client_type, indirect_object_identifier),    FOREIGN KEY (policy_id) REFERENCES policies(id) ON DELETE CASCADE ON UPDATE CASCADE)", 0, 0, 0) || sqlite3_exec(db, "INSERT INTO NEW_access SELECT service, client, client_type, allowed, prompt_count, csreq, policy_id, NULL, 'UNUSED', NULL FROM access", 0, 0, 0) || sqlite3_exec(db, "DROP TABLE access", 0, 0, 0) || sqlite3_exec(db, "ALTER TABLE NEW_access RENAME TO access", 0, 0, 0))
          {
            goto LABEL_90;
          }

LABEL_34:
          if (!sqlite3_exec(db, "ALTER TABLE access ADD COLUMN flags INTEGER", 0, 0, 0))
          {
            goto LABEL_39;
          }

          v7 = sqlite3_errmsg(db);
          if (strcmp(v7, "duplicate column name: flags"))
          {
            goto LABEL_90;
          }

          v8 = +[TCCDPlatform currentPlatform];
          v9 = [v8 server];
          v10 = [v9 logHandle];

          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Ignoring duplicate 'flags' column for version 10.", buf, 2u);
          }

LABEL_39:
          sqlite3_exec(db, "DROP TABLE access_times", 0, 0, 0);
          if (sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS NEW_access(   service        TEXT        NOT NULL,     client         TEXT        NOT NULL,     client_type    INTEGER     NOT NULL,     allowed        INTEGER     NOT NULL,     prompt_count   INTEGER     NOT NULL,     csreq          BLOB,     policy_id      INTEGER,     indirect_object_identifier_type    INTEGER,     indirect_object_identifier         TEXT DEFAULT 'UNUSED',     indirect_object_code_identity      BLOB,     flags          INTEGER,     last_modified  INTEGER     NOT NULL DEFAULT (CAST(strftime('%s','now') AS INTEGER)),     PRIMARY KEY (service, client, client_type, indirect_object_identifier),    FOREIGN KEY (policy_id) REFERENCES policies(id) ON DELETE CASCADE ON UPDATE CASCADE)", 0, 0, 0) || sqlite3_exec(db, "INSERT INTO NEW_access SELECT service, client, client_type, allowed, prompt_count, csreq, policy_id, indirect_object_identifier_type, indirect_object_identifier, indirect_object_code_identity, flags, CAST(strftime('%s','now') AS INTEGER) FROM access", 0, 0, 0) || sqlite3_exec(db, "DROP TABLE access", 0, 0, 0) || sqlite3_exec(db, "ALTER TABLE NEW_access RENAME TO access", 0, 0, 0))
          {
            goto LABEL_90;
          }

          access_changed();
LABEL_44:
          if (sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS expired(   service        TEXT        NOT NULL,     client         TEXT        NOT NULL,     client_type    INTEGER     NOT NULL,     csreq          BLOB,     last_modified  INTEGER     NOT NULL ,     expired_at     INTEGER     NOT NULL DEFAULT (CAST(strftime('%s','now') AS INTEGER)),     PRIMARY KEY (service, client, client_type))", 0, 0, 0))
          {
            goto LABEL_90;
          }

LABEL_45:
          if (sub_1000324A0(db))
          {
            goto LABEL_91;
          }

LABEL_46:
          v11 = [NSString stringWithFormat:@"POST_UPGRADE_3_RIGHT_ALERT_%@", @"kTCCServicePhotos"];
          v12 = [NSString stringWithFormat:@"INSERT OR REPLACE INTO admin (key, value) VALUES ('%@', %d)", v11, 1];
          v13 = db;
          v14 = v12;
          if (sqlite3_exec(v13, [v12 UTF8String], 0, 0, 0))
          {
            _db_error(0);

            goto LABEL_91;
          }

LABEL_55:
          if (sqlite3_exec(db, "DELETE FROM access WHERE client = 'com.apple.Health' AND service = 'kTCCServiceLiverpool'", 0, 0, 0))
          {
            goto LABEL_90;
          }

          access_changed();
LABEL_57:
          if (sqlite3_exec(db, "DELETE FROM access WHERE client = '/usr/sbin/sshd' AND service = 'kTCCServiceSystemPolicyAllFiles'", 0, 0, 0))
          {
            goto LABEL_90;
          }

          access_changed();
LABEL_8:
          if (sqlite3_exec(db, "UPDATE OR REPLACE access SET service = 'kTCCServiceSystemPolicyAllFiles' WHERE service = 'kTCCServiceEndpointSecurityClient' and auth_value = 2", 0, 0, 0) || sqlite3_exec(db, "DELETE FROM access WHERE service = 'kTCCServiceEndpointSecurityClient'", 0, 0, 0))
          {
            goto LABEL_90;
          }

LABEL_10:
          if (sqlite3_exec(db, "ALTER TABLE access ADD COLUMN pid INTEGER", 0, 0, 0) || sqlite3_exec(db, "ALTER TABLE access ADD COLUMN pid_version INTEGER", 0, 0, 0) || sqlite3_exec(db, "ALTER TABLE access ADD COLUMN boot_uuid TEXT NOT NULL DEFAULT 'UNUSED'", 0, 0, 0))
          {
            goto LABEL_90;
          }

LABEL_13:
          if (sqlite3_exec(db, "ALTER TABLE access ADD COLUMN last_reminded INTEGER NOT NULL DEFAULT 0", 0, 0, 0))
          {
            goto LABEL_90;
          }

LABEL_14:
          if (sqlite3_exec(db, "DELETE FROM access WHERE client = 'com.apple.installer' and client_type = 0", 0, 0, 0))
          {
            goto LABEL_90;
          }

LABEL_15:
          *buf = 0;
          v52 = buf;
          v53 = 0x2020000000;
          v54 = 0;
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_100032560;
          v40[3] = &unk_1000A52A8;
          v40[4] = buf;
          if (sub_100007608("SELECT COUNT(*) FROM pragma_table_info('access') WHERE name='pid'", 0, v40, 1))
          {
            goto LABEL_16;
          }

          if (*(v52 + 6))
          {
            v22 = +[TCCDPlatform currentPlatform];
            v23 = [v22 server];
            v24 = [v23 logHandle];

            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v48) = 136315138;
              *(&v48 + 4) = "db_open";
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%s session cols present, not adding", &v48, 0xCu);
            }
          }

          else
          {
            v25 = +[TCCDPlatform currentPlatform];
            v26 = [v25 server];
            v27 = [v26 logHandle];

            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v48) = 136315138;
              *(&v48 + 4) = "db_open";
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s session cols not present, adding", &v48, 0xCu);
            }

            if (sqlite3_exec(db, "ALTER TABLE access ADD COLUMN pid INTEGER", 0, 0, 0) || sqlite3_exec(db, "ALTER TABLE access ADD COLUMN pid_version INTEGER", 0, 0, 0) || sqlite3_exec(db, "ALTER TABLE access ADD COLUMN boot_uuid TEXT NOT NULL DEFAULT 'UNUSED'", 0, 0, 0))
            {
LABEL_16:
              _db_error(0);
LABEL_17:
              _Block_object_dispose(buf, 8);
LABEL_91:
              database = 1;
              break;
            }
          }

          *&v48 = 0;
          *(&v48 + 1) = &v48;
          v49 = 0x2020000000;
          v50 = 0;
          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_100032598;
          v39[3] = &unk_1000A52A8;
          v39[4] = &v48;
          if (sub_100007608("SELECT COUNT(*) FROM pragma_table_info('access') WHERE name='last_reminded'", 0, v39, 1))
          {
            goto LABEL_64;
          }

          if (*(*(&v48 + 1) + 24))
          {
            v28 = +[TCCDPlatform currentPlatform];
            v29 = [v28 server];
            v30 = [v29 logHandle];

            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *v46 = 136315138;
              v47 = "db_open";
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s last_reminded col present, not adding", v46, 0xCu);
            }
          }

          else
          {
            v36 = +[TCCDPlatform currentPlatform];
            v37 = [v36 server];
            v38 = [v37 logHandle];

            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *v46 = 136315138;
              v47 = "db_open";
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s last_reminded col not present, adding", v46, 0xCu);
            }

            if (sqlite3_exec(db, "ALTER TABLE access ADD COLUMN last_reminded INTEGER NOT NULL DEFAULT 0", 0, 0, 0))
            {
LABEL_64:
              _db_error(0);
              _Block_object_dispose(&v48, 8);
              goto LABEL_17;
            }
          }

          _Block_object_dispose(&v48, 8);
          _Block_object_dispose(buf, 8);
LABEL_79:
          if (!sqlite3_exec(db, "UPDATE access set auth_value = 4, auth_reason = 4 WHERE service = 'kTCCServiceCalendar' and auth_value = 2", 0, 0, 0) && !sqlite3_exec(db, "UPDATE access set auth_version = 2 WHERE service = 'kTCCServiceCalendar'", 0, 0, 0))
          {
            access_changed();
LABEL_82:
            if (!sqlite3_exec(db, "UPDATE access set auth_version = 2 WHERE service = 'kTCCServiceContactlessAccess'", 0, 0, 0))
            {
              access_changed();
LABEL_84:
              v6 = sqlite3_exec(db, "DELETE FROM access WHERE service = 'kTCCServiceContactlessAccess' and auth_value = 3", 0, 0, 0);
LABEL_85:
              if (!v6)
              {
                access_changed();
                v31 = +[TCCDPlatform currentPlatform];
                v32 = [v31 server];
                v33 = [v32 logHandle];

                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  v34 = *(v43 + 6);
                  *buf = 67109376;
                  *&buf[4] = v34;
                  LOWORD(v52) = 1024;
                  *(&v52 + 2) = 32;
                  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Upgrading database from version %d to %d", buf, 0xEu);
                }

                if (!sqlite3_exec(db, "UPDATE admin SET value = 32 WHERE key = 'version'", 0, 0, 0))
                {
LABEL_89:
                  if (!sqlite3_exec(db, "COMMIT", 0, 0, 0))
                  {
                    free(v1);
                    database = 0;
                    goto LABEL_94;
                  }
                }
              }
            }
          }

LABEL_90:
          _db_error(0);
          goto LABEL_91;
        case 7:
          goto LABEL_24;
        case 8:
          goto LABEL_28;
        case 9:
          goto LABEL_30;
        case 0xA:
          goto LABEL_34;
        case 0xB:
          goto LABEL_39;
        case 0xC:
        case 0xD:
        case 0xE:
          goto LABEL_44;
        case 0xF:
          goto LABEL_45;
        case 0x10:
          goto LABEL_46;
        case 0x11:
        case 0x12:
          goto LABEL_55;
        case 0x13:
          goto LABEL_57;
        case 0x14:
        case 0x15:
        case 0x16:
        case 0x17:
          goto LABEL_8;
        case 0x18:
          goto LABEL_10;
        case 0x19:
          goto LABEL_13;
        case 0x1A:
          goto LABEL_14;
        case 0x1B:
          goto LABEL_15;
        case 0x1C:
          goto LABEL_79;
        case 0x1D:
        case 0x1E:
          goto LABEL_82;
        case 0x1F:
          goto LABEL_84;
        case 0x20:
          goto LABEL_89;
        default:
          v15 = +[TCCDPlatform currentPlatform];
          v16 = [v15 server];
          v17 = [v16 logHandle];

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(v43 + 6);
            *buf = 67109376;
            *&buf[4] = v18;
            LOWORD(v52) = 1024;
            *(&v52 + 2) = 32;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Downgrading database from version %d to %d", buf, 0xEu);
          }

          sqlite3_close(db);
          db = 0;
          if (removefile(v1, 0, 3u))
          {
            v19 = +[TCCDPlatform currentPlatform];
            v20 = [v19 server];
            v21 = [v20 logHandle];

            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_100034670();
            }

            database = 1;
          }

          else
          {
            database = db_open();
          }

          access_changed();
          free(v1);
          if (database)
          {
            goto LABEL_93;
          }

          goto LABEL_94;
      }
    }
  }

  free(v1);
LABEL_93:
  db_unavailable = 1;
  db_extended_error_code = sqlite3_extended_errcode(db);
  sqlite3_close(db);
  db = 0;
LABEL_94:
  _Block_object_dispose(&v42, 8);
  return database;
}

void sub_1000323F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose((v27 - 144), 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100032468(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1000324A0(sqlite3 *a1)
{
  v2 = sqlite3_exec(a1, "CREATE TABLE IF NOT EXISTS NEW_access(   service        TEXT        NOT NULL,     client         TEXT        NOT NULL,     client_type    INTEGER     NOT NULL,     auth_value     INTEGER     NOT NULL,     auth_reason    INTEGER     NOT NULL,     auth_version   INTEGER     NOT NULL,     csreq          BLOB,     policy_id      INTEGER,     indirect_object_identifier_type    INTEGER,     indirect_object_identifier         TEXT NOT NULL DEFAULT 'UNUSED',     indirect_object_code_identity      BLOB,     flags          INTEGER,     last_modified  INTEGER     NOT NULL DEFAULT (CAST(strftime('%s','now') AS INTEGER)),     PRIMARY KEY (service, client, client_type, indirect_object_identifier),    FOREIGN KEY (policy_id) REFERENCES policies(id) ON DELETE CASCADE ON UPDATE CASCADE)", 0, 0, 0);
  if (v2 || (v2 = sub_100007608("SELECT * FROM access", 0, &stru_1000A5F68, 1), v2) || (v2 = sqlite3_exec(a1, "DROP TABLE access", 0, 0, 0), v2))
  {
    v3 = v2;
    _db_error(0);
    return v3;
  }

  else
  {

    return sqlite3_exec(a1, "ALTER TABLE NEW_access RENAME TO access", 0, 0, 0);
  }
}

uint64_t sub_100032560(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100032598(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t db_get_current_version()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100032700;
  v5[3] = &unk_1000A52A8;
  v5[4] = &v6;
  if (sub_100007608("SELECT value FROM admin WHERE key = 'version'", 0, v5, 0))
  {
    v0 = +[TCCDPlatform currentPlatform];
    v1 = [v0 server];
    v2 = [v1 logHandle];

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000346A4();
    }
  }

  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1000326E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100032700(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t db_get_current_version_locked()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100032868;
  v5[3] = &unk_1000A52A8;
  v5[4] = &v6;
  if (sub_100007608("SELECT value FROM admin WHERE key = 'version'", 0, v5, 1))
  {
    v0 = +[TCCDPlatform currentPlatform];
    v1 = [v0 server];
    v2 = [v1 logHandle];

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000346A4();
    }
  }

  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_10003284C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100032868(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t db_persistent_state_get_value(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -1;
  v4 = sub_100032A48(a1, v3);
  if (v4)
  {
    v5 = [NSString stringWithFormat:@"SELECT value FROM admin WHERE key = '%@'", v4];
    v6 = +[TCCDPlatform currentPlatform];
    v7 = [v6 server];
    v8 = [v7 logHandle];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000346D8();
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100032BC0;
    v11[3] = &unk_1000A52A8;
    v11[4] = &v12;
    if (sub_100007608([v5 UTF8String], 0, v11, 0))
    {
      _db_error(0);
    }
  }

  v9 = *(v13 + 6);

  _Block_object_dispose(&v12, 8);
  return v9;
}

void sub_100032A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100032A48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 == 1)
  {
    if (v3)
    {
      v5 = [NSString stringWithFormat:@"POST_UPGRADE_3_RIGHT_ALERT_%@", v3];
      goto LABEL_9;
    }

    v6 = @"Missing Service Name.";
  }

  else
  {
    v6 = @"Invalid TCCDPersistentStateType.";
  }

  v7 = sub_100031114();
  v8 = +[TCCDPlatform currentPlatform];
  v9 = [v8 server];
  v10 = [v9 logHandle];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218498;
    v13 = a1;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Cannot construct Persistent State key name. type: %llu: %@\n%@", buf, 0x20u);
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t sub_100032BC0(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void db_persistent_state_set_value(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_100032A48(a1, a2);
  if (v4)
  {
    if ((a3 & 0x80000000) != 0)
    {
      v5 = sub_100031114();
      v9 = +[TCCDPlatform currentPlatform];
      v10 = [v9 server];
      v11 = [v10 logHandle];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        v13 = a3;
        v14 = 2112;
        v15 = v4;
        v16 = 2112;
        v17 = v5;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Persistent State value (%d) is negative; key name: %@\n%@", buf, 0x1Cu);
      }
    }

    else
    {
      v5 = [NSString stringWithFormat:@"INSERT OR REPLACE INTO admin (key, value) VALUES ('%@', %d)", v4, a3];
      v6 = +[TCCDPlatform currentPlatform];
      v7 = [v6 server];
      v8 = [v7 logHandle];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000346D8();
      }

      if (sub_100007608([v5 UTF8String], 0, 0, 0))
      {
        _db_error(0);
      }
    }
  }
}

void db_persistent_state_reset(uint64_t a1, void *a2)
{
  v2 = sub_100032A48(a1, a2);
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"DELETE FROM admin WHERE key = '%@'", v2];
    v4 = +[TCCDPlatform currentPlatform];
    v5 = [v4 server];
    v6 = [v5 logHandle];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000346D8();
    }

    if (sub_100007608([v3 UTF8String], 0, 0, 0))
    {
      _db_error(0);
    }
  }
}

uint64_t db_get_database_error_code()
{
  if (db_unavailable)
  {
    return db_extended_error_code;
  }

  else
  {
    return 0;
  }
}

const char *db_get_filename()
{
  result = db;
  if (db)
  {
    result = sqlite3_db_filename(db, "main");
    if (result)
    {
      if (!*result)
      {
        return 0;
      }
    }
  }

  return result;
}

id db_get_file_metadata(const char *a1)
{
  v2 = objc_opt_new();
  if (a1)
  {
    v3 = [NSString stringWithUTF8String:a1];
    [v2 setObject:v3 forKeyedSubscript:@"FILENAME"];

    memset(&v13, 0, sizeof(v13));
    if (!stat(a1, &v13))
    {
      v4 = [NSString stringWithFormat:@"%o", v13.st_mode];
      [v2 setObject:v4 forKeyedSubscript:@"ST_MODE"];

      v5 = [NSNumber numberWithUnsignedInt:v13.st_uid];
      [v2 setObject:v5 forKeyedSubscript:@"ST_UID"];

      v6 = [NSNumber numberWithUnsignedInt:v13.st_gid];
      [v2 setObject:v6 forKeyedSubscript:@"ST_GID"];

      v7 = [NSDate dateWithTimeIntervalSince1970:v13.st_atimespec.tv_sec];
      [v2 setObject:v7 forKeyedSubscript:@"ST_ATIME"];

      v8 = [NSDate dateWithTimeIntervalSince1970:v13.st_mtimespec.tv_sec];
      [v2 setObject:v8 forKeyedSubscript:@"ST_MTIME"];

      v9 = [NSDate dateWithTimeIntervalSince1970:v13.st_ctimespec.tv_sec];
      [v2 setObject:v9 forKeyedSubscript:@"ST_CTIME"];

      v10 = [NSDate dateWithTimeIntervalSince1970:v13.st_birthtimespec.tv_sec];
      [v2 setObject:v10 forKeyedSubscript:@"ST_BIRTHTIME"];
    }
  }

  v11 = [v2 copy];

  return v11;
}

void sub_100033130(id a1)
{
  v1 = +[TCCDPlatform currentPlatform];
  v2 = [v1 server];
  v3 = [v2 logHandle];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000340B0();
  }

  sqlite3_close(db);
  db = 0;
}

uint64_t sub_1000331B8(uint64_t a1)
{
  result = sub_100007608("BEGIN", 0, 0, 1);
  if (result || (result = (*(*(a1 + 32) + 16))(), result) || (result = sub_100007608("END", 0, 0, 1), result))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t db_test_corrupt(int a1)
{
  v2 = +[TCCDPlatform currentPlatform];
  v3 = [v2 server];
  v4 = [v3 logHandle];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Corrupting database...", v10, 2u);
  }

  v5 = sub_100007608("SELECT * FROM active_policy WHERE client='NOT EXIST'", 0, 0, 0);
  if (!v5)
  {
    v6 = db_dir_get();
    *&v6[strlen(v6)] = 0x62642E4343542FLL;
    v5 = 2;
    v7 = open(v6, 2);
    if (v7 != -1)
    {
      v8 = v7;
      lseek(v7, 0, 0);
      write(v8, "Let you corrupt", 0xFuLL);
      _db_error(a1);
      close(v8);
      return 0;
    }
  }

  return v5;
}

uint64_t set_device_id(void *a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100033428;
  v5[3] = &unk_1000A5188;
  v6 = a1;
  v1 = v6;
  v2 = objc_retainBlock(v5);
  v3 = sub_100007608([CFSTR(""INSERT OR REPLACE INTO tccd_attributes (key value) VALUES ('device_id'], v2, 0, 0);

  return v3;
}

void sub_100033428(uint64_t a1, sqlite3_stmt *a2)
{
  if (sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = +[TCCDPlatform currentPlatform];
    v3 = [v2 server];
    v4 = [v3 logHandle];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100034740();
    }

    _db_error(1);
  }
}

id get_device_id()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_100007510;
  v8 = sub_100007588;
  v9 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100033600;
  v3[3] = &unk_1000A52A8;
  v3[4] = &v4;
  if (sub_100007608([@"SELECT value FROM tccd_attributes WHERE key='device_id'" UTF8String], 0, v3, 0))
  {
    _db_error(1);
LABEL_3:
    v0 = 0;
    goto LABEL_6;
  }

  v1 = v5[5];
  if (!v1)
  {
    goto LABEL_3;
  }

  v0 = v1;
LABEL_6:
  _Block_object_dispose(&v4, 8);

  return v0;
}

void sub_1000335E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100033600(uint64_t a1, sqlite3_stmt *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [NSString stringWithUTF8String:sqlite3_column_text(a2, 0)];

  return _objc_release_x1();
}

void sub_100033664(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) platform];
  v5 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 0)];
  v11 = [v4 serviceByName:v5];

  if (v11)
  {
    v6 = sqlite3_column_text(a2, 1);
    v7 = sqlite3_column_int(a2, 2);
    v8 = *(a1 + 32);
    v9 = [NSString stringWithUTF8String:v6];
    LOBYTE(v10) = 1;
    [v8 publishAccessChangedEvent:3 forService:v11 client:v9 clientType:v7 authValue:1 authReason:0 andKillClient:v10 attributionChain:*(a1 + 40)];
  }
}

void sub_100033794(id a1, sqlite3_stmt *a2)
{
  __s1 = sqlite3_column_text(a2, 0);
  v34 = sqlite3_column_text(a2, 1);
  v35 = sqlite3_column_int(a2, 2);
  v3 = sqlite3_column_int(a2, 3);
  v4 = sqlite3_column_int(a2, 4);
  v33 = sqlite3_column_type(a2, 5);
  v32 = sqlite3_column_blob(a2, 5);
  v31 = sqlite3_column_bytes(a2, 5);
  v30 = sqlite3_column_type(a2, 6);
  v29 = sqlite3_column_int(a2, 6);
  v28 = sqlite3_column_type(a2, 7);
  v27 = sqlite3_column_int(a2, 7);
  v5 = sqlite3_column_type(a2, 8);
  v6 = sqlite3_column_text(a2, 8);
  v7 = sqlite3_column_type(a2, 9);
  v8 = sqlite3_column_blob(a2, 9);
  v9 = sqlite3_column_bytes(a2, 9);
  v10 = sqlite3_column_type(a2, 10);
  v11 = sqlite3_column_int(a2, 10);
  v12 = sqlite3_column_int(a2, 11);
  if (v4 == 1 || !v4 && !strcmp(__s1, "kTCCServiceAppleEvents"))
  {
    if (!v3)
    {
      v13 = 0;
LABEL_13:
      v26 = v13;
      v18 = "com.apple.tcc.migrated_db_queue" + 26;
      v19 = v5 == 5;
      if (v5 == 5)
      {
        v20 = "UNUSED";
      }

      else
      {
        v20 = v6;
      }

      if (v19 || (v21 = strcmp(v6, "UNUSED"), v18 = "queue", !v21))
      {
        v63 = 0;
        v64 = &v63;
        v65 = 0x2020000000;
        v66 = 0;
        v55 = _NSConcreteStackBlock;
        v56 = *(v18 + 238);
        v57 = sub_100033D1C;
        v58 = &unk_1000A5F88;
        v59 = __s1;
        v60 = v34;
        v62 = v35;
        v61 = v20;
        v54[0] = _NSConcreteStackBlock;
        v54[1] = v56;
        v54[2] = sub_100033DA4;
        v54[3] = &unk_1000A52A8;
        v54[4] = &v63;
        sub_100007608("SELECT count(*) FROM NEW_access WHERE service = ? AND client = ? AND client_type = ? AND indirect_object_identifier = ?", &v55, v54, 1);
        if (*(v64 + 24) == 1)
        {
          v22 = +[TCCDPlatform currentPlatform];
          v23 = [v22 server];
          v24 = [v23 logHandle];

          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = "(null)";
            *buf = 136316418;
            if (v6)
            {
              v25 = v6;
            }

            v68 = __s1;
            v69 = 2080;
            v70 = v34;
            v71 = 1024;
            v72 = v35;
            v73 = 2080;
            v74 = v25;
            v75 = 1024;
            v76 = v3;
            v77 = 1024;
            v78 = v4;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Dropping duplicate v15 access row: service=%s, client=%s, client_type=%d, indirect_object_identifier=%s, allowed=%d, prompt_count=%d", buf, 0x32u);
          }

          _Block_object_dispose(&v63, 8);
          return;
        }

        _Block_object_dispose(&v63, 8);
      }

      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100033DE4;
      v37[3] = &unk_1000A5FA8;
      v37[4] = __s1;
      v37[5] = v34;
      v37[6] = v26;
      v38 = xmmword_1000809C0;
      v42 = v35;
      v43 = v33;
      v44 = v31;
      v45 = v30;
      v46 = v29;
      v47 = v28;
      v39 = v32;
      v40 = v20;
      v48 = v27;
      v49 = v7;
      v41 = v8;
      v50 = v9;
      v51 = v10;
      v52 = v11;
      v53 = v12;
      sub_100007608("INSERT INTO NEW_access   (service, client, client_type, auth_value, auth_reason, auth_version, csreq, policy_id, indirect_object_identifier_type, indirect_object_identifier, indirect_object_code_identity, flags, last_modified) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", v37, 0, 1);
      return;
    }

    if (v3 == 1)
    {
      v13 = 2;
      goto LABEL_13;
    }
  }

  v14 = +[TCCDPlatform currentPlatform];
  v15 = [v14 server];
  v16 = [v15 logHandle];

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = "(null)";
    *buf = 136316418;
    if (v6)
    {
      v17 = v6;
    }

    v68 = __s1;
    v69 = 2080;
    v70 = v34;
    v71 = 1024;
    v72 = v35;
    v73 = 2080;
    v74 = v17;
    v75 = 1024;
    v76 = v3;
    v77 = 1024;
    v78 = v4;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Dropping invalid v15 access row: service=%s, client=%s, client_type=%d, indirect_object_identifier=%s, allowed=%d, prompt_count=%d", buf, 0x32u);
  }
}

uint64_t sub_100033D1C(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, *(a1 + 32), -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_text(a2, 2, *(a1 + 40), -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int(a2, 3, *(a1 + 56));
  v4 = *(a1 + 48);

  return sqlite3_bind_text(a2, 4, v4, -1, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t sub_100033DA4(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result > 0;
  return result;
}

uint64_t sub_100033DE4(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, *(a1 + 32), -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_text(a2, 2, *(a1 + 40), -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int(a2, 3, *(a1 + 96));
  sqlite3_bind_int64(a2, 4, *(a1 + 48));
  sqlite3_bind_int64(a2, 5, *(a1 + 56));
  sqlite3_bind_int64(a2, 6, *(a1 + 64));
  if (*(a1 + 100) == 5)
  {
    sqlite3_bind_null(a2, 7);
  }

  else
  {
    sqlite3_bind_blob(a2, 7, *(a1 + 72), *(a1 + 104), 0xFFFFFFFFFFFFFFFFLL);
  }

  if (*(a1 + 108) == 5)
  {
    sqlite3_bind_null(a2, 8);
  }

  else
  {
    sqlite3_bind_int(a2, 8, *(a1 + 112));
  }

  if (*(a1 + 116) == 5)
  {
    sqlite3_bind_null(a2, 9);
  }

  else
  {
    sqlite3_bind_int(a2, 9, *(a1 + 120));
  }

  sqlite3_bind_text(a2, 10, *(a1 + 80), -1, 0xFFFFFFFFFFFFFFFFLL);
  if (*(a1 + 124) == 5)
  {
    sqlite3_bind_null(a2, 11);
  }

  else
  {
    sqlite3_bind_blob(a2, 11, *(a1 + 88), *(a1 + 128), 0xFFFFFFFFFFFFFFFFLL);
  }

  if (*(a1 + 132) == 5)
  {
    sqlite3_bind_null(a2, 12);
  }

  else
  {
    sqlite3_bind_int(a2, 12, *(a1 + 136));
  }

  v4 = *(a1 + 140);

  return sqlite3_bind_int(a2, 13, v4);
}

void sub_100033FBC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100034040()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100034118(sqlite3 **a1)
{
  v1 = *a1;
  if (v1)
  {
    sqlite3_errmsg(v1);
  }

  sub_100008F78();
  sub_100008FB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000341C8(void *a1)
{
  [a1 UTF8String];
  sub_100008F78();
  sub_100008FB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100034290(int a1, int a2)
{
  sqlite3_errstr(a2);
  sub_100033F98();
  sub_100008FB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void sub_100034324(void *a1)
{
  v1 = [a1 pathToDatabase];
  sub_100008F78();
  sub_100008FB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10003448C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 name];
  sub_100008F78();
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "VACUUM after DELETE of (%@ : %@)", v6, 0x16u);
}

void sub_100034554()
{
  if (db)
  {
    sqlite3_errmsg(db);
  }

  sub_100008F78();
  sub_100008FB4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000345EC()
{
  sub_100008F78();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to create %{public}s (%d)", v2, 0x12u);
}

void sub_100035430(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "_CFBundleCreateUnique failed for %{public}@", &v2, 0xCu);
}

void sub_100035580(void *a1)
{
  v1 = [a1 executableURL];
  sub_10000913C();
  sub_1000091E4(&_mh_execute_header, v2, v3, "Unable to resolve realpath of: %{public}@: %{public}@", v4, v5, v6, v7, v8);
}

void sub_100035614(void *a1)
{
  v1 = [a1 bundleURL];
  sub_10000913C();
  sub_1000091E4(&_mh_execute_header, v2, v3, "Unable to resolve realpath of: %{public}@: %{public}@", v4, v5, v6, v7, v8);
}

int sub_100035B74(id a1, TCCDSQLDatabase *a2)
{
  v2 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100035F44;
  v21[3] = &unk_1000A52A8;
  v21[4] = &v22;
  v3 = [(TCCDSQLDatabase *)v2 evalLocked:"SELECT value FROM admin WHERE key = 'version'" bind:0 step:v21];
  if (v3)
  {
    goto LABEL_2;
  }

  v5 = +[TCCDPlatform currentPlatform];
  v6 = [v5 server];
  v7 = [v6 logHandle];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v23 + 6);
    *buf = 67109120;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "using accessory database version: %d", buf, 8u);
  }

  v9 = *(v23 + 6);
  if (v9 == 2)
  {
LABEL_13:
    v3 = 0;
    goto LABEL_2;
  }

  if (v9 == 1)
  {
    v10 = +[TCCDPlatform currentPlatform];
    v11 = [v10 server];
    v12 = [v11 logHandle];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "creating tccd_attributes table", buf, 2u);
    }

    v3 = [(TCCDSQLDatabase *)v2 eval:"CREATE TABLE IF NOT EXISTS tccd_attributes(   key          TEXT        NOT NULL bind:value        TEXT        NOT NULL step:PRIMARY KEY (key))", 0, 0];
    if (!v3)
    {
      v13 = +[TCCDPlatform currentPlatform];
      v14 = [v13 server];
      v15 = [v14 logHandle];

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(v23 + 6);
        *buf = 67109376;
        v27 = v16;
        v28 = 1024;
        v29 = 2;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Upgrading accessory database from version %d to %d", buf, 0xEu);
      }

      v3 = [(TCCDSQLDatabase *)v2 eval:"UPDATE admin SET value = 2 WHERE key = 'version'" bind:0 step:0];
      if (!v3)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v17 = +[TCCDPlatform currentPlatform];
    v18 = [v17 server];
    v19 = [v18 logHandle];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(v23 + 6);
      *buf = 67109376;
      v27 = v20;
      v28 = 1024;
      v29 = 2;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Downgrading database from version %d to %d", buf, 0xEu);
    }

    [(TCCDSQLDatabase *)v2 closeDatabase];
    [(TCCDSQLDatabase *)v2 setDb:0];
    v3 = [(TCCDSQLDatabase *)v2 removeDatabase];
    if (!v3)
    {
      v3 = [(TCCDSQLDatabase *)v2 openDatabase];
    }
  }

LABEL_2:
  _Block_object_dispose(&v22, 8);

  return v3;
}

void sub_100035F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100035F44(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10003603C(uint64_t a1, sqlite3_stmt *a2)
{
  if (sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = +[TCCDPlatform currentPlatform];
    v4 = [v3 server];
    v5 = [v4 logHandle];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000363E4(v5);
    }

    v6 = [*(a1 + 40) delegate];
    _generic_db_error(1, 158, v6);
  }
}

void sub_100036234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003624C(uint64_t a1, sqlite3_stmt *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [NSString stringWithUTF8String:sqlite3_column_text(a2, 0)];

  return _objc_release_x1();
}

void sub_1000363E4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[TCCDDatabaseAccessory setDeviceID:]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "db bind error for %s", &v1, 0xCu);
}

void sub_1000377B8(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v3 = v1;
    [v1 floatValue];
    v1 = v3;
    *&qword_1000C1158 = v2;
  }
}

void sub_100037814(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFEqual(v1, @"iPad"))
    {
      byte_1000C1160 = 1;
    }

    CFRelease(v2);
  }
}

void sub_100037884(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "#tccIcon %@ already exists", &v2, 0xCu);
}

void sub_1000378FC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#tccIcon unable to create temporary dir at %@. Error: %@", &v3, 0x16u);
}

void sub_100037998(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 path];
  v6 = 138412546;
  v7 = a1;
  sub_1000090B4();
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "#tccIcon returning cached icon for %@ at %@", &v6, 0x16u);
}

void sub_100037A6C()
{
  v1 = 136315394;
  v2 = "+[TCCDIconGenerator _writeIcon:withDescriptor:toTempURL:]";
  sub_1000090B4();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#tccIcon %s: unable to write icon to URL %@", &v1, 0x16u);
}

void sub_100037AF0()
{
  v1 = 136315394;
  v2 = "+[TCCDIconGenerator _createCGImageIconWithBadge:forService:withDescriptor:]";
  sub_1000090B4();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "#tccIcon %s: icon not found for TCC service=%@", &v1, 0x16u);
}

void sub_100037C10(char a1, char a2, os_log_t log)
{
  v3 = "false";
  if (a1)
  {
    v4 = "true";
  }

  else
  {
    v4 = "false";
  }

  if (a2)
  {
    v3 = "true";
  }

  v5 = 136315394;
  v6 = v4;
  v7 = 2080;
  v8 = v3;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "#tccIcon One of cgImageRef is NULL. nullBaseImage: %s; nullOverlayImage: %s", &v5, 0x16u);
}

void sub_100038248()
{
  objc_opt_class();
  sub_100009150();
  sub_100008FB4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000382CC()
{
  objc_opt_class();
  sub_100009150();
  sub_100008FB4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100038350()
{
  objc_opt_class();
  sub_100009150();
  sub_100008FB4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000383D4()
{
  objc_opt_class();
  sub_100009150();
  sub_100008FB4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10003846C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid filter key: must be the name of a TCC service, found %{public}@", &v2, 0xCu);
}

void sub_100038C74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 3)
    {
      return;
    }

    v3 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000405E0(a1);
    }
  }

  else
  {
    v3 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 40) bundleIdentifier];
      v5 = *(a1 + 48);
      v6 = [*(a1 + 56) name];
      v7 = 138543874;
      v8 = v4;
      v9 = 2114;
      v10 = v5;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Terminating plugin %{public}@ of %{public}@ because access to the %{public}@ service changed.", &v7, 0x20u);
    }
  }
}

id sub_1000392CC(uint64_t a1)
{
  v2 = [*(a1 + 32) logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "analytics timer fired: attempting to surface events", v4, 2u);
  }

  return [*(a1 + 32) sendRecordMetricsForService:"kTCCServiceCalendar"];
}

uint64_t sub_100039B50(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) _indentForDepth:(*(a1 + 48) + 1)];
  [v6 appendString:v7];

  if (!strcmp(a2, "target_token") || !strcmp(a2, "indirect_object_token") || !strcmp(a2, "TCCD_MSG_CREDENTIAL_AUTHENTICATOR_AUDIT_TOKEN_KEY"))
  {
    if (xpc_get_type(v5) == &_xpc_type_data)
    {
      memset(&buffer, 0, sizeof(buffer));
      if (xpc_data_get_bytes(v5, &buffer, 0, 0x20uLL) == 32)
      {
        *pidp = 0;
        euidp = 0;
        atoken = buffer;
        audit_token_to_au32(&atoken, pidp, &euidp, 0, 0, 0, &pidp[1], 0, 0);
        [*(a1 + 32) appendFormat:@"%s={pid:%d, auid:%d, euid:%d}", a2, pidp[1], pidp[0], euidp];
      }

      else
      {
        [*(a1 + 32) appendFormat:@"%s={<malformed!>}", a2, v14, v15, v16];
      }
    }

    else
    {
      type = xpc_get_type(v5);
      v12 = *(a1 + 32);
      if (type == &_xpc_type_null)
      {
        [v12 appendFormat:@"%s={NULL}", a2, v14, v15, v16];
      }

      else
      {
        [v12 appendFormat:@"%s={<unknown type!>}", a2, v14, v15, v16];
      }
    }

    [*(a1 + 32) appendString:@"\n"];
  }

  else if (strcmp(a2, "target_csreq"))
  {
    v8 = strcmp(a2, "extension");
    v9 = *(a1 + 32);
    if (v8)
    {
      v10 = [*(a1 + 40) _descriptionForXPCObject:v5 depth:(*(a1 + 48) + 1)];
      [v9 appendFormat:@"%s=%@\n", a2, v10];
    }

    else
    {
      [v9 appendFormat:@"%s={<redacted>}\n", a2];
    }
  }

  return 1;
}

uint64_t sub_10003A038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) _descriptionForXPCObject:a3 depth:*(a1 + 56)];
  [*(a1 + 40) appendFormat:@"%@[%zu] = %@\n", *(a1 + 48), a2, v5];

  return 1;
}

id sub_10003A790(uint64_t a1)
{
  result = [*(a1 + 32) internalPreferenceBoolValueForName:@"generateBacktraceOnPrompt"];
  *(*(a1 + 32) + 40) = result;
  return result;
}

uint64_t sub_10003B1A4(uint64_t a1)
{
  v2 = [[NSMutableString alloc] initWithString:{@"FROM access WHERE service = ? AND strftime('%s', 'now') - last_modified > ?"}];
  if ([*(a1 + 32) expireOnlyAllowedEntries])
  {
    [v2 appendString:@" AND auth_value != 0"];
  }

  if (![*(a1 + 32) saveExpiredEntries])
  {
    goto LABEL_7;
  }

  v3 = [*(a1 + 40) logHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) name];
    *buf = 136446466;
    v20 = "[TCCDServer purgeExpiredAccessEntriesForService:]_block_invoke";
    v21 = 2114;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}s: Recording %{public}@ clients in expired table.", buf, 0x16u);
  }

  v5 = [NSString stringWithFormat:@"INSERT OR REPLACE INTO expired (service, client, client_type, csreq, last_modified) SELECT  service, client, client_type, csreq, last_modified %@", v2];
  v6 = [v5 UTF8String];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10003B494;
  v17[3] = &unk_1000A5188;
  v18 = *(a1 + 32);
  v7 = db_eval_locked(v6, v17, 0);

  if (!v7)
  {
LABEL_7:
    v8 = [NSString stringWithFormat:@"DELETE %@", v2];
    v9 = [v8 UTF8String];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10003B558;
    v15[3] = &unk_1000A5188;
    v16 = *(a1 + 32);
    v7 = db_eval_locked(v9, v15, 0);
    if (!v7)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10003B61C;
      v13[3] = &unk_1000A5318;
      v12 = *(a1 + 32);
      v10 = v12.i64[0];
      v14 = vextq_s8(v12, v12, 8uLL);
      v7 = db_eval_locked("SELECT changes()", 0, v13);
    }
  }

  return v7;
}

void sub_10003B494(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) name];
  if (sqlite3_bind_text(a2, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
  }

  else
  {
    v5 = [*(a1 + 32) expirySeconds];
    v6 = sqlite3_bind_int(a2, 2, [v5 intValue]);

    if (!v6)
    {
      return;
    }
  }

  _db_error(1);
}

void sub_10003B558(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) name];
  if (sqlite3_bind_text(a2, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
  }

  else
  {
    v5 = [*(a1 + 32) expirySeconds];
    v6 = sqlite3_bind_int(a2, 2, [v5 intValue]);

    if (!v6)
    {
      return;
    }
  }

  _db_error(1);
}

void sub_10003B61C(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_int(a2, 0);
  if (v3 >= 1)
  {
    v4 = v3;
    v5 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 40) name];
      v8 = 136446722;
      v9 = "[TCCDServer purgeExpiredAccessEntriesForService:]_block_invoke_3";
      v10 = 1024;
      v11 = v4;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}s: purged %d expired access records for service: %{public}@", &v8, 0x1Cu);
    }

    v7 = dispatch_get_global_queue(-32768, 0);
    dispatch_async(v7, &stru_1000A6228);
  }
}

void sub_10003C608(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) name];
  if (!sqlite3_bind_text(a2, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = [*(a1 + 40) identifier];
    if (!sqlite3_bind_text(a2, 2, [v5 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = sqlite3_bind_int(a2, 3, [*(a1 + 40) client_type]);

      if (!v6)
      {
        return;
      }

      goto LABEL_5;
    }
  }

LABEL_5:

  _db_error(1);
}

void sub_10003C6F4(uint64_t a1, sqlite3_stmt *a2)
{
  **(a1 + 64) = sqlite3_column_int64(a2, 0);
  v4 = sqlite3_column_int64(a2, 1);
  v5 = *(a1 + 80);
  **(a1 + 72) = v4;
  if (v5)
  {
    **(a1 + 80) = sqlite3_column_int(a2, 4);
  }

  if ([*(a1 + 32) isAccessEntryWithAge:sqlite3_column_int(a2 authorizationValue:3) expiredForService:{**(a1 + 64), *(a1 + 40)}])
  {
    v6 = *(a1 + 72);
    **(a1 + 64) = 1;
    *v6 = 5;
  }

  else if (sqlite3_column_type(a2, 2) != 5)
  {
    v7 = sqlite3_column_blob(a2, 2);
    v8 = sqlite3_column_bytes(a2, 2);
    if (v7 && v8 >= 1)
    {
      *(*(*(a1 + 56) + 8) + 40) = [NSData dataWithBytes:v7 length:v8];

      _objc_release_x1();
    }

    else
    {
      v9 = [*(a1 + 32) logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100040AA4((a1 + 40), a1);
      }

      v10 = *(a1 + 72);
      **(a1 + 64) = 0;
      *v10 = 1;
    }
  }
}

void sub_10003D198(uint64_t a1, sqlite3_stmt *a2)
{
  if (!sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = [*(a1 + 40) identifier];
    if (sqlite3_bind_text(a2, 2, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_int(a2, 3, objc_msgSend(*(a1 + 40), "identifierAuthority")) || sqlite3_bind_int64(a2, 4, objc_msgSend(*(a1 + 48), "authorizationValue")) || sqlite3_bind_int64(a2, 5, objc_msgSend(*(a1 + 48), "authorizationReason")) || sqlite3_bind_int64(a2, 6, objc_msgSend(*(a1 + 48), "authorizationVersion")))
    {
    }

    else
    {
      v14 = sqlite3_bind_int(a2, 12, *(a1 + 80));

      if (!v14)
      {
        goto LABEL_9;
      }
    }
  }

  _db_error(1);
LABEL_9:
  if ([*(a1 + 56) type] == 1 && (v5 = *(a1 + 64)) != 0)
  {
    v6 = [v5 identifierAuthority];
    v7 = [*(a1 + 64) identifier];
    v8 = [*(a1 + 64) verifierData];
  }

  else if ([*(a1 + 56) type] == 2)
  {
    v7 = *(a1 + 72);
    v8 = 0;
    v6 = 3;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v7 = @"UNUSED";
  }

  if (sqlite3_bind_int(a2, 8, v6) || sqlite3_bind_text(a2, 9, -[__CFString UTF8String](v7, "UTF8String"), -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_blob(a2, 10, [v8 bytes], objc_msgSend(v8, "length"), 0xFFFFFFFFFFFFFFFFLL))
  {
    _db_error(1);
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100007530;
  v33 = sub_100007598;
  v34 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10003D718;
  v25[3] = &unk_1000A5E90;
  v26 = *(a1 + 32);
  v27 = *(a1 + 40);
  v9 = v7;
  v28 = v9;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10003D818;
  v24[3] = &unk_1000A52A8;
  v24[4] = &v29;
  if (db_eval_locked("SELECT csreq FROM access WHERE service = ? AND client = ? AND client_type = ? AND indirect_object_identifier = ?", v25, v24))
  {
    _db_error(1);
  }

  if ([*(a1 + 40) verifierType] == 1 && (objc_msgSend(*(a1 + 40), "verifierData"), v10 = objc_claimAutoreleasedReturnValue(), v10, v10) && ((objc_msgSend(*(a1 + 48), "replaceStoredCodeRequirement") & 1) != 0 || !v30[5]))
  {
    v11 = [*(a1 + 40) verifierData];
  }

  else
  {
    v11 = v30[5];
  }

  v12 = v11;
  if (sqlite3_bind_blob(a2, 7, [v11 bytes], objc_msgSend(v11, "length"), 0xFFFFFFFFFFFFFFFFLL))
  {
    _db_error(1);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if ([*(a1 + 48) flags])
  {
    v13 = [*(a1 + 48) flags];
    *(v21 + 6) = v13;
  }

  else
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10003D8B8;
    v16[3] = &unk_1000A5E90;
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19 = v9;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10003D9B8;
    v15[3] = &unk_1000A52A8;
    v15[4] = &v20;
    if (db_eval_locked("SELECT flags FROM access WHERE service = ? AND client = ? AND client_type = ? AND indirect_object_identifier = ?", v16, v15))
    {
      _db_error(1);
    }

    v13 = *(v21 + 6);
  }

  sqlite3_bind_int(a2, 11, v13);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v29, 8);
}

void sub_10003D6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10003D718(id *a1, sqlite3_stmt *a2)
{
  if (!sqlite3_bind_text(a2, 1, [a1[4] UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = [a1[5] identifier];
    if (sqlite3_bind_text(a2, 2, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_int(a2, 3, objc_msgSend(a1[5], "identifierAuthority")))
    {
    }

    else
    {
      v5 = sqlite3_bind_text(a2, 4, [a1[6] UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

      if (!v5)
      {
        return;
      }
    }
  }

  _db_error(1);
}

uint64_t sub_10003D818(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_blob(a2, 0);
  result = sqlite3_column_bytes(a2, 0);
  if (v4 && result >= 1)
  {
    *(*(*(a1 + 32) + 8) + 40) = [NSData dataWithBytes:v4 length:result];

    return _objc_release_x1();
  }

  return result;
}

void sub_10003D8B8(id *a1, sqlite3_stmt *a2)
{
  if (!sqlite3_bind_text(a2, 1, [a1[4] UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = [a1[5] identifier];
    if (sqlite3_bind_text(a2, 2, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_int(a2, 3, objc_msgSend(a1[5], "identifierAuthority")))
    {
    }

    else
    {
      v5 = sqlite3_bind_text(a2, 4, [a1[6] UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

      if (!v5)
      {
        return;
      }
    }
  }

  _db_error(1);
}

uint64_t sub_10003D9B8(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result & 0xFFFFFFF7;
  return result;
}

void sub_10003DF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

sqlite3_int64 sub_10003DF54(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int64(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_10003E494(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) accessRecordFromStep:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return _objc_release_x1();
}

void sub_10003E5D4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(a1 + 32);
  v6 = [a2 descriptionDictionary];
  [v5 addObject:v6];

  *a4 = 0;
}

void sub_10003E734(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_text(a2, 0);
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [NSString stringWithUTF8String:v3];
    [v4 addObject:v5];
  }
}

void sub_10003E8C8(uint64_t a1, sqlite3_stmt *a2)
{
  v9[0] = @"id";
  v4 = [NSNumber numberWithInt:sqlite3_column_int(a2, 0)];
  v10[0] = v4;
  v9[1] = @"bundle_id";
  v5 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 1)];
  v10[1] = v5;
  v9[2] = @"uuid";
  v6 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 2)];
  v10[2] = v6;
  v9[3] = @"display";
  v7 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 3)];
  v10[3] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  [*(a1 + 32) addObject:v8];
}

void sub_10003EB58(uint64_t a1, sqlite3_stmt *a2)
{
  v7[0] = @"client";
  v4 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 0)];
  v7[1] = @"policy_id";
  v8[0] = v4;
  v5 = [NSNumber numberWithInt:sqlite3_column_int(a2, 2)];
  v8[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  [*(a1 + 32) addObject:v6];
}

_DWORD *sub_10003EEF4(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) & 0xFFFFFFFE) != 2)
  {
    return 0;
  }

  v3 = [*(a1 + 32) stateDumpDictionary];
  v11 = 0;
  v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:200 options:0 error:&v11];
  v5 = v11;
  if (v5)
  {
    v6 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100041094();
    }
  }

  if ([v4 length] >> 32)
  {
    v9 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100041104();
    }

    v8 = 0;
  }

  else
  {
    v7 = [v4 length];
    v8 = malloc_type_calloc(1uLL, v7 + 200, 0x1000040BEF03554uLL);
    *v8 = 1;
    v8[1] = v7;
    __strlcpy_chk();
    memcpy(v8 + 50, [v4 bytes], v7);
    v9 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100041144();
    }
  }

  return v8;
}

void sub_10003F8E8(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) name];
  v5 = [v4 UTF8String];
  if (!v5)
  {
    v5 = [*(a1 + 40) UTF8String];
  }

  if (!sqlite3_bind_text(a2, 1, v5, -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = [*(a1 + 48) subjectIdentity];
    v7 = [v6 identifier];
    if (!sqlite3_bind_text(a2, 2, [v7 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = [*(a1 + 48) subjectIdentity];
      if (!sqlite3_bind_int(a2, 3, [v8 client_type]) && !sqlite3_bind_int64(a2, 4, *(a1 + 72)) && !sqlite3_bind_int64(a2, 5, objc_msgSend(*(a1 + 56), "authorizationReason")) && !sqlite3_bind_int64(a2, 6, objc_msgSend(*(a1 + 56), "authorizationVersion")) && !sqlite3_bind_text(a2, 9, "UNUSED", -1, 0xFFFFFFFFFFFFFFFFLL) && !sqlite3_bind_int(a2, 10, *(a1 + 80)) && !sqlite3_bind_int(a2, 14, objc_msgSend(*(a1 + 56), "lastReminderTime")))
      {
        v10 = [*(a1 + 48) subjectIdentity];
        v11 = [v10 policy_id];
        v12 = sub_10003FBA0(a2, v11);

        if (!v12)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }
  }

LABEL_15:
  _db_error(1);
LABEL_16:
  if (sqlite3_bind_null(a2, 11) || sqlite3_bind_null(a2, 12) || sqlite3_bind_null(a2, 13))
  {
    _db_error(1);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    if (!sqlite3_bind_blob(a2, 7, [v9 bytes], objc_msgSend(*(a1 + 64), "length"), 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else if (!sqlite3_bind_null(a2, 7))
  {
    return;
  }

  _db_error(1);
}

uint64_t sub_10003FBA0(sqlite3_stmt *a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 longLongValue];

    return sqlite3_bind_int64(a1, 8, v3);
  }

  else
  {

    return sqlite3_bind_null(a1, 8);
  }
}

void sub_10003FC0C(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) name];
  if (!sqlite3_bind_text(a2, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = [*(a1 + 40) subjectIdentity];
    v6 = [v5 identifier];
    if (!sqlite3_bind_text(a2, 2, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = [*(a1 + 40) subjectIdentity];
      v8 = sqlite3_bind_int(a2, 3, [v7 client_type]);

      if (!v8)
      {
        return;
      }

      goto LABEL_5;
    }
  }

LABEL_5:

  _db_error(1);
}

void sub_10003FD28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10 = [*(a1 + 48) subjectIdentity];
  v4 = [v10 identifier];
  v5 = [*(a1 + 48) subjectIdentity];
  v6 = [v5 client_type];
  v7 = [*(a1 + 56) authorizationReason];
  v8 = [*(a1 + 48) attributionChain];
  LOBYTE(v9) = 0;
  [v2 publishAccessChangedEvent:3 forService:v3 client:v4 clientType:v6 authValue:1 authReason:v7 andKillClient:v9 attributionChain:v8];
}

void sub_100040154(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = sqlite3_column_text(a2, 0);
  v4 = sqlite3_column_int(a2, 1);
  v5 = sqlite3_column_int64(a2, 2);
  v6 = sqlite3_column_text(a2, 6);
  v7 = sqlite3_column_int(a2, 7);
  v8 = sqlite3_column_int64(a2, 9);
  v9 = sqlite3_column_int64(a2, 10);
  v19 = sqlite3_column_int(a2, 11);
  v21[0] = @"subject_ID";
  v10 = [NSString stringWithUTF8String:v3];
  v22[0] = v10;
  v21[1] = @"subject_ID_type";
  v11 = [NSNumber numberWithInt:v4];
  v22[1] = v11;
  v21[2] = @"authorization_value";
  v12 = [NSNumber numberWithUnsignedLongLong:v5];
  v22[2] = v12;
  v21[3] = @"indirect_object_id";
  v13 = [NSString stringWithUTF8String:v6];
  v22[3] = v13;
  v21[4] = @"indirect_object_type";
  v14 = [NSNumber numberWithInt:v7];
  v22[4] = v14;
  v21[5] = @"auth_reason";
  v15 = [NSNumber numberWithUnsignedLongLong:v8];
  v22[5] = v15;
  v21[6] = @"auth_version";
  v16 = [NSNumber numberWithUnsignedLongLong:v9];
  v22[6] = v16;
  v21[7] = @"flags";
  v17 = [NSNumber numberWithInt:v19];
  v22[7] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:8];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v18];
}

void sub_1000403F0(uint64_t a1, sqlite3_stmt *a2)
{
  if (sqlite3_bind_text(a2, 1, *(a1 + 32), -1, 0xFFFFFFFFFFFFFFFFLL))
  {

    _db_error(1);
  }
}

void sub_1000405C0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

void sub_1000405E0(uint64_t a1)
{
  v1 = [*(a1 + 40) bundleIdentifier];
  sub_100008F78();
  sub_100008FB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100040688()
{
  sub_100008F78();
  sub_100009068();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100040704(void *a1)
{
  [a1 UTF8String];
  sub_100008F78();
  sub_100008FB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1000407F8()
{
  sub_100008F78();
  sub_100009068();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100040874()
{
  getuid();
  sub_100009078();
  sub_100008FB4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000408F4()
{
  getuid();
  sub_100009078();
  sub_100008FB4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000409EC(void *a1, NSObject *a2)
{
  v4 = [a1 identifier];
  v5 = 138543618;
  v6 = v4;
  v7 = 1024;
  v8 = [a1 pid];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Process %{public}@[%d] is a composition manager.", &v5, 0x12u);
}

void sub_100040AA4(id *a1, uint64_t a2)
{
  v3 = [*a1 name];
  v4 = [*(a2 + 48) identifier];
  sub_1000405B0();
  sub_100008FB4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100040B5C(void *a1)
{
  v2 = [a1 subjectIdentity];
  [v2 identityType];
  v3 = [a1 description];
  sub_1000405B0();
  sub_100008FB4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100040C18(void *a1, void *a2)
{
  [a1 type];
  v3 = [a2 description];
  sub_1000405B0();
  sub_100008FB4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100040CC4()
{
  sub_1000405B0();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100040D44()
{
  sub_1000405B0();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100040DC4()
{
  sub_100008F78();
  sub_100009068();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100040E40()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100040EB0()
{
  sub_100009078();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100040F20()
{
  sub_100008FC4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100040F9C()
{
  sub_100008FC4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100041018()
{
  sub_100008FC4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100041094()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100041144()
{
  sub_100009078();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000411B4(void *a1)
{
  v1 = [a1 subjectIdentity];
  v2 = [v1 identifier];
  sub_100008F78();
  sub_100008FB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100041258(void *a1)
{
  v1 = [a1 subjectIdentity];
  v2 = [v1 identifier];
  sub_100008F78();
  sub_100008FB4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100041D74(id a1)
{
  v1 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.tccd"];
  v2 = qword_1000C1178;
  qword_1000C1178 = v1;

  v3 = objc_opt_new();
  v4 = qword_1000C1180;
  qword_1000C1180 = v3;

  [qword_1000C1178 setDelegate:qword_1000C1180];
  v5 = qword_1000C1178;

  [v5 setWantsNotificationResponsesDelivered];
}

void sub_100041DF4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = tcc_access_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100043E80(v2, v3);
    }
  }
}

void sub_1000433CC(id a1)
{
  v1 = dispatch_semaphore_create(1);
  v2 = qword_1000C1190;
  qword_1000C1190 = v1;

  if (!v1)
  {
    sub_10004435C();
  }

  v3 = dispatch_semaphore_create(1);
  v4 = qword_1000C1198;
  qword_1000C1198 = v3;

  if (!v3)
  {
    sub_10004435C();
  }
}

id sub_100043430()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000C11B0;
  v7 = qword_1000C11B0;
  if (!qword_1000C11B0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100043578;
    v3[3] = &unk_1000A6430;
    v3[4] = &v4;
    sub_100043578(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000434F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100043578(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000C11B8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000436BC;
    v4[4] = &unk_1000A6468;
    v4[5] = v4;
    v5 = off_1000A6450;
    v6 = 0;
    qword_1000C11B8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000C11B8)
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
  result = objc_getClass("SPDeviceConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100044378();
  }

  qword_1000C11B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000436BC()
{
  result = _sl_dlopen();
  qword_1000C11B8 = result;
  return result;
}

id sub_100043730()
{
  if (qword_1000C11C8 != -1)
  {
    sub_1000443A0();
  }

  v1 = qword_1000C11C0;

  return v1;
}

void sub_100043774(const void *a1, const char *a2)
{
  v4 = tcc_access_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v36 = "notificationResponseHandler";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v5 = [NSValue valueWithPointer:a1];
  v6 = sub_100043730();
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = [v7 objectAtIndexedSubscript:0];

  v9 = sub_100043730();
  v10 = [v9 objectForKeyedSubscript:v5];
  v11 = [v10 objectAtIndexedSubscript:1];

  v12 = tcc_access_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v13)
    {
      v14 = [v11 service];
      v15 = [v14 name];
      v16 = [v11 subjectIdentity];
      v17 = [v16 identifier];
      *buf = 134218498;
      v36 = a2;
      v37 = 2114;
      v38 = v15;
      v39 = 2114;
      v40 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "CFUserNotification response: 0x%lx; service %{public}@ and subject %{public}@", buf, 0x20u);
    }

    v18 = sub_100043730();
    [v18 removeObjectForKey:v5];

    v19 = a2 & 3;
    v20 = 1;
    if (v19 > 1)
    {
      if (v19 != 3)
      {
        v20 = 2;
        goto LABEL_13;
      }
    }

    else if (v19)
    {
      v20 = 3;
LABEL_13:
      [v8 setAuthorizationReason:2];
    }

    v34 = v5;
    [v8 setAuthorizationValue:v20];
    [v8 setDatabaseAction:1];
    v21 = [v11 server];
    v22 = [v21 updateAuthorizationRecordFromContext:v11 forResult:v8 syncedUpdate:0];

    if ((v22 & 1) == 0)
    {
      v23 = [v11 service];
      v24 = [v11 identityDescription];
      [v8 denyAuthorizationWithErrorCode:4 format:{@"Failed to update database %@ from %@", v23, v24}];
    }

    CFRelease(a1);
    v25 = [v11 server];
    v26 = [v25 platform];
    v27 = [v11 service];
    v28 = [v11 subjectIdentity];
    [v26 sendAnalyticsForAction:4 service:v27 subjectIdentity:v28 indirectObjectIdentity:0 authValue:objc_msgSend(v8 includeV1AuthValue:"authorizationValue") v1AuthValue:objc_msgSend(v8 desiredAuth:"v1AuthorizationUpgrade") != 0 domainReason:objc_msgSend(v8 promptType:"v1AuthorizationValue") macBuddyStatus:{objc_msgSend(v11, "desiredAuth"), 0, objc_msgSend(v8, "promptType"), 0}];

    v12 = tcc_access_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v29 = [v11 messageIdentifier];
      v30 = [v8 authorizationValue];
      v31 = [v8 authorizationReason];
      v32 = [v8 authorizationVersion];
      v33 = [v8 error];
      *buf = 138544386;
      v36 = v29;
      v37 = 2048;
      v38 = v30;
      v39 = 2048;
      v40 = v31;
      v41 = 2048;
      v42 = v32;
      v43 = 2114;
      v44 = v33;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "REMINDER_RESULT: msgID=%{public}@, authValue=%llu, authReason=%llu, authVersion=%llu, error=%{public}@,", buf, 0x34u);
    }

    v5 = v34;
    goto LABEL_19;
  }

  if (v13)
  {
    *buf = 138412290;
    v36 = a1;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Couldn't find result for notification %@", buf, 0xCu);
  }

LABEL_19:
}

void sub_100043C14(uint64_t a1)
{
  v5 = +[TCCDPlatform currentPlatform];
  v2 = [*(a1 + 32) attributionChain];
  v3 = [v2 accessingProcess];
  v4 = [*(a1 + 32) service];
  [v5 runBacktraceToolOnProcess:v3 forService:v4];
}

void sub_100043CB4(id a1)
{
  qword_1000C11C0 = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

void sub_100043E80(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[TCCDRequestContext(AsynchronousNotification) presentAsynchronousDenialNotificationWithMessage:buttonTitle:]_block_invoke";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: failed to add user notification: %{public}@", &v2, 0x16u);
}

void sub_100043F0C(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 name];
  v6 = [a2 identityDescription];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to construct localized notification string for service %{public}@ and subject %{public}@", &v7, 0x16u);
}

void sub_100043FE4(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 integerValue];
  v6 = [a2 subjectIdentity];
  v7 = [v6 displayName];
  v8 = [a2 subjectIdentity];
  v9 = [v8 pluginBundleIdentifier];
  v10 = 134218498;
  v11 = v5;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v9;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "WK1 showUserNotification %ld for app: %@, extensionID: %@", &v10, 0x20u);
}

void sub_1000440E4(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 integerValue];
  v6 = [a2 subjectIdentity];
  v7 = [v6 displayName];
  v8 = 134218242;
  v9 = v5;
  v10 = 2112;
  v11 = v7;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "WK2 showUserNotification %ld for display name: %@", &v8, 0x16u);
}

void sub_10004421C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "notification_dictionary: %@", &v2, 0xCu);
}

_DWORD *sub_100044868(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) & 0xFFFFFFFE) == 2)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_100007540;
    v22 = sub_1000075A0;
    v23 = 0;
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100044B78;
    block[3] = &unk_1000A5608;
    block[4] = v3;
    block[5] = &v18;
    dispatch_sync(v4, block);
    v5 = v19[5];
    v16 = 0;
    v6 = [NSPropertyListSerialization dataWithPropertyList:v5 format:200 options:0 error:&v16];
    v7 = v16;
    if (v7)
    {
      v8 = [*(a1 + 32) logHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100046394();
      }
    }

    else if ([v6 length] >> 32)
    {
      v8 = [*(a1 + 32) logHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100041104();
      }
    }

    else
    {
      v10 = [v6 length];
      v11 = malloc_type_calloc(1uLL, v10 + 200, 0x1000040BEF03554uLL);
      v9 = v11;
      if (v11)
      {
        *v11 = 1;
        v11[1] = v10;
        __strlcpy_chk();
        v12 = v6;
        memcpy(v9 + 50, [v6 bytes], v10);
        v8 = [*(a1 + 32) logHandle];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v25 = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "AdhocSignatureCache dump of %u bytes", buf, 8u);
        }

        goto LABEL_15;
      }

      v8 = [*(a1 + 32) logHandle];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = __error();
        v14 = strerror(*v13);
        sub_100046404(v14, buf, v8);
      }
    }

    v9 = 0;
LABEL_15:

    _Block_object_dispose(&v18, 8);
    return v9;
  }

  return 0;
}

void sub_100044B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100044B78(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) stateDump];

  return _objc_release_x1();
}

void sub_100045620(uint64_t a1)
{
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (!v3)
  {
LABEL_27:

    return;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v38;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v38 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(*(&v37 + 1) + 8 * i)];
      v9 = [v8 objectForKeyedSubscript:@"Size"];
      v5 = &v5[[v9 unsignedIntegerValue]];
    }

    v4 = [v2 countByEnumeratingWithState:&v37 objects:v46 count:16];
  }

  while (v4);

  v10 = *(a1 + 32);
  if (v5 > v10[3])
  {
    v11 = [v10 logHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(*(a1 + 32) + 24);
      *buf = 134218240;
      v43 = v5;
      v44 = 2048;
      v45 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Cache size exceeds capacity, evicting lru items: cacheSize=%lu _capacity=%lu", buf, 0x16u);
    }

    [*(*(a1 + 32) + 8) keysSortedByValueUsingComparator:&stru_1000A64C8];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v2 = v36 = 0u;
    v30 = [v2 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v30)
    {
      v29 = *v34;
      *&v13 = 138543618;
      v28 = v13;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v34 != v29)
          {
            objc_enumerationMutation(v2);
          }

          v15 = *(*(&v33 + 1) + 8 * j);
          v31 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{v15, v28}];
          v16 = [v31 objectForKeyedSubscript:@"UUID"];
          v17 = *(*(a1 + 32) + 32);
          v18 = [v16 UUIDString];
          v19 = [v17 stringByAppendingPathComponent:v18];

          v20 = *(*(a1 + 32) + 48);
          v32 = 0;
          v21 = [v20 removeItemAtPath:v19 error:&v32];
          v22 = v32;
          v23 = [*(a1 + 32) logHandle];
          v24 = v23;
          if (v21)
          {
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = v28;
              v43 = v15;
              v44 = 2114;
              v45 = v19;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Evicted cached signature: key=%{public}@, path=%{public}@", buf, 0x16u);
            }

            [*(*(a1 + 32) + 8) removeObjectForKey:v15];
            [*(*(a1 + 32) + 16) removeObjectForKey:v16];
            v25 = v31;
            v26 = [v31 objectForKeyedSubscript:@"Size"];
            v5 -= [v26 unsignedIntegerValue];
            v27 = *(*(a1 + 32) + 24);

            if (v5 < v27)
            {

              goto LABEL_26;
            }
          }

          else
          {
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = v28;
              v43 = v19;
              v44 = 2114;
              v45 = v22;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error removing item %{public}@: %{public}@", buf, 0x16u);
            }

            v25 = v31;
          }
        }

        v30 = [v2 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v30);
    }

LABEL_26:

    [*(a1 + 32) saveKeysToDirectory];
    goto LABEL_27;
  }
}

int64_t sub_100045A58(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 objectForKey:@"LastUsed"];
  v6 = [v4 objectForKey:@"LastUsed"];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_100045BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100045C14(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"UUID"];
    v5 = [*(*(a1 + 32) + 16) objectForKey:v4];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(a1 + 32);
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v9 = [v8 logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_100046A98();
      }
    }

    else
    {
      v10 = [v8 loadSignatureWithUUID:v4];
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      if (*(*(*(a1 + 48) + 8) + 40))
      {
        v13 = [*(a1 + 32) logHandle];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          sub_100046B00();
        }

        [*(*(a1 + 32) + 16) setObject:*(*(*(a1 + 48) + 8) + 40) forKey:v4];
      }
    }

    v14 = *(a1 + 32);
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v15 = v14[7];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100045E48;
      v19[3] = &unk_1000A50C0;
      v16 = v3;
      v17 = *(a1 + 32);
      v20 = v16;
      v21 = v17;
      dispatch_async(v15, v19);
      v18 = v20;
    }

    else
    {
      v18 = [v14 logHandle];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100046B68();
      }
    }
  }

  else
  {
    v4 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100046BD8();
    }
  }
}

void sub_100045E48(uint64_t a1)
{
  v2 = +[NSDate date];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"LastUsed"];

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"UsedCount"];
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 integerValue] + 1);
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"UsedCount"];

  [*(a1 + 40) saveKeysToDirectory];
}

void sub_100045FEC(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100046C40();
    }
  }

  else
  {
    v5 = +[NSUUID UUID];
    v6 = +[NSDate date];
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) length]);
    v15[0] = @"UUID";
    v15[1] = @"Created";
    v16[0] = v5;
    v16[1] = v6;
    v15[2] = @"LastUsed";
    v15[3] = @"UsedCount";
    v16[2] = v6;
    v16[3] = &off_1000ADF70;
    v15[4] = @"Size";
    v16[4] = v7;
    v4 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5];
    v8 = [NSMutableDictionary dictionaryWithDictionary:v4];
    [*(*(a1 + 32) + 8) setObject:v8 forKeyedSubscript:*(a1 + 40)];

    [*(*(a1 + 32) + 16) setObject:*(a1 + 48) forKey:v5 cost:{objc_msgSend(v7, "unsignedIntegerValue")}];
    [*(a1 + 32) saveKeysToDirectory];
    [*(a1 + 32) saveSignature:*(a1 + 48) withUUID:v5];
    v9 = [*(a1 + 32) logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *v2;
      v11 = 138543618;
      v12 = v10;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Added signature: key=%{public}@ UUID=%{public}@", &v11, 0x16u);
    }

    [*(a1 + 32) maintainSize];
  }
}

void sub_1000462B4(id a1)
{
  qword_1000C11D8 = os_log_create("com.apple.TCC", "AdhocSignatureCache");

  _objc_release_x1();
}

void sub_1000462F8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10004632C()
{
  sub_1000091C8(__stack_chk_guard);
  sub_100009168();
  sub_100010588(&_mh_execute_header, v0, v1, "Error creating state directory %{public}@: %{public}@");
}

void sub_100046394()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100046404(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error allocating memory for os_state_data_t: %s", buf, 0xCu);
}

void sub_10004644C()
{
  sub_1000091C8(__stack_chk_guard);
  sub_100009168();
  sub_100010588(&_mh_execute_header, v0, v1, "Error reading archived keys from %{public}@: %{public}@");
}

void sub_1000464B4()
{
  sub_1000091C8(__stack_chk_guard);
  sub_100009168();
  sub_100010588(&_mh_execute_header, v0, v1, "Error unarchiving keys from %{public}@: %{public}@");
}

void sub_10004651C()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004658C()
{
  sub_1000091C8(__stack_chk_guard);
  sub_100009168();
  sub_100010588(&_mh_execute_header, v0, v1, "Error writing archived keys to %{public}@: %{public}@");
}

void sub_100046750(void *a1, NSObject *a2)
{
  [a1 fileSystemRepresentation];
  v3 = __error();
  strerror(*v3);
  sub_100009204();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to stat path: path=%{public}s error=%{public}s", v4, 0x16u);
}

void sub_100046814(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  strerror(a3);
  sub_100009204();
  sub_1000462F8(&_mh_execute_header, v5, v6, "Failed to get volume attributes: volumePath=%{public}s error=%{public}s", v7, v8, v9, v10, v11);
}

void sub_100046978(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  strerror(a3);
  sub_100009204();
  sub_1000462F8(&_mh_execute_header, v5, v6, "Failed to get path attributes: path=%{public}s error=%{public}s", v7, v8, v9, v10, v11);
}

void sub_100046A0C(void *a1, NSObject *a2)
{
  [a1 fileSystemRepresentation];
  sub_100008F78();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to collect mount relative tracking info: path=%{public}s", v3, 0xCu);
}

void sub_100046A98()
{
  sub_1000091C8(__stack_chk_guard);
  sub_100008FD8();
  sub_100033FBC(&_mh_execute_header, v0, v1, "Got signature from in-memory cache: key=%{public}@", v2, v3, v4, v5, v6);
}

void sub_100046B00()
{
  sub_1000091C8(__stack_chk_guard);
  sub_100008FD8();
  sub_100033FBC(&_mh_execute_header, v0, v1, "Got signature from on-disk cache: key=%{public}@", v2, v3, v4, v5, v6);
}

void sub_100046B68()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100046BD8()
{
  sub_1000091C8(__stack_chk_guard);
  sub_100008FD8();
  sub_100033FBC(&_mh_execute_header, v0, v1, "No cache entry found: key=%{public}@", v2, v3, v4, v5, v6);
}

void sub_100046C40()
{
  sub_1000091C8(__stack_chk_guard);
  sub_100008FD8();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100046D50(uint64_t a1)
{
  v1 = objc_opt_new();
  v2 = [[TCCDService alloc] initWithName:@"kTCCServiceAll" availability:&off_1000AF5F0];
  [v1 addObject:v2];
  v3 = qword_1000C11F0;
  qword_1000C11F0 = v2;
  v4 = v2;

  v5 = [TCCDService alloc];
  v6 = [(TCCDService *)v5 initWithName:@"kTCCServiceAddressBook" availability:&off_1000AF618];
  [(TCCDService *)v6 setUsageDescriptionKeyName:@"NSContactsUsageDescription"];
  [(TCCDService *)v6 setMacos_pardonMissingUsage:1];
  [(TCCDService *)v6 setShouldIssueSandboxExtension:1];
  [(TCCDService *)v6 setMacos_helpAnchor:@"mh40711"];
  [(TCCDService *)v6 setMacos_hardenedRuntimeEntitlementName:@"com.apple.security.personal-information.addressbook"];
  [(TCCDService *)v6 setIos_allowRegionalPrompt:1];
  if (_os_feature_enabled_impl())
  {
    v262[0] = @"TCCDAlertConfig_SBRemoteAlertServiceName";
    v262[1] = @"TCCDAlertConfig_SBRemoteAlertViewControllerClassName";
    v263[0] = @"com.apple.ContactsUI.LimitedAccessPromptView";
    v263[1] = @"ContactsLimitedAccessPromptSceneDelegate";
    v7 = [NSDictionary dictionaryWithObjects:v263 forKeys:v262 count:2];
    v8 = [[TCCDAlert alloc] initWithCondition:2 platformName:@"TCCDPlatformIOS" service:v6 displayPolicy:0 persistentStateType:-1 displayCountlimit:0 configuration:v7];
    v9 = [TCCDAlertManager alloc];
    v261 = v8;
    v10 = [NSArray arrayWithObjects:&v261 count:1];
    v11 = [(TCCDAlertManager *)v9 initWithAlerts:v10];
    [(TCCDService *)v6 setAlertManager:v11];

    [(TCCDService *)v6 setUsesTwoStagePrompting:1];
    v12 = [(TCCDService *)v6 name];
    v13 = [TCCDService requestLimitedAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v12];
    [(TCCDService *)v6 setLimitedAuthorizationButtonTitleLocalizationKey:v13];

    [(TCCDService *)v6 setAuthorizationRightsMask:79];
    [(TCCDService *)v6 setSupportsStagedPrompting:1];
    [(TCCDService *)v6 setAuthorizationVersionNumber:2];
    [(TCCDService *)v6 setDefaultDesiredAuth:6];
    [(TCCDService *)v6 setSettingsRequestFullTitleTextLocalizationKey:@"REQUEST_ACCESS_SETTINGS_FULL_kTCCServiceAddressBook"];
    [(TCCDService *)v6 setCancelButtontitleLocalizationKey:@"REQUEST_ACCESS_DONT_ALLOW_kTCCServiceAddressBook_DONT_ALLOW"];
    [(TCCDService *)v6 _makePromptAuthorizationChoiceBlock:&stru_1000A6570];
    [(TCCDService *)v6 _makePromptButtonLocalizationKeyBlock:&stru_1000A65B0];
  }

  [v1 addObject:v6];
  v14 = [[TCCDService alloc] initWithName:@"kTCCServiceContactsLimited" availability:&off_1000AF640];

  [(TCCDService *)v14 setUsageDescriptionKeyName:@"NSContactsUsageDescription"];
  [(TCCDService *)v14 setMacos_pardonMissingUsage:1];
  [(TCCDService *)v14 setShouldIssueSandboxExtension:1];
  [(TCCDService *)v14 setMacos_helpAnchor:@"mh40711"];
  [(TCCDService *)v14 setMacos_hardenedRuntimeEntitlementName:@"com.apple.security.personal-information.addressbook"];
  [(TCCDService *)v14 setShouldTreatAsDeprecated:1];
  [v1 addObject:v14];
  v15 = [[TCCDService alloc] initWithName:@"kTCCServiceContactsFull" availability:&off_1000AF668];

  [(TCCDService *)v15 setUsageDescriptionKeyName:@"NSContactsUsageDescription"];
  [(TCCDService *)v15 setMacos_pardonMissingUsage:1];
  [(TCCDService *)v15 setShouldIssueSandboxExtension:1];
  [(TCCDService *)v15 setMacos_helpAnchor:@"mh40711"];
  [(TCCDService *)v15 setMacos_hardenedRuntimeEntitlementName:@"com.apple.security.personal-information.addressbook"];
  [(TCCDService *)v15 setShouldTreatAsDeprecated:1];
  [v1 addObject:v15];
  v16 = [[TCCDService alloc] initWithName:@"kTCCServiceCalendar" availability:&off_1000AF690];

  [(TCCDService *)v16 setUsageDescriptionKeyName:@"NSCalendarsUsageDescription"];
  [(TCCDService *)v16 setMacos_pardonMissingUsage:1];
  [(TCCDService *)v16 setMacos_helpAnchor:@"mh43609"];
  [(TCCDService *)v16 setMacos_hardenedRuntimeEntitlementName:@"com.apple.security.personal-information.calendars"];
  [(TCCDService *)v16 setAddModifyAddedAuthorizationButtonTitleLocalizationKey:@"REQUEST_ACCESS_ADD_MODIFY_ADDED"];
  [(TCCDService *)v16 setRequestFullTitleTextLocalizationKey:@"REQUEST_ACCESS_SERVICE_kTCCServiceCalendar_FULL"];
  [(TCCDService *)v16 setRequestAddTitleTextLocalizationKey:@"REQUEST_ACCESS_SERVICE_kTCCServiceCalendar_ADD"];
  [(TCCDService *)v16 setRequestUpgradeTitleTextLocalizationKey:@"REQUEST_ACCESS_UPGRADE_kTCCServiceCalendar"];
  [(TCCDService *)v16 setSettingsRequestFullTitleTextLocalizationKey:@"REQUEST_ACCESS_SETTINGS_FULL_kTCCServiceCalendar"];
  [(TCCDService *)v16 setFullAccessUsageDescriptionKeyName:@"NSCalendarsFullAccessUsageDescription"];
  [(TCCDService *)v16 setAddAccessUsageDescriptionKeyName:@"NSCalendarsWriteOnlyAccessUsageDescription"];
  [(TCCDService *)v16 setAuthorizationRightsMask:23];
  [(TCCDService *)v16 setSupportsStagedPrompting:1];
  [(TCCDService *)v16 setAuthorizationVersionNumber:2];
  [(TCCDService *)v16 setDefaultDesiredAuth:4];
  [(TCCDService *)v16 _makePromptAuthorizationChoiceBlock:&stru_1000A65D0];
  [(TCCDService *)v16 _makePromptButtonLocalizationKeyBlock:&stru_1000A65F0];
  v259 = &off_1000AE018;
  v260 = @"com.apple.EventKitTCCUI.EventKitTCCFullAccessNotificationUIExtension";
  v17 = [NSDictionary dictionaryWithObjects:&v260 forKeys:&v259 count:1];
  [(TCCDService *)v16 setAuthSpecificNotificationExtensionBundleIdentifier:v17];

  [(TCCDService *)v16 _makeAuthTranslationBlock:&stru_1000A6630];
  v245[0] = _NSConcreteStackBlock;
  v245[1] = 3221225472;
  v245[2] = sub_10004A2F8;
  v245[3] = &unk_1000A6658;
  v246 = v16;
  v18 = v16;
  v232 = objc_retainBlock(v245);
  [(TCCDService *)v18 _makeAnalyticsPopulationBlock:?];
  [v1 addObject:v18];
  v19 = [TCCDService alloc];

  v20 = [(TCCDService *)v19 initWithName:@"kTCCServiceReminders" availability:&off_1000AF6B8];
  [(TCCDService *)v20 setUsageDescriptionKeyName:@"NSRemindersUsageDescription"];
  [(TCCDService *)v20 setMacos_pardonMissingUsage:1];
  [(TCCDService *)v20 setMacos_helpAnchor:@"mchlcfc41e54"];
  [(TCCDService *)v20 setFullAccessUsageDescriptionKeyName:@"NSRemindersFullAccessUsageDescription"];
  [v1 addObject:v20];
  v243 = 0u;
  v244 = 0u;
  v241 = 0u;
  v242 = 0u;
  v21 = [&off_1000B0268 countByEnumeratingWithState:&v241 objects:v258 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v242;
    do
    {
      v24 = 0;
      v25 = v20;
      do
      {
        if (*v242 != v23)
        {
          objc_enumerationMutation(&off_1000B0268);
        }

        v20 = [[TCCDService alloc] initWithName:*(*(&v241 + 1) + 8 * v24) availability:&off_1000AF6E0];

        [(TCCDService *)v20 setIsRevocable:1];
        [(TCCDService *)v20 setAlertStyle:1];
        [(TCCDService *)v20 setShouldTreatAsDeprecated:1];
        [v1 addObject:v20];
        v24 = v24 + 1;
        v25 = v20;
      }

      while (v22 != v24);
      v22 = [&off_1000B0268 countByEnumeratingWithState:&v241 objects:v258 count:16];
    }

    while (v22);
  }

  v239 = 0u;
  v240 = 0u;
  v237 = 0u;
  v238 = 0u;
  v26 = [&off_1000B0280 countByEnumeratingWithState:&v237 objects:v257 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v238;
    do
    {
      v29 = 0;
      v30 = v20;
      do
      {
        if (*v238 != v28)
        {
          objc_enumerationMutation(&off_1000B0280);
        }

        v20 = [[TCCDService alloc] initWithName:*(*(&v237 + 1) + 8 * v29) availability:&off_1000AF708];

        [(TCCDService *)v20 setIsRevocable:1];
        [(TCCDService *)v20 setAlertStyle:1];
        [(TCCDService *)v20 setIsAccessAllowedByDefault:1];
        [(TCCDService *)v20 setMdm_macos_allowedInPayloadDefition:0];
        [v1 addObject:v20];
        v29 = v29 + 1;
        v30 = v20;
      }

      while (v27 != v29);
      v27 = [&off_1000B0280 countByEnumeratingWithState:&v237 objects:v257 count:16];
    }

    while (v27);
  }

  v31 = [[TCCDService alloc] initWithName:@"kTCCServicePhotos" availability:&off_1000AF730];

  [(TCCDService *)v31 setUsageDescriptionKeyName:@"NSPhotoLibraryUsageDescription"];
  [(TCCDService *)v31 setShouldIssueSandboxExtension:1];
  [(TCCDService *)v31 setMacos_hardenedRuntimeEntitlementName:@"com.apple.security.personal-information.photos-library"];
  [(TCCDService *)v31 setAuthorizationRightsMask:15];
  [(TCCDService *)v31 setUpgradeV1AuthorizationValue:1];
  [(TCCDService *)v31 setAuthorizationVersionNumber:2];
  [(TCCDService *)v31 setDowngradeAuthRight:3];
  v32 = [(TCCDService *)v31 name];
  v33 = [TCCDService requestAllowAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v32];
  [(TCCDService *)v31 setAllowAuthorizationButtonTitleLocalizationKey:v33];

  v34 = [(TCCDService *)v31 allowAuthorizationButtonTitleLocalizationKey];

  if (!v34)
  {
    sub_10004CDB8();
  }

  v35 = [(TCCDService *)v31 name];
  v36 = [TCCDService requestDenyAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v35];
  [(TCCDService *)v31 setDenyAuthorizationButtonTitleLocalizationKey:v36];

  v37 = [(TCCDService *)v31 denyAuthorizationButtonTitleLocalizationKey];

  if (!v37)
  {
    sub_10004CDB8();
  }

  v38 = [(TCCDService *)v31 name];
  v39 = [TCCDService requestLimitedAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v38];
  [(TCCDService *)v31 setLimitedAuthorizationButtonTitleLocalizationKey:v39];

  v40 = [(TCCDService *)v31 limitedAuthorizationButtonTitleLocalizationKey];

  if (!v40)
  {
    sub_10004CDB8();
  }

  [(TCCDService *)v31 setMacos_helpAnchor:@"mchl325bd573"];
  v41 = [TCCDAlert alloc];
  v255[0] = @"TCCDAlertConfig_SBRemoteAlertServiceName";
  v255[1] = @"TCCDAlertConfig_SBRemoteAlertViewControllerClassName";
  v256[0] = @"com.apple.Photos.PhotosUIService";
  v256[1] = @"PhotosUIServiceVirtualLibraryEducationViewController";
  v42 = [NSDictionary dictionaryWithObjects:v256 forKeys:v255 count:2];
  v43 = [(TCCDAlert *)v41 initWithCondition:1 platformName:@"TCCDPlatformIOS" service:v31 displayPolicy:2 persistentStateType:1 displayCountlimit:0 configuration:v42];

  v44 = [TCCDAlertManager alloc];
  v254 = v43;
  v45 = [NSArray arrayWithObjects:&v254 count:1];
  v46 = [(TCCDAlertManager *)v44 initWithAlerts:v45];
  [(TCCDService *)v31 setAlertManager:v46];

  [(TCCDService *)v31 setRequestFullTitleTextLocalizationKey:@"REQUEST_ACCESS_SERVICE_kTCCServicePhotos_FULL"];
  [(TCCDService *)v31 setRequestLimitedTitleTextLocalizationKey:@"REQUEST_ACCESS_SERVICE_kTCCServicePhotos_LIMITED"];
  [(TCCDService *)v31 setSettingsRequestFullTitleTextLocalizationKey:@"REQUEST_ACCESS_SETTINGS_FULL_kTCCServicePhotos"];
  [(TCCDService *)v31 setRequestUpgradeTitleTextLocalizationKey:@"REQUEST_ACCESS_UPGRADE_kTCCServicePhotos"];
  [(TCCDService *)v31 setSupportsStagedPrompting:1];
  [(TCCDService *)v31 setAddModifyAddedAuthorizationButtonTitleLocalizationKey:@"REQUEST_ACCESS_ADD_MODIFY_ADDED"];
  [(TCCDService *)v31 _makePromptAuthorizationChoiceBlock:&stru_1000A6678];
  [(TCCDService *)v31 _makePromptButtonLocalizationKeyBlock:&stru_1000A6698];
  v47 = [(TCCDService *)v31 name];
  v48 = [TCCDService reminderTitleTextLocalizationKeyNameForServiceName:v47];
  [(TCCDService *)v31 setReminderTitleTextLocalizationKey:v48];

  v49 = [(TCCDService *)v31 name];
  v50 = [TCCDService reminderRequestAllowAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v49];
  [(TCCDService *)v31 setReminderAllowButtonTitleTextLocalizationKey:v50];

  v51 = [(TCCDService *)v31 name];
  v52 = [TCCDService reminderRequestLimitedAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v51];
  [(TCCDService *)v31 setReminderLimitedButtonTitleTextLocalizationKey:v52];

  [v1 addObject:v31];
  v53 = [[TCCDService alloc] initWithName:@"kTCCServicePhotosAdd" availability:&off_1000AF758];

  [(TCCDService *)v53 setUsageDescriptionKeyName:@"NSPhotoLibraryAddUsageDescription"];
  [(TCCDService *)v53 setSecondaryUsageDescriptionKeyName:@"NSPhotoLibraryUsageDescription"];
  [(TCCDService *)v53 setIOS_minimumSDKVersionNumber:&off_1000AE030];
  [(TCCDService *)v53 setShouldIssueSandboxExtension:1];
  [(TCCDService *)v53 setMacos_hardenedRuntimeEntitlementName:@"com.apple.security.personal-information.photos-library"];
  [(TCCDService *)v53 setMdm_macos_allowedInPayloadDefition:0];
  [v1 addObject:v53];
  v54 = [[TCCDService alloc] initWithName:@"kTCCServiceCamera" availability:&off_1000AF780];

  [(TCCDService *)v54 setUsageDescriptionKeyName:@"NSCameraUsageDescription"];
  [(TCCDService *)v54 setSandboxOperationForDelegation:@"device-camera"];
  [(TCCDService *)v54 setMacos_hardenedRuntimeEntitlementName:@"com.apple.security.device.camera"];
  [(TCCDService *)v54 setMdm_isAuthorizationDenyOnly:1];
  [(TCCDService *)v54 setMacos_helpAnchor:@"mchlf88b936b"];
  [(TCCDService *)v54 setIos_allowPromptFromAppClip:1];
  [(TCCDService *)v54 setShouldIssueSandboxExtension:1];
  [(TCCDService *)v54 setIos_useGenericSandboxExtension:1];
  [(TCCDService *)v54 setAllowedForAvocadoWidget:0];
  [v1 addObject:v54];
  v55 = [[TCCDService alloc] initWithName:@"kTCCServiceMicrophone" availability:&off_1000AF7A8];

  [(TCCDService *)v55 setUsageDescriptionKeyName:@"NSMicrophoneUsageDescription"];
  [(TCCDService *)v55 setSandboxOperationForDelegation:@"device-microphone"];
  [(TCCDService *)v55 setMacos_hardenedRuntimeEntitlementName:@"com.apple.security.device.audio-input"];
  [(TCCDService *)v55 setMdm_isAuthorizationDenyOnly:1];
  [(TCCDService *)v55 setMacos_helpAnchor:@"mchl7fa8e3cc"];
  [(TCCDService *)v55 setIos_allowPromptFromAppClip:1];
  [(TCCDService *)v55 setShouldIssueSandboxExtension:1];
  [(TCCDService *)v55 setIos_useGenericSandboxExtension:1];
  [(TCCDService *)v55 setAllowedForAvocadoWidget:0];
  [v1 addObject:v55];
  v56 = [[TCCDService alloc] initWithName:@"kTCCServiceWillow" availability:&off_1000AF7D0];

  [(TCCDService *)v56 setUsageDescriptionKeyName:@"NSHomeKitUsageDescription"];
  [(TCCDService *)v56 setExternalName:@"HomeKit"];
  [(TCCDService *)v56 setMdm_macos_allowedInPayloadDefition:0];
  [v1 addObject:v56];
  v57 = [[TCCDService alloc] initWithName:@"kTCCServiceMediaLibrary" availability:&off_1000AF7F8];

  [(TCCDService *)v57 setUsageDescriptionKeyName:@"NSAppleMusicUsageDescription"];
  [(TCCDService *)v57 setShouldIssueSandboxExtension:1];
  [(TCCDService *)v57 setMacos_minimumSDKVersionNumber:&off_1000AE060];
  [(TCCDService *)v57 setIos_issueBothSandboxExtension:1];
  v58 = [NSNumber numberWithUnsignedLongLong:59616000];
  [(TCCDService *)v57 setExpirySeconds:v58];

  [(TCCDService *)v57 setExpireOnlyAllowedEntries:1];
  [(TCCDService *)v57 setSaveExpiredEntries:1];
  v59 = +[TCCDPlatform currentPlatform];
  v60 = [v59 configurationDictionary];
  v61 = [v60 objectForKeyedSubscript:@"expiration.kTCCServiceMediaLibrary"];

  if (v61)
  {
    if ([v61 integerValue] >= 1)
    {
      v62 = [v61 integerValue];
      v63 = [(TCCDService *)v57 expirySeconds];
      v64 = [v63 integerValue];

      if (v62 < v64)
      {
        [(TCCDService *)v57 setExpirySeconds:v61];
        v65 = +[TCCDPlatform currentPlatform];
        v66 = [v65 server];
        v67 = [v66 logHandle];

        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v68 = [(TCCDService *)v57 name];
          *buf = 138543618;
          v251 = v68;
          v252 = 2114;
          v253 = v61;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "For %{public}@ set expirySeconds: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  [v1 addObject:v57];
  v69 = [[TCCDService alloc] initWithName:@"kTCCServiceSiri" availability:&off_1000AF820];

  [(TCCDService *)v69 setUsageDescriptionKeyName:@"NSSiriUsageDescription"];
  v70 = [(TCCDService *)v69 name];
  v71 = [TCCDService requestAdditionalTextLocalizationKeyNameForServiceName:v70];
  [(TCCDService *)v69 setRequestAdditionalTextLocalizationKey:v71];

  [(TCCDService *)v69 setIsRevocable:1];
  [(TCCDService *)v69 setMdm_macos_allowedInPayloadDefition:0];
  [v1 addObject:v69];
  v72 = [[TCCDService alloc] initWithName:@"kTCCServiceMotion" availability:&off_1000AF848];

  [(TCCDService *)v72 setUsageDescriptionKeyName:@"NSMotionUsageDescription"];
  [(TCCDService *)v72 setDisallowedOnPlatformSubtypeNameList:&off_1000B0298];
  [(TCCDService *)v72 setMdm_macos_allowedInPayloadDefition:0];
  [v1 addObject:v72];
  v73 = [[TCCDService alloc] initWithName:@"kTCCServiceSpeechRecognition" availability:&off_1000AF870];

  [(TCCDService *)v73 setUsageDescriptionKeyName:@"NSSpeechRecognitionUsageDescription"];
  v74 = [(TCCDService *)v73 name];
  v75 = [TCCDService requestAdditionalTextLocalizationKeyNameForServiceName:v74];
  [(TCCDService *)v73 setRequestAdditionalTextLocalizationKey:v75];

  [(TCCDService *)v73 setMacos_minimumSDKVersionNumber:&off_1000ADFD0];
  [v1 addObject:v73];
  v76 = [[TCCDService alloc] initWithName:@"kTCCServiceUserTracking" availability:&off_1000AF898];

  [(TCCDService *)v76 setUsageDescriptionKeyName:@"NSUserTrackingUsageDescription"];
  [(TCCDService *)v76 setMacos_minimumSDKVersionNumber:&off_1000AE078];
  [(TCCDService *)v76 setIOS_minimumSDKVersionNumber:&off_1000AE090];
  [(TCCDService *)v76 setWatchOS_minimumSDKVersionNumber:&off_1000AE0A8];
  [(TCCDService *)v76 setTvOS_minimumSDKVersionNumber:&off_1000AE090];
  v77 = [(TCCDService *)v76 name];
  v78 = [TCCDService requestAllowAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v77];
  [(TCCDService *)v76 setAllowAuthorizationButtonTitleLocalizationKey:v78];

  v79 = [(TCCDService *)v76 allowAuthorizationButtonTitleLocalizationKey];

  if (!v79)
  {
    sub_10004CDB8();
  }

  v80 = [(TCCDService *)v76 name];
  v81 = [TCCDService requestDenyAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v80];
  [(TCCDService *)v76 setDenyAuthorizationButtonTitleLocalizationKey:v81];

  v82 = [(TCCDService *)v76 denyAuthorizationButtonTitleLocalizationKey];

  if (!v82)
  {
    sub_10004CDB8();
  }

  [v1 addObject:v76];
  v83 = [[TCCDService alloc] initWithName:@"kTCCServiceBluetoothAlways" availability:&off_1000AF8C0];

  [(TCCDService *)v83 setUsageDescriptionKeyName:@"NSBluetoothAlwaysUsageDescription"];
  [(TCCDService *)v83 setIOS_minimumSDKVersionNumber:&off_1000ADFE8];
  [(TCCDService *)v83 setWatchOS_minimumSDKVersionNumber:&off_1000AE000];
  [(TCCDService *)v83 setTvOS_minimumSDKVersionNumber:&off_1000ADFE8];
  [(TCCDService *)v83 setMacos_minimumSDKVersionNumber:&off_1000AE090];
  [(TCCDService *)v83 setShouldUseADefaultDescriptionString:1];
  [(TCCDService *)v83 setWatchos_affectedByASKConfiguration:1];
  [(TCCDService *)v83 setWatchos_ASKConfigurationServiceName:@"Bluetooth"];
  if (_os_feature_enabled_impl())
  {
    v84 = [(TCCDService *)v83 name];
    v85 = [TCCDService requestAdditionalTextExtensionLocalizationKeyNameForServiceName:v84];
    [(TCCDService *)v83 setRequestNotificationExtensionTextLocalizationKey:v85];

    v86 = *(a1 + 32);
    v87 = [(TCCDService *)v83 requestTitleTextLocalizationKey];
    v88 = [v86 localizationKeyNameWithFeatureFlagEnabled:v87];
    [(TCCDService *)v83 setRequestTitleTextLocalizationKey:v88];
  }

  [(TCCDService *)v83 setIos_allowPromptFromAppClip:1];
  [v1 addObject:v83];
  v89 = [[TCCDService alloc] initWithName:@"kTCCServiceWebKitIntelligentTrackingPrevention" availability:&off_1000AF8E8];

  [(TCCDService *)v89 setMacos_minimumSDKVersionNumber:&off_1000AE078];
  [(TCCDService *)v89 setIOS_minimumSDKVersionNumber:&off_1000AE090];
  [(TCCDService *)v89 setWatchOS_minimumSDKVersionNumber:&off_1000AE0A8];
  [(TCCDService *)v89 setTvOS_minimumSDKVersionNumber:&off_1000AE090];
  [(TCCDService *)v89 setIsRevocable:0];
  [(TCCDService *)v89 setAlertStyle:1];
  [(TCCDService *)v89 setIsAccessAllowedByDefault:1];
  [(TCCDService *)v89 setMdm_macos_allowedInPayloadDefition:1];
  [v1 addObject:v89];
  v90 = [[TCCDService alloc] initWithName:@"kTCCServicePrototype3Rights" availability:&off_1000AF910];

  [(TCCDService *)v90 setMacos_minimumSDKVersionNumber:&off_1000AE078];
  [(TCCDService *)v90 setIOS_minimumSDKVersionNumber:&off_1000AE090];
  [(TCCDService *)v90 setWatchOS_minimumSDKVersionNumber:&off_1000AE0A8];
  [(TCCDService *)v90 setTvOS_minimumSDKVersionNumber:&off_1000AE090];
  [(TCCDService *)v90 setMdm_macos_allowedInPayloadDefition:0];
  [v1 addObject:v90];
  v91 = [[TCCDService alloc] initWithName:@"kTCCServicePrototype4Rights" availability:&off_1000AF938];

  [(TCCDService *)v91 setMacos_minimumSDKVersionNumber:&off_1000AE078];
  [(TCCDService *)v91 setIOS_minimumSDKVersionNumber:&off_1000AE090];
  [(TCCDService *)v91 setWatchOS_minimumSDKVersionNumber:&off_1000AE0A8];
  [(TCCDService *)v91 setTvOS_minimumSDKVersionNumber:&off_1000AE090];
  [(TCCDService *)v91 setMdm_macos_allowedInPayloadDefition:0];
  [(TCCDService *)v91 setAuthorizationRightsMask:15];
  [(TCCDService *)v91 setUpgradeV1AuthorizationValue:1];
  [(TCCDService *)v91 setAuthorizationVersionNumber:2];
  v92 = [(TCCDService *)v91 name];
  v93 = [TCCDService requestLimitedAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v92];
  [(TCCDService *)v91 setLimitedAuthorizationButtonTitleLocalizationKey:v93];

  [v1 addObject:v91];
  v94 = [[TCCDService alloc] initWithName:@"kTCCServiceGameCenterFriends" availability:&off_1000AF960];

  [(TCCDService *)v94 setMacos_minimumSDKVersionNumber:&off_1000AE0C0];
  [(TCCDService *)v94 setIOS_minimumSDKVersionNumber:&off_1000AE0D8];
  [(TCCDService *)v94 setWatchOS_minimumSDKVersionNumber:&off_1000AE0F0];
  [(TCCDService *)v94 setTvOS_minimumSDKVersionNumber:&off_1000AE0D8];
  v95 = [(TCCDService *)v94 name];
  v96 = [TCCDService requestAllowAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v95];
  [(TCCDService *)v94 setAllowAuthorizationButtonTitleLocalizationKey:v96];

  v97 = [(TCCDService *)v94 allowAuthorizationButtonTitleLocalizationKey];

  if (!v97)
  {
    sub_10004CDB8();
  }

  v98 = [(TCCDService *)v94 name];
  v99 = [TCCDService requestDenyAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v98];
  [(TCCDService *)v94 setDenyAuthorizationButtonTitleLocalizationKey:v99];

  v100 = [(TCCDService *)v94 denyAuthorizationButtonTitleLocalizationKey];

  if (!v100)
  {
    sub_10004CDB8();
  }

  v231 = v61;
  [(TCCDService *)v94 setDisallowedOnPlatformSubtypeNameList:&off_1000B02B0];
  [(TCCDService *)v94 setUsageDescriptionKeyName:@"NSGKFriendListUsageDescription"];
  [v1 addObject:v94];
  v101 = [[TCCDService alloc] initWithName:@"kTCCServiceVoiceBanking" availability:&off_1000AF988];

  v102 = [(TCCDService *)v101 name];
  v103 = [TCCDService requestAdditionalTextLocalizationKeyNameForServiceName:v102];
  [(TCCDService *)v101 setRequestAdditionalTextLocalizationKey:v103];

  [v1 addObject:v101];
  v104 = [[TCCDService alloc] initWithName:@"kTCCServiceBluetoothPeripheral" availability:&off_1000AF9B0];

  [(TCCDService *)v104 setUsageDescriptionKeyName:@"NSBluetoothPeripheralUsageDescription"];
  [v1 addObject:v104];
  v105 = [[TCCDService alloc] initWithName:@"kTCCServiceBluetoothWhileInUse" availability:&off_1000AF9D8];

  [(TCCDService *)v105 setUsageDescriptionKeyName:@"NSBluetoothWhileInUseUsageDescription"];
  [(TCCDService *)v105 setIOS_minimumSDKVersionNumber:&off_1000ADFE8];
  [(TCCDService *)v105 setWatchOS_minimumSDKVersionNumber:&off_1000AE000];
  [(TCCDService *)v105 setTvOS_minimumSDKVersionNumber:&off_1000ADFE8];
  [(TCCDService *)v105 setShouldTreatAsDeprecated:1];
  [v1 addObject:v105];
  v106 = [[TCCDService alloc] initWithName:@"kTCCServiceKeyboardNetwork" availability:&off_1000AFA00];

  [(TCCDService *)v106 setAlertStyle:1];
  [(TCCDService *)v106 setShouldIssueSandboxExtension:1];
  [v1 addObject:v106];
  v107 = [[TCCDService alloc] initWithName:@"kTCCServiceMSO" availability:&off_1000AFA28];

  [(TCCDService *)v107 setIsRevocable:1];
  [(TCCDService *)v107 setAlertStyle:1];
  [v1 addObject:v107];
  v108 = [[TCCDService alloc] initWithName:@"kTCCServiceCalls" availability:&off_1000AFA50];

  [(TCCDService *)v108 setUsageDescriptionKeyName:@"NSVoIPUsageDescription"];
  [(TCCDService *)v108 setIOS_minimumSDKVersionNumber:&off_1000AE120];
  [(TCCDService *)v108 setIsRevocable:1];
  [v1 addObject:v108];
  v109 = [[TCCDService alloc] initWithName:@"kTCCServiceFaceID" availability:&off_1000AFA78];

  [(TCCDService *)v109 setUsageDescriptionKeyName:@"NSFaceIDUsageDescription"];
  [(TCCDService *)v109 setShouldUseADefaultDescriptionString:1];
  [(TCCDService *)v109 setIOS_minimumSDKVersionNumber:&off_1000AE0C0];
  [v1 addObject:v109];
  v248[0] = @"kTCCServiceSensorKitMotion";
  v248[1] = @"kTCCServiceSensorKitWatchMotion";
  v249[0] = &off_1000AFAA0;
  v249[1] = &off_1000AFAA0;
  v248[2] = @"kTCCServiceSensorKitLocationMetrics";
  v248[3] = @"kTCCServiceSensorKitAmbientLightSensor";
  v249[2] = &off_1000AFAA0;
  v249[3] = &off_1000AFAA0;
  v248[4] = @"kTCCServiceSensorKitWatchAmbientLightSensor";
  v248[5] = @"kTCCServiceSensorKitWatchHeartRate";
  v249[4] = &off_1000AFAA0;
  v249[5] = &off_1000AFAA0;
  v248[6] = @"kTCCServiceSensorKitWatchOnWristState";
  v248[7] = @"kTCCServiceSensorKitKeyboardMetrics";
  v249[6] = &off_1000AFAA0;
  v249[7] = &off_1000AFAA0;
  v248[8] = @"kTCCServiceSensorKitWatchPedometer";
  v248[9] = @"kTCCServiceSensorKitPedometer";
  v249[8] = &off_1000AFAC8;
  v249[9] = &off_1000AFAC8;
  v248[10] = @"kTCCServiceSensorKitWatchFallStats";
  v248[11] = @"kTCCServiceSensorKitWatchForegroundAppCategory";
  v249[10] = &off_1000AFAC8;
  v249[11] = &off_1000AFAC8;
  v248[12] = @"kTCCServiceSensorKitForegroundAppCategory";
  v248[13] = @"kTCCServiceSensorKitWatchSpeechMetrics";
  v249[12] = &off_1000AFAC8;
  v249[13] = &off_1000AFAC8;
  v248[14] = @"kTCCServiceSensorKitSpeechMetrics";
  v248[15] = @"kTCCServiceSensorKitMotionHeartRate";
  v249[14] = &off_1000AFAC8;
  v249[15] = &off_1000AFAC8;
  v248[16] = @"kTCCServiceSensorKitOdometer";
  v248[17] = @"kTCCServiceSensorKitElevation";
  v249[16] = &off_1000AFAC8;
  v249[17] = &off_1000AFAC8;
  v248[18] = @"kTCCServiceSensorKitStrideCalibration";
  v248[19] = @"kTCCServiceSensorKitDeviceUsage";
  v249[18] = &off_1000AFAC8;
  v249[19] = &off_1000AFAC8;
  v248[20] = @"kTCCServiceSensorKitPhoneUsage";
  v248[21] = @"kTCCServiceSensorKitMessageUsage";
  v249[20] = &off_1000AFAC8;
  v249[21] = &off_1000AFAC8;
  v248[22] = @"kTCCServiceSensorKitFacialMetrics";
  v248[23] = @"kTCCServiceSensorKitWristTemperature";
  v249[22] = &off_1000AFAF0;
  v249[23] = &off_1000AFB18;
  v248[24] = @"kTCCServiceSensorKitHistoricalMobilityMetrics";
  v248[25] = @"kTCCServiceSensorKitHistoricalCardioMetrics";
  v249[24] = &off_1000AFB40;
  v249[25] = &off_1000AFB40;
  v248[26] = @"kTCCServiceSensorKitHearing";
  v248[27] = @"kTCCServiceSensorKitSleep";
  v249[26] = &off_1000AFB68;
  v249[27] = &off_1000AFB68;
  [NSDictionary dictionaryWithObjects:v249 forKeys:v248 count:28];
  v233 = 0u;
  v234 = 0u;
  v235 = 0u;
  v110 = v236 = 0u;
  v111 = [v110 countByEnumeratingWithState:&v233 objects:v247 count:16];
  if (v111)
  {
    v112 = v111;
    v113 = *v234;
    do
    {
      v114 = 0;
      v115 = v109;
      do
      {
        if (*v234 != v113)
        {
          objc_enumerationMutation(v110);
        }

        v116 = *(*(&v233 + 1) + 8 * v114);
        v117 = [TCCDService alloc];
        v118 = [v110 objectForKeyedSubscript:v116];
        v109 = [(TCCDService *)v117 initWithName:v116 availability:v118];

        [(TCCDService *)v109 setIsRevocable:1];
        [(TCCDService *)v109 setAlertStyle:1];
        [v1 addObject:v109];
        v114 = v114 + 1;
        v115 = v109;
      }

      while (v112 != v114);
      v112 = [v110 countByEnumeratingWithState:&v233 objects:v247 count:16];
    }

    while (v112);
  }

  v119 = [[TCCDService alloc] initWithName:@"kTCCServiceExposureNotificationRegion" availability:&off_1000AFB90];
  [(TCCDService *)v119 setIOS_minimumSDKVersionNumber:&off_1000AE1B0];
  [(TCCDService *)v119 setIsRevocable:1];
  [(TCCDService *)v119 setAlertStyle:1];
  [v1 addObject:v119];
  v120 = [[TCCDService alloc] initWithName:@"kTCCServiceExposureNotification" availability:&off_1000AFBB8];
  v121 = [(TCCDService *)v120 name];
  v122 = [TCCDService requestAdditionalTextLocalizationKeyNameForServiceName:v121];
  [(TCCDService *)v120 setRequestAdditionalTextLocalizationKey:v122];

  v123 = [(TCCDService *)v120 requestAdditionalTextLocalizationKey];

  if (!v123)
  {
    sub_10004CDB8();
  }

  v124 = [(TCCDService *)v120 name];
  v125 = [TCCDService requestTitleTextForSubsequentRequestsLocalizationKeyNameForServiceName:v124];
  [(TCCDService *)v120 setRequestTitleTextForSubsequentRequestsKey:v125];

  v126 = [(TCCDService *)v120 requestTitleTextForSubsequentRequestsKey];

  if (!v126)
  {
    sub_10004CDB8();
  }

  v127 = [(TCCDService *)v120 name];
  v128 = [TCCDService requestAdditionalTextForSubsequentRequestsKeyNameForServiceName:v127];
  [(TCCDService *)v120 setRequestAdditionalTextForSubsequentRequestsLocalizationKey:v128];

  v129 = [(TCCDService *)v120 requestAdditionalTextForSubsequentRequestsLocalizationKey];

  if (!v129)
  {
    sub_10004CDB8();
  }

  [(TCCDService *)v120 setSubsequentRequestStringsRelatedService:v119];
  [(TCCDService *)v120 setIOS_minimumSDKVersionNumber:&off_1000AE1B0];
  v130 = [(TCCDService *)v120 name];
  v131 = [TCCDService requestAllowAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v130];
  [(TCCDService *)v120 setAllowAuthorizationButtonTitleLocalizationKey:v131];

  v132 = [(TCCDService *)v120 allowAuthorizationButtonTitleLocalizationKey];

  if (!v132)
  {
    sub_10004CDB8();
  }

  v133 = [(TCCDService *)v120 name];
  v134 = [TCCDService requestDenyAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v133];
  [(TCCDService *)v120 setDenyAuthorizationButtonTitleLocalizationKey:v134];

  v135 = [(TCCDService *)v120 denyAuthorizationButtonTitleLocalizationKey];

  if (!v135)
  {
    sub_10004CDB8();
  }

  v136 = [(TCCDService *)v120 name];
  v137 = [TCCDService subsequentRequestAllowAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v136];
  [(TCCDService *)v120 setSubsequentRequestAllowAuthorizationButtonTitleLocalizationKey:v137];

  v138 = [(TCCDService *)v120 subsequentRequestAllowAuthorizationButtonTitleLocalizationKey];

  if (!v138)
  {
    sub_10004CDB8();
  }

  v139 = [(TCCDService *)v120 name];
  v140 = [TCCDService subsequentRequestDenyAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v139];
  [(TCCDService *)v120 setSubsequentRequestDenyAuthorizationButtonTitleLocalizationKey:v140];

  v141 = [(TCCDService *)v120 subsequentRequestDenyAuthorizationButtonTitleLocalizationKey];

  if (!v141)
  {
    sub_10004CDB8();
  }

  [v1 addObject:v120];
  v142 = [[TCCDService alloc] initWithName:@"kTCCServiceContactlessAccess" availability:&off_1000AFBE0];

  v143 = [(TCCDService *)v142 name];
  v144 = [TCCDService requestAdditionalTextLocalizationKeyNameForServiceName:v143];
  [(TCCDService *)v142 setRequestAdditionalTextLocalizationKey:v144];

  [(TCCDService *)v142 setAuthorizationRightsMask:7];
  [(TCCDService *)v142 setAuthorizationVersionNumber:2];
  [(TCCDService *)v142 setIsRevocable:1];
  [v1 addObject:v142];
  v145 = [[TCCDService alloc] initWithName:@"kTCCServiceContactlessAccessPayments" availability:&off_1000AFC08];

  v146 = [(TCCDService *)v145 name];
  v147 = [TCCDService requestAdditionalTextForSettingsRequestsLocalizationKeyNameForServiceName:v146];
  [(TCCDService *)v145 setRequestAdditionalTextForSettingsRequestsLocalizationKey:v147];

  v148 = [(TCCDService *)v145 name];
  v149 = [TCCDService requestTitleTextForSettingsFullRequestsLocalizationKeyNameForServiceName:v148];
  [(TCCDService *)v145 setSettingsRequestFullTitleTextLocalizationKey:v149];

  [(TCCDService *)v145 setAuthorizationRightsMask:71];
  [(TCCDService *)v145 setAuthorizationVersionNumber:2];
  [(TCCDService *)v145 setDefaultDesiredAuth:2];
  [(TCCDService *)v145 setSwapButtonOrderForPromptFromSettings:1];
  [(TCCDService *)v145 setSupportsStagedPrompting:1];
  [(TCCDService *)v145 _makePromptAuthorizationChoiceBlock:&stru_1000A66B8];
  [(TCCDService *)v145 setIsRevocable:1];
  [v1 addObject:v145];
  v150 = [[TCCDService alloc] initWithName:@"kTCCServiceSecureElementAccess" availability:&off_1000AFC30];

  [(TCCDService *)v150 setIsRevocable:1];
  v151 = [(TCCDService *)v150 name];
  v152 = [TCCDService requestAdditionalTextLocalizationKeyNameForServiceName:v151];
  [(TCCDService *)v150 setRequestAdditionalTextLocalizationKey:v152];

  [v1 addObject:v150];
  v153 = [[TCCDService alloc] initWithName:@"kTCCServiceMicrophoneInjection" availability:&off_1000AFC58];

  [(TCCDService *)v153 setUsageDescriptionKeyName:@"NSMicrophoneInjectionUsageDescription"];
  v154 = [(TCCDService *)v153 name];
  v155 = [TCCDService requestAdditionalTextLocalizationKeyNameForServiceName:v154];
  [(TCCDService *)v153 setRequestAdditionalTextLocalizationKey:v155];

  [v1 addObject:v153];
  v156 = [[TCCDService alloc] initWithName:@"kTCCServiceFallDetection" availability:&off_1000AFC80];

  [(TCCDService *)v156 setUsageDescriptionKeyName:@"NSFallDetectionUsageDescription"];
  [(TCCDService *)v156 setIOS_minimumSDKVersionNumber:&off_1000AE1F8];
  [(TCCDService *)v156 setWatchOS_minimumSDKVersionNumber:&off_1000AE210];
  [(TCCDService *)v156 setMdm_macos_allowedInPayloadDefition:0];
  v157 = [(TCCDService *)v156 name];
  v158 = [TCCDService requestAdditionalTextLocalizationKeyNameForServiceName:v157];
  [(TCCDService *)v156 setRequestAdditionalTextLocalizationKey:v158];

  v159 = [(TCCDService *)v156 requestAdditionalTextLocalizationKey];

  if (!v159)
  {
    sub_10004CDB8();
  }

  v160 = [(TCCDService *)v156 name];
  v161 = [TCCDService requestAllowAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v160];
  [(TCCDService *)v156 setAllowAuthorizationButtonTitleLocalizationKey:v161];

  v162 = [(TCCDService *)v156 allowAuthorizationButtonTitleLocalizationKey];

  if (!v162)
  {
    sub_10004CDB8();
  }

  v163 = [(TCCDService *)v156 name];
  v164 = [TCCDService requestDenyAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v163];
  [(TCCDService *)v156 setDenyAuthorizationButtonTitleLocalizationKey:v164];

  v165 = [(TCCDService *)v156 denyAuthorizationButtonTitleLocalizationKey];

  if (!v165)
  {
    sub_10004CDB8();
  }

  [v1 addObject:v156];
  v166 = [[TCCDService alloc] initWithName:@"kTCCServiceSensorKitBedSensing" availability:&off_1000AFCA8];

  [(TCCDService *)v166 setIsRevocable:1];
  [(TCCDService *)v166 setAlertStyle:1];
  [v1 addObject:v166];
  v167 = [[TCCDService alloc] initWithName:@"kTCCServiceSensorKitSoundDetection" availability:&off_1000AFCD0];

  [(TCCDService *)v167 setIsRevocable:1];
  [(TCCDService *)v167 setAlertStyle:1];
  [v1 addObject:v167];
  v168 = [[TCCDService alloc] initWithName:@"kTCCServiceSensorKitBedSensingWriting" availability:&off_1000AFCF8];

  [(TCCDService *)v168 setUsageDescriptionKeyName:@"NSSensorKitBedSensingWritingUsageDescription"];
  [(TCCDService *)v168 setIOS_minimumSDKVersionNumber:&off_1000AE0D8];
  [(TCCDService *)v168 setWatchOS_minimumSDKVersionNumber:&off_1000AE0F0];
  v169 = [(TCCDService *)v168 name];
  v170 = [TCCDService requestAdditionalTextLocalizationKeyNameForServiceName:v169];
  [(TCCDService *)v168 setRequestAdditionalTextLocalizationKey:v170];

  v171 = [(TCCDService *)v168 requestAdditionalTextLocalizationKey];

  if (!v171)
  {
    sub_10004CDB8();
  }

  v172 = [(TCCDService *)v168 name];
  v173 = [TCCDService requestAllowAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v172];
  [(TCCDService *)v168 setAllowAuthorizationButtonTitleLocalizationKey:v173];

  v174 = [(TCCDService *)v168 allowAuthorizationButtonTitleLocalizationKey];

  if (!v174)
  {
    sub_10004CDB8();
  }

  [v1 addObject:v168];
  v175 = [[TCCDService alloc] initWithName:@"kTCCServiceSensorKitMediaEvents" availability:&off_1000AFD20];

  [(TCCDService *)v175 setIsRevocable:1];
  [(TCCDService *)v175 setAlertStyle:1];
  [v1 addObject:v175];
  v176 = [[TCCDService alloc] initWithName:@"kTCCServiceNearbyInteraction" availability:&off_1000AFD48];

  [(TCCDService *)v176 setUsageDescriptionKeyName:@"NSNearbyInteractionUsageDescription"];
  [(TCCDService *)v176 setIOS_minimumSDKVersionNumber:&off_1000AE060];
  [(TCCDService *)v176 setWatchOS_minimumSDKVersionNumber:&off_1000AE258];
  [v1 addObject:v176];
  v177 = [[TCCDService alloc] initWithName:@"kTCCServiceEnergyKitGuidance" availability:&off_1000AFD70];

  [(TCCDService *)v177 setIOS_minimumSDKVersionNumber:&off_1000AE288];
  v178 = [TCCDService requestPrimaryTitleTextLocalizationKeyNameForServiceName:@"kTCCServiceEnergyKitGuidance"];
  [(TCCDService *)v177 setRequestTitleTextLocalizationKey:v178];

  v179 = [TCCDService requestSecondaryTitleTextLocalizationKeyNameForServiceName:@"kTCCServiceEnergyKitGuidance"];
  [(TCCDService *)v177 setRequestForSecondaryPromptStringTypeSpecifiedPromptTitleTextLocationalKey:v179];

  v180 = [TCCDService requestAdditionalPrimaryTextNameForServiceName:@"kTCCServiceEnergyKitGuidance"];
  [(TCCDService *)v177 setRequestAdditionalTextLocalizationKey:v180];

  v181 = [TCCDService requestAdditionalSecondaryTextNameForServiceName:@"kTCCServiceEnergyKitGuidance"];
  [(TCCDService *)v177 setAdditionalForSecondaryPromptStringTypeSpecifiedPromptUsageTextLocationalKey:v181];

  [(TCCDService *)v177 setPromptType:1];
  [(TCCDService *)v177 _makeTitleAndInfoStringChoiceBlock:&stru_1000A66F8];
  [v1 addObject:v177];
  v182 = [[TCCDService alloc] initWithName:@"kTCCServiceCrashDetection" availability:&off_1000AFD98];

  [(TCCDService *)v182 setIsRevocable:1];
  [(TCCDService *)v182 setAlertStyle:1];
  [v1 addObject:v182];
  v183 = [[TCCDService alloc] initWithName:@"kTCCServicePKPassLibraryBackgroundAddPasses" availability:&off_1000AFDC0];

  v184 = [(TCCDService *)v183 name];
  v185 = [TCCDService requestAdditionalTextLocalizationKeyNameForServiceName:v184];
  [(TCCDService *)v183 setRequestAdditionalTextLocalizationKey:v185];

  [v1 addObject:v183];
  v186 = [[TCCDService alloc] initWithName:@"kTCCServiceFinancialData" availability:&off_1000AFDE8];

  [(TCCDService *)v186 setUsageDescriptionKeyName:@"NSFinancialDataUsageDescription"];
  [(TCCDService *)v186 setMdm_isAuthorizationDenyOnly:1];
  [(TCCDService *)v186 setSupportsStagedPrompting:1];
  v187 = [(TCCDService *)v186 name];
  v188 = [TCCDService requestLimitedAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v187];
  [(TCCDService *)v186 setLimitedAuthorizationButtonTitleLocalizationKey:v188];

  [(TCCDService *)v186 setDefaultDesiredAuth:3];
  [(TCCDService *)v186 setAuthorizationVersionNumber:2];
  [(TCCDService *)v186 _makePromptAuthorizationChoiceBlock:&stru_1000A6718];
  [v1 addObject:v186];
  v189 = [[TCCDService alloc] initWithName:@"kTCCServiceWebBrowserPublicKeyCredential" availability:&off_1000AFE10];

  v190 = [(TCCDService *)v189 name];
  v191 = [TCCDService requestAdditionalTextLocalizationKeyNameForServiceName:v190];
  [(TCCDService *)v189 setRequestAdditionalTextLocalizationKey:v191];

  [(TCCDService *)v189 setMacos_pardonMissingUsage:1];
  [v1 addObject:v189];
  v192 = [[TCCDService alloc] initWithName:@"kTCCServicePasteboard" availability:&off_1000AFE38];

  [(TCCDService *)v192 setIOS_minimumSDKVersionNumber:&off_1000AE1B0];
  [(TCCDService *)v192 setMacos_minimumSDKVersionNumber:&off_1000AE1B0];
  [(TCCDService *)v192 setIsRevocable:1];
  [(TCCDService *)v192 setAlertStyle:1];
  [(TCCDService *)v192 setAuthorizationRightsMask:15];
  [(TCCDService *)v192 setAuthorizationVersionNumber:2];
  [v1 addObject:v192];
  v193 = [[TCCDService alloc] initWithName:@"kTCCServiceExternalCameraMedia" availability:&off_1000AFE60];

  [(TCCDService *)v193 setRequestFullTitleTextLocalizationKey:@"REQUEST_ACCESS_SERVICE_kTCCServiceExternalCameraMedia"];
  [(TCCDService *)v193 setRequestUpgradeTitleTextLocalizationKey:@"REQUEST_ACCESS_UPGRADE_kTCCServiceExternalCameraMedia"];
  v194 = [(TCCDService *)v193 name];
  v195 = [TCCDService requestAdditionalTextLocalizationKeyNameForServiceName:v194];
  [(TCCDService *)v193 setRequestAdditionalTextLocalizationKey:v195];

  [(TCCDService *)v193 setAuthorizationVersionNumber:2];
  [(TCCDService *)v193 setMacos_pardonMissingUsage:1];
  [(TCCDService *)v193 setDefaultDesiredAuth:4];
  [(TCCDService *)v193 setSupportsStagedPrompting:1];
  [(TCCDService *)v193 setMacos_helpAnchor:@"mchl6f613f75"];
  [(TCCDService *)v193 _makePromptAuthorizationChoiceBlock:&stru_1000A6738];
  [(TCCDService *)v193 _makePromptButtonLocalizationKeyBlock:&stru_1000A6758];
  [v1 addObject:v193];
  v196 = [[TCCDService alloc] initWithName:@"kTCCServiceFocusStatus" availability:&off_1000AFE88];

  [(TCCDService *)v196 setUsageDescriptionKeyName:@"NSFocusStatusUsageDescription"];
  [(TCCDService *)v196 setMacos_minimumSDKVersionNumber:&off_1000AE120];
  [(TCCDService *)v196 setIOS_minimumSDKVersionNumber:&off_1000AE060];
  [(TCCDService *)v196 setWatchOS_minimumSDKVersionNumber:&off_1000AE258];
  v197 = [(TCCDService *)v196 name];
  v198 = [TCCDService requestAllowAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v197];
  [(TCCDService *)v196 setAllowAuthorizationButtonTitleLocalizationKey:v198];

  v199 = [(TCCDService *)v196 allowAuthorizationButtonTitleLocalizationKey];

  if (!v199)
  {
    sub_10004CDB8();
  }

  v200 = [(TCCDService *)v196 name];
  v201 = [TCCDService requestDenyAuthorizationButtonTitleTextLocalizationKeyNameForServiceName:v200];
  [(TCCDService *)v196 setDenyAuthorizationButtonTitleLocalizationKey:v201];

  v202 = [(TCCDService *)v196 denyAuthorizationButtonTitleLocalizationKey];

  if (!v202)
  {
    sub_10004CDB8();
  }

  [(TCCDService *)v196 setMdm_macos_allowedInPayloadDefition:1];
  [v1 addObject:v196];
  v203 = [[TCCDService alloc] initWithName:@"kTCCServiceLinkedIn" availability:&off_1000AFEB0];

  [(TCCDService *)v203 setAlertStyle:1];
  [(TCCDService *)v203 setIsRevocable:1];
  [(TCCDService *)v203 setShouldTreatAsDeprecated:1];
  [v1 addObject:v203];
  v204 = [[TCCDService alloc] initWithName:@"kTCCServiceAccessibility" availability:&off_1000AFED8];

  [(TCCDService *)v204 setAlertStyle:1];
  [(TCCDService *)v204 setShouldAllowUnrestrictedCheckAuditToken:1];
  [(TCCDService *)v204 setHasParanoidSecurityPolicy:1];
  [(TCCDService *)v204 setMacos_isPerSystem:1];
  [(TCCDService *)v204 setMacos_compositionPromoteChildAuthorizationToParent:1];
  [v1 addObject:v204];
  v205 = [[TCCDService alloc] initWithName:@"kTCCServicePostEvent" availability:&off_1000AFF00];
  [(TCCDService *)v205 setHasParanoidSecurityPolicy:1];
  [(TCCDService *)v205 setMacos_isPerSystem:1];
  [(TCCDService *)v205 setAlertStyle:3];
  [(TCCDService *)v205 setDoNotStoreDefaultAllowAccess:1];
  [v1 addObject:v205];
  v206 = [[TCCDService alloc] initWithName:@"kTCCServiceListenEvent" availability:&off_1000AFF28];
  [(TCCDService *)v206 setHasParanoidSecurityPolicy:1];
  [(TCCDService *)v206 setMacos_isPerSystem:1];
  [(TCCDService *)v206 setAlertStyle:3];
  [(TCCDService *)v206 setDoNotStoreDefaultAllowAccess:1];
  [(TCCDService *)v206 setMdm_isAuthorizationDenyOnly:1];
  [(TCCDService *)v206 setMdm_allowStandardUserToSetSystemService:1];
  v229 = v119;
  v207 = v206;
  [v1 addObject:v207];
  [(TCCDService *)v204 setMacos_compositionChildService:v205];
  [(TCCDService *)v205 setMacos_compositionParentService:v204];
  [(TCCDService *)v207 setMacos_compositionParentService:v205];

  v208 = [[TCCDService alloc] initWithName:@"kTCCServiceSystemPolicyAllFiles" availability:&off_1000AFF50];
  [(TCCDService *)v208 setAlertStyle:1];
  [(TCCDService *)v208 setIsAccessDeniedByDefault:1];
  [(TCCDService *)v208 setMacos_isPerSystem:1];
  [v1 addObject:v208];
  v209 = [[TCCDService alloc] initWithName:@"kTCCServiceSystemPolicyAppBundles" availability:&off_1000AFF78];

  [(TCCDService *)v209 setAlertStyle:2];
  v210 = [NSURL URLWithString:@"x-apple.systempreferences:com.apple.preference.security?Privacy_AppBundles"];
  [(TCCDService *)v209 setNotificationActionURL:v210];

  [(TCCDService *)v209 setUsageDescriptionKeyName:@"NSAppBundlesUsageDescription"];
  [(TCCDService *)v209 setIsAccessDeniedByDefault:1];
  [v1 addObject:v209];
  v211 = [[TCCDService alloc] initWithName:@"kTCCServiceSystemPolicySysAdminFiles" availability:&off_1000AFFA0];

  [(TCCDService *)v211 setUsageDescriptionKeyName:@"NSSystemAdministrationUsageDescription"];
  [(TCCDService *)v211 setExpirySeconds:&off_1000AE2E8];
  [(TCCDService *)v211 setMacos_helpAnchor:@"mchlccb25729"];
  [v1 addObject:v211];
  v212 = [[TCCDService alloc] initWithName:@"kTCCServiceSystemPolicyDeveloperFiles" availability:&off_1000AFFC8];

  [(TCCDService *)v212 setShouldTreatAsDeprecated:1];
  [v1 addObject:v212];
  v213 = [[TCCDService alloc] initWithName:@"kTCCServiceAppleEvents" availability:&off_1000AFFF0];

  [(TCCDService *)v213 setMacos_hasIndirectObject:1];
  [(TCCDService *)v213 setMacos_shouldAllowSameTeam:1];
  [(TCCDService *)v213 setUsageDescriptionKeyName:@"NSAppleEventsUsageDescription"];
  [(TCCDService *)v213 setMacos_helpAnchor:@"mchl108e1718"];
  [(TCCDService *)v213 setMacos_hardenedRuntimeEntitlementName:@"com.apple.security.automation.apple-events"];
  [v1 addObject:v213];
  v214 = [[TCCDService alloc] initWithName:@"kTCCServiceScreenCapture" availability:&off_1000B0018];

  [(TCCDService *)v214 setCheckAllowEntitlementOnResponsibleProcess:1];
  [(TCCDService *)v214 setMacos_isPerSystem:1];
  [(TCCDService *)v214 setAlertStyle:3];
  [(TCCDService *)v214 setDoNotStoreDefaultAllowAccess:1];
  [(TCCDService *)v214 setMacos_helpAnchor:@"mchl592e5686"];
  [(TCCDService *)v214 setMdm_isAuthorizationDenyOnly:1];
  [(TCCDService *)v214 setMdm_allowStandardUserToSetSystemService:1];
  [v1 addObject:v214];
  v215 = [[TCCDService alloc] initWithName:@"kTCCServiceRemoteDesktop" availability:&off_1000B0040];

  [(TCCDService *)v215 setMacos_minimumSDKVersionNumber:&off_1000AE090];
  [(TCCDService *)v215 setAlertStyle:3];
  [(TCCDService *)v215 setMacos_isPerSystem:1];
  [v1 addObject:v215];
  v216 = [[TCCDService alloc] initWithName:@"kTCCServiceDeveloperTool" availability:&off_1000B0068];

  [(TCCDService *)v216 setMacos_helpAnchor:@"mchl830dc1d6"];
  [(TCCDService *)v216 setAlertStyle:1];
  [(TCCDService *)v216 setMacos_isPerSystem:1];
  [(TCCDService *)v216 setCheckAllowEntitlementOnResponsibleProcess:1];
  [(TCCDService *)v216 setMdm_macos_allowedInPayloadDefition:0];
  [v1 addObject:v216];
  v217 = [[TCCDService alloc] initWithName:@"kTCCServiceFileProviderPresence" availability:&off_1000B0090];

  [(TCCDService *)v217 setUsageDescriptionKeyName:@"NSFileProviderPresenceUsageDescription"];
  [(TCCDService *)v217 setMacos_minimumSDKVersionNumber:&off_1000ADFD0];
  [v1 addObject:v217];
  v218 = [[TCCDService alloc] initWithName:@"kTCCServiceFileProviderDomain" availability:&off_1000B00B8];

  [(TCCDService *)v218 setMacos_hasIndirectObject:1];
  [(TCCDService *)v218 setUsageDescriptionKeyName:@"NSFileProviderDomainUsageDescription"];
  [(TCCDService *)v218 setMacos_minimumSDKVersionNumber:&off_1000ADFD0];
  [(TCCDService *)v218 setMdm_macos_allowedInPayloadDefition:0];
  [(TCCDService *)v218 setMacos_helpAnchor:@"mchl4206cab8"];
  [v1 addObject:v218];
  v219 = [[TCCDService alloc] initWithName:@"kTCCServiceSystemPolicyAppData" availability:&off_1000B00E0];

  [(TCCDService *)v219 setUsageDescriptionKeyName:@"NSAppDataUsageDescription"];
  [(TCCDService *)v219 setMacos_minimumSDKVersionNumber:&off_1000AE1B0];
  [(TCCDService *)v219 setShouldUseADefaultDescriptionString:1];
  [(TCCDService *)v219 setSessionPidAuthorizationButtonTitleLocalizationKey:@"REQUEST_ACCESS_SESSION_PID"];
  [(TCCDService *)v219 setAuthorizationRightsMask:39];
  [(TCCDService *)v219 setSupportsStagedPrompting:1];
  [(TCCDService *)v219 _makePromptAuthorizationChoiceBlock:&stru_1000A6778];
  [v1 addObject:v219];
  v220 = [[TCCDService alloc] initWithName:@"kTCCServiceVirtualMachineNetworking" availability:&off_1000B0108];

  [(TCCDService *)v220 setMacos_minimumSDKVersionNumber:&off_1000AE090];
  [v1 addObject:v220];
  v221 = [[TCCDService alloc] initWithName:@"kTCCServiceSystemPolicyRemovableVolumes" availability:&off_1000B0130];

  [(TCCDService *)v221 setMacos_helpAnchor:@"mchl6f613f75"];
  [(TCCDService *)v221 setUsageDescriptionKeyName:@"NSRemovableVolumesUsageDescription"];
  [v1 addObject:v221];
  v222 = [[TCCDService alloc] initWithName:@"kTCCServiceSystemPolicyNetworkVolumes" availability:&off_1000B0158];

  [(TCCDService *)v222 setMacos_helpAnchor:@"mchl336d3371"];
  [(TCCDService *)v222 setUsageDescriptionKeyName:@"NSNetworkVolumesUsageDescription"];
  [v1 addObject:v222];
  v223 = [[TCCDService alloc] initWithName:@"kTCCServiceSystemPolicyDesktopFolder" availability:&off_1000B0180];

  [(TCCDService *)v223 setMacos_helpAnchor:@"mchlf62acc05"];
  [(TCCDService *)v223 setUsageDescriptionKeyName:@"NSDesktopFolderUsageDescription"];
  [v1 addObject:v223];
  v224 = [[TCCDService alloc] initWithName:@"kTCCServiceSystemPolicyDownloadsFolder" availability:&off_1000B01A8];

  [(TCCDService *)v224 setMacos_helpAnchor:@"mchld27a5c7a"];
  [(TCCDService *)v224 setUsageDescriptionKeyName:@"NSDownloadsFolderUsageDescription"];
  [v1 addObject:v224];
  v225 = [[TCCDService alloc] initWithName:@"kTCCServiceSystemPolicyDocumentsFolder" availability:&off_1000B01D0];

  [(TCCDService *)v225 setMacos_helpAnchor:@"mchl1ffddf58"];
  [(TCCDService *)v225 setUsageDescriptionKeyName:@"NSDocumentsFolderUsageDescription"];
  [v1 addObject:v225];
  v226 = [[TCCDService alloc] initWithName:@"kTCCServiceAudioCapture" availability:&off_1000B01F8];

  [(TCCDService *)v226 setUsageDescriptionKeyName:@"NSAudioCaptureUsageDescription"];
  [(TCCDService *)v226 setMacos_pardonMissingUsage:1];
  [(TCCDService *)v226 setMdm_macos_allowedInPayloadDefition:0];
  [(TCCDService *)v226 setMacos_helpAnchor:@"mchl2844ecab"];
  [v1 addObject:v226];
  v227 = [v1 copy];
  v228 = qword_1000C11E0;
  qword_1000C11E0 = v227;
}

int sub_10004A14C(id a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  if (a4)
  {
    v6 = a5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || a6 == 0;
  if (a2 == 6)
  {
    if ((a3 | 4) == 6)
    {
      if (v8)
      {
        return 0;
      }

      v10 = 3;
      v11 = 2;
      goto LABEL_22;
    }

    return -1;
  }

  if (a2 != 1)
  {
    return -1;
  }

  if (a3 == 6)
  {
    result = 0;
  }

  else
  {
    v8 = 1;
    result = -1;
  }

  if ((v8 & 1) == 0)
  {
    v10 = 0;
    v11 = 6;
LABEL_22:
    result = 0;
    *a4 = v11;
    *a5 = v10;
    *a6 = 1;
  }

  return result;
}

NSString *__cdecl sub_10004A1C8(id a1, unint64_t a2, unint64_t a3)
{
  v3 = @"REQUEST_ACCESS_DONT_ALLOW_kTCCServiceAddressBook_DONT_ALLOW";
  if (a2)
  {
    v3 = 0;
  }

  v4 = @"REQUEST_ACCESS_FULL_kTCCServiceAddressBook_FULL_ACCESS_PROMPT";
  if (a2 != 2)
  {
    v4 = 0;
  }

  v5 = @"REQUEST_ACCESS_LEARN_MORE_kTCCServiceAddressBook_LEARN_MORE";
  if (a2 != 6)
  {
    v5 = 0;
  }

  if (a3 != 6)
  {
    v5 = 0;
  }

  if (a3 != 2)
  {
    v4 = v5;
  }

  if (a3)
  {
    return &v4->isa;
  }

  else
  {
    return &v3->isa;
  }
}

int sub_10004A214(id a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  if (a4)
  {
    v6 = a5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || a6 == 0;
  if (a2 != 4)
  {
    if (a2 == 1)
    {
      if (a3 == 2)
      {
        if ((v8 & 1) == 0)
        {
          v11 = 0;
          v9 = 2;
          goto LABEL_23;
        }

        return 0;
      }

      if (a3 == 4)
      {
        if ((v8 & 1) == 0)
        {
          v9 = 0;
LABEL_22:
          v11 = 4;
LABEL_23:
          result = 0;
          *a4 = v11;
          *a5 = v9;
          *a6 = 1;
          return result;
        }

        return 0;
      }
    }

    return -1;
  }

  if (a3 == 2)
  {
    result = 0;
  }

  else
  {
    v8 = 1;
    result = -1;
  }

  if ((v8 & 1) == 0)
  {
    v9 = 2;
    goto LABEL_22;
  }

  return result;
}

NSString *__cdecl sub_10004A2A0(id a1, unint64_t a2, unint64_t a3)
{
  v3 = @"REQUEST_ACCESS_FULL_kTCCServiceCalendar_FULL";
  if (a2 != 2)
  {
    v3 = 0;
  }

  v4 = @"REQUEST_ACCESS_ADD_kTCCServiceCalendar_ADD";
  if (a2 != 4)
  {
    v4 = 0;
  }

  if (a3 != 4)
  {
    v4 = 0;
  }

  if (a3 == 2)
  {
    return &v3->isa;
  }

  else
  {
    return &v4->isa;
  }
}

unint64_t sub_10004A2D4(id a1, unint64_t a2, BOOL a3)
{
  v3 = 4;
  if (a2 != 2)
  {
    v3 = a2;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 2 * (a2 != 0);
  }
}

id sub_10004A2F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableDictionary);
  v31[0] = @"subject_ID";
  v31[1] = @"subject_ID_type";
  v31[2] = @"authorization_value";
  v31[3] = @"auth_reason";
  [NSArray arrayWithObjects:v31 count:4];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v29 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v3 objectForKeyedSubscript:{v10, v26}];
        [v4 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  v12 = [*(a1 + 32) name];
  [v4 setObject:v12 forKeyedSubscript:@"service"];

  v13 = [v3 objectForKeyedSubscript:@"flags"];
  v14 = [v13 intValue];

  v15 = [NSNumber numberWithBool:(v14 >> 4) & 1];
  [v4 setObject:v15 forKeyedSubscript:@"prompted_for_full"];

  v16 = [v3 objectForKeyedSubscript:@"auth_reason"];
  v17 = [v16 intValue];

  v18 = [v3 objectForKeyedSubscript:@"authorization_value"];
  v19 = [v18 intValue];

  v21 = (v14 & 0x10) == 0 && v17 == 2;
  v22 = v17 == 2;
  if (v19 != 4)
  {
    v22 = 0;
  }

  if (v19)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  v24 = [NSNumber numberWithBool:v23, v26];
  [v4 setObject:v24 forKeyedSubscript:@"prompted_for_add"];

  return v4;
}

int sub_10004A59C(id a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  if (a4)
  {
    v6 = a5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || a6 == 0;
  if (a2 == 4)
  {
    if (a3 == 2)
    {
      result = 0;
    }

    else
    {
      v8 = 1;
      result = -1;
    }

    if ((v8 & 1) == 0)
    {
      v10 = 4;
      goto LABEL_22;
    }
  }

  else
  {
    if (a2 != 1)
    {
      return -1;
    }

    if (a3 == 2)
    {
      result = 0;
    }

    else
    {
      v8 = 1;
      result = -1;
    }

    if ((v8 & 1) == 0)
    {
      v10 = 0;
LABEL_22:
      result = 0;
      *a4 = 2;
      *a5 = v10;
      *a6 = 3;
    }
  }

  return result;
}

NSString *__cdecl sub_10004A60C(id a1, unint64_t a2, unint64_t a3)
{
  v3 = @"REQUEST_ACCESS_LIMITED_kTCCServicePhotos_FULL";
  if (a2 != 3)
  {
    v3 = 0;
  }

  if (a2 == 2)
  {
    v3 = @"REQUEST_ACCESS_FULL_kTCCServicePhotos_FULL";
  }

  if (a3 == 2)
  {
    return &v3->isa;
  }

  else
  {
    return 0;
  }
}

int sub_10004A638(id a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v6 = a2 == 6 && a3 == 2;
  v7 = !v6;
  result = v7 << 31 >> 31;
  if (v6 && a4 && a5)
  {
    if (a6)
    {
      result = 0;
      *a4 = 2;
      *a5 = 0;
      *a6 = 1;
    }
  }

  return result;
}

int sub_10004A674(id a1, unint64_t a2, id *a3, id *a4)
{
  if (a2 == 2)
  {
    *a3 = [TCCDService requestSecondaryTitleTextLocalizationKeyNameForServiceName:@"kTCCServiceEnergyKitGuidance"];
    v6 = [TCCDService requestAdditionalSecondaryTextNameForServiceName:@"kTCCServiceEnergyKitGuidance"];
  }

  else
  {
    if (a2 != 1)
    {
      return -1;
    }

    *a3 = [TCCDService requestPrimaryTitleTextLocalizationKeyNameForServiceName:@"kTCCServiceEnergyKitGuidance"];
    v6 = [TCCDService requestAdditionalPrimaryTextNameForServiceName:@"kTCCServiceEnergyKitGuidance"];
  }

  v7 = v6;
  v8 = 0;
  *a4 = v7;
  return v8;
}

int sub_10004A734(id a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v6 = a2 == 1 && a3 == 3;
  v7 = !v6;
  result = v7 << 31 >> 31;
  if (v6 && a4 && a5)
  {
    if (a6)
    {
      result = 0;
      *a4 = 0;
      *a5 = 3;
      *a6 = 1;
    }
  }

  return result;
}

int sub_10004A770(id a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  if (a4)
  {
    v6 = a5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || a6 == 0;
  if (a2 != 4)
  {
    if (a2 != 1)
    {
      return -1;
    }

    if (a3 != 2)
    {
      if (a3 == 4)
      {
        if ((v8 & 1) == 0)
        {
          v9 = 0;
          v10 = 4;
LABEL_26:
          result = 0;
          *a4 = v10;
          *a5 = v9;
          *a6 = 1;
          return result;
        }

        return 0;
      }

      return -1;
    }

    if (v8)
    {
      return 0;
    }

    v9 = 0;
LABEL_25:
    v10 = 2;
    goto LABEL_26;
  }

  if (a3 == 2)
  {
    result = 0;
  }

  else
  {
    v8 = 1;
    result = -1;
  }

  if ((v8 & 1) == 0)
  {
    v9 = 4;
    goto LABEL_25;
  }

  return result;
}

NSString *__cdecl sub_10004A7FC(id a1, unint64_t a2, unint64_t a3)
{
  v3 = @"REQUEST_ACCESS_DONT_ALLOW";
  v4 = @"REQUEST_ACCESS_ALLOW";
  if (a3 == 4)
  {
    v5 = @"REQUEST_ACCESS_DONT_ALLOW";
  }

  else
  {
    v5 = 0;
  }

  if (a3 == 2)
  {
    v5 = @"REQUEST_ACCESS_ALLOW";
  }

  if (a3 != 4)
  {
    v4 = 0;
  }

  if (a3 != 2)
  {
    v3 = v4;
  }

  if (a2 != 4)
  {
    v3 = 0;
  }

  if (a2 == 2)
  {
    return &v5->isa;
  }

  else
  {
    return &v3->isa;
  }
}

int sub_10004A840(id a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  if (a3 == 2)
  {
    result = 0;
  }

  else
  {
    result = -1;
  }

  if (a3 == 2 && a4 && a5)
  {
    if (a6)
    {
      result = 0;
      *a4 = 5;
      *a5 = 0;
      *a6 = 1;
    }
  }

  return result;
}

void sub_10004B1F0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v8 = [objc_opt_class() tccdPlatformNameForDYLDPlatformName:v6];

  v7 = v8;
  if (v8)
  {
    [*(a1 + 40) addObject:v8];
    v7 = v8;
  }

  *a4 = 0;
}

void sub_10004B92C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = a2;
  v9 = [objc_opt_class() versionStringFromDYLDVersionNumber:v7];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v8];
  *a4 = 0;
}

void sub_10004BCF8(uint64_t a1)
{
  v2 = +[TCCDPlatform currentPlatform];
  v3 = [v2 server];
  v4 = [v3 logHandle];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10004CDD4(a1, v4);
  }
}

void sub_10004BEA8(uint64_t a1)
{
  v2 = +[TCCDPlatform currentPlatform];
  v3 = [v2 server];
  v4 = [v3 logHandle];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10004CE64(a1, v4);
  }
}

void sub_10004CDB8()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_10004CDD4(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v4 = *(v2 + 208);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to load localizedResourcesBundle for %{public}@ from path %{public}@", &v5, 0x16u);
}

void sub_10004CE64(uint64_t a1, NSObject *a2)
{
  v3 = *(*(a1 + 32) + 56);
  v4 = +[TCCDService defaultLocalizedResourcesBundlePath];
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to load default localization bundle for %{public}@ from path %{public}@", &v5, 0x16u);
}

void sub_10004CF20(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 56);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "NSLocalizedStringFromTableInBundle failed for service %{public}@: request_key=%{public}@", &v4, 0x16u);
}

void sub_10004D2A8(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1000C1210;
  qword_1000C1210 = v1;

  v3 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_1000C1210 setLocale:v3];

  [qword_1000C1210 setDateFormat:@"yyyy-MM-dd HH:mm:ssZZZ"];
  v4 = +[NSTimeZone systemTimeZone];
  [qword_1000C1210 setTimeZone:v4];
}

void handle_TCCAccessResetAll(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[TCCDAttributionChain alloc] initWithMessage:v4];
  string = xpc_dictionary_get_string(v4, "function");

  v7 = [NSString stringWithUTF8String:string];
  v8 = +[TCCDPlatform currentPlatform];
  v9 = [v8 server];
  v10 = [(TCCDAttributionChain *)v5 requestingProcess];
  v11 = +[TCCDService serviceAll];
  v12 = [v9 canProcess:v10 callFunction:v7 forService:v11 withAccessIdentity:0];

  if (v12)
  {
    xpc_dictionary_set_BOOL(v3, "result", 1);
  }

  else
  {
    v13 = tcc_access_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10004F424(v5);
    }
  }
}

void handle_TCCAccessResetInternal(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[TCCDAttributionChain alloc] initWithMessage:v4];
  handle_TCCAccessResetInternal_with_attribution_chain_for_process(v4, v3, v5);
}

void handle_TCCAccessResetInternal_with_attribution_chain_for_process(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v7 requestingProcess];
  v56 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v5, "function")];
  v9 = +[TCCDPlatform currentPlatform];
  v10 = [v9 server];
  v57 = 0;
  v11 = [v10 serviceFromMessage:v5 error:&v57];
  v12 = v57;

  if (!v11)
  {
    v14 = objc_opt_new();
    v24 = [v9 server];
    [v24 buildErrorString:v14 forError:v12 contextString:0];

    v25 = [v9 server];
    v26 = [v25 logHandle];

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10004F4E0();
    }

    goto LABEL_31;
  }

  string = xpc_dictionary_get_string(v5, "client");
  if (string)
  {
    v14 = [[TCCDAccessIdentity alloc] initWithMessage:v5];
    [(TCCDAccessIdentity *)v14 identifier];
    v53 = string;
    v15 = v8;
    v16 = v5;
    v17 = v9;
    v18 = v11;
    v19 = v7;
    v20 = v6;
    v22 = v21 = v12;
    v23 = [v22 UTF8String];

    v12 = v21;
    v6 = v20;
    v7 = v19;
    v11 = v18;
    v9 = v17;
    v5 = v16;
    v8 = v15;
    string = v53;
    if (!v23)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v14 = 0;
  }

  v55 = v12;
  v27 = [v9 server];
  v28 = [v27 canProcess:v8 callFunction:v56 forService:v11 withAccessIdentity:v14];

  if (v28)
  {
    v52 = v8;
    if (string)
    {
      v26 = [(TCCDAccessIdentity *)v14 identifier];
    }

    else
    {
      v26 = @"kTCCClientAll";
    }

    v29 = xpc_dictionary_get_BOOL(v5, "noKill");
    v30 = [(TCCDAccessIdentity *)v14 client_type];
    v31 = [v9 server];
    v54 = db_reset_access_internal(v11, v26, v30, v31, 0, !v29, v7);

    v32 = [v11 name];
    v33 = [v32 isEqualToString:@"kTCCServiceBluetoothAlways"];

    if (!v33 || -[TCCDAccessIdentity client_type](v14, "client_type") || ((-[TCCDAccessIdentity identifier](v14, "identifier"), v40 = objc_claimAutoreleasedReturnValue(), +[TCCDBundle bundleWithIdentifier:](TCCDBundle, "bundleWithIdentifier:", v40), v41 = objc_claimAutoreleasedReturnValue(), v40, !v41) || ![v41 isASKCapable] ? (v44 = 1) : (objc_msgSend(v9, "syncController"), v42 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "name"), v43 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v42, "peerSupportsIndependentAuthforService:", v43), v43, v42, v44 = v51 ^ 1), v41, v44))
    {
      if (!v54)
      {
        v34 = [v9 syncController];
        if (v34)
        {
          v35 = v34;
          v36 = [v9 syncController];
          v37 = [v36 isSyncingEnabled];

          if (v37)
          {
            v38 = [v9 syncController];
            v39 = [v11 name];
            [v38 syncAccessUpdateForServiceIdentifier:v39 clientIdentifier:v26 clientType:-[TCCDAccessIdentity client_type](v14 accessStatus:"client_type") authorizationVersion:1 flags:1 updateType:{0, 2}];
          }
        }
      }
    }

    int64 = xpc_dictionary_get_int64(v5, "syncAuth");
    if (int64 != 1)
    {
      v46 = int64;
      v47 = tcc_access_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v59 = v46;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "sending syncAuth value of %llu after reset", buf, 0xCu);
      }

      v50 = [v11 authorizationVersionNumber];
      v48 = [v9 syncController];
      v49 = [v11 name];
      [v48 syncAccessUpdateForServiceIdentifier:v49 clientIdentifier:v26 clientType:-[TCCDAccessIdentity client_type](v14 accessStatus:"client_type") authorizationVersion:objc_msgSend(v11 flags:"accessActionStatusForAuthorizationValue:" updateType:{v46), v50, 0, 0}];
    }

    if (!v54)
    {
      xpc_dictionary_set_BOOL(v6, "result", 1);
    }

    v8 = v52;
    v12 = v55;
LABEL_31:

    goto LABEL_32;
  }

  v12 = v55;
LABEL_32:
}