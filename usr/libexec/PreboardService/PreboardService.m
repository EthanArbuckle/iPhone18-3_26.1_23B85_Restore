uint64_t sub_100000B90()
{
  mainPort = 0;
  connect = 0;
  if (IOMasterPort(0, &mainPort))
  {
    sub_100000D48(1, 3, @"%s: could not get master port\n", v0, v1, v2, v3, v4, "sep_connect");
  }

  else
  {
    v6 = IOServiceMatching("AppleSEPManager");
    if (v6)
    {
      MatchingService = IOServiceGetMatchingService(mainPort, v6);
      if (MatchingService)
      {
        if (!IOServiceOpen(MatchingService, mach_task_self_, 0, &connect))
        {
          return connect;
        }

        sub_100000D48(1, 3, @"%s: Failed to open SEP service.", v18, v19, v20, v21, v22, "sep_connect");
      }

      else
      {
        sub_100000D48(1, 3, @"%s: Could not find SEP service.", v13, v14, v15, v16, v17, "sep_connect");
      }
    }

    else
    {
      sub_100000D48(1, 3, @"%s: could not make matching dictionary for '%s'", v7, v8, v9, v10, v11, "sep_connect");
    }
  }

  return 0;
}

uint64_t sub_100000C80()
{
  v0 = sub_100000B90();
  sub_100000D48(1, 2, @"%s: Purging system token.", v1, v2, v3, v4, v5, "purge_system_token");
  if (v0)
  {
    if (IOConnectCallScalarMethod(v0, 0x42u, 0, 0, 0, 0))
    {
      sub_100000D48(1, 3, @"%s: Purging system token failed: 0x%x", v11, v12, v13, v14, v15, "purge_system_token");
      return 0;
    }

    else
    {
      v0 = 1;
      sub_100000D48(1, 3, @"%s: Purging system token succeeded", v11, v12, v13, v14, v15, "purge_system_token");
    }
  }

  else
  {
    sub_100000D48(1, 2, @"%s: SEP IOService was NULL.", v6, v7, v8, v9, v10, "purge_system_token");
  }

  return v0;
}

void sub_100000D48(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = [[NSString alloc] initWithFormat:a3 arguments:&a9];
  switch(a2)
  {
    case 3:
      if (a1)
      {
        if (qword_10000C0C0 != -1)
        {
          sub_100001F8C();
        }

        v15 = qword_10000C0B8;
        if (os_log_type_enabled(qword_10000C0B8, OS_LOG_TYPE_ERROR))
        {
          sub_100001FB4(v11, v15);
        }
      }

      else
      {
        if (qword_10000C0C0 != -1)
        {
          sub_100001F8C();
        }

        v16 = qword_10000C0B8;
        if (os_log_type_enabled(qword_10000C0B8, OS_LOG_TYPE_ERROR))
        {
          sub_10000202C(v11, v16);
        }
      }

      break;
    case 2:
      if (a1)
      {
        if (qword_10000C0C0 != -1)
        {
          sub_100001F8C();
        }

        v13 = qword_10000C0B8;
        if (os_log_type_enabled(qword_10000C0B8, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v18 = v11;
          v14 = "%{public}@";
LABEL_35:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v14, buf, 0xCu);
        }
      }

      else
      {
        if (qword_10000C0C0 != -1)
        {
          sub_100001F8C();
        }

        v13 = qword_10000C0B8;
        if (os_log_type_enabled(qword_10000C0B8, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v18 = v11;
          v14 = "%@";
          goto LABEL_35;
        }
      }

      break;
    case 1:
      if (qword_10000C0C0 != -1)
      {
        sub_100001F8C();
      }

      v12 = qword_10000C0B8;
      if (os_log_type_enabled(qword_10000C0B8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000020A4(v11, v12);
      }

      return;
    default:
      if (a1)
      {
        if (qword_10000C0C0 != -1)
        {
          sub_100001F8C();
        }

        v13 = qword_10000C0B8;
        if (os_log_type_enabled(qword_10000C0B8, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v18 = v11;
          v14 = "%{public}@";
          goto LABEL_35;
        }
      }

      else
      {
        if (qword_10000C0C0 != -1)
        {
          sub_100001F8C();
        }

        v13 = qword_10000C0B8;
        if (os_log_type_enabled(qword_10000C0B8, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v18 = v11;
          v14 = "%@";
          goto LABEL_35;
        }
      }

      break;
  }
}

uint64_t sub_100000FE8()
{
  if (qword_10000C0C0 != -1)
  {
    sub_10000211C();
  }

  return qword_10000C0B8;
}

void sub_100001050(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  out_token[0] = 0;
  v94 = 0;
  v95 = &v94;
  v96 = 0x2020000000;
  v97 = 0;
  v88 = 0;
  v89 = &v88;
  v90 = 0x3052000000;
  v91 = sub_100001968;
  v92 = sub_100001978;
  v93 = 0;
  v11 = "CURRENT(v2)";
  if (a3)
  {
    v11 = "LEGACY";
  }

  v85 = v11;
  sub_100000D48(1, 2, @"%s: %s host tools", a4, a5, a6, a7, a8, "handle_create_stashbag");
  if (MKBGetDeviceLockState() == 3)
  {
    if (a1 && kCFBooleanTrue)
    {
      sub_100002130(a1, [NSDictionary dictionaryWithObject:kCFBooleanTrue forKey:@"Skip"]);
    }

    goto LABEL_85;
  }

  v12 = [a2 objectForKey:@"Manifest"];
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v84 = [NSString stringWithFormat:@"manifest was not Data type"];
LABEL_94:
      v15 = [NSString stringWithFormat:@"%s: %@", "handle_create_stashbag", v84];
      goto LABEL_95;
    }
  }

  if (!os_variant_allows_internal_security_policies())
  {
    v13 = 0;
    goto LABEL_15;
  }

  v13 = [a2 objectForKey:@"DevicePasscodeData"];
  if (!v13)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v84 = [NSString stringWithFormat:@"passcode data was not Data type"];
    goto LABEL_94;
  }

  v14 = MKBVerifyPasswordWithContext();
  if (v14)
  {
    v15 = [NSString stringWithFormat:@"%s: %@", "handle_create_stashbag", [NSString stringWithFormat:@"failed to verify provided passcode: %d", v14, v85]];
LABEL_95:
    v31 = v15;
    v23 = 0;
    v30 = 0;
    v29 = 0;
    v24 = 0;
    goto LABEL_59;
  }

LABEL_15:
  MKBKeyBagKeyStashCreateWithMode();
  if (!v13)
  {
    v23 = dispatch_semaphore_create(0);
    if (!v23)
    {
      v30 = 0;
      v29 = 0;
      v24 = 0;
      v31 = @"failed to allocate semaphoer for user auth notificaiton";
      goto LABEL_59;
    }

    v24 = objc_alloc_init(LAContext);
    if (!v24)
    {
      v30 = 0;
      v29 = 0;
      v31 = @"failed to allocate LAContext to prompt for passcode";
      goto LABEL_59;
    }

    v25 = +[NSMutableDictionary dictionary];
    if (!v25)
    {
      v30 = 0;
      v29 = 0;
      v31 = @"failed to allocate options dict for LAContext";
      goto LABEL_59;
    }

    v26 = MGCopyAnswer();
    v27 = [[NSBundle bundleWithPath:?]value:"localizedStringForKey:value:table:" table:@"UNLOCK_DEVICE", &stru_1000085F8, @"PreboardService"];
    v28 = v27;
    if (v26)
    {
      if (v27)
      {
        v28 = [(NSString *)v27 stringByReplacingOccurrencesOfString:@"<device_name>" withString:v26];
      }
    }

    if (v28)
    {
      [v25 setObject:v28 forKey:&off_100008E80];
    }

    [v25 setObject:&off_100008E80 forKey:&off_100008E98];
    [v25 setObject:&off_100008EB0 forKey:&off_100008EC8];
    if (v12)
    {
      [v25 setObject:v12 forKey:&off_100008EE0];
    }

    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_100001984;
    v87[3] = &unk_100008290;
    v87[5] = &v94;
    v87[6] = &v88;
    v87[4] = v23;
    [v24 evaluatePolicy:1010 options:v25 reply:v87];
    v29 = 0;
    v30 = 0;
    v31 = @"failed to send show message";
    if (!a1 || (v16 = kCFBooleanTrue) == 0)
    {
LABEL_59:
      v53 = [NSMutableDictionary dictionaryWithCapacity:2];
      if (v31)
      {
        [(__CFString *)v31 UTF8String];
        sub_100000D48(1, 3, @"%s: failed - sending error back to host: %s", v54, v55, v56, v57, v58, "handle_create_stashbag");
        [(NSMutableDictionary *)v53 setObject:v31 forKey:@"ErrorString"];
      }

      else
      {
        sub_100000D48(1, 3, @"%s: failed - sending error back to host", v48, v49, v50, v51, v52, "handle_create_stashbag");
      }

      if (v29)
      {
        sub_100000D48(1, 3, @"%s: destroying stashbag", v59, v60, v61, v62, v63, "handle_create_stashbag");
        MKBKeyBagKeyStashCreateWithMode();
      }

      [(NSMutableDictionary *)v53 setObject:&off_100008EF8 forKey:@"Error"];
      sub_100002130(a1, v53);
      if (!v30)
      {
        goto LABEL_81;
      }

      goto LABEL_80;
    }

    if (sub_100002130(a1, [NSDictionary dictionaryWithObject:kCFBooleanTrue forKey:@"ShowDialog"]))
    {
      sub_100000D48(1, 2, @"%s: waiting for user auth notification", v32, v33, v34, v35, v36, "handle_create_stashbag");
      v37 = dispatch_time(0, 120000000000);
      v38 = dispatch_semaphore_wait(v23, v37);
      if (v95[3])
      {
        goto LABEL_53;
      }

      if (v38)
      {
LABEL_42:
        sub_100000D48(1, 3, @"%s: timed out waiting for unlock", v18, v19, v20, v21, v22, "handle_create_stashbag");
        [v24 invalidate];
        if (a1)
        {
          v44 = v16 == 0;
        }

        else
        {
          v44 = 1;
        }

        v45 = v44;
        if (!v44)
        {
          sub_100002130(a1, [NSDictionary dictionaryWithObject:v16 forKey:@"Timeout"]);
        }

        if (!v13)
        {
          sub_100000D48(1, 2, @"%s: sending hide message", v39, v40, v41, v42, v43, "handle_create_stashbag");
          if ((v45 & 1) == 0)
          {
            sub_100002130(a1, [NSDictionary dictionaryWithObject:v16 forKey:@"HideDialog"]);
          }
        }

        goto LABEL_81;
      }

      if (!v89[5])
      {
        v30 = 0;
        v29 = 0;
        v31 = @"user authentication failed";
        goto LABEL_59;
      }

      v31 = [NSString stringWithFormat:@"user authentication failed: %@", v89[5], v85];
    }

    v30 = 0;
    v29 = 0;
    goto LABEL_59;
  }

  v16 = kCFBooleanTrue;
  if (a1 && kCFBooleanTrue)
  {
    sub_100002130(a1, [NSDictionary dictionaryWithObject:kCFBooleanTrue forKey:@"StashCreatingWithPasscode"]);
  }

  if (v12)
  {
    v17 = MKBKeyBagKeyStashCreateWithManifest();
  }

  else
  {
    v17 = MKBKeyBagKeyStashCreateWithMode();
  }

  v24 = 0;
  v23 = 0;
  *(v95 + 24) = v17 == 0;
  if (v17)
  {
    goto LABEL_42;
  }

LABEL_53:
  if (a3)
  {
    sub_100000D48(1, 2, @"%s: legacy - committing stashbag", v18, v19, v20, v21, v22, "handle_create_stashbag");
    v46 = MKBKeyBagKeyStashCommit();
    if (v46)
    {
      v47 = @"failed to commit key stash %d";
LABEL_58:
      v31 = [NSString stringWithFormat:v47, v46, v85];
      v30 = 0;
      v29 = 1;
      goto LABEL_59;
    }
  }

  v46 = MKBKeyBagKeyStashPersist();
  if (v46)
  {
    v47 = @"failed to persist stashbag: 0x%x";
    goto LABEL_58;
  }

  v30 = dispatch_semaphore_create(0);
  if (!v30)
  {
    v29 = 1;
    v31 = @"failed to allocate disconnection semaphore";
    goto LABEL_59;
  }

  v64 = [kLockdownNotificationHostDetached UTF8String];
  global_queue = dispatch_get_global_queue(0, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001A6C;
  handler[3] = &unk_1000082B8;
  handler[4] = v30;
  if (notify_register_dispatch(v64, out_token, global_queue, handler))
  {
    v29 = 1;
    v31 = @"failed to register for notification";
    goto LABEL_59;
  }

  if (v13)
  {
    sub_100000D48(1, 2, @"%s: sending stash created with passcode message", v66, v67, v68, v69, v70, "handle_create_stashbag");
    if (a1 && v16)
    {
      v76 = @"StashCreatedWithPasscode";
LABEL_75:
      sub_100002130(a1, [NSDictionary dictionaryWithObject:v16 forKey:v76]);
    }
  }

  else
  {
    sub_100000D48(1, 2, @"%s: sending hide message", v66, v67, v68, v69, v70, "handle_create_stashbag");
    if (a1 && v16)
    {
      v76 = @"HideDialog";
      goto LABEL_75;
    }
  }

  sub_100000D48(1, 2, @"%s: waiting for reboot", v71, v72, v73, v74, v75, "handle_create_stashbag");
  v77 = dispatch_time(0, 14400000000000);
  if (dispatch_semaphore_wait(v30, v77))
  {
    v83 = @"%s: stashbag timed out - destroying stashbag";
  }

  else
  {
    v83 = @"%s: disconnected from host - destroying stashbag";
  }

  sub_100000D48(1, 3, v83, v78, v79, v80, v81, v82, "handle_create_stashbag");
  MKBKeyBagKeyStashCreateWithMode();
LABEL_80:
  dispatch_release(v30);
LABEL_81:
  if (v23)
  {
    dispatch_release(v23);
  }

  if (v24)
  {
  }

LABEL_85:
  if (out_token[0])
  {
    notify_cancel(out_token[0]);
  }

  _Block_object_dispose(&v88, 8);
  _Block_object_dispose(&v94, 8);
}

void sub_10000193C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100001984(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    *(*(a1[5] + 8) + 24) = 1;
    [+[NSString stringWithFormat:](NSString UTF8String:@"%@"];
    sub_100000D48(1, 2, @"%s: Policy successfully evaluated: %s", v4, v5, v6, v7, v8, "handle_create_stashbag_block_invoke");
  }

  else
  {
    *(*(a1[6] + 8) + 40) = a3;
    v10 = *(*(a1[6] + 8) + 40);
    [+[NSString stringWithFormat:](NSString UTF8String:@"%@"];
    sub_100000D48(1, 3, @"%s: evaluatePolicy: FAILED: %s", v11, v12, v13, v14, v15, "handle_create_stashbag_block_invoke");
  }

  v16 = a1[4];

  return dispatch_semaphore_signal(v16);
}

intptr_t sub_100001A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100000D48(1, 3, @"%s: got disconnect notification", a4, a5, a6, a7, a8, "handle_create_stashbag_block_invoke_2");
  v9 = *(a1 + 32);

  return dispatch_semaphore_signal(v9);
}

BOOL sub_100001AC8(NSString *a1, NSString **a2)
{
  v4 = MKBGetDeviceLockStateInfo();
  v5 = v4;
  if (!v4)
  {
    sub_1000027E8(&v32);
LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  [objc_msgSend(v4 "description")];
  sub_100000D48(1, 2, @"%s: returned %s\n", v6, v7, v8, v9, v10, "is_keybag_recoverable");
  v11 = [v5 objectForKey:kMKBInfoBagState];
  if (!v11)
  {
    sub_100002784(&v32);
    goto LABEL_16;
  }

  v12 = v11;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1000026C0(&v32);
    goto LABEL_16;
  }

  v13 = ([v12 unsignedIntValue] & 0x40) == 0;
  sub_100000D48(1, 2, @"%s: keybag %s recoverable", v14, v15, v16, v17, v18, "is_keybag_recoverable");
  if (!a1)
  {
    goto LABEL_8;
  }

  v19 = [v5 objectForKey:kMKBInfoRecoveryCountdown];
  if (v19)
  {
    v20 = v19;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *a1 = [v20 unsignedIntValue];
      sub_100000D48(1, 2, @"%s: recovery countdown: %lld", v21, v22, v23, v24, v25, "is_keybag_recoverable");
      a1 = 0;
      goto LABEL_8;
    }

    sub_1000026C0(&v32);
  }

  else
  {
    sub_100002720(v12, &v32);
  }

LABEL_17:
  a1 = v32;
  if (v32)
  {
    [(NSString *)v32 UTF8String];
    sub_100000D48(1, 2, @"%s: %s", v27, v28, v29, v30, v31, "is_keybag_recoverable");
  }

LABEL_8:
  if (a2)
  {
    *a2 = a1;
  }

  if (v5)
  {
  }

  return v13;
}

NSDate *sub_100001CA0(void *a1)
{
  v26 = 0;
  v27 = 0;
  v2 = [NSDate dateWithTimeIntervalSinceNow:900.0];
  if (v2)
  {
    while (1)
    {
      if (sub_100001AC8(&v27, &v26))
      {
        v2 = 1;
        v17 = v26;
        if (v26)
        {
          goto LABEL_13;
        }

        goto LABEL_14;
      }

      if (!v27)
      {
        break;
      }

      v8 = v27 / 500000;
      sub_100000D48(1, 2, @"%s: waiting for keybag to be recoverable - %d seconds until recovery is possible", v3, v4, v5, v6, v7, "wait_for_recoverable_keybag");
      v14 = v8 >> (v8 > 0xA);
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      v25 = v15;
      sub_100000D48(1, 2, @"%s: waiting for keybag to be recoverable - sleeping for %d seconds", v9, v10, v11, v12, v13, "wait_for_recoverable_keybag");
      sleep(v15);
      v27 = 0;
      if ([+[NSDate compare:"compare:"]
      {
        v16 = @"timed out waiting for keybag to become recoverable";
        goto LABEL_12;
      }
    }

    v24 = v26;
    v16 = @"keybag is not recoverable and countdown time is 0 - stopping: %@";
LABEL_12:
    v17 = [NSString stringWithFormat:@"%s: %@", "wait_for_recoverable_keybag", [NSString stringWithFormat:v16, v24, v25]];
    v2 = 0;
    v26 = v17;
    if (!v17)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  sub_100002848(&v26, &v28);
  v17 = v28;
  if (v28)
  {
LABEL_13:
    [(NSString *)v17 UTF8String];
    sub_100000D48(1, 3, @"%s: %s", v18, v19, v20, v21, v22, "wait_for_recoverable_keybag");
  }

LABEL_14:
  if (a1)
  {
    *a1 = v26;
  }

  return v2;
}

void start(int a1, char **a2)
{
  while (1)
  {
    v4 = getopt(a1, a2, "v:");
    if (v4 == 118)
    {
      dword_10000C0B0 = atoi(optarg);
    }

    else if (v4 == -1)
    {
      sub_100000D48(1, 2, @"%s: Preboard Service Version: %d", v5, v6, v7, v8, v9, "main");
      lockdown_checkin_xpc();
      dispatch_main();
    }
  }
}

void sub_100001F20(id a1, _lockdown_connection *a2, __CFDictionary *a3)
{
  sub_10000258C(a2, a3, a3, v3, v4, v5, v6, v7);
  lockdown_disconnect();
  sub_100000D48(1, 2, @"%s: done", v8, v9, v10, v11, v12, "main_block_invoke");
  exit(0);
}

void sub_100001FB4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v2, 0xCu);
}

void sub_10000202C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

void sub_1000020A4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@", &v2, 0xCu);
}

uint64_t sub_100002130(uint64_t a1, void *a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = [a2 mutableCopy];
      if (result)
      {
        v4 = result;
        [result setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", 2), @"Version"}];
        v5 = lockdown_send_message();

        if (v5)
        {
          v6 = sub_100001F80();
          sub_100000D48(v6, v7, v8, v9, v10, v11, v12, v13, "_sendMessageDict");
          return 0;
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000021DC(uint64_t a1)
{
  v2 = sub_100001F74();
  sub_100000D48(v2, v3, v4, v5, v6, v7, v8, v9, "handle_clear_system_token");
  v10 = sub_100001F74();
  sub_100000D48(v10, v11, v12, v13, v14, v15, v16, v17, "handle_clear_system_token");
  result = sub_100000C80();
  v19 = &kCFBooleanTrue;
  if (!result)
  {
    v19 = &kCFBooleanFalse;
  }

  if (a1 && *v19)
  {
    v20 = [NSDictionary dictionaryWithObject:*v19 forKey:@"ClearSystemTokenSuccess"];

    return sub_100002130(a1, v20);
  }

  return result;
}

void sub_1000022A4(uint64_t a1, void *a2)
{
  v85 = 0;
  v4 = sub_100001F74();
  sub_100000D48(v4, v5, v6, v7, v8, v9, v10, v11, "handle_commit_stashbag");
  v12 = [a2 objectForKey:@"Manifest"];
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v83 = [NSString stringWithFormat:@"manifest was not Data type", v84];
      goto LABEL_28;
    }
  }

  if (!MGGetBoolAnswer())
  {
    goto LABEL_14;
  }

  v13 = MGGetBoolAnswer();
  if (v12)
  {
    if (!v13)
    {
      if (MKBKeyBagKeyStashSetManifest())
      {
        v31 = sub_100001F74();
        sub_100000D48(v31, v32, v33, v34, v35, v36, v37, v38, "handle_commit_stashbag");
      }

      goto LABEL_14;
    }

    if (sub_100001CA0(&v85))
    {
      v14 = MKBKeyBagKeyStashSetManifest();
      if (v14)
      {
        v85 = [NSString stringWithFormat:@"failed to set manifest: %d", v14];
        [(NSString *)v85 UTF8String];
        v15 = sub_100001F80();
        sub_100000D48(v15, v16, v17, v18, v19, v20, v21, v22, "handle_commit_stashbag");
        goto LABEL_23;
      }

      goto LABEL_14;
    }

    v83 = [NSString stringWithFormat:@"tried to wait for recoverable keybag, but keybag is not recoverable: %@", v85];
LABEL_28:
    v85 = [NSString stringWithFormat:@"%s: %@", "handle_commit_stashbag", v83];
    goto LABEL_23;
  }

  if (v13)
  {
    v85 = [NSString stringWithFormat:@"NULL manifest - manifest is required on this device"];
    [(NSString *)v85 UTF8String];
    v58 = sub_100001F74();
    sub_100000D48(v58, v59, v60, v61, v62, v63, v64, v65, "handle_commit_stashbag");
LABEL_23:
    v66 = [NSMutableDictionary dictionaryWithCapacity:2];
    if (v85)
    {
      [(NSString *)v85 UTF8String];
      v75 = sub_100001F80();
      sub_100000D48(v75, v76, v77, v78, v79, v80, v81, v82, "handle_commit_stashbag");
      [(NSMutableDictionary *)v66 setObject:v85 forKey:@"ErrorString"];
    }

    else
    {
      v67 = sub_100001F74();
      sub_100000D48(v67, v68, v69, v70, v71, v72, v73, v74, "handle_commit_stashbag");
    }

    [(NSMutableDictionary *)v66 setObject:&off_100008EF8 forKey:@"Error"];
    [(NSMutableDictionary *)v66 setObject:&off_100008F10 forKey:@"StashbagCommitComplete"];
    v49 = a1;
    p_super = &v66->super;
    goto LABEL_18;
  }

  v23 = sub_100001F80();
  sub_100000D48(v23, v24, v25, v26, v27, v28, v29, v30, "handle_commit_stashbag");
LABEL_14:
  v39 = MKBKeyBagKeyStashCommit();
  if (v39)
  {
    v85 = [NSString stringWithFormat:@"failed to commit stashbag: %d", v39];
    [(NSString *)v85 UTF8String];
    v50 = sub_100001F80();
    sub_100000D48(v50, v51, v52, v53, v54, v55, v56, v57, "handle_commit_stashbag");
    MKBKeyBagKeyStashCreateWithMode();
    goto LABEL_23;
  }

  v40 = sub_100001F74();
  sub_100000D48(v40, v41, v42, v43, v44, v45, v46, v47, "handle_commit_stashbag");
  if (a1 && kCFBooleanTrue)
  {
    p_super = [NSDictionary dictionaryWithObject:kCFBooleanTrue forKey:@"StashbagCommitComplete"];
    v49 = a1;
LABEL_18:
    sub_100002130(v49, p_super);
  }
}

void sub_10000258C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = a1;
    if (dword_10000C0B0 == 1)
    {
      v9 = 1;
LABEL_8:
      sub_100001050(a1, a2, v9, a4, a5, a6, a7, a8);
      return;
    }

    if (!lockdown_receive_message())
    {
      v10 = [0 valueForKey:@"Command"];
      if (v10)
      {
        v11 = v10;
        if ([v10 isEqualToString:@"CreateStashbag"])
        {
          a2 = 0;
          a1 = v8;
          v9 = 0;
          goto LABEL_8;
        }

        if ([v11 isEqualToString:@"CommitStashbag"])
        {
          sub_1000022A4(v8, 0);
          return;
        }

        if ([v11 isEqualToString:@"ClearSystemToken"])
        {
          sub_1000021DC(v8);
          return;
        }

        v12 = sub_100001F80();
        sub_100000D48(v12, v13, v14, v15, v16, v17, v18, v19, "handle_connection");
      }
    }

    if (kCFBooleanTrue)
    {
      sub_100002130(v8, [NSDictionary dictionaryWithObject:kCFBooleanTrue forKey:@"Error"]);
    }
  }
}

NSString *sub_1000026C0(NSString **a1)
{
  result = [NSString stringWithFormat:@"%s: %@", "is_keybag_recoverable", [NSString stringWithFormat:@"keybag state was not Number type"]];
  *a1 = result;
  return result;
}

NSString *sub_100002720(uint64_t a1, NSString **a2)
{
  result = [NSString stringWithFormat:@"%s: %@", "is_keybag_recoverable", [NSString stringWithFormat:@"no recovery countdown in lock state: %@", a1]];
  *a2 = result;
  return result;
}

NSString *sub_100002784(NSString **a1)
{
  result = [NSString stringWithFormat:@"%s: %@", "is_keybag_recoverable", [NSString stringWithFormat:@"no keybag state in lock state: %@", 0]];
  *a1 = result;
  return result;
}

NSString *sub_1000027E8(NSString **a1)
{
  result = [NSString stringWithFormat:@"%s: %@", "is_keybag_recoverable", [NSString stringWithFormat:@"couldn't fetch lock state"]];
  *a1 = result;
  return result;
}

NSString *sub_100002848(NSString **a1, NSString **a2)
{
  result = [NSString stringWithFormat:@"%s: %@", "wait_for_recoverable_keybag", [NSString stringWithFormat:@"couldn't create timeout object"]];
  *a2 = result;
  *a1 = result;
  return result;
}