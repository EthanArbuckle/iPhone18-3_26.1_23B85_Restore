uint64_t liteFigureOutDriverSetupInfo(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a2 + 2040);
  *(a2 + 2040) = @"application/octet-stream";

  v7 = NSURLComponents_ptr;
  v49 = v5;
  if (!v5)
  {
    v11 = 0;
    v9 = 0;
    v13 = 0;
LABEL_31:
    *(a2 + 120) |= 3u;
    *(a2 + 972) = vdupq_n_s32(0x27Bu);
    *(a2 + 988) = xmmword_10006B9A0;
    *(a2 + 2020) = 0x2580000012CLL;
    v26 = 1;
    *(a2 + 128) = 1;
    *(a2 + 1988) = xmmword_10006B9B0;
LABEL_32:
    *a1 |= *(a2 + 120);
    objc_storeStrong((a1 + 32), *(a2 + 2040));
    v27 = v7[31];
    v28 = objc_opt_new();
    v29 = *(a1 + 8);
    *(a1 + 8) = v28;

    [*(a1 + 8) addObject:@"application/octet-stream"];
    [*(a1 + 8) addObjectsFromArray:*(a1 + 16)];
    if (((v26 | [*(a1 + 8) containsObject:@"application/pdf"] | v9) & 1) == 0)
    {
      [*(a1 + 8) addObject:@"application/pdf"];
    }

    if (((v26 | [*(a1 + 8) containsObject:{@"image/jpeg", v44, v45}] | v11) & 1) == 0)
    {
      [*(a1 + 8) addObject:@"image/jpeg"];
    }

    if (((v26 | [*(a1 + 8) containsObject:@"image/png"] | v13) & 1) == 0)
    {
      [*(a1 + 8) addObject:@"image/png"];
    }

    if (((v26 | [*(a1 + 8) containsObject:@"image/urf"]) & 1) == 0)
    {
      [*(a1 + 8) addObject:@"image/urf"];
    }

    v30 = *(a2 + 1508);
    if (v30 >= 21590)
    {
      v31 = *(a2 + 1512);
      if (v31 < 27940)
      {
LABEL_44:
        if (v31 >= 15240)
        {
          *(a2 + 988) = 5;
        }
      }
    }

    else if (v30 >= 10160)
    {
      v31 = *(a2 + 1512);
      goto LABEL_44;
    }

    if (*(a2 + 140) < 1)
    {
LABEL_68:
      if (*(a2 + 548))
      {
        v37 = v7[31];
        v38 = objc_opt_new();
        if (*(a2 + 548) >= 1)
        {
          v39 = 0;
          do
          {
            v40 = [NSString stringWithUTF8String:(&MediaSourceStrings)[*(a2 + 752 + 4 * v39)]];
            [v38 addObject:v40];

            ++v39;
          }

          while (v39 < *(a2 + 548));
        }

        v41 = *(a1 + 24);
        *(a1 + 24) = v38;
      }

      else
      {
        v41 = *(a1 + 24);
        *(a1 + 24) = &off_1000B9018;
      }

      v42 = 1;
      goto LABEL_75;
    }

    v32 = 0;
    while (1)
    {
      v33 = *(a2 + 144 + 4 * v32);
      if ((v33 & 0xFFFFFFFC) == 0x14 || ((v33 - 28) >= 8 ? (v34 = v33 == 4) : (v34 = 1), v34))
      {
        v35 = 64;
      }

      else if (v33 != 5 && (v33 - 70) >= 0x14)
      {
        if (v33 == 6)
        {
          v35 = 16;
        }

        else
        {
          if (v33 != 7 && (v33 - 50) > 3)
          {
            goto LABEL_56;
          }

          v35 = 8;
        }
      }

      else
      {
        v35 = 32;
      }

      *a1 |= v35;
LABEL_56:
      if (++v32 >= *(a2 + 140))
      {
        goto LABEL_68;
      }
    }
  }

  v8 = [v5 objectForKey:@"TEST-NO-PDF"];
  v9 = v8 != 0;

  v10 = [v5 objectForKey:@"TEST-NO-JPEG"];
  v11 = v10 != 0;

  v12 = [v5 objectForKey:@"TEST-NO-PNG"];
  v13 = v12 != 0;

  v14 = [v5 objectForKeyedSubscript:@"COMMAND SET"];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = [v5 objectForKeyedSubscript:@"CMD"];
    if (!v15)
    {
      v48 = +[NSArray array];
      v15 = 0;
      v16 = [v48 count];
      goto LABEL_7;
    }
  }

  v48 = [v15 componentsSeparatedByString:{@", "}];

  v16 = [v48 count];
LABEL_7:
  if (!v16)
  {

    goto LABEL_31;
  }

  v17 = objc_opt_new();
  v46 = v9;
  v18 = *(a1 + 16);
  *(a1 + 16) = v17;

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v19 = v48;
  v47 = v15;
  v20 = [v19 countByEnumeratingWithState:&v51 objects:v55 count:16];
  v44 = __PAIR64__(v13, v11);
  v45 = a2;
  v21 = 0;
  if (!v20)
  {
    goto LABEL_27;
  }

  v22 = *v52;
  do
  {
    for (i = 0; i != v20; i = i + 1)
    {
      if (*v52 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v51 + 1) + 8 * i);
      if (![v24 caseInsensitiveCompare:{@"URF", v44, v45}])
      {
        v21 = liteInitURF;
        [*(a1 + 16) addObject:@"image/urf"];
        continue;
      }

      if (![v24 caseInsensitiveCompare:@"PDF"])
      {
        v25 = @"application/pdf";
LABEL_24:
        [*(a1 + 16) addObject:v25];
        continue;
      }

      if (![v24 caseInsensitiveCompare:@"JPEG"])
      {
        v25 = @"image/jpeg";
        goto LABEL_24;
      }

      if (![v24 caseInsensitiveCompare:@"PNG"])
      {
        v25 = @"image/png";
        goto LABEL_24;
      }

      if ([v24 caseInsensitiveCompare:@"application/octet-stream"] && objc_msgSend(v24, "containsString:", @"/"))
      {
        [*(a1 + 16) addObject:v24];
      }
    }

    v20 = [v19 countByEnumeratingWithState:&v51 objects:v55 count:16];
  }

  while (v20);
LABEL_27:

  a2 = v45;
  v7 = NSURLComponents_ptr;
  v11 = v44;
  v13 = HIDWORD(v44);
  v9 = v46;

  if (!v21)
  {
    goto LABEL_31;
  }

  if ((v21)(v49, v45, 1))
  {
    v26 = 0;
    goto LABEL_32;
  }

  v41 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Driver initialization failed.", buf, 2u);
  }

  v42 = 0;
LABEL_75:

  return v42;
}

void liteSetupDriverInfoFromDeviceIDs(lite_driver_s *a1, NSDictionary *a2)
{
  v5 = 0;
  *v3 = 0u;
  v4 = 0u;
  liteFigureOutDriverSetupInfo(v3, a1, a2);

  v2 = v3[1];
}

void sub_100047768(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v10 = objc_loadWeakRetained((a1 + 32));
    [v10 passwordChallenge:v11 request:v7 completionHandler:v8];
  }

  else
  {
    v8[2](v8, 0);
  }
}

void sub_10004784C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 trustChallengeWithTrust:v9];
  }

  else
  {
    v8 = 0;
  }

  v5[2](v5, v8);
}

void sub_100047D20(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 1)
  {
    v6 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v10 = 134217984;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "device_http<%p>: External auth handler deferred", &v10, 0xCu);
    }

    [*(a1 + 32) passwordChallengeContinue:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    v8 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = 134218240;
      v11 = v9;
      v12 = 2048;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "device_http<%p>: External auth handler provided %p", &v10, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10004825C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    [v4 _rememberCredentialSent:v5];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100048694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_10000B548(va);
  _Unwind_Resume(a1);
}

id sub_1000486EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = [*(a1 + 8) _descriptionLeader];
    v3 = [NSString stringWithFormat:@"%@: %@", v2, *(a1 + 16)];
  }

  else
  {
    v3 = [*(a1 + 8) _descriptionLeader];
  }

  return v3;
}

void sub_100048928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, ...)
{
  va_start(va, a8);

  sub_10000B548(va);
  _Unwind_Resume(a1);
}

void sub_10004897C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 description];
  v5 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 134218242;
    v8 = v6;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "device_http<%p>: Received response async: %{public}@", &v7, 0x16u);
  }

  [*(a1 + 32) storeCredentialBasedOnTransactionResult:v3];
  (*(*(a1 + 40) + 16))();
}

void sub_100048D20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_10000B548(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_100049288(const char *a1, char *__s, _BYTE *a3)
{
  v6 = strlen(__s);
  while (1)
  {
    v7 = *a1;
    if ((v7 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (__maskrune(*a1, 0x4000uLL))
    {
      goto LABEL_32;
    }

LABEL_6:
    if (!*a1)
    {
      goto LABEL_32;
    }

    ++a1;
  }

  if ((_DefaultRuneLocale.__runetype[v7] & 0x4000) == 0)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_32:
    v9 = *a1;
    if (!*a1)
    {
LABEL_33:
      v16 = a3;
      a3 = 0;
      goto LABEL_34;
    }

    if (*a1 < 0)
    {
      while (2)
      {
        if (!__maskrune(v9, 0x4000uLL))
        {
          goto LABEL_12;
        }

LABEL_13:
        v10 = *++a1;
        v9 = v10;
        if ((v10 & 0x80) != 0)
        {
          continue;
        }

        break;
      }
    }

    if ((_DefaultRuneLocale.__runetype[v9] & 0x4000) != 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    v8 = *a1;
    if (v8 == 44)
    {
      goto LABEL_13;
    }

    if (!strncmp(a1, __s, v6) && a1[v6] == 61)
    {
      break;
    }

    v11 = 0;
    if ((v8 & 0x80) == 0)
    {
LABEL_18:
      if ((_DefaultRuneLocale.__runetype[v8] & 0x4000) != 0)
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    while (!__maskrune(v8, 0x4000uLL))
    {
LABEL_21:
      v12 = *a1;
      if (v12 == 34)
      {
        do
        {
          v14 = *++a1;
          v13 = v14;
        }

        while (v14 && v13 != 34);
      }

      else if (v12 == 61)
      {
        v11 = 1;
      }

      else if (!*a1)
      {
        break;
      }

      v15 = *++a1;
      LOBYTE(v8) = v15;
      if ((v15 & 0x80) == 0)
      {
        goto LABEL_18;
      }
    }

LABEL_31:
    if (!v11)
    {
      goto LABEL_33;
    }
  }

  v18 = &a1[v6 + 1];
  v19 = *v18;
  if (*v18)
  {
    if (v19 == 34)
    {
      v20 = 0;
      while (1)
      {
        v22 = *++v18;
        v21 = v22;
        if (!v22 || v21 == 34)
        {
          break;
        }

        if (v20 <= 0x7E)
        {
          a3[v20++] = v21;
        }
      }

      v16 = &a3[v20];
    }

    else
    {
      v23 = 0;
      v24 = v6 + 2;
      v16 = a3;
      do
      {
        if (!memchr("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~+/=", v19, 0x46uLL))
        {
          break;
        }

        if (v23 <= 126)
        {
          ++v23;
          *v16 = v19;
        }

        v19 = a1[v24];
        v16 = &a3[v23];
        ++v24;
      }

      while (v19);
    }
  }

  else
  {
    v16 = a3;
  }

LABEL_34:
  *v16 = 0;
  return a3;
}

void *sub_100049498(void *a1, uint64_t a2)
{
  *a1 = off_100095658;
  a1[1] = 0;
  a1[2] = 0;
  v4 = (a1 + 2);
  v5 = [*(a2 + 8) copy];
  v6 = a1[1];
  a1[1] = v5;

  objc_storeStrong(v4, *(a2 + 16));
  return a1;
}

void sub_10004979C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1000497EC(uint64_t a1)
{
  dispatch_assert_queue_not_V2(&_dispatch_main_q);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _interrupted];
}

void sub_100049858(uint64_t a1)
{
  dispatch_assert_queue_not_V2(&_dispatch_main_q);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidated];
}

void sub_100049EB0(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_10004A2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, id location)
{
  objc_destroyWeak((v22 + 56));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004A308(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));

  if (v3 && WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 56));
    [v5 startStreamingRequestWithPrinter:v3 printSettings:*(a1 + 32) completionHandler:*(a1 + 48)];
  }

  else
  {
    v6 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Can't find printer from endpoint %{public}@", &v8, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10004A8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_100010EF8(&a17);

  _Unwind_Resume(a1);
}

void sub_10004B1A0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[PKPrinterBrowseInfo alloc] initWithResolvedBonjourName:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10004B43C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10004BB88(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [*(a1 + 32) ippNetworkingSession];
    [v4 checkAccessWithSession:v3 completionHandler:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10004BE1C(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) ippNetworkingSession];
  [v4 identifyPrinterWithSession:v3 message:*(a1 + 40) actions:*(a1 + 48)];
}

void sub_10004C068(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = *(a1 + 32);
    if (*(a1 + 48))
    {
      v4 = [v3 ippNetworkingSession];
      [v5 forceRefreshCurrentDescriptionForSession:v4 completionHandler:*(a1 + 40)];
    }

    else
    {
      v4 = [v3 ippNetworkingSession];
      [v5 refreshCurrentDescriptionForSession:v4 completionHandler:*(a1 + 40)];
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10004C3E0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100010D5C(v3, 0xBu, *(a1 + 32));
  }

  (*(*(a1 + 56) + 16))();
}

void sub_10004C560(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 ippResponse];
  v3 = [v4 dataRepresentation];
  (*(v2 + 16))(v2, v3);
}

void sub_10004C6D0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10004C77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10004C8A4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

int main(int argc, const char **argv, const char **envp)
{
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    NSLog(@"Can't set dir suffix");
    exit(-1);
  }

  v4 = NSTemporaryDirectory();
  v5 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = getpid();
    v7 = *argv;
    v13[0] = 67109634;
    v13[1] = v6;
    v14 = 2082;
    v15 = v7;
    v16 = 2114;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PrinterTool(%d) starting: %{public}s, spool in %{public}@", v13, 0x1Cu);
  }

  atexit_b(&stru_1000A3630);
  liteSetupDefaults();
  v8 = dispatch_source_create(&_dispatch_source_type_signal, 0x1DuLL, 0, &_dispatch_main_q);
  v9 = qword_1000C7C80;
  qword_1000C7C80 = v8;

  if (qword_1000C7C80)
  {
    dispatch_source_set_event_handler(qword_1000C7C80, &stru_1000A3650);
    dispatch_resume(qword_1000C7C80);
  }

  v10 = +[NSXPCListener serviceListener];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v10, sub_10004CBE0, @"AppleLanguagePreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  if ((atomic_load_explicit(&qword_1000C7C90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000C7C90))
  {
    qword_1000C7C88 = objc_opt_new();
    __cxa_guard_release(&qword_1000C7C90);
  }

  [v10 setDelegate:qword_1000C7C88];
  [v10 activate];

  return 0;
}

void sub_10004CACC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1000C7C90);

  _Unwind_Resume(a1);
}

void sub_10004CB18(id a1)
{
  v1 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109120;
    v2[1] = getpid();
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "PrinterTool(%d) exiting", v2, 8u);
  }
}

void sub_10004CBE0()
{
  v0 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "LOCALE CHANGED - xpc will re-launch", v1, 2u);
  }

  exit(0);
}

void sub_10004CC4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v4 = [NSPropertyListSerialization propertyListWithData:v3 options:0 format:0 error:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v4 = 0;
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10004CD30(id a1)
{
  v20[0] = @"jobs";
  v1 = +[lite_job_t gatherLogInfo];
  v20[1] = @"printers";
  v21[0] = v1;
  v2 = +[lite_printer_t gatherLogInfo];
  v21[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

  v4 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "INFO: {", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 description];
  v6 = [v5 componentsSeparatedByString:@"\n"];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = _PKLogCategory(PKLogCategoryDefault[0]);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v18 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "INFO:   %{public}@", buf, 0xCu);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "}", buf, 2u);
  }
}

void _visitHexLines(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x4812000000;
  v29 = sub_10004D288;
  v30 = nullsub_7;
  v31 = &unk_10008BB7A;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  if (a2)
  {
  }

  else
  {
    v10 = "";
    v9 = "";
    v8 = "";
    v7 = "";
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10004D2A0;
  v16[3] = &unk_1000A3678;
  v20 = v9;
  v21 = v8;
  v18 = &v26;
  v19 = v24;
  v22 = v7;
  v23 = v10;
  v11 = v6;
  v17 = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004D4F8;
  v13[3] = &unk_1000A36A0;
  v15 = &v26;
  v12 = objc_retainBlock(v16);
  v14 = v12;
  [v5 enumerateByteRangesUsingBlock:v13];
  if ((v27[6] & 0x80000000) == 0)
  {
    (v12[2])(v12);
  }

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v26, 8);
}

void sub_10004D23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v30 - 144), 8);

  _Unwind_Resume(a1);
}

__n128 sub_10004D288(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u32[0] = a2[4].n128_u32[0];
  a1[3] = result;
  return result;
}

void sub_10004D2A0(uint64_t a1)
{
  v2 = 0;
  v3 = __str;
  v4 = v17;
  do
  {
    if ((v2 & 3) == 0)
    {
      *v3++ = 32;
    }

    if (v2 >= *(*(*(a1 + 40) + 8) + 48))
    {
      v9 = strlen(*(a1 + 56)) + 2;
      if (v9 + strlen(*(a1 + 64)))
      {
        v10 = 0;
        do
        {
          v3[v10++] = 32;
          v11 = strlen(*(a1 + 56));
        }

        while (v11 + strlen(*(a1 + 64)) + 2 > v10);
        v3 += v10;
      }

      *v4 = 32;
    }

    else
    {
      v5 = snprintf(v3, v19 - v3, "%s", *(a1 + 56));
      v6 = *(*(*(a1 + 40) + 8) + v2 + 52);
      v7 = &v3[v5];
      *v7 = a0123456789abcd[*(*(*(a1 + 40) + 8) + v2 + 52) >> 4];
      v7[1] = a0123456789abcd[v6 & 0xF];
      if (v6 < 0)
      {
        v8 = __maskrune(v6, 0x40000uLL);
      }

      else
      {
        v8 = _DefaultRuneLocale.__runetype[v6] & 0x40000;
      }

      v12 = v7 + 2;
      if (v8)
      {
        v13 = v6;
      }

      else
      {
        v13 = 46;
      }

      *v4 = v13;
      v3 = &v12[snprintf(v12, v19 - v12, "%s", *(a1 + 64))];
    }

    ++v4;
    ++v2;
  }

  while (v2 != 16);
  *v3 = 0;
  *v4 = 0;
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 24);
  *(v14 + 24) = v15 + 1;
  v16 = [NSString stringWithFormat:@"%s%8.8x%s  %s  %s%s%s", *(a1 + 72), (16 * v15), *(a1 + 80), __str, *(a1 + 72), v17, *(a1 + 80)];
  (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 48) = 0;
}

uint64_t sub_10004D4F8(uint64_t result, char *a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 1)
  {
    v4 = a2;
    v5 = result;
    v6 = &a2[a4];
    while (1)
    {
      v7 = *(*(v5 + 40) + 8);
      v8 = *(v7 + 48);
      if (v8 > 15)
      {
        break;
      }

      v9 = *v4++;
      *(v7 + 48) = v8 + 1;
      *(v7 + v8 + 52) = v9;
      if (v4 >= v6)
      {
        if (*(*(*(v5 + 40) + 8) + 48) >= 16)
        {
          break;
        }

LABEL_7:
        if (v4 >= v6)
        {
          return result;
        }
      }
    }

    result = (*(*(v5 + 32) + 16))();
    goto LABEL_7;
  }

  return result;
}

id getPrintdRPCProtocolInterface(void)
{
  if (qword_1000C7CA0 != -1)
  {
    sub_10006050C();
  }

  v1 = qword_1000C7C98;

  return v1;
}

void sub_10004D5D4(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PrintdRPCProtocol];
  v16 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v16 count:1];
  v3 = [v1 classesForSelector:"getRecentJobsReply:" argumentIndex:1 ofReply:1];
  v4 = [v3 setByAddingObjectsFromArray:v2];
  [v1 setClasses:v4 forSelector:"getRecentJobsReply:" argumentIndex:1 ofReply:1];

  v15 = objc_opt_class();
  v5 = [NSArray arrayWithObjects:&v15 count:1];
  v6 = [v1 classesForSelector:"getJobUpdateStatus:includeThumbnail:reply:" argumentIndex:0 ofReply:1];
  v7 = [v6 setByAddingObjectsFromArray:v5];
  [v1 setClasses:v7 forSelector:"getJobUpdateStatus:includeThumbnail:reply:" argumentIndex:0 ofReply:1];

  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v14[2] = objc_opt_class();
  v14[3] = objc_opt_class();
  v8 = [NSArray arrayWithObjects:v14 count:4];
  v9 = [v1 classesForSelector:"browseInfoForPrinter:timeout:reply:" argumentIndex:0 ofReply:0];
  v10 = [v9 setByAddingObjectsFromArray:v8];
  [v1 setClasses:v10 forSelector:"browseInfoForPrinter:timeout:reply:" argumentIndex:0 ofReply:0];

  v11 = [v1 classesForSelector:"browseInfoForPrinter:timeout:reply:" argumentIndex:0 ofReply:1];
  v12 = [v11 setByAddingObjectsFromArray:v8];
  [v1 setClasses:v12 forSelector:"browseInfoForPrinter:timeout:reply:" argumentIndex:0 ofReply:1];

  v13 = qword_1000C7C98;
  qword_1000C7C98 = v1;
}

id getPrintdRPCBrowseProtocolInterface(void)
{
  v0 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PKPrintdRPC_BrowseClient_ClientProtocol];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v1 = [NSArray arrayWithObjects:&v8 count:3];
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = v3;
    v5 = [v0 classesForSelector:"browserAdded:removed:" argumentIndex:v2 ofReply:{0, v8, v9}];
    v6 = [v5 setByAddingObjectsFromArray:v1];
    [v0 setClasses:v6 forSelector:"browserAdded:removed:" argumentIndex:v2 ofReply:0];

    v3 = 0;
    v2 = 1;
  }

  while ((v4 & 1) != 0);

  return v0;
}

uint64_t _liteCloseDriver(lite_job_t *a1, lite_driver_s *a2)
{
  v126 = a1;
  v2 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [(lite_job_t *)v126 printd_job_id];
    if (v126)
    {
      v4 = [(lite_job_t *)v126 destination_job_id];
    }

    else
    {
      v4 = -1;
    }

    LODWORD(buf) = 67109376;
    HIDWORD(buf) = v3;
    v129 = 1024;
    v130 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Closing job.", &buf, 0xEu);
  }

  if (!v126->job_stream_http)
  {
    v27 = 1;
LABEL_132:
    v125 = v27;
    goto LABEL_133;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = v126;
  v7 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(lite_job_t *)v6 printd_job_id];
    v9 = [(lite_job_t *)v6 destination_job_id];
    LODWORD(buf) = 67109376;
    HIDWORD(buf) = v8;
    v129 = 1024;
    v130 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Finishing IPP submission.", &buf, 0xEu);
  }

  v10 = [(device_http_t *)v6->job_stream_http finishStreamedIPPRequest];
  job_stream_http = v6->job_stream_http;
  v6->job_stream_http = 0;

  v12 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(lite_job_t *)v6 printd_job_id];
    v14 = [(lite_job_t *)v6 destination_job_id];
    if (v6->op_for_print == 6)
    {
      v15 = "Send-Document";
    }

    else
    {
      v15 = "Print-Job";
    }

    LODWORD(buf) = 67109890;
    HIDWORD(buf) = v13;
    v129 = 1024;
    v130 = v14;
    v131 = 2080;
    v132 = v15;
    v133 = 2112;
    *v134 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] %s result is %@", &buf, 0x22u);
  }

  v16 = [v10 ippResponse];
  v17 = [v16 _findAttribute0:@"job-id" valueTag:33];

  if (v17 && (IXInteger = ippGetIXInteger(v17, 0)) != 0)
  {
    v18 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(lite_job_t *)v6 printd_job_id];
      v20 = [(lite_job_t *)v6 destination_job_id];
      if (v6->op_for_print == 6)
      {
        v21 = "Send-Document";
      }

      else
      {
        v21 = "Print-Job";
      }

      LODWORD(buf) = 67109890;
      HIDWORD(buf) = v19;
      v129 = 1024;
      v130 = v20;
      v131 = 2080;
      v132 = v21;
      v133 = 1024;
      *v134 = IXInteger;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] %s returned job-id is %d.", &buf, 0x1Eu);
    }

    [(lite_job_t *)v6 setDestination_job_id:IXInteger];
    v6->concurrent_monitor = 0;
  }

  else
  {
    v22 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(lite_job_t *)v6 printd_job_id];
      v24 = [(lite_job_t *)v6 destination_job_id];
      LODWORD(buf) = 67109376;
      HIDWORD(buf) = v23;
      v129 = 1024;
      v130 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] No job-id found in response.", &buf, 0xEu);
    }

    IXInteger = 0;
  }

  v25 = [v10 ippStatus];
  v26 = 1;
  if (v25 <= 1051)
  {
    if (v25 <= 1030)
    {
      v124 = IXInteger;
      if (v25 < 3)
      {
        goto LABEL_123;
      }

      if ((v25 - 1025) >= 3)
      {
        goto LABEL_83;
      }

      goto LABEL_61;
    }

    if (v25 > 1040)
    {
      if (v25 == 1041 || v25 == 1051)
      {
        v67 = [v10 ippStatus];
        v68 = [(lite_job_t *)v6 is_canceled];
        v69 = @"NO";
        if (v68)
        {
          v70 = @"YES";
        }

        else
        {
          v70 = @"NO";
        }

        if (v6->force_raster)
        {
          v69 = @"YES";
        }

        v71 = [NSString stringWithFormat:@"ipp status 0x%x job_canceled? %@ - force_raster already? %@\x01", v67, v70, v69];
        v32 = [NSString stringWithFormat:@"%s:%d/%@", "_finishJobSubmission", 321, v71];

        if (v6->force_raster)
        {
          v72 = [(lite_job_t *)v6 printer];
          v73 = [(lite_job_t *)v6 printer];
          liteNotifyPrinter(v72, [v73 reasons] | 0x200000, &v32->isa);

          v74 = [NSString stringWithFormat:@"%s:%d", "_finishJobSubmission", 326];
          v75 = _liteNotifyCheck(86400, v74) == 2;

          if (v75)
          {
            [(lite_job_t *)v6 cancelThisJob];
          }

          else
          {
            _liteNotifyCancel(&v32->isa);
            v101 = _PKLogCategory(PKLogCategoryProgress[0]);
            if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
            {
              v102 = [(lite_job_t *)v6 printd_job_id];
              v103 = [(lite_job_t *)v6 destination_job_id];
              v104 = [(lite_job_t *)v6 is_canceled];
              v105 = "Retrying";
              LODWORD(buf) = 67110146;
              HIDWORD(buf) = v102;
              v129 = 1024;
              if (v104)
              {
                v105 = "Canceling";
              }

              v130 = v103;
              v131 = 2080;
              v132 = v105;
              v133 = 1024;
              *v134 = 333;
              *&v134[4] = 2112;
              *&v134[6] = v32;
              _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] %s job on error response:%d (%@).", &buf, 0x28u);
            }
          }
        }

        else
        {
          v98 = _PKLogCategory(PKLogCategoryProgress[0]);
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
          {
            v99 = [(lite_job_t *)v6 printd_job_id];
            v100 = [(lite_job_t *)v6 destination_job_id];
            LODWORD(buf) = 67109634;
            HIDWORD(buf) = v99;
            v129 = 1024;
            v130 = v100;
            v131 = 2112;
            v132 = v32;
            _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Possibly retry job on error to force raster: %@", &buf, 0x18u);
          }

          v6->force_raster = 1;
        }

        IXInteger = [(lite_job_t *)v6 is_canceled];
        goto LABEL_122;
      }

      goto LABEL_83;
    }

    if ((v25 - 1039) < 2)
    {
      v37 = [v10 ippStatus];
      v38 = [(lite_job_t *)v6 is_canceled];
      v39 = @"NO";
      if (v38)
      {
        v40 = @"YES";
      }

      else
      {
        v40 = @"NO";
      }

      if (v6->force_uncompressed)
      {
        v39 = @"YES";
      }

      v41 = [NSString stringWithFormat:@"ipp status 0x%x job_canceled? %@ - force_uncompressed already? %@\x01", v37, v40, v39];
      v32 = [NSString stringWithFormat:@"%s:%d/%@", "_finishJobSubmission", 351, v41];

      v42 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [(lite_job_t *)v6 printd_job_id];
        v44 = [(lite_job_t *)v6 destination_job_id];
        LODWORD(buf) = 67109634;
        HIDWORD(buf) = v43;
        v129 = 1024;
        v130 = v44;
        v131 = 2112;
        v132 = v32;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Forcing uncompressed: %@", &buf, 0x18u);
      }

      v6->force_uncompressed = 1;
      IXInteger = [(lite_job_t *)v6 is_canceled];
      goto LABEL_122;
    }

    if (v25 != 1031)
    {
      goto LABEL_83;
    }

LABEL_94:
    v81 = [v10 ippStatus];
    v82 = [(lite_job_t *)v6 is_canceled];
    v83 = @"NO";
    if (v82)
    {
      v83 = @"YES";
    }

    v84 = [NSString stringWithFormat:@"ipp status 0x%x job_canceled? %@", v81, v83];
    v32 = [NSString stringWithFormat:@"%s:%d/%@", "_finishJobSubmission", 228, v84];

    v85 = [(lite_job_t *)v6 printer];
    liteNotifyPrinter(v85, 0x10000, &v32->isa);

    v86 = [NSString stringWithFormat:@"%s:%d", "_finishJobSubmission", 232];
    v87 = _liteNotifyCheck(86400, v86) == 2;

    if (v87)
    {
      [(lite_job_t *)v6 cancelThisJob];
    }

    else
    {
      _liteNotifyCancel(&v32->isa);
    }

    v62 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v88 = [(lite_job_t *)v6 printd_job_id];
      v89 = [(lite_job_t *)v6 destination_job_id];
      v90 = [(lite_job_t *)v6 is_canceled];
      v91 = "Retrying";
      LODWORD(buf) = 67109890;
      HIDWORD(buf) = v88;
      v129 = 1024;
      if (v90)
      {
        v91 = "Canceling";
      }

      v130 = v89;
      v131 = 2080;
      v132 = v91;
      v133 = 2112;
      *v134 = v32;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "[Job %d][%d] %s job on lost connection error (%@)", &buf, 0x22u);
    }

    goto LABEL_146;
  }

  if (v25 > 1285)
  {
    if (v25 > 4095)
    {
      if (v25 == 4096)
      {
        [(lite_job_t *)v6 cancelThisJob];
        v32 = _PKLogCategory(PKLogCategoryProgress[0]);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v92 = [(lite_job_t *)v6 printd_job_id];
          v93 = [(lite_job_t *)v6 destination_job_id];
          LODWORD(buf) = 67109376;
          HIDWORD(buf) = v92;
          v129 = 1024;
          v130 = v93;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "[Job %d][%d] Canceling job on auth canceled.", &buf, 0xEu);
        }

        IXInteger = 1;
        goto LABEL_122;
      }

      if (v25 != 4097)
      {
        goto LABEL_83;
      }

      goto LABEL_94;
    }

    if ((v25 - 1286) < 2 || v25 == 1291)
    {
      v45 = [v10 ippStatus];
      v46 = [(lite_job_t *)v6 is_canceled];
      v47 = @"NO";
      if (v46)
      {
        v47 = @"YES";
      }

      v48 = [NSString stringWithFormat:@"ipp status 0x%x job_canceled? %@", v45, v47];
      v32 = [NSString stringWithFormat:@"%s:%d/%@", "_finishJobSubmission", 296, v48];

      v49 = [(lite_job_t *)v6 printer];
      v50 = [(lite_job_t *)v6 printer];
      liteNotifyPrinter(v49, [v50 reasons] | 0x20, &v32->isa);

      v51 = [NSString stringWithFormat:@"%s:%d", "_finishJobSubmission", 300];
      v52 = _liteNotifyCheck(86400, v51) == 2;

      if (v52)
      {
        [(lite_job_t *)v6 cancelThisJob];
      }

      else
      {
        _liteNotifyCancel(&v32->isa);
        if ([(lite_job_t *)v6 destination_job_id]&& v6->op_for_print == 6)
        {
          v76 = [NSString stringWithFormat:@"cancel_has_job_id_and_is_send_document(%@)", v32];
          sub_100050630(v6, v76);
        }
      }

      v62 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v77 = [(lite_job_t *)v6 printd_job_id];
        v78 = [(lite_job_t *)v6 destination_job_id];
        v79 = [(lite_job_t *)v6 is_canceled];
        v80 = "Retrying";
        LODWORD(buf) = 67109890;
        HIDWORD(buf) = v77;
        v129 = 1024;
        if (v79)
        {
          v80 = "Canceling";
        }

        v130 = v78;
        v131 = 2080;
        v132 = v80;
        v133 = 2112;
        *v134 = v32;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] %s job on busy error (%@).", &buf, 0x22u);
      }

      goto LABEL_146;
    }

    goto LABEL_83;
  }

  if (v25 > 1182)
  {
    if (v25 != 1183)
    {
      if (v25 != 1282)
      {
        v124 = IXInteger;
        if (v25 == 1285)
        {
          goto LABEL_123;
        }

        goto LABEL_83;
      }

      goto LABEL_94;
    }
  }

  else
  {
    if (v25 == 1052)
    {
LABEL_36:
      v28 = [v10 ippStatus];
      v29 = [(lite_job_t *)v6 is_canceled];
      v30 = @"NO";
      if (v29)
      {
        v30 = @"YES";
      }

      v31 = [NSString stringWithFormat:@"ipp status 0x%x job_canceled? %@", v28, v30];
      v32 = [NSString stringWithFormat:@"%s:%d/%@", "_finishJobSubmission", 271, v31];

      v33 = [(lite_job_t *)v6 printer];
      v34 = [(lite_job_t *)v6 printer];
      liteNotifyPrinter(v33, [v34 reasons] | 0x100000, &v32->isa);

      v35 = [NSString stringWithFormat:@"%s:%d", "_finishJobSubmission", 274];
      v36 = _liteNotifyCheck(86400, v35) == 2;

      if (v36)
      {
        [(lite_job_t *)v6 cancelThisJob];
      }

      else
      {
        _liteNotifyCancel(&v32->isa);
      }

      v62 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v94 = [(lite_job_t *)v6 printd_job_id];
        v95 = [(lite_job_t *)v6 destination_job_id];
        v96 = [(lite_job_t *)v6 is_canceled];
        v97 = "Retrying";
        LODWORD(buf) = 67109890;
        HIDWORD(buf) = v94;
        v129 = 1024;
        if (v96)
        {
          v97 = "Canceling";
        }

        v130 = v95;
        v131 = 2080;
        v132 = v97;
        v133 = 2112;
        *v134 = v32;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "[Job %d][%d] %s job on account id missing error (%@).", &buf, 0x22u);
      }

      goto LABEL_146;
    }

    if (v25 != 1055)
    {
      if (v25 == 1180)
      {
        goto LABEL_36;
      }

LABEL_83:
      if ([(lite_job_t *)v6 is_canceled])
      {
        v26 = 0;
        v124 = 0;
        IXInteger = 1;
        goto LABEL_123;
      }

      v114 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"ipp status 0x%x", [v10 ippStatus]);
      v32 = [NSString stringWithFormat:@"%s:%d/%@", "_finishJobSubmission", 368, v114];

      if ([v10 ippStatus] == 1182)
      {
        v115 = [(lite_job_t *)v6 printer];
        v116 = [(lite_job_t *)v6 printer];
        liteNotifyPrinter(v115, [v116 reasons] | 0x400000, &v32->isa);
      }

      else
      {
        v115 = [(lite_job_t *)v6 printer];
        v116 = [(lite_job_t *)v6 printer];
        liteNotifyPrinter(v115, [v116 reasons] | 0x200000, &v32->isa);
      }

      v117 = [NSString stringWithFormat:@"%s:%d", "_finishJobSubmission", 375];
      v118 = _liteNotifyCheck(86400, v117) == 2;

      if (v118)
      {
        [(lite_job_t *)v6 cancelThisJob];
      }

      else
      {
        _liteNotifyCancel(&v32->isa);
        if ([(lite_job_t *)v6 destination_job_id]&& v6->op_for_print == 6)
        {
          v119 = [NSString stringWithFormat:@"cancel_has_job_id_and_is_send_document(%@)", v32];
          sub_100050630(v6, v119);
        }
      }

      v62 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v120 = [(lite_job_t *)v6 printd_job_id];
        v121 = [(lite_job_t *)v6 destination_job_id];
        v122 = [(lite_job_t *)v6 is_canceled];
        v123 = "Retrying";
        LODWORD(buf) = 67110146;
        HIDWORD(buf) = v120;
        v129 = 1024;
        if (v122)
        {
          v123 = "Canceling";
        }

        v130 = v121;
        v131 = 2080;
        v132 = v123;
        v133 = 1024;
        *v134 = 394;
        *&v134[4] = 2112;
        *&v134[6] = v32;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] %s job on error response:%d (%@).", &buf, 0x28u);
      }

      goto LABEL_146;
    }
  }

LABEL_61:
  v53 = [v10 ippStatus];
  v54 = [(lite_job_t *)v6 is_canceled];
  v55 = @"NO";
  if (v54)
  {
    v55 = @"YES";
  }

  v56 = [NSString stringWithFormat:@"ipp status 0x%x job_canceled? %@", v53, v55];
  v32 = [NSString stringWithFormat:@"%s:%d/%@", "_finishJobSubmission", 250, v56];

  v57 = [(lite_job_t *)v6 printer];
  v58 = [(lite_job_t *)v6 printer];
  liteNotifyPrinter(v57, [v58 reasons] | 0x80000, &v32->isa);

  v59 = [NSString stringWithFormat:@"%s:%d", "_finishJobSubmission", 254];
  v60 = _liteNotifyCheck(86400, v59) == 2;

  if (v60)
  {
    [(lite_job_t *)v6 cancelThisJob];
  }

  else
  {
    _liteNotifyCancel(&v32->isa);
    v61 = [(lite_job_t *)v6 printer];
    liteNotifyClearPassword(v61);
  }

  v62 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    v63 = [(lite_job_t *)v6 printd_job_id];
    v64 = [(lite_job_t *)v6 destination_job_id];
    v65 = [(lite_job_t *)v6 is_canceled];
    v66 = "Retrying";
    LODWORD(buf) = 67109890;
    HIDWORD(buf) = v63;
    v129 = 1024;
    if (v65)
    {
      v66 = "Canceling";
    }

    v130 = v64;
    v131 = 2080;
    v132 = v66;
    v133 = 2112;
    *v134 = v32;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "[Job %d][%d] %s job on authorization error (%@).", &buf, 0x22u);
  }

LABEL_146:

  IXInteger = [(lite_job_t *)v6 is_canceled];
LABEL_122:

  v26 = 0;
  v124 = 0;
LABEL_123:

  objc_autoreleasePoolPop(v5);
  if (v26)
  {
    if (IXInteger >= 1)
    {
      v106 = [(lite_job_t *)v6 printer];
      [v106 setBusy:0];

      v107 = objc_autoreleasePoolPush();
      if ([(lite_job_t *)v6 is_canceled])
      {
        sub_100050630(v6, @"cancel_externally");
      }

      v108 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        v109 = [(lite_job_t *)v6 printd_job_id];
        v110 = [(lite_job_t *)v6 destination_job_id];
        LODWORD(buf) = 67109376;
        HIDWORD(buf) = v109;
        v129 = 1024;
        v130 = v110;
        _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Checking job status.", &buf, 0xEu);
      }

      v111 = [(lite_job_t *)v6 ippSession];
      v112 = [(lite_job_t *)v6 printer];
      sub_1000556D4(&buf, v111, v112, v124, &off_1000B9048, @"checking_job_status");
    }

    v27 = [(lite_job_t *)v6 is_canceled];
    goto LABEL_132;
  }

  v125 = IXInteger;
LABEL_133:

  return v125;
}

void sub_100050630(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v3 printd_job_id];
    if (v3)
    {
      v7 = [v3 destination_job_id];
    }

    else
    {
      v7 = -1;
    }

    LODWORD(v8) = 67109376;
    HIDWORD(v8) = v6;
    v9 = 1024;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[Job %d][%d] Canceling incomplete job.", &v8, 0xEu);
  }

  sub_1000552D4(&v8, v3, v4);
}

uint64_t liteCloseDriver(lite_job_t *a1, lite_driver_s *a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100050884;
  v6[3] = &unk_1000A3710;
  v7 = a1;
  v8 = &v10;
  v9 = a2;
  v3 = v7;
  [(lite_job_t *)v3 _withActivity:v6];

  v4 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v4;
}

void sub_100050884(uint64_t a1, os_activity_t activity)
{
  v3 = _os_activity_create(&_mh_execute_header, "liteCloseDriver", activity, OS_ACTIVITY_FLAG_DEFAULT);
  v4 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) printd_job_id];
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = [v6 destination_job_id];
    }

    else
    {
      v7 = -1;
    }

    *buf = 67109890;
    v18 = v5;
    v19 = 1024;
    v20 = v7;
    v21 = 2048;
    v22 = v3;
    v23 = 2080;
    v24 = "liteCloseDriver";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Activity (%p) ENTER: %s", buf, 0x22u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050B0C;
  block[3] = &unk_1000A36E8;
  v13 = *(a1 + 32);
  v8 = v13;
  v15 = v13;
  v16 = *(a1 + 48);
  os_activity_apply(v3, block);
  v9 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) printd_job_id];
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = [v11 destination_job_id];
    }

    else
    {
      v12 = -1;
    }

    *buf = 67109890;
    v18 = v10;
    v19 = 1024;
    v20 = v12;
    v21 = 2048;
    v22 = v3;
    v23 = 2080;
    v24 = "liteCloseDriver";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Activity (%p) EXIT: %s", buf, 0x22u);
  }
}

uint64_t sub_100050B0C(uint64_t a1, lite_driver_s *a2)
{
  result = _liteCloseDriver(*(a1 + 32), a2);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t liteDoPrint(lite_job_t *a1)
{
  v1 = a1;
  v2 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [(lite_job_t *)v1 printer];
    v4 = [(lite_job_t *)v1 printer];
    v5 = [v4 displayName];
    v6 = [v5 UTF8String];
    v7 = [(lite_job_t *)v1 printd_job_id];
    v8 = [(lite_job_t *)v1 spoolDocumentFilename];
    buf.st_dev = 134218754;
    *&buf.st_mode = v3;
    WORD2(buf.st_ino) = 2082;
    *(&buf.st_ino + 6) = v6;
    HIWORD(buf.st_gid) = 1024;
    buf.st_rdev = v7;
    *(&buf.st_rdev + 2) = 2080;
    *(&buf.st_rdev + 6) = [v8 UTF8String];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Printer<%p> %{public}s] Printing job #%d (%s).", &buf, 0x26u);
  }

  v9 = [(lite_job_t *)v1 spoolDocumentFilename];
  v10 = v9 == 0;

  if (v10)
  {
    v17 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [(lite_job_t *)v1 printd_job_id];
      if (v1)
      {
        v19 = [(lite_job_t *)v1 destination_job_id];
      }

      else
      {
        v19 = -1;
      }

      buf.st_dev = 67109376;
      *&buf.st_mode = v18;
      LOWORD(buf.st_ino) = 1024;
      *(&buf.st_ino + 2) = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[Job %d][%d] Missing print file.", &buf, 0xEu);
    }

    goto LABEL_43;
  }

  v119 = 0;
  v120 = 0;
  v121 = 0;
  v11 = [(lite_job_t *)v1 spoolDocumentFilename];
  v12 = v11;
  v13 = lstat([v11 UTF8String], &buf) == 0;

  if (!v13)
  {
    v14 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [(lite_job_t *)v1 printd_job_id];
      if (v1)
      {
        v16 = [(lite_job_t *)v1 destination_job_id];
      }

      else
      {
        v16 = -1;
      }

      *v122 = 67109376;
      v123 = v15;
      v124 = 1024;
      v125 = v16;
      v30 = "[Job %d][%d] Missing print file.";
LABEL_41:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v30, v122, 0xEu);
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  if ((buf.st_mode & 0xF000) == 0xA000)
  {
    v14 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = [(lite_job_t *)v1 printd_job_id];
      if (v1)
      {
        v21 = [(lite_job_t *)v1 destination_job_id];
      }

      else
      {
        v21 = -1;
      }

      *v122 = 67109376;
      v123 = v20;
      v124 = 1024;
      v125 = v21;
      v30 = "[Job %d][%d] Job file is a symlink and cannot be printed.";
      goto LABEL_41;
    }

LABEL_42:

LABEL_43:
    [(lite_job_t *)v1 finishJob:8];
    v46 = 0;
    goto LABEL_44;
  }

  v22 = [(lite_job_t *)v1 printer];
  v23 = [v22 attrs_printer_native_formats];

  v24 = [(lite_job_t *)v1 request_attrs];
  v118 = (*(v24->var0 + 76))(v24);
  v25 = [(lite_job_t *)v1 request_attrs];
  v114 = (*(v25->var0 + 60))(v25);
  v26 = [(lite_job_t *)v1 spoolDocumentFormat];
  v27 = [v26 compare:@"image/jpeg"];

  if (v27)
  {
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v31 = [(lite_job_t *)v1 spoolDocumentFilename];
    v32 = sub_100051CA0(v31, &v119);
    v29 = v119;
    v28 = HIDWORD(v119);
    if (v32 && !v118 && v119 && HIDWORD(v119))
    {
      v34 = v119 >= (2 * SHIDWORD(v119)) || SHIDWORD(v119) >= (2 * v119);

      if (v34)
      {
        v35 = v1;
        v36 = [(lite_job_t *)v35 request_attrs];
        v37 = (*v36->var0)(v36);
        v38 = v37;
        if (v37)
        {
          v39 = [v37 mediaSize];
          v40 = v39;
          v41 = 0.0;
          if (v39)
          {
            v42 = [v39 xDimension];
            v43 = [v40 yDimension];
            if (v42)
            {
              if (v43)
              {
                if (v42 <= v43)
                {
                  v44 = v43;
                  v45 = v42;
                }

                else
                {
                  v44 = v42;
                  v45 = v43;
                }

                v41 = v44 / v45;
              }
            }
          }
        }

        else
        {
          v41 = 0.0;
        }

        if (v29 <= v28)
        {
          v91 = v28;
        }

        else
        {
          v91 = v29;
        }

        if (v29 >= v28)
        {
          v92 = v28;
        }

        else
        {
          v92 = v29;
        }

        if (vabdd_f64(1.0, v41 / (v91 / v92)) > 0.15)
        {
          v93 = v118;
          v118 = @"fit";

          v94 = [(lite_job_t *)v35 request_attrs];
          (*(v94->var0 + 78))(v94, &v118);
        }
      }
    }

    else
    {
    }
  }

  if (!v23 || v1->force_raster || (v51 = -[lite_job_t request_attrs](v1, "request_attrs"), (*(v51->var0 + 16))(v51) >= 2) && (-[lite_job_t printer](v1, "printer"), v52 = objc_claimAutoreleasedReturnValue(), v53 = ([v52 printer_type_from_cups] & 4) == 0, v52, v53))
  {
    v48 = 0;
    goto LABEL_49;
  }

  v54 = [(lite_job_t *)v1 spoolDocumentFormat];
  v55 = [v23 containsObject:v54];

  if (buf.st_size >= -1023)
  {
    v56 = buf.st_size + 1023;
  }

  else
  {
    v56 = buf.st_size + 2046;
  }

  if ((v55 & 1) == 0)
  {
    goto LABEL_126;
  }

  v57 = [(lite_job_t *)v1 spoolDocumentFormat];
  v112 = v56 >> 10;
  if ([v57 compare:@"application/pdf"])
  {
    goto LABEL_66;
  }

  v71 = [(lite_job_t *)v1 printer];
  if ([v71 max_pdf] <= 0)
  {

LABEL_66:
    goto LABEL_67;
  }

  v72 = [(lite_job_t *)v1 printer];
  v73 = [v72 max_pdf] < v112;

  if (v73)
  {
LABEL_126:
    v80 = 0;
LABEL_127:
    v48 = 0;
    goto LABEL_128;
  }

LABEL_67:
  if (v27)
  {
    v48 = sub_100051F5C;
    goto LABEL_69;
  }

  v76 = [(lite_job_t *)v1 printer];
  if ([v76 max_jpeg] <= 0)
  {

    v79 = sub_100051F5C;
  }

  else
  {
    v77 = [(lite_job_t *)v1 printer];
    v78 = [v77 max_jpeg] < v112;

    if (v78)
    {
      v79 = 0;
    }

    else
    {
      v79 = sub_100051F5C;
    }
  }

  v81 = [(lite_job_t *)v1 printer];
  if (v29 <= [v81 max_jpeg_x])
  {
    v82 = [(lite_job_t *)v1 printer];
    v83 = v28 > [v82 max_jpeg_y];

    if (!v83)
    {
      goto LABEL_114;
    }
  }

  else
  {
  }

  v79 = 0;
LABEL_114:
  if ((v120 & 0xFFFFFFFD) == 1 || v79 == 0)
  {
    v48 = v79;
  }

  else
  {
    v48 = 0;
  }

  if (v48)
  {
    if (HIDWORD(v120))
    {
      v85 = [(lite_job_t *)v1 printer];
      v86 = [v85 jpegFeatures];
      v87 = [v86 containsObject:@"icc"];

      v48 = v79;
      if ((v87 & 1) == 0)
      {
        goto LABEL_126;
      }
    }
  }

  if (v48)
  {
    if (v121)
    {
      v88 = [(lite_job_t *)v1 printer];
      v89 = [v88 jpegFeatures];
      v90 = [v89 containsObject:@"progressive"];

      if ((v90 & 1) == 0)
      {
        goto LABEL_126;
      }
    }
  }

LABEL_69:
  if (v48 && v118)
  {
    if (![(__CFString *)v118 compare:@"fill"]|| ![(__CFString *)v118 compare:@"fit"]|| ![(__CFString *)v118 compare:@"none"])
    {
      v58 = [(lite_job_t *)v1 printer];
      v59 = [v58 print_scaling_supported] == 0;

      if (v59)
      {
        goto LABEL_126;
      }
    }

LABEL_96:
    if ([v114 count])
    {
      v74 = [(lite_job_t *)v1 spoolDocumentFormat];
      v75 = [v74 caseInsensitiveCompare:@"application/pdf"] == 0;

      if (v75)
      {
        if ([v114 count] <= 1)
        {
          v95 = [v114 firstObject];
          if ([v95 rangeValue] || v96 != -[lite_job_t pdf_pages](v1, "pdf_pages"))
          {
            v48 = lite_print_redraw_pdf;
          }
        }

        else
        {
          v48 = lite_print_redraw_pdf;
        }
      }
    }

    v113 = [(lite_job_t *)v1 spoolDocumentFormat];
    if ([v113 caseInsensitiveCompare:@"application/pdf"])
    {
      v80 = 0;
    }

    else
    {
      v98 = [(lite_job_t *)v1 request_attrs];
      v80 = (*(v98->var0 + 24))(v98);
      if (v80)
      {
        v111 = [(lite_job_t *)v1 printer];
        v99 = [v111 device_uri];
        if (!v99 || (-[lite_job_t printer](v1, "printer"), v108 = objc_claimAutoreleasedReturnValue(), [v108 device_uri], v109 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v109, "absoluteString"), v110 = objc_claimAutoreleasedReturnValue(), v100 = v110, strncmp(objc_msgSend(v110, "UTF8String"), "ipps://", 7uLL)))
        {
          v103 = [v80 length];
          v104 = [(lite_job_t *)v1 printer];
          v107 = v99;
          v105 = v99 == 0;
          v106 = v103 > [v104 documentPasswordSupported];

          if (!v105)
          {
          }

          if (v106)
          {
            goto LABEL_127;
          }

LABEL_147:
          if (v48)
          {
            v97 = [(lite_job_t *)v1 spoolDocumentFormat];
            if ([v97 caseInsensitiveCompare:@"application/pdf"])
            {
            }

            else
            {
              v101 = [(lite_job_t *)v1 request_attrs];
              v102 = (*(v101->var0 + 4))(v101);

              if (v102)
              {
                v48 = lite_print_redraw_pdf;
              }
            }
          }

          goto LABEL_128;
        }
      }
    }

    goto LABEL_147;
  }

  if (v48)
  {
    goto LABEL_96;
  }

  v80 = 0;
LABEL_128:

LABEL_49:
  if ((v48 || v27) && (-[lite_job_t spoolDocumentFormat](v1, "spoolDocumentFormat"), v49 = objc_claimAutoreleasedReturnValue(), v50 = [v49 caseInsensitiveCompare:@"image/png"] == 0, v49, !v50))
  {
    if (!v48)
    {
      v48 = lite_print_pdf;
    }
  }

  else if (v23 && !v1->force_raster)
  {
    if ([v23 containsObject:@"application/pdf"])
    {
      v48 = lite_print_pdfimage;
    }

    else
    {
      v48 = lite_print_image;
    }
  }

  else
  {
    if (!v27)
    {
      v60 = [(lite_job_t *)v1 spoolDocumentFilename];
      if (sub_100051CA0(v60, &v119))
      {
        v61 = v119;
        v62 = HIDWORD(v119);
        v63 = v120;
        v64 = SHIDWORD(v119) * v119 * v120 > MaxImageMemory;

        if (v64)
        {
          v65 = _PKLogCategory(PKLogCategoryProgress[0]);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            v66 = [(lite_job_t *)v1 printd_job_id];
            if (v1)
            {
              v67 = [(lite_job_t *)v1 destination_job_id];
            }

            else
            {
              v67 = -1;
            }

            *v122 = 67110400;
            v123 = v66;
            v124 = 1024;
            v125 = v67;
            v126 = 1024;
            v127 = v61;
            v128 = 1024;
            v129 = v62;
            v130 = 1024;
            v131 = v63;
            v132 = 2048;
            v133 = MaxImageMemory;
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] JPEG file is too big to print locally: %dx%dx%d exceeds memory limit of %ld bytes.", v122, 0x2Au);
          }

          goto LABEL_43;
        }
      }

      else
      {
      }
    }

    v48 = lite_print_image;
  }

  v68 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    v69 = [(lite_job_t *)v1 printd_job_id];
    if (v1)
    {
      v70 = [(lite_job_t *)v1 destination_job_id];
    }

    else
    {
      v70 = -1;
    }

    *v122 = 67109376;
    v123 = v69;
    v124 = 1024;
    v125 = v70;
    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Starting print thread.", v122, 0xEu);
  }

  v115[0] = _NSConcreteStackBlock;
  v115[1] = 3221225472;
  v115[2] = sub_100052004;
  v115[3] = &unk_1000A3738;
  v117 = v48;
  v116 = v1;
  [NSThread detachNewThreadWithBlock:v115];

  v46 = 1;
LABEL_44:

  return v46;
}

uint64_t sub_100051CA0(void *a1, _DWORD *a2)
{
  v3 = a1;
  theDict = 0;
  v4 = lite_create_image(v3, 0, 0, &theDict);
  v5 = v4;
  if (v4)
  {
    ColorSpace = CGImageGetColorSpace(v4);
    if (ColorSpace)
    {
      a2[2] = CGColorSpaceGetNumberOfComponents(ColorSpace);
      if (CGColorSpaceIsICCCompatible())
      {
        v7 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
        v8 = CGColorSpaceCreateWithName(kCGColorSpaceGenericGrayGamma2_2);
        if (CGColorSpaceEqualToColorSpace())
        {
          a2[3] = 0;
        }

        else
        {
          v13 = CGColorSpaceEqualToColorSpace();
          a2[3] = v13 ^ 1;
          if (!theDict)
          {
            LOBYTE(v13) = 1;
          }

          if ((v13 & 1) == 0)
          {
            Value = CFDictionaryGetValue(theDict, kCGImagePropertyProfileName);
            if (Value)
            {
              v15 = CFEqual(Value, @"Apple Wide Color Sharing Profile") == 0;
            }

            else
            {
              v15 = 1;
            }

            a2[3] = v15;
          }
        }

        if (v7)
        {
          CFRelease(v7);
        }

        if (v8)
        {
          CFRelease(v8);
        }

        goto LABEL_23;
      }

      v11 = 1;
      v12 = 3;
    }

    else
    {
      a2[3] = 0;
      v11 = 3;
      v12 = 2;
    }

    a2[v12] = v11;
    if (!theDict)
    {
      goto LABEL_35;
    }

LABEL_23:
    valuePtr = 0;
    v16 = CFDictionaryGetValue(theDict, kCGImagePropertyOrientation);
    v17 = v16 && CFNumberGetValue(v16, kCFNumberIntType, &valuePtr) && valuePtr > 4;
    v18 = CFDictionaryGetValue(theDict, kCGImagePropertyJFIFDictionary);
    if (v18)
    {
      v19 = CFDictionaryGetValue(v18, kCGImagePropertyJFIFIsProgressive);
      if (v19)
      {
        v20 = CFBooleanGetValue(v19) != 0;
      }

      else
      {
        v20 = 0;
      }

      a2[4] = v20;
    }

    CFRelease(theDict);
    if (v17)
    {
      *a2 = CGImageGetHeight(v5);
      Width = CGImageGetWidth(v5);
    }

    else
    {
LABEL_35:
      *a2 = CGImageGetWidth(v5);
      Width = CGImageGetHeight(v5);
    }

    a2[1] = Width;
    CFRelease(v5);
    v10 = 1;
    goto LABEL_37;
  }

  v9 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "lite_get_jpeg_dimensions: Unable to open image from job file.", buf, 2u);
  }

  v10 = 0;
LABEL_37:

  return v10;
}

uint64_t sub_100051F5C(void *a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10005997C;
  v3[3] = &unk_1000A21F0;
  v4 = a1;
  v1 = v4;
  [v1 _withActivity:v3];

  return 0;
}

uint64_t _liteOpenDriver(lite_job_t *a1, lite_driver_s *a2, NSString *a3, ipp_orient_e a4, int a5, int a6)
{
  v45 = a1;
  v43 = a3;
  v9 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(lite_job_t *)v45 printd_job_id];
    if (v45)
    {
      v11 = [(lite_job_t *)v45 destination_job_id];
    }

    else
    {
      v11 = -1;
    }

    *buf = 67110146;
    *&buf[4] = v10;
    v56 = 1024;
    v57 = v11;
    v58 = 2112;
    v59 = v43;
    v60 = 1024;
    v61 = a4;
    v62 = 1024;
    LODWORD(v63) = a5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Opening output stream, format=%@, orientation=%d, num_sheets=%d", buf, 0x24u);
  }

  v12 = [(lite_job_t *)v45 printer];
  v13 = [(lite_job_t *)v45 printer];
  liteNotifyPrinter(v12, [v13 reasons] | 2, @"_liteOpenDriver:Connecting");

  v14 = v45;
  v15 = v43;
  v52 = 0u;
  v53 = 0u;
  v16 = v14;
  v47 = v16;
  v48 = a4;
  v49 = a5;
  v50 = a6;
  v51 = v15;
  v46 = v51;
  if (!v51)
  {
    v21 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [(lite_job_t *)v16 printd_job_id];
      if (v16)
      {
        v23 = [(lite_job_t *)v16 destination_job_id];
      }

      else
      {
        v23 = -1;
      }

      *buf = 67109376;
      *&buf[4] = v22;
      v56 = 1024;
      v57 = v23;
      v35 = "[Job %d][%d] Unknown job format.";
      goto LABEL_21;
    }

LABEL_22:

    goto LABEL_23;
  }

  v17 = [(lite_job_t *)v16 printer];
  v18 = [v17 device_uri];
  v19 = [v18 absoluteString];
  v20 = v19;
  if (!strncmp([v19 UTF8String], "ipp://", 6uLL))
  {
    v24 = [(lite_job_t *)v16 printer];
    v25 = [v24 displayName];
    v26 = !PKAllowNonTLSConnection(v25);

    if (!v26)
    {
      goto LABEL_13;
    }

    v21 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v33 = [(lite_job_t *)v16 printd_job_id];
      if (v16)
      {
        v34 = [(lite_job_t *)v16 destination_job_id];
      }

      else
      {
        v34 = -1;
      }

      *buf = 67109376;
      *&buf[4] = v33;
      v56 = 1024;
      v57 = v34;
      v35 = "[Job %d][%d] Non secure connection is not trusted, aborting job.";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v35, buf, 0xEu);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

LABEL_13:
  if ([(lite_job_t *)v16 is_canceled]|| ([NSString stringWithFormat:@"%s:%d", "_connectAndDoMostOfTheWork", 1339], v27 = objc_claimAutoreleasedReturnValue(), v28 = _liteNotifyCheck(0, v27) == 2, v27, !v28))
  {
    v29 = [(lite_job_t *)v16 printer];
    v30 = [(lite_job_t *)v16 printer];
    v31 = [v30 reasons];
    v32 = [NSString stringWithUTF8String:"_connectAndDoMostOfTheWork"];
    liteNotifyPrinter(v29, v31 & 0xFFFFFFFD, v32);

    sub_100058458(v54, v16, v51, @"_send_validate_job");
  }

LABEL_23:
  [(lite_job_t *)v16 cancelThisJob];

  v36 = [(lite_job_t *)v16 printer];
  v37 = [(lite_job_t *)v16 printer];
  liteNotifyPrinter(v36, [v37 reasons] & 0xFFFFFFFD, @"_liteOpenDriver:PastConnecting");

  v38 = [NSString stringWithFormat:@"abort_reason: 0x%x", 0x200000];
  v39 = [NSString stringWithFormat:@"%s:%d/%@", "_liteOpenDriver", 1482, v38];

  v40 = [(lite_job_t *)v16 printer];
  v41 = [(lite_job_t *)v16 printer];
  liteNotifyPrinter(v40, [v41 reasons] | 0x200000, v39);

  return 0;
}

void sub_100053918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, _Unwind_Exception *exception_object, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, id a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  sub_1000583D8(&a37);

  sub_1000117C8(&a45);
  sub_100059940(&a27);

  _Unwind_Resume(a1);
}

uint64_t sub_100053DC0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if ([v5 is_canceled])
  {
    v6 = -1;
  }

  else
  {
    v6 = [v5[2] writeIPPDocumentPayload:a2 length:a3];
    if (v6 >= 1)
    {
      [v5 make_progress:v6];
    }
  }

  return v6;
}

void sub_100053E54(uint64_t a1, uint64_t a2)
{
  v4 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) printd_job_id];
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = [v6 destination_job_id];
    }

    else
    {
      v7 = -1;
    }

    v8[0] = 67109634;
    v8[1] = v5;
    v9 = 1024;
    v10 = v7;
    v11 = 2080;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] %s", v8, 0x18u);
  }
}

uint64_t liteInitializeLiteDriverStruct(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5)
{
  v8 = a3;
  v94 = 0;
  v9 = (*(*a1 + 128))(a1);
  if (v9)
  {
    if (*(a4 + 128) && v9 <= 255 && *(a4 + 132))
    {
      *(a4 + 88) = 1;
    }

    else
    {
      *(a4 + 88) = v9;
      LOBYTE(v9) = 1;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
    *(a4 + 88) = 1;
  }

  *(a4 + 23) = v9;
  v10 = (*(*a1 + 544))(a1);
  if (!v10)
  {
    v10 = (*(*a1 + 448))(a1);
    if (!v10)
    {
      v13 = (*(a4 + 120) >> 1) & 1;
      goto LABEL_24;
    }
  }

  if (![v10 compare:@"monochrome"] || !objc_msgSend(v10, "compare:", @"auto-monochrome") || !objc_msgSend(v10, "compare:", @"process-monochrome"))
  {
    if ((*(*a1 + 584))(a1) && (*(*a1 + 576))(a1) == 5 && *(a4 + 2016))
    {
      LOBYTE(v13) = 8;
LABEL_24:
      *(a4 + 17) = v13;
      if (!(*(*a1 + 584))(a1) || (*(*a1 + 576))(a1) != 5 || *(a4 + 17) != 1)
      {
        goto LABEL_35;
      }

      v14 = *(a4 + 2012);
      if (*(a4 + 2008))
      {
        if (!v14)
        {
          v15 = 3;
LABEL_34:
          *(a4 + 17) = v15;
LABEL_35:
          v16 = *(a4 + 19);
          if (v16 == 5)
          {
            v17 = 1440;
          }

          else
          {
            v17 = 720;
          }

          if (v16 == 3)
          {
            v18 = 360;
          }

          else
          {
            v18 = v17;
          }

          v19 = *(a4 + 2020);
          *(a4 + 36) = v19;
          v20 = *(a4 + 2000);
          if (v20 >= 2)
          {
            v21 = *(a4 + 2024);
            if (v21 <= v18)
            {
              v22 = (a4 + 2028);
              v23 = v20 - 2;
              do
              {
                v19 = v21;
                *(a4 + 36) = v21;
                if (!v23)
                {
                  break;
                }

                v24 = *v22++;
                v21 = v24;
                --v23;
              }

              while (v24 <= v18);
            }
          }

          if (v16 == 3)
          {
            if (v19 >= 0x169)
            {
              v25 = v19 >> 1;
              *(a4 + 112) = v25;
              *(a4 + 116) = v25;
              *(a4 + 36) = v25;
              goto LABEL_54;
            }
          }

          else if (v16 != 5)
          {
            *(a4 + 112) = v19;
            if (v19 >= 0x169)
            {
              v19 = v19 / 2;
            }

            goto LABEL_53;
          }

          *(a4 + 112) = v19;
LABEL_53:
          *(a4 + 116) = v19;
LABEL_54:
          v93 = (*(*a1 + 672))(a1);
          if (v93)
          {
            if (a5 == 1 || ![v93 compare:@"one-sided"])
            {
              v26 = 1;
              goto LABEL_63;
            }

            if (*(a4 + 120))
            {
              if (![v93 compare:@"two-sided-long-edge"])
              {
                v26 = 3;
                goto LABEL_63;
              }

              if ((*(a4 + 120) & 1) != 0 && ![v93 compare:@"two-sided-short-edge"])
              {
                v26 = 2;
LABEL_63:
                *(a4 + 18) = v26;
              }
            }
          }

          v91 = a5;
          v27 = *(a4 + 988);
          *(a4 + 80) = v27;
          v28 = &MediaSizes[8 * v27];
          LODWORD(v29) = *v28;
          LODWORD(v30) = *(v28 + 1);
          v94 = 0;
          if (*(a4 + 18) >= 2u && *(a4 + 956) && *(a4 + 960) && *(a4 + 964) && *(a4 + 968))
          {
            v31 = (a4 + 956);
          }

          else
          {
            v31 = (a4 + 972);
          }

          *(a4 + 96) = *v31;
          if (!pwgInitSize(v95, a1, &v94))
          {
            goto LABEL_77;
          }

          v32 = pwgMediaForSize(v95[0], v95[1], v99);
          v29 = *(v32 + 6);
          v30 = *(v32 + 7);
          v33 = v96;
          if (v94)
          {
            v34 = v97;
            *(a4 + 96) = v96;
            *(a4 + 100) = v34;
            v35 = v98;
            *(a4 + 104) = v98;
            v36 = v35;
          }

          else
          {
            v36 = v98;
          }

          if (v36 + v33 >= v29)
          {
            v58 = [NSString stringWithFormat:@"Unsupported margin/width combination: left:%d right:%d width:%d.", v33, v36, v29];
            v59 = v58;
            v8[2](v8, [v58 UTF8String]);
          }

          else
          {
            if ((HIDWORD(v98) + v97) < v30)
            {
LABEL_77:
              v37 = (*(*a1 + 640))(a1);
              *(a4 + 84) = validate_enum<ipp_orient_e,unsigned char>(v37);
              v92 = (**a1)(a1);
              if (v92)
              {
                v38 = [v92 mediaSource];
                if (v38)
                {
                  v39 = 0;
                  while (1)
                  {
                    v40 = (&MediaSourceStrings)[v39];
                    v41 = v38;
                    if (!strcmp([v38 UTF8String], v40))
                    {
                      break;
                    }

                    if (++v39 == 50)
                    {
                      v42 = [NSString stringWithFormat:@"Unsupported URF media-source %@.", v38];
                      v43 = v42;
                      v8[2](v8, [v42 UTF8String]);

                      LOBYTE(v39) = 0;
                      break;
                    }
                  }

                  *(a4 + 21) = v39;
                }

                v44 = [v92 mediaType];
                if (v44)
                {
                  v45 = 0;
                  while (1)
                  {
                    v46 = (&MediaTypeStrings)[v45];
                    v47 = v44;
                    if (!strcmp([v44 UTF8String], v46))
                    {
                      break;
                    }

                    if (++v45 == 14)
                    {
                      v48 = [NSString stringWithFormat:@"Unsupported URF media-type %@.", v44];
                      v49 = v48;
                      v8[2](v8, [v48 UTF8String]);

                      LOBYTE(v45) = 0;
                      break;
                    }
                  }

                  *(a4 + 20) = v45;
                }
              }

              if (v29 >= 1 && v30 >= 1)
              {
                v50 = 0;
                v51 = &dword_10006B724;
                do
                {
                  v52 = v29 - *(v51 - 1);
                  if (v52 < 0)
                  {
                    v52 = *(v51 - 1) - v29;
                  }

                  if (v52 <= 0xAF)
                  {
                    v53 = v30 - *v51;
                    if (v53 < 0)
                    {
                      v53 = *v51 - v30;
                    }

                    if (v53 < 0xB0)
                    {
                      break;
                    }
                  }

                  ++v50;
                  v51 += 2;
                }

                while (v50 != 24);
                *(a4 + 80) = v50;
                *(a4 + 92) = 1;
              }

              if (!v94 && *(a4 + 952) && (*(a4 + 19) == 5 || *(a4 + 80) <= 7))
              {
                *(a4 + 96) = 0;
                *(a4 + 104) = 0;
              }

              v54 = *(a4 + 2056);
              if (v54 && !v54(a4, v91))
              {
                v88 = [NSString stringWithFormat:@"prepjob method returned 0, aborting."];
                v89 = v88;
                v8[2](v8, [v88 UTF8String]);

                v12 = 0;
              }

              else
              {
                v55 = *(a4 + 36);
                *(a4 + 28) = v55 * v29 / 0x9ECu;
                *(a4 + 32) = v55 * v30 / 0x9ECu;
                if ((*(a4 + 17) - 1) > 7u)
                {
                  LOBYTE(v56) = 8;
                  v57 = 8;
                }

                else
                {
                  v56 = 0x1030080808300818uLL >> (8 * ((*(a4 + 17) - 1) & 0x1Fu));
                  v57 = dword_10006BE60[(*(a4 + 17) - 1)];
                }

                *(a4 + 16) = v56;
                v60 = [NSString stringWithFormat:@"header.bitsPerPixel = %u", v57];
                v61 = v60;
                v8[2](v8, [v60 UTF8String]);

                v62 = [NSString stringWithFormat:@"header.colorSpace = %u", *(a4 + 17)];
                v63 = v62;
                v8[2](v8, [v62 UTF8String]);

                v64 = [NSString stringWithFormat:@"header.duplexMode = %u", *(a4 + 18)];
                v65 = v64;
                v8[2](v8, [v64 UTF8String]);

                v66 = [NSString stringWithFormat:@"header.printQuality = %u", *(a4 + 19)];
                v67 = v66;
                v8[2](v8, [v66 UTF8String]);

                v68 = [NSString stringWithFormat:@"header.mediaType = %u", *(a4 + 20)];
                v69 = v68;
                v8[2](v8, [v68 UTF8String]);

                v70 = [NSString stringWithFormat:@"header.inputSlot = %u", *(a4 + 21)];
                v71 = v70;
                v8[2](v8, [v70 UTF8String]);

                v72 = [NSString stringWithFormat:@"header.outputBin = %u", *(a4 + 22)];
                v73 = v72;
                v8[2](v8, [v72 UTF8String]);

                v74 = [NSString stringWithFormat:@"header.finishings = %u %u %u %u", *(a4 + 24), *(a4 + 25), *(a4 + 26), *(a4 + 27)];
                v75 = v74;
                v8[2](v8, [v74 UTF8String]);

                v76 = [NSString stringWithFormat:@"header.width = %u", *(a4 + 28)];
                v77 = v76;
                v8[2](v8, [v76 UTF8String]);

                v78 = [NSString stringWithFormat:@"header.height = %u", *(a4 + 32)];
                v79 = v78;
                v8[2](v8, [v78 UTF8String]);

                v80 = [NSString stringWithFormat:@"header.resolution = %u", *(a4 + 36)];
                v81 = v80;
                v8[2](v8, [v80 UTF8String]);

                v82 = [NSString stringWithFormat:@"xres = %u", *(a4 + 112)];
                v83 = v82;
                v8[2](v8, [v82 UTF8String]);

                v84 = [NSString stringWithFormat:@"yres = %u", *(a4 + 116)];
                v85 = v84;
                v8[2](v8, [v84 UTF8String]);

                v86 = *(a4 + 32);
                *(a4 + 48) = *(a4 + 16);
                *(a4 + 64) = v86;
                v12 = 1;
              }

              goto LABEL_118;
            }

            v58 = [NSString stringWithFormat:@"Unsupported margin/width combination: bottom:%d top:%d height:%d.", v97, HIDWORD(v98), v30];
            v87 = v58;
            v8[2](v8, [v58 UTF8String]);
          }

          v12 = 0;
LABEL_118:

          goto LABEL_119;
        }
      }

      else if (!v14)
      {
        goto LABEL_35;
      }

      v15 = 7;
      goto LABEL_34;
    }

LABEL_23:
    LOBYTE(v13) = 0;
    goto LABEL_24;
  }

  if ((*(a4 + 120) & 2) != 0 && (![v10 compare:@"color"] || (*(a4 + 120) & 2) != 0 && !objc_msgSend(v10, "compare:", @"auto")))
  {
    LOBYTE(v13) = 1;
    goto LABEL_24;
  }

  if (![v10 compare:@"auto"])
  {
    goto LABEL_23;
  }

  v11 = [NSString stringWithFormat:@"Unsupported outputMode %@ ", v10];
  v8[2](v8, [v11 UTF8String]);

  v12 = 0;
LABEL_119:

  return v12;
}

uint64_t liteOpenDriver(lite_job_t *a1, lite_driver_s *a2, NSString *a3, ipp_orient_e a4, int a5, int a6)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100054F0C;
  v14[3] = &unk_1000A37B0;
  v17 = &v22;
  v18 = a2;
  v15 = a1;
  v16 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v10 = v16;
  v11 = v15;
  [(lite_job_t *)v11 _withActivity:v14];

  v12 = *(v23 + 6);
  _Block_object_dispose(&v22, 8);
  return v12;
}

void sub_100054EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100054F0C(uint64_t a1, os_activity_t activity)
{
  v3 = _os_activity_create(&_mh_execute_header, "liteOpenDriver", activity, OS_ACTIVITY_FLAG_DEFAULT);
  v4 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) printd_job_id];
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = [v6 destination_job_id];
    }

    else
    {
      v7 = -1;
    }

    *buf = 67109890;
    v24 = v5;
    v25 = 1024;
    v26 = v7;
    v27 = 2048;
    v28 = v3;
    v29 = 2080;
    v30 = "liteOpenDriver";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Activity (%p) ENTER: %s", buf, 0x22u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000551D0;
  block[3] = &unk_1000A3788;
  v16 = *(a1 + 48);
  v8 = *(a1 + 32);
  *&v9 = v16;
  *(&v9 + 1) = *(a1 + 56);
  v17 = v9;
  v10 = *(a1 + 40);
  *&v11 = v8;
  *(&v11 + 1) = v10;
  v19 = v11;
  v20 = v17;
  v21 = *(a1 + 64);
  v22 = *(a1 + 72);
  os_activity_apply(v3, block);
  v12 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 32) printd_job_id];
    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = [v14 destination_job_id];
    }

    else
    {
      v15 = -1;
    }

    *buf = 67109890;
    v24 = v13;
    v25 = 1024;
    v26 = v15;
    v27 = 2048;
    v28 = v3;
    v29 = 2080;
    v30 = "liteOpenDriver";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Activity (%p) EXIT: %s", buf, 0x22u);
  }
}

uint64_t sub_1000551D0(uint64_t a1)
{
  result = _liteOpenDriver(*(a1 + 32), *(a1 + 56), *(a1 + 40), *(a1 + 64), *(a1 + 68), *(a1 + 72));
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t sub_100055214(uint64_t a1)
{
  v2 = [*(a1 + 40) ippSession];
  v3 = [*(a1 + 40) printer];
  v4 = sub_1000555CC(v2, v3, a1);

  return v4;
}

uint64_t sub_100055298(uint64_t a1)
{

  return sub_10005552C(a1);
}

void sub_1000553CC(_Unwind_Exception *a1)
{
  sub_10005552C(v1);

  _Unwind_Resume(a1);
}

void sub_10005541C(uint64_t a1)
{
  sub_10005552C(a1);

  operator delete();
}

void sub_1000554F4(void *a1)
{
  sub_10005552C(a1);

  operator delete();
}

uint64_t sub_10005552C(void *a1)
{
  *a1 = off_1000A3848;
  v1 = a1[3];
  if (v1)
  {

    operator delete();
  }

  v2 = a1[4];
  if (v2)
  {

    operator delete();
  }

  return sub_10000B548(a1);
}

uint64_t sub_1000555CC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 sendSingleIPPRequest:a3 session:a1];
  if (![v4 transportStatus])
  {
    v6 = [v4 ippResponse];
    sub_10005567C(a3, v6);
  }

  if ([v4 transportStatus] == 6)
  {
    v5 = 1026;
  }

  else
  {
    v5 = 1280;
  }

  return v5;
}

void sub_1000556D4(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a5;
  sub_100055898(a1, 9u, a6);
}

void sub_1000557F0(_Unwind_Exception *a1)
{
  sub_100055958(v2);

  _Unwind_Resume(a1);
}

void sub_100055840(uint64_t a1)
{
  sub_100055958(a1);

  operator delete();
}

void sub_100055920(void *a1)
{
  sub_100055958(a1);

  operator delete();
}

uint64_t sub_100055958(void *a1)
{
  *a1 = off_1000A38D0;
  v1 = a1[3];
  if (v1)
  {

    operator delete();
  }

  v2 = a1[4];
  if (v2)
  {

    operator delete();
  }

  return sub_10000B548(a1);
}

uint64_t sub_1000559F8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 sendSingleIPPRequest:a3 session:a1];
  if (![v4 transportStatus])
  {
    v6 = [v4 ippResponse];
    sub_100055AA8(a3, v6);
  }

  if ([v4 transportStatus] == 6)
  {
    v5 = 1026;
  }

  else
  {
    v5 = 1280;
  }

  return v5;
}

uint64_t sub_100055B00(uint64_t a1)
{

  return sub_100055958(a1);
}

void sub_100055B44(void *a1, id *a2, uint64_t a3)
{
  v38 = a1;
  v39 = v38;
  v5 = [*a2 printer];
  v6 = [v5 device_uri];
  Printd_Parameters::_set_PrinterURI(&v39, v6);

  v7 = [*a2 printer];
  v8 = usernameFromPreviouslyAuthedPrinterOrJustMobile(v7);
  Printd_Parameters::_set_RequestingUserName(&v39, v8);

  v9 = [*a2 request_attrs];
  v10 = (*(*v9 + 352))(v9);
  if (v10)
  {
    Printd_Parameters::_set_JobName(&v39, v10);
  }

  v11 = [*a2 printer];
  v12 = [v11 mandatoryJobAttributes];
  v13 = [v12 count] == 0;

  if (!v13)
  {
    v14 = [*a2 printer];
    v15 = [v14 mandatoryJobAttributes];
    v16 = [v15 containsObject:@"job-password"];

    if (v16)
    {
      *__str = 0;
      v45 = 0;
      v17 = arc4random();
      snprintf(__str, 0x10uLL, "%04d", v17 % 0x2710);
      v18 = [NSData dataWithBytes:__str length:4];
      Printd_Parameters::_set_JobPassword(&v39, v18);
      Printd_Parameters::_set_JobPasswordEncryption(&v39, @"none");
      [*a2 setJobPassword:v18];
      [*a2 setJobPasswordEncryption:@"none"];
    }
  }

  if (*a3)
  {
    Printd_Parameters::_set_JobAuthorizationURI(&v39, *a3);
  }

  sub_100057410(v39, a2);
  v19 = v39;
  v20 = *(a3 + 8);
  v21 = [*a2 request_attrs];
  v22 = (*(*v21 + 512))(v21);
  v23 = v19;
  v24 = v20;
  v25 = v22;
  v26 = v24;
  v27 = v25;
  v37 = v23;
  if (v27)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v28 = v26;
    v29 = [v28 countByEnumeratingWithState:&v40 objects:__str count:16];
    if (v29)
    {
      v30 = *v41;
      while (2)
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v41 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v40 + 1) + 8 * i);
          v33 = [v32 _findAttribute0:@"preset-name" valueTag:0];
          v34 = ippGetIXString(v33, 0);

          if (v34 && ![v34 compare:v27])
          {
            v35 = v32;

            goto LABEL_21;
          }
        }

        v29 = [v28 countByEnumeratingWithState:&v40 objects:__str count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    v35 = 0;
LABEL_21:
  }

  else
  {
    v35 = 0;
  }

  *__str = _NSConcreteStackBlock;
  v45 = 3221225472;
  v46 = sub_100058B50;
  v47 = &unk_1000A39C8;
  v36 = v37;
  v48 = v36;
  [v35 enumerateAttributes:__str];
}

void sub_1000560AC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v11 = v5;
  Printd_Parameters::_set_DocumentFormat(&v11, *(a2 + 24));
  v6 = [*a2 request_attrs];
  v7 = (*(*v6 + 192))(v6);
  if (v7)
  {
    Printd_Parameters::_set_DocumentPassword(&v11, v7);
  }

  v8 = *(a3 + 24);
  if (v8)
  {
    Printd_Parameters::_set_Compression(&v11, v8);
  }

  v9 = [*a2 printer];
  v10 = usernameFromPreviouslyAuthedPrinterOrJustMobile(v9);
  Printd_Parameters::_set_RequestingUserName(&v11, v10);
}

void sub_100056190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1000561D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100056270;
  v2[3] = &unk_1000A21F0;
  v3 = v1;
  [v3 _withActivity:v2];
}

void sub_100056270(uint64_t a1, os_activity_t activity)
{
  v3 = _os_activity_create(&_mh_execute_header, "Thread: Printer Monitor", activity, OS_ACTIVITY_FLAG_DEFAULT);
  v4 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) printd_job_id];
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = [v6 destination_job_id];
    }

    else
    {
      v7 = -1;
    }

    *buf = 67109890;
    v15 = v5;
    v16 = 1024;
    v17 = v7;
    v18 = 2048;
    v19 = v3;
    v20 = 2080;
    v21 = "Thread: Printer Monitor";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Activity (%p) ENTER: %s", buf, 0x22u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000564E4;
  block[3] = &unk_100095380;
  v13 = *(a1 + 32);
  os_activity_apply(v3, block);
  v8 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) printd_job_id];
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = [v10 destination_job_id];
    }

    else
    {
      v11 = -1;
    }

    *buf = 67109890;
    v15 = v9;
    v16 = 1024;
    v17 = v11;
    v18 = 2048;
    v19 = v3;
    v20 = 2080;
    v21 = "Thread: Printer Monitor";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Activity (%p) EXIT: %s", buf, 0x22u);
  }
}

void sub_1000564E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 3;
  v2 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting print monitor", buf, 2u);
  }

  v3 = [v1 request_attrs];
  v9 = (*(*v3 + 352))(v3);
  if (([v1 is_canceled] & 1) == 0 && objc_msgSend(v1, "localJobState") == 5)
  {
    objc_autoreleasePoolPush();
    v11[3] = 3;
    v4 = [v1 ippSession];
    v5 = [v1 printer];
    sub_100058708(&v15, v4, v5, &off_1000B9078, @"monitor_ipp(printer-state-reasons)");
  }

  if ([v1 is_canceled])
  {
    _liteNotifyCancel(@"monitor_ipp(job_canceled)");
    if ([v1 destination_job_id] >= 1 && v11[3] <= 6)
    {
      sub_1000597F0(&v15, v1, &off_1000B90C0, @"monitor_ipp(job_was_canceled_had_id)");
    }
  }

  v6 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v1 printd_job_id];
    if (v1)
    {
      v8 = [v1 destination_job_id];
    }

    else
    {
      v8 = -1;
    }

    LODWORD(v15) = 67109376;
    HIDWORD(v15) = v7;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] exiting print monitor thread", &v15, 0xEu);
  }

  _Block_object_dispose(&v10, 8);
}

void sub_1000571C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_100059298(v41 - 176);

  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_100057410(void *a1, uint64_t a2)
{
  v3 = a1;
  v61 = v3;
  v4 = *a2;
  v5 = v4;
  if (*(a2 + 16))
  {
    v6 = [v4 request_attrs];
    if ((*(*v6 + 96))(v6))
    {
      v7 = [v5 request_attrs];
      v8 = (*(*v7 + 96))(v7);
      Printd_Parameters::_set_AttributeFidelity(&v61, v8);
    }

    v9 = [v5 request_attrs];
    v10 = (*(*v9 + 128))(v9);
    if (v10 >= 1)
    {
      Printd_Parameters::_set_Copies(&v61, v10);
      if (v10 != 1)
      {
        Printd_Parameters::_set_MultipleDocumentHandling(&v61, @"separate-documents-collated-copies");
      }
    }

    v11 = [v5 printer];
    if ([v11 print_scaling_supported])
    {
      v12 = [v5 request_attrs];
      v13 = (*(*v12 + 616))(v12);

      if (!v13)
      {
        goto LABEL_11;
      }

      v14 = [v5 request_attrs];
      v11 = (*(*v14 + 608))(v14);
      Printd_Parameters::_set_PrintScaling(&v61, v11);
    }
  }

LABEL_11:
  v15 = [v5 request_attrs];
  v16 = (*(*v15 + 256))(v15);

  if (v16)
  {
    v17 = [v5 request_attrs];
    v18 = (*(*v17 + 256))(v17);
    Printd_Parameters::_set_FinishingsCol(&v61, v18);
  }

  v19 = [v5 request_attrs];
  v20 = (*(*v19 + 224))(v19);

  if (v20)
  {
    v21 = [v5 request_attrs];
    v22 = (*(*v21 + 224))(v21);
    Printd_Parameters::_set_Finishings(&v61, v22);

    Printd_Parameters::_set_JobPagesPerSet(&v61, [v5 numberOfSheetsPerCopy]);
  }

  v23 = [v5 request_attrs];
  v24 = (**v23)(v23);

  if (v24)
  {
    v25 = [v5 request_attrs];
    v26 = (**v25)(v25);
    Printd_Parameters::_set_MediaCol(&v61, v26);
  }

  else
  {
    v27 = [v5 request_attrs];
    v28 = (*(*v27 + 704))(v27);

    if (!v28)
    {
      goto LABEL_20;
    }

    v29 = [v5 request_attrs];
    v26 = (*(*v29 + 704))(v29);
    Printd_Parameters::_set_Media(&v61, v26);
  }

LABEL_20:
  v30 = [v5 spoolDocumentFormat];
  v31 = [v30 isEqual:@"image/jpeg"];

  if (v31)
  {
    goto LABEL_25;
  }

  v32 = *(a2 + 8);
  if (!v32)
  {
    v33 = [v5 request_attrs];
    if (!(*(*v33 + 392))(v33))
    {
      goto LABEL_25;
    }

    v34 = [v5 request_attrs];
    v32 = (*(*v34 + 384))(v34);
  }

  Printd_Parameters::_set_OrientationRequested(&v61, v32);
LABEL_25:
  v35 = [v5 request_attrs];
  v36 = (*(*v35 + 416))(v35);

  if (v36)
  {
    v37 = [v5 request_attrs];
    v38 = (*(*v37 + 416))(v37);
    Printd_Parameters::_set_OutputBin(&v61, v38);
  }

  v39 = [v5 request_attrs];
  v40 = (*(*v39 + 544))(v39);

  if (v40)
  {
    v41 = [v5 request_attrs];
    v42 = (*(*v41 + 544))(v41);
    Printd_Parameters::_set_PrintColorMode(&v61, v42);
  }

  else
  {
    v43 = [v5 request_attrs];
    v44 = (*(*v43 + 448))(v43);

    if (!v44)
    {
      goto LABEL_32;
    }

    v45 = [v5 request_attrs];
    v42 = (*(*v45 + 448))(v45);
    Printd_Parameters::_set_OutputMode(&v61, v42);
  }

LABEL_32:
  v46 = [v5 request_attrs];
  if ((*(*v46 + 584))(v46))
  {
    v47 = [v5 request_attrs];
    v48 = (*(*v47 + 576))(v47);
    Printd_Parameters::_set_PrintQuality(&v61, v48);
  }

  if (*(a2 + 12) != 1)
  {
    v49 = [v5 request_attrs];
    if ((*(*v49 + 680))(v49))
    {
      v50 = [v5 request_attrs];
      v51 = (*(*v50 + 672))(v50);
      Printd_Parameters::_set_Sides(&v61, v51);
    }
  }

  v52 = [v5 printer];
  v53 = [v52 mandatoryJobAttributes];
  v54 = [v53 containsObject:@"job-accounting-user-id"];

  if (v54)
  {
    v55 = [v5 printer];
    v56 = usernameFromPreviouslyAuthedPrinterOrJustMobile(v55);
    Printd_Parameters::_set_JobAccountingUserID(&v61, v56);
  }

  v57 = [v5 request_attrs];
  v58 = (*(*v57 + 320))(v57);

  if (v58)
  {
    v59 = [*a2 request_attrs];
    v60 = (*(*v59 + 320))(v59);
    Printd_Parameters::_set_JobAccountID(&v61, v60);
  }
}

uint64_t sub_100057CE0(uint64_t a1)
{
  v2 = [*(a1 + 40) ippSession];
  v3 = [*(a1 + 40) printer];
  v4 = sub_100058600(v2, v3, a1);

  return v4;
}

void sub_100057D64(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v38 = a3;
  if (v5)
  {
    v7 = [v5 count];
    v8 = _PKLogCategory(PKLogCategoryProgress[0]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 printd_job_id];
      if (v6)
      {
        v10 = [v6 destination_job_id];
      }

      else
      {
        v10 = -1;
      }

      *buf = 67109632;
      v40 = v9;
      v41 = 1024;
      v42 = v10;
      v43 = 1024;
      v44 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Got %d printer-state-reasons values.", buf, 0x14u);
    }

    v11 = [v6 printer];
    v12 = [v11 attrs_media_source_supported];
    if (v12)
    {
      v13 = [v6 printer];
      v14 = [v13 attrs_media_source_supported];
      v15 = [v14 count];
      v16 = [v6 printer];
      v17 = [v16 attrs_media_source_supported];
      v18 = [v17 containsObject:@"auto"];
      v19 = 1;
      if (v18)
      {
        v19 = 2;
      }

      v20 = v15 > v19;

      if (v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = 64;
      }
    }

    else
    {
      v21 = 64;
    }

    v37 = v21;

    if (v7 < 1)
    {
      v23 = 0;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = v7 & 0x7FFFFFFF;
      do
      {
        v25 = [v5 objectAtIndexedSubscript:v22];
        v26 = _PKLogCategory(PKLogCategoryProgress[0]);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v6 printd_job_id];
          if (v6)
          {
            v28 = [v6 destination_job_id];
          }

          else
          {
            v28 = -1;
          }

          *buf = 67109890;
          v40 = v27;
          v41 = 1024;
          v42 = v28;
          v43 = 1024;
          v44 = v22;
          v45 = 2112;
          v46 = v25;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] reason[%d] = %@", buf, 0x1Eu);
        }

        if ([v25 hasPrefix:@"toner-empty"])
        {
          v23 |= 0x200u;
        }

        else if ([v25 hasPrefix:@"toner-low"])
        {
          v23 |= 8u;
        }

        else if ([v25 hasPrefix:@"marker-supply-empty"])
        {
          v23 |= 0x400u;
        }

        else if ([v25 hasPrefix:@"marker-supply-low"])
        {
          v23 |= 0x10u;
        }

        else if ([v25 hasPrefix:@"media-empty"])
        {
          v23 |= v37;
        }

        else if ([v25 hasPrefix:@"media-jam"])
        {
          v23 |= 0x80u;
        }

        else if ([v25 hasPrefix:@"media-low"])
        {
          v23 |= 4u;
        }

        else if ([v25 hasPrefix:@"media-needed"])
        {
          v23 |= 0x100u;
        }

        else if ([v25 hasPrefix:@"input-tray-missing"])
        {
          v23 |= 0x800u;
        }

        else if ([v25 hasPrefix:@"door-open"])
        {
          v23 |= 0x1000u;
        }

        else if ([v25 hasPrefix:@"cover-open"])
        {
          v23 |= 0x2000u;
        }

        else if ([v25 hasPrefix:@"offline"])
        {
          v23 |= 0x4000u;
        }

        else if (([v25 hasPrefix:@"paused"] & 1) != 0 || objc_msgSend(v25, "hasPrefix:", @"device-stopped"))
        {
          v23 |= 0x20000u;
        }

        else if ([v25 hasSuffix:@"-report"] && (objc_msgSend(v25, "hasPrefix:", @"spool-area-full") & 1) == 0 && (objc_msgSend(v25, "hasPrefix:", @"connecting-to-device") & 1) == 0 && (objc_msgSend(v25, "hasPrefix:", @"stopped-partly") & 1) == 0 && !objc_msgSend(v25, "hasPrefix:", @"none"))
        {
          v23 |= 0x8000u;
        }

        ++v22;
      }

      while (v24 != v22);
    }

    v29 = [v6 printer];
    v30 = [v29 reasons];

    v31 = [v6 printer];
    v32 = [v31 reasons];

    v33 = v30 & 0x400000 | v23 | v32 & 0x200000;
    v34 = [NSString stringWithFormat:@"0x%x/%@", v33, v38];
    v35 = [NSString stringWithFormat:@"%s:%d/%@", "lite_notify_printer_state_reasons", 2279, v34];

    v36 = [v6 printer];
    liteNotifyPrinter(v36, v33, v35);
  }
}

uint64_t sub_1000583D8(uint64_t a1)
{

  return sub_100010EF8(a1);
}

uint64_t sub_10005841C(uint64_t a1)
{

  return sub_1000117C8(a1);
}

void sub_100058458(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  sub_1000116D0(a1, 4u, a4);
}

void sub_10005855C(_Unwind_Exception *a1)
{
  sub_1000117C8(v2);

  _Unwind_Resume(a1);
}

void sub_1000585B0(uint64_t a1)
{
  sub_1000117C8(a1);

  operator delete();
}

uint64_t sub_100058600(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 sendSingleIPPRequest:a3 session:a1];
  if (![v4 transportStatus])
  {
    v6 = [v4 ippResponse];
    sub_1000586B0(a3, v6);
  }

  if ([v4 transportStatus] == 6)
  {
    v5 = 1026;
  }

  else
  {
    v5 = 1280;
  }

  return v5;
}

void sub_100058708(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  sub_100010D5C(a1, 0xBu, a5);
}

void sub_10005880C(_Unwind_Exception *a1)
{
  sub_100010EF8(v2);

  _Unwind_Resume(a1);
}

void sub_100058854(uint64_t a1)
{
  sub_100010EF8(a1);

  operator delete();
}

uint64_t sub_1000588AC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 sendSingleIPPRequest:a3 session:a1];
  if (![v4 transportStatus])
  {
    v6 = [v4 ippResponse];
    sub_10005895C(a3, v6);
  }

  if ([v4 transportStatus] == 6)
  {
    v5 = 1026;
  }

  else
  {
    v5 = 1280;
  }

  return v5;
}

void sub_100058A3C(void *a1)
{
  sub_100058AB0(a1);

  operator delete();
}

void sub_100058A78(void *a1)
{
  sub_100058AB0(a1);

  operator delete();
}

uint64_t sub_100058AB0(void *a1)
{
  *a1 = off_1000A39B0;
  v1 = a1[3];
  if (v1)
  {

    operator delete();
  }

  v2 = a1[4];
  if (v2)
  {

    operator delete();
  }

  return sub_10000B548(a1);
}

void sub_100058B50(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 name];
  v4 = v3;
  if (v3 && [v3 compare:@"preset-name"])
  {
    [*(a1 + 32) replaceOrAddAttribute:v4 withAttribute:v5 settingGroup:2];
  }
}

void sub_100058C78(void *a1)
{
  sub_100058CEC(a1);

  operator delete();
}

void sub_100058CB4(void *a1)
{
  sub_100058CEC(a1);

  operator delete();
}

uint64_t sub_100058CEC(void *a1)
{
  *a1 = off_1000A3A48;
  v1 = a1[3];
  if (v1)
  {

    operator delete();
  }

  v2 = a1[4];
  if (v2)
  {

    operator delete();
  }

  return sub_10000B548(a1);
}

void sub_100058E6C(void *a1)
{
  sub_100058EE0(a1);

  operator delete();
}

void sub_100058EA8(void *a1)
{
  sub_100058EE0(a1);

  operator delete();
}

uint64_t sub_100058EE0(void *a1)
{
  *a1 = off_1000A3AB8;
  v1 = a1[3];
  if (v1)
  {

    operator delete();
  }

  v2 = a1[4];
  if (v2)
  {

    operator delete();
  }

  return sub_10000B548(a1);
}

void sub_100058F80(id *a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005979C;
  v4[3] = &unk_1000A3BA0;
  v5 = a2;
  v3 = v5;
  Real_IPP_Message::_Response::_multiResponse(a1, v4);
}

void sub_10005902C(uint64_t a1, void **a2)
{
  if (![*(a1 + 32) destination_job_id] && Printd_Parameters::_has_DestinationJobID(a2))
  {
    [*(a1 + 32) setDestination_job_id:Printd_Parameters::_get_DestinationJobID(a2)];
    if (Printd_Parameters::_has_JobState(a2))
    {
      *(*(*(a1 + 48) + 8) + 24) = Printd_Parameters::_get_JobState(a2);
    }

    v4 = Printd_Parameters::_get_JobName(a2);
    v5 = v4;
    if (v4 && *(a1 + 40) && ([v4 isEqualToString:?] & 1) == 0)
    {
      [*(a1 + 32) setDestination_job_id:0];
      *(*(*(a1 + 48) + 8) + 24) = 3;
      v6 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) printd_job_id];
        v8 = *(a1 + 32);
        if (v8)
        {
          v9 = [v8 destination_job_id];
        }

        else
        {
          v9 = -1;
        }

        v15 = 67109376;
        v16 = v7;
        v17 = 1024;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Found one remote job not-completed at printer, but it has a different job-name.", &v15, 0xEu);
      }
    }

    if ([*(a1 + 32) destination_job_id] >= 1)
    {
      v10 = _PKLogCategory(PKLogCategoryProgress[0]);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*(a1 + 32) printd_job_id];
        v12 = *(a1 + 32);
        if (v12)
        {
          v13 = [v12 destination_job_id];
          v12 = *(a1 + 32);
        }

        else
        {
          v13 = -1;
        }

        v14 = [v12 destination_job_id];
        v15 = 67109632;
        v16 = v11;
        v17 = 1024;
        v18 = v13;
        v19 = 1024;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Got remote job-id value of %d from the printer.", &v15, 0x14u);
      }
    }
  }
}

uint64_t sub_100059298(uint64_t a1)
{

  return sub_100055958(a1);
}

void sub_1000592DC(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  sub_100059424(a1, a5);
}

void sub_1000593DC(_Unwind_Exception *a1)
{
  sub_10005957C(v2);

  _Unwind_Resume(a1);
}

void sub_1000594A0(uint64_t a1)
{
  sub_10005957C(a1);

  operator delete();
}

uint64_t sub_10005957C(void *a1)
{
  *a1 = off_1000A3B88;
  v1 = a1[3];
  if (v1)
  {

    operator delete();
  }

  v2 = a1[4];
  if (v2)
  {

    operator delete();
  }

  return sub_10000B548(a1);
}

void sub_100059620(void *a1)
{
  sub_10005957C(a1);

  operator delete();
}

void sub_10005965C(void *a1)
{
  sub_10005957C(a1);

  operator delete();
}

uint64_t sub_100059694(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 sendSingleIPPRequest:a3 session:a1];
  if (![v4 transportStatus])
  {
    v6 = [v4 ippResponse];
    sub_100059744(a3, v6);
  }

  if ([v4 transportStatus] == 6)
  {
    v5 = 1026;
  }

  else
  {
    v5 = 1280;
  }

  return v5;
}

uint64_t sub_1000597AC(uint64_t a1)
{

  return sub_10005957C(a1);
}

void sub_1000597F0(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 ippSession];
  v11 = [v7 printer];
  sub_1000556D4(a1, v10, v11, [v7 destination_job_id], v8, v9);
}

void sub_1000598E8(uint64_t a1)
{
  sub_100055958(a1);

  operator delete();
}

void sub_10005997C(uint64_t a1, os_activity_t activity)
{
  v3 = _os_activity_create(&_mh_execute_header, "Thread: Directly Print File", activity, OS_ACTIVITY_FLAG_DEFAULT);
  v4 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) printd_job_id];
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = [v6 destination_job_id];
    }

    else
    {
      v7 = -1;
    }

    *buf = 67109890;
    v15 = v5;
    v16 = 1024;
    v17 = v7;
    v18 = 2048;
    v19 = v3;
    v20 = 2080;
    v21 = "Thread: Directly Print File";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Activity (%p) ENTER: %s", buf, 0x22u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100059BF0;
  block[3] = &unk_100095380;
  v13 = *(a1 + 32);
  os_activity_apply(v3, block);
  v8 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) printd_job_id];
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = [v10 destination_job_id];
    }

    else
    {
      v11 = -1;
    }

    *buf = 67109890;
    v15 = v9;
    v16 = 1024;
    v17 = v11;
    v18 = 2048;
    v19 = v3;
    v20 = 2080;
    v21 = "Thread: Directly Print File";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Activity (%p) EXIT: %s", buf, 0x22u);
  }
}

void sub_100059BF0()
{
  v0 = __chkstk_darwin();
  v1 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(v0 + 32) printd_job_id];
    v3 = *(v0 + 32);
    if (v3)
    {
      v4 = [v3 destination_job_id];
    }

    else
    {
      v4 = -1;
    }

    *buf = 67109634;
    v47 = v2;
    v48 = 1024;
    v49 = v4;
    v50 = 2080;
    v51 = "lite_print_file_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] #### %s.", buf, 0x18u);
  }

  v5 = *(v0 + 32);
  v37 = 0;
  liteSetThreadPriority(1u);
  v6 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 printd_job_id];
    if (v5)
    {
      v8 = [v5 destination_job_id];
    }

    else
    {
      v8 = -1;
    }

    *v38 = 67109376;
    v39 = v7;
    v40 = 1024;
    v41 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Spooling file directly to printer.", v38, 0xEu);
  }

  [v5 set_processing];
  v9 = [v5 spoolDocumentFilename];
  v10 = v9;
  v11 = open([v9 UTF8String], 256, 0);

  if (v11 >= 0)
  {
    v12 = [v5 spoolDocumentFormat];
    v13 = [v5 openDriver:v36 format:v12 orient:0 num_sheets:0 passthru:1] == 0;

    if (!v13)
    {
      while (1)
      {
        v14 = read(v11, buf, 0x2000uLL);
        v15 = v14;
        if (v14 < 1)
        {
          break;
        }

        if ([v5 is_canceled])
        {
          goto LABEL_44;
        }

        v16 = _PKLogCategory(PKLogCategoryProgress[0]);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v5 printd_job_id];
          if (v5)
          {
            v18 = [v5 destination_job_id];
          }

          else
          {
            v18 = -1;
          }

          *v38 = 67109632;
          v39 = v17;
          v40 = 1024;
          v41 = v18;
          v42 = 2048;
          v43 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[Job %d][%d] Writing %lld bytes from print file.", v38, 0x18u);
        }

        if ((v36[0])(v36[1], buf, v15) < v15)
        {
          v22 = _PKLogCategory(PKLogCategoryProgress[0]);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v25 = [v5 printd_job_id];
            if (v5)
            {
              v26 = [v5 destination_job_id];
            }

            else
            {
              v26 = -1;
            }

            *v38 = 67109632;
            v39 = v25;
            v40 = 1024;
            v41 = v26;
            v42 = 2048;
            v43 = v15;
            v33 = "[Job %d][%d] Failed to write %lld bytes to printer.";
            goto LABEL_42;
          }

          goto LABEL_43;
        }

        [v5 make_progress:v15];
      }

      if (v14 < 0 && *__error())
      {
        v22 = _PKLogCategory(PKLogCategoryProgress[0]);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = [v5 printd_job_id];
          if (v5)
          {
            v24 = [v5 destination_job_id];
          }

          else
          {
            v24 = -1;
          }

          v34 = __error();
          v35 = strerror(*v34);
          *v38 = 67109634;
          v39 = v23;
          v40 = 1024;
          v41 = v24;
          v42 = 2080;
          v43 = v35;
          v33 = "[Job %d][%d] Spooling failed: %s";
LABEL_42:
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v33, v38, 0x18u);
        }

LABEL_43:
      }

LABEL_44:
      close(v11);
      if ([v5 closeDriver:v36])
      {
        if ([v5 is_canceled])
        {
          v32 = 7;
        }

        else
        {
          v32 = 9;
        }

        goto LABEL_48;
      }

LABEL_49:
      [v5 resetJob];
      goto LABEL_50;
    }

    goto LABEL_36;
  }

  v19 = _PKLogCategory(PKLogCategoryProgress[0]);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = [v5 printd_job_id];
    if (v5)
    {
      v21 = [v5 destination_job_id];
    }

    else
    {
      v21 = -1;
    }

    v27 = [v5 spoolDocumentFilename];
    v28 = v27;
    v29 = [v27 UTF8String];
    v30 = __error();
    v31 = strerror(*v30);
    *v38 = 67109890;
    v39 = v20;
    v40 = 1024;
    v41 = v21;
    v42 = 2080;
    v43 = v29;
    v44 = 2080;
    v45 = v31;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[Job %d][%d] Unable to open %s: %s", v38, 0x22u);
  }

  if (v11 != -1)
  {
LABEL_36:
    close(v11);
  }

  if (![v5 closeDriver:v36] || (objc_msgSend(v5, "is_canceled") & 1) == 0)
  {
    goto LABEL_49;
  }

  v32 = 8;
LABEL_48:
  [v5 finishJob:v32];
LABEL_50:
}

void sub_10005A93C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  queue = a3;
  v9 = a4;
  v10 = [v7 port];
  if (!v10)
  {
    v11 = [v7 scheme];
    v10 = PKDefaultPortForScheme(v11);
  }

  snprintf(__str, 0x20uLL, "%d", [v10 integerValue]);
  v12 = [v7 host];
  host = nw_endpoint_create_host([v12 UTF8String], __str);

  secure_tcp = nw_parameters_create_secure_tcp(_nw_parameters_configure_protocol_disable, _nw_parameters_configure_protocol_default_configuration);
  if (v8)
  {
    v15 = v8;
    [v8 UTF8String];
    nw_parameters_set_attributed_bundle_identifier();
  }

  nw_parameters_set_account_id();
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_10005AF28;
  v38 = sub_10005AF38;
  v39 = nw_connection_create(host, secure_tcp);
  v16 = dword_1000C7CC0++;
  v17 = [NSString stringWithFormat:@"(seq %d) Checking viability of '%@' with '%@'", v16, v7, v35[5]];
  v18 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Browse_MDM: addIfReachable: %@", buf, 0xCu);
  }

  v19 = v35[5];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10005AF40;
  handler[3] = &unk_1000A3C48;
  v33 = &v34;
  v20 = v17;
  v30 = v20;
  v21 = v7;
  v31 = v21;
  v22 = v9;
  v32 = v22;
  nw_connection_set_state_changed_handler(v19, handler);
  v23 = dispatch_time(0, 30000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005B250;
  block[3] = &unk_1000A3C70;
  v28 = &v34;
  v24 = v20;
  v27 = v24;
  dispatch_after(v23, queue, block);
  nw_connection_set_queue(v35[5], queue);
  nw_connection_start(v35[5]);

  _Block_object_dispose(&v34, 8);
}

void sub_10005ADEC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [v3 setTXTRecordValue:@"PrintKitManualPrinter" forKey:@"note"];
    (*(*(a1 + 32) + 16))();
  }
}

Class sub_10005AE8C()
{
  if (qword_1000C7CB8 != -1)
  {
    sub_100060520();
  }

  result = objc_getClass("MCProfileConnection");
  qword_1000C7CA8 = result;
  off_1000C7B48 = sub_10005AEE0;
  return result;
}

void sub_10005AEEC(id a1)
{
  qword_1000C7CB0 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
  if (!qword_1000C7CB0)
  {
    NSLog(@"### Failed to Soft Linked: /System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration");
  }
}

uint64_t sub_10005AF28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005AF40(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!a2 || a2 == 4)
  {
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v11 = _PKLogCategory(PKLogCategoryDiscovery[0]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v16 = 138412290;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Browse_MDM: Not adding as reachable: %@", &v16, 0xCu);
      }

      nw_connection_cancel(*(*(*(a1 + 56) + 8) + 40));
      v13 = *(*(a1 + 56) + 8);
      v10 = *(v13 + 40);
      *(v13 + 40) = 0;
      goto LABEL_17;
    }
  }

  else if (a2 == 3 && *(*(*(a1 + 56) + 8) + 40))
  {
    v6 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v16 = 138412290;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Browse_MDM: Adding reachable: %@", &v16, 0xCu);
    }

    v8 = [*(a1 + 40) scheme];
    v9 = [v8 isEqualToString:@"ipp"];

    if (v9)
    {
      v10 = PKURLByReplacingScheme(@"ipps", *(a1 + 40));
    }

    else
    {
      v10 = 0;
    }

    sub_10005B18C(*(a1 + 40), *(a1 + 48));
    if (v10)
    {
      sub_10005B18C(v10, *(a1 + 48));
    }

    nw_connection_cancel(*(*(*(a1 + 56) + 8) + 40));
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;

LABEL_17:
  }
}

void sub_10005B18C(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005B338;
  v4[3] = &unk_1000A3C98;
  v5 = a2;
  v3 = v5;
  [PKPrinterBonjourEndpoint resolveWithURL:a1 timeout:v4 completionHandler:30.0];
}

void sub_10005B250(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Browse_MDM: Cancel reachable attempt: %@", &v6, 0xCu);
    }

    nw_connection_cancel(*(*(*(a1 + 40) + 8) + 40));
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

void sub_10005B338(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8 && v5)
  {
    v6 = [[PKPrinterBonjourEndpoint alloc] initWithURL:v8 txtRecord:v5 provenance:1 provenanceIdentifier:0];
    v7 = [[MDMBrowse_Entity alloc] initWithBonjourName:v6 txt:v5];
    (*(*(a1 + 32) + 16))();
  }
}

void urfDelete(void *a1)
{
  if (a1)
  {
    v2 = a1[7];
    if (v2)
    {
      free(v2);
    }

    v3 = a1[12];
    if (v3)
    {
      free(v3);
    }

    v4 = a1[15];
    if (v4)
    {
      free(v4);
    }

    free(a1);
  }
}

uint64_t urfErrorString(uint64_t result)
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

void *urfNew(uint64_t a1, uint64_t a2)
{
  result = malloc_type_calloc(1uLL, 0x90uLL, 0x10D00403A2F05C1uLL);
  if (result)
  {
    *result = a1;
    result[1] = a2;
  }

  return result;
}

uint64_t _urfSetLineSize(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  *(a1 + 40) = *(a2 + 1);
  *(a1 + 24) = v3;
  *(a1 + 72) = 0;
  *(a1 + 112) = 0;
  v4 = a2[1];
  if (v4 <= 3)
  {
    if (a2[1] > 1u)
    {
      if (v4 == 2)
      {
        v5 = *a2;
        if (v5 != 32)
        {
          goto LABEL_28;
        }

        goto LABEL_31;
      }

      if (v4 != 3)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    if (a2[1])
    {
      v5 = *a2;
      if (v5 != 24)
      {
        goto LABEL_28;
      }

      goto LABEL_31;
    }

LABEL_19:
    v5 = *a2;
    if (v5 != 8 && v5 != 16)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  if (a2[1] <= 5u)
  {
    if (v4 != 4)
    {
      if (v4 != 5)
      {
        goto LABEL_18;
      }

LABEL_14:
      v5 = *a2;
      if (v5 != 24)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    goto LABEL_19;
  }

  if (v4 != 6)
  {
    if (v4 != 7)
    {
      if (v4 == 8)
      {
        v5 = *a2;
        if (v5 == 16)
        {
          goto LABEL_31;
        }

LABEL_28:
        result = 0;
        v7 = "Bad bitsPerPixel in page header";
        goto LABEL_48;
      }

LABEL_18:
      result = 0;
      v7 = "Bad colorSpace in page header";
      goto LABEL_48;
    }

    v5 = *a2;
LABEL_30:
    if (v5 == 48)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  v5 = *a2;
  if (v5 != 32 && v5 != 64)
  {
    goto LABEL_28;
  }

LABEL_31:
  if (a2[2] < 4u)
  {
    v9 = a2[3];
    if (v9 > 5 || v9 - 1 <= 1)
    {
      result = 0;
      v7 = "Bad printQuality in page header";
    }

    else
    {
      v10 = *(a2 + 3);
      if (v10)
      {
        if (*(a2 + 4))
        {
          if (*(a2 + 5))
          {
            v11 = v5 >> 3;
            v12 = v10 * v11;
            v13 = *(a1 + 56);
            if (v13)
            {
              v14 = malloc_type_realloc(v13, v10 * v11, 0x100004077774924uLL);
            }

            else
            {
              v14 = malloc_type_malloc(v10 * v11, 0x100004077774924uLL);
            }

            if (v14)
            {
              *(a1 + 56) = v14;
              *(a1 + 72) = v12;
              return 1;
            }

            free(*(a1 + 56));
            result = 0;
            *(a1 + 56) = 0;
            *(a1 + 72) = 0;
            v7 = "Unable to allocate memory for line buffer";
          }

          else
          {
            result = 0;
            v7 = "Bad resolution in page header";
          }
        }

        else
        {
          result = 0;
          v7 = "Bad height in page header";
        }
      }

      else
      {
        result = 0;
        v7 = "Bad width in page header";
      }
    }
  }

  else
  {
    result = 0;
    v7 = "Bad duplexMode in page header";
  }

LABEL_48:
  *(a1 + 112) = v7;
  return result;
}

void sub_10005BC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, ...)
{
  va_start(va, a8);
  v13 = v11;

  sub_10005C754(va);
  _Unwind_Resume(a1);
}

void sub_10005BCD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Browse_CUPS: Handle response", buf, 2u);
  }

  if (![v3 transportStatus])
  {
    v5 = [v3 ippResponse];
    if ([v5 status])
    {
      v6 = [v3 ippResponse];
      v7 = [v6 status];

      if (v7 != 1)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v8 = [v3 ippResponse];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10005BEF8;
    v9[3] = &unk_1000A3CC0;
    v10 = *(a1 + 32);
    sub_10005BE74(v8, v9);
  }

LABEL_9:
}

void sub_10005BE74(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2[2];
  v4 = v6;
  v5 = a2;
  v3();
}

void sub_10005BEF8(uint64_t a1, id *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10005C044;
  v3[3] = &unk_1000A3CC0;
  v4 = *(a1 + 32);
  sub_10005BF98(a2, v3);
}

void sub_10005BF98(id *a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005C7F4;
  v4[3] = &unk_1000A3BA0;
  v5 = a2;
  v3 = v5;
  Real_IPP_Message::_Response::_multiResponse(a1, v4);
}

void sub_10005C044(uint64_t a1, void **a2)
{
  v4 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Browse_CUPS: PRINTER %p", buf, 0xCu);
  }

  v5 = Printd_Parameters::_get_PrinterURISupported(a2);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005C1A8;
  v6[3] = &unk_1000A3C98;
  v7 = *(a1 + 32);
  [PKPrinterBonjourEndpoint resolveWithURL:v5 timeout:v6 completionHandler:10.0];
}

void sub_10005C1A8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [[PKPrinterBonjourEndpoint alloc] initWithURL:v8 txtRecord:v5 provenance:16 provenanceIdentifier:0];
  v7 = [[CUPSBrowse_Entity alloc] initWithBonjourName:v6 txt:v5];
  (*(*(a1 + 32) + 16))();
}

void sub_10005C46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005C4A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _startWithPort:a2];
  }
}

void sub_10005C6E0(void *a1)
{
  sub_10005C754(a1);

  operator delete();
}

void sub_10005C71C(void *a1)
{
  sub_10005C754(a1);

  operator delete();
}

uint64_t sub_10005C754(void *a1)
{
  *a1 = &off_1000A3D68;
  v1 = a1[3];
  if (v1)
  {

    operator delete();
  }

  v2 = a1[4];
  if (v2)
  {

    operator delete();
  }

  return sub_10000B548(a1);
}

void sub_10005C804(id a1)
{
  v1 = [[LocalSocketProxy alloc] initWithLocalSocketPath:@"/var/run/cupsd"];
  v2 = qword_1000C7CC8;
  qword_1000C7CC8 = v1;

  v3 = qword_1000C7CC8;

  [v3 start];
}

void sub_10005C85C(uint64_t a1, __int16 a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005C8EC;
  v4[3] = &unk_1000A3DA0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  dispatch_async(v3, v4);
}

CFStringRef PKLocalizedString(const __CFString *a1, const char *a2)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.framework.PrintKit");

  return CFBundleCopyLocalizedString(BundleWithIdentifier, a1, a1, @"Localizable");
}

id PKLocalizedString(NSString *a1, const char *a2)
{
  v2 = a1;
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.framework.PrintKit"];
  v4 = [v3 localizedStringForKey:v2 value:v2 table:@"Localizable"];

  return v4;
}

void sub_10005CB30(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7 && v5)
  {
    [*(a1 + 32) setResolvedURL:v7];
    [*(a1 + 32) setResolvedTXT:v5];
    v6 = *(a1 + 32);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10005D29C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (([v6 isEqualToString:@"none"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"requesting-user-name") & 1) == 0)
  {
    [*(a1 + 32) setObject:@"username forKeyedSubscript:{password", @"air"}];
    *a4 = 1;
  }
}

void sub_10005D61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, ...)
{
  va_start(va, a12);

  sub_100010EF8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005D670(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _PKLogCategory(PKLogCategoryNetwork[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412547;
    v9 = v4;
    v10 = 2113;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "allowing trust %@ result for %{private}@", &v8, 0x16u);
  }

  return 1;
}

void sub_10005D760(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10005D8C4;
  v13 = sub_10005D8D4;
  v14 = 0;
  if (![v3 transportStatus])
  {
    v5 = [v3 ippResponse];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10005D8DC;
    v6[3] = &unk_1000A3E68;
    v8 = &v9;
    v7 = *(a1 + 32);
    sub_10000EE04(v5, v6);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32), v10[5], v4);
  _Block_object_dispose(&v9, 8);
}

void sub_10005D88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10005D8C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005D8DC(uint64_t a1, uint64_t a2)
{
  v3 = [PKPrinterBonjourEndpoint txtFromGetPrinterAttributes:a2 url:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10005E02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10005E08C(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    nw_resolver_cancel();
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    v5 = *(*(a1 + 32) + 16);

    return v5();
  }

  return result;
}

void sub_10005E104(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  dispatch_assert_queue_V2(*(a1 + 32));
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    nw_resolver_cancel();
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;

    if (a2 && nw_array_get_count())
    {
      [*(a1 + 56) _finishResolveEndpointArray:v7 timeout:*(a1 + 40) completionHandler:*(a1 + 64)];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

void sub_10005EF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v20 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005EF5C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _syncTimerFired];

  objc_autoreleasePoolPop(v2);
}

void sub_10005F934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, void *a30)
{
  objc_destroyWeak((v35 + 48));

  objc_destroyWeak((v34 + 48));
  objc_destroyWeak((v33 + 48));

  objc_destroyWeak((v36 - 112));
  _Unwind_Resume(a1);
}

void sub_10005F9BC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005FA94;
    block[3] = &unk_1000A2B48;
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = v3;
    objc_copyWeak(&v9, (a1 + 48));
    dispatch_async(v5, block);
    objc_destroyWeak(&v9);
  }
}

void sub_10005FA94(uint64_t a1)
{
  v2 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Browser %@ adding %@", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained addEntity:*(a1 + 40)];
}

void sub_10005FB84(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005FC5C;
    block[3] = &unk_1000A2B48;
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = v3;
    objc_copyWeak(&v9, (a1 + 48));
    dispatch_async(v5, block);
    objc_destroyWeak(&v9);
  }
}

void sub_10005FC5C(uint64_t a1)
{
  v2 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Browser %@ removing %@", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained removeEntity:*(a1 + 40)];
}

void sub_10005FD4C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (WeakRetained)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005FE24;
    block[3] = &unk_1000A2B48;
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = v3;
    objc_copyWeak(&v9, (a1 + 48));
    dispatch_async(v5, block);
    objc_destroyWeak(&v9);
  }
}

void sub_10005FE24(uint64_t a1)
{
  v2 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Browser %@ updating %@", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained updateEntity:*(a1 + 40)];
}

id sub_10005FF14(uint64_t a1)
{
  v2 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Browse service %@ starting %@", &v6, 0x16u);
  }

  return [*(a1 + 48) start];
}

id sub_100060070(uint64_t a1)
{
  v2 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Browse service %@ stopping all", &v5, 0xCu);
  }

  return [*(a1 + 40) stopBrowsing0];
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}