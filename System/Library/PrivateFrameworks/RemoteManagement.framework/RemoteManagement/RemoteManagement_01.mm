void sub_100048178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100048190(uint64_t a1)
{
  v1 = *(a1 + 40);
  v55 = a1;
  v67 = *(a1 + 32);
  v2 = v1;
  v63 = objc_opt_new();
  v3 = v2;
  v4 = objc_opt_new();
  v5 = [v3 insertedObjectIDs];
  [v4 unionSet:v5];

  v6 = [v3 updatedObjectIDs];

  [v4 unionSet:v6];
  v65 = [v3 updatedPropertiesByObjectID];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
  if (v7)
  {
    v8 = v7;
    v66 = *v69;
    v61 = RMModelStatusItemManagementDeclarations;
    do
    {
      v9 = 0;
      v64 = v8;
      do
      {
        if (*v69 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v68 + 1) + 8 * v9);
        v11 = v67;
        v12 = v10;
        v13 = [v11 existingObjectWithID:v12 error:0];
        v14 = [v12 entity];

        v15 = +[RMActivationPayload entity];
        if ([v14 isKindOfEntity:v15])
        {
          goto LABEL_9;
        }

        v16 = +[RMAssetPayload entity];
        if ([v14 isKindOfEntity:v16])
        {

LABEL_9:
LABEL_10:
          v17 = v13;
LABEL_11:
          v18 = v17;
          if ([v17 loadState] >= 1)
          {
            v19 = v18;
            goto LABEL_13;
          }

          v20 = 0;
LABEL_15:

          goto LABEL_16;
        }

        v35 = +[RMConfigurationPayload entity];
        v36 = [v14 isKindOfEntity:v35];

        v8 = v64;
        if (v36)
        {
          goto LABEL_10;
        }

        v37 = +[RMActivationPayloadState entity];
        v38 = [v14 isKindOfEntity:v37];

        if (v38)
        {
          v17 = [v13 activation];
          goto LABEL_11;
        }

        v41 = +[RMAssetPayloadState entity];
        v42 = [v14 isKindOfEntity:v41];

        if (v42)
        {
          v17 = [v13 asset];
          goto LABEL_11;
        }

        v43 = +[RMConfigurationPayloadState entity];
        v44 = [v14 isKindOfEntity:v43];

        if (v44)
        {
          v17 = [v13 configuration];
          goto LABEL_11;
        }

        v45 = +[RMConduitConfig entity];
        v46 = [v14 isKindOfEntity:v45];

        if (v46)
        {
          v19 = v13;
          v18 = v19;
LABEL_13:
          v20 = [v19 managementSource];
          goto LABEL_15;
        }

        v48 = +[RMConduitState entity];
        v49 = [v14 isKindOfEntity:v48];

        if (v49)
        {
          v18 = v13;
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v50 = [v18 conduitConfig];
            v20 = [v50 managementSource];
          }

          else
          {
            v20 = 0;
          }

          goto LABEL_15;
        }

        v20 = 0;
LABEL_16:

        if (!v20)
        {
          goto LABEL_53;
        }

        v21 = [v3 insertedObjectIDs];
        v22 = [v21 containsObject:v12];

        v23 = v22;
        v24 = [v3 updatedObjectIDs];
        v25 = [v24 containsObject:v12];

        if (v25)
        {
          v26 = v23 | 2;
        }

        else
        {
          v26 = v23;
        }

        v27 = [v65 objectForKeyedSubscript:{v12, v55}];
        v28 = v12;
        v29 = v27;
        if (v26)
        {
          v30 = objc_opt_new();
          v31 = [v28 entity];
          if (v26 == 2)
          {
            v32 = +[RMActivationPayload entity];
            if ([v31 isKindOfEntity:v32] && +[RMDeclarationPayload isSignificantChange:](RMActivationPayload, "isSignificantChange:", v29))
            {
              goto LABEL_45;
            }

            v33 = +[RMActivationPayloadState entity];
            if ([v31 isKindOfEntity:v33])
            {
              goto LABEL_44;
            }

            v34 = +[RMAssetPayload entity];
            if ([v31 isKindOfEntity:v34] && +[RMDeclarationPayload isSignificantChange:](RMAssetPayload, "isSignificantChange:", v29))
            {
              goto LABEL_43;
            }

            v60 = +[RMAssetPayloadState entity];
            if ([v31 isKindOfEntity:?])
            {
              goto LABEL_42;
            }

            v59 = +[RMConfigurationPayload entity];
            if ([v31 isKindOfEntity:?] && +[RMConfigurationPayload isSignificantChange:](RMConfigurationPayload, "isSignificantChange:", v29))
            {
              goto LABEL_41;
            }

            +[RMConfigurationPayloadState entity];
            v47 = v57 = v34;
            v58 = [v31 isKindOfEntity:v47];

LABEL_62:
            v8 = v64;
            if (v58)
            {
LABEL_46:
              [v30 addObject:v61];
            }
          }

          else if (v26 == 1)
          {
            v32 = +[RMActivationPayload entity];
            if (([v31 isKindOfEntity:v32] & 1) == 0)
            {
              v33 = +[RMActivationPayloadState entity];
              if (([v31 isKindOfEntity:v33] & 1) == 0)
              {
                v34 = +[RMAssetPayload entity];
                if (([v31 isKindOfEntity:v34] & 1) == 0)
                {
                  v60 = +[RMAssetPayloadState entity];
                  if (([v31 isKindOfEntity:?] & 1) == 0)
                  {
                    v59 = +[RMConfigurationPayload entity];
                    if (([v31 isKindOfEntity:?] & 1) == 0)
                    {
                      v56 = +[RMConfigurationPayloadState entity];
                      v58 = [v31 isKindOfEntity:v56];

                      goto LABEL_62;
                    }

LABEL_41:
                  }

LABEL_42:
                }

LABEL_43:
              }

LABEL_44:
            }

LABEL_45:

            v8 = v64;
            goto LABEL_46;
          }

          goto LABEL_48;
        }

        v30 = objc_opt_new();
LABEL_48:

        if ([v30 count])
        {
          v39 = [v20 objectID];
          v40 = [v63 objectForKeyedSubscript:v39];
          if (!v40)
          {
            v40 = objc_opt_new();
            [v63 setObject:v40 forKeyedSubscript:v39];
          }

          [v40 unionSet:v30];
        }

LABEL_53:
        v9 = v9 + 1;
      }

      while (v8 != v9);
      v51 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
      v8 = v51;
    }

    while (v51);
  }

  v52 = *(*(v55 + 48) + 8);
  v53 = *(v52 + 40);
  *(v52 + 40) = v63;

  return [*(v55 + 32) reset];
}

void sub_100048AB4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 configuration];
  v6 = [v5 state];
  v7 = [v6 active];

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_100048BDC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to save store metadata: %{public}@", &v2, 0xCu);
}

void sub_100048C54(id *a1, uint64_t a2, NSObject *a3)
{
  v5 = [*a1 identifier];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Unable to fetch management sources for management channel (%{public}@): %{public}@", &v6, 0x16u);
}

void sub_100048D08(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Unable to fetch management source for (%{public}@): %{public}@", &v4, 0x16u);
}

void sub_100048DD8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000E68E8;
  qword_1000E68E8 = v1;

  v3 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_1000E68E8 setLocale:v3];

  [qword_1000E68E8 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
  v4 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [qword_1000E68E8 setTimeZone:v4];
}

uint64_t sub_100049348(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100049360(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 40);
  v8 = a3;
  v13 = [v7 serializeValue:a2];
  v9 = [*(a1 + 40) serializeValue:v8];

  if (v13)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    *a4 = 1;
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;
  }

  else
  {
    [*(*(*(a1 + 32) + 8) + 40) setObject:v9 forKeyedSubscript:v13];
  }
}

void sub_100049B08(id a1)
{
  qword_1000E68F8 = os_log_create("com.apple.remotemanagementd", "managementPropertiesArchiver");

  _objc_release_x1();
}

void sub_10004A138()
{
  sub_100006C08();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Unable to create status directory for store at %{public}@: %{public}@", v2, 0x16u);
}

void sub_10004A200(id a1)
{
  qword_1000E6908 = os_log_create("com.apple.remotemanagementd", "managementSettings");

  _objc_release_x1();
}

void sub_10004A288(id a1)
{
  v1 = [RMLocations dataVaultDirectoryURLCreateIfNeeded:1];
  v4 = [v1 URLByAppendingPathComponent:@"ManagementSettings.plist"];

  v2 = [[RMManagementSettings alloc] initWithURL:v4];
  v3 = qword_1000E6918;
  qword_1000E6918 = v2;
}

void sub_10004AAEC(void *a1)
{
  v1 = [a1 cachedSettings];
  sub_100006C08();
  sub_100022548(&_mh_execute_header, v2, v3, "Cached management settings: %{public}@", v4, v5, v6, v7, v8);
}

void sub_10004AC1C(void *a1)
{
  v1 = [a1 cachedSettings];
  sub_100006C08();
  sub_100022548(&_mh_execute_header, v2, v3, "Wrote management settings: %{public}@", v4, v5, v6, v7, v8);
}

void sub_10004BDE4(id a1)
{
  qword_1000E6928 = os_log_create("com.apple.remotemanagementd", "mdmConduit");

  _objc_release_x1();
}

void sub_10004C000(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  [*(a1 + 40) _startObservers];
  v5 = +[RMLog mdmConduit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 bootstrapURI];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Started MDM conduit for %{public}@", &v7, 0xCu);
  }
}

void sub_10004C2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004C2F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v6 = [v2 objectWithID:v3];

  v4 = [v6 conduitConfig];
  v5 = [v4 state];
  *(*(*(a1 + 48) + 8) + 24) = [v5 errorState];
}

void sub_10004C62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004C644(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v5 = [v2 objectWithID:v3];

  v4 = [v5 enrollmentType] == 1 || objc_msgSend(v5, "enrollmentType") == 3;
  *(*(*(a1 + 48) + 8) + 24) = v4;
}

uint64_t sub_10004C908(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004C920(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = [v4 bootstrapURI];
  v6 = +[RMLog mdmConduit];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Enrolling with URI: %{public}@", buf, 0xCu);
  }

  v7 = [v4 conduitConfig];
  v8 = [v7 state];

  if (v8)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v10 = [[RMMDMConduitState alloc] initWithContext:*(a1 + 32)];
  v11 = *(a1 + 40);
  v12 = [objc_opt_class() _generateEnrollmentToken];
  [(RMMDMConduitState *)v10 setEnrollmentToken:v12];

  [v7 setState:v10];
  v13 = *(a1 + 32);
  v19 = 0;
  v14 = [v13 save:&v19];
  v9 = v19;
  if (v14)
  {

LABEL_7:
    v10 = +[RMLog mdmConduit];
    if (os_log_type_enabled(&v10->super.super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, &v10->super.super.super, OS_LOG_TYPE_DEFAULT, "Enrolled with URI: %{public}@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v15 = +[RMLog mdmConduit];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    sub_10001A138();
  }

  [*(a1 + 32) rollback];
  v16 = +[RMErrorUtilities createInternalError];
  v17 = *(*(a1 + 48) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

LABEL_12:
}

void sub_10004CD68(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = [v4 identifier];
  v6 = +[RMLog mdmConduit];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unenrolling identifier: %{public}@", buf, 0xCu);
  }

  [v4 setEnrolled:0];
  v7 = *(a1 + 32);
  v14 = 0;
  v8 = [v7 save:&v14];
  v9 = v14;
  v10 = +[RMLog mdmConduit];
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unenrolled identifier: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1000519C4();
    }

    [*(a1 + 32) rollback];
    v12 = +[RMErrorUtilities createInternalError];
    v13 = *(*(a1 + 48) + 8);
    v11 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

void sub_10004D170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v15 - 96));
  _Unwind_Resume(a1);
}

void sub_10004D19C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  if (*(a1 + 56) != 1)
  {
    goto LABEL_22;
  }

  v5 = [v4 conduitConfig];
  v6 = [v5 state];
  v7 = [v5 lastReceivedServerTokensTimestamp];
  if (v7)
  {
  }

  else
  {
    v8 = [v6 lastReceivedServerTokensTimestamp];

    if (!v8)
    {
      v12 = +[RMLog mdmConduit];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100051ACC();
      }

      goto LABEL_21;
    }
  }

  v9 = [v5 lastReceivedPushTimestamp];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = +[NSDate distantPast];
  }

  v12 = v11;

  v13 = [v6 lastReceivedServerTokensFromServerTimestamp];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = +[NSDate distantPast];
  }

  v16 = v15;

  if ([v12 compare:v16]== 1)
  {
    v17 = v5;
  }

  else
  {
    v17 = v6;
  }

  v18 = [v17 lastReceivedServerTokensTimestamp];
  if (!v18)
  {
    v19 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100051A98();
    }

LABEL_21:
LABEL_22:
    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_23;
  }

LABEL_23:
}

void sub_10004D590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004D5AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = [v4 conduitConfig];
  v6 = [v5 state];
  [v6 setErrorState:0];
  [v6 setNumberOfConsecutiveErrors:0];
  [v6 setNumberOfConsecutiveFailures:0];
  [v6 setServerRetryAfterDate:0];
  [v6 setLocalRetryAfterDate:0];
  v7 = [*(a1 + 48) responseSyncTokens];
  [v6 setLastReceivedCommandToken:0];
  v8 = [v7 tokensDeclarationsToken];
  [v6 setLastReceivedDeclarationsToken:v8];

  v9 = [v7 tokensTimestamp];
  [v6 setLastReceivedServerTokensTimestamp:v9];

  v10 = objc_opt_new();
  [v6 setLastReceivedServerTokensFromServerTimestamp:v10];

  v11 = *(a1 + 32);
  v18 = 0;
  v12 = [v11 save:&v18];
  v13 = v18;
  if ((v12 & 1) == 0)
  {
    v14 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_10003C18C();
    }

    v15 = +[RMErrorUtilities createInternalError];
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    [*(a1 + 32) rollback];
  }
}

void sub_10004DA60(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    v4 = *(a1 + 32);
    objc_sync_enter(v4);
    [*(a1 + 32) addObject:v5];
    objc_sync_exit(v4);

    v3 = v5;
  }
}

void sub_10004DAE4(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 48) + 16))();
  if (!a2)
  {
    dispatch_group_enter(*(a1 + 32));
    v4 = *(a1 + 56);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10004DBC0;
    v8[3] = &unk_1000D1ED0;
    v5 = *(a1 + 40);
    v11 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v6;
    v10 = v7;
    [v5 _fetchDeclarationItemsOnlyIfNeeded:v4 completionHandler:v8];
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10004DBC0(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 48) + 16))();
  if (!a2)
  {
    dispatch_group_enter(*(a1 + 32));
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10004DC88;
    v5[3] = &unk_1000D1EA8;
    v4 = *(a1 + 40);
    v7 = *(a1 + 48);
    v6 = *(a1 + 32);
    [v4 _fetchPartialObjectsWithCompletionHandler:v5];
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10004DC88(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void sub_10004DCCC(uint64_t a1)
{
  [*(a1 + 32) context];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004DDB0;
  v7 = v6[3] = &unk_1000D0F50;
  v2 = v7;
  [v2 performBlockAndWait:v6];
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) madeChangesDuringSync];
  v5 = [RMErrorUtilities createMultipleErrorOrReturnTheSingleErrorWithErrors:*(a1 + 40)];
  (*(v3 + 16))(v3, v4, v5);
}

void sub_10004E108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004E120(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = [v4 conduitConfig];
  v6 = [v5 state];
  v7 = objc_opt_new();
  [v6 setLastReceivedCommandToken:0];
  v8 = [*(a1 + 48) tokensDeclarationsToken];
  [v6 setLastReceivedDeclarationsToken:v8];

  v9 = [*(a1 + 48) tokensTimestamp];
  [v6 setLastReceivedServerTokensTimestamp:v9];

  [v6 setLastReceivedServerTokensFromServerTimestamp:v7];
  v10 = *(a1 + 32);
  v17 = 0;
  v11 = [v10 save:&v17];
  v12 = v17;
  if ((v11 & 1) == 0)
  {
    v13 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_10003C18C();
    }

    v14 = +[RMErrorUtilities createInternalError];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    [*(a1 + 32) rollback];
  }
}

void sub_10004E4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v15 - 96));
  _Unwind_Resume(a1);
}

void sub_10004E504(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  if (*(a1 + 56) != 1)
  {
LABEL_17:
    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_18;
  }

  v5 = [v4 conduitConfig];
  v6 = [v5 state];
  v7 = [v5 lastReceivedServerTokensTimestamp];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = +[NSDate distantPast];
  }

  v10 = v9;

  v11 = [v6 lastReceivedServerTokensTimestamp];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = +[NSDate distantPast];
  }

  v14 = v13;

  v15 = [v10 compare:v14];
  if (v15 == 1)
  {
    v16 = v5;
  }

  else
  {
    v16 = v6;
  }

  v17 = [v16 lastReceivedDeclarationsToken];
  if (!v17 || ([v6 lastProcessedDeclarationsToken], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqualToString:", v18), v18, (v19 & 1) == 0))
  {
    v20 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_100051D58();
    }

    goto LABEL_17;
  }

LABEL_18:
}

void sub_10004E8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004E8E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = [v4 conduitConfig];
  v6 = [v5 state];
  [v6 setErrorState:0];
  [v6 setNumberOfConsecutiveErrors:0];
  [v6 setNumberOfConsecutiveFailures:0];
  [v6 setServerRetryAfterDate:0];
  [v6 setLocalRetryAfterDate:0];
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = [*(a1 + 48) responseDeclarations];
  v10 = [v9 responseActivations];
  [v7 _processDeclarationItemsWithContext:v8 infos:v10 declarationItemClass:objc_opt_class() declarationItemKeyPath:@"activations"];

  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = [*(a1 + 48) responseDeclarations];
  v14 = [v13 responseConfigurations];
  [v11 _processDeclarationItemsWithContext:v12 infos:v14 declarationItemClass:objc_opt_class() declarationItemKeyPath:@"configurations"];

  v16 = *(a1 + 32);
  v15 = *(a1 + 40);
  v17 = [*(a1 + 48) responseDeclarations];
  v18 = [v17 responseAssets];
  [v15 _processDeclarationItemsWithContext:v16 infos:v18 declarationItemClass:objc_opt_class() declarationItemKeyPath:@"assets"];

  v20 = *(a1 + 32);
  v19 = *(a1 + 40);
  v21 = [*(a1 + 48) responseDeclarations];
  v22 = [v21 responseManagement];
  [v19 _processDeclarationItemsWithContext:v20 infos:v22 declarationItemClass:objc_opt_class() declarationItemKeyPath:@"management"];

  v23 = [*(a1 + 48) responseDeclarationsToken];
  [v6 setLastProcessedDeclarationsToken:v23];

  v24 = *(a1 + 32);
  v30 = 0;
  LOBYTE(v20) = [v24 save:&v30];
  v25 = v30;
  if ((v20 & 1) == 0)
  {
    v26 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_10003C484();
    }

    v27 = +[RMErrorUtilities createInternalError];
    v28 = *(*(a1 + 56) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

    [*(a1 + 32) rollback];
  }
}

void sub_10004EF60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(a1 + 32) setMadeChangesDuringSync:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 40) deleteObject:v4];
    v5 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100051E5C();
    }

LABEL_7:

    goto LABEL_8;
  }

  if ([v4 loadState] != 3)
  {
    [v4 setLoadState:3];
    v5 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100051DF4();
    }

    goto LABEL_7;
  }

LABEL_8:
}

void sub_10004F104(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = RMProtocolEndpointDeclarationConfiguration;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004F1F8;
    v9[3] = &unk_1000D1EA8;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v5 _fetchNextObjectOfClass:v6 endpoint:v7 completionHandler:v9];
  }
}

void sub_10004F1F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = RMProtocolEndpointDeclarationAsset;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004F2F8;
    v9[3] = &unk_1000D1FC0;
    v10 = 0;
    v8 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = v8;
    [v5 _fetchNextObjectOfClass:v6 endpoint:v7 completionHandler:v9];
  }
}

id sub_10004F2F8(void *a1)
{
  if (a1[4])
  {
    v2 = a1[6];
    v3 = *(a1[6] + 16);

    return v3();
  }

  else
  {
    v5 = a1[5];
    v6 = objc_opt_class();
    v7 = RMProtocolEndpointDeclarationManagement;
    v8 = a1[6];

    return [v5 _fetchNextObjectOfClass:v6 endpoint:v7 completionHandler:v8];
  }
}

void sub_10004F6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  os_activity_scope_leave((v35 - 176));
  _Unwind_Resume(a1);
}

void sub_10004F714(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = *(a1 + 72);
  v6 = v4;
  v7 = [v5 fetchRequest];
  v8 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %d)", @"managementSource", v6, @"loadState", 0];
  [v7 setPredicate:v8];

  [v7 setFetchLimit:1];
  v21 = 0;
  v9 = [v7 execute:&v21];
  v10 = v21;
  if (!v9)
  {
    v11 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_100051EC4();
    }
  }

  v12 = [v9 firstObject];

  v13 = [v12 objectID];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v16 = *(a1 + 48);
    v17 = [v12 identifier];
    v18 = [v16 stringByReplacingOccurrencesOfString:@"{identifier}" withString:v17];
    v19 = *(*(a1 + 64) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }
}

void sub_10004FC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004FC70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = [v4 conduitConfig];
  v6 = [v5 state];
  [v6 setErrorState:0];
  [v6 setNumberOfConsecutiveErrors:0];
  [v6 setNumberOfConsecutiveFailures:0];
  [v6 setServerRetryAfterDate:0];
  [v6 setLocalRetryAfterDate:0];
  v7 = [*(a1 + 32) objectWithID:*(a1 + 48)];
  v8 = v7;
  if (v7)
  {
    if (*(a1 + 56))
    {
      v9 = +[RMLog mdmConduit];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 56);
        v23 = *(a1 + 64);
        v25 = *(a1 + 48);
        *buf = 138543874;
        v29 = v25;
        v30 = 2114;
        v31 = v23;
        v32 = 2114;
        v33 = v24;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error while processing fetched data for object %{public}@ (%{public}@): %{public}@", buf, 0x20u);
      }

      [v8 failedLoadingWithError:*(a1 + 56)];
    }

    else if (*(a1 + 72))
    {
      v12 = v7;
      v13 = *(a1 + 72);
      v27 = 0;
      v14 = [v12 loadPayload:v13 error:&v27];
      v15 = v27;
      if ((v14 & 1) == 0)
      {
        v16 = +[RMLog mdmConduit];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100051F30(v12, v15, v16);
        }
      }
    }

    else
    {
      [*(a1 + 32) deleteObject:v7];
    }

    v17 = *(a1 + 32);
    v26 = 0;
    v18 = [v17 save:&v26];
    v10 = v26;
    if (v18)
    {
      [*(a1 + 40) setMadeChangesDuringSync:1];
    }

    else
    {
      v19 = +[RMLog mdmConduit];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_100051FE0((a1 + 48));
      }

      v20 = +[RMErrorUtilities createInternalError];
      v21 = *(*(a1 + 80) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      [*(a1 + 32) rollback];
    }
  }

  else
  {
    v10 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      *buf = 138543362;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Object with %{public}@ disappeared while filling in contents.", buf, 0xCu);
    }
  }
}

void sub_100050330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005034C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = [v4 conduitConfig];
  v6 = [v5 state];
  [v6 setErrorState:0];
  [v6 setNumberOfConsecutiveErrors:0];
  [v6 setNumberOfConsecutiveFailures:0];
  [v6 setServerRetryAfterDate:0];
  [v6 setLocalRetryAfterDate:0];
  v7 = *(a1 + 32);
  v14 = 0;
  v8 = [v7 save:&v14];
  v9 = v14;
  if ((v8 & 1) == 0)
  {
    v10 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10003C93C();
    }

    v11 = +[RMErrorUtilities createInternalError];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    [*(a1 + 32) rollback];
  }
}

void sub_100050ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100050EF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = [v4 conduitConfig];
  v6 = [v5 state];
  [v6 setErrorState:*(a1 + 64)];
  [v6 setNumberOfConsecutiveErrors:{objc_msgSend(v6, "numberOfConsecutiveErrors") + 1}];
  [v6 setNumberOfConsecutiveFailures:0];
  [v6 setServerRetryAfterDate:*(a1 + 48)];
  if (*(a1 + 48))
  {
    [v6 setLocalRetryAfterDate:0];
  }

  else
  {
    v7 = +[NSDate dateWithTimeIntervalSinceNow:](NSDate, "dateWithTimeIntervalSinceNow:", (60 << ([v6 numberOfConsecutiveErrors] - 1)));
    [v6 setLocalRetryAfterDate:v7];
  }

  v8 = *(a1 + 32);
  v15 = 0;
  v9 = [v8 save:&v15];
  v10 = v15;
  if ((v9 & 1) == 0)
  {
    v11 = +[RMLog mdmConduit];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_10003CE18();
    }

    v12 = +[RMErrorUtilities createInternalError];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    [*(a1 + 32) rollback];
  }
}

void sub_10005125C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100051360;
    block[3] = &unk_1000D2380;
    block[4] = *(a1 + 32);
    v8 = v3;
    v6 = *(a1 + 40);
    v5 = v6;
    v9 = v6;
    dispatch_async(v4, block);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100051360(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[7];
  v8 = 0;
  v5 = [v2 _processResponse:v3 payloadClass:v4 error:&v8];
  v6 = v8;
  v7 = a1[5];
  (*(a1[6] + 16))();
}

void sub_100051584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005159C(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v13 = [v2 objectWithID:*(a1 + 40)];

  v3 = [v13 managementSource];
  v4 = [v3 objectID];
  v5 = [*(a1 + 32) managementSourceObjectID];
  if (([v4 isEqual:v5] & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = [*(a1 + 48) updatedProperties];
  v7 = [*(a1 + 56) propertiesByName];
  v8 = [v7 objectForKeyedSubscript:@"lastReceivedPushTimestamp"];
  if ([v6 containsObject:v8])
  {
  }

  else
  {
    v9 = [*(a1 + 48) updatedProperties];
    v10 = [*(a1 + 64) propertiesByName];
    v11 = [v10 objectForKeyedSubscript:@"lastReceivedPushTimestamp"];
    v12 = [v9 containsObject:v11];

    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(*(*(a1 + 72) + 8) + 24) = 1;
LABEL_7:
}

void sub_1000519C4()
{
  sub_100006C08();
  sub_100051938();
  sub_100024408(&_mh_execute_header, v0, v1, "Unable to remove management source %{public}@: %{public}@");
}

void sub_100051EC4()
{
  sub_100006C08();
  sub_100051938();
  sub_100024408(&_mh_execute_header, v0, v1, "Unable to search for partial objects of class %{public}@: %{public}@");
}

void sub_100051F30(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  sub_100006C08();
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Unable to load payload into %{public}@: %{public}@", v7, 0x16u);
}

void sub_100051FE0(void *a1)
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = *a1;
  sub_100051938();
  sub_100024408(&_mh_execute_header, v1, v2, "Unable to save fetched object %{public}@: %{public}@", v3, DWORD2(v3));
}

void sub_100052238(id a1)
{
  qword_1000E6938 = os_log_create("com.apple.remotemanagementd", "mdmconduitstate");

  _objc_release_x1();
}

void sub_10005241C(id a1)
{
  qword_1000E6948 = os_log_create("com.apple.remotemanagementd", "mdmv1Liaison");

  _objc_release_x1();
}

void sub_100052680(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "applyRestrictionDictionary(%{public}@) failed: %{public}@", &v3, 0x16u);
}

void sub_100052790(id a1)
{
  qword_1000E6958 = os_log_create("com.apple.remotemanagementd", "migrationConfigurationUI");

  _objc_release_x1();
}

void sub_1000528F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100052910(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100052928(uint64_t a1)
{
  v2 = +[RMConfigurationPayloadUI fetchRequest];
  v3 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v2];
  [v3 setResultType:2];
  v4 = *(a1 + 32);
  v12 = 0;
  v5 = [v4 executeRequest:v3 error:&v12];
  v6 = v12;
  v7 = +[RMLog migrationConfigurationUI];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100052B18(v6, v8);
    }

    v9 = *(*(a1 + 40) + 8);
    v10 = v6;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v5 result];
    *buf = 138412290;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removed cached configuration UIs: %@", buf, 0xCu);
  }
}

void sub_100052B18(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to update management sources: %{public}@", &v2, 0xCu);
}

void sub_100052BD4(id a1)
{
  qword_1000E6968 = os_log_create("com.apple.remotemanagementd", "migrationEngine");

  _objc_release_x1();
}

void sub_100053A74(void *a1)
{
  v1 = [a1 allObjects];
  sub_100006C08();
  sub_100022548(&_mh_execute_header, v2, v3, "Processed migration actions: %{public}@", v4, v5, v6, v7, v8);
}

void sub_100053AF8(void *a1)
{
  v1 = [a1 valueForKey:@"identifier"];
  sub_100006C08();
  sub_100022548(&_mh_execute_header, v2, v3, "Configured migration actions: %{public}@", v4, v5, v6, v7, v8);
}

void sub_100053B84()
{
  sub_100006C08();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to process migration action: %{public}@ %{public}@", v2, 0x16u);
}

void sub_100053EDC(id a1)
{
  qword_1000E6978 = os_log_create("com.apple.remotemanagementd", "migrationExcludeFromBackup");

  _objc_release_x1();
}

void sub_1000540F8(void *a1, NSObject *a2)
{
  v3 = [a1 path];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed migration - cannot exclude from backup: %{public}@", &v4, 0xCu);
}

void sub_100054218(id a1)
{
  qword_1000E6988 = os_log_create("com.apple.remotemanagementd", "migrationMathSettings");

  _objc_release_x1();
}

void sub_1000545B8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to clear restrictions: %{public}@", &v2, 0xCu);
}

void sub_1000546E4(id a1)
{
  qword_1000E6998 = os_log_create("com.apple.remotemanagementd", "migrationStatusPath");

  _objc_release_x1();
}

void sub_100054CF4(id a1)
{
  v24 = +[RMModelAccountCalDAVDeclaration registeredIdentifier];
  v23 = [NSString stringWithFormat:@"%@-", v24];
  v25[0] = v23;
  v22 = +[RMModelAccountCardDAVDeclaration registeredIdentifier];
  v21 = [NSString stringWithFormat:@"%@-", v22];
  v25[1] = v21;
  v20 = +[RMModelAccountExchangeDeclaration registeredIdentifier];
  v19 = [NSString stringWithFormat:@"%@-", v20];
  v25[2] = v19;
  v18 = +[RMModelAccountGoogleDeclaration registeredIdentifier];
  v17 = [NSString stringWithFormat:@"%@-", v18];
  v25[3] = v17;
  v16 = +[RMModelAccountLDAPDeclaration registeredIdentifier];
  v15 = [NSString stringWithFormat:@"%@-", v16];
  v25[4] = v15;
  v14 = +[RMModelAccountMailDeclaration registeredIdentifier];
  v13 = [NSString stringWithFormat:@"%@-", v14];
  v25[5] = v13;
  v12 = +[RMModelAccountSubscribedCalendarDeclaration registeredIdentifier];
  v1 = [NSString stringWithFormat:@"%@-", v12];
  v25[6] = v1;
  v2 = +[RMModelLegacyProfileDeclaration registeredIdentifier];
  v3 = [NSString stringWithFormat:@"%@-", v2];
  v25[7] = v3;
  v4 = +[RMModelLegacyInteractiveProfileDeclaration registeredIdentifier];
  v5 = [NSString stringWithFormat:@"%@-", v4];
  v25[8] = v5;
  v6 = +[RMModelManagementTestDeclaration registeredIdentifier];
  v7 = [NSString stringWithFormat:@"%@-", v6];
  v25[9] = v7;
  v8 = +[RMModelPasscodeSettingsDeclaration registeredIdentifier];
  v9 = [NSString stringWithFormat:@"%@-", v8];
  v25[10] = v9;
  v10 = [NSArray arrayWithObjects:v25 count:11];
  v11 = off_1000E6420;
  off_1000E6420 = v10;
}

void sub_1000554A0(id a1)
{
  qword_1000E69B0 = os_log_create("com.apple.remotemanagementd", "migrationSupervised");

  _objc_release_x1();
}

void sub_1000556EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100055704(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005571C(uint64_t a1)
{
  v2 = [RMManagementSource fetchRequestWithEnrollmentType:1];
  v24 = 0;
  v3 = [v2 execute:&v24];
  v4 = v24;
  if (!v3)
  {
    v15 = +[RMLog migrationSupervised];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_100055A2C(v4, v15);
    }

    v16 = *(*(a1 + 40) + 8);
    v17 = v4;
    goto LABEL_22;
  }

  if ([v3 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v19 + 1) + 8 * v9) setEnrollmentType:3];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v7);
    }

    v10 = *(a1 + 32);
    v18 = v4;
    v11 = [v10 save:&v18];
    v12 = v18;

    v13 = +[RMLog migrationSupervised];
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updated management sources to supervised.", buf, 2u);
      }

      v4 = v12;
      goto LABEL_23;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_100052B18(v12, v14);
    }

    v16 = *(*(a1 + 40) + 8);
    v17 = v12;
LABEL_22:
    v4 = v17;
    v14 = *(v16 + 40);
    *(v16 + 40) = v17;
    goto LABEL_23;
  }

  v14 = +[RMLog migrationSupervised];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Ignoring migration - no enrolled device channel", buf, 2u);
  }

LABEL_23:
}

void sub_100055A2C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to fetch device management sources: %{public}@", &v2, 0xCu);
}

void sub_100055AE8(id a1)
{
  qword_1000E69C0 = os_log_create("com.apple.remotemanagementd", "migrationSystemContainer");

  _objc_release_x1();
}

void sub_1000561DC()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056218()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056254()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100056290()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100058448(id a1)
{
  qword_1000E69D0 = os_log_create("com.apple.remotemanagementd", "persistentController");

  _objc_release_x1();
}

void sub_100058544(id a1)
{
  v1 = [RMLocations persistentStoreURLCreateIfNeeded:1];
  v4 = [RMPersistentController _createLoadedPersistentContainerWithURL:v1];

  if (v4)
  {
    v2 = [[RMPersistentController alloc] initWithPersistentContainer:v4];
    v3 = qword_1000E69E0;
    qword_1000E69E0 = v2;

    byte_1000E69F0 = 1;
  }
}

void sub_1000588EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100058910(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100058928(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[RMLog persistentController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10005936C(v5, v6, v7);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

void sub_100058A08(id a1)
{
  qword_1000E69F8 = +[RMLocations managedObjectModelURL];

  _objc_release_x1();
}

void sub_100058A8C(id a1)
{
  v1 = [NSManagedObjectModel alloc];
  v4 = +[RMPersistentController managedObjectModelURL];
  v2 = [v1 initWithContentsOfURL:v4];
  v3 = qword_1000E6A08;
  qword_1000E6A08 = v2;
}

void sub_100058BE4(uint64_t a1)
{
  v3 = [*(a1 + 32) metadataForPersistentStore:*(a1 + 40)];
  v2 = [v3 mutableCopy];
  (*(*(a1 + 48) + 16))();
  if (([v2 isEqualToDictionary:v3] & 1) == 0)
  {
    [*(a1 + 32) setMetadata:v2 forPersistentStore:*(a1 + 40)];
  }
}

void sub_100058D34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v13 = 0;
    v6 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v13];
    v7 = v13;
    if (v6)
    {
      [v4 setObject:v6 forKeyedSubscript:*(a1 + 40)];
    }

    else
    {
      v8 = +[RMLog persistentController];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = *(a1 + 40);
        *buf = 138543874;
        v15 = v11;
        v16 = 2114;
        v17 = v12;
        v18 = 2114;
        v19 = v7;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to archive %{public}@ for %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    [v3 removeObjectForKey:*(a1 + 40)];
  }
}

void sub_10005908C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000590A4(void *a1, void *a2)
{
  v3 = a1 + 4;
  v4 = [a2 objectForKeyedSubscript:a1[4]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = a1[5];
    v13 = 0;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:v4 error:&v13];
    v7 = v13;
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v6;

    if (!*(*(a1[6] + 8) + 40))
    {
      v10 = +[RMLog persistentController];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = a1[4];
        v11 = a1[5];
        *buf = 138544130;
        v15 = v11;
        v16 = 2114;
        v17 = v12;
        v18 = 2114;
        v19 = v4;
        v20 = 2114;
        v21 = v7;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unable to unarchive %{public}@ for %{public}@ %{public}@: %{public}@", buf, 0x2Au);
      }
    }

LABEL_9:

    goto LABEL_10;
  }

  if (v4)
  {
    v7 = +[RMLog persistentController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100059444(v4, v3, v7);
    }

    goto LABEL_9;
  }

LABEL_10:
}

void sub_1000592F4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Creating loaded persistent container at %{public}@...", &v2, 0xCu);
}

void sub_10005936C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 URL];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Unable to load persistent store %{public}@: %{public}@...", &v6, 0x16u);
}

void sub_100059444(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *a2;
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Unexpected class %{public}@ for %{public}@", &v8, 0x16u);
}

void sub_100059730(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000E6A18;
  qword_1000E6A18 = v1;

  [qword_1000E6A18 setName:@"com.apple.remotemanagementd.persistent-history-notifier"];
  [qword_1000E6A18 setMaxConcurrentOperationCount:1];
  v3 = qword_1000E6A18;

  [v3 setQualityOfService:17];
}

void sub_100059C58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100059C7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100059D48;
  v3[3] = &unk_1000D16C8;
  v4 = *(a1 + 32);
  objc_copyWeak(&v5, (a1 + 40));
  [WeakRetained _queryForTransactionsWithCompletion:v3];

  objc_destroyWeak(&v5);
}

void sub_100059D48(uint64_t a1)
{
  [*(a1 + 32) lockWhenCondition:2];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained queryNeeded];

  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v4)
    {
      sub_10005AEE8((a1 + 40));
    }

    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 setQueryNeeded:0];

    [*(a1 + 32) unlockWithCondition:1];
    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 _delayedQuery];
  }

  else
  {
    if (v4)
    {
      sub_10005AE64((a1 + 40));
    }

    [*(a1 + 32) unlockWithCondition:0];
  }
}

void sub_10005A5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005A668(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005A680(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 persistentStores];
  v4 = [v2 currentPersistentHistoryTokenFromStores:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(a1 + 88) & 1) != 0 || (*(a1 + 89))
  {
    v7 = objc_opt_new();
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [*(*(*(a1 + 64) + 8) + 40) setPersistentHistoryToken:*(*(*(a1 + 48) + 8) + 40)];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10005AF6C(a1, v10, v11, v12, v13, v14, v15, v16);
    }

    v17 = [*(a1 + 40) persistentHistoryToken];
    v18 = *(*(a1 + 72) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    if (![RMPersistentHistoryNotifierChanges isExistingPersistentHistoryToken:*(*(*(a1 + 72) + 8) + 40) fromSameStoreAsUpdatedToken:*(*(*(a1 + 48) + 8) + 40)])
    {
      v20 = *(*(a1 + 72) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = 0;
    }

    v22 = *(a1 + 32);
    v23 = *(*(*(a1 + 72) + 8) + 40);
    v24 = *(*(*(a1 + 48) + 8) + 40);
    v37 = 0;
    v25 = v22;
    v26 = v23;
    v27 = v24;
    v28 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:v26];
    v29 = [v25 executeRequest:v28 error:&v37];
    v30 = [v29 result];

    v31 = v27;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10005AB48;
    v38[3] = &unk_1000D2758;
    v39 = v31;
    v32 = [NSPredicate predicateWithBlock:v38];

    v33 = [v30 filteredArrayUsingPredicate:v32];

    v34 = v37;
    v35 = *(*(a1 + 80) + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = v33;
  }

  else
  {
    [*(a1 + 40) setPersistentHistoryToken:*(*(*(a1 + 48) + 8) + 40)];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

id sub_10005A928(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5 && ([v3 changedObjectID], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "entity"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "containsObject:", v7), v7, v6, !v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(a1 + 40) persistentHistoryNotifier:*(a1 + 48) isChangeInteresting:v4 stop:*(*(a1 + 56) + 8) + 24];
  }

  return v9;
}

id sub_10005A9CC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 changedObjectID];
  v4 = [v3 entity];
  v5 = [v2 containsObject:v4];

  return v5;
}

BOOL sub_10005AB48(uint64_t a1, void *a2)
{
  v3 = [a2 token];
  v4 = [v3 compareToken:*(a1 + 32) error:0];

  return (v4 & 0xFFFFFFFFFFFFFFFELL) == 2;
}

void sub_10005AC8C()
{
  sub_100006C08();
  v2 = 2048;
  v3 = v0;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Managed object context (%p) did save for persistent history notifier (%p).", v1, 0x16u);
}

void sub_10005AE64(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  sub_100006C08();
  sub_10000A924(&_mh_execute_header, &_os_log_default, v2, "Persistent history notifier (%p) query complete.", v3, v4, v5, v6, v7);
}

void sub_10005AEE8(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  sub_100006C08();
  sub_10000A924(&_mh_execute_header, &_os_log_default, v2, "Persistent history notifier (%p) query complete, another is needed.", v3, v4, v5, v6, v7);
}

void sub_10005B3C4(id a1)
{
  qword_1000E6A28 = os_log_create("com.apple.remotemanagementd", "pluginDiscovery");

  _objc_release_x1();
}

uint64_t sub_10005BA84(uint64_t a1, uint64_t a2)
{
  v3 = [NSBundle bundleWithURL:a2];
  v4 = [v3 resourceURL];
  v5 = [RMLocations configurationSchemaDirectoryForXPCServiceResourceURL:v4];

  v6 = +[NSFileManager defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [*(a1 + 48) _discoverJSONFilesInDirectory:v5];
    [v9 addObjectsFromArray:v10];
  }

  v11 = [v3 resourceURL];
  v12 = [RMLocations statusSchemaDirectoryForXPCServiceResourceURL:v11];

  v13 = +[NSFileManager defaultManager];
  v14 = [v12 path];
  v15 = [v13 fileExistsAtPath:v14];

  if (v15)
  {
    v16 = *(a1 + 40);
    v17 = [*(a1 + 48) _discoverJSONFilesInDirectory:v12];
    [v16 addObjectsFromArray:v17];

    v8 = 1;
  }

  return v8;
}

void sub_10005BE1C(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 path];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Found schema file in plugin: %{public}@", a1, 0xCu);
}

void sub_10005BED8(id a1)
{
  qword_1000E6A38 = os_log_create("com.apple.remotemanagementd", "predicateDescription");

  _objc_release_x1();
}

void sub_10005C400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint8_t buf)
{
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v30 = objc_begin_catch(exception_object);
  v31 = [v30 name];
  v32 = [v31 isEqualToString:RMErrorDomain];

  if (v32)
  {
    v33 = [v30 userInfo];
    v34 = [v33 objectForKeyedSubscript:@"error"];
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = [RMErrorUtilities createUnableToParsePredicateErrorWithFormat:v29 reason:@"Unknown"];
    }

    v40 = v36;

    v41 = +[RMLog predicateDescription];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_10005D42C(v29, v40, v41);
    }

    if (!a12)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v37 = +[RMLog predicateDescription];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [v30 reason];
      sub_10005D3C4(v29, v38, &buf, v37);
    }

    if (!a12)
    {
LABEL_16:

      objc_end_catch();
      JUMPOUT(0x10005C38CLL);
    }

    v39 = [v30 reason];
    v40 = [RMErrorUtilities createUnableToParsePredicateErrorWithFormat:v29 reason:v39];
  }

  if (v40)
  {
    v42 = v40;
    *a12 = v40;
  }

LABEL_15:

  goto LABEL_16;
}

void sub_10005D3C4(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to parse “%{public}@”: %{public}@", buf, 0x16u);
}

void sub_10005D42C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to parse “%{public}@”: %{public}@", &v3, 0x16u);
}

void sub_10005D4B4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to create predicate regular expression: %{public}@", &v2, 0xCu);
}

void sub_10005D52C(void *a1, NSObject *a2)
{
  v3 = [a1 version];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid predicate description version: %{public}@", &v4, 0xCu);
}

void sub_10005D608(id a1)
{
  qword_1000E6A48 = os_log_create("com.apple.remotemanagementd", "predicateStatusUpdater");

  _objc_release_x1();
}

void sub_10005D690(id a1)
{
  v1 = +[RMPersistentController sharedController];
  v4 = [v1 persistentContainer];

  v2 = [[RMPredicateStatusUpdater alloc] initWithPersistentContainer:v4];
  v3 = qword_1000E6A58;
  qword_1000E6A58 = v2;
}

void sub_10005DA6C(uint64_t a1)
{
  v2 = +[RMManagementSource fetchRequest];
  [v2 setPredicate:*(a1 + 32)];
  v16 = 0;
  v3 = [v2 execute:&v16];
  v4 = v16;
  if (v3)
  {
    if ([v3 count])
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(a1 + 40);
            v11 = [*(*(&v12 + 1) + 8 * i) objectID];
            [v10 addObject:v11];
          }

          v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
        }

        while (v7);
      }
    }

    else
    {
      v5 = +[RMLog predicateStatusUpdater];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_10005DD0C((a1 + 32), v5);
      }
    }
  }

  else
  {
    v5 = +[RMLog predicateStatusUpdater];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_10005DD88((a1 + 32), v4, v5);
    }
  }
}

void sub_10005DC94(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Posting notification for management source: %{public}@", &v2, 0xCu);
}

void sub_10005DD0C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "No management source matching %{public}@", &v3, 0xCu);
}

void sub_10005DD88(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Unable to fetch for management sources for %{public}@: %{public}@", &v4, 0x16u);
}

void sub_10005E2F0(id a1)
{
  qword_1000E6A68 = os_log_create("com.apple.remotemanagementd", "push");

  _objc_release_x1();
}

void sub_10005E378(id a1)
{
  v1 = +[RMPersistentController sharedController];
  v9 = [v1 persistentContainer];

  v2 = [v9 newBackgroundContext];
  [v2 setAutomaticallyMergesChangesFromParent:1];
  [v2 setTransactionAuthor:@"PushController"];
  v3 = +[RMInternalStateArchiver sharedArchiver];
  v4 = [RMPushController alloc];
  v5 = [v3 pushTokenByEnvironmentName];
  v6 = +[RMSubscribedStatusKeyPathUpdater sharedUpdater];
  v7 = [(RMPushController *)v4 initWithPushTokenByEnvironmentName:v5 subscribedStatusKeyPathUpdater:v6 context:v2];
  v8 = qword_1000E6A78;
  qword_1000E6A78 = v7;

  [qword_1000E6A78 setDelegate:v3];
}

void sub_10005E518(uint64_t a1)
{
  v1 = [*(a1 + 32) sharedController];
  [v1 _start];
}

void sub_10005E7A4(id a1, NSString *a2, APSConnection *a3, BOOL *a4)
{
  v4 = a3;
  [(APSConnection *)v4 setDelegate:0];
  [(APSConnection *)v4 shutdown];
}

void sub_10005EA9C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v9];
  if (!v6)
  {
    v6 = [RMPushController _connectionWithEnvironmentName:v9 queue:*(a1 + 40)];
    [v6 setDelegate:*(a1 + 48)];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v9];
  }

  v7 = [v5 allObjects];
  v8 = [v7 sortedArrayUsingSelector:"localizedCompare:"];

  [v6 setEnabledTopics:v8 ignoredTopics:&__NSArray0__struct];
}

void sub_10005EC30(id a1)
{
  v3[0] = APSEnvironmentDevelopment;
  v3[1] = APSEnvironmentProduction;
  v4[0] = @"com.apple.aps.remotemanagementd.http.apns-dev";
  v4[1] = @"com.apple.aps.remotemanagementd.http.apns-prod";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_1000E6A90;
  qword_1000E6A90 = v1;
}

void sub_10005F184(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 publicToken];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void sub_10005F5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005F5DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005F5F4(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) identifier];
  v4 = [RMManagementSource fetchRequestWithIdentifier:v3];

  v25 = 0;
  v5 = [v4 execute:&v25];
  v6 = v25;
  if (v5)
  {
    v7 = [v5 firstObject];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 conduitConfig];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v11 = [v8 conduitConfig];
        v12 = [v11 state];
        v13 = [v12 pushEnvironment];
        v14 = v13;
        v15 = APSEnvironmentProduction;
        if (v13)
        {
          v15 = v13;
        }

        v16 = v15;
      }

      else
      {
        v16 = APSEnvironmentProduction;
      }

      v24 = *(*(a1 + 48) + 8);
      v20 = *(v24 + 40);
      *(v24 + 40) = v16;
    }

    else
    {
      v20 = [*(a1 + 32) identifier];
      v21 = [RMErrorUtilities createManagementSourceNotFoundErrorWithIdentifier:v20];
      v22 = *(*(a1 + 40) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;
    }
  }

  else
  {
    v17 = +[RMLog push];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_100060A98(v2, v6, v17);
    }

    v18 = +[RMErrorUtilities createInternalError];
    v19 = *(*(a1 + 40) + 8);
    v8 = *(v19 + 40);
    *(v19 + 40) = v18;
  }
}

void sub_10005FD08(uint64_t a1)
{
  v2 = +[RMHTTPConduitConfig fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %@) && (%K == %@)", @"state.pushEnvironment", *(a1 + 32), @"state.enrollmentToken", *(a1 + 40), @"state.pushTopic", *(a1 + 48)];
  [v2 setPredicate:v3];

  v47 = @"conduitConfig";
  v4 = [NSArray arrayWithObjects:&v47 count:1];
  [v2 setRelationshipKeyPathsForPrefetching:v4];

  v37 = 0;
  v5 = [v2 execute:&v37];
  v6 = v37;
  if (v5)
  {
    if ([v5 count])
    {
      v28 = v6;
      v30 = v2;
      v7 = +[NSDate date];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v29 = v5;
      obj = v5;
      v8 = [obj countByEnumeratingWithState:&v33 objects:v46 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v34;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v34 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v33 + 1) + 8 * i);
            v13 = +[RMLog push];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v14 = [v12 managementSource];
              v15 = [v14 identifier];
              v16 = *(a1 + 32);
              v17 = *(a1 + 40);
              v18 = *(a1 + 48);
              *buf = 138544130;
              v39 = v15;
              v40 = 2114;
              v41 = v16;
              v42 = 2114;
              v43 = v17;
              v44 = 2114;
              v45 = v18;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Updating %{public}@ for environment: %{public}@ enrollment token: %{public}@ topic: %{public}@", buf, 0x2Au);
            }

            [v12 setLastReceivedPushTimestamp:v7];
            v19 = *(a1 + 56);
            if (v19)
            {
              v20 = [v19 tokensTimestamp];
              [v12 setLastReceivedServerTokensTimestamp:v20];

              [v12 setLastReceivedCommandToken:0];
              v21 = [*(a1 + 56) tokensDeclarationsToken];
              [v12 setLastReceivedDeclarationsToken:v21];
            }

            else
            {
              [v12 setLastReceivedServerTokensTimestamp:0];
              [v12 setLastReceivedCommandToken:0];
              [v12 setLastReceivedDeclarationsToken:0];
            }
          }

          v9 = [obj countByEnumeratingWithState:&v33 objects:v46 count:16];
        }

        while (v9);
      }

      v22 = *(a1 + 64);
      v32 = v28;
      v23 = [v22 save:&v32];
      v6 = v32;

      if (v23)
      {
        v5 = v29;
        v2 = v30;
      }

      else
      {
        v27 = +[RMLog push];
        v5 = v29;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          sub_100060BCC();
        }

        [*(a1 + 64) rollback];
        v2 = v30;
      }
    }

    else
    {
      v7 = +[RMLog push];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v24 = *(a1 + 32);
        v25 = *(a1 + 40);
        v26 = *(a1 + 48);
        *buf = 138543874;
        v39 = v24;
        v40 = 2114;
        v41 = v25;
        v42 = 2114;
        v43 = v26;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "No conduit configs for environment: %{public}@ enrollment token: %{public}@ topic: %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v7 = +[RMLog push];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100060C34();
    }
  }
}

void sub_100060290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_1000602B0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

void sub_100060768(uint64_t a1)
{
  v2 = +[RMHTTPConduitState fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"(%K != NULL) && (%K != NULL)", @"pushEnvironment", @"pushTopic"];
  [v2 setPredicate:v3];

  v26[0] = @"pushEnvironment";
  v26[1] = @"pushTopic";
  v4 = [NSArray arrayWithObjects:v26 count:2];
  [v2 setPropertiesToFetch:v4];

  v22 = 0;
  v5 = [v2 execute:&v22];
  v6 = v22;
  if (v5)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v16 = v6;
      v17 = v2;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [v12 pushEnvironment];
          v14 = [*(a1 + 32) objectForKeyedSubscript:v13];
          if (v14)
          {
            v15 = [v12 pushTopic];
            [v14 addObject:v15];
          }

          else
          {
            v15 = +[RMLog push];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v24 = v13;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid push environment: “%{public}@”", buf, 0xCu);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v9);
      v2 = v17;
      v6 = v16;
    }
  }

  else
  {
    v7 = +[RMLog push];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100060C9C();
    }
  }
}

void sub_100060A98(id *a1, uint64_t a2, NSObject *a3)
{
  v5 = [*a1 identifier];
  sub_100006C08();
  v7 = 2114;
  v8 = a2;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Unable to fetch management sources for management channel (%{public}@): %{public}@", v6, 0x16u);
}

void sub_100060B48()
{
  sub_100006C08();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Push notification missing message for topic: %{public}@ in environment: %{public}@", v2, 0x16u);
}

void sub_100060E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100060E28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100060E40(uint64_t a1)
{
  v9[0] = @"Management Sources";
  v2 = +[RMReport managementSources];
  v9[1] = @"Orphaned Entities";
  v10[0] = v2;
  v3 = +[RMReport orphanedEntities];
  v10[1] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v5 = [v4 mutableCopy];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(a1 + 48) == 1)
  {
    v8 = [RMReport internalStateArchiveWithContext:*(a1 + 32)];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v8 forKeyedSubscript:@"Internal Device Status"];
  }
}

void sub_1000620CC(id a1)
{
  qword_1000E6AA0 = os_log_create("com.apple.remotemanagementd", "securityUtilities");

  _objc_release_x1();
}

void sub_1000634E4(id a1)
{
  qword_1000E6AB0 = os_log_create("com.apple.remotemanagementd", "statusEngine");

  _objc_release_x1();
}

void sub_1000639A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100063B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100063B2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100063B44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = *(a1 + 48);
  v5 = v2;
  v6 = v4;
  v7 = +[RMSubscribedStatusKeyPath fetchRequest];
  v8 = [NSPredicate predicateWithFormat:@"(%K == %@) AND (SUBQUERY(%K, $statusSubscriptionItem, $statusSubscriptionItem.%K IN %@).@count > 0)", @"managementSource", v3, @"statusSubscriptionItems", @"subscription.sourceIdentifier", v6];
  [v7 setPredicate:v8];

  *&v26 = 0;
  v9 = [v7 execute:&v26];
  v10 = v26;
  if (v9)
  {
    v11 = [NSSet setWithArray:v9];
  }

  else
  {
    v12 = +[RMLog statusEngine];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v31 = v6;
      v32 = 2114;
      v33 = v3;
      v34 = 2114;
      v35 = v10;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not get subscribed status key paths for identifiers %{public}@ from %{public}@: %{public}@", buf, 0x20u);
    }

    v11 = objc_opt_new();
  }

  v13 = v11;

  v14 = v13;
  if ([v14 count])
  {
    v15 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v14 count]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:buf count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v26 + 1) + 8 * i);
          v22 = [v21 lastReceivedDate];
          v23 = [v21 keyPath];
          [v15 setObject:v22 forKeyedSubscript:v23];
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:buf count:16];
      }

      while (v18);
    }
  }

  else
  {
    v15 = &__NSDictionary0__struct;
  }

  v24 = *(*(a1 + 56) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v15;
}

void sub_1000640B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = *(a1 + 48);
  v5 = v2;
  v6 = v4;
  v7 = +[RMSubscribedStatusKeyPath fetchRequest];
  v8 = [NSPredicate predicateWithFormat:@"(%K == %@) AND (SUBQUERY(%K, $statusSubscriptionItem, $statusSubscriptionItem.%K IN %@).@count > 0)", @"managementSource", v3, @"statusSubscriptionItems", @"keyPath", v6];
  [v7 setPredicate:v8];

  *&v27 = 0;
  v9 = [v7 execute:&v27];
  v10 = v27;
  if (v9)
  {
    v11 = [NSSet setWithArray:v9];
  }

  else
  {
    v12 = +[RMLog statusEngine];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v32 = v6;
      v33 = 2114;
      v34 = v3;
      v35 = 2114;
      v36 = v10;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not get subscribed status key paths %{public}@ from %{public}@: %{public}@", buf, 0x20u);
    }

    v11 = objc_opt_new();
  }

  v13 = v11;

  v14 = v13;
  if ([v14 count])
  {
    v15 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v14 count]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:buf count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          v22 = [v21 lastReceivedDate];
          v23 = [v21 keyPath];
          [v15 setObject:v22 forKeyedSubscript:v23];
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:buf count:16];
      }

      while (v18);
    }
  }

  else
  {
    v15 = &__NSDictionary0__struct;
  }

  v24 = [v15 mutableCopy];
  v25 = *(*(a1 + 56) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v24;
}

void sub_1000644F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006450C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = *(a1 + 48);
  v5 = v2;
  v6 = v4;
  v7 = +[RMSubscribedStatusKeyPath fetchRequest];
  v8 = [NSPredicate predicateWithFormat:@"(%K == %@) AND (SUBQUERY(%K, $statusSubscriptionItem, $statusSubscriptionItem.%K IN %@).@count > 0)", @"managementSource", v3, @"statusSubscriptionItems", @"keyPath", v6];
  [v7 setPredicate:v8];

  *&v26 = 0;
  v9 = [v7 execute:&v26];
  v10 = v26;
  if (v9)
  {
    v11 = [NSSet setWithArray:v9];
  }

  else
  {
    v12 = +[RMLog statusEngine];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v31 = v6;
      v32 = 2114;
      v33 = v3;
      v34 = 2114;
      v35 = v10;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not get subscribed status key paths %{public}@ from %{public}@: %{public}@", buf, 0x20u);
    }

    v11 = objc_opt_new();
  }

  v13 = v11;

  v14 = v13;
  if ([v14 count])
  {
    v15 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v14 count]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:buf count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v26 + 1) + 8 * i);
          v22 = [v21 lastReceivedDate];
          v23 = [v21 keyPath];
          [v15 setObject:v22 forKeyedSubscript:v23];
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:buf count:16];
      }

      while (v18);
    }
  }

  else
  {
    v15 = &__NSDictionary0__struct;
  }

  v24 = *(*(a1 + 56) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v15;
}

void sub_10006488C(uint64_t a1)
{
  v2 = [*(a1 + 40) managementSourceObjectID];
  v3 = sub_100064A48(v2);

  if ([v3 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        v8 = 0;
        do
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v16 + 1) + 8 * v8) setLastAcknowledgedDate:0];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    v9 = *(a1 + 32);
    v15 = 0;
    v10 = [v9 save:&v15];
    v11 = v15;
    v12 = +[RMLog statusEngine];
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "cleared lastAcknowledgedDate", v14, 2u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10006672C(v11, v13);
    }
  }
}

id sub_100064A48(void *a1)
{
  v1 = a1;
  v2 = +[RMSubscribedStatusKeyPath fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"%K == %@", @"managementSource", v1];
  [v2 setPredicate:v3];

  v10 = 0;
  v4 = [v2 execute:&v10];
  v5 = v10;
  if (v4)
  {
    v6 = [NSSet setWithArray:v4];
  }

  else
  {
    v7 = +[RMLog statusEngine];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000667A4();
    }

    v6 = objc_opt_new();
  }

  v8 = v6;

  return v8;
}

void sub_100064CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100064D14(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 64);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = v3;
  if (v2 == 1)
  {
    v5 = v3;
    v6 = +[RMStatusSubscription fetchRequest];
    v7 = [NSPredicate predicateWithFormat:@"%K == %@", @"managementSource", v5];
    [v6 setPredicate:v7];

    v73[0] = 0;
    v8 = [v6 execute:v73];
    v9 = v73[0];
    v54 = v5;
    v55 = v1;
    if (v8)
    {
      v10 = [NSSet setWithArray:v8];
    }

    else
    {
      v12 = +[RMLog statusEngine];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10006680C();
      }

      v10 = objc_opt_new();
    }

    v13 = v10;

    v60 = objc_opt_new();
    v59 = [NSPredicate predicateWithFormat:@"%K == NULL", @"lastAcknowledgedDate"];
    v58 = [NSPredicate predicateWithFormat:@"(%K == NULL) OR (%K != %K)", @"lastAcknowledgedDate", @"lastReceivedDate", @"lastAcknowledgedDate"];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v13;
    v14 = [obj countByEnumeratingWithState:&v61 objects:&v69 count:16];
    if (v14)
    {
      v15 = v14;
      v57 = *v62;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v62 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v61 + 1) + 8 * i);
          v18 = [v17 sourceType];
          v19 = v59;
          if (v18 != 3)
          {
            v19 = v58;
          }

          v20 = v19;
          v21 = [v17 items];
          v22 = v20;
          v23 = objc_opt_new();
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v24 = v21;
          v25 = [v24 countByEnumeratingWithState:&v65 objects:v73 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v66;
            do
            {
              for (j = 0; j != v26; j = j + 1)
              {
                if (*v66 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = [*(*(&v65 + 1) + 8 * j) subscribedStatusKeyPaths];
                v30 = [v29 filteredSetUsingPredicate:v22];

                [v23 unionSet:v30];
              }

              v26 = [v24 countByEnumeratingWithState:&v65 objects:v73 count:16];
            }

            while (v26);
          }

          [v60 unionSet:v23];
        }

        v15 = [obj countByEnumeratingWithState:&v61 objects:&v69 count:16];
      }

      while (v15);
    }

    v11 = v60;
    if ([v11 count])
    {
      v31 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v11 count]);
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v32 = v11;
      v33 = [v32 countByEnumeratingWithState:&v69 objects:v73 count:16];
      v1 = v55;
      if (v33)
      {
        v34 = v33;
        v35 = *v70;
        do
        {
          for (k = 0; k != v34; k = k + 1)
          {
            if (*v70 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v69 + 1) + 8 * k);
            v38 = [v37 lastAcknowledgedDate];
            v39 = [v37 keyPath];
            [v31 setObject:v38 forKeyedSubscript:v39];
          }

          v34 = [v32 countByEnumeratingWithState:&v69 objects:v73 count:16];
        }

        while (v34);
      }
    }

    else
    {
      v31 = &__NSDictionary0__struct;
      v1 = v55;
    }

    v40 = *(*(v1 + 48) + 8);
    v41 = *(v40 + 40);
    *(v40 + 40) = v31;
  }

  else
  {
    v11 = sub_100064A48(v3);
  }

  v42 = v11;
  if ([v42 count])
  {
    v43 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v42 count]);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v44 = v42;
    v45 = [v44 countByEnumeratingWithState:&v69 objects:v73 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v70;
      do
      {
        for (m = 0; m != v46; m = m + 1)
        {
          if (*v70 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v69 + 1) + 8 * m);
          v50 = [v49 lastReceivedDate];
          v51 = [v49 keyPath];
          [v43 setObject:v50 forKeyedSubscript:v51];
        }

        v46 = [v44 countByEnumeratingWithState:&v69 objects:v73 count:16];
      }

      while (v46);
    }
  }

  else
  {
    v43 = &__NSDictionary0__struct;
  }

  v52 = *(*(v1 + 56) + 8);
  v53 = *(v52 + 40);
  *(v52 + 40) = v43;
}

void sub_1000654E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100065504(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [*(a1 + 32) managementSourceObjectID];
  v7 = [v2 objectWithID:v3];

  v4 = [[RMManagementChannel alloc] initWithManagementSource:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1000656F8(id *a1)
{
  v40 = [a1[4] lastReceivedDateByKeyPath];
  v2 = [a1[6] managementSourceObjectID];
  v3 = a1 + 7;
  v4 = [NSSet setWithArray:a1[7]];
  v5 = sub_100064A48(v2);
  v6 = [NSPredicate predicateWithFormat:@"%K IN %@", @"keyPath", v4];
  v7 = [v5 filteredSetUsingPredicate:v6];

  v38 = [NSPredicate predicateWithFormat:@"%K == %d", @"subscription.sourceType", 3];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v47 objects:v54 count:16];
  v39 = v8;
  if (!v9)
  {

    goto LABEL_26;
  }

  v10 = v9;
  v37 = 0;
  v11 = *v48;
  do
  {
    v12 = 0;
    v41 = v10;
    do
    {
      if (*v48 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v47 + 1) + 8 * v12);
      v14 = [v13 keyPath];
      if ([*v3 containsObject:v14])
      {
        v15 = v3;
        v16 = [v40 objectForKeyedSubscript:v14];
        v17 = [v13 lastReceivedDate];
        if (![v17 isEqualToDate:v16])
        {
          goto LABEL_17;
        }

        v18 = [v13 lastAcknowledgedDate];
        v19 = [v18 isEqualToDate:v16];

        v8 = v39;
        if ((v19 & 1) == 0)
        {
          [v13 setLastAcknowledgedDate:v16];
          v20 = [v13 statusSubscriptionItems];
          v21 = [v20 filteredSetUsingPredicate:v38];

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v17 = v21;
          v22 = [v17 countByEnumeratingWithState:&v43 objects:v53 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v44;
            do
            {
              for (i = 0; i != v23; i = i + 1)
              {
                if (*v44 != v24)
                {
                  objc_enumerationMutation(v17);
                }

                [a1[5] deleteObject:*(*(&v43 + 1) + 8 * i)];
              }

              v23 = [v17 countByEnumeratingWithState:&v43 objects:v53 count:16];
            }

            while (v23);
          }

          v37 = 1;
          v8 = v39;
LABEL_17:
        }

        v3 = v15;
        v10 = v41;
      }

      v12 = v12 + 1;
    }

    while (v12 != v10);
    v10 = [v8 countByEnumeratingWithState:&v47 objects:v54 count:16];
  }

  while (v10);

  if (v37)
  {
    v26 = a1[5];
    v42 = 0;
    v27 = [v26 save:&v42];
    v28 = v42;
    v29 = +[RMLog statusEngine];
    v30 = v29;
    if (v27)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v31 = *v3;
        v32 = [v31 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
        v33 = [v32 componentsJoinedByString:{@", "}];

        v8 = v39;
        *buf = 138543362;
        v52 = v33;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Acknowledged status subscriptions: %{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100066924(v3);
    }

    goto LABEL_31;
  }

LABEL_26:
  v28 = +[RMLog statusEngine];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v34 = *v3;
    v35 = [v34 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v36 = [v35 componentsJoinedByString:{@", "}];

    v8 = v39;
    *buf = 138543362;
    v52 = v36;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Status subscriptions already acknowledged: %{public}@", buf, 0xCu);
  }

LABEL_31:
}

void sub_100065DCC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v63 = a1;
  v4 = *(a1 + 56);
  v5 = v2;
  v6 = +[RMStatusSubscription fetchRequest];
  v7 = [NSPredicate predicateWithFormat:@"(%K == %@) AND (%K == %@) AND (%K == %d)", @"managementSource", v3, @"sourceIdentifier", @"Remote Management", @"sourceType", v4];
  [v6 setPredicate:v7];

  v87[0] = 0;
  v8 = [v6 execute:v87];
  v9 = v87[0];
  if (v8)
  {
    v10 = [v8 firstObject];
    if (v10)
    {
      v11 = v10;
      goto LABEL_13;
    }

    v86[0] = v9;
    v12 = [v5 existingObjectWithID:v3 error:v86];
    v14 = v86[0];

    if (v12)
    {
      v15 = [[RMStatusSubscription alloc] initWithContext:v5];
      [(RMStatusSubscription *)v15 setManagementSource:v12];
      [(RMStatusSubscription *)v15 setSourceIdentifier:@"Remote Management"];
      v13 = v15;
      [(RMStatusSubscription *)v15 setSourceType:v4];
    }

    else
    {
      v16 = +[RMLog statusEngine];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109634;
        *v89 = v4;
        *&v89[4] = 2114;
        *&v89[6] = v3;
        v90 = 2114;
        v91 = v14;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not get or status status subscription for %d from %{public}@: %{public}@", buf, 0x1Cu);
      }

      v13 = 0;
    }
  }

  else
  {
    v12 = +[RMLog statusEngine];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_100066AB8(v12);
    }

    v13 = 0;
    v14 = v9;
  }

  v9 = v14;
  v11 = v13;
LABEL_13:

  if (v11)
  {
    [v11 hasChanges];
    v17 = *(v63 + 48);
    v59 = (v63 + 48);
    v62 = v11;
    v18 = v11;
    v19 = v17;
    v66 = v18;
    v20 = [v18 items];
    v21 = [v20 valueForKey:@"keyPath"];

    v22 = v21;
    v61 = v19;
    v23 = [v19 mutableCopy];
    [v23 minusSet:v22];
    v60 = v22;

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = v23;
    v67 = [obj countByEnumeratingWithState:&v74 objects:v86 count:16];
    if (v67)
    {
      v65 = *v75;
      do
      {
        v24 = 0;
        do
        {
          if (*v75 != v65)
          {
            objc_enumerationMutation(obj);
          }

          v72 = v24;
          v25 = *(*(&v74 + 1) + 8 * v24);
          v26 = v66;
          v27 = [RMStatusSubscriptionItem alloc];
          v28 = [v26 managedObjectContext];
          v29 = [(RMStatusSubscriptionItem *)v27 initWithContext:v28];

          [(RMStatusSubscriptionItem *)v29 setSubscription:v26];
          [(RMStatusSubscriptionItem *)v29 setKeyPath:v25];

          v30 = [NSSet setWithObject:v25];
          v31 = v29;
          v32 = v30;
          v33 = [(RMStatusSubscriptionItem *)v31 subscription];
          v34 = [v33 managementSource];

          v35 = [v34 subscribedStatusKeyPaths];
          v69 = [NSPredicate predicateWithFormat:@"%K IN %@", @"keyPath", v32];
          v36 = [v35 filteredSetUsingPredicate:?];
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v37 = [v36 countByEnumeratingWithState:&v82 objects:buf count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v83;
            do
            {
              v40 = 0;
              do
              {
                if (*v83 != v39)
                {
                  objc_enumerationMutation(v36);
                }

                [*(*(&v82 + 1) + 8 * v40) addStatusSubscriptionItemsObject:v31];
                v40 = v40 + 1;
              }

              while (v38 != v40);
              v38 = [v36 countByEnumeratingWithState:&v82 objects:buf count:16];
            }

            while (v38);
          }

          v70 = v35;
          v41 = [v35 valueForKey:@"keyPath"];
          v71 = v32;
          v42 = [v32 mutableCopy];
          v68 = v41;
          [v42 minusSet:v41];
          v43 = [(RMStatusSubscriptionItem *)v31 managedObjectContext];
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v44 = v42;
          v45 = [v44 countByEnumeratingWithState:&v78 objects:v87 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v79;
            do
            {
              v48 = 0;
              do
              {
                if (*v79 != v47)
                {
                  objc_enumerationMutation(v44);
                }

                v49 = *(*(&v78 + 1) + 8 * v48);
                v50 = [[RMSubscribedStatusKeyPath alloc] initWithContext:v43];
                [(RMSubscribedStatusKeyPath *)v50 setKeyPath:v49];
                [(RMSubscribedStatusKeyPath *)v50 setManagementSource:v34];
                [(RMSubscribedStatusKeyPath *)v50 addStatusSubscriptionItemsObject:v31];

                v48 = v48 + 1;
              }

              while (v46 != v48);
              v46 = [v44 countByEnumeratingWithState:&v78 objects:v87 count:16];
            }

            while (v46);
          }

          v24 = v72 + 1;
        }

        while ((v72 + 1) != v67);
        v67 = [obj countByEnumeratingWithState:&v74 objects:v86 count:16];
      }

      while (v67);
    }

    v51 = *(v63 + 32);
    v73 = 0;
    v52 = [v51 save:&v73];
    v53 = v73;
    v54 = +[RMLog statusEngine];
    v55 = v54;
    if (v52)
    {
      v11 = v62;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v56 = [*v59 allObjects];
        v57 = [v56 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
        v58 = [v57 componentsJoinedByString:{@", "}];

        *buf = 138412290;
        *v89 = v58;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Implicitly subscribed to %@", buf, 0xCu);
      }
    }

    else
    {
      v11 = v62;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        sub_100066AFC(v59);
      }
    }
  }

  else
  {
    v53 = +[RMLog statusEngine];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      sub_100066BD0(v63);
    }
  }
}

void sub_10006657C(uint64_t a1)
{
  v5 = +[RMSubscribedStatusKeyPath fetchRequest];
  v2 = [NSPredicate predicateWithFormat:@"(%K == %@) && ((%K == NULL) OR (%K != %K))", @"managementSource", *(a1 + 32), @"lastAcknowledgedDate", @"lastReceivedDate", @"lastAcknowledgedDate"];
  [v5 setPredicate:v2];

  [v5 setResultType:4];
  v3 = [v5 execute:0];
  v4 = [v3 firstObject];

  *(*(*(a1 + 40) + 8) + 24) = [v4 integerValue] > 0;
}

void sub_10006672C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not clear lastAcknowledgedDate %{public}@", &v2, 0xCu);
}

void sub_100066874(void *a1)
{
  v1 = [a1 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v2 = [v1 componentsJoinedByString:{@", "}];

  sub_100022548(&_mh_execute_header, v3, v4, "Acknowledging status subscriptions: %{public}@...", v5, v6, v7, v8, 2u);
}

void sub_100066924(id *a1)
{
  v1 = *a1;
  v2 = [v1 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v3 = [v2 componentsJoinedByString:{@", "}];

  sub_100066678();
  sub_100019888();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1000669F8(void *a1)
{
  v1 = [a1 allObjects];
  v2 = [v1 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v3 = [v2 componentsJoinedByString:{@", "}];

  sub_100022548(&_mh_execute_header, v4, v5, "Making implicit status subscriptions for %@", v6, v7, v8, v9, 2u);
}

void sub_100066AFC(id *a1)
{
  v1 = [*a1 allObjects];
  v2 = [v1 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v3 = [v2 componentsJoinedByString:{@", "}];

  sub_100066678();
  sub_100019888();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100066BD0(uint64_t a1)
{
  v1 = [*(a1 + 48) allObjects];
  v2 = [v1 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v3 = [v2 componentsJoinedByString:{@", "}];

  sub_100019888();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

id RMFilterSupportedKeyPathsByRequestedKeyPaths(void *a1, void *a2)
{
  v3 = a1;
  v20 = a2;
  v4 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
  v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v19 = *v28;
    do
    {
      v5 = 0;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v5;
        v6 = *(*(&v27 + 1) + 8 * v5);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v7 = v20;
        v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v24;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v24 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v23 + 1) + 8 * i);
              if ([v6 isEqualToString:v12])
              {
                goto LABEL_14;
              }

              v13 = [v12 stringByAppendingString:@"/"];
              v14 = [v6 hasPrefix:v13];

              if ((v14 & 1) == 0)
              {
                v15 = [v12 stringByAppendingString:@"."];
                v16 = [v6 hasPrefix:v15];

                if (!v16)
                {
                  continue;
                }
              }

LABEL_14:
              [v4 addObject:v6];
            }

            v9 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v9);
        }

        v5 = v22 + 1;
      }

      while ((v22 + 1) != v21);
      v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }

  return v4;
}

void sub_100066F34(id a1)
{
  qword_1000E6AC0 = os_log_create("com.apple.remotemanagementd", "statusPublisherServicePlugin");

  _objc_release_x1();
}

void sub_100067898(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog statusPublisherServicePlugin];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100067C10(a1);
  }
}

void sub_100067904(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog statusPublisherServicePlugin];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100067CAC(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100067D48(a1, v5);
  }
}

void sub_100067C10(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100067CAC(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100067D48(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 32) identifier];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Publish status keys for status publisher  XPC service: %{public}@", &v4, 0xCu);
}

void sub_100067E28(id a1)
{
  qword_1000E6AD0 = os_log_create("com.apple.remotemanagementd", "statusQuerier");

  _objc_release_x1();
}

id sub_100068AC8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  v6 = [v3 allKeys];
  v7 = [v4 allKeys];
  v8 = [v6 arrayByAddingObjectsFromArray:v7];
  v9 = [NSSet setWithArray:v8];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    v23 = v4;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [v3 objectForKeyedSubscript:v15];
        v17 = [v4 objectForKeyedSubscript:v15];
        v18 = v17;
        if (!v16)
        {
          goto LABEL_11;
        }

        if (!v17)
        {
          goto LABEL_12;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          sub_100068AC8(v16, v18);
          v19 = v3;
          v21 = v20 = v10;
          [v5 setObject:v21 forKeyedSubscript:v15];

          v10 = v20;
          v3 = v19;
          v4 = v23;
        }

        else
        {
LABEL_11:
          [v5 setObject:v18 forKeyedSubscript:v15];
        }

LABEL_12:
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  return v5;
}

void sub_100068D34(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Query for keys: %{public}@", &v2, 0xCu);
}

void sub_100068DAC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Unsupported keys: %{public}@", &v2, 0xCu);
}

void sub_1000693D8(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = [a2 stringByAppendingPathExtension:*(a1 + 32)];
  v5 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  v6 = [RMJSONSerialization serializeValue:v5];

  if (v6)
  {
    v7 = [v13 pathExtension];
    v8 = [v7 length];

    if (v8)
    {
      v9 = *(a1 + 48);
      v10 = [v13 stringByDeletingPathExtension];
      sub_1000326D0(v9, v10);
    }

    [*(a1 + 48) setValue:v6 forKeyPath:v13];
  }

  else
  {
    v11 = [*(a1 + 56) stringByAppendingPathExtension:v13];
    v12 = [RMErrorUtilities createUnsupportedStatusValueErrorWithKeyPath:v11];
    [*(a1 + 64) setObject:v12 forKeyedSubscript:v11];
  }
}

void sub_1000699A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v5;
  v8 = a2;
  v9 = [v7 userInfo];
  v10 = [v9 objectForKeyedSubscript:RMErrorUserInfoKeyDescriptionKey];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [v7 domain];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%ld", v13, [v7 code]);
  }

  v14 = [v7 userInfo];
  v15 = [v14 objectForKeyedSubscript:NSDebugDescriptionErrorKey];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v18 = [v7 localizedDescription];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = [v7 localizedFailureReason];
    }

    v17 = v20;
  }

  v21 = [RMProtocolStatusReport_StatusReason buildWithCode:v12 description:v17 details:0];

  v24 = v21;
  v22 = [NSArray arrayWithObjects:&v24 count:1];
  v23 = [RMProtocolStatusReport_Errors buildWithStatusItem:v8 reasons:v22];

  [v6 addObject:v23];
}

void sub_100069BF0(id a1)
{
  qword_1000E6AE0 = os_log_create("com.apple.remotemanagementd", "statusReporter");

  _objc_release_x1();
}

void sub_10006A02C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not serialize status: %{public}@", &v2, 0xCu);
}

void sub_10006A53C(id a1)
{
  qword_1000E6AF0 = os_log_create("com.apple.remotemanagementd", "statusSubscriptionsSubscriber");

  _objc_release_x1();
}

void sub_10006A764(uint64_t a1)
{
  v2 = +[RMManagementSource fetchRequest];
  v31 = 0;
  v3 = [v2 execute:&v31];
  v4 = v31;
  v5 = v4;
  if (v3)
  {
    v25 = v4;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v28;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v13 = objc_autoreleasePoolPush();
          v9 |= [*(a1 + 32) _updateStatusSubscriptionsForManagementSource:v12];
          objc_autoreleasePoolPop(v13);
        }

        v8 = [v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v8);
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    v15 = *(a1 + 40);
    v16 = +[RMSubscribedStatusKeyPath fetchRequest];
    v32 = 0;
    v17 = [v16 execute:&v32];
    v18 = v32;
    if (v17)
    {
      v19 = [v17 valueForKeyPath:@"keyPath"];
      v14 = [NSSet setWithArray:v19];
    }

    else
    {
      v19 = +[RMLog statusSubscriptionsSubscriber];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_10002F05C();
      }

      v14 = 0;
    }

    if (v9)
    {
      v20 = *(a1 + 40);
      v26 = 0;
      v21 = [v20 save:&v26];
      v22 = v26;
      if ((v21 & 1) == 0)
      {
        v24 = +[RMLog statusSubscriptionsSubscriber];
        v5 = v25;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          sub_10006CA14();
        }

        [*(a1 + 40) rollback];
        goto LABEL_26;
      }

      v23 = +[RMExternalStatusPublisher sharedPublisher];
      [v23 listenToNotificationsForSubscribedKeyPaths:v14];
    }

    else
    {
      v22 = 0;
    }

    v5 = v25;
LABEL_26:
    [*(a1 + 40) reset];

    goto LABEL_27;
  }

  v14 = +[RMLog statusSubscriptionsSubscriber];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_10002F05C();
  }

LABEL_27:
}

void sub_10006AB50(uint64_t a1)
{
  v2 = +[RMManagementSource fetchRequest];
  v23 = 0;
  v3 = [v2 execute:&v23];
  v4 = v23;
  if (v3)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v17 = v4;
      v8 = 0;
      v9 = *v20;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v8 |= [*(a1 + 32) _updateStatusSubscriptionUIsForManagementSource:v11];
          objc_autoreleasePoolPop(v12);
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v7);

      if (v8)
      {
        v13 = *(a1 + 40);
        v18 = 0;
        v14 = [v13 save:&v18];
        v15 = v18;
        v4 = v17;
        if ((v14 & 1) == 0)
        {
          v16 = +[RMLog statusSubscriptionsSubscriber];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            sub_10006CA7C();
          }

          [*(a1 + 40) rollback];
        }
      }

      else
      {
        v15 = 0;
        v4 = v17;
      }
    }

    else
    {

      v15 = 0;
    }

    [*(a1 + 40) reset];
  }

  else
  {
    v15 = +[RMLog statusSubscriptionsSubscriber];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_10002F05C();
    }
  }
}

void sub_10006BBE8(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 replaceKey];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 replaceKey];
    [v4 addObject:v5];
  }
}

void sub_10006CAE4(void *a1)
{
  [a1 count];
  sub_100006C08();
  sub_100022548(&_mh_execute_header, v1, v2, "Status subscriptions to remove: %lu", v3, v4, v5, v6, v7);
}

void sub_10006CB5C(void *a1)
{
  [a1 count];
  sub_100006C08();
  sub_100022548(&_mh_execute_header, v1, v2, "Status subscriptions to update: %lu", v3, v4, v5, v6, v7);
}

void sub_10006CD5C(id a1)
{
  qword_1000E6B00 = os_log_create("com.apple.remotemanagementd", "storeAssetCache");

  _objc_release_x1();
}

void sub_10006E190(id a1)
{
  qword_1000E6B10 = os_log_create("com.apple.remotemanagementd", "storeAssetResolver");

  _objc_release_x1();
}

void sub_10006E430(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 unlockAfterModifyingKeychain];
  (*(*(a1 + 40) + 16))();
}

void sub_10006EEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006EFBC;
  v14[3] = &unk_1000D2BD8;
  v17 = *(a1 + 88);
  v9 = *(&v13 + 1);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v15 = v13;
  v16 = v12;
  [v13 _processResponseWithAsset:v9 reference:v6 unresolvedAsset:v7 url:v8 response:a2 error:a3 completionHandler:v14];
}

void sub_10006EFBC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6 && (*(a1 + 64) & 1) != 0)
  {
    [*(a1 + 32) _cacheDataAsset:*(a1 + 40) storeIdentifier:*(a1 + 48) resolvedAsset:v6];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_10006F458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006F594;
  v14[3] = &unk_1000D2C28;
  v19 = *(a1 + 104);
  v9 = *(&v13 + 1);
  v10 = *(a1 + 72);
  v18 = *(a1 + 96);
  v11 = *(a1 + 80);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v15 = v13;
  v16 = v12;
  v17 = *(a1 + 88);
  [v13 _processResponseWithAsset:v9 reference:v6 unresolvedAsset:v7 url:v8 response:a2 error:a3 completionHandler:v14];
}

void sub_10006F594(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && (*(a1 + 80) & 1) != 0)
  {
    [*(a1 + 32) _cacheFileAsset:*(a1 + 40) storeIdentifier:*(a1 + 48) resolvedAsset:v5];
  }

  if (*(a1 + 72) != -1)
  {
    [RMSandbox releaseToken:?];
    v7 = +[RMLog storeAssetResolver];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000726CC(a1);
    }
  }

  (*(*(a1 + 64) + 16))();
}

void sub_10006FFFC(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 72);
    v5 = *(*(a1 + 72) + 16);

    v5();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = [a2 assetData];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 80);
    v14 = 0;
    v11 = [v6 _storeAssetData:v7 asset:v8 assetKey:v9 enrollmentType:v10 error:&v14];
    v12 = v14;

    if (v11)
    {
      [*(a1 + 32) _assignKeychainItemForAsset:*(a1 + 40) unresolvedAsset:*(a1 + 56) assetKey:*(a1 + 48) configurationKey:*(a1 + 64) completionHandler:*(a1 + 72)];
    }

    else
    {
      v13 = +[RMLog storeAssetResolver];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100072AA0();
      }

      (*(*(a1 + 72) + 16))();
    }
  }
}

void sub_1000715A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [NSURLQueryItem queryItemWithName:a2 value:a3];
  [v3 addObject:v4];
}

void sub_10007234C()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100072388()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000724D4(void *a1)
{
  [a1 resolveAs];
  sub_100006C08();
  sub_100019888();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100072554()
{
  sub_100006C08();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000725C4()
{
  v5 = *__error();
  sub_100019888();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10007265C()
{
  sub_100006C08();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000726CC(uint64_t a1)
{
  v6 = *(a1 + 56);
  sub_100019828();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100072744()
{
  sub_100006C3C();
  v1 = [v0 assetIdentifier];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000727D8()
{
  sub_100006C3C();
  v1 = [v0 assetIdentifier];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10007286C()
{
  sub_100006C3C();
  v1 = [v0 assetIdentifier];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100072900()
{
  sub_100006C3C();
  v1 = [v0 declarationIdentifier];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100072994()
{
  sub_100006C3C();
  v1 = [v0 declarationIdentifier];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100072A28()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100072A64()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100072B08(void *a1)
{
  v1 = [a1 declarationType];
  sub_100006C08();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100072CCC(void *a1)
{
  v1 = [a1 payloadContentType];
  sub_100006C08();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100072E28(void *a1)
{
  v1 = [a1 declarationType];
  sub_100006C08();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100072EB4()
{
  sub_100006C3C();
  v1 = [v0 absoluteString];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100072F48()
{
  sub_100006C3C();
  v1 = [v0 absoluteString];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100072FDC()
{
  sub_100006C3C();
  v1 = [v0 absoluteString];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100073070(void *a1)
{
  v1 = [a1 assetIdentifier];
  sub_100006C08();
  sub_100022548(&_mh_execute_header, v2, v3, "Received valid asset data for %{public}@", v4, v5, v6, v7, v8);
}

void sub_1000730F4(void *a1)
{
  v1 = [a1 absoluteString];
  sub_100006C08();
  sub_100022548(&_mh_execute_header, v2, v3, "%{public}@ resolution did finish with response", v4, v5, v6, v7, v8);
}

void sub_100073178()
{
  sub_100006C3C();
  v1 = [v0 absoluteString];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10007320C()
{
  sub_100006C08();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10007327C()
{
  sub_100006C08();
  WORD2(v3) = 2048;
  HIWORD(v3) = v0;
  sub_100019834(&_mh_execute_header, v0, v1, "Could not resolve asset because of size mismatch expected %lu got %lu", v2, v3);
}

void sub_100073484(id a1)
{
  qword_1000E6B20 = os_log_create("com.apple.remotemanagementd", "storeClient");

  _objc_release_x1();
}

void sub_1000737A4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[RMLog storeClient];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_100073D08();
    }
  }
}

void sub_100073A08(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[RMLog storeClient];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100073D7C();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100073FA4(id a1)
{
  qword_1000E6B30 = os_log_create("com.apple.remotemanagementd", "storeController");

  _objc_release_x1();
}

void sub_10007402C(id a1)
{
  v1 = +[RMPersistentController sharedController];
  v5 = [v1 persistentContainer];

  v2 = [v5 newBackgroundContext];
  [v2 setAutomaticallyMergesChangesFromParent:1];
  [v2 setTransactionAuthor:@"StoreController"];
  v3 = [[RMStoreController alloc] initWithPersistentContainer:v5 context:v2];
  v4 = qword_1000E6B40;
  qword_1000E6B40 = v3;
}

void sub_10007425C(uint64_t a1)
{
  v1 = [*(a1 + 32) sharedController];
  [v1 _start];
}

void sub_1000744B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000744D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000744E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v32 = 0;
  v3 = [v2 _allManagementSourcesReturningError:&v32];
  v4 = v32;
  v5 = v32;
  v6 = v5;
  if (v3)
  {
    v25 = v5;
    v26 = v3;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v3;
    v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          v12 = [v11 identifier];
          v13 = [v11 personaIdentifier];
          v14 = v13;
          v15 = &stru_1000D3680;
          if (v13)
          {
            v15 = v13;
          }

          v16 = v15;

          v17 = [v11 bootstrapURI];
          v18 = [v17 scheme];
          v19 = [v18 isEqualToString:@"rmstore"];

          if (v19)
          {
            v20 = [v11 objectID];
            [*(a1 + 40) setObject:v20 forKeyedSubscript:v12];
          }

          v21 = [*(a1 + 48) objectForKeyedSubscript:v16];

          if (!v21)
          {
            v22 = objc_opt_new();
            [*(a1 + 48) setObject:v22 forKeyedSubscript:v16];
          }

          v23 = [*(a1 + 48) objectForKeyedSubscript:v16];
          [v23 addObject:v12];
        }

        v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v8);
    }

    v6 = v25;
    v3 = v26;
  }

  else
  {
    v24 = +[RMLog storeController];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_100019970();
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v4);
  }
}

void sub_1000747A4(id a1, NSString *a2, NSSet *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  if ([(NSString *)v5 isEqualToString:&stru_1000D3680])
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  v9 = +[RMBundle managementScope];
  v13 = 0;
  v10 = [RMManagedKeychainController removeAssetsNotMatchingStoreIdentifiers:v6 scope:v9 personaID:v8 error:&v13];

  v11 = v13;
  if ((v10 & 1) == 0)
  {
    v12 = +[RMLog storeController];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10008071C(v8, v9, v12);
    }
  }
}

void sub_100074D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100074D68(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 _observerStoreWithIdentifier:v3 error:&v9];
  v5 = v9;
  v6 = v9;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  if (!*(*(a1[6] + 8) + 40))
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v5);
  }
}

void sub_100074FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100074FE0(void *a1)
{
  v2 = a1[4];
  v21 = 0;
  v3 = [v2 _allManagementSourcesReturningError:&v21];
  v4 = v21;
  v5 = v21;
  if (v3)
  {
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(a1[6] + 8) + 40);
          v15 = [RMObserverStore storeFromManagementSource:*(*(&v17 + 1) + 8 * v13), v17];
          [v14 addObject:v15];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v16 = +[RMLog storeController];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_100019970();
    }

    objc_storeStrong((*(a1[5] + 8) + 40), v4);
  }
}

void sub_100075474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_1000754A0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v10 = 0;
  v5 = [v2 _declarationsForStoreIdentifier:v3 declarationTypes:0 identifier:v4 error:&v10];
  v6 = v10;
  v7 = v10;
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  if (!*(*(a1[7] + 8) + 40))
  {
    objc_storeStrong((*(a1[8] + 8) + 40), v6);
  }
}

void sub_100075764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100075790(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 _declarationsForStoreIdentifier:v3 declarationTypes:0 identifier:0 error:&v9];
  v5 = v9;
  v6 = v9;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  if (!*(*(a1[6] + 8) + 40))
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v5);
  }
}

void sub_100075A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_100075AB0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v10 = 0;
  v5 = [v2 _declarationsForStoreIdentifier:v3 declarationTypes:v4 identifier:0 error:&v10];
  v6 = v10;
  v7 = v10;
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  if (!*(*(a1[7] + 8) + 40))
  {
    objc_storeStrong((*(a1[8] + 8) + 40), v6);
  }
}

void sub_100075D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100075DC4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 _declarationsForStoreIdentifier:v3 declarationTypes:0 identifier:0 error:&v9];
  v5 = v9;
  v6 = v9;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  if (!*(*(a1[6] + 8) + 40))
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v5);
  }
}

void sub_100076090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1000760BC(void *a1)
{
  v2 = +[RMConfigurationPayload fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %d) && (%K == YES)", @"managementSource.identifier", a1[4], @"loadState", 1, @"state.active"];
  [v2 setPredicate:v3];

  v39 = 0;
  v4 = [v2 execute:&v39];
  v5 = v39;
  if (v4)
  {
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v30 = v5;
      v31 = v4;
      v32 = v2;
      v33 = a1;
      v12 = *v36;
      do
      {
        v13 = 0;
        v34 = v11;
        do
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v35 + 1) + 8 * v13);
          v15 = [v14 ui];
          if ([v15 visible])
          {
            v16 = v9;
            v17 = [v15 configurationUI];
            if (!v17)
            {
              v18 = [v14 declarationType];
              v40[0] = @"Identifier";
              v19 = [v14 identifier];
              v40[1] = v19;
              v20 = [NSArray arrayWithObjects:v40 count:2];
              v41 = v20;
              v21 = [NSArray arrayWithObjects:&v41 count:1];
              v17 = [RMConfigurationUIDetails configurationUIWithTitle:v18 description:0 details:v21 hiddenDetails:0];
            }

            v22 = *(*(v33[6] + 8) + 40);
            v23 = [v14 identifier];
            v24 = [v14 serverToken];
            v25 = [v14 declarationType];
            v26 = [RMConfigurationUIItem configurationUIItemWithIdentifier:v23 serverToken:v24 type:v25 details:v17];
            [v22 addObject:v26];

            v9 = v16;
            v11 = v34;
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v11);
      v4 = v31;
      v2 = v32;
      v5 = v30;
    }
  }

  else
  {
    v27 = +[RMLog storeController];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      sub_100080794();
    }

    v28 = +[RMErrorUtilities createInternalError];
    v29 = *(a1[5] + 8);
    v9 = *(v29 + 40);
    *(v29 + 40) = v28;
  }
}

void sub_1000767F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_100076830(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v10 = 0;
  v5 = [v2 _activeConfigurationsOnlyForConfigurationTypes:v3 storeIdentifier:v4 error:&v10];
  v6 = v10;
  v7 = v10;
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  if (!*(*(a1[7] + 8) + 40))
  {
    objc_storeStrong((*(a1[8] + 8) + 40), v6);
  }
}

void sub_100076C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_100076CAC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v10 = 0;
  v4 = [v2 _managementSourceWithIdentifier:v3 error:&v10];
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = [v4 conduitConfig];
    objc_opt_class();
    *(*(a1[7] + 8) + 24) = objc_opt_isKindOfClass() & 1;
  }

  else
  {
    v8 = *(a1[6] + 8);
    v9 = v5;
    v7 = *(v8 + 40);
    *(v8 + 40) = v9;
  }
}

void sub_100076D64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[RMLog storeController];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000807FC(a1);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100080874(a1);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000771DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10007721C(uint64_t a1)
{
  if ([RMStoreHelper isSingletonStoreType:*(a1 + 88)])
  {
    v31 = 0;
    if (![RMStoreHelper hasExistingSingletonTypeInContext:*(a1 + 32) hasExisting:&v31 error:0])
    {
      v3 = +[RMErrorUtilities createInternalError];
LABEL_16:
      v28 = *(*(a1 + 56) + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = v3;

      return;
    }

    if (v31 == 1)
    {
      v2 = +[RMLog storeController];
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_100080988();
      }

      v3 = +[RMErrorUtilities createTooManyDeviceManagementSourcesError];
      goto LABEL_16;
    }
  }

  v4 = [[RMManagementSource alloc] initWithContext:*(a1 + 32)];
  v5 = [RMStoreHelper descriptorForStoreType:*(a1 + 88)];
  v6 = objc_opt_new();
  v7 = [v6 UUIDString];
  v8 = [NSString stringWithFormat:@"%@://%@/%@", @"rmstore", v5, v7];
  v9 = [NSURL URLWithString:v8];
  [(RMManagementSource *)v4 setBootstrapURI:v9];

  [(RMManagementSource *)v4 setEnrollmentType:*(a1 + 88)];
  [(RMManagementSource *)v4 setEnrolled:1];
  if (*(a1 + 40))
  {
    [*(a1 + 48) _addOptionsToManagementSource:v4 options:?];
  }

  v10 = +[RMCapabilities capabilitiesForEnrollmentType:scope:protocolType:](RMCapabilities, "capabilitiesForEnrollmentType:scope:protocolType:", *(a1 + 88), +[RMBundle managementScope], 2);
  v11 = [v10 versionHash];
  [(RMManagementSource *)v4 setCapabilitiesVersionHash:v11];

  v12 = *(a1 + 32);
  v30 = 0;
  v13 = [v12 save:&v30];
  v14 = v30;
  if (v13)
  {
    v15 = [RMProviderStore storeFromManagementSource:v4];
    v16 = *(*(a1 + 64) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v18 = [(RMManagementSource *)v4 identifier];
    v19 = *(*(a1 + 72) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v21 = [(RMManagementSource *)v4 objectID];
    v22 = *(*(a1 + 80) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;
  }

  else
  {
    v24 = +[RMLog storeController];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_100080920();
    }

    v25 = +[RMErrorUtilities createInternalError];
    v26 = *(*(a1 + 56) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    [*(a1 + 32) rollback];
  }
}

void sub_10007776C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007778C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v17 = 0;
  v4 = [v2 _managementSourceWithIdentifier:v3 error:&v17];
  v5 = v17;
  v6 = v5;
  if (v4)
  {
    [*(a1 + 48) deleteObject:v4];
    v7 = *(a1 + 48);
    v16 = 0;
    v8 = [v7 save:&v16];
    v9 = v16;
    if ((v8 & 1) == 0)
    {
      v10 = +[RMLog storeController];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_1000809C8();
      }

      v11 = +[RMErrorUtilities createInternalError];
      v12 = *(*(a1 + 56) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      [*(a1 + 48) rollback];
    }
  }

  else
  {
    v14 = *(*(a1 + 56) + 8);
    v15 = v5;
    v9 = *(v14 + 40);
    *(v14 + 40) = v15;
  }
}

void sub_100077AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100077AFC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 _providerStoreWithIdentifier:v3 error:&v9];
  v5 = v9;
  v6 = v9;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  if (!*(*(a1[6] + 8) + 40))
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v5);
  }
}

void sub_100077D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100077D74(void *a1)
{
  v2 = a1[4];
  v21 = 0;
  v3 = [v2 _allManagementSourcesReturningError:&v21];
  v4 = v21;
  v5 = v21;
  if (v3)
  {
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(a1[6] + 8) + 40);
          v15 = [RMProviderStore storeFromManagementSource:*(*(&v17 + 1) + 8 * v13), v17];
          [v14 addObject:v15];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v16 = +[RMLog storeController];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_100019970();
    }

    objc_storeStrong((*(a1[5] + 8) + 40), v4);
  }
}

void sub_100078154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100078174(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v59 = 0;
  v4 = [v2 _managementSourceWithIdentifier:v3 error:&v59];
  v5 = v59;
  v6 = v5;
  if (v4)
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 48) declarationIdentifier];
    v58 = v6;
    v9 = [v7 _payloadsForDeclarationIdentifier:v8 managementSource:v4 error:&v58];
    v10 = v58;

    if (v9)
    {
      v46 = v9;
      v47 = v4;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v54 objects:v63 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v55;
LABEL_5:
        v15 = 0;
        while (1)
        {
          if (*v55 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v54 + 1) + 8 * v15);
          v17 = [v16 serverToken];
          v18 = [*(a1 + 48) declarationServerToken];
          v19 = [v17 isEqualToString:v18];

          if (v19)
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [v11 countByEnumeratingWithState:&v54 objects:v63 count:16];
            if (v13)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v22 = [v16 loadState];
        v23 = +[RMLog storeController];
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (v22 == 3)
        {
          if (v24)
          {
            v25 = [*(a1 + 48) declarationIdentifier];
            *buf = 138543362;
            v62 = v25;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Restoring deleted declaration: %{public}@", buf, 0xCu);
          }

          v20 = v16;
          goto LABEL_17;
        }

        v9 = v46;
        if (v24)
        {
          v35 = [*(a1 + 48) declarationIdentifier];
          *buf = 138543362;
          v62 = v35;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Ignoring duplicate declaration: %{public}@", buf, 0xCu);
        }

        v33 = 0;
        v4 = v47;
        goto LABEL_40;
      }

LABEL_11:
      v20 = 0;
LABEL_17:

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v26 = v11;
      v27 = [v26 countByEnumeratingWithState:&v50 objects:v60 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v51;
        do
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v51 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v50 + 1) + 8 * i);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              [*(a1 + 56) deleteObject:v31];
            }

            else
            {
              [v31 setLoadState:3];
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v50 objects:v60 count:16];
        }

        while (v28);
      }

      v33 = v20;
      if (v20)
      {
        [v20 setLoadState:1];
        v9 = v46;
        v4 = v47;
        goto LABEL_35;
      }

      v36 = *(a1 + 32);
      v37 = *(a1 + 48);
      v49 = v10;
      v4 = v47;
      v38 = [v36 _newPayloadWithDeclaration:v37 managementSource:v47 error:&v49];
      v39 = v49;
      v40 = v49;

      v9 = v46;
      if (v38)
      {

        v10 = v40;
LABEL_35:
        v41 = v10;
        v42 = *(a1 + 56);
        v48 = v10;
        v43 = [v42 save:{&v48, v46}];
        v44 = v48;
        v10 = v48;

        if ((v43 & 1) == 0)
        {
          v45 = +[RMLog storeController];
          if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
          {
            sub_100080A30();
          }

          objc_storeStrong((*(*(a1 + 64) + 8) + 40), v44);
          [*(a1 + 56) rollback];
        }

        goto LABEL_40;
      }

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v39);
      v33 = 0;
      v10 = v40;
    }

    else
    {
      v34 = *(*(a1 + 64) + 8);
      v10 = v10;
      v33 = *(v34 + 40);
      *(v34 + 40) = v10;
    }

LABEL_40:

    goto LABEL_41;
  }

  v21 = *(*(a1 + 64) + 8);
  v10 = v5;
  v9 = *(v21 + 40);
  *(v21 + 40) = v10;
LABEL_41:
}

void sub_100078824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100078844(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v37 = 0;
  v4 = [v2 _managementSourceWithIdentifier:v3 error:&v37];
  v5 = v37;
  v6 = v5;
  if (!v4)
  {
    v24 = *(*(a1 + 64) + 8);
    v11 = v5;
    v9 = *(v24 + 40);
    *(v24 + 40) = v11;
    goto LABEL_30;
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v36 = v6;
  v9 = [v8 _payloadsForDeclarationIdentifier:v7 managementSource:v4 error:&v36];
  v10 = v36;
  v11 = v36;

  if (!v9)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v10);
    goto LABEL_30;
  }

  if (![v9 count])
  {
    v25 = +[RMLog storeController];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_100080B68((a1 + 48));
    }

    goto LABEL_29;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = v9;
  v12 = [v9 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (!v12)
  {

LABEL_27:
    v25 = +[RMLog storeController];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_100080B00((a1 + 48));
    }

LABEL_29:

    v26 = [RMErrorUtilities createDeclarationNotFoundErrorWithIdentifier:*(a1 + 48)];
    v27 = *(*(a1 + 64) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    goto LABEL_30;
  }

  v13 = v12;
  v29 = v11;
  v30 = v4;
  v14 = 0;
  v15 = *v33;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v33 != v15)
      {
        objc_enumerationMutation(v9);
      }

      v17 = *(*(&v32 + 1) + 8 * i);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [*(a1 + 56) deleteObject:v17];
      }

      else
      {
        if ([v17 loadState] == 3)
        {
          continue;
        }

        [v17 setLoadState:3];
      }

      v14 = 1;
    }

    v13 = [v9 countByEnumeratingWithState:&v32 objects:v38 count:16];
  }

  while (v13);

  v11 = v29;
  v4 = v30;
  if ((v14 & 1) == 0)
  {
    goto LABEL_27;
  }

  v19 = *(a1 + 56);
  v31 = v29;
  v20 = [v19 save:&v31];
  v21 = v31;
  v22 = v31;

  if ((v20 & 1) == 0)
  {
    v23 = +[RMLog storeController];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_100080A98();
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v21);
    [*(a1 + 56) rollback];
  }

  v11 = v22;
LABEL_30:
}

void sub_100078F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100078F68(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v15 = 0;
  v4 = [v2 _managementSourceWithIdentifier:v3 error:&v15];
  v5 = v15;
  v6 = v15;
  if (v4)
  {
    v7 = [RMMDMHelper enrollmentURLForProfileIdentifier:*(a1 + 48)];
    v8 = [NSURL URLWithString:v7];
    [v4 setBootstrapURI:v8];

    [v4 setAccountIdentifier:*(a1 + 56)];
    v9 = *(a1 + 64);
    v14 = v6;
    v10 = [v9 save:&v14];
    v11 = v14;
    v12 = v14;

    if ((v10 & 1) == 0)
    {
      v13 = +[RMLog storeController];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_100080BD0();
      }

      objc_storeStrong((*(*(a1 + 72) + 8) + 40), v11);
      [*(a1 + 64) rollback];
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v5);
    v12 = v6;
  }
}

void sub_1000794B8(uint64_t a1)
{
  v2 = objc_opt_new();
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1000744D0;
  v34 = sub_1000744E0;
  v35 = 0;
  v3 = +[NSNotificationCenter defaultCenter];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100079844;
  v24[3] = &unk_1000D2EF0;
  v4 = *(a1 + 40);
  v24[4] = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 48);
  v29 = *(a1 + 72);
  v26 = v5;
  v28 = &v30;
  v6 = v2;
  v27 = v6;
  v7 = [v3 addObserverForName:@"RMDeclarationStatusDidChangeNotification" object:0 queue:0 usingBlock:v24];

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 72);
  v11 = *(a1 + 48);
  v23 = 0;
  v12 = [v8 _checkActiveDeclarations:v9 mustBeValid:v10 storeIdentifier:v11 error:&v23];
  v13 = v23;
  if ((v12 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v14 = [v6 waitForCompletionWithTimeout:*(a1 + 64)];
    if (v14)
    {
      v15 = +[RMLog storeController];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_100080CE0((a1 + 48));
      }
    }

    else
    {
      v15 = +[RMLog storeController];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100080C78((a1 + 48));
      }
    }

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 removeObserver:v7];

    v20 = *(*(a1 + 32) + 8);
    objc_sync_enter(v20);
    [*(a1 + 32) setWaitingForDeclarationStatusChanges:0];
    objc_sync_exit(v20);

    v21 = *(a1 + 56);
    if (v14)
    {
      v22 = v31[5];
    }

    else
    {
      v22 = +[RMErrorUtilities createTimeoutError];
    }

    (*(v21 + 16))(v21, v22);
    if ((v14 & 1) == 0)
    {
    }
  }

  else
  {
    v16 = +[RMLog storeController];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100080D48((a1 + 48));
    }

    [v6 complete];
    v17 = +[NSNotificationCenter defaultCenter];
    [v17 removeObserver:v7];

    v18 = *(*(a1 + 32) + 8);
    objc_sync_enter(v18);
    [*(a1 + 32) setWaitingForDeclarationStatusChanges:0];
    objc_sync_exit(v18);

    (*(*(a1 + 56) + 16))();
  }

  _Block_object_dispose(&v30, 8);
}

void sub_1000797FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100079844(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  v6 = *(*(a1 + 64) + 8);
  obj = *(v6 + 40);
  v7 = [v2 _checkActiveDeclarations:v3 mustBeValid:v5 storeIdentifier:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = +[RMLog storeController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100080DB0(v7);
  }

  if ((v7 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    [*(a1 + 56) complete];
  }
}

void sub_10007A150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10007A17C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 _subscriberStoreWithIdentifier:v3 error:&v9];
  v5 = v9;
  v6 = v9;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  if (!*(*(a1[6] + 8) + 40))
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v5);
  }
}

void sub_10007A3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10007A3F4(void *a1)
{
  v2 = a1[4];
  v21 = 0;
  v3 = [v2 _allManagementSourcesReturningError:&v21];
  v4 = v21;
  v5 = v21;
  if (v3)
  {
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(a1[6] + 8) + 40);
          v15 = [RMSubscriberStore storeFromManagementSource:*(*(&v17 + 1) + 8 * v13), v17];
          [v14 addObject:v15];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v16 = +[RMLog storeController];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_100019970();
    }

    objc_storeStrong((*(a1[5] + 8) + 40), v4);
  }
}

void sub_10007A814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_10007A844(void *a1)
{
  v2 = a1[4];
  v33 = 0;
  v3 = [v2 _allManagementSourcesReturningError:&v33];
  v4 = v33;
  v5 = v33;
  if (v3)
  {
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
    v7 = *(a1[7] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
    v10 = *(a1[8] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = v3;
    obj = v3;
    v12 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      while (2)
      {
        v15 = 0;
        v16 = v5;
        do
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = [RMSubscriberStore storeFromManagementSource:*(*(&v29 + 1) + 8 * v15)];
          v18 = a1[4];
          v19 = a1[5];
          v20 = [v17 identifier];
          v28 = v16;
          v21 = [v18 _activeConfigurationsAndAssetsForConfigurationTypes:v19 storeIdentifier:v20 error:&v28];
          v22 = v28;
          v5 = v28;

          if (!v21)
          {
            objc_storeStrong((*(a1[6] + 8) + 40), v22);

            goto LABEL_12;
          }

          [*(*(a1[7] + 8) + 40) addObject:v17];
          v23 = *(*(a1[8] + 8) + 40);
          v24 = [v17 identifier];
          [v23 setObject:v21 forKeyedSubscript:v24];

          v15 = v15 + 1;
          v16 = v5;
        }

        while (v13 != v15);
        v13 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v3 = v26;
  }

  else
  {
    v25 = +[RMLog storeController];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_100019970();
    }

    objc_storeStrong((*(a1[6] + 8) + 40), v4);
  }
}

void sub_10007AD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_10007AD7C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v10 = 0;
  v5 = [v2 _activeConfigurationsAndAssetsForConfigurationTypes:v3 storeIdentifier:v4 error:&v10];
  v6 = v10;
  v7 = v10;
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;

  if (!*(*(a1[7] + 8) + 40))
  {
    objc_storeStrong((*(a1[8] + 8) + 40), v6);
  }
}

void sub_10007B058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_10007B088(void *a1)
{
  v2 = a1[4];
  v33 = 0;
  v3 = [v2 _allManagementSourcesReturningError:&v33];
  v4 = v33;
  v5 = v33;
  if (v3)
  {
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
    v7 = *(a1[7] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
    v10 = *(a1[8] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = v3;
    v12 = v3;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      while (2)
      {
        v16 = 0;
        v17 = v5;
        do
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v29 + 1) + 8 * v16);
          v19 = [RMSubscriberStore storeFromManagementSource:v18, v27];
          v20 = a1[4];
          v21 = a1[5];
          v28 = v17;
          v22 = [v20 _configurationsWithVisibleUIForConfigurationTypes:v21 managementSource:v18 error:&v28];
          v23 = v28;
          v5 = v28;

          if (!v22)
          {
            objc_storeStrong((*(a1[6] + 8) + 40), v23);

            goto LABEL_12;
          }

          [*(*(a1[7] + 8) + 40) addObject:v19];
          v24 = *(*(a1[8] + 8) + 40);
          v25 = [v19 identifier];
          [v24 setObject:v22 forKeyedSubscript:v25];

          v16 = v16 + 1;
          v17 = v5;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v3 = v27;
  }

  else
  {
    v26 = +[RMLog storeController];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_100019970();
    }

    objc_storeStrong((*(a1[6] + 8) + 40), v4);
  }
}

void sub_10007B6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 208), 8);
  _Block_object_dispose((v37 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10007B6FC(uint64_t a1)
{
  v2 = (a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) assetIdentifier];
  v31 = 0;
  v6 = [v3 _declarationsForStoreIdentifier:v4 declarationTypes:0 identifier:v5 error:&v31];
  v7 = v31;

  if (v6)
  {
    if ([v6 count] == 1)
    {
      v8 = [v6 objectAtIndexedSubscript:0];
      v9 = *(*(a1 + 64) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = *(*(*(a1 + 64) + 8) + 40);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        v30 = v7;
        v14 = [v12 _managementSourceWithIdentifier:v13 error:&v30];
        v15 = v30;
        v16 = v30;

        if (v14)
        {
          v17 = [v14 personaIdentifier];
          v18 = *(*(a1 + 72) + 8);
          v19 = *(v18 + 40);
          *(v18 + 40) = v17;

          v20 = [v14 conduitConfig];
          objc_opt_class();
          *(*(*(a1 + 80) + 8) + 24) = objc_opt_isKindOfClass() & 1;

          *(*(*(a1 + 88) + 8) + 24) = [v14 enrollmentType];
        }

        else
        {
          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v15);
        }

        v7 = v16;
      }

      else
      {
        v27 = +[RMLog storeController];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_100081078(v2);
        }

        v28 = [RMErrorUtilities createAssetInvalidError:@"Identifier does not reference an asset"];
        v29 = *(*(a1 + 56) + 8);
        v14 = *(v29 + 40);
        *(v29 + 40) = v28;
      }
    }

    else
    {
      v23 = +[RMLog storeController];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100080FE0();
      }

      v14 = [*(a1 + 48) assetIdentifier];
      v24 = [RMErrorUtilities createDeclarationNotFoundErrorWithIdentifier:v14];
      v25 = *(*(a1 + 56) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;
    }
  }

  else
  {
    v21 = +[RMLog storeController];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100080FE0();
    }

    v22 = *(*(a1 + 56) + 8);
    v7 = v7;
    v14 = *(v22 + 40);
    *(v22 + 40) = v7;
  }
}

void sub_10007B9D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[RMLog storeController];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100081108();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008119C(a1);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10007BC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007BC6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) storeIdentifier];
  v9 = 0;
  v4 = [v2 _managementSourceWithIdentifier:v3 error:&v9];
  v5 = v9;

  if (v4)
  {
    v6 = [v4 personaIdentifier];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_10007BD0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog storeController];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100081220();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1000812B4(a1);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10007C04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_10007C078(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v37 = 0;
  v4 = [v2 _managementSourceWithIdentifier:v3 error:&v37];
  v5 = v37;
  v6 = v5;
  if (v4)
  {
    v7 = +[RMConfigurationPayload fetchRequest];
    v8 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %@) && (%K == %@)", @"managementSource", v4, @"identifier", *(a1 + 48), @"serverToken", *(a1 + 56)];
    [v7 setPredicate:v8];

    v36 = v6;
    v9 = [v7 execute:&v36];
    v10 = v36;

    if (v9)
    {
      if ([v9 count])
      {
        v11 = [v9 firstObject];
        v12 = [v11 ui];
        v34 = v12;
        if (!v12)
        {
          v27 = +[RMLog storeController];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            sub_100081408((a1 + 48));
          }

          goto LABEL_28;
        }

        v13 = v12;
        if (*(a1 + 96) != [v12 visible])
        {
          goto LABEL_26;
        }

        v14 = [v13 configurationUI];
        v15 = *(a1 + 64);
        v16 = v14;
        v17 = v15;
        v18 = v17;
        if (v16 == v17)
        {

          v19 = v34;
        }

        else
        {
          if (!v16 || !v17)
          {

            goto LABEL_26;
          }

          v33 = [v16 isEqual:v17];

          v19 = v34;
          if ((v33 & 1) == 0)
          {
LABEL_26:
            v27 = +[RMLog storeController];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              sub_100081338((a1 + 48));
            }

LABEL_28:

            *(*(*(a1 + 88) + 8) + 24) = 1;
            v28 = [[RMConfigurationPayloadUI alloc] initWithContext:*(a1 + 72)];
            [(RMConfigurationPayloadUI *)v28 setVisible:*(a1 + 96)];
            [(RMConfigurationPayloadUI *)v28 setConfigurationUI:*(a1 + 64)];
            [(RMConfigurationPayloadUI *)v28 setConfiguration:v11];
            v29 = *(a1 + 72);
            v35 = v10;
            v30 = [v29 save:&v35];
            v31 = v35;
            v21 = v35;

            if ((v30 & 1) == 0)
            {
              v32 = +[RMLog storeController];
              if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
              {
                sub_100081470();
              }

              objc_storeStrong((*(*(a1 + 80) + 8) + 40), v31);
              [*(a1 + 72) rollback];
            }

            v19 = v34;
LABEL_33:

            goto LABEL_34;
          }
        }

        v28 = +[RMLog storeController];
        if (os_log_type_enabled(&v28->super.super, OS_LOG_TYPE_DEBUG))
        {
          sub_1000813A0((a1 + 48));
        }

        v21 = v10;
        goto LABEL_33;
      }

      v25 = +[RMErrorUtilities createInternalError];

      v26 = +[RMLog storeController];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1000814D8();
      }

      v23 = *(*(a1 + 80) + 8);
      v24 = v25;
    }

    else
    {
      v22 = +[RMLog storeController];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100081540();
      }

      v23 = *(*(a1 + 80) + 8);
      v24 = v10;
    }

    v21 = v24;
    v11 = *(v23 + 40);
    *(v23 + 40) = v24;
LABEL_34:

    goto LABEL_35;
  }

  v20 = *(*(a1 + 80) + 8);
  v21 = v5;
  v7 = *(v20 + 40);
  *(v20 + 40) = v21;
LABEL_35:
}

void sub_10007C6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_10007C6E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) storeIdentifier];
  v11 = 0;
  v4 = [v2 _managementSourceWithIdentifier:v3 error:&v11];
  v5 = v11;

  if (v4)
  {
    v6 = [v4 personaIdentifier];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = *(*(a1 + 48) + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }
}

void sub_10007C954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007C970(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) storeIdentifier];
  v9 = 0;
  v4 = [v2 _managementSourceWithIdentifier:v3 error:&v9];
  v5 = v9;

  if (v4)
  {
    v6 = [v4 personaIdentifier];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_10007CC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10007CC58(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v12 = 0;
  v4 = [v2 _managementSourceWithIdentifier:v3 error:&v12];
  v5 = v12;
  v6 = v5;
  if (v4)
  {
    v7 = [v4 personaIdentifier];
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = *(a1[6] + 8);
    v11 = v5;
    v9 = *(v10 + 40);
    *(v10 + 40) = v11;
  }
}

void sub_10007D24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_10007D2B0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v12 = 0;
  v4 = [v2 _managementSourceWithIdentifier:v3 error:&v12];
  v5 = v12;
  v6 = v5;
  if (v4)
  {
    v7 = [v4 personaIdentifier];
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = *(a1[6] + 8);
    v11 = v5;
    v9 = *(v10 + 40);
    *(v10 + 40) = v11;
  }
}

void sub_10007D55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_10007D588(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v36 = 0;
  v4 = [v2 _managementSourceWithIdentifier:v3 error:&v36];
  v5 = v36;
  v6 = v5;
  if (v4)
  {
    v7 = [RMManagementSourceMetadata fetchRequestWithManagementSource:v4];
    v35 = 0;
    v8 = [v7 execute:&v35];
    v9 = v35;
    v10 = v35;
    v11 = +[RMLog storeController];
    v12 = v11;
    if (v8)
    {
      v28 = v10;
      v29 = v7;
      v30 = v6;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v8 count];
        *buf = 134217984;
        v39 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MetadataForStoreIdentifier found %lu items", buf, 0xCu);
      }

      v14 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v8 count]);
      v15 = *(a1[7] + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v17 = v8;
      v18 = [v17 countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v32;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v32 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v31 + 1) + 8 * i);
            v23 = [v22 value];
            v24 = *(*(a1[7] + 8) + 40);
            v25 = [v22 key];
            [v24 setObject:v23 forKeyedSubscript:v25];
          }

          v19 = [v17 countByEnumeratingWithState:&v31 objects:v37 count:16];
        }

        while (v19);
      }

      v7 = v29;
      v6 = v30;
      v10 = v28;
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_1000815A8();
      }

      objc_storeStrong((*(a1[6] + 8) + 40), v9);
    }
  }

  else
  {
    v26 = *(a1[6] + 8);
    v27 = v5;
    v10 = *(v26 + 40);
    *(v26 + 40) = v27;
  }
}

void sub_10007DA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_10007DAB4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v24 = 0;
  v4 = [v2 _managementSourceWithIdentifier:v3 error:&v24];
  v5 = v24;
  v6 = v5;
  if (v4)
  {
    v7 = [RMManagementSourceMetadata fetchRequestWithManagementSource:v4 key:a1[6]];
    v23 = 0;
    v8 = [v7 execute:&v23];
    v9 = v23;
    if (v8)
    {
      if ([v8 count] >= 2)
      {
        v10 = +[RMLog storeController];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          sub_100081610();
        }
      }

      v11 = +[RMLog storeController];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = a1[6];
        v13 = [v8 count];
        *buf = 138543618;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MetadataValueForKey with key %{public}@ found %lu items", buf, 0x16u);
      }

      if (![v8 count])
      {
        goto LABEL_16;
      }

      v14 = [v8 objectAtIndexedSubscript:0];
      v15 = [v14 value];
      v16 = *(a1[8] + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    else
    {
      v20 = +[RMLog storeController];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_1000815A8();
      }

      v21 = *(a1[7] + 8);
      v22 = v9;
      v14 = *(v21 + 40);
      *(v21 + 40) = v22;
    }

LABEL_16:
    goto LABEL_17;
  }

  v18 = *(a1[7] + 8);
  v19 = v5;
  v9 = *(v18 + 40);
  *(v18 + 40) = v19;
LABEL_17:
}

void sub_10007DF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007DF3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v42 = 0;
  v4 = [v2 _managementSourceWithIdentifier:v3 error:&v42];
  v5 = v42;
  v6 = v5;
  if (v4)
  {
    v7 = [RMManagementSourceMetadata fetchRequestWithManagementSource:v4 key:*(a1 + 48)];
    v41 = 0;
    v8 = [v7 execute:&v41];
    v9 = v41;
    v10 = v41;
    if (!v8)
    {
      v23 = +[RMLog storeController];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        sub_1000815A8();
      }

      objc_storeStrong((*(*(a1 + 72) + 8) + 40), v9);
      goto LABEL_36;
    }

    if ([v8 count] >= 2)
    {
      v11 = +[RMLog storeController];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_100081610();
      }
    }

    v12 = +[RMLog storeController];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 48);
      v14 = [v8 count];
      *buf = 138543618;
      v45 = v13;
      v46 = 2048;
      v47 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SetMetadataValue with key %{public}@ found %lu existing items", buf, 0x16u);
    }

    v15 = [v8 count];
    v16 = *(a1 + 56);
    v17 = +[RMLog storeController];
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v16)
      {
        if (v18)
        {
          v19 = *(a1 + 48);
          *buf = 138543362;
          v45 = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SetMetadataValue updating item with key %{public}@", buf, 0xCu);
        }

        v20 = *(a1 + 56);
        v21 = [v8 objectAtIndexedSubscript:0];
        [(RMManagementSourceMetadata *)v21 setValue:v20];
      }

      else
      {
        if (v18)
        {
          v25 = *(a1 + 48);
          *buf = 138543362;
          v45 = v25;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SetMetadataValue deleting item with key %{public}@", buf, 0xCu);
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v21 = v8;
        v26 = [(RMManagementSourceMetadata *)v21 countByEnumeratingWithState:&v37 objects:v43 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v38;
          do
          {
            v29 = 0;
            do
            {
              if (*v38 != v28)
              {
                objc_enumerationMutation(v21);
              }

              [*(a1 + 64) deleteObject:*(*(&v37 + 1) + 8 * v29)];
              v29 = v29 + 1;
            }

            while (v27 != v29);
            v27 = [(RMManagementSourceMetadata *)v21 countByEnumeratingWithState:&v37 objects:v43 count:16];
          }

          while (v27);
        }
      }
    }

    else
    {
      if (!v16)
      {
        if (v18)
        {
          v35 = *(a1 + 48);
          *buf = 138543362;
          v45 = v35;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SetMetadataValue ignoring remove of missing item with key %{public}@", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        v24 = *(a1 + 48);
        *buf = 138543362;
        v45 = v24;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SetMetadataValue creating new item with key %{public}@", buf, 0xCu);
      }

      v21 = [[RMManagementSourceMetadata alloc] initWithContext:*(a1 + 64)];
      [(RMManagementSourceMetadata *)v21 setKey:*(a1 + 48)];
      [(RMManagementSourceMetadata *)v21 setValue:*(a1 + 56)];
      [(RMManagementSourceMetadata *)v21 setManagementSource:v4];
    }

    v30 = *(a1 + 64);
    v36 = v6;
    v31 = [v30 save:&v36];
    v32 = v36;
    v33 = v36;

    if ((v31 & 1) == 0)
    {
      v34 = +[RMLog storeController];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        sub_100080A98();
      }

      objc_storeStrong((*(*(a1 + 72) + 8) + 40), v32);
      [*(a1 + 64) rollback];
    }

    v6 = v33;
LABEL_36:

    goto LABEL_37;
  }

  v22 = *(*(a1 + 72) + 8);
  v6 = v5;
  v10 = *(v22 + 40);
  *(v22 + 40) = v6;
LABEL_37:
}

void sub_10008071C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2114;
  *&v3[14] = a1;
  sub_100019834(&_mh_execute_header, a2, a3, "Failed to clean managed keychain for scope %ld and persona %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_1000807FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100019864();
  sub_100019834(&_mh_execute_header, v2, v3, "Cannot fetch data at %{public}@: %{public}@");
}

void sub_100080874(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100019864();
  sub_10000A924(&_mh_execute_header, v2, v3, "Fetched data at %{public}@", v4, v5, v6, v7, v8);
}

void sub_100080B00(uint64_t *a1)
{
  sub_10001987C(a1, __stack_chk_guard);
  sub_100019864();
  sub_100006C20(&_mh_execute_header, v1, v2, "Failed to delete declaration - already deleted: %{public}@", v3, v4, v5, v6, v7);
}

void sub_100080B68(uint64_t *a1)
{
  sub_10001987C(a1, __stack_chk_guard);
  sub_100019864();
  sub_100006C20(&_mh_execute_header, v1, v2, "Failed to delete declaration - does not exist: %{public}@", v3, v4, v5, v6, v7);
}

void sub_100080C78(uint64_t *a1)
{
  sub_10001987C(a1, __stack_chk_guard);
  sub_100019864();
  sub_100006C58(&_mh_execute_header, v1, v2, "WaitForDeclarations timed out with %{public}@...", v3, v4, v5, v6, v7);
}

void sub_100080CE0(uint64_t *a1)
{
  sub_10001987C(a1, __stack_chk_guard);
  sub_100019864();
  sub_10000A924(&_mh_execute_header, v1, v2, "WaitForDeclarations completed after notification with %{public}@...", v3, v4, v5, v6, v7);
}

void sub_100080D48(uint64_t *a1)
{
  sub_10001987C(a1, __stack_chk_guard);
  sub_100019864();
  sub_10000A924(&_mh_execute_header, v1, v2, "WaitForDeclarations completes immediately with %{public}@...", v3, v4, v5, v6, v7);
}

void sub_100080DB0(uint64_t a1)
{
  v1 = [NSNumber numberWithUnsignedInteger:a1];
  sub_100006C08();
  sub_100022548(&_mh_execute_header, v2, v3, "WaitForDeclarations notification result %{public}@...", v4, v5, v6, v7, v8);
}

void sub_100080FE0()
{
  sub_100006C3C();
  v1 = [*v0 assetIdentifier];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100081078(id *a1)
{
  v1 = [*a1 assetIdentifier];
  sub_100006C08();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100081108()
{
  sub_100006C3C();
  v1 = [sub_100026D6C(v0) assetIdentifier];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10008119C(uint64_t a1)
{
  v1 = [sub_100026D6C(a1) assetIdentifier];
  sub_100006C08();
  sub_100022548(&_mh_execute_header, v2, v3, "Resolved asset %{public}@", v4, v5, v6, v7, v8);
}

void sub_100081220()
{
  sub_100006C3C();
  v1 = [sub_100026D6C(v0) declarationIdentifier];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000812B4(uint64_t a1)
{
  v1 = [sub_100026D6C(a1) declarationIdentifier];
  sub_100006C08();
  sub_100022548(&_mh_execute_header, v2, v3, "Unassigned assets %{public}@", v4, v5, v6, v7, v8);
}

void sub_100081338(uint64_t *a1)
{
  sub_10001987C(a1, __stack_chk_guard);
  sub_100019864();
  sub_10000A924(&_mh_execute_header, v1, v2, "Configuration UI changed: %{public}@", v3, v4, v5, v6, v7);
}

void sub_1000813A0(uint64_t *a1)
{
  sub_10001987C(a1, __stack_chk_guard);
  sub_100019864();
  sub_10000A924(&_mh_execute_header, v1, v2, "Configuration UI did not change: %{public}@", v3, v4, v5, v6, v7);
}

void sub_100081408(uint64_t *a1)
{
  sub_10001987C(a1, __stack_chk_guard);
  sub_100019864();
  sub_10000A924(&_mh_execute_header, v1, v2, "Configuration UI added: %{public}@", v3, v4, v5, v6, v7);
}

void sub_100081788(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  sub_100006C08();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100081814()
{
  sub_100006C3C();
  v1 = [v0 identifier];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100081910()
{
  sub_100006C3C();
  v1 = [v0 identifier];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000819A4()
{
  sub_100006C3C();
  v1 = [v0 identifier];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100081A38()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_100006C08();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100081B74(id a1)
{
  qword_1000E6B58 = os_log_create("com.apple.remotemanagementd", "storeDataFetcher");

  _objc_release_x1();
}

void sub_100081FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000820BC;
  v9[3] = &unk_1000D3028;
  v12 = *(a1 + 64);
  v10 = v8;
  v11 = *(a1 + 56);
  [v6 _processDownloadResponseWithURL:v7 downloadURL:v10 response:a2 error:a3 completionHandler:v9];
}

void sub_1000820BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) != -1)
  {
    [RMSandbox releaseToken:?];
    v4 = +[RMLog storeDataFetcher];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_100083F6C(a1, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000824B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
  }

  else if (*(a1 + 64))
  {
    v7 = 0;
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v19 = 0;
    [v8 _moveDownloadedFile:v5 downloadURL:v9 error:&v19];
    v7 = v19;
    v10 = [v5 mutableCopy];
    [v10 setObject:*(a1 + 40) forKeyedSubscript:HTTPResponseKeyDownloadURL];
    v11 = [v10 copy];

    v5 = v11;
  }

  if (*(a1 + 56) != -1)
  {
    [RMSandbox releaseToken:?];
    v12 = +[RMLog storeDataFetcher];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000840B8(a1, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000828D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog storeDataFetcher];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000841BC();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100084250(a1);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100082A80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = [v7 _dictionaryForResponse:a3 downloadedData:a2 downloadedURL:0];
  (*(*(a1 + 40) + 16))();
}

void sub_100082FE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog storeDataFetcher];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100084524();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000845B8(a1);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100083194(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = [v7 _dictionaryForResponse:a3 downloadedData:0 downloadedURL:a2];
  (*(*(a1 + 40) + 16))();
}

void sub_100083AE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = [v5 objectForInfoDictionaryKey:_kCFBundleShortVersionStringKey];
  v3 = [NSString stringWithFormat:@"%@/%@", @"RemoteManagementDaemon", v2];
  v4 = qword_1000E6B68;
  qword_1000E6B68 = v3;
}

void sub_100083EE4()
{
  v0 = *__error();
  sub_100083D5C();
  sub_100019888();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_100084128()
{
  sub_100006C3C();
  v1 = [v0 absoluteString];
  sub_100006BB4();
  sub_10003BB58();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000841BC()
{
  sub_100006C3C();
  v1 = [sub_100026D6C(v0) absoluteString];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100084250(uint64_t a1)
{
  v1 = [sub_100026D6C(a1) absoluteString];
  sub_100006C08();
  sub_10003BB58();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000842DC()
{
  sub_100006C3C();
  v1 = [v0 absoluteString];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100084370()
{
  sub_100006C3C();
  v1 = [v0 absoluteString];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100084404(void *a1)
{
  v1 = [a1 absoluteString];
  sub_100006C08();
  sub_10003BB58();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100084490()
{
  sub_100006C3C();
  v1 = [v0 absoluteString];
  sub_100006BB4();
  sub_10003BB58();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100084524()
{
  sub_100006C3C();
  v1 = [sub_100026D6C(v0) absoluteString];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000845B8(uint64_t a1)
{
  v1 = [sub_100026D6C(a1) absoluteString];
  sub_100006C08();
  sub_10003BB58();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100084644()
{
  sub_100006C3C();
  v1 = [v0 path];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000846D8(void *a1)
{
  v1 = [a1 path];
  sub_100006C08();
  sub_10003BB58();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100084764()
{
  sub_100006C3C();
  v2 = [v1 path];
  v3 = [v0 path];
  sub_100083D74();
  sub_10003BB58();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10008480C()
{
  sub_100006C3C();
  v1 = [v0 absoluteString];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000848A0()
{
  sub_100006C3C();
  v2 = [v1 absoluteString];
  v3 = [v0 path];
  sub_100083D74();
  sub_10003BB58();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100084948(void *a1)
{
  v1 = [a1 absoluteString];
  sub_100006C08();
  sub_10003BB58();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100084A80(id a1)
{
  qword_1000E6B78 = os_log_create("com.apple.remotemanagementd", "storeHelper");

  _objc_release_x1();
}

void sub_100084DEC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to fetch management source objects with enrollment types: %{public}@", &v2, 0xCu);
}

void sub_100084EA8(id a1)
{
  qword_1000E6B88 = os_log_create("com.apple.remotemanagementd", "StoreXPCListenerDelegate");

  _objc_release_x1();
}

void sub_1000857B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog StoreXPCListenerDelegate];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008BA4C();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008BAB4();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000859FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog StoreXPCListenerDelegate];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008BAE8();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008BB50();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100085CB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog StoreXPCListenerDelegate];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008BB84();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008BBEC();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100085F58(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog StoreXPCListenerDelegate];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008BC20();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008BC88();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100086214(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog StoreXPCListenerDelegate];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008BC20();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008BC88();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000864B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog StoreXPCListenerDelegate];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008BCBC();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008BD24();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100086754(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[RMLog StoreXPCListenerDelegate];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008BD58();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008BDC0(v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000869F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[RMLog StoreXPCListenerDelegate];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008BE38();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008BEA0(v5);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100086E84(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog StoreXPCListenerDelegate];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008BF18();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008BF80();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10008710C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog StoreXPCListenerDelegate];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008BFB4();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008C01C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000873A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog StoreXPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008C050();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10008C0B8();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100087630(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog StoreXPCListenerDelegate];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008C0EC();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008C154();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100087878(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog StoreXPCListenerDelegate];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008C188();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008C1F0();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100087B48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog StoreXPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008C224();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10008C28C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100087DE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog StoreXPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008C2C0();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10008C328();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10008806C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog StoreXPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008C35C();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10008C3C4();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100088320(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog StoreXPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008C3F8();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10008C460();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100088610(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog StoreXPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008C494();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10008C4FC();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100088900(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog StoreXPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008C530();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10008C598();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100088B88(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog StoreXPCListenerDelegate];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008C5CC();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008C634();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100088DD0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog StoreXPCListenerDelegate];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008C668();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008C6D0();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100089030(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = +[RMLog StoreXPCListenerDelegate];
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10008C704();
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10008C76C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100089308(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog StoreXPCListenerDelegate];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008C704();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008C76C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100089568(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = +[RMLog StoreXPCListenerDelegate];
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10008C7A0();
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10008C808();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100089858(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog StoreXPCListenerDelegate];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008C83C();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008C8A4();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100089AF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog StoreXPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008C8D8();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10008C940();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10008A290(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog StoreXPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008CAAC();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10008CB14();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10008A7A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog StoreXPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008CB48();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10008CBB0();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10008AA68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog StoreXPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008CBE4();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10008CC4C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10008AD0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog StoreXPCListenerDelegate];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008CC80();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008CCE8();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10008AFAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog StoreXPCListenerDelegate];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008CD1C();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008CD84();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10008B28C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog StoreXPCListenerDelegate];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008CDB8();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008CE20();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10008B59C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog StoreXPCListenerDelegate];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10008CE54(a1);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10008CEBC(a1);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10008B88C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog StoreXPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008CF28(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10008CF90(a1);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10008BDC0(void *a1)
{
  [a1 count];
  sub_100006C08();
  sub_100022548(&_mh_execute_header, v1, v2, "Fetched configuration UIs: %lu", v3, v4, v5, v6, v7);
}

void sub_10008BEA0(void *a1)
{
  [a1 count];
  sub_100006C08();
  sub_100022548(&_mh_execute_header, v1, v2, "Fetched profile configurations: %lu", v3, v4, v5, v6, v7);
}

void sub_10008CE54(uint64_t a1)
{
  sub_100019898(a1, __stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v1, v2, "Could not read metadata for key %{public}@: %{public}@");
}

void sub_10008CF28(uint64_t a1)
{
  sub_100019898(a1, __stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v1, v2, "Could not set metadata for key %{public}@: %{public}@");
}

void sub_10008D830(id a1)
{
  qword_1000E6B98 = os_log_create("com.apple.remotemanagementd", "statusNotificationCenter");

  _objc_release_x1();
}

void sub_10008D8B8(id a1)
{
  v1 = +[RMPersistentController sharedController];
  v4 = [v1 persistentContainer];

  v2 = [[RMSubscribedStatusKeyPathUpdater alloc] initWithPersistentContainer:v4];
  v3 = qword_1000E6BA8;
  qword_1000E6BA8 = v2;
}

void sub_10008E370(uint64_t a1)
{
  v2 = +[RMSubscribedStatusKeyPath fetchRequest];
  [v2 setPredicate:*(a1 + 32)];
  v26 = 0;
  v3 = [v2 execute:&v26];
  v4 = v26;
  if (!v3)
  {
    v5 = +[RMLog statusNotificationCenter];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_10008E9A4((a1 + 32), v4, v5);
    }

    goto LABEL_16;
  }

  if (![v3 count])
  {
    v5 = +[RMLog statusNotificationCenter];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10008E928((a1 + 32), v5);
    }

LABEL_16:
    v17 = v4;
    goto LABEL_20;
  }

  v19 = v4;
  v20 = v2;
  v5 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        [v11 setLastReceivedDate:v5];
        v12 = *(a1 + 40);
        v13 = [v11 managementSource];
        v14 = [v13 objectID];
        [v12 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v15 = *(a1 + 48);
  v21 = v19;
  v16 = [v15 save:&v21];
  v17 = v21;

  if (v16)
  {
    v2 = v20;
  }

  else
  {
    v18 = +[RMLog statusNotificationCenter];
    v2 = v20;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_10008E8B0(v17, v18);
    }

    [*(a1 + 40) removeAllObjects];
  }

LABEL_20:
}

void sub_10008E620(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [NSPredicate predicateWithFormat:@"%K == %@", @"managementSource", a2];
  v7 = v5;
  v8 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        v15 = [v14 pathExtension];
        v16 = [v15 length];

        if (v16)
        {
          while (([v8 containsObject:v14] & 1) == 0)
          {
            [v8 addObject:v14];
            v17 = [v14 stringByDeletingPathExtension];

            v18 = [v17 pathExtension];
            v19 = [v18 length];

            v14 = v17;
            if (!v19)
            {
              goto LABEL_11;
            }
          }
        }

        v17 = v14;
LABEL_11:
        [v8 addObject:v17];

        v13 = v13 + 1;
      }

      while (v13 != v11);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v11);
  }

  v20 = [NSPredicate predicateWithFormat:@"%K IN %@", @"keyPath", v8, v23];

  v27[0] = v6;
  v27[1] = v20;
  v21 = [NSArray arrayWithObjects:v27 count:2];
  v22 = [NSCompoundPredicate andPredicateWithSubpredicates:v21];

  [*(a1 + 32) addObject:v22];
}

void sub_10008E8B0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Could not update subscribed status key paths: %{public}@", &v2, 0xCu);
}

void sub_10008E928(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "No subscribed status key paths matching %{public}@", &v3, 0xCu);
}

void sub_10008E9A4(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Unable to fetch for subscribed status key paths for %{public}@: %{public}@", &v4, 0x16u);
}

void sub_10008EBD8(id a1)
{
  qword_1000E6BB8 = os_log_create("com.apple.remotemanagementd", "XPCListenerDelegate");

  _objc_release_x1();
}

void sub_10008F334(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[RMLog XPCListenerDelegate];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100093324(a1);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543618;
    v11 = v9;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Enrolled with %{public}@: %{public}@", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10008F65C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[RMLog XPCListenerDelegate];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10009338C(a1);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Enrolled with account %{public}@: %{public}@", &v11, 0x16u);
  }

  v10 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void sub_10008F9B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[RMLog XPCListenerDelegate];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000933F4(a1);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543618;
    v11 = v9;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Enrolled with DDM %{public}@: %{public}@", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10008FCE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[RMLog XPCListenerDelegate];
  v7 = v6;
  if (!v5)
  {
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      v9 = *(a1 + 32);
      v12 = 138543362;
      v13 = v9;
      v10 = "Unenrolled %{public}@ (checked out with the server)";
    }

    else
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      v11 = *(a1 + 32);
      v12 = 138543362;
      v13 = v11;
      v10 = "Unenrolled %{public}@";
    }

    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v10, &v12, 0xCu);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10009345C(a1);
  }

LABEL_10:

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2);
}

void sub_10009001C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog XPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000934C4(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Synced with %{public}@", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000902AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog XPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10009352C();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Periodic sync done", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100090584(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog XPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100093594(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updated with %{public}@ with push message", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10009089C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog XPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000935FC(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updated with %{public}@ with sync tokens", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100090B30(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[RMLog XPCListenerDelegate];
  v7 = v6;
  if (!v5)
  {
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      v12 = 0;
      v9 = "Device channel enrollment exists";
      v10 = &v12;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      v11 = 0;
      v9 = "Device channel enrollment does not exist";
      v10 = &v11;
    }

    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100093664();
  }

LABEL_10:

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

void sub_100090DC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = +[RMLog XPCListenerDelegate];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      v11 = 0;
      v9 = "Found management channel";
      v10 = &v11;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      *buf = 0;
      v9 = "Did not find management channel";
      v10 = buf;
    }

    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    goto LABEL_10;
  }

  v7 = +[RMLog XPCListenerDelegate];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000936CC();
  }

LABEL_10:

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

void sub_100091074(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = +[RMLog XPCListenerDelegate];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      v11 = 0;
      v9 = "Found management channel";
      v10 = &v11;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      *buf = 0;
      v9 = "Did not find management channel";
      v10 = buf;
    }

    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    goto LABEL_10;
  }

  v7 = +[RMLog XPCListenerDelegate];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000936CC();
  }

LABEL_10:

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

void sub_100091394(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog XPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100093734(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sent status with %{public}@", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100091650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100091674(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10009168C(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [RMManagementSource fetchRequestWithIdentifier:*(a1 + 32)];
  v14 = 0;
  v4 = [v3 execute:&v14];
  v5 = v14;
  if (v4)
  {
    v6 = [v4 firstObject];
    if (v6)
    {
      v7 = [[RMManagementChannel alloc] initWithManagementSource:v6];
      v8 = 48;
    }

    else
    {
      v7 = [RMErrorUtilities createManagementSourceNotFoundErrorWithIdentifier:*v2];
      v8 = 40;
    }

    v12 = *(*(a1 + v8) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v7;
  }

  else
  {
    v9 = +[RMLog XPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_10009379C((a1 + 32));
    }

    v10 = +[RMErrorUtilities createInternalError];
    v11 = *(*(a1 + 40) + 8);
    v6 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_100091EAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog XPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100093818(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = [v6 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v8 = [v7 componentsJoinedByString:{@", "}];

    v9 = *(a1 + 40);
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sent status of types %{public}@ with %{public}@", &v10, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100092290(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog XPCListenerDelegate];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000938EC(a1);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Queried for status subscriptions from %{public}@", &v10, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100092640(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog XPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100093954(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = [v6 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v8 = [v7 componentsJoinedByString:{@", "}];

    v9 = *(a1 + 40);
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sent status subscriptions with identifiers %{public}@ with %{public}@", &v10, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

int64_t sub_100093094(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = a3;
  v5 = [(NSDictionary *)a2 objectForKeyedSubscript:@"Location"];
  v6 = [v5 componentsSeparatedByString:@"/"];
  v7 = [v6 lastObject];

  v8 = [(NSDictionary *)v4 objectForKeyedSubscript:@"Location"];

  v9 = [v8 componentsSeparatedByString:@"/"];
  v10 = [v9 lastObject];

  if ([v7 isEqualToString:v10])
  {
    v11 = 0;
  }

  else if ([v7 isEqualToString:@"Internal"])
  {
    v11 = -1;
  }

  else if ([v10 isEqualToString:@"Internal"])
  {
    v11 = 1;
  }

  else
  {
    v11 = [v7 caseInsensitiveCompare:v10];
  }

  return v11;
}

void sub_100093214(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_100093324(uint64_t a1)
{
  sub_100019898(a1, __stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v1, v2, "Could not enroll with %{public}@: %{public}@");
}

void sub_10009338C(uint64_t a1)
{
  sub_100019898(a1, __stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v1, v2, "Could not enroll with account %{public}@: %{public}@");
}

void sub_1000933F4(uint64_t a1)
{
  sub_100019898(a1, __stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v1, v2, "Could not enroll DDM with %{public}@: %{public}@");
}

void sub_10009345C(uint64_t a1)
{
  sub_100019898(a1, __stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v1, v2, "Could not unenroll with %{public}@: %{public}@");
}

void sub_1000934C4(uint64_t a1)
{
  sub_100019898(a1, __stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v1, v2, "Could not sync with %{public}@: %{public}@");
}

void sub_100093594(uint64_t a1)
{
  sub_100019898(a1, __stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v1, v2, "Could not update with %{public}@ with push message: %{public}@");
}

void sub_1000935FC(uint64_t a1)
{
  sub_100019898(a1, __stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v1, v2, "Could not update with %{public}@ with sync tokens: %{public}@");
}

void sub_100093734(uint64_t a1)
{
  sub_100019898(a1, __stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v1, v2, "Could not send status with %{public}@: %{public}@");
}

void sub_10009379C(uint64_t *a1)
{
  v1 = *a1;
  sub_100019810();
  _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Could not fetch for management sources with identifier %{public}@: %{public}@", v3, 0x16u);
}

void sub_100093818(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v4 = [v3 componentsJoinedByString:{@", "}];

  v5 = *(a1 + 40);
  sub_1000931F4();
  sub_100093214(&_mh_execute_header, v6, v7, "Could not send status of types %{public}@ with %{public}@: %{public}@", v8, v9, v10, v11, v12);
}

void sub_1000938EC(uint64_t a1)
{
  sub_100019898(a1, __stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v1, v2, "Could not query for status subscriptions from %{public}@: %{public}@");
}

void sub_100093954(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v4 = [v3 componentsJoinedByString:{@", "}];

  v5 = *(a1 + 40);
  sub_1000931F4();
  sub_100093214(&_mh_execute_header, v6, v7, "Could not send status subscriptions with identifiers %{public}@ with %{public}@: %{public}@", v8, v9, v10, v11, v12);
}

void sub_100093A3C(uint8_t *buf, int a2, int a3, os_log_t log)
{
  *buf = 138543874;
  *(buf + 4) = @"remotemanagementd";
  *(buf + 6) = 1024;
  *(buf + 14) = a2;
  *(buf + 9) = 1024;
  *(buf + 5) = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Starting %{public}@... uid %d euid %d", buf, 0x18u);
}

void sub_100093AE8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Startup migration failed - process exiting: %{public}@", &v2, 0xCu);
}

void sub_100093BA4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "CoreData migration failed - process exiting: %{public}@", &v2, 0xCu);
}