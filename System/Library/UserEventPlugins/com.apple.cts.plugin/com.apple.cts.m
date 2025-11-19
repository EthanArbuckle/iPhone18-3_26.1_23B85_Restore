void sub_DA0(uint64_t a1, id a2, void *a3)
{
  v5 = a3;
  if (a1 == 2)
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v8 = [qword_15418 copy];
    v11 = [v8 countByEnumeratingWithState:&v79 objects:v83 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v80;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v80 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v79 + 1) + 8 * i);
          if ([v15 token] == a2)
          {
            v16 = qword_154A8;
            if (os_log_type_enabled(qword_154A8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = v15;
              _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Unregistered on XPC remove event: %{public}@", buf, 0xCu);
            }

            [qword_15418 removeObject:v15];
            if (byte_15408 == 1 && ([v15 scheduler_activity], (v17 = objc_claimAutoreleasedReturnValue()) != 0) && (v18 = v17, v19 = objc_msgSend(v15, "repeating"), v18, v19))
            {
              if (qword_15450)
              {
                sub_45A4();
              }

              v20 = qword_154A0;
              if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                *&buf[4] = v15;
                _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Creating zombie: %{public}@", buf, 0xCu);
              }

              objc_storeStrong(&qword_15450, v15);
              v21 = sub_46C8();
              v22 = v21 + 100000000;
              if ((v21 + 100000000) < qword_153E8)
              {
                v23 = v21;
                qword_153E8 = v21 + 100000000;
                v24 = qword_154A0;
                if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
                {
                  *buf = 138543362;
                  *&buf[4] = qword_15450;
                  _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Set timer for zombie: %{public}@", buf, 0xCu);
                  v22 = qword_153E8;
                }

                v25 = qword_15438;
                v26 = dispatch_walltime(0, v22 - v23);
                dispatch_source_set_timer(v25, v26, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
              }
            }

            else
            {
              sub_33C4(v15);
            }

            goto LABEL_75;
          }
        }

        v12 = [v8 countByEnumeratingWithState:&v79 objects:v83 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_75;
  }

  if (a1 == 1)
  {
    memset(v84, 0, sizeof(v84));
    if ((xpc_get_event_name() & 1) == 0)
    {
      __strlcpy_chk();
    }

    v6 = qword_154A0;
    if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = v84;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Creating on XPC add event: %{public}s", buf, 0xCu);
    }

    v7 = sub_18F8(v84, v5);
    v8 = v7;
    if (!v7)
    {
      v27 = qword_154A0;
      if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        *&buf[4] = v84;
        v28 = "Failed to create: %{public}s";
LABEL_73:
        v57 = v27;
LABEL_74:
        _os_log_impl(&dword_0, v57, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
      }

LABEL_75:

      goto LABEL_76;
    }

    [v7 setToken:a2];
    if ([v8 token])
    {
      [v8 token];
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      memset(buf, 0, sizeof(buf));
      if (xpc_get_service_identifier_for_token())
      {
        v9 = [NSString stringWithUTF8String:buf];
        if ([(__CFString *)v9 hasPrefix:@"com.apple."])
        {
          v10 = [(__CFString *)v9 stringByReplacingOccurrencesOfString:@"com.apple." withString:&stru_13CA0];

          v9 = v10;
        }
      }

      else
      {
        v9 = &stru_13CA0;
      }

      if ([(__CFString *)v9 length])
      {
        [v8 setServiceName:v9];
      }
    }

    v29 = qword_154A0;
    if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "Created: %{public}@", buf, 0xCu);
    }

    if (!qword_15450)
    {
LABEL_71:
      [qword_15418 addObject:v8];
      sub_2CBC(v8, 0.0);
      sub_3244(v8);
      v27 = qword_154A8;
      if (os_log_type_enabled(qword_154A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v8;
        v28 = "Registered: %{public}@";
        goto LABEL_73;
      }

      goto LABEL_75;
    }

    v30 = qword_15450;
    v31 = v8;
    v32 = [v30 name];
    v33 = [v31 name];
    if ([v32 isEqualToString:v33])
    {
      v34 = [v30 priority];
      if (v34 == [v31 priority])
      {
        v35 = [v30 allow_battery];
        if (v35 == [v31 allow_battery])
        {
          v36 = [v30 interval];
          if (v36 == [v31 interval])
          {
            v37 = [v30 grace_period];
            if (v37 == [v31 grace_period])
            {
              v38 = [v30 delay];
              if (v38 == [v31 delay])
              {
                v39 = [v30 random_initial_delay];
                if (v39 == [v31 random_initial_delay])
                {
                  v40 = [v30 repeating];
                  if (v40 == [v31 repeating])
                  {
                    v41 = [v30 expected_duration];
                    if (v41 == [v31 expected_duration])
                    {
                      v42 = [v30 requires_screen_sleep];
                      if (v42 == [v31 requires_screen_sleep])
                      {
                        v43 = [v30 requires_significant_user_inactivity];
                        if (v43 == [v31 requires_significant_user_inactivity])
                        {
                          v44 = [v30 power_nap];
                          if (v44 == [v31 power_nap])
                          {
                            v45 = [v30 app_refresh];
                            if (v45 == [v31 app_refresh])
                            {
                              v46 = [v30 memory_intensive];
                              if (v46 == [v31 memory_intensive])
                              {
                                v47 = [v30 cpu_intensive];
                                if (v47 == [v31 cpu_intensive])
                                {
                                  v48 = [v30 disk_intensive];
                                  if (v48 == [v31 disk_intensive])
                                  {
                                    v49 = [v30 requires_buddy_complete];
                                    if (v49 == [v31 requires_buddy_complete])
                                    {
                                      v50 = [v30 requires_inexpensive_network];
                                      if (v50 == [v31 requires_inexpensive_network])
                                      {
                                        v51 = [v30 requires_network_connectivity];
                                        if (v51 == [v31 requires_network_connectivity])
                                        {
                                          v52 = [v30 expected_network_download_size_bytes];
                                          if (v52 == [v31 expected_network_download_size_bytes])
                                          {
                                            v53 = [v30 expected_network_upload_size_bytes];
                                            if (v53 == [v31 expected_network_upload_size_bytes])
                                            {
                                              v54 = [v30 may_reboot_device];
                                              if (v54 == [v31 may_reboot_device])
                                              {
                                                v55 = [v30 communicates_with_paired_device];
                                                if (v55 == [v31 communicates_with_paired_device])
                                                {
                                                  v58 = [v30 desired_motion_state];
                                                  v59 = [v31 desired_motion_state];
                                                  if (v58 == v59 || v58 && v59 && !strcmp(v58, v59))
                                                  {
                                                    v60 = [v30 duet_power_budgeted];
                                                    if (v60 == [v31 duet_power_budgeted])
                                                    {
                                                      v61 = [v30 schedule_rtc_wake];
                                                      if (v61 == [v31 schedule_rtc_wake])
                                                      {
                                                        v62 = [v30 requires_protection_class];
                                                        if (v62 == [v31 requires_protection_class])
                                                        {
                                                          v78 = [v30 serviceName];
                                                          v63 = [v78 UTF8String];
                                                          v77 = [v31 serviceName];
                                                          v64 = [v77 UTF8String];
                                                          if (v63 == v64 || v63 && v64 && !strcmp(v63, v64))
                                                          {
                                                            v76 = [v30 group_name];
                                                            v65 = [v76 UTF8String];
                                                            v75 = [v31 group_name];
                                                            v66 = [v75 UTF8String];
                                                            if (v65 == v66)
                                                            {

                                                              goto LABEL_94;
                                                            }

                                                            if (v65 && v66)
                                                            {
                                                              v67 = strcmp(v65, v66);

                                                              if (!v67)
                                                              {
LABEL_94:
                                                                v68 = qword_154A0;
                                                                if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_DEFAULT))
                                                                {
                                                                  *buf = 138543618;
                                                                  *&buf[4] = v31;
                                                                  *&buf[12] = 2114;
                                                                  *&buf[14] = v30;
                                                                  _os_log_impl(&dword_0, v68, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ matches activity with name %{public}@", buf, 0x16u);
                                                                }

                                                                if (byte_15408 == 1)
                                                                {
                                                                  v69 = [qword_15450 scheduler_activity];
                                                                  if (v69)
                                                                  {
                                                                    v70 = v69;
                                                                    v71 = [qword_15450 das_started];

                                                                    if ((v71 & 1) == 0)
                                                                    {
                                                                      goto LABEL_103;
                                                                    }
                                                                  }
                                                                }

                                                                else if (([qword_15450 das_started] & 1) == 0)
                                                                {
LABEL_103:
                                                                  if (byte_15408 == 1)
                                                                  {
                                                                    v72 = [qword_15450 scheduler_activity];
                                                                    [v31 setScheduler_activity:v72];

                                                                    [qword_15450 setScheduler_activity:0];
                                                                    v73 = [v31 scheduler_activity];
                                                                    [v73 linkToCTSActivity:v31];
                                                                  }

                                                                  sub_45A4();
                                                                  [qword_15418 addObject:v31];
                                                                  sub_3244(v31);
                                                                  v74 = qword_154A8;
                                                                  if (!os_log_type_enabled(qword_154A8, OS_LOG_TYPE_DEFAULT))
                                                                  {
                                                                    goto LABEL_75;
                                                                  }

                                                                  *buf = 138543362;
                                                                  *&buf[4] = v31;
                                                                  v28 = "Registered (with reuse): %{public}@";
                                                                  v57 = v74;
                                                                  goto LABEL_74;
                                                                }

                                                                goto LABEL_71;
                                                              }

LABEL_68:
                                                              v56 = qword_154A0;
                                                              if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_DEFAULT))
                                                              {
                                                                *buf = 138543618;
                                                                *&buf[4] = v31;
                                                                *&buf[12] = 2114;
                                                                *&buf[14] = v30;
                                                                _os_log_impl(&dword_0, v56, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ does not match activity with name %{public}@", buf, 0x16u);
                                                              }

                                                              goto LABEL_71;
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_68;
  }

LABEL_76:
}

CTSActivity *sub_18F8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) != &_xpc_type_dictionary)
  {
    sub_8AC8();
  }

  v4 = objc_alloc_init(CTSActivity);
  v5 = [NSString stringWithUTF8String:a1];
  [(CTSActivity *)v4 setName:v5];

  if (xpc_dictionary_get_BOOL(v3, XPC_ACTIVITY_POST_INSTALL))
  {
    v6 = [(CTSActivity *)v4 name];
    *buf = 0;
    v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.xpc.activity2"];
    if (!qword_15460)
    {
      if (sysctlbyname_get_data_np())
      {

        goto LABEL_21;
      }

      v57 = [NSString stringWithUTF8String:*buf];
      free(*buf);
      v58 = [v7 stringForKey:@"ProductBuildVersion"];
      if (([v58 isEqualToString:v57] & 1) == 0)
      {
        [v7 removeObjectForKey:@"VersionSpecificActivitiesRun"];
        [v7 setObject:v57 forKey:@"ProductBuildVersion"];
      }
    }

    v8 = [v7 arrayForKey:@"VersionSpecificActivitiesRun"];
    v9 = [v8 containsObject:v6];

    if ((v9 & 1) == 0)
    {
      [(CTSActivity *)v4 setPost_install:1];
      goto LABEL_6;
    }

LABEL_21:
    v20 = 0;
    goto LABEL_120;
  }

LABEL_6:
  string = xpc_dictionary_get_string(v3, XPC_ACTIVITY_PRIORITY);
  if (!string || (v11 = string, !strcmp(string, XPC_ACTIVITY_PRIORITY_MAINTENANCE)))
  {
    [(CTSActivity *)v4 setPriority:0];
  }

  else
  {
    if (strcmp(v11, XPC_ACTIVITY_PRIORITY_UTILITY))
    {
      v12 = qword_154A0;
      if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        v14 = [(CTSActivity *)v4 name];
        *buf = 138543874;
        *&buf[4] = v14;
        v77 = 2080;
        v78 = XPC_ACTIVITY_PRIORITY_UTILITY;
        v79 = 2080;
        v80 = XPC_ACTIVITY_PRIORITY_MAINTENANCE;
        _os_log_error_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%{public}@: permissible values for priority are %s or %s", buf, 0x20u);
      }

      goto LABEL_21;
    }

    [(CTSActivity *)v4 setPriority:1];
    [(CTSActivity *)v4 setAllow_battery:1];
  }

  v15 = xpc_dictionary_get_value(v3, XPC_ACTIVITY_ALLOW_BATTERY);
  v16 = v15;
  if (v15)
  {
    [(CTSActivity *)v4 setAllow_battery:xpc_BOOL_get_value(v15)];
  }

  v17 = xpc_dictionary_get_value(v3, XPC_ACTIVITY_INTERVAL);
  [(CTSActivity *)v4 setInterval:sub_27CC(v17)];

  if ([(CTSActivity *)v4 interval]>= 1)
  {
    if ([(CTSActivity *)v4 post_install])
    {
      v18 = qword_154A0;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(CTSActivity *)v4 name];
        *buf = 138543362;
        *&buf[4] = v19;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: postinstall activites are not allowed to repeat; interval property ignored.", buf, 0xCu);
      }
    }

    else
    {
      [(CTSActivity *)v4 setDelay:[(CTSActivity *)v4 interval]/ 2];
      v21 = [(CTSActivity *)v4 interval];
      v22 = v21 + (v21 >> 63);
      v23 = [(CTSActivity *)v4 interval];
      v24 = v23 & 1;
      if (v23 < 0)
      {
        v24 = -v24;
      }

      [(CTSActivity *)v4 setGrace_period:v24 + (v22 >> 1)];
      [(CTSActivity *)v4 setRepeating:1];
    }
  }

  v25 = xpc_dictionary_get_value(v3, XPC_ACTIVITY_DELAY);

  if (v25)
  {
    [(CTSActivity *)v4 setDelay:sub_27CC(v25)];
  }

  v26 = xpc_dictionary_get_value(v3, XPC_ACTIVITY_RANDOM_INITIAL_DELAY);

  if (v26)
  {
    [(CTSActivity *)v4 setRandom_initial_delay:sub_27CC(v26)];
  }

  v27 = xpc_dictionary_get_value(v3, XPC_ACTIVITY_GRACE_PERIOD);

  if (v27)
  {
    [(CTSActivity *)v4 setGrace_period:sub_27CC(v27)];
  }

  v28 = xpc_dictionary_get_value(v3, XPC_ACTIVITY_REPEATING);

  if (v28)
  {
    if ([(CTSActivity *)v4 post_install])
    {
      v29 = qword_154A0;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(CTSActivity *)v4 name];
        *buf = 138543362;
        *&buf[4] = v30;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: postinstall activites are not allowed to repeat; repeating property ignored.", buf, 0xCu);
      }
    }

    else
    {
      [(CTSActivity *)v4 setRepeating:xpc_BOOL_get_value(v28)];
    }
  }

  if ([(CTSActivity *)v4 repeating]&& ![(CTSActivity *)v4 interval])
  {
    if (![(CTSActivity *)v4 delay]&& ![(CTSActivity *)v4 grace_period])
    {
      v31 = qword_154A0;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [(CTSActivity *)v4 name];
        *buf = 138543362;
        *&buf[4] = v32;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "BUG IN %{public}@? None of interval, delay, grace period set for repeating task", buf, 0xCu);
      }

      [(CTSActivity *)v4 setGrace_period:172800];
    }

    [(CTSActivity *)v4 setInterval:[(CTSActivity *)v4 delay]+ [(CTSActivity *)v4 grace_period]];
  }

  [(CTSActivity *)v4 setExpected_duration:xpc_dictionary_get_int64(v3, XPC_ACTIVITY_EXPECTED_DURATION)];
  v33 = xpc_dictionary_get_value(v3, XPC_ACTIVITY_DUET_ATTRIBUTE_NAME);

  if (v33)
  {
    if (xpc_get_type(v33) == &_xpc_type_string)
    {
      string_ptr = xpc_string_get_string_ptr(v33);
      if (string_ptr)
      {
        v35 = [NSString stringWithUTF8String:string_ptr];
        [(CTSActivity *)v4 setBundle_id:v35];
      }
    }
  }

  v36 = xpc_dictionary_get_array(v3, XPC_ACTIVITY_DUET_RELATED_APPLICATIONS);
  v37 = v36;
  if (v36 && xpc_get_type(v36) == &_xpc_type_array)
  {
    v38 = _CFXPCCreateCFObjectFromXPCObject();
    [(CTSActivity *)v4 setRelated_applications:v38];
  }

  v39 = xpc_dictionary_get_array(v3, XPC_ACTIVITY_INVOLVED_PROCESSES);
  v40 = v39;
  if (v39 && xpc_get_type(v39) == &_xpc_type_array)
  {
    v41 = _CFXPCCreateCFObjectFromXPCObject();
    [(CTSActivity *)v4 setInvolved_processes:v41];
  }

  v42 = xpc_dictionary_get_value(v3, XPC_ACTIVITY_RUN_WHEN_APP_FOREGROUNDED);

  if (v42)
  {
    v43 = [(CTSActivity *)v4 related_applications];
    if ([v43 count])
    {
      type = xpc_get_type(v42);

      if (type == &_xpc_type_BOOL)
      {
        [(CTSActivity *)v4 setRunOnAppForeground:xpc_BOOL_get_value(v42)];
      }
    }

    else
    {
    }
  }

  v75 = v37;
  v45 = xpc_dictionary_get_value(v3, XPC_ACTIVITY_USER_REQUESTED_BACKUP_TASK);

  if (v45)
  {
    [(CTSActivity *)v4 setUser_requested_backup_task:xpc_BOOL_get_value(v45)];
  }

  v46 = xpc_dictionary_get_dictionary(v3, XPC_ACTIVITY_NETWORK_TRANSFER_ENDPOINT);
  v47 = v46;
  if (v46 && xpc_get_type(v46) == &_xpc_type_dictionary)
  {
    v48 = nw_endpoint_create_from_dictionary();
    [(CTSActivity *)v4 setNetwork_endpoint:v48];
  }

  v49 = xpc_dictionary_get_dictionary(v3, XPC_ACTIVITY_NETWORK_TRANSFER_PARAMETERS);
  v50 = v49;
  if (v49 && xpc_get_type(v49) == &_xpc_type_dictionary)
  {
    v51 = nw_parameters_create_from_dictionary();
    [(CTSActivity *)v4 setNetwork_parameters:v51];
  }

  if (xpc_dictionary_get_BOOL(v3, XPC_ACTIVITY_REQUIRES_BUDDY_COMPLETE))
  {
    [(CTSActivity *)v4 setRequires_buddy_complete:1];
  }

  v52 = xpc_dictionary_get_value(v3, XPC_ACTIVITY_GROUP_NAME);

  if (v52)
  {
    if (xpc_get_type(v52) == &_xpc_type_string)
    {
      v53 = xpc_string_get_string_ptr(v52);
      if (v53)
      {
        v54 = [NSString stringWithUTF8String:v53];
        [(CTSActivity *)v4 setGroup_name:v54];

        v55 = xpc_dictionary_get_value(v3, XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT);

        if (v55)
        {
          v56 = sub_27CC(v55);
          v52 = v55;
        }

        else
        {
          v52 = 0;
          v56 = 1;
        }

        [(CTSActivity *)v4 setGroup_concurrency_limit:v56];
      }
    }
  }

  [(CTSActivity *)v4 setRequires_screen_sleep:xpc_dictionary_get_BOOL(v3, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP)];
  [(CTSActivity *)v4 setRequires_significant_user_inactivity:xpc_dictionary_get_BOOL(v3, XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY)];
  [(CTSActivity *)v4 setPower_nap:xpc_dictionary_get_BOOL(v3, XPC_ACTIVITY_POWER_NAP)];
  [(CTSActivity *)v4 setApp_refresh:xpc_dictionary_get_BOOL(v3, XPC_ACTIVITY_APP_REFRESH)];
  [(CTSActivity *)v4 setPrevents_device_sleep:xpc_dictionary_get_BOOL(v3, XPC_ACTIVITY_PREVENT_DEVICE_SLEEP)];
  [(CTSActivity *)v4 setMemory_intensive:xpc_dictionary_get_BOOL(v3, XPC_ACTIVITY_MEMORY_INTENSIVE)];
  [(CTSActivity *)v4 setCpu_intensive:xpc_dictionary_get_BOOL(v3, XPC_ACTIVITY_CPU_INTENSIVE)];
  [(CTSActivity *)v4 setDisk_intensive:xpc_dictionary_get_BOOL(v3, XPC_ACTIVITY_DISK_INTENSIVE)];
  [(CTSActivity *)v4 setRequires_inexpensive_network:xpc_dictionary_get_BOOL(v3, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)];
  v59 = xpc_dictionary_get_BOOL(v3, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY) || [(CTSActivity *)v4 requires_inexpensive_network];
  [(CTSActivity *)v4 setRequires_network_connectivity:v59];
  v60 = xpc_dictionary_get_string(v3, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION);
  v62 = 0;
  if (v60)
  {
    v61 = v60;
    if (!strcmp(v60, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION_UPLOAD) || !strcmp(v61, XPC_ACTIVITY_NETWORK_TRANSFER_BIDIRECTIONAL))
    {
      v62 = 1;
    }
  }

  int64 = xpc_dictionary_get_int64(v3, XPC_ACTIVITY_NETWORK_TRANSFER_SIZE);
  v64 = xpc_dictionary_get_int64(v3, XPC_ACTIVITY_NETWORK_DOWNLOAD_SIZE);
  v65 = xpc_dictionary_get_int64(v3, XPC_ACTIVITY_NETWORK_UPLOAD_SIZE);
  if (v62)
  {
    [(CTSActivity *)v4 setExpected_network_download_size_bytes:v64];
    if (int64 > v65)
    {
      v65 = int64;
    }
  }

  else
  {
    if (int64 <= v64)
    {
      v66 = v64;
    }

    else
    {
      v66 = int64;
    }

    [(CTSActivity *)v4 setExpected_network_download_size_bytes:v66];
  }

  [(CTSActivity *)v4 setExpected_network_upload_size_bytes:v65];
  [(CTSActivity *)v4 setMay_reboot_device:xpc_dictionary_get_BOOL(v3, XPC_ACTIVITY_MAY_REBOOT_DEVICE)];
  [(CTSActivity *)v4 setCommunicates_with_paired_device:xpc_dictionary_get_BOOL(v3, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE)];
  v67 = xpc_dictionary_get_value(v3, XPC_ACTIVITY_DESIRED_MOTION_STATE);

  if (v67)
  {
    if (xpc_get_type(v67) == &_xpc_type_string)
    {
      v68 = xpc_string_get_string_ptr(v67);
      if (v68)
      {
        v69 = v68;
        v70 = XPC_ACTIVITY_MOTION_STATE_STATIONARY;
        if (!strcmp(v68, XPC_ACTIVITY_MOTION_STATE_STATIONARY) || (v70 = XPC_ACTIVITY_MOTION_STATE_WALKING, !strcmp(v69, XPC_ACTIVITY_MOTION_STATE_WALKING)) || (v70 = XPC_ACTIVITY_MOTION_STATE_RUNNING, !strcmp(v69, XPC_ACTIVITY_MOTION_STATE_RUNNING)) || (v70 = XPC_ACTIVITY_MOTION_STATE_CYCLING, !strcmp(v69, XPC_ACTIVITY_MOTION_STATE_CYCLING)) || (v70 = XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE, !strcmp(v69, XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE)) || (v70 = XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE_MOVING, !strcmp(v69, XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE_MOVING)) || (v70 = XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE_STATIONARY, !strcmp(v69, XPC_ACTIVITY_MOTION_STATE_AUTOMOTIVE_STATIONARY)))
        {
          [(CTSActivity *)v4 setDesired_motion_state:v70];
        }
      }
    }
  }

  [(CTSActivity *)v4 setDuet_power_budgeted:xpc_dictionary_get_BOOL(v3, XPC_ACTIVITY_USES_DUET_POWER_BUDGETING)];
  [(CTSActivity *)v4 setData_budgeted:xpc_dictionary_get_BOOL(v3, XPC_ACTIVITY_USES_DATA_BUDGETING)];
  [(CTSActivity *)v4 setSchedule_rtc_wake:xpc_dictionary_get_BOOL(v3, XPC_ACTIVITY_SHOULD_WAKE_DEVICE)];
  if (xpc_dictionary_get_BOOL(v3, XPC_ACTIVITY_REQUIRES_CLASS_A))
  {
    v71 = 1;
  }

  else if (xpc_dictionary_get_BOOL(v3, XPC_ACTIVITY_REQUIRES_CLASS_B))
  {
    v71 = 2;
  }

  else
  {
    v72 = xpc_dictionary_get_value(v3, XPC_ACTIVITY_REQUIRES_CLASS_C);

    if (v72)
    {
      v71 = 3;
      if (xpc_get_type(v72) == &_xpc_type_BOOL)
      {
        if (xpc_BOOL_get_value(v72))
        {
          v71 = 3;
        }

        else
        {
          v71 = 4;
        }
      }
    }

    else
    {
      v71 = 3;
    }

    v67 = v72;
  }

  [(CTSActivity *)v4 setRequires_protection_class:v71];
  v73 = xpc_dictionary_get_value(v3, XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA);
  [(CTSActivity *)v4 setDas_data:v73];

  [(CTSActivity *)v4 setSeqno:xpc_dictionary_get_uint64(v3, XPC_ACTIVITY_SEQUENCE_NUMBER)];
  [(CTSActivity *)v4 setState:1];
  [(CTSActivity *)v4 loadBaseTime];
  v20 = v4;

LABEL_120:

  return v20;
}

uint64_t sub_27CC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    type = xpc_get_type(result);
    if (type == &_xpc_type_int64)
    {
      value = xpc_int64_get_value(v1);
      result = value & ~(value >> 63);
    }

    else if (type == &_xpc_type_uint64)
    {
      result = xpc_uint64_get_value(v1);
    }

    else if (type == &_xpc_type_double)
    {
      v4 = xpc_double_get_value(v1);
      v5 = llround(v4);
      if (v4 <= 0.0)
      {
        result = 0;
      }

      else
      {
        result = v5;
      }
    }

    else
    {
      result = 0;
    }
  }

  if (result >= 0x3FFFFFFFFFFFFFFFLL)
  {
    return 0x3FFFFFFFFFFFFFFFLL;
  }

  return result;
}

void sub_2A58()
{
  if (!qword_15400)
  {
    v0 = CFPreferencesCopyAppValue(@"ActivityBaseDates", @"com.apple.xpc.activity2");
    if (v0)
    {
      v1 = v0;
      qword_15400 = CFDictionaryCreateMutableCopy(0, 0, v0);
      CFRelease(v1);
      sub_5118(qword_15400);
    }

    else
    {
      qword_15400 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    CFPreferencesSetAppValue(@"DateCompleted", 0, @"com.apple.xpc.activity2");
    CFPreferencesSetAppValue(@"DateSubmitted", 0, @"com.apple.xpc.activity2");
    v2 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_15498);
    v3 = qword_153F8;
    qword_153F8 = v2;

    dispatch_source_set_event_handler(qword_153F8, &stru_10838);
    v4 = qword_153F8;
    v5 = dispatch_time(0, 86400000000000);
    dispatch_source_set_timer(v4, v5, 0x4E94914F0000uLL, 0x13A52453C000uLL);
    v6 = qword_153F8;

    dispatch_activate(v6);
  }
}

void sub_2BAC(uint64_t a1)
{
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v1 = +[NSDate distantFuture];
    [v1 timeIntervalSinceReferenceDate];
  }

  else
  {
    clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    CFAbsoluteTimeGetCurrent();
  }
}

void sub_2CBC(void *a1, double a2)
{
  v3 = a1;
  if (byte_15408 != 1)
  {
    goto LABEL_14;
  }

  v4 = [_DASActivity activityWithCTSActivity:v3];
  if (a2 > 0.0 && ([v3 cpu_intensive] & 1) == 0 && (objc_msgSend(v3, "memory_intensive") & 1) == 0 && (objc_msgSend(v3, "disk_intensive") & 1) == 0)
  {
    v6 = [NSDate dateWithTimeIntervalSinceNow:a2];
    v14 = [v4 startAfter];
    if (v14)
    {
      v15 = [v4 startAfter];
      v16 = [v15 laterDate:v6];
      [v4 setStartAfter:v16];
    }

    else
    {
      [v4 setStartAfter:v6];
    }

    v17 = [v4 startBefore];
    v18 = [v4 startAfter];
    v19 = [v17 laterDate:v18];
    [v4 setStartBefore:v19];

    v20 = qword_154A0;
    if (!os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v7 = v20;
    v21 = [v3 scheduler_activity];
    v22 = 134218498;
    v23 = a2;
    v24 = 2114;
    v25 = v21;
    v26 = 2048;
    v27 = v3;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Submitting with cool off %f seconds: %{public}@ (CTS Activity %p)", &v22, 0x20u);

LABEL_8:
LABEL_9:

    goto LABEL_10;
  }

  v5 = qword_154A0;
  if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [v3 scheduler_activity];
    v22 = 138543618;
    v23 = *&v7;
    v24 = 2048;
    v25 = v3;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Submitting: %{public}@ (CTS Activity %p)", &v22, 0x16u);
    goto LABEL_8;
  }

LABEL_10:
  [v3 setScheduler_activity:v4];
  v8 = [v3 group_name];

  if (v8)
  {
    v9 = [v3 group_name];
    v10 = +[_DASActivityGroup groupWithName:maxConcurrent:](_DASActivityGroup, "groupWithName:maxConcurrent:", v9, [v3 group_concurrency_limit]);

    v11 = qword_154B0;
    v12 = [v3 scheduler_activity];
    [v11 submitActivity:v12 inGroup:v10];
  }

  else
  {
    v13 = qword_154B0;
    v10 = [v3 scheduler_activity];
    [v13 submitActivity:v10];
  }

LABEL_14:
}

void sub_3244(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (byte_15408 != 1 || ([v1 name], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "hasPrefix:", @"com.apple.xpc.activity.test."), v3, v4))
  {
    v5 = sub_46C8();
    v6 = [v2 eligibleTime];
    v7 = v6 - v5 < 1000000000 || v6 < v5;
    v8 = v5 + 1000000000;
    if (!v7)
    {
      v8 = v6;
    }

    if (v8 < qword_153E8)
    {
      qword_153E8 = v8;
      v9 = qword_15438;
      v10 = v8 - v5;
      v11 = dispatch_walltime(0, v8 - v5);
      dispatch_source_set_timer(v9, v11, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      v12 = qword_154A0;
      if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
      {
        v13 = 138543618;
        v14 = v2;
        v15 = 2048;
        v16 = v10 / 0x3B9ACA00;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Scheduling activity timer for [%{public}@] in %lld seconds", &v13, 0x16u);
      }
    }
  }
}

void sub_33C4(void *a1)
{
  v5 = a1;
  sub_3488();
  v1 = [v5 peer];

  if (v1)
  {
    v2 = [v5 peer];
    xpc_connection_cancel(v2);
  }

  [v5 setPeer:0];
  v3 = [v5 connection];

  if (v3)
  {
    v4 = [v5 connection];
    xpc_connection_cancel(v4);
  }

  [v5 setConnection:0];
}

void sub_3488(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = qword_154A0;
  if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [v5 name];
    *v50 = 138543874;
    *&v50[4] = v8;
    *&v50[12] = 2048;
    *&v50[14] = [v5 state];
    *&v50[22] = 2048;
    v51 = a2;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%{public}@ state change %ld -> %ld", v50, 0x20u);
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v28 = qword_154A8;
      if (os_log_type_enabled(qword_154A8, OS_LOG_TYPE_DEFAULT))
      {
        *v50 = 138543362;
        *&v50[4] = v5;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Deferring: %{public}@", v50, 0xCu);
      }

      if ((([v5 power_nap] & 1) != 0 || objc_msgSend(v5, "app_refresh")) && IOPMIsADarkWake() && IOPMAllowsBackgroundTask())
      {
        [v5 resetBaseTime];
      }

      sub_3244(v5);
      sub_3DD0(v5);
      sub_2CBC(v5, 300.0);
      a2 = 3;
    }

    else
    {
      if (a2 != 5)
      {
        goto LABEL_64;
      }

      v17 = qword_154A8;
      if (os_log_type_enabled(qword_154A8, OS_LOG_TYPE_DEFAULT))
      {
        *v50 = 138543362;
        *&v50[4] = v5;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Completed: %{public}@", v50, 0xCu);
      }

      if (byte_15408 == 1)
      {
        v18 = [v5 scheduler_activity];
        [v18 setCompletionStatus:a3];
      }

      v19 = v5;
      v20 = v19;
      if (byte_15408 == 1)
      {
        v21 = [v19 scheduler_activity];

        if (v21)
        {
          v22 = [v20 das_started];
          v23 = qword_154A0;
          if (v22)
          {
            if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
            {
              v24 = v23;
              v25 = [v20 scheduler_activity];
              *v50 = 138543618;
              *&v50[4] = v25;
              *&v50[12] = 2048;
              *&v50[14] = v20;
              _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Completing: %{public}@ (CTS Activity %p)", v50, 0x16u);
            }

            v26 = qword_154B0;
            v27 = [v20 scheduler_activity];
            [v26 activityCompleted:v27];

            [v20 setScheduler_activity:0];
          }

          else
          {
            if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_DEFAULT))
            {
              v37 = v23;
              v38 = [v20 name];
              *v50 = 138543618;
              *&v50[4] = v38;
              *&v50[12] = 2048;
              *&v50[14] = v20;
              _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "Trying to complete DASActivity for %{public}@ (CTS Activity %p) but it never started, likely forced. Canceling instead.", v50, 0x16u);
            }

            sub_3DD0(v20);
          }
        }
      }

      [v20 advanceBaseTime];
      if (IOPMIsADarkWake() && IOPMAllowsBackgroundTask())
      {
        [v20 setBgwake_count:{objc_msgSend(v20, "bgwake_count") + 1}];
      }

      if ([v20 post_install])
      {
        v39 = v20;
        v40 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.xpc.activity2"];
        v41 = [v40 arrayForKey:@"VersionSpecificActivitiesRun"];
        v42 = v41;
        if (v41)
        {
          v43 = [v41 mutableCopy];
        }

        else
        {
          v43 = [[NSMutableArray alloc] initWithCapacity:1];
        }

        v44 = v43;
        v45 = [v39 name];

        [v44 addObject:v45];
        [v40 setObject:v44 forKey:@"VersionSpecificActivitiesRun"];
      }

      if ([v20 repeating])
      {
        v46 = qword_154A8;
        if (os_log_type_enabled(qword_154A8, OS_LOG_TYPE_DEFAULT))
        {
          *v50 = 138543362;
          *&v50[4] = v20;
          _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "Rescheduling: %{public}@", v50, 0xCu);
        }

        sub_3244(v20);
        [v20 setEligible:0];
        sub_2CBC(v20, 0.0);
        a2 = 1;
      }

      else
      {
        a2 = 5;
      }
    }
  }

  else
  {
    if (a2 != -1)
    {
      if (a2 == 2)
      {
        [v5 setConfirmed_run:0];
        v9 = qword_154A8;
        if (os_log_type_enabled(qword_154A8, OS_LOG_TYPE_DEFAULT))
        {
          *v50 = 138543362;
          *&v50[4] = v5;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Initiating: %{public}@", v50, 0xCu);
        }

        [v5 markStarted:sub_46C8()];
        if ([v5 schedule_rtc_wake])
        {
          if ([v5 power_assertion])
          {
            _os_assumes_log();
          }

          if ([v5 pid])
          {
            _os_assumes_log();
          }

          v10 = [v5 name];
          [v5 setPower_assertion:{sub_5304(objc_msgSend(v10, "UTF8String"))}];

          v11 = qword_154A0;
          if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v11;
            v13 = [v5 power_assertion];
            *v50 = 138543618;
            *&v50[4] = v5;
            *&v50[12] = 1024;
            *&v50[14] = v13;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Created temporary power assertion for %{public}@: %d", v50, 0x12u);
          }
        }

        v14 = xpc_dictionary_create(0, 0, 0);
        if ([v5 seqno])
        {
          xpc_dictionary_set_uint64(v14, XPC_ACTIVITY_SEQUENCE_NUMBER, [v5 seqno]);
        }

        if (![v5 unmanaged])
        {
          v29 = v5;
          if (![v29 unmanaged])
          {
            v30 = [v29 connection];

            if (!v30)
            {
              v31 = xpc_connection_create(0, qword_15498);
              [v29 setConnection:v31];

              v32 = [v29 connection];
              *v50 = _NSConcreteStackBlock;
              *&v50[8] = 3221225472;
              *&v50[16] = sub_78D0;
              v51 = &unk_108C8;
              v33 = v29;
              v52 = v33;
              xpc_connection_set_event_handler(v32, v50);

              v34 = [v33 connection];
              xpc_connection_activate(v34);
            }

            v35 = [v29 connection];
            v36 = xpc_endpoint_create(v35);

            xpc_dictionary_set_value(v14, XPC_ACTIVITY_REPLY_ENDPOINT, v36);
            [v29 token];
            xpc_event_provider_token_fire();
          }

          sub_8AC8();
        }

        xpc_dictionary_set_BOOL(v14, "run", 1);
        v15 = [v5 name];
        xpc_dictionary_set_string(v14, "name", [v15 UTF8String]);

        v16 = [v5 peer];
        xpc_connection_send_notification();

        a2 = 2;
      }

      goto LABEL_64;
    }

    sub_3DD0(v5);
    if ([v5 state] == &dword_0 + 2)
    {
      [v5 resetBaseTime];
    }

    a2 = -1;
  }

  if ([v5 state] == &dword_0 + 2)
  {
    [v5 markStopped:sub_46C8()];
  }

LABEL_64:
  [v5 setState:a2];
  if ([v5 state] != &dword_0 + 2 && objc_msgSend(v5, "power_assertion"))
  {
    v47 = qword_154A0;
    if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
    {
      v48 = v47;
      v49 = [v5 power_assertion];
      *v50 = 67109378;
      *&v50[4] = v49;
      *&v50[8] = 2114;
      *&v50[10] = v5;
      _os_log_impl(&dword_0, v48, OS_LOG_TYPE_INFO, "releasing power assertion: %d for %{public}@", v50, 0x12u);
    }

    j__IOPMAssertionRelease([v5 power_assertion]);
    [v5 setPower_assertion:0];
  }
}

void sub_3DD0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (byte_15408 == 1)
  {
    v3 = [v1 scheduler_activity];

    if (v3)
    {
      v4 = qword_154A0;
      if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
      {
        v5 = v4;
        v6 = [v2 scheduler_activity];
        v9 = 138543618;
        v10 = v6;
        v11 = 2048;
        v12 = v2;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Canceling: %{public}@ (CTS Activity %p)", &v9, 0x16u);
      }

      v7 = qword_154B0;
      v8 = [v2 scheduler_activity];
      [v7 activityCanceled:v8];

      [v2 setScheduler_activity:0];
    }
  }
}

uint64_t sub_3FDC(void *a1)
{
  v1 = a1;
  if ([v1 random_initial_delay])
  {
    v2 = [v1 random_initial_delay];
    v3 = arc4random_uniform(v2);
    v4 = qword_154A0;
    if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67240448;
      v7[1] = v3;
      v8 = 1026;
      v9 = v2;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Adding random initial delay %{public}d/%{public}d", v7, 0xEu);
    }

    v5 = 1000000000 * v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_40CC(id a1)
{
  v1 = qword_154A0;
  if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_INFO, "evaluating activities", buf, 2u);
  }

  sub_45A4();
  v31.tv_sec = 0;
  *&v31.tv_usec = 0;
  gettimeofday(&v31, 0);
  if (dword_15458 < 1)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v3 = [qword_15418 copy];
    v4 = [v3 countByEnumeratingWithState:&v27 objects:buf count:16];
    if (!v4)
    {
      goto LABEL_44;
    }

    v5 = v4;
    v6 = *v28;
    key = XPC_ACTIVITY_SEQUENCE_NUMBER;
    while (1)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v9 = [v8 das_eligible];
        v10 = [v8 eligibleTime];
        if (v10 <= sub_46C8())
        {
          if (byte_15408 != 1)
          {
            v16 = qword_154A0;
            v9 = &dword_0 + 1;
            if (!os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
            {
              goto LABEL_19;
            }

            *v33 = 138543362;
            v34 = v8;
            v14 = v16;
            v15 = "Activity %{public}@ is eligible to run.";
            goto LABEL_18;
          }

          v11 = [v8 name];
          v12 = [v11 hasPrefix:@"com.apple.xpc.activity.test."];

          if (v12)
          {
            v13 = qword_154A0;
            v9 = &dword_0 + 1;
            if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
            {
              *v33 = 138543362;
              v34 = v8;
              v14 = v13;
              v15 = "Debug activity %{public}@ is eligible to run.";
LABEL_18:
              _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, v15, v33, 0xCu);
            }
          }
        }

LABEL_19:
        v17 = [v8 state];
        if (v17 == &dword_0 + 3)
        {
          goto LABEL_22;
        }

        if (v17 != &dword_0 + 2)
        {
          if (v17 != &dword_0 + 1)
          {
            goto LABEL_39;
          }

LABEL_22:
          if (v9)
          {
            sub_3488(v8, 2, 0);
          }

          goto LABEL_39;
        }

        if (v9 != [v8 eligible])
        {
          v18 = [v8 peer];

          v19 = qword_154A8;
          v20 = os_log_type_enabled(qword_154A8, OS_LOG_TYPE_DEFAULT);
          if (v18)
          {
            if (v20)
            {
              *v33 = 138543618;
              v21 = "false";
              if (v9)
              {
                v21 = "true";
              }

              v34 = v8;
              v35 = 2080;
              v36 = v21;
              _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Updating: %{public}@ (eligible=%s)", v33, 0x16u);
            }

            v22 = xpc_dictionary_create(0, 0, 0);
            xpc_dictionary_set_BOOL(v22, "eligible", v9);
            if ([v8 unmanaged])
            {
              v23 = [v8 name];
              xpc_dictionary_set_string(v22, "name", [v23 UTF8String]);
            }

            if ([v8 seqno])
            {
              xpc_dictionary_set_uint64(v22, key, [v8 seqno]);
            }

            v24 = [v8 peer];
            xpc_connection_send_notification();
          }

          else if (v20)
          {
            *v33 = 138543618;
            v25 = "false";
            if (v9)
            {
              v25 = "true";
            }

            v34 = v8;
            v35 = 2080;
            v36 = v25;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Updating (deferred): %{public}@ (eligible=%s)", v33, 0x16u);
          }
        }

LABEL_39:
        [v8 setEligible:v9];

        if ([v8 state] == &dword_0 + 1 || objc_msgSend(v8, "state") == &dword_0 + 3)
        {
          sub_3244(v8);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v27 objects:buf count:16];
      if (!v5)
      {
LABEL_44:

        return;
      }
    }
  }

  v2 = qword_154A0;
  if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "activities are suspended", buf, 2u);
  }
}

void sub_45A4()
{
  v0 = qword_15450;
  if (qword_15450)
  {
    v1 = qword_154A0;
    if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
    {
      v4 = 138543362;
      v5 = qword_15450;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_INFO, "Reaping zombie: %{public}@", &v4, 0xCu);
      v0 = qword_15450;
    }

    sub_33C4(v0);
    v2 = qword_154A0;
    if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
    {
      v4 = 138543362;
      v5 = qword_15450;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "REAPED zombie: %{public}@", &v4, 0xCu);
    }

    v3 = qword_15450;
    qword_15450 = 0;
  }
}

__uint64_t sub_46D8(uint64_t a1)
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a1 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = time(0);
    return a1 - clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) + 1000000000 * v3;
  }

  return result;
}

void sub_4A54(void *a1, uint64_t a2)
{
  key = a1;
  sub_2A58();
  if (key)
  {
    sub_2BAC(a2);
    v4 = CFDateCreate(0, v3);
    if (v4)
    {
      v5 = v4;
      CFDictionarySetValue(qword_15400, key, v4);
      CFRelease(v5);
    }

    CFPreferencesSetAppValue(@"ActivityBaseDates", qword_15400, @"com.apple.xpc.activity2");
  }
}

BOOL sub_4C2C(void *a1, uint64_t a2)
{
  v3 = a1;
  if (qword_153F0)
  {
    sub_8AC8();
  }

  v4 = v3;
  v5 = mach_host_self();
  port[0] = 0;
  if (!host_get_special_port(v5, -1, 1, port))
  {
    mach_port_deallocate(mach_task_self_, v5);
    v5 = port[0];
  }

  name = 0;
  v6 = 0;
  if (!mach_port_allocate(mach_task_self_, 1u, &name))
  {
    v7 = dispatch_source_create(&_dispatch_source_type_mach_recv, name, 0, v4);
    v8 = qword_153F0;
    qword_153F0 = v7;

    if (!qword_153F0)
    {
      sub_8AC8();
    }

    *port = 0;
    v18 = port;
    v19 = 0x2020000000;
    v20 = 0;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v16[3] = sub_4E3C();
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_4EA8;
    handler[3] = &unk_107F8;
    handler[4] = v16;
    handler[5] = port;
    handler[6] = a2;
    v14 = name;
    v15 = v5;
    dispatch_source_set_event_handler(qword_153F0, handler);
    dispatch_activate(qword_153F0);
    v9 = host_request_notification(v5, 1, name);
    v6 = v9 == 0;
    if (!v9)
    {
      v10 = qword_154A0;
      if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Time Change: Registered for time change notifications", v12, 2u);
      }
    }

    _Block_object_dispose(v16, 8);
    _Block_object_dispose(port, 8);
  }

  return v6;
}

void sub_4E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 88), 8);
  _Unwind_Resume(a1);
}

unint64_t sub_4E3C()
{
  v4 = 0;
  v2 = 0;
  v3 = 0;
  if (mach_get_times())
  {
    sub_8AE4();
  }

  v1 = 0;
  mach_timebase_info(&v1);
  return v3 - v4 * v1.numer / v1.denom + 1000000000 * v2;
}

uint64_t sub_4EA8(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 56);
  DWORD1(v13) = 24;
  HIDWORD(v13) = v2;
  v3 = mach_msg_receive(&v13);
  v4 = v3;
  if (DWORD1(v14) == 951)
  {
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  _os_assumes_log();
  if (!v4)
  {
LABEL_3:
    mach_msg_destroy(&v13);
  }

LABEL_4:
  v5 = sub_4E3C();
  *(*(*(a1 + 40) + 8) + 24) += v5 - *(*(*(a1 + 32) + 8) + 24);
  *(*(*(a1 + 32) + 8) + 24) = v5;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 >= 0)
  {
    v7 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v7 = -v6;
  }

  v8 = qword_154A0;
  v9 = os_log_type_enabled(qword_154A0, OS_LOG_TYPE_DEFAULT);
  if (v7 < 0x6FC23AC01)
  {
    if (v9)
    {
      v11 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 134218240;
      v16 = v11 / 1000000000;
      v17 = 2048;
      v18 = v11 % 1000000000 / 0xF4240uLL;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Time Change: have change of %lld.%03lld seconds, continuing to accumulate.", buf, 0x16u);
    }
  }

  else
  {
    if (v9)
    {
      v10 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 134218240;
      v16 = v10 / 1000000000;
      v17 = 2048;
      v18 = v10 % 1000000000 / 0xF4240uLL;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Time Change: accumulated change of %lld.%03lld seconds, resetting activities.", buf, 0x16u);
    }

    (*(a1 + 48))(*(*(*(a1 + 40) + 8) + 24));
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  result = host_request_notification(*(a1 + 60), 1, *(a1 + 56));
  if (result)
  {
    return _os_assumes_log();
  }

  return result;
}

void sub_5118(const __CFDictionary *a1)
{
  if (a1)
  {
    Count = CFDictionaryGetCount(a1);
    if (Count)
    {
      v3 = Count;
      v4 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
      v5 = malloc_type_calloc(v3, 8uLL, 0xC0040B8AA526DuLL);
      CFDictionaryGetKeysAndValues(a1, v4, v5);
      Current = CFAbsoluteTimeGetCurrent();
      v7 = CFAbsoluteTimeGetCurrent();
      if (v3 >= 1)
      {
        v8 = v7 + -4838400.0;
        v9 = v5;
        v10 = v4;
        do
        {
          v11 = CFGetTypeID(*v9);
          TypeID = CFDateGetTypeID();
          v13 = *v10;
          if (v11 == TypeID)
          {
            v14 = CFGetTypeID(*v10);
            if (v14 != CFStringGetTypeID() || (v15 = *v10, v20.length = CFStringGetLength(*v10), v20.location = 0, !CFStringFindWithOptions(v15, @"com.apple.StateReplicator.DuetHandshakeScheduler.", v20, 0, 0)))
            {
              AbsoluteTime = CFDateGetAbsoluteTime(*v9);
              if (AbsoluteTime >= v8)
              {
                if (AbsoluteTime > Current)
                {
                  v17 = CFDateCreate(0, Current - kCFAbsoluteTimeIntervalSince1970);
                  if (v17)
                  {
                    v18 = v17;
                    CFDictionarySetValue(a1, *v10, v17);
                    CFRelease(v18);
                  }
                }

                goto LABEL_11;
              }
            }

            v13 = *v10;
          }

          CFDictionaryRemoveValue(a1, v13);
LABEL_11:
          ++v10;
          ++v9;
          --v3;
        }

        while (v3);
      }

      free(v4);

      free(v5);
    }
  }
}

CFMutableDictionaryRef sub_5304(const char *a1)
{
  AssertionID = 0;
  result = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (result)
  {
    v3 = result;
    cStr = 0;
    asprintf(&cStr, "TEMP:%s", a1);
    if (cStr)
    {
      v4 = CFStringCreateWithCString(0, cStr, 0x8000100u);
      if (v4)
      {
        v5 = v4;
        CFDictionarySetValue(v3, @"AssertName", v4);
        CFRelease(v5);
        free(cStr);
        CFDictionarySetValue(v3, @"PlugInBundleID", @"com.apple.xpc.activity");
        CFDictionarySetValue(v3, @"AssertType", @"PreventUserIdleSystemSleep");
        CFDictionarySetValue(v3, @"TimeoutAction", @"TimeoutActionTurnOff");
        valuePtr = 15;
        v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        if (v6)
        {
          v7 = v6;
          CFDictionarySetValue(v3, @"TimeoutSeconds", v6);
          CFRelease(v7);
          valuePtr = 255;
          v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          if (v8)
          {
            v9 = v8;
            CFDictionarySetValue(v3, @"AssertLevel", v8);
            CFRelease(v9);
            if (IOPMAssertionCreateWithProperties(v3, &AssertionID))
            {
              AssertionID = 0;
            }
          }
        }
      }

      else
      {
        free(cStr);
      }
    }

    CFRelease(v3);
    return AssertionID;
  }

  return result;
}

void sub_5EB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_5EE4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained scheduler_activity];
    v7 = [v3 isEqual:v6];

    if (v7)
    {
      [v5 setDas_eligible:1];
      [v5 setDas_started:1];
      if ([v5 state] == &dword_0 + 2)
      {
        v8 = qword_154A0;
        if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
        {
          v12 = 138543362;
          v13 = v5;
          v9 = "DAS told us to run %{public}@, but it is already running";
LABEL_8:
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, v9, &v12, 0xCu);
        }
      }

      else
      {
        v10 = qword_15448;
        v11 = dispatch_time(0, 50000000);
        dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x2FAF080uLL);
        v8 = qword_154A0;
        if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
        {
          v12 = 138543362;
          v13 = v5;
          v9 = "DAS told us to run %{public}@";
          goto LABEL_8;
        }
      }
    }
  }
}

void sub_6068(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained scheduler_activity];
    v7 = [v3 isEqual:v6];

    if (v7)
    {
      if ([v5 das_eligible])
      {
        [v5 setDas_eligible:0];
        if ([v5 state] == &dword_0 + 1 || objc_msgSend(v5, "state") == &dword_0 + 3)
        {
          sub_3DD0(v5);
          sub_2CBC(v5, 300.0);
        }

        v8 = qword_15448;
        v9 = dispatch_time(0, 50000000);
        dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x2FAF080uLL);
        v10 = qword_154A0;
        if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
        {
          v12 = 138543362;
          v13 = v5;
          v11 = "DAS told us to suspend %{public}@";
LABEL_11:
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, v11, &v12, 0xCu);
        }
      }

      else
      {
        v10 = qword_154A0;
        if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
        {
          v12 = 138543362;
          v13 = v5;
          v11 = "DAS told us to suspend %{public}@, but it isn't eligible";
          goto LABEL_11;
        }
      }
    }
  }
}

void init_cts(uint64_t a1)
{
  byte_15408 = objc_opt_class() != 0;
  qword_15410 = a1;
  v2 = os_log_create("com.apple.xpc.activity", "Internal");
  v3 = qword_154A0;
  qword_154A0 = v2;

  v4 = os_log_create("com.apple.xpc.activity", "Activities");
  v5 = qword_154A8;
  qword_154A8 = v4;

  v6 = objc_alloc_init(NSMutableSet);
  v7 = qword_15418;
  qword_15418 = v6;

  ++dword_15458;
  xpc_event_provider_create();
}

void sub_63F8()
{
  CFPreferencesGetAppBooleanValue(@"DisableSmartPowerNap", @"com.apple.xpc.activity2", 0);
  v0 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, qword_15498);
  v1 = qword_15440;
  qword_15440 = v0;

  dispatch_source_set_event_handler(qword_15440, &stru_10908);
  dispatch_activate(qword_15440);
  v2 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_15498);
  v3 = qword_15448;
  qword_15448 = v2;

  dispatch_source_set_event_handler(qword_15448, &stru_10928);
  dispatch_source_set_timer(qword_15448, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_activate(qword_15448);
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_15498);
  v5 = qword_15438;
  qword_15438 = v4;

  dispatch_source_set_event_handler(qword_15438, &stru_10948);
  dispatch_activate(qword_15438);
  notify_register_dispatch("com.apple.xpc.activity.debug.trigger", &dword_1545C, qword_15498, &stru_10988);
  sub_4C2C(qword_15498, sub_76D8);
  v6 = dword_15458;
  v7 = dword_15458 - 1;
  if (dword_15458 >= 1)
  {
    --dword_15458;
    v6 = v7;
  }

  if (!v6)
  {
    v8 = qword_15448;
    v9 = dispatch_time(0, 50000000);

    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x2FAF080uLL);
  }
}

void sub_65AC(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) != &_xpc_type_error)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_6668;
    handler[3] = &unk_108C8;
    v3 = v2;
    v5 = v3;
    xpc_connection_set_event_handler(v3, handler);
    xpc_connection_set_target_queue(v3, qword_15498);
    xpc_connection_activate(v3);
  }
}

void sub_6668(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    v6 = xpc_dictionary_get_value(v5, "name");
    v7 = v6;
    if (v6 && xpc_get_type(v6) == &_xpc_type_string)
    {
      string_ptr = xpc_string_get_string_ptr(v7);
      v10 = sub_18F8(string_ptr, v5);
      if (v10)
      {
        v11 = qword_154A8;
        if (os_log_type_enabled(qword_154A8, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 138543362;
          *&v16[4] = v10;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Created unmanaged XPC Activity: %{public}@", v16, 0xCu);
        }

        [qword_15418 addObject:v10];
        sub_2CBC(v10, 0.0);
        sub_3244(v10);
        v12 = qword_154A8;
        if (os_log_type_enabled(qword_154A8, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 138543362;
          *&v16[4] = v10;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Registered unmanaged XPC Activity: %{public}@", v16, 0xCu);
        }

        if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
        {
          v13 = xpc_copy_debug_description();
          v14 = qword_154A0;
          if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
          {
            *v16 = 136446466;
            *&v16[4] = string_ptr;
            *&v16[12] = 2082;
            *&v16[14] = v13;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%{public}s: %{public}s", v16, 0x16u);
          }

          free(v13);
        }

        [v10 setUnmanaged:1];
        [v10 setPeer:v4];
        *v16 = _NSConcreteStackBlock;
        *&v16[8] = 3221225472;
        *&v16[16] = sub_7E34;
        v17 = &unk_109B0;
        v18 = v10;
        v19 = v4;
        xpc_connection_set_event_handler(v19, v16);
      }

      else
      {
        v15 = qword_154A0;
        if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_ERROR))
        {
          sub_8B00(string_ptr, v15);
        }
      }
    }

    else
    {
      v8 = qword_154A0;
      if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_ERROR))
      {
        sub_8B78(v8);
      }
    }
  }
}

void sub_6970(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) != &_xpc_type_error)
  {
    v3 = qword_154A0;
    if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      *buf = 67109120;
      pid = xpc_connection_get_pid(v2);
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Control channel connection: %d", buf, 8u);
    }

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_6AB8;
    handler[3] = &unk_108C8;
    v5 = v2;
    v7 = v5;
    xpc_connection_set_event_handler(v5, handler);
    xpc_connection_set_target_queue(v5, qword_15498);
    xpc_connection_activate(v5);
  }
}

void sub_6AB8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_error)
  {
    goto LABEL_108;
  }

  string = xpc_dictionary_get_string(v2, "Command");
  v4 = xpc_dictionary_get_string(v2, "Identifier");
  v5 = qword_154A0;
  if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v59 = string;
    v60 = 2082;
    v61 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Control Channel: %{public}s %{public}s", buf, 0x16u);
  }

  reply = xpc_dictionary_create_reply(v2);
  if (!string)
  {
    goto LABEL_8;
  }

  if (strcmp(string, "Run"))
  {
    if (strcmp(string, "List"))
    {
      if (strcmp(string, "Debug"))
      {
LABEL_8:
        v7 = 22;
        goto LABEL_105;
      }

      xdict = reply;
      xpc_dictionary_get_uint64(v2, "Flags");
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v9 = qword_15418;
      v41 = [v9 countByEnumeratingWithState:&v54 objects:buf count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v55;
        v7 = 2;
        do
        {
          for (i = 0; i != v42; i = i + 1)
          {
            if (*v55 != v43)
            {
              objc_enumerationMutation(v9);
            }

            if (v4)
            {
              v45 = *(*(&v54 + 1) + 8 * i);
              v46 = [v45 name];
              v47 = strcmp([v46 UTF8String], v4);

              if (!v47)
              {
                [v45 setBgtask_debug:1];
                v7 = 0;
              }
            }
          }

          v42 = [v9 countByEnumeratingWithState:&v54 objects:buf count:16];
        }

        while (v42);
      }

      else
      {
        v7 = 2;
      }

      goto LABEL_104;
    }

    v51 = v2;
    xdicta = reply;
    v18 = xpc_array_create(0, 0);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v19 = qword_15418;
    v20 = [v19 countByEnumeratingWithState:&v54 objects:buf count:16];
    if (!v20)
    {
      goto LABEL_86;
    }

    v21 = v20;
    v22 = *v55;
LABEL_27:
    v23 = 0;
    while (1)
    {
      if (*v55 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v54 + 1) + 8 * v23);
      if (v4)
      {
        v25 = [*(*(&v54 + 1) + 8 * v23) name];
        v26 = strcmp([v25 UTF8String], v4);

        if (v26)
        {
          goto LABEL_84;
        }
      }

      v27 = xpc_dictionary_create(0, 0, 0);
      v28 = [v24 name];
      xpc_dictionary_set_string(v27, "Identifier", [v28 UTF8String]);

      v29 = [v24 state];
      if (v29 > 2)
      {
        if (v29 == (&dword_0 + 3))
        {
          v30 = v27;
          v31 = "Defer";
        }

        else if (v29 == &dword_4)
        {
          v30 = v27;
          v31 = "Continue";
        }

        else
        {
          if (v29 != (&dword_4 + 1))
          {
            goto LABEL_46;
          }

          v30 = v27;
          v31 = "Done";
        }

        goto LABEL_45;
      }

      if (!v29)
      {
        break;
      }

      if (v29 == (&dword_0 + 1))
      {
        v30 = v27;
        v31 = "Wait";
        goto LABEL_45;
      }

      if (v29 == (&dword_0 + 2))
      {
        xpc_dictionary_set_string(v27, "State", "Run");
        xpc_dictionary_set_BOOL(v27, "ConfirmedRun", [v24 confirmed_run]);
      }

LABEL_46:
      v32 = sub_46D8([v24 baseTime]);
      xpc_dictionary_set_date(v27, "BaseTime", v32);
      if ([v24 state] == &dword_0 + 1 || objc_msgSend(v24, "state") == &dword_0 + 3)
      {
        v33 = sub_46D8([v24 eligibleTime]);
        xpc_dictionary_set_date(v27, "Eligible", v33);
        if ([v24 grace_period] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v34 = sub_46D8([v24 deadlineTime]);
          xpc_dictionary_set_date(v27, "Deadline", v34);
        }
      }

      xpc_dictionary_set_uint64(v27, "ElapsedTime", [v24 elapsedTime] / 0x3B9ACA00);
      xpc_dictionary_set_int64(v27, "SequenceNumber", [v24 seqno]);
      v35 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v35, "Interval", [v24 interval]);
      xpc_dictionary_set_int64(v35, "GracePeriod", [v24 grace_period]);
      xpc_dictionary_set_int64(v35, "Delay", [v24 delay]);
      v36 = [v24 priority];
      if (!v36)
      {
        v37 = "Maintenance";
        goto LABEL_54;
      }

      if (v36 == 1)
      {
        v37 = "Utility";
LABEL_54:
        xpc_dictionary_set_string(v35, "Priority", v37);
      }

      xpc_dictionary_set_BOOL(v35, "AllowBattery", [v24 allow_battery]);
      xpc_dictionary_set_BOOL(v35, "Repeating", [v24 repeating]);
      xpc_dictionary_set_BOOL(v35, "PowerNap", [v24 power_nap]);
      xpc_dictionary_set_BOOL(v35, "AppRefresh", [v24 app_refresh]);
      v38 = [v24 requires_protection_class] - 1;
      if (v38 <= 2)
      {
        xpc_dictionary_set_string(v35, "RequireProtectionClass", off_109D0[v38]);
      }

      if ([v24 requires_screen_sleep])
      {
        xpc_dictionary_set_BOOL(v35, "RequiresScreenSleep", [v24 requires_screen_sleep]);
      }

      if ([v24 requires_significant_user_inactivity])
      {
        xpc_dictionary_set_BOOL(v35, "RequiresSignificantUserInactivity", [v24 requires_significant_user_inactivity]);
      }

      if ([v24 requires_buddy_complete])
      {
        xpc_dictionary_set_BOOL(v35, "RequiresBuddyComplete", [v24 requires_buddy_complete]);
      }

      if ([v24 requires_network_connectivity])
      {
        xpc_dictionary_set_BOOL(v35, "RequiresNetworkConnectivity", [v24 requires_network_connectivity]);
      }

      if ([v24 requires_inexpensive_network])
      {
        xpc_dictionary_set_BOOL(v35, "RequiresInexpensiveNetwork", [v24 requires_inexpensive_network]);
      }

      if ([v24 cpu_intensive])
      {
        xpc_dictionary_set_BOOL(v35, "CPUIntensive", [v24 cpu_intensive]);
      }

      if ([v24 memory_intensive])
      {
        xpc_dictionary_set_BOOL(v35, "MemoryIntensive", [v24 memory_intensive]);
      }

      if ([v24 disk_intensive])
      {
        xpc_dictionary_set_BOOL(v35, "DiskIntensive", [v24 disk_intensive]);
      }

      if ([v24 may_reboot_device])
      {
        xpc_dictionary_set_BOOL(v35, "MayRebootDevice", [v24 may_reboot_device]);
      }

      if ([v24 post_install])
      {
        xpc_dictionary_set_BOOL(v35, "PostInstall", [v24 post_install]);
      }

      if ([v24 duet_power_budgeted])
      {
        xpc_dictionary_set_BOOL(v35, "DuetPowerBudgeting", [v24 duet_power_budgeted]);
      }

      if ([v24 user_requested_backup_task])
      {
        xpc_dictionary_set_BOOL(v35, "UserRequestedBackup", [v24 user_requested_backup_task]);
      }

      xpc_dictionary_set_value(v27, "Effective Criteria", v35);
      v39 = [v24 group_name];

      if (v39)
      {
        v40 = [v24 group_name];
        xpc_dictionary_set_string(v27, "ActivityGroupName", [v40 UTF8String]);

        xpc_dictionary_set_uint64(v27, "MaxConcurrencyLimit", [v24 group_concurrency_limit]);
      }

      xpc_array_append_value(v18, v27);

LABEL_84:
      if (v21 == ++v23)
      {
        v21 = [v19 countByEnumeratingWithState:&v54 objects:buf count:16];
        if (!v21)
        {
LABEL_86:

          reply = xdicta;
          xpc_dictionary_set_value(xdicta, "List", v18);

          v7 = 0;
          v2 = v51;
          goto LABEL_105;
        }

        goto LABEL_27;
      }
    }

    v30 = v27;
    v31 = "CheckIn";
LABEL_45:
    xpc_dictionary_set_string(v30, "State", v31);
    goto LABEL_46;
  }

  xdict = reply;
  v8 = [NSString stringWithUTF8String:v4];
  v9 = v8;
  if (byte_15408 == 1 && ![v8 hasPrefix:@"com.apple.xpc.activity.test."])
  {
    v48 = qword_154A0;
    if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v59 = v4;
      _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "Control Channel: 'ctsctl run' is unsupported, please use 'dastool run' instead for %{public}s", buf, 0xCu);
    }

    v7 = 78;
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v10 = [qword_15418 copy];
    v11 = [v10 countByEnumeratingWithState:&v54 objects:buf count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v55;
      v7 = 2;
      do
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v55 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if (v4)
          {
            v15 = *(*(&v54 + 1) + 8 * j);
            v16 = [v15 name];
            v17 = strcmp([v16 UTF8String], v4);

            if (!v17)
            {
              if ([v15 state] == &dword_0 + 1 || objc_msgSend(v15, "state") == &dword_0 + 3)
              {
                [v15 setEligible:1];
                sub_3488(v15, 2, 0);
                v7 = 0;
              }

              else
              {
                v7 = 16;
              }
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v54 objects:buf count:16];
      }

      while (v12);
    }

    else
    {
      v7 = 2;
    }

    v2 = v50;
  }

LABEL_104:

  reply = xdict;
LABEL_105:
  if (reply)
  {
    xpc_dictionary_set_int64(reply, "Result", v7);
    v49 = xpc_dictionary_get_remote_connection(reply);
    xpc_connection_send_message(v49, reply);
  }

LABEL_108:
}

void sub_75B0(id a1)
{
  if (!CFPreferencesAppSynchronize(@"com.apple.xpc.activity2"))
  {
    _os_assumes_log();
  }
}

void sub_75E0(id a1)
{
  qword_153E8 = 0x7FFFFFFFFFFFFFFFLL;
  v1 = qword_154A0;
  if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_INFO, "activity timer fired", v4, 2u);
  }

  v2 = qword_15448;
  v3 = dispatch_time(0, 50000000);
  dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0x2FAF080uLL);
}

void sub_7680(id a1, int a2)
{
  v2 = qword_15448;
  v3 = dispatch_time(0, 50000000);

  dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0x2FAF080uLL);
}

void sub_76D8(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = qword_15418;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v15;
    if (a1 >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = -a1;
    }

    v8 = v7 / 0x3B9ACA00;
    *&v4 = 138543362;
    v13 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 state] == &dword_0 + 1 || objc_msgSend(v10, "state") == &dword_0 + 3)
        {
          v11 = [v10 delay];
          if (v8 >= (v11 + [v10 grace_period]) / 100)
          {
            v12 = qword_154A0;
            if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v13;
              v19 = v10;
              _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Time Change: resubmitting actiivty %{public}@", buf, 0xCu);
            }

            sub_3DD0(v10);
            sub_2CBC(v10, 0.0);
            sub_3244(v10);
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }
}

void sub_78D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_connection)
  {
    xpc_connection_set_target_queue(v3, qword_15498);
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_79E8;
    v10 = &unk_109B0;
    v11 = *(a1 + 32);
    v4 = v3;
    v12 = v4;
    xpc_connection_set_event_handler(v4, &v7);
    xpc_connection_activate(v4);
    v5 = [*(a1 + 32) peer];

    if (v5)
    {
      v6 = [*(a1 + 32) peer];
      xpc_connection_cancel(v6);
    }

    [*(a1 + 32) setPeer:v4];
  }
}

void sub_79F8(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7 == &_xpc_error_connection_invalid)
  {
    v13 = qword_154A0;
    if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
    {
      v26 = 138543362;
      *v27 = v5;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Client connection closed: %{public}@", &v26, 0xCu);
    }

    if ([v5 state] == &dword_0 + 2 && (objc_msgSend(v5, "unmanaged") & 1) == 0)
    {
      sub_3488(v5, 3, 0);
    }

    v14 = [v5 peer];

    if (v14 == v6)
    {
      v15 = [v5 peer];
      xpc_connection_cancel(v15);

      [v5 setPeer:0];
    }

    if ([v5 unmanaged])
    {
      v16 = qword_154A8;
      if (os_log_type_enabled(qword_154A8, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138543362;
        *v27 = v5;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Unregistered unmanaged XPC Activity: %{public}@", &v26, 0xCu);
      }

      [qword_15418 removeObject:v5];
      sub_33C4(v5);
    }
  }

  else if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    int64 = xpc_dictionary_get_int64(v8, "state");
    v10 = xpc_dictionary_get_int64(v8, "completion_status");
    if (int64 == 2)
    {
      if ([v5 state] == &dword_0 + 2)
      {
        [v5 setConfirmed_run:1];
        [v5 setPid:xpc_connection_get_pid(v6)];
        v17 = qword_154A8;
        if (os_log_type_enabled(qword_154A8, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          v26 = 67109378;
          *v27 = [v5 pid];
          *&v27[4] = 2114;
          *&v27[6] = v5;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Running (PID %d): %{public}@", &v26, 0x12u);
        }

        if (byte_15408 == 1)
        {
          v19 = [v5 pid];
          v20 = [v5 scheduler_activity];
          [v20 setPid:v19];

          v21 = qword_154B0;
          v22 = [v5 scheduler_activity];
          [v21 activityStarted:v22];
        }

        v23 = [v5 power_assertion];
        if (v23)
        {
          v24 = v23;
          j__IOPMAssertionRelease(v23);
          v25 = qword_154A0;
          if (os_log_type_enabled(qword_154A0, OS_LOG_TYPE_INFO))
          {
            v26 = 138543618;
            *v27 = v5;
            *&v27[8] = 1024;
            *&v27[10] = v24;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "releasing temporary power assertion: %{public}@: %d", &v26, 0x12u);
          }

          [v5 setPower_assertion:0];
        }
      }
    }

    else if (int64 == 5 || int64 == 3)
    {
      sub_3488(v5, int64, v10);
    }

    reply = xpc_dictionary_create_reply(v8);
    if (reply)
    {
      xpc_dictionary_set_int64(reply, "state", [v5 state]);
      xpc_dictionary_set_BOOL(reply, "eligible", [v5 eligible]);
      if ([v5 seqno])
      {
        xpc_dictionary_set_uint64(reply, XPC_ACTIVITY_SEQUENCE_NUMBER, [v5 seqno]);
      }

      v12 = xpc_dictionary_get_remote_connection(reply);
      xpc_connection_send_message(v12, reply);
    }
  }
}

void sub_83E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!qword_15480)
  {
    v6 = objc_opt_new();
    v7 = qword_15480;
    qword_15480 = v6;
  }

  if (a1 == 2)
  {
    v17 = qword_15480;
    v18 = [NSNumber numberWithUnsignedLongLong:a2];
    v8 = [v17 objectForKey:v18];

    v19 = qword_15470;
    if (os_log_type_enabled(qword_15470, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [(CTSCalendarInterval *)v8 identifier];
      v23 = 136315138;
      v24 = [v21 UTF8String];
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Unregistered StartCalendarInterval: %s", &v23, 0xCu);
    }

    v22 = qword_15480;
    v12 = [NSNumber numberWithUnsignedLongLong:a2];
    [v22 removeObjectForKey:v12];
    goto LABEL_10;
  }

  if (a1 == 1)
  {
    v8 = [[CTSCalendarInterval alloc] initWithToken:a2 andEvent:v5];
    v9 = qword_15480;
    v10 = [NSNumber numberWithUnsignedLongLong:a2];
    [v9 setObject:v8 forKey:v10];

    v11 = qword_15470;
    if (!os_log_type_enabled(qword_15470, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:

      goto LABEL_12;
    }

    v12 = v11;
    v13 = [(CTSCalendarInterval *)v8 identifier];
    v14 = [(CTSCalendarInterval *)v8 fireDate];
    v15 = +[NSLocale currentLocale];
    v16 = [v14 descriptionWithLocale:v15];
    v23 = 138543618;
    v24 = v13;
    v25 = 2114;
    v26 = v16;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Registered StartCalendarInterval: %{public}@: %{public}@", &v23, 0x16u);

LABEL_10:
    goto LABEL_11;
  }

LABEL_12:
  sub_86C0();
}

void sub_8674(id a1)
{
  qword_15488 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];

  _objc_release_x1();
}

void sub_86C0()
{
  v0 = +[NSDate distantFuture];
  v1 = +[NSDate date];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = qword_15480;
  v14 = v0;
  v16 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v16)
  {
    v2 = *v18;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        v4 = v0;
        if (*v18 != v2)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [qword_15480 objectForKeyedSubscript:*(*(&v17 + 1) + 8 * i)];
        v6 = [v5 fireDate];
        v7 = [v6 compare:v1];

        if (v7 == -1)
        {
          v8 = qword_15470;
          if (os_log_type_enabled(qword_15470, OS_LOG_TYPE_DEFAULT))
          {
            v9 = v8;
            v10 = [v5 identifier];
            *buf = 138543362;
            v22 = v10;
            _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Running StartCalendarInterval: %{public}@", buf, 0xCu);
          }

          [v5 token];
          xpc_event_provider_token_set_state();
        }

        v11 = [v5 fireDate];
        v0 = [v4 earlierDate:v11];
      }

      v16 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v16);
  }

  if (!qword_15478)
  {
    xpc_event_provider_get_queue();
  }

  if ([v0 compare:v14] == -1)
  {
    [v0 timeIntervalSinceNow];
    v13 = dispatch_walltime(0, 1000000000 * v12);
    dispatch_source_set_timer(qword_15478, v13, 0xFFFFFFFFFFFFFFFFLL, 0x165A0BC00uLL);
  }
}

void sub_8AC8()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_8AE4()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_8B00(uint64_t a1, NSObject *a2)
{
  v2 = 136446210;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to register unmanaged XPC Activity: %{public}s", &v2, 0xCu);
}

void xpc_event_provider_create()
{
    ;
  }
}

void xpc_event_provider_get_queue()
{
    ;
  }
}

void xpc_event_provider_token_fire()
{
    ;
  }
}

void xpc_event_provider_token_set_state()
{
    ;
  }
}