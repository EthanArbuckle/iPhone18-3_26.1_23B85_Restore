uint64_t sub_10013AC5C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

uint64_t sub_10013AE74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013AF8C;
  v8[3] = &unk_100329880;
  v9 = *(a1 + 32);
  v11 = &v12;
  v5 = v4;
  v10 = v5;
  [v5 prepareStatementForSQL:@"DELETE FROM install_attribution_params_table WHERE app_adam_id = ?;" cache:0 usingBlock:v8];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_10013AF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013AF8C(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t sub_10013B1D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013B2E8;
  v8[3] = &unk_100329880;
  v9 = *(a1 + 32);
  v11 = &v12;
  v5 = v4;
  v10 = v5;
  [v5 prepareStatementForSQL:@"DELETE FROM install_attribution_params_table WHERE local_timestamp < ?;" cache:0 usingBlock:v8];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_10013B2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013B2E8(uint64_t a1, sqlite3_stmt *a2)
{
  [*(a1 + 32) timeIntervalSince1970];
  sqlite3_bind_int64(a2, 1, (v4 * 1000.0));
  result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t sub_10013B538(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013B650;
  v8[3] = &unk_100329880;
  v9 = *(a1 + 32);
  v11 = &v12;
  v5 = v4;
  v10 = v5;
  [v5 prepareStatementForSQL:@"INSERT INTO install_attribution_pingback_table (app_adam_id cache:ad_network_id usingBlock:{campaign_id, transaction_id, attribution_signature, pingback_url, pending, retry_count, local_timestamp) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);", 0, v8}];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_10013B638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013B650(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) appAdamId];
  sqlite3_bind_int64(a2, 1, [v4 longLongValue]);

  v5 = [*(a1 + 32) adNetworkId];
  sqlite3_bind_text(a2, 2, [v5 UTF8String], -1, 0);

  v6 = [*(a1 + 32) campaignId];
  sqlite3_bind_int64(a2, 3, [v6 longLongValue]);

  v7 = [*(a1 + 32) transactionId];
  sqlite3_bind_text(a2, 4, [v7 UTF8String], -1, 0);

  v8 = [*(a1 + 32) attributionSignature];
  sqlite3_bind_text(a2, 5, [v8 UTF8String], -1, 0);

  v9 = [*(a1 + 32) pingbackUrl];
  v10 = [v9 absoluteString];
  sqlite3_bind_text(a2, 6, [v10 UTF8String], -1, 0);

  sqlite3_bind_int64(a2, 7, 0);
  sqlite3_bind_int64(a2, 8, [*(a1 + 32) retryCount]);
  v11 = [*(a1 + 32) localTimestamp];
  sqlite3_bind_int64(a2, 9, [v11 longLongValue]);

  result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t sub_10013BA44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v5 = [NSString stringWithFormat:@"SELECT * FROM install_attribution_pingback_table WHERE app_adam_id = ?"];;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_100139404;
  v16[4] = sub_100139414;
  v17 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013BC1C;
  v12[3] = &unk_1003298D0;
  v13 = *(a1 + 32);
  v6 = v4;
  v14 = v6;
  v15 = v16;
  [v6 prepareStatementForSQL:v5 cache:1 usingBlock:v12];
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013BE4C;
  block[3] = &unk_1003298F8;
  v10 = *(a1 + 40);
  v11 = v16;
  dispatch_async(v7, block);

  _Block_object_dispose(v16, 8);
  return 1;
}

void sub_10013BC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013BC1C(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = a1;
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  result = [*(v3 + 40) statementHasRowAfterStepping:a2];
  if (result)
  {
    do
    {
      v5 = objc_alloc_init(InstallAttributionPingback);
      v6 = *(*(v3 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v22 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 0)];
      v21 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 1)];
      v8 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 2)];
      v9 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 3)];
      v10 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 4)];
      v11 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 5)];
      v12 = sqlite3_column_int64(a2, 7);
      v13 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 8)];
      v14 = v3;
      v15 = [InstallAttributionPingback alloc];
      v16 = [NSURL URLWithString:v11];
      v17 = v15;
      v3 = v14;
      v18 = [(InstallAttributionPingback *)v17 initWithAppAdamId:v22 transactionId:v9 campaignId:v8 adNetworkId:v21 attributionSignature:v10 pingbackUrl:v16 retryCount:v12 localTimestamp:v13];
      v19 = *(*(v14 + 48) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      result = [*(v14 + 40) statementHasRowAfterStepping:a2];
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t sub_10013BE4C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

uint64_t sub_10013C064(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013C17C;
  v8[3] = &unk_100329880;
  v9 = *(a1 + 32);
  v11 = &v12;
  v5 = v4;
  v10 = v5;
  [v5 prepareStatementForSQL:@"UPDATE install_attribution_pingback_table SET pending = 1 WHERE app_adam_id = ?;" cache:0 usingBlock:v8];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_10013C164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013C17C(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t sub_10013C264(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v5 = [NSString stringWithFormat:@"SELECT * FROM install_attribution_pingback_table WHERE pending = 1"];;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_100139404;
  v15[4] = sub_100139414;
  v16 = objc_opt_new();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013C438;
  v12[3] = &unk_1003299E8;
  v6 = v4;
  v13 = v6;
  v14 = v15;
  [v6 prepareStatementForSQL:v5 cache:1 usingBlock:v12];
  v7 = dispatch_get_global_queue(0, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10013C650;
  v9[3] = &unk_1003298F8;
  v10 = *(a1 + 32);
  v11 = v15;
  dispatch_async(v7, v9);

  _Block_object_dispose(v15, 8);
  return 1;
}

void sub_10013C420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013C438(uint64_t a1, sqlite3_stmt *a2)
{
  result = [*(a1 + 32) statementHasRowAfterStepping:a2];
  if (result)
  {
    do
    {
      v15 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 0)];
      v4 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 1)];
      v5 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 2)];
      v6 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 3)];
      v14 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 4)];
      v7 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 5)];
      v8 = sqlite3_column_int64(a2, 7);
      v9 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 8)];
      v10 = [InstallAttributionPingback alloc];
      v11 = [NSURL URLWithString:v7];
      v12 = [(InstallAttributionPingback *)v10 initWithAppAdamId:v15 transactionId:v6 campaignId:v5 adNetworkId:v4 attributionSignature:v14 pingbackUrl:v11 retryCount:v8 localTimestamp:v9];

      if (v12)
      {
        [*(*(*(a1 + 40) + 8) + 40) addObject:v12];
      }

      result = [*(a1 + 32) statementHasRowAfterStepping:a2];
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t sub_10013C650(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

uint64_t sub_10013C868(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013C980;
  v8[3] = &unk_100329880;
  v9 = *(a1 + 32);
  v11 = &v12;
  v5 = v4;
  v10 = v5;
  [v5 prepareStatementForSQL:@"DELETE FROM install_attribution_pingback_table WHERE app_adam_id = ?;" cache:0 usingBlock:v8];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_10013C968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013C980(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t sub_10013CBC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013CCDC;
  v8[3] = &unk_100329880;
  v9 = *(a1 + 32);
  v11 = &v12;
  v5 = v4;
  v10 = v5;
  [v5 prepareStatementForSQL:@"DELETE FROM install_attribution_pingback_table WHERE local_timestamp < ? AND pending = 0;" cache:0 usingBlock:v8];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_10013CCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013CCDC(uint64_t a1, sqlite3_stmt *a2)
{
  [*(a1 + 32) timeIntervalSince1970];
  sqlite3_bind_int64(a2, 1, (v4 * 1000.0));
  result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t sub_10013CF2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013D044;
  v8[3] = &unk_100329880;
  v9 = *(a1 + 32);
  v11 = &v12;
  v5 = v4;
  v10 = v5;
  [v5 prepareStatementForSQL:@"UPDATE install_attribution_pingback_table SET retry_count = retry_count + 1 WHERE app_adam_id = ?;" cache:0 usingBlock:v8];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_10013D02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013D044(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_10013D158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10013DBEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_10013DC1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_loadWeakRetained((a1 + 64));
  v4 = [v3 success];

  if (v4)
  {
    v5 = +[SSAccountStore defaultStore];
    v6 = [v5 accountWithUniqueIdentifier:*(a1 + 32)];

    [v6 setFreeDownloadsPasswordSetting:*(a1 + 72)];
    [v6 setPaidPurchasesPasswordSetting:*(a1 + 80)];
    v7 = +[SSLogConfig sharedAccountsConfig];
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
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = [v6 accountName];
      SSHashIfNeeded();
      v21 = 138543618;
      v22 = v11;
      v24 = v23 = 2114;
      LODWORD(v20) = 22;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_13:

        v15 = +[SSAccountStore defaultStore];
        [v15 saveAccount:v6 verifyCredentials:0 completion:0];

        goto LABEL_14;
      }

      v10 = [NSString stringWithCString:v14 encoding:4, &v21, v20];
      free(v14);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  reply = xpc_dictionary_create_reply(*(a1 + 40));
  v17 = objc_loadWeakRetained((a1 + 64));
  +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v17 success]);
  SSXPCDictionarySetCFObject();

  v18 = objc_loadWeakRetained((a1 + 64));
  [v18 error];
  SSXPCDictionarySetCFObject();

  xpc_connection_send_message(*(a1 + 48), reply);
  v19 = +[Daemon daemon];
  [v19 releaseKeepAliveAssertion:@"com.apple.itunesstored.AccountPasswordSettings"];
}

void sub_10013F5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10013F620(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10013F638(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1[4];
    v4 = a2;
    v5 = [v3 buttons];
    v6 = [v4 selectedButtonIndex];

    v7 = [v5 objectAtIndex:v6];
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *(*(a1[6] + 8) + 24) = 1;
  }
}

id sub_100140868(uint64_t a1, void *a2, id *a3)
{
  v6 = objc_alloc_init(NSAutoreleasePool);
  if (*a3)
  {
    v7 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [*a3 longLongValue], *(a1 + 32));
    if (([-[DownloadEntity valueForProperty:](v7 valueForProperty:{@"client_id", "isEqualToString:", *(a1 + 40)}] & 1) == 0)
    {
      v8 = [[PersistentDownloadEntity alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
      [(PersistentDownloadEntity *)v8 deleteFromDatabase];
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

      if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v11 &= 2u;
      }

      if (v11)
      {
        v12 = objc_opt_class();
        v13 = *a3;
        v14 = *(a1 + 40);
        v30 = 138413058;
        v31 = v12;
        v32 = 2048;
        v33 = a2;
        v34 = 2112;
        v35 = v13;
        v36 = 2112;
        v37 = v14;
        LODWORD(v29) = 42;
        v27 = &v30;
        v15 = _os_log_send_and_compose_impl();
        if (v15)
        {
          v16 = v15;
          v17 = [NSString stringWithCString:v15 encoding:4, &v30, v29];
          free(v16);
          v27 = v17;
          SSFileLog();
        }
      }

      if (![PersistentDownloadEntity anyInDatabase:*(a1 + 32) predicate:[SSSQLiteComparisonPredicate predicateWithProperty:@"download_id" equalToValue:*a3, v27]])
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

        if (!os_log_type_enabled([v18 OSLogObject], OS_LOG_TYPE_DEFAULT))
        {
          v20 &= 2u;
        }

        if (v20)
        {
          v21 = objc_opt_class();
          v22 = *a3;
          v30 = 138412546;
          v31 = v21;
          v32 = 2112;
          v33 = v22;
          LODWORD(v29) = 22;
          v28 = &v30;
          v23 = _os_log_send_and_compose_impl();
          if (v23)
          {
            v24 = v23;
            v25 = [NSString stringWithCString:v23 encoding:4, &v30, v29];
            free(v24);
            v28 = v25;
            SSFileLog();
          }
        }

        [(DownloadEntity *)v7 deleteFromDatabase];
      }
    }
  }

  return [v6 drain];
}

uint64_t sub_100140DB8(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100383F20;
  qword_100383F20 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100141454(uint64_t a1, BOOL a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v10, "1", a2);
  SSXPCDictionarySetObject();

  SSXPCDictionarySetObject();
  v9 = [*(a1 + 32) outputConnection];
  [v9 sendMessage:v10];
}

void sub_100141520(uint64_t a1, BOOL a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v10, "1", a2);
  SSXPCDictionarySetObject();

  SSXPCDictionarySetObject();
  v9 = [*(a1 + 32) outputConnection];
  [v9 sendMessage:v10];
}

void sub_1001418CC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 error];
  SSXPCDictionarySetObject();
}

void sub_100141C48(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  xpc_dictionary_set_int64(v4, "0", [v3 matchStatus]);
  v5 = [*(a1 + 32) error];
  SSXPCDictionarySetObject();
}

void sub_100142080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001420A8(id *a1, void *a2, _BOOL4 a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  xdict = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject();

  xpc_dictionary_set_BOOL(xdict, "3", a3);
  SSXPCDictionarySetObject();

  v9 = [a1[4] outputConnection];
  [v9 sendMessage:xdict];

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && a3)
  {
    [a1[5] _dequeueSubscriptionStatusOperation:WeakRetained];
  }
}

void sub_100142590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001425B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, "0", 1011);
    xpc_dictionary_set_BOOL(v3, "1", [WeakRetained success]);
    v4 = [WeakRetained error];
    SSXPCDictionarySetObject();

    v5 = [WeakRetained downloads];
    v6 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v19 + 1) + 8 * v11) dictionary];
          v13 = [v12 copy];

          [v6 addObject:v13];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v9);
    }

    v23[0] = @"result";
    v14 = [WeakRetained success];
    v15 = &__kCFBooleanFalse;
    if (v14)
    {
      v15 = &__kCFBooleanTrue;
    }

    v24[0] = v15;
    v23[1] = @"count";
    v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 count]);
    v23[2] = @"downloads";
    v24[1] = v16;
    v24[2] = v6;
    v17 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:3];

    SSXPCDictionarySetObject();
    v18 = [*(a1 + 32) outputConnection];
    [v18 sendMessage:v3];

    [WeakRetained setCompletionBlock:0];
  }
}

void sub_100142D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100142D60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    v4 = reply;
    if (reply)
    {
      xpc_dictionary_set_int64(reply, "0", 1011);
      xpc_dictionary_set_BOOL(v4, "1", [v6 success]);
      v5 = [v6 error];
      SSXPCDictionarySetObject();

      xpc_connection_send_message(*(a1 + 40), v4);
    }

    [*(a1 + 48) setClient:0 forOperation:v6];

    WeakRetained = v6;
  }
}

void sub_1001431D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001431FC(id *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    SSXPCDictionarySetObject();
    SSXPCDictionarySetObject();
    v8 = [a1[4] outputConnection];
    [v8 sendMessage:v7];

    [a1[5] setClient:0 forOperation:WeakRetained];
  }
}

void sub_100143604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10014362C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    SSXPCDictionarySetObject();
    SSXPCDictionarySetObject();
    xpc_connection_send_message(*(a1 + 40), reply);
    [*(a1 + 48) setClient:0 forOperation:WeakRetained];
  }
}

void sub_100143C74(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5)
{
  LODWORD(v7) = a2;
  v9 = a3;
  v10 = a5;
  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
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
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 & 2;
  }

  if (v15)
  {
    v16 = v7;
    v7 = v9;
    v17 = a4;
    v18 = objc_opt_class();
    v19 = a1;
    v20 = *(a1 + 40);
    v29 = v18;
    v21 = [v20 itemIdentifier];
    v30 = 138413058;
    v31 = v18;
    a4 = v17;
    v9 = v7;
    LOBYTE(v7) = v16;
    v32 = 2112;
    v33 = v21;
    v34 = 1024;
    v35 = v16;
    v36 = 2048;
    v37 = a4;
    LODWORD(v28) = 38;
    v27 = &v30;
    v22 = _os_log_send_and_compose_impl();

    a1 = v19;
    if (v22)
    {
      v23 = [NSString stringWithCString:v22 encoding:4, &v30, v28];
      free(v22);
      v27 = v23;
      SSFileLog();
    }
  }

  else
  {
  }

  v24 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v24, "0", 1011);
  xpc_dictionary_set_BOOL(v24, "1", v7);
  SSXPCDictionarySetObject();

  if (*(a1 + 56) == 1)
  {
    v25 = [NSNumber numberWithInt:a4];
    SSXPCDictionarySetObject();

    SSXPCDictionarySetObject();
  }

  v26 = [*(a1 + 48) outputConnection];
  [v26 sendMessage:v24];
}

void sub_10014421C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  xpc_dictionary_set_BOOL(v4, "1", [v3 success]);
  v5 = [*(a1 + 32) error];
  SSXPCDictionarySetObject();
}

void sub_1001445E4(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = [*(a1 + 32) success];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 URLBag];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 URLBagDictionary];
      SSXPCDictionarySetObject();

      [v6 invalidationTime];
      xpc_dictionary_set_double(xdict, "1", v8);
      v9 = [v6 storeFrontIdentifier];
      SSXPCDictionarySetObject();
    }
  }

  else
  {
    v6 = [v4 error];
    SSXPCDictionarySetObject();
  }
}

void sub_100144A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100144A98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, "0", 1011);
    if ([v13 success])
    {
      v4 = [SSProtocolConditionalEvaluator alloc];
      v5 = [v13 dataProvider];
      v6 = [v5 output];
      v7 = [v4 initWithDictionary:v6];

      v8 = [v7 dictionaryByEvaluatingConditions];
      SSXPCDictionarySetObject();

      v9 = [v13 response];
      v10 = [v9 itunes_expirationDate];

      if (v10)
      {
        SSXPCDictionarySetObject();
      }
    }

    v11 = [v13 error];
    SSXPCDictionarySetObject();

    v12 = [*(a1 + 32) outputConnection];
    [v12 sendMessage:v3];

    [v13 setCompletionBlock:0];
    WeakRetained = v13;
  }
}

void sub_100145024(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 lookupResponse];
  SSXPCDictionarySetObject();

  v6 = [*(a1 + 32) error];
  SSXPCDictionarySetObject();
}

void sub_10014556C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100145590(uint64_t a1, void *a2)
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

  if (!v6)
  {
    goto LABEL_11;
  }

  *v11 = 138412546;
  *&v11[4] = objc_opt_class();
  *&v11[12] = 2112;
  *&v11[14] = v3;
  v8 = *&v11[4];
  LODWORD(v10) = 22;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v7 = [NSString stringWithCString:v9 encoding:4, v11, v10, *v11, *&v11[16]];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  *(*(*(a1 + 40) + 8) + 24) = v3 == 0;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100145D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100145D5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, "0", 1011);
    xpc_dictionary_set_BOOL(v3, "1", [v7 success]);
    v4 = [v7 error];
    SSXPCDictionarySetObject();

    v5 = [v7 rentalInformation];
    if (v5)
    {
      SSXPCDictionarySetObject();
    }

    v6 = [*(a1 + 32) outputConnection];
    [v6 sendMessage:v3];

    [v7 setCompletionBlock:0];
    WeakRetained = v7;
  }
}

void sub_1001462B8(uint64_t a1, int a2, void *a3, void *a4)
{
  LODWORD(v5) = a2;
  v7 = a3;
  v8 = a4;
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
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 & 2;
  }

  if (v13)
  {
    v14 = v5;
    v5 = objc_opt_class();
    v15 = *(a1 + 32);
    v23 = a1;
    v16 = v5;
    v17 = [v15 bundleID];
    [v7 componentsJoinedByString:{@", "}];
    v24 = 138413058;
    v25 = v5;
    LOBYTE(v5) = v14;
    v26 = 2112;
    v27 = v17;
    v28 = 1024;
    v29 = v14;
    v31 = v30 = 2112;
    LODWORD(v22) = 38;
    v18 = _os_log_send_and_compose_impl();

    a1 = v23;
    if (v18)
    {
      v19 = [NSString stringWithCString:v18 encoding:4, &v24, v22];
      free(v18);
      SSFileLog();
    }
  }

  else
  {
  }

  v20 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v20, "1", v5);
  SSXPCDictionarySetObject();

  SSXPCDictionarySetObject();
  v21 = [*(a1 + 40) outputConnection];
  [v21 sendMessage:v20];
}

void sub_10014699C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 URLResponse];
  SSXPCDictionarySetObject();

  v6 = [*(a1 + 32) error];
  SSXPCDictionarySetObject();
}

uint64_t sub_100146DD8(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_string)
  {
    v4 = SSXPCCreateCFObjectFromXPCObject();
    [*(a1 + 40) addObject:v4];
  }

  return 1;
}

void sub_100147148(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) success];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 URLBag];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 storeFrontIdentifier];
      SSXPCDictionarySetObject();
    }
  }

  else
  {
    v6 = [v4 error];
    SSXPCDictionarySetObject();
  }
}

void sub_1001475DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100147604(id *a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    SSXPCDictionarySetObject();
    v5 = [a1[4] outputConnection];
    [v5 sendMessage:v4];

    [a1[5] setClient:0 forOperation:WeakRetained];
  }
}

void sub_100147C20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100147C48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, "0", 1011);
    xpc_dictionary_set_BOOL(v3, "1", [WeakRetained success]);
    v4 = [WeakRetained error];
    SSXPCDictionarySetObject();

    v5 = [WeakRetained dataProvider];
    v6 = [v5 output];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      SSXPCDictionarySetObject();
LABEL_17:
      v13 = [*(a1 + 32) outputConnection];
      [v13 sendMessage:v3];

      goto LABEL_18;
    }

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
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v16[0] = 0;
      LODWORD(v15) = 2;
      v14 = v16;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_16:

        goto LABEL_17;
      }

      v10 = [NSString stringWithCString:v12 encoding:4, v16, v15];
      free(v12);
      v14 = v10;
      SSFileLog();
    }

    goto LABEL_16;
  }

LABEL_18:
}

void sub_100148420(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100148448(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, "0", 1011);
    xpc_dictionary_set_BOOL(v3, "1", [WeakRetained success]);
    v4 = [WeakRetained error];
    SSXPCDictionarySetObject();

    v5 = [WeakRetained dataProvider];
    v6 = [v5 output];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      SSXPCDictionarySetObject();
LABEL_17:
      v13 = [*(a1 + 32) outputConnection];
      [v13 sendMessage:v3];

      goto LABEL_18;
    }

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
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v16[0] = 0;
      LODWORD(v15) = 2;
      v14 = v16;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_16:

        goto LABEL_17;
      }

      v10 = [NSString stringWithCString:v12 encoding:4, v16, v15];
      free(v12);
      v14 = v10;
      SSFileLog();
    }

    goto LABEL_16;
  }

LABEL_18:
}

void sub_100148914(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = [v5 copyXPCEncoding];

  if (v7)
  {
    xpc_dictionary_set_value(v6, "1", v7);
  }

  SSXPCDictionarySetObject();
  v8 = [*(a1 + 32) outputConnection];
  [v8 sendMessage:v6];

  +[SSVSubscriptionStatusCoordinator endSuspendingSubscriptionStatusChangeNotifications];
}

void sub_100148D30(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = objc_alloc_init(SSVServerAuthenticateResponse);
  v4 = [*(a1 + 32) authenticatedAccountDSID];
  [v10 setAuthenticatedAccountIdentifier:v4];

  v5 = [*(a1 + 32) redirectURL];
  [v10 setRedirectURL:v5];

  v6 = [*(a1 + 40) buttons];
  v7 = [*(a1 + 32) performedButton];
  [v10 setPerformedButtonIndex:{objc_msgSend(v6, "indexOfObject:", v7)}];

  v8 = [*(a1 + 32) selectedButton];
  [v10 setSelectedButtonIndex:{objc_msgSend(v6, "indexOfObject:", v8)}];

  SSXPCDictionarySetObject();
  v9 = [*(a1 + 32) error];
  SSXPCDictionarySetObject();
}

void sub_1001495E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100149610(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v2, "0", 166);
    if ([WeakRetained success])
    {
      v3 = [WeakRetained dataProvider];
      v4 = [v3 output];
      SSXPCDictionarySetObject();
    }

    v5 = [WeakRetained error];
    SSXPCDictionarySetObject();

    v6 = [*(a1 + 32) outputConnection];
    [v6 sendMessage:v2];

    [WeakRetained setCompletionBlock:0];
  }
}

void sub_100149AE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  xpc_dictionary_set_BOOL(v4, "1", [v3 success]);
  v5 = [*(a1 + 32) error];
  SSXPCDictionarySetObject();

  v6 = [*(a1 + 32) response];
  SSXPCDictionarySetObject();
}

void sub_10014A440(id *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([a1[4] length] || !objc_msgSend(v7, "isEqualToString:", @"action"))
  {
    if ([v7 isEqualToString:@"code"])
    {
      [a1[5] addObject:v5];
    }

    else if ([v7 isEqualToString:@"url"])
    {
      v6 = [[NSURL alloc] initWithString:v5];
      if (v6)
      {
        [a1[6] addObject:v6];
      }
    }
  }

  else
  {
    [a1[4] setString:v5];
  }
}

id sub_10014A9C8(uint64_t a1)
{
  [*(a1 + 32) setClient:*(a1 + 40) forOperation:*(a1 + 48)];
  v2 = *(a1 + 32);
  if (*(v2 + 40))
  {
    v3 = *(v2 + 48);
    if (!v3)
    {
      v4 = objc_alloc_init(NSMutableArray);
      v5 = *(a1 + 32);
      v6 = *(v5 + 48);
      *(v5 + 48) = v4;

      v3 = *(*(a1 + 32) + 48);
    }

    v7 = *(a1 + 48);

    return [v3 addObject:v7];
  }

  else
  {
    objc_storeStrong((v2 + 40), *(a1 + 48));
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);

    return [v9 addOperation:v10];
  }
}

void sub_10014AB20(uint64_t a1)
{
  [*(a1 + 32) setClient:0 forOperation:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3 != *(a1 + 40))
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
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v6;
    }

    else
    {
      v8 = v6 & 2;
    }

    if (v8)
    {
      v9 = *(a1 + 40);
      v10 = *(*(a1 + 32) + 40);
      v16 = 138412546;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      LODWORD(v15) = 22;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_14:

        v2 = *(a1 + 32);
        v3 = *(v2 + 40);
        goto LABEL_15;
      }

      v7 = [NSString stringWithCString:v11 encoding:4, &v16, v15];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  *(v2 + 40) = 0;

  if ([*(*(a1 + 32) + 48) count])
  {
    v12 = [*(*(a1 + 32) + 48) firstObject];
    [*(*(a1 + 32) + 48) removeObjectAtIndex:0];
    objc_storeStrong((*(a1 + 32) + 40), v12);
    [*(a1 + 32) addOperation:v12];
    if (![*(*(a1 + 32) + 48) count])
    {
      v13 = *(a1 + 32);
      v14 = *(v13 + 48);
      *(v13 + 48) = 0;
    }
  }
}

void sub_10014B1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_10014B210(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(a1 + 6);
    v4 = [v3 authenticateResponse];

    v5 = WeakRetained[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10014B2FC;
    block[3] = &unk_1003281A0;
    v8 = a1[4];
    v9 = v4;
    v10 = WeakRetained;
    v6 = v4;
    dispatch_async(v5, block);
  }
}

id sub_10014B2FC(uint64_t a1)
{
  [*(a1 + 32) setAuthenticateResponse:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v2 _finishResponse:v3];
}

id sub_10014BA40()
{
  result = objc_alloc_init(objc_opt_class());
  qword_100383F30 = result;
  return result;
}

void sub_10014BD40(id a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_10014BDB8;
  v1[3] = &unk_100329DD0;
  [+[ML3MusicLibrary sharedLibrary](ML3MusicLibrary "sharedLibrary")];
}

id sub_10014BDB8(uint64_t a1)
{
  v1 = [ML3Track queryWithLibrary:*(a1 + 32) predicate:[ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyIsOTAPurchased equalToInteger:1]];

  return [v1 deleteAllEntitiesFromLibrary];
}

id sub_10014BE88(uint64_t a1)
{
  v2 = +[ML3MusicLibrary sharedLibrary];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10014BF1C;
  v4[3] = &unk_100329DF8;
  v5 = *(a1 + 32);
  v7 = *(a1 + 48);
  v6 = v2;
  return [v2 performDatabaseTransactionWithBlock:v4];
}

uint64_t sub_10014BF1C(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        [*(a1 + 40) _removeDownloadWithIdentifier:objc_msgSend(v7 canceled:"longLongValue") inLibrary:{*(a1 + 56), *(a1 + 48)}];
        objc_autoreleasePoolPop(v8);
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return 1;
}

id sub_10014C0B4(uint64_t a1)
{
  v2 = +[ML3MusicLibrary sharedLibrary];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10014C148;
  v6[3] = &unk_100329E20;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[5] = v2;
  v6[6] = v4;
  v7 = *(a1 + 48);
  v6[4] = v3;
  return [v2 performDatabaseTransactionWithBlock:v6];
}

void sub_10014C398(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    *(*(a1 + 32) + 24) = objc_alloc_init(NSMutableArray);
    v2 = *(*(a1 + 32) + 24);
  }

  if (![v2 count])
  {
    [+[Daemon daemon](Daemon "daemon")];
  }

  [*(*(a1 + 32) + 24) addObjectsFromArray:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (!*(v3 + 32))
  {
    *(*(a1 + 32) + 32) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v3 + 8));
    v4 = *(*(a1 + 32) + 32);
    v5 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v4, v5, 0, 0);
    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10014C4D4;
    handler[3] = &unk_100327378;
    handler[4] = v6;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(*(*(a1 + 32) + 32));
  }
}

id sub_10014C548(uint64_t a1)
{
  v2 = [+[ML3MusicLibrary sharedLibrary](ML3MusicLibrary "sharedLibrary")];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 setAppleID:v3 forDSID:v4];
}

id sub_10014D88C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = +[Daemon daemon];

  return [v1 releaseKeepAliveAssertion:@"com.apple.itunesstored.IPodLibrary"];
}

uint64_t sub_1001500BC(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = objc_alloc_init(NSMutableDictionary);
  v50 = [a2 database];
  v46 = +[DownloadHandlerManager handlerManager];
  v51 = a1;
  v6 = [*(a1 + 32) responseDownloads];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v57;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v57 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v56 + 1) + 8 * i);
        v12 = [[NSNumber alloc] initWithItemIdentifier:{objc_msgSend(v11, "itemIdentifier")}];
        [v5 setObject:v11 forKey:v12];

        v13 = [v11 podcastEpisodeGUID];
        if (v13)
        {
          [v4 setObject:v11 forKey:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v8);
  }

  v47 = v4;
  v45 = [*(v51 + 32) responseError];
  v49 = [*(v51 + 40) _downloadRestoreStateForError:?];
  v14 = [*(v51 + 32) requestItems];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v14;
  v15 = [v14 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v53;
    v44 = a2;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v53 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v52 + 1) + 8 * j);
        v20 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v19 downloadIdentifier], v50);
        v21 = [v19 storeItemID];
        v22 = v21;
        if (v21 && [v21 longLongValue] && (v23 = objc_msgSend(v5, "objectForKey:", v22)) != 0 || (v24 = objc_msgSend(v19, "podcastEpisodeGUID", v42)) != 0 && (v23 = objc_msgSend(v47, "objectForKey:", v24)) != 0)
        {
          [*(v51 + 40) _updateDownloadEntity:v20 withTransaction:a2 storeDownload:v23 accountID:{0, v42}];
        }

        else if (v49)
        {
          v25 = [*(v51 + 40) _copyDownloadSessionPropertiesForItem:v19 download:v20];
          if ([v46 canOpenSessionWithProperties:v25])
          {
            v26 = +[SSLogConfig sharedDaemonConfig];
            if (!v26)
            {
              v26 = +[SSLogConfig sharedConfig];
            }

            v27 = [v26 shouldLog];
            if ([v26 shouldLogToDisk])
            {
              v28 = v27 | 2;
            }

            else
            {
              v28 = v27;
            }

            if (!os_log_type_enabled([v26 OSLogObject], OS_LOG_TYPE_ERROR))
            {
              v28 &= 2u;
            }

            if (v28)
            {
              v29 = objc_opt_class();
              v60 = 138543618;
              v61 = v29;
              v62 = 2114;
              v63 = v19;
              LODWORD(v43) = 22;
              v42 = &v60;
              v30 = _os_log_send_and_compose_impl();
              if (v30)
              {
                v31 = v30;
                v32 = [NSString stringWithCString:v30 encoding:4, &v60, v43];
                free(v31);
                v42 = v32;
                SSFileLog();
              }
            }

            [(DownloadEntity *)v20 setValue:[NSNumber forProperty:"numberWithInteger:" numberWithInteger:v49, v42], @"download_state.restore_state"];
            a2 = v44;
          }

          else if (v49 == 1)
          {
            v39 = [v19 error];
            if (v22 && !v39)
            {
              v39 = [*(v51 + 32) errorForItemIdentifier:v22];
            }

            if (v39)
            {
              v40 = v39;
            }

            else
            {
              v40 = v45;
            }

            [*(v51 + 40) _hardFailRestoreItem:v19 download:v20 transaction:a2 error:v40];
          }

          else
          {
            [a2 unionChangeset:{objc_msgSend(*(v51 + 40), "_softFailRestoreItem:download:withRestoreState:error:", v19, v20, v49, v45)}];
          }
        }

        else
        {
          v33 = +[SSLogConfig sharedDaemonConfig];
          if (!v33)
          {
            v33 = +[SSLogConfig sharedConfig];
          }

          v34 = [v33 shouldLog];
          if ([v33 shouldLogToDisk])
          {
            v34 |= 2u;
          }

          if (!os_log_type_enabled([v33 OSLogObject], OS_LOG_TYPE_ERROR))
          {
            v34 &= 2u;
          }

          if (v34)
          {
            v35 = objc_opt_class();
            v60 = 138543618;
            v61 = v35;
            v62 = 2114;
            v63 = v19;
            LODWORD(v43) = 22;
            v42 = &v60;
            v36 = _os_log_send_and_compose_impl();
            if (v36)
            {
              v37 = v36;
              v38 = [NSString stringWithCString:v36 encoding:4, &v60, v43];
              free(v37);
              v42 = v38;
              SSFileLog();
            }
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v16);
  }

  return 1;
}

id sub_100152318(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = *(a1 + 32);
  result = [v4 countByEnumeratingWithState:&v36 objects:v63 count:16];
  v35 = result;
  if (result)
  {
    v34 = *v37;
    v33 = SSDownloadPropertyBundleIdentifier;
    v32 = SSDownloadPropertyIsRestore;
    v31 = SSDownloadPropertyIsStoreDownload;
    v30 = SSDownloadPropertyKind;
    v29 = SSDownloadPropertyPodcastEpisodeGUID;
    v28 = SSDownloadPropertyStoreAccountIdentifier;
    v27 = SSDownloadPropertyStoreAccountAppleID;
    v26 = SSDownloadPropertyStoreCollectionIdentifier;
    v25 = SSDownloadPropertyStoreFrontIdentifier;
    v24 = SSDownloadPropertyStoreItemIdentifier;
    v23 = SSDownloadPropertyStoreMatchStatus;
    v22 = SSDownloadPropertyStoreSagaIdentifier;
    v21 = SSDownloadPropertyStoreSoftwareVersionIdentifier;
    v20 = SSDownloadPropertyTitle;
    v18 = SSDownloadAssetTypeMedia;
    v17 = SSDownloadAssetPropertyIsDRMFree;
    v16 = SSDownloadAssetPropertyStoreFlavor;
    v15 = SSDownloadAssetPropertyVideoDimensions;
    v19 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v37 != v34)
        {
          objc_enumerationMutation(v4);
        }

        v7 = *(*(&v36 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v7 longLongValue], v3);
        v62[0] = @"client_id";
        v62[1] = @"handler_id";
        v62[2] = @"IFNULL(download_state.has_restore_data, -1)";
        v62[3] = @"IFNULL(download_state.restore_data_size, 0)";
        v62[4] = @"bundle_id";
        v62[5] = @"is_restore";
        v62[6] = @"is_from_store";
        v62[7] = @"kind";
        v62[8] = @"podcast_episode_guid";
        v62[9] = @"store_account_id";
        v62[10] = @"store_account_name";
        v62[11] = @"store_collection_id";
        v62[12] = @"store_front_id";
        v62[13] = @"store_item_id";
        v62[14] = @"store_match_status";
        v62[15] = @"store_saga_id";
        v62[16] = @"store_software_version_id";
        v62[17] = @"title";
        memset(v47, 0, sizeof(v47));
        v48 = v33;
        v49 = v32;
        v50 = v31;
        v51 = v30;
        v52 = v29;
        v53 = v28;
        v54 = v27;
        v55 = v26;
        v56 = v25;
        v57 = v24;
        v58 = v23;
        v59 = v22;
        v60 = v21;
        v61 = v20;
        [(DownloadEntity *)v9 getValues:&v43 forProperties:v62 count:18];
        if ([v45 BOOLValue] && (objc_msgSend(v46, "BOOLValue") & 1) == 0)
        {
          v10 = v3;
          v11 = -[RestoreDownloadItem initWithDownloadIdentifier:]([RestoreDownloadItem alloc], "initWithDownloadIdentifier:", [v7 longLongValue]);
          for (i = 32; i != 144; i += 8)
          {
            [(RestoreDownloadItem *)v11 setValue:*(&v43 + i) forDownloadProperty:*(v47 + i)];
          }

          if (v44)
          {
            -[RestoreDownloadItem setHandlerIdentifier:](v11, "setHandlerIdentifier:", [v44 longLongValue]);
          }

          [(RestoreDownloadItem *)v11 setClientIdentifier:v43];
          v13 = [(DownloadEntity *)v9 anyAssetForAssetType:v18];
          if (v13)
          {
            v42[0] = @"is_drm_free";
            v42[1] = @"store_flavor";
            v42[2] = @"video_dimensions";
            v41[0] = v17;
            v41[1] = v16;
            v41[2] = v15;
            [v13 getValues:v40 forProperties:v42 count:3];
            for (j = 0; j != 3; ++j)
            {
              [(RestoreDownloadItem *)v11 setValue:*&v40[j * 8] forAssetProperty:v41[j]];
            }
          }

          [*(a1 + 40) addObject:v11];

          v3 = v10;
          v4 = v19;
        }

        objc_autoreleasePoolPop(v8);
        v6 = v6 + 1;
      }

      while (v6 != v35);
      result = [v4 countByEnumeratingWithState:&v36 objects:v63 count:16];
      v35 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1001528C4(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = objc_alloc_init(NSMutableDictionary);
        [v9 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", objc_msgSend(v8, "hasRestoreData")), @"download_state.has_restore_data"}];
        [v9 setObject:+[NSNumber numberWithLongLong:](NSNumber forKey:{"numberWithLongLong:", objc_msgSend(v8, "restoreDataSize")), @"download_state.restore_data_size"}];
        v10 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v8 downloadIdentifier], v3);
        [(DownloadEntity *)v10 setValuesWithDictionary:v9];
      }

      v5 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return 1;
}

void sub_100152F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

intptr_t sub_100152F8C(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 24) = [a2 authenticatedAccount] != 0;
  *(*(a1[6] + 8) + 40) = [a2 error];
  if (!*(*(a1[6] + 8) + 40))
  {
    *(*(a1[6] + 8) + 40) = a3;
  }

  v6 = a1[4];

  return dispatch_semaphore_signal(v6);
}

uint64_t sub_100153BF4(uint64_t a1, void *a2, void *a3)
{
  if ([a2 isEqual:?])
  {
    return 0;
  }

  if (!*(a1 + 32))
  {
    goto LABEL_9;
  }

  if ([a2 isEqual:?])
  {
    return -1;
  }

  if (*(a1 + 32) && ([a3 isEqual:?] & 1) != 0)
  {
    return 1;
  }

LABEL_9:
  v7 = [objc_msgSend(*(a1 + 40) objectForKey:{a2), "count"}];
  v8 = [objc_msgSend(*(a1 + 40) objectForKey:{a3), "count"}];
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v7 < v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_100153E5C()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_100383F40;
  qword_100383F40 = v0;

  return _objc_release_x1(v0, v1);
}

void sub_100154274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001542B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_1001542C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v2 _createAttestationDataForAccountIdentifier:v3 purpose:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v9 = ISWeakLinkedStringConstantForString();
    v10 = [*(*(*(a1 + 64) + 8) + 40) domain];
    if ([v10 isEqualToString:v9])
    {
      v11 = [*(*(*(a1 + 64) + 8) + 40) code];

      if (v11 != -3)
      {
LABEL_30:

        return dispatch_semaphore_signal(*(a1 + 48));
      }

      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(a1 + 72);
      v40 = 0;
      v15 = [v12 _generateKeychainTokensForAccountIdentifier:v13 purpose:v14 error:&v40];
      v16 = v40;
      v17 = v40;
      v10 = v17;
      if (v15)
      {
        v18 = *(a1 + 32);
        v19 = *(a1 + 40);
        v20 = *(a1 + 72);
        v39 = v10;
        v21 = [v18 _createAttestationDataForAccountIdentifier:v19 purpose:v20 error:&v39];
        v22 = v39;

        v23 = *(*(a1 + 56) + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = v21;
        v10 = v22;
LABEL_28:

        goto LABEL_29;
      }

      if (v17)
      {
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v16);
        v24 = +[SSLogConfig sharedDaemonConfig];
        if (!v24)
        {
          v24 = +[SSLogConfig sharedConfig];
        }

        v25 = [v24 shouldLog];
        if ([v24 shouldLogToDisk])
        {
          v26 = v25 | 2;
        }

        else
        {
          v26 = v25;
        }

        v27 = [v24 OSLogObject];
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v26 &= 2u;
        }

        if (v26)
        {
          v28 = objc_opt_class();
          v29 = *(*(*(a1 + 64) + 8) + 40);
          v42 = 138543618;
          v43 = v28;
          v44 = 2114;
          v45 = v29;
          v30 = v28;
          LODWORD(v38) = 22;
          v31 = _os_log_send_and_compose_impl();

          if (!v31)
          {
            goto LABEL_28;
          }

          v27 = [NSString stringWithCString:v31 encoding:4, &v42, v38];
          free(v31);
          SSFileLog();
        }

        goto LABEL_28;
      }

      v10 = +[SSLogConfig sharedDaemonConfig];
      if (!v10)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v32 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v33 = v32 | 2;
      }

      else
      {
        v33 = v32;
      }

      v24 = [v10 OSLogObject];
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v33 &= 2u;
      }

      if (!v33)
      {
        goto LABEL_28;
      }

      v34 = objc_opt_class();
      v42 = 138543362;
      v43 = v34;
      v35 = v34;
      LODWORD(v38) = 12;
      v36 = _os_log_send_and_compose_impl();

      if (v36)
      {
        v24 = [NSString stringWithCString:v36 encoding:4, &v42, v38];
        free(v36);
        SSFileLog();
        goto LABEL_28;
      }
    }

LABEL_29:

    goto LABEL_30;
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

void sub_100154A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100154A80(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v2 _createX509CertChainDataForAccountIdentifier:v3 purpose:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return dispatch_semaphore_signal(*(a1 + 48));
}

intptr_t sub_100154C9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 64) + 8);
  obj = *(v4 + 40);
  v5 = [v2 _deleteKeychainTokensForAccountIdentifier:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v5;
  return dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1001550C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100155100(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 80);
  v5 = *(a1 + 72);
  v6 = *(*(a1 + 64) + 8);
  obj = *(v6 + 40);
  v7 = [v2 _publicKeyDataForAccountIdentifier:v3 purpose:v5 regenerateKeys:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return dispatch_semaphore_signal(*(a1 + 48));
}

void sub_100155524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100155560(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 72) + 8);
  obj = *(v5 + 40);
  v6 = [v2 _signData:v3 context:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return dispatch_semaphore_signal(*(a1 + 56));
}

void sub_100156BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_100156C08(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v7 = v6;
  if (a2 && !v6)
  {
    v8 = *(a1 + 96);
    result = 0;
    v136 = v8;
    [ISBiometricStore keychainLabelForKeyWithAccountID:*(a1 + 32) purpose:?];
    v156[0] = kSecClass;
    v156[1] = kSecAttrKeyClass;
    v157[0] = kSecClassKey;
    v157[1] = kSecAttrKeyClassPrivate;
    v156[2] = kSecAttrLabel;
    v137 = v156[3] = kSecReturnRef;
    v157[2] = v137;
    v157[3] = &__kCFBooleanTrue;
    v156[4] = kSecUseAuthenticationContext;
    v157[4] = *(a1 + 40);
    v9 = [NSDictionary dictionaryWithObjects:v157 forKeys:v156 count:5];
    v10 = v9;
    v138 = v9;
    if (!v9)
    {
      goto LABEL_47;
    }

    v11 = SecItemCopyMatching(v9, &result);
    if (v11 == -25300)
    {
      v12 = [(__CFDictionary *)v10 mutableCopy];
      v13 = [*(a1 + 48) _amsKeychainLabelForPurpose:v136];
      [v12 setObject:v13 forKeyedSubscript:kSecAttrLabel];

      v11 = SecItemCopyMatching(v12, &result);
    }

    if (v11)
    {
      v14 = SSError();
      v15 = *(*(a1 + 72) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v17 = [NSNumber numberWithInt:v11];
      v18 = SSErrorBySettingUserInfoValue();
      v19 = *(*(a1 + 72) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      v21 = +[SSLogConfig sharedDaemonConfig];
      if (!v21)
      {
        v21 = +[SSLogConfig sharedConfig];
      }

      v22 = [v21 shouldLog];
      if ([v21 shouldLogToDisk])
      {
        v22 |= 2u;
      }

      v23 = [v21 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v22;
      }

      else
      {
        v24 = v22 & 2;
      }

      if (!v24)
      {
        v7 = 0;
        goto LABEL_43;
      }

      v25 = objc_opt_class();
      v26 = *(a1 + 32);
      v27 = *(a1 + 96);
      v132 = v25;
      v28 = [NSNumber numberWithInteger:v27];
      v29 = [NSNumber numberWithInt:v11];
      v148 = 138544130;
      v149 = v25;
      v150 = 2112;
      v151 = v26;
      v152 = 2114;
      v153 = v28;
      v154 = 2114;
      v155 = v29;
      LODWORD(v130) = 42;
      v127 = &v148;
      v30 = _os_log_send_and_compose_impl();

      if (v30)
      {
        v7 = 0;
LABEL_17:
        v10 = v138;
        v23 = [NSString stringWithCString:v30 encoding:4, &v148, v130];
        free(v30);
        v127 = v23;
        SSFileLog();
LABEL_43:

LABEL_46:
LABEL_47:
        v41 = result;
        if (result)
        {
          goto LABEL_48;
        }

        v75 = +[SSLogConfig sharedDaemonConfig];
        if (!v75)
        {
          v75 = +[SSLogConfig sharedConfig];
        }

        v76 = [v75 shouldLog];
        if ([v75 shouldLogToDisk])
        {
          v76 |= 2u;
        }

        v77 = [v75 OSLogObject];
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          v78 = v76;
        }

        else
        {
          v78 = v76 & 2;
        }

        if (v78)
        {
          v79 = objc_opt_class();
          v80 = *(a1 + 32);
          v81 = *(a1 + 96);
          v82 = v79;
          v83 = [NSNumber numberWithInteger:v81];
          v148 = 138543874;
          v149 = v79;
          v150 = 2112;
          v151 = v80;
          v10 = v138;
          v152 = 2114;
          v153 = v83;
          LODWORD(v130) = 32;
          v84 = _os_log_send_and_compose_impl();

          if (!v84)
          {
LABEL_83:

            v85 = *(a1 + 48);
            v86 = *(v85 + 8);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100157F34;
            block[3] = &unk_100328350;
            block[4] = v85;
            v87 = *(a1 + 32);
            v88 = *(a1 + 96);
            v140 = v87;
            v141 = v88;
            v142 = v136;
            dispatch_async(v86, block);
            v89 = SSError();
            v90 = *(*(a1 + 72) + 8);
            v91 = *(v90 + 40);
            *(v90 + 40) = v89;

            v92 = SSErrorBySettingUserInfoValue();
            v93 = *(*(a1 + 72) + 8);
            v94 = *(v93 + 40);
            *(v93 + 40) = v92;

            Signature = 0;
            goto LABEL_119;
          }

          v77 = [NSString stringWithCString:v84 encoding:4, &v148, v130];
          free(v84);
          SSFileLog();
        }

        goto LABEL_83;
      }

      v7 = 0;
    }

    else
    {
      v41 = result;
      if (result)
      {
LABEL_48:
        Signature = SecKeyCreateSignature(v41, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, *(a1 + 56), (*(*(a1 + 80) + 8) + 24));
        v54 = *(*(*(a1 + 80) + 8) + 24);
        if (!Signature || v54)
        {
          objc_storeStrong((*(*(a1 + 72) + 8) + 40), v54);
          v55 = +[SSLogConfig sharedDaemonConfig];
          if (!v55)
          {
            v55 = +[SSLogConfig sharedConfig];
          }

          v67 = [v55 shouldLog];
          if ([v55 shouldLogToDisk])
          {
            v68 = v67 | 2;
          }

          else
          {
            v68 = v67;
          }

          v58 = [v55 OSLogObject];
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v69 = v68;
          }

          else
          {
            v69 = v68 & 2;
          }

          if (!v69)
          {
            v10 = v138;
            goto LABEL_86;
          }

          v134 = Signature;
          v60 = v7;
          v70 = objc_opt_class();
          v71 = *(a1 + 32);
          v72 = *(a1 + 96);
          v64 = v70;
          v73 = [NSNumber numberWithInteger:v72];
          v74 = *(*(*(a1 + 80) + 8) + 24);
          v148 = 138544130;
          v149 = v70;
          v150 = 2112;
          v151 = v71;
          v152 = 2114;
          v153 = v73;
          v154 = 2114;
          v155 = v74;
          LODWORD(v130) = 42;
          v128 = &v148;
          v66 = _os_log_send_and_compose_impl();
        }

        else
        {
          objc_storeStrong((*(*(a1 + 88) + 8) + 40), Signature);
          v55 = +[SSLogConfig sharedDaemonConfig];
          if (!v55)
          {
            v55 = +[SSLogConfig sharedConfig];
          }

          v56 = [v55 shouldLog];
          if ([v55 shouldLogToDisk])
          {
            v57 = v56 | 2;
          }

          else
          {
            v57 = v56;
          }

          v58 = [v55 OSLogObject];
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            v59 = v57;
          }

          else
          {
            v59 = v57 & 2;
          }

          if (!v59)
          {
            goto LABEL_86;
          }

          v134 = Signature;
          v60 = v7;
          v61 = objc_opt_class();
          v62 = *(a1 + 32);
          v63 = *(a1 + 96);
          v64 = v61;
          v65 = [NSNumber numberWithInteger:v63];
          v148 = 138543874;
          v149 = v61;
          v150 = 2112;
          v151 = v62;
          v152 = 2114;
          v153 = v65;
          LODWORD(v130) = 32;
          v128 = &v148;
          v66 = _os_log_send_and_compose_impl();
        }

        v7 = v60;
        if (!v66)
        {
          v10 = v138;
          Signature = v134;
          goto LABEL_87;
        }

        v58 = [NSString stringWithCString:v66 encoding:4, &v148, v130];
        free(v66);
        v128 = v58;
        SSFileLog();
        v10 = v138;
        Signature = v134;
LABEL_86:

LABEL_87:
        if (*(*(*(a1 + 72) + 8) + 40))
        {
          v95 = +[SSLogConfig sharedDaemonConfig];
          if (!v95)
          {
            v95 = +[SSLogConfig sharedConfig];
          }

          v96 = [v95 shouldLog];
          if ([v95 shouldLogToDisk])
          {
            v96 |= 2u;
          }

          v97 = [v95 OSLogObject];
          if (!os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
          {
            v96 &= 2u;
          }

          if (v96)
          {
            v98 = objc_opt_class();
            v99 = *(*(*(a1 + 72) + 8) + 40);
            v148 = 138543618;
            v149 = v98;
            v150 = 2114;
            v151 = v99;
            v100 = v98;
            LODWORD(v130) = 22;
            v129 = &v148;
            v101 = _os_log_send_and_compose_impl();

            if (!v101)
            {
              goto LABEL_98;
            }

            v97 = [NSString stringWithCString:v101 encoding:4, &v148, v130];
            free(v101);
            v129 = v97;
            SSFileLog();
          }

LABEL_98:
          v102 = ISWeakLinkedStringConstantForString();
          v103 = ISWeakLinkedStringConstantForString();
          v104 = [*(*(*(a1 + 72) + 8) + 40) domain];
          v133 = v102;
          if ([v104 isEqualToString:v102])
          {
            v105 = [*(*(*(a1 + 72) + 8) + 40) code] != -2;
          }

          else
          {
            v105 = 0;
          }

          v106 = [*(*(*(a1 + 72) + 8) + 40) domain];
          if ([v106 isEqualToString:v103])
          {
            v107 = [*(*(*(a1 + 72) + 8) + 40) code] == -3;
          }

          else
          {
            v107 = 0;
          }

          if (!v105 && !v107)
          {
            goto LABEL_118;
          }

          v135 = v7;
          v108 = +[SSLogConfig sharedDaemonConfig];
          if (!v108)
          {
            v108 = +[SSLogConfig sharedConfig];
          }

          v109 = [v108 shouldLog];
          if ([v108 shouldLogToDisk])
          {
            v110 = v109 | 2;
          }

          else
          {
            v110 = v109;
          }

          v111 = [v108 OSLogObject];
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            v112 = v110;
          }

          else
          {
            v112 = v110 & 2;
          }

          if (v112)
          {
            v113 = objc_opt_class();
            v114 = *(a1 + 32);
            v115 = *(a1 + 96);
            v131 = v113;
            v116 = [NSNumber numberWithInteger:v115];
            v117 = *(*(*(a1 + 72) + 8) + 40);
            v148 = 138544130;
            v149 = v113;
            v150 = 2112;
            v151 = v114;
            v152 = 2114;
            v153 = v116;
            v154 = 2114;
            v155 = v117;
            LODWORD(v130) = 42;
            v118 = _os_log_send_and_compose_impl();

            if (!v118)
            {
LABEL_117:

              v119 = *(a1 + 48);
              v120 = *(v119 + 8);
              v143[0] = _NSConcreteStackBlock;
              v143[1] = 3221225472;
              v143[2] = sub_100157D2C;
              v143[3] = &unk_100328350;
              v143[4] = v119;
              v144 = *(a1 + 32);
              v145 = v136;
              v146 = *(a1 + 96);
              dispatch_async(v120, v143);
              v121 = SSError();
              v122 = *(*(a1 + 72) + 8);
              v123 = *(v122 + 40);
              *(v122 + 40) = v121;

              v124 = SSErrorBySettingUserInfoValue();
              v125 = *(*(a1 + 72) + 8);
              v126 = *(v125 + 40);
              *(v125 + 40) = v124;

              v7 = v135;
              v10 = v138;
LABEL_118:

              goto LABEL_119;
            }

            v111 = [NSString stringWithCString:v118 encoding:4, &v148, v130];
            free(v118);
            SSFileLog();
          }

          goto LABEL_117;
        }

LABEL_119:
        if (result)
        {
          CFRelease(result);
        }

        if (Signature)
        {
          CFRelease(Signature);
        }

        goto LABEL_124;
      }

      v42 = SSError();
      v43 = *(*(a1 + 72) + 8);
      v44 = *(v43 + 40);
      *(v43 + 40) = v42;

      v21 = +[SSLogConfig sharedDaemonConfig];
      if (!v21)
      {
        v21 = +[SSLogConfig sharedConfig];
      }

      v45 = [v21 shouldLog];
      if ([v21 shouldLogToDisk])
      {
        v46 = v45 | 2;
      }

      else
      {
        v46 = v45;
      }

      v23 = [v21 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v47 = v46;
      }

      else
      {
        v47 = v46 & 2;
      }

      if (!v47)
      {
        goto LABEL_43;
      }

      v48 = objc_opt_class();
      v49 = *(a1 + 32);
      v50 = *(a1 + 96);
      v51 = v48;
      v52 = [NSNumber numberWithInteger:v50];
      v148 = 138543874;
      v149 = v48;
      v150 = 2112;
      v151 = v49;
      v152 = 2114;
      v153 = v52;
      LODWORD(v130) = 32;
      v127 = &v148;
      v30 = _os_log_send_and_compose_impl();

      if (v30)
      {
        goto LABEL_17;
      }
    }

    v10 = v138;
    goto LABEL_46;
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  v31 = +[SSLogConfig sharedDaemonConfig];
  if (!v31)
  {
    v31 = +[SSLogConfig sharedConfig];
  }

  v32 = [v31 shouldLog];
  if ([v31 shouldLogToDisk])
  {
    v32 |= 2u;
  }

  v33 = [v31 OSLogObject];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v32;
  }

  else
  {
    v34 = v32 & 2;
  }

  if (v34)
  {
    v35 = objc_opt_class();
    v36 = *(a1 + 32);
    v37 = *(a1 + 96);
    v38 = v35;
    [NSNumber numberWithInteger:v37];
    v148 = 138544130;
    v149 = v35;
    v150 = 2112;
    v151 = v36;
    v153 = v152 = 2114;
    v154 = 2114;
    v155 = v7;
    LODWORD(v130) = 42;
    v39 = _os_log_send_and_compose_impl();

    if (v39)
    {
      v40 = [NSString stringWithCString:v39 encoding:4, &v148, v130];
      free(v39);
      SSFileLog();
    }
  }

  else
  {
  }

LABEL_124:
  dispatch_semaphore_signal(*(a1 + 64));
}

void sub_100157D2C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v18 = 0;
  v5 = [v2 _generateKeychainTokensForAccountIdentifier:v3 purpose:v4 error:&v18];
  v6 = v18;
  if ((v5 & 1) == 0)
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
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v12 = a1[5];
      v13 = a1[7];
      v14 = v11;
      v15 = [NSNumber numberWithInteger:v13];
      v19 = 138544130;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2114;
      v24 = v15;
      v25 = 2114;
      v26 = v6;
      LODWORD(v17) = 42;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_13:

        goto LABEL_14;
      }

      v10 = [NSString stringWithCString:v16 encoding:4, &v19, v17];
      free(v16);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
}

void sub_100157F34(void *a1)
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
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = objc_opt_class();
    v8 = a1[5];
    v7 = a1[6];
    v9 = v6;
    [NSNumber numberWithInteger:v7];
    v49 = 138543874;
    v50 = v6;
    v51 = 2112;
    v52 = v8;
    v54 = v53 = 2114;
    LODWORD(v43) = 32;
    v10 = _os_log_send_and_compose_impl();

    if (!v10)
    {
      goto LABEL_12;
    }

    v5 = [NSString stringWithCString:v10 encoding:4, &v49, v43];
    free(v10);
    SSFileLog();
  }

LABEL_12:
  v11 = [NSString stringWithFormat:@"mt-tid-%@", a1[5]];
  v57 = NSHTTPCookieName;
  v58 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  v13 = +[ACAccountStore ams_sharedAccountStore];
  v48 = 0;
  [v13 ams_removeCookiesMatchingProperties:v12 error:&v48];
  v14 = v48;

  if (!v14)
  {
    goto LABEL_26;
  }

  v15 = +[SSLogConfig sharedDaemonConfig];
  if (!v15)
  {
    v15 = +[SSLogConfig sharedConfig];
  }

  v16 = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    v17 = v16 | 2;
  }

  else
  {
    v17 = v16;
  }

  v18 = [v15 OSLogObject];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = v17;
  }

  else
  {
    v19 = v17 & 2;
  }

  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = objc_opt_class();
  v45 = v12;
  v21 = v11;
  v22 = a1[5];
  v23 = a1[6];
  v44 = v20;
  v24 = v23;
  v11 = v21;
  v25 = [NSNumber numberWithInteger:v24];
  v49 = 138544130;
  v50 = v20;
  v51 = 2112;
  v52 = v22;
  v12 = v45;
  v53 = 2114;
  v54 = v25;
  v55 = 2114;
  v56 = v14;
  LODWORD(v43) = 42;
  v42 = &v49;
  v26 = _os_log_send_and_compose_impl();

  if (v26)
  {
    v18 = [NSString stringWithCString:v26 encoding:4, &v49, v43];
    free(v26);
    v42 = v18;
    SSFileLog();
LABEL_24:
  }

LABEL_26:
  v27 = a1[4];
  v28 = a1[5];
  v29 = a1[7];
  v47 = v14;
  v30 = [v27 _generateKeychainTokensForAccountIdentifier:v28 purpose:v29 error:{&v47, v42}];
  v31 = v47;

  if ((v30 & 1) == 0)
  {
    v32 = +[SSLogConfig sharedDaemonConfig];
    if (!v32)
    {
      v32 = +[SSLogConfig sharedConfig];
    }

    v33 = [v32 shouldLog];
    if ([v32 shouldLogToDisk])
    {
      v33 |= 2u;
    }

    v34 = [v32 OSLogObject];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = v33;
    }

    else
    {
      v35 = v33 & 2;
    }

    if (v35)
    {
      v36 = objc_opt_class();
      v37 = v12;
      v39 = a1[5];
      v38 = a1[6];
      v46 = v36;
      v40 = [NSNumber numberWithInteger:v38];
      v49 = 138544130;
      v50 = v36;
      v51 = 2112;
      v52 = v39;
      v12 = v37;
      v53 = 2114;
      v54 = v40;
      v55 = 2114;
      v56 = v31;
      LODWORD(v43) = 42;
      v41 = _os_log_send_and_compose_impl();

      if (!v41)
      {
LABEL_38:

        goto LABEL_39;
      }

      v34 = [NSString stringWithCString:v41 encoding:4, &v49, v43];
      free(v41);
      SSFileLog();
    }

    goto LABEL_38;
  }

LABEL_39:
}

void sub_10015864C(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    objc_opt_class();
    v6 = SSXPCDictionaryCopyObjectWithClass();
    objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass();
    v8 = [v7 integerValue];

    v9 = [*(a1 + 40) sharedInstance];
    v13 = 0;
    v10 = [v9 createAttestationDataForAccountIdentifier_:v6 purpose:v8 error:&v13];
    v11 = v13;
  }

  else
  {
    v12 = a3;
    v11 = SSError();
    v10 = 0;
  }

  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
}

void sub_10015883C(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    objc_opt_class();
    v6 = SSXPCDictionaryCopyObjectWithClass();
    objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass();
    v8 = [v7 integerValue];

    v9 = [*(a1 + 40) sharedInstance];
    v13 = 0;
    v10 = [v9 createX509CertChainDataForAccountIdentifier_:v6 purpose:v8 error:&v13];
    v11 = v13;
  }

  else
  {
    v12 = a3;
    v11 = SSError();
    v10 = 0;
  }

  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
}

void sub_100158A2C(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    objc_opt_class();
    v6 = SSXPCDictionaryCopyObjectWithClass();
    v7 = [*(a1 + 40) sharedInstance];
    v10 = 0;
    [v7 deleteKeychainTokensForAccountIdentifier_:v6 error:&v10];
    v8 = v10;
  }

  else
  {
    v9 = a3;
    v8 = SSError();
  }

  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
}

void sub_100158BF8(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    objc_opt_class();
    v6 = SSXPCDictionaryCopyObjectWithClass();
    objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass();
    v8 = [v7 integerValue];

    v9 = [*(a1 + 40) sharedInstance];
    v13 = 0;
    v10 = [v9 publicKeyDataForAccountIdentifier_:v6 purpose:v8 error:&v13];
    v11 = v13;
  }

  else
  {
    v12 = a3;
    v11 = SSError();
    v10 = 0;
  }

  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
}

void sub_100158E08(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    objc_opt_class();
    v6 = SSXPCDictionaryCopyObjectWithClass();
    objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass();
    objc_opt_class();
    v8 = SSXPCDictionaryCopyObjectWithClass();
    pid = xpc_connection_get_pid(*(a1 + 40));
    v10 = +[SSLogConfig sharedDaemonConfig];
    v11 = v10;
    if (v6)
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
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v13 &= 2u;
      }

      if (v13)
      {
        [NSNumber numberWithInt:pid];
        v28 = 138412546;
        v29 = v8;
        v31 = v30 = 2114;
        LODWORD(v26) = 22;
        v15 = _os_log_send_and_compose_impl();

        if (!v15)
        {
LABEL_14:

          v16 = objc_alloc_init(SSBiometricAuthenticationContext);
          [v16 setAccountIdentifier:v8];
          v17 = objc_alloc_init(SSConsolidatedDialog);
          [v17 setReason:v7];
          [v16 setConsolidatedDialog:v17];
          v18 = [*(a1 + 48) sharedInstance];
          v27 = 0;
          v19 = [v18 signData_:v6 context:v16 error:&v27];
          v20 = v27;

LABEL_28:
          goto LABEL_29;
        }

        v14 = [NSString stringWithCString:v15 encoding:4, &v28, v26];
        free(v15);
        SSFileLog();
      }

      goto LABEL_14;
    }

    if (!v10)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v22 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v23 = v22 | 2;
    }

    else
    {
      v23 = v22;
    }

    v24 = [v11 OSLogObject];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v23 &= 2u;
    }

    if (v23)
    {
      [NSNumber numberWithInt:pid];
      v28 = 138412546;
      v29 = v8;
      v31 = v30 = 2114;
      LODWORD(v26) = 22;
      v25 = _os_log_send_and_compose_impl();

      if (!v25)
      {
LABEL_27:

        v20 = SSError();
        v19 = 0;
        goto LABEL_28;
      }

      v24 = [NSString stringWithCString:v25 encoding:4, &v28, v26];
      free(v25);
      SSFileLog();
    }

    goto LABEL_27;
  }

  v21 = a3;
  v20 = SSError();
  v19 = 0;
LABEL_29:
  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
}

void sub_100159340(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    objc_opt_class();
    v6 = SSXPCDictionaryCopyObjectWithClass();
    v7 = [SSBiometricAuthenticationContext alloc];
    v8 = xpc_dictionary_get_value(*(a1 + 32), "2");
    v9 = [v7 initWithXPCEncoding:v8];

    pid = xpc_connection_get_pid(*(a1 + 40));
    v11 = +[SSLogConfig sharedDaemonConfig];
    v12 = v11;
    if (v6)
    {
      if (!v11)
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
        v16 = [v9 accountIdentifier];
        [NSNumber numberWithInt:pid];
        v29 = 138412546;
        v30 = v16;
        v32 = v31 = 2114;
        LODWORD(v27) = 22;
        v17 = _os_log_send_and_compose_impl();

        if (!v17)
        {
LABEL_14:

          v18 = [*(a1 + 48) sharedInstance];
          v28 = 0;
          v19 = [v18 signData_:v6 context:v9 error:&v28];
          v20 = v28;

LABEL_28:
          goto LABEL_29;
        }

        v15 = [NSString stringWithCString:v17 encoding:4, &v29, v27];
        free(v17);
        SSFileLog();
      }

      goto LABEL_14;
    }

    if (!v11)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v22 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v23 = v22 | 2;
    }

    else
    {
      v23 = v22;
    }

    v24 = [v12 OSLogObject];
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v23 &= 2u;
    }

    if (v23)
    {
      v25 = [v9 accountIdentifier];
      [NSNumber numberWithInt:pid];
      v29 = 138412546;
      v30 = v25;
      v32 = v31 = 2114;
      LODWORD(v27) = 22;
      v26 = _os_log_send_and_compose_impl();

      if (!v26)
      {
LABEL_27:

        v20 = SSError();
        v19 = 0;
        goto LABEL_28;
      }

      v24 = [NSString stringWithCString:v26 encoding:4, &v29, v27];
      free(v26);
      SSFileLog();
    }

    goto LABEL_27;
  }

  v21 = a3;
  v20 = SSError();
  v19 = 0;
LABEL_29:
  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
}

void sub_10015982C(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    objc_opt_class();
    v6 = SSXPCDictionaryCopyObjectWithClass();
    objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass();
    v8 = [v7 integerValue];

    objc_opt_class();
    v9 = SSXPCDictionaryCopyObjectWithClass();
    v10 = [v9 BOOLValue];

    v11 = [*(a1 + 40) sharedInstance];
    v15 = 0;
    v12 = [v11 x509CertChainDataForAccountIdentifier_:v6 purpose:v8 regenerateCerts:v10 error:&v15];
    v13 = v15;
  }

  else
  {
    v14 = a3;
    v13 = SSError();
    v12 = 0;
  }

  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
}

void sub_100159B58(uint64_t a1)
{
  if ((SSXPCConnectionHasEntitlement() & 1) == 0 && (SSXPCConnectionHasEntitlement() & 1) == 0)
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
      LODWORD(v10) = 138543362;
      *(&v10 + 4) = objc_opt_class();
      v6 = *(&v10 + 4);
      LODWORD(v9) = 12;
      v7 = _os_log_send_and_compose_impl();

      if (!v7)
      {
LABEL_15:

        goto LABEL_16;
      }

      v5 = [NSString stringWithCString:v7 encoding:4, &v10, v9, v10];
      free(v7);
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_16:
  reply = xpc_dictionary_create_reply(*(a1 + 40));
  (*(*(a1 + 48) + 16))();
  xpc_connection_send_message(*(a1 + 32), reply);
}

void sub_10015E3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 256), 8);
  _Block_object_dispose((v49 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_10015E5F4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v10 = +[SSLogConfig sharedDaemonConfig];
  v11 = v10;
  if (v8)
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
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 & 2;
    }

    if (v15)
    {
      v16 = objc_opt_class();
      v17 = *(a1 + 88);
      v33 = v7;
      v18 = v16;
      [NSNumber numberWithInteger:v17];
      v38 = 138543874;
      v39 = v16;
      v40 = 2114;
      v41 = v8;
      v43 = v42 = 2114;
      LODWORD(v32) = 32;
      v19 = _os_log_send_and_compose_impl();

      v7 = v33;
      if (v19)
      {
        v20 = [NSString stringWithCString:v19 encoding:4, &v38, v32];
        free(v19);
        SSFileLog();
      }
    }

    else
    {
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  else
  {
    if (!v10)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v21 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v21 |= 2u;
    }

    v22 = [v11 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v21;
    }

    else
    {
      v23 = v21 & 2;
    }

    if (v23)
    {
      v24 = objc_opt_class();
      v25 = v7;
      v34 = v24;
      v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 count]);
      [NSNumber numberWithInteger:*(a1 + 88)];
      v38 = 138543874;
      v39 = v24;
      v40 = 2114;
      v41 = v26;
      v43 = v42 = 2114;
      LODWORD(v32) = 32;
      v27 = _os_log_send_and_compose_impl();

      v8 = 0;
      v7 = v25;

      if (v27)
      {
        v28 = [NSString stringWithCString:v27 encoding:4, &v38, v32];
        free(v27);
        SSFileLog();
      }
    }

    else
    {
    }

    *(*(*(a1 + 48) + 8) + 24) = a2;
    v29 = objc_alloc_init(NSMutableArray);
    v30 = *(*(a1 + 56) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = v29;

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10015EA3C;
    v35[3] = &unk_10032A048;
    v36 = *(a1 + 56);
    v37 = *(a1 + 72);
    [v7 enumerateObjectsUsingBlock:v35];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10015EA3C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = SecCertificateCopyData(v7);
  [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v6 = 48;
  }

  else
  {
    v6 = 40;
  }

  *(*(*(a1 + v6) + 8) + 24) = v7;
LABEL_6:
}

void sub_100161A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 208), 8);
  _Block_object_dispose((v41 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100161A7C(void *a1, void *a2, void *a3, char a4, void *a5, void *a6, void *a7)
{
  v12 = a2;
  v59 = a3;
  v13 = a3;
  obj = a5;
  v14 = a5;
  v62 = a6;
  v15 = a6;
  v16 = a7;
  v17 = +[SSLogConfig sharedDaemonConfig];
  if (!v17)
  {
    v17 = +[SSLogConfig sharedConfig];
  }

  v18 = [v17 shouldLog];
  if ([v17 shouldLogToDisk])
  {
    v18 |= 2u;
  }

  v19 = [v17 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 & 2;
  }

  if (v20)
  {
    v21 = a1[4];
    v64 = 138543362;
    v65 = v21;
    LODWORD(v58) = 12;
    v57 = &v64;
    v22 = _os_log_send_and_compose_impl();

    if (!v22)
    {
      goto LABEL_12;
    }

    v19 = [NSString stringWithCString:v22 encoding:4, &v64, v58];
    free(v22);
    v57 = v19;
    SSFileLog();
  }

LABEL_12:
  v23 = v16;
  if (v16)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a7);
    v24 = +[SSLogConfig sharedDaemonConfig];
    v25 = v15;
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v26 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v26 |= 2u;
    }

    v27 = [v24 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = v26;
    }

    else
    {
      v28 = v26 & 2;
    }

    if (!v28)
    {
      goto LABEL_44;
    }

    v29 = a1[4];
    v64 = 138543618;
    v65 = v29;
    v66 = 2114;
    v67 = v23;
    LODWORD(v58) = 22;
    v57 = &v64;
LABEL_42:
    v39 = _os_log_send_and_compose_impl();

    if (!v39)
    {
LABEL_45:

      goto LABEL_46;
    }

    v27 = [NSString stringWithCString:v39 encoding:4, &v64, v58];
    free(v39);
    v57 = v27;
    SSFileLog();
LABEL_44:

    goto LABEL_45;
  }

  v25 = v15;
  if ((a4 & 1) == 0)
  {
    v33 = ISError();
    v34 = *(a1[5] + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = v33;

    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v36 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v36 |= 2u;
    }

    v27 = [v24 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v36;
    }

    else
    {
      v37 = v36 & 2;
    }

    if (!v37)
    {
      goto LABEL_44;
    }

    v38 = a1[4];
    v64 = 138543362;
    v65 = v38;
    LODWORD(v58) = 12;
    v57 = &v64;
    goto LABEL_42;
  }

  if (v12)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v30 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v30 |= 2u;
    }

    v27 = [v24 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
    }

    else
    {
      v31 = v30 & 2;
    }

    if (!v31)
    {
      goto LABEL_44;
    }

    v32 = a1[4];
    v64 = 138543362;
    v65 = v32;
    LODWORD(v58) = 12;
    v57 = &v64;
    goto LABEL_42;
  }

  if (v13)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v59);
    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v54 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v54 |= 2u;
    }

    v27 = [v24 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v55 = v54;
    }

    else
    {
      v55 = v54 & 2;
    }

    if (!v55)
    {
      goto LABEL_44;
    }

    v56 = a1[4];
    v64 = 138543362;
    v65 = v56;
    LODWORD(v58) = 12;
    v57 = &v64;
    goto LABEL_42;
  }

LABEL_46:
  if (!v14)
  {
    goto LABEL_60;
  }

  objc_storeStrong((*(a1[8] + 8) + 40), obj);
  v40 = +[SSLogConfig sharedDaemonConfig];
  if (!v40)
  {
    v40 = +[SSLogConfig sharedConfig];
  }

  v41 = [v40 shouldLog];
  if ([v40 shouldLogToDisk])
  {
    v42 = v41 | 2;
  }

  else
  {
    v42 = v41;
  }

  v43 = [v40 OSLogObject];
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = v42;
  }

  else
  {
    v44 = v42 & 2;
  }

  if (!v44)
  {
    goto LABEL_58;
  }

  v45 = a1[4];
  v64 = 138543362;
  v65 = v45;
  LODWORD(v58) = 12;
  v57 = &v64;
  v46 = _os_log_send_and_compose_impl();

  if (v46)
  {
    v43 = [NSString stringWithCString:v46 encoding:4, &v64, v58];
    free(v46);
    v57 = v43;
    SSFileLog();
LABEL_58:
  }

LABEL_60:
  if (v25)
  {
    objc_storeStrong((*(a1[9] + 8) + 40), v62);
    v47 = +[SSLogConfig sharedDaemonConfig];
    if (!v47)
    {
      v47 = +[SSLogConfig sharedConfig];
    }

    v48 = [v47 shouldLog];
    if ([v47 shouldLogToDisk])
    {
      v49 = v48 | 2;
    }

    else
    {
      v49 = v48;
    }

    v50 = [v47 OSLogObject];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = v49;
    }

    else
    {
      v51 = v49 & 2;
    }

    if (v51)
    {
      v52 = a1[4];
      v64 = 138543362;
      v65 = v52;
      LODWORD(v58) = 12;
      v53 = _os_log_send_and_compose_impl();

      if (!v53)
      {
LABEL_73:

        goto LABEL_74;
      }

      v50 = [NSString stringWithCString:v53 encoding:4, &v64, v58];
      free(v53);
      SSFileLog();
    }

    goto LABEL_73;
  }

LABEL_74:
}

void sub_100163098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1001630D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 80);
  v5 = *(*(a1 + 72) + 8);
  obj = *(v5 + 40);
  v6 = [v2 _copyPublicKeyDataForAccountIdentifier:v3 purpose:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 64) + 8) + 40))
  {
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
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v11 &= 2u;
    }

    if (!v11)
    {
      goto LABEL_13;
    }

    v13 = objc_opt_class();
    v14 = v13;
    v15 = SSHashIfNeeded();
    v47 = 138543618;
    v48 = v13;
    v49 = 2112;
    v50 = v15;
    LODWORD(v43) = 22;
LABEL_11:
    v16 = _os_log_send_and_compose_impl();

    if (!v16)
    {
LABEL_14:

      return dispatch_semaphore_signal(*(a1 + 56));
    }

    v12 = [NSString stringWithCString:v16 encoding:4, &v47, v43];
    free(v16);
    SSFileLog();
LABEL_13:

    goto LABEL_14;
  }

  v17 = [*(*(*(a1 + 72) + 8) + 40) domain];
  v18 = [v17 isEqualToString:SSErrorDomain];

  if (v18)
  {
    v19 = [*(*(*(a1 + 72) + 8) + 40) userInfo];
    v20 = [v19 objectForKey:SSErrorKeychainStatusCodeKey];
    v21 = [v20 integerValue];

    if (v21 == -25300)
    {
      if ([*(a1 + 32) _isDeviceUnlocked])
      {
        v22 = *(a1 + 32);
        v23 = *(a1 + 40);
        v24 = *(a1 + 80);
        v25 = *(*(a1 + 72) + 8);
        v45 = *(v25 + 40);
        [v22 _generateKeychainTokensForAccountIdentifier:v23 purpose:v24 error:&v45];
        objc_storeStrong((v25 + 40), v45);
        v26 = *(*(a1 + 72) + 8);
        v28 = *(v26 + 40);
        v27 = (v26 + 40);
        if (v28)
        {
          v9 = +[SSLogConfig sharedDaemonConfig];
          if (!v9)
          {
            v9 = +[SSLogConfig sharedConfig];
          }

          v29 = [v9 shouldLog];
          if ([v9 shouldLogToDisk])
          {
            v30 = v29 | 2;
          }

          else
          {
            v30 = v29;
          }

          v12 = [v9 OSLogObject];
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v30 &= 2u;
          }

          if (!v30)
          {
            goto LABEL_13;
          }

          v31 = objc_opt_class();
          v14 = v31;
          v15 = SSHashIfNeeded();
          v32 = *(*(*(a1 + 72) + 8) + 40);
          v47 = 138543874;
          v48 = v31;
          v49 = 2112;
          v50 = v15;
          v51 = 2114;
          v52 = v32;
          LODWORD(v43) = 32;
        }

        else
        {
          v33 = *(a1 + 32);
          v34 = *(a1 + 40);
          v35 = *(a1 + 80);
          v44 = 0;
          v36 = [v33 _copyPublicKeyDataForAccountIdentifier:v34 purpose:v35 error:&v44];
          objc_storeStrong(v27, v44);
          v37 = *(*(a1 + 64) + 8);
          v38 = *(v37 + 40);
          *(v37 + 40) = v36;

          if (*(*(*(a1 + 64) + 8) + 40))
          {
            return dispatch_semaphore_signal(*(a1 + 56));
          }

          v9 = +[SSLogConfig sharedDaemonConfig];
          if (!v9)
          {
            v9 = +[SSLogConfig sharedConfig];
          }

          v40 = [v9 shouldLog];
          if ([v9 shouldLogToDisk])
          {
            v41 = v40 | 2;
          }

          else
          {
            v41 = v40;
          }

          v12 = [v9 OSLogObject];
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v41 &= 2u;
          }

          if (!v41)
          {
            goto LABEL_13;
          }

          v42 = objc_opt_class();
          v14 = v42;
          v15 = SSHashIfNeeded();
          v47 = 138543618;
          v48 = v42;
          v49 = 2112;
          v50 = v15;
          LODWORD(v43) = 22;
        }

        goto LABEL_11;
      }
    }
  }

  return dispatch_semaphore_signal(*(a1 + 56));
}

int64_t sub_10016921C(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = sub_100169278(a2);
  v6 = sub_100169278(v4);

  v7 = -1;
  if (v5 >= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_100169278(void *a1)
{
  v1 = a1;
  if (SSDownloadKindIsSoftwareKind())
  {
    v2 = 1;
  }

  else if (SSDownloadKindIsEBookKind())
  {
    v2 = 2;
  }

  else if (SSDownloadKindIsVideoKind())
  {
    v2 = 5;
  }

  else if (SSDownloadKindIsToneKind())
  {
    v2 = 4;
  }

  else if (SSDownloadKindIsMediaKind())
  {
    v2 = 3;
  }

  else
  {
    v2 = 6;
  }

  return v2;
}

void sub_100169DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100169E14(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _attemptFireForJob:v5 withName:v8];
  }
}

void sub_10016C658(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x10016C664);
}

uint64_t sub_10016D360(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100383F50;
  qword_100383F50 = v1;

  return _objc_release_x1(v1, v2);
}

id sub_10016D88C(uint64_t a1)
{
  [*(a1 + 32) _decrementPendingInstallsForDownloadIdentifier:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _fireWaitBlocksIfNecessaryForDownloadWithIdentifier:v3];
}

void sub_10016D9BC(uint64_t a1)
{
  [*(a1 + 32) _performNextOperation];
  [*(*(a1 + 32) + 32) lock];
  v2 = [*(*(a1 + 32) + 48) count];
  [*(*(a1 + 32) + 32) unlock];
  v3 = +[UMUserManager sharedManager];
  v4 = [v3 isMultiUser];

  if (v4)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = +[UMUserManager sharedManager];
    [v6 resumeSync];

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
      v14[0] = 0;
      LODWORD(v13) = 2;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_18:

        return;
      }

      v10 = [NSString stringWithCString:v12 encoding:4, v14, v13];
      free(v12);
      SSFileLog();
    }

    goto LABEL_18;
  }
}

void sub_10016E108(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_from_store" equalToLongLong:1];
  v5 = [SSSQLiteComparisonPredicate predicateWithProperty:@"kind" equalToValue:SSDownloadKindSoftwareApplication];
  v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"store_item_id" equalToValue:*(a1 + 32)];
  v7 = [NSArray arrayWithObjects:v5, v4, v6, 0];
  v8 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  v9 = [v3 database];

  v10 = [DownloadEntity queryWithDatabase:v9 predicate:v8];

  v16 = @"download_state.phase";
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10016E324;
  v13[3] = &unk_10032A118;
  v14 = *(a1 + 32);
  v12 = *(a1 + 40);
  v11 = v12;
  v15 = v12;
  [v10 enumeratePersistentIDsAndProperties:&v16 count:1 usingBlock:v13];
}

void sub_10016E324(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, _BYTE *a5)
{
  v8 = *a3;
  v9 = v8;
  if (v8)
  {
    if (([v8 isEqualToString:SSDownloadPhaseDownloading] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", SSDownloadPhaseInstalling) & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", SSDownloadPhaseProcessing) & 1) == 0 && !objc_msgSend(v9, "isEqualToString:", SSDownloadPhaseWaiting))
    {
      v17 = [NSNumber numberWithLongLong:a2];
      [*(a1 + 40) addObject:v17];

      goto LABEL_19;
    }

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
      v15 = *(a1 + 32);
      v19 = 138412546;
      v20 = v15;
      v21 = 2112;
      v22 = v9;
      LODWORD(v18) = 22;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_18:

        *(*(*(a1 + 48) + 8) + 24) = 1;
        *a5 = 1;
        goto LABEL_19;
      }

      v13 = [NSString stringWithCString:v16 encoding:4, &v19, v18];
      free(v16);
      SSFileLog();
    }

    goto LABEL_18;
  }

LABEL_19:
}

uint64_t sub_10016ED08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 database];
  v6 = objc_alloc_init(SSSQLiteQueryDescriptor);
  v7 = [SSSQLiteComparisonPredicate predicateWithProperty:@"time_updated" value:*(a1 + 32) comparisonType:3];
  [v6 setEntityClass:objc_opt_class()];
  v22 = @"time_updated";
  v8 = [NSArray arrayWithObjects:&v22 count:1];
  [v6 setOrderingProperties:v8];

  v21 = SSSQLiteOrderAscending;
  v9 = [NSArray arrayWithObjects:&v21 count:1];
  [v6 setOrderingDirections:v9];

  [v6 setPredicate:v7];
  v10 = [[SSSQLiteQuery alloc] initWithDatabase:v5 descriptor:v6];
  v20[0] = @"bundle_id";
  v20[1] = @"download_id";
  v20[2] = @"expected_phase";
  v20[3] = @"retry_count";
  v11 = [NSArray arrayWithObjects:v20 count:4];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10016EF6C;
  v16[3] = &unk_10032A168;
  v12 = v3;
  v17 = v12;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v18 = v13;
  v19 = v14;
  [v10 enumerateMemoryEntitiesWithProperties:v11 usingBlock:v16];

  objc_autoreleasePoolPop(v4);
  return 1;
}

void sub_10016EF6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 valueForProperty:@"bundle_id"];
  if ([v5 length])
  {
    v52 = v4;
    v6 = [v3 valueForProperty:@"download_id"];
    v7 = [v3 valueForProperty:@"transaction_id"];
    v8 = [v3 valueForProperty:@"expected_phase"];
    v51 = [v3 valueForProperty:@"retry_count"];
    v9 = [v51 intValue];
    v53 = v6;
    if (v9 > 1)
    {
      v24 = +[SSLogConfig sharedDaemonConfig];
      if (!v24)
      {
        v24 = +[SSLogConfig sharedConfig];
      }

      v25 = [v24 shouldLog];
      if ([v24 shouldLogToDisk])
      {
        v25 |= 2u;
      }

      v26 = [v24 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v25;
      }

      else
      {
        v27 = v25 & 2;
      }

      if (v27)
      {
        v54 = 138412802;
        v55 = v8;
        v56 = 2112;
        v57 = v5;
        v58 = 2112;
        v59 = v6;
        LODWORD(v46) = 32;
        v28 = _os_log_send_and_compose_impl();

        if (v28)
        {
          v29 = [NSString stringWithCString:v28 encoding:4, &v54, v46];
          free(v28);
          SSFileLog();
        }
      }

      else
      {
      }

      [ApplicationWorkspaceState deleteIncompleteNotification:v8 forBundleIdentifier:v5];
      goto LABEL_69;
    }

    v10 = v9;
    v11 = [ApplicationWorkspaceState alloc];
    v12 = [v3 databaseID];
    v13 = [*(a1 + 32) database];
    v14 = [(ApplicationWorkspaceState *)v11 initWithPersistentID:v12 inDatabase:v13];

    v60[0] = @"retry_count";
    v15 = [NSNumber numberWithInt:(v10 + 1)];
    v60[1] = @"time_updated";
    v16 = *(a1 + 40);
    v61[0] = v15;
    v61[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
    v50 = v14;
    [(ApplicationWorkspaceState *)v14 setValuesWithDictionary:v17];

    v18 = -[ApplicationHandle initWithTransactionIdentifier:downloadIdentifier:bundleIdentifier:]([ApplicationHandle alloc], "initWithTransactionIdentifier:downloadIdentifier:bundleIdentifier:", [v7 longLongValue], objc_msgSend(v53, "longLongValue"), v5);
    if ([v8 isEqualToString:SSDownloadPhaseFailed])
    {
      v47 = v18;
      v19 = +[SSLogConfig sharedDaemonConfig];
      v4 = v52;
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

      if (v22)
      {
        v54 = 138412802;
        v55 = v8;
        v56 = 2112;
        v57 = v5;
        v58 = 2112;
        v59 = v53;
        LODWORD(v46) = 32;
        v23 = _os_log_send_and_compose_impl();

        if (!v23)
        {
LABEL_15:

          v18 = v47;
          [*(a1 + 48) markFailedPlaceholderForApplicationHandle:v47];
LABEL_68:

LABEL_69:
          goto LABEL_70;
        }

        v21 = [NSString stringWithCString:v23 encoding:4, &v54, v46];
        free(v23);
        SSFileLog();
      }

      goto LABEL_15;
    }

    if ([v8 isEqualToString:SSDownloadPhaseInstalling])
    {
      v48 = v18;
      v30 = +[SSLogConfig sharedDaemonConfig];
      v4 = v52;
      if (!v30)
      {
        v30 = +[SSLogConfig sharedConfig];
      }

      v31 = [v30 shouldLog];
      if ([v30 shouldLogToDisk])
      {
        v31 |= 2u;
      }

      v32 = [v30 OSLogObject];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v31;
      }

      else
      {
        v33 = v31 & 2;
      }

      if (v33)
      {
        v54 = 138412802;
        v55 = v8;
        v56 = 2112;
        v57 = v5;
        v58 = 2112;
        v59 = v53;
        LODWORD(v46) = 32;
        v34 = _os_log_send_and_compose_impl();

        if (!v34)
        {
LABEL_38:

          v18 = v48;
          [*(a1 + 48) installPlaceholderForApplicationHandle:v48];
          goto LABEL_68;
        }

        v32 = [NSString stringWithCString:v34 encoding:4, &v54, v46];
        free(v34);
        SSFileLog();
      }

      goto LABEL_38;
    }

    v35 = [v8 isEqualToString:SSDownloadPhaseCanceled];
    v36 = +[SSLogConfig sharedDaemonConfig];
    v37 = v36;
    if (v35)
    {
      v49 = v18;
      if (!v36)
      {
        v37 = +[SSLogConfig sharedConfig];
      }

      v38 = [v37 shouldLog];
      if ([v37 shouldLogToDisk])
      {
        v38 |= 2u;
      }

      v39 = [v37 OSLogObject];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v38;
      }

      else
      {
        v40 = v38 & 2;
      }

      if (v40)
      {
        v54 = 138412802;
        v55 = v8;
        v56 = 2112;
        v57 = v5;
        v58 = 2112;
        v59 = v53;
        LODWORD(v46) = 32;
        v41 = _os_log_send_and_compose_impl();

        v4 = v52;
        if (!v41)
        {
LABEL_64:

          v18 = v49;
          [*(a1 + 48) uninstallPlaceholderForApplicationHandle:v49];
          goto LABEL_68;
        }

        v39 = [NSString stringWithCString:v41 encoding:4, &v54, v46];
        free(v41);
        SSFileLog();
      }

      else
      {
        v4 = v52;
      }

      goto LABEL_64;
    }

    if (!v36)
    {
      v37 = +[SSLogConfig sharedConfig];
    }

    v42 = [v37 shouldLog];
    if ([v37 shouldLogToDisk])
    {
      v42 |= 2u;
    }

    v43 = [v37 OSLogObject];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v42;
    }

    else
    {
      v44 = v42 & 2;
    }

    if (v44)
    {
      v54 = 138412802;
      v55 = v8;
      v56 = 2112;
      v57 = v5;
      v58 = 2112;
      v59 = v53;
      LODWORD(v46) = 32;
      v45 = _os_log_send_and_compose_impl();

      v4 = v52;
      if (!v45)
      {
LABEL_67:

        goto LABEL_68;
      }

      v43 = [NSString stringWithCString:v45 encoding:4, &v54, v46];
      free(v45);
      SSFileLog();
    }

    else
    {
      v4 = v52;
    }

    goto LABEL_67;
  }

LABEL_70:

  objc_autoreleasePoolPop(v4);
}

void sub_10016FE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10016FE9C(uint64_t a1, void *a2)
{
  v3 = SSDownloadKindDocument;
  v4 = a2;
  v5 = [SSSQLiteComparisonPredicate predicateWithProperty:@"kind" equalToValue:v3];
  v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"kind" equalToValue:SSDownloadKindEBook];
  v14[0] = v5;
  v14[1] = v6;
  v7 = [NSArray arrayWithObjects:v14 count:2];
  v8 = [SSSQLiteCompoundPredicate predicateMatchingAnyPredicates:v7];

  v9 = [v4 database];

  v10 = [DownloadEntity queryWithDatabase:v9 predicate:v8];

  v13 = @"download_state.phase";
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10017006C;
  v11[3] = &unk_10032A190;
  v12 = *(a1 + 32);
  [v10 enumeratePersistentIDsAndProperties:&v13 count:1 usingBlock:v11];
}

void sub_10017006C(uint64_t a1, uint64_t a2, id *a3)
{
  v5 = *a3;
  v6 = v5;
  if (v5 && (([v5 isEqualToString:SSDownloadPhaseDownloading] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", SSDownloadPhaseInstalling) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", SSDownloadPhaseProcessing) & 1) != 0 || objc_msgSend(v6, "isEqualToString:", SSDownloadPhaseWaiting)))
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
      *v14 = 138412802;
      *&v14[4] = objc_opt_class();
      *&v14[12] = 2048;
      *&v14[14] = a2;
      *&v14[22] = 2112;
      v15 = v6;
      v11 = *&v14[4];
      LODWORD(v13) = 32;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_17:

        ++*(*(*(a1 + 40) + 8) + 24);
        goto LABEL_18;
      }

      v10 = [NSString stringWithCString:v12 encoding:4, v14, v13, *v14, *&v14[16], v15];
      free(v12);
      SSFileLog();
    }

    goto LABEL_17;
  }

LABEL_18:
}

void sub_100170708(uint64_t a1, void *a2)
{
  v2 = a2;
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

  *v10 = 138412546;
  *&v10[4] = objc_opt_class();
  *&v10[12] = 2112;
  *&v10[14] = v2;
  v7 = *&v10[4];
  LODWORD(v9) = 22;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v6 = [NSString stringWithCString:v8 encoding:4, v10, v9, *v10, *&v10[16]];
    free(v8);
    SSFileLog();
LABEL_11:
  }
}

BOOL sub_1001717B8(id a1, DownloadsTransaction *a2)
{
  v2 = a2;
  v3 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_from_store" equalToLongLong:1];
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"kind" equalToValue:SSDownloadKindSoftwareApplication];
  v5 = [NSArray arrayWithObjects:v4, v3, 0];
  v6 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v5];

  v7 = [(DownloadsSession *)v2 database];
  v8 = [DownloadEntity queryWithDatabase:v7 predicate:v6];

  v14[0] = @"download_state.phase";
  v14[1] = @"bundle_id";
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001719AC;
  v12[3] = &unk_100327958;
  v9 = v2;
  v13 = v9;
  [v8 enumeratePersistentIDsAndProperties:v14 count:2 usingBlock:v12];

  for (i = 1; i != -1; --i)
  {
  }

  return 1;
}

void sub_1001719AC(uint64_t a1, uint64_t a2, id *a3)
{
  v6 = *a3;
  v7 = a3[1];
  if (v6 && (([v6 isEqualToString:SSDownloadPhaseDownloading] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", SSDownloadPhaseWaiting)))
  {
    v8 = [*(a1 + 32) finishDownloadWithID:a2 finalPhase:SSDownloadPhaseCanceled];
    v9 = +[SSLogConfig sharedDaemonConfig];
    v10 = v9;
    if (!v8)
    {
      if (!v9)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v20 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v21 = v20 | 2;
      }

      else
      {
        v21 = v20;
      }

      v18 = [v10 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 & 2;
      }

      if (!v22)
      {
        goto LABEL_39;
      }

      *v26 = 134218498;
      *&v26[4] = a2;
      *&v26[12] = 2112;
      *&v26[14] = v6;
      *&v26[22] = 2112;
      v27 = v7;
      LODWORD(v25) = 32;
      goto LABEL_37;
    }

    if (!v9)
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
      *v26 = 134218498;
      *&v26[4] = a2;
      *&v26[12] = 2112;
      *&v26[14] = v7;
      *&v26[22] = 2112;
      v27 = v6;
      LODWORD(v25) = 32;
      v24 = v26;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_17:

        v10 = +[SSLogConfig sharedDaemonConfig];
        if (!v10)
        {
          v10 = +[SSLogConfig sharedConfig];
        }

        v16 = [v10 shouldLog];
        if ([v10 shouldLogToDisk])
        {
          v17 = v16 | 2;
        }

        else
        {
          v17 = v16;
        }

        v18 = [v10 OSLogObject];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v17;
        }

        else
        {
          v19 = v17 & 2;
        }

        if (!v19)
        {
          goto LABEL_39;
        }

        *v26 = 134218242;
        *&v26[4] = a2;
        *&v26[12] = 2112;
        *&v26[14] = v7;
        LODWORD(v25) = 22;
LABEL_37:
        v23 = _os_log_send_and_compose_impl();

        if (!v23)
        {
LABEL_40:

          goto LABEL_41;
        }

        v18 = [NSString stringWithCString:v23 encoding:4, v26, v25, *v26, *&v26[16]];
        free(v23);
        SSFileLog();
LABEL_39:

        goto LABEL_40;
      }

      v13 = [NSString stringWithCString:v15 encoding:4, v26, v25];
      free(v15);
      v24 = v13;
      SSFileLog();
    }

    goto LABEL_17;
  }

LABEL_41:
}

BOOL sub_10017200C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 applicationHandle];
  v4 = v2 == [v3 downloadID];

  return v4;
}

void sub_100172398(uint64_t a1)
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

void sub_10017254C(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(*(a1 + 40) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001725EC;
    block[3] = &unk_100327110;
    v4 = *(a1 + 32);
    dispatch_async(v2, block);
  }
}

void sub_1001725EC(uint64_t a1)
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

void sub_100172A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100172A94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100172AAC(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100173410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100173428(uint64_t a1, uint64_t a2)
{
  result = [SSSQLiteDatabase statementHasRowAfterStepping:a2];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100173464(void *a1)
{
  v2 = &unk_10032A2B0;
  v3 = 5;
  do
  {
    v4 = [[NSString alloc] initWithFormat:@"INSERT INTO application_id (effective_client_id, bundle_id) VALUES (%ld, %@)", *v2, *(v2 - 1)];
    [a1 executeSQL:v4];

    v2 += 2;
    --v3;
  }

  while (v3);
}

void sub_100174128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100174164(uint64_t a1, uint64_t a2)
{
  if ([SSSQLiteDatabase statementHasRowAfterStepping:a2])
  {
    v3 = SSSQLiteCopyFoundationValueForStatementColumn();
    *(*(*(a1 + 32) + 8) + 24) = [v3 intValue];
  }
}

id sub_1001741F8(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN store_account_name TEXT;"];
  *a2 = 5001;

  return [a1 setUserVersion:5001];
}

id sub_100174248(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN suppress_error_dialogs SchemaUserVersionEGER NOT NULL DEFAULT 0;"];
  *a2 = 5002;

  return [a1 setUserVersion:5002];
}

id sub_100174298(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download_state ADD COLUMN blocked_reason INTEGER NOT NULL DEFAULT 0;"];
  *a2 = 5003;

  return [a1 setUserVersion:5003];
}

id sub_1001742E8(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN store_match_status INTEGER NOT NULL DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN store_redownload_status INTEGER NOT NULL DEFAULT 0;"];
  *a2 = 5004;

  return [a1 setUserVersion:5004];
}

id sub_100174348(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_store_queued INTEGER DEFAULT 0;"];
  *a2 = 5005;

  return [a1 setUserVersion:5005];
}

id sub_100174398(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN store_redownload_parameters TEXT;"];
  *a2 = 5006;

  return [a1 setUserVersion:5006];
}

id sub_1001743E8(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN thumbnail_newsstand_binding_edge TEXT;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN thumbnail_newsstand_binding_type TEXT;"];
  *a2 = 5007;

  return [a1 setUserVersion:5007];
}

id sub_100174448(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_cellular_restricted INTEGER DEFAULT 0;"];
  *a2 = 5008;

  return [a1 setUserVersion:5008];
}

id sub_100174498(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN requires_device_plugged_in INTEGER DEFAULT 0;"];
  *a2 = 5009;

  return [a1 setUserVersion:5009];
}

id sub_1001744E8(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN cancel_on_failure INTEGER DEFAULT 0;"];
  *a2 = 5010;

  return [a1 setUserVersion:5010];
}

id sub_100174538(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN size_limit_4G INTEGER;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN size_limit_5G INTEGER;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN size_limit_6G INTEGER;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN size_limit_7G INTEGER;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN size_limit_8G INTEGER;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN size_limit_9G INTEGER;"];
  *a2 = 5100;

  return [a1 setUserVersion:5100];
}

id sub_1001745D8(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE persistent_manager ADD COLUMN migration_version INTEGER DEFAULT 0;"];
  *a2 = 5101;

  return [a1 setUserVersion:5101];
}

id sub_100174628(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN download_token INTEGER DEFAULT 0;"];
  *a2 = 6000;

  return [a1 setUserVersion:6000];
}

id sub_100174678(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN policy_id INTEGER DEFAULT 0;"];
  v3 = objc_alloc_init(NSMutableDictionary);
  v40[2] = *off_10032A318;
  v40[3] = *off_10032A328;
  v41 = @"size_limit_WiFi";
  v40[0] = *off_10032A2F8;
  v40[1] = *off_10032A308;
  v4 = objc_alloc_init(NSMutableArray);
  for (i = 0; i != 72; i += 8)
  {
    [v4 addObject:{+[SSSQLiteNullPredicate isNotNullPredicateWithProperty:](SSSQLiteNullPredicate, "isNotNullPredicateWithProperty:", *(v40 + i))}];
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100176100;
  v33[3] = &unk_10032A348;
  v33[4] = v3;
  v33[5] = 9;
  [+[DownloadEntity queryWithDatabase:predicate:](DownloadEntity queryWithDatabase:a1 predicate:{+[SSSQLiteCompoundPredicate predicateMatchingAnyPredicates:](SSSQLiteCompoundPredicate, "predicateMatchingAnyPredicates:", v4)), "enumeratePersistentIDsAndProperties:count:usingBlock:", v40, 9, v33}];

  v6 = [DownloadAssetEntity queryWithDatabase:a1 predicate:[SSSQLiteComparisonPredicate predicateWithProperty:@"requires_device_plugged_in" equalToLongLong:1]];
  v39 = @"download_id";
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100176368;
  v32[3] = &unk_100327288;
  v32[4] = v3;
  [v6 enumeratePersistentIDsAndProperties:&v39 count:1 usingBlock:v32];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [v3 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (j = 0; j != v8; j = j + 1)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v28 + 1) + 8 * j);
        v27 = 0;
        v12 = +[NSKeyedArchiver archivedDataWithRootObject:requiringSecureCoding:error:](NSKeyedArchiver, "archivedDataWithRootObject:requiringSecureCoding:error:", [v3 objectForKey:{v11, v24, v25}], 1, &v27);
        if (v27)
        {
          v13 = +[SSLogConfig sharedStoreServicesConfig];
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

          if (os_log_type_enabled([v13 OSLogObject], OS_LOG_TYPE_ERROR))
          {
            v16 = v15;
          }

          else
          {
            v16 = v15 & 2;
          }

          if (v16)
          {
            v34 = 136446466;
            v35 = "void ConvertConstraintsToPolicies(SSSQLiteDatabase *)";
            v36 = 2114;
            v37 = v27;
            LODWORD(v25) = 22;
            v24 = &v34;
            v17 = _os_log_send_and_compose_impl();
            if (v17)
            {
              v18 = v17;
              v19 = [NSString stringWithCString:v17 encoding:4, &v34, v25];
              free(v18);
              v24 = v19;
              SSFileLog();
            }
          }
        }

        if (v12)
        {
          v24 = @"policy_data";
          v25 = 0;
          v20 = [[NSDictionary alloc] initWithObjectsAndKeys:v12];
          v21 = [[DownloadPolicyEntity alloc] initWithPropertyValues:v20 inDatabase:a1];
          v22 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v11 longLongValue], a1);
          [(DownloadEntity *)v22 setValue:[NSNumber forProperty:"numberWithLongLong:" numberWithLongLong:?], @"policy_id"];
        }
      }

      v8 = [v3 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v8);
  }

  *a2 = 6001;
  return [a1 setUserVersion:6001];
}

id sub_100174B2C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN preferred_asset_flavor TEXT;"];
  *a2 = 6002;

  return [a1 setUserVersion:6002];
}

id sub_100174B7C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN cancel_if_duplicate INTEGER DEFAULT 0;"];
  *a2 = 6003;

  return [a1 setUserVersion:6003];
}

id sub_100174BCC(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN sinfs_data BLOB;"];
  *a2 = 6004;

  return [a1 setUserVersion:6004];
}

id sub_100174C1C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN etag TEXT;"];
  *a2 = 6005;

  return [a1 setUserVersion:6005];
}

id sub_100174C6C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN blocked_reason INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN store_download_key TEXT;"];
  *a2 = 6006;

  return [a1 setUserVersion:6006];
}

id sub_100174CCC(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download_state ADD COLUMN is_server_finished INTEGER DEFAULT 0;"];
  *a2 = 6007;

  return [a1 setUserVersion:6007];
}

id sub_100174D1C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN service_type INTEGER DEFAULT 0;"];
  *a2 = 6008;

  return [a1 setUserVersion:6008];
}

id sub_100174D6C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN is_hash_verified INTEGER DEFAULT 0;"];
  *a2 = 6009;

  return [a1 setUserVersion:6009];
}

id sub_100174DBC(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN store_url TEXT;"];
  *a2 = 6010;

  return [a1 setUserVersion:6010];
}

id sub_100174E0C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download_state ADD COLUMN has_restore_data INTEGER DEFAULT -1;"];
  [a1 executeSQL:@"ALTER TABLE download_state ADD COLUMN restore_data_size INTEGER DEFAULT 0;"];
  *a2 = 6011;

  return [a1 setUserVersion:6011];
}

id sub_100174E6C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download_state ADD COLUMN store_queue_refresh_count INTEGER DEFAULT 0;"];
  *a2 = 6012;

  return [a1 setUserVersion:6012];
}

id sub_100174EBC(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download_state ADD COLUMN did_restore_data INTEGER DEFAULT 0;"];
  *a2 = 6013;

  return [a1 setUserVersion:6013];
}

id sub_100174F0C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_explicit INTEGER DEFAULT 0;"];
  *a2 = 6014;

  return [a1 setUserVersion:6014];
}

id sub_100174F5C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN page_progression_direction TEXT;"];
  *a2 = 6100;

  return [a1 setUserVersion:6100];
}

id sub_100174FAC(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN asset_order INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN is_local_cache_server INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN server_guid TEXT;"];
  *a2 = 7000;

  return [a1 setUserVersion:7000];
}

id sub_10017501C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN purchase_id INTEGER DEFAULT 0;"];
  *a2 = 7002;

  return [a1 setUserVersion:7002];
}

id sub_10017506C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN page_progression_direction TEXT;"];
  *a2 = 7002;

  return [a1 setUserVersion:7002];
}

id sub_1001750BC(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN auto_update_time INTEGER;"];
  [a1 executeSQL:@"ALTER TABLE download_state ADD COLUMN auto_update_state INTEGER NOT NULL DEFAULT 0;"];
  *a2 = 7003;

  return [a1 setUserVersion:7003];
}

id sub_10017511C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_hd INTEGER DEFAULT 0;"];
  *a2 = 7004;

  return [a1 setUserVersion:7004];
}

id sub_10017516C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN is_zip_streamable INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN uncompressed_size INTEGER DEFAULT 0;"];
  *a2 = 7005;

  return [a1 setUserVersion:7005];
}

id sub_1001751CC(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE client ADD COLUMN audit_token_data BLOB;"];
  *a2 = 7006;

  return [a1 setUserVersion:7006];
}

id sub_10017521C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN body_data_file_path TEXT;"];
  *a2 = 7008;

  return [a1 setUserVersion:7008];
}

id sub_10017526C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN body_data_file_path TEXT;"];
  *a2 = 7008;

  return [a1 setUserVersion:7008];
}

id sub_1001752BC(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download_state ADD COLUMN can_cancel INTEGER DEFAULT 1;"];
  [a1 executeSQL:@"ALTER TABLE download_state ADD COLUMN can_prioritize INTEGER DEFAULT 1;"];
  *a2 = 7009;

  return [a1 setUserVersion:7009];
}

id sub_10017531C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN override_audit_token_data BLOB;"];
  *a2 = 7010;

  return [a1 setUserVersion:7010];
}

id sub_10017536C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:{@"CREATE TABLE IF NOT EXISTS application_workspace_state (pid INTEGER, bundle_id TEXT NOT NULL, download_id INTEGER, expected_phase TEXT NOT NULL DEFAULT 0, retry_count INTEGER NOT NULL DEFAULT 0, time_updated INTEGER NOT NULL DEFAULT 0, transaction_id INTEGER, PRIMARY KEY (pid), UNIQUE (bundle_id));"}];
  [a1 executeSQL:@"CREATE INDEX IF NOT EXISTS application_workspace_state_bundle_id ON application_workspace_state (bundle_id);"];
  *a2 = 7011;

  return [a1 setUserVersion:7011];
}

id sub_1001753CC(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN effective_client_id INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN order_seed INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"UPDATE download SET priority=1 WHERE priority>1;"];
  [a1 executeSQL:@"UPDATE download SET priority=-1 WHERE priority<0;"];
  [a1 executeSQL:@"UPDATE download SET priority=-2 WHERE is_restore=1;"];
  sub_100173464(a1);
  *a2 = 7012;

  return [a1 setUserVersion:7012];
}

id sub_100175464(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN is_downloaded INTEGER DEFAULT 0;"];
  *a2 = 7013;

  return [a1 setUserVersion:7013];
}

id sub_1001754B4(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN duet_transfer_type INTEGER DEFAULT 0;"];
  *a2 = 7014;

  return [a1 setUserVersion:7014];
}

id sub_100175504(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN airplay_content_type TEXT;"];
  *a2 = 7015;

  return [a1 setUserVersion:7015];
}

id sub_100175554(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN hash_type INTEGER DEFAULT 0;"];
  *a2 = 7100;

  return [a1 setUserVersion:7100];
}

id sub_1001755A4(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN url_session_task_id INTEGER DEFAULT -1;"];
  *a2 = 8000;

  return [a1 setUserVersion:8000];
}

id sub_1001755F4(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN processing_types INTEGER DEFAULT 0;"];
  *a2 = 8001;

  return [a1 setUserVersion:8001];
}

id sub_100175644(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN dpinfo_data BLOB;"];
  *a2 = 8002;

  return [a1 setUserVersion:8002];
}

id sub_100175694(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN file_protection TEXT;"];
  *a2 = 8003;

  return [a1 setUserVersion:8003];
}

id sub_1001756E4(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN is_discretionary INTEGER DEFAULT 0;"];
  *a2 = 8004;

  return [a1 setUserVersion:8004];
}

id sub_100175734(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN avfoundation_blocked INTEGER DEFAULT 0;"];
  *a2 = 8005;

  return [a1 setUserVersion:8005];
}

id sub_100175784(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN store_cohort TEXT;"];
  *a2 = 8006;

  return [a1 setUserVersion:8006];
}

id sub_1001757D4(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN ref_app TEXT;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN ref_url TEXT;"];
  *a2 = 8300;

  return [a1 setUserVersion:8300];
}

id sub_100175834(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN reason INTEGER DEFAULT 0;"];
  *a2 = 8301;

  return [a1 setUserVersion:8301];
}

id sub_100175884(void *a1, _DWORD *a2)
{
  [a1 executeSQL:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"UPDATE application_id SET effective_client_id=%ld WHERE bundle_id=com.apple.Music;", 4)}];
  *a2 = 8302;

  return [a1 setUserVersion:8302];
}

id sub_1001758F8(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN protection_type INTEGER DEFAULT 0;"];
  *a2 = 8303;

  return [a1 setUserVersion:8303];
}

id sub_100175948(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN variant_id TEXT;"];
  *a2 = 9003;

  return [a1 setUserVersion:9003];
}

id sub_100175998(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN reason INTEGER DEFAULT 0;"];
  [a1 executeSQL:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"UPDATE application_id SET effective_client_id=%ld WHERE bundle_id=com.apple.Music;", 4)}];
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN protection_type INTEGER DEFAULT 0;"];
  *a2 = 9003;

  return [a1 setUserVersion:9003];
}

id sub_100175A30(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN loading_priority REAL;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN rate_limit INTEGER;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN timeout_interval REAL;"];
  *a2 = 9004;

  return [a1 setUserVersion:9004];
}

id sub_100175AA0(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN variant_id TEXT;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN beta_external_version_identifier INTEGER DEFAULT 0;"];
  *a2 = 9005;

  return [a1 setUserVersion:9005];
}

id sub_100175B00(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download_state ADD COLUMN last_odr_action INTEGER DEFAULT 0;"];
  *a2 = 9006;

  return [a1 setUserVersion:9006];
}

id sub_100175B50(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN initial_odr_size INTEGER;"];
  *a2 = 9007;

  return [a1 setUserVersion:9007];
}

id sub_100175BA0(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_tv_template INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_device_based_vpp INTEGER DEFAULT 0;"];
  *a2 = 9008;

  return [a1 setUserVersion:9008];
}

id sub_100175C00(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_shared INTEGER DEFAULT 0;"];
  *a2 = 9300;

  return [a1 setUserVersion:9300];
}

id sub_100175C50(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN transaction_id INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE application_workspace_state ADD COLUMN transaction_id INTEGER;"];
  *a2 = 9301;

  return [a1 setUserVersion:9301];
}

id sub_100175CB0(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN store_publication_version INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN download_permalink TEXT;"];
  *a2 = 9302;

  return [a1 setUserVersion:9302];
}

id sub_100175D10(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_diverted INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN diverted_job_id INTEGER;"];
  *a2 = 10000;

  return [a1 setUserVersion:10000];
}

id sub_100175D70(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN rental_id INTEGER;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN hls_playlist_url TEXT;"];
  *a2 = 10001;

  return [a1 setUserVersion:10001];
}

id sub_100175DD0(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN has_messages_extension INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN launch_prohibited INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN messages_artwork_url TEXT;"];
  *a2 = 10002;

  return [a1 setUserVersion:10002];
}

id sub_100175E40(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN enable_extensions INTEGER DEFAULT 0;"];
  *a2 = 10003;

  return [a1 setUserVersion:10003];
}

id sub_100175E90(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN launch_prohibited INTEGER DEFAULT 0;"];
  *a2 = 10004;

  return [a1 setUserVersion:10004];
}

id sub_100175EE0(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download RENAME TO _download;"];
  [a1 executeSQL:{@"CREATE TABLE IF NOT EXISTS download (pid INTEGER, airplay_content_type TEXT, artist_name TEXT, artwork_is_prerendered INTEGER DEFAULT 0, artwork_template_name TEXT, auto_update_time INTEGER, beta_external_version_identifier INTEGER DEFAULT 0, bundle_id TEXT, bundle_version TEXT, cancel_if_duplicate INTEGER DEFAULT 0, cancel_on_failure INTEGER DEFAULT 0, cancel_url TEXT, client_id TEXT, collection_artist_name TEXT, collection_group_count INTEGER, collection_item_count INTEGER, collection_name TEXT, composer_name TEXT, diverted_job_id INTEGER, document_target_id TEXT, download_permalink TEXT, duet_transfer_type INTEGER DEFAULT 0, duration_in_ms INTEGER DEFAULT 0, effective_client_id INTEGER DEFAULT 0, enable_extensions INTEGER DEFAULT 0, episode_id TEXT, episode_sort_id INTEGER, handler_id INTEGER DEFAULT 0, has_4k INTEGER DEFAULT 0, has_dolby_vision INTEGER DEFAULT 0, has_hdr INTEGER DEFAULT 0, has_messages_extension INTEGER DEFAULT 0, hls_playlist_url TEXT, genre_name TEXT, index_in_collection INTEGER DEFAULT 0, index_in_collection_group INTEGER, is_automatic INTEGER DEFAULT 0, is_compilation INTEGER DEFAULT 0, is_device_based_vpp INTEGER DEFAULT 0, is_diverted INTEGER DEFAULT 0, is_explicit INTEGER DEFAULT 0, is_from_store INTEGER DEFAULT 0, is_hd INTEGER DEFAULT 0, is_hls INTEGER DEFAULT 0, is_premium INTEGER DEFAULT 0, is_private INTEGER DEFAULT 0, is_purchase INTEGER DEFAULT 0, is_redownload INTEGER DEFAULT 0, is_restore INTEGER DEFAULT 0, is_rental INTEGER DEFAULT 0, is_sample INTEGER DEFAULT 0, is_shared INTEGER DEFAULT 0, is_store_queued INTEGER DEFAULT 0, is_tv_template INTEGER DEFAULT 0, is_music_show INTEGER DEFAULT 0, kind TEXT, launch_prohibited INTEGER DEFAULT 0, library_id TEXT, loading_priority REAL, long_description TEXT, long_season_description TEXT, messages_artwork_url TEXT, network_name TEXT, order_key DOUBLE DEFAULT 0, order_seed INTEGER DEFAULT 0, override_audit_token_data BLOB, page_progression_direction TEXT, podcast_episode_guid TEXT, podcast_feed_url TEXT, podcast_type TEXT, policy_id INTEGER DEFAULT 0, priority INTEGER DEFAULT 0, preferred_asset_flavor TEXT, purchase_id INTEGER DEFAULT 0, rate_limit INTEGER, reason INTEGER DEFAULT 0, ref_app TEXT, ref_url TEXT, release_date INTEGER, release_year INTEGER, rental_id INTEGER, resource_timeout_interval REAL, season_number INTEGER, series_name TEXT, software_type TEXT, short_description TEXT, show_composer INTEGER DEFAULT 0, suppress_error_dialogs INTEGER NOT NULL DEFAULT 0, store_account_id INTEGER, store_account_name TEXT, store_artist_id INTEGER, store_cohort TEXT, store_collection_id INTEGER, store_composer_id INTEGER, store_download_key TEXT, store_front_id TEXT, store_genre_id INTEGER, store_item_id INTEGER, store_match_status INTEGER NOT NULL DEFAULT 0, store_publication_version INTEGER DEFAULT 0, store_preorder_id INTEGER, store_purchase_date INTEGER, store_redownload_parameters TEXT, store_redownload_status INTEGER NOT NULL DEFAULT 0, store_saga_id INTEGER, store_software_version_id INTEGER, store_transaction_id TEXT, store_url TEXT, store_xid TEXT, thumbnail_newsstand_binding_edge TEXT, thumbnail_newsstand_binding_type TEXT, thumbnail_url TEXT, timeout_interval REAL, timestamp INTEGER DEFAULT (strftime('%s', 'now')), title TEXT, transaction_id INTEGER DEFAULT 0, variant_id TEXT, work_name TEXT, PRIMARY KEY (pid));"}];
  [a1 executeSQL:{@"INSERT INTO download (pid, airplay_content_type, artist_name, artwork_is_prerendered, artwork_template_name, auto_update_time, beta_external_version_identifier, bundle_id, bundle_version, cancel_if_duplicate, cancel_on_failure, cancel_url, client_id, collection_artist_name, collection_group_count, collection_item_count, collection_name, composer_name, diverted_job_id, document_target_id, download_permalink, duet_transfer_type, duration_in_ms, effective_client_id, enable_extensions, episode_id, episode_sort_id, handler_id, has_messages_extension, hls_playlist_url, genre_name, index_in_collection, index_in_collection_group, is_automatic, is_compilation, is_device_based_vpp, is_diverted, is_explicit, is_from_store, is_hd, is_private, is_purchase, is_redownload, is_restore, is_rental, is_sample, is_shared, is_store_queued, is_tv_template, kind, launch_prohibited, library_id, loading_priority, long_description, long_season_description, messages_artwork_url, network_name, order_key, order_seed, override_audit_token_data, page_progression_direction, podcast_episode_guid, podcast_feed_url, podcast_type, policy_id, priority, preferred_asset_flavor, purchase_id, rate_limit, reason, ref_app, ref_url, release_date, release_year, rental_id, season_number, series_name, software_type, short_description, suppress_error_dialogs, store_account_id, store_account_name, store_artist_id, store_cohort, store_collection_id, store_composer_id, store_download_key, store_front_id, store_genre_id, store_item_id, store_match_status, store_publication_version, store_preorder_id, store_purchase_date, store_redownload_parameters, store_redownload_status, store_saga_id, store_software_version_id, store_transaction_id, store_url, store_xid, thumbnail_newsstand_binding_edge, thumbnail_newsstand_binding_type, thumbnail_url, timeout_interval, title, transaction_id, variant_id) SELECT pid, airplay_content_type, artist_name, artwork_is_prerendered, artwork_template_name, auto_update_time, beta_external_version_identifier, bundle_id, bundle_version, cancel_if_duplicate, cancel_on_failure, cancel_url, client_id, collection_artist_name, collection_group_count, collection_item_count, collection_name, composer_name, diverted_job_id, document_target_id, download_permalink, duet_transfer_type, duration_in_ms, effective_client_id, enable_extensions, episode_id, episode_sort_id, handler_id, has_messages_extension, hls_playlist_url, genre_name, index_in_collection, index_in_collection_group, is_automatic, is_compilation, is_device_based_vpp, is_diverted, is_explicit, is_from_store, is_hd, is_private, is_purchase, is_redownload, is_restore, is_rental, is_sample, is_shared, is_store_queued, is_tv_template, kind, launch_prohibited, library_id, loading_priority, long_description, long_season_description, messages_artwork_url, network_name, order_key, order_seed, override_audit_token_data, page_progression_direction, podcast_episode_guid, podcast_feed_url, podcast_type, policy_id, priority, preferred_asset_flavor, purchase_id, rate_limit, reason, ref_app, ref_url, release_date, release_year, rental_id, season_number, series_name, software_type, short_description, suppress_error_dialogs, store_account_id, store_account_name, store_artist_id, store_cohort, store_collection_id, store_composer_id, store_download_key, store_front_id, store_genre_id, store_item_id, store_match_status, store_publication_version, store_preorder_id, store_purchase_date, store_redownload_parameters, store_redownload_status, store_saga_id, store_software_version_id, store_transaction_id, store_url, store_xid, thumbnail_newsstand_binding_edge, thumbnail_newsstand_binding_type, thumbnail_url, timeout_interval, title, transaction_id, variant_id FROM _download;"}];
  [a1 executeSQL:@"DROP TABLE _download;"];
  *a2 = 10100;

  return [a1 setUserVersion:10100];
}

id sub_100175F60(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_music_show INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN show_composer INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN work_name TEXT;"];
  *a2 = 10300;

  return [a1 setUserVersion:10300];
}

id sub_100175FD0(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN is_hls INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_hls INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_premium INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN has_hdr INTEGER DEFAULT 0;"];
  *a2 = 11000;

  return [a1 setUserVersion:11000];
}

id sub_100176050(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN has_4k INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN has_dolby_vision INTEGER DEFAULT 0;"];
  *a2 = 11200;

  return [a1 setUserVersion:11200];
}

id sub_1001760B0(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN resource_timeout_interval REAL;"];
  *a2 = 13000;

  return [a1 setUserVersion:13000];
}

void sub_100176100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[NSNumber alloc] initWithLongLong:a2];
  v6 = objc_alloc_init(NSMutableDictionary);
  if (*(a1 + 40))
  {
    v7 = 0;
    do
    {
      v8 = *(a3 + 8 * v7);
      if (!v8)
      {
        v8 = [[NSNumber alloc] initWithLongLong:0];
      }

      v9 = [v6 objectForKey:v8];
      if (!v9)
      {
        v9 = objc_alloc_init(NSMutableArray);
        [v6 setObject:v9 forKey:v8];
      }

      [v9 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", qword_1002A9000[v7])}];

      ++v7;
    }

    while (v7 < *(a1 + 40));
  }

  if ([v6 count])
  {
    v18 = v5;
    v10 = objc_alloc_init(SSDownloadPolicy);
    v11 = objc_alloc_init(NSMutableArray);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v6);
          }

          v16 = *(*(&v19 + 1) + 8 * v15);
          v17 = objc_alloc_init(SSDownloadPolicyRule);
          [v17 setDownloadSizeLimit:{objc_msgSend(v16, "longLongValue")}];
          [v17 setNetworkTypes:{objc_msgSend(v6, "objectForKey:", v16)}];
          [v10 setPolicyRule:v17];
          [v11 addObject:v17];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    v5 = v18;
    [*(a1 + 32) setObject:v10 forKey:v18];
  }
}

void sub_100176368(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    v5 = [*(a1 + 32) objectForKey:?];
    if (!v5)
    {
      v5 = objc_alloc_init(SSDownloadPolicy);
      [*(a1 + 32) setObject:? forKey:?];
    }

    v4 = objc_alloc_init(SSDownloadPolicyRule);
    [v4 setPowerStates:2];
    [v5 unionPolicyRule:v4];
  }
}

void sub_100176DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100176DF8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100177044(void *a1)
{
  *(a1[4] + 8) = [*(a1[5] + 8) mutableCopyWithZone:a1[6]];
  *(a1[4] + 24) = [*(a1[5] + 24) copyWithZone:a1[6]];
  *(a1[4] + 16) = *(a1[5] + 16);
  *(a1[4] + 32) = [*(a1[5] + 32) copyWithZone:a1[6]];
  *(a1[4] + 48) = [*(a1[5] + 48) copyWithZone:a1[6]];
  *(a1[4] + 56) = *(a1[5] + 56);
  *(a1[4] + 64) = *(a1[5] + 64);
  *(a1[4] + 72) = *(a1[5] + 72);
  *(a1[4] + 80) = [*(a1[5] + 80) copyWithZone:a1[6]];
  result = [*(a1[5] + 88) copyWithZone:a1[6]];
  *(a1[4] + 88) = result;
  *(a1[4] + 96) = *(a1[5] + 96);
  *(a1[4] + 104) = *(a1[5] + 104);
  return result;
}

void sub_100177318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10017734C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_10017751C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100177534(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

double sub_1001776D8(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_1001777D8(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    result = [result length];
    if (result)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

void sub_1001778F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10017790C(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_100177A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100177A34(uint64_t a1)
{
  result = *(*(a1 + 32) + 48);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_100177B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100177B5C(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_100177C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100177C84(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 88) copy];
  v2 = *(*(a1 + 32) + 64);
  if (v2 > 0.00000011920929)
  {
    v3 = v2 * 1000.0;
    if (v3 < 4294967300.0)
    {
      [*(*(*(a1 + 40) + 8) + 40) setDurationInMilliseconds:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v3)}];
    }
  }

  v4 = [*(*(*(a1 + 40) + 8) + 40) kind];
  v5 = SSDownloadKindPodcast;
  result = [v4 isEqualToString:SSDownloadKindPodcast];
  if ((result & 1) != 0 || (result = [v4 isEqualToString:SSDownloadKindVideoPodcast], result))
  {
    v7 = *(*(a1 + 32) + 16);
    if (v7 == 2)
    {
      v8 = *(*(*(a1 + 40) + 8) + 40);
      v9 = SSDownloadKindVideoPodcast;
    }

    else
    {
      if (v7 != 1)
      {
        return result;
      }

      v8 = *(*(*(a1 + 40) + 8) + 40);
      v9 = v5;
    }

    return [v8 setKind:v9];
  }

  return result;
}

id sub_1001780E0(uint64_t a1)
{
  *(*(a1 + 32) + 16) = *(a1 + 48);
  *(*(a1 + 32) + 64) = *(a1 + 56);

  result = [*(a1 + 40) copy];
  *(*(a1 + 32) + 32) = result;
  return result;
}

void *sub_100178268(void *result)
{
  v1 = *(result[4] + 8);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] mutableCopy];
    *(v2[4] + 8) = result;
  }

  return result;
}

void *sub_1001783A4(void *result)
{
  v1 = *(result[4] + 32);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] copy];
    *(v2[4] + 32) = result;
  }

  return result;
}

double sub_1001784E4(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 64) = result;
  return result;
}

void *sub_100178568(void *result)
{
  v1 = *(result[4] + 24);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] copy];
    *(v2[4] + 24) = result;
  }

  return result;
}

void *sub_100178624(void *result)
{
  v1 = *(result[4] + 48);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] copy];
    *(v2[4] + 48) = result;
  }

  return result;
}

void *sub_1001786E0(void *result)
{
  v1 = *(result[4] + 80);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] copy];
    *(v2[4] + 80) = result;
  }

  return result;
}

void *sub_10017879C(void *result)
{
  v1 = *(result[4] + 88);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] copy];
    *(v2[4] + 88) = result;
  }

  return result;
}

id sub_1001789DC(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 8);
  if (v2)
  {
    if (!v3)
    {
      *(a1[5] + 8) = objc_alloc_init(NSMutableDictionary);
      v2 = a1[4];
      v3 = *(a1[5] + 8);
    }

    v4 = a1[6];

    return [v3 setObject:v2 forKey:v4];
  }

  else
  {
    v6 = a1[6];

    return [v3 removeObjectForKey:v6];
  }
}

void sub_100179544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001795F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100179608(void *a1, uint64_t a2, void *a3, char a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
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
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 & 2;
  }

  if (v15)
  {
    v16 = a1[4];
    *v43 = 138543362;
    *&v43[4] = v16;
    LODWORD(v42) = 12;
    v41 = v43;
    v17 = _os_log_send_and_compose_impl();

    if (!v17)
    {
      goto LABEL_13;
    }

    v14 = [NSString stringWithCString:v17 encoding:4, v43, v42];
    free(v17);
    v41 = v14;
    SSFileLog();
  }

LABEL_13:
  if (v10)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a5);
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
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
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

    v23 = a1[4];
    *v43 = 138543618;
    *&v43[4] = v23;
    *&v43[12] = 2112;
    *&v43[14] = v10;
    LODWORD(v42) = 22;
  }

  else if (a4)
  {
    if (v9)
    {
      objc_storeStrong((*(a1[7] + 8) + 40), a3);
      v18 = +[SSLogConfig sharedDaemonConfig];
      if (!v18)
      {
        v18 = +[SSLogConfig sharedConfig];
      }

      v24 = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        v25 = v24 | 2;
      }

      else
      {
        v25 = v24;
      }

      v21 = [v18 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 2;
      }

      if (!v26)
      {
        goto LABEL_49;
      }

      v27 = a1[4];
      *v43 = 138543362;
      *&v43[4] = v27;
      LODWORD(v42) = 12;
    }

    else
    {
      v18 = +[SSLogConfig sharedDaemonConfig];
      if (!v18)
      {
        v18 = +[SSLogConfig sharedConfig];
      }

      v37 = [v18 shouldLog];
      if ([v18 shouldLogToDisk])
      {
        v38 = v37 | 2;
      }

      else
      {
        v38 = v37;
      }

      v21 = [v18 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v39 = v38;
      }

      else
      {
        v39 = v38 & 2;
      }

      if (!v39)
      {
        goto LABEL_49;
      }

      v40 = a1[4];
      *v43 = 138543362;
      *&v43[4] = v40;
      LODWORD(v42) = 12;
    }
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
    v28 = ISError();
    v29 = *(a1[5] + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v31 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v32 = v31 | 2;
    }

    else
    {
      v32 = v31;
    }

    v21 = [v18 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v32;
    }

    else
    {
      v33 = v32 & 2;
    }

    if (!v33)
    {
      goto LABEL_49;
    }

    v34 = a1[4];
    *v43 = 138543362;
    *&v43[4] = v34;
    LODWORD(v42) = 12;
  }

  v35 = _os_log_send_and_compose_impl();

  if (!v35)
  {
    goto LABEL_50;
  }

  v21 = [NSString stringWithCString:v35 encoding:4, v43, v42, *v43];
  free(v35);
  SSFileLog();
LABEL_49:

LABEL_50:
  if (v9)
  {
    v36 = a4;
  }

  else
  {
    v36 = 0;
  }

  *(*(a1[8] + 8) + 24) = v36;
}

id sub_10017AEA8()
{
  result = objc_alloc_init(objc_opt_class());
  qword_100383F60 = result;
  return result;
}

uint64_t sub_10017AF68(void *a1, void *a2)
{
  v27 = [a2 database];
  v25 = objc_alloc_init(NSMutableSet);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = a1[4];
  v28 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v28)
  {
    v26 = *v32;
    p_vtable = DemoteApplicationOperation.vtable;
    v4 = &CFDictionaryGetValue_ptr;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v31 + 1) + 8 * i);
        v7 = [p_vtable + 352 newValueDictionaryWithItem:v6];
        v8 = v7;
        v9 = a1[5];
        if (v9)
        {
          [v7 setObject:v9 forKey:@"store_account_id"];
        }

        v29 = [objc_alloc((p_vtable + 352)) initWithPropertyValues:v8 inDatabase:v27];
        v10 = [v4[412] sharedDaemonConfig];
        if (!v10)
        {
          v10 = [v4[412] sharedConfig];
        }

        v11 = [v10 shouldLog];
        if ([v10 shouldLogToDisk])
        {
          v11 |= 2u;
        }

        if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_INFO))
        {
          v11 &= 2u;
        }

        if (v11)
        {
          v12 = v4;
          v13 = p_vtable;
          v14 = objc_opt_class();
          v15 = [v29 persistentID];
          v35 = 138412546;
          v36 = v14;
          p_vtable = v13;
          v4 = v12;
          v37 = 2048;
          v38 = v15;
          LODWORD(v23) = 22;
          v22 = &v35;
          v16 = _os_log_send_and_compose_impl();
          if (v16)
          {
            v17 = v16;
            v18 = [NSString stringWithCString:v16 encoding:4, &v35, v23];
            free(v17);
            v22 = v18;
            SSFileLog();
          }
        }

        if ([v6 itemKind])
        {
          [v25 addObject:{objc_msgSend(v6, "itemKind")}];
        }
      }

      v28 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v28);
  }

  v19 = a1[6];
  v20 = *(v19 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017B288;
  block[3] = &unk_100327350;
  block[4] = v19;
  block[5] = v25;
  dispatch_async(v20, block);

  return 1;
}

id sub_10017B560(uint64_t a1)
{
  [*(a1 + 32) _handleCheckQueueFinish:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 setCompletionBlock:0];
}

uint64_t sub_10017B700(void *a1, void *a2)
{
  v3 = [a2 database];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = a1[4];
  v4 = [obj countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = [PreorderEntity queryWithDatabase:v3 predicate:[SSSQLiteComparisonPredicate predicateWithProperty:@"store_preorder_id" equalToValue:*(*(&v13 + 1) + 8 * v7)]];
      v17 = @"kind";
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10017B8CC;
      v12[3] = &unk_10032A488;
      v9 = a1[6];
      v12[4] = a1[5];
      v12[5] = v3;
      v12[6] = v9;
      [v8 enumeratePersistentIDsAndProperties:&v17 count:1 usingBlock:v12];
      if (*(*(a1[6] + 8) + 24) != 1)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [obj countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        return *(*(a1[6] + 8) + 24);
      }
    }
  }

  return *(*(a1[6] + 8) + 24);
}

void sub_10017B8CC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  if (*a3)
  {
    [*(a1 + 32) addObject:?];
  }

  v8 = [[PreorderEntity alloc] initWithPersistentID:a2 inDatabase:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [(PreorderEntity *)v8 deleteFromDatabase];
  *a5 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
}

void sub_10017BA04(uint64_t a1, void *a2, void *a3)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if ([a2 hasEntitlements])
  {
    value = xpc_dictionary_get_value(*(a1 + 40), "1");
    v7 = value;
    if (value && xpc_get_type(value) == &_xpc_type_array)
    {
      v8 = objc_alloc_init(NSMutableSet);
      v9 = +[DownloadsDatabase downloadsDatabase];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10017BCFC;
      v21[3] = &unk_10032A4D8;
      v10 = *(a1 + 32);
      v21[4] = v7;
      v21[5] = v10;
      v21[6] = v8;
      v21[7] = &v22;
      [v9 modifyUsingTransactionBlock:v21];
      if (*(v23 + 24) == 1)
      {
        v11 = objc_alloc_init(CancelPreordersOperation);
        [+[ISOperationQueue mainQueue](ISOperationQueue "mainQueue")];
        [*(a1 + 32) _sendChangeNotificationForKinds:v8];
      }
    }
  }

  else
  {
    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v13 = [v12 shouldLog];
    v14 = [v12 shouldLogToDisk];
    v15 = [v12 OSLogObject];
    if (v14)
    {
      v13 |= 2u;
    }

    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v16 = objc_opt_class();
      v17 = [a2 clientIdentifier];
      v26 = 138412546;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      LODWORD(v20) = 22;
      v18 = _os_log_send_and_compose_impl();
      if (v18)
      {
        v19 = v18;
        [NSString stringWithCString:v18 encoding:4, &v26, v20];
        free(v19);
        SSFileLog();
      }
    }
  }

  xpc_dictionary_set_BOOL(a3, "0", *(v23 + 24));
  _Block_object_dispose(&v22, 8);
}

void sub_10017BCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10017BCFC(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  count = xpc_array_get_count(*(a1 + 32));
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

  if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    *v21 = 138412546;
    *&v21[4] = objc_opt_class();
    *&v21[12] = 2048;
    *&v21[14] = count;
    LODWORD(v18) = 22;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      [NSString stringWithCString:v8 encoding:4, v21, v18];
      free(v9);
      SSFileLog();
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = count > 0;
  if (count >= 1)
  {
    for (i = 0; i != count; ++i)
    {
      if (*(*(*(a1 + 56) + 8) + 24) != 1)
      {
        break;
      }

      v11 = [[PreorderEntity alloc] initWithPersistentID:xpc_array_get_int64(*(a1 + 32) inDatabase:i), v3];
      *v21 = @"store_account_id";
      *&v21[8] = @"kind";
      *&v21[16] = @"store_preorder_id";
      [(PreorderEntity *)v11 getValues:v19 forProperties:v21 count:3];
      if (v19[0] && v20)
      {
        v12 = [NSDictionary alloc];
        v13 = [v12 initWithObjectsAndKeys:{v19[0], @"store_account_id", v20, @"store_item_id", 0}];
        v14 = [[CanceledPreorderEntity alloc] initWithPropertyValues:v13 inDatabase:v3];
        *(*(*(a1 + 56) + 8) + 24) = v14 != 0;
      }

      if (v19[1])
      {
        [*(a1 + 48) addObject:?];
      }

      v15 = *(*(a1 + 56) + 8);
      if (*(v15 + 24) == 1)
      {
        v16 = [(PreorderEntity *)v11 deleteFromDatabase];
        v15 = *(*(a1 + 56) + 8);
      }

      else
      {
        v16 = 0;
      }

      *(v15 + 24) = v16;
    }
  }

  return *(*(*(a1 + 56) + 8) + 24);
}

id sub_10017C0A0(uint64_t a1, void *a2)
{
  result = [a2 hasEntitlements];
  if (result)
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

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v13 = 138412546;
      v14 = objc_opt_class();
      v15 = 2112;
      v16 = [a2 clientIdentifier];
      LODWORD(v12) = 22;
      v11 = &v13;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [NSString stringWithCString:v8 encoding:4, &v13, v12];
        free(v9);
        v11 = v10;
        SSFileLog();
      }
    }

    return [*(a1 + 32) checkPreorderQueue];
  }

  return result;
}

void sub_10017C2B8(uint64_t a1, void *a2, void *a3)
{
  v5 = xpc_array_create(0, 0);
  if ([a2 hasEntitlements])
  {
    v6 = [objc_msgSend(a2 "itemKinds")];
    if ([v6 count])
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10017C52C;
      v13[3] = &unk_100329810;
      v13[4] = [SSSQLiteCompoundPredicate predicateWithProperty:@"kind" values:v6 comparisonType:1];
      v13[5] = [NSArray arrayWithObject:@"release_date"];
      v13[6] = v5;
      [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
    }
  }

  else
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

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v14 = 138412546;
      v15 = objc_opt_class();
      v16 = 2112;
      v17 = [a2 clientIdentifier];
      LODWORD(v12) = 22;
      v10 = _os_log_send_and_compose_impl();
      if (v10)
      {
        v11 = v10;
        [NSString stringWithCString:v10 encoding:4, &v14, v12];
        free(v11);
        SSFileLog();
      }
    }
  }

  xpc_dictionary_set_value(a3, "0", v5);
  xpc_release(v5);
}

void sub_10017C52C(void *a1, void *a2)
{
  v3 = +[PreorderEntity queryWithDatabase:predicate:orderingProperties:](PreorderEntity, "queryWithDatabase:predicate:orderingProperties:", [a2 database], a1[4], a1[5]);
  v4 = +[PreorderEntity allProperties];
  v5 = malloc_type_malloc(8 * [v4 count], 0x80040B8603338uLL);
  [v4 getObjects:v5 range:{0, objc_msgSend(v4, "count")}];
  v6 = [v4 count];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017C638;
  v7[3] = &unk_100327288;
  v7[4] = a1[6];
  [v3 enumeratePersistentIDsAndProperties:v5 count:v6 usingBlock:v7];
  free(v5);
}

void sub_10017C638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [PreorderEntity newClientPreorderWithPersistentID:a2 allValues:a3];
  v4 = [v6 copyXPCEncoding];
  if (v4)
  {
    v5 = v4;
    xpc_array_append_value(*(a1 + 32), v4);
    xpc_release(v5);
  }
}

void sub_10017C7CC(uint64_t a1, void *a2)
{
  if ([a2 hasEntitlements])
  {
    value = xpc_dictionary_get_value(*(a1 + 40), "1");
    if (value && xpc_get_type(value) == &_xpc_type_array)
    {
      v5 = SSXPCCreateCFObjectFromXPCObject();
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

      if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v23 = 138412802;
        v24 = objc_opt_class();
        v25 = 2112;
        v26 = [a2 clientIdentifier];
        v27 = 2112;
        v28 = v5;
        LODWORD(v22) = 32;
        v21 = &v23;
        v9 = _os_log_send_and_compose_impl();
        if (v9)
        {
          v10 = v9;
          v11 = [NSString stringWithCString:v9 encoding:4, &v23, v22];
          free(v10);
          v21 = v11;
          SSFileLog();
        }
      }

      [a2 setItemKinds:{+[NSSet setWithArray:](NSSet, "setWithArray:", v5, v21)}];
    }

    v12 = xpc_dictionary_get_value(*(a1 + 40), "2");
    if (v12)
    {
      v13 = v12;
      if (xpc_get_type(v12) == &_xpc_type_endpoint)
      {
        v14 = xpc_connection_create_from_endpoint(v13);
        [a2 setOutputConnectionWithConnection:v14];
        v15 = xpc_dictionary_create(0, 0, 0);
        [objc_msgSend(a2 "outputConnection")];
        xpc_release(v15);
        xpc_release(v14);
      }
    }
  }

  else
  {
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

    if (!os_log_type_enabled([v16 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v23 = 138412546;
      v24 = objc_opt_class();
      v25 = 2112;
      v26 = [a2 clientIdentifier];
      LODWORD(v22) = 22;
      v19 = _os_log_send_and_compose_impl();
      if (v19)
      {
        v20 = v19;
        [NSString stringWithCString:v19 encoding:4, &v23, v22];
        free(v20);
        SSFileLog();
      }
    }
  }
}

id sub_10017CBB0(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  result = [*(*(a1 + 40) + 8) count];
  v4 = result;
  while (v4-- >= 1)
  {
    result = [*(*(a1 + 40) + 8) objectAtIndex:v4];
    if (result == v2)
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

      if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v14 = 138412546;
        v15 = objc_opt_class();
        v16 = 2112;
        v17 = v2;
        LODWORD(v13) = 22;
        v12 = &v14;
        v9 = _os_log_send_and_compose_impl();
        if (v9)
        {
          v10 = v9;
          v11 = [NSString stringWithCString:v9 encoding:4, &v14, v13];
          free(v10);
          v12 = v11;
          SSFileLog();
        }
      }

      [v2 setOutputConnectionWithConnection:{0, v12}];
      return [*(*(a1 + 40) + 8) removeObjectAtIndex:v4];
    }
  }

  return result;
}

void sub_10017CF70(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(SSSQLiteQueryDescriptor);
  [v4 setEntityClass:objc_opt_class()];
  [v4 setReturnsDistinctEntities:1];
  v5 = [[SSSQLiteQuery alloc] initWithDatabase:objc_msgSend(a2 descriptor:{"database"), v4}];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10017D0A0;
  v6[3] = &unk_100327288;
  v6[4] = *(a1 + 32);
  v7 = @"store_account_id";
  [v5 enumeratePersistentIDsAndProperties:&v7 count:1 usingBlock:v6];
}

id *sub_10017D0A0(id *result, uint64_t a2, void *a3)
{
  if (*a3)
  {
    return [result[4] addObject:?];
  }

  return result;
}

id sub_10017D448(uint64_t a1, void *a2)
{
  result = [objc_msgSend(*(a1 + 32) _preorderQueryWithAccountID:*(a1 + 40) database:{objc_msgSend(a2, "database")), "countOfEntities"}];
  *(*(*(a1 + 48) + 8) + 24) = result != *(a1 + 56);
  return result;
}

id sub_10017D4A4(uint64_t a1)
{
  [*(a1 + 32) _handleLoadQueueFinish:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 setCompletionBlock:0];
}

uint64_t sub_10017D57C(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  v4 = [*(a1 + 32) accountIdentifier];
  v5 = objc_alloc_init(NSMutableSet);
  v6 = objc_alloc_init(NSMutableSet);
  v7 = objc_alloc_init(NSMutableDictionary);
  v55 = v4;
  v59 = v3;
  v8 = [*(a1 + 40) _preorderQueryWithAccountID:v4 database:v3];
  v76[0] = @"kind";
  v76[1] = @"store_preorder_id";
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_10017DCA8;
  v69[3] = &unk_100329AE8;
  obj = v6;
  v69[4] = v6;
  v69[5] = v5;
  v53 = v5;
  v69[6] = v7;
  [v8 enumeratePersistentIDsAndProperties:v76 count:2 usingBlock:v69];
  v58 = a1;
  v9 = [*(a1 + 32) preorderItems];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v65 objects:v75 count:16];
  v56 = v7;
  if (v10)
  {
    v11 = v10;
    v12 = *v66;
    v54 = *v66;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v66 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v65 + 1) + 8 * i);
        v15 = [v14 preOrderIdentifier];
        if (v15)
        {
          v16 = [v7 objectForKey:v15];
          if (v16)
          {
            v17 = v16;
            v18 = +[SSLogConfig sharedDaemonConfig];
            if (!v18)
            {
              v18 = +[SSLogConfig sharedConfig];
            }

            v19 = [v18 shouldLog];
            if ([v18 shouldLogToDisk])
            {
              v19 |= 2u;
            }

            if (!os_log_type_enabled([v18 OSLogObject], OS_LOG_TYPE_INFO))
            {
              v19 &= 2u;
            }

            if (v19)
            {
              v20 = objc_opt_class();
              v71 = 138412546;
              v72 = v20;
              v73 = 2112;
              v74 = v17;
              LODWORD(v52) = 22;
              v50 = &v71;
              v21 = _os_log_send_and_compose_impl();
              if (v21)
              {
                v22 = v21;
                v23 = [NSString stringWithCString:v21 encoding:4, &v71, v52];
                free(v22);
                v50 = v23;
                SSFileLog();
              }
            }

            v24 = -[PreorderEntity initWithPersistentID:inDatabase:]([PreorderEntity alloc], "initWithPersistentID:inDatabase:", [v17 longLongValue], v59);
            [(PreorderEntity *)v24 setValuesWithItem:v14];
            [obj removeObject:v17];
          }

          else
          {
            v25 = v9;
            v24 = [PreorderEntity newValueDictionaryWithItem:v14];
            [(PreorderEntity *)v24 setObject:v55 forKey:@"store_account_id"];
            v26 = [[PreorderEntity alloc] initWithPropertyValues:v24 inDatabase:v59];
            v27 = +[SSLogConfig sharedDaemonConfig];
            if (!v27)
            {
              v27 = +[SSLogConfig sharedConfig];
            }

            v28 = [v27 shouldLog];
            if ([v27 shouldLogToDisk])
            {
              v28 |= 2u;
            }

            if (os_log_type_enabled([v27 OSLogObject], OS_LOG_TYPE_INFO))
            {
              v29 = v28;
            }

            else
            {
              v29 = v28 & 2;
            }

            if (v29)
            {
              v30 = objc_opt_class();
              v31 = [(PreorderEntity *)v26 persistentID];
              v71 = 138412546;
              v72 = v30;
              v73 = 2048;
              v74 = v31;
              LODWORD(v52) = 22;
              v50 = &v71;
              v32 = _os_log_send_and_compose_impl();
              if (v32)
              {
                v33 = v32;
                v34 = [NSString stringWithCString:v32 encoding:4, &v71, v52];
                free(v33);
                v50 = v34;
                SSFileLog();
              }
            }

            if ([v14 itemKind])
            {
              [v53 addObject:{objc_msgSend(v14, "itemKind")}];
            }

            v7 = v56;
            v9 = v25;
            v12 = v54;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v65 objects:v75 count:16];
    }

    while (v11);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v35 = [obj countByEnumeratingWithState:&v61 objects:v70 count:{16, v50}];
  if (v35)
  {
    v36 = v35;
    v37 = *v62;
    do
    {
      for (j = 0; j != v36; j = j + 1)
      {
        if (*v62 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v61 + 1) + 8 * j);
        v40 = -[PreorderEntity initWithPersistentID:inDatabase:]([PreorderEntity alloc], "initWithPersistentID:inDatabase:", [v39 longLongValue], v59);
        v41 = +[SSLogConfig sharedDaemonConfig];
        if (!v41)
        {
          v41 = +[SSLogConfig sharedConfig];
        }

        v42 = [v41 shouldLog];
        if ([v41 shouldLogToDisk])
        {
          v42 |= 2u;
        }

        if (!os_log_type_enabled([v41 OSLogObject], OS_LOG_TYPE_INFO))
        {
          v42 &= 2u;
        }

        if (v42)
        {
          v43 = objc_opt_class();
          v71 = 138412546;
          v72 = v43;
          v73 = 2112;
          v74 = v39;
          LODWORD(v52) = 22;
          v51 = &v71;
          v44 = _os_log_send_and_compose_impl();
          if (v44)
          {
            v45 = v44;
            v46 = [NSString stringWithCString:v44 encoding:4, &v71, v52];
            free(v45);
            v51 = v46;
            SSFileLog();
          }
        }

        [(PreorderEntity *)v40 deleteFromDatabase];
      }

      v36 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
    }

    while (v36);
  }

  v47 = *(v58 + 40);
  v48 = *(v47 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017DD40;
  block[3] = &unk_100327350;
  block[4] = v47;
  block[5] = v53;
  dispatch_async(v48, block);

  return 1;
}

uint64_t sub_10017DCA8(id *a1, uint64_t a2, void *a3)
{
  v8 = [[NSNumber alloc] initWithLongLong:a2];
  v5 = [a1[4] addObject:?];
  if (*a3)
  {
    v5 = [a1[5] addObject:?];
  }

  v6 = v8;
  if (a3[1])
  {
    v5 = [a1[6] setObject:v8 forKey:?];
    v6 = v8;
  }

  return _objc_release_x1(v5, v6);
}

void sub_10017DDF0(uint64_t a1)
{
  (*(*(a1 + 56) + 16))(*(a1 + 56), [*(a1 + 32) _clientForConnection:*(a1 + 40)]);
  xpc_release(*(a1 + 40));
  v2 = *(a1 + 48);

  xpc_release(v2);
}

void sub_10017DEF4(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  (*(*(a1 + 56) + 16))(*(a1 + 56), [*(a1 + 40) _clientForConnection:*(a1 + 48)], reply);
  xpc_connection_send_message(*(a1 + 48), reply);
  xpc_release(reply);
  xpc_release(*(a1 + 48));
  v3 = *(a1 + 32);

  xpc_release(v3);
}

void sub_10017E4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10017E500(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = v3;
  v6 = [v5 appState];
  if ([v6 isInstalled])
  {
    v7 = *(a1 + 48);
    v8 = *(*(*(a1 + 40) + 8) + 24);

    if (v8 < v7)
    {
      v9 = [SSPurchaseReceipt vppStateFlagsWithProxy:v5];
      v10 = [*(a1 + 32) _optionsWithVPPState:v9];
      if (v10)
      {
        [*(a1 + 32) _refreshReceiptForApplication:v5 withOptions:v10 vppState:v9 error:0];
        ++*(*(*(a1 + 40) + 8) + 24);
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v11 = [v5 appState];
  v12 = [v11 isInstalled];

  if ((v12 & 1) == 0)
  {
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v13 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v10 OSLogObject];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v16 = objc_opt_class();
      v17 = v16;
      [v5 bundleIdentifier];
      v20 = 138543618;
      v21 = v16;
      v23 = v22 = 2114;
      LODWORD(v19) = 22;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_18:

        goto LABEL_19;
      }

      v15 = [NSString stringWithCString:v18 encoding:4, &v20, v19];
      free(v18);
      SSFileLog();
    }

    goto LABEL_18;
  }

LABEL_19:

  objc_autoreleasePoolPop(v4);
}

id sub_1001818DC(uint64_t a1, void *a2)
{
  v3 = +[CanceledPreorderEntity queryWithDatabase:predicate:](CanceledPreorderEntity, "queryWithDatabase:predicate:", [a2 database], 0);
  v7[0] = @"store_account_id";
  v7[1] = @"store_item_id";
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001819C8;
  v5[3] = &unk_1003272D8;
  v6 = *(a1 + 32);
  return [v3 enumeratePersistentIDsAndProperties:v7 count:2 usingBlock:v5];
}

void sub_1001819C8(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 && a3[1])
  {
    v6 = [[NSNumber alloc] initWithLongLong:a2];
    v5 = [*(a1 + 32) _newURLOperationWithItemID:a3[1] accountID:*a3];
    [*(a1 + 40) setObject:v5 forKey:v6];
  }
}

uint64_t sub_100181A74(uint64_t a1, void *a2)
{
  v2 = -[CanceledPreorderEntity initWithPersistentID:inDatabase:]([CanceledPreorderEntity alloc], "initWithPersistentID:inDatabase:", [*(a1 + 32) longLongValue], objc_msgSend(a2, "database"));
  [(CanceledPreorderEntity *)v2 deleteFromDatabase];

  return 1;
}

void sub_1001835BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100183630;
  v4[3] = &unk_100329108;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

id sub_100183630(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _sendDidFinishWithResponseFlags:v5];
}

void sub_100183860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100183894(uint64_t a1)
{
  result = *(*(a1 + 32) + 136);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void *sub_100183954(void *result)
{
  v1 = *(result[4] + 136);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] copy];
    *(v2[4] + 136) = result;
  }

  return result;
}

id sub_100183A5C(void *a1)
{
  result = [*(a1[4] + 136) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_100183ECC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_alloc_init(SSVMediaSocialPostArtist);
  [v5 setIdentifier:*a3];
  [v5 setName:a3[1]];
  [*(a1 + 32) addObject:v5];
}

void sub_1001842F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [DirectUploadArtistEntity newEntityValuesWithMediaSocialArtist:a2];
  [v7 setObject:*(a1 + 32) forKey:@"upload_id"];
  v5 = [[NSNumber alloc] initWithUnsignedInteger:a3];
  [v7 setObject:v5 forKey:@"order_index"];
  if (*(a1 + 40))
  {
    [v7 addEntriesFromDictionary:v7];
  }

  v6 = [[DirectUploadArtistEntity alloc] initWithPropertyValues:v7 inDatabase:*(a1 + 48)];
  if (v6)
  {
    [*(a1 + 56) addObject:v6];
  }
}

void sub_100184A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(SSVDirectUpload);
  if (*(a3 + 16))
  {
    if (*(a3 + 24))
    {
      v8 = [[NSDictionary alloc] initWithObjectsAndKeys:{*(a3 + 24), NSLocalizedDescriptionKey, 0}];
    }

    else
    {
      v8 = 0;
    }

    v9 = [[NSError alloc] initWithDomain:*(a3 + 16) code:objc_msgSend(*(a3 + 8) userInfo:{"integerValue"), v8}];
    [v7 setError:v9];
  }

  [v7 setCategoryName:*a3];
  [v7 setExplicitContent:{objc_msgSend(*(a3 + 32), "BOOLValue")}];
  [v7 setPersistentIdentifier:a2];
  [v7 setState:{sub_100184C00(objc_msgSend(*(a3 + 40), "integerValue"))}];
  [v7 setSubtitle:*(a3 + 48)];
  if (*(a3 + 56))
  {
    v10 = [[NSURL alloc] initWithString:*(a3 + 56)];
    [v7 setThumbnailImageURL:v10];
  }

  [v7 setTitle:*(a3 + 64)];
  [v7 _setUploadKind:*(a3 + 72)];
  [v7 setUTI:*(a3 + 80)];
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v6);
}

unint64_t sub_100184C00(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

id sub_100185A9C()
{
  result = objc_alloc_init(objc_opt_class());
  qword_100383F78 = result;
  return result;
}

id sub_100185B38(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100185BAC;
  v3[3] = &unk_10032A748;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 _cancelErrorsPassingTest:v3];
}

void sub_100185C44(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 canCoalesceWithError:v2])
        {
          [v8 addDownloadIdentifiers:{objc_msgSend(v2, "downloadIdentifiers")}];
          v2 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v9 = [v2 copyUserNotification];
  if (v9)
  {
    v10 = v9;
    if (v2 == *(a1 + 32))
    {
      [*(*(a1 + 40) + 16) addObject:v2];
    }

    else
    {
      v11 = [v2 _notification];
      if (v11)
      {
        [+[UserNotificationCenter defaultCenter](UserNotificationCenter "defaultCenter")];
LABEL_17:

        return;
      }
    }

    [*(a1 + 40) _scheduleErrorDisplay:v2];
    goto LABEL_17;
  }
}

void sub_100186138(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) performActionForResponseFlags:a2];
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001861C8;
  v6[3] = &unk_100327350;
  v5 = *(a1 + 32);
  v6[4] = v3;
  v6[5] = v5;
  dispatch_async(v4, v6);
}

uint64_t sub_100186E54(uint64_t a1, void *a2)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(*(a1 + 32) + 8);
  result = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v12;
    v7 = SSDownloadPhaseCanceled;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        LODWORD(v9) = [a2 finishDownloadWithID:objc_msgSend(v9 finalPhase:"longLongValue") updatePipeline:{v7, 0}];
        objc_autoreleasePoolPop(v10);
        if (!v9)
        {
          return 0;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    return 1;
  }

  return result;
}

id sub_1001881DC()
{
  result = objc_alloc_init(objc_opt_class());
  qword_100383F88 = result;
  return result;
}

void sub_1001882F8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) count];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(a1 + 32) + 16) indexOfObjectIdenticalTo:*(*(&v12 + 1) + 8 * i)];
        if (v8 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [*(*(a1 + 32) + 16) removeObjectAtIndex:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  if (v2 >= 1 && ![*(*(a1 + 32) + 16) count])
  {
    [+[Daemon daemon](Daemon "daemon")];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100188500;
  block[3] = &unk_100327378;
  block[4] = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);
  global_queue = dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100188510;
  v10[3] = &unk_100327378;
  v10[4] = *(a1 + 40);
  dispatch_async(global_queue, v10);
}

id sub_100188510(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  result = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v7 + 1) + 8 * v5) completionBlock];
        if (v6)
        {
          v6[2](v6, 1431196227);
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

id sub_10018875C(uint64_t a1)
{
  [*(a1 + 32) setCompletionBlock:*(a1 + 48)];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 _showPreparedNotification:v3];
}

id sub_100188914(void *a1)
{
  *(*(a1[6] + 8) + 40) = [[UserNotification alloc] initWithDictionary:a1[7] options:a1[8] completionBlock:a1[5]];
  v2 = a1[4];
  v3 = *(*(a1[6] + 8) + 40);

  return [v2 _showPreparedNotification:v3];
}

void sub_100188A70(uint64_t a1)
{
  [*(a1 + 32) updateWithDictionary:*(a1 + 40) options:*(a1 + 48)];
  v2 = *(a1 + 40);

  CFRelease(v2);
}

id sub_100188B8C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) count];
  v3 = v2;
  while (v3-- >= 1)
  {
    v5 = [*(*(a1 + 32) + 16) objectAtIndex:v3];
    if ([v5 userNotification] == *(a1 + 40))
    {
      v6 = v5;
      [*(*(a1 + 32) + 16) removeObjectAtIndex:v3];
      if (v6)
      {
        v7 = [v6 completionBlock];
        if (v7)
        {
          v8 = v7;
          global_queue = dispatch_get_global_queue(0, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100188D24;
          block[3] = &unk_10032A850;
          v10 = *(a1 + 48);
          block[4] = v8;
          block[5] = v10;
          dispatch_async(global_queue, block);
        }

        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100188D38;
        v13[3] = &unk_100327378;
        v13[4] = v6;
        dispatch_async(&_dispatch_main_q, v13);
      }

      break;
    }
  }

  v11 = +[Daemon daemon];
  result = [v11 endShowingDialog];
  if (v2 >= 1)
  {
    result = [*(*(a1 + 32) + 16) count];
    if (!result)
    {
      return [v11 releaseKeepAliveAssertion:@"com.apple.itunesstored.UserNotificationCenter"];
    }
  }

  return result;
}

id sub_100188E98(uint64_t a1)
{
  [*(a1 + 32) beginShowingDialog];
  v2 = *(a1 + 40);

  return [v2 show];
}

id sub_1001890D4(uint64_t a1, uint64_t a2)
{
  v4 = +[UserNotificationCenter defaultCenter];

  return [v4 _finishUserNotification:a1 withResponseFlags:a2];
}

void sub_10018B52C(id a1)
{
  v3 = [[NSArray alloc] initWithObjects:{CPSharedResourcesDirectory(), @"Media", @"Downloads", 0}];
  v1 = [NSString pathWithComponents:v3];
  v2 = qword_100383F98;
  qword_100383F98 = v1;
}

void sub_10018B664()
{
  v27 = 0;
  v0 = container_system_path_for_identifier();
  if (v0)
  {
    v5 = v0;
    v6 = [[NSString alloc] initWithCString:v0 encoding:4];
    v7 = [[NSArray alloc] initWithObjects:{v6, @"Library", @"Caches", @"Scratch", 0}];
    v8 = [NSString pathWithComponents:v7];
    v9 = qword_100383FA8;
    qword_100383FA8 = v8;

    if (![qword_100383FA8 length])
    {
      goto LABEL_30;
    }

    v10 = objc_opt_new();
    [v10 createDirectoryAtPath:qword_100383FA8 withIntermediateDirectories:1 attributes:0 error:0];

    v11 = open([qword_100383FA8 UTF8String], 0x1000000);
    if (v11)
    {
      v12 = v11;
      fcntl(v11, 64, 4);
      close(v12);
    }

    v13 = [NSURL fileURLWithPath:qword_100383FA8 isDirectory:1];
    v14 = [NSNumber numberWithBool:1];
    v26 = 0;
    v15 = [v13 setResourceValue:v14 forKey:NSURLIsExcludedFromBackupKey error:&v26];
    v16 = v26;

    if (v15)
    {
LABEL_29:

LABEL_30:
      free(v5);
      goto LABEL_31;
    }

    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v18 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = v18 | 2;
    }

    else
    {
      v19 = v18;
    }

    v20 = [v17 OSLogObject];
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v21 = objc_opt_class();
      v28 = 138412546;
      v29 = v21;
      v30 = 2112;
      v31 = v16;
      v22 = v21;
      LODWORD(v25) = 22;
      v23 = _os_log_send_and_compose_impl();

      if (!v23)
      {
LABEL_28:

        goto LABEL_29;
      }

      v20 = [NSString stringWithCString:v23 encoding:4, &v28, v25];
      free(v23);
      SSFileLog();
    }

    goto LABEL_28;
  }

  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  v1 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v2 = v1 | 2;
  }

  else
  {
    v2 = v1;
  }

  v7 = [v6 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v2 &= 2u;
  }

  if (!v2)
  {
    goto LABEL_31;
  }

  v28 = 138412546;
  v29 = objc_opt_class();
  v30 = 2048;
  v31 = v27;
  v3 = v29;
  LODWORD(v24) = 22;
  v4 = _os_log_send_and_compose_impl();

  if (v4)
  {
    v7 = [NSString stringWithCString:v4 encoding:4, &v28, v24];
    free(v4);
    SSFileLog();
LABEL_31:
  }
}

void sub_10018C4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10018C510(uint64_t a1, void *a2)
{
  v3 = [a2 info];
  v5 = [v3 objectForSetting:1];

  v4 = v5;
  *(*(*(a1 + 40) + 8) + 24) = [v5 UTF8String];
  dispatch_semaphore_signal(*(*(a1 + 32) + 112));
}

void sub_10018C80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10018C824(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10018C83C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  if (SSIsDaemon())
  {
    v7 = [LSPlugInKitProxy pluginKitProxyForIdentifier:*(a1 + 32)];
    v8 = v7;
    if (!v15 || ([v7 protocol], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "isEqualToString:", v15)))
    {
      v9 = [v8 containingBundle];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v8 containingBundle];
        v11 = [v10 bundleType];
        v12 = [v11 isEqualToString:LSUserApplicationType];

        if (v15)
        {

          if ((v12 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else if (!v12)
        {
LABEL_13:

          goto LABEL_14;
        }

        v13 = [v8 containingBundle];
        v14 = *(*(a1 + 40) + 8);
        v4 = *(v14 + 40);
        *(v14 + 40) = v13;
      }

      else
      {

        if (!v15)
        {
          goto LABEL_13;
        }
      }
    }

    goto LABEL_13;
  }

LABEL_14:
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

uint64_t sub_10018D1A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    v5 = [[SKProduct alloc] initWithXPCEncoding:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [(SKProduct *)v5 _localeIdentifier];
      if (v7)
      {
        v8 = [*(a1 + 32) objectForKey:v7];
        if (!v8)
        {
          v8 = [[NSLocale alloc] initWithLocaleIdentifier:v7];
          if (v8)
          {
            [*(a1 + 32) setObject:v8 forKey:v7];
          }
        }

        [(SKProduct *)v6 _setPriceLocale:v8];
        [(SKProduct *)v6 _setLocaleIdentifier:0];
      }

      [*(a1 + 40) addObject:v6];
    }
  }

  return 1;
}

id sub_10018D55C(uint64_t a1)
{
  v1 = sub_10018D5F0(a1);
  v2 = v1;
  if (v1)
  {
    v3 = sub_10018D67C(v1);
    if (v3)
    {
      v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:200 options:0 error:0];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_10018D5F0(uint64_t a1)
{
  v1 = [NSKeyedArchiver archivedDataWithRootObject:a1 requiringSecureCoding:1 error:0];
  if ([v1 length])
  {
    v2 = xpc_data_create([v1 bytes], objc_msgSend(v1, "length"));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

CFDictionaryRef sub_10018D67C(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_12;
  }

  type = xpc_get_type(v1);
  if (type == &_xpc_type_BOOL)
  {
    value = xpc_BOOL_get_value(v2);
    v6 = &kCFBooleanTrue;
    if (!value)
    {
      v6 = &kCFBooleanFalse;
    }

    goto LABEL_15;
  }

  if (type == &_xpc_type_data)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(v2);
    length = xpc_data_get_length(v2);
    v7 = CFDataCreate(kCFAllocatorSystemDefault, bytes_ptr, length);
    goto LABEL_24;
  }

  if (type == &_xpc_type_date)
  {
    v10 = xpc_date_get_value(v2);
    v7 = CFDateCreate(kCFAllocatorSystemDefault, v10 / 1000000000.0 - kCFAbsoluteTimeIntervalSince1970);
    goto LABEL_24;
  }

  if (type == &_xpc_type_double)
  {
    *&valuePtr[0] = xpc_double_get_value(v2);
    v7 = CFNumberCreate(kCFAllocatorSystemDefault, kCFNumberDoubleType, valuePtr);
    goto LABEL_24;
  }

  if (type == &_xpc_type_int64)
  {
    *&valuePtr[0] = xpc_int64_get_value(v2);
    v7 = CFNumberCreate(kCFAllocatorSystemDefault, kCFNumberSInt64Type, valuePtr);
    goto LABEL_24;
  }

  if (type == &_xpc_type_null)
  {
    v6 = &kCFNull;
LABEL_15:
    v7 = CFRetain(*v6);
LABEL_24:
    v4 = v7;
    goto LABEL_25;
  }

  if (type == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(v2);
    v7 = CFStringCreateWithCString(kCFAllocatorSystemDefault, string_ptr, 0x8000100u);
    goto LABEL_24;
  }

  if (type == &_xpc_type_uuid)
  {
    v26 = *xpc_uuid_get_bytes(v2);
    v7 = CFUUIDCreateFromUUIDBytes(kCFAllocatorSystemDefault, v26);
    goto LABEL_24;
  }

  if (type == &_xpc_type_array)
  {
    v7 = sub_10018E0D0(v2);
    goto LABEL_24;
  }

  if (type != &_xpc_type_dictionary)
  {
LABEL_12:
    v4 = 0;
    goto LABEL_25;
  }

  count = xpc_dictionary_get_count(v2);
  v14 = count;
  v15 = 16 * count;
  memset(valuePtr, 0, 512);
  if (2 * count > 0x100)
  {
    v16 = malloc_type_malloc(16 * count, 0xC0040B8AA526DuLL);
    bzero(v16, v15);
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = valuePtr;
    __memset_chk();
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_10018E324;
  applier[3] = &unk_10032AA08;
  applier[4] = &v21;
  applier[5] = v16;
  applier[6] = v14;
  xpc_dictionary_apply(v2, applier);
  v17 = v22[3];
  v18 = v16 + 8 * v14;
  if (v14 == v17)
  {
    v4 = CFDictionaryCreate(kCFAllocatorSystemDefault, v16, v16 + v14, v14, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v17 = v22[3];
  }

  else
  {
    v4 = 0;
  }

  if (v17 >= 1)
  {
    v19 = 0;
    do
    {
      CFRelease(*(v16 + v19));
      CFRelease(*&v18[8 * v19++]);
    }

    while (v19 < v22[3]);
  }

  if (v16 != valuePtr)
  {
    free(v16);
  }

  _Block_object_dispose(&v21, 8);
LABEL_25:

  return v4;
}