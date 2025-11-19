uint64_t sub_100004028(uint64_t a1)
{
  if (!a1)
  {
    return 4294940294;
  }

  v2 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.CoreAS"];
  [v2 setDoNotBlockBeforeFirstUnlock:1];
  if ([v2 queryMetaDataSync])
  {
    v3 = 4294967284;
  }

  else
  {
    v17 = v2;
    v18 = a1;
    v4 = [v2 results];
    v5 = malloc_type_malloc(8 * [v4 count], 0x10040436913F5uLL);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v20;
      v3 = 4294967284;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          if ([v12 state] == 2)
          {
            v13 = [v12 getLocalUrl];
            v14 = [v13 path];
            v15 = [v14 UTF8String];

            if (v15)
            {
              v3 = 0;
              v5[v9++] = strdup(v15);
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
      v3 = 4294967284;
    }

    *v18 = v5;
    *(v18 + 8) = v9;

    v2 = v17;
  }

  return v3;
}

uint64_t sub_100004220(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      v3 = *(a1 + 8);
      if ((v3 & 0x80000000) == 0)
      {
        if (v3)
        {
          v4 = 0;
          do
          {
            free(*(*a1 + 8 * v4));
            *(*a1 + 8 * v4++) = 0;
          }

          while (v4 < *(a1 + 8));
          v2 = *a1;
        }

        free(v2);
      }
    }
  }

  return 0;
}

void sub_100004290()
{
  if (qword_1006D7C20 != -1)
  {
    sub_10059330C();
  }
}

void sub_1000042BC(id a1)
{
  v1 = dispatch_queue_create("com.apple.asd.maqueue", 0);
  dispatch_async(v1, &stru_10068ECD0);
}

void sub_10000430C(id a1)
{
  v1 = objc_alloc_init(MADownloadOptions);
  [v1 setDiscretionary:1];
  [v1 setRequiresPowerPluggedIn:1];
  [v1 setAllowsExpensiveAccess:0];
  [MAAsset startCatalogDownload:@"com.apple.MobileAsset.CoreAS" options:v1 then:&stru_10068ED10];
}

void sub_10000438C(id a1, int64_t a2)
{
  v3 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
  {
    v4 = 134349056;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MA catalog download return %{public}ld", &v4, 0xCu);
  }
}

void sub_1000052D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 104) + 16))();
  }

  else if (v5)
  {
    v7 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Call to getScoreAndSignalsWithWrappedProfiles with %@", buf, 0xCu);
    }

    v8 = *(a1 + 112);
    [*(a1 + 32) Z1kFQGOJhlZQpyD1:v5 xz5EHXEN4FjlhJbi:*(a1 + 40) uhVTXyAfCFn7u0Ue:*(a1 + 48) EQUjQp7JcQbqcPcD:*(a1 + 56) A5wDLa5TFdFZlz3A:*(a1 + 64) TJKMyOe6zn5PdGIr:*(a1 + 72) eCqgGM0WcnHOslnr:*(a1 + 112) eCszfxdv3kUXvhgV:*(a1 + 120) uWp4aZpP2vLhc04Q:*(a1 + 80) QZYtNpvp0hKd248p:*(a1 + 88) oCwPYmtRv8s31KUH:*(a1 + 96) completion:*(a1 + 104)];
  }

  else
  {
    v9 = [NSString stringWithUTF8String:off_1006C9430];
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Unable to retrieve files";
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v11 = [NSError errorWithDomain:v9 code:-27002 userInfo:v10];

    (*(*(a1 + 104) + 16))();
  }
}

id sub_100005E9C(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 f9MGfLOgnHPuKTrU:&__NSDictionary0__struct HY6FXG20397zwmVg:&stru_10068ED78];
}

void sub_100006494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v6 = [QwDGuEabMS2vnWkj errorFromUnderlyingError:?];
    (*(v3 + 16))(v3, 0, v6);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5);
  }
}

void sub_100006708(id a1)
{
  qword_1006D7C28 = objc_opt_new();

  _objc_release_x1();
}

void sub_100006B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100006B54(uint64_t a1)
{
  v2 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    v6 = 134349312;
    v7 = WeakRetained;
    v8 = 1026;
    v9 = [v5 processIdentifier];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "asd (%{public}p:%{public}d): connection invalidated", &v6, 0x12u);
  }
}

void sub_100006C38(uint64_t a1)
{
  v2 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    v6 = 134349312;
    v7 = WeakRetained;
    v8 = 1026;
    v9 = [v5 processIdentifier];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "asd (%{public}p:%{public}d): connection interrupted", &v6, 0x12u);
  }
}

uint64_t sub_1000070BC(uint64_t a1)
{
  qword_1006D7C38 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000074CC(void (**a1)(void))
{
  a1[2]();
}

void sub_100007848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, char a26)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_100007878(id a1)
{
  qword_1006D7C50 = dispatch_queue_create("com.apple.asd.dfe", 0);

  _objc_release_x1();
}

void sub_1000078B8(uint64_t a1)
{
  if ((atomic_exchange((*(*(a1 + 32) + 8) + 32), 1u) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v4 = WeakRetained;
      v3 = [eTBtehykeBvfpeTP hKjCyPlJs74k9vMV:200];
      v4[2](v4, v3);

      WeakRetained = v4;
    }
  }
}

uint64_t sub_10000794C(uint64_t result)
{
  if ((atomic_exchange((*(*(result + 40) + 8) + 32), 1u) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t sub_100007F10(uint64_t a1)
{
  if (*(a1 + 192))
  {
    v2 = os_signpost_id_generate(qword_1006DF780);
    v3 = qword_1006DF780;
    v4 = v3;
    if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "asd.nfhw.wait", "enableTelemetry=YES", buf, 2u);
    }

    v5 = dispatch_semaphore_create(0);
    v6 = *(a1 + 192);
    *(a1 + 192) = 0;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000080E0;
    v19[3] = &unk_10068EFA8;
    v21 = a1;
    v7 = v5;
    v20 = v7;
    [v6 ILEFYKTi2wz6Hf5l:v19];
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    v8 = qword_1006DF780;
    v9 = v8;
    if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v2, "asd.nfhw.wait", "", buf, 2u);
    }
  }

  if (!*(a1 + 84))
  {
    return 0;
  }

  v10 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
  {
    sub_100593460(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  return 4294966593;
}

void sub_1000080E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7 && v8 && v9 && [v9 length] == 16 && objc_msgSend(v7, "length") == 48)
  {
    v11 = [v7 dataUsingEncoding:4];
    v12 = [v11 bytes];
    v13 = *(a1 + 40);
    *(v13 + 84) = 0;
    [v10 getBytes:v13 + 68 length:8];
    [v10 getBytes:*(a1 + 40) + 68 range:{8, 8}];
    [v8 getBytes:*(a1 + 40) + 60 length:8];
    for (i = 36; i != 60; ++i)
    {
      v15 = *v12;
      v16 = v15 - 48;
      v17 = v15 - 97;
      if ((v15 - 65) >= 6)
      {
        v18 = -1;
      }

      else
      {
        v18 = v15 - 55;
      }

      v19 = v15 - 87;
      if (v17 > 5)
      {
        v19 = v18;
      }

      if (v16 < 0xA)
      {
        v19 = v16;
      }

      v20 = v12[1];
      v21 = v20 - 48;
      v22 = v20 - 97;
      if ((v20 - 65) >= 6)
      {
        v23 = -1;
      }

      else
      {
        v23 = v20 - 55;
      }

      v24 = v20 - 87;
      if (v22 > 5)
      {
        v24 = v23;
      }

      if (v21 < 0xA)
      {
        v24 = v21;
      }

      *(*(a1 + 40) + i) = v24 | (16 * v19);
      v12 += 2;
    }
  }

  else
  {
    v25 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
    {
      sub_100593498(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

intptr_t sub_100008654(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

void sub_1000087AC(uint64_t a1, void *a2)
{
  v3 = [a2 serialNumber];
  v4 = +[NFHardwareManager sharedHardwareManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008888;
  v8[3] = &unk_10068F018;
  v5 = *(a1 + 32);
  v11 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v6 = v3;
  v7 = [v4 startSecureElementManagerSessionWithPriority:v8];
}

void sub_100008888(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v9 = [v5 getCryptogram:&v19 challengeResponse:&v18];
    v10 = v19;
    v11 = v18;
    v12 = v11;
    v7 = 0;
    v8 = 0;
    if (v9)
    {
      v8 = v11;
      v7 = v10;
    }
  }

  [v5 endSessionWithCompletion:&stru_10068EFF0];
  v13 = qword_1006DF780;
  v14 = v13;
  v15 = a1[6];
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v15, "asd.nfhw.seid", "", v17, 2u);
  }

  v16 = a1[4];
  (*(a1[5] + 16))();
}

void sub_100008AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008ACC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeWithSeid:v9 hostChallenge:v8 challengeResponse:v7];
}

void sub_100008B58(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

uint64_t sub_100009498(uint64_t a1)
{
  qword_1006D7C58 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000099C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v40 - 232), 8);
  _Block_object_dispose((v40 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_100009A14(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009AB4;
  block[3] = &unk_10068F090;
  v7 = a2;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  dispatch_async(v2, block);
}

void sub_100009AD0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009B70;
  block[3] = &unk_10068F090;
  v8 = a3;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  dispatch_async(v3, block);
}

void sub_100009E78(uint64_t a1, int a2)
{
  v4 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009F30;
  block[3] = &unk_10068F108;
  v6 = *(a1 + 40);
  v8 = a2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

void sub_100009F30(uint64_t a1)
{
  v2 = [NSNumber numberWithInt:*(a1 + 48)];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:&off_1006BA6A0];

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_100009F94(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A04C;
  block[3] = &unk_10068F108;
  v7 = *(a1 + 40);
  v9 = a3;
  v8 = *(a1 + 48);
  dispatch_async(v5, block);
}

void sub_10000A04C(uint64_t a1)
{
  v2 = [NSNumber numberWithInt:*(a1 + 48)];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:&off_1006BA6B8];

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_10000A470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_10000A8EC(void *a1)
{
  v2 = [[NSMutableArray alloc] initWithCapacity:*(a1[7] + 280)];
  v3 = [[NSMutableArray alloc] initWithCapacity:*(a1[7] + 280)];
  if (*(a1[7] + 280))
  {
    v4 = 0;
    do
    {
      [v2 setObject:&stru_1006B82F8 atIndexedSubscript:v4];
      [v3 setObject:&off_1006BA790 atIndexedSubscript:v4++];
      v5 = a1[7];
      v6 = *(v5 + 280);
    }

    while (v4 < v6);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = *(v5 + 272) + v7;
        v10 = *(v9 + 4);
        v11 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:*(v9 + 16) gsx0MJUoOpcxcozG:*(v9 + 8)];
        [v2 setObject:v11 atIndexedSubscript:v10];

        v12 = [NSNumber numberWithUnsignedInt:*(*(a1[7] + 272) + v7)];
        [v3 setObject:v12 atIndexedSubscript:v10];

        ++v8;
        v5 = a1[7];
        v7 += 24;
      }

      while (v8 < *(v5 + 280));
    }
  }

  v13 = objc_opt_new();
  v14 = a1[5];
  v22 = 0;
  v15 = [v13 runWithQuery:v14 inputColNames:v2 inputColTypes:v3 error:&v22];
  v16 = v22;
  v17 = v16;
  if (v16)
  {
    v18 = [v16 code];

    v19 = 0;
  }

  else
  {
    v18 = 0;
    v19 = v15;
  }

  v20 = a1[6];
  v21 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:v19 qfSDGTGvqd3Hruzg:v18];
  (*(v20 + 16))(v20, v21, v18);
}

void sub_10000ABF4(id a1)
{
  qword_1006D7C68 = objc_opt_new();

  _objc_release_x1();
}

void sub_10000AEA8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 authorisationCompletions];
  }

  else
  {
    [v3 locationCompletions];
  }
  v4 = ;
  v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  if (v5)
  {
    [v4 setObject:0 forKeyedSubscript:*(a1 + 40)];
    v5[2]();
  }
}

void sub_10000B008(uint64_t a1)
{
  if ([*(a1 + 32) LjU00AjDrcTJbVJD])
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v5 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [*(a1 + 32) nextCompletionDictionaryKey]);
    [*(a1 + 32) setNextCompletionDictionaryKey:{objc_msgSend(*(a1 + 32), "nextCompletionDictionaryKey") + 1}];
    v3 = objc_retainBlock(*(a1 + 40));
    v4 = [*(a1 + 32) authorisationCompletions];
    [v4 setObject:v3 forKeyedSubscript:v5];

    [*(a1 + 32) timeoutForKey:v5 forAuthorisation:1 efc6f2da04fb733f:*(a1 + 48)];
  }
}

void sub_10000B1CC(uint64_t a1)
{
  if ([*(a1 + 32) iww2ALffDR8ZLPHe:0])
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    [*(a1 + 32) setYABQBiEYyLNkt6IY:0];
    [*(a1 + 32) setKp3LsdVLlXwFNqJV:0];
    [*(a1 + 32) setVCWRguBEmim3giZ9:0];
    [*(a1 + 32) startLocationManager];
    v5 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [*(a1 + 32) nextCompletionDictionaryKey]);
    [*(a1 + 32) setNextCompletionDictionaryKey:{objc_msgSend(*(a1 + 32), "nextCompletionDictionaryKey") + 1}];
    v3 = objc_retainBlock(*(a1 + 40));
    v4 = [*(a1 + 32) locationCompletions];
    [v4 setObject:v3 forKeyedSubscript:v5];

    [*(a1 + 32) timeoutForKey:v5 forAuthorisation:0 efc6f2da04fb733f:*(a1 + 48)];
  }
}

void sub_10000B58C(uint64_t a1)
{
  v2 = [*(a1 + 32) YGGzx6XAo42A7s6x];
  v3 = *(a1 + 32);
  if (v2 > 2)
  {
    v14 = *(a1 + 88);
    [*(a1 + 64) timeIntervalSinceNow];
    v16 = v14 - v15;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10000B7B4;
    v23[3] = &unk_10068F1F0;
    v27 = *(a1 + 72);
    v30 = *(a1 + 96);
    v28 = *(a1 + 80);
    *v22 = *(a1 + 32);
    v17 = v22[1];
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    *&v20 = v18;
    *(&v20 + 1) = v19;
    v24 = *v22;
    v25 = v20;
    v26 = *(a1 + 64);
    v29 = 0;
    [v3 npeR2NAWL3FAqCSx:v23 andCompletion:v16];
  }

  else
  {
    v4 = [*(a1 + 32) YGGzx6XAo42A7s6x];
    if (v4 >= 3)
    {
      v5 = 139000;
    }

    else
    {
      v5 = v4 + 139003;
    }

    [*(a1 + 32) setZDlKxUFITTJsP8iN:0.0];
    [*(a1 + 32) setYABQBiEYyLNkt6IY:0];
    [*(a1 + 32) setKp3LsdVLlXwFNqJV:0];
    [*(a1 + 32) setVCWRguBEmim3giZ9:0];
    v6 = *(a1 + 96);
    v7 = *(a1 + 80);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 72);
    [*(a1 + 64) timeIntervalSinceNow];
    v21 = [v8 xusy7Jyby2KbKh9r:v6 bjbqetmBxg55daaO:v9 pCfijpsS4m8yGvnw:v10 gk4SFBckVtkbwrej:v11 cI4BozMHCMeHTVXZ:v5 waitingTime:v7 errorCode:v13];
    (*(v12 + 16))(v12, v21);
  }
}

void sub_10000B7B4(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 80);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  [*(a1 + 64) timeIntervalSinceNow];
  v10 = [v4 xusy7Jyby2KbKh9r:v2 bjbqetmBxg55daaO:v5 pCfijpsS4m8yGvnw:v6 gk4SFBckVtkbwrej:v7 cI4BozMHCMeHTVXZ:*(a1 + 88) waitingTime:v3 errorCode:v9];
  (*(v8 + 16))(v8, v10);
}

void sub_10000BFC0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = 0.0;
  if (!a3)
  {
    [a2 doubleValue];
    v4 = v5 * 0.001;
  }

  v6 = *(a1 + 104);
  v7 = [*(a1 + 32) i4KDOQicW9Xd5WBz];
  v8 = *(a1 + 40);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000C148;
  v20[3] = &unk_10068F268;
  v19 = *(a1 + 48);
  v9 = *(&v19 + 1);
  v25 = *(a1 + 112);
  v10 = *(a1 + 64);
  v11 = *(a1 + 104);
  v12 = v10;
  v13 = *(a1 + 72);
  *&v14 = v10;
  *(&v14 + 1) = v13;
  v21 = v19;
  v22 = v14;
  v15 = *(a1 + 80);
  v26 = v4;
  v16 = *(a1 + 88);
  *&v17 = *(a1 + 96);
  *(&v17 + 1) = v11;
  *&v18 = v15;
  *(&v18 + 1) = v16;
  v23 = v18;
  v24 = v17;
  [Yp00msaYdVlZesvU eJSthhES04gLkDjz:v6 + 192 i4KDOQicW9Xd5WBz:v7 TWWnmIjkBlMfHmma:v8 withCompletion:v20];
}

void sub_10000C148(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {

    v6 = &off_1006BA7A8;
  }

  [v6 doubleValue];
  v8 = v7 * 0.001;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(*(a1 + 88) + 4);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 96);
  v15 = *(a1 + 104);
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000C274;
  v18[3] = &unk_10068F240;
  v19 = *(a1 + 80);
  [v9 jEx0mo2jM4HTfcdS:v10 pRoPFwkNebqWzDu0:v11 bjbqetmBxg55daaO:v12 pCfijpsS4m8yGvnw:v13 gk4SFBckVtkbwrej:v16 cI4BozMHCMeHTVXZ:v17 veRLfRQYSQxKOWNa:v14 g6zbwvXxUAZNoblY:v8 sX1qLiPSUO5sF5EE:v15 withCompletion:v18];
}

void sub_10000CB44(id a1)
{
  qword_1006D7C70 = objc_alloc_init(hjIvoYfuuA5g1aoN);

  _objc_release_x1();
}

void sub_10000CE24(uint64_t a1)
{
  v1 = [*(a1 + 32) ciiN3o1L7RiefeS5:*(a1 + 40)];
  if (([v1 iww2ALffDR8ZLPHe:1] & 1) == 0)
  {
    [v1 g6zbwvXxUAZNoblY];
    [v1 npeR2NAWL3FAqCSx:&stru_10068F2D0 andCompletion:?];
  }
}

void sub_10000CF40(id a1)
{
  qword_1006D7C80 = objc_opt_new();

  _objc_release_x1();
}

void sub_10000D0DC(void *a1)
{
  v2 = a1[6];
  v3 = +[PHPhotoLibrary sharedPhotoLibrary];
  v18 = 0;
  v4 = [v3 openAndWaitWithUpgrade:0 error:&v18];
  v5 = v18;

  if (v4)
  {
    v6 = [NSPredicate predicateWithFormat:a1[4]];
    v7 = 0;
    v8 = objc_alloc_init(PHFetchOptions);
    v9 = +[PHPhotoLibrary sharedPhotoLibrary];
    [v8 setPhotoLibrary:v9];

    if (v2 < 1)
    {
      v2 = 0x7FFFFFFFLL;
    }

    else
    {
      [v8 setFetchLimit:v2];
    }

    [v8 setInternalPredicate:v6];
    v11 = [PHAsset fetchAssetsWithOptions:v8];
    v13 = [v11 count];
    if (v2 >= v13)
    {
      v12 = v13;
    }

    else
    {
      v12 = v2;
    }
  }

  else
  {
    v7 = 165023;
    v10 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100593570(v5, v10);
    }

    v11 = 0;
    v8 = 0;
    v6 = 0;
    v12 = 0;
  }

  v19[0] = @"c";
  v14 = [NSNumber numberWithUnsignedInteger:v12];
  v19[1] = @"ec";
  v20[0] = v14;
  v15 = [NSNumber numberWithInteger:v7];
  v20[1] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v21 = v16;
  v17 = [NSArray arrayWithObjects:&v21 count:1];

  (*(a1[5] + 16))();
}

void sub_10000D348(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x10000D248);
  }

  _Unwind_Resume(exc_buf);
}

void sub_10000DA10(id a1)
{
  v3[0] = PHAssetPropertySetLocalDate;
  v3[1] = PHAssetPropertySetOriginalMetadata;
  v3[2] = PHAssetPropertySetPhotosOneUp;
  v3[3] = PHAssetPropertySetPhotosInfoPanelExtended;
  v3[4] = PHAssetPropertySetPhotoIris;
  v3[5] = PHAssetPropertySetDescription;
  v3[6] = PHAssetPropertySetComments;
  v3[7] = PHAssetPropertySetSceneAnalysis;
  v3[8] = PHAssetPropertySetAnalysisState;
  v3[9] = PHAssetPropertySetUserActivity;
  v3[10] = PHAssetPropertySetAdjustment;
  v3[11] = PHAssetPropertySetCuration;
  v3[12] = PHAssetPropertySetAesthetic;
  v3[13] = PHAssetPropertySetMediaAnalysis;
  v3[14] = PHAssetPropertySetImport;
  v3[15] = PHAssetPropertySetSceneprint;
  v3[16] = PHAssetPropertySetDestinationAssetCopy;
  v3[17] = PHAssetPropertySetGridMetadata;
  v3[18] = PHAssetPropertySetCoarseLocation;
  v1 = [NSArray arrayWithObjects:v3 count:19];
  v2 = qword_1006D7C90;
  qword_1006D7C90 = v1;
}

void sub_10000DF30(uint64_t a1)
{
  v2 = +[PHPhotoLibrary sharedPhotoLibrary];
  v24 = 0;
  v3 = [v2 openAndWaitWithUpgrade:0 error:&v24];
  v4 = v24;

  if (v3)
  {
    v5 = [NSPredicate predicateWithFormat:*(a1 + 32)];
    v6 = objc_alloc_init(PHFetchOptions);
    v7 = +[PHPhotoLibrary sharedPhotoLibrary];
    [v6 setPhotoLibrary:v7];

    if (*(a1 + 64) >= 1)
    {
      [v6 setFetchLimit:?];
    }

    [v6 setChunkSizeForFetch:50];
    v8 = [*(a1 + 40) _extractPHAssetPropertySets:*(a1 + 48)];
    [v6 setFetchPropertySets:v8];

    [v6 setInternalPredicate:v5];
    v9 = [PHAsset fetchAssetsWithOptions:v6];
    v10 = [NSMutableArray alloc];
    v11 = *(a1 + 64);
    v12 = [v9 count];
    if (v11 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    v14 = [v10 initWithCapacity:v13];
    for (i = 0; ; ++i)
    {
      v16 = *(a1 + 64);
      v17 = [v9 count];
      v18 = v16 >= v17 ? v17 : v16;
      if (v18 <= i)
      {
        break;
      }

      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 40);
      v21 = [v9 objectAtIndexedSubscript:i];
      v22 = [v20 _uTjOtNxowyWuuBCA:v21 N3UHg1ij3irF9uUu:*(a1 + 48)];

      [v14 addObject:v22];
      objc_autoreleasePoolPop(v19);
    }
  }

  else
  {
    v23 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100593570(v4, v23);
    }

    v9 = 0;
    v6 = 0;
    v14 = 0;
  }

  (*(*(a1 + 56) + 16))();
}

void sub_10000E1B8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();

    JUMPOUT(0x10000E160);
  }

  _Unwind_Resume(exc_buf);
}

void sub_10000E548(id a1)
{
  qword_1006D7CA0 = objc_opt_new();

  _objc_release_x1();
}

void sub_10000E698(uint64_t a1)
{
  ppStmt = 0;
  ppDb = 0;
  v2 = [[NSMutableArray alloc] initWithCapacity:*(*(a1 + 64) + 280)];
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[NSDate date];
  [v4 timeIntervalSince1970];
  v33[0] = (v5 * 1000.0);

  v33[1] = *(a1 + 72);
  v33[2] = 0;
  if ([*(a1 + 32) hi5ump20ke7n4x6o:*(a1 + 40) hikv315wqxcu0dpl:*(a1 + 48)])
  {
    v6 = *(a1 + 64);
    if (*(v6 + 280))
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:*(*(v6 + 272) + v7 + 16) gsx0MJUoOpcxcozG:*(*(v6 + 272) + v7 + 8)];
        [v2 setObject:v9 atIndexedSubscript:v8];

        ++v8;
        v6 = *(a1 + 64);
        v7 += 24;
      }

      while (v8 < *(v6 + 280));
    }

    v10 = sqlite3_open_v2([*(a1 + 40) UTF8String], &ppDb, 1, 0);
    if (v10)
    {
      v11 = v10;
      v12 = *(a1 + 32);
      v13 = ppDb;
      v14 = 0;
LABEL_10:
      v18 = [v12 dOcbonNWKg7PJwsF:v11 QlGRpofDrDPpBRod:v14 mfJ8r89KwA6nfqNY:v13];
      goto LABEL_11;
    }

    sqlite3_progress_handler(ppDb, 10000, sub_10000EABC, v33);
    v17 = sqlite3_prepare_v2(ppDb, [*(a1 + 48) UTF8String], objc_msgSend(*(a1 + 48), "lengthOfBytesUsingEncoding:", 4), &ppStmt, 0);
    if (v17)
    {
      v11 = v17;
      v12 = *(a1 + 32);
      v13 = ppDb;
      v14 = 1;
      goto LABEL_10;
    }

    for (i = 0; ; i = v23)
    {
      v22 = sqlite3_step(ppStmt);
      if (v22 != 100)
      {
        break;
      }

      v23 = objc_alloc_init(NSMutableDictionary);

      v24 = *(a1 + 64);
      if (*(v24 + 280))
      {
        v25 = 0;
        v26 = 0;
        while (1)
        {
          v29 = (*(v24 + 272) + v25);
          v28 = *v29;
          v27 = v29[1];
          if (*v29 <= 2)
          {
            break;
          }

          if (v28 == 3)
          {
            v30 = [NSNumber numberWithLongLong:sqlite3_column_int64(ppStmt, v27)];
LABEL_27:
            v31 = v30;
LABEL_28:
            v32 = [v2 objectAtIndexedSubscript:v26];
            [v23 setObject:v31 forKey:v32];

            goto LABEL_29;
          }

          if (v28 != 4)
          {
LABEL_35:

            v18 = 138;
            goto LABEL_11;
          }

          v31 = [NSString stringWithUTF8String:sqlite3_column_text(ppStmt, v27)];
          if (v31)
          {
            goto LABEL_28;
          }

LABEL_29:

          ++v26;
          v24 = *(a1 + 64);
          v25 += 24;
          if (v26 >= *(v24 + 280))
          {
            goto LABEL_30;
          }
        }

        if (v28 == 1)
        {
          v30 = [NSNumber numberWithDouble:sqlite3_column_double(ppStmt, v27)];
        }

        else
        {
          if (v28 != 2)
          {
            goto LABEL_35;
          }

          v30 = [NSNumber numberWithInt:sqlite3_column_int(ppStmt, v27)];
        }

        goto LABEL_27;
      }

LABEL_30:
      [v3 addObject:v23];
    }

    if (v22 > 20)
    {
      if (v22 == 21)
      {
LABEL_39:

        v18 = -1;
        goto LABEL_11;
      }

      if (v22 != 101)
      {
LABEL_40:
        v18 = [*(a1 + 32) dOcbonNWKg7PJwsF:v22 QlGRpofDrDPpBRod:2 mfJ8r89KwA6nfqNY:ppDb];

        goto LABEL_11;
      }
    }

    else if (v22)
    {
      if (v22 != 1)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    v18 = 0;
LABEL_11:
    sqlite3_progress_handler(ppDb, 0, 0, 0);
    sqlite3_finalize(ppStmt);
    sqlite3_close(ppDb);
    v19 = *(a1 + 56);
    v20 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:v3 qfSDGTGvqd3Hruzg:v18];
    (*(v19 + 16))(v19, v20, v18);

    goto LABEL_12;
  }

  v15 = *(a1 + 56);
  v16 = [eTBtehykeBvfpeTP hKjCyPlJs74k9vMV:152];
  (*(v15 + 16))(v15, v16, 152);

LABEL_12:
}

BOOL sub_10000EABC(void *a1)
{
  v2 = +[NSDate date];
  [v2 timeIntervalSince1970];
  v4 = (v3 * 1000.0);

  v5 = a1[1];
  v6 = v4 - *a1;
  a1[2] = v6;
  return v6 > v5;
}

void sub_10000EDF8(void *a1)
{
  v2 = [NSMutableArray arrayWithCapacity:a1[7]];
  v3 = +[PKPassLibrary sharedInstance];
  v4 = [v3 passesOfStyles:a1[8]];

  v35 = a1;
  v27 = [NSPredicate predicateWithFormat:a1[4]];
  v5 = [v4 filteredArrayUsingPredicate:?];

  v6 = [NSSortDescriptor sortDescriptorWithKey:@"anyDate" ascending:0];
  v46 = v6;
  v7 = [NSArray arrayWithObjects:&v46 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v8;
  v31 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v31)
  {
    v29 = *v41;
    v30 = v2;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v9;
        v10 = *(*(&v40 + 1) + 8 * v9);
        v11 = [v35[5] zKQesNL3BCNYUjZw];
        v34 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v11 count]);

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v12 = [v35[5] zKQesNL3BCNYUjZw];
        v13 = [v12 allKeys];

        v33 = v13;
        v14 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v37;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v37 != v16)
              {
                objc_enumerationMutation(v33);
              }

              v18 = *(*(&v36 + 1) + 8 * i);
              v19 = [v35[5] zKQesNL3BCNYUjZw];
              v20 = [v19 objectForKeyedSubscript:v18];
              v21 = [v35[5] expressionDictionary];
              v22 = [v21 objectForKeyedSubscript:v18];
              v23 = [v10 evaluateWithAttribute:v20 expression:v22];

              if (v23)
              {
                [v34 setObject:v23 forKeyedSubscript:v18];
              }
            }

            v15 = [v33 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v15);
        }

        v2 = v30;
        [v30 addObject:v34];
        v24 = v35[7];
        if (v24 && v24 <= [v30 count])
        {

          goto LABEL_21;
        }

        v9 = v32 + 1;
      }

      while ((v32 + 1) != v31);
      v31 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v25 = v35[6];
  v26 = [NSArray arrayWithArray:v2];
  (*(v25 + 16))(v25, v26);
}

uint64_t sub_10000F2E8(uint64_t a1)
{
  qword_1006D7CB0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t sub_10000F3C0(uint32_t a1, const void *a2, void *a3)
{
  *mainPort = 0;
  connect = 0;
  MatchingServices = IOMainPort(0, &mainPort[1]);
  if (MatchingServices)
  {
    return MatchingServices;
  }

  v9 = IOServiceMatching("ASIOKit");
  if (!v9)
  {
    return 5;
  }

  MatchingServices = IOServiceGetMatchingServices(mainPort[1], v9, mainPort);
  if (MatchingServices)
  {
    return MatchingServices;
  }

  v10 = IOIteratorNext(mainPort[0]);
  if (v10)
  {
    v11 = v10;
    v7 = IOServiceOpen(v10, mach_task_self_, 0, &connect);
    IOObjectRelease(v11);
    if (!v7)
    {
      outputStructCnt = 40;
      v7 = IOConnectCallStructMethod(connect, a1, a2, 0x28uLL, a3, &outputStructCnt);
    }
  }

  else
  {
    v7 = 5;
  }

  IOObjectRelease(mainPort[0]);
  if (connect)
  {
    IOServiceClose(connect);
  }

  return v7;
}

uint64_t sub_10000F56C(uint64_t a1)
{
  qword_1006D7CC0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10000F7D0(id a1)
{
  qword_1006D7CD0 = objc_opt_new();

  _objc_release_x1();
}

void sub_100010458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v18 = v15;

  _Unwind_Resume(a1);
}

void sub_1000107C8(uint64_t a1, void *a2)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        (*(*(a1 + 32) + 16))(*(a1 + 32));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_1000108F0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  (*(*(a1 + 32) + 16))();
  v4 = *(a1 + 40);

  free(v4);
}

void sub_100010B60(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) foundItemCount], v3);
}

void sub_100010EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010F44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100010F5C(uint64_t a1, void *a2)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a2;
  v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v19)
  {
    v18 = *v25;
    *&v3 = 138412290;
    v16 = v3;
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v25 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v24 + 1) + 8 * v4);
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = *(a1 + 32);
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:{16, v16}];
      if (v10)
      {
        v11 = *v21;
        do
        {
          v12 = 0;
          do
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v20 + 1) + 8 * v12);
            v14 = [v5 attributeSet];
            v15 = [v14 attributeForKey:v13];

            if (v15)
            {
              [*(*(*(a1 + 40) + 8) + 40) setObject:v15 forKey:v13];
            }

            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [v9 countByEnumeratingWithState:&v20 objects:v28 count:16];
        }

        while (v10);
      }

      [*(*(*(a1 + 48) + 8) + 40) addObject:*(*(*(a1 + 40) + 8) + 40)];
      if (*(a1 + 56))
      {
        if ([*(*(*(a1 + 48) + 8) + 40) count] >= *(a1 + 56))
        {
          break;
        }
      }

      if (++v4 == v19)
      {
        v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v19)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void sub_100011278()
{
  objc_end_catch();

  JUMPOUT(0x1000112ACLL);
}

id sub_10001159C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  result = [*(a1 + 32) LygrmXh7W0Hs2O8n:a4];
  if (result != 2)
  {
    if (result != 1)
    {
      return result;
    }

    ++a2;
  }

  ++*a2;
  return result;
}

uint64_t sub_1000115E8(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  return (*(*(a1 + 32) + 16))();
}

id sub_1000118CC(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  result = [*(a1 + 32) LygrmXh7W0Hs2O8n:a4];
  if (result != 2)
  {
    if (result != 1)
    {
      return result;
    }

    ++a2;
  }

  ++*a2;
  return result;
}

uint64_t sub_100011918(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  return (*(*(a1 + 32) + 16))();
}

id sub_100011B1C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  result = [*(a1 + 32) LygrmXh7W0Hs2O8n:a4];
  if (result != 2)
  {
    if (result != 1)
    {
      return result;
    }

    ++a2;
  }

  ++*a2;
  return result;
}

uint64_t sub_100011B68(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  return (*(*(a1 + 32) + 16))();
}

id sub_100011D6C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  result = [*(a1 + 32) LygrmXh7W0Hs2O8n:a4];
  if (result != 2)
  {
    if (result != 1)
    {
      return result;
    }

    ++a2;
  }

  ++*a2;
  return result;
}

uint64_t sub_100011DB8(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  return (*(*(a1 + 32) + 16))();
}

id sub_100011FBC(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  result = [*(a1 + 32) N2XtGIRzgUKLkZMS:a4];
  if (result != 2)
  {
    if (result != 1)
    {
      return result;
    }

    ++a2;
  }

  ++*a2;
  return result;
}

uint64_t sub_100012008(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  return (*(*(a1 + 32) + 16))();
}

id sub_10001220C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  result = [*(a1 + 32) N2XtGIRzgUKLkZMS:a4];
  if (result != 2)
  {
    if (result != 1)
    {
      return result;
    }

    ++a2;
  }

  ++*a2;
  return result;
}

uint64_t sub_100012258(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  return (*(*(a1 + 32) + 16))();
}

uint64_t sub_100013CA0(const uint64_t *a1, _WORD *a2)
{
  *mainPort = 0;
  connect = 0;
  MatchingServices = IOMainPort(0, &mainPort[1]);
  if (MatchingServices)
  {
    return MatchingServices;
  }

  v7 = IOServiceMatching("ASIOKit");
  if (!v7)
  {
    return 5;
  }

  MatchingServices = IOServiceGetMatchingServices(mainPort[1], v7, mainPort);
  if (MatchingServices)
  {
    return MatchingServices;
  }

  v8 = IOIteratorNext(mainPort[0]);
  if (v8)
  {
    v9 = v8;
    v5 = IOServiceOpen(v8, mach_task_self_, 0, &connect);
    IOObjectRelease(v9);
    if (!v5)
    {
      outputStruct = 0;
      v12 = 2;
      v5 = IOConnectCallMethod(connect, 4u, a1, 8u, 0, 0, 0, 0, &outputStruct, &v12);
      if (!v5)
      {
        *a2 = outputStruct;
      }
    }
  }

  else
  {
    v5 = 5;
  }

  IOObjectRelease(mainPort[0]);
  if (connect)
  {
    IOServiceClose(connect);
  }

  return v5;
}

uint64_t sub_1000141DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000141F4(void *a1)
{
  v2 = 179001;
  v3 = malloc_type_malloc(0x28uLL, 0x10000400A747E1EuLL);
  v4 = malloc_type_malloc(0x28uLL, 0x10000400A747E1EuLL);
  *v3 = 1;
  v5 = sub_10000F3C0(6u, v3, v4);
  if (v5 == -536870206)
  {
    v2 = 179002;
  }

  else if (!v5)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:*v4];
    [*(*(a1[5] + 8) + 40) setObject:v6 forKeyedSubscript:@"p"];

    v7 = [NSNumber numberWithUnsignedLongLong:v4[1]];
    [*(*(a1[5] + 8) + 40) setObject:v7 forKeyedSubscript:@"c"];

    v8 = [NSNumber numberWithUnsignedLongLong:v4[2]];
    [*(*(a1[5] + 8) + 40) setObject:v8 forKeyedSubscript:@"d"];

    v9 = [NSNumber numberWithUnsignedLongLong:v4[3]];
    [*(*(a1[5] + 8) + 40) setObject:v9 forKeyedSubscript:@"t"];

    v10 = [NSNumber numberWithUnsignedLongLong:v4[4]];
    [*(*(a1[5] + 8) + 40) setObject:v10 forKeyedSubscript:@"u"];

    v2 = 0;
  }

  *(*(a1[6] + 8) + 24) = v2;
  v11 = a1[4];
  v12 = [kjAS9HuCdR1m5txL alloc];
  v15 = *(*(a1[5] + 8) + 40);
  v13 = [NSArray arrayWithObjects:&v15 count:1];
  v14 = [(kjAS9HuCdR1m5txL *)v12 initWithGyF0atX3JpCKc9pK:v13 qfSDGTGvqd3Hruzg:*(*(a1[6] + 8) + 24)];
  (*(v11 + 16))(v11, v14);
}

void sub_100014850(uint64_t a1)
{
  v2 = os_signpost_id_generate(qword_1006DF780);
  v3 = qword_1006DF780;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "ac", "enableTelemetry=YES", buf, 2u);
  }

  v5 = [*(*(a1 + 32) + 16) currentAudioAndVideoCalls];
  v6 = [NSPredicate predicateWithFormat:@"status == %d", 1];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  v8 = [v7 firstObject];
  if (v8)
  {
    v9 = [*(a1 + 32) collectCallParametersFor:v8];
    v10 = 0;
  }

  else
  {
    v9 = &__NSDictionary0__struct;
    v10 = 178001;
  }

  v11 = qword_1006DF780;
  v12 = v11;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = *(a1 + 48);
    v14 = *(a1 + 52);
    *buf = 67240448;
    v21 = v13;
    v22 = 1026;
    v23 = v14;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v2, "ac", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
  }

  v15 = *(a1 + 40);
  v16 = [kjAS9HuCdR1m5txL alloc];
  v19 = v9;
  v17 = [NSArray arrayWithObjects:&v19 count:1];
  v18 = [(kjAS9HuCdR1m5txL *)v16 initWithGyF0atX3JpCKc9pK:v17 qfSDGTGvqd3Hruzg:v10];
  (*(v15 + 16))(v15, v18);
}

void sub_100015324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100015348(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100015360(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v7 = *(*(a1 + 48) + 8);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v8 = &__NSArray0__struct;
  }

  else
  {
    v8 = v5;
  }

  v9 = *(v7 + 40);
  *(v7 + 40) = v8;

  v10 = qword_1006DF780;
  v11 = v10;
  v12 = *(a1 + 56);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = *(a1 + 64);
    v14 = *(a1 + 68);
    v17[0] = 67240448;
    v17[1] = v13;
    v18 = 1026;
    v19 = v14;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v12, "av", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v17, 0xEu);
  }

  v15 = *(a1 + 32);
  v16 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:*(*(*(a1 + 48) + 8) + 40) qfSDGTGvqd3Hruzg:*(*(*(a1 + 40) + 8) + 24)];
  (*(v15 + 16))(v15, v16);
}

void sub_1000164C8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v9 = a2;
  v7 = a3;
  [*(a1 + 32) lock];
  if (v7 && v9 && !a4)
  {
    [*(a1 + 40) setObject:v9 atIndexedSubscript:*(a1 + 72)];
    v8 = [NSExpression expressionWithFormat:v7];
    if (v8)
    {
      [*(a1 + 48) setObject:v8 atIndexedSubscript:*(a1 + 72)];
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 168005;
  }

  [*(a1 + 32) unlock];
  dispatch_group_leave(*(a1 + 56));
}

void sub_1000165A8(void *a1)
{
  v2 = a1[6];
  v4 = [[NSArray alloc] initWithArray:a1[4]];
  v3 = [[NSArray alloc] initWithArray:a1[5]];
  (*(v2 + 16))(v2, v4, v3, *(*(a1[7] + 8) + 24));
}

void sub_1000167D4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(a1 + 64);
    v7 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:a3];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    v8 = *(a1 + 72);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100016918;
    v14[3] = &unk_10068F710;
    v11 = *(a1 + 48);
    v15 = *(a1 + 56);
    v20 = *(a1 + 104);
    v16 = v5;
    v13 = *(a1 + 64);
    v18 = *(a1 + 80);
    v19 = *(a1 + 96);
    v12 = v13;
    v17 = v13;
    [v9 gatherOutputExpressionsForDF:v8 i4KDOQicW9Xd5WBz:v10 TWWnmIjkBlMfHmma:v11 withCompletion:v14];
  }
}

void sub_100016918(uint64_t a1, void *a2, void *a3)
{
  v35 = a2;
  v5 = a3;
  v6 = os_signpost_id_generate(qword_1006DF780);
  v7 = qword_1006DF780;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "bi", "enableTelemetry=YES", buf, 2u);
  }

  *buf = 0;
  v49 = buf;
  v50 = 0x3032000000;
  v51 = sub_100016ED4;
  v52 = sub_100016EE4;
  v53 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v47 = 0;
  v9 = (a1 + 32);
  NSSelectorFromString(*(a1 + 32));
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v12 = BiomeLibrary();
    v13 = *v9;
    v45 = 0;
    v11 = [v12 streamWithIdentifier:v13 error:&v45];
    v14 = v45;

    if (*(a1 + 88) == 1)
    {
      v15 = [[BMPublisherOptions alloc] initWithStartDate:0 endDate:0 maxEvents:0 lastN:0 reversed:1];
      v16 = [v11 publisherWithOptions:v15];

      if (v14)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v16 = [v11 publisher];
      if (v14)
      {
LABEL_9:
        v17 = qword_1006DF770;
        v18 = 168003;
        if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
        {
          sub_100593664((a1 + 32), v14, v17);
          v18 = 168003;
        }

        goto LABEL_15;
      }
    }

    v18 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v10 = [BMStreams valueForKey:*v9];
  v11 = v10;
  if (*(a1 + 88) == 1)
  {
    [v10 publisherWithStartTime:0 endTime:0 maxEvents:0 lastN:0 reversed:1];
  }

  else
  {
    [v10 publisherFromStartTime:0.0];
  }
  v16 = ;
  v18 = 0;
LABEL_16:
  v19 = objc_alloc_init(NSMutableArray);
  v20 = *(v49 + 5);
  *(v49 + 5) = v19;

  v21 = [NSPredicate predicateWithFormat:*(a1 + 40)];
  v22 = v21;
  if (v21)
  {
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100016EEC;
    v43[3] = &unk_10068F680;
    v44 = v21;
    v23 = objc_retainBlock(v43);
    v24 = [v16 filterWithIsIncluded:v23];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100016F00;
    v36[3] = &unk_10068F6E8;
    v41 = *(a1 + 56);
    v37 = v35;
    v25 = v5;
    v42 = *(a1 + 88);
    v38 = v25;
    v39 = buf;
    v40 = v46;
    v26 = [v24 sinkWithCompletion:&stru_10068F6C0 shouldContinue:v36];
  }

  else
  {
    v18 = 168004;
  }

  v27 = qword_1006DF780;
  v28 = v27;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    v29 = *(a1 + 64);
    v30 = *(a1 + 68);
    *v54 = 67240448;
    v55 = v29;
    v56 = 1026;
    v57 = v30;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_END, v6, "bi", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v54, 0xEu);
  }

  v31 = *(a1 + 48);
  v32 = [kjAS9HuCdR1m5txL alloc];
  v33 = [NSArray arrayWithArray:*(v49 + 5)];
  v34 = [(kjAS9HuCdR1m5txL *)v32 initWithGyF0atX3JpCKc9pK:v33 qfSDGTGvqd3Hruzg:v18];
  (*(v31 + 16))(v31, v34);

  _Block_object_dispose(v46, 8);
  _Block_object_dispose(buf, 8);
}

void sub_100016E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100016ED4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_100016F00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableDictionary);
  if (*(*(a1 + 64) + 168))
  {
    v5 = 0;
    while (1)
    {
      v6 = [*(a1 + 32) objectAtIndexedSubscript:v5];
      v7 = +[NSNull null];
      if (v6 == v7)
      {
        goto LABEL_7;
      }

      v8 = [*(a1 + 40) objectAtIndexedSubscript:v5];
      v9 = +[NSNull null];

      if (v8 != v9)
      {
        break;
      }

LABEL_8:
      if (++v5 >= *(*(a1 + 64) + 168))
      {
        goto LABEL_9;
      }
    }

    v6 = [*(a1 + 40) objectAtIndexedSubscript:v5];
    v7 = [v6 expressionValueWithObject:v3 context:0];
    if (v7)
    {
      v10 = [*(a1 + 32) objectAtIndexedSubscript:v5];
      [v4 setObject:v7 forKeyedSubscript:v10];
    }

LABEL_7:

    goto LABEL_8;
  }

LABEL_9:
  v11 = *(a1 + 72);
  v12 = *(*(*(a1 + 48) + 8) + 40);
  v13 = [NSDictionary dictionaryWithDictionary:v4];
  if (v11 == 1)
  {
    [v12 insertObject:v13 atIndex:0];
  }

  else
  {
    [v12 addObject:v13];
  }

  v14 = *(a1 + 64);
  ++*(*(*(a1 + 56) + 8) + 24);
  v15 = *(v14 + 12);
  if (v15)
  {
    v16 = *(*(*(a1 + 56) + 8) + 24) < v15;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

void sub_100017284(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) encodeObject:a2];
  v3 = *(a1 + 72);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100017364;
  v9[3] = &unk_10068F760;
  v10 = *(a1 + 32);
  v8 = *(a1 + 64);
  v7 = v8;
  v11 = v8;
  [v4 gatherOutputExpressionsForDF:v3 + 24 i4KDOQicW9Xd5WBz:v5 TWWnmIjkBlMfHmma:v6 withCompletion:v9];
}

uint64_t sub_100017364(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 encodeObject:a2];
  [*(a1 + 32) encodeObject:v6];

  [*(a1 + 32) encodeInt64:*(*(a1 + 48) + 36) forKey:@"0x0x5bde"];
  v7 = *(a1 + 40);
  v8 = [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)];
  v9 = *(v7 + 16);

  return v9(v7, v8);
}

void sub_100017884(uint64_t a1)
{
  v2 = os_signpost_id_generate(qword_1006DF780);
  v3 = qword_1006DF780;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "mdf", "enableTelemetry=NO", &v10, 2u);
  }

  v5 = *(a1 + 64);
  v6 = *(a1 + 104);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000179EC;
  v12[3] = &unk_10068F7B0;
  v15 = *(a1 + 72);
  v9 = *(a1 + 96);
  v16 = *(a1 + 88);
  v17 = v2;
  v19 = *(a1 + 108);
  v18 = v9;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v10 = *(a1 + 72);
  v11 = *(a1 + 88);
  [v8 PLMCCRRqEw4moT9R:v5 UtPlzRffoEpw7Ue1:&v10 SFkZRA5Ek9YzhDRs:v6 & 0xFFFFFFFD TWWnmIjkBlMfHmma:v7 withCompletion:v12];
}

void sub_1000179EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = +[NSDate date];
  [v3 setWgZJLy8f4tn41Pge:v5];

  v6 = qword_1006DF780;
  v7 = v6;
  v8 = *(a1 + 72);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 52);
    v13[0] = 67240448;
    v13[1] = v9;
    v14 = 1026;
    v15 = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "mdf", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v13, 0xEu);
  }

  v11 = *(*(a1 + 80) + 32);
  v12 = *(a1 + 32);
  if (*(a1 + 88) == 1)
  {
    [v12 serializeCacheEntryWithCacheWritingTTL:v11 gXKoR0dNwQUyaeOl:v4 lEWFPyiFIAJ2uoyd:v3];
  }

  else
  {
    [v12 serializeCacheEntryV2WithMaxCacheAge:v11 gXKoR0dNwQUyaeOl:v4 lEWFPyiFIAJ2uoyd:v3];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100017B48(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) > 1u)
  {
    v11 = *(a1 + 56);
    v12 = *(*(a1 + 56) + 16);

    v12();
  }

  else
  {
    v4 = os_signpost_id_generate(qword_1006DF780);
    v5 = qword_1006DF780;
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "cdf", "enableTelemetry=NO", buf, 2u);
    }

    v7 = *(a1 + 92);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100017CDC;
    v13[3] = &unk_10068F800;
    v17 = *(a1 + 64);
    v18 = *(a1 + 80);
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(a1 + 48);
    v16 = v4;
    v13[4] = v8;
    v14 = v10;
    v19 = *(a1 + 88);
    v15 = *(a1 + 56);
    [v9 tuV7J33gT8DSDOWz:a2 forDFVersion:v7 withCompletion:v13];
  }
}

void sub_100017CDC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = qword_1006DF780;
    v5 = v4;
    v6 = *(a1 + 56);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      v7 = *(a1 + 64);
      v8 = *(a1 + 68);
      v20 = 67240704;
      v21 = v7;
      v22 = 1026;
      v23 = v8;
      v24 = 1026;
      v25 = 1;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "cdf", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d,h=%{public,signpost.telemetry:number2}d", &v20, 0x14u);
    }

    *(*(a1 + 32) + 8) = 1;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = *(a1 + 88);
    v10 = qword_1006DF780;
    v11 = v10;
    v12 = *(a1 + 56);
    v13 = v12 - 1;
    if (v9 == 1)
    {
      if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        v14 = *(a1 + 64);
        v15 = *(a1 + 68);
        v20 = 67240704;
        v21 = v14;
        v22 = 1026;
        v23 = v15;
        v24 = 1026;
        v25 = 2;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v12, "cdf", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d,h=%{public,signpost.telemetry:number2}d", &v20, 0x14u);
      }

      *(*(a1 + 32) + 8) = 2;
      v16 = *(a1 + 40);
      v17 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:&__NSArray0__struct qfSDGTGvqd3Hruzg:163002];
      (*(v16 + 16))(v16, v17);
    }

    else
    {
      if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        v18 = *(a1 + 64);
        v19 = *(a1 + 68);
        v20 = 67240704;
        v21 = v18;
        v22 = 1026;
        v23 = v19;
        v24 = 1026;
        v25 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v12, "cdf", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d,h=%{public,signpost.telemetry:number2}d", &v20, 0x14u);
      }

      *(*(a1 + 32) + 8) = 0;
      (*(*(a1 + 48) + 16))();
    }
  }
}

uint64_t sub_100018118(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) encodeInt64:0x7784FD561BB2380BLL forKey:@"0x5563"];
  [*(a1 + 32) encodeInt64:*(*(a1 + 48) + 32) forKey:@"0xdb4"];
  [*(a1 + 32) encodeInt64:a2 forKey:@"0x07aa"];
  v4 = *(a1 + 40);
  v5 = [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)];
  v6 = *(v4 + 16);

  return v6(v4, v5);
}

uint64_t sub_1000181B8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) encodeInt64:0x7784FD561BB2380BLL forKey:@"0x5563"];
  [*(a1 + 32) encodeInt64:*(*(a1 + 48) + 32) forKey:@"0x43a0"];
  [*(a1 + 32) encodeInt64:*(*(a1 + 48) + 40) forKey:@"0xfa5b"];
  [*(a1 + 32) encodeInt64:a2 forKey:@"0x07aa"];
  v4 = *(a1 + 40);
  v5 = [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)];
  v6 = *(v4 + 16);

  return v6(v4, v5);
}

void sub_10001867C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100018694(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000186AC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(a1 + 56);
    v7 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:a3];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    v8 = *(a1 + 72);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = [*(a1 + 48) queue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000187F8;
    v13[3] = &unk_10068F8A0;
    v15 = *(a1 + 56);
    v14 = v5;
    v12 = *(a1 + 80);
    v16 = *(a1 + 64);
    v17 = v12;
    v18 = *(a1 + 96);
    [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:v8 + 144 i4KDOQicW9Xd5WBz:v9 TWWnmIjkBlMfHmma:v10 completionQueue:v11 withCompletion:v13];
  }
}

void sub_1000187F8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(a1 + 40);
    v7 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:a3];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    v8 = os_signpost_id_generate(qword_1006DF780);
    v9 = qword_1006DF780;
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ch", "enableTelemetry=YES", buf, 2u);
    }

    v11 = objc_opt_new();
    v12 = *(a1 + 32);
    v13 = **(a1 + 56);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000189A0;
    v16[3] = &unk_10068F878;
    v18 = 0;
    v19 = v8;
    v21 = *(a1 + 80);
    v20 = *(a1 + 64);
    v15 = *(a1 + 40);
    v14 = v15;
    v17 = v15;
    [v11 hSmO2OC6etXclsKP:v12 edrv2qHmtbt1iEyf:v5 QsX3tfdMvsGwvY0F:v13 completion:v16];
  }
}

void sub_1000189A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!*(a1 + 48))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v6 = qword_1006DF780;
  v7 = v6;
  v8 = *(a1 + 56);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = *(a1 + 64);
    v10 = *(a1 + 68);
    v13[0] = 67240448;
    v13[1] = v9;
    v14 = 1026;
    v15 = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "ch", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v13, 0xEu);
  }

  v11 = *(a1 + 32);
  v12 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:*(*(*(a1 + 40) + 8) + 40) qfSDGTGvqd3Hruzg:*(a1 + 48)];
  (*(v11 + 16))(v11, v12);
}

void sub_100018C58(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) encodeObject:a2];
  v3 = *(a1 + 72);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018D48;
  v7[3] = &unk_10068F8F0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:v3 + 168 i4KDOQicW9Xd5WBz:v4 TWWnmIjkBlMfHmma:v5 completionQueue:v6 withCompletion:v7];
}

uint64_t sub_100018D48(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) encodeObject:a2];
  v3 = *(a1 + 40);
  v4 = [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)];
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

void sub_100019128(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(a1 + 48);
    v7 = [kjAS9HuCdR1m5txL alloc];
    v8 = 0;
LABEL_18:
    v21 = [(kjAS9HuCdR1m5txL *)v7 initWithGyF0atX3JpCKc9pK:v8 qfSDGTGvqd3Hruzg:a3];
    (*(v6 + 16))(v6, v21);

    goto LABEL_19;
  }

  v9 = os_signpost_id_generate(qword_1006DF780);
  v10 = qword_1006DF780;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "idf", "enableTelemetry=YES", buf, 2u);
  }

  if (![v5 BOOLValue])
  {
    v16 = qword_1006DF780;
    v17 = v16;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      v18 = *(a1 + 64);
      v19 = *(a1 + 68);
      *buf = 67240448;
      *&buf[4] = v18;
      *&buf[8] = 1026;
      *&buf[10] = v19;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v9, "idf", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
    }

    if (*(a1 + 92) == 1)
    {
      a3 = 0;
    }

    else
    {
      a3 = 171002;
    }

    if (*(a1 + 92) == 1)
    {
      v20 = &off_1006BABB0;
    }

    else
    {
      v20 = 0;
    }

    v6 = *(a1 + 48);
    v7 = [kjAS9HuCdR1m5txL alloc];
    v8 = v20;
    goto LABEL_18;
  }

  v12 = *(*(a1 + 56) + 176);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000193B8;
  v22[3] = &unk_10068F918;
  v15 = *(a1 + 88);
  v27 = *(a1 + 92);
  v24 = v9;
  v25 = *(a1 + 64);
  v26 = *(a1 + 80);
  v23 = *(a1 + 48);
  *buf = *(a1 + 64);
  v29 = *(a1 + 80);
  [v13 PLMCCRRqEw4moT9R:v12 UtPlzRffoEpw7Ue1:buf SFkZRA5Ek9YzhDRs:v15 TWWnmIjkBlMfHmma:v14 withCompletion:v22];

LABEL_19:
}

void sub_1000193B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 GyF0atX3JpCKc9pK];
  v5 = [v3 qfSDGTGvqd3Hruzg];

  if (!v5)
  {
    if (v4)
    {
      if (*(a1 + 72) == 1)
      {
        v19[0] = @"s";
        v19[1] = @"v";
        v20[0] = &__kCFBooleanTrue;
        v20[1] = v4;
        v7 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
        v21 = v7;
        v6 = [NSArray arrayWithObjects:&v21 count:1];
      }

      else
      {
        v6 = v4;
      }

      v5 = 0;
      goto LABEL_10;
    }

    v5 = 171001;
    v8 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
    {
      sub_100593768(v8);
    }
  }

  v6 = 0;
LABEL_10:
  v9 = qword_1006DF780;
  v10 = v9;
  v11 = *(a1 + 40);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = *(a1 + 48);
    v13 = *(a1 + 52);
    v16[0] = 67240448;
    v16[1] = v12;
    v17 = 1026;
    v18 = v13;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v11, "idf", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v16, 0xEu);
  }

  v14 = *(a1 + 32);
  v15 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:v6 qfSDGTGvqd3Hruzg:v5];
  (*(v14 + 16))(v14, v15);
}

void sub_100019770(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) encodeObject:a2];
  v3 = *(*(a1 + 64) + 176);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100019838;
  v6[3] = &unk_10068F968;
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  [v4 jCbmcix0xxhNVOSS:v3 TWWnmIjkBlMfHmma:v5 withCompletion:v6];
}

uint64_t sub_100019838(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) encodeInt64:a2 forKey:@"0x07aa"];
  v3 = *(a1 + 40);
  v4 = [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)];
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

void sub_100019D20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1006DF780;
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 52);
    v11[0] = 67240448;
    v11[1] = v7;
    v12 = 1026;
    v13 = v8;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "lo", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v11, 0xEu);
  }

  v9 = *(a1 + 32);
  v10 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:v3 qfSDGTGvqd3Hruzg:0];
  (*(v9 + 16))(v9, v10);
}

void sub_10001A35C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 GyF0atX3JpCKc9pK];

    if (v5)
    {
      v6 = [v4 GyF0atX3JpCKc9pK];
      v7 = *(a1 + 64);
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = [*(a1 + 48) queue];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10001A530;
      v17[3] = &unk_10068F9E0;
      v11 = *(a1 + 56);
      v18 = v6;
      v19 = v11;
      v20 = *(a1 + 72);
      v21 = *(a1 + 88);
      v12 = v6;
      [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:v7 + 32 i4KDOQicW9Xd5WBz:v8 TWWnmIjkBlMfHmma:v9 completionQueue:v10 withCompletion:v17];
    }

    else
    {
      v15 = *(a1 + 56);
      v16 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:161032];
      (*(v15 + 16))(v15, v16);
    }
  }

  else
  {
    v13 = *(a1 + 56);
    v14 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:161032];
    (*(v13 + 16))(v13, v14);
  }
}

void sub_10001A530(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(a1 + 40);
    v8 = [kjAS9HuCdR1m5txL alloc];
    v9 = a3;
LABEL_3:
    v10 = [(kjAS9HuCdR1m5txL *)v8 initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:v9];
    (*(v7 + 16))(v7, v10);

    goto LABEL_22;
  }

  if (!v5)
  {
    v7 = *(a1 + 40);
    v8 = [kjAS9HuCdR1m5txL alloc];
    v9 = -27002;
    goto LABEL_3;
  }

  v11 = os_signpost_id_generate(qword_1006DF780);
  v12 = qword_1006DF780;
  v13 = v12;
  v30 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ddf", "enableTelemetry=YES", buf, 2u);
  }

  spid = v11;

  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = *(a1 + 32);
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        v22 = [v21 valueForKey:{v6, spid}];
        if (v22 && ([v14 containsObject:v22] & 1) == 0)
        {
          [v15 addObject:v21];
          [v14 addObject:v22];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v18);
  }

  v23 = qword_1006DF780;
  v24 = v23;
  if (v30 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    v25 = *(a1 + 48);
    v26 = *(a1 + 52);
    *buf = 67240448;
    v36 = v25;
    v37 = 1026;
    v38 = v26;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, spid, "ddf", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
  }

  v27 = *(a1 + 40);
  v28 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:v15 qfSDGTGvqd3Hruzg:0];
  (*(v27 + 16))(v27, v28);

LABEL_22:
}

void sub_10001A92C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001AA24;
  v9[3] = &unk_10068F8F0;
  v10 = v3;
  v11 = *(a1 + 56);
  v8 = v3;
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:v4 + 32 i4KDOQicW9Xd5WBz:v5 TWWnmIjkBlMfHmma:v6 completionQueue:v7 withCompletion:v9];
}

void sub_10001AA24(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  v4 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 encodeInt64:objc_msgSend(*(a1 + 32) forKey:{"JmiV9VW8P3Gxz1H7"), @"0x07aa"}];
  }

  if (v5)
  {
    [v3 encodeObject:v5];
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:v3]);
}

void sub_10001AE9C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (v8 && v7 && !a4)
  {
    memset(&v77, 0, sizeof(v77));
    v9 = v7;
    v10 = v8;
    v11 = os_signpost_id_generate(qword_1006DF780);
    v12 = qword_1006DF780;
    v13 = v12;
    v55 = v11 - 1;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "fp", "enableTelemetry=YES", buf, 2u);
    }

    v63 = objc_alloc_init(NSFileManager);
    if (*(*(a1 + 40) + 24))
    {
      spid = v11;
      v53 = v8;
      v54 = v7;
      [v63 enumeratorAtPath:v9];
      v58 = v50 = 0;
      v56 = v58;
    }

    else
    {
      v76 = 0;
      v36 = [v63 contentsOfDirectoryAtPath:v9 error:&v76];
      v37 = v76;
      v58 = [v36 objectEnumerator];
      v67 = v37;
      if (v37)
      {
        v38 = qword_1006DF780;
        v39 = v38;
        if (v55 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
        {
          v40 = *(a1 + 48);
          v41 = *(a1 + 52);
          *buf = 67240448;
          v82 = v40;
          v83 = 1026;
          v84 = v41;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, v11, "fp", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
        }

        v42 = *(a1 + 32);
        obj = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:162];
        (*(v42 + 16))(v42);
        goto LABEL_49;
      }

      spid = v11;
      v50 = v36;
      v53 = v8;
      v54 = v7;
      v56 = 0;
    }

    v52 = v10;
    v57 = [[NSRegularExpression alloc] initWithPattern:v10 options:0 error:0];
    v14 = objc_alloc_init(NSMutableArray);
    if (*(*(a1 + 40) + 28))
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = v15;
        v15 = [v58 nextObject];

        if (!v15)
        {
          break;
        }

        if ([v57 numberOfMatchesInString:v15 options:0 range:{0, objc_msgSend(v15, "length")}])
        {
          [v14 addObject:v15];
          ++v16;
        }

        if (*(a1 + 72) == 1 && [v56 level] > *(*(a1 + 40) + 24))
        {
          v18 = [v56 fileAttributes];
          v19 = [v18 objectForKeyedSubscript:@"NSFileType"];

          if (v19 == NSFileTypeDirectory)
          {
            [v56 skipDescendants];
          }
        }
      }

      while (v16 < *(*(a1 + 40) + 28));
    }

    v51 = a1;
    v60 = objc_alloc_init(NSMutableArray);
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = v14;
    v64 = [(kjAS9HuCdR1m5txL *)obj countByEnumeratingWithState:&v72 objects:v80 count:16];
    if (v64)
    {
      v67 = 0;
      v62 = *v73;
      v59 = v9;
      do
      {
        for (i = 0; i != v64; i = i + 1)
        {
          v21 = v67;
          if (*v73 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v22 = [NSString stringWithFormat:@"%@/%@", v9, *(*(&v72 + 1) + 8 * i), spid];
          v23 = [NSURL fileURLWithPath:v22];
          v71 = v67;
          v24 = [v63 attributesOfItemAtPath:v22 error:&v71];
          v67 = v71;

          stat([v22 fileSystemRepresentation], &v77);
          v25 = [v22 lastPathComponent];
          v65 = v23;
          v70 = [v23 path];
          v69 = [v24 objectForKey:NSFilePosixPermissions];
          v68 = [v24 objectForKey:NSFileSize];
          v26 = [v24 objectForKey:NSFileType];
          v27 = [NSDate dateWithTimeIntervalSince1970:v77.st_atimespec.tv_sec];
          v28 = [v24 objectForKey:NSFileModificationDate];
          v29 = [NSDate dateWithTimeIntervalSince1970:v77.st_ctimespec.tv_sec];
          v30 = [v24 objectForKey:NSFileCreationDate];
          v31 = v30;
          v66 = v25;
          if (v25 && v70 && v69 && v68 && v26 && v27 && v28 && v29 && v30)
          {
            v78[0] = @"fn";
            v78[1] = @"fd";
            v79[0] = v25;
            v79[1] = v70;
            v78[2] = @"pp";
            v78[3] = @"fs";
            v79[2] = v69;
            v79[3] = v68;
            v78[4] = @"ft";
            v78[5] = @"lat";
            v79[4] = v26;
            v79[5] = v27;
            v78[6] = @"lmt";
            v78[7] = @"lst";
            v79[6] = v28;
            v79[7] = v29;
            v79[8] = v30;
            v78[8] = @"fct";
            v78[9] = @"ec";
            v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v67 code]);
            v79[9] = v32;
            v33 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:10];

            v9 = v59;
            [v60 addObject:v33];
          }
        }

        v64 = [(kjAS9HuCdR1m5txL *)obj countByEnumeratingWithState:&v72 objects:v80 count:16];
      }

      while (v64);
    }

    else
    {
      v67 = 0;
    }

    v43 = qword_1006DF780;
    v44 = v43;
    if (v55 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
    {
      v45 = *(v51 + 48);
      v46 = *(v51 + 52);
      *buf = 67240448;
      v82 = v45;
      v83 = 1026;
      v84 = v46;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, spid, "fp", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
    }

    v47 = *(v51 + 32);
    v48 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:v60 qfSDGTGvqd3Hruzg:0];
    (*(v47 + 16))(v47, v48);

    v8 = v53;
    v7 = v54;
    v10 = v52;
    v36 = v50;
LABEL_49:

    goto LABEL_50;
  }

  v34 = *(a1 + 32);
  v35 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:a4];
  (*(v34 + 16))(v34, v35);

LABEL_50:
}

void sub_10001B83C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:0];
  [v7 encodeInt64:0xC24A388BC1F4D127 forKey:@"0x5563"];
  [v7 encodeObject:v6];

  [v7 encodeObject:v5];
  [v7 encodeInt32:*(*(a1 + 40) + 28) forKey:@"0x49b7"];
  [v7 encodeInt32:*(*(a1 + 40) + 24) forKey:@"0xd61f"];
  (*(*(a1 + 32) + 16))(*(a1 + 32), [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:v7]);
}

void sub_10001BD5C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(a1 + 40);
    v8 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:a3];
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    if (v5)
    {
      v9 = *(a1 + 32);
      v10 = *(*(a1 + 48) + 24);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10001BEE4;
      v12[3] = &unk_10068FAA8;
      v13 = v5;
      v15 = *(a1 + 56);
      v16 = *(a1 + 72);
      v14 = *(a1 + 40);
      [v9 getAt:v10 completion:v12];

      goto LABEL_6;
    }

    v11 = *(a1 + 40);
    v8 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:-27002];
    (*(v11 + 16))(v11, v8);
  }

LABEL_6:
}

void sub_10001BEE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSPredicate predicateWithFormat:@"SELF.%@.integerValue != 0", *(a1 + 32)];
  v5 = [v3 qfSDGTGvqd3Hruzg];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = os_signpost_id_generate(qword_1006DF780);
    v8 = qword_1006DF780;
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "fi", "enableTelemetry=YES", buf, 2u);
    }

    v10 = [v3 GyF0atX3JpCKc9pK];
    v6 = [v10 filteredArrayUsingPredicate:v4];

    v5 = 0;
    v11 = qword_1006DF780;
    v12 = v11;
    if (v7 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v11))
    {
      v13 = *(a1 + 48);
      v14 = *(a1 + 52);
      *buf = 67240448;
      v18 = v13;
      v19 = 1026;
      v20 = v14;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v7, "fi", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
    }

    v4 = 0;
  }

  v15 = *(a1 + 40);
  v16 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:v6 qfSDGTGvqd3Hruzg:v5];
  (*(v15 + 16))(v15, v16);
}

void sub_10001C104(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    if (a2 == 2)
    {
      objc_end_catch();
      JUMPOUT(0x10001C000);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_10001C354(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) encodeObject:a2];
  v3 = *(*(a1 + 56) + 24);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001C430;
  v5[3] = &unk_10068FAF8;
  v4 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  [v4 getAt:v3 completion:v5];
}

void sub_10001C430(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) encodeInt64:objc_msgSend(v3 forKey:{"JmiV9VW8P3Gxz1H7"), @"0x07aa"}];
  (*(*(a1 + 40) + 16))(*(a1 + 40), [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)]);
}

void sub_10001C888(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (v8 && v7 && !a4)
  {
    v23 = v7;
  }

  else
  {
    if (*(*(a1 + 48) + 32) >= 1)
    {
      v9 = *(a1 + 40);
      v10 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:174002];
      (*(v9 + 16))(v9, v10);

      goto LABEL_12;
    }

    v8 = @"0.0";
    v23 = @"0.0";
  }

  v11 = os_signpost_id_generate(qword_1006DF780);
  v12 = qword_1006DF780;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "fkc", "enableTelemetry=YES", buf, 2u);
  }

  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = v15[1];
  v22 = *v15;
  v17 = v15[2];
  v18 = v15[3];
  v19 = v15[4];
  v20 = v15[39];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001CA9C;
  v24[3] = &unk_10068FB48;
  v25 = v14;
  v27 = v11;
  v28 = *(a1 + 56);
  v29 = *(a1 + 72);
  v26 = *(a1 + 40);
  v21 = v20;
  v7 = v23;
  [v25 countTransactionsWithStartDateOffset:v22 endDateOffset:v16 transactionSources:v17 locationType:v18 locationFilterDistance:v19 lat:v23 lon:v8 maxCount:v21 completionHandler:v24];

LABEL_12:
}

void sub_10001CA9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 domain];
    v8 = [*(a1 + 32) errorDomain];

    if (v7 == v8)
    {
      v9 = [v6 code];
    }

    else
    {
      v9 = 174001;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = qword_1006DF780;
  v11 = v10;
  v12 = *(a1 + 48);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = *(a1 + 56);
    v14 = *(a1 + 60);
    *buf = 67240448;
    v26 = v13;
    v27 = 1026;
    v28 = v14;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v12, "fkc", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
  }

  v15 = *(a1 + 40);
  v16 = [kjAS9HuCdR1m5txL alloc];
  v17 = v16;
  if (v9)
  {
    v18 = [(kjAS9HuCdR1m5txL *)v16 initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:v9];
    (*(v15 + 16))(v15, v18);
  }

  else
  {
    v22 = @"c";
    v18 = [NSNumber numberWithInteger:a2];
    v23 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v24 = v19;
    v20 = [NSArray arrayWithObjects:&v24 count:1];
    v21 = [(kjAS9HuCdR1m5txL *)v17 initWithGyF0atX3JpCKc9pK:v20 qfSDGTGvqd3Hruzg:0];
    (*(v15 + 16))(v15, v21);
  }
}

uint64_t sub_10001CE84(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 encodeObject:a2];
  [*(a1 + 32) encodeObject:v6];

  v7 = *(a1 + 40);
  v8 = [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)];
  v9 = *(v7 + 16);

  return v9(v7, v8);
}

void sub_10001D2B4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (v8 && v7 && !a4)
  {
    v26 = v7;
  }

  else
  {
    v19 = *(a1 + 48);
    if (*(v19 + 32) > 0 || *(v19 + 328) == 1 || (*(v19 + 336) & 4) != 0)
    {
      v20 = *(a1 + 40);
      v21 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:174002];
      (*(v20 + 16))(v20, v21);

      goto LABEL_14;
    }

    v8 = @"0.0";
    v26 = @"0.0";
  }

  v9 = os_signpost_id_generate(qword_1006DF780);
  v10 = qword_1006DF780;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "fk", "enableTelemetry=YES", buf, 2u);
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v24 = v13[1];
  v25 = *v13;
  v14 = v13[2];
  v15 = v13[3];
  v16 = v13[4];
  v23 = *(v13 + 39);
  v17 = v13[41];
  v18 = v13[42];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10001D4F4;
  v27[3] = &unk_10068FBC0;
  v28 = v12;
  v30 = v9;
  v31 = *(a1 + 56);
  v32 = *(a1 + 72);
  v29 = *(a1 + 40);
  v22 = v17;
  v7 = v26;
  [v28 queryTransactionsWithStartDateOffset:v25 endDateOffset:v24 transactionSources:v14 locationType:v15 locationFilterDistance:v16 lat:v26 lon:v8 maxCount:v23 sortOrder:v22 sortByAttributes:v18 attributes:v27 completionHandler:?];

LABEL_14:
}

void sub_10001D4F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = v5;
    v9 = 0;
  }

  else
  {
    v10 = [v6 domain];
    v11 = [*(a1 + 32) errorDomain];

    if (v10 == v11)
    {
      v9 = [v7 code];
      v8 = &__NSArray0__struct;
    }

    else
    {
      v8 = &__NSArray0__struct;
      v9 = 174001;
    }
  }

  v12 = qword_1006DF780;
  v13 = v12;
  v14 = *(a1 + 48);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v15 = *(a1 + 56);
    v16 = *(a1 + 60);
    v19[0] = 67240448;
    v19[1] = v15;
    v20 = 1026;
    v21 = v16;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v14, "fk", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v19, 0xEu);
  }

  v17 = *(a1 + 40);
  v18 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:v8 qfSDGTGvqd3Hruzg:v9];
  (*(v17 + 16))(v17, v18);
}

uint64_t sub_10001D898(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 encodeObject:a2];
  [*(a1 + 32) encodeObject:v6];

  v7 = *(a1 + 40);
  v8 = [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)];
  v9 = *(v7 + 16);

  return v9(v7, v8);
}

void sub_10001DCCC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    if (v5)
    {
      v7 = [NSPredicate predicateWithFormat:v5];
      (*(*(a1 + 32) + 16))();

      goto LABEL_5;
    }

    v8 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_1005937AC(v8);
    }
  }

  (*(*(a1 + 32) + 16))();
LABEL_5:
}

void sub_10001DD8C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_10001E274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21)
{
  _Block_object_dispose((v21 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_10001E388(uint64_t a1)
{
  [*(a1 + 32) lock];
  v2 = *(*(a1 + 80) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    (*(*(a1 + 72) + 16))();
  }

  [*(a1 + 32) unlock];
  v6 = *(a1 + 64);

  dispatch_group_leave(v6);
}

void sub_10001E404(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (!a4 && v7 && v8)
  {
    [*(a1 + 32) lock];
    [*(a1 + 40) setObject:v7 atIndexedSubscript:*(a1 + 112)];
    [*(a1 + 48) setObject:v9 atIndexedSubscript:*(a1 + 112)];
    [*(a1 + 32) unlock];
    v10 = *(a1 + 104);
    v11 = *(a1 + 112);
    v12 = *(*(v10 + 8) + 4 * v11);
    if ((v12 - 1) < 3)
    {
      dispatch_group_leave(*(a1 + 88));
      goto LABEL_3;
    }

    if ((v12 - 4) <= 1)
    {
      v13 = *(v10 + 32);
      v14 = *(a1 + 56);
      v15 = *(a1 + 64);
      v16 = [*(a1 + 72) queue];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10001E624;
      v17[3] = &unk_10068FC38;
      v21 = *(a1 + 96);
      v18 = *(a1 + 32);
      v19 = *(a1 + 80);
      v22 = *(a1 + 112);
      v20 = *(a1 + 88);
      [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:v13 + 136 * v11 i4KDOQicW9Xd5WBz:v14 TWWnmIjkBlMfHmma:v15 completionQueue:v16 withCompletion:v17];

      goto LABEL_3;
    }
  }

  (*(*(a1 + 96) + 16))();
LABEL_3:
}

void sub_10001E624(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = v5;
  if (a3 || !v5)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 32) lock];
    v6 = *(a1 + 40);
    v7 = [NSNumber numberWithInt:*(a1 + 64)];
    [v6 setObject:v8 forKeyedSubscript:v7];

    [*(a1 + 32) unlock];
    dispatch_group_leave(*(a1 + 48));
  }
}

void *sub_10001E704(void *result)
{
  if ((*(*(result[8] + 8) + 24) & 1) == 0)
  {
    return (*(result[7] + 16))(result[7], result[4], result[5], result[6], 0);
  }

  return result;
}

void sub_10001E8E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 qfSDGTGvqd3Hruzg];
  if (v4)
  {
    v5 = *(a1 + 56);
    v6 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:v4];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v7 = *(a1 + 96);
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(a1 + 48);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001EA9C;
    v15[3] = &unk_10068FCD8;
    v11 = *(a1 + 64);
    v12 = *(a1 + 56);
    v13 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v14 = *(a1 + 64);
    v19 = v12;
    v20 = v14;
    v16 = v13;
    v17 = *(a1 + 48);
    v23 = *(a1 + 96);
    v18 = v3;
    v21 = *(a1 + 72);
    v22 = *(a1 + 88);
    [v9 filterPredicate:v11 dfVersion:v7 i4KDOQicW9Xd5WBz:v8 TWWnmIjkBlMfHmma:v10 completion:v15];
  }
}

void sub_10001EA9C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(a1 + 64);
    v7 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:a3];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001EC1C;
    v14[3] = &unk_10068FCB0;
    v11 = *(a1 + 72);
    v17 = *(a1 + 64);
    v21 = *(a1 + 104);
    v15 = v5;
    v12 = *(a1 + 56);
    v13 = *(a1 + 72);
    v16 = v12;
    v18 = v13;
    v19 = *(a1 + 80);
    v20 = *(a1 + 96);
    [v8 assembleExpressions:v11 i4KDOQicW9Xd5WBz:v9 TWWnmIjkBlMfHmma:v10 withCompletion:v14];
  }
}

void sub_10001EC1C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v76 = a2;
  v77 = a3;
  v75 = a4;
  if (a5)
  {
    v9 = *(a1 + 48);
    v10 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:a5];
    (*(v9 + 16))(v9, v10);

    goto LABEL_56;
  }

  v11 = os_signpost_id_generate(qword_1006DF780);
  v12 = qword_1006DF780;
  v13 = v12;
  spid = v11;
  v69 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ma", "enableTelemetry=YES", buf, 2u);
  }

  if (*(a1 + 88) == 2 && *(a1 + 32))
  {
    v14 = [*(a1 + 40) GyF0atX3JpCKc9pK];
    v15 = [v14 filteredArrayUsingPredicate:*(a1 + 32)];
  }

  else
  {
    v15 = [*(a1 + 40) GyF0atX3JpCKc9pK];
  }

  v73 = objc_alloc_init(NSMutableArray);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v15;
  v16 = [obj countByEnumeratingWithState:&v78 objects:v85 count:16];
  if (!v16)
  {
    v17 = 0;
    goto LABEL_48;
  }

  v70 = v16;
  v17 = 0;
  v72 = *v79;
LABEL_12:
  v74 = 0;
  while (1)
  {
    if (*v79 != v72)
    {
      objc_enumerationMutation(obj);
    }

    v18 = *(*(&v78 + 1) + 8 * v74);
    v19 = objc_alloc_init(NSMutableDictionary);

    v17 = v19;
    v20 = *(a1 + 56);
    if (*(v20 + 4))
    {
      break;
    }

LABEL_40:
    [v73 addObject:v17];

    if (++v74 == v70)
    {
      v70 = [obj countByEnumeratingWithState:&v78 objects:v85 count:16];
      if (!v70)
      {
LABEL_48:

        if (*(a1 + 88) == 3 && *(a1 + 32))
        {
          v60 = [v73 filteredArrayUsingPredicate:?];
        }

        else
        {
          v60 = [NSArray arrayWithArray:v73];
        }

        v61 = v60;
        v62 = qword_1006DF780;
        v63 = v62;
        if (v69 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
        {
          v64 = *(a1 + 64);
          v65 = *(a1 + 68);
          *buf = 67240448;
          *&buf[4] = v64;
          v83 = 1026;
          v84 = v65;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v63, OS_SIGNPOST_INTERVAL_END, spid, "ma", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
        }

        v66 = *(a1 + 48);
        v67 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:v61 qfSDGTGvqd3Hruzg:0];
        (*(v66 + 16))(v66, v67);

        goto LABEL_56;
      }

      goto LABEL_12;
    }
  }

  v21 = 0;
  while (1)
  {
    v22 = *(*(v20 + 8) + 4 * v21);
    if (v22 <= 2)
    {
      break;
    }

    switch(v22)
    {
      case 3:
        v45 = [v77 objectAtIndexedSubscript:v21];
        v46 = [NSExpression expressionWithFormat:v45];
        v35 = [v46 expressionValueWithObject:v18 context:0];

        if (v35)
        {
          v47 = [v76 objectAtIndexedSubscript:v21];
          [v17 setObject:v35 forKey:v47];
        }

        break;
      case 4:
        v34 = [NSNumber numberWithInt:v21];
        v35 = [v75 objectForKeyedSubscript:v34];

        if (v35)
        {
          v36 = [v77 objectAtIndexedSubscript:v21];
          v37 = [v18 objectForKeyedSubscript:v36];

          v38 = [v18 objectForKeyedSubscript:v35];
          v39 = [[NSRegularExpression alloc] initWithPattern:v38 options:0 error:0];
          v40 = [v39 numberOfMatchesInString:v37 options:0 range:{0, objc_msgSend(v37, "length")}] != 0;

          v41 = [NSNumber numberWithBool:v40];
          v42 = [v76 objectAtIndexedSubscript:v21];
          [v17 setObject:v41 forKey:v42];
        }

        break;
      case 5:
        *buf = 0;
        v23 = [v77 objectAtIndexedSubscript:v21];
        v24 = [NSNumber numberWithInt:v21];
        v25 = [v75 objectForKeyedSubscript:v24];

        [Yp00msaYdVlZesvU otlAmd6vMhhfwQLu:v23 withObject:v18 errorValue:buf];
        if (*buf)
        {
          v27 = [v17 objectForKey:@"ec"];
          v28 = v27 == 0;

          if (v28)
          {
LABEL_36:
            [v17 setObject:&off_1006BA838 forKey:@"ec"];
          }
        }

        else
        {
          v48 = v26;
          [Yp00msaYdVlZesvU otlAmd6vMhhfwQLu:v25 withObject:v18 errorValue:buf];
          if (!*buf)
          {
            v52 = [[CLLocation alloc] initWithLatitude:v48 longitude:v49];
            v53 = [v76 objectAtIndexedSubscript:v21];
            [v17 setObject:v52 forKey:v53];

            goto LABEL_38;
          }

          v50 = [v17 objectForKey:@"ec"];
          v51 = v50 == 0;

          if (v51)
          {
            goto LABEL_36;
          }
        }

LABEL_38:

        goto LABEL_39;
      default:
        goto LABEL_43;
    }

LABEL_39:
    ++v21;
    v20 = *(a1 + 56);
    if (v21 >= *(v20 + 4))
    {
      goto LABEL_40;
    }
  }

  if (v22 == 1)
  {
    v43 = [v77 objectAtIndexedSubscript:v21];
    v44 = [v76 objectAtIndexedSubscript:v21];
    [v17 setObject:v43 forKey:v44];

    goto LABEL_39;
  }

  if (v22 == 2)
  {
    v29 = [v77 objectAtIndexedSubscript:v21];
    v30 = [NSPredicate predicateWithFormat:v29];
    v31 = [v30 evaluateWithObject:v18 substitutionVariables:0];

    v32 = [NSNumber numberWithBool:v31];
    v33 = [v76 objectAtIndexedSubscript:v21];
    [v17 setObject:v32 forKey:v33];

    goto LABEL_39;
  }

LABEL_43:
  v54 = qword_1006DF780;
  v55 = v54;
  if (v69 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
  {
    v56 = *(a1 + 64);
    v57 = *(a1 + 68);
    *buf = 67240448;
    *&buf[4] = v56;
    v83 = 1026;
    v84 = v57;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v55, OS_SIGNPOST_INTERVAL_END, spid, "ma", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
  }

  v58 = *(a1 + 48);
  v59 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:-27052];
  (*(v58 + 16))(v58, v59);

LABEL_56:
}

void sub_10001F710()
{
  objc_end_catch();

  _Unwind_Resume(v3);
}

void sub_10001F7B0()
{
  if (v0)
  {
    objc_end_catch();
  }

  _Unwind_Resume(v7);
}

void sub_10001F840()
{
  if (v0)
  {
    objc_end_catch();
  }

  _Unwind_Resume(v4);
}

void sub_10001F888(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_10001FB40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableArray alloc] initWithCapacity:*(*(a1 + 72) + 4)];
  [*(a1 + 32) encodeInt64:objc_msgSend(v3 forKey:{"JmiV9VW8P3Gxz1H7"), @"0x07aa"}];
  v5 = *(a1 + 72);
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001FD1C;
  v16[3] = &unk_10068FD50;
  v17 = *(a1 + 32);
  v9 = v4;
  v18 = v9;
  v21 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v15 = *(a1 + 40);
  v12 = *(a1 + 64);
  *&v13 = v15;
  *(&v13 + 1) = v12;
  *&v14 = v10;
  *(&v14 + 1) = v11;
  v19 = v14;
  v20 = v13;
  [v7 assembleExpressions:v5 i4KDOQicW9Xd5WBz:v6 TWWnmIjkBlMfHmma:v8 withCompletion:v16];
}

void sub_10001FD1C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  [*(a1 + 32) encodeObject:v6];
  [*(a1 + 32) encodeObject:*(a1 + 40)];
  [*(a1 + 32) encodeObject:v7];
  if (*(*(a1 + 80) + 4) < 2u)
  {
    (*(*(a1 + 72) + 16))(*(a1 + 72), [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)]);
  }

  else
  {
    v8 = *(a1 + 88);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = [*(a1 + 64) queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001FEB0;
    v12[3] = &unk_10068FD28;
    v13 = *(a1 + 32);
    v14 = *(a1 + 72);
    [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:v8 + 40 i4KDOQicW9Xd5WBz:v9 TWWnmIjkBlMfHmma:v10 completionQueue:v11 withCompletion:v12];
  }
}

void sub_10001FEB0(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) encodeObject:? forKey:?];
  (*(*(a1 + 40) + 16))(*(a1 + 40), [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)]);
}

void sub_100020264(uint64_t a1)
{
  v2 = os_signpost_id_generate(qword_1006DF780);
  v3 = qword_1006DF780;
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "mc", "enableTelemetry=YES", buf, 2u);
  }

  v5 = 166000;

  if ([CNContactStore authorizationStatusForEntityType:0]>= CNAuthorizationStatusAuthorized)
  {
    v8 = objc_alloc_init(CNContactStore);
    v27[0] = CNContactNamePrefixKey;
    v27[1] = CNContactGivenNameKey;
    v27[2] = CNContactMiddleNameKey;
    v27[3] = CNContactFamilyNameKey;
    v27[4] = CNContactPreviousFamilyNameKey;
    v27[5] = CNContactNameSuffixKey;
    v27[6] = CNContactNicknameKey;
    v27[7] = CNContactOrganizationNameKey;
    v27[8] = CNContactDepartmentNameKey;
    v27[9] = CNContactJobTitleKey;
    v27[10] = CNContactPhoneticGivenNameKey;
    v27[11] = CNContactPhoneticMiddleNameKey;
    v27[12] = CNContactPhoneticFamilyNameKey;
    v27[13] = CNContactPhoneticOrganizationNameKey;
    v27[14] = CNContactBirthdayKey;
    v27[15] = CNContactNonGregorianBirthdayKey;
    v27[16] = CNContactNoteKey;
    v27[17] = CNContactImageDataAvailableKey;
    v27[18] = CNContactTypeKey;
    v27[19] = CNContactPhoneNumbersKey;
    v27[20] = CNContactEmailAddressesKey;
    v27[21] = CNContactPostalAddressesKey;
    v27[22] = CNContactDatesKey;
    v27[23] = CNContactUrlAddressesKey;
    v27[24] = CNContactRelationsKey;
    v27[25] = CNContactSocialProfilesKey;
    v27[26] = CNContactInstantMessageAddressesKey;
    v9 = &_ss11_StringGutsV27foreignErrorCorrectedScalar10startingAts7UnicodeO0F0V_Si12scalarLengthtSS5IndexV_tF_ptr;
    v10 = [NSArray arrayWithObjects:v27 count:27];
    v21 = 0;
    v7 = [v8 _crossPlatformUnifiedMeContactWithKeysToFetch:v10 error:&v21];
    v11 = v21;
    v12 = v11;
    if (v11)
    {
      v13 = [v11 domain];
      v14 = [v13 isEqualToString:@"CNErrorDomain"];

      if (!v14)
      {
        v5 = 0;
        v9 = &_ss11_StringGutsV27foreignErrorCorrectedScalar10startingAts7UnicodeO0F0V_Si12scalarLengthtSS5IndexV_tF_ptr;
        goto LABEL_14;
      }

      v15 = [v12 code];
      if (v15 > 99)
      {
        v9 = &_ss11_StringGutsV27foreignErrorCorrectedScalar10startingAts7UnicodeO0F0V_Si12scalarLengthtSS5IndexV_tF_ptr;
        if (v15 == 100)
        {
          v5 = 166003;
          goto LABEL_14;
        }

        if (v15 == 200)
        {
          v5 = 166004;
          goto LABEL_14;
        }
      }

      else
      {
        v9 = &_ss11_StringGutsV27foreignErrorCorrectedScalar10startingAts7UnicodeO0F0V_Si12scalarLengthtSS5IndexV_tF_ptr;
        if (v15 == 1)
        {
          v5 = 166001;
          goto LABEL_14;
        }

        if (v15 == 2)
        {
          v5 = 166002;
LABEL_14:
          if (v7)
          {
            v26 = v7;
            v6 = [v9[429] arrayWithObjects:&v26 count:1];
          }

          else
          {
            v6 = 0;
          }

          goto LABEL_18;
        }
      }

      v5 = 166005;
      goto LABEL_14;
    }

    v5 = 0;
    goto LABEL_14;
  }

  v6 = 0;
  v7 = 0;
LABEL_18:
  v16 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:v6 qfSDGTGvqd3Hruzg:v5];
  v17 = qword_1006DF780;
  v18 = v17;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    v19 = *(a1 + 40);
    v20 = *(a1 + 44);
    *buf = 67240448;
    v23 = v19;
    v24 = 1026;
    v25 = v20;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v2, "mc", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_100020BF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100020C0C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    *(*(a1[5] + 8) + 24) = 177002;
  }

  if (v5)
  {
    v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 unknownDuration]);
    [*(*(a1[6] + 8) + 40) setObject:v7 forKeyedSubscript:@"ud"];

    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 stationaryDuration]);
    [*(*(a1[6] + 8) + 40) setObject:v8 forKeyedSubscript:@"sd"];

    v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 walkingDuration]);
    [*(*(a1[6] + 8) + 40) setObject:v9 forKeyedSubscript:@"wd"];

    v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 runningDuration]);
    [*(*(a1[6] + 8) + 40) setObject:v10 forKeyedSubscript:@"rd"];

    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 automotiveDuration]);
    [*(*(a1[6] + 8) + 40) setObject:v11 forKeyedSubscript:@"ad"];

    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 cyclingDuration]);
    [*(*(a1[6] + 8) + 40) setObject:v12 forKeyedSubscript:@"cd"];

    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 indeterminateDuration]);
    [*(*(a1[6] + 8) + 40) setObject:v13 forKeyedSubscript:@"id"];
  }

  v14 = qword_1006DF780;
  v15 = v14;
  v16 = a1[7];
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *v21 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, v16, "mo", "", v21, 2u);
  }

  v17 = a1[4];
  v18 = [kjAS9HuCdR1m5txL alloc];
  v22 = *(*(a1[6] + 8) + 40);
  v19 = [NSArray arrayWithObjects:&v22 count:1];
  v20 = [(kjAS9HuCdR1m5txL *)v18 initWithGyF0atX3JpCKc9pK:v19 qfSDGTGvqd3Hruzg:0];
  (*(v17 + 16))(v17, v20);
}

void sub_1000213A4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5 || a3)
  {
    v20 = *(a1 + 40);
    v21 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:a3];
    (*(v20 + 16))(v20, v21);
  }

  else
  {
    v6 = os_signpost_id_generate(qword_1006DF780);
    v7 = qword_1006DF780;
    v8 = v7;
    v9 = v6 - 1;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "np", "enableTelemetry=YES", buf, 2u);
    }

    spid = v6;

    v10 = [*(a1 + 32) personNameComponentsFromString:v5];
    v11 = v10;
    if (v10)
    {
      v40[0] = @"gn";
      v35 = a1;
      v32 = [v10 givenName];
      v31 = [NSString string:v32 orDefault:&stru_1006B82F8];
      v41[0] = v31;
      v40[1] = @"mn";
      v30 = [v11 middleName];
      v29 = [NSString string:v30 orDefault:&stru_1006B82F8];
      v41[1] = v29;
      v40[2] = @"fn";
      v28 = [v11 familyName];
      v27 = [NSString string:v28 orDefault:&stru_1006B82F8];
      v41[2] = v27;
      v40[3] = @"np";
      v33 = v9;
      v12 = [v11 namePrefix];
      v13 = [NSString string:v12 orDefault:&stru_1006B82F8];
      v41[3] = v13;
      v40[4] = @"ns";
      v14 = [v11 nameSuffix];
      v15 = [NSString string:v14 orDefault:&stru_1006B82F8];
      v41[4] = v15;
      v40[5] = @"nn";
      v16 = [v11 nickname];
      v17 = [NSString string:v16 orDefault:&stru_1006B82F8];
      v41[5] = v17;
      v18 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:6];
      v42 = v18;
      v19 = [NSArray arrayWithObjects:&v42 count:1];

      a1 = v35;
      v9 = v33;
    }

    else
    {
      v19 = 0;
    }

    v22 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:v19 qfSDGTGvqd3Hruzg:0];
    v23 = qword_1006DF780;
    v24 = v23;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = *(a1 + 48);
      v26 = *(a1 + 52);
      *buf = 67240448;
      v37 = v25;
      v38 = 1026;
      v39 = v26;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, spid, "np", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_1000218F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 encodeInt64:0x2B0DF39217DBC87ELL forKey:@"0x5563"];
  [*(a1 + 32) encodeObject:v4];

  v5 = *(a1 + 40);
  v6 = [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)];
  v7 = *(v5 + 16);

  return v7(v5, v6);
}

void sub_100021C9C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = objc_alloc_init(NSMutableArray);
  if (a3)
  {
    v8 = qword_1006DF780;
    v9 = v8;
    v10 = *(a1 + 40);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 52);
      *buf = 67240448;
      v45 = v11;
      v46 = 1026;
      v47 = v12;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "ne", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
    }

    v13 = *(a1 + 32);
    v14 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:&__NSArray0__struct qfSDGTGvqd3Hruzg:173001];
    (*(v13 + 16))(v13, v14);
  }

  else
  {
    v37 = v5;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v5;
    v15 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v40;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v40 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v39 + 1) + 8 * i);
          v20 = [v19 protocolConfiguration];
          v21 = [v20 type];

          v22 = [v19 connection];
          v23 = [v22 status];

          v24 = [v19 isFromMDM];
          v25 = [NSNumber numberWithInteger:v21];
          [v6 setObject:v25 forKeyedSubscript:@"p"];

          v26 = [NSNumber numberWithInteger:v23];
          [v6 setObject:v26 forKeyedSubscript:@"s"];

          v27 = [NSNumber numberWithBool:v24];
          [v6 setObject:v27 forKeyedSubscript:@"m"];

          if (v23 == 3)
          {
            v28 = [v19 connection];
            v29 = [v28 connectedDate];

            if (v29)
            {
              [v6 setObject:v29 forKeyedSubscript:@"t"];
            }
          }

          else
          {
            [v6 removeObjectForKey:@"t"];
          }

          v30 = [NSDictionary dictionaryWithDictionary:v6];
          [v7 addObject:v30];
        }

        v16 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v16);
    }

    v31 = qword_1006DF780;
    v32 = v31;
    v33 = *(a1 + 40);
    if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      v34 = *(a1 + 48);
      v35 = *(a1 + 52);
      *buf = 67240448;
      v45 = v34;
      v46 = 1026;
      v47 = v35;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, v33, "ne", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
    }

    v36 = *(a1 + 32);
    v14 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:v7 qfSDGTGvqd3Hruzg:0];
    (*(v36 + 16))(v36, v14);
    v5 = v37;
  }
}

void sub_100022480(uint64_t a1)
{
  v2 = +[FnfDbwO2lFcwJMJU sharedInstance];
  v3 = objc_alloc_init(NSMutableArray);
  v4 = os_signpost_id_generate(qword_1006DF780);
  v5 = qword_1006DF780;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "pn", "enableTelemetry=YES", buf, 2u);
  }

  v7 = [v2 N6iJbZh5ycxf9a3z];
  v8 = qword_1006DF780;
  v9 = v8;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 44);
    *buf = 67240448;
    v21 = v10;
    v22 = 1026;
    v23 = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v4, "pn", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
  }

  if (v7)
  {
    v12 = 0;
  }

  else
  {
    v12 = 141001;
  }

  if (v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = &stru_1006B82F8;
  }

  v14 = [NSNumber numberWithUnsignedInt:v12, @"ec"];
  v18[1] = @"ph";
  v19[0] = v14;
  v19[1] = v13;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  [v3 addObject:v15];

  v16 = *(a1 + 32);
  v17 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:v3 qfSDGTGvqd3Hruzg:0];
  (*(v16 + 16))(v16, v17);
}

void sub_100022C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100022C1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100022C34(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(a1 + 40);
    v8 = [kjAS9HuCdR1m5txL alloc];
    v9 = a3;
LABEL_3:
    v10 = [(kjAS9HuCdR1m5txL *)v8 initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:v9];
    (*(v7 + 16))(v7, v10);

    goto LABEL_4;
  }

  if (!*(a1 + 32))
  {
    v7 = *(a1 + 40);
    v8 = [kjAS9HuCdR1m5txL alloc];
    v9 = 165000;
    goto LABEL_3;
  }

  if (!v5)
  {
    v7 = *(a1 + 40);
    v8 = [kjAS9HuCdR1m5txL alloc];
    v9 = -27002;
    goto LABEL_3;
  }

  v11 = os_signpost_id_generate(qword_1006DF780);
  v12 = qword_1006DF780;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "pkc", "enableTelemetry=YES", buf, 2u);
  }

  v14 = *(*(a1 + 56) + 24);
  v15 = *(a1 + 32);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100022E0C;
  v18[3] = &unk_10068FE40;
  v20 = v11;
  v21 = *(a1 + 64);
  v22 = *(a1 + 80);
  v17 = *(a1 + 40);
  v16 = v17;
  v19 = v17;
  [v15 y8DihfZYjxGbiiEE:v6 QsX3tfdMvsGwvY0F:v14 withCompletion:v18];

LABEL_4:
}

void sub_100022E0C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v7 = qword_1006DF780;
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 60);
    v14[0] = 67240448;
    v14[1] = v10;
    v15 = 1026;
    v16 = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "pkc", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v14, 0xEu);
  }

  v12 = *(a1 + 32);
  v13 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:*(*(*(a1 + 40) + 8) + 40) qfSDGTGvqd3Hruzg:a3];
  (*(v12 + 16))(v12, v13);
}

uint64_t sub_100023090(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) encodeObject:a2];
  [*(a1 + 32) encodeInt64:*(*(a1 + 48) + 24) forKey:@"0x0x5bde"];
  [*(a1 + 32) encodeInt64:0xD52E3C5CA2F5DFECLL forKey:@"0x5563"];
  v3 = *(a1 + 40);
  v4 = [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)];
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

uint64_t sub_10002358C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000235A4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(a1 + 48);
    v8 = [kjAS9HuCdR1m5txL alloc];
    v9 = a3;
LABEL_3:
    v10 = [(kjAS9HuCdR1m5txL *)v8 initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:v9];
    (*(v7 + 16))(v7, v10);

    goto LABEL_4;
  }

  if (!*(a1 + 32))
  {
    v7 = *(a1 + 48);
    v8 = [kjAS9HuCdR1m5txL alloc];
    v9 = 165000;
    goto LABEL_3;
  }

  if (!v5)
  {
    v7 = *(a1 + 48);
    v8 = [kjAS9HuCdR1m5txL alloc];
    v9 = -27002;
    goto LABEL_3;
  }

  v11 = os_signpost_id_generate(qword_1006DF780);
  v12 = qword_1006DF780;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "pk", "enableTelemetry=YES", buf, 2u);
  }

  if (*(a1 + 64))
  {
    v14 = 0;
    do
    {
      v15 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:*(*(*(a1 + 72) + 168) + 8 * v14) gsx0MJUoOpcxcozG:*(*(*(a1 + 72) + 176) + 4 * v14)];
      [*(a1 + 40) addObject:v15];

      ++v14;
    }

    while (*(a1 + 64) > v14);
  }

  v16 = *(a1 + 80);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000237CC;
  v21[3] = &unk_10068FE40;
  v23 = v11;
  v24 = *(a1 + 88);
  v25 = *(a1 + 104);
  v20 = *(a1 + 48);
  v19 = v20;
  v22 = v20;
  [v17 ZkTXckPDVjRWZuVM:v6 QsX3tfdMvsGwvY0F:v16 oMKZEzaKOVd8YlLk:v18 withCompletion:v21];

LABEL_4:
}

void sub_1000237CC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v7 = qword_1006DF780;
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 60);
    v14[0] = 67240448;
    v14[1] = v10;
    v15 = 1026;
    v16 = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "pk", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v14, 0xEu);
  }

  v12 = *(a1 + 32);
  v13 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:*(*(*(a1 + 40) + 8) + 40) qfSDGTGvqd3Hruzg:a3];
  (*(v12 + 16))(v12, v13);
}

uint64_t sub_100023AF8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) encodeObject:a2];
  v3 = *(a1 + 40);
  v4 = [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)];
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

void sub_100023EC4(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v13 = 0;
    v9 = 0;
    if (a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = -27002;
    }
  }

  else
  {
    v4 = qword_1006DF780;
    v5 = a2;
    v6 = os_signpost_id_generate(v4);
    v7 = qword_1006DF780;
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      LOWORD(v22[0]) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "pl", "enableTelemetry=YES", v22, 2u);
    }

    v9 = [NSURL fileURLWithPath:v5 isDirectory:0];

    if (v9 && ([v9 checkResourceIsReachableAndReturnError:0] & 1) != 0)
    {
      v10 = [NSDictionary dictionaryWithContentsOfURL:v9 error:0];
      v11 = v10;
      if (v10)
      {
        v25[0] = @"v";
        v25[1] = @"ec";
        v26[0] = v10;
        v26[1] = &off_1006BA850;
        v12 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
        v27 = v12;
        v13 = [NSArray arrayWithObjects:&v27 count:1];
        v14 = 0;
      }

      else
      {
        v28[0] = @"v";
        v28[1] = @"ec";
        v29[0] = &__NSDictionary0__struct;
        v14 = 158;
        v12 = [NSNumber numberWithInteger:158];
        v29[1] = v12;
        v21 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
        v30 = v21;
        v13 = [NSArray arrayWithObjects:&v30 count:1];
      }
    }

    else
    {
      v31[0] = @"v";
      v31[1] = @"ec";
      v32[0] = &__NSDictionary0__struct;
      v14 = 157;
      v11 = [NSNumber numberWithInteger:157];
      v32[1] = v11;
      v12 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
      v33 = v12;
      v13 = [NSArray arrayWithObjects:&v33 count:1];
    }

    v15 = qword_1006DF780;
    v16 = v15;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v17 = *(a1 + 40);
      v18 = *(a1 + 44);
      v22[0] = 67240448;
      v22[1] = v17;
      v23 = 1026;
      v24 = v18;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, v6, "pl", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v22, 0xEu);
    }
  }

  v19 = *(a1 + 32);
  v20 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:v13 qfSDGTGvqd3Hruzg:v14];
  (*(v19 + 16))(v19, v20);
}

uint64_t sub_100024390(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) encodeObject:a2];
  v3 = *(a1 + 40);
  v4 = [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)];
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

uint64_t sub_100024B70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100024B88(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    *(*(a1[5] + 8) + 24) = a3;
  }

  else
  {
    [*(*(a1[6] + 8) + 40) setDictionary:a2];
  }

  v4 = a1[4];

  dispatch_group_leave(v4);
}

void sub_100024BE4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    *(*(a1[5] + 8) + 24) = a3;
  }

  else
  {
    [*(*(a1[6] + 8) + 40) setDictionary:a2];
  }

  v4 = a1[4];

  dispatch_group_leave(v4);
}

void sub_100024C40(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    [*(a1 + 32) addEntriesFromDictionary:*(*(*(a1 + 48) + 8) + 40)];
    v2 = *(*(*(a1 + 56) + 8) + 24);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 89) == 1)
  {
    [*(a1 + 32) addEntriesFromDictionary:*(*(*(a1 + 64) + 8) + 40)];
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      v2 = *(*(*(a1 + 72) + 8) + 24);
    }
  }

  if (*(*(*(a1 + 56) + 8) + 24) && *(*(*(a1 + 72) + 8) + 24))
  {
    v2 = 176007;
  }

  v3 = qword_1006DF780;
  v4 = v3;
  v5 = *(a1 + 80);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v5, "ss", "", v10, 2u);
  }

  v6 = *(a1 + 40);
  v7 = [kjAS9HuCdR1m5txL alloc];
  v11 = *(a1 + 32);
  v8 = [NSArray arrayWithObjects:&v11 count:1];
  v9 = [(kjAS9HuCdR1m5txL *)v7 initWithGyF0atX3JpCKc9pK:v8 qfSDGTGvqd3Hruzg:v2];
  (*(v6 + 16))(v6, v9);
}

void sub_100024FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100024FCC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_1006DF780;
  v8 = v7;
  v9 = a1[7];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "ss_1", "", v20, 2u);
  }

  if (v6)
  {
    v10 = *(a1[5] + 8);
    v11 = 176004;
LABEL_6:
    *(v10 + 24) = v11;
    goto LABEL_7;
  }

  if (!v5)
  {
    v19 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
    {
      sub_1005937F0(v19);
    }

    v10 = *(a1[5] + 8);
    v11 = 176001;
    goto LABEL_6;
  }

  if ([v5 status])
  {
    v14 = *(*(a1[6] + 8) + 40);
    v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 status]);
    [v14 setObject:v15 forKey:@"ms"];
  }

  v16 = [v5 sessionStart];

  if (v16)
  {
    v17 = *(*(a1[6] + 8) + 40);
    v18 = [v5 sessionStart];
    [v17 setObject:v18 forKey:@"md"];
  }

LABEL_7:
  v12 = *(*(a1[6] + 8) + 40);
  v13 = *(*(a1[5] + 8) + 24);
  (*(a1[4] + 16))();
}

void sub_1000252D8(uint64_t a1)
{
  if ([*(a1 + 32) hasActiveCalls])
  {
    v2 = *(*(a1 + 32) + 24);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000253F4;
    v8[3] = &unk_10068FF80;
    v7 = *(a1 + 40);
    v3 = v7;
    v9 = v7;
    v10 = *(a1 + 56);
    v8[4] = *(a1 + 32);
    [v2 fetchAnonymousXPCEndpoint:v8];
  }

  else
  {
    [*(*(*(a1 + 56) + 8) + 40) setObject:&off_1006BA868 forKey:@"rs"];
    v4 = *(*(*(a1 + 56) + 8) + 40);
    v5 = *(*(*(a1 + 48) + 8) + 24);
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

void sub_1000253F4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    *(*(a1[6] + 8) + 24) = 176005;
LABEL_3:
    v7 = *(*(a1[7] + 8) + 40);
    v8 = *(*(a1[6] + 8) + 24);
    (*(a1[5] + 16))();
    goto LABEL_9;
  }

  if (!v5)
  {
    *(*(a1[6] + 8) + 24) = 176005;
    [*(*(a1[7] + 8) + 40) setObject:&off_1006BA868 forKey:@"rs"];
    goto LABEL_3;
  }

  v9 = [[TUUIXPCClientConnection alloc] initWithListenerEndpoint:v5 callCenter:*(a1[4] + 24)];
  v10 = a1[4];
  v11 = *(v10 + 32);
  *(v10 + 32) = v9;

  v12 = os_signpost_id_generate(qword_1006DF780);
  v13 = qword_1006DF780;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "ss_3", "enableTelemetry=YES", buf, 2u);
  }

  v15 = *(a1[4] + 32);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000255E0;
  v18[3] = &unk_10068FF58;
  v20 = a1[7];
  v21 = v12;
  v17 = *(a1 + 5);
  v16 = v17;
  v19 = v17;
  [v15 fetchRemoteControlStatus:v18];

LABEL_9:
}

void sub_1000255E0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = qword_1006DF780;
  v7 = v6;
  v8 = a1[7];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "ss_3", "", v16, 2u);
  }

  if (v5)
  {
    v9 = *(a1[5] + 8);
    v10 = 176006;
  }

  else
  {
    if (a2)
    {
      v11 = *(*(a1[6] + 8) + 40);
      v12 = [NSNumber numberWithInteger:a2];
      [v11 setObject:v12 forKey:@"rs"];

      goto LABEL_9;
    }

    v15 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
    {
      sub_1005937F0(v15);
    }

    v9 = *(a1[5] + 8);
    v10 = 176001;
  }

  *(v9 + 24) = v10;
LABEL_9:
  v13 = *(*(a1[6] + 8) + 40);
  v14 = *(*(a1[5] + 8) + 24);
  (*(a1[4] + 16))();
}

void sub_100025DBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1006DF780;
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 52);
    v9[0] = 67240448;
    v9[1] = v7;
    v10 = 1026;
    v11 = v8;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "jdf", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v9, 0xEu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100026008(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v11 = 0;
    v3 = [NSJSONSerialization JSONObjectWithData:a2 options:0 error:&v11];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = [kjAS9HuCdR1m5txL alloc];
    if (isKindOfClass)
    {
      v6 = v3;
      v7 = 0;
    }

    else
    {
      v6 = &__NSArray0__struct;
      v7 = 165020;
    }

    v8 = [(kjAS9HuCdR1m5txL *)v5 initWithGyF0atX3JpCKc9pK:v6 qfSDGTGvqd3Hruzg:v7];
  }

  else
  {
    v8 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:&__NSArray0__struct qfSDGTGvqd3Hruzg:165021];
    v3 = +[_TtC3asd18RavioliManagerObjC shared];
    v9 = *(a1 + 32);
    v10 = +[_TtC3asd29DefinedRavioliNotificationIds missingBag];
    [v3 requestRavioliFetchWithProbabiliticThrottleWithBagID:v9 notificationId:v10];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100026A3C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if ([v11 length])
  {
    v12 = +[NSFileManager defaultManager];
    v13 = [v12 containerURLForSecurityApplicationGroupIdentifier:v11];

    if (!v13)
    {
      a5 = 167002;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = 0;
  if (v9 && v10 && !a5)
  {
    v15 = os_signpost_id_generate(qword_1006DF780);
    v16 = qword_1006DF780;
    v17 = v16;
    v34 = v15 - 1;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "sud", "enableTelemetry=YES", buf, 2u);
    }

    v35 = a1;

    v18 = [NSUserDefaults alloc];
    if (v13)
    {
      v19 = [v18 _initWithSuiteName:v9 container:v13];
    }

    else
    {
      v19 = [v18 initWithSuiteName:v9];
    }

    v20 = v19;
    v21 = [v19 objectForKey:v10];
    v22 = v21;
    if (v21)
    {
      v43[0] = @"v";
      v43[1] = @"ec";
      v44[0] = v21;
      v44[1] = &off_1006BA880;
      v23 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
      v45 = v23;
      v14 = [NSArray arrayWithObjects:&v45 count:1];
      a5 = 0;
    }

    else
    {
      if (v20)
      {
        a5 = 167000;
      }

      else
      {
        a5 = 167001;
      }

      v40[0] = @"v";
      v40[1] = @"ec";
      v41[0] = &__NSDictionary0__struct;
      v23 = [NSNumber numberWithInteger:a5];
      v41[1] = v23;
      [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
      v33 = v9;
      v24 = v10;
      v25 = v20;
      v27 = v26 = v15;
      v42 = v27;
      v14 = [NSArray arrayWithObjects:&v42 count:1];

      v15 = v26;
      v20 = v25;
      v10 = v24;
      v9 = v33;
    }

    v28 = qword_1006DF780;
    v29 = v28;
    if (v34 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      v30 = *(v35 + 40);
      v31 = *(v35 + 44);
      *buf = 67240448;
      v37 = v30;
      v38 = 1026;
      v39 = v31;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_END, v15, "sud", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
    }

    a1 = v35;
  }

  v32 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:v14 qfSDGTGvqd3Hruzg:a5];
  (*(*(a1 + 32) + 16))();
}

void sub_100026F2C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v11 = a2;
  v9 = a3;
  v10 = a4;
  if (!a5)
  {
    if (v11)
    {
      [*(a1 + 32) encodeObject:v11];
    }

    if (v9)
    {
      [*(a1 + 32) encodeObject:v9];
    }

    if (v10)
    {
      [*(a1 + 32) encodeObject:v10];
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)]);
}

void sub_1000276BC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000276E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100027700(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) lock];
  v4 = *(*(a1 + 48) + 8);
  if (*(v4 + 24))
  {
    v5 = *(a1 + 32);

    [v5 unlock];
  }

  else
  {
    *(v4 + 24) = 1;
    [*(a1 + 32) unlock];
    v6 = qword_1006DF780;
    v7 = v6;
    v8 = *(a1 + 56);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v9 = *(a1 + 64);
      v10 = *(a1 + 68);
      v13[0] = 67240448;
      v13[1] = v9;
      v14 = 1026;
      v15 = v10;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "smf", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v13, 0xEu);
    }

    v11 = *(a1 + 40);
    v12 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:a2];
    (*(v11 + 16))(v11, v12);
  }
}

void sub_100027884(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = v5;
  if (a3)
  {
    v6 = *(*(a1 + 48) + 16);
LABEL_3:
    v6();
    goto LABEL_6;
  }

  if (!v5)
  {
    v6 = *(*(a1 + 48) + 16);
    goto LABEL_3;
  }

  [*(a1 + 32) lock];
  [*(*(*(a1 + 56) + 8) + 40) setObject:v7 atIndexedSubscript:*(a1 + 64)];
  [*(a1 + 32) unlock];
LABEL_6:
  dispatch_group_leave(*(a1 + 40));
}

void sub_100027930(uint64_t a1)
{
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v2 = [[NSMutableArray alloc] initWithArray:*(a1 + 32)];
    [v2 addObject:*(*(*(a1 + 72) + 8) + 40)];
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) jHoy3L8RogTTbjjB] + 440 * *(a1 + 80);
    v5 = *(a1 + 120);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100027A58;
    v9[3] = &unk_10068FFD0;
    v6 = *(a1 + 104);
    v11 = *(a1 + 112);
    v12 = *(a1 + 88);
    v13 = v6;
    v10 = *(a1 + 56);
    v7 = *(a1 + 88);
    v8 = *(a1 + 104);
    [v3 PLMCCRRqEw4moT9R:v4 + 8 UtPlzRffoEpw7Ue1:&v7 SFkZRA5Ek9YzhDRs:v5 TWWnmIjkBlMfHmma:v2 withCompletion:v9];
  }
}

void sub_100027A58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1006DF780;
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 52);
    v9[0] = 67240448;
    v9[1] = v7;
    v10 = 1026;
    v11 = v8;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "smf", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v9, 0xEu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100027E44(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    [v3 lock];
    [*(a1 + 40) setObject:v4 atIndexedSubscript:*(a1 + 56)];

    [*(a1 + 32) unlock];
  }

  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

void sub_100027EB4(uint64_t a1)
{
  [*(a1 + 32) encodeObject:*(a1 + 40)];
  v2 = *(a1 + 80);
  if (v2 < 0 || v2 >= [*(a1 + 48) X5iUjoUzZPsj1b68])
  {
    [*(a1 + 32) encodeInt64:-1 forKey:@"0x07aa"];
    v6 = *(a1 + 72);
    v7 = [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)];
    v8 = *(v6 + 16);

    v8(v6, v7);
  }

  else
  {
    v3 = *(a1 + 56);
    v4 = [*(a1 + 48) jHoy3L8RogTTbjjB] + 440 * *(a1 + 80);
    v5 = *(a1 + 64);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100027FFC;
    v9[3] = &unk_10068F968;
    v10 = *(a1 + 32);
    v11 = *(a1 + 72);
    [v3 jCbmcix0xxhNVOSS:v4 + 8 TWWnmIjkBlMfHmma:v5 withCompletion:v9];
  }
}

uint64_t sub_100027FFC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) encodeInt64:a2 forKey:@"0x07aa"];
  v3 = *(a1 + 40);
  v4 = [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)];
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

void sub_100028434(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = v3;
    v7 = *(a1 + 64);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) queue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000285B0;
    v15[3] = &unk_100690138;
    v11 = *(a1 + 56);
    v16 = v6;
    v17 = v11;
    v18 = *(a1 + 64);
    v19 = *(a1 + 72);
    v20 = *(a1 + 88);
    v12 = v6;
    [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:v7 + 32 i4KDOQicW9Xd5WBz:v8 TWWnmIjkBlMfHmma:v9 completionQueue:v10 withCompletion:v15];
  }

  else
  {
    v13 = *(a1 + 56);
    v14 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:-27809];
    (*(v13 + 16))(v13, v14);
  }
}

void sub_1000285B0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(a1 + 40);
    v8 = [kjAS9HuCdR1m5txL alloc];
    v9 = a3;
LABEL_3:
    v10 = [(kjAS9HuCdR1m5txL *)v8 initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:v9];
    (*(v7 + 16))(v7, v10);

    goto LABEL_12;
  }

  if (!v5)
  {
    v7 = *(a1 + 40);
    v8 = [kjAS9HuCdR1m5txL alloc];
    v9 = -27002;
    goto LABEL_3;
  }

  v11 = os_signpost_id_generate(qword_1006DF780);
  v12 = qword_1006DF780;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(v24[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "sdf", "enableTelemetry=YES", v24, 2u);
  }

  v14 = [*(a1 + 32) GyF0atX3JpCKc9pK];
  v15 = [NSSortDescriptor sortDescriptorWithKey:v6 ascending:*(*(a1 + 48) + 28) != 0];
  v27 = v15;
  v16 = [NSArray arrayWithObjects:&v27 count:1];
  v17 = [v14 sortedArrayUsingDescriptors:v16];

  v18 = qword_1006DF780;
  v19 = v18;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 60);
    v24[0] = 67240448;
    v24[1] = v20;
    v25 = 1026;
    v26 = v21;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, v11, "sdf", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", v24, 0xEu);
  }

  v22 = *(a1 + 40);
  v23 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:v17 qfSDGTGvqd3Hruzg:0];
  (*(v22 + 16))(v22, v23);

LABEL_12:
}

void sub_10002898C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [*(a1 + 32) encodeInt64:objc_msgSend(v3 forKey:{"JmiV9VW8P3Gxz1H7"), @"0x07aa"}];
  }

  v6 = *(a1 + 72);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = [*(a1 + 56) queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100028AD0;
  v10[3] = &unk_10068F8F0;
  v11 = *(a1 + 32);
  v12 = *(a1 + 64);
  [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:v6 + 32 i4KDOQicW9Xd5WBz:v7 TWWnmIjkBlMfHmma:v8 completionQueue:v9 withCompletion:v10];
}

uint64_t sub_100028AD0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) encodeObject:a2];
  v3 = *(a1 + 40);
  v4 = [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)];
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

void sub_100028ED0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5 || a3)
  {
    v13 = *(a1 + 48);
    v14 = [eTBtehykeBvfpeTP hKjCyPlJs74k9vMV:a3];
    (*(v13 + 16))(v13, v14);
  }

  else
  {
    v6 = os_signpost_id_generate(qword_1006DF780);
    v7 = qword_1006DF780;
    v8 = v7;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "csc", "enableTelemetry=YES", buf, 2u);
    }

    v9 = *(a1 + 32);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100029054;
    v15[3] = &unk_100690188;
    v10 = v9;
    v19 = v6;
    v20 = *(a1 + 56);
    v21 = *(a1 + 72);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v16 = v10;
    v17 = v11;
    v18 = v12;
    [v10 f7RoJXIsBwkuxLd1:v5 completionBlock:v15];
  }
}

void sub_100029054(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [*(a1 + 32) L2S3goqpYnHiXTRg:{objc_msgSend(a3, "code")}];
  v6 = qword_1006DF780;
  v7 = v6;
  v8 = *(a1 + 56);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = *(a1 + 64);
    v10 = *(a1 + 68);
    *buf = 67240704;
    v19 = v9;
    v20 = 1026;
    v21 = v10;
    v22 = 1026;
    v23 = v5 != 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "csc", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d,e=%{public,signpost.telemetry:number2}d", buf, 0x14u);
  }

  *(*(a1 + 40) + 8) = v5;
  if (v5)
  {
    v11 = *(a1 + 48);
    v12 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:v5];
    (*(v11 + 16))(v11, v12);
  }

  else
  {
    v13 = [NSNumber numberWithUnsignedInteger:a2];
    v14 = [NSDictionary dictionaryWithObject:v13 forKey:@"cnt"];
    v17 = v14;
    v12 = [NSArray arrayWithObjects:&v17 count:1];

    v15 = *(a1 + 48);
    v16 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:v12 qfSDGTGvqd3Hruzg:0];
    (*(v15 + 16))(v15, v16);
  }
}

uint64_t sub_10002939C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) encodeObject:a2];
  v3 = *(a1 + 40);
  v4 = [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)];
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

void sub_1000297BC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [[NSMutableArray alloc] initWithCapacity:*(*(a1 + 56) + 176)];
  v7 = os_signpost_id_generate(qword_1006DF780);
  v8 = qword_1006DF780;
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "cs", "enableTelemetry=YES", buf, 2u);
  }

  v10 = *(a1 + 56);
  if (*(v10 + 176))
  {
    v11 = 0;
    do
    {
      v12 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:*(*(v10 + 160) + 8 * v11) gsx0MJUoOpcxcozG:*(*(v10 + 168) + 4 * v11)];
      [v6 addObject:v12];

      ++v11;
      v10 = *(a1 + 56);
    }

    while (v11 < *(v10 + 176));
  }

  if (*(a1 + 88) == 2)
  {
    v13 = *(v10 + 180);
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = 100;
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (!a3)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100029A9C;
    v22[3] = &unk_1006901D8;
    v25 = *(a1 + 64);
    v26 = *(a1 + 80);
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v24 = v7;
    v22[4] = v14;
    v23 = *(a1 + 48);
    [v15 pRfmPXmMPeo7rsRf:v5 N3UHg1ij3irF9uUu:v6 QsX3tfdMvsGwvY0F:v13 completionBlock:v22];

    goto LABEL_19;
  }

LABEL_13:
  if (!a3)
  {
    a3 = -27002;
  }

  v16 = qword_1006DF780;
  v17 = v16;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    v18 = *(a1 + 64);
    v19 = *(a1 + 68);
    *buf = 67240704;
    v28 = v18;
    v29 = 1026;
    v30 = v19;
    v31 = 1026;
    v32 = 1;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_END, v7, "cs", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d,e=%{public,signpost.telemetry:number2}d", buf, 0x14u);
  }

  *(*(a1 + 32) + 8) = a3;
  v20 = *(a1 + 48);
  v21 = [eTBtehykeBvfpeTP hKjCyPlJs74k9vMV:a3];
  (*(v20 + 16))(v20, v21);

LABEL_19:
}

void sub_100029A9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 code];
  v7 = qword_1006DF780;
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 60);
    v16[0] = 67240704;
    v16[1] = v10;
    v17 = 1026;
    v18 = v11;
    v19 = 1026;
    v20 = v6 != 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "cs", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d,e=%{public,signpost.telemetry:number2}d", v16, 0x14u);
  }

  *(*(a1 + 32) + 8) = v6;
  v12 = [kjAS9HuCdR1m5txL alloc];
  if (v6)
  {
    v13 = 0;
    v14 = v6;
  }

  else
  {
    v13 = v5;
    v14 = 0;
  }

  v15 = [(kjAS9HuCdR1m5txL *)v12 initWithGyF0atX3JpCKc9pK:v13 qfSDGTGvqd3Hruzg:v14];
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100029DF0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) encodeObject:a2];
  [*(a1 + 32) encodeObject:*(a1 + 40)];
  [*(a1 + 32) encodeInt32:*(a1 + 56) forKey:@"0x0x5bde"];
  v3 = *(a1 + 48);
  v4 = [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)];
  v5 = *(v3 + 16);

  return v5(v3, v4);
}

void sub_10002A1FC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  *(*(a1 + 32) + 8) = a4;
  if (v8 && v7 && !a4)
  {
    v9 = os_signpost_id_generate(qword_1006DF780);
    v10 = qword_1006DF780;
    v11 = v10;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "sl", "enableTelemetry=YES", buf, 2u);
    }

    if (*(*(a1 + 48) + 4) < 2u)
    {
      goto LABEL_10;
    }

    v12 = [v7 isEqualToString:@":biomeview:"];
    v13 = [NSURL URLWithString:v7];
    v14 = [v13 scheme];
    v15 = [v14 isEqualToString:@"biome"];

    if ((v12 & 1) != 0 || v15)
    {
      v16 = objc_opt_new();
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10002A4D8;
      v30[3] = &unk_100690250;
      v32 = v9;
      v33 = *(a1 + 56);
      v34 = *(a1 + 72);
      v35 = 0;
      v23 = *(a1 + 48);
      v31 = *(a1 + 40);
      [v16 zjSRqCgYhfa1wFgr:v8 nN3snF4sAp0Cxy6t:v7 wRPFKB7h3xbveJFz:v23 + 24 tNXuX79TcZPxzyjn:v30];
      v20 = v31;
    }

    else
    {
LABEL_10:
      v16 = objc_opt_new();
      v17 = [YNHF5E1zsUQomY0e e5e78c18a4be83e1:*(a1 + 48) spData:a1 + 56];
      if (v17 >= 3500)
      {
        v18 = 3500;
      }

      else
      {
        v18 = v17;
      }

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10002A638;
      v24[3] = &unk_100690250;
      v26 = v9;
      v27 = *(a1 + 56);
      v28 = *(a1 + 72);
      v29 = 0;
      v19 = *(a1 + 48);
      v25 = *(a1 + 40);
      [v16 zjSRqCgYhfa1wFgr:v8 gqhuZKS8Xs6ugnFL:v7 wRPFKB7h3xbveJFz:v19 + 24 efc6f2da04fb733f:v18 x1IqrF8Flbgd3Jhk:v24];
      v20 = v25;
    }
  }

  else
  {
    v21 = *(a1 + 40);
    v22 = [eTBtehykeBvfpeTP hKjCyPlJs74k9vMV:a4];
    (*(v21 + 16))(v21, v22);
  }
}

void sub_10002A4D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = qword_1006DF780;
  v7 = v6;
  v8 = *(a1 + 40);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 52);
    v11 = *(a1 + 72) != 0;
    v16[0] = 67240704;
    v16[1] = v9;
    v17 = 1026;
    v18 = v10;
    v19 = 1026;
    v20 = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "sl", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d,e=%{public,signpost.telemetry:number2}d", v16, 0x14u);
  }

  v12 = *(a1 + 32);
  v13 = [kjAS9HuCdR1m5txL alloc];
  v14 = [v5 GyF0atX3JpCKc9pK];
  v15 = [(kjAS9HuCdR1m5txL *)v13 initWithGyF0atX3JpCKc9pK:v14 qfSDGTGvqd3Hruzg:a3];
  (*(v12 + 16))(v12, v15);
}

void sub_10002A638(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = qword_1006DF780;
  v7 = v6;
  v8 = *(a1 + 40);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 52);
    v11 = *(a1 + 72) != 0;
    v16[0] = 67240704;
    v16[1] = v9;
    v17 = 1026;
    v18 = v10;
    v19 = 1026;
    v20 = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "sl", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d,e=%{public,signpost.telemetry:number2}d", v16, 0x14u);
  }

  v12 = *(a1 + 32);
  v13 = [kjAS9HuCdR1m5txL alloc];
  v14 = [v5 GyF0atX3JpCKc9pK];
  v15 = [(kjAS9HuCdR1m5txL *)v13 initWithGyF0atX3JpCKc9pK:v14 qfSDGTGvqd3Hruzg:a3];
  (*(v12 + 16))(v12, v15);
}

void sub_10002A8EC(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  [*(a1 + 32) encodeObject:a3];
  [*(a1 + 32) encodeObject:v15];
  [*(a1 + 32) encodeInt32:*(*(a1 + 48) + 304) forKey:@"0xd730"];
  v5 = *(a1 + 48);
  if (*(v5 + 304))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [eTBtehykeBvfpeTP rsNB9HkZVEH0l6fT:*(*(v5 + 296) + v6 + 16) gsx0MJUoOpcxcozG:*(*(v5 + 296) + v6 + 8)];
      [*(a1 + 32) encodeObject:v8];
      v9 = *(a1 + 32);
      v10 = *(*(*(a1 + 48) + 296) + v6 + 4);
      v11 = [NSString stringWithFormat:@"%d 0x1f38", v7];
      [v9 encodeInt32:v10 forKey:v11];

      v12 = *(a1 + 32);
      v13 = *(*(*(a1 + 48) + 296) + v6);
      v14 = [NSString stringWithFormat:@"%d 0x91f8", v7];
      [v12 encodeInt32:v13 forKey:v14];

      ++v7;
      v5 = *(a1 + 48);
      v6 += 24;
    }

    while (v7 < *(v5 + 304));
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)]);
}

void sub_10002B2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13)
{
  _Block_object_dispose((v14 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_10002B348(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (v8 && v7 && !a4)
  {
    v9 = (a1 + 32);
    [*(a1 + 32) lock];
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
  }

  else
  {
    v10 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_1005938F4(a1, v7, v10);
    }

    v9 = (a1 + 32);
    [*(a1 + 32) lock];
    *(*(*(a1 + 56) + 8) + 24) = a4;
  }

  [*v9 unlock];
  dispatch_group_leave(*(a1 + 48));
}

void sub_10002B6B4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = qword_1006DF780;
    v7 = v6;
    v8 = *(a1 + 72);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v9 = *(a1 + 80);
      v10 = *(a1 + 84);
      *buf = 67240448;
      v37 = v9;
      v38 = 1026;
      v39 = v10;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "wp_1", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
    }

    v11 = qword_1006DF780;
    v12 = v11;
    v13 = *(a1 + 104);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v14 = *(a1 + 80);
      v15 = *(a1 + 84);
      *buf = 67240448;
      v37 = v14;
      v38 = 1026;
      v39 = v15;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v13, "wp", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
    }

    v16 = *(a1 + 56);
    v17 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:a3];
    (*(v16 + 16))(v16, v17);
  }

  else
  {
    v18 = *(a1 + 112);
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v21 = [*(a1 + 48) queue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10002B984;
    v27[3] = &unk_100690340;
    v31 = *(a1 + 72);
    v32 = *(a1 + 80);
    v22 = *(a1 + 104);
    v33 = *(a1 + 96);
    v34 = v22;
    v26 = *(a1 + 56);
    v23 = v26;
    v30 = v26;
    v24 = v5;
    v25 = *(a1 + 48);
    v28 = v24;
    v29 = v25;
    v35 = *(a1 + 112);
    [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:v18 + 8 i4KDOQicW9Xd5WBz:v19 TWWnmIjkBlMfHmma:v20 completionQueue:v21 withCompletion:v27];

    v17 = v30;
  }
}

void sub_10002B984(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = qword_1006DF780;
  v7 = v6;
  v8 = *(a1 + 64);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = *(a1 + 72);
    v10 = *(a1 + 76);
    *buf = 67240448;
    v48 = v9;
    v49 = 1026;
    v50 = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "wp_1", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
  }

  if (a3)
  {
    v11 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100593998(a1, v11);
    }

    v12 = qword_1006DF780;
    v13 = v12;
    v14 = *(a1 + 96);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      v15 = *(a1 + 72);
      v16 = *(a1 + 76);
      *buf = 67240448;
      v48 = v15;
      v49 = 1026;
      v50 = v16;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v14, "wp", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
    }

    v17 = *(a1 + 48);
    v18 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:*(*(*(a1 + 56) + 8) + 24)];
    (*(v17 + 16))(v17, v18);
  }

  else
  {
    v19 = os_signpost_id_generate(qword_1006DF780);
    v20 = qword_1006DF780;
    v21 = v20;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "wp_2", "enableTelemetry=YES", buf, 2u);
    }

    v22 = [VHJG14dpou8WUEOf alloc];
    v23 = *(a1 + 32);
    v24 = [*(a1 + 40) queue];
    v25 = [(VHJG14dpou8WUEOf *)v22 initWithZKQesNL3BCNYUjZw:v23 withQueue:v24];

    if (v25)
    {
      v26 = *(a1 + 104);
      v27 = *v26;
      v28 = *(v26 + 40);
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10002BFEC;
      v41[3] = &unk_100690318;
      v29 = *(a1 + 88);
      v43 = *(a1 + 96);
      v44 = *(a1 + 72);
      v45 = v29;
      v46 = v19;
      v42 = *(a1 + 48);
      [(VHJG14dpou8WUEOf *)v25 Dp2N5iuaONVuK1T4:v5 JMJGqFLtbMZn4EGN:v27 QsX3tfdMvsGwvY0F:v28 withCompletion:v41];
      v30 = v42;
    }

    else
    {
      v31 = qword_1006DF780;
      v32 = v31;
      v33 = *(a1 + 96);
      if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        v34 = *(a1 + 72);
        v35 = *(a1 + 76);
        *buf = 67240448;
        v48 = v34;
        v49 = 1026;
        v50 = v35;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_END, v33, "wp", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
      }

      v36 = qword_1006DF780;
      v37 = v36;
      if (v19 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v36))
      {
        v38 = *(a1 + 72);
        v39 = *(a1 + 76);
        *buf = 67240448;
        v48 = v38;
        v49 = 1026;
        v50 = v39;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_END, v19, "wp_2", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
      }

      v40 = *(a1 + 48);
      v30 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:170003];
      (*(v40 + 16))(v40, v30);
    }
  }
}

void sub_10002BDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int buf, int a20, uint64_t a21)
{
  v28 = v25;

  if (a2 == 1)
  {
    v31 = objc_begin_catch(a1);
    v32 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
    {
      sub_100593A2C(v31, v32);
    }

    v33 = *v26;
    v34 = v33;
    v35 = *(v22 + 96);
    if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      v36 = *(v22 + 72);
      v37 = *(v22 + 76);
      buf = 67240448;
      a20 = v36;
      LOWORD(a21) = 1026;
      *(&a21 + 2) = v37;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_END, v35, "wp", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", &buf, 0xEu);
    }

    v38 = *v26;
    v39 = v38;
    if (v27 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v38))
    {
      v40 = *(v22 + 72);
      v41 = *(v22 + 76);
      buf = 67240448;
      a20 = v40;
      LOWORD(a21) = 1026;
      *(&a21 + 2) = v41;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_INTERVAL_END, v23, "wp_2", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", &buf, 0xEu);
    }

    v42 = *(v22 + 48);
    v43 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:0 qfSDGTGvqd3Hruzg:170001];
    (*(v42 + 16))(v42, v43);

    objc_end_catch();
    JUMPOUT(0x10002BD9CLL);
  }

  _Unwind_Resume(a1);
}

void sub_10002BFEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1006DF780;
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 52);
    v16 = 67240448;
    v17 = v7;
    v18 = 1026;
    v19 = v8;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "wp", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", &v16, 0xEu);
  }

  v9 = qword_1006DF780;
  v10 = v9;
  v11 = *(a1 + 72);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = *(a1 + 48);
    v13 = *(a1 + 52);
    v16 = 67240448;
    v17 = v12;
    v18 = 1026;
    v19 = v13;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v11, "wp_2", "p=%{public,signpost.telemetry:number1}d,i=%{public,signpost.telemetry:number2}d", &v16, 0xEu);
  }

  v14 = *(a1 + 32);
  v15 = [[kjAS9HuCdR1m5txL alloc] initWithGyF0atX3JpCKc9pK:v3 qfSDGTGvqd3Hruzg:0];
  (*(v14 + 16))(v14, v15);
}

void sub_10002C3CC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) encodeObject:a2];
  v3 = *(a1 + 72);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002C4BC;
  v7[3] = &unk_1006903B8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  [v4 gatherMapKeys:v3 i4KDOQicW9Xd5WBz:v5 TWWnmIjkBlMfHmma:v6 withCompletion:v7];
}

void sub_10002C4BC(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002C588;
  v4[3] = &unk_100690390;
  v5 = *(a1 + 32);
  [a2 enumerateKeysAndObjectsUsingBlock:v4];
  (*(*(a1 + 40) + 16))(*(a1 + 40), [Yp00msaYdVlZesvU cv2QAcQ2CDdiHuN6:*(a1 + 32)]);
}

void sub_10002C588(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(a1 + 32) encodeObject:v6];
  [*(a1 + 32) encodeObject:v5];
}

uint64_t sub_10002C89C(uint64_t a1)
{
  qword_1006D7CE0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10002D0A0(id a1)
{
  qword_1006D7CF0 = objc_opt_new();

  _objc_release_x1();
}

void sub_10002D7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002D7F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002D810(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100593BB4(v7, v6);
    }
  }

  else
  {
    v8 = objc_alloc_init(NSMutableArray);
    v9 = [v5 authenticationCertificateSignatures];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002D944;
    v14[3] = &unk_100690428;
    v10 = v8;
    v15 = v10;
    [v9 enumerateObjectsUsingBlock:v14];

    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
    v13 = v10;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10002D944(uint64_t a1, void *a2)
{
  v3 = [a2 serverVerifiableEncoding];
  v4 = [v3 dataUsingEncoding:4];

  if (v4)
  {
    [*(a1 + 32) addObject:v4];
    v5 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "adding IDS data", v6, 2u);
    }
  }

  else if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_100593C5C();
  }
}

id sub_10002E0DC(uint64_t a1)
{
  v4[0] = @"errorCode";
  v1 = [NSNumber numberWithInt:*(a1 + 32)];
  v4[1] = @"type";
  v5[0] = v1;
  v5[1] = &off_1006BA898;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

void sub_10002EA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_10002EA48(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

id sub_10002EB04(uint64_t a1)
{
  v4[0] = @"errorCode";
  v1 = [NSNumber numberWithInt:*(a1 + 32)];
  v4[1] = @"type";
  v5[0] = v1;
  v5[1] = &off_1006BA8B0;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

void sub_10002FBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&a70, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose((v70 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_10002FC70(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 8);
  if (*(v3 + 56))
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 40);
      if (v5)
      {
        v6 = *(v5 + 8 * v4);
        if (v6)
        {
          free(v6);
          *(*(*(*(a1 + 40) + 8) + 40) + 8 * v4) = 0;
          v2 = *(a1 + 40);
        }
      }

      ++v4;
      v3 = *(v2 + 8);
    }

    while (v4 < *(v3 + 56));
  }

  free(*(v3 + 40));
  *(*(*(a1 + 40) + 8) + 40) = 0;
  free(*(*(*(a1 + 40) + 8) + 48));
  [qword_1006DF768 resumePrecomputationsWithCompletionHandler:&stru_1006904D8];
  *(*(*(a1 + 48) + 8) + 24) = 0;
  *(*(*(a1 + 56) + 8) + 24) = 0;
  v7 = *(*(*(a1 + 64) + 8) + 24);
  if (v7)
  {
    free(v7);
  }

  v8 = *(*(*(a1 + 72) + 8) + 24);
  if (v8)
  {
    free(v8);
  }

  v9 = *(*(*(a1 + 80) + 8) + 24);
  if (v9)
  {
    if (*(v9 + 152))
    {
      CFRelease(*(v9 + 152));
      *(*(*(*(a1 + 80) + 8) + 24) + 152) = 0;
      v9 = *(*(*(a1 + 80) + 8) + 24);
    }

    if (*(v9 + 160) && *(v9 + 168))
    {
      free(*(v9 + 160));
      *(*(*(*(a1 + 80) + 8) + 24) + 160) = 0;
      *(*(*(*(a1 + 80) + 8) + 24) + 168) = 0;
      v9 = *(*(*(a1 + 80) + 8) + 24);
    }

    v10 = *(v9 + 192);
    if (v10)
    {

      v9 = *(*(*(a1 + 80) + 8) + 24);
    }

    free(v9);
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  v11 = qword_1006DF778;
  v12 = v11;
  v13 = *(a1 + 88);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v13, "pub_3", "", buf, 2u);
  }

  if ((*(a1 + 96) & 8) != 0)
  {
    v15 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Skipping bindings due to bindingsCaptureDisabled flag", buf, 2u);
    }
  }

  else
  {
    v14 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002FF48;
    block[3] = &unk_100690500;
    v17 = *(a1 + 32);
    dispatch_async(v14, block);
  }
}

uint64_t sub_10002FF5C(void *a1, int a2)
{
  if (a2)
  {
    AnalyticsSendEventLazy();
    v4 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v10 = a2;
      v11 = 2048;
      v12 = a2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error %d (0x%lx)", buf, 0x12u);
    }

    v5 = [NSString stringWithUTF8String:off_1006C9430];
    v6 = [NSError errorWithDomain:v5 code:a2 userInfo:0];

    (*(a1[13] + 16))();
  }

  else
  {
    v6 = [[NSData alloc] initWithBytes:*(*(a1[15] + 8) + 24) length:*(*(a1[16] + 8) + 24)];
    v7 = [[NSData alloc] initWithBytes:*(*(a1[17] + 8) + 24) length:*(*(a1[18] + 8) + 24)];
    (*(a1[13] + 16))();
  }

  return (*(a1[14] + 16))();
}

id sub_10003017C(uint64_t a1)
{
  v4[0] = @"errorCode";
  v1 = [NSNumber numberWithInt:*(a1 + 32)];
  v4[1] = @"type";
  v5[0] = v1;
  v5[1] = &off_1006BA8C8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

id sub_100030244(uint64_t a1)
{
  v4[0] = @"errorCode";
  v1 = [NSNumber numberWithUnsignedInt:*(a1 + 32)];
  v4[1] = @"type";
  v5[0] = v1;
  v5[1] = &off_1006BA8C8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

uint64_t sub_1000313F4(int a1)
{
  v2 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_100594030(a1, v2);
  }

  return AnalyticsSendEventLazy();
}

id sub_1000314A0(uint64_t a1)
{
  v4[0] = @"errorCode";
  v1 = [NSNumber numberWithUnsignedInt:*(a1 + 32)];
  v4[1] = @"type";
  v5[0] = v1;
  v5[1] = &off_1006BA8E0;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

void sub_100031CA0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_1000323A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000323BC(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 40) + 8) + 40) setJmiV9VW8P3Gxz1H7:a2];
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void sub_100032414(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100032504;
  v9[3] = &unk_1006905B8;
  v10 = v3;
  v11 = *(a1 + 48);
  v13 = *(a1 + 72);
  v7 = *(a1 + 96);
  v14 = *(a1 + 88);
  v15 = v7;
  v12 = *(a1 + 56);
  v8 = v3;
  [v5 jCbmcix0xxhNVOSS:v4 TWWnmIjkBlMfHmma:v6 withCompletion:v9];
}

uint64_t sub_100032504(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setJmiV9VW8P3Gxz1H7:a2];
  v3 = *(a1 + 40);
  v7 = *(a1 + 56);
  v4 = *(a1 + 80);
  v8 = *(a1 + 72);
  [v3 endSignpost:&v7 signpostId:v4];
  v5 = *(a1 + 32);
  return (*(*(a1 + 48) + 16))();
}

void sub_100032628(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [NSNumber numberWithInteger:a3];
  (*(v4 + 16))(v4, v5, v6);
}

void sub_100032B70(uint64_t a1)
{
  free(*a1);
  free(*(a1 + 8));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void sub_100032BA8(void **a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v70 = 0;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x2810000000;
  v68[3] = &unk_1005A5D0D;
  v69 = 0;
  v8 = os_signpost_id_generate(qword_1006DF780);
  v9 = qword_1006DF780;
  v10 = v9;
  spid = v8;
  v45 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "psla", "enableTelemetry=YES", buf, 2u);
  }

  qsort(a1[1], *a1, 0x1B8uLL, sub_100033254);
  v11 = [eTBtehykeBvfpeTP alloc];
  *buf = *a4;
  *&buf[16] = *(a4 + 2);
  v51 = [(eTBtehykeBvfpeTP *)v11 initWithdEyUJuqYjUufZYGN:a2 UtPlzRffoEpw7Ue1:buf CYjHC6NGGdOD33W9:a3 g8citQiyynNCr9c4:a1];
  v12 = os_signpost_id_generate(qword_1006DF780);
  v13 = qword_1006DF780;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "lcpwf", "enableTelemetry=YES", buf, 2u);
  }

  v15 = *a1;
  if (v15)
  {
    v16 = 0;
    v17 = 8;
    do
    {
      v18 = a1[1];
      if (*&v18[v17] == 4)
      {
        v19 = +[hjIvoYfuuA5g1aoN sharedInstance];
        [v19 x7PkBasAKbApbiZS:&v18[v17]];

        v15 = *a1;
      }

      ++v16;
      v17 += 440;
    }

    while (v16 < v15);
  }

  v20 = qword_1006DF780;
  v21 = v20;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    v22 = *a4;
    *buf = 67240448;
    *&buf[4] = v22;
    *&buf[8] = 1026;
    *&buf[10] = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v12, "lcpwf", "p=%{public,signpost.telemetry:number1}d, i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
  }

  v23 = malloc_type_malloc(0x18uLL, 0x103004013764637uLL);
  v24 = *(a1 + 4);
  v23[4] = v24;
  *v23 = malloc_type_malloc(16 * v24, 0x1000040D9A13B51uLL);
  *(v23 + 1) = malloc_type_malloc(4 * v24, 0x100004052888210uLL);
  v47 = v23;
  v23[5] = 0;
  context = objc_autoreleasePoolPush();
  v25 = dispatch_group_create();
  if (*a1)
  {
    v26 = 0;
    v27 = 0;
    while (1)
    {
      v28 = *a4;
      v67 = *(a4 + 2);
      v29 = [(eTBtehykeBvfpeTP *)v51 i4KDOQicW9Xd5WBz];
      v30 = [v29 supports:*(a1[1] + v26)];

      if ((v30 & 1) == 0)
      {
        break;
      }

      dispatch_group_enter(v25);
      v31 = *(a1[1] + v26);
      v32 = +[NSDate date];
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_100033264;
      v61[3] = &unk_100690630;
      v33 = v32;
      v62 = v33;
      v34 = v51;
      v63 = v34;
      v65 = a1;
      v66 = v27;
      v64 = v25;
      v35 = objc_retainBlock(v61);
      v36 = a1[1] + v26;
      v38 = *(v36 + 2);
      v37 = v36 + 8;
      if (v38 == 4 || *(a1[1] + v26 + 24) <= 0)
      {
        v40 = *(a1 + 12);
        *buf = v28;
        *&buf[4] = v31;
        *&buf[8] = v67;
        [(eTBtehykeBvfpeTP *)v34 PLMCCRRqEw4moT9R:v37 UtPlzRffoEpw7Ue1:buf SFkZRA5Ek9YzhDRs:v40 TWWnmIjkBlMfHmma:&__NSArray0__struct withCompletion:v35];
      }

      else
      {
        v39 = *(a1 + 12);
        *buf = v28;
        *&buf[4] = v31;
        *&buf[8] = v67;
        [(eTBtehykeBvfpeTP *)v34 yVPDC4E5nNW5DSMa:v37 UtPlzRffoEpw7Ue1:buf SFkZRA5Ek9YzhDRs:v39 TWWnmIjkBlMfHmma:&__NSArray0__struct withCompletion:v35];
      }

      ++v27;
      v26 += 440;
      if (v27 >= *a1)
      {
        goto LABEL_23;
      }
    }

    v70 = -27807;
    v42 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
    {
      sub_1005941EC(v42);
    }

    v43 = qword_1006DF780;
    v44 = v43;
    if (v45 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
    {
      *buf = 67240448;
      *&buf[4] = v28;
      *&buf[8] = 1026;
      *&buf[10] = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, spid, "psla", "p=%{public,signpost.telemetry:number1}d, i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
    }

    sub_1002C9B10();
  }

  else
  {
LABEL_23:
    v41 = [(eTBtehykeBvfpeTP *)v51 completionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003333C;
    block[3] = &unk_1006906A8;
    v55 = v47;
    v56 = a1;
    v53 = v51;
    v54 = v68;
    v57 = spid;
    v58 = *a4;
    v59 = *(a4 + 2);
    v60 = a5;
    dispatch_group_notify(v25, v41, block);
  }

  objc_autoreleasePoolPop(context);
  _Block_object_dispose(v68, 8);
}

void sub_100033264(uint64_t a1, void *a2)
{
  v8 = a2;
  [*(a1 + 32) timeIntervalSinceNow];
  v4 = v3;
  if (v8)
  {
    v5 = v8;
  }

  else
  {
    v5 = +[kjAS9HuCdR1m5txL cR9LfsxC1Nz4IZKu];
  }

  v6 = v5;
  [v5 setYOtBxuHAYKqZrNQN:(v4 * -1000.0)];
  v7 = [*(a1 + 40) i4KDOQicW9Xd5WBz];
  [v7 set:v6 at:*(*(*(a1 + 56) + 8) + 440 * *(a1 + 64))];

  dispatch_group_leave(*(a1 + 48));
}

void sub_10003333C(uint64_t a1)
{
  v2 = dispatch_group_create();
  if (*(*(a1 + 48) + 16))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      dispatch_group_enter(v2);
      v5 = *(*(a1 + 56) + 24);
      v6 = *(v5 + v3);
      v7 = *(a1 + 32);
      v8 = [v7 i4KDOQicW9Xd5WBz];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100033514;
      v20[3] = &unk_100690658;
      v22 = *(a1 + 40);
      v23 = v6;
      v21 = v2;
      [v7 KKbGrSwDukIWFRjI:v5 + v3 i4KDOQicW9Xd5WBz:v8 TWWnmIjkBlMfHmma:&__NSArray0__struct withCompletion:v20];

      ++v4;
      v3 += 160;
    }

    while (v4 < *(*(a1 + 48) + 16));
  }

  v9 = [*(a1 + 32) completionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000335E0;
  block[3] = &unk_100690680;
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v10 = *(a1 + 48);
  v11 = *(a1 + 96);
  v16 = *(a1 + 88);
  v17 = v10;
  v18 = v11;
  v19 = 0;
  v13 = *(a1 + 32);
  dispatch_group_notify(v2, v9, block);
}

void sub_100033514(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 40) + 8);
  v6 = a3;
  v7 = a2;
  os_unfair_lock_lock(v5 + 8);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = [v7 longLongValue];

  v11 = [v6 intValue];
  v12 = *(v8 + 20);
  if (v12 < *(v8 + 16))
  {
    v13 = *(v8 + 8);
    v14 = *v8 + 16 * v12;
    *v14 = v10;
    *(v14 + 8) = v11;
    *(v13 + 4 * v12) = v9;
    ++*(v8 + 20);
  }

  os_unfair_lock_unlock((*(*(a1 + 40) + 8) + 32));
  v15 = *(a1 + 32);

  dispatch_group_leave(v15);
}

void sub_1000335E0(uint64_t a1)
{
  v2 = qword_1006DF780;
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = *(a1 + 48);
    *buf = 67240448;
    v9 = v5;
    v10 = 1026;
    v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "psla", "p=%{public,signpost.telemetry:number1}d, i=%{public,signpost.telemetry:number2}d", buf, 0xEu);
  }

  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  sub_1002C9B10();
}

void sub_100033728(id a1)
{
  qword_1006D7D08 = dispatch_queue_create("smoothNotifyQueue", 0);

  _objc_release_x1();
}

void sub_10003391C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100033970(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_18;
  }

  v5 = v13;
  *(*(*(a1 + 56) + 8) + 24) = [v5 qfSDGTGvqd3Hruzg];
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    if (*(a1 + 72) == 1)
    {
      v6 = *(a1 + 40);
      v7 = 0;
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    goto LABEL_17;
  }

  v8 = [NSExpression expressionWithFormat:*(a1 + 32)];
  v9 = [v5 GyF0atX3JpCKc9pK];
  v7 = [v8 expressionValueWithObject:v9 context:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v7 stringValue];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;

      v7 = v6;
      goto LABEL_17;
    }

    if (*(a1 + 72) != 1)
    {
      v11 = *(*(a1 + 64) + 28);
      if (v11 >= 0x3E7)
      {
        v11 = 999;
      }

      *(*(*(a1 + 56) + 8) + 24) = v11 + 16000;

      v6 = 0;
      goto LABEL_17;
    }

    v10 = *(a1 + 40);
  }

  v6 = v10;

LABEL_17:
  v12 = *(*(*(a1 + 56) + 8) + 24);
  (*(*(a1 + 48) + 16))();

LABEL_18:
}

void sub_100033BD0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  objc_begin_catch(a1);
  if (a2 == 2)
  {
    if (*(v10 + 72) == 1)
    {
      v16 = *(v10 + 40);
    }

    else
    {
      *(*(*(v10 + 56) + 8) + 24) = 128;
    }

    objc_end_catch();
    JUMPOUT(0x100033AD0);
  }

  JUMPOUT(0x100033B70);
}

void sub_100033E04(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100033FB0;
    v17[3] = &unk_100690740;
    v9 = *(a1 + 64);
    v10 = *(a1 + 56);
    v11 = v5;
    v12 = *(a1 + 72);
    v18 = v11;
    v21 = v12;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    *&v15 = *(a1 + 48);
    *(&v15 + 1) = v10;
    *&v16 = v13;
    *(&v16 + 1) = v14;
    v19 = v16;
    v20 = v15;
    [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:v9 i4KDOQicW9Xd5WBz:v6 TWWnmIjkBlMfHmma:v7 completionQueue:v8 withCompletion:v17];
  }
}

void sub_100033FB0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(a1 + 32);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100034100;
    v11[3] = &unk_100690718;
    v10 = *(a1 + 72);
    v14 = *(a1 + 64);
    v12 = *(a1 + 32);
    v13 = v5;
    [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:v10 i4KDOQicW9Xd5WBz:v7 TWWnmIjkBlMfHmma:v8 completionQueue:v9 withCompletion:v11];
  }
}

void sub_100034100(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[5];
  v5 = a1[4];
  v6 = v3;
  (*(a1[6] + 16))();
}

void sub_1000342F8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100034428;
    v10[3] = &unk_100690790;
    v9 = *(a1 + 64);
    v12 = *(a1 + 56);
    v11 = v5;
    [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:v9 i4KDOQicW9Xd5WBz:v6 TWWnmIjkBlMfHmma:v7 completionQueue:v8 withCompletion:v10];
  }
}

void sub_100034428(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  (*(*(a1 + 40) + 16))();
}

void sub_100034B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  _Block_object_dispose((v17 - 200), 8);

  _Block_object_dispose((v17 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100034C84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100034C9C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (!v5 || a3)
  {
    [v6 lock];
    v7 = *(*(a1 + 72) + 8);
    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      if (!a3)
      {
        v8 = qword_1006DF770;
        if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
        {
          sub_100594244(v8);
        }
      }

      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    [v6 lock];
    [*(*(*(a1 + 64) + 8) + 40) setObject:v5 forKeyedSubscript:*(a1 + 40)];
  }

  [*(a1 + 32) unlock];
  dispatch_group_leave(*(a1 + 48));
}

void sub_100034D84(void *a1)
{
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v1 = a1[4];
    v2 = [Yp00msaYdVlZesvU stringByReplacing:*(*(a1[6] + 8) + 40) withDict:*(*(a1[7] + 8) + 40)];
    (*(v1 + 16))(v1);
  }
}

void sub_100034EE4(void *a1, int a2)
{
  v5 = v4;

  objc_begin_catch(a1);
  if (a2 == 2)
  {
    *v2 = 134;
    objc_end_catch();
    JUMPOUT(0x100034EBCLL);
  }

  objc_exception_rethrow();
}

void sub_100034F34(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1000350AC(uint64_t a1, void *a2)
{
  v15 = 0;
  v3 = a2;
  v4 = *(a1 + 56);
  if ((*v4 - 1) > 1)
  {
    v10 = [Yp00msaYdVlZesvU eJSthhES04gLkDjz:*(a1 + 56) GyF0atX3JpCKc9pK:v3 predicateFormat:0 eZh1LWn1FH2uQtPX:&v15];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = +[Yp00msaYdVlZesvU notificationQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100035238;
    v11[3] = &unk_100690870;
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v13 = v8;
    v14 = v9;
    v12 = v3;
    [Yp00msaYdVlZesvU yv5QRLoFvJ66jYJS:v4 + 4 i4KDOQicW9Xd5WBz:v5 TWWnmIjkBlMfHmma:v6 completionQueue:v7 withCompletion:v11];

    v10 = v13;
  }
}

void sub_100035238(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = a3;
  if (!v5 || a3)
  {
    if (!a3)
    {
      v7 = qword_1006DF770;
      if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
      {
        sub_100594288(v7);
      }

      v8 = -27002;
    }

    (*(a1[5] + 16))();
  }

  else
  {
    v6 = [Yp00msaYdVlZesvU eJSthhES04gLkDjz:a1[6] GyF0atX3JpCKc9pK:a1[4] predicateFormat:v5 eZh1LWn1FH2uQtPX:&v8];
    (*(a1[5] + 16))();
  }
}

void sub_100035698(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    *v2 = 134;
    objc_end_catch();

    JUMPOUT(0x1000355A4);
  }

  objc_exception_rethrow();
}

void sub_100035744(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

uint64_t sub_100035854(int a1, unsigned int a2, int a3)
{
  v5 = a3 == 2;
  if ((a2 & 4) != 0 && !a3)
  {
    v5 = MKBGetDeviceLockState() == 1;
  }

  if (a2)
  {
    v6 = 1;
  }

  else
  {
    v6 = a1 & (a2 >> 1);
  }

  if ((a2 & 8) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = (a1 ^ 1) & (a2 >> 4);
  }

  if (v6 & v7)
  {
    return 3;
  }

  v8 = (a2 & 4) != 0 && v5;
  v9 = v7 | v6 ^ 1;
  if ((v9 & 1) == 0 && v8 == 1)
  {
    return 3;
  }

  v11 = v6 | v7 | v8;
  if ((v9 | v8))
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (v11)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

void sub_100035EEC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;
  v10 = a3;
  v11 = v10;
  if (a6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v21 = 0;
    v22 = 0;
    sub_10043FA74([v10 bytes], objc_msgSend(v10, "length"), &v22);
    v13 = v12;
    sub_10043FA74([v9 bytes], objc_msgSend(v9, "length"), &v21);
    if (!(v13 | v14) && v22 && v21)
    {
      v15 = [NSData alloc];
      v16 = [v15 initWithBytes:v22 length:{objc_msgSend(v11, "length")}];
      v17 = [NSData alloc];
      v18 = [v17 initWithBytes:v21 length:{objc_msgSend(v9, "length")}];
      v19 = 0;
    }

    else
    {
      v20 = [NSString stringWithUTF8String:off_1006C9438, v21];
      v19 = [NSError errorWithDomain:v20 code:-27827 userInfo:0];

      v18 = 0;
      v16 = 0;
    }

    free(v22);
    free(v21);
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1000362D8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_1005942CC();
  }
}

void sub_100036380(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_100594334();
  }
}

void sub_100036428(id a1, int64_t a2, NSError *a3)
{
  v3 = a3;
  if (v3 && os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_10059439C();
  }
}

void sub_100036638(id a1, int64_t a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100594404(v4);
    }
  }
}

void sub_10003698C(id a1, int64_t a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100594494(v4);
    }
  }
}

void sub_100036C24(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100036F28(id a1)
{
  v4[0] = @"Model56902430i";
  v4[1] = @"Store101288420";
  v5[0] = @"config_YTQhA";
  v5[1] = @"config_WNFwQ";
  v4[2] = @"Store103115069";
  v4[3] = @"Store105387691";
  v5[2] = @"config_JotNU";
  v5[3] = @"config_ZBCBa";
  v4[4] = @"Store151595329";
  v5[4] = @"config_WzTtA";
  v1 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:5];
  v2 = [[ASCoreDataManager alloc] initWithStores:v1 options:0];
  v3 = qword_1006D7D10;
  qword_1006D7D10 = v2;
}

void sub_100037144(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_100037238(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100037B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a45, 8);

  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_100037CB8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 code] == 259 || objc_msgSend(v7, "code") == 26)
    {
      *(*(a1[5] + 8) + 24) = 1;
      if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
      {
        sub_100594768();
      }

      v8 = a1[4];
      v9 = [v5 URL];
      [v8 removeStoreWithURL:v9 error:0];
    }

    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_1005947A4();
    }

    *(*(a1[6] + 8) + 24) = 0;
  }
}

void sub_10003851C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

void sub_10003868C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 code] == 259 || objc_msgSend(v5, "code") == 26)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
      {
        sub_100594768();
      }
    }

    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_1005947A4();
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_100039188(uint64_t a1)
{
  v2 = dispatch_time(0, 15000000000);
  v3 = dispatch_get_global_queue(9, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039268;
  block[3] = &unk_100690A58;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_after(v2, v3, block);
}

void sub_100039268(void *a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = *(a1[4] + 24);
  v21 = 0;
  v4 = [v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:4 error:&v21];
  v15 = v21;
  if (v15)
  {
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
    {
      sub_100594990();
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v24 count:16];
    v14 = v4;
    v7 = 0;
    if (v6)
    {
      v8 = *v18;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v10 lastPathComponent];
          if ([v11 containsString:a1[5]] && (objc_msgSend(v11, "containsString:", a1[6]) & 1) == 0)
          {
            v16 = v7;
            [v2 removeItemAtURL:v10 error:&v16];
            v12 = v16;

            if (v12)
            {
              v13 = qword_1006DF770;
              if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v23 = v12;
                _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to delete old persistent store: %@", buf, 0xCu);
              }

              v7 = v12;
            }

            else
            {
              v7 = 0;
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v17 objects:v24 count:16];
      }

      while (v6);
    }

    v4 = v14;
  }
}

void sub_100039688(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    if (!*(a19 + 40))
    {
      v30 = [NSString stringWithFormat:@"Error cleaning up cache: %@"];
      *(v27 - 88) = NSLocalizedDescriptionKey;
      *(v27 - 80) = v30;
      v31 = [NSDictionary dictionaryWithObjects:v27 - 80 forKeys:v27 - 88 count:1];
      v32 = [NSString stringWithUTF8String:off_1006C9430];
      v33 = [v31 copy];
      *v25 = [NSError errorWithDomain:v32 code:-27109 userInfo:v33];

      JUMPOUT(0x100039634);
    }

    JUMPOUT(0x10003962CLL);
  }

  _Block_object_dispose(&a18, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1000397F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003980C(void *a1)
{
  v2 = [[NSFetchRequest alloc] initWithEntityName:a1[4]];
  [v2 setPredicate:a1[5]];
  v3 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v2];
  [v3 setResultType:2];
  v4 = a1[6];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = [v4 executeRequest:v3 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1[7] + 8) + 40);
  v8 = qword_1006DF770;
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 result];
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[ASCoreDataManager] Executed batch delete request for entity successfully (%@ deletions)", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = a1[4];
    v12 = [*(*(a1[7] + 8) + 40) localizedDescription];
    sub_100594A04(v11, v12, buf, v9);
  }
}

uint64_t start()
{
  v0 = qword_1006DF770;
  if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
  {
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Starting", v20, 2u);
  }

  v1 = objc_autoreleasePoolPush();
  v2 = os_log_create("com.apple.asd.telemetry", "api");
  v3 = qword_1006DF778;
  qword_1006DF778 = v2;

  v4 = os_log_create("com.apple.asd.telemetry", "dframe");
  v5 = qword_1006DF780;
  qword_1006DF780 = v4;

  v6 = os_log_create("com.apple.asd.telemetry", "encapsulatedframe");
  v7 = qword_1006DF788;
  qword_1006DF788 = v6;

  v8 = os_log_create("com.apple.asd", "daemon");
  v9 = qword_1006DF770;
  qword_1006DF770 = v8;

  v10 = +[_TtC3asd23ASDConfigurationManager shared];
  [v10 pushInitialCoreODIConfig];

  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v11 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100594A6C(v11);
    }
  }

  v12 = +[EvuyxgzfZZU4un3X sharedInstance];
  v13 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.asd.scoring"];
  [v13 setDelegate:v12];
  [v13 resume];
  v14 = +[_TtC3asd20ASXPCActivityManager shared];
  [v14 registerWithActivity:0];

  v15 = +[_TtC3asd20ASXPCActivityManager shared];
  [v15 registerWithActivity:1];

  v16 = +[_TtC3asd18RavioliManagerObjC shared];

  if (!v16)
  {
    v17 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100594AB0(v17);
    }
  }

  +[_TtC3asd15PushCoordinator configurePush];
  v18 = +[_TtC3asd22BindingsChangeObserver shared];
  [v18 registerObservers];

  objc_autoreleasePoolPop(v1);
  CFRunLoopRun();

  return 1;
}

void sub_100039EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100039F1C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100039F34(void *a1)
{
  v3 = (a1 + 7);
  v2 = a1[7];
  v4 = a1[4];
  v5 = *(v3 - 16);
  v6 = *(v2 + 8);
  obj = *(v6 + 40);
  v7 = [v4 executeRequest:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(*(v3 - 8) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(*(v3 - 8) + 8) + 40);
  if (v10)
  {
    v11 = [v10 finalResult];
    v12 = [v11 firstObject];

    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 ravioli];
        v14 = *(a1[8] + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;
      }

      else
      {
        v18 = qword_1006DF770;
        if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
        {
          sub_100594AF4(v18);
        }
      }
    }

    else
    {
      v17 = qword_1006DF770;
      if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
      {
        sub_100594B38(v17);
      }
    }
  }

  else
  {
    v16 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100594B7C(v3, v16);
    }
  }
}

void sub_10003A0E0(id a1)
{
  qword_1006D7D28 = objc_alloc_init(ASFileCacheManager);

  _objc_release_x1();
}

void sub_10003A600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003A618(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003A630(uint64_t a1)
{
  v2 = +[DB_R151924382 fetchRequest];
  [v2 setFetchLimit:1];
  v3 = [NSPredicate predicateWithFormat:@"(category == %ld) AND (key == %@) AND (createdAt + ttl >= %@)", *(a1 + 72), *(a1 + 32), *(a1 + 40)];
  [v2 setPredicate:v3];
  v4 = [*(a1 + 48) managedObjectContext];
  v37 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v37];
  v6 = v37;
  v7 = v37;

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v6);
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v8 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 72);
      v11 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 134218498;
      v39 = v10;
      v40 = 2112;
      v41 = v9;
      v42 = 2112;
      v43 = v11;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error with DB_R151924382(%ld, %@): %@", buf, 0x20u);
    }

    goto LABEL_13;
  }

  if (![v5 count])
  {
    v23 = [NSString stringWithUTF8String:off_1006C9430];
    v24 = v23;
    v25 = -27904;
    goto LABEL_12;
  }

  if ([v5 count] != 1)
  {
    if ([v5 count] < 2)
    {
      goto LABEL_14;
    }

    v26 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      v32 = v26;
      v33 = [v5 count];
      v34 = *(a1 + 72);
      v35 = *(a1 + 32);
      *buf = 134218498;
      v39 = v33;
      v40 = 2048;
      v41 = v34;
      v42 = 2112;
      v43 = v35;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Inconsistent # of results (%ld) for DB_R151924382(%ld, %@)", buf, 0x20u);
    }

    v23 = [NSString stringWithUTF8String:off_1006C9430];
    v24 = v23;
    v25 = -27905;
LABEL_12:
    v27 = [NSError errorWithDomain:v24 code:v25 userInfo:0];
    v28 = *(*(a1 + 64) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

LABEL_13:
    v30 = [*(a1 + 48) lock];
    [v30 unlock];

    v31 = *(*(*(a1 + 64) + 8) + 40);
    (*(*(a1 + 56) + 16))();
    goto LABEL_14;
  }

  v12 = [v5 firstObject];
  v13 = [v12 filename];

  v14 = [v5 firstObject];
  v15 = [v14 category];

  v16 = +[YeQHj6zXMU2P8KDh sharedInstance];
  [v16 a38gKmeUT3DQp3zY:v13 vyKTnPNvILkFENv4:v15];

  v17 = [*(a1 + 48) fileStorageURL];
  v18 = [v17 URLByAppendingPathComponent:v13 isDirectory:1];

  v19 = *(*(a1 + 64) + 8);
  obj = *(v19 + 40);
  v20 = [NSData dataWithContentsOfURL:v18 options:0 error:&obj];
  objc_storeStrong((v19 + 40), obj);
  v21 = [*(a1 + 48) lock];
  [v21 unlock];

  v22 = *(*(*(a1 + 64) + 8) + 40);
  (*(*(a1 + 56) + 16))();

LABEL_14:
}

void sub_10003ABC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003ABE0(uint64_t a1)
{
  v2 = +[DB_R151924382 fetchRequest];
  [v2 setFetchLimit:1];
  v3 = [NSPredicate predicateWithFormat:@"(category == %ld) AND (key == %@) AND (createdAt + ttl >= %@)", *(a1 + 72), *(a1 + 32), *(a1 + 40)];
  [v2 setPredicate:v3];
  v4 = [*(a1 + 48) managedObjectContext];
  v47 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v47];
  v6 = v47;
  v7 = v47;

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v6);
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v8 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 72);
      v11 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 134218498;
      v50 = v10;
      v51 = 2112;
      v52 = v9;
      v53 = 2112;
      v54 = v11;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error with DB_R151924382(%ld, %@): %@", buf, 0x20u);
    }
  }

  else if ([v5 count])
  {
    v35 = v7;
    v36 = v5;
    v37 = v3;
    v38 = v2;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v12 = v5;
    v40 = [v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v40)
    {
      v39 = *v44;
      do
      {
        for (i = 0; i != v40; i = i + 1)
        {
          if (*v44 != v39)
          {
            objc_enumerationMutation(v12);
          }

          v14 = *(*(&v43 + 1) + 8 * i);
          v15 = [v12 firstObject];
          v16 = [v15 filename];

          v17 = [v12 firstObject];
          v18 = [v17 category];

          v19 = +[YeQHj6zXMU2P8KDh sharedInstance];
          [v19 a38gKmeUT3DQp3zY:v16 vyKTnPNvILkFENv4:v18];

          v20 = [*(a1 + 48) fileStorageURL];
          v21 = [v20 URLByAppendingPathComponent:v16 isDirectory:1];

          v22 = [v21 relativePath];
          if (v22)
          {
            v23 = *(*(a1 + 48) + 8);
            v42 = 0;
            [v23 removeItemAtPath:v22 error:&v42];
            v24 = v42;
            if (v24)
            {
              v25 = qword_1006DF770;
              if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v50 = v22;
                v51 = 2112;
                v52 = v24;
                _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "Asset removal at %@ unsuccessful: %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v24 = 0;
          }

          v26 = [*(a1 + 48) managedObjectContext];
          [v26 deleteObject:v14];
        }

        v40 = [v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v40);
    }

    v27 = [*(a1 + 48) managedObjectContext];
    v28 = *(*(a1 + 64) + 8);
    obj = *(v28 + 40);
    [v27 save:&obj];
    objc_storeStrong((v28 + 40), obj);

    v3 = v37;
    v2 = v38;
    v7 = v35;
    v5 = v36;
  }

  else
  {
    v29 = [NSString stringWithUTF8String:off_1006C9430];
    v30 = [NSError errorWithDomain:v29 code:-27904 userInfo:0];
    v31 = *(*(a1 + 64) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;
  }

  v33 = [*(a1 + 48) lock];
  [v33 unlock];

  v34 = *(*(*(a1 + 64) + 8) + 40);
  (*(*(a1 + 56) + 16))();
}

void sub_10003B2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003B2DC(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [DB_R151924382 insertNewObjectInManagedObjectContext:v2];

  v4 = [NSNumber numberWithInteger:*(a1 + 96)];
  [v3 setCategory:v4];

  v5 = +[NSDate date];
  [v3 setCreatedAt:v5];

  v6 = [NSData dataWithData:*(a1 + 40)];
  [v3 setDigest:v6];

  [v3 setFilename:*(a1 + 48)];
  v7 = +[NSDate date];
  [v3 setRefreshedAt:v7];

  v8 = [NSNumber numberWithDouble:*(a1 + 104)];
  [v3 setTtl:v8];

  [v3 setKey:*(a1 + 56)];
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(*(a1 + 88) + 8);
  obj = *(v11 + 40);
  [v9 writeToURL:v10 options:1 error:&obj];
  objc_storeStrong((v11 + 40), obj);
  v12 = [*(a1 + 32) lock];
  [v12 unlock];

  v13 = [*(a1 + 32) managedObjectContext];
  v14 = *(*(a1 + 88) + 8);
  v16 = *(v14 + 40);
  [v13 save:&v16];
  objc_storeStrong((v14 + 40), v16);

  v15 = *(*(*(a1 + 88) + 8) + 40);
  (*(*(a1 + 80) + 16))();
}

void sub_10003B78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_10003B7B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (!v5)
  {
    v11 = [NSString stringWithUTF8String:off_1006C9430];
    v8 = [NSError errorWithDomain:v11 code:-27902 userInfo:0];
LABEL_8:

    goto LABEL_9;
  }

  v9 = [[ASReleasableBuffer alloc] initWithData:v5];
  if (!v9)
  {
    v11 = [NSString stringWithUTF8String:off_1006C9430];
    v24 = NSLocalizedDescriptionKey;
    v25 = @"Error creating buffer";
    v12 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v8 = [NSError errorWithDomain:v11 code:-27002 userInfo:v12];

    goto LABEL_8;
  }

  v10 = v9;
  v8 = 0;
LABEL_10:
  v13 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B9F0;
  block[3] = &unk_100690B40;
  v22 = *(a1 + 56);
  v23 = *(a1 + 64);
  v19 = v8;
  v20 = v10;
  v17 = *(a1 + 40);
  v14 = v17;
  v21 = v17;
  v15 = v10;
  v16 = v8;
  dispatch_async(v13, block);
}

void sub_10003B9F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v2);
  }

  else
  {
    [*(*(*(a1 + 64) + 8) + 40) setObject:*(a1 + 40) atIndexedSubscript:*(a1 + 72)];
  }

  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

uint64_t sub_10003BA58(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(*(*(v3 + 8) + 8) + 40))
  {
    return (*(v2 + 16))(v2, 0);
  }

  else
  {
    return (*(v2 + 16))(v2, *(*(*(a1 + 48) + 8) + 40));
  }
}

uint64_t sub_10003BBD0(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return _objc_release_x1();
}

void sub_10003BDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003BE04(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v22 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v22];
  v5 = v22;

  if (v5)
  {
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100594CDC();
    }

    v6 = *(*(a1 + 64) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v9 = [*(a1 + 32) managedObjectContext];
    v10 = *(a1 + 48);
    v21 = 0;
    v11 = [v9 executeRequest:v10 error:&v21];
    v12 = v21;
    v8 = v21;

    if (v8)
    {
      if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
      {
        sub_100594D44();
      }

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v12);
    }

    else
    {
      v13 = [v11 result];
      v14 = [v13 BOOLValue];

      if (v14)
      {
        v15 = *(*(*(a1 + 64) + 8) + 40);
        (*(*(a1 + 56) + 16))();
      }

      else
      {
        v16 = qword_1006DF770;
        if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
        {
          sub_100594DAC(v16);
        }

        v17 = [NSString stringWithUTF8String:off_1006C9430];
        v18 = [NSError errorWithDomain:v17 code:-27906 userInfo:0];
        v19 = *(*(a1 + 64) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;
      }
    }
  }
}

void sub_10003C190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003C1A8(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v8 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v8];
  v5 = v8;
  v6 = v8;

  if (v6)
  {
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
    {
      sub_100594CDC();
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
  }

  else
  {
    v7 = *(*(*(a1 + 56) + 8) + 40);
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10003C624(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 filename];

  if (v3)
  {
    v4 = [v8 filename];
    v5 = [*(a1 + 32) containsObject:v4];
    v6 = 48;
    if (v5)
    {
      v6 = 40;
      v7 = v4;
    }

    else
    {
      v7 = v8;
    }

    [*(a1 + v6) addObject:v7];
  }

  else
  {
    [*(a1 + 48) addObject:v8];
  }
}

void sub_10003C6CC(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 filename];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v8 filename];
    LOBYTE(v4) = [v4 containsObject:v5];

    if ((v4 & 1) == 0)
    {
      v6 = *(a1 + 40);
      v7 = [v8 filename];
      [v6 addObject:v7];
    }
  }

  [*(a1 + 48) addObject:v8];
}

void sub_10003CA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10003CA28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    dispatch_group_leave(*(a1 + 32));
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
    {
      sub_100594DF0();
    }
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v19 + 1) + 8 * v10);
          v12 = [*(a1 + 40) fileStorageURL];
          v13 = [v12 URLByAppendingPathComponent:v11 isDirectory:1];

          v14 = [v13 relativePath];
          v15 = *(*(a1 + 40) + 8);
          v18 = 0;
          [v15 removeItemAtPath:v14 error:&v18];
          v16 = v18;
          if (v16)
          {
            v17 = qword_1006DF770;
            if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v24 = v14;
              v25 = 2112;
              v26 = v16;
              _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Asset removal at %@ unsuccessful: %@", buf, 0x16u);
            }
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v8);
    }

    dispatch_group_leave(*(a1 + 32));
    v6 = 0;
  }
}

void sub_10003CC54(uint64_t a1)
{
  v2 = +[DB_R151924382 fetchRequest];
  v3 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v2];
  [v3 setResultType:0];
  v4 = [*(a1 + 32) managedObjectContext];
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 executeRequest:v3 error:&obj];
  objc_storeStrong((v5 + 40), obj);

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
    {
      sub_100594E58(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = [*(a1 + 32) managedObjectContext];
  v18 = 0;
  [v15 save:&v18];
  v16 = v18;
  v17 = v18;

  if (v17)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v16);
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
    {
      sub_100594EC8();
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_10003CDC0(uint64_t a1)
{
  v2 = [*(a1 + 32) lock];
  [v2 unlock];

  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = v3;
  v5 = *(*(*(a1 + 56) + 8) + 40);
  if (v5)
  {
    v7 = v3;
    v6 = v5;

    v4 = v6;
  }

  v8 = v4;
  (*(*(a1 + 40) + 16))();
}

void sub_10003CF70(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) lock];
  [v2 unlock];
}

void sub_10003CFD0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10003D0A8;
    v9[3] = &unk_100690D48;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v11 = v7;
    v9[4] = v8;
    v10 = v5;
    [v6 listExpiredEntries:v9];
  }
}

void sub_10003D0A8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10003D194;
    v10[3] = &unk_100690D20;
    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v13 = v7;
    v10[4] = v8;
    v11 = v9;
    v12 = v5;
    [v6 listUnexpiredEntries:v10];
  }
}

void sub_10003D194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }

  else
  {
    v14 = v3;
    v15 = v4;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003D268;
    v11[3] = &unk_100690CF8;
    v11[4] = v7;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v12 = 0;
    v13 = v10;
    [v7 listFilesToBeRemoved:v8 withExpiredEntries:v9 andValidEntries:a2 completion:v11];
  }
}

void sub_10003D268(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v20 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        v11 = [a1[4] fileStorageURL];
        v12 = [v11 URLByAppendingPathComponent:v10 isDirectory:1];

        v13 = [v12 relativePath];
        v14 = *(a1[4] + 1);
        v26 = 0;
        [v14 removeItemAtPath:v13 error:&v26];
        v15 = v26;
        if (v15)
        {
          v16 = qword_1006DF770;
          if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            v32 = v13;
            v33 = 2112;
            v34 = v15;
            _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Asset removal at %@ unsuccessful: %@", buf, 0x16u);
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v7);
  }

  v17 = [a1[4] managedObjectContext];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10003D4F8;
  v21[3] = &unk_100690CD0;
  v18 = a1[4];
  v22 = v20;
  v23 = v18;
  v25 = a1[6];
  v24 = a1[5];
  v19 = v20;
  [v17 performBlock:v21];
}

void sub_10003D4F8(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = [*(a1 + 40) managedObjectContext];
        [v8 deleteObject:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v9 = [*(a1 + 40) managedObjectContext];
  v12 = 0;
  [v9 save:&v12];
  v10 = v12;

  if (v10 && os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
  {
    sub_100594EC8();
  }

  v11 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();
}

void sub_10003D714(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_10003D7FC(id a1)
{
  qword_1006D7D38 = objc_alloc_init(PJXBDBF1h0EU80dy);

  _objc_release_x1();
}

void sub_10003DCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003DD48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003DD60(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 16);
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v3 executeRequest:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_10003DEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_10003DF28(uint64_t a1)
{
  v2 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:*(a1 + 32)];
  [v2 setResultType:2];
  v4 = *(a1 + 48);
  v3 = a1 + 48;
  v5 = *(*(v3 - 8) + 16);
  v6 = *(v4 + 8);
  obj = *(v6 + 40);
  v7 = [v5 executeRequest:v2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = qword_1006DF770;
  if (*(*(*v3 + 8) + 40))
  {
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Executed batch delete request for JSONBag entity successfully.", v9, 2u);
    }
  }

  else if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_ERROR))
  {
    sub_100594F44(v3);
  }
}

void sub_10003E2B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003E368;
  v7[3] = &unk_100690E08;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_10003E37C(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = *v11;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v11 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v10 + 1) + 8 * i);
          if ([v6 PJ7tY2vmxQ3CBhNO])
          {
            v7 = [v6 dfVal];
            v8 = [kjAS9HuCdR1m5txL Xw2iAzNBHudJx7Ph:v7];

            if ([v8 qfSDGTGvqd3Hruzg] == 149)
            {
              [v8 setQfSDGTGvqd3Hruzg:163000];
            }

            v9 = [v6 presentTime];
            [v8 setWgZJLy8f4tn41Pge:v9];

            if (v8)
            {
              (*(*(a1 + 40) + 16))();

              return;
            }
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10003E594(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = *v11;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v11 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v10 + 1) + 8 * i);
          if ([v6 PJ7tY2vmxQ3CBhNO])
          {
            v7 = [v6 dfVal];
            v8 = [kjAS9HuCdR1m5txL Xw2iAzNBHudJx7Ph:v7];

            if ([v8 qfSDGTGvqd3Hruzg] == 149)
            {
              [v8 setQfSDGTGvqd3Hruzg:163000];
            }

            v9 = [v6 presentTime];
            [v8 setWgZJLy8f4tn41Pge:v9];

            if (v8)
            {
              (*(*(a1 + 40) + 16))();

              return;
            }
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}