void sub_100001748(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000017E4;
  v2[3] = &unk_10002C7B8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _enumerateTaskStatesUsingBlock:v2];
}

void sub_1000017E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 domain];
  [v3 downloadRoute];
  [v3 isDiscretionary];
  v6 = [v3 task];

  v7 = [v3 dateScheduled];

  v4 = [v3 buffer];
  [v4 length];

  (*(*(a1 + 32) + 16))();
}

void sub_1000018D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  sub_100005CD4(&a9);

  _Unwind_Resume(a1);
}

void sub_100002164(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

void sub_100002FB8(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_100003D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100003DD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003DF0(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 domain];
  v7 = *(a1 + 48);
  if (v7 == [v8 downloadRoute] && objc_msgSend(*(a1 + 32), "isEqual:", v6))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_100004084(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) underlyingQueue];
  dispatch_assert_queue_V2(v2);

  if (([*(a1 + 40) isValid] & 1) == 0)
  {
    if (qword_100032510 != -1)
    {
      dispatch_once(&qword_100032510, &stru_10002C8E8);
    }

    v8 = qword_100032508;
    if (os_log_type_enabled(qword_100032508, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      *buf = 138412290;
      v37 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Domain %@ is invalid. Will not attempt a download.", buf, 0xCu);
    }

    v10 = [NSError alloc];
    v42[0] = &off_10002E608;
    v41[0] = @"Line";
    v41[1] = @"Function";
    v11 = [NSString stringWithUTF8String:"[SWCDownloader(Private) _downloadAASAFileForDomain:applicationIdentifier:downloadRoute:discretionary:completionHandlers:]_block_invoke"];
    v42[1] = v11;
    v41[2] = @"Domain";
    v42[2] = *(a1 + 40);
    v12 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];
    v3 = [v10 initWithDomain:_SWCErrorDomain code:8 userInfo:v12];

    v7 = [*(a1 + 32) delegate];
    if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v7 downloader:*(a1 + 32) failedToDownloadAASAFileFromDomain:*(a1 + 40) error:v3];
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = *(a1 + 48);
    v14 = [(SWCDownloadTaskState *)v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v14)
    {
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(a1 + 80);
          (*(*(*(&v32 + 1) + 8 * i) + 16))(*(*(&v32 + 1) + 8 * i));
        }

        v14 = [(SWCDownloadTaskState *)v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v14);
    }

    goto LABEL_51;
  }

  v3 = [*(a1 + 32) _taskStateForDomain:*(a1 + 40) downloadRoute:*(a1 + 80)];
  if (!v3)
  {
    if (*(a1 + 56) && !*(a1 + 80))
    {
      v18 = +[_SWCDomain appleDomain];
      if ([v18 encompassesDomain:*(a1 + 40)])
      {
        v19 = +[_SWCPrefs sharedPrefs];
        v20 = [v19 isAppleInternal];

        if (v20 && !arc4random_uniform(0x64u))
        {
          if (qword_100032510 != -1)
          {
            dispatch_once(&qword_100032510, &stru_10002C8E8);
          }

          v21 = qword_100032508;
          if (os_log_type_enabled(qword_100032508, OS_LOG_TYPE_FAULT))
          {
            v22 = *(a1 + 56);
            v23 = *(a1 + 40);
            *buf = 138412546;
            v37 = v22;
            v38 = 2112;
            v39 = v23;
            _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "Application %@ is attempting to download AASA data from %@ over the public Internet (via an Apple-controlled CDN.) Doing so may leak information about unannounced apps or features. This application must be updated. Please file a bug report against this application.", buf, 0x16u);
          }
        }
      }

      else
      {
      }
    }

    v7 = [*(a1 + 32) delegate];
    if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v7 downloader:*(a1 + 32) willDownloadAASAFileFromDomain:*(a1 + 40)];
    }

    v13 = [[SWCDownloadTaskState alloc] initWithDownloader:*(a1 + 32) domain:*(a1 + 40) downloadRoute:*(a1 + 80)];
    if (!v13)
    {
      v31 = +[NSAssertionHandler currentHandler];
      [v31 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"SWCDownloader.mm" lineNumber:571 description:@"Failed to create download state object"];
    }

    if (*(a1 + 48))
    {
      v24 = [(SWCDownloadTaskState *)v13 completionHandlers];
      [v24 addObjectsFromArray:*(a1 + 48)];
    }

    if (*(a1 + 81) == 1)
    {
      if (qword_100032510 != -1)
      {
        dispatch_once(&qword_100032510, &stru_10002C8E8);
      }

      v25 = qword_100032508;
      if (os_log_type_enabled(qword_100032508, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 40);
        *buf = 138412290;
        v37 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Downloading discretionary data for domain %@", buf, 0xCu);
      }

      v27 = *(a1 + 81);
    }

    else
    {
      v27 = 0;
    }

    [(SWCDownloadTaskState *)v13 setDiscretionary:v27 & 1];
    v28 = *(*(a1 + 32) + 48);
    v29 = [(SWCDownloadTaskState *)v13 taskDescription];
    [v28 setObject:v13 forKey:v29];

    [*(a1 + 32) _resumePendingTasks];
    v30 = +[SWCAnalyticsLogger sharedLogger];
    [v30 logAASAFileDownloadEventWithDomain:*(a1 + 40) route:*(a1 + 80)];

    v3 = 0;
LABEL_51:

    goto LABEL_52;
  }

  if (qword_100032510 != -1)
  {
    dispatch_once(&qword_100032510, &stru_10002C8E8);
  }

  v4 = qword_100032508;
  if (os_log_type_enabled(qword_100032508, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = @"non-discretionary";
    if (*(a1 + 81))
    {
      v6 = @"discretionary";
    }

    *buf = 138412546;
    v37 = v5;
    v38 = 2112;
    v39 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Already downloading data for domain %@, so skipping a second download (%@)", buf, 0x16u);
  }

  if (*(a1 + 48))
  {
    v7 = [v3 completionHandlers];
    [v7 addObjectsFromArray:*(a1 + 48)];
LABEL_52:
  }
}

void sub_100004F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  sub_100005D54(v33 + 48);
  _Unwind_Resume(a1);
}

uint64_t sub_100004FCC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

void sub_100005044(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 task];

  if (v4)
  {
    v7 = [*(a1 + 32) _sessionIDForTaskState:v3];
    v5 = *(*(a1 + 40) + 8);
    v8 = &v7;
    v6 = sub_100005DA0((v5 + 48), v7);
    v6[3] = (v6[3] + 1);
  }
}

void sub_1000050E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 task];

  if (!v4)
  {
    v8 = [*(a1 + 32) _sessionIDForTaskState:v3];
    v5 = *(*(a1 + 48) + 8);
    v9 = &v8;
    v6 = sub_100005DA0((v5 + 48), v8);
    v7 = v6[3];
    if (v7 < [*(a1 + 32) _maximumActiveTaskCountForSessionID:v8])
    {
      v6[3] = (v6[3] + 1);
      [*(a1 + 40) addObject:v3];
    }
  }
}

void sub_100005D10(id a1)
{
  qword_100032508 = os_log_create(&_SWCLogSubsystem, "dl");

  _objc_release_x1();
}

uint64_t sub_100005D54(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t **sub_100005DA0(void *a1, unsigned __int8 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 16) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

__CFString *sub_1000061C0(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = @".wk";
    }

    else
    {
      v2 = [NSNumber numberWithUnsignedChar:a1];
      v1 = [v2 description];
    }
  }

  else
  {
    v1 = @"cdn";
  }

  return v1;
}

void sub_100006DF4(id a1)
{
  if (dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 1))
  {
    qword_100032528 = NSClassFromString(@"MCProfileConnection");
    if (qword_100032528)
    {
      return;
    }

    v1 = [NSError alloc];
    v14[0] = &off_10002E620;
    v13[0] = @"Line";
    v13[1] = @"Function";
    v2 = [NSString stringWithUTF8String:"[SWCEnterpriseContext(CPMCInterop) _loadEnterpriseData]_block_invoke"];
    v14[1] = v2;
    v13[2] = NSDebugDescriptionErrorKey;
    v14[2] = @"MCProfileConnection not found.";
    v3 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
    v4 = [v1 initWithDomain:_SWCErrorDomain code:4 userInfo:v3];
    v5 = qword_100032518;
    qword_100032518 = v4;
  }

  else
  {
    v6 = dlerror();
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = "ManagedConfiguration.framework not loaded.";
    }

    v2 = [NSString stringWithUTF8String:v7];
    v8 = [NSError alloc];
    v12[0] = &off_10002E638;
    v11[0] = @"Line";
    v11[1] = @"Function";
    v3 = [NSString stringWithUTF8String:"[SWCEnterpriseContext(CPMCInterop) _loadEnterpriseData]_block_invoke"];
    v11[2] = NSDebugDescriptionErrorKey;
    v12[1] = v3;
    v12[2] = v2;
    v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
    v9 = [v8 initWithDomain:_SWCErrorDomain code:4 userInfo:v5];
    v10 = qword_100032518;
    qword_100032518 = v9;
  }
}

void sub_100007054(id a1)
{
  qword_100032530 = os_log_create(&_SWCLogSubsystem, "1701");

  _objc_release_x1();
}

void sub_100008268(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 isEqual:NSUnderlyingErrorKey])
  {
    v6 = [v5 description];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:@"UnderlyingError"];
  }

  else
  {
    if ([NSJSONSerialization isValidJSONObject:v5])
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
      goto LABEL_7;
    }

    v6 = [v5 description];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }

LABEL_7:
}

void sub_100009AA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [SWCEntry alloc];
        v12 = [(SWCEntry *)v11 initWithApplicationIdentifier:*(a1 + 32) service:v5 domain:v10, v13];
        [*(a1 + 40) addObject:v12];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

void sub_100009C94(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100009E64(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (_NSIsNSString() && _NSIsNSDictionary())
  {
    v6 = [_SWCSubstitutionVariableList substitutionVariableListWithDictionary:v5];
    v7 = [v5 objectForKeyedSubscript:@"defaults"];
    if ((_NSIsNSDictionary() & 1) == 0)
    {

      v7 = &__NSDictionary0__struct;
    }

    v8 = [v5 objectForKeyedSubscript:@"details"];
    if (v8 && (v9 = _SWCServiceTypeMaximumDetailsCount()) != 0)
    {
      if (_NSIsNSArray())
      {
        [*(a1 + 48) _addEntriesToOrderedSet:*(a1 + 32) forUniversalLinksFromDetailsArray:v8 domain:*(a1 + 40) substitutionVariables:v6 defaults:v7 maximum:v9];
      }

      else if (_NSIsNSDictionary())
      {
        [*(a1 + 48) _addEntriesToOrderedSet:*(a1 + 32) forUniversalLinksFromDetailsDictionary:v8 domain:*(a1 + 40) substitutionVariables:v6 defaults:v7 maximum:v9];
      }
    }

    else
    {
      v10 = [v5 objectForKeyedSubscript:@"apps"];
      if (v10 && _NSIsNSArray())
      {
        [*(a1 + 48) _addEntriesToOrderedSet:*(a1 + 32) forService:v11 fromAppsArray:v10 domain:*(a1 + 40)];
      }
    }
  }
}

void sub_10000B2FC(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_10000B45C(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v15 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v15;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 domainRequiringModeOfOperation:0];
        v10 = [v4 objectForKeyedSubscript:v9];
        v11 = v10;
        if (v10)
        {
          +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 unsignedLongLongValue] | objc_msgSend(v8, "modeOfOperation"));
        }

        else
        {
          +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [v8 modeOfOperation]);
        }
        v12 = ;
        [v4 setObject:v12 forKeyedSubscript:v9];
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000B78C;
  v19[3] = &unk_10002C9C8;
  v13 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(obj, "count")}];
  v20 = v13;
  [v4 enumerateKeysAndObjectsUsingBlock:v19];
  v14 = [v13 copy];
  [*(a1 + 32) setObject:v14 forKeyedSubscript:v17];
}

void sub_10000B78C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [v7 domainRequiringModeOfOperation:{objc_msgSend(v5, "unsignedLongLongValue")}];
  [*(a1 + 32) addObject:v6];
}

void sub_10000BCA4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 allObjects];
  v6 = [v5 sortedArrayWithOptions:16 usingComparator:&stru_10002CA30];

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

int64_t sub_10000BD60(id a1, _SWCDomain *a2, _SWCDomain *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(_SWCDomain *)v4 isWildcard];
  v7 = [(_SWCDomain *)v5 isWildcard];
  if (((v6 | v7 ^ 1) & 1) == 0)
  {
    goto LABEL_6;
  }

  if (((v6 ^ 1 | v7) & 1) == 0)
  {
    goto LABEL_8;
  }

  if (((v6 ^ 1 | v7 ^ 1) & 1) == 0)
  {
    v9 = [(_SWCDomain *)v4 host];
    v10 = [v9 length];

    v11 = [(_SWCDomain *)v5 host];
    v12 = [v11 length];

    if (v10 > v12)
    {
LABEL_6:
      v8 = -1;
      goto LABEL_9;
    }

    if (v10 >= v12)
    {
      goto LABEL_4;
    }

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

LABEL_4:
  v8 = 0;
LABEL_9:

  return v8;
}

void sub_10000C564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C5C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v17 = 0;
  v8 = [[NSData alloc] initWithContentsOfURL:v6 options:1 error:&v17];
  v9 = v17;
  if (v8)
  {
    v10 = +[SWCSecurityGuard sharedSecurityGuard];
    v16 = v9;
    v11 = [v10 JSONObjectWithSignedJSONData:v8 error:&v16];
    v12 = v16;

    if (!v11)
    {
      if (qword_100032548 != -1)
      {
        dispatch_once(&qword_100032548, &stru_10002CAF0);
      }

      v13 = qword_100032540;
      if (os_log_type_enabled(qword_100032540, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v19 = v6;
        v20 = 2112;
        v21 = v12;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to decode JSON object from file %@: %@", buf, 0x16u);
      }

      v11 = 0;
    }
  }

  else
  {
    if (qword_100032548 != -1)
    {
      dispatch_once(&qword_100032548, &stru_10002CAF0);
    }

    v14 = qword_100032540;
    if (os_log_type_enabled(qword_100032540, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v9;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to read JSON file %@: %@", buf, 0x16u);
    }

    v11 = 0;
    v12 = v9;
  }

  objc_autoreleasePoolPop(v7);
  if (v11)
  {
    v15 = *(*(*(a1 + 40) + 8) + 24);
    (*(*(a1 + 32) + 16))();
  }
}

void sub_10000CA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a24, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10000CAD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000CAF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v21 = [*(a1 + 48) entriesForJSONObject:a3 domain:a2];
  if (v21)
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v6 = objc_alloc_init(NSMutableOrderedSet);
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v21;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = *v23;
      v12 = (a4 & 7) << 10;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v14 applicationIdentifier];
          v16 = [v15 isEqual:*(a1 + 32)];

          if (v16)
          {
            v17 = v14;
            v18 = [v14 fields];
            *v18 = *v18 & 0xE3FF | v12;
            v19 = [*(*(*(a1 + 40) + 8) + 40) indexOfObject:v14];
            v20 = *(*(*(a1 + 40) + 8) + 40);
            if (v19 == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v20 addObject:v14];
            }

            else
            {
              [v20 replaceObjectAtIndex:v19 withObject:v14];
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }
  }
}

uint64_t sub_10000D1D4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = v3;
    if (_NSIsNSString())
    {
      v4 = [[_SWCApplicationIdentifier alloc] initWithString:v13];
      v5 = [SWCEntry alloc];
      v6 = [(SWCEntry *)v5 initWithApplicationIdentifier:v4 service:_SWCServiceTypeAppLinks domain:*(a1 + 32)];
      [(SWCEntry *)v6 setPatterns:*(a1 + 40)];
      [(SWCEntry *)v6 setSubstitutionVariables:*(a1 + 48)];
      v7 = *(a1 + 72);
      v8 = [(SWCEntry *)v6 fields];
      *v8 = *v8 & 0xFF3F | ((v7 & 3) << 6);
      if (*(a1 + 56) && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v9 = [*(a1 + 56) intValue];
        v10 = [(SWCEntry *)v6 fields];
        if (v9 >= 100)
        {
          v11 = 100;
        }

        else
        {
          v11 = v9;
        }

        if (v11 <= -100)
        {
          LOBYTE(v11) = -100;
        }

        v10->relativeOrder = v11;
      }

      [*(a1 + 64) addObject:v6];
    }
  }

  return _objc_release_x1();
}

void sub_10000D64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D694(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  if (_NSIsNSString() && _NSIsNSDictionary())
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:v9 forKeyedSubscript:@"appID"];
    [*(a1 + 72) _addEntryToOrderedSet:*(a1 + 32) forUniversalLinksFromSingleDetailsDictionary:v8 domain:*(a1 + 40) substitutionVariables:*(a1 + 48) defaults:*(a1 + 56)];
    if (++*(*(*(a1 + 64) + 8) + 24) >= *(a1 + 80))
    {
      *a4 = 1;
    }
  }
}

void sub_10000D978(id a1)
{
  qword_100032540 = os_log_create(&_SWCLogSubsystem, "entry");

  _objc_release_x1();
}

void sub_10000DA10(id a1)
{
  qword_100032558 = objc_alloc_init(SWCAnalyticsLogger);

  _objc_release_x1();
}

id sub_10000DAC0(uint64_t a1)
{
  v4 = @"route";
  v1 = [NSNumber numberWithUnsignedChar:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void start(int a1)
{
  if (a1)
  {
    if ((a1 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1000061B0();
  }

  v1 = objc_autoreleasePoolPush();
  sub_10000E618();
}

void sub_10000E4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_100015710(1, v24);
  sub_10001576C(&a13);
  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_10000E630(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [@"/usr/bin/" stringByAppendingPathComponent:a1];
  v4 = [NSNumber numberWithInt:getpid()];
  v5 = [v4 description];

  v13 = v5;
  v6 = [NSArray arrayWithObjects:&v13 count:1];
  sub_100014864(v3, v6);

  v7 = _SWCGetServerConnection();
  v8 = [v7 processIdentifier];
  if (v8)
  {
    v9 = [NSNumber numberWithInt:v8];
    v10 = [v9 description];

    v12 = v10;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    sub_100014864(v3, v11);
  }

  else
  {
    v10 = v5;
  }

  objc_autoreleasePoolPop(v2);
}

_BYTE *sub_10000E80C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000061B0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_10000E8C4(_BYTE *a1)
{
  *a1 = 0;
  a1[64] = 0;
  sub_10000E80C(v4, "help");
  v5[0] = off_10002CB60;
  v5[1] = sub_10000F39C;
  v5[3] = v5;
  v6 = 0;
  sub_10000E80C(v7, "add-all-apps");
  v8[0] = off_10002CB60;
  v8[1] = sub_10000F3A0;
  v8[3] = v8;
  v9 = 1;
  sub_10000E80C(v10, "add");
  v11[0] = off_10002CB60;
  v11[1] = sub_10000F43C;
  v11[3] = v11;
  v12 = 1;
  sub_10000E80C(v13, "dl");
  v14[0] = off_10002CB60;
  v14[1] = sub_10000F584;
  v14[3] = v14;
  v15 = 0;
  sub_10000E80C(v16, "loaddb");
  v17[0] = off_10002CB60;
  v17[1] = sub_10000F7C0;
  v17[3] = v17;
  v18 = 1;
  sub_10000E80C(v19, "get");
  v20[0] = off_10002CB60;
  v20[1] = sub_10000F94C;
  v20[3] = v20;
  v21 = 0;
  sub_10000E80C(v22, "openul");
  v23[0] = off_10002CB60;
  v23[1] = sub_10000FB7C;
  v23[3] = v23;
  v24 = 0;
  sub_10000E80C(v25, "remove");
  v26[0] = off_10002CB60;
  v26[1] = sub_10000FDEC;
  v26[3] = v26;
  v27 = 1;
  sub_10000E80C(v28, "set");
  v29[0] = off_10002CB60;
  v29[1] = sub_10000FF14;
  v29[3] = v29;
  v30 = 1;
  sub_10000E80C(v31, "show");
  v32[0] = off_10002CB60;
  v32[1] = sub_1000101B0;
  v32[3] = v32;
  v33 = 0;
  sub_10000E80C(v34, "verify");
  v35[0] = off_10002CB60;
  v35[1] = sub_100010298;
  v35[3] = v35;
  v36 = 0;
  sub_10000E80C(v37, "reset");
  v38[0] = off_10002CB60;
  v38[1] = sub_10001096C;
  v38[3] = v38;
  v39 = 0;
  sub_10000E80C(v40, "watch");
  v41[0] = off_10002CB60;
  v41[1] = sub_100010A08;
  v41[3] = v41;
  v42 = 0;
  sub_10000E80C(v43, "read-settings");
  v44[0] = off_10002CB60;
  v44[1] = sub_100010C20;
  v44[3] = v44;
  v45 = 1;
  sub_10000E80C(v46, "write-settings");
  v47[0] = off_10002CB60;
  v47[1] = sub_100011200;
  v47[3] = v47;
  v48 = 1;
  sub_10000E80C(v49, "match");
  v50[0] = off_10002CB60;
  v50[1] = sub_100011720;
  v50[3] = v50;
  v51 = 0;
  sub_10000E80C(v52, "developer-mode");
  v53[0] = off_10002CB60;
  v53[1] = sub_100011B74;
  v53[3] = v53;
  v54 = 1;
  sub_10000E80C(v55, "get-tdi-epoch");
  v56[0] = off_10002CB60;
  v56[1] = sub_100011CD8;
  v56[3] = v56;
  v57 = 1;
  v2 = 0;
  v3 = 0;
  v1 = 0;
  operator new();
}

void sub_10000F2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  *(v11 - 112) = &a10;
  sub_100014FA8((v11 - 112));
  sub_10000F354(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_10000F354(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    sub_100014E90(a1 + 24);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void sub_10000F3A0(int a1, char *const *a2)
{
  v2 = sub_100013B58(a1, a2, "");
  v4 = _SWCGetServerConnection();
  v3 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&stru_10002CC20];
  [v3 addAllAppsWithCompletionHandler:&stru_10002CC60];
}

void sub_10000F43C(int a1, char *const *a2)
{
  v2 = sub_100013B58(a1, a2, "a:d:s:");
  v3 = sub_100013D98(v2);
  v4 = [v3 applicationIdentifier];

  if (!v4)
  {
    sub_10000E618();
  }

  v5 = _SWCGetServerConnection();
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_10002CCA8];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013EF0;
  v8[3] = &unk_10002CCD0;
  v7 = v3;
  v9 = v7;
  [v6 addServiceWithServiceSpecifier:v7 completionHandler:v8];
}

void sub_10000F584(int a1, char *const *a2)
{
  v2 = sub_100013B58(a1, a2, "d:t:");
  v3 = [v2 objectForKeyedSubscript:@"d"];
  if (!v3)
  {
    sub_10000E618();
  }

  v4 = [[_SWCDomain alloc] initWithString:v3];
  if (!v4)
  {
    sub_10000E618();
  }

  v5 = [v2 objectForKeyedSubscript:@"t"];
  v6 = v5;
  if (v5 && (v7 = [v5 integerValue], v7 >= 1))
  {
    v8 = dispatch_time(0, 1000000000 * v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = dispatch_semaphore_create(0);
  v10 = objc_alloc_init(SWCDownloader);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100013FF4;
  v14[3] = &unk_10002CCF8;
  v11 = v9;
  v15 = v11;
  [(SWCDownloader *)v10 downloadAASAFileForDomain:v4 applicationIdentifier:0 completionHandler:v14];
  if (dispatch_semaphore_wait(v11, v8))
  {
    v12 = __stderrp;
    v13 = [v4 description];
    fprintf(v12, "Timed out waiting for %s\n", [v13 UTF8String]);

    exit(1);
  }
}

void sub_10000F7C0(int a1, char *const *a2)
{
  v2 = sub_100013B58(a1, a2, "f:");
  v3 = [v2 objectForKeyedSubscript:@"f"];
  if (!v3)
  {
    sub_10000E618();
  }

  v4 = [NSURL fileURLWithPath:v3 isDirectory:0];
  v11 = 0;
  v5 = [SWCDatabase loadContentsOfURL:v4 error:&v11];
  v6 = v11;

  if (!v5)
  {
    v9 = __stderrp;
    v10 = sub_100013848(v6);
    fprintf(v9, "Error loading database: %s\n", v10);
    exit(1);
  }

  v7 = __stdoutp;
  v8 = [v5 description];
  fprintf(v7, "%s\n", [v8 UTF8String]);
}

void sub_10000F8FC(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_10000F94C(int a1, char *const *a2)
{
  v14 = sub_100013B58(a1, a2, "a:d:s:");
  v2 = sub_100013D98(v14);
  v19 = 0;
  v3 = [_SWCServiceDetails serviceDetailsWithServiceSpecifier:v2 error:&v19];
  v13 = v19;
  if (!v3)
  {
    v11 = __stderrp;
    v12 = sub_100013848(v13);
    fprintf(v11, "Error getting info: %s\n", v12);
    exit(1);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = __stdoutp;
        v9 = [*(*(&v15 + 1) + 8 * i) description];
        v10 = v9;
        fprintf(v8, "%s\n", [v9 UTF8String]);
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v5);
  }
}

void sub_10000FB7C(int a1, char *const *a2)
{
  v2 = sub_100013B58(a1, a2, "u:r:");
  v3 = [v2 objectForKeyedSubscript:@"u"];
  if (v3)
  {
    v4 = [[NSURL alloc] initWithString:v3];
    v5 = [v4 scheme];
    v6 = v5;
    if (v5 && [v5 caseInsensitiveCompare:@"http"] && objc_msgSend(v6, "caseInsensitiveCompare:", @"https"))
    {
      fprintf(__stderrp, "Invalid URL scheme %s.\n", [v6 UTF8String]);

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = [v2 objectForKeyedSubscript:@"r"];
  if (v7)
  {
    v8 = [[NSURL alloc] initWithString:v7];
  }

  else
  {
    v8 = 0;
  }

  if (!v4)
  {
    sub_10000E618();
  }

  v9 = objc_alloc_init(_LSOpenConfiguration);
  [v9 setReferrerURL:v8];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000140F0;
  v11[3] = &unk_10002CCD0;
  v12 = dispatch_semaphore_create(0);
  v10 = v12;
  [LSAppLink openWithURL:v4 configuration:v9 completionHandler:v11];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_10000FDEC(int a1, char *const *a2)
{
  v2 = sub_100013B58(a1, a2, "a:d:s:");
  v3 = sub_100013D98(v2);
  v4 = _SWCGetServerConnection();
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&stru_10002CD18];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100014210;
  v7[3] = &unk_10002CCD0;
  v6 = v3;
  v8 = v6;
  [v5 removeServiceWithServiceSpecifier:v6 completionHandler:v7];
}

void sub_10000FF14(int a1, char *const *a2)
{
  v2 = sub_100013B58(a1, a2, "a:d:s:j:u:");
  v3 = sub_100013D98(v2);
  if (([v3 isFullySpecified] & 1) == 0)
  {
    sub_10000E618();
  }

  v4 = [v2 objectForKeyedSubscript:@"j"];
  v5 = [v2 objectForKeyedSubscript:@"u"];
  v6 = v5;
  if (!(v4 | v5))
  {
    fwrite("No changes specified\n", 0x15uLL, 1uLL, __stderrp);
    exit(1);
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  if (![v5 caseInsensitiveCompare:@"approved"])
  {
    v9 = 1;
    goto LABEL_15;
  }

  if (![v6 caseInsensitiveCompare:@"denied"])
  {
    v9 = 2;
    goto LABEL_15;
  }

  if (![v6 caseInsensitiveCompare:@"unspecified"])
  {
LABEL_12:
    v9 = 0;
    goto LABEL_15;
  }

  v7 = [[NSScanner alloc] initWithString:v6];
  v15 = -1;
  v8 = [v7 scanInt:&v15];
  v9 = v15;
  if (v15 < 3)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if ((v10 & 1) == 0)
  {

    fwrite("Invalid user approval state.\n", 0x1DuLL, 1uLL, __stderrp);
    exit(1);
  }

LABEL_15:
  v11 = _SWCGetServerConnection();
  v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:&stru_10002CD38];
  if (v4)
  {
    v13 = objc_opt_class();
    v14 = sub_100014370(v4, v13);
    [v12 setDetails:v14 forServiceWithServiceSpecifier:v3 completionHandler:&stru_10002CD58];
  }

  if (v6)
  {
    [v12 setUserApprovalState:v9 forServiceWithServiceSpecifier:v3 completionHandler:&stru_10002CD78];
  }
}

void sub_1000101B0(int a1, char *const *a2)
{
  v2 = sub_100013B58(a1, a2, "");
  v5 = _SWCGetServerConnection();
  v3 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&stru_10002CD98];
  v4 = xpc_fd_create(1);
  [v3 showWithVerbosity:byte_100032564 isTTY:_SWCFileIsTTY() fileDescriptor:v4 completionHandler:&stru_10002CDB8];
}

void sub_100010298(int a1, char *const *a2)
{
  v45 = sub_100013B58(a1, a2, "d:j:u:");
  v2 = [v45 objectForKeyedSubscript:@"d"];
  v3 = v2;
  v4 = @"www.example.com";
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v39 = v5;
  v44 = [[_SWCDomain alloc] initWithString:v5];
  v41 = [v45 objectForKeyedSubscript:@"j"];
  if (!v41)
  {
    sub_10000E618();
  }

  v6 = [v45 objectForKeyedSubscript:@"u"];
  if (v6)
  {
    v7 = [[NSURLComponents alloc] initWithString:v6];
    if (!v7)
    {
      sub_10000E618();
    }

    v47 = v7;
    v8 = [v7 host];
    if (v8)
    {
      v43 = [[_SWCDomain alloc] initWithString:v8];
    }

    else
    {
      v43 = 0;
    }
  }

  else
  {
    v43 = 0;
    v47 = 0;
  }

  v9 = sub_100014370(v41, 0);
  v10 = objc_autoreleasePoolPush();
  v40 = v9;
  v11 = [SWCEntry entriesForJSONObject:v9 domain:v44];
  objc_autoreleasePoolPop(v10);
  v42 = v11;
  if (!v11)
  {
    goto LABEL_42;
  }

  if (v43 && ([v44 encompassesDomain:v43] & 1) == 0)
  {
    v29 = __stderrp;
    v30 = [v44 rawValue];
    v31 = [v30 UTF8String];
    v32 = [v43 rawValue];
    fprintf(v29, "Input domain %s did not match input URL's domain %s.\n", v31, [v32 UTF8String]);

    goto LABEL_42;
  }

  if (!v47)
  {
    _SWCLogHeader();
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v33 = v11;
    v34 = [v33 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v34)
    {
      v35 = *v49;
      v36 = 1;
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v49 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v48 + 1) + 8 * i);
          if ((v36 & 1) == 0)
          {
            _SWCLogSeparator();
          }

          [v38 logToFile:__stdoutp verbosity:byte_100032564];
          v36 = 0;
        }

        v34 = [v33 countByEnumeratingWithState:&v48 objects:v57 count:16];
        v36 = 0;
      }

      while (v34);
    }

    goto LABEL_42;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (!v12)
  {

    goto LABEL_41;
  }

  v13 = 0;
  v14 = *v54;
  do
  {
    for (j = 0; j != v12; j = j + 1)
    {
      if (*v54 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v53 + 1) + 8 * j);
      v52 = 0;
      v17 = [v16 evaluateWithURLComponents:v47 auditToken:0 matchingPattern:&v52];
      v18 = v52;
      if (v17 == 100)
      {
        v26 = __stdoutp;
        v20 = [v16 serviceSpecifier];
        v21 = [v20 description];
        v27 = v21;
        [v21 UTF8String];
        v23 = [v47 URL];
        v24 = [v23 absoluteString];
        v28 = v24;
        [v24 UTF8String];
        fprintf(v26, "%s: Pattern %s blocked match.\n");
      }

      else
      {
        if (v17 != 200)
        {
          goto LABEL_25;
        }

        v19 = __stdoutp;
        v20 = [v16 serviceSpecifier];
        v21 = [v20 description];
        v22 = v21;
        [v21 UTF8String];
        v23 = [v47 URL];
        v24 = [v23 absoluteString];
        v25 = v24;
        [v24 UTF8String];
        fprintf(v19, "%s: Pattern %s matched.\n");
      }

      v13 = 1;
LABEL_25:
    }

    v12 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  }

  while (v12);

  if (v13)
  {
    goto LABEL_42;
  }

LABEL_41:
  fputs("Input JSON did not match input URL.\n", __stderrp);
LABEL_42:
}

void sub_10001096C(int a1, char *const *a2)
{
  v2 = sub_100013B58(a1, a2, "");
  v4 = _SWCGetServerConnection();
  v3 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&stru_10002CDD8];
  [v3 resetWithCompletionHandler:&stru_10002CDF8];
}

void sub_100010A08(int a1, char *const *a2)
{
  v2 = sub_100013B58(a1, a2, "");
  v3 = [&off_10002E7A0 mutableCopy];
  v4 = @"subsystem == com.apple.swc";
  if (byte_100032565 == 1)
  {
    v4 = [@"subsystem == com.apple.swc" stringByAppendingString:@" || process == swcd"];
  }

  [v3 addObject:v4];
  if (byte_100032563 == 1)
  {
    [v3 addObject:@"--level"];
    [v3 addObject:@"debug"];
  }

  v5 = [@"/usr/bin/log" UTF8String];
  fputs(v5, __stdoutp);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        fputc(32, __stdoutp);
        v11 = v10;
        v12 = [v10 UTF8String];
        fputs(v12, __stdoutp);
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  fputc(10, __stdoutp);
  sub_100014864(@"/usr/bin/log", v6);
}

void sub_100010C20(int a1, char *const *a2)
{
  v2 = sub_100013B58(a1, a2, "s:a:d:k:jp");
  v3 = [v2 objectForKeyedSubscript:@"s"];
  if (!v3 || ([v2 objectForKeyedSubscript:@"k"], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    (sub_10000E618)();
  }

  v5 = [v2 objectForKeyedSubscript:@"j"];
  v6 = [v5 BOOLValue];

  v7 = [v2 objectForKeyedSubscript:@"p"];
  v8 = [v7 BOOLValue];

  v9 = sub_100013D98(v2);
  v48 = 0;
  v10 = [_SWCServiceSettings serviceSettingsWithServiceSpecifier:v9 error:&v48];
  v11 = v48;
  v12 = v11;
  if (!v10)
  {
    v37 = __stderrp;
    v38 = sub_100013848(v11);
    fprintf(v37, "%s\n", v38);
    exit(1);
  }

  v13 = [v2 objectForKeyedSubscript:@"k"];
  v14 = [v10 objectForKey:v13 ofClass:objc_opt_class()];
  v15 = v14;
  if (!v14)
  {
    v39 = __stderrp;
    v40 = v13;
    fprintf(v39, "Value for %s not found.\n", [v13 UTF8String]);
    exit(1);
  }

  if ((v6 & v8) == 1)
  {
    v41 = fwrite("Cannot specify both -j and -p.\n", 0x1FuLL, 1uLL, __stderrp);
    sub_10000E618(v41);
  }

  if (!v6)
  {
    if (v8)
    {
      v49 = v13;
      v50 = v14;
      v22 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v46 = 0;
      v17 = [NSPropertyListSerialization dataWithPropertyList:v22 format:100 options:0 error:&v46];
      v18 = v46;

      if (!v17)
      {
        v44 = __stderrp;
        v45 = sub_100013848(v18);
        fprintf(v44, "%s\n", v45);
        exit(1);
      }

      v23 = v17;
      v24 = [v17 bytes];
      v25 = [v17 length];
      fwrite(v24, v25, 1uLL, __stdoutp);
      goto LABEL_12;
    }

    if (byte_100032563 == 1)
    {
      v26 = [NSString alloc];
      v27 = objc_opt_class();
      v28 = [(__CFString *)v15 debugDescription];
      v29 = [v26 initWithFormat:@"<%@> %@", v27, v28];

      v15 = v29;
    }

    else
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID != CFGetTypeID(v15))
      {
LABEL_20:
        v33 = __stdoutp;
        v34 = v13;
        v35 = [v13 UTF8String];
        v17 = [(__CFString *)v15 description];
        v36 = v17;
        fprintf(v33, "%s = %s\n", v35, [v17 UTF8String]);
        v18 = v12;
        goto LABEL_21;
      }

      v31 = [(__CFString *)v15 BOOLValue];
      v32 = @"false";
      if (v31)
      {
        v32 = @"true";
      }

      v28 = v15;
      v15 = v32;
    }

    goto LABEL_20;
  }

  v51 = v13;
  v52 = v14;
  v16 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  v47 = v12;
  v17 = [NSJSONSerialization dataWithJSONObject:v16 options:5 error:&v47];
  v18 = v47;

  if (!v17)
  {
    v42 = __stderrp;
    v43 = sub_100013848(v18);
    fprintf(v42, "%s\n", v43);
    exit(1);
  }

  v19 = v17;
  v20 = [v17 bytes];
  v21 = [v17 length];
  fwrite(v20, v21, 1uLL, __stdoutp);
LABEL_12:
  fputc(10, __stdoutp);
LABEL_21:
}

void sub_100011200(int a1, char *const *a2)
{
  v2 = sub_100013B58(a1, a2, "s:a:d:k:v:jp");
  v3 = [v2 objectForKeyedSubscript:@"s"];
  v4 = v3;
  if (!v3)
  {
LABEL_21:
    sub_10000E618(v3);
  }

  v5 = [v2 objectForKeyedSubscript:@"k"];
  if (!v5)
  {

    goto LABEL_21;
  }

  v6 = [v2 objectForKeyedSubscript:@"v"];

  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = [v2 objectForKeyedSubscript:@"j"];
  v8 = [v7 BOOLValue];

  v9 = [v2 objectForKeyedSubscript:@"p"];
  v10 = [v9 BOOLValue];

  v11 = sub_100013D98(v2);
  v36 = 0;
  v12 = [_SWCServiceSettings serviceSettingsWithServiceSpecifier:v11 error:&v36];
  v13 = v36;
  v14 = v13;
  if (!v12)
  {
    v26 = __stderrp;
    v27 = sub_100013848(v13);
    fprintf(v26, "%s\n", v27);
    exit(1);
  }

  v15 = [v2 objectForKeyedSubscript:@"k"];
  v16 = [v2 objectForKeyedSubscript:@"v"];
  v17 = v16;
  if ((v8 & v10) == 1)
  {
    v28 = fwrite("Cannot specify both -j and -p.\n", 0x1FuLL, 1uLL, __stderrp);
    sub_10000E618(v28);
  }

  if (v8)
  {
    v18 = [v16 dataUsingEncoding:4];
    if (!v18)
    {
      fprintf(__stderrp, "Could not create UTF-8 data representation of value %s.\n", [v17 UTF8String]);
      exit(1);
    }

    v35 = v14;
    v19 = [NSJSONSerialization JSONObjectWithData:v18 options:4 error:&v35];
    v20 = v35;

    if (!v19)
    {
      v21 = __stderrp;
      v22 = sub_100013848(v20);
      fprintf(v21, "%s\n", v22);
      exit(1);
    }
  }

  else
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    v18 = [v16 dataUsingEncoding:4];
    if (!v18)
    {
      fprintf(__stderrp, "Could not create UTF-8 data representation of value %s.\n", [v17 UTF8String]);
      exit(1);
    }

    v34 = 0;
    v19 = [NSPropertyListSerialization propertyListWithData:v18 options:0 format:0 error:&v34];
    v20 = v34;

    if (!v19)
    {
      v31 = __stderrp;
      v32 = sub_100013848(v20);
      fprintf(v31, "%s\n", v32);
      exit(1);
    }
  }

  v14 = v20;
  v17 = v19;
LABEL_14:
  v23 = +[NSNull null];

  if (v17 == v23)
  {

    v17 = 0;
  }

  else if (![NSPropertyListSerialization propertyList:v17 isValidForFormat:200])
  {
    fprintf(__stderrp, "Value %s could not be stored in a property list.\n", [v17 UTF8String]);
    exit(1);
  }

  [v12 setObject:v17 forKey:v15];
  v33 = v14;
  v24 = [v12 commitReturningError:&v33];
  v25 = v33;

  if ((v24 & 1) == 0)
  {
    v29 = __stderrp;
    v30 = sub_100013848(v25);
    fprintf(v29, "%s\n", v30);
    exit(1);
  }
}

void sub_100011720(int a1, char *const *a2)
{
  v2 = sub_100013B58(a1, a2, "u:j:");
  v3 = objc_autoreleasePoolPush();
  v4 = [v2 objectForKeyedSubscript:@"u"];
  if (v4)
  {
    v5 = [[NSURLComponents alloc] initWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v3);
  v6 = objc_autoreleasePoolPush();
  v7 = [v2 objectForKeyedSubscript:@"j"];
  v8 = v7;
  if (v7)
  {
    v9 = sub_100014370(v7, 0);

    if (_NSIsNSDictionary())
    {
      v30 = v9;
      v10 = [NSArray arrayWithObjects:&v30 count:1];
LABEL_10:

      v9 = v10;
      goto LABEL_12;
    }

    if (_NSIsNSString())
    {
      v27 = @"/";
      v28 = v9;
      v11 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v29 = v11;
      v10 = [NSArray arrayWithObjects:&v29 count:1];

      v9 = v11;
      goto LABEL_10;
    }

    if ((_NSIsNSArray() & 1) == 0)
    {
      v24 = __stderrp;
      v25 = objc_opt_class();
      Name = class_getName(v25);
      fprintf(v24, "Unexpected JSON object type %s.\n", Name);
      exit(1);
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_12:
  objc_autoreleasePoolPop(v6);
  if (!v5 || !v9)
  {
    sub_10000E618(v12);
  }

  v13 = [[_SWCPatternMatchingEngine alloc] initWithPatternDictionaries:v9];
  v14 = [v13 evaluateURLComponents:v5];
  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = [v9 objectAtIndexedSubscript:{objc_msgSend(v14, "index")}];
    v17 = [NSJSONSerialization dataWithJSONObject:v16 options:15 error:0];

    if (v17)
    {
      v18 = [[NSString alloc] initWithData:v17 encoding:4];
    }

    else
    {
      v19 = [v9 objectAtIndexedSubscript:{objc_msgSend(v14, "index")}];
      v18 = [v19 description];
    }

    objc_autoreleasePoolPop(v15);
    v20 = [v14 isExcluded];
    v21 = __stdoutp;
    if (v20)
    {
      [v14 index];
      v22 = v18;
      [v18 UTF8String];
      fprintf(v21, "Excluded by pattern at index %lu: %s\n");
    }

    else
    {
      [v14 index];
      v23 = v18;
      [v18 UTF8String];
      fprintf(v21, "Matched by pattern at index %lu: %s\n");
    }
  }

  else
  {
    fwrite("Did not match.\n", 0xFuLL, 1uLL, __stdoutp);
  }
}

void sub_100011B74(int a1, char *const *a2)
{
  v2 = sub_100013B58(a1, a2, "e:");
  v3 = objc_autoreleasePoolPush();
  v4 = [v2 objectForKeyedSubscript:@"e"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v3);
  v7 = _SWCGetServerConnection();
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&stru_10002CE18];
  v9 = v8;
  if (v5)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100014D58;
    v10[3] = &unk_10002CE78;
    v11 = v6;
    [v8 setDeveloperModeEnabled:v6 completionHandler:v10];
  }

  else
  {
    [v8 getDeveloperModeEnabledWithCompletionHandler:&stru_10002CE58];
  }
}

void sub_100011CD8(int a1, char *const *a2)
{
  v14 = +[_SWCTrackingDomainInfo lastDatabaseUpdate];
  v4 = sub_100013B58(a1, a2, "pz:");
  v5 = [v4 objectForKeyedSubscript:@"p"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = __stdoutp;
    [v14 timeIntervalSince1970];
    fprintf(v7, "%lli\n", v8);
  }

  else
  {
    v9 = [v4 objectForKeyedSubscript:@"z"];
    if (v9)
    {
      v10 = [NSTimeZone timeZoneWithAbbreviation:v9];
      if (!v10)
      {
        v10 = [NSTimeZone timeZoneWithName:v9];
        if (!v10)
        {
          sub_10000E618(0);
        }
      }
    }

    else
    {
      v10 = +[NSTimeZone systemTimeZone];
    }

    v11 = objc_alloc_init(NSISO8601DateFormatter);
    [v11 setTimeZone:v10];
    v12 = __stdoutp;
    v13 = [v11 stringFromDate:v14];
    fprintf(v12, "%s\n", [v13 UTF8String]);
  }
}

void sub_100011E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

uint64_t sub_100011ED4(uint64_t a1)
{
  sub_100014E90(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100011F10()
{
  getprogname();
  sub_100013004();
  fputc(32, __stderrp);
  sub_100013004();
  v0 = +[_SWCPrefs sharedPrefs];
  [v0 isAppleInternal];

  sub_100013004();
  sub_100013004();
  sub_100013004();
  sub_100013004();
  sub_100013080("--leaks");
}

void sub_100012AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v16 - 80) = v15;
  sub_1000134E0((v16 - 80));
  _Unwind_Resume(a1);
}

void sub_100013004()
{
  v0 = [NSString stringWithUTF8String:?];
  _SWCLogObject();
}

void sub_1000134E0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_100013628(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1000061B0();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

uint64_t sub_10001373C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10002CB60;
  a2[1] = v2;
  return result;
}

uint64_t sub_100013778(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == 0x800000010001F539 || ((v3 & 0x800000010001F539 & 0x8000000000000000) != 0) != __OFSUB__(v3, 0x800000010001F539) && !strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), (0x800000010001F539 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000137EC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = __stderrp;
  v4 = sub_100013848(v2);
  fprintf(v3, "Error adding all apps: %s\n", v4);
  exit(1);
}

id sub_100013848(void *a1)
{
  v1 = a1;
  if (byte_100032563 == 1)
  {
    v2 = objc_alloc_init(NSMutableString);
    v3 = [v1 domain];
    [v2 appendFormat:@"%@ %lli {", v3, objc_msgSend(v1, "code")];

    v4 = [v1 userInfo];
    v5 = [v4 count];

    if (v5)
    {
      v16[0] = 0;
      v16[1] = v16;
      v16[2] = 0x2020000000;
      v17 = 1;
      v6 = [v1 userInfo];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100013CB8;
      v13[3] = &unk_10002CC88;
      v15 = v16;
      v7 = v2;
      v14 = v7;
      [v6 enumerateKeysAndObjectsUsingBlock:v13];

      [v7 appendString:@"\n}"];
      _Block_object_dispose(v16, 8);
    }

    else
    {
      [v2 appendString:@" }"];
    }

    v10 = [v2 UTF8String];
  }

  else
  {
    v8 = +[_SWCPrefs sharedPrefs];
    v9 = [v8 isAppleInternal];

    if (v9)
    {
      [v1 description];
    }

    else
    {
      [v1 localizedDescription];
    }
    v2 = ;
    v10 = [v2 UTF8String];
  }

  v11 = v10;

  return v11;
}

void sub_100013AA8(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v6 = a3;
  if (!v3)
  {
    v4 = __stderrp;
    v5 = sub_100013848(v6);
    fprintf(v4, "Error adding all apps: %s\n", v5);
    exit(1);
  }

  fwrite("Added all apps.\n", 0x10uLL, 1uLL, __stdoutp);
}

id sub_100013B58(int a1, char *const *a2, const char *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(NSMutableDictionary);
  while (1)
  {
    v8 = getopt(a1, a2, a3);
    if (v8 == -1)
    {
      break;
    }

    if (v8 == 63)
    {
      sub_10000E618();
    }

    v13 = v8;
    v9 = [[NSString alloc] initWithCharacters:&v13 length:1];
    v10 = v9;
    if (optarg)
    {
      v11 = [NSString stringWithUTF8String:?];
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v11 = &__kCFBooleanTrue;
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    if (!v11)
    {
LABEL_14:
      sub_10000E618();
    }

    [v7 setObject:v11 forKeyedSubscript:v10];
  }

  objc_autoreleasePoolPop(v6);

  return v7;
}

void sub_100013CB8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  v6 = *(a1 + 32);
  v7 = [v5 debugDescription];
  [v6 appendFormat:@"\n\t%@: %@", v8, v7];

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

id sub_100013D98(void *a1)
{
  v1 = a1;
  v2 = [_SWCServiceSpecifier alloc];
  v3 = [v1 objectForKeyedSubscript:@"s"];
  v4 = [v1 objectForKeyedSubscript:@"a"];
  v5 = [v1 objectForKeyedSubscript:@"d"];
  v6 = [v2 initWithServiceType:v3 applicationIdentifier:v4 domain:v5];

  return v6;
}

void sub_100013E94(id a1, NSError *a2)
{
  v2 = a2;
  v3 = __stderrp;
  v4 = sub_100013848(v2);
  fprintf(v3, "Error adding app: %s\n", v4);
  exit(1);
}

void sub_100013EF0(uint64_t a1, int a2, void *a3)
{
  v12 = a3;
  v5 = *(a1 + 32);
  if (!a2)
  {
    v8 = __stderrp;
    v9 = [v5 applicationIdentifier];
    v10 = [v9 UTF8String];
    v11 = sub_100013848(v12);
    fprintf(v8, "Error adding app %s: %s\n", v10, v11);

    exit(1);
  }

  v6 = __stdoutp;
  v7 = [v5 applicationIdentifier];
  fprintf(v6, "Added app %s.\n", [v7 UTF8String]);
}

void sub_100013FF4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v11 = a2;
  v6 = a4;
  if (!v11)
  {
    v9 = __stderrp;
    v10 = sub_100013848(v6);
    fprintf(v9, "%s\n", v10);
    exit(1);
  }

  v7 = __stdoutp;
  v8 = [v11 description];
  fprintf(v7, "%s\n", [v8 UTF8String]);

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000140F0(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  if (!a2)
  {
    v5 = __stderrp;
    v6 = sub_100013848(v7);
    fprintf(v5, "%s\n", v6);
    exit(1);
  }

  fwrite("SUCCESS\n", 8uLL, 1uLL, __stdoutp);
  sleep(1u);
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000141B4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = __stderrp;
  v4 = sub_100013848(v2);
  fprintf(v3, "Error adding app: %s\n", v4);
  exit(1);
}

void sub_100014210(uint64_t a1, int a2, void *a3)
{
  v12 = a3;
  v5 = *(a1 + 32);
  if (!a2)
  {
    v8 = __stderrp;
    v9 = [v5 applicationIdentifier];
    v10 = [v9 UTF8String];
    v11 = sub_100013848(v12);
    fprintf(v8, "Error removing app %s: %s\n", v10, v11);

    exit(1);
  }

  v6 = __stdoutp;
  v7 = [v5 applicationIdentifier];
  fprintf(v6, "Removed app %s.\n", [v7 UTF8String]);
}

void sub_100014314(id a1, NSError *a2)
{
  v2 = a2;
  v3 = __stderrp;
  v4 = sub_100013848(v2);
  fprintf(v3, "Error setting service options: %s\n", v4);
  exit(1);
}

id sub_100014370(void *a1, objc_class *a2)
{
  v3 = a1;
  v15 = 0;
  v4 = [[NSData alloc] initWithContentsOfFile:v3 options:1 error:&v15];
  v5 = v15;
  if (v4)
  {
    v6 = +[SWCSecurityGuard sharedSecurityGuard];
    v14 = v5;
    v7 = [v6 JSONObjectWithSignedJSONData:v4 error:&v14];
    v8 = v5;
    v5 = v14;
  }

  else
  {
    v6 = [v3 dataUsingEncoding:4];
    if (!v6)
    {
      v12 = __stderrp;
      v13 = sub_100013848(v5);
      fprintf(v12, "Error reading JSON file: %s\n", v13);
      exit(1);
    }

    v8 = +[SWCSecurityGuard sharedSecurityGuard];
    v7 = [v8 JSONObjectWithSignedJSONData:v6 error:0];
  }

  if (!v7)
  {
    v10 = __stderrp;
    sub_100013848(v5);
    fprintf(v10, "Error parsing JSON: %s\n");
    goto LABEL_13;
  }

  if (a2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = __stderrp;
    class_getName(a2);
    fprintf(v11, "Supplied JSON was decoded to the wrong class. Expected to decode to %s.\n");
LABEL_13:
    exit(1);
  }

  return v7;
}

void sub_100014588(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v6 = a3;
  if (!v3)
  {
    v4 = __stderrp;
    v5 = sub_100013848(v6);
    fprintf(v4, "Error setting service details: %s\n", v5);
    exit(1);
  }

  fwrite("Set service details.\n", 0x15uLL, 1uLL, __stdoutp);
}

void sub_100014638(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v6 = a3;
  if (!v3)
  {
    v4 = __stderrp;
    v5 = sub_100013848(v6);
    fprintf(v4, "Error setting service flags: %s\n", v5);
    exit(1);
  }

  fwrite("Set user approval state.\n", 0x19uLL, 1uLL, __stdoutp);
}

void sub_1000146E8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = __stderrp;
  v4 = sub_100013848(v2);
  fprintf(v3, "Error showing SWC state: %s\n", v4);
  exit(1);
}

void sub_100014748(id a1, NSError *a2)
{
  v2 = a2;
  v3 = __stderrp;
  v4 = sub_100013848(v2);
  fprintf(v3, "Error resetting swcd: %s", v4);
  exit(1);
}

void sub_1000147A4(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v6 = a3;
  if (!v3)
  {
    v4 = __stderrp;
    v5 = sub_100013848(v6);
    fprintf(v4, "Error resetting swcd: %s\n", v5);
    exit(1);
  }

  [NSThread sleepForTimeInterval:1.0];
  fwrite("Reset swcd.\n", 0xCuLL, 1uLL, __stdoutp);
}

void sub_100014864(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  memset(v24, 0, sizeof(v24));
  *v23 = [v3 fileSystemRepresentation];
  sub_100014B1C(v24, v23);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        *v23 = [*(*(&v19 + 1) + 8 * i) UTF8String];
        sub_100014B1C(v24, v23);
      }

      v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v6);
  }

  *v23 = 0;
  sub_100014B1C(v24, v23);
  v23[0] = 0;
  v9 = v24[0];
  v10 = *v24[0];
  v11 = _NSGetEnviron();
  if (posix_spawn(v23, v10, 0, 0, v9, *v11))
  {
    v15 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    v16 = __stderrp;
    v17 = sub_100013848(v15);
    fprintf(v16, "Error executing helper tool: %s\n", v17);
    exit(1);
  }

  v12 = sigblock(0x80000);
  v13 = signal(2, 1);
  v14 = signal(3, 1);
  v18 = 0;
  waitpid(v23[0], &v18, 0);
  sigsetmask(v12);
  signal(2, v13);
  signal(3, v14);
  operator delete(v9);
}

void sub_100014AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100014B1C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_1000061B0();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_1000061B0();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_100014C1C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = __stderrp;
  v4 = sub_100013848(v2);
  fprintf(v3, "Error setting developer mode: %s\n", v4);
  exit(1);
}

void sub_100014C78(id a1, NSNumber *a2, NSError *a3)
{
  v10 = a2;
  v4 = a3;
  if (!v10)
  {
    v8 = __stderrp;
    v9 = sub_100013848(v4);
    fprintf(v8, "Error getting developer mode: %s\n", v9);
    exit(1);
  }

  v5 = __stdoutp;
  v6 = [(NSNumber *)v10 BOOLValue];
  v7 = "disabled";
  if (v6)
  {
    v7 = "enabled";
  }

  fprintf(v5, "Developer mode is %s.\n", v7);
}

void sub_100014D58(uint64_t a1, int a2, void *a3)
{
  v10 = a3;
  if (!a2)
  {
    if ([v10 code] == 3072 && (objc_msgSend(v10, "domain"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqual:", NSCocoaErrorDomain), v6, v7))
    {
      fwrite("Operation cancelled.\n", 0x15uLL, 1uLL, __stderrp);
    }

    else
    {
      v8 = __stderrp;
      v9 = sub_100013848(v10);
      fprintf(v8, "Error setting developer mode: %s\n", v9);
    }

    exit(1);
  }

  if (*(a1 + 32))
  {
    v5 = "enabled";
  }

  else
  {
    v5 = "disabled";
  }

  fprintf(__stdoutp, "Developer mode %s.\n", v5);
}

uint64_t sub_100014E90(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_100014F10(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_100014FA8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4;
        v4 -= 8;
        sub_100014E90((v6 - 5));
        if (*(v6 - 41) < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unint64_t sub_100015064(uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v4 = 0x9DDFEA08EB382D69;
    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v32 + v35 + v41;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v41 + v33 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v34 + v36 + v47;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v59 + v57 + v68 + v58;
      v50 = __ROR8__(v59 + v57 + v68, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    v71 = 0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)));
    goto LABEL_13;
  }

  if (a2 > 0x10)
  {
    v26 = a1[1];
    v27 = 0xB492B66FBE98F273 * *a1;
    v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
    v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
    v23 = 0x9DDFEA08EB382D69;
    v30 = 0x9DDFEA08EB382D69 * ((v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v29);
    v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
    v25 = 0x9DDFEA08EB382D69 * v31;
    return (v25 ^ (v25 >> 47)) * v23;
  }

  if (a2 < 9)
  {
    if (a2 >= 4)
    {
      v73 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v74 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v73);
      v31 = v73 ^ (v74 >> 47) ^ v74;
      goto LABEL_8;
    }

    v4 = 0x9AE16A3B2F90404FLL;
    if (!a2)
    {
      return v4;
    }

    v71 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
LABEL_13:
    v4 *= v71 ^ (v71 >> 47);
    return v4;
  }

  v2 = *(a1 + a2 - 8);
  v3 = __ROR8__(v2 + a2, a2);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
}

BOOL sub_100015498(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void sub_10001550C(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    sub_1000061B0();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void sub_100015710(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_10001576C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_100015FF0(id a1)
{
  qword_100032568 = [[SWCDatabase alloc] _initShared];

  _objc_release_x1();
}

void sub_1000162EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[3])
  {
    [v2 saveReturningError:0];
    v3 = (*(a1 + 32) + 24);

    sub_10001AF38(v3);
  }
}

void sub_1000163E4(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("SWC database queue", v3);
  v2 = qword_100032578;
  qword_100032578 = v1;
}

void sub_100016AE4(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v5 = [a2 domain];
    if ([*(a1 + 32) isEqual:?])
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void sub_100016D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100016D8C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100016DA4(uint64_t a1, id obj, _BYTE *a3)
{
  v5 = *(*(a1 + 40) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (!v7)
  {
LABEL_6:

    objc_storeStrong(v6, obj);
    return;
  }

  if (([*(a1 + 32) isWildcard] & 1) == 0)
  {
    *a3 = 1;
    return;
  }

  v16 = [obj domain];
  v9 = [v16 host];
  v10 = [v9 length];
  v11 = [*(*(*(a1 + 40) + 8) + 40) domain];
  v12 = [v11 host];
  if (v10 > [v12 length])
  {
    v13 = [obj domain];
    v14 = [*(*(*(a1 + 40) + 8) + 40) domain];
    v15 = [v13 encompassesDomain:v14];

    if (!v15)
    {
      return;
    }

    v6 = (*(*(a1 + 40) + 8) + 40);
    goto LABEL_6;
  }
}

void sub_100017498(uint64_t a1, void *a2)
{
  [a2 setLastCheckedDate:*(a1 + 32)];
  [a2 setLastError:0];
  [a2 setRetryCount:0];
  v4 = [*(a1 + 40) indexOfObject:a2];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([a2 isDownloadable])
    {
      v5 = [a2 fields];
      *v5 = *v5 & 0xFFF3 | 8;
    }
  }

  else
  {
    v9 = [*(a1 + 40) objectAtIndexedSubscript:v4];
    v6 = [a2 fields];
    *v6 = *v6 & 0xFFF3 | 4;
    v7 = [v9 patterns];
    [a2 setPatterns:v7];
    v8 = [v9 substitutionVariables];
    [a2 setSubstitutionVariables:v8];
  }
}

void sub_100017940(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [a2 serviceType];
  LODWORD(v4) = [v4 isEqual:v5];

  if (v4)
  {
    v6 = *(a1 + 40);

    [v6 addObject:a2];
  }
}

void sub_100017C94(uint64_t a1, void *a2)
{
  v4 = [a2 applicationIdentifier];
  if (v4)
  {
  }

  else
  {
    v5 = [a2 domain];

    if (!v5)
    {
      return;
    }
  }

  v6 = [*(a1 + 32) entryMatchingServiceSpecifier:a2];

  if (!v6)
  {
    if (qword_100032590 != -1)
    {
      dispatch_once(&qword_100032590, &stru_10002CFC8);
    }

    v7 = qword_100032588;
    if (os_log_type_enabled(qword_100032588, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Will remove settings for service specifier %@ because there are no more service entries matching it", &v8, 0xCu);
    }

    [*(a1 + 40) addObject:a2];
  }
}

uint64_t sub_1000188C0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 40);
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0 || (result = [NSPropertyListSerialization propertyList:a3 isValidForFormat:200], (result & 1) == 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  return result;
}

void sub_100019300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100019338(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v6 = 0;
    v3 = [WeakRetained saveReturningError:&v6];
    v4 = v6;
    if ((v3 & 1) == 0)
    {
      if (qword_100032590 != -1)
      {
        dispatch_once(&qword_100032590, &stru_10002CFC8);
      }

      v5 = qword_100032588;
      if (os_log_type_enabled(qword_100032588, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v8 = v4;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error saving SWC database: %@", buf, 0xCu);
      }
    }
  }
}

void sub_100019960(id a1)
{
  qword_100032588 = os_log_create(&_SWCLogSubsystem, "db");

  _objc_release_x1();
}

void sub_1000199F8(id a1)
{
  qword_100032598 = [[SWCSecurityGuard alloc] _init];

  _objc_release_x1();
}

void sub_10001AC44(id a1)
{
  qword_1000325A8 = os_log_create(&_SWCLogSubsystem, "security");

  _objc_release_x1();
}

void sub_10001AC88(dispatch_object_t *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  os_unfair_lock_lock(&stru_1000325B8);
  v6 = v5;
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = dispatch_time(0, (v7 * 1000000000.0));
  if (*a1)
  {
    dispatch_suspend(*a1);
  }

  else
  {
    v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v10);
    v14 = *a1;
    *a1 = v13;

    if (!*a1)
    {
      v23 = +[NSAssertionHandler currentHandler];
      v24 = [NSString stringWithUTF8String:"void scheduleTimerNoLock(SWCTimer &, const SWCTimerSettings *, void (^__strong)())"];
      [v23 handleFailureInFunction:v24 file:@"SWCTimer.mm" lineNumber:51 description:@"Unexpected failure to allocate a libdispatch timer source"];
    }
  }

  v15 = (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v16 = ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v8 >= 0.0)
  {
    v16 = 0;
    v15 = 0;
  }

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v15 = 1;
  }

  v17 = (*&v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v15;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v17 = 1;
  }

  if (v17 | v16)
  {
    v18 = -1;
  }

  else
  {
    v18 = (v8 * 1000000000.0);
  }

  dispatch_source_set_timer(*a1, v12, v18, (v9 * 1000000000.0));
  v19 = *a1;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3321888768;
  v25[2] = sub_10001AF94;
  v25[3] = &unk_10002D030;
  v26 = v6;
  v27 = v18;
  v28 = a1;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v33 = v11;
  v20 = v6;
  v21 = v10;
  v22 = v11;
  dispatch_source_set_event_handler(v19, v25);
  dispatch_resume(*a1);

  os_unfair_lock_unlock(&stru_1000325B8);
}

void sub_10001AF38(dispatch_source_t *a1)
{
  os_unfair_lock_lock(&stru_1000325B8);
  if (*a1)
  {
    dispatch_source_cancel(*a1);
    v2 = *a1;
    *a1 = 0;
  }

  os_unfair_lock_unlock(&stru_1000325B8);
}

void sub_10001AF94(void *a1)
{
  (*(a1[4] + 16))();
  if (a1[5] == -1)
  {
    v2 = a1[6];

    sub_10001AF38(v2);
  }
}

id sub_10001AFF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v4;
  *(a1 + 80) = *(a2 + 80);
  result = *(a2 + 88);
  *(a1 + 88) = result;
  return result;
}

void sub_10001B03C(uint64_t a1)
{
  v2 = *(a1 + 80);
}

void operator delete(void *__p)
{
    ;
  }
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