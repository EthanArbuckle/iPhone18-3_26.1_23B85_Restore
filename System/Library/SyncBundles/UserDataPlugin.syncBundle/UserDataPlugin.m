void sub_1160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1184(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 applicationType];
  if ([v3 isEqualToString:@"System"])
  {
  }

  else
  {
    v4 = [v14 applicationType];
    v5 = [v4 isEqualToString:@"Internal"];

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v6 = [v14 diskUsage];
  v7 = [v6 staticUsage];
  *(*(*(a1 + 32) + 8) + 40) += [v7 unsignedLongLongValue];

LABEL_5:
  v8 = [v14 diskUsage];
  v9 = [v8 dynamicUsage];
  *(*(*(a1 + 32) + 8) + 40) += [v9 unsignedLongLongValue];

  v10 = [v14 dataContainerURL];
  v11 = [v10 path];
  v12 = [v11 stringByAppendingString:@"/Library/Caches/"];

  if (v12)
  {
    v13 = ATGetDiskUsageForPath();
  }

  else
  {
    v13 = 0;
  }

  *(*(*(a1 + 32) + 8) + 40) += v13;
  ++*(*(*(a1 + 32) + 8) + 32);
}

void sub_1750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1798(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_17B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = [a3 description];
    v7 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "failed to get cloud document usage. err=%{public}@", &v11, 0xCu);
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void *sub_18A8(void *a1)
{
  v5[0] = 0;
  if (!qword_C6B0)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1A2C;
    v5[4] = &unk_82C0;
    v5[5] = v5;
    v6 = off_82A8;
    v7 = 0;
    qword_C6B0 = _sl_dlopen();
  }

  v2 = qword_C6B0;
  if (!qword_C6B0)
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *CloudDocsLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"UserDataClient.m" lineNumber:19 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "BRGetTotalApplicationDocumentUsage");
  *(*(a1[4] + 8) + 24) = result;
  off_C6A8 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_1A2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_C6B0 = result;
  return result;
}

void sub_2194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose((v64 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_21E0(uint64_t a1)
{
  [*(a1 + 32) _fileUsageMetrics];
  v2 = *(*(a1 + 48) + 8);
  *(v2 + 32) = v3;
  *(v2 + 48) = v4;
  dispatch_group_leave(*(a1 + 40));
}

void sub_2234(uint64_t a1)
{
  [*(a1 + 32) _iCloudUsageMetrics];
  v2 = *(*(a1 + 48) + 8);
  *(v2 + 32) = v3;
  *(v2 + 48) = v4;
  dispatch_group_leave(*(a1 + 40));
}

void sub_2288(uint64_t a1)
{
  [*(a1 + 32) _appUsageMetricsUsingCacheDeleteData:*(a1 + 40)];
  v2 = *(*(a1 + 56) + 8);
  *(v2 + 32) = v3;
  *(v2 + 48) = v4;
  dispatch_group_leave(*(a1 + 48));
}

void sub_22E0(uint64_t a1)
{
  [*(a1 + 32) _cacheDeleteUsageMetricsUsingCacheDeleteData:*(a1 + 40)];
  v2 = *(*(a1 + 56) + 8);
  *(v2 + 32) = v3;
  *(v2 + 48) = v4;
  dispatch_group_leave(*(a1 + 48));
}