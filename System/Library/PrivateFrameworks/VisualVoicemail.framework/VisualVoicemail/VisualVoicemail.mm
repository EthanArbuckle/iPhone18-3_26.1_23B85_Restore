void sub_10000254C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000025A8()
{
  if (qword_10010D708 != -1)
  {
    sub_10009B450();
  }

  v1 = qword_10010D700;

  return v1;
}

id sub_1000025EC()
{
  if (qword_10010D780 != -1)
  {
    sub_10009C0C8();
  }

  v1 = qword_10010D778;

  return v1;
}

id sub_100002630()
{
  if (qword_10010D798 != -1)
  {
    sub_10009C0DC();
  }

  v1 = qword_10010D790;

  return v1;
}

id sub_100002674()
{
  if (qword_10010D7F0 != -1)
  {
    sub_10009C460();
  }

  v1 = qword_10010D7E8;

  return v1;
}

id sub_1000026B8()
{
  if (qword_10010D800 != -1)
  {
    sub_10009C5A4();
  }

  v1 = qword_10010D7F8;

  return v1;
}

id sub_1000026FC()
{
  if (qword_10010D858 != -1)
  {
    sub_10009C6DC();
  }

  v1 = qword_10010D850;

  return v1;
}

id sub_100002740()
{
  if (qword_10010D878 != -1)
  {
    sub_10009CEC8();
  }

  v1 = qword_10010D870;

  return v1;
}

id sub_100002784()
{
  if (qword_10010D8B8 != -1)
  {
    sub_10009CEF0();
  }

  v1 = qword_10010D8B0;

  return v1;
}

id sub_1000027C8()
{
  if (qword_10010D8C8 != -1)
  {
    sub_10009CF18();
  }

  v1 = qword_10010D8C0;

  return v1;
}

id sub_10000280C()
{
  if (qword_10010D908 != -1)
  {
    sub_10009D0D4();
  }

  v1 = qword_10010D900;

  return v1;
}

id sub_100002850()
{
  if (qword_10010D968 != -1)
  {
    sub_10009D720();
  }

  v1 = qword_10010D960;

  return v1;
}

id sub_100002894()
{
  if (qword_10010DA10 != -1)
  {
    sub_10009E320();
  }

  v1 = qword_10010DA08;

  return v1;
}

id sub_10000294C()
{
  if (qword_10010D738 != -1)
  {
    sub_10009B4F8();
  }

  v1 = qword_10010D730;

  return v1;
}

void sub_100002990(uint64_t a1)
{
  v2 = [*(a1 + 32) labelUUIDToService];
  v3 = [v2 allValues];

  if ([v3 count] || (objc_msgSend(*(a1 + 32), "telephonyClient"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "subscriptions"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4, v6))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          *(*(*(a1 + 40) + 8) + 24) |= [*(*(&v20 + 1) + 8 * i) isSubscribed];
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v34 count:16];
      }

      while (v9);
    }

    v12 = sub_100002850();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(*(a1 + 40) + 8) + 24))
      {
        v13 = @"subscribed";
      }

      else
      {
        v13 = @"not subscribed";
      }

      v14 = [v7 count];
      v15 = [*(a1 + 32) telephonyClient];
      v16 = [v15 contexts];
      v17 = [v16 subscriptions];
      v18 = [v17 count];
      *buf = 136316162;
      v25 = "";
      v26 = 2080;
      v27 = "";
      v28 = 2112;
      v29 = v13;
      v30 = 2048;
      v31 = v14;
      v32 = 2048;
      v33 = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sVoicemail state is %@; services %lu, subscriptions %lu", buf, 0x34u);
    }
  }

  else
  {
    v19 = sub_100002850();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = "";
      v26 = 2080;
      v27 = "";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sVoicemail state has been changed to subscribed; services and subscriptions arrays are empty", buf, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_100002D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002D64(uint64_t a1)
{
  v2 = [*(a1 + 32) cached_subscriptions];

  if (!v2)
  {
    v3 = [*(a1 + 32) fetchSubscriptions];
    [*(a1 + 32) setCached_subscriptions:v3];
  }

  v4 = [*(a1 + 32) cached_subscriptions];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t sub_100002EBC()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  result = proc_pidpath(v0, buffer, 0x1000u);
  if (result < 1)
  {
    *(v2 + 23) = 1;
    *v2 = 63;
  }

  else
  {
    strlen(buffer);
    return ctu::basename();
  }

  return result;
}

void sub_100003088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000030A0(uint64_t a1)
{
  v2 = [*(a1 + 32) cached_contexts];

  if (!v2)
  {
    v3 = [*(a1 + 32) fetchContexts];
    [*(a1 + 32) setCached_contexts:v3];

    [*(a1 + 32) performSelectorOnDelegates:"activeSubscriptionsDidChange"];
  }

  v4 = [*(a1 + 32) cached_contexts];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1000031E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003200(uint64_t a1)
{
  v2 = [*(a1 + 32) labelUUIDToService];
  v3 = [v2 allValues];

  if ([v3 count] || (objc_msgSend(*(a1 + 32), "telephonyClient"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "subscriptions"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4, v6))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          *(*(*(a1 + 40) + 8) + 24) |= [*(*(&v20 + 1) + 8 * i) isOnline];
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v34 count:16];
      }

      while (v9);
    }

    v12 = sub_100002850();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(*(a1 + 40) + 8) + 24))
      {
        v13 = @"online";
      }

      else
      {
        v13 = @"offline";
      }

      v14 = [v7 count];
      v15 = [*(a1 + 32) telephonyClient];
      v16 = [v15 contexts];
      v17 = [v16 subscriptions];
      v18 = [v17 count];
      *buf = 136316162;
      v25 = "";
      v26 = 2080;
      v27 = "";
      v28 = 2112;
      v29 = v13;
      v30 = 2048;
      v31 = v14;
      v32 = 2048;
      v33 = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sVoicemail state is %@; services %lu, subscriptions %lu", buf, 0x34u);
    }
  }

  else
  {
    v19 = sub_100002850();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = "";
      v26 = 2080;
      v27 = "";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sVoicemail state has been changed to online; services and subscriptions arrays are empty", buf, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_100003570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003588(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) labelUUIDToService];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        *(*(*(a1 + 40) + 8) + 24) |= [*(*(&v8 + 1) + 8 * v7) isSyncInProgress];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_10000385C(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) labelUUIDToService];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(*(a1 + 40) + 8) + 24);
        v9 = [*(*(&v11 + 1) + 8 * v7) mailboxUsage];
        if (v8 <= v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = v8;
        }

        *(*(*(a1 + 40) + 8) + 24) = v10;
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void sub_100003DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004EA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100004F64(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 16);
  v4 = (v2 + 16);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
  }
}

void sub_100005048(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  v4 = v2;
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = &_dispatch_main_q;
  }

  [v2 setObject:v3 forKey:*(a1 + 48)];
}

void sub_100005140(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_100005270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100005288(void *a1)
{
  result = [*(a1[4] + 32) containsObject:a1[5]];
  if ((result & 1) == 0)
  {
    result = [*(a1[4] + 32) addObject:a1[5]];
    *(*(a1[6] + 8) + 24) = 1;
  }

  return result;
}

void sub_100005450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005468(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 16))
  {
    v3 = [*(v1 + 32) firstObject];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (v6)
    {
      objc_storeStrong((*(a1 + 32) + 16), v6);
      v7 = *(*(a1 + 32) + 32);
      v8 = *(*(*(a1 + 40) + 8) + 40);

      [v7 removeObject:v8];
    }
  }
}

void sub_1000056C8(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) isEqualToRequest:*(a1 + 40)])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;
  }
}

void sub_100005720(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * v5);
        v7 = [*(a1 + 32) delegateToQueue];
        v8 = [v7 objectForKey:v6];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000058D0;
        block[3] = &unk_1000ED4F0;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v6;
        block[5] = v9;
        v13 = v10;
        v14 = *(a1 + 48);
        dispatch_async(v8, block);

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }
}

uint64_t sub_1000058D0(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];

    return [v4 requestController:v5 didReceiveResponse:v6 forRequest:v7];
  }

  return result;
}

void sub_100005AFC(id a1)
{
  v1 = objc_alloc_init(VMAWDReporter);
  v2 = qword_10010D6D0;
  qword_10010D6D0 = v1;
}

id sub_100005DEC(uint64_t a1)
{
  v4 = @"serviceState";
  v1 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) serviceState]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_100006048(uint64_t a1)
{
  v7[0] = @"slotID";
  v2 = [NSNumber numberWithUnsignedInt:*(a1 + 48)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = v2;
  v8[1] = v3;
  v7[1] = @"mcc";
  v7[2] = @"mnc";
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

id sub_1000064FC(uint64_t a1)
{
  v4 = @"duration";
  v1 = [NSNumber numberWithInt:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_100006798(uint64_t a1)
{
  v6[0] = @"accountType";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 32) accountType]);
  v6[1] = @"notificationType";
  v7[0] = v2;
  v3 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 32) notificationType]);
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

id sub_1000069A4(uint64_t a1)
{
  v4 = @"accurate";
  v1 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) accurate]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_100006B6C(uint64_t a1)
{
  v4 = @"status";
  v1 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) status]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_100006D34(uint64_t a1)
{
  v4 = @"status";
  v1 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) status]);
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_100006F44(uint64_t a1)
{
  v6[0] = @"status";
  v2 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) status]);
  v6[1] = @"reason";
  v7[0] = v2;
  v3 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) failureReason]);
  v7[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

id sub_1000071EC(uint64_t a1)
{
  v11[0] = *(a1 + 32);
  v10[0] = @"system_locale";
  v10[1] = @"transcription_successful";
  v2 = [NSNumber numberWithBool:*(a1 + 72)];
  v11[1] = v2;
  v10[2] = @"transcription_failure_reason";
  v3 = *(a1 + 40);
  if (v3)
  {
    sub_10000737C([v3 intValue]);
  }

  else
  {
    +[NSNull null];
  }
  v4 = ;
  v11[2] = v4;
  v10[3] = @"transcription_asset_locale";
  v5 = *(a1 + 48);
  v6 = v5;
  if (!v5)
  {
    v6 = +[NSNull null];
  }

  v11[3] = v6;
  v10[4] = @"transcription_confidence";
  if (*(a1 + 56))
  {
    [*(a1 + 64) prepareConfidenceValue:?];
  }

  else
  {
    +[NSNull null];
  }
  v7 = ;
  v11[4] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:5];

  if (!v5)
  {
  }

  return v8;
}

id sub_10000737C(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [NSString stringWithFormat:@"(Unknown VMTranscriptionFailureReason: %lu)", a1];
  }

  else
  {
    v2 = *(&off_1000ED6C0 + a1);
  }

  return v2;
}

int64_t sub_100007790(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  [v4 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  if (v7 >= v8)
  {
    [v4 doubleValue];
    v11 = v10;
    [v5 doubleValue];
    if (v11 <= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

id sub_10000781C(uint64_t a1)
{
  v39[0] = *(a1 + 32);
  v38[0] = @"system_locale";
  v38[1] = @"transcription_successful";
  v37 = [NSNumber numberWithBool:*(a1 + 112)];
  v39[1] = v37;
  v38[2] = @"transcription_failure_reason";
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_10000737C([v2 intValue]);
  }

  else
  {
    +[NSNull null];
  }
  v36 = ;
  v39[2] = v36;
  v38[3] = @"transcription_asset_locale";
  v3 = *(a1 + 48);
  v35 = v3;
  if (!v3)
  {
    v3 = +[NSNull null];
  }

  v24 = v3;
  v39[3] = v3;
  v38[4] = @"transcription_confidence";
  if (*(a1 + 56))
  {
    [*(a1 + 64) prepareConfidenceValue:?];
  }

  else
  {
    +[NSNull null];
  }
  v34 = ;
  v39[4] = v34;
  v38[5] = @"language_id_successful";
  v33 = [NSNumber numberWithBool:*(a1 + 113)];
  v39[5] = v33;
  v38[6] = @"language_id_failure_reason";
  v4 = *(a1 + 72);
  if (v4)
  {
    sub_100007C90([v4 intValue]);
  }

  else
  {
    +[NSNull null];
  }
  v32 = ;
  v39[6] = v32;
  v38[7] = @"language_id_is_english";
  v31 = [NSNumber numberWithBool:*(a1 + 114)];
  v39[7] = v31;
  v38[8] = @"language_id_dominant_locale";
  v5 = *(a1 + 80);
  v30 = v5;
  if (!v5)
  {
    v5 = +[NSNull null];
  }

  v39[8] = v5;
  v38[9] = @"language_id_dominant_locale_confidence";
  if (*(a1 + 88))
  {
    [*(a1 + 64) prepareConfidenceValue:{v5, v24}];
  }

  else
  {
    [NSNull null:v5];
  }
  v29 = ;
  v39[9] = v29;
  v38[10] = @"language_id_alternative_locale1";
  v28 = [*(a1 + 96) objectAtIndexedSubscript:1];
  v39[10] = v28;
  v38[11] = @"language_id_alternative_locale1_confidence";
  v6 = *(a1 + 64);
  v7 = *(a1 + 104);
  v27 = [*(a1 + 96) objectAtIndexedSubscript:1];
  v8 = [v7 objectForKeyedSubscript:v27];
  v9 = [v6 prepareConfidenceValue:v8];
  v39[11] = v9;
  v38[12] = @"language_id_alternative_locale2";
  v10 = [*(a1 + 96) objectAtIndexedSubscript:2];
  v39[12] = v10;
  v38[13] = @"language_id_alternative_locale2_confidence";
  v11 = *(a1 + 64);
  v12 = *(a1 + 104);
  v13 = [*(a1 + 96) objectAtIndexedSubscript:2];
  v14 = [v12 objectForKeyedSubscript:v13];
  v15 = [v11 prepareConfidenceValue:v14];
  v39[13] = v15;
  v38[14] = @"language_id_alternative_locale3";
  v16 = [*(a1 + 96) objectAtIndexedSubscript:3];
  v39[14] = v16;
  v38[15] = @"language_id_alternative_locale3_confidence";
  v17 = *(a1 + 64);
  v18 = *(a1 + 104);
  v19 = [*(a1 + 96) objectAtIndexedSubscript:3];
  v20 = [v18 objectForKeyedSubscript:v19];
  v21 = [v17 prepareConfidenceValue:v20];
  v39[15] = v21;
  v26 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:16];

  if (!v30)
  {
  }

  if (!v35)
  {
  }

  return v26;
}

id sub_100007C90(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [NSString stringWithFormat:@"(Unknown VMLanguageIDFailureReason: %lu)", a1];
  }

  else
  {
    v2 = *(&off_1000ED6F0 + a1);
  }

  return v2;
}

id sub_100007D00(uint64_t a1)
{
  v19[0] = *(a1 + 32);
  v18[0] = @"system_locale";
  v18[1] = @"transcription_successful";
  v17 = [NSNumber numberWithBool:*(a1 + 96)];
  v19[1] = v17;
  v18[2] = @"transcription_failure_reason";
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_10000737C([v2 intValue]);
  }

  else
  {
    +[NSNull null];
  }
  v15 = ;
  v19[2] = v15;
  v18[3] = @"transcription_asset_locale";
  v3 = *(a1 + 48);
  v4 = v3;
  if (!v3)
  {
    v4 = [NSNull null:v15];
  }

  v19[3] = v4;
  v18[4] = @"transcription_confidence";
  if (*(a1 + 56))
  {
    [*(a1 + 64) prepareConfidenceValue:?];
  }

  else
  {
    +[NSNull null];
  }
  v5 = ;
  v19[4] = v5;
  v18[5] = @"language_id_successful";
  v6 = [NSNumber numberWithBool:*(a1 + 97), v15];
  v19[5] = v6;
  v18[6] = @"language_id_failure_reason";
  v7 = *(a1 + 72);
  if (v7)
  {
    sub_100007C90([v7 intValue]);
  }

  else
  {
    +[NSNull null];
  }
  v8 = ;
  v19[6] = v8;
  v18[7] = @"language_id_is_english";
  v9 = [NSNumber numberWithBool:*(a1 + 98)];
  v19[7] = v9;
  v18[8] = @"language_id_dominant_locale";
  v10 = *(a1 + 80);
  v11 = v10;
  if (!v10)
  {
    v11 = +[NSNull null];
  }

  v19[8] = v11;
  v18[9] = @"language_id_dominant_locale_confidence";
  if (*(a1 + 88))
  {
    [*(a1 + 64) prepareConfidenceValue:?];
  }

  else
  {
    +[NSNull null];
  }
  v12 = ;
  v19[9] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:10];

  if (!v10)
  {
  }

  if (!v3)
  {
  }

  return v13;
}

void sub_100008088(id a1)
{
  v1 = objc_alloc_init(VMABCReporter);
  v2 = qword_10010D6E0;
  qword_10010D6E0 = v1;
}

void sub_100008224(id *a1)
{
  v2 = [a1[4] reporter];
  v3 = a1[5];
  v4 = a1[6];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [v2 signatureWithDomain:@"Telephony" type:@"VisualVoicemail" subType:v3 subtypeContext:v4 detectedProcess:v6 triggerThresholdValues:0];

  v8 = vm_vmd_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[5];
    v10 = a1[6];
    *buf = 138412546;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SDRDiagnosticReporter creating capture for subType = %@, description = %@", buf, 0x16u);
  }

  v11 = [a1[4] reporter];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000083F8;
  v12[3] = &unk_1000ED6A0;
  v13 = a1[5];
  v14 = a1[6];
  [v11 snapshotWithSignature:v7 duration:0 event:0 payload:v12 reply:0.0];
}

void sub_1000083F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = vm_vmd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138412802;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SDRDiagnosticReporter received reply for subType = %@, description = %@ with response = %@", &v7, 0x20u);
  }
}

id sub_1000090B8()
{
  if (qword_10010D6F8 != -1)
  {
    sub_10009B43C();
  }

  v1 = qword_10010D6F0;

  return v1;
}

void sub_100009208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VVCarrierParameters;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000092B0(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "cb");
  v2 = qword_10010D6F0;
  qword_10010D6F0 = v1;
}

uint64_t sub_100009364(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1000ED750;
  a2[1] = v2;
  return result;
}

void sub_100009390(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000090B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = **(a1 + 8);
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = 136315650;
    v8 = v5;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v7, 0x20u);
  }
}

uint64_t sub_100009474(uint64_t a1, uint64_t a2)
{
  if (sub_1000094C0(a2, &off_1000ED7C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1000094C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_100009514(uint64_t a1)
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

void sub_1000095BC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

uint64_t *sub_1000095DC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_1000097CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000097F4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    *a4 = 1;
    v7 = vm_vmd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Operation to sanitize voicemail transcription database was cancelled.", v10, 2u);
    }
  }

  else
  {
    Flags = VMStoreRecordGetFlags(v6);
    v9 = VMStoreRecordGetLabel(v6);
    VMStoreRecordSetFlags(v9, v6, Flags & 0xFFFF7DFF);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t sub_100009C3C(uint64_t a1, void *a2)
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
        v35 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v16 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v36 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v36 & 0x7F) << v28;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v20 = v29++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDVisualVoicemailTranscriptionStatusChanged__failureReason;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___AWDVisualVoicemailTranscriptionStatusChanged__failureReason;
        goto LABEL_52;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 4u;
        while (1)
        {
          v38 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v38 & 0x7F) << v14;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v20 = v15++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDVisualVoicemailTranscriptionStatusChanged__timestamp;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___AWDVisualVoicemailTranscriptionStatusChanged__timestamp;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v16 = 0;
    *(a1 + 32) |= 2u;
    while (1)
    {
      v37 = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v37 & 0x7F) << v23;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v20 = v24++ > 8;
      if (v20)
      {
        v21 = 0;
        v22 = &OBJC_IVAR___AWDVisualVoicemailTranscriptionStatusChanged__status;
        goto LABEL_55;
      }
    }

    v22 = &OBJC_IVAR___AWDVisualVoicemailTranscriptionStatusChanged__status;
LABEL_52:
    if ([a2 hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v16;
    }

LABEL_55:
    *(a1 + *v22) = v21;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

void sub_10000AD54(uint64_t a1, CMSampleBufferRef sbuf)
{
  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  if (!FormatDescription)
  {
    sub_10009B464(a1);
  }

  v5 = [AVAudioPCMBuffer alloc];
  v6 = [[AVAudioFormat alloc] initWithCMAudioFormatDescription:FormatDescription];
  v8 = [v5 initWithPCMFormat:v6 frameCapacity:CMSampleBufferGetNumSamples(sbuf)];

  [v8 setFrameLength:CMSampleBufferGetNumSamples(sbuf)];
  LODWORD(v6) = CMSampleBufferGetNumSamples(sbuf);
  CMSampleBufferCopyPCMDataIntoAudioBufferList(sbuf, 0, v6, [v8 mutableAudioBufferList]);
  v7 = [*(a1 + 32) speechAnalyzer];
  [v7 addAudio:v8];
}

void sub_10000AE58(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_1000025A8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Speech Analyzer Submitted Audio. Error? %@", &v4, 0xCu);
  }
}

void sub_10000AF8C(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "tspt.asr");
  v2 = qword_10010D700;
  qword_10010D700 = v1;
}

void sub_10000B014(id a1)
{
  v1 = objc_alloc_init(VVMSharedPreferencesObserver);
  v2 = qword_10010D710;
  qword_10010D710 = v1;
}

id sub_10000B2B0()
{
  if (qword_10010D728 != -1)
  {
    sub_10009B4E4();
  }

  v1 = qword_10010D720;

  return v1;
}

void sub_10000B440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VVMSharedPreferencesObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10000B5D0(uint64_t a1, int a2, uint64_t a3)
{
  v5 = sub_10000B2B0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "";
    v9 = 2080;
    v10 = "";
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%shandleRadioPreferencesCallback [type %d] received", &v7, 0x1Cu);
  }

  if ((a2 & 2) != 0)
  {
    v6 = +[VVMSharedPreferencesObserver sharedPreferencesObserver];
    [v6 handleRadioPreferencesChanged:a3];
  }

  else
  {
    v6 = sub_10000B2B0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "";
      v9 = 2080;
      v10 = "";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%shandleRadioPreferencesCallback: no preference changed", &v7, 0x16u);
    }
  }
}

void sub_10000BFC0(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "apm");
  v2 = qword_10010D720;
  qword_10010D720 = v1;
}

void sub_10000C004(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "xpc.srv");
  v2 = qword_10010D730;
  qword_10010D730 = v1;
}

void sub_10000C7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = VMVoicemailServiceController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10000CB00(id a1, NSError *a2)
{
  v2 = a2;
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10009B50C();
  }
}

void sub_10000CC00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10000CC30(id a1, NSError *a2)
{
  v2 = a2;
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10009B574();
  }
}

void sub_10000CD6C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10009B5DC();
  }
}

void sub_10000CEA4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10009B688();
  }
}

void sub_10000CFE0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10009B6F0();
  }
}

void sub_10000D214(id a1, NSError *a2)
{
  v2 = a2;
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10009B758();
  }
}

void sub_10000D5A0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10009B7C0();
  }
}

void sub_10000D6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10000D6E4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10009B828();
  }
}

void sub_10000D7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10000D81C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10009B890();
  }
}

void sub_10000D958(id a1, NSError *a2)
{
  v2 = a2;
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10009B8F8();
  }
}

int64_t sub_10000E31C(id a1, VMVoicemail *a2, VMVoicemail *a3)
{
  v4 = a2;
  v5 = [(VMVoicemail *)a3 date];
  v6 = [(VMVoicemail *)v4 date];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_10000E38C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10000E588(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10000E674(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10000E7E0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10000E9C8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_10000FA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_10000FC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_10000FCCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10001014C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1000103AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1000103F4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10009BB8C();
  }
}

void sub_1000106C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_10001083C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10001087C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10009BBF4();
  }
}

void sub_100010BEC(uint64_t a1, uint64_t a2)
{
  v3 = [VMVoicemail messageForRecord:a2 forContexts:*(a1 + 32) andIsoCodes:*(a1 + 40)];
  if (v3)
  {
    [*(a1 + 48) addObject:v3];
  }
}

void sub_100010E84(uint64_t a1, uint64_t a2)
{
  v3 = [VMVoicemail messageForRecord:a2 forContexts:*(a1 + 32) andIsoCodes:*(a1 + 40)];
  if (v3)
  {
    [*(a1 + 48) addObject:v3];
  }
}

void sub_100011254(void *a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000294C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[6];
    v7 = [v3 blockInvocationDescription];
    v8 = 138412802;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending reply for request %@ (conn=%p): %@", &v8, 0x20u);
  }

  [v3 setTarget:a1[5]];
  [v3 invoke];
}

void sub_1000114B8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1000114E0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

const char *sub_100011B50(int a1, CFStringRef theString, char *buffer, CFIndex *a4, CFStringEncoding encoding)
{
  v7 = buffer;
  maxBufLen = 0;
  if (buffer && a4 && *a4 && CFStringGetCString(theString, buffer, *a4, encoding))
  {
    v9 = strlen(v7);
LABEL_12:
    *a4 = v9;
    return v7;
  }

  Length = CFStringGetLength(theString);
  v15.location = 0;
  v15.length = Length;
  CFStringGetBytes(theString, v15, encoding, 0, 0, 0, 0, &maxBufLen);
  Typed = CFAllocatorAllocateTyped();
  if (Typed)
  {
    v12 = Typed;
    v16.location = 0;
    v16.length = Length;
    CFStringGetBytes(theString, v16, encoding, 0, 0, Typed, maxBufLen, &maxBufLen);
    v7 = &v12[maxBufLen];
  }

  else
  {
    maxBufLen = 0;
    v12 = v7;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  *v7 = 0;
  v7 = v12;
LABEL_10:
  if (a4)
  {
    v9 = maxBufLen;
    goto LABEL_12;
  }

  return v7;
}

uint64_t sub_100011C90(_BYTE *a1, uid_t a2, gid_t a3, mode_t a4)
{
  bzero(v13, 0x400uLL);
  v8 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v9 = 0;
  v10 = a1 + 1;
  memset(&v12, 0, sizeof(v12));
  while (1)
  {
    v13[v9] = v8;
    if (v8 != 47 || !stat(v13, &v12))
    {
      goto LABEL_7;
    }

    if (mkdir(v13, 0x1FFu))
    {
      return *__error();
    }

    chown(v13, a2, a3);
    chmod(v13, a4);
LABEL_7:
    result = 0;
    if (v9 <= 0x3FD)
    {
      v8 = v10[v9++];
      if (v8)
      {
        continue;
      }
    }

    return result;
  }
}

void sub_100011DB4()
{
  if (qword_10010D740 != -1)
  {
    sub_10009BD18();
  }
}

void sub_100011DE0(id a1)
{
  v9 = 32;
  CFRetain(@"mobile");
  v1 = CFCopyHomeDirectoryURLForUser();
  if (v1)
  {
    v2 = v1;
    v3 = CFURLCopyFileSystemPath(v1, kCFURLPOSIXPathStyle);
    if (v3)
    {
      v4 = v3;
      qword_10010D748 = sub_100011B50(kCFAllocatorDefault, v3, 0, 0, 0x8000100u);
      CFRelease(v4);
    }

    CFRelease(v2);
  }

  v5 = sub_100011B50(kCFAllocatorDefault, @"mobile", buffer, &v9, 0x8000100u);
  if (v5)
  {
    v6 = v5;
    v7 = getpwnam(v5);
    if (v7)
    {
      pw_gid = v7->pw_gid;
      dword_10010D750 = v7->pw_uid;
      dword_10010D754 = pw_gid;
    }

    if (v6 != buffer)
    {
      CFAllocatorDeallocate(kCFAllocatorDefault, v6);
    }
  }
}

uint64_t sub_100011F0C()
{
  if (qword_10010D740 != -1)
  {
    sub_10009BD18();
  }

  return qword_10010D748;
}

uint64_t sub_100011F44()
{
  if (qword_10010D740 != -1)
  {
    sub_10009BD18();
  }

  return dword_10010D750;
}

uint64_t sub_100011F7C()
{
  if (qword_10010D740 != -1)
  {
    sub_10009BD18();
  }

  return dword_10010D754;
}

id sub_100012200()
{
  if (qword_10010D760 != -1)
  {
    sub_10009BD2C();
  }

  v1 = qword_10010D758;

  return v1;
}

void sub_100012890(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012200();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2048;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ Asset download progress=%lu ", &v6, 0x16u);
  }
}

void sub_100012950(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100012200();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Asset download complete with path=%@ error=%@", &v10, 0x20u);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, 1, v6);
  }
}

void sub_100012B70(id a1, unint64_t a2)
{
  v3 = sub_100012200();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LID Asset download progress=%lu ", &v4, 0xCu);
  }
}

void sub_100012C14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100012200();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v13 = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v9 = "LID Asset download complete with path=%@ error=%@";
    v10 = v7;
    v11 = 22;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v13 = 138412290;
    v14 = v6;
    v9 = "LID Assets currently not deployed. error=%@";
    v10 = v7;
    v11 = 12;
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
LABEL_7:

  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))(v12, v5 != 0, v6);
  }
}

void sub_100012FF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012200();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) language];
    v6 = 138412546;
    v7 = v5;
    v8 = 2048;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ Asset download progress=%lu ", &v6, 0x16u);
  }
}

void sub_1000130DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100012200();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) language];
    v14 = 138412802;
    v15 = v8;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Asset download complete with path=%@ error=%@", &v14, 0x20u);
  }

  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = sub_100012200();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = asNSStringBOOL();
    v14 = 138412290;
    v15 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Speech Asset Model install operation completed, success: %@.", &v14, 0xCu);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v10, v6);
  }
}

void sub_1000136FC(uint64_t a1)
{
  v2 = sub_100012200();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = asNSStringBOOL();
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Executing InstallAssetModel - begin, isLID: %@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100013878;
  v8[3] = &unk_1000EDC58;
  v8[4] = v5;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  [v5 _installAssetModel:v6 isLID:v7 completion:v8];
}

void sub_100013878(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = sub_100012200();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asNSStringBOOL();
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Completed InstallAssetModel - end, installed: %@", buf, 0xCu);
  }

  [*(a1 + 32) setTranscriptionAssetModelInstalling:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000139F8;
  block[3] = &unk_1000EDC30;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = a2;
  v12 = v5;
  v13 = v9;
  v10 = v5;
  dispatch_async(v8, block);
}

uint64_t sub_1000139F8(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

void sub_100013BE4(uint64_t a1)
{
  v2 = sub_100012200();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    if (!v4)
    {
      v4 = @"nil";
    }

    *buf = 134218242;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Executing InstallAssetModelWithType - begin, assetModelType: %lu, language: %@", buf, 0x16u);
  }

  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100013D70;
  v9[3] = &unk_1000EDC58;
  v9[4] = v7;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  [v7 _installAssetModelWithType:v5 speechTaskHint:v6 language:v8 completion:v9];
}

void sub_100013D70(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = sub_100012200();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asNSStringBOOL();
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Completed InstallAssetModelWithType - end, installed: %@", buf, 0xCu);
  }

  [*(a1 + 32) setTranscriptionAssetModelWithTypeInstalling:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013EF0;
  block[3] = &unk_1000EDC30;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = a2;
  v12 = v5;
  v13 = v9;
  v10 = v5;
  dispatch_async(v8, block);
}

uint64_t sub_100013EF0(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

void sub_100013F20(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "tspt.mdl");
  v2 = qword_10010D758;
  qword_10010D758 = v1;
}

void sub_100014C30(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "imap.co3");
  v2 = qword_10010D778;
  qword_10010D778 = v1;
}

void sub_100014C74()
{
  if (!qword_10010D770)
  {
    qword_10010D770 = &off_1000F5A48;
  }
}

void sub_100015C94(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "clnt.scb");
  v2 = qword_10010D790;
  qword_10010D790 = v1;
}

id sub_100015F94()
{
  if (qword_10010D7B0 != -1)
  {
    sub_10009C0F0();
  }

  v1 = qword_10010D7A8;

  return v1;
}

void sub_100016104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = IMAPServiceBodyLoadMonitor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100018FFC(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_100019190(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1000192F0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1000195E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = IMAPServiceBodyLoadContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100019D9C(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "imap.mon");
  v2 = qword_10010D7A8;
  qword_10010D7A8 = v1;
}

uint64_t sub_10001A200(uint64_t a1, void *a2)
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
        v47 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47 & 0x7F) << v5;
        if ((v47 & 0x80) == 0)
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
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 > 5)
      {
        if (v13 == 6)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 56) |= 2u;
          while (1)
          {
            v50 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v50 & 0x7F) << v32;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v34;
          }

LABEL_75:
          v45 = 16;
LABEL_80:
          *(a1 + v45) = v22;
          goto LABEL_83;
        }

        if (v13 != 7)
        {
LABEL_46:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_83;
        }

        v14 = PBReaderReadString();
        v15 = 24;
      }

      else if (v13 == 4)
      {
        v14 = PBReaderReadString();
        v15 = 32;
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_46;
        }

        v14 = PBReaderReadString();
        v15 = 40;
      }

      v31 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_83:
      v46 = [a2 position];
      if (v46 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      *(a1 + 56) |= 1u;
      while (1)
      {
        v48 = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v25 |= (v48 & 0x7F) << v23;
        if ((v48 & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v11 = v24++ >= 9;
        if (v11)
        {
          v29 = 0;
          goto LABEL_71;
        }
      }

      if ([a2 hasError])
      {
        v29 = 0;
      }

      else
      {
        v29 = v25;
      }

LABEL_71:
      *(a1 + 8) = v29;
      goto LABEL_83;
    }

    if (v13 == 2)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      *(a1 + 56) |= 8u;
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
          LOBYTE(v44) = 0;
          goto LABEL_82;
        }
      }

      v44 = (v40 != 0) & ~[a2 hasError];
LABEL_82:
      *(a1 + 52) = v44;
      goto LABEL_83;
    }

    if (v13 != 3)
    {
      goto LABEL_46;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    *(a1 + 56) |= 4u;
    while (1)
    {
      v51 = 0;
      v19 = [a2 position] + 1;
      if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
      {
        v21 = [a2 data];
        [v21 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v18 |= (v51 & 0x7F) << v16;
      if ((v51 & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      v11 = v17++ >= 9;
      if (v11)
      {
        v22 = 0;
        goto LABEL_79;
      }
    }

    if ([a2 hasError])
    {
      v22 = 0;
    }

    else
    {
      v22 = v18;
    }

LABEL_79:
    v45 = 48;
    goto LABEL_80;
  }

  return [a2 hasError] ^ 1;
}

void sub_10001B448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001B460(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001B478(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

void sub_10001B558(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = *(a1 + 40);

  if (WeakRetained != v3)
  {
    v4 = *(a1 + 40);
    v5 = (*(a1 + 32) + 16);

    objc_storeWeak(v5, v4);
  }
}

void sub_10001B6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001B6C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

void sub_10001B7A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = *(a1 + 40);

  if (WeakRetained != v3)
  {
    v4 = *(a1 + 40);
    v5 = (*(a1 + 32) + 24);

    objc_storeWeak(v5, v4);
  }
}

void sub_10001B928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001B940(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10001BA54(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = v2;
  v5 = v3;
  if (v4 | v5)
  {
    v6 = v5;
    if (v5)
    {
      v7 = [v4 isEqual:v5];

      if (v7)
      {
        return;
      }
    }

    else
    {
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001BB84;
    v10[3] = &unk_1000ED478;
    v8 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v8;
    v12 = *(a1 + 48);
    v9 = objc_retainBlock(v10);

    if (v9)
    {
      [*(a1 + 32) notifyDelegateGreetingWillChangeForAccountUUID:*(a1 + 40)];
      (v9[2])(v9);
      [*(a1 + 32) notifyDelegateGreetingDidChangeForAccountUUID:*(a1 + 40)];
    }
  }
}

uint64_t sub_10001BFFC(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

void sub_10001C55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001C574(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001C58C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = +[CTMessageCenter sharedMessageCenter];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(*(a1 + 32) + 48);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

void sub_10001CBD4(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10001CD88;
          block[3] = &unk_1000ED478;
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          block[4] = v7;
          block[5] = v10;
          v13 = v11;
          dispatch_async(v9, block);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

void sub_10001CE7C(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10001D030;
          block[3] = &unk_1000ED478;
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          block[4] = v7;
          block[5] = v10;
          v13 = v11;
          dispatch_async(v9, block);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

void sub_10001D0F8(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          v10[0] = _NSConcreteStackBlock;
          v10[1] = 3221225472;
          v10[2] = sub_10001D2AC;
          v10[3] = &unk_1000ED450;
          v10[4] = v7;
          v11 = *(a1 + 40);
          dispatch_async(v9, v10);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void sub_10001D370(id a1)
{
  v1 = objc_alloc_init(VMSharedProtectionObserver);
  v2 = qword_10010D7B8;
  qword_10010D7B8 = v1;
}

void sub_10001D5F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001D614(uint64_t a1)
{
  v2 = vm_vmd_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device unlocked after boot", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 8) = 1;
  }

  notify_cancel(*(a1 + 40));
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"kVMDeviceUnlockedNotification" object:0 userInfo:0];
}

uint64_t sub_10001DA30(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            LOBYTE(v26) = 0;
            goto LABEL_44;
          }
        }

        v26 = (v22 != 0) & ~[a2 hasError];
LABEL_44:
        *(a1 + 16) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_42;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_42:
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

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

unint64_t sub_10001E900(unint64_t a1)
{
  if (HIDWORD(a1))
  {
    v2 = sub_10001E9B0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = a1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I *** Unable to cast %llu to uint_32t", &v4, 0xCu);
    }
  }

  return a1;
}

id sub_10001E9B0()
{
  if (qword_10010D7D0 != -1)
  {
    sub_10009C284();
  }

  v1 = qword_10010D7C8;

  return v1;
}

uint64_t sub_10001E9F4(uint64_t a1)
{
  if (a1 >= 0x80000000)
  {
    v2 = sub_10001E9B0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = a1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I *** Unable to cast %lld to int_32t", &v4, 0xCu);
    }
  }

  return a1;
}

uint64_t sub_10001FAD0(void *a1)
{
  v1 = a1;
  if ([v1 hasSuffix:@"INBOX"])
  {
    v2 = 1;
  }

  else if ([v1 hasSuffix:@"Trash"])
  {
    v2 = 2;
  }

  else
  {
    v3 = sub_10001E9B0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10009C298(v1, v3);
    }

    v2 = 0;
  }

  return v2;
}

id sub_10001FF88(void *a1, char *a2)
{
  v3 = a1;
  v4 = [v3 intValue];
  if (v4)
  {
    v5 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = [v3 rangeOfString:@"temp-" options:8];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v3 substringFromIndex:&v6[v7]];
    v4 = [v9 intValue];

    v5 = 1;
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v4 = 0;
  if (a2)
  {
LABEL_6:
    *a2 = v5;
  }

LABEL_7:

  return v4;
}

void sub_100020A58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained account];
    v3 = [v2 service];
    [v3 resetCounts];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:@"VMStoreRemovedRecords" object:0];

    WeakRetained = v5;
  }
}

BOOL sub_100023774(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CMFItemCreateWithPhoneNumber();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CMFBlockListIsItemBlocked() != 0;
  CFRelease(v2);
  return v3;
}

void sub_10002466C(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "serv.lib");
  v2 = qword_10010D7C8;
  qword_10010D7C8 = v1;
}

void sub_1000248BC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  v4 = v2;
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = &_dispatch_main_q;
  }

  [v2 setObject:v3 forKey:*(a1 + 48)];
}

void sub_1000249B4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 removeObjectForKey:*(a1 + 40)];
}

id sub_100024CBC()
{
  if (qword_10010D7E0 != -1)
  {
    sub_10009C408();
  }

  v1 = qword_10010D7D8;

  return v1;
}

void sub_100024E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VMMegadomeClient;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000250C0(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "mgdm.cln");
  v2 = qword_10010D7D8;
  qword_10010D7D8 = v1;
}

BOOL sub_100025104(void *a1)
{
  v1 = a1;
  v2 = [NSCharacterSet characterSetWithCharactersInString:@"*#+0123456789"];
  v3 = [v2 invertedSet];

  v4 = [v1 rangeOfCharacterFromSet:v3];
  return v4 == 0x7FFFFFFFFFFFFFFFLL;
}

__CFString *sub_100025188(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!sub_100025104(v3))
  {
    v8 = vm_vmd_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "'%@' is not valid phone number, failing Normalization.", &v10, 0xCu);
    }

    String = &stru_1000F0098;
    goto LABEL_9;
  }

  v5 = CFPhoneNumberCreate();
  if (v5)
  {
    v6 = v5;
    String = CFPhoneNumberCreateString();
    CFRelease(v6);
    if (String)
    {
      v8 = vm_vmd_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412802;
        v11 = v3;
        v12 = 2112;
        v13 = String;
        v14 = 2112;
        v15 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Normalized '%@' to '%@' using ISO country code '%@'.", &v10, 0x20u);
      }

LABEL_9:

      goto LABEL_11;
    }
  }

  String = &stru_1000F0098;
LABEL_11:

  return String;
}

id sub_10002532C(void *a1, void *a2)
{
  v2 = sub_100025188(a1, a2);
  v3 = v2;
  if (v2 && [v2 length])
  {
    v4 = [v3 vm_UUIDv5];
  }

  else
  {
    v5 = vm_vmd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10009C41C(v5);
    }

    v4 = 0;
  }

  return v4;
}

uint64_t sub_100025548(uint64_t a1, void *a2)
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
        *(a1 + 16) |= 1u;
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
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
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

void sub_100026030(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "imap.vvs.trash");
  v2 = qword_10010D7E8;
  qword_10010D7E8 = v1;
}

void sub_100026718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = IMAPServiceAccount;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_10002AF30(uint64_t a1)
{
  [*(*(a1 + 32) + 336) lock];
  v2 = *(*(a1 + 32) + 328);
  if (v2 && [v2 isValid])
  {
    v3 = +[NSRunLoop currentRunLoop];
    [v3 addTimer:*(*(a1 + 32) + 328) forMode:NSDefaultRunLoopMode];
  }

  v4 = *(*(a1 + 32) + 336);

  return [v4 unlock];
}

ctu::OsLogLogger *sub_10002BF94(ctu::OsLogLogger **a1, ctu::OsLogLogger *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ctu::OsLogLogger::~OsLogLogger(result);

    operator delete();
  }

  return result;
}

void sub_10002CA04(uint64_t a1, uint64_t a2)
{
  v4 = vm_vmd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) language];
    v6 = 138412546;
    v7 = v5;
    v8 = 2048;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ Asset download progress=%lu ", &v6, 0x16u);
  }
}

void sub_10002CAD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = vm_vmd_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) language];
    v16 = 138412802;
    v17 = v8;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Asset download complete with path=%@ error=%@", &v16, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = WeakRetained;
  if (v5)
  {
    v11 = v6 == 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [WeakRetained progress];
  [v13 setCompletedUnitCount:1];

  if (v10)
  {
    v14 = [v10 operationCompletion];

    if (v14)
    {
      v15 = [v10 operationCompletion];
      (v15)[2](v15, v12, v6);
    }
  }

  [*(a1 + 40) downloadComplete:1];
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_10002CE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak((v11 + 56));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v12 - 56));
  _Unwind_Resume(a1);
}

void sub_10002CE30(id a1, unint64_t a2)
{
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LID Asset download progress=%lu ", &v4, 0xCu);
  }
}

void sub_10002CED4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained operationCompletion];

    if (v9)
    {
      v10 = vm_vmd_log();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (v11)
        {
          v13 = 138412546;
          v14 = v5;
          v15 = 2112;
          v16 = v6;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "LID Asset download complete with path=%@ error=%@", &v13, 0x16u);
        }

        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      else
      {
        if (v11)
        {
          v13 = 138412290;
          v14 = v6;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "LID Assets currently not deployed. error=%@", &v13, 0xCu);
        }
      }

      v12 = [v8 operationCompletion];
      (v12)[2](v12, v5 != 0, v6);
    }
  }

  [*(a1 + 32) downloadComplete:*(*(*(a1 + 48) + 8) + 24)];
  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t start()
{
  _set_user_dir_suffix();
  v0 = objc_autoreleasePoolPush();
  v1 = sub_1000026B8();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "";
    v10 = 2080;
    v11 = "";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I %s%s------------", &v8, 0x16u);
  }

  v2 = sub_1000026B8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "";
    v10 = 2080;
    v11 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%svmd launched", &v8, 0x16u);
  }

  v3 = +[VMDaemon sharedDaemon];
  [v3 start];

  objc_autoreleasePoolPop(v0);
  v4 = sub_1000026B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "";
    v10 = 2080;
    v11 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%svmd running loop", &v8, 0x16u);
  }

  v5 = +[NSRunLoop mainRunLoop];
  [v5 run];

  v6 = sub_1000026B8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "";
    v10 = 2080;
    v11 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%svmd run loop returned, exiting...", &v8, 0x16u);
  }

  return 0;
}

void sub_10002D448(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "main");
  v2 = qword_10010D7F8;
  qword_10010D7F8 = v1;
}

uint64_t sub_10002D768(uint64_t a1, void *a2)
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
        v35 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v16 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v36 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v36 & 0x7F) << v28;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v20 = v29++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDVisualVoicemailCustomGreetingUpdated__failureReason;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___AWDVisualVoicemailCustomGreetingUpdated__failureReason;
        goto LABEL_52;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 4u;
        while (1)
        {
          v38 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v38 & 0x7F) << v14;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v20 = v15++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDVisualVoicemailCustomGreetingUpdated__timestamp;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___AWDVisualVoicemailCustomGreetingUpdated__timestamp;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v16 = 0;
    *(a1 + 32) |= 2u;
    while (1)
    {
      v37 = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v37 & 0x7F) << v23;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v20 = v24++ > 8;
      if (v20)
      {
        v21 = 0;
        v22 = &OBJC_IVAR___AWDVisualVoicemailCustomGreetingUpdated__result;
        goto LABEL_55;
      }
    }

    v22 = &OBJC_IVAR___AWDVisualVoicemailCustomGreetingUpdated__result;
LABEL_52:
    if ([a2 hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v16;
    }

LABEL_55:
    *(a1 + *v22) = v21;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10002E2AC(uint64_t a1, void *a2)
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
            v21 = &OBJC_IVAR___AWDVisualVoicemailServiceAccountStateUpdated__timestamp;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___AWDVisualVoicemailServiceAccountStateUpdated__timestamp;
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
        v21 = &OBJC_IVAR___AWDVisualVoicemailServiceAccountStateUpdated__serviceState;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___AWDVisualVoicemailServiceAccountStateUpdated__serviceState;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

void sub_10002EBA4(id a1)
{
  v1 = objc_alloc_init(_VVMFLogInterceptor);
  v2 = qword_10010D808;
  qword_10010D808 = v1;
}

id sub_10002EE18()
{
  if (qword_10010D828 != -1)
  {
    sub_10009C5CC();
  }

  v1 = qword_10010D820;

  return v1;
}

void sub_10002EF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = _VVMFLogInterceptor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10002F130(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v27 = (a1 + 32);
    v1 = [*(a1 + 40) all];
    v2 = [v1 objectForKey:*(a1 + 32)];
    v36 = v2;

    if (v2)
    {
      if (v2[3])
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        obj = v2[3];
        v3 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v3)
        {
          v4 = *v33;
          v5 = NSDateComponentsFormatter_ptr;
          v6 = "w";
          v7 = "r";
          do
          {
            for (i = 0; i != v3; i = i + 1)
            {
              if (*v33 != v4)
              {
                objc_enumerationMutation(obj);
              }

              v9 = *(*(&v32 + 1) + 8 * i);
              v30 = [objc_alloc(v5[18]) initWithData:*(v9 + 16) encoding:4];
              v10 = vm_imap_log();
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                v11 = v3;
                v12 = v7;
                v13 = v5;
                v14 = v4;
                v15 = v6;
                v17 = v36[1];
                v16 = v36[2];
                v18 = *(v9 + 8);
                v19 = asString();
                *buf = 136315906;
                *&buf[4] = v17;
                *&buf[12] = 2112;
                *&buf[14] = v16;
                *&buf[22] = 2080;
                v38 = v19;
                v39 = 2112;
                v40 = v30;
                _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s %@ %s\n%@", buf, 0x2Au);
                v6 = v15;
                v4 = v14;
                v5 = v13;
                v7 = v12;
                v3 = v11;
              }

              if ((*(v9 + 8) - 1) >= 2)
              {
                v20 = v6;
              }

              else
              {
                v20 = v7;
              }

              v31 = [v5[18] stringWithFormat:@"%@.%s", v36[2], v20];
              v21 = *(v9 + 16);
              *buf = off_1000EE060;
              *&buf[8] = &v36;
              *&buf[16] = &v31;
              v38 = buf;
              logger::CFTypeRefLogger();
              sub_100009514(buf);
            }

            v3 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
          }

          while (v3);
        }

        [v36[3] removeAllObjects];
      }

      if (*(a1 + 48) != 1)
      {
        goto LABEL_27;
      }

      v22 = sub_10002EE18();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v36[1];
        v23 = v36[2];
        *buf = 136315394;
        *&buf[4] = v24;
        *&buf[12] = 2112;
        *&buf[14] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s %@ END RAW DUMP", buf, 0x16u);
      }

      v25 = [*(a1 + 40) all];
      [v25 removeObjectForKey:*v27];
    }

    else
    {
      v25 = sub_10002EE18();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10009C5E0(v27, v25);
      }
    }

LABEL_27:
    return;
  }

  v26 = sub_10002EE18();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_10009C65C(v26);
  }
}

void sub_10002F700(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) all];
    v3 = [v2 objectForKey:*(a1 + 32)];

    if (!v3)
    {
      v4 = objc_opt_new();
      *(v4 + 8) = *(a1 + 64);
      objc_storeStrong((v4 + 16), *(a1 + 48));
      v5 = [*(a1 + 40) all];
      [v5 setObject:v4 forKey:*(a1 + 32)];

      v6 = sub_10002EE18();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(v4 + 8);
        v8 = *(v4 + 16);
        v13 = 136315394;
        v14 = v7;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s %@ START RAW DUMP", &v13, 0x16u);
      }

      v3 = v4;
    }

    isa = v3[3].isa;
    if (!isa)
    {
      v10 = objc_opt_new();
      v11 = v3[3].isa;
      v3[3].isa = v10;

      isa = v3[3].isa;
    }

    v12 = [[NS_data_block alloc] initType:*(a1 + 72) data:*(a1 + 56)];
    [(objc_class *)isa addObject:v12];
  }

  else
  {
    v3 = sub_10002EE18();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10009C65C(v3);
    }
  }
}

void sub_10002FA58()
{
  if (qword_10010D818 != -1)
  {
    sub_10009C6A0();
  }
}

void sub_10002FAAC(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "IMAP.raw");
  v2 = qword_10010D820;
  qword_10010D820 = v1;
}

__n128 sub_10002FB64(uint64_t a1, uint64_t a2)
{
  *a2 = off_1000EE060;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10002FB94(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10002EE18();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(**(a1 + 8) + 8);
    v6 = **(a1 + 16);
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = 136316162;
    v9 = v5;
    v10 = 2080;
    v11 = " ";
    v12 = 2114;
    v13 = v6;
    v14 = 2080;
    v15 = " ";
    v16 = 2080;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%s%s", &v8, 0x34u);
  }
}

uint64_t sub_10002FC94(uint64_t a1, uint64_t a2)
{
  if (sub_1000094C0(a2, &off_1000EE0C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

id sub_10002FCE0(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:MFMessageErrorDomain];

  v4 = v1;
  if (v3)
  {
    v5 = [v1 code];
    if ((v5 - 1028) >= 0x12)
    {
      v6 = 5001;
    }

    else
    {
      v6 = qword_1000C92F8[(v5 - 1028)];
    }

    v7 = [v1 localizedDescription];
    v4 = [NSError errorWithDomain:kVVErrorDomain code:v6 localizedDescription:v7];
  }

  return v4;
}

const char *sub_10002FDE8(unint64_t a1)
{
  if (a1 > 8)
  {
    return "UnknownTask";
  }

  else
  {
    return (&off_1000EE180)[a1];
  }
}

id sub_100030068()
{
  if (qword_10010D848 != -1)
  {
    sub_10009C6B4();
  }

  v1 = qword_10010D840;

  return v1;
}

void sub_100030C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = IMAPServiceActivityController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10003122C(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));

  v3 = sub_100030068();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (WeakRetained)
  {
    if (v4)
    {
      v5 = a1[5];
      v6 = *(a1[4] + 48);
      v7 = a1[6];
      v13 = 136315906;
      v14 = v6;
      v15 = 2080;
      v16 = " ";
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVM] Posting %@; userInfo = %@", &v13, 0x2Au);
    }

    v3 = +[NSNotificationCenter defaultCenter];
    v8 = a1[5];
    v9 = objc_loadWeakRetained((a1[4] + 24));
    [v3 postNotificationName:v8 object:v9 userInfo:a1[6]];
  }

  else if (v4)
  {
    v10 = a1[5];
    v11 = *(a1[4] + 48);
    v12 = a1[6];
    v13 = 136315906;
    v14 = v11;
    v15 = 2080;
    v16 = " ";
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s[IVM] service gone, do NOT _postNotificationName: %@ %@", &v13, 0x2Au);
  }
}

void sub_10003253C(id a1)
{
  v3[0] = @"Synchronizing";
  v3[1] = @"Caching Bodies";
  v4[0] = &off_1000F5758;
  v4[1] = &off_1000F5740;
  v3[2] = @"Pushing Flags";
  v3[3] = @"Setting Default Greeting";
  v4[2] = &off_1000F5770;
  v4[3] = &off_1000F5788;
  v3[4] = @"Setting Custom Greeting";
  v3[5] = @"Retrieving Greeting";
  v4[4] = &off_1000F5788;
  v4[5] = &off_1000F57A0;
  v3[6] = @"Changing PIN";
  v3[7] = @"Retrieving Body";
  v4[6] = &off_1000F57B8;
  v4[7] = &off_1000F5740;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:8];
  v2 = qword_10010D830;
  qword_10010D830 = v1;
}

void sub_1000326EC(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "actv.ctr");
  v2 = qword_10010D840;
  qword_10010D840 = v1;
}

void sub_100032D54(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "imap.svc.store");
  v2 = qword_10010D850;
  qword_10010D850 = v1;
}

id sub_1000330E0()
{
  if (qword_10010D868 != -1)
  {
    sub_10009C6F0();
  }

  v1 = qword_10010D860;

  return v1;
}

void sub_1000331AC(uint64_t a1)
{
  v2 = sub_1000330E0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Loading transcription service.", v25, 2u);
  }

  v3 = +[VMTranscriptionService isTranscriptionAvailable];
  v4 = +[NSLocale currentLocale];
  v5 = [v4 localeIdentifier];

  v6 = sub_1000330E0();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    *v25 = 138412290;
    *&v25[4] = v5;
    v8 = "loadTranscriptionService: Transcription is supported for locale %@.";
    v9 = v6;
    v10 = 12;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    *v25 = 0;
    v8 = "loadTranscriptionService: Transcription is not enabled. ";
    v9 = v6;
    v10 = 2;
  }

  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, v25, v10);
LABEL_9:

  if (v3 != [*(a1 + 32) isTranscriptionServiceAvailable])
  {
    [*(a1 + 32) setTranscriptionServiceAvailable:v3];
    [*(a1 + 32) transcriptionAvailabilityChanged:v3];
  }

  if (v3)
  {
    v11 = [VMVoicemailTranscriptionController alloc];
    v12 = +[VMConfiguration localeForTranscriptionLanguage];
    v13 = [(VMVoicemailTranscriptionController *)v11 initWithLocale:v12];

    if (v13)
    {
      [v13 requestDatabaseSanitization];
      if (_os_feature_enabled_impl())
      {
        v14 = [v13 matchedSystemLocale];
        [v13 requestSpeechAssetModelInstallation:v14];
      }

      else
      {
        [v13 requestTranscriptionAssetModelInstallation];
      }

      [v13 requestLanguageIDModelInstallation];
      [v13 manageSpeechAssetSubscriptions];
    }

    [*(a1 + 32) setTranscriptionController:{v13, *v25}];
    v15 = [*(a1 + 32) transcriptionController];
    v16 = [v15 isTranscribing];

    if (v16 != [*(a1 + 32) cache_isTranscribing])
    {
      [*(a1 + 32) cache_setTranscribing:v16];
      v17 = *(a1 + 32);
      v18 = [v17 transcriptionController];
      [v17 transcriptionController:v18 transcriptionStatusChanged:v16];
    }

    [*(a1 + 32) resetTranscriptionProgress];
    v19 = [*(a1 + 32) transcriptionController];
    v20 = *(a1 + 32);
    v21 = [v20 queue];
    [v19 addDelegate:v20 queue:v21];

    v22 = sub_1000330E0();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Loading transcription service completed.", v25, 2u);
    }
  }

  else
  {
    v13 = sub_1000330E0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Loading transcription service was aborted.", v25, 2u);
    }
  }

  v23 = +[NSNotificationCenter defaultCenter];
  [v23 addObserver:*(a1 + 32) selector:"handleNSCurrentLocaleDidChangeNotification:" name:NSCurrentLocaleDidChangeNotification object:0];

  v24 = +[NSNotificationCenter defaultCenter];
  [v24 addObserver:*(a1 + 32) selector:"handleAFLanguageCodeDidChangeNotification:" name:AFLanguageCodeDidChangeNotification object:0];
}

id sub_100033698(uint64_t a1)
{
  v2 = sub_1000330E0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Unloading transcription service.", v7, 2u);
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:*(a1 + 32) name:AFLanguageCodeDidChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:*(a1 + 32) name:NSCurrentLocaleDidChangeNotification object:0];

  v5 = [*(a1 + 32) transcriptionController];
  [v5 removeDelegate:*(a1 + 32)];

  return [*(a1 + 32) setTranscriptionController:0];
}

void sub_100033AE8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100033BF8;
  v10[3] = &unk_1000EE1F0;
  v11 = v6;
  v12 = v5;
  v13 = a1[5];
  v14 = a1[6];
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

void sub_100033BF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v3 = sub_1000330E0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      [v4 confidence];
      *buf = 138412546;
      v14 = v4;
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dictation result was: '%@', confidence %f", buf, 0x16u);
    }

    v6 = [NSURL fileURLWithPath:*(a1 + 48) isDirectory:0];
    if (v6)
    {
      v7 = [*(a1 + 40) archivedData];
      v12 = v2;
      v8 = [v7 writeToURL:v6 options:268435457 error:&v12];
      v9 = v12;
    }

    else
    {
      v9 = [NSError errorWithDomain:kVVErrorDomain code:1010 localizedDescription:@"Unable to create NSURL for transcription"];

      v7 = sub_1000330E0();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10009C704();
      }

      v8 = 0;
    }
  }

  else
  {
    v6 = sub_1000330E0();
    v10 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v2)
    {
      if (v10)
      {
        sub_10009C774();
      }

      v8 = 0;
      v9 = v2;
    }

    else
    {
      if (v10)
      {
        sub_10009C7E4();
      }

      v9 = 0;
      v8 = 0;
    }
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v8, v9);
  }
}

void sub_100033E50(id a1)
{
  v1 = sub_1000330E0();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Transcription started", v2, 2u);
  }
}

void sub_1000343B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);

  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);

  _Block_object_dispose((v74 - 224), 8);
  _Block_object_dispose((v74 - 176), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1000344C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000344DC(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003457C;
  block[3] = &unk_1000EDEC8;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void sub_10003457C(uint64_t a1)
{
  v2 = sub_1000330E0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "transcriptionBeginCallback: Begin transcription for external URL %@", &v4, 0xCu);
  }
}

void sub_100034624(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003474C;
  block[3] = &unk_1000EE288;
  block[4] = *(a1 + 32);
  v13 = v5;
  v14 = v6;
  v16 = *(a1 + 56);
  v17 = *(a1 + 72);
  v18 = *(a1 + 88);
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t sub_10003474C(uint64_t a1)
{
  v9 = [*(a1 + 32) processTranscriptionSpeechAnalyzerResults:*(a1 + 40) error:*(a1 + 48)];
  [v9 setObject:*(*(*(a1 + 64) + 8) + 40) forKeyedSubscript:@"assetLocale"];
  [v9 setObject:*(*(*(a1 + 72) + 8) + 40) forKeyedSubscript:@"detectedLocale"];
  v2 = [NSNumber numberWithBool:*(*(*(a1 + 80) + 8) + 24)];
  [v9 setObject:v2 forKeyedSubscript:@"isInferred"];

  v3 = [v9 objectForKeyedSubscript:@"transcriptionFailureReason"];
  v4 = sub_10000737C([v3 intValue]);
  [v9 setObject:v4 forKeyedSubscript:@"transcriptionFailureReason"];

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = [*(a1 + 48) localizedDescription];
  }

  else
  {
    v6 = 0;
  }

  [v9 setObject:v6 forKeyedSubscript:@"transcriptionErrorDescription"];
  if (v5)
  {
  }

  [v9 setObject:*(*(*(a1 + 88) + 8) + 40) forKeyedSubscript:@"lidSuccess"];
  [v9 setObject:*(*(*(a1 + 96) + 8) + 40) forKeyedSubscript:@"lidConfidence"];
  [v9 setObject:*(*(*(a1 + 104) + 8) + 40) forKeyedSubscript:@"lidFailureReason"];
  v7 = *(a1 + 56);
  if (v7)
  {
    (*(v7 + 16))(v7, v9 != 0, v9, *(a1 + 48));
  }

  return _objc_release_x2();
}

void sub_100034954(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100034A9C;
  v14[3] = &unk_1000EE2D8;
  v8 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v5;
  v16 = v6;
  v9 = *(a1 + 80);
  v20 = *(a1 + 64);
  v21 = v9;
  v22 = *(a1 + 96);
  v10 = v8;
  v11 = *(a1 + 112);
  v17 = v10;
  v23 = v11;
  v24 = *(a1 + 120);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v12 = v6;
  v13 = v5;
  dispatch_async(v7, v14);
}

void sub_100034A9C(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) processLanguageIDResults:*(a1 + 40) error:*(a1 + 48)];
  v4 = [*v2 determineAssetLocale:v3];
  v5 = *(*(a1 + 80) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 objectForKeyedSubscript:@"detectedDominantLocale"];
  v8 = *(*(a1 + 88) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [v3 objectForKeyedSubscript:@"lidSuccess"];
  v11 = *(*(a1 + 96) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [v3 objectForKeyedSubscript:@"dominantLocaleConfidence"];
  v14 = *(*(a1 + 104) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = [v3 objectForKeyedSubscript:@"lidFailureReason"];
  v17 = sub_100007C90([v16 intValue]);
  v18 = *(*(a1 + 112) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = [[NSLocale alloc] initWithLocaleIdentifier:*(*(*(a1 + 80) + 8) + 40)];
  v21 = [*(a1 + 32) transcriptionController];
  *(*(*(a1 + 120) + 8) + 24) = [v21 isInferredLanguage:v20];

  if (v20 && *(*(*(a1 + 120) + 8) + 24) == 1)
  {
    v22 = sub_1000330E0();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 56);
      v24 = [v20 localeIdentifier];
      *buf = 138412546;
      v35 = v23;
      v36 = 2112;
      v37 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "processAudioForFileAtURL:Attempting to transcribe audio at external URL %@ in locale %@", buf, 0x16u);
    }

    v25 = [*(a1 + 32) transcriptionController];
    [v25 retrieveDictationResultWithLocaleForFileAtURL:*(a1 + 56) locale:v20 profanityFilterOverride:objc_msgSend(*(a1 + 32) queuePriority:"enableProfanityFilter:" duration:0) transcriptionBeginCallback:*(a1 + 128) completion:{*(a1 + 64), *(a1 + 72), *(a1 + 136)}];
  }

  else
  {
    v26 = sub_1000330E0();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 56);
      v28 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 138412546;
      v35 = v27;
      v36 = 2112;
      v37 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "processAudioForFileAtURL:Abandon transcription for audio at external URL %@ with transcriptionAssetLocale %@ as not inferred", buf, 0x16u);
    }

    v25 = [NSString stringWithFormat:@"Not attempting transcription as model is not inferred."];
    v29 = *(a1 + 72);
    v32 = NSLocalizedDescriptionKey;
    v33 = v25;
    v30 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v31 = [NSError errorWithDomain:kVVErrorDomain code:5001 userInfo:v30];
    (*(v29 + 16))(v29, 0, v31);
  }
}

void sub_100034F8C(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = VMStoreCopyRecordWithIdentifier();
  if (v3)
  {
    v4 = v3;
    v5 = VMStoreRecordCopyDataPath();
    Duration = VMStoreRecordGetDuration(v4);
    if ([v5 length])
    {
      v7 = [NSURL fileURLWithPath:v5 isDirectory:0];
      v8 = v7;
      if (v7 && Duration >= 1)
      {
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v9 = *(a1 + 32);
        v42[2] = sub_1000354B4;
        v42[3] = &unk_1000EE348;
        v42[4] = v9;
        v43 = *(a1 + 56);
        v33 = objc_retainBlock(v42);
        v10 = Duration;
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_100035624;
        v40[3] = &unk_1000EE398;
        v40[4] = *(a1 + 32);
        v41 = *(a1 + 56);
        *&v40[5] = Duration;
        v11 = objc_retainBlock(v40);
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_100035F48;
        v34[3] = &unk_1000EE3E8;
        v34[4] = *(a1 + 32);
        v39 = *(a1 + 56);
        v12 = v8;
        v13 = *(a1 + 48);
        v35 = v12;
        v38 = v13;
        v14 = v11;
        v36 = v14;
        v37 = *(a1 + 40);
        v15 = objc_retainBlock(v34);
        Flags = VMStoreRecordGetFlags(v4);
        v17 = [*(a1 + 32) transcriptionController];
        v18 = v17 == 0;

        if (v18)
        {
          v21 = Flags & 0xFFFEE6FF | 0x10000;
        }

        else
        {
          v19 = [*(a1 + 32) transcriptionController];
          v20 = [v19 isDictationModelInstalled];

          if (v20)
          {
            v21 = Flags & 0xFFFF66FF;
          }

          else
          {
            v21 = Flags & 0xFFFF66FF | 0x8000;
          }
        }

        v28 = VMStoreRecordGetLabel(v4);
        VMStoreRecordSetFlags(v28, v4, v21);
        VMStoreSave();
        v29 = [*(a1 + 32) transcriptionController];
        v30 = v29 == 0;

        if (v30)
        {
          v32 = sub_1000330E0();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v45 = v28;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Transcription service is disabled, not transcribing %@", buf, 0xCu);
          }

          (v15[2])(v15, 0, 0);
        }

        else
        {
          v31 = [*(a1 + 32) transcriptionController];
          [v31 retrieveDictationResultForFileAtURL:v12 queuePriority:*(a1 + 48) duration:v33 transcriptionBeginCallback:v15 completion:v10];
        }

LABEL_26:
        CFRelease(v4);

        return;
      }

      v12 = v7;
    }

    else
    {
      v12 = 0;
    }

    v25 = sub_1000330E0();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = VMStoreRecordGetLabel(v4);
      *buf = 138412290;
      v45 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "dataURL is empty or duration is 0, not transcribing %@", buf, 0xCu);
    }

    v27 = *(a1 + 40);
    if (v27)
    {
      (*(v27 + 16))(v27, 0);
    }

    goto LABEL_26;
  }

  v22 = sub_1000330E0();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(a1 + 56);
    *buf = 67109120;
    LODWORD(v45) = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Record deleted before processing began for VM with identifier %d", buf, 8u);
  }

  v24 = *(a1 + 40);
  if (v24)
  {
    (*(v24 + 16))(v24, 0);
  }
}

void sub_1000354B4(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035544;
  block[3] = &unk_1000EE320;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void sub_100035544(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = VMStoreCopyRecordWithIdentifier();
  if (v2)
  {
    v3 = v2;
    v4 = VMStoreRecordGetFlags(v2) & 0xFFFE7FFF;
    v6 = VMStoreRecordGetLabel(v3);
    VMStoreRecordSetFlags(v6, v3, v4 | 0x200u);
    VMStoreSave();
    CFRelease(v3);
  }

  else
  {
    v5 = sub_1000330E0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Record deleted during transcribe operation, not setting transcribing flag.", buf, 2u);
    }
  }
}

void sub_100035624(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035724;
  block[3] = &unk_1000EE370;
  v14 = *(a1 + 48);
  block[4] = *(a1 + 32);
  v11 = v5;
  v13 = *(a1 + 40);
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void sub_100035724(uint64_t a1)
{
  v3 = (a1 + 64);
  v2 = *(a1 + 64);
  v49 = v3;
  cf = VMStoreCopyRecordWithIdentifier();
  if (cf)
  {
    v4 = +[NSLocale currentLocale];
    v5 = [v4 localeIdentifier];

    v52 = v5;
    v6 = [*(a1 + 32) transcriptionController];
    v47 = [v6 getTranscriptionLocaleIdentifier];

    v54 = objc_alloc_init(NSMutableDictionary);
    v7 = [NSNumber numberWithInt:*v49];
    [v54 setObject:v7 forKeyedSubscript:@"vmIdentifier"];

    v8 = *(a1 + 32);
    v9 = VMStoreRecordCopyTranscriptionPath();
    v10 = [v8 readDataFromFile:v9];

    v50 = v10;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v10 confidence];
      v11 = [NSNumber numberWithFloat:?];
      [v54 setObject:v11 forKeyedSubscript:@"transcriptionConfidence"];
      v12 = [v10 confidenceRating];
      v45 = v12 > 1;
      v13 = &off_1000F57D0;
      if (v12 > 1)
      {
        v13 = 0;
      }

      v44 = v13;
      v48 = v11;
    }

    else
    {
      v14 = sub_1000330E0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10009C820(v49);
      }

      [v54 setObject:&off_1000F57E8 forKeyedSubscript:@"transcriptionConfidence"];
      v48 = 0;
      v45 = 0;
      v44 = &off_1000F5800;
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      v16 = [v15 dominantLocale];
      v51 = [v16 languageIdentifier];

      v17 = sub_1000330E0();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 40);
        v19 = *(a1 + 64);
        *buf = 138412802;
        v61 = v18;
        v62 = 2112;
        v63 = v51;
        v64 = 1024;
        v65 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Language ID result:'%@' Dominant Locale: '%@' for voicemail with identifier %d", buf, 0x1Cu);
      }

      v20 = [*(a1 + 40) detectedLanguageCode];
      v46 = [v20 isEqualToString:@"en"];

      v21 = [NSNumber numberWithInt:v46];
      [v54 setObject:v21 forKeyedSubscript:@"isEnglish"];

      [v54 setObject:v51 forKeyedSubscript:@"detectedDominantLocale"];
      v22 = +[NSMutableDictionary dictionary];
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v23 = [*(a1 + 40) alternatives];
      v24 = [v23 countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (v24)
      {
        v25 = *v56;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v56 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v55 + 1) + 8 * i);
            [v27 confidence];
            v28 = [NSNumber numberWithDouble:?];
            v29 = [v27 locale];
            v30 = [v29 localeIdentifier];
            [v22 setObject:v28 forKeyedSubscript:v30];
          }

          v24 = [v23 countByEnumeratingWithState:&v55 objects:v59 count:16];
        }

        while (v24);
      }

      if ([v22 count])
      {
        [v54 setObject:v22 forKeyedSubscript:@"altLocaleDict"];
      }

      v31 = [v54 objectForKeyedSubscript:@"altLocaleDict"];
      v32 = [v31 objectForKeyedSubscript:v51];

      [*(a1 + 32) donateToLanguageConsumptionBiomeStream:v51 confidence:v32 duration:*(a1 + 56)];
      v33 = +[VMAWDReporter sharedInstance];
      v34 = [v54 objectForKeyedSubscript:@"altLocaleDict"];
      LOBYTE(v43) = v46;
      [v33 reportVoicemailProcessed:v52 transcriptionSuccess:v45 transcriptionFailureReason:v44 assetLocale:v47 transcriptionConfidence:v48 lidSuccess:1 lidFailureReason:0 isEnglish:v43 dominantLocale:v51 dominantLocaleConfidence:v32 altLocaleDict:v34];

      v35 = v51;
    }

    else
    {
      if (!*(a1 + 48))
      {
        goto LABEL_24;
      }

      v41 = +[VMAWDReporter sharedInstance];
      v42 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) languageIDFailureReasonForError:*(a1 + 48)]);
      LOBYTE(v43) = 0;
      [v41 reportVoicemailProcessed:v52 transcriptionSuccess:v45 transcriptionFailureReason:v44 assetLocale:v47 transcriptionConfidence:v48 lidSuccess:0 lidFailureReason:v42 isEnglish:v43 dominantLocale:0 dominantLocaleConfidence:0 altLocaleDict:0];

      v35 = sub_1000330E0();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_10009C898((a1 + 48));
      }
    }

LABEL_24:
    v36 = VMStoreRecordCopySummarizationPath();
    if (([*(a1 + 32) writeDataToFile:v36 fileData:v54] & 1) == 0)
    {
      v37 = sub_1000330E0();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10009C910(v49);
      }
    }

    CFRelease(cf);

    v38 = 1;
    goto LABEL_32;
  }

  v39 = sub_1000330E0();
  v52 = v39;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Record deleted during Language ID operation, ignoring LID result.", buf, 2u);
  }

  v38 = 0;
LABEL_32:

  v40 = sub_1000330E0();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v61) = v38;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Exiting LID Completion handler. Finished? %d", buf, 8u);
  }
}

void sub_100035F48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100036080;
  v13[3] = &unk_1000EE3C0;
  v20 = *(a1 + 72);
  v8 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  v9 = v8;
  v10 = *(a1 + 64);
  v16 = v9;
  v19 = v10;
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, v13);
}

uint64_t sub_100036080(uint64_t a1)
{
  v3 = (a1 + 88);
  v2 = *(a1 + 88);
  v4 = VMStoreCopyRecordWithIdentifier();
  if (v4)
  {
    v5 = v4;
    v6 = VMStoreRecordGetLabel(v4);
    v7 = +[NSLocale currentLocale];
    v37 = [v7 localeIdentifier];

    v8 = [*(a1 + 32) transcriptionController];
    v38 = [v8 getTranscriptionLocaleIdentifier];

    if (!*(a1 + 40))
    {
      if (!*(a1 + 48))
      {
        v15 = 0;
LABEL_29:
        v25 = +[VMAWDReporter sharedInstance];
        [v25 reportVoicemailTranscriptionAttempted];

        Flags = VMStoreRecordGetFlags(v5);
        VMStoreRecordSetFlags(v6, v5, Flags & 0xFFFF6DFF | 0x1000);
        VMStoreSave();
        LODWORD(v25) = _os_feature_enabled_impl();
        v27 = sub_1000330E0();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        if (v25)
        {
          if (v28)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "processTranscriptForRecordWithIdentifier: Flag languageIDEnabled enabled.", buf, 2u);
          }

          v29 = [*(a1 + 32) transcriptionController];
          [v29 retrieveLanguageIDResultForFileAtURL:*(a1 + 56) queuePriority:*(a1 + 80) completion:*(a1 + 64)];
        }

        else
        {
          if (v28)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "VMTranscriptionControllerCompletion: Preparing voicemail metadata", buf, 2u);
          }

          v29 = objc_alloc_init(NSMutableDictionary);
          v31 = *(a1 + 40);
          if (v31)
          {
            [v31 confidence];
          }

          else
          {
            LODWORD(v30) = -1.0;
          }

          v32 = [NSNumber numberWithFloat:v30];
          [v29 setObject:v32 forKeyedSubscript:@"Transcription Confidence"];

          v33 = [NSNumber numberWithInt:*v3];
          [v29 setObject:v33 forKeyedSubscript:@"vmIdentifier"];

          v34 = VMStoreRecordCopySummarizationPath();
          if (([*(a1 + 32) writeDataToFile:v34 fileData:v29] & 1) == 0)
          {
            v35 = sub_1000330E0();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              sub_10009CAAC(v3);
            }
          }
        }

        CFRelease(v5);
        goto LABEL_44;
      }

      v16 = +[VMAWDReporter sharedInstance];
      [v16 reportVoicemailTranscriptionFailedWithReason:{objc_msgSend(*(a1 + 32), "transcriptionFailureReasonForError:", *(a1 + 48))}];

      v17 = +[VMAWDReporter sharedInstance];
      v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) transcriptionFailureReasonForError:*(a1 + 48)]);
      [v17 reportVoicemailTranscriptionProcessed:v37 success:0 reason:v18 assetLocale:v38 confidence:0];

      v19 = sub_1000330E0();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10009CA34((a1 + 48));
      }

      v15 = 0;
LABEL_28:

      goto LABEL_29;
    }

    v9 = sub_1000330E0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      [v10 confidence];
      *buf = 138412546;
      v41 = v10;
      v42 = 2048;
      v43 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Dictation result was: '%@', confidence %f", buf, 0x16u);
    }

    if ([*(a1 + 40) confidenceRating] < 2)
    {
      v20 = +[VMAWDReporter sharedInstance];
      [v20 reportVoicemailTranscriptionFailedWithReason:2];

      v13 = +[VMAWDReporter sharedInstance];
      [*(a1 + 40) confidence];
      v14 = [NSNumber numberWithFloat:?];
      [v13 reportVoicemailTranscriptionProcessed:v37 success:0 reason:&off_1000F57D0 assetLocale:v38 confidence:v14];
    }

    else
    {
      v12 = +[VMAWDReporter sharedInstance];
      [v12 reportVoicemailTranscriptionCompleted];

      v13 = +[VMAWDReporter sharedInstance];
      [*(a1 + 40) confidence];
      v14 = [NSNumber numberWithFloat:?];
      [v13 reportVoicemailTranscriptionProcessed:v37 success:1 reason:0 assetLocale:v38 confidence:v14];
    }

    v19 = VMStoreRecordCopyTranscriptionPath();
    if ([v19 length])
    {
      v21 = [NSURL fileURLWithPath:v19 isDirectory:0];
      if (v21)
      {
        v22 = [*(a1 + 40) archivedData];
        v39 = 0;
        v15 = [v22 writeToURL:v21 options:268435457 error:&v39];
        v23 = v39;

        if (v15)
        {
          VMStoreRecordSetFlag(v6, v5, 0x100u);
        }

        else
        {
          v24 = sub_1000330E0();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_10009C988();
          }
        }

        goto LABEL_27;
      }
    }

    else
    {
      v21 = sub_1000330E0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10009C9F8();
      }
    }

    v15 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v6 = sub_1000330E0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Record deleted during transcribe operation, ignoring transcript result.", buf, 2u);
  }

  v15 = 0;
LABEL_44:

  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))(result, v15);
  }

  return result;
}

void sub_1000372C0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_100038410(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000384A8;
  v3[3] = &unk_1000EE348;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);
}

void sub_1000384B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000385C0;
  block[3] = &unk_1000EE438;
  v15 = *(a1 + 48);
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t sub_1000385C0(uint64_t a1)
{
  [*(a1 + 32) processTranscriptionSpeechAnalyzerCompletionHandlerForRecordWithIndentifier:*(a1 + 64) transcript:*(a1 + 40) error:*(a1 + 48)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100038620(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038764;
  block[3] = &unk_1000EE488;
  v8 = *(a1 + 32);
  v21 = *(a1 + 80);
  v19 = *(a1 + 64);
  block[4] = v8;
  v14 = v5;
  v15 = v6;
  v17 = *(a1 + 48);
  v9 = *(a1 + 40);
  v10 = *(a1 + 72);
  v16 = v9;
  v20 = v10;
  v18 = *(a1 + 56);
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, block);
}

void sub_100038764(uint64_t a1)
{
  v2 = [*(a1 + 32) processLanguageIDCompletionHandlerForRecordWithIndentifier:*(a1 + 96) duration:*(a1 + 40) languageDetectorResult:*(a1 + 48) error:*(a1 + 80)];
  v3 = [v2 objectForKey:@"transcriptionAssetLocale"];
  if (!v3)
  {
    v13 = sub_1000330E0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 96);
      v20 = 67109120;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Abandon transcription for record with identifier %d as empty transcriptionAssetLocale", &v20, 8u);
    }

    (*(*(a1 + 64) + 16))();
    goto LABEL_12;
  }

  v4 = [*(a1 + 32) transcriptionController];
  v5 = [v4 isPersTranscriptionAvailable];

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = sub_1000330E0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "personalizedTranscriptionEnabled enabled.", &v20, 2u);
  }

  v7 = [*(a1 + 32) transcriptionController];
  v8 = [v7 isInferredLanguage:v3];

  if (v8)
  {
LABEL_6:
    v9 = sub_1000330E0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 96);
      v11 = [v3 localeIdentifier];
      v20 = 67109378;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting to transcribe record with identifier %d in locale %@", &v20, 0x12u);
    }

    v12 = [*(a1 + 32) transcriptionController];
    [v12 retrieveDictationResultWithLocaleForFileAtURL:*(a1 + 56) locale:v3 profanityFilterOverride:objc_msgSend(*(a1 + 32) queuePriority:"enableProfanityFilter:" duration:0) transcriptionBeginCallback:*(a1 + 88) completion:{*(a1 + 72), *(a1 + 64), *(a1 + 80)}];

LABEL_12:
    v15 = sub_1000330E0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 96);
      v20 = 67109120;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Exiting LID completion handler for record with identifier %d", &v20, 8u);
    }

    goto LABEL_15;
  }

  v17 = sub_1000330E0();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 96);
    v19 = [v3 localeIdentifier];
    v20 = 67109378;
    v21 = v18;
    v22 = 2112;
    v23 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Abandon transcription for record with identifier %d as transcriptionAssetLocale %@ not inferred.", &v20, 0x12u);
  }

  (*(*(a1 + 64) + 16))();
LABEL_15:
}

void sub_100038C34(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = VMStoreCopyRecordWithIdentifier();
  if (v3)
  {
    v4 = v3;
    v5 = VMStoreRecordCopyDataPath();
    Duration = VMStoreRecordGetDuration(v4);
    if ([v5 length])
    {
      v7 = [NSURL fileURLWithPath:v5 isDirectory:0];
      v8 = v7;
      if (v7 && Duration >= 1)
      {
        Flags = VMStoreRecordGetFlags(v4);
        v10 = [*(a1 + 32) transcriptionController];

        if (v10)
        {
          v24 = [*(a1 + 32) transcriptionController];
          v11 = [*(a1 + 32) transcriptionController];
          v12 = [v11 matchedSystemLocale];
          if ([v24 isSpeechAnalyzerTranscriptionModelInstalled:v12])
          {
            v13 = [*(a1 + 32) transcriptionController];
            v14 = [v13 isLanguageIDModelInstalled];

            if (v14)
            {
              v15 = Flags & 0xFFFF66FF;
LABEL_22:
              v23 = VMStoreRecordGetLabel(v4);
              VMStoreRecordSetFlags(v23, v4, v15);
              VMStoreSave();
              [*(a1 + 32) fetchLanguageIDBasedDictationResultForFileAtURL:*(a1 + 56) dataURL:v8 queuePriority:*(a1 + 48) duration:*(a1 + 40) completion:Duration];

              v19 = v8;
LABEL_23:
              CFRelease(v4);

              return;
            }
          }

          else
          {
          }

          v15 = Flags & 0xFFFF66FF | 0x8000;
          goto LABEL_22;
        }

        v15 = Flags & 0xFFFEE6FF | 0x10000;
        goto LABEL_22;
      }

      v19 = v7;
    }

    else
    {
      v19 = 0;
    }

    v20 = sub_1000330E0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = VMStoreRecordGetLabel(v4);
      *buf = 138412290;
      v26 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "dataURL is empty or duration is 0, not transcribing %@", buf, 0xCu);
    }

    v22 = *(a1 + 40);
    if (v22)
    {
      (*(v22 + 16))(v22, 0);
    }

    goto LABEL_23;
  }

  v16 = sub_1000330E0();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 56);
    *buf = 67109120;
    LODWORD(v26) = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Record deleted before processing began for VM with identifier %d", buf, 8u);
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))(v18, 0);
  }
}

void sub_10003989C(uint64_t a1)
{
  v2 = VMStoreRecordCopyDescription(*(a1 + 40));
  v3 = sub_1000330E0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reporting transcription problem for record %@", &v10, 0xCu);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  Flags = VMStoreRecordGetFlags(*(a1 + 40));
  v5 = VMStoreRecordGetLabel(*(a1 + 40));
  VMStoreRecordSetFlags(v5, *(a1 + 40), Flags | 0x40800u);
  VMStoreSave();
  v6 = *(a1 + 40);
  v7 = VMStoreRecordCopyDataPath();
  if ([v7 length])
  {
    v8 = [NSURL fileURLWithPath:v7 isDirectory:0];
    if (v8)
    {
      v9 = [*(a1 + 32) transcriptionController];
      [v9 reportDictationProblemForFileAtURL:v8];
    }
  }

  CFRelease(*(a1 + 40));
}

void sub_100039AF0(uint64_t a1)
{
  v2 = VMStoreRecordCopyDescription(*(a1 + 32));
  v3 = sub_1000330E0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (*(a1 + 40))
    {
      v4 = @"YES";
    }

    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reporting transcription marked accurate (%@) for record %@", &v10, 0x16u);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  Flags = VMStoreRecordGetFlags(*(a1 + 32));
  v6 = VMStoreRecordGetLabel(*(a1 + 32));
  v7 = v6;
  if (*(a1 + 40))
  {
    v8 = Flags | 0x20800u;
  }

  else
  {
    v8 = Flags & 0xFFFDF7FF | 0x800;
  }

  VMStoreRecordSetFlags(v6, *(a1 + 32), v8);
  VMStoreSave();
  v9 = +[VMAWDReporter sharedInstance];
  [v9 reportVoicemailTranscriptionRatedAccurate:*(a1 + 40)];

  CFRelease(*(a1 + 32));
}

id sub_100039D3C(uint64_t a1)
{
  v2 = sub_1000330E0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = [*(a1 + 40) name];
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v7, 0x16u);
  }

  [*(a1 + 32) unloadTranscriptionService];
  return [*(a1 + 32) loadTranscriptionService];
}

id sub_100039F14(uint64_t a1)
{
  v2 = sub_1000330E0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_class();
    v5 = [*(a1 + 40) name];
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v7, 0x16u);
  }

  [*(a1 + 32) unloadTranscriptionService];
  return [*(a1 + 32) loadTranscriptionService];
}

void sub_10003AA28(uint64_t a1)
{
  v1 = [*(a1 + 32) transcriptionTask];
  [v1 retranscribeAllVoicemails];
}

void sub_10003ABF4(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = [*(a1 + 32) delegates];
  v2 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = *v12;
    do
    {
      v4 = 0;
      do
      {
        if (*v12 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v11 + 1) + 8 * v4);
        v6 = [*(a1 + 32) delegates];
        v7 = [v6 objectForKey:v5];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10003ADC8;
        block[3] = &unk_1000ED8D8;
        block[4] = v5;
        v10 = *(a1 + 40);
        dispatch_async(v7, block);

        v4 = v4 + 1;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v2);
  }
}

uint64_t sub_10003ADC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 transcriptionAvailabilityChanged:v5];
  }

  return result;
}

void sub_10003AFD0(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = [*(a1 + 32) delegates];
  v2 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = *v13;
    do
    {
      v4 = 0;
      do
      {
        if (*v13 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v12 + 1) + 8 * v4);
        v6 = [*(a1 + 32) delegates];
        v7 = [v6 objectForKey:v5];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10003B1B8;
        block[3] = &unk_1000EDFC8;
        block[4] = v5;
        v10 = *(a1 + 40);
        v11 = *(a1 + 48);
        dispatch_async(v7, block);

        v4 = v4 + 1;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v2);
  }
}

uint64_t sub_10003B1B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    return [v4 transcriptionController:v5 transcriptionStatusChanged:v6];
  }

  return result;
}

void sub_10003B3A0(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = [*(a1 + 32) delegates];
  v2 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = *v13;
    do
    {
      v4 = 0;
      do
      {
        if (*v13 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v12 + 1) + 8 * v4);
        v6 = [*(a1 + 32) delegates];
        v7 = [v6 objectForKey:v5];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10003B588;
        block[3] = &unk_1000EE520;
        block[4] = v5;
        v10 = *(a1 + 40);
        v11 = *(a1 + 48);
        dispatch_async(v7, block);

        v4 = v4 + 1;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v2);
  }
}

uint64_t sub_10003B588(double *a1)
{
  v2 = *(a1 + 4);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 4);
    v5 = *(a1 + 5);
    v6 = a1[6];

    return [v4 transcriptionController:v5 transcriptionProgressFractionCompletedChanged:v6];
  }

  return result;
}

void sub_10003B76C(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [*(a1 + 32) delegates];
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = *v15;
    do
    {
      v4 = 0;
      do
      {
        if (*v15 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v14 + 1) + 8 * v4);
        v6 = [*(a1 + 32) delegates];
        v7 = [v6 objectForKey:v5];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10003B950;
        block[3] = &unk_1000EE520;
        block[4] = v5;
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v12 = v8;
        v13 = v9;
        dispatch_async(v7, block);

        v4 = v4 + 1;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v2);
  }
}

uint64_t sub_10003B950(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    return [v4 transcriptionController:v5 transcriptionProgressTotalUnitCountChanged:v6];
  }

  return result;
}

void sub_10003BB4C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegates];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

void sub_10003BD20(uint64_t a1)
{
  v2 = [*(a1 + 32) delegates];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_10003BE1C(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "tsvc.svc");
  v2 = qword_10010D860;
  qword_10010D860 = v1;
}

void sub_10003DB24(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "mgmt.cln");
  v2 = qword_10010D870;
  qword_10010D870 = v1;
}

id sub_10003DD84()
{
  if (qword_10010D888 != -1)
  {
    sub_10009CEDC();
  }

  v1 = qword_10010D880;

  return v1;
}

void sub_10003DED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VMBiomeClient;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10003DFE4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (*(a1 + 48) > 3.0)
    {
      [*(a1 + 40) doubleValue];
      if (v2 > 0.7)
      {
        v3 = sub_10003DD84();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v4 = *(a1 + 32);
          v5 = *(a1 + 40);
          v16 = 136315906;
          v17 = "";
          v18 = 2080;
          v19 = "";
          v20 = 2112;
          v21 = v4;
          v22 = 2112;
          v23 = v5;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sCreating App.LanguageConsumption Event for language %@, confidence %@", &v16, 0x2Au);
        }

        v6 = BiomeLibrary();
        v7 = [v6 App];
        v8 = [v7 LanguageConsumption];

        v9 = [v8 source];
        v10 = [BMAppLanguageConsumption alloc];
        v11 = *(a1 + 32);
        v12 = [NSNumber numberWithDouble:*(a1 + 48)];
        v13 = [v10 initWithDataSource:5 adamID:0 contentLanguage:v11 contentGenre:0 timeSpent:v12];

        v14 = sub_10003DD84();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v13 description];
          v16 = 136315650;
          v17 = "";
          v18 = 2080;
          v19 = "";
          v20 = 2112;
          v21 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sDonating App.LanguageConsumption Event: %@", &v16, 0x20u);
        }

        [v9 sendEvent:v13];
      }
    }
  }
}

void sub_10003E21C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_10003E28C(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "biom.cln");
  v2 = qword_10010D880;
  qword_10010D880 = v1;
}

id sub_10003E724(uint64_t a1)
{
  v2 = [NSXPCListener alloc];
  v3 = [v2 initWithMachServiceName:VMXPCMachServiceName];
  v4 = qword_10010D890;
  qword_10010D890 = v3;

  v5 = qword_10010D890;
  v6 = [*(a1 + 32) queue];
  [v5 _setQueue:v6];

  v7 = *(a1 + 32);
  v8 = qword_10010D890;

  return [v8 setDelegate:v7];
}

void sub_10003EE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003EE28(id *a1)
{
  v2 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003EEF8;
  block[3] = &unk_1000EE5E0;
  v4 = a1[5];
  objc_copyWeak(&v6, a1 + 7);
  v5 = a1[6];
  dispatch_async(v2, block);

  objc_destroyWeak(&v6);
}

void sub_10003EEF8(uint64_t a1)
{
  v2 = sub_100002784();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136315650;
    v7 = "";
    v8 = 2080;
    v9 = "";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sClient XPC connection %@ interrupted/invalid", &v6, 0x20u);
  }

  [*(a1 + 32) invalidate];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained clients];
  [v5 removeObject:*(a1 + 40)];
}

void sub_100040CE0(id a1)
{
  v1 = objc_alloc_init(VMDaemon);
  v2 = qword_10010D8A0;
  qword_10010D8A0 = v1;
}

void sub_1000410A0(uint64_t a1)
{
  v1 = [*(a1 + 32) voicemailService];
  [v1 full_start];
}

void sub_1000410E4(uint64_t a1, void *a2)
{
  v3 = a2;
  string = xpc_dictionary_get_string(v3, "Name");
  v5 = xpc_dictionary_get_value(v3, "UserInfo");

  v6 = _CFXPCCreateCFObjectFromXPCObject();
  if (string && ([NSString stringWithUTF8String:string], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    [*(a1 + 32) executeHandlerForNotificationWithName:v7 info:v6];
  }

  else
  {
    v8 = sub_100002784();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 136316162;
      v12 = "";
      v13 = 2080;
      v14 = "";
      v15 = 2112;
      v16 = objc_opt_class();
      v17 = 2112;
      v18 = 0;
      v19 = 2112;
      v20 = v6;
      v10 = v16;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#W %s%s%@ event stream handler can't handle notification %@ with user info %@.", &v11, 0x34u);
    }
  }
}

void sub_1000412D8(uint64_t a1)
{
  v2 = sub_100002784();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) locked];
    v4 = @"NO";
    v6 = 136315650;
    v7 = "";
    if (v3)
    {
      v4 = @"YES";
    }

    v8 = 2080;
    v9 = "";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%svmd daemon locked = %@", &v6, 0x20u);
  }

  v5 = [*(a1 + 32) voicemailService];
  [v5 startXpc];
}

void sub_100041638(uint64_t a1)
{
  v2 = [*(a1 + 32) locked];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 telephonyService];
  }

  else
  {
    [v3 voicemailService];
  }
  v4 = ;
  [v4 executeHandlerForNotificationWithName:*(a1 + 40) info:*(a1 + 48)];
}

void sub_100041800(uint64_t a1)
{
  v8 = 0;
  v1 = [*(a1 + 32) unlock_if_needed:&v8];
  if (!v1)
  {
    v6 = v8;
    v2 = sub_100002784();
    v7 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (v6 == 1)
    {
      if (!v7)
      {
        goto LABEL_11;
      }

      *buf = 136315394;
      v10 = "";
      v11 = 2080;
      v12 = "";
      v3 = "#I %s%skVMDeviceUnlockedNotification unlocked the daemon";
    }

    else
    {
      if (!v7)
      {
        goto LABEL_11;
      }

      *buf = 136315394;
      v10 = "";
      v11 = 2080;
      v12 = "";
      v3 = "#I %s%skVMDeviceUnlockedNotification happened but daemon was already unlocked";
    }

    v4 = v2;
    v5 = 22;
    goto LABEL_10;
  }

  v2 = sub_100002784();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "";
    v11 = 2080;
    v12 = "";
    v13 = 2112;
    v14 = v1;
    v3 = "#W %s%sUnable to first unlock the device: %@";
    v4 = v2;
    v5 = 32;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v3, buf, v5);
  }

LABEL_11:
}

void sub_100041A3C(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "main.dmn");
  v2 = qword_10010D8B0;
  qword_10010D8B0 = v1;
}

void sub_100042C68(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "imap.gre.store");
  v2 = qword_10010D8C0;
  qword_10010D8C0 = v1;
}

void sub_100042CF0(id a1)
{
  v1 = objc_alloc_init(VVMSharedCallStatusObserver);
  v2 = qword_10010D8D0;
  qword_10010D8D0 = v1;
}

id sub_1000430EC()
{
  if (qword_10010D8E8 != -1)
  {
    sub_10009CF40();
  }

  v1 = qword_10010D8E0;

  return v1;
}

void sub_100043258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VVMSharedCallStatusObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000437E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  os_unfair_lock_unlock(v11 + 2);

  _Unwind_Resume(a1);
}

void sub_100043968(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "csd");
  v2 = qword_10010D8E0;
  qword_10010D8E0 = v1;
}

uint64_t sub_100043C30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100043D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100043D48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

void sub_100043E28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = *(a1 + 40);

  if (WeakRetained != v3)
  {
    v4 = *(a1 + 40);
    v5 = (*(a1 + 32) + 24);

    objc_storeWeak(v5, v4);
  }
}

void sub_100043F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100043F98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

void sub_100044078(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = *(a1 + 40);

  if (WeakRetained != v3)
  {
    v4 = *(a1 + 40);
    v5 = (*(a1 + 32) + 32);

    objc_storeWeak(v5, v4);
  }
}

id sub_100044478(uint64_t a1, void *a2)
{
  v3 = [a2 UUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_1000456F8(id *a1)
{
  v2 = [a1[4] queue];
  dispatch_assert_queue_V2(v2);

  v3 = [a1[5] vmd_notification];
  v4 = vm_vmd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "local_voicemailInfoAvailableNotification: %@", buf, 0xCu);
  }

  v5 = [v3 name];
  v6 = sub_10006B7A4();
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = vm_vmd_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v10 = objc_opt_class();
      *buf = 138412546;
      v55 = v10;
      v56 = 2112;
      v57 = v3;
      v11 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ is handling %@ ", buf, 0x16u);
    }

    v12 = [NSUUID alloc];
    v13 = [a1[6] labelID];
    v14 = [v12 initWithUUIDString:v13];

    v15 = v14;
    v16 = [v3 userInfo];
    v17 = v16;
    if (v15 && v16)
    {
      [a1[4] accounts];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v18 = v52 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v50;
        v46 = v17;
        while (2)
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v50 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v49 + 1) + 8 * i);
            v24 = [v23 UUID];
            v25 = [v24 isEqual:v15];

            if (v25)
            {
              v26 = [v23 copy];
              v27 = [a1[4] telephonyClient];
              v28 = [a1[6] context];
              v48 = 0;
              v29 = [v27 getShortLabel:v28 error:&v48];
              v30 = v48;
              [v26 setAbbreviatedAccountDescription:v29];

              v31 = [a1[6] label];
              [v26 setAccountDescription:v31];

              v32 = [a1[4] telephonyClient];
              v33 = [a1[6] context];
              v47 = v30;
              v34 = [v32 getMobileSubscriberHomeCountryList:v33 error:&v47];
              v44 = v47;

              v35 = [v34 firstObject];
              [v26 setIsoCountryCode:v35];

              v36 = vm_vmd_log();
              v17 = v46;
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v55 = v26;
                v56 = 2112;
                v57 = v46;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Updating account %@ with carrier information %@ ", buf, 0x16u);
              }

              v37 = sub_10006B7E4();
              v38 = [v46 objectForKeyedSubscript:v37];

              v39 = sub_10006B7C4();
              v40 = [v46 objectForKeyedSubscript:v39];

              if (v38)
              {
                [v26 setProvisioned:{objc_msgSend(v38, "isEqualToString:", @"NewAccount", v44) ^ 1}];
              }

              if (v40)
              {
                v41 = [[VMHandle alloc] initWithType:1 value:v40];
                [v26 setHandle:v41];
              }

              v42 = a1[4];
              v43 = [v26 copy];
              [v42 setAccount:v43 forUUID:v15];

              goto LABEL_24;
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v49 objects:v53 count:16];
          v17 = v46;
          if (v20)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:
    }
  }
}

void sub_100045D44(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"VMCarrierNotificationUserInfoAccountUUID"];
  v4 = [v2 objectForKeyedSubscript:@"VMCarrierNotificationUserInfoIMAPParameters"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v19 = a1;
    [*(a1 + 40) accounts];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v23 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [v12 UUID];
          v14 = [v13 isEqual:v3];

          if (v14)
          {
            v15 = [v12 copy];
            v16 = vm_vmd_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v25 = v15;
              v26 = 2112;
              v27 = v5;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updating account %@ with IMAP information %@ ", buf, 0x16u);
            }

            [*(v19 + 40) updateAccount:v15 withDictionary:v5];
            v17 = *(v19 + 40);
            v18 = [v15 copy];
            [v17 setAccount:v18 forUUID:v3];

            goto LABEL_17;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }
}

uint64_t sub_100046674(uint64_t a1, void *a2)
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
        v40 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
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

      switch(v13)
      {
        case 3:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 40) |= 4u;
          while (1)
          {
            v42 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v42 & 0x7F) << v23;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_58;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v25;
          }

LABEL_58:
          v38 = 36;
LABEL_67:
          *(a1 + v38) = v22;
          goto LABEL_68;
        case 4:
          v14 = PBReaderReadString();
          v15 = 16;
          break;
        case 5:
          v14 = PBReaderReadString();
          v15 = 24;
          break;
        default:
          goto LABEL_53;
      }

      v29 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_68:
      v39 = [a2 position];
      if (v39 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        v41 = 0;
        v33 = [a2 position] + 1;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v32 |= (v41 & 0x7F) << v30;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v11 = v31++ >= 9;
        if (v11)
        {
          v36 = 0;
          goto LABEL_62;
        }
      }

      if ([a2 hasError])
      {
        v36 = 0;
      }

      else
      {
        v36 = v32;
      }

LABEL_62:
      *(a1 + 8) = v36;
      goto LABEL_68;
    }

    if (v13 != 2)
    {
LABEL_53:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_68;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    *(a1 + 40) |= 2u;
    while (1)
    {
      v43 = 0;
      v19 = [a2 position] + 1;
      if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
      {
        v21 = [a2 data];
        [v21 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v18 |= (v43 & 0x7F) << v16;
      if ((v43 & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      v11 = v17++ >= 9;
      if (v11)
      {
        v22 = 0;
        goto LABEL_66;
      }
    }

    if ([a2 hasError])
    {
      v22 = 0;
    }

    else
    {
      v22 = v18;
    }

LABEL_66:
    v38 = 32;
    goto LABEL_67;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10004766C()
{
  if (qword_10010D8F8 != -1)
  {
    sub_10009CFD0();
  }

  return qword_10010D8F0;
}

void sub_100047F54(uint64_t a1, uint64_t a2)
{
  v4 = vm_vmd_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2048;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ Asset download progress=%lu ", &v6, 0x16u);
  }
}

void sub_100048014(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = vm_vmd_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v13 = 138412802;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Asset download complete with path=%@ error=%@", &v13, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v10 = [WeakRetained progress];
  [v10 setCompletedUnitCount:1];

  if (WeakRetained)
  {
    v11 = [WeakRetained operationCompletion];

    if (v11)
    {
      v12 = [WeakRetained operationCompletion];
      (v12)[2](v12, 1, v6);
    }
  }

  [*(a1 + 40) downloadComplete:1];
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_100048328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak((v11 + 56));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v12 - 56));
  _Unwind_Resume(a1);
}

void sub_100048354(id a1, unint64_t a2)
{
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LID Asset download progress=%lu ", &v4, 0xCu);
  }
}

void sub_1000483F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained operationCompletion];

    if (v9)
    {
      v10 = vm_vmd_log();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (v11)
        {
          v13 = 138412546;
          v14 = v5;
          v15 = 2112;
          v16 = v6;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "LID Asset download complete with path=%@ error=%@", &v13, 0x16u);
        }

        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      else
      {
        if (v11)
        {
          v13 = 138412290;
          v14 = v6;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "LID Assets currently not deployed. error=%@", &v13, 0xCu);
        }
      }

      v12 = [v8 operationCompletion];
      (v12)[2](v12, v5 != 0, v6);
    }
  }

  [*(a1 + 32) downloadComplete:*(*(*(a1 + 48) + 8) + 24)];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100048B8C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 16);
  if (a2)
  {
    v3();
    v5 = vm_vmd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10009CFE4(a2, v5);
    }
  }

  else
  {

    v3();
  }
}

void sub_100048F4C(id a1, MAProgressNotification *a2)
{
  v2 = a2;
  v3 = [(MAProgressNotification *)v2 isStalled];
  v4 = vm_vmd_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v12 = 134218240;
      v13 = [(MAProgressNotification *)v2 totalWritten];
      v14 = 2048;
      v15 = [(MAProgressNotification *)v2 totalExpected];
      v6 = "Asset Download Progress stalled at %lld of %lld bytes";
      v7 = v4;
      v8 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v12, v8);
    }
  }

  else if (v5)
  {
    v9 = [(MAProgressNotification *)v2 totalWritten];
    v10 = [(MAProgressNotification *)v2 totalExpected];
    [(MAProgressNotification *)v2 expectedTimeRemaining];
    v12 = 134218496;
    v13 = v9;
    v14 = 2048;
    v15 = v10;
    v16 = 2048;
    v17 = v11;
    v6 = "Asset Download Progress: %lld of %lld bytes, ~%.2f seconds remaining";
    v7 = v4;
    v8 = 32;
    goto LABEL_6;
  }
}

id sub_100049098(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = vm_vmd_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10009D05C(a2, v4);
    }

    return [*(a1 + 32) downloadAssetComplete:0];
  }

  else
  {
    v6 = *(a1 + 32);

    return [v6 downloadAssetComplete:1];
  }
}

uint64_t sub_1000493AC(uint64_t a1, void *a2)
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
            v21 = &OBJC_IVAR___AWDVisualVoicemailDownloaded__timestamp;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___AWDVisualVoicemailDownloaded__timestamp;
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
        v21 = &OBJC_IVAR___AWDVisualVoicemailDownloaded__lengthInSeconds;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___AWDVisualVoicemailDownloaded__lengthInSeconds;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

void sub_10004A354(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "tspt.lid");
  v2 = qword_10010D900;
  qword_10010D900 = v1;
}

id sub_10004A3F0()
{
  if (qword_10010D918 != -1)
  {
    sub_10009D0E8();
  }

  v1 = qword_10010D910;

  return v1;
}

void sub_10004A434(id a1)
{
  v1 = os_log_create("com.apple.voicemail", "imap.syn");
  v2 = qword_10010D910;
  qword_10010D910 = v1;
}

id sub_10004A60C(uint64_t a1)
{
  result = CTGetCurrentCallCount();
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 synchronize:0 reason:@"CallStatusChanged"];
  }

  return result;
}

void sub_10004B430(uint64_t a1)
{
  v2 = a1 + 32;
  [*(*(a1 + 32) + 120) start];
  v3 = [*(*v2 + 120) getState];
  v4 = sub_100026660(*(*v2 + 112));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) getServiceObjLogPrefix];
    v6 = 136315650;
    v7 = v5;
    v8 = 2080;
    v9 = " ";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sstartup Stewie state is: %@", &v6, 0x20u);
  }

  [*(a1 + 32) stateChanged:v3];
}

void sub_10004B6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VVService;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_10004BB14(uint64_t a1)
{
  [*(a1 + 32) cancelDelayedSynchronize:@"NotSubscribed"];
  v2 = *(a1 + 32);

  return [v2 resetDelayedSynchronizationAttemptCount];
}

void sub_10004BB58(uint64_t a1)
{
  v2 = a1 + 40;
  [*(a1 + 32) postNotificationName:@"VVServiceOnlineStateChangedNotification" object:*(a1 + 40) userInfo:0];
  v4 = *(v2 - 8);
  v3 = *v2;
  v9[0] = @"yesno";
  v5 = [NSNumber numberWithBool:*(v2 + 8)];
  v10[0] = v5;
  v9[1] = @"contextInfo";
  v6 = [*v2 contextInfo];
  v10[1] = v6;
  v9[2] = @"serviceLabelID";
  v7 = [*(a1 + 40) serviceLabelID];
  v10[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
  [v4 postNotificationName:@"VVServiceSubscriptionStatusChangedNotification" object:v3 userInfo:v8];
}

void sub_10004C220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004C2C0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(v3 + 144) != v4)
  {
    block[7] = v1;
    block[8] = v2;
    *(v3 + 144) = v4;
    v6 = [*(a1 + 32) serialDispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004C36C;
    block[3] = &unk_1000EDEC8;
    block[4] = *(a1 + 32);
    dispatch_async(v6, block);
  }
}

void sub_10004C460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004C530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004C5D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 147) != v2)
  {
    *(v1 + 147) = v2;
    v4 = *(a1 + 40);
    v5 = +[VVMSharedNetworkObserver sharedInstance];
    v6 = v5;
    v7 = *(a1 + 32);
    if (v4 == 1)
    {
      v8 = [*(a1 + 32) serialDispatchQueue];
      [v6 addDelegate:v7 queue:v8];

      v9 = +[VVMSharedNetworkObserver sharedInstance];
      *(*(a1 + 32) + 146) = [v9 isNetworkReachable];
    }

    else
    {
      [v5 removeDelegate:*(a1 + 32)];

      *(*(a1 + 32) + 146) = 0;
    }

    v10 = [*(a1 + 32) serialDispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004C734;
    block[3] = &unk_1000EDEC8;
    block[4] = *(a1 + 32);
    dispatch_async(v10, block);
  }
}

void sub_10004C7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004C880(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 148) != v2)
  {
    *(v1 + 148) = v2;
  }

  return result;
}

void sub_10004C940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004C9DC(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 32) != v2)
  {
    *(v1 + 32) = v2;
  }

  return result;
}

void sub_10004CAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_10004CAC0(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_10004CB48(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 40) != v2)
  {
    *(v1 + 40) = v2;
  }

  return result;
}

void sub_10004CC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10004CC6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004CDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004CE94(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 145) != v2)
  {
    *(v1 + 145) = v2;
  }

  return result;
}

void sub_10004CF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004CFF0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v3 + 176);
  if (v5 != v4)
  {
    block[7] = v1;
    block[8] = v2;
    *(v3 + 176) = v4;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D084;
    block[3] = &unk_1000EEB08;
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    block[5] = v5;
    block[6] = v6;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_10004D084(uint64_t a1)
{
  v2 = sub_100026660(*(*(a1 + 32) + 112));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) getServiceObjLogPrefix];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    *buf = 136315906;
    v13 = v3;
    v14 = 2080;
    v15 = " ";
    v16 = 2048;
    v17 = v4;
    v18 = 2048;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sPosting VVServiceTrashedCountChangedNotification; old trashed count=%lu, new trashed count=%lu", buf, 0x2Au);
  }

  v6 = +[NSNotificationCenter defaultCenter];
  v7 = *(a1 + 32);
  v8 = [NSNumber numberWithUnsignedInteger:*(a1 + 48), @"TrashedCount"];
  v11 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v6 postNotificationName:@"VVServiceTrashedCountChangedNotification" object:v7 userInfo:v9];
}

void sub_10004D2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004D36C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v3 + 184);
  if (v5 != v4)
  {
    block[7] = v1;
    block[8] = v2;
    *(v3 + 184) = v4;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004D400;
    block[3] = &unk_1000EEB08;
    v6 = *(a1 + 40);
    block[4] = *(a1 + 32);
    block[5] = v5;
    block[6] = v6;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_10004D400(uint64_t a1)
{
  v2 = sub_100026660(*(*(a1 + 32) + 112));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) getServiceObjLogPrefix];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    *buf = 136315906;
    v13 = v3;
    v14 = 2080;
    v15 = " ";
    v16 = 2048;
    v17 = v4;
    v18 = 2048;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sPosting VVServiceUnreadCountChangedNotification; old unread count=%lu, new unread count=%lu", buf, 0x2Au);
  }

  v6 = +[NSNotificationCenter defaultCenter];
  v7 = *(a1 + 32);
  v8 = [NSNumber numberWithUnsignedInteger:*(a1 + 48), @"UnreadCount"];
  v11 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v6 postNotificationName:@"VVServiceUnreadCountChangedNotification" object:v7 userInfo:v9];
}

void sub_10004E440(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _enterFallbackMode];
    if (!xpc_activity_set_state(v3, 5))
    {
      if (WeakRetained)
      {
        v5 = sub_100026660(WeakRetained[14]);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [WeakRetained getServiceObjLogPrefix];
          v7 = [WeakRetained fallbackActivityIdentifier];
          v8 = 136315650;
          v9 = v6;
          v10 = 2080;
          v11 = " ";
          v12 = 2112;
          v13 = v7;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sUnable to transition %@ activity to state done", &v8, 0x20u);
        }
      }

      else
      {
        v5 = vm_vmd_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 138412290;
          v9 = @"com.apple.voicemail.fallback";
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unable to transition %@ activity to state done", &v8, 0xCu);
        }
      }
    }
  }
}

void sub_10005004C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100050A50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = [WeakRetained serialDispatchQueue];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100050B58;
      v7[3] = &unk_1000EEB58;
      objc_copyWeak(&v9, (a1 + 32));
      v8 = v3;
      dispatch_async(v6, v7);

      objc_destroyWeak(&v9);
    }
  }
}

void sub_100050B58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _attemptDelayedSynchronize];
    if (!xpc_activity_set_state(*(a1 + 32), 5))
    {
      v4 = sub_100026660(v3[14]);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [v3 getServiceObjLogPrefix];
        v6 = [v3 delayedRetryActivityIdentifier];
        v7 = 136315650;
        v8 = v5;
        v9 = 2080;
        v10 = " ";
        v11 = 2112;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to transition %@ activity to state done", &v7, 0x20u);
      }
    }
  }
}

void sub_100051610(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = [WeakRetained serialDispatchQueue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100051860;
      v10[3] = &unk_1000EEB58;
      objc_copyWeak(&v12, (a1 + 32));
      v11 = v3;
      dispatch_async(v6, v10);

      objc_destroyWeak(&v12);
    }

    if (!xpc_activity_set_state(v3, 4))
    {
      if (v5)
      {
        v7 = sub_100026660(v5[14]);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v5 getServiceObjLogPrefix];
          v9 = [v5 automatedTrashActivityIdentifier];
          *buf = 136315650;
          v14 = v8;
          v15 = 2080;
          v16 = " ";
          v17 = 2112;
          v18 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#W %s%sCOMPACTION: Unable to transition %@ activity to state continue", buf, 0x20u);
        }
      }

      else
      {
        v7 = vm_vmd_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v14 = @"com.apple.voicemail.autotrash";
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "COMPACTION: Unable to transition %@ activity to state continue", buf, 0xCu);
        }
      }
    }
  }
}

void sub_100051860(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained _attemptScheduledTrashCompaction:*(a1 + 32)];
  }
}

id sub_100052360(uint64_t a1)
{
  [*(a1 + 32) cancelDelayedSynchronize:@"SyncRetryOverCellular"];
  v2 = *(a1 + 32);

  return [v2 synchronize:1 reason:@"SyncRetryOverCellular"];
}

unsigned __int8 *sub_100052AB0(unsigned __int8 *result)
{
  v1 = *(result + 4);
  v2 = result[40];
  if (*(v1 + 146) != v2)
  {
    *(v1 + 146) = v2;
    return [*(result + 4) _updateOnlineStatus];
  }

  return result;
}

void sub_100053010(uint64_t a1)
{
  v2 = [*(a1 + 32) stateRequestAttemptCount];
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = v4;
  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v4 integerValue];
    v3 = v4;
  }
}

void sub_100053168(uint64_t a1)
{
  v2 = [*(a1 + 32) stateRequestAttemptCount];
  v6 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v6)
  {
    v3 = [v6 integerValue] + 1;
  }

  else
  {
    v3 = 1;
  }

  v4 = [NSNumber numberWithInteger:v3];
  v5 = [*(a1 + 32) stateRequestAttemptCount];
  [v5 setObject:v4 forKeyedSubscript:*(a1 + 40)];
}

void sub_10005331C(uint64_t a1)
{
  v2 = [*(a1 + 32) stateRequestAttemptCount];
  [v2 setObject:0 forKeyedSubscript:*(a1 + 40)];
}

void sub_100053470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_100053490(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 168);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = *(a1 + 32);
    v5 = *(v4 + 168);
    *(v4 + 168) = v3;

    v2 = *(*(a1 + 32) + 168);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

void sub_100054288(_Unwind_Exception *a1)
{
  v9 = v5;

  _Unwind_Resume(a1);
}

id sub_10005435C()
{
  if (qword_10010D958 != -1)
  {
    sub_10009D2C4();
  }

  v1 = qword_10010D950;

  return v1;
}

void sub_1000543A0(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = (a1 + 32);
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v4 = [*v2 locale];
  v5 = *(*v3 + 24);
  *(*v3 + 24) = v4;

  v6 = +[VVMSharedNetworkObserver sharedInstance];
  v7 = *(*v3 + 32);
  *(*v3 + 32) = v6;

  [*(*v3 + 32) addDelegate:*v3 queue:*(*v3 + 96)];
  v8 = objc_alloc_init(VMAssetMgmtController);
  v9 = *(*v3 + 88);
  *(*v3 + 88) = v8;

  v10 = sub_10005435C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = objc_opt_class();
    v13 = *(a1 + 32);
    v29 = 138412546;
    v30 = v12;
    v31 = 2048;
    v32 = v13;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<%@ %p> Adding transcription operation observers", &v29, 0x16u);
  }

  v15 = *(a1 + 32);
  v16 = *(v15 + 48);
  v17 = NSStringFromSelector("operationCount");
  [v16 addObserver:v15 forKeyPath:v17 options:3 context:off_10010D3C8];

  v18 = *(a1 + 32);
  v19 = *(v18 + 56);
  v20 = NSStringFromSelector("fractionCompleted");
  [v19 addObserver:v18 forKeyPath:v20 options:1 context:off_10010D3D0];

  v21 = *(a1 + 32);
  v22 = *(v21 + 56);
  v23 = NSStringFromSelector("totalUnitCount");
  [v22 addObserver:v21 forKeyPath:v23 options:1 context:off_10010D3D8];

  v24 = sub_10005435C();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(a1 + 32);
    v26 = objc_opt_class();
    v27 = *(a1 + 32);
    v29 = 138412546;
    v30 = v26;
    v31 = 2048;
    v32 = v27;
    v28 = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "<%@ %p> Created", &v29, 0x16u);
  }
}

void sub_100054800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VMVoicemailTranscriptionController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100054968(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

void sub_100054A7C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_100055150(uint64_t a1)
{
  v2 = [*(a1 + 32) assetMgmtController];
  *(*(*(a1 + 48) + 8) + 24) = [v2 isInferredLanguage:*(a1 + 40)];
}

void sub_1000552B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000552E8(uint64_t a1)
{
  v3 = [*(a1 + 32) getSpeechAnalyzerAssetIDForLocale:*(a1 + 40)];
  v2 = [*(a1 + 32) assetMgmtController];
  *(*(*(a1 + 56) + 8) + 24) = [v2 updateControllerWithLocale:*(a1 + 48) assetIdentifier:v3];
}

void sub_10005596C(uint64_t a1)
{
  v2 = [VMTranscriptionTranscribeOperation alloc];
  v3 = [*(a1 + 32) locale];
  v5 = [(VMSpeechURLRecognitionRequestOperation *)v2 initWithLocale:v3 URL:*(a1 + 40)];

  [(VMTranscriptionTranscribeOperation *)v5 setProcessOnServer:1];
  v4 = [*(a1 + 32) transcriptionOperationQueue];
  [v4 addOperation:v5];
}

void sub_100055A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_100055C14(uint64_t a1)
{
  v2 = [VMTranscriptionTranscribeOperation alloc];
  v3 = [*(a1 + 32) locale];
  v4 = [(VMSpeechURLRecognitionRequestOperation *)v2 initWithLocale:v3 URL:*(a1 + 40)];

  [(VMTranscriptionTranscribeOperation *)v4 setQueuePriority:*(a1 + 64)];
  [(VMTranscriptionTranscribeOperation *)v4 setTimeout:*(a1 + 72) + *(a1 + 72)];
  [(VMTranscriptionTranscribeOperation *)v4 setTranscribeOperationCompletion:*(a1 + 48)];
  [(VMTranscriptionTranscribeOperation *)v4 setTranscribeOperationBeginCallback:*(a1 + 56)];
  [(VMTranscriptionTranscribeOperation *)v4 configureProgressWithUnitCount:*(a1 + 72)];
  [(VMTranscriptionTranscribeOperation *)v4 setDuration:*(a1 + 72)];
  [*(a1 + 32) addTranscriptionOperation:v4 duration:*(a1 + 72)];
}

void sub_100055D10(id *a1)
{
  if ([a1[4] isFileURL])
  {
    if ([a1[5] isDictationModelInstalled])
    {
      v2 = sub_10005435C();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = a1[4];
        *buf = 138412290;
        v20 = v3;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Dictation model is already installed. Initiating operation to transcribe audio file at %@.", buf, 0xCu);
      }

      [a1[5] setTranscriptionAssetModelProcessed:1];
      (*(a1[6] + 2))();
    }

    else
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100055F7C;
      v14[3] = &unk_1000EEC48;
      v8 = a1[5];
      *&v9 = a1[4];
      *(&v9 + 1) = a1[5];
      v13 = v9;
      v10 = a1[6];
      v11 = a1[7];
      *&v12 = v10;
      *(&v12 + 1) = v11;
      v15 = v13;
      v16 = v12;
      [v8 requestTranscriptionAssetModelOperationWithCompletion:v14];
    }
  }

  else
  {
    v4 = a1[7];
    v17[0] = NSLocalizedDescriptionKey;
    v17[1] = NSURLErrorKey;
    v5 = a1[4];
    v18[0] = @"Expected a file URL.";
    v18[1] = v5;
    v6 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    v7 = [NSError errorWithDomain:kVVErrorDomain code:1039 userInfo:v6];
    v4[2](v4, 0, v7);
  }
}

void sub_100055F7C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_10005435C();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Request to install dictation model completed successfully. Initiating operation to transcribe audio file at %@.", buf, 0xCu);
    }

    [*(a1 + 40) setTranscriptionAssetModelProcessed:1];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10009D2D8(v5, v7);
    }

    v9 = [v5 localizedDescription];
    v10 = [NSString stringWithFormat:@"Unable to download offline transcription model. Speech error was: %@", v9];

    v11 = *(a1 + 56);
    v14 = NSLocalizedDescriptionKey;
    v15 = v10;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v13 = [NSError errorWithDomain:kVVErrorDomain code:1040 userInfo:v12];
    (*(v11 + 16))(v11, 0, v13);
  }
}

void sub_100056328(uint64_t a1)
{
  v3 = [[VMSpeechAnalyzerLanguageIDOperation alloc] initSpeechAnalyzerForLanguageID:*(a1 + 32)];
  [v3 setQueuePriority:*(a1 + 56)];
  [v3 setLanguageIDOperationCompletion:*(a1 + 48)];
  v2 = [*(a1 + 40) speechAnalyzerOperationQueue];
  [v2 addOperation:v3];
}

void sub_1000563CC(id *a1)
{
  if ([a1[4] isFileURL])
  {
    if ([a1[5] isLanguageIDModelInstalled])
    {
      v2 = sub_10005435C();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = a1[4];
        *buf = 138412290;
        v16 = v3;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Language ID model is already installed. Initiating operation to LID audio file at %@.", buf, 0xCu);
      }

      (*(a1[6] + 2))();
    }

    else
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100056614;
      v9[3] = &unk_1000EECC0;
      v8 = a1[5];
      v10 = a1[4];
      v11 = a1[6];
      v12 = a1[7];
      [v8 requestLanguageIDModelOperationWithCompletion:v9];
    }
  }

  else
  {
    v4 = a1[7];
    v13[0] = NSLocalizedDescriptionKey;
    v13[1] = NSURLErrorKey;
    v5 = a1[4];
    v14[0] = @"Expected a file URL.";
    v14[1] = v5;
    v6 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    v7 = [NSError errorWithDomain:kVVErrorDomain code:1042 userInfo:v6];
    v4[2](v4, 0, v7);
  }
}

void sub_100056614(void *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_10005435C();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Request to fetch/install Language ID model completed successfully. Initiating operation to LID audio file at %@.", buf, 0xCu);
    }

    (*(a1[5] + 16))();
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10009D350(v5, v7);
    }

    v9 = [v5 localizedDescription];
    v10 = [NSString stringWithFormat:@"Unable to download offline Language ID model. Speech error was: %@", v9];

    v11 = a1[6];
    v14 = NSLocalizedDescriptionKey;
    v15 = v10;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v13 = [NSError errorWithDomain:kVVErrorDomain code:1043 userInfo:v12];
    (*(v11 + 16))(v11, 0, v13);
  }
}

void sub_100056A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, uint64_t a27, void *a28, void *a29)
{
  _Block_object_dispose((v33 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_100056ACC(uint64_t a1)
{
  v2 = [VMSpeechAnalyzerTranscribeOperation alloc];
  v3 = *(*(*(a1 + 72) + 8) + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) serialDispatchQueue];
  v7 = [(VMSpeechAnalyzerTranscribeOperation *)v2 initSpeechAnalyzerForTranscribe:v4 taskHint:v3 dataURL:v5 queue:v6 profanityFilterOverride:*(a1 + 96)];

  [v7 setQueuePriority:*(a1 + 80)];
  [v7 setTranscribeOperationCompletion:*(a1 + 56)];
  [v7 setTranscribeOperationBeginCallback:*(a1 + 64)];
  [v7 configureProgressWithUnitCount:*(a1 + 88)];
  [v7 setDuration:*(a1 + 88)];
  [*(a1 + 48) addTranscriptionOperation:v7 duration:*(a1 + 88)];
}

void sub_100056BDC(uint64_t a1)
{
  if ([*(a1 + 32) isFileURL])
  {
    *(*(*(a1 + 72) + 8) + 24) = +[VMConfiguration getVMLocaleSpeechAssetTypeforLocale:gasrEnabled:](VMConfiguration, "getVMLocaleSpeechAssetTypeforLocale:gasrEnabled:", *(a1 + 40), [*(a1 + 48) isGasrModelAvailable]);
    v2 = sub_10005435C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) path];
      v4 = [*(a1 + 40) localeIdentifier];
      v5 = *(*(*(a1 + 72) + 8) + 24);
      *buf = 138412802;
      v36 = v3;
      v37 = 2112;
      v38 = v4;
      v39 = 2048;
      v40 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Retrieving dictation for file at %@, locale %@, type %lu", buf, 0x20u);
    }

    v6 = *(*(*(a1 + 72) + 8) + 24);
    if (v6 == kVM_GASRTaskHint || v6 == kVM_NGASRTaskHint)
    {
      if ([*(a1 + 48) isSpeechAnalyzerTranscriptionModelInstalledForTaskHint:*(a1 + 40) taskHint:?])
      {
        v8 = sub_10005435C();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [*(a1 + 40) localeIdentifier];
          v10 = *(a1 + 32);
          *buf = 138412546;
          v36 = v9;
          v37 = 2112;
          v38 = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Transcription model %@ is already installed. Initiating operation to transcribe audio file at %@.", buf, 0x16u);
        }

        (*(*(a1 + 64) + 16))();
      }

      else
      {
        v21 = [*(a1 + 48) assetModel];
        v22 = *(*(*(a1 + 72) + 8) + 24);
        v23 = [*(a1 + 40) localeIdentifier];
        v24 = [*(a1 + 48) serialDispatchQueue];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_1000570DC;
        v26[3] = &unk_1000EED10;
        v25 = *(a1 + 72);
        v26[4] = *(a1 + 48);
        v30 = v25;
        v27 = *(a1 + 32);
        v28 = *(a1 + 64);
        v29 = *(a1 + 56);
        [v21 performInstallAssetModelWithType:1 speechTaskHint:v22 language:v23 queue:v24 completion:v26];
      }
    }

    else
    {
      v15 = sub_10005435C();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = [*(a1 + 40) localeIdentifier];
        sub_10009D3C8(v17, buf, v15);
      }

      v18 = *(a1 + 56);
      v33 = NSLocalizedDescriptionKey;
      v34 = @"Locale's task hint not supported.";
      v19 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v20 = [NSError errorWithDomain:kVVErrorDomain code:1040 userInfo:v19];
      (*(v18 + 16))(v18, 0, v20);
    }
  }

  else
  {
    v11 = *(a1 + 56);
    v31[0] = NSLocalizedDescriptionKey;
    v31[1] = NSURLErrorKey;
    v12 = *(a1 + 32);
    v32[0] = @"Expected a file URL.";
    v32[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
    v14 = [NSError errorWithDomain:kVVErrorDomain code:1039 userInfo:v13];
    (*(v11 + 16))(v11, 0, v14);
  }
}

void sub_1000570DC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_10005435C();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) getSpeechAnalyzerAssetIDForLocaleWithTaskHint:*(*(a1 + 32) + 72) taskHint:*(*(*(a1 + 64) + 8) + 24)];
      v9 = *(a1 + 40);
      *buf = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Request to install Transcription model %@ completed successfully. Initiating operation to transcribe audio file at %@.", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
    [*(a1 + 32) setTranscriptionAssetModelProcessed:1];
    [*(a1 + 32) manageSpeechAssetSubscriptions_sync];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) getSpeechAnalyzerAssetIDForLocaleWithTaskHint:*(*(a1 + 32) + 72) taskHint:*(*(*(a1 + 64) + 8) + 24)];
      sub_10009D420(v10, v5, buf, v7);
    }

    v11 = [v5 localizedDescription];
    v12 = [NSString stringWithFormat:@"Unable to download offline transcription model. Speech error was: %@", v11];

    v13 = *(a1 + 56);
    v16 = NSLocalizedDescriptionKey;
    v17 = v12;
    v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v15 = [NSError errorWithDomain:kVVErrorDomain code:1040 userInfo:v14];
    (*(v13 + 16))(v13, 0, v15);
  }
}

void sub_10005761C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 == off_10010D3C8)
  {
    v3 = [*(a1 + 32) objectForKey:NSKeyValueChangeOldKey];
    v4 = [v3 integerValue];

    v5 = [*(a1 + 32) objectForKey:NSKeyValueChangeNewKey];
    v6 = [v5 integerValue];

    if (v4)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6 <= 0;
    }

    if (!v7 || (v4 >= 1 ? (v8 = v6 == 0) : (v8 = 0), v8))
    {
      v9 = sub_10005435C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = objc_opt_class();
        v12 = *(a1 + 40);
        *buf = 138413058;
        v44 = v11;
        v45 = 2048;
        v46 = v12;
        v47 = 2048;
        v48 = v4;
        v49 = 2048;
        v50 = v6;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<%@ %p> observeValueForKeyPath: oldOperationCount %ld, newOperationCount %ld", buf, 0x2Au);
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v14 = [*(*(a1 + 40) + 48) operations];
      v15 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v15)
      {
        v16 = *v39;
        while (2)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v39 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v38 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              v27 = sub_10005435C();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v28 = *(a1 + 40);
                v29 = objc_opt_class();
                v30 = *(a1 + 40);
                *buf = 138412802;
                v44 = v29;
                v45 = 2048;
                v46 = v30;
                v47 = 2112;
                v48 = v18;
                v31 = v29;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "<%@ %p> observeValueForKeyPath: transcription operation %@", buf, 0x20u);
              }

              v24 = 1;
              goto LABEL_37;
            }

            v19 = sub_10005435C();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = *(a1 + 40);
              v21 = objc_opt_class();
              v22 = *(a1 + 40);
              *buf = 138412802;
              v44 = v21;
              v45 = 2048;
              v46 = v22;
              v47 = 2112;
              v48 = v18;
              v23 = v21;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "<%@ %p> observeValueForKeyPath: non-transcription operation %@", buf, 0x20u);
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v38 objects:v42 count:16];
          v24 = 0;
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v24 = 0;
      }

LABEL_37:

      v32 = sub_10005435C();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(a1 + 40);
        v34 = objc_opt_class();
        v35 = *(a1 + 40);
        v36 = asNSStringBOOL();
        *buf = 138412802;
        v44 = v34;
        v45 = 2048;
        v46 = v35;
        v47 = 2112;
        v48 = v36;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "<%@ %p> observeValueForKeyPath: transcribing is %@", buf, 0x20u);
      }

      if ([*(a1 + 40) setTranscribingChanged:v24])
      {
        [*(a1 + 40) notifyTranscriptionStatusChanged:v24];
      }
    }
  }

  else
  {
    if (v2 == off_10010D3D0)
    {
      v25 = *(a1 + 48);
      v26 = *(a1 + 40);
      v37 = v25;
      [v25 fractionCompleted];
      [v26 notifyTranscriptionProgressFractionCompletedChanged:?];
    }

    else
    {
      if (v2 != off_10010D3D8)
      {
        return;
      }

      v37 = *(a1 + 48);
      [*(a1 + 40) notifyTranscriptionProgressTotalUnitCountChanged:{objc_msgSend(v37, "totalUnitCount")}];
    }
  }
}

void sub_100057BBC(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = [*(a1 + 32) delegateToQueue];
  v2 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = *v13;
    do
    {
      v4 = 0;
      do
      {
        if (*v13 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v12 + 1) + 8 * v4);
        v6 = [*(a1 + 32) delegateToQueue];
        v7 = [v6 objectForKey:v5];

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100057D94;
        block[3] = &unk_1000EDFC8;
        v8 = *(a1 + 32);
        block[4] = v5;
        block[5] = v8;
        v11 = *(a1 + 40);
        dispatch_async(v7, block);

        v4 = v4 + 1;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v2);
  }
}