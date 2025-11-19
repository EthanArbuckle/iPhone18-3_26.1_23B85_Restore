void sub_1000DCF9C(uint64_t a1, uint64_t a2)
{
  v4 = [[DirectUploadEntity alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  v22 = 0;
  v23 = @"post_id";
  [(DirectUploadEntity *)v4 getValues:&v22 forProperties:&v23 count:1];
  v5 = -[MediaSocialPostEntity initWithPersistentID:inDatabase:]([MediaSocialPostEntity alloc], "initWithPersistentID:inDatabase:", [v22 longLongValue], *(a1 + 32));
  v6 = v5;
  if (!v5)
  {
LABEL_4:
    v7 = [[NSNumber alloc] initWithLongLong:a2];
    [*(a1 + 40) addObject:v7];
    [(DirectUploadEntity *)v4 deleteFromDatabase];
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      *v21 = 138412546;
      *&v21[4] = objc_opt_class();
      *&v21[12] = 2048;
      *&v21[14] = a2;
      v12 = *&v21[4];
      LODWORD(v20) = 22;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_15:

        goto LABEL_29;
      }

      v11 = [NSString stringWithCString:v13 encoding:4, v21, v20, *v21, *&v21[16]];
      free(v13);
      SSFileLog();
    }

    goto LABEL_15;
  }

  if ([(MediaSocialPostEntity *)v5 isOverPollDuration])
  {
    [(MediaSocialPostEntity *)v6 deleteFromDatabase];
    goto LABEL_4;
  }

  v14 = +[SSLogConfig sharedDaemonConfig];
  if (!v14)
  {
    v14 = +[SSLogConfig sharedConfig];
  }

  v15 = [v14 shouldLog];
  if ([v14 shouldLogToDisk])
  {
    v16 = v15 | 2;
  }

  else
  {
    v16 = v15;
  }

  v17 = [v14 OSLogObject];
  if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v16 &= 2u;
  }

  if (v16)
  {
    *v21 = 138412546;
    *&v21[4] = objc_opt_class();
    *&v21[12] = 2048;
    *&v21[14] = a2;
    v18 = *&v21[4];
    LODWORD(v20) = 22;
    v19 = _os_log_send_and_compose_impl();

    if (!v19)
    {
      goto LABEL_27;
    }

    v17 = [NSString stringWithCString:v19 encoding:4, v21, v20, *v21, *&v21[8]];
    free(v19);
    SSFileLog();
  }

LABEL_27:
  v7 = [(MediaSocialPostEntity *)v6 statusPollRequest];
  if (v7)
  {
    [*(a1 + 56) addObject:v7];
  }

LABEL_29:
}

void sub_1000DD8F0(uint64_t a1, uint64_t a2)
{
  v3 = [[MediaSocialPostEntity alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  if ([(MediaSocialPostEntity *)v3 isReadyToSend])
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  }
}

void sub_1000DD968(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[5];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DDA2C;
    block[3] = &unk_1003286B8;
    v7 = *(a1 + 48);
    block[4] = *(a1 + 32);
    v10 = v7;
    v9 = v3;
    dispatch_async(v6, block);
  }
}

void sub_1000DDAD4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v6, "persistentIdentifier")}];
  v4 = [*(*(a1 + 32) + 72) objectForKey:v3];
  v5 = v4;
  if (v4)
  {
    [v6 setCountOfBytesExpectedToSend:{objc_msgSend(v4, "countOfBytesExpectedToSend")}];
    [v6 setCountOfBytesSent:{objc_msgSend(v5, "countOfBytesSent")}];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1000DE05C(uint64_t a1)
{
  v2 = [[MediaSocialPostEntity alloc] initWithPersistentID:*(a1 + 56) inDatabase:*(a1 + 32)];
  v3 = [(MediaSocialPostEntity *)v2 allUploadPersistentIdentifiers];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [(MediaSocialPostEntity *)v2 deleteFromDatabase];
  [*(a1 + 40) _enqueueNextReadyMediaSocialPostOperationWithDatabase:*(a1 + 32)];

  return 1;
}

void sub_1000DE194(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = +[Daemon daemon];
  [v1 releaseKeepAliveAssertion:@"DirectUploadController"];
}

void sub_1000DE308(uint64_t a1)
{
  message = xpc_dictionary_create_reply(*(a1 + 32));
  (*(*(a1 + 48) + 16))();
  xpc_connection_send_message(*(a1 + 40), message);
  v2 = +[Daemon daemon];
  [v2 releaseKeepAliveAssertion:@"DirectUploadController"];
}

void sub_1000DE654(uint64_t a1, void *a2)
{
  v3 = [a2 copyXPCEncoding];
  xpc_array_append_value(*(a1 + 32), v3);
}

void sub_1000DEA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DEAAC(uint64_t a1)
{
  v2 = [[MediaSocialPostEntity alloc] initWithPersistentID:*(a1 + 56) inDatabase:*(a1 + 32)];
  [(MediaSocialPostEntity *)v2 setValue:&off_10034BD90 forProperty:@"is_failed"];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = objc_opt_class();
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = v7;
  [v8 status];
  v16 = 138412802;
  v17 = v7;
  v18 = 2048;
  v19 = v9;
  v21 = v20 = 2112;
  LODWORD(v15) = 32;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v6 = [NSString stringWithCString:v11 encoding:4, &v16, v15];
    free(v11);
    SSFileLog();
LABEL_11:
  }

  v12 = [*(a1 + 40) _errorCoordinator];
  v13 = [*(a1 + 48) serviceErrorMessage];
  [v12 addDialogForPost:v2 errorMessage:v13 canRetry:0];

  return 1;
}

uint64_t sub_1000DECE8(uint64_t a1)
{
  v2 = [[MediaSocialPostEntity alloc] initWithPersistentID:*(a1 + 56) inDatabase:*(a1 + 32)];
  [(MediaSocialPostEntity *)v2 setValue:&off_10034BD90 forProperty:@"is_failed"];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = objc_opt_class();
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = v7;
  [v8 status];
  v16 = 138412802;
  v17 = v7;
  v18 = 2048;
  v19 = v9;
  v21 = v20 = 2112;
  LODWORD(v15) = 32;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v6 = [NSString stringWithCString:v11 encoding:4, &v16, v15];
    free(v11);
    SSFileLog();
LABEL_11:
  }

  v12 = [*(a1 + 40) _errorCoordinator];
  v13 = [*(a1 + 48) serviceErrorMessage];
  [v12 addDialogForPost:v2 errorMessage:v13 canRetry:1];

  return 1;
}

uint64_t sub_1000DEF24(uint64_t a1)
{
  v2 = [[MediaSocialPostEntity alloc] initWithPersistentID:*(a1 + 64) inDatabase:*(a1 + 32)];
  v3 = [(MediaSocialPostEntity *)v2 valueForProperty:@"failure_count"];
  v4 = [v3 integerValue];

  [(MediaSocialPostEntity *)v2 setValue:&off_10034BD90 forProperty:@"is_failed"];
  v5 = [NSNumber numberWithInteger:v4 + 1];
  [(MediaSocialPostEntity *)v2 setValue:v5 forProperty:@"failure_count"];

  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 OSLogObject];
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v10 = objc_opt_class();
    v11 = *(a1 + 64);
    v12 = *(a1 + 48);
    v17 = v10;
    [v12 error];
    v18 = 138413058;
    v19 = v10;
    v20 = 2048;
    v21 = v11;
    v22 = 2048;
    v23 = v4 + 1;
    v25 = v24 = 2112;
    LODWORD(v16) = 42;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_12;
    }

    v9 = [NSString stringWithCString:v13 encoding:4, &v18, v16];
    free(v13);
    SSFileLog();
  }

LABEL_12:
  if (v4 > 1)
  {
    v14 = [*(a1 + 40) _errorCoordinator];
    [v14 addDialogForPost:v2];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return 1;
}

uint64_t sub_1000DF1C8(uint64_t a1)
{
  v2 = [[MediaSocialPostEntity alloc] initWithPersistentID:*(a1 + 56) inDatabase:*(a1 + 32)];
  [*(a1 + 40) pollingInterval];
  v3 = [NSNumber numberWithDouble:?];
  [(MediaSocialPostEntity *)v2 setValue:v3 forProperty:@"poll_interval"];

  [*(a1 + 40) pollDuration];
  v4 = [NSNumber numberWithDouble:?];
  [(MediaSocialPostEntity *)v2 setValue:v4 forProperty:@"poll_duration"];

  v5 = [*(a1 + 40) activityIdentifier];
  [(MediaSocialPostEntity *)v2 setValue:v5 forProperty:@"activity_id"];

  v6 = [(MediaSocialPostEntity *)v2 statusPollRequest];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return 1;
}

uint64_t sub_1000DF460(uint64_t a1)
{
  v2 = [objc_opt_class() _orderedUploadQueryWithDatabase:*(a1 + 40) predicate:*(a1 + 48)];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000DF54C;
  v6[3] = &unk_1003287D0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 72);
  [v2 enumeratePersistentIDsUsingBlock:v6];

  return 1;
}

void sub_1000DF54C(uint64_t a1, uint64_t a2)
{
  v4 = [[DirectUploadEntity alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  [(DirectUploadEntity *)v4 setValue:&off_10034BDA8 forProperty:@"state"];
  v5 = [[NSNumber alloc] initWithLongLong:a2];
  [*(a1 + 40) addObject:v5];
  if (*(a1 + 48))
  {
    v6 = [*(*(a1 + 56) + 72) objectForKey:v5];
    v7 = [*(a1 + 56) _newSSVDirectUploadWithProgress:v6 state:3];
    [v7 setPersistentIdentifier:a2];
    [*(a1 + 48) addObject:v7];
  }

  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v12 = objc_opt_class();
    v13 = *(a1 + 64);
    *v18 = 138412802;
    *&v18[4] = v12;
    *&v18[12] = 2048;
    *&v18[14] = a2;
    *&v18[22] = 2112;
    v19 = v13;
    v14 = v12;
    LODWORD(v17) = 32;
    v15 = _os_log_send_and_compose_impl();

    if (v15)
    {
      v16 = [NSString stringWithCString:v15 encoding:4, v18, v17, *v18, *&v18[16], v19];
      free(v15);
      SSFileLog();
    }
  }

  else
  {
  }
}

uint64_t sub_1000DFE0C(uint64_t a1)
{
  v2 = [objc_opt_class() _orderedUploadQueryWithDatabase:*(a1 + 40) predicate:*(a1 + 48)];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000DFF00;
  v6[3] = &unk_100328820;
  v7 = *(a1 + 40);
  v12 = *(a1 + 80);
  v8 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 72);
  [v2 enumeratePersistentIDsUsingBlock:v6];

  return 1;
}

void sub_1000DFF00(uint64_t a1, uint64_t a2)
{
  v4 = [[DirectUploadEntity alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  [(DirectUploadEntity *)v4 resetStatusProperties];
  if (*(a1 + 72) == 1)
  {
    [(DirectUploadEntity *)v4 setValue:&off_10034BD78 forProperty:@"failure_count"];
  }

  v5 = [[DirectUploadRequest alloc] initWithEntity:v4 accountIdentifier:0];
  if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  if (*(a1 + 48))
  {
    v6 = [[NSNumber alloc] initWithLongLong:a2];
    v7 = [*(*(a1 + 56) + 72) objectForKey:v6];
    v8 = [*(a1 + 56) _newSSVDirectUploadWithProgress:v7 state:0];
    [v8 setPersistentIdentifier:a2];
    [*(a1 + 48) addObject:v8];
  }

  v9 = *(a1 + 64);
  v10 = +[SSLogConfig sharedDaemonConfig];
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v11 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v15 = objc_opt_class();
      v16 = *(a1 + 64);
      *v23 = 138412802;
      *&v23[4] = v15;
      *&v23[12] = 2048;
      *&v23[14] = a2;
      *&v23[22] = 2112;
      v24 = v16;
      v17 = v15;
      LODWORD(v22) = 32;
      goto LABEL_26;
    }

LABEL_28:

    goto LABEL_29;
  }

  if (!v10)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  v18 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v19 = v18 | 2;
  }

  else
  {
    v19 = v18;
  }

  v14 = [v11 OSLogObject];
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v19 &= 2u;
  }

  if (!v19)
  {
    goto LABEL_28;
  }

  *v23 = 138412546;
  *&v23[4] = objc_opt_class();
  *&v23[12] = 2048;
  *&v23[14] = a2;
  v17 = *&v23[4];
  LODWORD(v22) = 22;
LABEL_26:
  v20 = _os_log_send_and_compose_impl();

  if (v20)
  {
    v21 = [NSString stringWithCString:v20 encoding:4, v23, v22, *v23, *&v23[16]];
    free(v20);
    SSFileLog();
  }

LABEL_29:
}

uint64_t sub_1000E0304(uint64_t a1)
{
  v2 = [SSSQLiteComparisonPredicate predicateWithProperty:@"failure_count" value:&off_10034BD78 comparisonType:5];
  v3 = [SSSQLiteComparisonPredicate predicateWithProperty:@"failure_count" value:&off_10034BDC0 comparisonType:3];
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"state" equalToLongLong:4];
  v26[0] = v4;
  v26[1] = v2;
  v26[2] = v3;
  v5 = [NSArray arrayWithObjects:v26 count:3];
  v6 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v5];

  [*(a1 + 32) _resumeUploadsWithPredicate:v6 clientIdentifier:0 resetFailureCount:0 error:0];
  v7 = [SSSQLiteComparisonPredicate predicateWithProperty:@"failure_count" value:&off_10034BD78 comparisonType:5];
  v8 = [SSSQLiteComparisonPredicate predicateWithProperty:@"failure_count" value:&off_10034BDC0 comparisonType:3];
  v9 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_failed" equalToLongLong:1];
  v25[0] = v9;
  v25[1] = v7;
  v25[2] = v8;
  v10 = [NSArray arrayWithObjects:v25 count:3];
  v11 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v10];

  v12 = [objc_opt_class() _orderedPostQueryWithDatabase:*(a1 + 40) predicate:v11];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000E05FC;
  v17 = &unk_100328870;
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v20 = &v21;
  [v12 enumeratePersistentIDsUsingBlock:&v14];
  if (v22[3] >= 1)
  {
    [*(a1 + 32) _enqueueNextReadyMediaSocialPostOperationWithDatabase:{*(a1 + 40), v14, v15, v16, v17, v18}];
  }

  _Block_object_dispose(&v21, 8);
  return 1;
}

void sub_1000E05DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E05FC(uint64_t a1, uint64_t a2)
{
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  *v12 = 138412546;
  *&v12[4] = objc_opt_class();
  *&v12[12] = 2048;
  *&v12[14] = a2;
  v8 = *&v12[4];
  LODWORD(v11) = 22;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v7 = [NSString stringWithCString:v9 encoding:4, v12, v11, *v12, *&v12[16]];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  v10 = [[MediaSocialPostEntity alloc] initWithPersistentID:a2 inDatabase:*(a1 + 40)];
  [(MediaSocialPostEntity *)v10 setValue:&off_10034BD78 forProperty:@"is_failed"];
  ++*(*(*(a1 + 48) + 8) + 24);
}

void sub_1000E20E0(uint64_t a1, uint64_t a2)
{
  v3 = [[NSNumber alloc] initWithLongLong:a2];
  [*(a1 + 32) addObject:v3];
}

void sub_1000E22FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_alloc_init(SSVMediaSocialPostItem);
  [v5 setIdentifier:*a3];
  [v5 setType:a3[1]];
  [*(a1 + 32) addObject:v5];
}

void sub_1000E254C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(SSVMediaSocialPostExternalDestination);
  [v6 setAccessToken:*a3];
  [v6 setPageAccessToken:*(a3 + 8)];
  [v6 setPageIdentifier:*(a3 + 16)];
  v5 = sub_100123244([*(a3 + 24) integerValue]);
  [v6 setServiceIdentifier:v5];

  [*(a1 + 32) addObject:v6];
}

void sub_1000E27B0(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] _insertUploadWithAttachment:v3 properties:a1[5] database:a1[6]];
  if (v4)
  {
    [a1[7] addObject:v4];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000E28B8;
    v7[3] = &unk_1003288C0;
    v8 = a1[5];
    v5 = v4;
    v6 = a1[4];
    v9 = v5;
    v10 = v6;
    v11 = a1[6];
    v12 = a1[7];
    [v3 enumerateChildAttachmentsUsingBlock:v7];
  }
}

void sub_1000E28B8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v10 = [v5 mutableCopy];
  [v10 setObject:v6 forKey:@"parent_relationship_type"];

  v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 40) persistentID]);
  [v10 setObject:v8 forKey:@"parent_upload_id"];

  v9 = [*(a1 + 48) _insertUploadWithAttachment:v7 properties:v10 database:*(a1 + 56)];

  if (v9)
  {
    [*(a1 + 64) addObject:v9];
  }
}

void sub_1000E2ADC(uint64_t a1, uint64_t a2)
{
  v4 = [MediaSocialContentItemEntity newEntityValuesWithMediaSocialPostItem:a2];
  [v4 setObject:*(a1 + 32) forKey:@"post_id"];
  v3 = [[MediaSocialContentItemEntity alloc] initWithPropertyValues:v4 inDatabase:*(a1 + 40)];
  if (v3)
  {
    [*(a1 + 48) addObject:v3];
  }
}

void sub_1000E2CA0(uint64_t a1, uint64_t a2)
{
  v4 = [MediaSocialExternalTargetEntity newEntityValuesWithMediaSocialExternalDestination:a2];
  [v4 setObject:*(a1 + 32) forKey:@"post_id"];
  v3 = [[MediaSocialExternalTargetEntity alloc] initWithPropertyValues:v4 inDatabase:*(a1 + 40)];
  if (v3)
  {
    [*(a1 + 48) addObject:v3];
  }
}

void sub_1000E3688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    return;
  }

  v9 = objc_alloc_init(MediaSocialPostAttachment);
  [(MediaSocialPostAttachment *)v9 setAlbumIdentifier:*a3];
  [(MediaSocialPostAttachment *)v9 setAssetToken:*(a3 + 8)];
  [(MediaSocialPostAttachment *)v9 setAssetTokenType:*(a3 + 16)];
  [(MediaSocialPostAttachment *)v9 setAttachmentDescription:*(a3 + 32)];
  [(MediaSocialPostAttachment *)v9 setCategoryName:*(a3 + 24)];
  -[MediaSocialPostAttachment setExplicitContent:](v9, "setExplicitContent:", [*(a3 + 40) BOOLValue]);
  [*(a3 + 64) doubleValue];
  [(MediaSocialPostAttachment *)v9 setPreviewFrameTimestamp:?];
  [(MediaSocialPostAttachment *)v9 setTitle:*(a3 + 72)];
  [*(a3 + 80) doubleValue];
  [(MediaSocialPostAttachment *)v9 setUploadTime:?];
  [(MediaSocialPostAttachment *)v9 setUTI:*(a3 + 88)];
  v6 = [[DirectUploadEntity alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  v7 = [(DirectUploadEntity *)v6 artists];
  [(MediaSocialPostAttachment *)v9 setArtists:v7];

  if (![*(a3 + 48) longLongValue])
  {
    v8 = [[NSNumber alloc] initWithLongLong:a2];
    [*(a1 + 40) setObject:v9 forKey:v8];
    [*(a1 + 48) addObject:v9];
    goto LABEL_7;
  }

  if (*(a3 + 56))
  {
    v8 = [*(a1 + 40) objectForKey:*(a3 + 48)];
    [v8 setChildAttachment:v9 forRelationship:*(a3 + 56)];
LABEL_7:
  }
}

id sub_1000E3A24(void *a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = [a1 bundleIdentifier];
  if (v3)
  {
    v4 = [v3 copyUTF8StringOfLength:256];
    if (v4)
    {
      v5 = v4;
      [v2 setObject:v4 forKey:@"bid"];
    }
  }

  v6 = [a1 bundleVersion];
  if (v6)
  {
    v7 = [v6 copyUTF8StringOfLength:100];
    if (v7)
    {
      v8 = v7;
      [v2 setObject:v7 forKey:@"bvrs"];
    }
  }

  v9 = [a1 storeIdentifier];
  if (v9)
  {
    [v2 setObject:objc_msgSend(v9 forKey:{"stringValue"), @"appAdamId"}];
  }

  v10 = [a1 storeVersion];
  if (v10)
  {
    [v2 setObject:objc_msgSend(v10 forKey:{"stringValue"), @"appExtVrsId"}];
  }

  v11 = [a1 vendorIdentifier];
  if (v11)
  {
    [v2 setObject:v11 forKey:@"vid"];
  }

  return v2;
}

void sub_1000E5BA0(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1000E5B14);
  }

  JUMPOUT(0x1000E5B88);
}

void sub_1000E5DDC(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1000E5D90);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1000E5FB8(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1000E5F3CLL);
  }

  JUMPOUT(0x1000E5FACLL);
}

void sub_1000E6374(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1000E62F4);
  }

  JUMPOUT(0x1000E6368);
}

id sub_1000E7470(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v2 = +[ISOperationQueue mainQueue];
  }

  v3 = *(a1 + 40);

  return [v2 addOperation:v3];
}

void sub_1000E756C(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v2);
  }

  [objc_msgSend(objc_getAssociatedObject(*(a1 + 32) "com.apple.itunesstored.RequestQueue.client")];
  [*(a1 + 32) setCompletionBlock:0];
  objc_setAssociatedObject(*(a1 + 32), "com.apple.itunesstored.RequestQueue.client", 0, 0x301);

  xpc_release(v2);
}

void sub_1000E7704(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 40));
    v3 = *(a1 + 56);
    if (v3)
    {
      (*(v3 + 16))(v3, reply);
    }

    xpc_connection_send_message(*(a1 + 48), reply);
    xpc_release(reply);
  }

  [*(a1 + 32) setCompletionBlock:0];
  objc_setAssociatedObject(*(a1 + 32), "com.apple.itunesstored.RequestQueue.client", 0, 0x301);
  xpc_release(*(a1 + 40));
  v4 = *(a1 + 48);

  xpc_release(v4);
}

void sub_1000E7D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000E7D68(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void *sub_1000E7E28(void *result)
{
  v1 = *(result[4] + 16);
  if (v1 != result[5])
  {
    v2 = result;

    result = v2[5];
    *(v2[4] + 16) = result;
  }

  return result;
}

void sub_1000E91DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[SSLogConfig sharedDaemonConfig];
  v7 = v6;
  if (a2)
  {
    if (!v6)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (!v9)
    {

      goto LABEL_24;
    }

    v11 = *(a1 + 32);
    [NSNumber numberWithInteger:a2];
    v18 = 138412802;
    v19 = v11;
    v21 = v20 = 2112;
    v22 = 2112;
    v23 = v5;
    LODWORD(v17) = 32;
    v12 = _os_log_send_and_compose_impl();

    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (!v6)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v13 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v14 = v13 | 2;
  }

  else
  {
    v14 = v13;
  }

  v15 = [v7 OSLogObject];
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v14 &= 2u;
  }

  if (!v14)
  {
    goto LABEL_22;
  }

  v16 = *(a1 + 32);
  [NSNumber numberWithInteger:0];
  v18 = 138412546;
  v19 = v16;
  v21 = v20 = 2112;
  LODWORD(v17) = 22;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
LABEL_21:
    v15 = [NSString stringWithCString:v12 encoding:4, &v18, v17];
    free(v12);
    SSFileLog();
LABEL_22:
  }

LABEL_24:
}

uint64_t sub_1000EA66C(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:@"MBErrorDomain"];

  if (v3 && (v4 = [v1 code], (v5 = ISWeakLinkedSymbolForString()) != 0))
  {
    v6 = v5(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1000EADDC(uint64_t a1)
{
  [*(a1 + 32) manifestResponse];
  SSXPCDictionarySetCFObject();
  [*(a1 + 32) error];

  return SSXPCDictionarySetCFObject();
}

uint64_t sub_1000EB238(uint64_t a1)
{
  [*(a1 + 32) response];
  SSXPCDictionarySetCFObject();
  [*(a1 + 32) error];

  return SSXPCDictionarySetCFObject();
}

uint64_t sub_1000EB4F4(uint64_t a1, void *a2)
{
  if (![*(a1 + 32) error] && (objc_msgSend(*(a1 + 32), "success") & 1) == 0)
  {
    SSError();
  }

  xpc_dictionary_set_int64(a2, "0", 1011);
  SSXPCDictionarySetCFObject();
  [*(a1 + 32) URLResponse];

  return SSXPCDictionarySetCFObject();
}

uint64_t sub_1000EB970(uint64_t a1, void *a2)
{
  if (![*(a1 + 32) error] && (objc_msgSend(*(a1 + 32), "success") & 1) == 0)
  {
    SSError();
  }

  xpc_dictionary_set_int64(a2, "0", 1011);
  SSXPCDictionarySetCFObject();
  [*(a1 + 32) URLResponse];

  return SSXPCDictionarySetCFObject();
}

uint64_t sub_1000EBB60(uint64_t a1, void *a2)
{
  xpc_dictionary_set_BOOL(a2, "1", [*(a1 + 32) success]);
  [*(a1 + 32) error];

  return SSXPCDictionarySetObject();
}

uint64_t sub_1000EBEB0(uint64_t a1)
{
  [*(a1 + 32) purchasedItems];
  SSXPCDictionarySetCFObject();
  [*(a1 + 32) error];

  return SSXPCDictionarySetCFObject();
}

void sub_1000EC00C(uint64_t a1)
{
  objc_opt_class();
  v4 = SSXPCDictionaryCopyCFObjectWithClass();
  objc_opt_class();
  v2 = SSXPCDictionaryCopyCFObjectWithClass();
  if (v2)
  {
    if (v4)
    {
      [ISSoftwareMap applicationForBundleIdentifier:v2 applicationType:v4];
    }

    else
    {
      [ISSoftwareMap applicationForBundleIdentifier:v2];
    }
  }

  reply = xpc_dictionary_create_reply(*(a1 + 32));
  SSXPCDictionarySetCFObject();
  xpc_connection_send_message(*(a1 + 40), reply);
  xpc_release(reply);
}

void sub_1000EC1E0(uint64_t a1)
{
  v2 = [*(a1 + 32) _newClientWithMessage:*(a1 + 40) connection:*(a1 + 48)];
  v9 = [[SSVApplicationCapabilitiesRequest alloc] initWithXPCEncoding:{xpc_dictionary_get_value(*(a1 + 40), "1")}];
  if (*(a1 + 56) == 1)
  {
    v3 = [v9 bundleID];
    if (v3)
    {
      v4 = v3;
      v5 = objc_autoreleasePoolPush();
LABEL_5:
      v6 = [LSApplicationProxy applicationProxyForIdentifier:v4];
      goto LABEL_7;
    }
  }

  v4 = [v2 clientIdentifier];
  v5 = objc_autoreleasePoolPush();
  if (v4)
  {
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:
  v7 = [v6 hasMIDBasedSINF];
  objc_autoreleasePoolPop(v5);
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v8, "1", v7 != 1);
  [objc_msgSend(v2 "outputConnection")];
  xpc_release(v8);
}

id sub_1000EC498(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "URLBag")];
  if (result)
  {
    [result allObjects];

    return SSXPCDictionarySetCFObject();
  }

  return result;
}

uint64_t sub_1000EC760(uint64_t a1)
{
  [*(a1 + 32) familyCircle];
  SSXPCDictionarySetCFObject();
  [*(a1 + 32) error];

  return SSXPCDictionarySetCFObject();
}

void sub_1000EC8A4(uint64_t a1)
{
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "2");
  if (int64)
  {
    v3 = int64;
    v4 = xpc_dictionary_get_int64(*(a1 + 32), "1");
    if ((v4 - 1) >= 0xC)
    {
      v5 = 100;
    }

    else
    {
      v5 = (v4 - 1);
    }

    v8 = sub_1000B18E8(v3, v5);
    v6 = 0;
  }

  else
  {
    v6 = SSError();
    v8 = 0;
  }

  reply = xpc_dictionary_create_reply(*(a1 + 32));
  SSXPCDictionarySetCFObject();
  SSXPCDictionarySetCFObject();
  xpc_connection_send_message(*(a1 + 40), reply);
  xpc_release(reply);
}

uint64_t sub_1000ECC80(uint64_t a1)
{
  [*(a1 + 32) playInfoResponse];
  SSXPCDictionarySetCFObject();
  [*(a1 + 32) error];

  return SSXPCDictionarySetCFObject();
}

uint64_t sub_1000ED080(uint64_t a1)
{
  [*(a1 + 32) softwareLibraryItems];
  SSXPCDictionarySetCFObject();
  [*(a1 + 32) error];

  return SSXPCDictionarySetCFObject();
}

uint64_t sub_1000ED300(uint64_t a1)
{
  [*(a1 + 32) softwareLibraryItems];
  SSXPCDictionarySetCFObject();
  [*(a1 + 32) error];

  return SSXPCDictionarySetCFObject();
}

void sub_1000ED45C(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  [+[ISSoftwareMap loadedMap](ISSoftwareMap "loadedMap")];
  SSXPCDictionarySetCFObject();
  xpc_connection_send_message(*(a1 + 40), reply);

  xpc_release(reply);
}

uint64_t sub_1000ED708(uint64_t a1)
{
  [*(a1 + 32) error];

  return SSXPCDictionarySetCFObject();
}

uint64_t sub_1000ED968(uint64_t a1, void *a2)
{
  xpc_dictionary_set_BOOL(a2, "1", [*(a1 + 32) hasDemotedApplications]);
  [*(a1 + 32) error];

  return SSXPCDictionarySetCFObject();
}

void sub_1000EDBB0(uint64_t a1, void *a2)
{
  xpc_dictionary_set_BOOL(a2, "1", [*(a1 + 32) success]);

  xpc_dictionary_set_BOOL(a2, "2", 1);
}

void sub_1000EDD00(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  objc_opt_class();
  v3 = SSXPCDictionaryCopyCFObjectWithClass();
  if (v3)
  {
    v4 = v3;
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    if ([v3 isEqualToString:LSSystemApplicationType])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:LSInternalApplicationType])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000EDE74;
    v6[3] = &unk_100328A90;
    v6[4] = &v7;
    [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];
    xpc_dictionary_set_BOOL(reply, "0", *(v8 + 24));

    _Block_object_dispose(&v7, 8);
  }

  xpc_connection_send_message(*(a1 + 40), reply);
  xpc_release(reply);
}

void sub_1000EDE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000EDE74(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1000EEA50(uint64_t a1, void *a2)
{
  xpc_dictionary_set_BOOL(a2, "1", [*(a1 + 32) success]);
  [*(a1 + 32) error];

  return SSXPCDictionarySetCFObject();
}

uint64_t sub_1000EED3C(uint64_t a1)
{
  [*(a1 + 32) response];
  SSXPCDictionarySetCFObject();
  [*(a1 + 32) error];

  return SSXPCDictionarySetCFObject();
}

uint64_t sub_1000EF338(uint64_t a1)
{
  [*(a1 + 32) URLResponse];
  SSXPCDictionarySetCFObject();
  [*(a1 + 32) error];

  return SSXPCDictionarySetCFObject();
}

uint64_t sub_1000EF660(uint64_t a1)
{
  [*(a1 + 32) redeemResponse];
  SSXPCDictionarySetCFObject();
  [*(a1 + 32) error];

  return SSXPCDictionarySetCFObject();
}

uint64_t sub_1000EF9A4(uint64_t a1, void *a2)
{
  if (![*(a1 + 32) error] && (objc_msgSend(*(a1 + 32), "success") & 1) == 0)
  {
    SSError();
  }

  xpc_dictionary_set_int64(a2, "0", 1011);
  SSXPCDictionarySetCFObject();
  [*(a1 + 32) URLResponse];

  return SSXPCDictionarySetCFObject();
}

uint64_t sub_1000EFCD0(uint64_t a1)
{
  [*(a1 + 32) error];

  return SSXPCDictionarySetCFObject();
}

void sub_1000EFF80(uint64_t a1)
{
  v1 = [*(a1 + 32) URLBag];
  v2 = [v1 valueForKey:@"storefrontCountryCode"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [v1 valueForKey:@"advancedSearch"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    v4 = [[NSURLComponents alloc] initWithURL:+[NSURL URLWithString:](NSURL resolvingAgainstBaseURL:{"URLWithString:", v3), 0}];
    v5 = [v4 queryItems];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if ([objc_msgSend(v10 "name")])
          {
            v2 = [v10 value];
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v2 = 0;
LABEL_13:
  }

  if (v2)
  {
    SSXPCDictionarySetCFObject();
  }
}

uint64_t sub_1000F039C(uint64_t a1)
{
  [*(a1 + 32) error];

  return SSXPCDictionarySetCFObject();
}

uint64_t sub_1000F0754(uint64_t a1)
{
  [*(a1 + 32) error];

  return SSXPCDictionarySetCFObject();
}

uint64_t sub_1000F0A2C(uint64_t a1)
{
  [*(a1 + 32) dialogResponse];
  SSXPCDictionarySetCFObject();
  [*(a1 + 32) error];

  return SSXPCDictionarySetCFObject();
}

uint64_t sub_1000F0CC4(uint64_t a1)
{
  [*(a1 + 32) error];

  return SSXPCDictionarySetCFObject();
}

uint64_t sub_1000F0F68(uint64_t a1, void *a2)
{
  xpc_dictionary_set_BOOL(a2, "1", [*(a1 + 32) success]);
  [*(a1 + 32) error];

  return SSXPCDictionarySetCFObject();
}

void sub_1000F11B8(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v3 = [objc_msgSend(+[SSURLSessionManager sharedManager](SSURLSessionManager "sharedManager")];
  SSXPCDictionarySetObject();
  xpc_connection_send_message(*(a1 + 40), reply);

  xpc_release(reply);
}

uint64_t sub_1000F12C4(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_set_int64(xdict, "0", 1011);
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_1000F13B0(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_set_int64(xdict, "0", 1011);
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1000F4C74(uint64_t a1, void *a2)
{
  v3 = a2;
  HIDWORD(v44) = 0;
  if ([v3 isServerSupplied])
  {
    v4 = [v3 urlString];
    v5 = [NSURL URLWithString:v4];

    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      *v45 = 138543618;
      *&v45[4] = objc_opt_class();
      *&v45[12] = 2114;
      *&v45[14] = v5;
      v10 = *&v45[4];
      LODWORD(v44) = 22;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_13:

        v12 = *(a1 + 32);
        v13 = [v12 paymentSheet];
        v14 = [v13 designVersion];
        v15 = [v12 _createImageRefWithURL:v5 adornmentStyle:0 designVersion:v14];

        goto LABEL_54;
      }

      v9 = [NSString stringWithCString:v11 encoding:4, v45, v44, *v45, *&v45[16]];
      free(v11);
      SSFileLog();
    }

    goto LABEL_13;
  }

  v16 = [v3 ratingType];
  if (!v16)
  {
    v25 = +[SSLogConfig sharedDaemonConfig];
    if (!v25)
    {
      v25 = +[SSLogConfig sharedConfig];
    }

    v26 = [v25 shouldLog];
    if ([v25 shouldLogToDisk])
    {
      v27 = v26 | 2;
    }

    else
    {
      v27 = v26;
    }

    v28 = [v25 OSLogObject];
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v27 &= 2u;
    }

    if (v27)
    {
      *v45 = 138543362;
      *&v45[4] = objc_opt_class();
      v29 = *&v45[4];
      LODWORD(v44) = 12;
      v30 = _os_log_send_and_compose_impl();

      if (!v30)
      {
LABEL_39:

        goto LABEL_58;
      }

      v28 = [NSString stringWithCString:v30 encoding:4, v45, v44, *v45, *&v45[8]];
      free(v30);
      SSFileLog();
    }

    goto LABEL_39;
  }

  v17 = v16;
  if (v16 == 2)
  {
    v5 = [v3 value];
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v21 = [v18 OSLogObject];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      *v45 = 138543618;
      *&v45[4] = objc_opt_class();
      *&v45[12] = 2114;
      *&v45[14] = v5;
      v22 = *&v45[4];
      LODWORD(v44) = 22;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
LABEL_27:

        ImageForResourceName = [*(a1 + 32) _createRatingImageWithStringValue:v5 assetScale:&v44 + 4];
LABEL_53:
        v15 = ImageForResourceName;
        goto LABEL_54;
      }

      v21 = [NSString stringWithCString:v23 encoding:4, v45, v44, *v45, *&v45[8]];
      free(v23);
      SSFileLog();
    }

    goto LABEL_27;
  }

  v5 = [v3 localAssetName];
  v31 = +[SSLogConfig sharedDaemonConfig];
  if (!v31)
  {
    v31 = +[SSLogConfig sharedConfig];
  }

  v32 = [v31 shouldLog];
  if ([v31 shouldLogToDisk])
  {
    v33 = v32 | 2;
  }

  else
  {
    v33 = v32;
  }

  v34 = [v31 OSLogObject];
  if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v33 &= 2u;
  }

  if (v33)
  {
    v35 = objc_opt_class();
    v36 = v35;
    [NSNumber numberWithInteger:v17];
    *v45 = 138543874;
    *&v45[4] = v35;
    *&v45[14] = *&v45[12] = 2114;
    *&v45[22] = 2114;
    v46 = v5;
    LODWORD(v44) = 32;
    v37 = _os_log_send_and_compose_impl();

    if (!v37)
    {
      goto LABEL_51;
    }

    v34 = [NSString stringWithCString:v37 encoding:4, v45, v44];
    free(v37);
    SSFileLog();
  }

LABEL_51:
  if (v5)
  {
    ImageForResourceName = ISImageResourceCreateImageForResourceName();
    goto LABEL_53;
  }

  v15 = 0;
LABEL_54:

  if (v15)
  {
    CFArrayAppendValue(*(*(a1 + 32) + 144), v15);
    ++*(*(a1 + 32) + 136);
    CGImageRelease(v15);
    v38 = *(*(a1 + 32) + 104);
    LODWORD(v39) = HIDWORD(v44);
    v40 = [NSNumber numberWithFloat:v39];
    CFArrayAppendValue(v38, v40);

    ++*(*(a1 + 32) + 96);
    v41 = *(*(a1 + 32) + 160);
    v42 = [v3 tint];
    v43 = &kCFBooleanTrue;
    if (!v42)
    {
      v43 = &kCFBooleanFalse;
    }

    CFArrayAppendValue(v41, *v43);
    ++*(*(a1 + 32) + 152);
  }

LABEL_58:
}

void sub_1000F5380(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) paymentSheet];
  v5 = [v4 designVersion];
  v6 = [v5 isEqualToNumber:AMSPaymentSheetDesignVersion_2_0];

  v7 = [v3 valueForKey:@"value"];
  v8 = v7;
  if (!v6)
  {
    v9 = [v3 valueForKey:@"header"];
    v12 = [v3 valueForKey:@"headerIcon"];
    v13 = v12;
    if (v9 && v8)
    {
      v14 = objc_alloc_init(*(a1 + 48));
      [v14 setTitle:v9];
      [v14 setLabel:v8];
      [*(a1 + 40) addObject:v14];
LABEL_24:

LABEL_25:
      goto LABEL_26;
    }

    if (!v12 || !v8)
    {
      goto LABEL_25;
    }

    v14 = objc_alloc_init(*(a1 + 48));
    v15 = [v13 string];
    v16 = [NSURL URLWithString:v15];

    v17 = *(a1 + 32);
    v18 = [v17 paymentSheet];
    v19 = [v18 designVersion];
    v20 = [v17 _createImageRefWithURL:v16 adornmentStyle:0 designVersion:v19];

    if (v20)
    {
      CFArrayAppendValue(*(*(a1 + 32) + 128), v20);
      [v14 setImage:{CFArrayGetValueAtIndex(*(*(a1 + 32) + 128), ++*(*(a1 + 32) + 120))}];
      CGImageRelease(v20);
LABEL_23:
      v26 = [[NSAttributedString alloc] initWithString:&stru_10033CC30];
      [v14 setTitle:v26];

      [v14 setLabel:v8];
      [*(a1 + 40) addObject:v14];

      goto LABEL_24;
    }

    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    v22 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = v22 | 2;
    }

    else
    {
      v23 = v22;
    }

    v24 = [v21 OSLogObject];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v29 = 138543618;
      v30 = objc_opt_class();
      v31 = 2114;
      v32 = v16;
      v28 = v30;
      LODWORD(v27) = 22;
      v25 = _os_log_send_and_compose_impl();

      if (!v25)
      {
LABEL_22:

        goto LABEL_23;
      }

      v24 = [NSString stringWithCString:v25 encoding:4, &v29, v27];
      free(v25);
      SSFileLog();
    }

    goto LABEL_22;
  }

  if (v7)
  {
    v9 = objc_alloc_init(*(a1 + 48));
    v10 = [[NSAttributedString alloc] initWithAttributedString:v8];
    [v9 setLabel:v10];

    v11 = [[NSAttributedString alloc] initWithString:&stru_10033CC30];
    [v9 setTitle:v11];

    [*(a1 + 40) addObject:v9];
LABEL_26:
  }
}

void sub_1000F5790(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000F5860;
    v6[3] = &unk_100328B98;
    v5 = *(a1 + 32);
    v4 = v5;
    v7 = v5;
    [v3 enumerateObjectsUsingBlock:v6];
  }
}

void sub_1000F5860(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"value"];
  v5 = [v3 objectForKeyedSubscript:@"header"];
  v6 = v5;
  if (v4 && v5)
  {
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v18[3] = 0;
    v7 = [v4 length];
    v8 = [v4 string];
    v9 = [v8 componentsSeparatedByString:@"\n"];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000F59F4;
    v10[3] = &unk_100328B70;
    v15 = *(a1 + 40);
    v11 = v6;
    v14 = v18;
    v12 = v4;
    v16 = 0;
    v17 = v7;
    v13 = *(a1 + 32);
    [v9 enumerateObjectsUsingBlock:v10];

    _Block_object_dispose(v18, 8);
  }
}

void sub_1000F59DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F59F4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 64);
  v7 = [NSDecimalNumber decimalNumberWithString:@"0.0"];
  v8 = [v6 summaryItemWithLabel:v5 amount:v7 type:0];

  [v8 setLocalizedAmount:&stru_10033CC30];
  if (a3)
  {
    [v8 setLocalizedTitle:&stru_10033CC30];
  }

  else
  {
    v9 = [*(a1 + 32) string];
    [v8 setLocalizedTitle:v9];
  }

  [v8 setUseDarkColor:1];
  v10 = *(*(*(a1 + 56) + 8) + 24);
  v11 = [v5 length];
  [v8 setUseLargeFont:0];
  v12 = *(a1 + 40);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000F5BA8;
  v16[3] = &unk_100328B48;
  v18 = v10;
  v19 = v11;
  v17 = v8;
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = v8;
  [v12 enumerateAttribute:@"useLargeSize" inRange:v13 options:v14 usingBlock:{0, v16}];
  [*(a1 + 48) addObject:v15];
  *(*(*(a1 + 56) + 8) + 24) += [v5 length] + 1;
}

void sub_1000F5BA8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  if (a3 == *(a1 + 40) && a4 == *(a1 + 48))
  {
    v10 = v9;
    [*(a1 + 32) setUseLargeFont:1];
    v9 = v10;
    *a5 = 1;
  }
}

void sub_1000F5C2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v4 label];
  v6 = +[NSDecimalNumber zero];
  v8 = [v3 summaryItemWithLabel:v5 amount:v6];

  v7 = [v4 price];

  [v8 setLocalizedAmount:v7];
  [v8 setUseDarkColor:1];
  [*(a1 + 32) addObject:v8];
}

void sub_1000F6280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F62A4(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(*(a1 + 32) + 184);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F6354;
  v7[3] = &unk_1003274E8;
  v9 = a2;
  v8 = WeakRetained;
  v6 = WeakRetained;
  dispatch_async(v5, v7);
}

void sub_1000F6354(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = SSError();
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      LODWORD(v15) = 138543362;
      *(&v15 + 4) = objc_opt_class();
      v12 = *(&v15 + 4);
      LODWORD(v14) = 12;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_24:

        [*(a1 + 32) _completeWithSuccess:0 error:v2];
        goto LABEL_25;
      }

      v11 = [NSString stringWithCString:v13 encoding:4, &v15, v14, v15];
      free(v13);
      SSFileLog();
    }

    goto LABEL_24;
  }

  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  LODWORD(v15) = 138543362;
  *(&v15 + 4) = objc_opt_class();
  v6 = *(&v15 + 4);
  LODWORD(v14) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    v5 = [NSString stringWithCString:v7 encoding:4, &v15, v14, v15];
    free(v7);
    SSFileLog();
LABEL_12:
  }

LABEL_25:
}

void sub_1000F7278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F72C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      *v12 = 138543618;
      *&v12[4] = objc_opt_class();
      *&v12[12] = 2114;
      *&v12[14] = v3;
      v9 = *&v12[4];
      LODWORD(v11) = 22;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_13:

        goto LABEL_14;
      }

      v7 = [NSString stringWithCString:v10 encoding:4, v12, v11, *v12, *&v12[16]];
      free(v10);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
}

void sub_1000F7470(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      *v12 = 138543618;
      *&v12[4] = objc_opt_class();
      *&v12[12] = 2114;
      *&v12[14] = v3;
      v9 = *&v12[4];
      LODWORD(v11) = 22;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_13:

        goto LABEL_14;
      }

      v7 = [NSString stringWithCString:v10 encoding:4, v12, v11, *v12, *&v12[16]];
      free(v10);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
}

void sub_1000F9CAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 172) != 1)
  {
    *(v2 + 168) = 1;
    v10 = [*(a1 + 40) copy];
    v11 = *(a1 + 32);
    v12 = *(v11 + 224);
    *(v11 + 224) = v10;

    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v13 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v3 OSLogObject];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      LODWORD(v20) = 138543362;
      *(&v20 + 4) = objc_opt_class();
      v16 = *(&v20 + 4);
      LODWORD(v19) = 12;
      v17 = _os_log_send_and_compose_impl();

      if (!v17)
      {
LABEL_25:
        v9 = 0;
        goto LABEL_26;
      }

      v15 = [NSString stringWithCString:v17 encoding:4, &v20, v19, v20];
      free(v17);
      SSFileLog();
    }

    goto LABEL_25;
  }

  *(v2 + 168) = 0;
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  LODWORD(v20) = 138543362;
  *(&v20 + 4) = objc_opt_class();
  v7 = *(&v20 + 4);
  LODWORD(v19) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v6 = [NSString stringWithCString:v8 encoding:4, &v20, v19, v20];
    free(v8);
    SSFileLog();
LABEL_12:
  }

  v9 = 1;
LABEL_26:

  v18 = [objc_alloc(ISWeakLinkedClassForString()) initWithStatus:v9 errors:&__NSArray0__struct];
  (*(*(a1 + 48) + 16))();
}

void sub_1000FA1DC(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  [*(a1 + 32) _completeWithSuccess:v2 == 0 error:?];
}

uint64_t sub_1000FBB10(id *a1, void *a2)
{
  v18 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = a1[4];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [v8 valueForProperty:@"kind"];
        IsSoftwareKind = SSDownloadKindIsSoftwareKind();

        if (IsSoftwareKind)
        {
          v11 = CFUUIDCreate(0);
          v12 = *&CFUUIDGetUUIDBytes(v11);
          CFRelease(v11);
          v13 = a1[5];
          v14 = [NSNumber numberWithLongLong:v12];
          [v13 addObject:v14];

          [v8 setDatabaseID:v12];
          [a1[6] addObject:v8];
        }

        else
        {
          v23 = v8;
          v15 = [NSArray arrayWithObjects:&v23 count:1];
          v16 = [v18 addDownloads:v15];

          if (v16)
          {
            [a1[5] unionOrderedSet:v16];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  return 1;
}

void sub_1000FD638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FD674(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000FD68C(uint64_t a1, void *a2)
{
  v10 = a2;
  v4 = [v10 valueForProperty:@"asset_type"];
  if ([v4 isEqualToString:SSDownloadAssetTypeMedia])
  {
    v5 = *(a1 + 48);
  }

  else
  {
    if (![v4 isEqualToString:SSDownloadAssetTypeDeltaPackage])
    {
      [*(a1 + 32) addObject:v10];
      goto LABEL_8;
    }

    v5 = *(a1 + 56);
  }

  v6 = *(v5 + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (!v8)
  {
    objc_storeStrong(v7, a2);
  }

LABEL_8:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [*(a1 + 40) downloadKind];
    [v10 setDownloadKind:v9];
  }
}

void sub_1000FF808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a5)
  {
    v8 = BOMCopierUserData();

    [v8 _copierFinishedFileWithPath:a2 size:a4];
  }
}

id sub_1000FF888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = BOMCopierUserData();

  return [v5 _copierUpdatedFileWithPath:a2 size:a3];
}

uint64_t sub_1000FF8C8(uint64_t a1, uint64_t a2)
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  result = os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_DEFAULT);
  if (!result)
  {
    v5 &= 2u;
  }

  if (v5)
  {
    BOMCopierUserData();
    v9 = 138412546;
    v10 = objc_opt_class();
    v11 = 2080;
    v12 = a2;
    LODWORD(v8) = 22;
    result = _os_log_send_and_compose_impl();
    if (result)
    {
      v7 = result;
      [NSString stringWithCString:result encoding:4, &v9, v8];
      free(v7);
      return SSFileLog();
    }
  }

  return result;
}

uint64_t sub_1000FFA34(uint64_t a1, uint64_t a2, int a3)
{
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  result = os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT);
  if (!result)
  {
    v7 &= 2u;
  }

  if (v7)
  {
    BOMCopierUserData();
    v11 = 138412802;
    v12 = objc_opt_class();
    v13 = 1024;
    v14 = a3;
    v15 = 2080;
    v16 = a2;
    LODWORD(v10) = 28;
    result = _os_log_send_and_compose_impl();
    if (result)
    {
      v9 = result;
      [NSString stringWithCString:result encoding:4, &v11, v10];
      free(v9);
      return SSFileLog();
    }
  }

  return result;
}

uint64_t sub_1000FFBB0(uint64_t a1, uint64_t a2)
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    BOMCopierUserData();
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2080;
    v13 = a2;
    LODWORD(v9) = 22;
    v6 = _os_log_send_and_compose_impl();
    if (v6)
    {
      v7 = v6;
      [NSString stringWithCString:v6 encoding:4, &v10, v9];
      free(v7);
      SSFileLog();
    }
  }

  return 0;
}

uint64_t sub_1000FFD20(uint64_t a1, uint64_t a2, int a3)
{
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    BOMCopierUserData();
    v12 = 138412802;
    v13 = objc_opt_class();
    v14 = 1024;
    v15 = a3;
    v16 = 2080;
    v17 = a2;
    LODWORD(v11) = 28;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      [NSString stringWithCString:v8 encoding:4, &v12, v11];
      free(v9);
      SSFileLog();
    }
  }

  return 2;
}

uint64_t sub_100100BD0(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v7;
  if (isKindOfClass)
  {
    v5 = v7;
    if ([v5 installType] == 7)
    {
      [*(a1 + 32) addObject:v5];
    }

    v4 = v7;
  }

  return _objc_release_x1(isKindOfClass, v4);
}

void sub_100100C58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  context = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) accountWithUniqueIdentifier:v5];
  v8 = [[RestoreDownloadItemsOperation alloc] initWithDownloadItems:v6 account:v7];
  [(RestoreDownloadItemsOperation *)v8 setDelegate:*(a1 + 40)];
  [(RestoreDownloadItemsOperation *)v8 setShouldShowTermsAndConditionsDialog:0];
  v9 = &CFDictionaryGetValue_ptr;
  v10 = +[SSLogConfig sharedDaemonConfig];
  if (!v10)
  {
    v10 = +[SSLogConfig sharedConfig];
  }

  v11 = [v10 shouldLog];
  if ([v10 shouldLogToDisk])
  {
    v12 = v11 | 2;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v10 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 & 2;
  }

  if (v14)
  {
    v15 = objc_opt_class();
    v16 = v15;
    v33 = 138412802;
    v34 = v15;
    v9 = &CFDictionaryGetValue_ptr;
    v35 = 2048;
    v36 = [v6 count];
    v37 = 2112;
    v38 = v5;
    LODWORD(v30) = 32;
    v29 = &v33;
    v17 = _os_log_send_and_compose_impl();

    if (v17)
    {
      v18 = [NSString stringWithCString:v17 encoding:4, &v33, v30];
      free(v17);
      v29 = v18;
      SSFileLog();
    }
  }

  else
  {
  }

  v19 = *(a1 + 40);
  v32 = 0;
  v20 = [v19 runSubOperation:v8 returningError:&v32];
  v21 = v32;
  if ((v20 & 1) == 0)
  {
    v22 = [v9[412] sharedDaemonConfig];
    if (!v22)
    {
      v22 = [v9[412] sharedConfig];
    }

    v23 = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      v23 |= 2u;
    }

    v24 = [v22 OSLogObject];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v23;
    }

    else
    {
      v25 = v23 & 2;
    }

    if (v25)
    {
      v26 = objc_opt_class();
      v33 = 138412802;
      v34 = v26;
      v35 = 2112;
      v36 = v5;
      v37 = 2112;
      v38 = v21;
      v27 = v26;
      LODWORD(v30) = 32;
      v29 = &v33;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
LABEL_25:

        goto LABEL_26;
      }

      v24 = [NSString stringWithCString:v28 encoding:4, &v33, v30];
      free(v28);
      v29 = v24;
      SSFileLog();
    }

    goto LABEL_25;
  }

LABEL_26:
  [(RestoreDownloadItemsOperation *)v8 setDelegate:0, v29];

  objc_autoreleasePoolPop(context);
}

void sub_10010132C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v3, "itemIdentifier")}];
  [*(a1 + 32) setObject:v3 forKey:v4];
}

uint64_t sub_1001013B8(uint64_t a1, void *a2)
{
  v37 = a2;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = *(a1 + 32);
  v40 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v40)
  {
    v39 = *v42;
    v34 = a1;
    do
    {
      v3 = 0;
      do
      {
        if (*v42 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v41 + 1) + 8 * v3);
        v5 = [v4 storeItemID];
        v6 = [*(a1 + 40) objectForKey:v5];
        if (v6)
        {
          v7 = [[Download alloc] initWithStoreDownload:v6];
          v8 = [[NSArray alloc] initWithObjects:{v7, 0}];
          v9 = [v37 addDownloads:v8];
          if ([v9 count] == 1)
          {
            v38 = v4;
            v36 = v5;
            v10 = [v9 firstObject];
            v35 = [v10 longLongValue];

            v11 = +[SSLogConfig sharedDaemonConfig];
            if (!v11)
            {
              v11 = +[SSLogConfig sharedConfig];
            }

            v12 = [v11 shouldLog];
            if ([v11 shouldLogToDisk])
            {
              v12 |= 2u;
            }

            v13 = [v11 OSLogObject];
            if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v12 &= 2u;
            }

            if (v12)
            {
              v14 = objc_opt_class();
              v32 = v14;
              v15 = [v38 bundleID];
              v45 = 138412802;
              v46 = v14;
              v47 = 2048;
              v16 = v35;
              v48 = v35;
              v49 = 2112;
              v50 = v15;
              LODWORD(v31) = 32;
              v30 = &v45;
              v17 = _os_log_send_and_compose_impl();

              if (v17)
              {
                v13 = [NSString stringWithCString:v17 encoding:4, &v45, v31];
                free(v17);
                v30 = v13;
                SSFileLog();
                goto LABEL_27;
              }
            }

            else
            {
              v16 = v35;
LABEL_27:
            }

            v25 = [v38 downloadKind];
            v26 = [ScratchManager directoryPathForDownloadID:v16 kind:v25 createIfNeeded:1];
            v27 = [v26 stringByAppendingPathComponent:@"iTunesMetadata.plist"];

            [v6 writeToFile:v27 options:0 error:0];
            a1 = v34;
            v5 = v36;
          }

          goto LABEL_30;
        }

        v7 = +[SSLogConfig sharedDaemonConfig];
        if (!v7)
        {
          v7 = +[SSLogConfig sharedConfig];
        }

        v18 = [(Download *)v7 shouldLog];
        if ([(Download *)v7 shouldLogToDisk])
        {
          v18 |= 2u;
        }

        v8 = [(Download *)v7 OSLogObject];
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v18 &= 2u;
        }

        if (!v18)
        {
          goto LABEL_30;
        }

        v19 = objc_opt_class();
        v20 = a1;
        v21 = v19;
        v22 = [v4 bundleID];
        v23 = [*(v20 + 56) errorForItemIdentifier:v5];
        v45 = 138412802;
        v46 = v19;
        v47 = 2112;
        v48 = v22;
        v49 = 2112;
        v50 = v23;
        LODWORD(v31) = 32;
        v30 = &v45;
        v24 = _os_log_send_and_compose_impl();

        if (v24)
        {
          v8 = [NSString stringWithCString:v24 encoding:4, &v45, v31];
          free(v24);
          v30 = v8;
          SSFileLog();
          a1 = v34;
LABEL_30:

          goto LABEL_31;
        }

        a1 = v34;
LABEL_31:

        v3 = v3 + 1;
      }

      while (v40 != v3);
      v28 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
      v40 = v28;
    }

    while (v28);
  }

  return 1;
}

void sub_100102CDC(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  v4 = [v2 shouldLogToDisk];
  v5 = [v2 OSLogObject];
  if (v4)
  {
    v3 |= 2u;
  }

  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v3 &= 2u;
  }

  if (v3)
  {
    v6 = objc_opt_class();
    v7 = *(*(a1 + 32) + 112);
    *v14 = 138412546;
    *&v14[4] = v6;
    v15 = 2112;
    v16 = v7;
    LODWORD(v13) = 22;
    v12 = v14;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      v10 = [NSString stringWithCString:v8 encoding:4, v14, v13];
      free(v9);
      v12 = v10;
      SSFileLog();
    }
  }

  *v14 = 0;
  v11 = [*(a1 + 32) _decryptWithSession:*(a1 + 40) error:{v14, v12}];
  [*(a1 + 32) setError:*v14];
  [*(a1 + 32) setSuccess:v11];
}

void sub_100102E98(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x100102E50);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1001033A8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1001033C8);
  }

  JUMPOUT(0x1001031F4);
}

void sub_100109EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100109F0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100109F24(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10010A158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10010A17C(uint64_t a1, void *a2)
{
  v5 = a2;
  v4 = ISWeakLinkedStringConstantForString();
  if (v5 && (ISErrorIsEqual() & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10010E3C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10010E3F4(uint64_t a1)
{
  [*(a1 + 32) _updatePushEnabledState];
  v2 = +[NSThread beginPrivateManagedContextSession];
  [*(a1 + 32) _loadConnectionsInContext:v2];
  [*(a1 + 32) _postTokensIfNecessaryInContext:v2];
  +[NSThread endPrivateManagedContextSession];
}

void sub_10010E46C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deviceNameChanged];
}

uint64_t sub_10010E730()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_100383EA8;
  qword_100383EA8 = v0;

  return _objc_release_x1(v0, v1);
}

void sub_10010E8BC(uint64_t a1)
{
  v2 = +[NSThread beginPrivateManagedContextSession];
  v3 = [*(a1 + 32) objectForKey:SSRemoteNotificationKeyClientIdentifier];
  v4 = [*(a1 + 40) _clientForIdentifier:v3 createIfNeeded:0 inContext:v2];
  v5 = +[SSLogConfig sharedDaemonConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v34 = 138412546;
      v35 = objc_opt_class();
      v36 = 2112;
      v37 = v3;
      v10 = v35;
      LODWORD(v28) = 22;
      v27 = &v34;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
        goto LABEL_13;
      }

      v9 = [NSString stringWithCString:v11 encoding:4, &v34, v28];
      free(v11);
      v27 = v9;
      SSFileLog();
    }

LABEL_13:
    [*(a1 + 40) _addNotificationWithUserInfo:*(a1 + 32) client:v4 context:v2];
    sub_1000CE00C(v2);
    v32 = FBSOpenApplicationOptionKeyPayloadOptions;
    v30 = SSApplicationLaunchOptionsHasRemoteNotificationsKey;
    v31 = &__kCFBooleanTrue;
    v12 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v33 = v12;
    v6 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];

    v13 = +[SpringBoardUtility sharedInstance];
    v29 = 0;
    v14 = [v13 launchApplicationWithIdentifier:v3 options:v6 error:&v29];
    v15 = v29;

    if (v14)
    {
LABEL_26:
      notify_post(kSSNotificationReceivedPushNotification);
      goto LABEL_27;
    }

    v16 = +[SSLogConfig sharedDaemonConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 OSLogObject];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v20 = objc_opt_class();
      v34 = 138412546;
      v35 = v20;
      v36 = 2112;
      v37 = v15;
      v21 = v20;
      LODWORD(v28) = 22;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
LABEL_25:

        goto LABEL_26;
      }

      v19 = [NSString stringWithCString:v22 encoding:4, &v34, v28];
      free(v22);
      SSFileLog();
    }

    goto LABEL_25;
  }

  if (!v5)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v23 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v24 = v23 | 2;
  }

  else
  {
    v24 = v23;
  }

  v15 = [v6 OSLogObject];
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v24 &= 2u;
  }

  if (v24)
  {
    v34 = 138412546;
    v35 = objc_opt_class();
    v36 = 2112;
    v37 = v3;
    v25 = v35;
    LODWORD(v28) = 22;
    v26 = _os_log_send_and_compose_impl();

    if (!v26)
    {
      goto LABEL_28;
    }

    v15 = [NSString stringWithCString:v26 encoding:4, &v34, v28];
    free(v26);
    SSFileLog();
  }

LABEL_27:

LABEL_28:
  +[NSThread endPrivateManagedContextSession];
}

void sub_10010EE48(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  LODWORD(v10) = 138543362;
  *(&v10 + 4) = objc_opt_class();
  v6 = *(&v10 + 4);
  LODWORD(v9) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    v5 = [NSString stringWithCString:v7 encoding:4, &v10, v9, v10];
    free(v7);
    SSFileLog();
LABEL_11:
  }

  v8 = +[NSThread beginPrivateManagedContextSession];
  [*(a1 + 32) _postTokensInContext:v8 force:1];
  +[NSThread endPrivateManagedContextSession];
}

void sub_10010F0DC(uint64_t a1)
{
  v2 = &CFDictionaryGetValue_ptr;
  v3 = +[NSThread beginPrivateManagedContextSession];
  v4 = [*(a1 + 32) _environmentForName:*(a1 + 40) createIfNeeded:1 inContext:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 lastAccountIdentifier];
    v7 = [v6 isEqualToNumber:*(a1 + 48)];

    if (v7)
    {
      v8 = *(a1 + 56);
      if (v8)
      {
        dispatch_async(*(*(a1 + 32) + 40), v8);
      }

      goto LABEL_27;
    }

    v20 = 1;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = *(*(a1 + 32) + 72);
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = [v14 environmentName];
          v16 = [v15 isEqualToString:*(a1 + 40)];

          if (v16)
          {
            v17 = *(a1 + 48);
            v18 = [v14 authenticationContext];
            v19 = [v18 requiredUniqueIdentifier];
            LOBYTE(v17) = [v17 isEqualToNumber:v19];

            if (v17)
            {
              v20 = 0;
              goto LABEL_17;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v20 = 1;
LABEL_17:
      v2 = &CFDictionaryGetValue_ptr;
    }

    else
    {
      v20 = 1;
    }
  }

  if (*(a1 + 56))
  {
    if (!*(*(a1 + 32) + 64))
    {
      v21 = objc_alloc_init(NSMutableArray);
      v22 = *(a1 + 32);
      v23 = *(v22 + 64);
      *(v22 + 64) = v21;
    }

    v24 = objc_alloc_init(PushNotificationRegisterBlock);
    [(PushNotificationRegisterBlock *)v24 setAccountIdentifier:*(a1 + 48)];
    [(PushNotificationRegisterBlock *)v24 setBlock:*(a1 + 56)];
    [(PushNotificationRegisterBlock *)v24 setEnvironmentName:*(a1 + 40)];
    [*(*(a1 + 32) + 64) addObject:v24];
  }

  if ((v20 & 1) != 0 || [*(a1 + 32) _shouldAggressivelySendToken])
  {
    [*(a1 + 32) _postTokenForEnvironment:{v5, v25}];
  }

LABEL_27:
  [v2[181] endManagedContextSession];
}

void sub_10010F4D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v21 = objc_alloc_init(NSMutableArray);
  v4 = +[NSThread beginPrivateManagedContextSession];
  v19 = a1;
  v20 = v3;
  v5 = *(a1 + 32);
  v6 = [v3 clientIdentifier];
  v7 = [v5 _clientForIdentifier:v6 createIfNeeded:0 inContext:v4];

  v18 = v7;
  v8 = [v7 notifications];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 userInfo];
        v15 = [NSPropertyListSerialization propertyListWithData:v14 options:0 format:0 error:0];

        if (v15)
        {
          v16 = [[SSRemoteNotification alloc] initWithNotificationUserInfo:v15];
          if (v16)
          {
            [v21 addObject:v16];
          }
        }

        [v4 deleteObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  sub_1000CE00C(v4);
  +[NSThread endPrivateManagedContextSession];
  reply = xpc_dictionary_create_reply(*(v19 + 40));
  SSXPCDictionarySetObject();
  xpc_connection_send_message(*(v19 + 48), reply);
}

void sub_10010F7E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSThread beginPrivateManagedContextSession];
  v5 = *(a1 + 32);
  v6 = [v3 clientIdentifier];

  v7 = [v5 _clientForIdentifier:v6 createIfNeeded:1 inContext:v4];

  v8 = +[SSLogConfig sharedDaemonConfig];
  if (!v8)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

  *v16 = 138412546;
  *&v16[4] = objc_opt_class();
  *&v16[12] = 2112;
  *&v16[14] = v7;
  v12 = *&v16[4];
  LODWORD(v15) = 22;
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    v11 = [NSString stringWithCString:v13 encoding:4, v16, v15, *v16, *&v16[16]];
    free(v13);
    SSFileLog();
LABEL_11:
  }

  [*(a1 + 32) _reloadActiveEnvironmentInContext:v4];
  [*(a1 + 32) _postNotificationsAvailableForClient:v7 inContext:v4];
  sub_1000CE00C(v4);
  +[NSThread endPrivateManagedContextSession];
  reply = xpc_dictionary_create_reply(*(a1 + 40));
  xpc_connection_send_message(*(a1 + 48), reply);
}

void sub_10010FB9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSThread beginPrivateManagedContextSession];
  v5 = *(a1 + 32);
  v6 = [v3 clientIdentifier];
  v7 = [v5 _clientForIdentifier:v6 createIfNeeded:0 inContext:v4];

  v8 = +[SSLogConfig sharedDaemonConfig];
  v9 = v8;
  if (!v7)
  {
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v15 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v9 OSLogObject];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v18 = objc_opt_class();
      v19 = v18;
      v20 = [v3 clientIdentifier];
      *v25 = 138412546;
      *&v25[4] = v18;
      *&v25[12] = 2112;
      *&v25[14] = v20;
      LODWORD(v24) = 22;
      v23 = v25;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_25:

        goto LABEL_26;
      }

      v17 = [NSString stringWithCString:v21 encoding:4, v25, v24];
      free(v21);
      v23 = v17;
      SSFileLog();
    }

    goto LABEL_25;
  }

  if (!v8)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v11 &= 2u;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  *v25 = 138412546;
  *&v25[4] = objc_opt_class();
  *&v25[12] = 2112;
  *&v25[14] = v7;
  v13 = *&v25[4];
  LODWORD(v24) = 22;
  v23 = v25;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    v12 = [NSString stringWithCString:v14 encoding:4, v25, v24, *v25, *&v25[16]];
    free(v14);
    v23 = v12;
    SSFileLog();
LABEL_12:
  }

  [v4 deleteObject:v7];
  [*(a1 + 32) _reloadActiveEnvironmentInContext:v4];
  sub_1000CE00C(v4);
LABEL_26:
  +[NSThread endPrivateManagedContextSession];
  reply = xpc_dictionary_create_reply(*(a1 + 40));
  xpc_connection_send_message(*(a1 + 48), reply);
}

void sub_10010FFD4(uint64_t a1)
{
  v2 = [*(a1 + 32) _environmentNameForConnection:*(a1 + 40)];
  v3 = +[NSThread beginPrivateManagedContextSession];
  v4 = [*(a1 + 32) _environmentForName:v2 createIfNeeded:0 inContext:v3];
  v5 = *(a1 + 48);
  v6 = [v4 tokenData];
  v7 = [v5 isEqual:v6];

  if (v4 && (!v7 || [*(a1 + 32) _shouldAggressivelySendToken]))
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v9 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = v9 | 2;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      *v17 = 138412546;
      *&v17[4] = objc_opt_class();
      *&v17[12] = 2112;
      *&v17[14] = v2;
      v12 = *&v17[4];
      LODWORD(v16) = 22;
      v15 = v17;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_15:

        v14 = [NSNumber numberWithInteger:0];
        [v4 setLastAccountIdentifier:v14];

        [v4 setTokenData:*(a1 + 48)];
        sub_1000CE00C(v3);
        [*(a1 + 32) _postTokenForEnvironment:v4];
        goto LABEL_16;
      }

      v11 = [NSString stringWithCString:v13 encoding:4, v17, v16, *v17, *&v17[16]];
      free(v13);
      v15 = v11;
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:
  +[NSThread endPrivateManagedContextSession];
}

void sub_10011030C(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v43 = 138412802;
    v44 = v6;
    v45 = 2112;
    v46 = v7;
    v47 = 2112;
    v48 = v8;
    v9 = v6;
    LODWORD(v41) = 32;
    v40 = &v43;
    v10 = _os_log_send_and_compose_impl();

    if (!v10)
    {
      goto LABEL_12;
    }

    v5 = [NSString stringWithCString:v10 encoding:4, &v43, v41];
    free(v10);
    v40 = v5;
    SSFileLog();
  }

LABEL_12:
  if ([*(a1 + 32) _isPushEnabled])
  {
    v11 = objc_opt_class();
    v12 = *(a1 + 48);
    v13 = [*(a1 + 32) _bag];
    LOBYTE(v11) = [v11 _amsHandleNotification:v12 urlBag:v13];

    if (v11)
    {
      return;
    }

    v14 = +[SSAccountStore defaultStore];
    v15 = [v14 activeAccount];

    v16 = [*(a1 + 48) objectForKey:SSRemoteNotificationKeyAccountIdentifier];
    if (!v16 || ([v15 uniqueIdentifier], v17 = objc_claimAutoreleasedReturnValue(), v18 = -[NSObject isEqual:](v16, "isEqual:", v17), v17, (v18 & 1) != 0))
    {
      v19 = [[PushNotificationDisplayOperation alloc] initWithNotificationUserInfo:*(a1 + 48)];
      if (![(PushNotificationDisplayOperation *)v19 requiresClientIdentifier])
      {
        goto LABEL_31;
      }

      v20 = +[NSThread beginPrivateManagedContextSession];
      v21 = [*(a1 + 48) objectForKey:SSRemoteNotificationKeyClientIdentifier];
      v22 = [*(a1 + 32) _clientForIdentifier:v21 createIfNeeded:0 inContext:v20];
      if (v22)
      {
LABEL_30:
        +[NSThread endPrivateManagedContextSession];

LABEL_31:
        if (v19)
        {
          [*(*(a1 + 32) + 48) addOperation:v19];
        }

        goto LABEL_54;
      }

      v23 = +[SSLogConfig sharedDaemonConfig];
      if (!v23)
      {
        v23 = +[SSLogConfig sharedConfig];
      }

      v24 = [v23 shouldLog];
      if ([v23 shouldLogToDisk])
      {
        v25 = v24 | 2;
      }

      else
      {
        v25 = v24;
      }

      v26 = [v23 OSLogObject];
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v25 &= 2u;
      }

      if (v25)
      {
        v27 = objc_opt_class();
        v43 = 138412546;
        v44 = v27;
        v45 = 2112;
        v46 = v21;
        v42 = v27;
        LODWORD(v41) = 22;
        v40 = &v43;
        v28 = _os_log_send_and_compose_impl();

        if (!v28)
        {
LABEL_29:

          v19 = 0;
          goto LABEL_30;
        }

        v26 = [NSString stringWithCString:v28 encoding:4, &v43, v41];
        free(v28);
        v40 = v26;
        SSFileLog();
      }

      goto LABEL_29;
    }

    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    v34 = [(PushNotificationDisplayOperation *)v19 shouldLog];
    if ([(PushNotificationDisplayOperation *)v19 shouldLogToDisk])
    {
      v35 = v34 | 2;
    }

    else
    {
      v35 = v34;
    }

    v36 = [(PushNotificationDisplayOperation *)v19 OSLogObject];
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v35 &= 2u;
    }

    if (v35)
    {
      v37 = objc_opt_class();
      v43 = 138412546;
      v44 = v37;
      v45 = 2112;
      v46 = v16;
      v38 = v37;
      LODWORD(v41) = 22;
      v39 = _os_log_send_and_compose_impl();

      if (!v39)
      {
LABEL_54:

        goto LABEL_55;
      }

      v36 = [NSString stringWithCString:v39 encoding:4, &v43, v41];
      free(v39);
      SSFileLog();
    }

    goto LABEL_54;
  }

  v15 = +[SSLogConfig sharedDaemonConfig];
  if (!v15)
  {
    v15 = +[SSLogConfig sharedConfig];
  }

  v29 = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    v30 = v29 | 2;
  }

  else
  {
    v30 = v29;
  }

  v16 = [v15 OSLogObject];
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v30 &= 2u;
  }

  if (!v30)
  {
    goto LABEL_55;
  }

  v31 = objc_opt_class();
  v43 = 138412290;
  v44 = v31;
  v32 = v31;
  LODWORD(v41) = 12;
  v33 = _os_log_send_and_compose_impl();

  if (v33)
  {
    v16 = [NSString stringWithCString:v33 encoding:4, &v43, v41];
    free(v33);
    SSFileLog();
LABEL_55:
  }
}

void sub_1001109EC(uint64_t a1)
{
  v2 = +[NSThread beginPrivateManagedContextSession];
  [*(a1 + 32) _resetLastRegisterAttemptTime];
  [*(a1 + 32) _reloadPushStateInContext:v2];
  sub_1000CE00C(v2);
  +[NSThread endPrivateManagedContextSession];
}

void sub_100110AD4(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  LODWORD(v10) = 138412290;
  *(&v10 + 4) = objc_opt_class();
  v6 = *(&v10 + 4);
  LODWORD(v9) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    v5 = [NSString stringWithCString:v7 encoding:4, &v10, v9, v10];
    free(v7);
    SSFileLog();
LABEL_11:
  }

  v8 = +[NSThread beginPrivateManagedContextSession];
  [*(a1 + 32) _postTokensInContext:v8 force:1];
  +[NSThread endPrivateManagedContextSession];
}

void sub_100110D2C(uint64_t a1)
{
  if (CFAbsoluteTimeGetCurrent() - *(*(a1 + 32) + 32) > 3600.0)
  {
    v2 = +[NSThread beginPrivateManagedContextSession];
    [*(a1 + 32) _postTokensIfNecessaryInContext:v2];
    +[NSThread endPrivateManagedContextSession];
  }
}

void sub_100110E34(uint64_t a1)
{
  v2 = +[NSThread beginPrivateManagedContextSession];
  [*(a1 + 32) _resetLastRegisterAttemptTime];
  [*(a1 + 32) _reloadPushStateInContext:v2];
  sub_1000CE00C(v2);
  +[NSThread endPrivateManagedContextSession];
}

void sub_100110F58(uint64_t a1)
{
  v2 = +[NSThread beginPrivateManagedContextSession];
  [*(a1 + 32) _reloadPushStateInContext:v2];
  sub_1000CE00C(v2);
  +[NSThread endPrivateManagedContextSession];
}

void sub_10011221C(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_100112450(uint64_t a1)
{
  (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32));
  v1 = +[Daemon daemon];
  [v1 releaseKeepAliveAssertion:@"com.apple.itunesstore.PushNotificationController"];
}

void sub_10011376C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100113794(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100113838;
  v3[3] = &unk_100328ED0;
  objc_copyWeak(&v4, (a1 + 40));
  v3[4] = *(a1 + 32);
  dispatch_async(v2, v3);
  objc_destroyWeak(&v4);
}

void sub_100113838(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained success])
  {
    [*(a1 + 32) _setShouldAggressivelySendToken:0];
    [*(a1 + 32) _updateEnvironmentAfterTokenPost:WeakRetained];
  }

  [WeakRetained setCompletionBlock:0];
  [*(*(a1 + 32) + 72) removeObjectIdenticalTo:WeakRetained];
  *(*(a1 + 32) + 32) = CFAbsoluteTimeGetCurrent();
  [*(a1 + 32) _fireRegisterBlocksAfterOperation:WeakRetained];
}

void sub_100116120(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = +[ISURLBagLoadingController sharedBagLoadingController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100116254;
  v8[3] = &unk_100328F48;
  v14 = *(a1 + 88);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = *(a1 + 56);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = WeakRetained;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  [v3 requestAccessToBagUsingBlock:v8];
}

void sub_100116254(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(SSVSecureKeyDeliveryRequestOperation);
  [v7 configureWithURLBagDictionary:v5];
  [v7 setITunesStoreRequest:1];
  if (*(a1 + 88) == 1)
  {
    [v7 setOffline:1];
  }

  [v7 setShouldIncludeGUID:1];
  [v7 setResourceLoadingRequest:*(a1 + 32)];
  [v7 setCertificateURL:*(a1 + 40)];
  [v7 setKeyServerURL:*(a1 + 48)];
  if ([*(a1 + 56) rentalIdentifier])
  {
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 64) rentalIdentifier]);
    [v7 setRentalId:v8];
  }

  objc_initWeak(&location, v7);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100116444;
  v9[3] = &unk_100328F20;
  v10 = *(a1 + 32);
  v15 = *(a1 + 88);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  objc_copyWeak(&v14, &location);
  v13 = *(a1 + 64);
  [v7 setResponseBlock:v9];
  [v7 main];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

void sub_100116424(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100116444(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) contentInformationRequest];

  if (v4)
  {
    v5 = 48;
    if (*(a1 + 72))
    {
      v5 = 40;
    }

    v6 = *(a1 + 32);
    v7 = *(a1 + v5);
    v8 = [v6 contentInformationRequest];
    [v8 setContentType:v7];
  }

  if (!v3)
  {
    v24 = [*(a1 + 32) request];
    v25 = [v24 URL];
    v16 = [v25 absoluteString];

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v19 = [WeakRetained persistentContentKeyContext];

    if (v16 && v19 && *(a1 + 72) == 1)
    {
      [*(a1 + 56) _persistURI:v16 persistentContentKey:v19];
    }

    v27 = +[SSLogConfig sharedDaemonConfig];
    if (!v27)
    {
      v27 = +[SSLogConfig sharedConfig];
    }

    v28 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      v29 = v28 | 2;
    }

    else
    {
      v29 = v28;
    }

    v30 = [v27 OSLogObject];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v29;
    }

    else
    {
      v31 = v29 & 2;
    }

    if (v31)
    {
      v32 = *(a1 + 32);
      v36 = 138412290;
      v37 = v32;
      LODWORD(v35) = 12;
      v33 = _os_log_send_and_compose_impl();

      if (!v33)
      {
LABEL_46:

        [*(a1 + 32) finishLoading];
        goto LABEL_50;
      }

      v30 = [NSString stringWithCString:v33 encoding:4, &v36, v35];
      free(v33);
      SSFileLog();
    }

    goto LABEL_46;
  }

  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 & 2;
  }

  if (v13)
  {
    v14 = *(a1 + 32);
    v36 = 138412546;
    v37 = v14;
    v38 = 2112;
    v39 = v3;
    LODWORD(v35) = 22;
    v34 = &v36;
    v15 = _os_log_send_and_compose_impl();

    if (!v15)
    {
      goto LABEL_18;
    }

    v12 = [NSString stringWithCString:v15 encoding:4, &v36, v35];
    free(v15);
    v34 = v12;
    SSFileLog();
  }

LABEL_18:
  [*(a1 + 32) finishLoadingWithError:v3];
  SSVAVFoundationFramework();
  v16 = SSVWeakLinkedStringConstantForString();
  v17 = [v3 domain];
  if (![v17 isEqualToString:v16])
  {

    goto LABEL_48;
  }

  v18 = [v3 code];

  if (v18 != -11879)
  {
LABEL_48:
    v19 = SSErrorWithUnderlyingError();
    v21 = [*(a1 + 56) delegate];
    [v21 downloadAssetFairPlayStreamingKeyLoader:*(a1 + 56) didFailWithError:v19];
    goto LABEL_49;
  }

  v19 = +[SSLogConfig sharedDaemonConfig];
  if (!v19)
  {
    v19 = +[SSLogConfig sharedConfig];
  }

  v20 = [v19 shouldLog];
  if ([v19 shouldLogToDisk])
  {
    v20 |= 2u;
  }

  v21 = [v19 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v20;
  }

  else
  {
    v22 = v20 & 2;
  }

  if (!v22)
  {
    goto LABEL_49;
  }

  LOWORD(v36) = 0;
  LODWORD(v35) = 2;
  v23 = _os_log_send_and_compose_impl();

  if (v23)
  {
    v21 = [NSString stringWithCString:v23 encoding:4, &v36, v35];
    free(v23);
    SSFileLog();
LABEL_49:
  }

LABEL_50:
}

unint64_t sub_100116B78(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = ML3TrackPropertyHLSOfflinePlaybackKeys;
    v58 = ML3TrackPropertyHLSOfflinePlaybackKeys;
    v4 = [NSArray arrayWithObjects:&v58 count:1];
    v5 = [v2 getValuesForProperties:v4];

    v6 = [v5 objectForKeyedSubscript:v3];
    objc_opt_class();
    v51 = v6;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_18:
      v22 = +[NSMutableDictionary dictionary];
LABEL_19:
      [v22 addEntriesFromDictionary:*(*(a1 + 40) + 24)];
      v52 = 0;
      v23 = [NSKeyedArchiver archivedDataWithRootObject:v22 requiringSecureCoding:1 error:&v52];
      v24 = v52;
      if (!v24)
      {
        goto LABEL_32;
      }

      v50 = v3;
      v25 = +[SSLogConfig sharediTunesStoreConfig];
      if (!v25)
      {
        v25 = +[SSLogConfig sharedConfig];
      }

      v26 = [v25 shouldLog];
      if ([v25 shouldLogToDisk])
      {
        v26 |= 2u;
      }

      v27 = [v25 OSLogObject];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = v26;
      }

      else
      {
        v28 = v26 & 2;
      }

      if (v28)
      {
        v29 = objc_opt_class();
        v30 = v29;
        v31 = [v24 code];
        v54 = 138412546;
        v55 = v29;
        v56 = 2048;
        v57 = v31;
        LODWORD(v49) = 22;
        v47 = &v54;
        v32 = _os_log_send_and_compose_impl();

        if (!v32)
        {
LABEL_31:

          v3 = v50;
LABEL_32:
          v33 = [*(a1 + 32) setValue:v23 forProperty:{v3, v47}];
          v34 = +[SSLogConfig sharediTunesStoreConfig];
          if (!v34)
          {
            v34 = +[SSLogConfig sharedConfig];
          }

          v35 = [v34 shouldLog];
          if ([v34 shouldLogToDisk])
          {
            v35 |= 2u;
          }

          v36 = [v34 OSLogObject];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            v37 = v35;
          }

          else
          {
            v37 = v35 & 2;
          }

          if (v37)
          {
            v38 = objc_opt_class();
            v54 = 138412546;
            v55 = v38;
            v56 = 1024;
            LODWORD(v57) = v33;
            v39 = v38;
            LODWORD(v49) = 18;
            v40 = _os_log_send_and_compose_impl();

            if (!v40)
            {
LABEL_43:

              goto LABEL_57;
            }

            v36 = [NSString stringWithCString:v40 encoding:4, &v54, v49];
            free(v40);
            SSFileLog();
          }

          goto LABEL_43;
        }

        v27 = [NSString stringWithCString:v32 encoding:4, &v54, v49];
        free(v32);
        v47 = v27;
        SSFileLog();
      }

      goto LABEL_31;
    }

    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v7, v8, objc_opt_class(), 0];
    v53 = 0;
    v10 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v9 fromData:v6 error:&v53];
    v11 = v53;

    if (!v11)
    {
LABEL_17:
      v22 = [v10 mutableCopy];

      if (v22)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v12 = +[SSLogConfig sharediTunesStoreConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v12 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = v14;
    }

    else
    {
      v16 = v14 & 2;
    }

    if (v16)
    {
      v17 = v3;
      v18 = objc_opt_class();
      v19 = v18;
      v20 = [v11 code];
      v54 = 138412546;
      v55 = v18;
      v3 = v17;
      v56 = 2048;
      v57 = v20;
      LODWORD(v49) = 22;
      v48 = &v54;
      v21 = _os_log_send_and_compose_impl();

      if (!v21)
      {
LABEL_16:

        goto LABEL_17;
      }

      v15 = [NSString stringWithCString:v21 encoding:4, &v54, v49];
      free(v21);
      v48 = v15;
      SSFileLog();
    }

    goto LABEL_16;
  }

  v5 = +[SSLogConfig sharediTunesStoreConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v41 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v33) = v41 | 2;
  }

  else
  {
    LODWORD(v33) = v41;
  }

  v42 = [v5 OSLogObject];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v33 = v33;
  }

  else
  {
    v33 &= 2u;
  }

  if (v33)
  {
    v54 = 138412290;
    v55 = objc_opt_class();
    v43 = v55;
    LODWORD(v49) = 12;
    v44 = _os_log_send_and_compose_impl();

    if (v44)
    {
      v45 = [NSString stringWithCString:v44 encoding:4, &v54, v49];
      free(v44);
      SSFileLog();
    }

    v33 = 0;
  }

  else
  {
  }

LABEL_57:

  return v33;
}

id sub_100117324(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setObject:*(a1 + 40) forKey:*(a1 + 48)];
  v2 = +[SSLogConfig sharediTunesStoreConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = objc_opt_class();
  v7 = *(a1 + 48);
  *v12 = 138412546;
  *&v12[4] = v6;
  *&v12[12] = 2112;
  *&v12[14] = v7;
  v8 = v6;
  LODWORD(v11) = 22;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v5 = [NSString stringWithCString:v9 encoding:4, v12, v11, *v12, *&v12[16]];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  return [*(a1 + 32) _persistKeys];
}

void sub_100119C48(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  *v12 = 138412802;
  *&v12[4] = objc_opt_class();
  *&v12[12] = 1024;
  *&v12[14] = a2;
  *&v12[18] = 2112;
  *&v12[20] = v4;
  v9 = *&v12[4];
  LODWORD(v11) = 28;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v8 = [NSString stringWithCString:v10 encoding:4, v12, v11, *v12, *&v12[16]];
    free(v10);
    SSFileLog();
LABEL_11:
  }
}

id *sub_100119DF0(id *result, uint64_t a2)
{
  if (!a2)
  {
    return [result[4] _performNotificationAction:1];
  }

  return result;
}

void sub_10011AF20(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v4 = a2;
    +[SSVSubscriptionStatusCoordinator sendChangeNotification];
    v5 = [v4 accountStatus];

    if (v5 == 3)
    {
      v7 = +[PushNotificationController sharedInstance];
      v6 = [*(*(a1 + 32) + 96) notificationUserInfo];
      [v7 postClientNotificationWithUserInfo:v6];
    }
  }
}

NSURL *__cdecl sub_10011C2F4(id a1, SSURLBagContext *a2)
{
  v2 = [+[ISURLBagCache sharedCache](ISURLBagCache "sharedCache")];
  v3 = [v2 valueForKey:@"automatic-downloads2"];
  if (!v3)
  {
    v3 = [v2 valueForKey:@"automatic-downloads"];
  }

  result = [v3 objectForKey:@"register-media-types"];
  if (result)
  {

    return [NSURL URLWithString:result];
  }

  return result;
}

NSURL *__cdecl sub_10011D1E8(id a1, SSURLBagContext *a2)
{
  v2 = [+[ISURLBagCache sharedCache](ISURLBagCache "sharedCache")];
  v3 = [v2 valueForKey:@"automatic-downloads2"];
  if (!v3)
  {
    v3 = [v2 valueForKey:@"automatic-downloads"];
  }

  result = [v3 objectForKey:@"discovery-prompt"];
  if (result)
  {

    return [NSURL URLWithString:result];
  }

  return result;
}

void sub_10011FEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10011FED4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _applicationStateChanged:v3];
}

void sub_1001201A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001201C0(uint64_t a1)
{
  v2 = [[XPCClientBackgroundTask alloc] initWithProcessAssertion:*(a1 + 32) invalidationBlock:*(a1 + 56)];
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v7 = objc_opt_class();
    v8 = *(a1 + 64);
    v9 = *(*(a1 + 40) + 8);
    *v18 = 138413058;
    *&v18[4] = v7;
    *&v18[12] = 1024;
    *&v18[14] = v8;
    *&v18[18] = 2112;
    *&v18[20] = v9;
    *&v18[28] = 2112;
    *&v18[30] = v2;
    v10 = v7;
    LODWORD(v17) = 38;
    v16 = v18;
    v11 = _os_log_send_and_compose_impl();

    if (!v11)
    {
      goto LABEL_12;
    }

    v6 = [NSString stringWithCString:v11 encoding:4, v18, v17, *v18, *&v18[16], *&v18[32]];
    free(v11);
    v16 = v6;
    SSFileLog();
  }

LABEL_12:
  v12 = *(*(a1 + 40) + 72);
  if (!v12)
  {
    v13 = objc_alloc_init(NSMutableDictionary);
    v14 = *(a1 + 40);
    v15 = *(v14 + 72);
    *(v14 + 72) = v13;

    v12 = *(*(a1 + 40) + 72);
  }

  [v12 setObject:v2 forKey:{*(a1 + 48), v16}];
}

void sub_1001203C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 _invalidateBackgroundTaskAssertion:WeakRetained];
}

id sub_1001204CC(uint64_t a1)
{
  result = [*(a1 + 32) _clientType];
  if (result == 1)
  {
    result = [*(a1 + 32) _applicationState];
    HIDWORD(v3) = result - 4;
    LODWORD(v3) = result - 4;
    v4 = 0x100000001000101uLL >> (8 * (v3 >> 2));
    if ((v3 >> 2) >= 8)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    *(*(*(a1 + 40) + 8) + 24) = v5;
  }

  return result;
}

uint64_t sub_100120584(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100120644(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    v6 = [v3 OSLogObject];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      *v11 = 138412546;
      *&v11[4] = objc_opt_class();
      *&v11[12] = 2112;
      *&v11[14] = v2;
      v7 = *&v11[4];
      LODWORD(v10) = 22;
      v8 = _os_log_send_and_compose_impl();

      if (!v8)
      {
LABEL_13:

        v9 = [v2 processAssertion];
        [v9 setInvalidationHandler:0];

        [*(*(a1 + 32) + 72) removeObjectForKey:*(a1 + 40)];
        goto LABEL_14;
      }

      v6 = [NSString stringWithCString:v8 encoding:4, v11, v10, *v11, *&v11[16]];
      free(v8);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
}

void sub_1001208D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48) == 255)
  {
    *(v2 + 48) = 0;
    v3 = [*(a1 + 32) _clientType];
    if (v3 == 3)
    {
LABEL_5:
      *(*(*(a1 + 40) + 8) + 24) = 1;
      goto LABEL_13;
    }

    if (v3 == 1)
    {
      if (*(*(a1 + 32) + 8))
      {
        v4 = [LSApplicationProxy applicationProxyForIdentifier:?];
        v5 = [v4 appState];
        v6 = [v5 isValid];

        if (v6)
        {
          *(*(a1 + 32) + 48) = [v4 profileValidated] ^ 1;
        }

        else
        {
          v7 = [LSPlugInKitProxy pluginKitProxyForIdentifier:*(*(a1 + 32) + 8)];
          v8 = [v7 containingBundle];
          v9 = [v8 bundleType];
          v10 = [v9 isEqualToString:LSUserApplicationType];

          if (v10)
          {
            *(*(a1 + 32) + 48) = [v7 profileValidated] ^ 1;
          }
        }
      }
    }

    else if (!v3)
    {
      goto LABEL_5;
    }
  }

LABEL_13:
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 48) != 0;
}

id sub_100120ACC(uint64_t a1)
{
  result = [*(a1 + 32) _isNewsstandApp];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_100120BAC(uint64_t a1)
{
  result = [*(a1 + 32) _isBetaApp];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_100120C8C(uint64_t a1)
{
  result = [*(a1 + 32) _isAdHocCodeSigned];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100120D58(uint64_t a1)
{
  v2 = [*(a1 + 32) _applicationBackgroundModes];
  [*(a1 + 32) _applicationState];
  [*(a1 + 32) _clientType];
  [*(a1 + 32) _isNewsstandApp];
  [*(a1 + 32) _isBetaApp];
  if (*(a1 + 40))
  {
    v3 = dispatch_queue_create("com.apple.itunesstored.XPCClient.block", 0);
    dispatch_async(v3, *(a1 + 40));
  }
}

void sub_100120E74(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableIndexSet);
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;

    v2 = *(*(a1 + 32) + 96);
  }

  if (([v2 containsIndex:*(a1 + 40)] & 1) == 0)
  {
    [*(*(a1 + 32) + 96) addIndex:*(a1 + 40)];
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v6, "0", *(a1 + 40));
    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100120F6C;
    v10[3] = &unk_1003284E0;
    v9 = *(a1 + 40);
    v10[4] = v7;
    v10[5] = v9;
    [v8 sendMessage:v6 withReply:v10];
  }
}

void sub_100120F6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100120FE8;
  v4[3] = &unk_100329108;
  v3 = *(a1 + 40);
  v4[4] = v1;
  v4[5] = v3;
  dispatch_async(v2, v4);
}

void sub_10012108C(uint64_t a1)
{
  [*(*(a1 + 32) + 40) setDisconnectBlock:0];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [[SSXPCConnection alloc] initWithXPCConnection:*(a1 + 40)];
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 40), v3);
  if (v2)
  {
  }

  objc_initWeak(&location, *(a1 + 32));
  v4 = *(*(a1 + 32) + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001211A8;
  v5[3] = &unk_100328150;
  objc_copyWeak(&v6, &location);
  [v4 setDisconnectBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void sub_10012118C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001211A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleOutputConnectionDisconnect];
}

void sub_100121400(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:BKSApplicationStateDisplayIDKey];
  v4 = *(a1 + 40);
  if (v4[1])
  {
    if ([v4 _clientType] == 1)
    {
      if ([v3 hasPrefix:*(*(a1 + 40) + 8)])
      {
        v5 = [v2 objectForKey:BKSApplicationStateKey];
        v6 = [v5 unsignedIntValue];

        if (v6 != *(*(a1 + 40) + 52))
        {
          v7 = +[SSLogConfig sharedDaemonConfig];
          if (!v7)
          {
            v7 = +[SSLogConfig sharedConfig];
          }

          v8 = [v7 shouldLog];
          if ([v7 shouldLogToDisk])
          {
            v9 = v8 | 2;
          }

          else
          {
            v9 = v8;
          }

          v10 = [v7 OSLogObject];
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v9 &= 2u;
          }

          if (v9)
          {
            v11 = objc_opt_class();
            v12 = v11;
            v17 = 138412802;
            v18 = v11;
            v19 = 2112;
            v20 = v3;
            v21 = 2112;
            Description = SBApplicationStateGetDescription();
            LODWORD(v15) = 32;
            v13 = _os_log_send_and_compose_impl();

            if (!v13)
            {
LABEL_16:

              *(*(a1 + 40) + 52) = v6;
              v14 = dispatch_get_global_queue(0, 0);
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_1001216B8;
              block[3] = &unk_100327110;
              block[4] = *(a1 + 40);
              dispatch_async(v14, block);

              goto LABEL_17;
            }

            v10 = [NSString stringWithCString:v13 encoding:4, &v17, v15];
            free(v13);
            SSFileLog();
          }

          goto LABEL_16;
        }
      }
    }
  }

LABEL_17:
}

void sub_1001216B8(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"XPCClientApplicationStateDidChangeNotification" object:*(a1 + 32)];
}

void sub_10012178C(uint64_t a1)
{
  [*(*(a1 + 32) + 96) removeAllIndexes];
  v2 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012182C;
  block[3] = &unk_100327110;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_10012182C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"XPCClientDisconnectNotification" object:*(a1 + 32)];
}

void sub_100121924(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(*(a1 + 32) + 72);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = *v15;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v15 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v6 = *(*(&v14 + 1) + 8 * v5);
      v7 = [*(*(a1 + 32) + 72) objectForKey:v6];
      v8 = [v7 processAssertion];
      v9 = *(a1 + 40);

      if (v8 == v9)
      {
        break;
      }

      if (v3 == ++v5)
      {
        v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v3 = v6;

    if (!v3)
    {
      goto LABEL_13;
    }

    v10 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100121B20;
    block[3] = &unk_100327110;
    v7 = v7;
    v13 = v7;
    dispatch_async(v10, block);

    v11 = [v7 processAssertion];
    [v11 setInvalidationHandler:0];

    [*(*(a1 + 32) + 72) removeObjectForKey:v3];
    v2 = v13;
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

LABEL_13:
}

void sub_100121B20(uint64_t a1)
{
  v1 = [*(a1 + 32) invalidationBlock];
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_100122F80(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v5 = sqlite3_value_int64(*a3);
  v6 = [ScratchManager directoryPathForDownloadID:v5 assetID:sqlite3_value_int64(a3[1]) createIfNeeded:1];
  if (v6 && (v7 = v6, Length = CFStringGetLength(v6), usedBufLen = 0, MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u), (v10 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL)) != 0))
  {
    v11 = v10;
    v14.location = 0;
    v14.length = Length;
    CFStringGetBytes(v7, v14, 0x8000100u, 0, 0, v10, MaximumSizeForEncoding, &usedBufLen);
    v11[usedBufLen] = 0;
    sqlite3_result_text(a1, v11, -1, &_free);
  }

  else
  {

    sqlite3_result_null(a1);
  }
}

uint64_t sub_1001231D0(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:SSVMediaSocialPostExternalServiceFacebook])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:SSVMediaSocialPostExternalServiceTwitter])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

const __CFString *sub_100123244(uint64_t a1)
{
  v1 = @"twitter";
  if (a1 != 2)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return @"facebook";
  }

  else
  {
    return v1;
  }
}

void sub_100123C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100123C90(uint64_t a1)
{
  value = xpc_dictionary_get_value(*(a1 + 32), "1");
  v3 = value;
  if (!value)
  {
    goto LABEL_4;
  }

  if (xpc_get_type(value) != &_xpc_type_dictionary)
  {
    v3 = 0;
LABEL_4:
    v4 = 400;
LABEL_5:
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v8 = objc_opt_class();
      v9 = *(*(a1 + 40) + 8);
      v28 = 138412802;
      v29 = v8;
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v3;
      LODWORD(v27) = 32;
      v26 = &v28;
      v10 = _os_log_send_and_compose_impl();
      if (v10)
      {
        v11 = v10;
        v12 = [NSString stringWithCString:v10 encoding:4, &v28, v27];
        free(v11);
        v26 = v12;
        SSFileLog();
      }
    }

    v13 = [NSError alloc];
    v14 = SSErrorDomain;
    v15 = v4;
LABEL_16:
    *(*(*(a1 + 48) + 8) + 40) = [v13 initWithDomain:v14 code:v15 userInfo:{0, v26}];
    goto LABEL_17;
  }

  [SSDownloadPropertyKind UTF8String];
  objc_opt_class();
  v3 = SSXPCDictionaryCopyCFObjectWithClass();
  if (!v3)
  {
    goto LABEL_4;
  }

  if (([*(a1 + 40) _supportsDownloadKind:v3] & 1) == 0)
  {
    v4 = 107;
    goto LABEL_5;
  }

  *(*(*(a1 + 56) + 8) + 40) = [[Download alloc] initWithClientXPCDownload:*(a1 + 32)];
  v16 = *(*(*(a1 + 56) + 8) + 40);
  if (!v16)
  {
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    if (!os_log_type_enabled([v18 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v21 = objc_opt_class();
      v22 = *(*(a1 + 40) + 8);
      v28 = 138412546;
      v29 = v21;
      v30 = 2112;
      v31 = v22;
      LODWORD(v27) = 22;
      v26 = &v28;
      v23 = _os_log_send_and_compose_impl();
      if (v23)
      {
        v24 = v23;
        v25 = [NSString stringWithCString:v23 encoding:4, &v28, v27];
        free(v24);
        v26 = v25;
        SSFileLog();
      }
    }

    v13 = [NSError alloc];
    v14 = SSErrorDomain;
    v15 = 400;
    goto LABEL_16;
  }

  [v16 setValue:*(*(a1 + 40) + 8) forProperty:@"client_id"];
  if ([v3 isEqualToString:SSDownloadKindNewsstandContent])
  {
    if ([*(a1 + 40) _isBackgroundApp])
    {
      v17 = objc_alloc_init(SSNetworkConstraints);
      [v17 disableCellularNetworkTypes];
      [*(*(*(a1 + 56) + 8) + 40) unionNetworkConstraints:v17];
    }

    [*(*(*(a1 + 56) + 8) + 40) setValue:+[NSNumber numberWithBool:](NSNumber forProperty:{"numberWithBool:", 1), @"suppress_error_dialogs"}];
    [*(*(*(a1 + 56) + 8) + 40) setValue:+[NSNumber numberWithInteger:](NSNumber forProperty:{"numberWithInteger:", -1), @"priority"}];
  }

LABEL_17:
}

uint64_t sub_100124BE4(uint64_t a1)
{
  *(*(a1 + 32) + 152) = SSXPCDictionaryCopyCFObject();

  *(*(a1 + 32) + 160) = SSXPCDictionaryCopyCFObject();
  result = SSXPCDictionaryCopyCFObject();
  *(*(a1 + 32) + 168) = result;
  v3 = *(a1 + 32);
  if (*(v3 + 24) || (*(v3 + 144) & 1) != 0)
  {
    result = xpc_dictionary_get_BOOL(*(a1 + 40), "1");
    *(*(a1 + 32) + 176) = result;
  }

  else
  {
    *(v3 + 176) = 1;
  }

  return result;
}

void *sub_100124D64(void *result)
{
  v1 = *(result[4] + 136);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[4] _copyFilteredKindsForKinds:v2[5]];
    *(v2[4] + 136) = result;
  }

  return result;
}

void *sub_100124E30(void *result)
{
  v1 = *(result[4] + 152);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] copy];
    *(v2[4] + 152) = result;
  }

  return result;
}

void *sub_100124EFC(void *result)
{
  v1 = *(result[4] + 168);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] copy];
    *(v2[4] + 168) = result;
  }

  return result;
}

void *sub_100124FC8(void *result)
{
  v1 = *(result[4] + 160);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] copy];
    *(v2[4] + 160) = result;
  }

  return result;
}

id sub_10012516C(uint64_t a1)
{
  result = [*(a1 + 32) _supportsDownloadKind:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_100125C0C(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  [v1 _retryCanceledRestoreDownloads];
}

void sub_100125C50(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  [v1 _retrySoftFailedRestoreDownloads];
}

void sub_100125C94(uint64_t a1, uint64_t a2)
{
  CFPreferencesAppSynchronize(kITunesStoreDaemonDefaultsID);
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"StoreAutomaticDownloadConstraintsChangedNotification" object:a2];
}

void sub_100125D04(uint64_t a1, void *a2)
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  LODWORD(v13) = 138412290;
  *(&v13 + 4) = objc_opt_class();
  v7 = *(&v13 + 4);
  LODWORD(v12) = 12;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v6 = [NSString stringWithCString:v8 encoding:4, &v13, v12, v13];
    free(v8);
    SSFileLog();
LABEL_11:
  }

  v9 = +[SSAccountStore defaultStore];
  v10 = [v9 activeAccount];
  v11 = [v10 uniqueIdentifier];

  [a2 checkQueuesWithReason:@"trigger-download" accountID:v11];
}

void sub_10012604C(id a1)
{
  v1 = objc_alloc_init(StoreDownloadQueue);
  v2 = qword_100383ED0;
  qword_100383ED0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001261EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100126204(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_automatic" equalToLongLong:1];
  v5 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_redownload" equalToLongLong:1];
  v6 = [NSArray arrayWithObjects:v4, v5, 0];
  v7 = [SSSQLiteCompoundPredicate predicateMatchingAnyPredicates:v6];

  v8 = [v3 database];
  v9 = [DownloadEntity queryWithDatabase:v8 predicate:v7];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10012638C;
  v14[3] = &unk_1003293F0;
  v10 = *(a1 + 32);
  v15 = v3;
  v16 = v10;
  v11 = v3;
  [v9 enumeratePersistentIDsUsingBlock:v14];
  v12 = *(*(*(a1 + 32) + 8) + 24);

  return v12;
}

id sub_10012638C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) finishDownloadWithID:a2 finalPhase:SSDownloadPhaseCanceled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

void sub_100126458(uint64_t a1)
{
  if (!*(*(a1 + 32) + 40))
  {
    v2 = +[SSAccountStore defaultStore];
    v3 = [v2 activeAccount];
    v4 = [v3 uniqueIdentifier];

    if (v4)
    {
      v5 = *(a1 + 32);
      if (v5[16] == 1)
      {
        v6 = +[SSLogConfig sharedDaemonConfig];
        if (!v6)
        {
          v6 = +[SSLogConfig sharedConfig];
        }

        v7 = [v6 shouldLog];
        if ([v6 shouldLogToDisk])
        {
          v8 = v7 | 2;
        }

        else
        {
          v8 = v7;
        }

        v9 = [v6 OSLogObject];
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v8 &= 2u;
        }

        if (v8)
        {
          v39 = 138412290;
          v40 = objc_opt_class();
          v10 = v40;
          LODWORD(v36) = 12;
          v11 = _os_log_send_and_compose_impl();

          if (!v11)
          {
LABEL_15:

            *(*(a1 + 32) + 17) = 1;
LABEL_51:

            return;
          }

          v9 = [NSString stringWithCString:v11 encoding:4, &v39, v36];
          free(v11);
          SSFileLog();
        }

        goto LABEL_15;
      }

      v18 = [v5 automaticDownloadKinds];
      v19 = [v18 count];

      if (v19)
      {
        v20 = [*(a1 + 32) automaticDownloadKinds];
        v21 = [v20 count];

        if (!v21)
        {
          goto LABEL_51;
        }

        v22 = [*(a1 + 32) enabledDownloadKinds];
        v23 = [v22 count];

        if (v23)
        {
          [*(a1 + 32) _checkAutomaticDownloadQueue:v4];
        }

        v24 = [*(a1 + 32) automaticDownloadKinds];
        v25 = [v24 containsObject:SSDownloadKindSoftwareApplication];

        if (v25)
        {
          +[AppStoreUtility checkDownloadQueue];
        }

        if (!_os_feature_enabled_impl())
        {
          goto LABEL_51;
        }

        v26 = [*(a1 + 32) automaticDownloadKinds];
        if ([v26 containsObject:SSDownloadKindEBook])
        {
        }

        else
        {
          v34 = [*(a1 + 32) automaticDownloadKinds];
          v35 = [v34 containsObject:SSDownloadKindAudiobook];

          if (!v35)
          {
            goto LABEL_51;
          }
        }

        +[BookAssetDaemonUtility checkAutomaticDownloads];
        goto LABEL_51;
      }

      v27 = +[SSLogConfig sharedDaemonConfig];
      if (!v27)
      {
        v27 = +[SSLogConfig sharedConfig];
      }

      v28 = [v27 shouldLog];
      if ([v27 shouldLogToDisk])
      {
        v29 = v28 | 2;
      }

      else
      {
        v29 = v28;
      }

      v30 = [v27 OSLogObject];
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v29 &= 2u;
      }

      if (v29)
      {
        v39 = 138412290;
        v40 = objc_opt_class();
        v31 = v40;
        LODWORD(v36) = 12;
        v32 = _os_log_send_and_compose_impl();

        if (!v32)
        {
LABEL_48:

          v33 = *(a1 + 32);
          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_100126A08;
          v37[3] = &unk_100327238;
          v37[4] = v33;
          v38 = v4;
          [v33 _synchronizeAutomaticDownloadKinds:v37];

          goto LABEL_51;
        }

        v30 = [NSString stringWithCString:v32 encoding:4, &v39, v36];
        free(v32);
        SSFileLog();
      }

      goto LABEL_48;
    }

    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v12 OSLogObject];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v39 = 138412290;
      v40 = objc_opt_class();
      v16 = v40;
      LODWORD(v36) = 12;
      v17 = _os_log_send_and_compose_impl();

      if (!v17)
      {
LABEL_27:

        goto LABEL_51;
      }

      v15 = [NSString stringWithCString:v17 encoding:4, &v39, v36];
      free(v17);
      SSFileLog();
    }

    goto LABEL_27;
  }
}

void sub_100126A08(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 & 2;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = objc_opt_class();
  v8 = *(a1 + 32);
  v9 = v7;
  v10 = [v8 automaticDownloadKinds];
  v11 = [v10 allObjects];
  [v11 componentsJoinedByString:{@", "}];
  v19 = 138412546;
  v20 = v7;
  v22 = v21 = 2112;
  LODWORD(v16) = 22;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v5 = [NSString stringWithCString:v12 encoding:4, &v19, v16];
    free(v12);
    SSFileLog();
LABEL_12:
  }

  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  v15 = *(v14 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100126C54;
  block[3] = &unk_100327238;
  block[4] = v14;
  v18 = v13;
  dispatch_async(v15, block);
}

void sub_100126C54(uint64_t a1)
{
  v2 = [*(a1 + 32) automaticDownloadKinds];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 32) enabledDownloadKinds];
    v5 = [v4 count];

    if (v5)
    {
      [*(a1 + 32) _checkAutomaticDownloadQueue:*(a1 + 40)];
    }

    v6 = [*(a1 + 32) automaticDownloadKinds];
    v7 = [v6 containsObject:SSDownloadKindSoftwareApplication];

    if (v7)
    {
      +[AppStoreUtility checkDownloadQueue];
    }

    if (_os_feature_enabled_impl())
    {
      v8 = [*(a1 + 32) automaticDownloadKinds];
      if ([v8 containsObject:SSDownloadKindEBook])
      {
      }

      else
      {
        v9 = [*(a1 + 32) automaticDownloadKinds];
        v10 = [v9 containsObject:SSDownloadKindAudiobook];

        if (!v10)
        {
          return;
        }
      }

      +[BookAssetDaemonUtility checkAutomaticDownloads];
    }
  }
}

uint64_t sub_100126F6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100126F84(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _newQueueRequestsWithReason:*(a1 + 40) accountID:*(a1 + 48) session:a2];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1(v3, v5);
}

void sub_100127084(uint64_t a1)
{
  v4 = [[NSMutableSet alloc] initWithObjects:{*(a1 + 32), 0}];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) reason];
  [v2 _addOperationsForRequests:v4 reason:v3];
}

void sub_1001276C8(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) queueIdentifier];
        v8 = sub_10012E540(v7);

        if (v8)
        {
          [*(a1 + 40) addObjectsFromArray:v8];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_100127888(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = objc_opt_class();
  v7 = *(a1 + 40);
  *v11 = 138412546;
  *&v11[4] = v6;
  *&v11[12] = 2112;
  *&v11[14] = v7;
  v8 = v6;
  LODWORD(v10) = 22;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v5 = [NSString stringWithCString:v9 encoding:4, v11, v10, *v11, *&v11[16]];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  *(*(a1 + 32) + 16) = 1;
}

void sub_100127ABC(uint64_t a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 40);
    *v12 = 138412546;
    *&v12[4] = v6;
    *&v12[12] = 2112;
    *&v12[14] = v7;
    v8 = v6;
    LODWORD(v11) = 22;
    v9 = _os_log_send_and_compose_impl();

    if (!v9)
    {
      goto LABEL_12;
    }

    v5 = [NSString stringWithCString:v9 encoding:4, v12, v11, *v12, *&v12[16]];
    free(v9);
    SSFileLog();
  }

LABEL_12:
  *(*(a1 + 32) + 16) = 0;
  v10 = *(a1 + 32);
  if (*(v10 + 17) == 1)
  {
    *(v10 + 17) = 0;
    [*(a1 + 32) checkAutomaticDownloadQueue];
  }
}

void sub_100127EF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 database];
  v5 = [v3 _restorableDownloadsQueryInDatabase:v4];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100127FB4;
  v6[3] = &unk_100327A50;
  v7 = *(a1 + 40);
  [v5 enumeratePersistentIDsUsingBlock:v6];
}

void sub_100127FB4(uint64_t a1, uint64_t a2)
{
  v3 = [[NSNumber alloc] initWithLongLong:a2];
  [*(a1 + 32) addObject:v3];
}

void sub_1001280DC(uint64_t a1)
{
  v2 = objc_opt_new();
  if (SSDebugShouldUseAppstored())
  {
    v3 = +[DownloadsDatabase downloadsDatabase];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001282A4;
    v10[3] = &unk_1003294B8;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v11 = v4;
    v12 = v5;
    v13 = v2;
    [v3 readUsingTransactionBlock:v10];
  }

  v6 = [*(a1 + 32) mutableCopy];
  if (SSDebugShouldUseAppstored())
  {
    [v6 minusOrderedSet:v2];
  }

  [v6 minusOrderedSet:*(*(a1 + 40) + 8)];
  [*(*(a1 + 40) + 8) unionOrderedSet:v6];
  if ([v6 count])
  {
    v7 = [[RestoreDownloadsOperation alloc] initWithDownloadIdentifiers:v6 restoreReason:*(a1 + 48)];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10012859C;
    v8[3] = &unk_100327238;
    v8[4] = *(a1 + 40);
    v9 = v6;
    [(RestoreDownloadsOperation *)v7 setCompletionBlock:v8];
    [*(*(a1 + 40) + 56) addOperation:v7];
  }
}

void sub_1001282A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v25 = a1;
  obj = *(a1 + 32);
  v26 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v26)
  {
    v4 = *v28;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v28 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * i);
        v7 = [DownloadEntity alloc];
        v8 = [v6 longLongValue];
        v9 = [v3 database];
        v10 = [(DownloadEntity *)v7 initWithPersistentID:v8 inDatabase:v9];

        v11 = [(DownloadEntity *)v10 valueForProperty:@"kind"];
        if (SSDownloadKindIsSoftwareKind())
        {
          v12 = v4;
          v13 = v3;
          v14 = +[SSLogConfig sharedDaemonConfig];
          if (!v14)
          {
            v14 = +[SSLogConfig sharedConfig];
          }

          v15 = [v14 shouldLog];
          if ([v14 shouldLogToDisk])
          {
            v16 = v15 | 2;
          }

          else
          {
            v16 = v15;
          }

          v17 = [v14 OSLogObject];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = v16;
          }

          else
          {
            v18 = v16 & 2;
          }

          if (v18)
          {
            v19 = objc_opt_class();
            v31 = 138412546;
            v32 = v19;
            v33 = 2112;
            v34 = v6;
            v20 = v19;
            LODWORD(v23) = 22;
            v22 = &v31;
            v21 = _os_log_send_and_compose_impl();

            v3 = v13;
            v4 = v12;
            if (v21)
            {
              v17 = [NSString stringWithCString:v21 encoding:4, &v31, v23];
              free(v21);
              v22 = v17;
              SSFileLog();
              goto LABEL_19;
            }
          }

          else
          {
            v3 = v13;
            v4 = v12;
LABEL_19:
          }

          [*(v25 + 48) addObject:v6];
        }
      }

      v26 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v26);
  }
}

void sub_10012859C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 24);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10012862C;
  v4[3] = &unk_100327238;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void sub_1001288EC(uint64_t a1)
{
  message = xpc_dictionary_create_reply(*(a1 + 32));
  v2 = [*(a1 + 40) automaticDownloadKinds];
  [v2 allObjects];
  SSXPCDictionarySetCFObject();

  xpc_connection_send_message(*(a1 + 48), message);
}

void sub_100128B5C(uint64_t a1)
{
  v2 = +[DownloadsDatabase downloadsDatabase];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100128C1C;
  v4[3] = &unk_1003294E0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = [v2 modifyUsingTransactionBlock:v4];
}

uint64_t sub_100128C1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    LODWORD(v13) = 138412290;
    *(&v13 + 4) = objc_opt_class();
    v8 = *(&v13 + 4);
    LODWORD(v12) = 12;
    v9 = _os_log_send_and_compose_impl();

    if (!v9)
    {
      goto LABEL_12;
    }

    v7 = [NSString stringWithCString:v9 encoding:4, &v13, v12, v13];
    free(v9);
    SSFileLog();
  }

LABEL_12:
  v10 = [*(a1 + 32) _newQueueRequestsWithReason:@"other" accountID:*(a1 + 40) session:v3];

  if (v10)
  {
    [*(a1 + 32) _addOperationsForRequests:v10 reason:@"other"];
  }

  return 1;
}

void sub_100128ED8(id *a1)
{
  objc_opt_class();
  v2 = SSXPCDictionaryCopyCFObjectWithClass();
  if (![v2 isEqualToString:@"all"])
  {
    v5 = [a1[5] automaticDownloadKinds];
    v6 = [v5 mutableCopy];

    objc_opt_class();
    v7 = SSXPCDictionaryCopyCFObjectWithClass();
    if (!v2 || [v2 isEqualToString:@"set"])
    {
      [v6 removeAllObjects];
      if (!v7)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    if (v7)
    {
      if ([v2 isEqualToString:@"union"])
      {
LABEL_7:
        [v6 addObjectsFromArray:v7];
        goto LABEL_8;
      }

      if ([v2 isEqualToString:@"minus"])
      {
        v20 = [NSSet setWithArray:v7];
        [v6 minusSet:v20];
      }
    }

LABEL_8:
    v8 = +[SSAccountStore defaultStore];
    v9 = [v8 activeAccount];

    v3 = [a1[5] _newOperationByCommitingAutomaticDownloadKinds:v6 account:v9];
    if (v3)
    {
      v10 = [[XPCClient alloc] initWithInputConnection:a1[6]];
      v11 = [(XPCClient *)v10 clientIdentifierHeader];
      [(EnableAllAutomaticDownloadKindsOperation *)v3 setClientIdentifierHeader:v11];

      v12 = v3;
    }

    if (v3)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  v3 = objc_alloc_init(EnableAllAutomaticDownloadKindsOperation);
  if (v3)
  {
LABEL_3:
    objc_initWeak(location, v3);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100129330;
    v23[3] = &unk_100329508;
    objc_copyWeak(&v26, location);
    v24 = a1[4];
    v25 = a1[6];
    [(EnableAllAutomaticDownloadKindsOperation *)v3 setCompletionBlock:v23];
    v4 = +[ISOperationQueue mainQueue];
    [v4 addOperation:v3];

    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
    goto LABEL_27;
  }

LABEL_11:
  v13 = +[SSLogConfig sharedDaemonConfig];
  if (!v13)
  {
    v13 = +[SSLogConfig sharedConfig];
  }

  v14 = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    v15 = v14 | 2;
  }

  else
  {
    v15 = v14;
  }

  v16 = [v13 OSLogObject];
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v15 &= 2u;
  }

  if (v15)
  {
    LODWORD(location[0]) = 138412290;
    *(location + 4) = objc_opt_class();
    v17 = *(location + 4);
    LODWORD(v22) = 12;
    v18 = _os_log_send_and_compose_impl();

    if (v18)
    {
      v19 = [NSString stringWithCString:v18 encoding:4, location, v22];
      free(v18);
      SSFileLog();
    }
  }

  else
  {
  }

  reply = xpc_dictionary_create_reply(a1[4]);
  xpc_dictionary_set_BOOL(reply, "0", 0);
  xpc_connection_send_message(a1[6], reply);

LABEL_27:
}

void sub_100129308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100129330(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained success];
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  xpc_dictionary_set_BOOL(reply, "0", v2);
  xpc_connection_send_message(*(a1 + 40), reply);
}

void sub_1001298B4(uint64_t a1)
{
  v2 = +[SSAccountStore defaultStore];
  v3 = [v2 activeAccount];
  v4 = [v3 uniqueIdentifier];

  if (v4 && ([v4 isEqual:*(*(a1 + 32) + 32)] & 1) == 0)
  {
    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v13 OSLogObject];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v23 = 138412546;
      v24 = objc_opt_class();
      v25 = 2114;
      v26 = v4;
      v17 = v24;
      LODWORD(v20) = 22;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_26:

        objc_storeStrong((*(a1 + 32) + 32), v4);
        v19 = dispatch_get_global_queue(0, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100129C5C;
        block[3] = &unk_100327238;
        block[4] = *(a1 + 32);
        v22 = v4;
        dispatch_async(v19, block);

        goto LABEL_27;
      }

      v16 = [NSString stringWithCString:v18 encoding:4, &v23, v20];
      free(v18);
      SSFileLog();
    }

    goto LABEL_26;
  }

  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = objc_opt_class();
  v10 = *(*(a1 + 32) + 32);
  v23 = 138412802;
  v24 = v9;
  v25 = 2114;
  v26 = v4;
  v27 = 2114;
  v28 = v10;
  v11 = v9;
  LODWORD(v20) = 32;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v8 = [NSString stringWithCString:v12 encoding:4, &v23, v20];
    free(v12);
    SSFileLog();
LABEL_13:
  }

LABEL_27:
}

void sub_10012A714(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = +[Daemon daemon];
  [v1 releaseKeepAliveAssertion:@"com.apple.itunesstore.StoreDownloadQueue"];
}

void sub_10012A9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012A9F0(uint64_t a1)
{
  [*(*(a1 + 32) + 40) setCompletionBlock:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained success])
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10012AAD8;
    block[3] = &unk_1003281A0;
    block[4] = v5;
    v8 = WeakRetained;
    v9 = *(a1 + 40);
    dispatch_async(v6, block);
  }
}

void sub_10012AAD8(id *a1)
{
  v1 = a1;
  v40 = [a1[4] _ignoreVideos];
  v37 = objc_alloc_init(NSMutableArray);
  v39 = objc_alloc_init(NSMutableOrderedSet);
  v2 = [v1[4] enabledDownloadKinds];
  [v1[5] downloads];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v50 = 0u;
  v3 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v48;
    v38 = v1;
    v41 = *v48;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v48 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v47 + 1) + 8 * i);
        if ([v7 isSoftwareKind])
        {
          v8 = +[SSLogConfig sharedDaemonConfig];
          if (!v8)
          {
            v8 = +[SSLogConfig sharedConfig];
          }

          v9 = [v8 shouldLog];
          if ([v8 shouldLogToDisk])
          {
            v10 = v9 | 2;
          }

          else
          {
            v10 = v9;
          }

          v11 = [v8 OSLogObject];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v12 = v10;
          }

          else
          {
            v12 = v10 & 2;
          }

          if (!v12)
          {
            goto LABEL_18;
          }

          v13 = objc_opt_class();
          v14 = v13;
          v15 = [v7 bundleIdentifier];
          v51 = 138412546;
          v52 = v13;
          v53 = 2112;
          v54 = v15;
          LODWORD(v36) = 22;
          v35 = &v51;
          v16 = _os_log_send_and_compose_impl();

          if (v16)
          {
            v11 = [NSString stringWithCString:v16 encoding:4, &v51, v36];
            free(v16);
            v35 = v11;
            SSFileLog();
            v5 = v41;
LABEL_18:

            goto LABEL_38;
          }

          goto LABEL_34;
        }

        v8 = [v7 cancelDownloadURL];
        if (v8 && ([v7 kind], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v2, "containsObject:", v17), v17, !v18))
        {
          v28 = v37;
          v29 = v8;
        }

        else
        {
          if (([v7 isVideosKind] & v40) == 1)
          {
            v19 = +[SSLogConfig sharedDaemonConfig];
            if (!v19)
            {
              v19 = +[SSLogConfig sharedConfig];
            }

            v20 = [v19 shouldLog];
            if ([v19 shouldLogToDisk])
            {
              v20 |= 2u;
            }

            v21 = [v19 OSLogObject];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v22 = v20;
            }

            else
            {
              v22 = v20 & 2;
            }

            if (v22)
            {
              v23 = objc_opt_class();
              v24 = v2;
              v25 = v23;
              v26 = [v7 title];
              v51 = 138412546;
              v52 = v23;
              v53 = 2112;
              v54 = v26;
              LODWORD(v36) = 22;
              v35 = &v51;
              v27 = _os_log_send_and_compose_impl();

              v2 = v24;
              if (v27)
              {
                v21 = [NSString stringWithCString:v27 encoding:4, &v51, v36];
                free(v27);
                v35 = v21;
                SSFileLog();
                goto LABEL_32;
              }
            }

            else
            {
LABEL_32:
            }

            v1 = v38;
LABEL_34:
            v5 = v41;
            goto LABEL_38;
          }

          v28 = v39;
          v29 = v7;
        }

        [v28 addObject:v29];
LABEL_38:
      }

      v4 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v4);
  }

  v30 = +[DownloadsDatabase downloadsDatabase];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10012B038;
  v43[3] = &unk_100329580;
  v43[4] = v1[4];
  v44 = v1[6];
  v31 = v39;
  v45 = v31;
  v32 = v37;
  v46 = v32;
  v33 = [v30 modifyUsingPurchaseTransactionBlock:v43];

  if ([v32 count])
  {
    v34 = objc_alloc_init(FinishDownloadsOperation);
    [*(v1[4] + 6) addOperation:v34];
  }
}

unint64_t sub_10012B038(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v5 = [*(a1 + 32) _automaticDownloadsQueryWithDatabase:v4 accountID:*(a1 + 40)];
  v6 = [v3 replaceDownloadsInQuery:v5 withStoreDownloads:*(a1 + 48) accountID:*(a1 + 40)];
  if (v6 && [*(a1 + 56) count])
  {
    v16 = v3;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = *(a1 + 56);
    v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [NSDictionary alloc];
          v13 = [v11 absoluteString];
          v14 = [v12 initWithObjectsAndKeys:{v13, @"finish_url", *(a1 + 40), @"store_account_id", 0}];
        }

        v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    v3 = v16;
    v6 = v6;
  }

  return v6;
}

void sub_10012B3B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10012B3D4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (![WeakRetained success])
  {
    goto LABEL_10;
  }

  v3 = [a1[4] accountIdentifier];
  if (v3)
  {
    [a1[5] _setLastCheckedAccountID:v3];
  }

  v4 = [WeakRetained numberOfAvailableDownloads];
  if (!v4)
  {
    v10 = +[DownloadsDatabase downloadsDatabase];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10012B674;
    v28[3] = &unk_1003294E0;
    v11 = a1[4];
    v12 = a1[5];
    v29 = v11;
    v30 = v12;
    v13 = [v10 modifyUsingTransactionBlock:v28];

LABEL_9:
LABEL_10:
    v14 = a1[4];
    v15 = a1[5];
    v16 = *(v15 + 3);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10012BE80;
    block[3] = &unk_100327238;
    block[4] = v15;
    v19 = v14;
    dispatch_async(v16, block);

    goto LABEL_11;
  }

  v5 = v4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v6 = +[DownloadsDatabase downloadsDatabase];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10012BA10;
  v20[3] = &unk_1003295D0;
  v17 = *(a1 + 2);
  v7 = v17.i64[0];
  v21 = vextq_s8(v17, v17, 8uLL);
  v22 = &v24;
  v23 = v5;
  v8 = [v6 modifyUsingTransactionBlock:v20];

  if (*(v25 + 24) != 1)
  {

    _Block_object_dispose(&v24, 8);
    goto LABEL_9;
  }

  v9 = [a1[5] _newLoadQueueOperationForQueueRequest:a1[4]];
  [*(a1[5] + 6) addOperation:v9];

  _Block_object_dispose(&v24, 8);
LABEL_11:
}

void sub_10012B658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10012B674(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) purchaseIdentifier];
  if (v4)
  {
    v5 = [v3 placeholderDownloadForPurchaseIdentifier:v4];
    if (v5)
    {
      v6 = v5;
      v7 = +[SSLogConfig sharedDaemonConfig];
      if (!v7)
      {
        v7 = +[SSLogConfig sharedConfig];
      }

      v8 = [v7 shouldLog];
      if ([v7 shouldLogToDisk])
      {
        v9 = v8 | 2;
      }

      else
      {
        v9 = v8;
      }

      v10 = [v7 OSLogObject];
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v9 &= 2u;
      }

      if (v9)
      {
        v11 = objc_opt_class();
        v12 = v11;
        v32 = 138412546;
        v33 = v11;
        v34 = 2048;
        v35 = [v6 persistentID];
        LODWORD(v31) = 22;
        v30 = &v32;
        v13 = _os_log_send_and_compose_impl();

        if (!v13)
        {
LABEL_14:

          v14 = [v6 persistentID];
          [v3 finishDownloadWithID:v14 finalPhase:SSDownloadPhaseCanceled];

          goto LABEL_15;
        }

        v10 = [NSString stringWithCString:v13 encoding:4, &v32, v31];
        free(v13);
        v30 = v10;
        SSFileLog();
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  v16 = *(a1 + 32);
  v15 = *(a1 + 40);
  v17 = [v3 database];
  v18 = [v15 _downloadQueryWithQueueRequest:v16 database:v17];

  v19 = [v18 copyEntityIdentifiers];
  if ([v19 count])
  {
    v20 = +[SSLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    v21 = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      v22 = v21 | 2;
    }

    else
    {
      v22 = v21;
    }

    v23 = [v20 OSLogObject];
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v24 = objc_opt_class();
      v25 = v24;
      v26 = [v19 count];
      v27 = *(a1 + 32);
      v32 = 138412802;
      v33 = v24;
      v34 = 2048;
      v35 = v26;
      v36 = 2112;
      v37 = v27;
      LODWORD(v31) = 32;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
LABEL_27:

        [v3 finishDownloadsWithIdentifiers:v19 finalPhase:SSDownloadPhaseCanceled];
        goto LABEL_28;
      }

      v23 = [NSString stringWithCString:v28 encoding:4, &v32, v31];
      free(v28);
      SSFileLog();
    }

    goto LABEL_27;
  }

LABEL_28:

  return 1;
}

uint64_t sub_10012BA10(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = [v3 database];
  v7 = [v4 _downloadQueryWithQueueRequest:v5 database:v6];
  v8 = [v7 countOfEntities];

  v9 = a1[7];
  v10 = +[SSLogConfig sharedDaemonConfig];
  v11 = v10;
  if (v9 != v8)
  {
    if (!v10)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v29 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v30 = v29 | 2;
    }

    else
    {
      v30 = v29;
    }

    v31 = [v11 OSLogObject];
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v30 &= 2u;
    }

    if (v30)
    {
      *v37 = 138412290;
      *&v37[4] = objc_opt_class();
      v32 = *&v37[4];
      LODWORD(v36) = 12;
      v33 = _os_log_send_and_compose_impl();

      if (!v33)
      {
LABEL_38:

        *(*(a1[6] + 8) + 24) = 1;
        goto LABEL_39;
      }

      v31 = [NSString stringWithCString:v33 encoding:4, v37, v36, *v37, *&v37[8]];
      free(v33);
      SSFileLog();
    }

    goto LABEL_38;
  }

  if (!v10)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  v12 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 OSLogObject];
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v13 &= 2u;
  }

  if (!v13)
  {
    goto LABEL_12;
  }

  *v37 = 138412290;
  *&v37[4] = objc_opt_class();
  v15 = *&v37[4];
  LODWORD(v36) = 12;
  v35 = v37;
  v16 = _os_log_send_and_compose_impl();

  if (v16)
  {
    v14 = [NSString stringWithCString:v16 encoding:4, v37, v36, *v37];
    free(v16);
    v35 = v14;
    SSFileLog();
LABEL_12:
  }

  v17 = [a1[5] purchaseIdentifier];
  if (v17)
  {
    v18 = [v3 placeholderDownloadForPurchaseIdentifier:v17];
    if (v18)
    {
      v19 = v18;
      v20 = +[SSLogConfig sharedDaemonConfig];
      if (!v20)
      {
        v20 = +[SSLogConfig sharedConfig];
      }

      v21 = [v20 shouldLog];
      if ([v20 shouldLogToDisk])
      {
        v22 = v21 | 2;
      }

      else
      {
        v22 = v21;
      }

      v23 = [v20 OSLogObject];
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v22 &= 2u;
      }

      if (v22)
      {
        v24 = objc_opt_class();
        v25 = v24;
        v26 = [v19 persistentID];
        *v37 = 138412546;
        *&v37[4] = v24;
        *&v37[12] = 2048;
        *&v37[14] = v26;
        LODWORD(v36) = 22;
        v27 = _os_log_send_and_compose_impl();

        if (!v27)
        {
LABEL_26:

          v28 = [v19 persistentID];
          [v3 finishDownloadWithID:v28 finalPhase:SSDownloadPhaseCanceled];

          goto LABEL_39;
        }

        v23 = [NSString stringWithCString:v27 encoding:4, v37, v36];
        free(v27);
        SSFileLog();
      }

      goto LABEL_26;
    }
  }

LABEL_39:

  return 1;
}

void sub_10012BFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012BFF8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012C144;
  block[3] = &unk_100327238;
  block[4] = v3;
  v14 = v2;
  dispatch_async(v4, block);
  v5 = +[DownloadsDatabase downloadsDatabase];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10012C150;
  v9[3] = &unk_100329620;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  objc_copyWeak(&v12, (a1 + 48));
  v8 = [v5 modifyUsingPurchaseTransactionBlock:v9];

  objc_destroyWeak(&v12);
}

uint64_t sub_10012C150(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] purchaseIdentifier];
  if (v4)
  {
    v5 = [v3 placeholderDownloadForPurchaseIdentifier:v4];
    if (v5)
    {
      v6 = v5;
      v7 = +[SSLogConfig sharedDaemonConfig];
      if (!v7)
      {
        v7 = +[SSLogConfig sharedConfig];
      }

      v8 = [v7 shouldLog];
      if ([v7 shouldLogToDisk])
      {
        v9 = v8 | 2;
      }

      else
      {
        v9 = v8;
      }

      v10 = [v7 OSLogObject];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = v9;
      }

      else
      {
        v11 = v9 & 2;
      }

      if (v11)
      {
        v12 = objc_opt_class();
        v13 = v12;
        v48 = 138412546;
        v49 = v12;
        v50 = 2048;
        v51 = [v6 persistentID];
        LODWORD(v37) = 22;
        v36 = &v48;
        v14 = _os_log_send_and_compose_impl();

        if (!v14)
        {
LABEL_15:

          v15 = [v6 persistentID];
          [v3 finishDownloadWithID:v15 finalPhase:SSDownloadPhaseCanceled];

          goto LABEL_16;
        }

        v10 = [NSString stringWithCString:v14 encoding:4, &v48, v37];
        free(v14);
        v36 = v10;
        SSFileLog();
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if ([WeakRetained success])
  {
    v17 = [WeakRetained downloads];
    v18 = [v17 mutableCopy];

    LOBYTE(v17) = [a1[5] _ignoreVideos];
    v19 = objc_opt_new();
    v20 = objc_opt_new();
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10012C588;
    v43[3] = &unk_1003295F8;
    v46 = v17;
    v43[4] = a1[5];
    v21 = v19;
    v44 = v21;
    v22 = v20;
    v45 = v22;
    [v18 enumerateObjectsUsingBlock:v43];
    [v18 removeObjectsAtIndexes:v21];
    if ([a1[4] cancelsDuplicateDownloads])
    {
      v38 = v21;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v23 = v18;
      v24 = [v23 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v40;
        v27 = SSDownloadMetadataKeyCancelIfDuplicate;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v40 != v26)
            {
              objc_enumerationMutation(v23);
            }

            [*(*(&v39 + 1) + 8 * i) setValue:&__kCFBooleanTrue forMetadataKey:{v27, v36}];
          }

          v25 = [v23 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v25);
      }

      v21 = v38;
    }

    [BookAssetDaemonUtility sendBookStoreDownloads:v22 withReason:@"auto download queue", v36];
    v30 = a1[4];
    v29 = a1[5];
    v31 = [v3 database];
    v32 = [v29 _downloadQueryWithQueueRequest:v30 database:v31];

    v33 = [a1[4] accountIdentifier];
    v34 = [v3 replaceDownloadsInQuery:v32 withStoreDownloads:v18 accountID:v33];
  }

  else
  {
    v34 = 1;
  }

  return v34;
}

void sub_10012C588(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([v5 isVideosKind] && *(a1 + 56) == 1)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      v11 = v10;
      [v5 title];
      v23 = 138412546;
      v24 = v10;
      v26 = v25 = 2112;
      LODWORD(v22) = 22;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_14:

        goto LABEL_30;
      }

      v9 = [NSString stringWithCString:v12 encoding:4, &v23, v22];
      free(v12);
      SSFileLog();
    }

    goto LABEL_14;
  }

  if ([v5 isSoftwareKind])
  {
    v13 = +[SSLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v13 OSLogObject];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v17 = objc_opt_class();
      v18 = v17;
      [v5 bundleIdentifier];
      v23 = 138412546;
      v24 = v17;
      v26 = v25 = 2112;
      LODWORD(v22) = 22;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
LABEL_27:

        [*(a1 + 40) addIndex:a3];
        goto LABEL_30;
      }

      v16 = [NSString stringWithCString:v19 encoding:4, &v23, v22];
      free(v19);
      SSFileLog();
    }

    goto LABEL_27;
  }

  v20 = [v5 kind];
  IsBookToShimKind = SSDownloadKindIsBookToShimKind();

  if (IsBookToShimKind)
  {
    [*(a1 + 40) addIndex:a3];
    [*(a1 + 48) addObject:v5];
  }

LABEL_30:
}

void sub_10012CD68(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3[1])
  {
    v6 = sub_10012E754(*a3);
    if ([*(a1 + 32) containsObject:?])
    {
      v5 = objc_alloc_init(StoreDownloadQueueRequest);
      [(StoreDownloadQueueRequest *)v5 setAccountIdentifier:a3[1]];
      [(StoreDownloadQueueRequest *)v5 setQueueIdentifier:v6];
      [(StoreDownloadQueueRequest *)v5 setReason:*(a1 + 40)];
      [*(a1 + 48) addObject:v5];
    }
  }
}

BOOL sub_10012D05C(id a1, DownloadsTransaction *a2)
{
  v2 = a2;
  v3 = [SSSQLiteComparisonPredicate predicateWithProperty:@"download_state.restore_state" equalToLongLong:3];
  v4 = [(DownloadsTransaction *)v2 resetDownloadsMatchingPredicate:v3];
  if (v4)
  {
    [(DownloadsExternalTransaction *)v2 addDownloadChangeTypes:128];
    [(DownloadsExternalTransaction *)v2 setRestoreReason:@"cancel-retry"];
  }

  return v4;
}

BOOL sub_10012D2A0(id a1, DownloadsTransaction *a2)
{
  v2 = a2;
  v3 = [SSSQLiteComparisonPredicate predicateWithProperty:@"download_state.restore_state" equalToLongLong:2];
  v4 = [(DownloadsTransaction *)v2 resetDownloadsMatchingPredicate:v3];
  if (v4)
  {
    [(DownloadsExternalTransaction *)v2 addDownloadChangeTypes:128];
  }

  return v4;
}

void sub_10012D58C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 32);
  v4 = (v2 + 32);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
  }
}

void sub_10012D700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10012D720(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained success];
  v3 = WeakRetained;
  if (v2)
  {
    v4 = [WeakRetained enabledDownloadKinds];
    v5 = *(a1 + 32);
    if (v4)
    {
      v6 = [NSSet setWithArray:v4];
      [v5 commitAutomaticDownloadKinds:v6 markAsDirty:0];
    }

    else
    {
      [*(a1 + 32) commitAutomaticDownloadKinds:0 markAsDirty:0];
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))();
    }

    v3 = WeakRetained;
  }

  return _objc_release_x1(v2, v3);
}

id sub_10012E540(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  if (qword_100383EF0 != -1)
  {
    sub_1002723E4();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10012E6F8;
  v4[3] = &unk_100329718;
  v4[4] = a1;
  v4[5] = v2;
  [qword_100383EF8 enumerateKeysAndObjectsUsingBlock:v4];
  return v2;
}

id sub_10012E5EC()
{
  v0 = [NSDictionary alloc];
  result = [v0 initWithObjectsAndKeys:{SSDownloadKindAudiobook, @"media", SSDownloadKindCoachedAudio, @"books", SSDownloadKindEBook, @"media", SSDownloadKindMovie, @"media", SSDownloadKindMusic, @"media", SSDownloadKindMusicVideo, @"media", SSDownloadKindPodcast, @"media", SSDownloadKindRingtone, @"apps", SSDownloadKindSoftwareApplication, @"media", SSDownloadKindTelevisionEpisode, @"media", SSDownloadKindTone, @"media", SSDownloadKindVideoPodcast, 0}];
  qword_100383EF8 = result;
  return result;
}

id sub_10012E6F8(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 isEqualToString:*(a1 + 32)];
  if (result)
  {
    v6 = *(a1 + 40);

    return [v6 addObject:a2];
  }

  return result;
}

id sub_10012E754(uint64_t a1)
{
  if (qword_100383EF0 != -1)
  {
    sub_1002723E4();
  }

  v2 = qword_100383EF8;

  return [v2 objectForKey:a1];
}

uint64_t sub_10012E860(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100383F00;
  qword_100383F00 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_10012F588(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  [*(*(a1 + 32) + 24) setCompletionBlock:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;

  v5 = [v2 error];
  if (v5)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      *v14 = 138412546;
      *&v14[4] = objc_opt_class();
      *&v14[12] = 2112;
      *&v14[14] = v5;
      v10 = *&v14[4];
      LODWORD(v13) = 22;
      v12 = v14;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_13:

        goto LABEL_14;
      }

      v9 = [NSString stringWithCString:v11 encoding:4, v14, v13, *v14, *&v14[16]];
      free(v11);
      v12 = v9;
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  [*(a1 + 32) _performMigration];
}

void sub_10012F7E4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  [*(*(a1 + 32) + 32) removeAllObjects];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v2;
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

        [*(*(&v8 + 1) + 8 * v7) performMigration];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_10012F988(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  v6 = [v2 count];
  [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
  v7 = +[SSLogConfig sharedDaemonConfig];
  v8 = v7;
  if (!v6)
  {
    if (!v7)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    v14 = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v8 OSLogObject];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      LODWORD(v33) = 138412290;
      *(&v33 + 4) = objc_opt_class();
      v17 = *(&v33 + 4);
      LODWORD(v32) = 12;
      v31 = &v33;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
        goto LABEL_26;
      }

      v16 = [NSString stringWithCString:v18 encoding:4, &v33, v32, v33];
      free(v18);
      v31 = v16;
      SSFileLog();
    }

LABEL_26:
    v19 = +[ISNetworkObserver sharedInstance];
    v20 = [v19 networkType];

    if (v20)
    {
      [*(a1 + 32) _loadBagAndPerformMigration];
      return;
    }

    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    v22 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = v22 | 2;
    }

    else
    {
      v23 = v22;
    }

    v24 = [v21 OSLogObject];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v25 = objc_opt_class();
      LODWORD(v33) = 138412290;
      *(&v33 + 4) = v25;
      v26 = v25;
      LODWORD(v32) = 12;
      v27 = _os_log_send_and_compose_impl();

      if (!v27)
      {
LABEL_39:

        v8 = +[NSNotificationCenter defaultCenter];
        v28 = *(a1 + 32);
        v29 = ISNetworkTypeChangedNotification;
        v30 = +[ISNetworkObserver sharedInstance];
        [v8 addObserver:v28 selector:"_networkTypeChangedNotification:" name:v29 object:v30];

        goto LABEL_40;
      }

      v24 = [NSString stringWithCString:v27 encoding:4, &v33, v32];
      free(v27);
      SSFileLog();
    }

    goto LABEL_39;
  }

  if (!v7)
  {
    v8 = +[SSLogConfig sharedConfig];
  }

  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v10 &= 2u;
  }

  if (!v10)
  {
    goto LABEL_14;
  }

  LODWORD(v33) = 138412290;
  *(&v33 + 4) = objc_opt_class();
  v12 = *(&v33 + 4);
  LODWORD(v32) = 12;
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    v11 = [NSString stringWithCString:v13 encoding:4, &v33, v32, v33];
    free(v13);
    SSFileLog();
LABEL_14:
  }

LABEL_40:
}

void sub_100131F44(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x100131E98);
  }

  _Unwind_Resume(exception_object);
}

NSDate *sub_100133540(void *a1)
{
  [a1 doubleValue];

  return [NSDate dateWithTimeIntervalSinceReferenceDate:?];
}

void sub_1001361CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10013621C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100136234(void *a1, void *a2, void *a3)
{
  v12 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a3);
  }

  else
  {
    v7 = [*(*(a1[5] + 8) + 40) error];

    v8 = *(a1[5] + 8);
    if (v7)
    {
      v9 = [*(v8 + 40) error];
      v10 = *(a1[4] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    else
    {
      objc_storeStrong((v8 + 40), a2);
      *(*(a1[6] + 8) + 24) = 1;
    }
  }
}

void sub_100137398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_10013740C(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = *(*(a1 + 32) + 8);
    v9 = v6;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v11 = [v15 error];

    if (v11)
    {
      v12 = [v15 error];
      v13 = *(*(a1 + 32) + 8);
      v10 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    else
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      v14 = *(*(a1 + 32) + 8);
      v10 = *(v14 + 40);
      *(v14 + 40) = 0;
    }
  }
}

void sub_1001380C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_10013813C(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = *(*(a1 + 32) + 8);
    v9 = v6;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v11 = [v15 error];

    if (v11)
    {
      v12 = [v15 error];
      v13 = *(*(a1 + 32) + 8);
      v10 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    else
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      v14 = *(*(a1 + 32) + 8);
      v10 = *(v14 + 40);
      *(v14 + 40) = 0;
    }
  }
}

id sub_1001386C8(uint64_t a1, void *a2)
{
  v3 = +[FinishedDownloadEntity queryWithDatabase:predicate:](FinishedDownloadEntity, "queryWithDatabase:predicate:", [a2 database], *(*(a1 + 32) + 96));
  v7[0] = @"finish_url";
  v7[1] = @"store_account_id";
  v7[2] = @"store_item_id";
  v7[3] = @"store_transaction_id";
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001387DC;
  v5[3] = &unk_1003272D8;
  v6 = *(a1 + 40);
  return [v3 enumeratePersistentIDsAndProperties:v7 count:4 usingBlock:v5];
}

void sub_1001387DC(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = objc_alloc_init(ISStoreURLOperation);
  [v11 setDataProvider:{+[DaemonProtocolDataProvider provider](DaemonProtocolDataProvider, "provider")}];
  [v11 setUseUserSpecificURLBag:1];
  v6 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:a3[1]];
  [v11 setAuthenticationContext:v6];

  v7 = objc_alloc_init(SSMutableURLRequestProperties);
  v8 = v7;
  if (*a3)
  {
    [v7 setURL:{+[NSURL URLWithString:](NSURL, "URLWithString:")}];
  }

  else
  {
    [v7 setURLBagKey:@"songDownloadDone"];
    [v8 setValue:+[NSString stringWithFormat:](NSString forRequestParameter:{"stringWithFormat:", @"%llu", SSGetItemIdentifierFromValue()), @"songId"}];
    [v8 setValue:a3[3] forRequestParameter:@"download-id"];
  }

  v9 = [LSApplicationProxy applicationProxyForItemID:[NSNumber numberWithLongLong:SSGetItemIdentifierFromValue()]];
  if (v9)
  {
    if ([v9 hasMIDBasedSINF])
    {
      v10 = [+[ISDevice sharedInstance](ISDevice serialNumber];
      if (v10)
      {
        [v8 setValue:v10 forRequestParameter:@"serialNumber"];
      }
    }
  }

  [v11 setRequestProperties:v8];

  [*(a1 + 32) addObject:{+[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", a2)}];
  [*(a1 + 40) addObject:v11];
}

uint64_t sub_1001389B4(uint64_t a1, void *a2)
{
  v3 = -[FinishedDownloadEntity initWithPersistentID:inDatabase:]([FinishedDownloadEntity alloc], "initWithPersistentID:inDatabase:", [objc_msgSend(*(a1 + 32) objectAtIndex:{*(a1 + 48)), "longLongValue"}], objc_msgSend(a2, "database"));
  *(*(*(a1 + 40) + 8) + 24) = [(FinishedDownloadEntity *)v3 deleteFromDatabase];

  return *(*(*(a1 + 40) + 8) + 24);
}

uint64_t sub_100138CFC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[PurchaseActionsDatabaseTransaction alloc] initWithDatabase:*(*(a1 + 32) + 8)];
  v4 = (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t sub_100138EAC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[PurchaseActionsDatabaseTransaction alloc] initWithDatabase:*(*(a1 + 32) + 8)];
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
  return 1;
}

uint64_t sub_100138FC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001390D8;
  v8[3] = &unk_100329880;
  v9 = *(a1 + 32);
  v11 = &v12;
  v5 = v4;
  v10 = v5;
  [v5 prepareStatementForSQL:@"DELETE FROM purchase_intents_table WHERE app_bundle_id = ?;" cache:0 usingBlock:v8];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_1001390C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001390D8(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0);
  result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t sub_10013921C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v5 = [NSString stringWithFormat:@"SELECT * FROM purchase_intents_table WHERE app_bundle_id = ?"];;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_100139404;
  v16[4] = sub_100139414;
  v17 = objc_opt_new();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013941C;
  v12[3] = &unk_1003298D0;
  v13 = *(a1 + 32);
  v6 = v4;
  v14 = v6;
  v15 = v16;
  [v6 prepareStatementForSQL:v5 cache:1 usingBlock:v12];
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001395D0;
  block[3] = &unk_1003298F8;
  v10 = *(a1 + 40);
  v11 = v16;
  dispatch_async(v7, block);

  _Block_object_dispose(v16, 8);
  return 1;
}

void sub_1001393EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100139404(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10013941C(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0);
  result = [*(a1 + 40) statementHasRowAfterStepping:a2];
  if (result)
  {
    do
    {
      v5 = objc_alloc_init(PurchaseIntent);
      v6 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 0)];
      [(PurchaseIntent *)v5 setProductIdentifier:v6];
      v7 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 1)];
      [(PurchaseIntent *)v5 setAppBundleId:v7];
      v8 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 2)];
      [(PurchaseIntent *)v5 setTimestamp:v8];

      v9 = sqlite3_column_text(a2, 4);
      if (v9)
      {
        v10 = [NSString stringWithUTF8String:v9];
        [(PurchaseIntent *)v5 setProductName:v10];
      }

      v11 = sqlite3_column_text(a2, 5);
      if (v11)
      {
        v12 = [NSString stringWithUTF8String:v11];
        [(PurchaseIntent *)v5 setAppName:v12];
      }

      [*(*(*(a1 + 48) + 8) + 40) addObject:v5];

      result = [*(a1 + 40) statementHasRowAfterStepping:a2];
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t sub_100139684(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100139820;
  v13[3] = &unk_100329880;
  v14 = *(a1 + 32);
  v16 = &v17;
  v5 = v4;
  v15 = v5;
  [v5 prepareStatementForSQL:@"DELETE FROM purchase_intents_table WHERE app_bundle_id = ?;" cache:0 usingBlock:v13];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100139898;
  v9[3] = &unk_100329880;
  v10 = *(a1 + 32);
  v12 = &v17;
  v6 = v5;
  v11 = v6;
  [v6 prepareStatementForSQL:@"INSERT OR REPLACE INTO purchase_intents_table (product_identifier cache:app_bundle_id usingBlock:{timestamp, product_name, app_name) VALUES (?, ?, ?, ?, ?);", 0, v9}];
  v7 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v7;
}

id sub_100139820(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) appBundleId];
  sqlite3_bind_text(a2, 1, [v4 UTF8String], -1, 0);

  result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

id sub_100139898(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) productIdentifier];
  sqlite3_bind_text(a2, 1, [v4 UTF8String], -1, 0);

  v5 = [*(a1 + 32) appBundleId];
  sqlite3_bind_text(a2, 2, [v5 UTF8String], -1, 0);

  v6 = [*(a1 + 32) timestamp];
  sqlite3_bind_int(a2, 3, [v6 intValue]);

  v7 = [*(a1 + 32) productName];
  sqlite3_bind_text(a2, 4, [v7 UTF8String], -1, 0);

  v8 = [*(a1 + 32) appName];
  sqlite3_bind_text(a2, 5, [v8 UTF8String], -1, 0);

  v9 = *(*(a1 + 48) + 8);
  if (*(v9 + 24) == 1)
  {
    result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
    v9 = *(*(a1 + 48) + 8);
  }

  else
  {
    result = 0;
  }

  *(v9 + 24) = result;
  return result;
}

uint64_t sub_100139ADC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v5 = [NSString stringWithFormat:@"SELECT * FROM purchase_intents_table WHERE app_bundle_id = ?"];;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100139404;
  v29 = sub_100139414;
  v30 = objc_opt_new();
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100139DB4;
  v20[3] = &unk_100329948;
  v21 = *(a1 + 32);
  v6 = v4;
  v22 = v6;
  v23 = *(a1 + 40);
  v24 = &v25;
  [v6 prepareStatementForSQL:v5 cache:1 usingBlock:v20];
  if ([v26[5] count])
  {
    v7 = objc_opt_new();
    for (i = 0; i < [v26[5] count]; ++i)
    {
      [v7 appendFormat:@"(?, ?, ?, ?, ?, ?), "];
    }

    [v7 deleteCharactersInRange:{objc_msgSend(v7, "length") - 2, 2}];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v9 = [NSString stringWithFormat:@"INSERT OR REPLACE INTO purchase_intents_table (product_identifier, app_bundle_id, timestamp, pid, product_name, app_name) VALUES %@", v7];;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100139F40;
    v12[3] = &unk_100329970;
    v14 = &v25;
    v15 = &v16;
    v13 = v6;
    [v13 prepareStatementForSQL:v9 cache:0 usingBlock:v12];

    v10 = *(v17 + 24);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v10 = 1;
  }

  _Block_object_dispose(&v25, 8);
  return v10 & 1;
}

void sub_100139D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

id sub_100139DB4(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0);
  result = [*(a1 + 40) statementHasRowAfterStepping:a2];
  if (result)
  {
    do
    {
      v5 = objc_alloc_init(PurchaseIntentDatabaseRow);
      [(PurchaseIntentDatabaseRow *)v5 setAppBundleId:*(a1 + 32)];
      [(PurchaseIntentDatabaseRow *)v5 setTimestamp:*(a1 + 48)];
      v6 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 0)];
      [(PurchaseIntentDatabaseRow *)v5 setProductIdentifier:v6];
      v7 = [NSNumber numberWithInt:sqlite3_column_int(a2, 3)];
      [(PurchaseIntentDatabaseRow *)v5 setPid:v7];

      v8 = sqlite3_column_text(a2, 4);
      if (v8)
      {
        v9 = [NSString stringWithUTF8String:v8];
        [(PurchaseIntentDatabaseRow *)v5 setProductName:v9];
      }

      v10 = sqlite3_column_text(a2, 5);
      if (v10)
      {
        v11 = [NSString stringWithUTF8String:v10];
        [(PurchaseIntentDatabaseRow *)v5 setAppName:v11];
      }

      [*(*(*(a1 + 56) + 8) + 40) addObject:v5];

      result = [*(a1 + 40) statementHasRowAfterStepping:a2];
    }

    while ((result & 1) != 0);
  }

  return result;
}

id sub_100139F40(uint64_t a1, sqlite3_stmt *a2)
{
  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    v4 = 0;
    v5 = 6;
    do
    {
      v6 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndex:v4];
      v7 = [v6 productIdentifier];
      sqlite3_bind_text(a2, v5 - 5, [v7 UTF8String], -1, 0);

      v8 = [v6 appBundleId];
      sqlite3_bind_text(a2, v5 - 4, [v8 UTF8String], -1, 0);

      v9 = [v6 timestamp];
      sqlite3_bind_int(a2, v5 - 3, [v9 intValue]);

      v10 = [v6 pid];
      sqlite3_bind_int(a2, v5 - 2, [v10 intValue]);

      v11 = [v6 productName];

      if (v11)
      {
        v12 = [v6 productName];
        sqlite3_bind_text(a2, v5 - 1, [v12 UTF8String], -1, 0);
      }

      v13 = [v6 appName];

      if (v13)
      {
        v14 = [v6 appName];
        sqlite3_bind_text(a2, v5, [v14 UTF8String], -1, 0);
      }

      ++v4;
      v5 += 6;
    }

    while (v4 < [*(*(*(a1 + 40) + 8) + 40) count]);
  }

  result = [*(a1 + 32) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_10013A398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10013A3B8(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10013A488;
  v9[3] = &unk_100329880;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v10 = v4;
  v6 = v3;
  [v6 prepareStatementForSQL:@"INSERT OR REPLACE INTO install_attribution_params_table (app_adam_id cache:ad_network_id usingBlock:{campaign_id, impression_id, timestamp, attribution_signature, local_timestamp) VALUES (?, ?, ?, ?, ?, ?, ?);", 0, v9}];
  v7 = *(*(*(a1 + 40) + 8) + 24);

  return v7;
}

id sub_10013A488(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) appAdamId];
  sqlite3_bind_int64(a2, 1, [v4 longLongValue]);

  v5 = [*(a1 + 32) adNetworkId];
  sqlite3_bind_text(a2, 2, [v5 UTF8String], -1, 0);

  v6 = [*(a1 + 32) campaignId];
  sqlite3_bind_int64(a2, 3, [v6 longLongValue]);

  v7 = [*(a1 + 32) impressionId];
  sqlite3_bind_text(a2, 4, [v7 UTF8String], -1, 0);

  v8 = [*(a1 + 32) timestamp];
  sqlite3_bind_int64(a2, 5, [v8 longLongValue]);

  v9 = [*(a1 + 32) attributionSignature];
  sqlite3_bind_text(a2, 6, [v9 UTF8String], -1, 0);

  v10 = [*(a1 + 32) localTimestamp];
  sqlite3_bind_int64(a2, 7, [v10 longLongValue]);

  result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t sub_10013A838(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v5 = [NSString stringWithFormat:@"SELECT * FROM install_attribution_params_table WHERE app_adam_id = ?"];;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_100139404;
  v16[4] = sub_100139414;
  v17 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013AA10;
  v12[3] = &unk_1003298D0;
  v13 = *(a1 + 32);
  v6 = v4;
  v14 = v6;
  v15 = v16;
  [v6 prepareStatementForSQL:v5 cache:1 usingBlock:v12];
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013AC5C;
  block[3] = &unk_1003298F8;
  v10 = *(a1 + 40);
  v11 = v16;
  dispatch_async(v7, block);

  _Block_object_dispose(v16, 8);
  return 1;
}

void sub_10013A9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013AA10(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  result = [*(a1 + 40) statementHasRowAfterStepping:a2];
  if (result)
  {
    do
    {
      v5 = objc_alloc_init(InstallAttributionParams);
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v8 = *(*(*(a1 + 48) + 8) + 40);
      v9 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 0)];
      [v8 setAppAdamId:v9];

      v10 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 1)];
      [*(*(*(a1 + 48) + 8) + 40) setAdNetworkId:v10];
      v11 = *(*(*(a1 + 48) + 8) + 40);
      v12 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 2)];
      [v11 setCampaignId:v12];

      v13 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 3)];
      [*(*(*(a1 + 48) + 8) + 40) setImpressionId:v13];
      v14 = *(*(*(a1 + 48) + 8) + 40);
      v15 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 4)];
      [v14 setTimestamp:v15];

      v16 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 5)];
      [*(*(*(a1 + 48) + 8) + 40) setAttributionSignature:v16];
      v17 = *(*(*(a1 + 48) + 8) + 40);
      v18 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 6)];
      [v17 setLocalTimestamp:v18];

      result = [*(a1 + 40) statementHasRowAfterStepping:a2];
    }

    while ((result & 1) != 0);
  }

  return result;
}