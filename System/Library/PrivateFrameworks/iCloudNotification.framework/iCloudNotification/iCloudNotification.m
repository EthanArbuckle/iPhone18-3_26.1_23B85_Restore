uint64_t sub_100002168()
{
  if (qword_100063660 != -1)
  {
    sub_1000370A0();
  }

  return byte_100063658;
}

void sub_100002248(uint64_t a1)
{
  v2 = _INLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) activityID];
    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopping activity... %s", &v4, 0xCu);
  }

  xpc_activity_unregister([*(a1 + 32) activityID]);
}

id sub_100002300(uint64_t a1)
{
  v2 = _INLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ICQ notification about persitance change received, time to revalidate our activities...", v4, 2u);
  }

  return [*(a1 + 32) _unsafe_ensureFreshmintActivityValidity];
}

uint64_t sub_10000246C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100002538()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002574()
{
  v1 = *(sub_100022CF0(&qword_100063280, &qword_10004D7B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + 56);

  v7 = *(v0 + 72);

  if (*(v0 + 80))
  {
    v8 = *(v0 + 88);
  }

  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v11);

  return _swift_deallocObject(v0, v11 + 8, v2 | 7);
}

uint64_t sub_1000026F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100002748()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002780()
{
  v1 = sub_100022CF0(&qword_1000634B8, &qword_10004DC40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000286C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000028A4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000028F4()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002940()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002978()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000029B0()
{
  sub_1000235A8(v0[2], v0[3]);
  v1 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100003748(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _INLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100033908(v6, v7);
    }
  }

  else
  {
    if (![v5 count])
    {
      goto LABEL_5;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v17 = 0;
      v18 = v5;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = objc_alloc_init(NSMutableDictionary);
          v14 = [v12 systemSerialNumber];
          if (v14)
          {
            [v13 setObject:v14 forKeyedSubscript:@"systemSerialNumber"];
          }

          v15 = [v12 leftSerialNumber];
          if (v15)
          {
            [v13 setObject:v15 forKeyedSubscript:@"leftSerialNumber"];
          }

          v16 = [v12 rightSerialNumber];
          if (v16)
          {
            [v13 setObject:v16 forKeyedSubscript:@"rightSerialNumber"];
          }

          [*(a1 + 32) addObject:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
      v6 = v17;
      v5 = v18;
    }
  }

LABEL_5:
  dispatch_semaphore_signal(*(a1 + 40));
}

Class sub_10000396C(uint64_t a1)
{
  sub_1000039C4();
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100063620 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100033980();
    return sub_1000039C4();
  }

  return result;
}

uint64_t sub_1000039C4()
{
  v3[0] = 0;
  if (!qword_100063628)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100003AC4;
    v3[4] = &unk_1000551E8;
    v3[5] = v3;
    v4 = off_1000551D0;
    v5 = 0;
    qword_100063628 = _sl_dlopen();
  }

  v0 = qword_100063628;
  v1 = v3[0];
  if (!qword_100063628)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100003AC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100063628 = result;
  return result;
}

void *sub_100003B38(uint64_t a1)
{
  v2 = sub_1000039C4();
  result = dlsym(v2, "NRDevicePropertyUDID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100063630 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000042D8(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = _INLogSystem();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully handled terms push message!", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100033CB8();
  }
}

void sub_1000044A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _INLogSystem();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully updated properties for account %@", &v10, 0xCu);
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100033D28();
    }

    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

void sub_100004898(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _INLogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100033EC4(v4, v6);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100033F5C(v6);
    }

    v7 = [*(a1 + 32) aa_appleAccountWithAltDSID:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100004B10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [INStorageSummaryResponse alloc];
  v9 = [v7 httpResponse];
  v10 = [v7 data];

  v11 = [(INStorageSummaryResponse *)v8 initWithHTTPResponse:v9 data:v10];
  if (v6)
  {
    v12 = v6;
LABEL_4:
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100033FA0();
    }

    v14 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  v12 = [(INStorageSummaryResponse *)v11 error];
  if (v12)
  {
    goto LABEL_4;
  }

  v15 = _INLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_100034008();
  }

  v16 = _INLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_10003403C(v11);
  }

  v17 = *(a1 + 32);
  v12 = [(INStorageSummaryResponse *)v11 cloudStorageSummary];
  v14 = *(v17 + 16);
LABEL_7:
  v14();
}

void sub_100004D8C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [INStorageAppsResponse alloc];
  v9 = [v7 httpResponse];
  v10 = [v7 data];

  v11 = [(INStorageAppsResponse *)v8 initWithHTTPResponse:v9 data:v10];
  if (v6)
  {
    v12 = v6;
LABEL_4:
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000340C0();
    }

    v14 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  v12 = [(INStorageAppsResponse *)v11 error];
  if (v12)
  {
    goto LABEL_4;
  }

  v15 = _INLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_100034128();
  }

  v16 = _INLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_10003415C(v11);
  }

  v17 = *(a1 + 32);
  v12 = [(INStorageAppsResponse *)v11 cloudStorageApps];
  v14 = *(v17 + 16);
LABEL_7:
  v14();
}

void sub_100004FF4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [INStorageByAppResponse alloc];
  v9 = [v7 httpResponse];
  v10 = [v7 data];

  v11 = [(INStorageByAppResponse *)v8 initWithHTTPResponse:v9 data:v10];
  if (v6)
  {
    v12 = v6;
LABEL_4:
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000341E0();
    }

    v14 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  v12 = [(INStorageByAppResponse *)v11 error];
  if (v12)
  {
    goto LABEL_4;
  }

  v15 = _INLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_100034248();
  }

  v16 = _INLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_10003427C(v11);
  }

  v17 = *(a1 + 32);
  v12 = [(INStorageByAppResponse *)v11 appCloudStorage];
  v14 = *(v17 + 16);
LABEL_7:
  v14();
}

void sub_100005270(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [INCloudBackupInfoResponse alloc];
  v9 = [v7 httpResponse];
  v10 = [v7 data];

  v11 = [(INCloudBackupInfoResponse *)v8 initWithHTTPResponse:v9 data:v10];
  if (v6)
  {
    v12 = v6;
LABEL_4:
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100034300();
    }

    v14 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  v12 = [(INCloudBackupInfoResponse *)v11 error];
  if (v12)
  {
    goto LABEL_4;
  }

  v15 = _INLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_100034368();
  }

  v16 = _INLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_10003439C(v11);
  }

  v17 = *(a1 + 32);
  v12 = [(INCloudBackupInfoResponse *)v11 backupInfo];
  v14 = *(v17 + 16);
LABEL_7:
  v14();
}

void sub_1000055CC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [INTipNetworkResponse alloc];
  v9 = [v7 httpResponse];
  v10 = [v7 data];

  v11 = [(INTipNetworkResponse *)v8 initWithHTTPResponse:v9 data:v10];
  if (v6)
  {
    v12 = v6;
    goto LABEL_4;
  }

  v12 = [(INTipNetworkResponse *)v11 error];
  if (v12)
  {
LABEL_4:
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100034420();
    }

    goto LABEL_6;
  }

  v14 = _INLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_100034488();
  }

  v13 = _INLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1000344BC();
  }

  v12 = 0;
LABEL_6:

  (*(*(a1 + 32) + 16))();
}

void sub_1000057C0(uint64_t a1)
{
  v1 = [[MBManager alloc] initWithAccount:*(*(a1 + 32) + 8) delegate:0 eventQueue:0];
  v2 = [v1 backupDeviceUUID];
  v3 = qword_100063638;
  qword_100063638 = v2;

  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100034530(v4);
  }
}

void sub_10000590C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [INAppsSyncingToDriveResponse alloc];
  v9 = [v7 httpResponse];
  v10 = [v7 data];

  v11 = [(INAppsSyncingToDriveResponse *)v8 initWithHTTPResponse:v9 data:v10];
  if (v6)
  {
    v12 = v6;
LABEL_4:
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000345B4();
    }

    v14 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  v12 = [(INAppsSyncingToDriveResponse *)v11 error];
  if (v12)
  {
    goto LABEL_4;
  }

  v15 = _INLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_10003461C();
  }

  v16 = _INLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_100034650(v11);
  }

  v17 = *(a1 + 32);
  v12 = [(INAppsSyncingToDriveResponse *)v11 appsSyncingToDrive];
  v14 = *(v17 + 16);
LABEL_7:
  v14();
}

void sub_100005B5C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [INRecommendationsResponse alloc];
  v9 = [v6 httpResponse];
  v10 = [v6 data];
  v11 = [(INRecommendationsResponse *)v8 initWithHTTPResponse:v9 data:v10];

  if (v7)
  {
    v12 = v7;
LABEL_4:
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000346D4();
    }

    v14 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  v12 = [v6 error];
  if (v12)
  {
    goto LABEL_4;
  }

  v15 = _INLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_10003473C();
  }

  v16 = _INLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_100034770(v11);
  }

  v17 = *(a1 + 32);
  v12 = [(INRecommendationsResponse *)v11 serverRecommendations];
  v14 = *(v17 + 16);
LABEL_7:
  v14();
}

void sub_100005DA8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [INRulesetResponse alloc];
  v9 = [v6 httpResponse];
  v10 = [v6 data];
  v11 = [(INRulesetResponse *)v8 initWithHTTPResponse:v9 data:v10];

  if (v7)
  {
    v12 = v7;
LABEL_4:
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000347F4();
    }

    v14 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  v12 = [v6 error];
  if (v12)
  {
    goto LABEL_4;
  }

  v15 = _INLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_10003485C();
  }

  v16 = _INLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_100034890(v11);
  }

  v17 = *(a1 + 32);
  v12 = [(INRulesetResponse *)v11 ruleConfiguration];
  v14 = *(v17 + 16);
LABEL_7:
  v14();
}

void sub_10000600C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [INRecommendationsResponse alloc];
  v9 = [v6 httpResponse];
  v10 = [v6 data];
  v11 = [(INRecommendationsResponse *)v8 initWithHTTPResponse:v9 data:v10];

  if (v7)
  {
    v12 = v7;
LABEL_4:
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100034914();
    }

    v14 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  v12 = [v6 error];
  if (v12)
  {
    goto LABEL_4;
  }

  v15 = _INLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_10003497C();
  }

  v16 = _INLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_1000349B0(v11);
  }

  v17 = *(a1 + 32);
  v12 = [(INRecommendationsResponse *)v11 serverRecommendations];
  v14 = *(v17 + 16);
LABEL_7:
  v14();
}

void sub_10000623C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [INRecommendationsActionsResponse alloc];
  v9 = [v6 httpResponse];
  v10 = [v6 data];
  v11 = [(INRecommendationsActionsResponse *)v8 initWithHTTPResponse:v9 data:v10];

  if (v7)
  {
    v12 = v7;
LABEL_4:
    v13 = _INLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100034A34();
    }

    (*(*(a1 + 32) + 16))();
    goto LABEL_7;
  }

  v12 = [v6 error];
  if (v12)
  {
    goto LABEL_4;
  }

  v14 = _INLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_100034A9C(v11);
  }

  (*(*(a1 + 32) + 16))();
LABEL_7:
}

void sub_100006654(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100006674(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100006690(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100006A38(uint64_t a1)
{
  v2 = _INLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) activityID];
    v14 = 136315138;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ensuring timer for activity... %s", &v14, 0xCu);
  }

  v4 = +[INManagedDefaults sharedInstance];
  v5 = [*(a1 + 32) activityNextFireDateKey];
  v6 = [v4 valueForManagedDefault:v5];

  if (v6)
  {
    [v6 doubleValue];
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    if ([v7 compare:*(a1 + 40)] == 1)
    {
      v8 = _INLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_100034C98((a1 + 32));
      }
    }

    else
    {
      v10 = +[NSDate date];
      v11 = [v7 compare:v10];

      v12 = _INLogSystem();
      v8 = v12;
      if (v11 != -1)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sub_100034C10(v7, (a1 + 32));
        }

        goto LABEL_15;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 32) activityID];
        v14 = 138412546;
        v15 = v7;
        v16 = 2080;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "It looks like we missed an activity scheduled for %@! id=%s", &v14, 0x16u);
      }
    }

    [*(a1 + 32) _scheduleNextFireForDate:*(a1 + 40)];
LABEL_15:

    goto LABEL_16;
  }

  v9 = _INLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100034D14((a1 + 32));
  }

  [*(a1 + 32) _scheduleNextFireForDate:*(a1 + 40)];
LABEL_16:
}

void sub_100006E48(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100035018(a1);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100006F3C;
  v10[3] = &unk_100055368;
  v10[4] = v7;
  v11 = v3;
  v13 = state;
  v12 = v6;
  v9 = v3;
  dispatch_async(v8, v10);
}

void sub_100006F3C(uint64_t a1)
{
  v2 = a1 + 32;
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  if (*(v2 + 24) == 2)
  {
    if (*(*v2 + 8))
    {
      if (*(*v2 + 16))
      {
        v3 = _INLogSystem();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          sub_10003511C(v2);
        }

        if (*(*v2 + 16))
        {
          v4 = *(*v2 + 16);
        }

        else
        {
          v4 = 0;
        }

        v6 = [*(*v2 + 8) methodSignatureForSelector:v4];
        v7 = [NSInvocation invocationWithMethodSignature:v6];
        [v7 setTarget:*(*v2 + 8)];
        if (*(*v2 + 16))
        {
          v8 = *(*v2 + 16);
        }

        else
        {
          v8 = 0;
        }

        [v7 setSelector:v8];
        [v7 invoke];
      }

      else
      {
        v6 = _INLogSystem();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100035198(v2);
        }
      }
    }

    else
    {
      v6 = _INLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100035214(v2);
      }
    }
  }

  else if (*(a1 + 48))
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000350A0(v2);
    }

    xpc_activity_set_criteria(*(*(a1 + 32) + 24), *(a1 + 48));
  }
}

id sub_1000074C8(void **a1)
{
  v2 = *a1;

  return [v2 activityID];
}

void sub_100007CB8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) _parseTip:v3];
    [*(a1 + 40) addObject:v4];
  }

  else
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000354F4();
    }
  }
}

void sub_10000810C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) _parseTipAction:v3];
    [v4 addObject:v5];
  }

  else
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100035620();
    }
  }
}

void sub_100008758(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_100008AEC(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) _parseSpecifierInfo:v5];
    [v3 addObject:v4];
  }
}

void sub_10000903C(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) _parseiCloudPlusFeature:v5];
    [v3 addObject:v4];
  }
}

void sub_1000090C0(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[ICQConfirmationActionInfo alloc] initFromDictionary:v4];
    [*(a1 + 32) addObject:v3];
  }
}

void sub_10000A3CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(ICQBackupDeviceGroup);
  v5 = [v3 objectForKeyedSubscript:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setSectionHeader:v5];
  }

  v6 = [v3 objectForKeyedSubscript:@"footer"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setSectionFooter:v6];
  }

  v7 = objc_alloc_init(NSMutableArray);
  v8 = [v3 objectForKeyedSubscript:@"deviceBackups"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10000A588;
    v15 = &unk_1000553B8;
    v9 = v7;
    v10 = *(a1 + 32);
    v16 = v9;
    v17 = v10;
    [v8 enumerateObjectsUsingBlock:&v12];
  }

  v11 = [v7 copy];
  [v4 setBackupDevices:v11];

  [*(a1 + 40) addObject:v4];
}

void sub_10000A588(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) _parseBackUpDevice:v5];
    [v3 addObject:v4];
  }
}

void sub_10000AF00(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = _INLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100035EBC();
    }

    goto LABEL_14;
  }

  if (![v4 isEqualToString:@"featuresCache"])
  {
    v7 = [v4 isEqualToString:@"offersCache"];
    v8 = _INLogSystem();
    v6 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cleaning offers cache.", v9, 2u);
      }

      v6 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
      [v6 teardownCachedOffers];
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100035F2C();
    }

LABEL_14:

    goto LABEL_15;
  }

  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cleaning features cache.", buf, 2u);
  }

  +[CSFFeatureManager clearCacheAndNotify];
LABEL_15:
}

void sub_10000B0EC(id a1)
{
  qword_100063648 = objc_alloc_init(INRegistrationDigestCache);

  _objc_release_x1();
}

void sub_10000B22C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"INRegistrationDigestCacheDidBecomeAvailable" object:*(a1 + 32)];
}

void sub_10000B42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000B444(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000B45C(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 4, 0, 0);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecAttrAccount, *(a1 + 32));
  CFDictionaryAddValue(Mutable, kSecAttrService, @"com.apple.ind.registration");
  CFDictionaryAddValue(Mutable, kSecReturnData, kCFBooleanTrue);
  result = 0;
  if (SecItemCopyMatching(Mutable, &result))
  {
    v3 = _INLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100035FB0(a1);
    }

    if (*(a1 + 56))
    {
      **(a1 + 56) = INCreateErrorWithKeychainError();
    }
  }

  else if (result)
  {
    v4 = [INRegistrationDigest alloc];
    v5 = [(INRegistrationDigest *)v4 initWithData:result];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    CFRelease(result);
  }

  CFRelease(Mutable);
}

void sub_10000B6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B6F0(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 3, 0, 0);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecAttrAccount, *(a1 + 32));
  CFDictionaryAddValue(Mutable, kSecAttrService, @"com.apple.ind.registration");
  v3 = SecItemDelete(Mutable);
  if (v3)
  {
    v4 = v3;
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100035FB0(a1);
    }

    if (v4 != -25300 && *(a1 + 56))
    {
      **(a1 + 56) = INCreateErrorWithKeychainError();
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  CFRelease(Mutable);
}

void sub_10000B94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B964(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 3, 0, 0);
  CFDictionaryAddValue(Mutable, kSecClass, kSecClassGenericPassword);
  CFDictionaryAddValue(Mutable, kSecAttrAccount, *(a1 + 40));
  CFDictionaryAddValue(Mutable, kSecAttrService, @"com.apple.ind.registration");
  CFDictionaryAddValue(Mutable, kSecAttrAccessible, kSecAttrAccessibleAfterFirstUnlock);
  v4 = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, 0, 0);
  CFDictionaryAddValue(v4, kSecValueData, v2);
  v5 = SecItemUpdate(Mutable, v4);
  if (!v5)
  {
    goto LABEL_6;
  }

  if (v5 == -25300)
  {
    v6 = _INLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No existing item. Creating a new one.", v8, 2u);
    }

    CFDictionaryAddValue(Mutable, kSecValueData, v2);
    if (!SecItemAdd(Mutable, 0))
    {
LABEL_6:
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v7 = _INLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003601C(a1);
    }

    if (*(a1 + 64))
    {
      **(a1 + 64) = INCreateErrorWithKeychainError();
    }
  }

  CFRelease(v4);
  CFRelease(Mutable);
}

void sub_10000BBB0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = _INLogSystem();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "ind reporting for duty!", buf, 2u);
  }

  v2 = +[INDaemon sharedInstance];
  [v2 start];

  objc_autoreleasePoolPop(v0);
  v3 = +[NSRunLoop mainRunLoop];
  [v3 run];

  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ind is shutting down!", v6, 2u);
  }

  return 0;
}

id sub_10000CF14(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setAccount:a2];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6.receiver = *(a1 + 32);
  v6.super_class = INRenewingRequest;
  return objc_msgSendSuper2(&v6, "performRequestWithSession:withHandler:", v3, v4);
}

void sub_10000E46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000E4D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000E4F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = _INLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100036C38(v5, v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000E5EC;
  v13[3] = &unk_1000556D0;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v14 = v11;
  v15 = v12;
  [v8 _handleRegistrationResponse:v5 forRequest:v6 digest:v9 account:v10 completion:v13];
}

void sub_10000E5EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  (*(*(a1 + 32) + 16))();
  v8 = _INLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134349570;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finished registering device with result %{public}ld, TTL %lu, error %@. Deallocating transaction.", &v11, 0x20u);
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void sub_10000EC60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100036E80(v4, v5);
  }

  [*(a1 + 32) _handleUnregistrationResponse:v4 account:*(a1 + 40) completion:*(a1 + 48)];
}

void sub_10000EE90(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000F2E0(id a1)
{
  qword_100063668 = objc_alloc_init(INDaemon_iOS);

  _objc_release_x1();
}

void sub_10000F93C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10000F958(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained apsConnection];

    if (!v4)
    {
      v5 = _INLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100037158(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }

    v13 = [v3 apsConnection];
    v14 = [v13 publicToken];

    if (v14)
    {
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_10000FC88;
      v33[3] = &unk_1000557F0;
      v15 = v3;
      v34 = v15;
      v35 = *(a1 + 32);
      v16 = v14;
      v17 = *(a1 + 64);
      v36 = v16;
      v38 = v17;
      v37 = *(a1 + 48);
      v18 = objc_retainBlock(v33);
      if (*(a1 + 32))
      {
        if (!+[_TtC3ind18LoggedOutPushCache wasDeviceRegistered])
        {
          (v18[2])(v18);
          goto LABEL_21;
        }

        v19 = _INLogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          sub_1000371D0();
        }

        v20 = *(a1 + 40);
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_100010050;
        v31[3] = &unk_100055818;
        v32 = v18;
        [v20 unregisterDeviceFromLoggedOutiCloudNotificationsWithReason:1 completion:v31];
        v21 = v32;
      }

      else
      {
        v25 = [v15 registrar];
        v26 = *(a1 + 64);
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1000100F4;
        v27[3] = &unk_100055840;
        v30 = v26;
        v29 = *(a1 + 48);
        v28 = v15;
        [v25 registerForLoggedOutPushWithToken:v16 reason:v26 completion:v27];

        v21 = v29;
      }

LABEL_21:
      goto LABEL_22;
    }

    v23 = _INLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100037204();
    }

    v24 = *(a1 + 48);
    if (v24)
    {
      v16 = INCreateError();
      (*(v24 + 16))(v24, 0, v16);
LABEL_22:
    }
  }

  else
  {
    v22 = *(a1 + 48);
    if (v22)
    {
      (*(v22 + 16))(v22, 0, 0);
    }
  }
}

void sub_10000FC88(uint64_t a1)
{
  v2 = [*(a1 + 32) registrar];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000FD78;
  v6[3] = &unk_1000557C8;
  v10 = v5;
  v9 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  [v2 registerForPushNotificationsWithAccount:v3 pushToken:v4 reason:v5 completion:v6];
}

void sub_10000FD78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [INRegistrationRequest bodyParameterValueForRegistrationReason:*(a1 + 56)];
  v9 = _INLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100037240(a2);
  }

  v10 = _INLogSystem();
  v11 = v10;
  if (a2)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Success!", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
    if (a2 == 1)
    {
      v12 = os_transaction_create();
      v13 = _INLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Registration Success!", v22, 2u);
      }

      [*(a1 + 32) _enablePushTopics];
      [*(a1 + 32) _planForRegistrationTTL:a3 account:*(a1 + 40)];
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000372F8();
    }

    (*(*(a1 + 48) + 16))();
  }

  v14 = *(a1 + 32);
  objc_sync_enter(v14);
  v15 = [*(a1 + 32) accountsToReconsiderAfterReboot];
  v16 = [*(a1 + 40) aa_altDSID];
  v17 = [v15 containsObject:v16];

  if (v17)
  {
    v18 = _INLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1000373D0();
    }

    [*(a1 + 32) handlePushRegistrationWithAccount:*(a1 + 40) reason:5];
    v19 = [*(a1 + 32) accountsToReconsiderAfterReboot];
    v20 = [*(a1 + 40) aa_altDSID];
    [v19 removeObject:v20];
  }

  else if ((*(a1 + 56) | 4) == 5)
  {
    v21 = _INLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_100037360();
    }

    [*(a1 + 32) handlePushRegistrationWithAccount:*(a1 + 40) reason:*(a1 + 56)];
  }

  objc_sync_exit(v14);
}

void sub_100010050(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100037404();
  }

  if (v4)
  {
    v6 = _INLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003748C(v4);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000100F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [INRegistrationRequest bodyParameterValueForRegistrationReason:*(a1 + 48)];
  v9 = _INLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [NSNumber numberWithInteger:a2];
    v15 = 138412546;
    v16 = v10;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "INRegistrationResult was %@ for reason: %@", &v15, 0x16u);
  }

  v11 = _INLogSystem();
  v12 = v11;
  if (a2)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Success!", &v15, 2u);
    }

    (*(*(a1 + 40) + 16))();
    if (a2 == 1)
    {
      v13 = os_transaction_create();
      v14 = _INLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Logged-Out Registration Success!", &v15, 2u);
      }

      [*(a1 + 32) _enablePushTopics];
      [*(a1 + 32) _planForRegistrationTTL:a3 account:0];
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000372F8();
    }

    (*(*(a1 + 40) + 16))();
  }

  [*(a1 + 32) handlePushRegistrationWithAccount:0 reason:*(a1 + 48)];
}

void sub_100010604(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = _INLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000375F8(a1);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100037588(a1);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10001079C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000107B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained apsConnection];
    v5 = [v4 publicToken];

    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = _INLogSystem();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          v9 = *(a1 + 32);
          *buf = 138412290;
          v26 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unregistering account %@", buf, 0xCu);
        }

        v10 = [v3 registrar];
        v11 = *(a1 + 32);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100010A90;
        v21[3] = &unk_1000558B8;
        v22 = v3;
        v23 = *(a1 + 32);
        v24 = *(a1 + 40);
        [v10 unregisterFromPushNotificationsForAccount:v11 pushToken:v5 completion:v21];

        v12 = v22;
      }

      else
      {
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unregistering device from logged-out pushes", buf, 2u);
        }

        v17 = [v3 registrar];
        v18 = *(a1 + 56);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100010B38;
        v19[3] = &unk_1000558E0;
        v20 = *(a1 + 40);
        [v17 unregisterFromLoggedOutPushNotificationsWithToken:v5 reason:v18 completionHandler:v19];

        v12 = v20;
      }
    }

    else
    {
      v14 = _INLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10003766C();
      }

      v15 = *(a1 + 40);
      if (v15)
      {
        v16 = INCreateError();
        (*(v15 + 16))(v15, 0, v16);
      }
    }
  }

  else
  {
    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, 0);
    }
  }
}

void sub_100010A90(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = _INLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unregistration Success!", v7, 2u);
    }

    [*(a1 + 32) _cleanUpIfNoAccountsAreLeftOtherThanAccount:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100010B38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _INLogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000376A8(v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unregistration Success!", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

id *sub_100010EC8(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = _INLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "No primary iCloud account but we have an active feature ticket. Registering for logged out push notifications", v4, 2u);
    }

    return [v2[4] registerDeviceForLoggedOutiCloudNotificationsWithReason:2 completion:&stru_100055928];
  }

  return result;
}

void sub_1000114A8(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FLAB registration validation finished for logged-out device. Success: %@. Error %@", &v7, 0x16u);
  }
}

void sub_100011584(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v9 = 138412802;
    if (a2)
    {
      v8 = @"YES";
    }

    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "FLAB registration validation finished for account %@. Success: %@. Error %@", &v9, 0x20u);
  }
}

void sub_100011EEC(id a1)
{
  v1 = _INLogSystem();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Client connection interrupted/invalidated.", v2, 2u);
  }
}

void sub_100012508(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  dispatch_group_leave(*(a1 + 40));
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446722;
    v8 = "[INDaemon _performHeartbeatRegistration]_block_invoke";
    v9 = 1026;
    v10 = a2;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s Registration complete. Result: %{public}d. Error: %{public}@.", &v7, 0x1Cu);
  }
}

void sub_100012844(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  dispatch_group_leave(*(a1 + 40));
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Registration complete. Result: %d. Error: %@.", v7, 0x12u);
  }
}

void sub_100012914(uint64_t a1)
{
  [*(*(a1 + 32) + 72) setActivityState:5];
  v1 = _INLogSystem();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Heartbeat activity is set to done, will exit the dameon on audio devices.", v2, 2u);
  }
}

void sub_100012EB8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100012F80;
  v10[3] = &unk_1000559E0;
  v8 = *(a1 + 48);
  v13 = a2;
  v11 = v5;
  v12 = v8;
  v9 = v5;
  [v6 handlePushUnregistrationWithAccount:v7 completion:v10];
}

void sub_1000130C8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100013184;
  v9[3] = &unk_1000559E0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 handlePushUnregistrationWithAccount:0 completion:v9];
}

void sub_100013CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100013D04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100013D1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100037A9C();
    }

    v6 = INCreateErrorWithError();
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100013F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013F94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100037B04();
    }

    v6 = INCreateErrorWithError();
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100014208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014220(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100037B6C();
    }

    v6 = INCreateErrorWithError();
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100014480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014498(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100037BD4();
    }

    v6 = INCreateErrorWithError();
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100014708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014720(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _INLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100037CA4();
    }
  }

  v5 = INCreateErrorWithError();
  (*(*(a1 + 32) + 16))();
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_10001496C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014984(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _INLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100037D74();
    }
  }

  v5 = INCreateErrorWithError();
  (*(*(a1 + 32) + 16))();
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_100014BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014BD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100037E44();
    }

    v6 = INCreateErrorWithError();
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_1000150BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _INLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100037F78(v6);
    }
  }

  v8 = [v5 apsEnvironment];
  [*(a1 + 32) setActiveAPSEnvironment:v8];

  v9 = [*(a1 + 32) activeAPSEnvironment];

  v10 = _INLogSystem();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v11)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Using production APS env as fallback, since none was specified by the iCloud server.", &v19, 2u);
    }

    goto LABEL_13;
  }

  if (v11)
  {
    v12 = [*(a1 + 32) activeAPSEnvironment];
    v19 = 138412290;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Server wants us to use the APS env: %@", &v19, 0xCu);
  }

  v13 = [*(a1 + 32) activeAPSEnvironment];
  v14 = [APSConnection isValidEnvironment:v13];

  if ((v14 & 1) == 0)
  {
    v10 = _INLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100038004();
    }

LABEL_13:

    [*(a1 + 32) setActiveAPSEnvironment:APSEnvironmentProduction];
  }

  v15 = [APSConnection alloc];
  v16 = [*(a1 + 32) activeAPSEnvironment];
  v17 = [v15 initWithEnvironmentName:v16 namedDelegatePort:@"com.apple.ind.aps" queue:*(*(a1 + 32) + 16)];
  [*(a1 + 32) setApsConnection:v17];

  [*(a1 + 32) _validateEnabledTopics];
  v18 = [*(a1 + 32) apsConnection];
  [v18 setDelegate:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
}

void sub_1000153C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _INLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100037F78(v6);
    }
  }

  v8 = [v5 apsEnvironment];
  if (v8)
  {
    v9 = (a1 + 32);
    v10 = [*(a1 + 32) activeAPSEnvironment];
    v11 = [v8 isEqualToString:v10];

    v12 = _INLogSystem();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_1000380A8((a1 + 32));
      }

LABEL_22:

      goto LABEL_23;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*v9 activeAPSEnvironment];
      v24 = 138412546;
      v25 = v15;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Active APS env (%@) does not match server-requested env (%@).", &v24, 0x16u);
    }

    v16 = [APSConnection isValidEnvironment:v8];
    v17 = _INLogSystem();
    v13 = v17;
    if ((v16 & 1) == 0)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100038040();
      }

      goto LABEL_22;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*v9 activeAPSEnvironment];
      v24 = 138412290;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Shutting down APS connection with env %@...", &v24, 0xCu);
    }

    v19 = [*v9 apsConnection];
    [v19 setDelegate:0];

    v20 = [*v9 apsConnection];
    [v20 shutdown];

    v21 = _INLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Starting new APS connection with env %@...", &v24, 0xCu);
    }

    v22 = [[APSConnection alloc] initWithEnvironmentName:v8 namedDelegatePort:@"com.apple.ind.aps" queue:*(*v9 + 2)];
    [*v9 setApsConnection:v22];

    v23 = [*v9 apsConnection];
    [v23 setDelegate:*v9];

    [*v9 setActiveAPSEnvironment:v8];
  }

  else
  {
    v14 = _INLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_10003813C();
    }
  }

LABEL_23:
  (*(*(a1 + 40) + 16))();
}

void sub_100015B4C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v9 = 138412802;
    if (a2)
    {
      v8 = @"YES";
    }

    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Registration due to new APS token for account %@ finished. Success: %@ . Error %@", &v9, 0x20u);
  }
}

void sub_100015C38(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Registration due to new APS token finished for logged-out device. Success: %@. Error %@", &v7, 0x16u);
  }
}

id sub_100016408(uint64_t a1)
{
  v2 = _INLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished reconsidering iCloud offers.", v5, 2u);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return [*(a1 + 32) setReconsideringOffers:0];
}

void sub_1000168B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000168CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003848C();
    }

    v6 = INCreateErrorWithError();
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100016B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100016B44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003855C();
    }

    v6 = INCreateErrorWithError();
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100016DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100016DD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003862C();
    }

    v6 = INCreateErrorWithError();
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_1000171B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000171D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _INLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100038700(a1);
    }

    v5 = INCreateErrorWithError();
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_100017554(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1000188AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, _xpc_event_key_name)];
  v5 = _INLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "XPC notifyd matching event stream handler called. Event name: %@", &v7, 0xCu);
  }

  if (![v4 isEqualToString:@"DeviceNameChangeEvent"])
  {
    if ([v4 isEqualToString:@"FirstUnlockEvent"])
    {
      v6 = _INLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received first-unlock launch event.", &v7, 2u);
      }

      goto LABEL_8;
    }

    if ([v4 isEqualToString:@"DeviceDidPairEvent"])
    {
      [*(a1 + 32) _handleDeviceDidPairEvent];
      goto LABEL_17;
    }

    if ([v4 isEqualToString:@"LanguageChangedEvent"])
    {
      [*(a1 + 32) _handleLanguageChangedEvent];
      goto LABEL_17;
    }

    if ([v4 isEqualToString:@"refreshCFAvailability"])
    {
      [*(a1 + 32) _handleOSEligibilityChange];
      goto LABEL_17;
    }

    if ([v4 isEqualToString:@"refreshGMSAvailability"])
    {
      [*(a1 + 32) _handleGMSAvailabilityChange];
      goto LABEL_17;
    }

    if (sub_100002168())
    {
      if ([v4 isEqualToString:@"PhotosiCPLStateChangedEvent"])
      {
        [*(a1 + 32) _unsafe_handlePhotosiCPLStateChangedEvent];
        goto LABEL_17;
      }

      if ([v4 isEqualToString:@"PhotosOptimizeStateChangedEvent"])
      {
        [*(a1 + 32) _unsafe_handlePhotosOptimizeStateChangedEvent];
        goto LABEL_17;
      }

      if ([v4 isEqualToString:@"SimulateVFSAlmostFullEvent"])
      {
        [*(a1 + 32) _unsafe_handleSimulateVFSAlmostFullEvent];
        goto LABEL_17;
      }

      if ([v4 isEqualToString:@"SimulateVFSNotFullEvent"])
      {
        [*(a1 + 32) _unsafe_handleSimulateVFSNotFullEvent];
        goto LABEL_17;
      }

      v6 = _INLogSystem();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6 = _INLogSystem();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
LABEL_8:

        goto LABEL_17;
      }
    }

    sub_1000388E4();
    goto LABEL_8;
  }

  [*(a1 + 32) _handleDeviceNameChangeEvent];
LABEL_17:
}

void sub_100018B64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _INLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100038954();
  }

  if ((sub_100002168() & 1) == 0)
  {
    v12 = _INLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "Unable to process vfs event - quota usage not supported.";
      v14 = v12;
      v15 = 2;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (v3)
  {
    uint64 = xpc_dictionary_get_uint64(v3, "_Flags");
    v18 = 0;
    v6 = fsctl("/private/var", 0x40046818uLL, &v18, 0);
    v7 = _INLogSystem();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (!v8)
      {
LABEL_9:

        goto LABEL_14;
      }

      *buf = 138412546;
      v20 = v3;
      v21 = 2048;
      v22 = uint64;
      v9 = "Unable to get user volume status - ignoring dispatch vfs event. %@ (flags:0x%lx)";
      v10 = v7;
      v11 = 22;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      goto LABEL_9;
    }

    if (v8)
    {
      *buf = 138412802;
      v20 = v3;
      v21 = 2048;
      v22 = uint64;
      v23 = 1024;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Processing dispatch vfs event. %@ (flags:0x%lx userFlags:0x%x)", buf, 0x1Cu);
    }

    if ((uint64 & 0x4000) != 0 && (v18 & 0x2204) == 0)
    {
      [*(a1 + 32) _unsafe_handleVFSRiseAboveDesiredDisk];
      goto LABEL_14;
    }

    v16 = [*(a1 + 32) _unsafe_isLegacyDeviceStorageLevelNotificationEnabled];
    v7 = _INLogSystem();
    v17 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!v16)
    {
      if (!v17)
      {
        goto LABEL_9;
      }

      *buf = 138412802;
      v20 = v3;
      v21 = 2048;
      v22 = uint64;
      v23 = 1024;
      v24 = v18;
      v9 = "Ignoring dispatch vfs event (letting CacheDelete get the first shot): %@ (flags:0x%lx userFlags:0x%x)";
      v10 = v7;
      v11 = 28;
      goto LABEL_8;
    }

    if (v17)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Legacy device storage level notification enabled", buf, 2u);
    }

    if ((uint64 & 0x200) != 0 && (v18 & 0x200) != 0)
    {
      [*(a1 + 32) _unsafe_handleVFSFallBelowVeryLowDisk];
      goto LABEL_14;
    }

    if ((uint64 & 4) != 0 && (v18 & 4) != 0)
    {
      [*(a1 + 32) _unsafe_handleVFSFallBelowLowDisk];
      goto LABEL_14;
    }

    if ((uint64 & 0x2000) != 0 && (v18 & 0x2000) != 0)
    {
      [*(a1 + 32) _unsafe_handleVFSFallBelowNearLowDisk];
      goto LABEL_14;
    }

    v12 = _INLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v20 = v3;
      v21 = 2048;
      v22 = uint64;
      v23 = 1024;
      v24 = v18;
      v13 = "Ignoring dispatch vfs event (unexpected flags): %@ (flags:0x%lx userFlags:0x%x)";
      v14 = v12;
      v15 = 28;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_14:
}

void sub_10001912C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Registration complete for account %@. Result: %d. Error: %@.", &v8, 0x1Cu);
  }
}

void sub_1000194E0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _INLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Registration complete for account %@. Result: %d. Error: %@.", &v8, 0x1Cu);
  }
}

void sub_10001A22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001A254(uint64_t a1)
{
  v2 = _INLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100038B5C();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[18];
    v6 = INCreateError();
    (*(v5 + 16))(v5, 0, v6);

    v7 = v4[19];
    v4[19] = 0;

    v8 = v4[18];
    v4[18] = 0;
  }
}

intptr_t sub_10001BCAC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 base64EncodedStringWithOptions:0];
    [*(a1 + 32) setValue:v3 forHTTPHeaderField:@"X-Mme-Nas-Qualify"];
  }

  v4 = *(a1 + 40);

  return dispatch_semaphore_signal(v4);
}

void sub_10001C284(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2;
  v7 = [v5 identifier];
  [v3 _handleEventDetailsResponse:v6 forEventID:v4 accountID:v7 pushMessage:a1[7]];
}

void sub_10001CB98(id a1, AAResponse *a2)
{
  v2 = a2;
  v3 = _INLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100039584(v2);
  }
}

void sub_10001D0D8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _INLogSystem();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100039628(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[SUBD] Successfully called the ICQDaemonOfferManager after the failsafe activity elapsed.", v5, 2u);
  }
}

void sub_10001D16C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _INLogSystem();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000396A0(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[SUBD] Successfully cleared the state of the subscription daemon.", v5, 2u);
  }
}

void sub_10001D2E8(id a1)
{
  v1 = [INCachedDeviceInfo alloc];
  v4 = +[AADeviceInfo currentInfo];
  v2 = [(INCachedDeviceInfo *)v1 initWithDeviceInfo:v4];
  v3 = qword_100063678;
  qword_100063678 = v2;
}

Swift::Int sub_10001D490(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10001D4EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001D560()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10001D5D0()
{
  v1 = v0 + OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_10001D620(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10001D68C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10001D72C;
}

void sub_10001D72C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_10001D7B4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10001D828()
{
  v1 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_isGatheringFinished;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10001D86C(char a1)
{
  v3 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_isGatheringFinished;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10001D91C@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() sharedSession];
  result = sub_100022BE0(0, &unk_100063260, NSURLSession_ptr);
  a1[3] = result;
  a1[4] = &off_100055F58;
  *a1 = v2;
  return result;
}

uint64_t sub_10001D990@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_urlSession;
  swift_beginAccess();
  return sub_10001D9E8(v1 + v3, a1);
}

uint64_t sub_10001D9E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001DA4C(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_urlSession;
  swift_beginAccess();
  sub_100022B94((v1 + v3));
  sub_10001DAB4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10001DAB4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_10001DB30()
{
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_10001DB6C()
{
  v1 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_accountStore;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_10001DBC0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_accountStore;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_10001DC78()
{
  v0 = objc_allocWithZone(AKAnisetteProvisioningController);

  return [v0 init];
}

id sub_10001DCB0()
{
  v1 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_anisetteController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_10001DD04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_anisetteController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10001DDBC()
{
  v1 = (v0 + OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_taskID);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];

  return v2;
}

uint64_t sub_10001DE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_taskID);
  swift_beginAccess();
  v10 = v9[1];
  v11 = v9[3];
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
}

id sub_10001DF10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_10002229C(a1, a2, a3, a4);
  sub_1000224E4(a3);

  return v10;
}

id sub_10001DF84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10002229C(a1, a2, a3, a4);
  sub_1000224E4(a3);

  return v6;
}

uint64_t sub_10001DFD0(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100023EC8();
  (*(v4 + 16))(v7, v8, v3);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = v3;
    v13 = v12;
    v26 = swift_slowAlloc();
    v33 = v26;
    *v13 = 136315394;
    v14 = swift_isaMask & *v9;
    v25 = v11;
    v15 = (*(v14 + 320))();
    v28 = a1;
    v29 = v15;
    v30 = v16;
    v31 = v17;
    v32 = v18;
    sub_1000224F4();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;

    v22 = sub_100021BC4(v19, v21, &v33);

    *(v13 + 4) = v22;
    a1 = v28;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100021BC4(0xD000000000000024, 0x8000000100042210, &v33);
    _os_log_impl(&_mh_execute_header, v10, v25, "%s %s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v4 + 8))(v7, v27);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  return (*((swift_isaMask & *v9) + 0x180))(a1);
}

uint64_t sub_10001E444(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100023EC8();
  (*(v4 + 16))(v7, v8, v3);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33 = v26;
    *v12 = 136315138;
    v13 = swift_isaMask & *v9;
    v27 = v3;
    v14 = *(v13 + 320);
    v25 = v11;
    v15 = v14();
    v28 = a1;
    v29 = v15;
    v30 = v16;
    v31 = v17;
    v32 = v18;
    sub_1000224F4();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;

    v22 = sub_100021BC4(v19, v21, &v33);

    *(v12 + 4) = v22;
    a1 = v28;
    _os_log_impl(&_mh_execute_header, v10, v25, "%s (SyncCompletionObserver)", v12, 0xCu);
    sub_100022B94(v26);

    (*(v4 + 8))(v7, v27);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  (*((swift_isaMask & *v9) + 0xE8))(1);
  return (*((swift_isaMask & *v9) + 0x180))(a1);
}

uint64_t sub_10001E7C0(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v76 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v75 = &v73 - v9;
  __chkstk_darwin(v8);
  v11 = &v73 - v10;
  v12 = [a1 items];
  sub_100022BE0(0, &qword_100063270, FPItem_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = sub_100023EC8();
  v15 = v4[2];
  v77 = v14;
  v78 = v15;
  (v15)(v11);
  v16 = v1;
  swift_bridgeObjectRetain_n();
  v17 = v16;
  v18 = v17;
  v19 = Logger.logObject.getter();
  LOBYTE(v20) = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v79 = v4 + 2;
  v80 = v4;
  if (v21)
  {
    v74 = v3;
    v22 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v86 = v73;
    *v22 = 136315650;
    v23 = *v17;
    v81 = v17 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v82 = (*((swift_isaMask & v23) + 0x140))();
    v83 = v24;
    v84 = v25;
    v85 = v26;
    sub_1000224F4();
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;

    v30 = sub_100021BC4(v27, v29, &v86);

    *(v22 + 4) = v30;
    *(v22 + 12) = 2048;
    if (v13 >> 62)
    {
LABEL_29:
      v31 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v31 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v80;

    *(v22 + 14) = v31;

    *(v22 + 22) = 1024;
    v34 = (*((swift_isaMask & *v18) + 0xE0))(v33);

    *(v22 + 24) = v34 & 1;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s (SyncCompletionObserver) item count: %ld isGatheringFinished: %{BOOL}d", v22, 0x1Cu);
    sub_100022B94(v73);

    v35 = v32[1];
    v36 = v11;
    v11 = v74;
    v37 = v35(v36, v74);
    v38 = v81;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v35 = v4[1];
    v37 = v35(v11, v3);
    v38 = v17 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v11 = v3;
  }

  if ((*((swift_isaMask & *v18) + 0xE0))(v37))
  {
    v81 = v38;
    v74 = v35;
    if (v13 >> 62)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v39 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = 0;
    v20 = v13 & 0xC000000000000001;
    while (v39 != v22)
    {
      if (v20)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v40 = *(v13 + 8 * v22 + 32);
      }

      v19 = v40;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v41 = [v40 isUploaded];

      ++v22;
      if ((v41 & 1) == 0)
      {
      }
    }

    v56 = v75;
    v78(v75, v77, v11);
    v57 = v18;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v86 = v79;
      *v60 = 136315138;
      v82 = (*((swift_isaMask & *v57) + 0x140))();
      v83 = v61;
      v84 = v62;
      v85 = v63;
      sub_1000224F4();
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;

      v67 = sub_100021BC4(v64, v66, &v86);

      *(v60 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v58, v59, "%s (SyncCompletionObserver) Upload is complete", v60, 0xCu);
      sub_100022B94(v79);

      (v74)(v75, v11);
    }

    else
    {

      (v74)(v56, v11);
    }

    sub_10001F0B0(1, 0);
    v69 = sub_10001F574();
    result = (*((swift_isaMask & *v57) + 0x98))(v69);
    if (result)
    {
      v71 = v70;
      ObjectType = swift_getObjectType();
      (*(v71 + 8))(*(v57 + OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_itemID), ObjectType, v71);
      return swift_unknownObjectRelease();
    }
  }

  else
  {

    v42 = v76;
    v78(v76, v77, v11);
    v43 = v18;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v74 = v35;
      v47 = v46;
      v48 = swift_slowAlloc();
      v86 = v48;
      *v47 = 136315138;
      v82 = (*((swift_isaMask & *v43) + 0x140))();
      v83 = v49;
      v84 = v50;
      v85 = v51;
      sub_1000224F4();
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;

      v55 = sub_100021BC4(v52, v54, &v86);

      *(v47 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v44, v45, "%s (SyncCompletionObserver) Skipping upload progress check, collection is still gathering", v47, 0xCu);
      sub_100022B94(v48);

      return (v74)(v76, v11);
    }

    else
    {

      return v35(v42, v11);
    }
  }

  return result;
}

uint64_t sub_10001F0B0(int a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = (__chkstk_darwin)();
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v53 - v11;
  v13 = sub_100023EC8();
  v14 = v6[2];
  v59 = v13;
  v60 = (v6 + 2);
  v58 = v14;
  (v14)(v12);
  v15 = v2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v55 = v17;
    v19 = v18;
    v54 = swift_slowAlloc();
    v65 = v54;
    *v19 = 136315394;
    v20 = *((swift_isaMask & *v15) + 0x140);
    v53 = v16;
    v21 = v20();
    v57 = v6;
    v56 = a1;
    v61 = v21;
    v62 = v22;
    v63 = v23;
    v64 = v24;
    sub_1000224F4();
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = a2;
    v27 = v5;
    v29 = v28;
    LOBYTE(a1) = v56;

    v6 = v57;

    v30 = sub_100021BC4(v25, v29, &v65);
    v5 = v27;
    a2 = v26;

    *(v19 + 4) = v30;
    *(v19 + 12) = 1024;
    *(v19 + 14) = a1 & 1;
    v31 = v53;
    _os_log_impl(&_mh_execute_header, v53, v55, "%s success: %{BOOL}d", v19, 0x12u);
    sub_100022B94(v54);
  }

  else
  {
  }

  v32 = v6[1];
  v32(v12, v5);
  v33 = (v15 + OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_syncDidComplete);
  v34 = *(v15 + OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_syncDidComplete);
  if (v34)
  {
    v35 = v33[1];
    *v33 = 0;
    v33[1] = 0;
    v34(a1 & 1, a2);
    return sub_1000224E4(v34);
  }

  else
  {
    v58(v10, v59, v5);
    v37 = v15;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v60 = v10;
      v42 = v41;
      v65 = v41;
      *v40 = 136315138;
      v43 = (*((swift_isaMask & *v37) + 0x140))();
      v59 = v5;
      v61 = v43;
      v62 = v44;
      v63 = v45;
      v64 = v46;
      sub_1000224F4();
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;

      v50 = sub_100021BC4(v47, v49, &v65);

      *(v40 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v38, v39, "%s No completion handler", v40, 0xCu);
      sub_100022B94(v42);

      v52 = v59;
      v51 = v60;
    }

    else
    {

      v51 = v10;
      v52 = v5;
    }

    return (v32)(v51, v52);
  }
}

uint64_t sub_10001F574()
{
  v1 = sub_100022CF0(&qword_1000632D0, &qword_10004DAC0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v79 = &v70[-v3];
  v82 = type metadata accessor for Logger();
  v84 = *(v82 - 8);
  v4 = *(v84 + 64);
  v5 = __chkstk_darwin(v82);
  v77 = &v70[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v81 = &v70[-v7];
  v8 = sub_100022CF0(&qword_100063280, &qword_10004D7B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v70[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v70[-v13];
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v78 = &v70[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v18);
  v80 = &v70[-v20];
  __chkstk_darwin(v19);
  v22 = &v70[-v21];
  v23 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_notifyURL;
  swift_beginAccess();
  sub_10002332C(v0 + v23, v14, &qword_100063280, &qword_10004D7B0);
  v83 = v16;
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100023504(v14, &qword_100063280, &qword_10004D7B0);
    v24 = sub_100023EC8();
    v25 = v77;
    v26 = v82;
    (*(v84 + 16))(v77, v24, v82);
    v27 = v0;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v89 = v31;
      *v30 = 136315138;
      v85 = (*((swift_isaMask & *v27) + 0x140))();
      v86 = v32;
      v87 = v33;
      v88 = v34;
      sub_1000224F4();
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;

      v38 = sub_100021BC4(v35, v37, &v89);

      *(v30 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s No url to notify", v30, 0xCu);
      sub_100022B94(v31);
    }

    return (*(v84 + 8))(v25, v26);
  }

  else
  {
    v40 = v83;
    v76 = *(v83 + 32);
    v77 = (v83 + 32);
    v76(v22, v14, v15);
    (*(v40 + 56))(v12, 1, 1, v15);
    swift_beginAccess();
    sub_1000230F0(v12, v0 + v23);
    swift_endAccess();
    v41 = sub_100023EC8();
    v42 = v82;
    (*(v84 + 16))(v81, v41, v82);
    v74 = *(v40 + 16);
    v75 = v40 + 16;
    v74(v80, v22, v15);
    v43 = v0;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v73 = v22;
      v47 = v46;
      v72 = swift_slowAlloc();
      v89 = v72;
      *v47 = 136315394;
      v48 = *((swift_isaMask & *v43) + 0x140);
      v71 = v45;
      v85 = v48();
      v86 = v49;
      v87 = v50;
      v88 = v51;
      sub_1000224F4();
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v44;
      v55 = v54;

      v56 = sub_100021BC4(v52, v55, &v89);

      *(v47 + 4) = v56;
      *(v47 + 12) = 2080;
      v57 = v80;
      v58 = URL.absoluteString.getter();
      v60 = v59;
      v61 = *(v83 + 8);
      v61(v57, v15);
      v62 = sub_100021BC4(v58, v60, &v89);

      *(v47 + 14) = v62;
      v63 = v53;
      _os_log_impl(&_mh_execute_header, v53, v71, "%s notifying %s", v47, 0x16u);
      swift_arrayDestroy();

      v22 = v73;

      (*(v84 + 8))(v81, v82);
    }

    else
    {

      v61 = *(v83 + 8);
      v61(v80, v15);
      (*(v84 + 8))(v81, v42);
    }

    v64 = type metadata accessor for TaskPriority();
    v65 = v79;
    (*(*(v64 - 8) + 56))(v79, 1, 1, v64);
    v66 = v78;
    v74(v78, v22, v15);
    v67 = (*(v83 + 80) + 40) & ~*(v83 + 80);
    v68 = swift_allocObject();
    v68[2] = 0;
    v68[3] = 0;
    v68[4] = v43;
    v76(v68 + v67, v66, v15);
    v69 = v43;
    sub_100020818(0, 0, v65, &unk_10004D988, v68);

    return (v61)(v22, v15);
  }
}

uint64_t sub_10001FDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = type metadata accessor for Logger();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  v9 = type metadata accessor for URLRequest();
  v5[16] = v9;
  v10 = *(v9 - 8);
  v5[17] = v10;
  v11 = *(v10 + 64) + 15;
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_10001FF00, 0, 0);
}

uint64_t sub_10001FF00()
{
  v1 = *(v0 + 144);
  v2 = (*((swift_isaMask & **(v0 + 88)) + 0x1A0))(*(v0 + 96));
  (*((swift_isaMask & **(v0 + 88)) + 0xF8))(v2);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_100023564((v0 + 16), v3);
  v5 = *(v4 + 8);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = sub_100020354;
  v8 = *(v0 + 144);

  return (v10)(v8, 0, v3, v4);
}

uint64_t sub_100020354(uint64_t a1, unint64_t a2, void *a3)
{
  v8 = *(*v4 + 152);
  v11 = *v4;
  *(*v4 + 160) = v3;

  if (v3)
  {
    v9 = sub_100020518;
  }

  else
  {
    sub_1000235A8(a1, a2);

    v9 = sub_10002048C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10002048C()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  sub_100022B94(v0 + 2);
  v1 = v0[18];
  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100020518()
{
  v33 = v0;
  (*(v0[17] + 8))(v0[18], v0[16]);
  sub_100022B94(v0 + 2);
  v1 = v0[20];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[11];
  v6 = sub_100023EC8();
  (*(v3 + 16))(v2, v6, v4);
  v7 = v5;
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v29 = v0[14];
    v30 = v0[13];
    v31 = v0[15];
    v10 = v0[11];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32 = v28;
    *v11 = 136315394;
    v0[7] = (*((swift_isaMask & *v10) + 0x140))();
    v0[8] = v13;
    v0[9] = v14;
    v0[10] = v15;
    sub_1000224F4();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;

    v19 = sub_100021BC4(v16, v18, &v32);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v20;
    *v12 = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s error notifying server %@", v11, 0x16u);
    sub_100023504(v12, &qword_1000632D8, &qword_10004D9A8);

    sub_100022B94(v28);

    (*(v29 + 8))(v31, v30);
  }

  else
  {
    v22 = v0[14];
    v21 = v0[15];
    v23 = v0[13];

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[18];
  v25 = v0[15];

  v26 = v0[1];

  return v26();
}

uint64_t sub_100020818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100022CF0(&qword_1000632D0, &qword_10004DAC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10002332C(a3, v27 - v11, &qword_1000632D0, &qword_10004DAC0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100023504(v12, &qword_1000632D0, &qword_10004DAC0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100023504(a3, &qword_1000632D0, &qword_10004DAC0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100023504(a3, &qword_1000632D0, &qword_10004DAC0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_100020B18(void *a1@<X8>)
{
  v2 = v1;
  v93 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v90[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v90[-v10];
  v12 = __chkstk_darwin(v9);
  v94 = &v90[-v13];
  v14 = (*((swift_isaMask & *v1) + 0x110))(v12);
  v15 = [v14 aa_primaryAppleAccount];

  if (v15)
  {
    v16 = objc_allocWithZone(ICQRequestProvider);
    v96 = v15;
    v17 = [v16 initWithAccount:v15];
    if (v17)
    {
      v18 = v17;
      v95 = v3;
      v19 = objc_allocWithZone(NSMutableURLRequest);
      URL._bridgeToObjectiveC()(v20);
      v22 = v21;
      v23 = [v19 initWithURL:v21];

      v24 = (*((swift_isaMask & *v2) + 0x128))();
      v97 = 0;
      v25 = [v24 anisetteDataWithError:&v97];

      v26 = v97;
      if (v25)
      {
        v27 = objc_opt_self();
        v28 = v26;
        v29 = [v27 ak_anisetteHeadersWithData:v25];
        if (!v29 || (v30 = v29, v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v30, v32 = sub_100021558(v31), , !v32))
        {
          v93 = v25;
          v67 = sub_100023EC8();
          v68 = v4;
          v69 = *(v4 + 16);
          v70 = v94;
          v71 = v95;
          v69(v94, v67, v95);
          v72 = v2;
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v101 = v92;
            *v75 = 136315138;
            v76 = *((swift_isaMask & *v72) + 0x140);
            v91 = v74;
            v97 = v76();
            v98 = v77;
            v99 = v78;
            v100 = v79;
            sub_1000224F4();
            v80 = dispatch thunk of CustomStringConvertible.description.getter();
            v81 = v68;
            v83 = v82;

            v84 = sub_100021BC4(v80, v83, &v101);

            *(v75 + 4) = v84;
            _os_log_impl(&_mh_execute_header, v73, v91, "%s anisette headers returned nil", v75, 0xCu);
            sub_100022B94(v92);

            (*(v81 + 8))(v94, v95);
          }

          else
          {

            (*(v68 + 8))(v70, v71);
          }

          v88 = v96;
          sub_100022C28();
          swift_allocError();
          *v89 = 2;
          swift_willThrow();

          v87 = v93;
          goto LABEL_21;
        }

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v23 setAllHTTPHeaderFields:isa];

        [v18 addBasicHeadersToRequest:v23];
        v34 = String._bridgeToObjectiveC()();
        v35 = String._bridgeToObjectiveC()();
        [v23 setValue:v34 forHTTPHeaderField:v35];

        v36 = String._bridgeToObjectiveC()();
        v37 = String._bridgeToObjectiveC()();
        [v23 setValue:v36 forHTTPHeaderField:v37];

        static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v85 = v97;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      v54 = sub_100023EC8();
      (*(v4 + 16))(v11, v54, v3);
      v55 = v2;
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v101 = v94;
        *v58 = 136315138;
        v97 = (*((swift_isaMask & *v55) + 0x140))();
        v98 = v59;
        v99 = v60;
        v100 = v61;
        sub_1000224F4();
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v95 = v3;
        v64 = v63;

        v65 = sub_100021BC4(v62, v64, &v101);

        *(v58 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v56, v57, "%s Missing request provider, bailing.", v58, 0xCu);
        sub_100022B94(v94);

        (*(v4 + 8))(v11, v95);
      }

      else
      {

        (*(v4 + 8))(v11, v3);
      }

      sub_100022C28();
      swift_allocError();
      *v86 = 1;
      swift_willThrow();
    }

    v87 = v96;
LABEL_21:

    return;
  }

  v38 = sub_100023EC8();
  (*(v4 + 16))(v8, v38, v3);
  v39 = v2;
  v40 = v3;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v96 = v4;
    v44 = v43;
    v45 = swift_slowAlloc();
    v101 = v45;
    *v44 = 136315138;
    v46 = *((swift_isaMask & *v39) + 0x140);
    v95 = v40;
    v97 = v46();
    v98 = v47;
    v99 = v48;
    v100 = v49;
    sub_1000224F4();
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;

    v53 = sub_100021BC4(v50, v52, &v101);

    *(v44 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v41, v42, "%s Missing primary account, bailing.", v44, 0xCu);
    sub_100022B94(v45);

    (*(v96 + 1))(v8, v95);
  }

  else
  {

    (*(v4 + 8))(v8, v40);
  }

  sub_100022C28();
  swift_allocError();
  *v66 = 0;
  swift_willThrow();
}

unint64_t sub_100021558(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_100022CF0(&qword_1000632C0, &qword_10004D968);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v16 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v16);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v16 = v9;
LABEL_13:
    v17 = __clz(__rbit64(v6)) | (v16 << 6);
    sub_100023038(*(v1 + 48) + 40 * v17, v30);
    sub_100023094(*(v1 + 56) + 32 * v17, v31 + 8);
    v28[0] = v31[0];
    v28[1] = v31[1];
    v29 = v32;
    v27[0] = v30[0];
    v27[1] = v30[1];
    sub_100023038(v27, v26);
    if (!swift_dynamicCast())
    {
      sub_100023504(v27, &qword_1000632C8, &unk_10004D970);

      goto LABEL_22;
    }

    sub_100023094(v28 + 8, v26);
    sub_100023504(v27, &qword_1000632C8, &unk_10004D970);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_10002216C(v24, v25);
    if (v18)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      v13 = v12[1];
      *v12 = v24;
      v12[1] = v25;

      v14 = (v2[7] + v11);
      v1 = v10;
      v15 = v14[1];
      *v14 = v24;
      v14[1] = v25;

      v9 = v16;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v24;
      v19[1] = v25;
      v20 = (v2[7] + 16 * result);
      *v20 = v24;
      v20[1] = v25;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      v2[2] = v23;
      v9 = v16;
    }
  }

LABEL_22:

  return 0;
}

id INFPItemCollectionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1000218CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INFPItemCollectionSyncCompletionObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000219D4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100021ACC;

  return v7(a1);
}

uint64_t sub_100021ACC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100021BC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100021C90(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100023094(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100022B94(v11);
  return v7;
}

unint64_t sub_100021C90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100021D9C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100021D9C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100021DE8(a1, a2);
  sub_100021F18(&off_100055DB0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100021DE8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100022004(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100022004(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100021F18(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100022078(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100022004(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100022CF0(&unk_1000632E0, &qword_10004D9B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100022078(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100022CF0(&unk_1000632E0, &qword_10004D9B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_10002216C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000221E4(a1, a2, v6);
}

unint64_t sub_1000221E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_10002229C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_notifyURL;
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_syncDidComplete];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_isGatheringFinished] = 0;
  v12 = &v4[OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_urlSession];
  v13 = [objc_opt_self() sharedSession];
  v12[3] = sub_100022BE0(0, &unk_100063260, NSURLSession_ptr);
  v12[4] = &off_100055F58;
  *v12 = v13;
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    *&v4[OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_accountStore] = result;
    v15 = OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_anisetteController;
    *&v4[v15] = [objc_allocWithZone(AKAnisetteProvisioningController) init];
    *&v4[OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_itemID] = a1;
    swift_beginAccess();
    v16 = a1;
    sub_100023600(a2, &v4[v9]);
    swift_endAccess();
    v17 = *v11;
    v18 = v11[1];
    *v11 = a3;
    v11[1] = a4;
    sub_100023670(a3);
    sub_1000224E4(v17);
    v19 = sub_100024124();
    v20 = sub_10002412C(0xD000000000000016, 0x8000000100042380, v19);
    v21 = &v4[OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_taskID];
    *v21 = v20;
    v21[1] = v22;
    v21[2] = v23;
    v21[3] = v24;
    v26.receiver = v4;
    v26.super_class = type metadata accessor for INFPItemCollectionSyncCompletionObserver();
    v25 = objc_msgSendSuper2(&v26, "init");
    sub_100023504(a2, &qword_100063280, &qword_10004D7B0);
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000224E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000224F4()
{
  result = qword_1000633F0;
  if (!qword_1000633F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000633F0);
  }

  return result;
}

uint64_t sub_100022548(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100023EC8();
  (*(v4 + 16))(v7, v8, v3);
  v9 = v1;
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v32;
    *v12 = 136315394;
    v13 = *((swift_isaMask & *v9) + 0x140);
    v29 = v11;
    v33 = v13();
    v34 = v14;
    v35 = v15;
    v36 = v16;
    sub_1000224F4();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v3;
    v19 = v18;

    v20 = sub_100021BC4(v17, v19, &v37);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v21;
    v22 = v30;
    *v30 = v21;
    _os_log_impl(&_mh_execute_header, v10, v29, "%s (SyncCompletionObserver) %@", v12, 0x16u);
    sub_100023504(v22, &qword_1000632D8, &qword_10004D9A8);

    sub_100022B94(v32);

    (*(v4 + 8))(v7, v31);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  sub_10001F0B0(0, a1);
  v23 = sub_10001F574();
  result = (*((swift_isaMask & *v9) + 0x98))(v23);
  if (result)
  {
    v26 = v25;
    ObjectType = swift_getObjectType();
    (*(v26 + 8))(*(v9 + OBJC_IVAR____TtC3ind40INFPItemCollectionSyncCompletionObserver_itemID), ObjectType, v26);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000228B8(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100023EC8();
  (*(v4 + 16))(v7, v8, v3);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = v11;
    v13 = v12;
    v25 = swift_slowAlloc();
    v33 = v25;
    *v13 = 136315138;
    v14 = swift_isaMask & *v9;
    v27 = v3;
    v15 = (*(v14 + 320))();
    v28 = a1;
    v29 = v15;
    v30 = v16;
    v31 = v17;
    v32 = v18;
    sub_1000224F4();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;

    v22 = sub_100021BC4(v19, v21, &v33);

    *(v13 + 4) = v22;
    a1 = v28;
    _os_log_impl(&_mh_execute_header, v10, v26, "%s (SyncCompletionObserver)", v13, 0xCu);
    sub_100022B94(v25);

    (*(v4 + 8))(v7, v27);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  return (*((swift_isaMask & *v9) + 0x180))(a1);
}

uint64_t sub_100022B94(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100022BE0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_100022C28()
{
  result = qword_100063278;
  if (!qword_100063278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063278);
  }

  return result;
}

uint64_t type metadata accessor for INFPItemCollectionSyncCompletionObserver()
{
  result = qword_100063820;
  if (!qword_100063820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100022CF0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100022D3C()
{
  result = qword_100063288;
  if (!qword_100063288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063288);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for INCollectionObserverError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for INCollectionObserverError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100022F0C()
{
  sub_100022FE0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100022FE0()
{
  if (!qword_1000632B8)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000632B8);
    }
  }
}

uint64_t sub_100023094(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000230F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022CF0(&qword_100063280, &qword_10004D7B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023160()
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100023238;

  return sub_10001FDE4(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_100023238()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002332C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100022CF0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100023394(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100023698;

  return sub_1000219D4(a1, v5);
}

uint64_t sub_10002344C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100023238;

  return sub_1000219D4(a1, v5);
}

uint64_t sub_100023504(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100022CF0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_100023564(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000235A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100023600(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022CF0(&qword_100063280, &qword_10004D7B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023670(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002369C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100023748;

  return NSURLSession.data(for:delegate:)(a1, a2);
}

uint64_t sub_100023748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 16);
  v14 = *v4;

  v12 = *(v14 + 8);
  if (!v3)
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
  }

  return v12(v9, v10, v11);
}

void sub_100023860()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  qword_100064538 = v2;
}

uint64_t *sub_1000238D0()
{
  if (qword_100063830 != -1)
  {
    swift_once();
  }

  return &qword_100064538;
}

uint64_t sub_100023920()
{
  if (qword_100063830 != -1)
  {
    swift_once();
  }

  v0 = qword_100064538;
  v1 = qword_100064538;
  return v0;
}

id Diagnostics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Diagnostics();
  return objc_msgSendSuper2(&v2, "init");
}

id Diagnostics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Diagnostics();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void _s3ind11DiagnosticsC26setLastRegistrationSuccessyyFZ_0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v10 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  sub_100023DD8();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Setting last registration success", v13, 2u);
  }

  (*(v1 + 8))(v4, v0);
  if (qword_100063830 != -1)
  {
    swift_once();
  }

  v14 = qword_100064538;
  if (qword_100064538)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    v16 = [v10 stringFromDate:isa];

    if (!v16)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = String._bridgeToObjectiveC()();
    }

    v17 = String._bridgeToObjectiveC()();
    [v14 setObject:v16 forKey:v17];

    (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_100023D7C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100023E44(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_10002400C(v3, a2);
  sub_100023D7C(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100023EEC(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return sub_100023D7C(v3, a2);
}

uint64_t sub_100023F64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_100023D7C(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *sub_10002400C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10002412C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  sub_1000242F0(a3, v10, v12, v13);

  static String._fromSubstring(_:)();

  return a1;
}

uint64_t sub_100024270()
{
  countAndFlagsBits = v0[1]._countAndFlagsBits;
  object = v0[1]._object;
  String.append(_:)(*v0);
  v3._countAndFlagsBits = 2108704;
  v3._object = 0xE300000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = countAndFlagsBits;
  v4._object = object;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 93;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 91;
}

uint64_t sub_1000242F0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = String.index(_:offsetBy:limitedBy:)();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

__n128 sub_10002438C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100024398(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000243E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100024430()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  return v2;
}

uint64_t sub_10002449C()
{
  if (!os_variant_has_internal_diagnostics())
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR___INRegistrationTTLOverride_defaults);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_1000245BC(v9);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000245BC(uint64_t a1)
{
  v2 = sub_100022CF0(&qword_100063380, &qword_10004DC80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100024624(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR___INRegistrationTTLOverride_defaults);
  if (v3)
  {
    if (a2)
    {
      v4 = v3;
      isa = 0;
    }

    else
    {
      v6 = v3;
      isa = Double._bridgeToObjectiveC()().super.super.isa;
    }

    v7 = String._bridgeToObjectiveC()();
    [v3 setObject:isa forKey:v7];

    swift_unknownObjectRelease();
  }
}

void (*sub_1000246F0(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  *a1 = sub_10002449C();
  *(a1 + 8) = v3 & 1;
  return sub_100024740;
}

void sub_100024740(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[2] + OBJC_IVAR___INRegistrationTTLOverride_defaults);
  if (v2)
  {
    v3 = *(a1 + 8);
    v6 = v2;
    if (v3)
    {
      isa = 0;
    }

    else
    {
      isa = Double._bridgeToObjectiveC()().super.super.isa;
    }

    v5 = String._bridgeToObjectiveC()();
    [v6 setObject:isa forKey:v5];

    swift_unknownObjectRelease();
  }
}

double sub_100024950()
{
  result = COERCE_DOUBLE((*((swift_isaMask & *v0) + 0x78))());
  if (v2)
  {
    return -1.0;
  }

  return result;
}

id sub_1000249A8()
{
  v1 = OBJC_IVAR___INRegistrationTTLOverride_defaults;
  v2 = objc_allocWithZone(NSUserDefaults);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  *&v0[v1] = v4;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for RegistrationTTLOverride();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_100024B08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RegistrationTTLOverride();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_100024B84(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Class sub_100024CB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a3;
  swift_beginAccess();
  v9 = *(a1 + v8);
  sub_100022BE0(0, &qword_1000634E0, FPItemID_ptr);

  sub_100022CF0(a4, a5);
  sub_10002BF9C();
  v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

uint64_t sub_100024D7C(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_100024DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_100022BE0(0, &qword_1000634E0, FPItemID_ptr);
  sub_100022CF0(a4, a5);
  sub_10002BF9C();
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = *a6;
  swift_beginAccess();
  v12 = *(a1 + v11);
  *(a1 + v11) = v10;
}

uint64_t sub_100024E9C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t variable initialization expression of INFPItemCollectionManager.fpCollectionQueue()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_100022BE0(0, &qword_1000633C0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v11 = &_swiftEmptyArrayStorage;
  sub_10002BF04(&qword_1000633C8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100022CF0(&qword_1000633D0, &unk_10004DAB0);
  sub_10002BF4C(&qword_1000633D8, &qword_1000633D0, &unk_10004DAB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_1000251BC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id variable initialization expression of INFPItemCollectionManager.fpItemManager()
{
  v0 = [objc_opt_self() defaultManager];

  return v0;
}

id sub_1000252B0()
{
  v1 = OBJC_IVAR____TtC3ind25INFPItemCollectionManager_fpItemManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_100025364(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC3ind25INFPItemCollectionManager_fpItemManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id INFPItemCollectionManager.init()()
{
  v1 = v0;
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v16);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v15 = OBJC_IVAR____TtC3ind25INFPItemCollectionManager_fpCollectionQueue;
  v10 = sub_100022BE0(0, &qword_1000633C0, OS_dispatch_queue_ptr);
  v14[1] = "overrideTimeInterval";
  v14[2] = v10;
  static DispatchQoS.unspecified.getter();
  v18 = &_swiftEmptyArrayStorage;
  sub_10002BF04(&qword_1000633C8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100022CF0(&qword_1000633D0, &unk_10004DAB0);
  sub_10002BF4C(&qword_1000633D8, &qword_1000633D0, &unk_10004DAB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *&v0[v15] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = OBJC_IVAR____TtC3ind25INFPItemCollectionManager_fpItemManager;
  *&v1[v11] = [objc_opt_self() defaultManager];
  *&v1[OBJC_IVAR____TtC3ind25INFPItemCollectionManager_observingCollections] = sub_10002B5AC(&_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC3ind25INFPItemCollectionManager_observers] = sub_10002B6A4(&_swiftEmptyArrayStorage);
  v12 = type metadata accessor for INFPItemCollectionManager();
  v17.receiver = v1;
  v17.super_class = v12;
  return objc_msgSendSuper2(&v17, "init");
}

void sub_100025968(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t INFPItemCollectionManager.sync(itemID:observeItemIDs:notifyURL:syncCompletion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a2;
  v60 = a3;
  v8 = sub_100022CF0(&qword_100063280, &qword_10004D7B0);
  v59 = *(v8 - 8);
  v58 = *(v59 + 64);
  __chkstk_darwin(v8 - 8);
  v61 = &v53 - v9;
  v10 = sub_100022CF0(&qword_1000632D0, &qword_10004DAC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v62 = &v53 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100024124();
  v19 = sub_10002412C(0xD000000000000035, 0x80000001000424B0, v18);
  v21 = v20;
  v66 = v22;
  v24 = v23;
  v25 = sub_100023EC8();
  v26 = *(v14 + 16);
  v57 = v13;
  v26(v17, v25, v13);

  v27 = a1;
  v28 = v21;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v65 = v24;

  v31 = os_log_type_enabled(v29, v30);
  v56 = v19;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v55 = a5;
    v33 = v32;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v54 = a4;
    v36 = v35;
    *v33 = 136315394;
    v67 = v19;
    v68 = v28;
    v69 = v66;
    v70 = v65;
    v71 = v35;
    sub_1000224F4();
    v53 = v28;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = sub_100021BC4(v37, v38, &v71);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2112;
    *(v33 + 14) = v27;
    *v34 = v27;
    v40 = v27;
    _os_log_impl(&_mh_execute_header, v29, v30, "%s Starting %@", v33, 0x16u);
    sub_100023504(v34, &qword_1000632D8, &qword_10004D9A8);
    v41 = v53;

    sub_100022B94(v36);
    a4 = v54;

    a5 = v55;

    (*(v14 + 8))(v17, v57);
  }

  else
  {

    (*(v14 + 8))(v17, v57);
    v41 = v28;
  }

  v42 = type metadata accessor for TaskPriority();
  v43 = v62;
  (*(*(v42 - 8) + 56))(v62, 1, 1, v42);
  v44 = v61;
  sub_10002332C(v60, v61, &qword_100063280, &qword_10004D7B0);
  v45 = (*(v59 + 80) + 96) & ~*(v59 + 80);
  v46 = (v58 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v47[2] = 0;
  v47[3] = 0;
  v48 = v63;
  v47[4] = v63;
  v47[5] = v27;
  v47[6] = v56;
  v47[7] = v41;
  v49 = v65;
  v47[8] = v66;
  v47[9] = v49;
  v47[10] = a4;
  v47[11] = a5;
  sub_10002B7C0(v44, v47 + v45);
  *(v47 + v46) = v64;
  v50 = v27;
  v51 = v48;
  sub_100023670(a4);

  sub_100020818(0, 0, v43, &unk_10004DAD0, v47);
}

uint64_t sub_100025EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = v17;
  *(v8 + 224) = v15;
  *(v8 + 240) = v16;
  *(v8 + 208) = a7;
  *(v8 + 216) = a8;
  *(v8 + 192) = a5;
  *(v8 + 200) = a6;
  *(v8 + 184) = a4;
  v9 = *(*(sub_100022CF0(&qword_100063280, &qword_10004D7B0) - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 272) = v10;
  v11 = *(v10 - 8);
  *(v8 + 280) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_100025FD0, 0, 0);
}

uint64_t sub_100025FD0()
{
  v39 = v0;
  v1 = (*((swift_isaMask & **(v0 + 184)) + 0x70))();
  if (*(v1 + 16))
  {
    v2 = sub_10002A21C(*(v0 + 192));
    if (v3)
    {
      v4 = *(v0 + 304);
      v6 = *(v0 + 272);
      v5 = *(v0 + 280);
      v7 = *(v0 + 224);
      v8 = *(v0 + 208);
      v9 = *(v0 + 192);
      v10 = *(*(v1 + 56) + 8 * v2);

      v11 = sub_100023EC8();
      (*(v5 + 16))(v4, v11, v6);

      v12 = v9;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 304);
      v17 = *(v0 + 272);
      v18 = *(v0 + 280);
      if (v15)
      {
        v35 = *(v0 + 272);
        v36 = *(v0 + 304);
        v20 = *(v0 + 216);
        v19 = *(v0 + 224);
        v34 = *(v0 + 200);
        v21 = *(v0 + 192);
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v37 = v10;
        v38 = swift_slowAlloc();
        v24 = v38;
        *v22 = 136315394;
        *(v0 + 144) = v34;
        *(v0 + 160) = v20;
        *(v0 + 168) = v19;
        sub_1000224F4();
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = sub_100021BC4(v25, v26, &v38);

        *(v22 + 4) = v27;
        *(v22 + 12) = 2112;
        *(v22 + 14) = v21;
        *v23 = v21;
        v28 = v21;
        _os_log_impl(&_mh_execute_header, v13, v14, "%s item %@ will be overwritten by new observer. Stopping updates.", v22, 0x16u);
        sub_100023504(v23, &qword_1000632D8, &qword_10004D9A8);

        sub_100022B94(v24);
        v10 = v37;

        (*(v18 + 8))(v36, v35);
      }

      else
      {

        (*(v18 + 8))(v16, v17);
      }

      v29 = *(v0 + 184);
      sub_100026FDC(v10);
    }
  }

  v30 = swift_task_alloc();
  *(v0 + 312) = v30;
  *v30 = v0;
  v30[1] = sub_1000262E0;
  v32 = *(v0 + 184);
  v31 = *(v0 + 192);

  return sub_100027878(v31);
}

uint64_t sub_1000262E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v7 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v5 = sub_100026B20;
  }

  else
  {
    v5 = sub_1000263F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000263F4()
{
  v1 = v0[40];
  v2 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v6 = v0[23];
  v7 = v0[24];
  type metadata accessor for INFPItemCollectionSyncCompletionObserver();
  sub_10002332C(v3, v2, &qword_100063280, &qword_10004D7B0);
  v8 = v7;
  v9 = v1;
  sub_100023670(v5);
  v10 = sub_10001DF10(v8, v2, v5, v4);
  v0[42] = v10;
  v11 = *((swift_isaMask & *v10) + 0xA0);
  v12 = swift_unknownObjectRetain();
  v11(v12, &off_100056058);
  [v9 setDelegate:v10];
  v13 = swift_task_alloc();
  v0[43] = v13;
  *v13 = v0;
  v13[1] = sub_100026574;
  v14 = v0[32];
  v15 = v0[23];

  return sub_100028814(v14);
}

uint64_t sub_100026574(uint64_t a1)
{
  v2 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = a1;

  return _swift_task_switch(sub_100026674, 0, 0);
}

uint64_t sub_100026674()
{
  v64 = v0;
  *(v0 + 176) = *(v0 + 352);
  v1 = (v0 + 176);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v56 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v59 = *(v0 + 336);
  v2 = *(v0 + 320);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v5 = *(v0 + 176);
  v6 = *((swift_isaMask & *v4) + 0x80);
  swift_bridgeObjectRetain_n();
  v7 = v3;
  v8 = v6(v0 + 48);
  v10 = v9;
  v11 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v10;
  *v10 = 0x8000000000000000;
  v58 = v5;
  sub_10002ADC8(v5, v7, isUniquelyReferenced_nonNull_native);

  *v10 = v63;
  v8(v0 + 48, 0);
  v13 = *((swift_isaMask & *v4) + 0x98);
  v14 = v59;
  v16 = v13(v0 + 80);
  v17 = v15;
  v18 = *v15;
  v60 = v16;
  if ((*v15 & 0xC000000000000001) != 0)
  {
    if (v18 < 0)
    {
      v19 = *v15;
    }

    else
    {
      v19 = v18 & 0xFFFFFFFFFFFFFF8;
    }

    result = __CocoaDictionary.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    *v17 = sub_10002A514(v19, result + 1);
  }

  v21 = *(v0 + 336);
  v22 = *(v0 + 296);
  v23 = *(v0 + 272);
  v24 = *(v0 + 280);
  v25 = *(v0 + 224);
  v26 = *(v0 + 208);
  v27 = *(v0 + 192);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v17;
  sub_10002B430(v21, v27, v28, &v63);
  *v17 = v63;
  v60();
  v29 = sub_100023EC8();
  (*(v24 + 16))(v22, v29, v23);
  v30 = v27;

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 296);
  v35 = *(v0 + 272);
  v36 = *(v0 + 280);
  if (v33)
  {
    v61 = *(v0 + 272);
    v62 = *(v0 + 296);
    v37 = *(v0 + 216);
    v38 = *(v0 + 224);
    v57 = *(v0 + 200);
    v39 = *(v0 + 192);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v63 = v42;
    *v40 = 136315394;
    *(v0 + 112) = v57;
    *(v0 + 128) = v37;
    *(v0 + 136) = v38;
    sub_1000224F4();
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = sub_100021BC4(v43, v44, &v63);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2112;
    *(v40 + 14) = v39;
    *v41 = v39;
    v46 = v39;
    v47 = v58;

    _os_log_impl(&_mh_execute_header, v31, v32, "%s starting observation! %@", v40, 0x16u);
    sub_100023504(v41, &qword_1000632D8, &qword_10004D9A8);

    sub_100022B94(v42);

    (*(v36 + 8))(v62, v61);
  }

  else
  {

    (*(v36 + 8))(v34, v35);
    v47 = v58;
  }

  v48 = *(v0 + 336);
  v49 = *(v0 + 320);
  v50 = *(v0 + 184);
  sub_1000272E8(v47);

  v52 = *(v0 + 296);
  v51 = *(v0 + 304);
  v53 = *(v0 + 288);
  v54 = *(v0 + 264);

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_100026B20()
{
  v38 = v0;
  v1 = *(v0 + 328);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 272);
  v5 = *(v0 + 224);
  v6 = *(v0 + 208);
  v7 = sub_100023EC8();
  (*(v3 + 16))(v2, v7, v4);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 328);
    v34 = *(v0 + 280);
    v35 = *(v0 + 272);
    v36 = *(v0 + 288);
    v12 = *(v0 + 216);
    v11 = *(v0 + 224);
    v33 = *(v0 + 200);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37 = v15;
    *v13 = 136315394;
    *(v0 + 16) = v33;
    *(v0 + 32) = v12;
    *(v0 + 40) = v11;
    sub_1000224F4();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = sub_100021BC4(v16, v17, &v37);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v19;
    *v14 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s error while gathering item collection %@", v13, 0x16u);
    sub_100023504(v14, &qword_1000632D8, &qword_10004D9A8);

    sub_100022B94(v15);

    (*(v34 + 8))(v36, v35);
  }

  else
  {
    v21 = *(v0 + 280);
    v20 = *(v0 + 288);
    v22 = *(v0 + 272);

    (*(v21 + 8))(v20, v22);
  }

  v23 = *(v0 + 232);
  v24 = *(v0 + 328);
  if (v23)
  {
    v25 = *(v0 + 240);
    v26 = *(v0 + 328);
    swift_errorRetain();
    v23(0, v24);
  }

  v28 = *(v0 + 296);
  v27 = *(v0 + 304);
  v29 = *(v0 + 288);
  v30 = *(v0 + 264);

  v31 = *(v0 + 8);

  return v31();
}

void sub_100027004(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100023EC8();
  (*(v3 + 16))(v6, v7, v2);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = a1 >> 62;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_100021BC4(0xD000000000000011, 0x8000000100042730, &v20);
    *(v11 + 12) = 2048;
    if (v10)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 14) = v13;

    _os_log_impl(&_mh_execute_header, v8, v9, "%s - collections: %ld", v11, 0x16u);
    sub_100022B94(v12);
  }

  else
  {
  }

  (*(v3 + 8))(v6, v2);
  if (v10)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * j + 32);
      }

      v17 = v16;
      v18 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v16 stopObserving];

      if (v18 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_1000272A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100027310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v4 + OBJC_IVAR____TtC3ind25INFPItemCollectionManager_fpCollectionQueue);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000272A4;
  aBlock[3] = a4;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_10002BF04(&qword_1000634C8, &type metadata accessor for DispatchWorkItemFlags);
  sub_100022CF0(&qword_1000634D0, &qword_10004DC48);
  sub_10002BF4C(&qword_1000634D8, &qword_1000634D0, &qword_10004DC48);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v21);
}

void sub_1000275D8(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100023EC8();
  (*(v3 + 16))(v6, v7, v2);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = a1 >> 62;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_100021BC4(0xD000000000000012, 0x8000000100042710, &v20);
    *(v11 + 12) = 2048;
    if (v10)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 14) = v13;

    _os_log_impl(&_mh_execute_header, v8, v9, "%s - collections: %ld", v11, 0x16u);
    sub_100022B94(v12);
  }

  else
  {
  }

  (*(v3 + 8))(v6, v2);
  if (v10)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * j + 32);
      }

      v17 = v16;
      v18 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v16 startObserving];

      if (v18 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_100027878(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for Logger();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100027938, 0, 0);
}

uint64_t sub_100027938()
{
  v38 = v0;
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = sub_100024124();
  v6 = sub_10002412C(0xD000000000000019, 0x80000001000426D0, v5);
  v8 = v7;
  v36 = v9;
  v11 = v10;
  *(v0 + 96) = v7;
  *(v0 + 104) = v10;
  v12 = sub_100023EC8();
  (*(v2 + 16))(v1, v12, v3);

  v13 = v4;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v32 = *(v0 + 80);
    v33 = *(v0 + 72);
    v34 = *(v0 + 88);
    v35 = v6;
    v16 = *(v0 + 56);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37 = v31;
    *v17 = 136315394;
    *(v0 + 16) = v35;
    *(v0 + 24) = v8;
    *(v0 + 32) = v36;
    *(v0 + 40) = v11;
    sub_1000224F4();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = sub_100021BC4(v19, v20, &v37);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v16;
    *v18 = v16;
    v22 = v16;
    v6 = v35;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s Fetching %@", v17, 0x16u);
    sub_100023504(v18, &qword_1000632D8, &qword_10004D9A8);

    sub_100022B94(v31);

    (*(v32 + 8))(v34, v33);
  }

  else
  {
    v24 = *(v0 + 80);
    v23 = *(v0 + 88);
    v25 = *(v0 + 72);

    (*(v24 + 8))(v23, v25);
  }

  v26 = swift_task_alloc();
  *(v0 + 112) = v26;
  v26[1] = vextq_s8(*(v0 + 56), *(v0 + 56), 8uLL);
  v26[2].i64[0] = v6;
  v26[2].i64[1] = v8;
  v26[3].i64[0] = v36;
  v26[3].i64[1] = v11;
  v27 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v28 = swift_task_alloc();
  *(v0 + 120) = v28;
  v29 = sub_100022BE0(0, &qword_1000634B0, FPItemCollection_ptr);
  *v28 = v0;
  v28[1] = sub_100027C84;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 48, 0, 0, 0xD000000000000019, 0x80000001000426D0, sub_10002BDC0, v26, v29);
}

uint64_t sub_100027C84()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_100027E28;
  }

  else
  {
    v6 = v2[13];
    v5 = v2[14];
    v7 = v2[12];

    v4 = sub_100027DBC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100027DBC()
{
  v1 = v0[11];
  v2 = v0[6];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_100027E28()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

void sub_100027EB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a4;
  v25 = a6;
  v26 = a3;
  v11 = sub_100022CF0(&qword_1000634B8, &qword_10004DC40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v23 - v15;
  v17 = (*((swift_isaMask & *a2) + 0xA0))(v14);
  (*(v12 + 16))(v16, a1, v11);
  v18 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v19 = swift_allocObject();
  v20 = v25;
  *(v19 + 2) = v24;
  *(v19 + 3) = a5;
  *(v19 + 4) = v20;
  *(v19 + 5) = a7;
  (*(v12 + 32))(&v19[v18], v16, v11);
  *&v19[(v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;
  aBlock[4] = sub_10002BDD0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100028788;
  aBlock[3] = &unk_100056170;
  v21 = _Block_copy(aBlock);

  v22 = a2;

  [v17 fetchItemForItemID:v26 completionHandler:v21];
  _Block_release(v21);
}

void sub_1000280EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v63 = a5;
  v64 = a7;
  v62 = a3;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v60 - v20;
  __chkstk_darwin(v19);
  v23 = &v60 - v22;
  if (a2)
  {
    swift_errorRetain();
    v24 = sub_100023EC8();
    (*(v14 + 16))(v23, v24, v13);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v61 = v13;
      v28 = v27;
      v29 = swift_slowAlloc();
      v68 = a6;
      v69 = v29;
      *v28 = 136315138;
      v65 = v62;
      v66 = a4;
      v67 = v63;
      sub_1000224F4();
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = sub_100021BC4(v30, v31, &v69);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "%s Encountered error fetching item", v28, 0xCu);
      sub_100022B94(v29);

      (*(v14 + 8))(v23, v61);
    }

    else
    {

      (*(v14 + 8))(v23, v13);
    }

    v65 = a2;
LABEL_9:
    sub_100022CF0(&qword_1000634B8, &qword_10004DC40);
    CheckedContinuation.resume(throwing:)();
    return;
  }

  if (!a1)
  {
    v38 = sub_100023EC8();
    (*(v14 + 16))(v21, v38, v13);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = v13;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v68 = a6;
      v69 = v43;
      *v42 = 136315138;
      v65 = v62;
      v66 = a4;
      v67 = v63;
      sub_1000224F4();
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = sub_100021BC4(v44, v45, &v69);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v39, v40, "%s No item for ID", v42, 0xCu);
      sub_100022B94(v43);

      (*(v14 + 8))(v21, v41);
    }

    else
    {

      (*(v14 + 8))(v21, v13);
    }

    sub_10002BEA8();
    v56 = swift_allocError();
    *v57 = 0;
    v65 = v56;
    goto LABEL_9;
  }

  v33 = a1;
  if ([v33 isFolder])
  {
    v34 = (*((swift_isaMask & *a8) + 0xA0))();
    v35 = [v34 collectionForFolderItem:v33];

    v36 = *(a8 + OBJC_IVAR____TtC3ind25INFPItemCollectionManager_fpCollectionQueue);
    v37 = v35;
    [v37 setWorkingQueue:v36];
    v65 = v37;
    sub_100022CF0(&qword_1000634B8, &qword_10004DC40);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    v47 = sub_100023EC8();
    (*(v14 + 16))(v18, v47, v13);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v61 = v13;
      v51 = v50;
      v52 = swift_slowAlloc();
      v68 = a6;
      v69 = v52;
      *v51 = 136315138;
      v65 = v62;
      v66 = a4;
      v67 = v63;
      sub_1000224F4();
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = sub_100021BC4(v53, v54, &v69);

      *(v51 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v48, v49, "%s Item is not a folder, ID", v51, 0xCu);
      sub_100022B94(v52);

      (*(v14 + 8))(v18, v61);
    }

    else
    {

      (*(v14 + 8))(v18, v13);
    }

    sub_10002BEA8();
    v58 = swift_allocError();
    *v59 = 1;
    v65 = v58;
    sub_100022CF0(&qword_1000634B8, &qword_10004DC40);
    CheckedContinuation.resume(throwing:)();
  }
}

void sub_100028788(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100028814(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for Logger();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000288D4, 0, 0);
}

uint64_t sub_1000288D4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[7];
  v5 = sub_100024124();
  v6 = sub_10002412C(0xD00000000000001ALL, 0x80000001000426B0, v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v0[12] = v7;
  v0[13] = v11;
  v13 = sub_100023EC8();
  (*(v2 + 16))(v1, v13, v3);
  swift_bridgeObjectRetain_n();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v44 = v10;
  if (os_log_type_enabled(v14, v15))
  {
    v42 = v15;
    v16 = v0[7];
    v17 = v6;
    v18 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v46 = v41;
    *v18 = 136315394;
    v43 = v17;
    v0[2] = v17;
    v0[3] = v8;
    v0[4] = v10;
    v0[5] = v12;
    sub_1000224F4();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = sub_100021BC4(v19, v20, &v46);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2048;
    if (v16 >> 62)
    {
      if (v0[7] < 0)
      {
        v38 = v0[7];
      }

      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v0[10];
    v24 = v0[11];
    v40 = v0[9];
    v25 = v0[7];

    *(v18 + 14) = v22;

    _os_log_impl(&_mh_execute_header, v14, v42, "%s gathering %ld collections", v18, 0x16u);
    sub_100022B94(v41);

    (*(v23 + 8))(v24, v40);
    v6 = v43;
  }

  else
  {
    v27 = v0[10];
    v26 = v0[11];
    v28 = v0[9];
    v16 = v0[7];
    swift_bridgeObjectRelease_n();

    (*(v27 + 8))(v26, v28);
  }

  v29 = v0[7];
  if (v29 >> 62)
  {
    if (v29 < 0)
    {
      v35 = v0[7];
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_8;
    }
  }

  else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_8:
    v30 = sub_100022CF0(&qword_100063490, &qword_10004DBF8);
    v31 = sub_100022CF0(&qword_100063498, &qword_10004DC00);
    v32 = swift_task_alloc();
    v0[14] = v32;
    *(v32 + 16) = *(v0 + 7);
    *(v32 + 32) = v6;
    *(v32 + 40) = v8;
    *(v32 + 48) = v44;
    *(v32 + 56) = v12;
    v33 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v34 = swift_task_alloc();
    v0[15] = v34;
    *v34 = v0;
    v34[1] = sub_100028CD4;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 6, v30, v31, 0, 0, &unk_10004DC10, v32, v30);
  }

  v36 = v0[11];

  v37 = v0[1];

  return v37(&_swiftEmptyArrayStorage);
}

uint64_t sub_100028CD4()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v6 = *v0;

  return _swift_task_switch(sub_100028E2C, 0, 0);
}

uint64_t sub_100028E2C()
{
  v1 = v0[6];
  v2 = v0[11];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_100028E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[11] = a1;
  v8[12] = a2;
  v9 = sub_100022CF0(&qword_1000634A0, &qword_10004DC18);
  v8[19] = v9;
  v10 = *(v9 - 8);
  v8[20] = v10;
  v11 = *(v10 + 64) + 15;
  v8[21] = swift_task_alloc();
  v12 = *(*(sub_100022CF0(&qword_1000632D0, &qword_10004DAC0) - 8) + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();

  return _swift_task_switch(sub_100028FB0, 0, 0);
}

uint64_t sub_100028FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 104);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v27 = *(v3 + 104);
    }

    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return dispatch thunk of AsyncIteratorProtocol.next()(v5, a2, a3);
  }

  v6 = 0;
  v35 = *(v3 + 104) + 32;
  v36 = **(v3 + 96);
  v37 = v4 & 0xC000000000000001;
  v38 = v5;
  do
  {
    v44 = v6;
    if (v37)
    {
      v8 = *(v3 + 104);
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v35 + 8 * v6);
    }

    v42 = v9;
    v10 = *(v3 + 176);
    v11 = *(v3 + 184);
    v12 = *(v3 + 144);
    v40 = *(v3 + 136);
    v13 = *(v3 + 128);
    v39 = *(v3 + 120);
    v14 = *(v3 + 112);
    v15 = type metadata accessor for TaskPriority();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v11, 1, 1, v15);
    v17 = swift_allocObject();
    v17[2] = 0;
    v41 = v17 + 2;
    v17[3] = 0;
    v17[4] = v14;
    v17[5] = v42;
    v17[6] = v39;
    v17[7] = v13;
    v17[8] = v40;
    v17[9] = v12;
    sub_10002332C(v11, v10, &qword_1000632D0, &qword_10004DAC0);
    LODWORD(v10) = (*(v16 + 48))(v10, 1, v15);
    v18 = v14;
    v43 = v42;

    v19 = *(v3 + 176);
    if (v10 == 1)
    {
      sub_100023504(*(v3 + 176), &qword_1000632D0, &qword_10004DAC0);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v16 + 8))(v19, v15);
    }

    if (*v41)
    {
      v20 = v17[3];
      v21 = *v41;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v22 = dispatch thunk of Actor.unownedExecutor.getter();
      v24 = v23;
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v25 = swift_allocObject();
    *(v25 + 16) = &unk_10004DC30;
    *(v25 + 24) = v17;

    sub_100022CF0(&qword_100063490, &qword_10004DBF8);
    v26 = v24 | v22;
    if (v24 | v22)
    {
      v26 = v3 + 16;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      *(v3 + 32) = v22;
      *(v3 + 40) = v24;
    }

    v6 = v44 + 1;
    v7 = *(v3 + 184);
    *(v3 + 48) = 1;
    *(v3 + 56) = v26;
    *(v3 + 64) = v36;
    swift_task_create();

    sub_100023504(v7, &qword_1000632D0, &qword_10004DAC0);
  }

  while (v38 != v44 + 1);
LABEL_20:
  v28 = *(v3 + 168);
  v29 = **(v3 + 96);
  *(v3 + 72) = &_swiftEmptyArrayStorage;
  sub_100022CF0(&qword_100063490, &qword_10004DBF8);
  TaskGroup.makeAsyncIterator()();
  *(v3 + 192) = &_swiftEmptyArrayStorage;
  *(v3 + 200) = &_swiftEmptyArrayStorage;
  v30 = sub_10002BF4C(&qword_1000634A8, &qword_1000634A0, &qword_10004DC18);
  v31 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v32 = swift_task_alloc();
  *(v3 + 208) = v32;
  *v32 = v3;
  v32[1] = sub_100029400;
  v33 = *(v3 + 168);
  a2 = *(v3 + 152);
  v5 = v3 + 80;
  a3 = v30;

  return dispatch thunk of AsyncIteratorProtocol.next()(v5, a2, a3);
}

uint64_t sub_100029400()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v10 = *v1;

  if (v0)
  {
    v4 = v2[25];
    v6 = v2[20];
    v5 = v2[21];
    v7 = v2[19];

    (*(v6 + 8))(v5, v7);

    v8 = nullsub_4;
  }

  else
  {
    v8 = sub_100029554;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100029554()
{
  v1 = v0[5].f64[0];
  if (*&v1 == 1)
  {
    v2 = v0[11].f64[1];
    v3 = v0[12].f64[0];
    v4 = v0[11].f64[0];
    v5 = v0[5].f64[1];
    (*(*&v0[10].f64[0] + 8))(*&v0[10].f64[1], *&v0[9].f64[1]);
    **&v5 = v3;

    v6 = *&v0->f64[1];

    return v6();
  }

  else
  {
    if (v1 == 0.0)
    {
      v10 = v0[12];
    }

    else
    {
      v8 = &v0[4].f64[1];
      v9 = *&v1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_10002BDB0(*&v1);
      v10 = vld1q_dup_f64(v8);
    }

    v0[12] = v10;
    v11 = sub_10002BF4C(&qword_1000634A8, &qword_1000634A0, &qword_10004DC18);
    v12 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v13 = swift_task_alloc();
    *&v0[13].f64[0] = v13;
    *v13 = v0;
    v13[1] = sub_100029400;
    v14 = v0[10].f64[1];
    v15 = v0[9].f64[1];

    return dispatch thunk of AsyncIteratorProtocol.next()(&v0[5], *&v15, v11);
  }
}

uint64_t sub_100029730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v16;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a1;
  v8[7] = a5;
  v10 = type metadata accessor for Logger();
  v8[12] = v10;
  v11 = *(v10 - 8);
  v8[13] = v11;
  v12 = *(v11 + 64) + 15;
  v8[14] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[15] = v13;
  *v13 = v8;
  v13[1] = sub_100029838;

  return sub_100027878(a5);
}

uint64_t sub_100029838(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_1000299CC;
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = sub_100029960;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100029960()
{
  v1 = *(v0 + 112);
  **(v0 + 48) = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000299CC()
{
  v34 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = sub_100023EC8();
  (*(v2 + 16))(v1, v7, v3);

  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v29 = *(v0 + 128);
    v30 = *(v0 + 104);
    v11 = *(v0 + 88);
    v31 = *(v0 + 96);
    v32 = *(v0 + 112);
    v12 = *(v0 + 80);
    v28 = *(v0 + 64);
    v13 = *(v0 + 56);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v14 = 136315394;
    *(v0 + 16) = v28;
    *(v0 + 32) = v12;
    *(v0 + 40) = v11;
    sub_1000224F4();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = sub_100021BC4(v17, v18, &v33);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v13;
    *v15 = v13;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s encountered error when fetching %@", v14, 0x16u);
    sub_100023504(v15, &qword_1000632D8, &qword_10004D9A8);

    sub_100022B94(v16);

    (*(v30 + 8))(v32, v31);
  }

  else
  {
    v21 = *(v0 + 128);
    v23 = *(v0 + 104);
    v22 = *(v0 + 112);
    v24 = *(v0 + 96);

    (*(v23 + 8))(v22, v24);
  }

  v25 = *(v0 + 112);
  **(v0 + 48) = 0;

  v26 = *(v0 + 8);

  return v26();
}

id INFPItemCollectionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INFPItemCollectionManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t INFPItemCollectionManager.stopObserving(itemID:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v11 = sub_100023EC8();
  v38 = v5[2];
  v39 = v11;
  v38(v10);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v41 = v5;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v37 = v4;
    v18 = v5;
    v19 = v17;
    v20 = swift_slowAlloc();
    v42[0] = v20;
    *v16 = 136315394;
    *(v16 + 4) = sub_100021BC4(0xD000000000000016, 0x80000001000424F0, v42);
    *(v16 + 12) = 2112;
    *(v16 + 14) = v12;
    *v19 = v12;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s id: %@", v16, 0x16u);
    sub_100023504(v19, &qword_1000632D8, &qword_10004D9A8);

    sub_100022B94(v20);

    v22 = v18;
    v4 = v37;
    v23 = v22[1];
    v23(v10, v37);
  }

  else
  {

    v23 = v5[1];
    v23(v10, v4);
  }

  v24 = (*((swift_isaMask & *v2) + 0x80))(v42);
  v25 = sub_10002A480(v12);
  v24(v42, 0);
  if (v25)
  {
    v26 = (*((swift_isaMask & *v2) + 0x98))(v42);
    sub_10002A334(v12);
    swift_unknownObjectRelease();
    v26(v42, 0);
    sub_100026FDC(v25);
  }

  else
  {
    v28 = v40;
    (v38)(v40, v39, v4);
    v29 = v12;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v42[0] = v34;
      *v32 = 136315394;
      *(v32 + 4) = sub_100021BC4(0xD000000000000016, 0x80000001000424F0, v42);
      *(v32 + 12) = 2112;
      *(v32 + 14) = v29;
      *v33 = v29;
      v35 = v29;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s Tried to remove collection for %@ but it was not found", v32, 0x16u);
      sub_100023504(v33, &qword_1000632D8, &qword_10004D9A8);

      sub_100022B94(v34);
    }

    return (v23)(v28, v4);
  }
}

unint64_t sub_10002A21C(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10002A260(a1, v4);
}

unint64_t sub_10002A260(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100022BE0(0, &qword_1000634E0, FPItemID_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10002A334(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_10002A21C(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_10002AC3C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_10002AF44();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_10002A514(v4, v7);

  v9 = sub_10002A21C(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_10002AC3C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_10002A480(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10002A21C(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10002B0A8();
    v9 = v12;
  }

  v10 = *(*(v9 + 56) + 8 * v6);
  sub_10002AC3C(v6, v9);
  *v2 = v9;
  return v10;
}

Swift::Int sub_10002A514(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100022CF0(&qword_1000634F8, &qword_10004DC58);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100022BE0(0, &qword_1000634E0, FPItemID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100022CF0(&qword_1000634E8, &qword_10004DC50);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10002A75C(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_10002A75C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100022CF0(&qword_1000634F8, &qword_10004DC58);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        swift_unknownObjectRetain();
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10002A9CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100022CF0(&qword_100063500, qword_10004DC60);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void sub_10002AC3C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

id sub_10002ADC8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10002A21C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10002A9CC(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_10002A21C(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_100022BE0(0, &qword_1000634E0, FPItemID_ptr);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_10002B0A8();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

void *sub_10002AF44()
{
  v1 = v0;
  sub_100022CF0(&qword_1000634F8, &qword_10004DC58);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10002B0A8()
{
  v1 = v0;
  sub_100022CF0(&qword_100063500, qword_10004DC60);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10002B20C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_10002B300;

  return v6(v2 + 16);
}

uint64_t sub_10002B300()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

id sub_10002B430(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = *a4;
  v8 = sub_10002A21C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10002A75C(v13, a3 & 1);
      v17 = *a4;
      v8 = sub_10002A21C(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_100022BE0(0, &qword_1000634E0, FPItemID_ptr);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_10002AF44();
      v8 = v16;
    }
  }

  v19 = *a4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

unint64_t sub_10002B5AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100022CF0(&qword_100063500, qword_10004DC60);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_10002A21C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10002B6A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100022CF0(&qword_1000634F8, &qword_10004DC58);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_10002A21C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10002B7C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022CF0(&qword_100063280, &qword_10004D7B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B830()
{
  v2 = *(sub_100022CF0(&qword_100063280, &qword_10004D7B0) - 8);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v14 = *(v0 + 72);
  v8 = *(v0 + 88);
  v9 = *(v0 + ((*(v2 + 64) + ((*(v2 + 80) + 96) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100023698;

  return sub_100025EA4(v10, v11, v12, v3, v4, v5, v6, v7);
}

unint64_t sub_10002B994()
{
  result = qword_100063400;
  if (!qword_100063400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063400);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for INItemCollectionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for INItemCollectionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10002BB44(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100023698;

  return sub_100028E94(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_10002BC20(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100023238;

  return sub_100029730(a1, v10, v11, v4, v5, v6, v7, v9);
}

uint64_t sub_10002BCF8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100023238;

  return sub_10002B20C(a1, v5);
}

void sub_10002BDB0(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_10002BDD0(void *a1, uint64_t a2)
{
  v5 = *(sub_100022CF0(&qword_1000634B8, &qword_10004DC40) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v11 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000280EC(a1, a2, v7, v8, v9, v10, v2 + v6, v11);
}

uint64_t sub_10002BE90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002BEA8()
{
  result = qword_1000634C0;
  if (!qword_1000634C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000634C0);
  }

  return result;
}

uint64_t sub_10002BF04(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002BF4C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000251BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002BF9C()
{
  result = qword_1000634F0;
  if (!qword_1000634F0)
  {
    sub_100022BE0(255, &qword_1000634E0, FPItemID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000634F0);
  }

  return result;
}

id sub_10002C060()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_100063A58 = result;
  return result;
}

uint64_t static LoggedOutPushCache.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100063A50 != -1)
  {
    swift_once();
  }

  v2 = qword_100063A58;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_1000245BC(v11);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

void static LoggedOutPushCache.registeredDevice(expirationDate:)()
{
  if (qword_100063A50 != -1)
  {
    swift_once();
  }

  v0 = qword_100063A58;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setObject:isa forKey:v2];
}

void static LoggedOutPushCache.unregisteredDevice()()
{
  if (qword_100063A50 != -1)
  {
    swift_once();
  }

  v0 = qword_100063A58;
  v1 = String._bridgeToObjectiveC()();
  [v0 setURL:0 forKey:v1];
}

id LoggedOutPushCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LoggedOutPushCache();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL _s3ind18LoggedOutPushCacheC19wasDeviceRegisteredSbvgZ_0()
{
  if (qword_100063A50 != -1)
  {
    swift_once();
  }

  v0 = qword_100063A58;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  sub_1000245BC(v4);
  return v2 != 0;
}

uint64_t sub_10002C7E0()
{
  type metadata accessor for TaskLimiters();
  result = TaskLimiters.__allocating_init()();
  qword_100063A68 = result;
  return result;
}

uint64_t sub_10002C814(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100022CF0(&qword_1000632D0, &qword_10004DAC0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = v5;
  v16[8] = a4;
  v16[9] = a5;
  sub_10002D7A0(a1, a2);
  v17 = v5;

  sub_100020818(0, 0, v14, &unk_10004DCE0, v16);
}

uint64_t sub_10002C958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v10;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  return _swift_task_switch(sub_10002C988, 0, 0);
}

uint64_t sub_10002C988()
{
  if (qword_100063A60 != -1)
  {
    swift_once();
  }

  *(v0 + 72) = qword_100063A68;
  type metadata accessor for TaskLimiters();
  sub_100033694(&qword_100063538, &type metadata accessor for TaskLimiters);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002CA78, v2, v1);
}

uint64_t sub_10002CA78()
{
  v1 = *(v0 + 72);
  *(v0 + 80) = TaskLimiters.limiter(key:timeout:)();

  return _swift_task_switch(sub_10002CB00, 0, 0);
}

uint64_t sub_10002CB00()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_allocObject();
  v0[11] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;
  sub_10002D7A0(v3, v4);
  v6 = *(&async function pointer to dispatch thunk of TaskLimiter.perform<A>(identifier:operation:) + 1);
  v11 = &async function pointer to dispatch thunk of TaskLimiter.perform<A>(identifier:operation:) + async function pointer to dispatch thunk of TaskLimiter.perform<A>(identifier:operation:);
  v7 = v1;
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_10002CC34;
  v9 = v0[10];

  return (v11)(v0 + 2, 0xD000000000000015, 0x8000000100042830, &unk_10004E350, v5, &type metadata for UInt);
}

uint64_t sub_10002CC34()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_10002CDC8;
  }

  else
  {
    v6 = *(v2 + 80);
    v5 = *(v2 + 88);

    v4 = sub_10002CD58;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002CD58()
{
  v1 = *(v0 + 64);
  (*(v0 + 56))(1, *(v0 + 16), 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10002CDC8()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[7];
  v4 = v0[8];

  swift_errorRetain();
  v5(0, 0, v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10002CE6C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100023698;

  return sub_10002C958(v8, v9, v10, v2, v3, v4, v5, v7);
}

uint64_t sub_10002CF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  return _swift_task_switch(sub_10002CF54, 0, 0);
}

uint64_t sub_10002CF54()
{
  v1 = [objc_opt_self() sharedServerWithNoUrlCache];
  v0[28] = v1;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_10002D094;
  v2 = swift_continuation_init();
  v0[17] = sub_100022CF0(&qword_1000635C8, &qword_10004E2F0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10002D6C8;
  v0[13] = &unk_1000568A8;
  v0[14] = v2;
  [v1 configurationWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002D094()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_10002D658;
  }

  else
  {
    v3 = sub_10002D1A4;
  }

  return _swift_task_switch(v3, 0, 0);
}