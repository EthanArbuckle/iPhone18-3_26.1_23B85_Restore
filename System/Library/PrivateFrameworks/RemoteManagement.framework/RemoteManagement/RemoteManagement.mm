void sub_100001918(id a1, NSError *a2)
{
  v2 = +[RMLog client];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001051C();
  }
}

void sub_1000019B4(id a1)
{
  qword_1000E6668 = os_log_create("com.apple.remotemanagementd", "daemon");

  _objc_release_x1();
}

uint64_t start()
{
  v0 = _os_activity_create(&_mh_execute_header, "Starting: remotemanagementd", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v0, &state);
  v1 = +[RMLog daemon];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v2 = getuid();
    v3 = geteuid();
    sub_100093A3C(v54, v2, v3, v1);
  }

  v4 = +[RMLog daemon];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100093AA4(v4);
  }

  [RMBundle setManagementScope:1];
  v5 = +[RMLog daemon];
  v6 = os_signpost_id_generate(v5);

  v7 = +[RMLog daemon];
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Start remotemanagementd", "", buf, 2u);
  }

  v9 = objc_autoreleasePoolPush();
  if ((+[RMSandbox configureSandbox]& 1) == 0)
  {
    v45 = 0;
    v37 = 0;
    v36 = 0;
    v28 = 0;
    v27 = 0;
    v44 = 78;
    goto LABEL_32;
  }

  v10 = +[RMLog daemon];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = NSTemporaryDirectory();
    *buf = 138412290;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Temp %@", buf, 0xCu);
  }

  v12 = +[RMFeatureOverrides hiddenDeclarationTypes];
  if (v12)
  {
    [RMModelClasses hideDeclarationsWithTypes:v12];
  }

  +[RMPluginDiscovery loadDynamicSchemasInPlugins];

  v13 = objc_opt_new();
  *buf = 0;
  v14 = [v13 migrateOnStartupReturningError:buf];
  v15 = *buf;
  v16 = v15;
  if ((v14 & 1) == 0)
  {
    v46 = +[RMLog daemon];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_100093AE8(v16, v46);
    }

    goto LABEL_30;
  }

  v17 = [RMLocations statusDirectoryURLCreateIfNeeded:1];
  if (!+[RMPersistentController startPersistentController])
  {
    v47 = +[RMLog daemon];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_100093B60(v47);
    }

    goto LABEL_31;
  }

  v13 = objc_opt_new();
  *buf = 0;
  v18 = [v13 migrateWithCoreDataReturningError:buf];
  v19 = *buf;
  v16 = v19;
  if ((v18 & 1) == 0)
  {
    v46 = +[RMLog daemon];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_100093BA4(v16, v46);
    }

LABEL_30:

LABEL_31:
    v45 = 0;
    v37 = 0;
    v36 = 0;
    v28 = 0;
    v27 = 0;
    v44 = 69;
    goto LABEL_32;
  }

  +[RMInternalStatusPublisher start];
  +[RMExternalStatusPublisher start];
  +[RMClientCapabilitiesController start];
  +[RMConfigurationPublisher start];
  +[RMClientController start];
  +[RMStoreController start];
  v20 = +[RMPersistentController sharedController];
  v21 = [v20 persistentContainer];

  v22 = [[RMXPCListenerDelegate alloc] initWithPersistentContainer:v21 allowedToRun:1];
  v23 = RMXPCDaemonMachServiceName;
  v24 = [[NSXPCListener alloc] initWithMachServiceName:v23];
  [v24 setDelegate:v22];
  [v24 resume];
  v25 = v24;
  v26 = v22;

  v27 = v24;
  v28 = v22;
  v29 = +[RMPersistentController sharedController];
  v30 = [v29 persistentContainer];

  v31 = [[RMStoreXPCListenerDelegate alloc] initWithPersistentContainer:v30 allowedToRun:1];
  v32 = RMStoreXPCDaemonMachServiceName;
  v33 = [[NSXPCListener alloc] initWithMachServiceName:v32];
  [v33 setDelegate:v31];
  [v33 resume];
  v34 = v33;
  v35 = v31;

  v36 = v33;
  v37 = v31;
  if (+[RMFeatureFlags isHTTPConduitEnabled])
  {
    +[RMPushController start];
  }

  +[RMBackgroundTaskScheduler start];
  +[RMClientController startListeningForNotifications];
  v38 = +[RMLog daemon];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    sub_1000017D0(v38);
  }

  v39 = objc_opt_new();
  v40 = [RMXPCEvent newXPCEventForDarwinNotification:@"com.apple.mobile.keybagd.lock_status"];
  [v39 addObject:v40];

  v41 = +[RMExternalStatusPublisher sharedPublisher];
  v42 = [v41 allEvents];
  [v39 unionSet:v42];

  v43 = +[RMXPCNotifications sharedNotifier];
  [v43 registerForEvents:v39];

  v44 = 0;
  v45 = 1;
LABEL_32:
  objc_autoreleasePoolPop(v9);
  if (v45)
  {
    v49 = +[RMLog daemon];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = @"remotemanagementd";
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "Started %{public}@", buf, 0xCu);
    }

    v50 = +[RMLog daemon];
    v51 = v50;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_END, v6, "Start remotemanagementd", "", buf, 2u);
    }

    dispatch_main();
  }

  os_activity_scope_leave(&state);
  return v44;
}

void sub_1000021D0(id a1)
{
  qword_1000E6678 = os_log_create("com.apple.remotemanagementd", "activationEngine");

  _objc_release_x1();
}

void sub_100002378(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[RMLog activationEngine];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100006CBC();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100006D24();
  }
}

uint64_t sub_100002658(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002670(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  if ([*(a1 + 40) _reconcile:v4])
  {
    v5 = [*(a1 + 32) hasChanges];
    v6 = +[RMLog activationEngine];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v7)
      {
        sub_100006DC0();
      }

      v8 = *(a1 + 32);
      v17 = 0;
      v9 = [v8 save:&v17];
      v6 = v17;
      v10 = +[RMLog activationEngine];
      v11 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_100006E5C();
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_100006DF4();
      }
    }

    else
    {
      if (v7)
      {
        sub_100006D8C();
      }

      LOBYTE(v9) = 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v12 = +[RMLog activationEngine];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Synced activation engine...", v16, 2u);
  }

  if ((v9 & 1) == 0)
  {
    [*(a1 + 32) rollback];
    v13 = +[RMErrorUtilities createInternalError];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  [*(a1 + 32) reset];
}

void sub_1000029F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  if ([*(a1 + 40) _remove:v4])
  {
    v5 = [*(a1 + 32) hasChanges];
    v6 = +[RMLog activationEngine];
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v7)
      {
        sub_100006EF8();
      }

      v8 = *(a1 + 32);
      v17 = 0;
      v9 = [v8 save:&v17];
      v6 = v17;
      v10 = +[RMLog activationEngine];
      v11 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_100006F94();
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_100006F2C();
      }
    }

    else
    {
      if (v7)
      {
        sub_100006EC4();
      }

      LOBYTE(v9) = 1;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v12 = +[RMLog activationEngine];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Removed activation engine...", v16, 2u);
  }

  if ((v9 & 1) == 0)
  {
    [*(a1 + 32) rollback];
    v13 = +[RMErrorUtilities createInternalError];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  [*(a1 + 32) reset];
}

void sub_100006728(id a1)
{
  v1 = +[RMModelAssetCredentialACMEDeclaration registeredIdentifier];
  v2 = +[RMModelAssetCredentialCertificateDeclaration registeredIdentifier];
  v9[1] = v2;
  v3 = +[RMModelAssetCredentialIdentityDeclaration registeredIdentifier];
  v9[2] = v3;
  v4 = +[RMModelAssetCredentialSCEPDeclaration registeredIdentifier];
  v9[3] = v4;
  v5 = +[RMModelAssetCredentialUserNameAndPasswordDeclaration registeredIdentifier];
  v9[4] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:5];
  v7 = [NSSet setWithArray:v6];
  v8 = qword_1000E6688;
  qword_1000E6688 = v7;
}

void sub_100006BCC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void sub_100006BEC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100006C20(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_100006C58(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100006FFC()
{
  sub_100006C3C();
  v1 = [v0 entityName];
  sub_100006C08();
  sub_100006C48();
  sub_100006BCC(&_mh_execute_header, v2, v3, "Unable to retrieve %@ ear marked for deletion: %@", v4, v5, v6, v7, v8);
}

void sub_10000708C()
{
  sub_100006C3C();
  v1 = [v0 entity];
  v2 = [v1 name];
  sub_100006BB4();
  sub_100006BCC(&_mh_execute_header, v3, v4, "Unable to retrieve unknown %{public}@ to be evaluated: %{public}@", v5, v6, v7, v8, v9);
}

void sub_1000071C4()
{
  sub_100006C3C();
  v1 = [v0 entityName];
  sub_100006C08();
  sub_100006C48();
  sub_100006BCC(&_mh_execute_header, v2, v3, "Unable to get eligible %@ by identifiers: %@", v4, v5, v6, v7, v8);
}

void sub_100007428()
{
  sub_100006C3C();
  v1 = [v0 name];
  sub_100006BB4();
  sub_100006BCC(&_mh_execute_header, v2, v3, "Unable to retrieve eligible %{public}@ to be evaluated, could not query for activations: %{public}@", v4, v5, v6, v7, v8);
}

void sub_100007938()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_100007920();
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Could not deserialize data for %{public}@: %{public}@", v2, 0x16u);
}

void sub_1000079D4()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_100007920();
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Could not serialize data for %{public}@: %{public}@", v2, 0x16u);
}

void sub_100008E7C(id a1)
{
  qword_1000E6698 = os_log_create("com.apple.remotemanagementd", "deviceAuthenticationCredential");

  _objc_release_x1();
}

void sub_100009188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

uint64_t sub_1000091C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000091D8(uint64_t a1, __SecKey *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  [*(a1 + 32) lock];
  v9 = +[RMLog deviceAuthenticationCredential];
  v10 = v9;
  if (!a2 || !v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100009520(v8, v10, v16, v17, v18, v19, v20, v21);
    }

    v22 = +[RMErrorUtilities createInternalError];
    v23 = *(*(a1 + 56) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;
    goto LABEL_26;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10000958C(v10);
  }

  v11 = *(a1 + 40);
  error = 0;
  v12 = SecKeyCreateSignature(a2, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, v11, &error);
  v13 = v12;
  if (v12)
  {
    v14 = [(__CFData *)v12 base64EncodedStringWithOptions:0];
    v15 = 0;
  }

  else
  {
    v15 = error;
    if (error)
    {
      v25 = error;
    }

    v14 = 0;
  }

  v26 = v15;
  v27 = *(*(a1 + 48) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v14;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v35 = +[RMLog deviceAuthenticationCredential];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_10000963C(v26, v35, v36, v37, v38, v39, v40, v41);
    }

    goto LABEL_25;
  }

  v29 = [RMSecurityUtilities serializeCertificateChain:v7];
  error = 0;
  v30 = [NSJSONSerialization dataWithJSONObject:v29 options:8 error:&error];
  v31 = error;
  v32 = v31;
  if (v30)
  {
    v33 = [v30 base64EncodedStringWithOptions:0];
LABEL_16:
    v34 = v26;
    goto LABEL_21;
  }

  if (!v31)
  {
    v33 = 0;
    goto LABEL_16;
  }

  v42 = v31;
  v33 = 0;
  v34 = v32;
LABEL_21:

  v24 = v34;
  v43 = *(*(a1 + 64) + 8);
  v44 = *(v43 + 40);
  *(v43 + 40) = v33;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v35 = +[RMLog deviceAuthenticationCredential];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_1000095D0(v24, v35, v45, v46, v47, v48, v49, v50);
    }

    v26 = v24;
LABEL_25:

    v51 = +[RMErrorUtilities createInternalError];
    v52 = *(*(a1 + 56) + 8);
    v53 = *(v52 + 40);
    *(v52 + 40) = v51;

    v24 = v26;
  }

LABEL_26:

  [*(a1 + 32) unlockWithCondition:1];
}

void sub_1000096EC(id a1)
{
  qword_1000E66A8 = os_log_create("com.apple.remotemanagementd", "genericAuthenticationCredential");

  _objc_release_x1();
}

void sub_100009EA8(id a1)
{
  qword_1000E66B8 = objc_opt_new();

  _objc_release_x1();
}

void sub_10000A7AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v11 = v5;
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v11;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v11 stringValue];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [RMDateFormat stringUTCWithDate:v11];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 base64EncodedStringWithOptions:0];
        }

        else
        {
          [v11 description];
        }
        v8 = ;
      }
    }
  }

  v9 = v8;

  v10 = [NSString stringWithFormat:@"%@=%@", v7, v9];

  [v6 addObject:v10];
}

void sub_10000A924(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10000A968(void *a1, NSObject *a2)
{
  v3 = [a1 properties];
  v4 = [v3 objectForKeyedSubscript:RMAuthenticationSchemeTestFieldUsername];
  sub_100006C08();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Test token changed for %{public}@", v5, 0xCu);
}

void sub_10000AD3C(id a1)
{
  qword_1000E66C8 = os_log_create("com.apple.remotemanagementd", "backgroundTask");

  _objc_release_x1();
}

void sub_10000B044(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog backgroundTask];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Launch handler called for task: %{public}@", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000B1A4;
  v8[3] = &unk_1000D0F50;
  v9 = *(a1 + 32);
  [v3 setExpirationHandler:v8];
  v6 = *(a1 + 40);
  v7 = [[RMBGSystemTaskWrapper alloc] initWithTask:v3];

  (*(v6 + 16))(v6, v7);
}

void sub_10000B1A4(uint64_t a1)
{
  v2 = +[RMLog backgroundTask];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Expiration handler called for task: %{public}@", &v4, 0xCu);
  }
}

void sub_10000B3A4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to register task: %{public}@", &v2, 0xCu);
}

void sub_10000B460(id a1)
{
  qword_1000E66D8 = os_log_create("com.apple.remotemanagementd", "backgroundTaskScheduler");

  _objc_release_x1();
}

void sub_10000B4E8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000E66E8;
  qword_1000E66E8 = v1;

  v3 = qword_1000E66E8;

  [v3 _initBackgroundTasks];
}

void sub_10000B68C(id a1, RMBGSystemTaskWrapper *a2)
{
  v2 = a2;
  v3 = +[RMLog backgroundTaskScheduler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Triggered periodic sync background task", buf, 2u);
  }

  v4 = +[RMClientController sharedController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000B784;
  v6[3] = &unk_1000D1020;
  v7 = v2;
  v5 = v2;
  [v4 syncAllManagementSourcesWithCompletionHandler:v6];
}

void sub_10000B784(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog backgroundTaskScheduler];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000B974(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "All management sources synchronized", v6, 2u);
  }

  [*(a1 + 32) setTaskCompleted];
}

void sub_10000B834(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog backgroundTaskScheduler];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Triggered on reboot background task", v6, 2u);
  }

  [v3 setTaskCompleted];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setOnRebootTask:0];
}

void sub_10000B974(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not sync all management sources: %{public}@", &v2, 0xCu);
}

void sub_10000BC64(id a1)
{
  qword_1000E66F8 = +[NSMutableDictionary dictionary];

  _objc_release_x1();
}

void sub_10000CA50(id a1)
{
  qword_1000E6708 = os_log_create("com.apple.remotemanagementd", "client");

  _objc_release_x1();
}

void sub_10000CF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000CF20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000CF38(uint64_t a1)
{
  v7 = [*(a1 + 32) objectWithID:*(a1 + 40)];
  v2 = [v7 conduitConfig];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = off_1000D0448;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = off_1000D0458;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_8;
      }

      v3 = off_1000D0468;
    }
  }

  v4 = [objc_alloc(*v3) initWithManagementSourceObjectID:*(a1 + 40) inContext:*(a1 + 32)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

LABEL_8:
}

void sub_10000D1B4(uint64_t a1)
{
  v2 = [*(a1 + 32) conduit];
  v3 = [v2 errorState];

  v4 = +[RMLog client];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000FD20(v3, v4);
  }

  if (v3)
  {
    [*(a1 + 32) _processConduitErrorState:v3];
  }

  v5 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000D2B4;
  v6[3] = &unk_1000D10B0;
  v6[4] = v5;
  v7 = *(a1 + 40);
  [v5 _syncOnlyIfNeeded:1 completionHandler:v6];
}

uint64_t sub_10000D2B4(uint64_t a1)
{
  v2 = +[RMLog client];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Started.", v4, 2u);
  }

  *(*(a1 + 32) + 25) = 0;
  return (*(*(a1 + 40) + 16))();
}

void sub_10000D570(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v3 acknowledgeStatusSubscriptions:v4];
  v6 = +[RMLog client];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Enrolled.", v7, 2u);
  }

  (*(a1[6] + 16))();
}

void sub_10000D8C8(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v3 acknowledgeStatusSubscriptions:v4];
  (*(a1[6] + 16))();
}

void sub_10000DA90(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[RMLog client];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Unenrolled.", v7, 2u);
  }

  v6 = [*(a1 + 32) activationEngine];
  [v6 removeReturningError:0];

  (*(*(a1 + 40) + 16))();
}

void sub_10000DE70(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v9 = [*(a1 + 48) statusByKeyPath];
    if ([v9 count])
    {
    }

    else
    {
      v10 = [*(a1 + 48) errorByKeyPath];
      v11 = [v10 count];

      if (!v11)
      {
LABEL_17:
        v14 = *(a1 + 64);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10000E0FC;
        v18[3] = &unk_1000D1178;
        v15 = *(a1 + 40);
        v16 = *(a1 + 32);
        v17 = *(a1 + 40);
        v19 = v16;
        v20 = v17;
        v22 = *(a1 + 64);
        v21 = *(a1 + 56);
        [v15 _syncConduitOnlyIfNeeded:v14 completionHandler:v18];

        v8 = v19;
        goto LABEL_18;
      }
    }

    v12 = +[RMLog client];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10000FE0C();
    }

    v13 = [*(a1 + 40) statusEngine];
    [v13 acknowledgeStatusSubscriptions:*(a1 + 48)];

    goto LABEL_17;
  }

  v4 = +[RMLog client];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10000FD9C();
  }

  [*(a1 + 32) addObject:v3];
  if (![*(a1 + 40) _haltSyncing])
  {
    goto LABEL_17;
  }

  [*(*(a1 + 40) + 16) unlock];
  v5 = +[RMLog client];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 64))
    {
      v6 = @" only if needed";
    }

    else
    {
      v6 = &stru_1000D3680;
    }

    *buf = 138543362;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Sync %{public}@ finished", buf, 0xCu);
  }

  v7 = *(a1 + 56);
  v8 = [RMErrorUtilities createMultipleErrorOrReturnTheSingleErrorWithErrors:*(a1 + 32)];
  (*(v7 + 16))(v7, v8);
LABEL_18:
}

void sub_10000E0FC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = +[RMLog client];
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000FE40();
    }

    [*(a1 + 32) addObject:v5];
    if ([*(a1 + 40) _haltSyncing])
    {
      [*(*(a1 + 40) + 16) unlock];
      v8 = +[RMLog client];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
LABEL_25:

        v18 = *(a1 + 48);
        v15 = [RMErrorUtilities createMultipleErrorOrReturnTheSingleErrorWithErrors:*(a1 + 32)];
        (*(v18 + 16))(v18, v15);
        goto LABEL_26;
      }

      if (*(a1 + 56))
      {
        v9 = @" only if needed";
      }

      else
      {
        v9 = &stru_1000D3680;
      }

      *buf = 138543362;
      v25 = v9;
LABEL_24:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Sync %{public}@ finished", buf, 0xCu);
      goto LABEL_25;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10000FEB0();
    }
  }

  v10 = *(a1 + 40);
  if (*(a1 + 56) == 1 && (a2 & 1) == 0 && v10[25] != 1)
  {
    v16 = +[RMLog client];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10000FEE4();
    }

    [*(*(a1 + 40) + 16) unlock];
    v8 = +[RMLog client];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    if (*(a1 + 56))
    {
      v17 = @" only if needed";
    }

    else
    {
      v17 = &stru_1000D3680;
    }

    *buf = 138543362;
    v25 = v17;
    goto LABEL_24;
  }

  v11 = [v10 activationEngine];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000E3D0;
  v19[3] = &unk_1000D1150;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v20 = v12;
  v21 = v13;
  v23 = *(a1 + 56);
  v22 = v14;
  [v11 syncWithCompletionHandler:v19];

  v15 = v20;
LABEL_26:
}

void sub_10000E3D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog client];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10000FF18();
    }

    [*(a1 + 32) addObject:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10000FF88();
    }
  }

  [*(*(a1 + 40) + 16) unlock];
  v6 = +[RMLog client];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 56))
    {
      v7 = @" only if needed";
    }

    else
    {
      v7 = &stru_1000D3680;
    }

    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Sync %{public}@ finished", &v10, 0xCu);
  }

  v8 = *(a1 + 48);
  v9 = [RMErrorUtilities createMultipleErrorOrReturnTheSingleErrorWithErrors:*(a1 + 32)];
  (*(v8 + 16))(v8, v9);
}

void sub_10000E6CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[RMLog client];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100010034();
    }

    [*(a1 + 32) _handleConduitError];
    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1000100A4();
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

void sub_10000E96C(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v3 unlock];
  v5 = +[RMLog client];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Updating finished", v6, 2u);
  }

  [*(a1 + 32) _setNeedsSyncing:1];
  (*(*(a1 + 40) + 16))();
}

void sub_10000EBA0(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v3 unlock];
  v5 = +[RMLog client];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Updating finished", v6, 2u);
  }

  [*(a1 + 32) _setNeedsSyncing:1];
  (*(*(a1 + 40) + 16))();
}

void sub_10000EEB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog client];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100010150();
    }

    [*(a1 + 32) _handleConduitError];
    v6 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1000101C0();
    }

    v6 = *(*(a1 + 40) + 16);
  }

  v6();
}

void sub_10000FB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_10000FB44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _syncIfNeeded];
}

void sub_10000FD20(__int16 a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Processing client error state on startup: %u", v2, 8u);
}

void sub_10000FD9C()
{
  sub_100006C08();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000FE40()
{
  sub_100006C08();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000FF18()
{
  sub_100006C08();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10000FFBC()
{
  sub_100006C14();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000FFF8()
{
  sub_100006C14();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100010034()
{
  sub_100006C08();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000100D8()
{
  sub_100006C14();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100010114()
{
  sub_100006C14();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100010150()
{
  sub_100006C08();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100010228()
{
  sub_100006C08();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100010298(__int16 a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Handle client error state: %u", v2, 8u);
}

void sub_100010348(void *a1, NSObject *a2)
{
  v3 = [a1 allObjects];
  v4 = [v3 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v5 = [v4 componentsJoinedByString:{@", "}];

  v6 = 138543362;
  v7 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Conduit needs to send status items: %{public}@", &v6, 0xCu);
}

void sub_100010594(id a1)
{
  qword_1000E6718 = os_log_create("com.apple.remotemanagementd", "clientCapabilitiesController");

  _objc_release_x1();
}

void sub_10001061C(id a1)
{
  v1 = [RMClientCapabilitiesController alloc];
  v4 = +[RMSubscribedStatusKeyPathUpdater sharedUpdater];
  v2 = [(RMClientCapabilitiesController *)v1 initWithSubscribedStatusKeyPathUpdater:v4];
  v3 = qword_1000E6728;
  qword_1000E6728 = v2;
}

void sub_100010734(id a1)
{
  v1 = +[RMClientCapabilitiesController sharedController];
  [v1 _notifyChangesIfNeeded];
}

void sub_1000108C8(uint64_t a1)
{
  v2 = +[RMManagementSource fetchRequest];
  v37 = 0;
  v3 = [v2 execute:&v37];
  v4 = v37;
  v5 = v4;
  if (v3)
  {
    v26 = v4;
    v27 = v3;
    v28 = v2;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v3;
    v6 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v6)
    {
      v7 = v6;
      v31 = *v34;
      v30 = RMModelStatusItemManagementClientCapabilities;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v34 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v33 + 1) + 8 * i);
          v10 = [[RMManagementChannel alloc] initWithManagementSource:v9];
          v11 = +[RMCapabilities capabilitiesForEnrollmentType:scope:protocolType:](RMCapabilities, "capabilitiesForEnrollmentType:scope:protocolType:", [v9 enrollmentType], +[RMBundle managementScope](RMBundle, "managementScope"), objc_msgSend(v10, "protocolType"));
          v12 = [v11 versionHash];
          v13 = [v9 capabilitiesVersionHash];
          if (!v13 || (v14 = v13, [v9 capabilitiesVersionHash], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", v12), v15, v14, (v16 & 1) == 0))
          {
            v17 = +[RMLog clientCapabilitiesController];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = [v9 identifier];
              *buf = 138543362;
              v39 = v18;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Capabilities version hash changed: %{public}@", buf, 0xCu);
            }

            [v9 setCapabilitiesVersionHash:v12];
            v19 = [NSSet setWithObject:v30];
            v20 = *(a1 + 32);
            v21 = [v9 objectID];
            [v20 setObject:v19 forKeyedSubscript:v21];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v7);
    }

    if ([*(a1 + 32) count])
    {
      v22 = *(a1 + 40);
      v32 = v26;
      v23 = [v22 save:&v32];
      v5 = v32;

      v3 = v27;
      if ((v23 & 1) == 0)
      {
        v24 = +[RMLog clientCapabilitiesController];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          sub_100010E68(v5, v24);
        }

        [*(a1 + 40) rollback];
      }

      v2 = v28;
    }

    else
    {
      v3 = v27;
      v2 = v28;
      v5 = v26;
    }
  }

  else
  {
    v25 = +[RMLog clientCapabilitiesController];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_100010EE0(v5, v25);
    }
  }
}

void sub_100010E68(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to save update capabilities version hash: %{public}@", &v2, 0xCu);
}

void sub_100010EE0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to fetch management source objects: %{public}@", &v2, 0xCu);
}

void sub_100010F9C(id a1)
{
  qword_1000E6740 = os_log_create("com.apple.remotemanagementd", "clientController");

  _objc_release_x1();
}

void sub_100011024(id a1)
{
  v1 = +[RMPersistentController sharedController];
  v5 = [v1 persistentContainer];

  v2 = [v5 newBackgroundContext];
  [v2 setAutomaticallyMergesChangesFromParent:1];
  [v2 setTransactionAuthor:@"ClientController"];
  v3 = [[RMClientController alloc] initWithPersistentContainer:v5 context:v2];
  v4 = qword_1000E6750;
  qword_1000E6750 = v3;
}

void sub_100011158(uint64_t a1)
{
  v1 = [*(a1 + 32) sharedController];
  [v1 _start];
}

void sub_100011580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v15 - 96));
  _Unwind_Resume(a1);
}

void sub_1000115B0(uint64_t a1)
{
  v2 = +[RMManagementSource fetchRequest];
  v33 = 0;
  v3 = [v2 execute:&v33];
  v4 = v33;
  if (v3)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v3 count];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v24 = v4;
      v25 = v3;
      v26 = v2;
      v27 = 0;
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          v11 = [v10 identifier];
          if ([v10 enrolled])
          {
            v12 = v5;
            v13 = [v10 bootstrapURI];
            v14 = [v13 scheme];
            v15 = [v14 isEqualToString:@"rmstore"];

            if ((v15 & 1) == 0)
            {
              v16 = [v10 objectID];
              v17 = *(a1 + 40);
              v18 = [v10 identifier];
              [v17 setObject:v16 forKeyedSubscript:v18];
            }

            v5 = v12;
          }

          else
          {
            v19 = +[RMLog clientController];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v35 = v11;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found and deleting orphaned management source: %{public}@", buf, 0xCu);
            }

            [*(a1 + 32) deleteObject:v10];
            [RMConfigurationStatusArchiver removeAllStatusForStoreIdentifier:v11 error:0];
            [RMStoreAssetCache removeAllCachedAssetsForStoreIdentifier:v11 error:0];
            v27 = 1;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v7);

      if (v27)
      {
        v20 = *(a1 + 32);
        v28 = v24;
        v21 = [v20 save:&v28];
        v4 = v28;

        if (v21)
        {
          v3 = v25;
          v2 = v26;
        }

        else
        {
          v23 = +[RMLog clientController];
          v3 = v25;
          v2 = v26;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            sub_100019908();
          }

          [*(a1 + 32) rollback];
        }
      }

      else
      {
        v3 = v25;
        v2 = v26;
        v4 = v24;
      }
    }

    else
    {
    }
  }

  else
  {
    v22 = +[RMLog clientController];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_100019970();
    }
  }
}

void sub_100011910(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v7 persistentContainer];
  v9 = [v7 _makeClientWithManagementSourceObjectID:v6 managementSourceIdentifier:v5 persistentContainer:v8];

  v10 = *(a1 + 40);
  objc_sync_enter(v10);
  [*(a1 + 40) setObject:v9 forKeyedSubscript:v5];
  objc_sync_exit(v10);

  dispatch_group_enter(*(a1 + 48));
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100011A48;
  v11[3] = &unk_1000D0F50;
  v12 = *(a1 + 48);
  [v9 startWithCompletionHandler:v11];
}

void sub_100011A50(id a1)
{
  v1 = +[RMLog clientController];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Started client controller.", v2, 2u);
  }
}

void sub_100011C9C(uint64_t a1)
{
  v2 = +[RMManagementSource fetchRequest];
  v25 = a1;
  v3 = *(a1 + 32);
  v30 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v30];
  v5 = v30;
  if (v4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      v22 = v5;
      v23 = v4;
      v24 = v2;
      v9 = *v27;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v12 = [v11 bootstrapURI];
          v13 = [v12 scheme];
          v14 = [v13 caseInsensitiveCompare:@"mdm"];

          if (v14 && ![v11 enrollmentType])
          {
            v15 = [v11 accountIdentifier];
            v16 = +[ACAccountStore rm_defaultStore];
            v17 = [v16 rm_remoteManagementAccountForIdentifier:v15];

            if (!v17)
            {
              v18 = +[RMLog clientController];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                v19 = [v11 identifier];
                *buf = 138543618;
                v32 = v19;
                v33 = 2114;
                v34 = v15;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Invalid management source: %{public}@ for account: %{public}@", buf, 0x16u);
              }

              v20 = *(v25 + 40);
              v21 = [v11 identifier];
              [v20 addObject:v21];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v8);
      v4 = v23;
      v2 = v24;
      v5 = v22;
    }
  }

  else
  {
    v6 = +[RMLog clientController];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100019A14();
    }
  }
}

void sub_1000121DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = +[RMLog clientController];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100019A7C(a1);
    }
  }

  [*(a1 + 40) lock];
  [*(a1 + 40) unlockWithCondition:{objc_msgSend(*(a1 + 40), "condition") - 1}];
}

void sub_1000123AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkCloudConfig];
}

void sub_100012570(uint64_t a1)
{
  [*(*(a1 + 32) + 8) unlock];
  v1 = +[RMLog clientController];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Checked cloud config.", v2, 2u);
  }
}

void sub_10001288C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000128B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000128D0(uint64_t a1)
{
  v2 = +[RMManagementSource fetchRequestWithDeviceChannel];
  v9 = 0;
  v3 = [v2 execute:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = [v3 firstObject];
    v6 = [v5 bootstrapURI];
  }

  else
  {
    v5 = +[RMLog clientController];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100019C48();
    }

    v6 = 0;
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_100012C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100012C90(uint64_t a1)
{
  v2 = +[RMLog clientController];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100019D18(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100012DA0;
  v5[3] = &unk_1000D1470;
  v6 = v4;
  objc_copyWeak(v7, (a1 + 40));
  v7[1] = *(a1 + 48);
  [WeakRetained unenrollWithIdentifier:v6 completionHandler:v5];

  objc_destroyWeak(v7);
}

void sub_100012DA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[RMLog clientController];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v13 = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Forced unenroll for client identifier %{public}@ failed: %{public}@", &v13, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _completedClientStateChanges:*(a1 + 32)];
LABEL_15:

    goto LABEL_16;
  }

  if (v6)
  {
    v9 = *(a1 + 32);
    v13 = 138543362;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Forced unenroll for client identifier %{public}@", &v13, 0xCu);
  }

  v10 = objc_loadWeakRetained((a1 + 40));
  [v10 _completedClientStateChanges:*(a1 + 32)];

  if ((*(a1 + 48) | 2) == 3)
  {
    WeakRetained = +[RMCloudConfigController cloudConfigEnrollmentURLWithUpdateFromServer];
    v11 = +[RMLog clientController];
    v12 = v11;
    if (WeakRetained)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138543362;
        v14 = WeakRetained;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Mandatory device channel enrollment required: %{public}@", &v13, 0xCu);
      }

      v12 = objc_loadWeakRetained((a1 + 40));
      [v12 enrollDeviceChannelWithURI:WeakRetained completionHandler:&stru_1000D1448];
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100019D80();
    }

    goto LABEL_15;
  }

LABEL_16:
}

void sub_100012FA0(id a1, NSString *a2, NSError *a3)
{
  v3 = a3;
  v4 = +[RMLog clientController];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100019DBC();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100019E24();
  }
}

void sub_1000132D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, os_activity_scope_state_s state)
{
  _Block_object_dispose(&a19, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_100013320(uint64_t a1)
{
  v2 = +[RMManagementSource fetchRequest];
  v3 = *(a1 + 32);
  v35 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v35];
  v5 = v35;
  if (v4)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v26 = v5;
      v27 = v4;
      v28 = v2;
      v9 = *v32;
      v10 = @"mdm";
      v29 = a1;
      do
      {
        v11 = 0;
        v30 = v8;
        do
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v31 + 1) + 8 * v11);
          v13 = [v12 bootstrapURI];
          v14 = [v13 scheme];
          v15 = [v14 caseInsensitiveCompare:v10];

          if (v15)
          {
            *(*(*(a1 + 56) + 8) + 24) = 1;
          }

          else
          {
            v16 = [NSURLComponents componentsWithURL:v13 resolvingAgainstBaseURL:0];
            v17 = [v16 path];
            if ((*(a1 + 64) & 1) != 0 || ([*(a1 + 40) _hasMDMv1ManagementForManagingProfileIdentifier:v17] & 1) == 0)
            {
              v19 = +[RMLog clientController];
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                [v12 identifier];
                v20 = v10;
                v21 = v9;
                v23 = v22 = v6;
                *buf = 138543362;
                v39 = v23;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Invalid MDMv1 management source: %{public}@", buf, 0xCu);

                v6 = v22;
                v9 = v21;
                v10 = v20;
                a1 = v29;
              }

              v24 = *(a1 + 48);
              v25 = [v12 identifier];
              [v24 addObject:v25];
            }

            else
            {
              v18 = +[RMLog clientController];
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                sub_100019EB8(v36, v12, &v37, v18);
              }

              *(*(*(a1 + 56) + 8) + 24) = 1;
            }

            v8 = v30;
          }

          v11 = v11 + 1;
        }

        while (v8 != v11);
        v8 = [v6 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v8);
      v4 = v27;
      v2 = v28;
      v5 = v26;
    }
  }

  else
  {
    v6 = +[RMLog clientController];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100019A14();
    }
  }
}

void sub_100013C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 152), 8);
  os_activity_scope_leave((v30 - 104));
  _Unwind_Resume(a1);
}

void sub_100013C64(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[11];
  v38 = 0;
  v6 = [v2 _verifyUniqueStoreWithURL:v3 enrollmentType:v5 context:v4 error:&v38];
  v7 = v38;
  v8 = v7;
  if (v6)
  {
    v9 = [[RMManagementSource alloc] initWithContext:a1[6]];
    v10 = a1[5];
    v11 = a1[12];
    v12 = a1[6];
    v13 = v10;
    if ((v11 - 2) > 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = [objc_alloc(*(&off_1000D16E8)[v11 - 2]) initWithContext:v12];
    }

    [(RMManagementSource *)v9 setBootstrapURI:a1[5]];
    [(RMManagementSource *)v9 setEnrollmentType:*(a1 + 44)];
    [(RMManagementSource *)v9 setConduitConfig:v14];
    v17 = objc_opt_new();
    [(RMManagementSource *)v9 setAuthenticationCredential:v17];

    [(RMManagementSource *)v9 setAccountIdentifier:a1[7]];
    v18 = a1[11];
    v19 = +[RMBundle managementScope];
    v20 = a1[12] - 2;
    if (v20 > 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = qword_1000A50D8[v20];
    }

    v22 = [RMCapabilities capabilitiesForEnrollmentType:v18 scope:v19 protocolType:v21];
    v23 = [v22 versionHash];
    [(RMManagementSource *)v9 setCapabilitiesVersionHash:v23];

    v24 = a1[6];
    v37 = 0;
    v25 = [v24 save:&v37];
    v26 = v37;
    if (v25)
    {
      v27 = [(RMManagementSource *)v9 objectID];
      v28 = *(a1[9] + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = v27;

      v30 = [(RMManagementSource *)v9 identifier];
      v31 = *(a1[10] + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;
    }

    else
    {
      v33 = +[RMLog clientController];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        sub_10001A138();
      }

      v34 = +[RMErrorUtilities createInternalError];
      v35 = *(a1[8] + 8);
      v36 = *(v35 + 40);
      *(v35 + 40) = v34;

      [a1[6] rollback];
    }
  }

  else
  {
    v15 = *(a1[8] + 8);
    v16 = v7;
    v9 = *(v15 + 40);
    *(v15 + 40) = v16;
  }
}

void sub_1000140F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014114(uint64_t *a1)
{
  v2 = [RMManagementSource fetchRequestWithAccountIdentifier:a1[4]];
  v3 = a1[5];
  v11 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v11];
  v5 = v11;
  if (!v4)
  {
    v6 = +[RMLog clientController];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100019A14();
    }
  }

  if ([v4 count])
  {
    v7 = +[RMLog clientController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001A208(a1 + 4);
    }

    v8 = [RMErrorUtilities createManagementSourceAlreadyExistsErrorWithAccountIdentifier:a1[4]];
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void sub_1000146D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 152), 8);
  os_activity_scope_leave((v30 - 104));
  _Unwind_Resume(a1);
}

void sub_100014724(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[12];
  v37 = 0;
  v6 = [v2 _verifyUniqueStoreWithURL:v3 enrollmentType:v5 context:v4 error:&v37];
  v7 = v37;
  v8 = v7;
  if (v6)
  {
    v9 = [[RMManagementSource alloc] initWithContext:a1[6]];
    v10 = a1[5];
    v11 = a1[13];
    v12 = a1[6];
    v13 = v10;
    if ((v11 - 2) > 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = [objc_alloc(*(&off_1000D16E8)[v11 - 2]) initWithContext:v12];
    }

    [(RMManagementSource *)v9 setBootstrapURI:a1[5]];
    [(RMManagementSource *)v9 setEnrollmentType:*(a1 + 48)];
    [(RMManagementSource *)v9 setConduitConfig:v14];
    [(RMManagementSource *)v9 setAccountIdentifier:a1[7]];
    [(RMManagementSource *)v9 setPersonaIdentifier:a1[8]];
    v17 = a1[12];
    v18 = +[RMBundle managementScope];
    v19 = a1[13] - 2;
    if (v19 > 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = qword_1000A50D8[v19];
    }

    v21 = [RMCapabilities capabilitiesForEnrollmentType:v17 scope:v18 protocolType:v20];
    v22 = [v21 versionHash];
    [(RMManagementSource *)v9 setCapabilitiesVersionHash:v22];

    v23 = a1[6];
    v36 = 0;
    v24 = [v23 save:&v36];
    v25 = v36;
    if (v24)
    {
      v26 = [(RMManagementSource *)v9 objectID];
      v27 = *(a1[10] + 8);
      v28 = *(v27 + 40);
      *(v27 + 40) = v26;

      v29 = [(RMManagementSource *)v9 identifier];
      v30 = *(a1[11] + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;
    }

    else
    {
      v32 = +[RMLog clientController];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        sub_10001A138();
      }

      v33 = +[RMErrorUtilities createInternalError];
      v34 = *(a1[9] + 8);
      v35 = *(v34 + 40);
      *(v34 + 40) = v33;

      [a1[6] rollback];
    }
  }

  else
  {
    v15 = *(a1[9] + 8);
    v16 = v7;
    v9 = *(v15 + 40);
    *(v15 + 40) = v16;
  }
}

void sub_100014D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 200), 8);
  _Block_object_dispose((v32 - 152), 8);
  os_activity_scope_leave((v32 - 120));
  _Unwind_Resume(a1);
}

void sub_100014DB4(uint64_t a1)
{
  v2 = [RMManagementSource fetchRequestWithIdentifier:*(a1 + 32)];
  v3 = *(a1 + 40);
  v41 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v41];
  v5 = v41;
  if (!v4)
  {
    v6 = +[RMErrorUtilities createInternalError];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = [v4 firstObject];
  v10 = v9;
  if (!v9)
  {
    v19 = +[RMLog clientController];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10001A4DC((a1 + 32));
    }

    v20 = [RMErrorUtilities createManagementSourceNotFoundErrorWithIdentifier:*(a1 + 32)];
    goto LABEL_22;
  }

  v11 = [v9 objectID];
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [v10 bootstrapURI];
  v15 = *(*(a1 + 64) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = [*(*(*(a1 + 64) + 8) + 40) scheme];
  if ([v17 caseInsensitiveCompare:@"https"])
  {
    if ([v17 caseInsensitiveCompare:@"file"])
    {
      v18 = 4 * ([v17 caseInsensitiveCompare:@"mdm"] == 0);
    }

    else if (+[RMFeatureFlags isFileConduitEnabled])
    {
      v18 = 3;
    }

    else
    {
      v18 = 1;
    }
  }

  else if (+[RMFeatureFlags isHTTPConduitEnabled])
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  *(*(*(a1 + 72) + 8) + 24) = v18;
  if (*(*(*(a1 + 72) + 8) + 24) != 4)
  {
    v29 = +[RMLog clientController];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10001A46C((a1 + 64));
    }

    v20 = [NSError errorWithDomain:NSCocoaErrorDomain code:262 userInfo:0];
LABEL_22:
    v30 = *(*(a1 + 48) + 8);
    v24 = *(v30 + 40);
    *(v30 + 40) = v20;
    goto LABEL_29;
  }

  v21 = *(a1 + 40);
  v22 = *(*(*(a1 + 64) + 8) + 40);
  v23 = v21;
  v24 = [[RMMDMConduitConfig alloc] initWithContext:v23];

  [v10 setConduitConfig:v24];
  v25 = [v10 enrollmentType];
  v26 = +[RMBundle managementScope];
  v27 = *(*(*(a1 + 72) + 8) + 24) - 2;
  if (v27 > 2)
  {
    v28 = 2;
  }

  else
  {
    v28 = qword_1000A50D8[v27];
  }

  v31 = [RMCapabilities capabilitiesForEnrollmentType:v25 scope:v26 protocolType:v28];
  v32 = [v31 versionHash];
  [v10 setCapabilitiesVersionHash:v32];

  v33 = *(a1 + 40);
  v40 = 0;
  v34 = [v33 save:&v40];
  v35 = v40;
  if ((v34 & 1) == 0)
  {
    v36 = +[RMLog clientController];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      sub_10001A138();
    }

    v37 = +[RMErrorUtilities createInternalError];
    v38 = *(*(a1 + 48) + 8);
    v39 = *(v38 + 40);
    *(v38 + 40) = v37;

    [*(a1 + 40) rollback];
  }

LABEL_29:
}

void sub_10001538C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = v4;
  if (v3)
  {
    [v4 addObject:v3];
    v6 = +[RMLog clientController];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10001A614();
    }

    [*(a1 + 32) _unenrollAndReenrollIfDEP:*(a1 + 40)];
  }

  v7 = *(a1 + 48);
  v8 = [RMErrorUtilities createMultipleErrorOrReturnTheSingleErrorWithErrors:v5];
  (*(v7 + 16))(v7, v8);
}

void sub_1000159DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 152), 8);
  os_activity_scope_leave((v30 - 104));
  _Unwind_Resume(a1);
}

void sub_100015A38(uint64_t a1)
{
  v2 = [[RMManagementSource alloc] initWithContext:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = *(a1 + 88);
  v5 = *(a1 + 32);
  v6 = v3;
  if ((v4 - 2) > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_alloc(*(&off_1000D16E8)[v4 - 2]) initWithContext:v5];
  }

  [(RMManagementSource *)v2 setBootstrapURI:*(a1 + 40)];
  [(RMManagementSource *)v2 setEnrollmentType:0];
  [(RMManagementSource *)v2 setConduitConfig:v7];
  [(RMManagementSource *)v2 setAuthenticationCredential:*(a1 + 48)];
  v8 = [*(a1 + 56) identifier];
  [(RMManagementSource *)v2 setAccountIdentifier:v8];

  v9 = +[RMBundle managementScope];
  v10 = *(a1 + 88) - 2;
  if (v10 > 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = qword_1000A50D8[v10];
  }

  v12 = [RMCapabilities capabilitiesForEnrollmentType:0 scope:v9 protocolType:v11];
  v13 = [v12 versionHash];
  [(RMManagementSource *)v2 setCapabilitiesVersionHash:v13];

  v14 = *(a1 + 32);
  v27 = 0;
  v15 = [v14 save:&v27];
  v16 = v27;
  if (v15)
  {
    v17 = [(RMManagementSource *)v2 objectID];
    v18 = *(*(a1 + 72) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v20 = [(RMManagementSource *)v2 identifier];
    v21 = *(*(a1 + 80) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;
  }

  else
  {
    v23 = +[RMLog clientController];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_10001A138();
    }

    v24 = +[RMErrorUtilities createInternalError];
    v25 = *(*(a1 + 64) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    [*(a1 + 32) rollback];
  }
}

void sub_100015F78(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = v3;
  if (v3)
  {
    [v4 _didFailToEnrollClientForManagementObjectID:a1[5]];
    (*(a1[9] + 16))();
  }

  else
  {
    [v4 _didEnrollClient:a1[6] conduitType:a1[10] managementSourceObjectID:a1[5] account:a1[7] accountStore:a1[8] completionHandler:a1[9]];
  }
}

void sub_1000164AC(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) objectWithID:*(a1 + 40)];
  [*(v2 - 1) deleteObject:v3];
  v4 = *(v2 - 1);
  v8 = 0;
  v5 = [v4 save:&v8];
  v6 = v8;
  if ((v5 & 1) == 0)
  {
    v7 = +[RMLog clientController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10001AB40(v2);
    }

    [*(a1 + 32) rollback];
  }
}

void sub_1000169C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 200), 8);
  _Block_object_dispose((v27 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_100016A14(uint64_t a1)
{
  v10 = [*(a1 + 32) objectWithID:*(a1 + 40)];
  v2 = [v10 identifier];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [v10 conduitConfig];
  v6 = [v5 state];
  v7 = [v6 enrollmentToken];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_100016AC8(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
  }
}

void sub_100016B34(uint64_t a1)
{
  v2 = [*(a1 + 32) objectWithID:*(a1 + 40)];
  [v2 setEnrolled:1];
  v3 = *(a1 + 32);
  v7 = 0;
  v4 = [v3 save:&v7];
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v6 = +[RMLog clientController];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10001ABB4();
    }
  }
}

void sub_100016DD8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = v6;
  if (v5)
  {
    [v6 addObject:v5];
  }

  v8 = a1[4];
  v9 = a1[5];
  v14 = 0;
  v10 = [v8 _didUnenrollClientWithIdentifier:v9 error:&v14];
  v11 = v14;
  if ((v10 & 1) == 0)
  {
    [v7 addObject:v11];
  }

  v12 = a1[6];
  v13 = [RMErrorUtilities createMultipleErrorOrReturnTheSingleErrorWithErrors:v7];
  (*(v12 + 16))(v12, a2, v13);
}

void sub_10001710C(uint64_t a1)
{
  v2 = [RMManagementSource fetchRequestWithIdentifier:*(a1 + 32)];
  v3 = *(a1 + 40);
  v25 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v25];
  v5 = v25;
  if (v4)
  {
    v6 = [v4 firstObject];
    if (v6)
    {
      [*(a1 + 40) deleteObject:v6];
      v7 = *(a1 + 40);
      v24 = 0;
      v8 = [v7 save:&v24];
      v9 = v24;
      if (v8)
      {
        v10 = +[RMManagementSource fetchRequest];
        [v10 setResultType:4];
        v11 = *(a1 + 40);
        v23 = 0;
        v12 = [v11 executeFetchRequest:v10 error:&v23];
        v13 = v23;
        v14 = [v12 firstObject];

        if (v14)
        {
          *(*(*(a1 + 56) + 8) + 24) = [v14 longLongValue] > 0;
        }

        else
        {
          v22 = +[RMLog clientController];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            sub_10001AD54();
          }
        }
      }

      else
      {
        v18 = +[RMLog clientController];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          sub_10001ACEC();
        }

        v19 = +[RMErrorUtilities createInternalError];
        v20 = *(*(a1 + 48) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        [*(a1 + 40) rollback];
      }
    }

    else
    {
      v9 = +[RMLog clientController];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10001ADBC((a1 + 32));
      }
    }
  }

  else
  {
    v15 = +[RMLog clientController];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_10001AE24((a1 + 32));
    }

    v16 = +[RMErrorUtilities createInternalError];
    v17 = *(*(a1 + 48) + 8);
    v6 = *(v17 + 40);
    *(v17 + 40) = v16;
  }
}

void sub_10001747C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100017494(uint64_t a1)
{
  v2 = +[RMManagementSource fetchRequestWithDeviceChannel];
  v7 = 0;
  v3 = [v2 execute:&v7];
  v4 = v7;
  if (v3)
  {
    v5 = [v3 firstObject];
    v6 = [v5 bootstrapURI];
  }

  else
  {
    v5 = +[RMLog clientController];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100019C48();
    }

    v6 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6 != 0;
}

void sub_100017718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10001773C(void *a1)
{
  v2 = [RMManagementSource fetchRequestWithAccountIdentifier:a1[4]];
  v3 = a1[5];
  v13 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v13];
  v5 = v13;
  if (!v4)
  {
    v11 = +[RMErrorUtilities createInternalError];
    v12 = *(a1[6] + 8);
    v7 = *(v12 + 40);
    *(v12 + 40) = v11;
    goto LABEL_5;
  }

  if ([v4 count] == 1)
  {
    v6 = [RMManagementChannel alloc];
    v7 = [v4 objectAtIndexedSubscript:0];
    v8 = [v6 initWithManagementSource:v7];
    v9 = *(a1[7] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

LABEL_5:
  }
}

void sub_1000179D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000179FC(void *a1)
{
  v2 = [NSURL URLWithString:a1[4]];
  v3 = [RMManagementSource fetchRequestWithBootstrapURI:v2];
  v4 = a1[5];
  v14 = 0;
  v5 = [v4 executeFetchRequest:v3 error:&v14];
  v6 = v14;
  if (!v5)
  {
    v12 = +[RMErrorUtilities createInternalError];
    v13 = *(a1[6] + 8);
    v8 = *(v13 + 40);
    *(v13 + 40) = v12;
    goto LABEL_5;
  }

  if ([v5 count] == 1)
  {
    v7 = [RMManagementChannel alloc];
    v8 = [v5 objectAtIndexedSubscript:0];
    v9 = [v7 initWithManagementSource:v8];
    v10 = *(a1[7] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

LABEL_5:
  }
}

void sub_100017DD8(uint64_t a1)
{
  v2 = +[RMManagementSource fetchRequest];
  v3 = *(a1 + 32);
  v13 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v13];
  v5 = v13;
  if (v4)
  {
    v6 = [v4 count];
    v7 = [*(a1 + 40) lockStateListener];
    v8 = v7;
    if (v6)
    {
      [v7 startListening];
    }

    else
    {
      [v7 stopListening];
    }

    v9 = [v4 valueForKey:@"identifier"];
    v10 = [NSSet setWithArray:v9];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    v9 = +[RMLog clientController];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10001AE98();
    }
  }
}

void sub_1000181E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  dispatch_group_enter(v6);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000182B8;
  v9[3] = &unk_1000D13B8;
  v10 = v5;
  v11 = *(a1 + 32);
  v8 = v5;
  [v7 syncWithCompletionHandler:v9];
}

void sub_1000182B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog clientController];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001AFD0(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Synced identifier: %{public}@", &v7, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_1000183A8(uint64_t a1)
{
  v2 = +[RMLog clientController];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Accounts synchronized.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1000191F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100019214(uint64_t a1)
{
  v2 = +[RMLog clientController];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B448(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001931C;
  v5[3] = &unk_1000D16A0;
  v6 = v4;
  objc_copyWeak(&v7, (a1 + 40));
  [WeakRetained reenrollWithIdentifier:v6 completionHandler:v5];

  objc_destroyWeak(&v7);
}

void sub_10001931C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog clientController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "reenrollWithIdentifier %{public}@  error %{public}@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _completedClientStateChanges:*(a1 + 32)];
}

void sub_100019714(void *a1)
{
  v2 = [RMManagementSource fetchRequestWithIdentifier:a1[4]];
  v3 = a1[5];
  v8 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v8];
  v5 = v8;
  if (!v4)
  {
    v6 = +[RMLog clientController];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100019A14();
    }
  }

  v7 = [v4 firstObject];
  *(*(a1[6] + 8) + 24) = [v7 enrollmentType];
}

void sub_100019834(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t *sub_10001987C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t sub_100019898@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void sub_1000198CC()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000199D8()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019A7C(uint64_t a1)
{
  sub_100019898(a1, __stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v1, v2, "Failed to unenroll with %{public}@: %{public}@");
}

void sub_100019B5C()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019B98(uint64_t a1, uint64_t a2)
{
  sub_100019854(a2, __stack_chk_guard);
  sub_1000197F8();
  sub_100019870();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);
}

void sub_100019C0C()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019D18(uint64_t a1)
{
  sub_100019898(a1, __stack_chk_guard);
  sub_100019864();
  sub_10000A924(&_mh_execute_header, v1, v2, "Executing queued unenroll for client identifier %{public}@", v3, v4, v5, v6, v7);
}

void sub_100019D80()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019E24()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100019E60(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Starting to check MDMv1 management sources with unenroll %{public}@...", buf, 0xCu);
}

void sub_100019EB8(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 identifier];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Valid MDMv1 management source: %{public}@", a1, 0xCu);
}

void sub_100019F98(uint64_t a1, uint64_t a2)
{
  sub_100019854(a2, __stack_chk_guard);
  sub_1000197F8();
  sub_100019834(&_mh_execute_header, v2, v3, "Failed to enroll device channel at %{public}@: %{public}@");
}

void sub_10001A208(uint64_t *a1)
{
  sub_10001987C(a1, __stack_chk_guard);
  sub_100019864();
  sub_100006C58(&_mh_execute_header, v1, v2, "A user channel management source for account %{public}@ already exists", v3, v4, v5, v6, v7);
}

void sub_10001A404(uint64_t a1, uint64_t a2)
{
  sub_100019854(a2, __stack_chk_guard);
  sub_1000197F8();
  sub_100019834(&_mh_execute_header, v2, v3, "Failed to take ownership of %{public}@: %{public}@");
}

void sub_10001A46C(uint64_t *a1)
{
  sub_10001987C(a1, __stack_chk_guard);
  v2 = *(*(v1 + 8) + 40);
  sub_100019864();
  sub_100006C58(&_mh_execute_header, v3, v4, "Failed to enroll DDM at %{public}@: Incorrect scheme", v5, v6, v7, v8, v9);
}

void sub_10001A4DC(uint64_t *a1)
{
  sub_10001987C(a1, __stack_chk_guard);
  sub_100019864();
  sub_100006C58(&_mh_execute_header, v1, v2, "Management source for %{public}@ disappeared before we could take ownership.", v3, v4, v5, v6, v7);
}

void sub_10001A6E4(uint64_t a1, uint64_t a2)
{
  sub_100019854(a2, __stack_chk_guard);
  sub_1000197F8();
  sub_100019834(&_mh_execute_header, v2, v3, "Failed to enroll user channel at %{public}@: %{public}@");
}

void sub_10001A954(void *a1)
{
  v2 = [a1 rm_accountScheme];
  v8 = [a1 identifier];
  sub_100019888();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10001AA10(void *a1)
{
  v1 = [a1 identifier];
  sub_100006C08();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10001AA9C(void *a1)
{
  v1 = [a1 rm_accountScheme];
  sub_100006C08();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10001AB40(uint64_t *a1)
{
  sub_10001987C(a1, __stack_chk_guard);
  sub_100019810();
  sub_100019870();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x16u);
}

void sub_10001ADBC(uint64_t *a1)
{
  sub_10001987C(a1, __stack_chk_guard);
  sub_100019864();
  sub_100006C58(&_mh_execute_header, v1, v2, "Management source for %{public}@ disappeared before we could delete it.", v3, v4, v5, v6, v7);
}

void sub_10001AE24(uint64_t *a1)
{
  sub_10001987C(a1, __stack_chk_guard);
  sub_100019810();
  sub_100019870();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x16u);
}

void sub_10001AFD0(uint64_t a1)
{
  sub_100019898(a1, __stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v1, v2, "Could not sync identifier %{public}@: %{public}@");
}

void sub_10001B448(uint64_t a1)
{
  sub_100019898(a1, __stack_chk_guard);
  sub_100019864();
  sub_10000A924(&_mh_execute_header, v1, v2, "Executing queued re-enroll for client identifier %{public}@", v3, v4, v5, v6, v7);
}

void sub_10001B5C4(id a1)
{
  qword_1000E6768 = os_log_create("com.apple.remotemanagementd", "cloudConfigController");

  _objc_release_x1();
}

void sub_10001BB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001BB50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001BB68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[RMLog cloudConfigController];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10001BF98();
    }

    v9 = +[RMErrorUtilities createInternalError];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    [*(a1 + 32) lock];
    [*(a1 + 32) unlockWithCondition:1];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10001C000();
    }

    v12 = [v6 mutableCopy];
    [v12 setObject:&off_1000D6E38 forKeyedSubscript:kCCConfigurationSourceKey];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001BCF8;
    v14[3] = &unk_1000D1728;
    v13 = *(a1 + 40);
    v17 = *(a1 + 48);
    v15 = v6;
    v16 = *(a1 + 32);
    [v13 storeCloudConfigurationDetails:v12 completion:v14];
  }
}

void sub_10001BCF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog cloudConfigController];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001C070();
    }

    v6 = +[RMErrorUtilities createInternalError];
    v7 = *(*(a1 + 48) + 8);
    v5 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10001C0D8(a1);
  }

  [*(a1 + 40) lock];
  [*(a1 + 40) unlockWithCondition:1];
}

void sub_10001BDD0()
{
  sub_100006C08();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001BEE8()
{
  sub_100006C08();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001C000()
{
  sub_100006C08();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10001C0D8(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_100019828();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10001C194(id a1)
{
  qword_1000E6778 = os_log_create("com.apple.remotemanagementd", "commandEngine");

  _objc_release_x1();
}

void sub_10001C5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  os_activity_scope_leave((v31 - 96));
  _Unwind_Resume(a1);
}

uint64_t sub_10001C63C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001C654(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = [[RMManagementChannel alloc] initWithManagementSource:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = +[RMLog commandEngine];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10001D698();
  }

  v9 = [*(a1 + 40) _fetchCommand];
  v10 = +[RMLog commandEngine];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    if (v11)
    {
      sub_10001D6CC(v9, v10);
    }

    v12 = [[RMCommandPayloadState alloc] initWithContext:*(a1 + 32)];
    [v9 setState:v12];

    v13 = [v9 payload];
    v36 = 0;
    v14 = [RMModelCommandBase loadData:v13 serializationType:1 error:&v36];
    v15 = v36;
    v16 = a1 + 56;
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v14;

    v19 = *(*(*(a1 + 56) + 8) + 40);
    if (v19)
    {
      if ([v19 conformsToProtocol:&OBJC_PROTOCOL___RMCommandExecutor])
      {
LABEL_26:

        goto LABEL_27;
      }

      v20 = +[RMLog commandEngine];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10001D744();
      }

      v21 = [v9 state];
      [v21 markFailedWithError:v15 reasons:0];

      v22 = *(a1 + 32);
      v34 = v15;
      v23 = [v22 save:&v34];
      v24 = v34;

      if (v23)
      {
        v25 = 0;
        v26 = 1;
LABEL_24:
        v32 = *(*v16 + 8);
        v33 = *(v32 + 40);
        *(v32 + 40) = v25;

        goto LABEL_25;
      }

      v31 = +[RMLog commandEngine];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10001D828();
      }
    }

    else
    {
      v27 = +[RMLog commandEngine];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10001D8BC();
      }

      v28 = [v9 state];
      [v28 markFailedWithError:v15 reasons:0];

      v29 = *(a1 + 32);
      v35 = v15;
      v30 = [v29 save:&v35];
      v24 = v35;

      if (v30)
      {
        v26 = 1;
LABEL_25:
        *(*(*(a1 + 72) + 8) + 24) = v26;
        v15 = v24;
        goto LABEL_26;
      }

      v31 = +[RMLog commandEngine];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10001D828();
      }
    }

    [*(a1 + 32) rollback];
    v25 = +[RMErrorUtilities createInternalError];
    v26 = 0;
    v16 = a1 + 64;
    goto LABEL_24;
  }

  if (v11)
  {
    sub_10001D950();
  }

  *(*(*(a1 + 72) + 8) + 24) = 0;
LABEL_27:
}

void sub_10001CD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 216), 8);
  _Block_object_dispose((v36 - 168), 8);
  _Block_object_dispose((v36 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_10001CD60(uint64_t a1, void *a2, __int16 a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = *(*(a1 + 40) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v13;
  v32 = v13;

  *(*(*(a1 + 48) + 8) + 24) = a3;
  v20 = *(*(a1 + 56) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v14;
  v22 = v14;

  v23 = *(*(a1 + 64) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v15;
  v25 = v15;

  v26 = *(*(a1 + 72) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v16;
  v28 = v16;

  v29 = *(*(a1 + 80) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v17;
  v31 = v17;

  [*(a1 + 32) lock];
  [*(a1 + 32) unlockWithCondition:*(a1 + 88)];
}

void sub_10001D230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v13 - 96));
  _Unwind_Resume(a1);
}

void sub_10001D258(uint64_t a1)
{
  v2 = +[RMCommandPayload fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"%K == %@", @"identifier", *(a1 + 32)];
  [v2 setPredicate:v3];

  v27 = 0;
  v4 = [v2 execute:&v27];
  v5 = v27;
  if (v4)
  {
    v6 = [v4 firstObject];
    v7 = v6;
    if (!v6)
    {
      v20 = +[RMLog commandEngine];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10001DB30((a1 + 32), v20);
      }

      v21 = +[RMErrorUtilities createInternalError];
      v22 = *(*(a1 + 80) + 8);
      v16 = *(v22 + 40);
      *(v22 + 40) = v21;
      goto LABEL_19;
    }

    if (*(a1 + 40))
    {
      v8 = [v6 state];
      v9 = v8;
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
    }

    else
    {
      v25 = *(a1 + 88);
      v8 = [v6 state];
      v9 = v8;
      if (v25 != 2)
      {
        if (v25 == 1)
        {
          [v8 markExecutedWithResult:*(a1 + 56) reasons:*(a1 + 48) unknownPayloadKeys:*(a1 + 64)];
        }

        else
        {
          [v8 markPending];
        }

        goto LABEL_6;
      }

      v11 = *(a1 + 48);
      v10 = 0;
    }

    [v8 markFailedWithError:v10 reasons:v11];
LABEL_6:

    v12 = *(a1 + 72);
    v26 = v5;
    v13 = [v12 save:&v26];
    v14 = v26;

    v15 = +[RMLog commandEngine];
    v16 = v15;
    if (v13)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_10001DA78((a1 + 32), v7, v16);
      }
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10001D9FC((a1 + 32));
      }

      [*(a1 + 72) rollback];
      v23 = +[RMErrorUtilities createInternalError];
      v24 = *(*(a1 + 80) + 8);
      v16 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    v5 = v14;
LABEL_19:

    goto LABEL_20;
  }

  v17 = +[RMLog commandEngine];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    sub_10001DBAC((a1 + 32));
  }

  v18 = +[RMErrorUtilities createInternalError];
  v19 = *(*(a1 + 80) + 8);
  v7 = *(v19 + 40);
  *(v19 + 40) = v18;
LABEL_20:
}

void sub_10001D6CC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Pending command to process: %{public}@", &v2, 0xCu);
}

void sub_10001D744()
{
  sub_100006C3C();
  v2 = [v1 identifier];
  v3 = *(*(*v0 + 8) + 40);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v11 = NSStringFromProtocol(&OBJC_PROTOCOL___RMCommandExecutor);
  sub_100019888();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_10001D828()
{
  sub_100006C3C();
  v1 = [v0 identifier];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10001D8BC()
{
  sub_100006C3C();
  v1 = [v0 identifier];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10001D984(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Error fetching next command: %{public}@", &v2, 0xCu);
}

void sub_10001D9FC(uint64_t *a1)
{
  v1 = *a1;
  sub_100019810();
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to save context when processing command %{public}@: %{public}@", v3, 0x16u);
}

void sub_10001DA78(uint64_t *a1, void *a2, NSObject *a3)
{
  v4 = *a1;
  v5 = [a2 state];
  v6 = 138543618;
  v7 = v4;
  v8 = 1024;
  v9 = [v5 status];
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Executed command: %{public}@, result: %d", &v6, 0x12u);
}

void sub_10001DB30(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Missing command %{public}@ when processing result", &v3, 0xCu);
}

void sub_10001DBAC(uint64_t *a1)
{
  v1 = *a1;
  sub_100019810();
  _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Error fetching command %{public}@ to process its result: %{public}@", v3, 0x16u);
}

void sub_10001EAC8(id a1)
{
  qword_1000E6788 = os_log_create("com.apple.remotemanagementd", "configurationEventStreamSubscription");

  _objc_release_x1();
}

void sub_10001F94C(id a1)
{
  qword_1000E6798 = os_log_create("com.apple.remotemanagementd", "configurationPublisher");

  _objc_release_x1();
}

void sub_10001F9D4(id a1)
{
  qword_1000E67A8 = +[RMConfigurationPublisher _start];

  _objc_release_x1();
}

void sub_10001FC38(uint64_t a1, int a2, uint64_t a3)
{
  v6 = _CFXPCCreateCFObjectFromXPCObject();
  v7 = +[RMLog configurationPublisher];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v17[0] = 67109634;
    v17[1] = a2;
    v18 = 2048;
    v19 = a3;
    v20 = 2112;
    v21 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Configuration event publisher action = %d, token = %llu, descriptor = %@", v17, 0x1Cu);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      [*(a1 + 32) _removeEventStreamSubscriberForToken:a3];
    }

    else if (a2 == 2)
    {
      [*(a1 + 32) _start];
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v6;
    v11 = v9;
    v12 = [RMConfigurationSubscriberDescription descriptionWithEventsDictionary:v10];
    v13 = [v12 types];
    if (v13)
    {
      v14 = [NSSet setWithArray:v13];
    }

    else
    {
      v14 = objc_opt_new();
    }

    v15 = v14;
    v16 = [[RMConfigurationEventStreamSubscription alloc] initWithToken:a3 configurationTypes:v14 eventPublisher:v11];

    [v8 _addEventStreamSubscriberWithSubscription:v16];
  }
}

id sub_10001FE04(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = +[RMLog configurationPublisher];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100022590(a2, v4);
    }
  }

  return [*(a1 + 32) _start];
}

void sub_1000207E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_activity_scope_state_s state)
{
  objc_sync_exit(v19);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_100020B38(uint64_t a1)
{
  v2 = +[RMConfigurationPayload fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"(%K == YES) && ((%K == NULL) || (%K == YES))", @"state.active", @"ui", @"ui.visible"];
  [v2 setPredicate:v3];

  v28 = 0;
  v4 = [v2 execute:&v28];
  v5 = v28;
  if (!v4)
  {
    v6 = +[RMLog configurationPublisher];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10002291C();
    }
  }

  v7 = [NSSet setWithArray:v4];

  if ([v7 count])
  {
    v21 = a1;
    v22 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v7 count]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v20 = v7;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          v13 = [v12 managementSource];
          v14 = [v13 identifier];
          v15 = [v12 identifier];
          v16 = [v12 serverToken];
          v17 = [RMConfigurationStatusArchiver validStatusForStoreIdentifier:v14 declarationIdentifier:v15 serverToken:v16];

          if (v17)
          {
            v18 = [v12 declarationType];
            [v22 addObject:v18];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }

    v19 = v22;
    [*(v21 + 32) _notifyMissingConfigurationUIsForTypes:v22];
    v7 = v20;
  }

  else
  {
    v19 = +[RMLog configurationPublisher];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100022990();
    }
  }
}

void sub_1000215AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyChangedConfigurationsIfNeeded];
}

void sub_100021AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id obj, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  _Block_object_dispose(&a21, 8);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

uint64_t sub_100021B2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100021B44(uint64_t a1)
{
  v2 = +[RMConfigurationPayload fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"%K == YES", @"state.active"];
  [v2 setPredicate:v3];

  v13 = @"assetReferences.asset";
  v4 = [NSArray arrayWithObjects:&v13 count:1];
  [v2 setRelationshipKeyPathsForPrefetching:v4];

  v12 = 0;
  v5 = [v2 execute:&v12];
  v6 = v12;
  if (!v5)
  {
    v7 = +[RMLog configurationPublisher];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100022A94();
    }
  }

  v8 = [NSSet setWithArray:v5];

  v9 = [[RMPersistentActiveIdentifiers alloc] initWithConfigurationPayloads:v8];
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_100022548(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100022590(uint64_t a1, NSObject *a2)
{
  xpc_strerror();
  sub_100006C08();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Configuration event publisher failed with an error: %{public}s", v3, 0xCu);
}

void sub_100022858(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Starting configuration subscriber for %{public}@...", buf, 0xCu);
}

void sub_100022B08(void *a1)
{
  v1 = [a1 allObjects];
  v2 = [v1 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v3 = [v2 componentsJoinedByString:{@", "}];

  sub_100022548(&_mh_execute_header, v4, v5, "Notifying configuration subscribers with configurations of types: %{public}@", v6, v7, v8, v9, 2u);
}

void sub_100022BC8(void *a1)
{
  v1 = [a1 allObjects];
  v2 = [v1 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v3 = [v2 componentsJoinedByString:{@", "}];

  sub_100022548(&_mh_execute_header, v4, v5, "Notifying configuration subscribers for UI with configurations of types: %{public}@", v6, v7, v8, v9, 2u);
}

void sub_100022CCC(id a1)
{
  qword_1000E67B8 = os_log_create("com.apple.remotemanagementd", "configurationQuerier");

  _objc_release_x1();
}

void sub_100022F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100022F9C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100022FB4(uint64_t a1)
{
  +[RMConfigurationPayload fetchRequest];
  v42 = v41 = a1;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %d) && (%K == YES) && (%K in %@)", @"managementSource.identifier", v2, @"loadState", 1, @"state.active", @"declarationType", v3];
  }

  else
  {
    [NSPredicate predicateWithFormat:@"(%K != nil) && (%K == %d) && (%K == YES) && (%K in %@)", @"managementSource", @"loadState", 1, @"state.active", @"declarationType", v3, v38];
  }
  v4 = ;
  [v42 setPredicate:v4];

  v64 = 0;
  v5 = [v42 execute:&v64];
  v40 = v64;
  if (v5)
  {
    v6 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v39 = v5;
    obj = v5;
    v46 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
    if (v46)
    {
      v44 = *v61;
      v45 = v6;
      do
      {
        for (i = 0; i != v46; i = i + 1)
        {
          if (*v61 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v60 + 1) + 8 * i);
          v9 = [v8 declarationType];
          v10 = [v6 objectForKeyedSubscript:v9];
          if (!v10)
          {
            v10 = objc_opt_new();
            [v6 setObject:v10 forKeyedSubscript:v9];
          }

          v11 = v8;
          v12 = [RMManagementChannel alloc];
          v13 = [v11 managementSource];
          v14 = [v12 initWithManagementSource:v13];

          v54 = [RMConfiguration alloc];
          v15 = [v11 declarationType];
          v16 = [v11 identifier];
          v17 = [v11 serverToken];
          v53 = [v11 payload];
          v18 = [v11 assetReferences];
          v59 = v14;
          v55 = v10;
          v56 = v9;
          v52 = v18;
          if ([v18 count])
          {
            v47 = v17;
            v48 = v16;
            v49 = v15;
            v50 = v11;
            v51 = i;
            v19 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v18 count]);
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v57 = v18;
            v20 = [v57 countByEnumeratingWithState:&v65 objects:v70 count:16];
            if (v20)
            {
              v21 = v20;
              v58 = *v66;
              do
              {
                for (j = 0; j != v21; j = j + 1)
                {
                  if (*v66 != v58)
                  {
                    objc_enumerationMutation(v57);
                  }

                  v23 = [*(*(&v65 + 1) + 8 * j) asset];
                  v24 = v59;
                  v25 = [RMAsset alloc];
                  v26 = [v23 declarationType];
                  v27 = [v23 identifier];
                  v28 = [v23 serverToken];
                  v29 = [v23 payload];
                  v30 = [v25 initWithType:v26 identifier:v27 serverToken:v28 content:v29 channel:v24];

                  v31 = [v30 identifier];
                  [v19 setObject:v30 forKeyedSubscript:v31];
                }

                v21 = [v57 countByEnumeratingWithState:&v65 objects:v70 count:16];
              }

              while (v21);
            }

            v32 = v19;
            v11 = v50;
            i = v51;
            v16 = v48;
            v15 = v49;
            v17 = v47;
          }

          else
          {
            v32 = 0;
          }

          v33 = [v54 initWithType:v15 identifier:v16 serverToken:v17 content:v53 channel:v59 assetByIdentifier:v32];
          [v55 addObject:v33];

          v6 = v45;
        }

        v46 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v46);
    }

    v34 = 56;
    v5 = v39;
  }

  else
  {
    v35 = +[RMLog configurationQuerier];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      sub_10002443C(v41);
    }

    v6 = +[RMErrorUtilities createInternalError];
    v34 = 48;
  }

  v36 = *(*(v41 + v34) + 8);
  v37 = *(v36 + 40);
  *(v36 + 40) = v6;
}

void sub_100023710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100023734(uint64_t a1)
{
  v2 = +[RMConfigurationPayload fetchRequest];
  v38 = a1;
  v3 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %d) && (%K == YES)", @"managementSource.identifier", *(a1 + 32), @"loadState", 1, @"state.active"];
  [v2 setPredicate:v3];

  v60 = 0;
  v39 = v2;
  v4 = [v2 execute:&v60];
  v40 = v60;
  if (v4)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v37 = v4;
    obj = v4;
    v44 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (v44)
    {
      v42 = *v57;
      v43 = v5;
      do
      {
        v6 = 0;
        do
        {
          if (*v57 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v56 + 1) + 8 * v6);
          v8 = [RMManagementChannel alloc];
          v9 = [v7 managementSource];
          v10 = [v8 initWithManagementSource:v9];

          v11 = [RMConfiguration alloc];
          v12 = [v7 declarationType];
          v13 = [v7 identifier];
          v14 = [v7 serverToken];
          v15 = [v7 payload];
          v16 = [v7 assetReferences];
          v55 = v10;
          v52 = v16;
          if ([v16 count])
          {
            v45 = v15;
            v46 = v11;
            v47 = v14;
            v48 = v13;
            v49 = v12;
            v50 = v7;
            v51 = v6;
            v17 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v16 count]);
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v53 = v16;
            v18 = [v53 countByEnumeratingWithState:&v61 objects:v66 count:16];
            if (v18)
            {
              v19 = v18;
              v54 = *v62;
              do
              {
                v20 = 0;
                do
                {
                  v21 = v17;
                  if (*v62 != v54)
                  {
                    objc_enumerationMutation(v53);
                  }

                  v22 = [*(*(&v61 + 1) + 8 * v20) asset];
                  v23 = v55;
                  v24 = [RMAsset alloc];
                  v25 = [v22 declarationType];
                  v26 = [v22 identifier];
                  v27 = [v22 serverToken];
                  v28 = [v22 payload];
                  v29 = [v24 initWithType:v25 identifier:v26 serverToken:v27 content:v28 channel:v23];

                  v30 = [v29 identifier];
                  v17 = v21;
                  [v21 setObject:v29 forKeyedSubscript:v30];

                  v20 = v20 + 1;
                }

                while (v19 != v20);
                v19 = [v53 countByEnumeratingWithState:&v61 objects:v66 count:16];
              }

              while (v19);
            }

            v7 = v50;
            v6 = v51;
            v13 = v48;
            v12 = v49;
            v11 = v46;
            v14 = v47;
            v15 = v45;
            v31 = v17;
          }

          else
          {
            v31 = 0;
          }

          v32 = [v11 initWithType:v12 identifier:v13 serverToken:v14 content:v15 channel:v55 assetByIdentifier:v31];
          v5 = v43;
          [v43 addObject:v32];

          v6 = v6 + 1;
        }

        while (v6 != v44);
        v44 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v44);
    }

    v33 = 48;
    v4 = v37;
  }

  else
  {
    v34 = +[RMLog configurationQuerier];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      sub_1000244A8(v40, v34);
    }

    v5 = +[RMErrorUtilities createInternalError];
    v33 = 40;
  }

  v35 = *(*(v38 + v33) + 8);
  v36 = *(v35 + 40);
  *(v35 + 40) = v5;
}

void sub_100023E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100023E64(uint64_t a1)
{
  v2 = +[RMConfigurationPayload fetchRequest];
  v40 = a1;
  v4 = *(a1 + 40);
  v3 = (a1 + 40);
  v5 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %d) && (%K == YES) && (%K in %@) && ((%K == NULL) || (%K == YES))", @"managementSource.identifier", *(v3 - 1), @"loadState", 1, @"state.active", @"declarationType", v4, @"ui", @"ui.visible"];
  [v2 setPredicate:v5];

  v64 = 0;
  v41 = v2;
  v6 = [v2 execute:&v64];
  v42 = v64;
  if (v6)
  {
    v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v39 = v6;
    obj = v6;
    v46 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
    if (v46)
    {
      v44 = *v61;
      v45 = v7;
      do
      {
        for (i = 0; i != v46; i = i + 1)
        {
          if (*v61 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v60 + 1) + 8 * i);
          v10 = [v9 declarationType];
          v11 = [v7 objectForKeyedSubscript:v10];
          if (!v11)
          {
            v11 = objc_opt_new();
            [v7 setObject:v11 forKeyedSubscript:v10];
          }

          v12 = v9;
          v13 = [RMManagementChannel alloc];
          v14 = [v12 managementSource];
          v15 = [v13 initWithManagementSource:v14];

          v16 = [RMConfiguration alloc];
          v17 = [v12 declarationType];
          v18 = [v12 identifier];
          v54 = [v12 serverToken];
          v53 = [v12 payload];
          v19 = [v12 assetReferences];
          v59 = v15;
          v55 = v11;
          v56 = v10;
          v52 = v19;
          if ([v19 count])
          {
            v47 = v16;
            v48 = v18;
            v49 = v17;
            v50 = v12;
            v51 = i;
            v20 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v19 count]);
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v57 = v19;
            v21 = [v57 countByEnumeratingWithState:&v65 objects:v70 count:16];
            if (v21)
            {
              v22 = v21;
              v58 = *v66;
              do
              {
                for (j = 0; j != v22; j = j + 1)
                {
                  if (*v66 != v58)
                  {
                    objc_enumerationMutation(v57);
                  }

                  v24 = [*(*(&v65 + 1) + 8 * j) asset];
                  v25 = v59;
                  v26 = [RMAsset alloc];
                  v27 = [v24 declarationType];
                  v28 = [v24 identifier];
                  v29 = [v24 serverToken];
                  v30 = [v24 payload];
                  v31 = [v26 initWithType:v27 identifier:v28 serverToken:v29 content:v30 channel:v25];

                  v32 = [v31 identifier];
                  [v20 setObject:v31 forKeyedSubscript:v32];
                }

                v22 = [v57 countByEnumeratingWithState:&v65 objects:v70 count:16];
              }

              while (v22);
            }

            v33 = v20;
            v12 = v50;
            i = v51;
            v18 = v48;
            v17 = v49;
            v16 = v47;
          }

          else
          {
            v33 = 0;
          }

          v34 = [v16 initWithType:v17 identifier:v18 serverToken:v54 content:v53 channel:v59 assetByIdentifier:v33];
          [v55 addObject:v34];

          v7 = v45;
        }

        v46 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v46);
    }

    v35 = 56;
    v6 = v39;
  }

  else
  {
    v36 = +[RMLog configurationQuerier];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      sub_100024520(v3);
    }

    v7 = +[RMErrorUtilities createInternalError];
    v35 = 48;
  }

  v37 = *(*(v40 + v35) + 8);
  v38 = *(v37 + 40);
  *(v37 + 40) = v7;
}

void sub_100024408(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_10002443C(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_100019810();
  sub_100024408(&_mh_execute_header, v2, v3, "Can't fetch configurations for types %{public}@: %{public}@");
}

void sub_1000244A8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Can't fetch configurations: %{public}@", &v2, 0xCu);
}

void sub_100024520(uint64_t *a1)
{
  v1 = *a1;
  sub_100019810();
  sub_100024408(&_mh_execute_header, v2, v3, "Can't fetch configurations for types %{public}@: %{public}@");
}

void sub_1000245D0(id a1)
{
  qword_1000E67C8 = os_log_create("com.apple.remotemanagementd", "configurationStatusArchiver");

  _objc_release_x1();
}

void sub_1000249E4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = [RMModelStatusReason load:a2 serializationType:1 error:&v6];
  v4 = v6;
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  else
  {
    v5 = +[RMLog configurationStatusArchiver];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000258FC();
    }
  }
}

void sub_100024E20(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 serializeWithType:1];
  [v2 addObject:v3];
}

void sub_10002522C(id a1)
{
  v1 = +[NSCharacterSet alphanumericCharacterSet];
  v2 = [v1 mutableCopy];
  v3 = qword_1000E67D8;
  qword_1000E67D8 = v2;

  v4 = qword_1000E67D8;

  [v4 addCharactersInString:@".-"];
}

void sub_100025F78(id a1)
{
  qword_1000E67E8 = os_log_create("com.apple.remotemanagementd", "configurationSubscriberServicePlugin");

  _objc_release_x1();
}

void sub_100026838(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[RMLog configurationSubscriberServicePlugin];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100026E1C();
  }
}

void sub_1000268A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog configurationSubscriberServicePlugin];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100026EB0();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100026F44(a1);
  }
}

void sub_100026A30(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[RMLog configurationSubscriberServicePlugin];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100026E1C();
  }
}

void sub_100026A9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog configurationSubscriberServicePlugin];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100026FCC();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100027060(a1);
  }
}

void sub_100026D8C(void *a1)
{
  v6 = [a1 lastPathComponent];
  sub_100019888();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100026E1C()
{
  sub_100006C3C();
  v1 = [sub_100026D6C(v0) identifier];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100026EB0()
{
  sub_100006C3C();
  v1 = [sub_100026D6C(v0) identifier];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100026F44(uint64_t a1)
{
  v1 = [sub_100026D6C(a1) identifier];
  sub_100022548(&_mh_execute_header, v2, v3, "Applied configurations for configuration subscriber XPC service: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_100026FCC()
{
  sub_100006C3C();
  v1 = [sub_100026D6C(v0) identifier];
  sub_100006BB4();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100027060(uint64_t a1)
{
  v1 = [sub_100026D6C(a1) identifier];
  sub_100022548(&_mh_execute_header, v2, v3, "Updated configuration UIs for configuration subscriber XPC service: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_1000285AC(id a1)
{
  qword_1000E67F8 = os_log_create("com.apple.remotemanagementd", "deviceIdentity");

  _objc_release_x1();
}

void sub_100028634(id a1)
{
  qword_1000E6808 = objc_opt_new();

  _objc_release_x1();
}

void sub_100028A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void sub_100028A48(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = +[RMLog deviceIdentity];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002921C(v8, v9);
    }

LABEL_4:

LABEL_5:
    v10 = *(a1 + 40);
    v11 = +[RMErrorUtilities createDeviceIdentityNotFoundError];
    (*(v10 + 16))(v10, 0, 0, v11);

    goto LABEL_6;
  }

  if (!a2)
  {
    v9 = +[RMLog deviceIdentity];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100029340();
    }

    goto LABEL_4;
  }

  v12 = [v7 count];
  v13 = +[RMLog deviceIdentity];
  v14 = v13;
  if (!v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000292C8(v7, v14);
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_100029294();
  }

  [*(a1 + 32) _cachePrivateKey:a2 certificates:v7];
  (*(*(a1 + 40) + 16))();
LABEL_6:
}

void sub_100028D90(uint64_t a1, const void *a2)
{
  (*(*(a1 + 32) + 16))();
  if (a2)
  {

    CFRelease(a2);
  }
}

void sub_10002921C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not get device identity: %{public}@", &v2, 0xCu);
}

void sub_1000292C8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Did not get device identity, incorrect number of certificates: %@", &v2, 0xCu);
}

void sub_1000293F8(id a1)
{
  qword_1000E6818 = os_log_create("com.apple.remotemanagementd", "deviceLockState");

  _objc_release_x1();
}

void sub_100029A9C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Device lock state: current state: %{public}@", buf, 0xCu);
}

void sub_100029B7C(id a1)
{
  qword_1000E6828 = os_log_create("com.apple.remotemanagementd", "externalStatusArchiver");

  _objc_release_x1();
}

void sub_100029E1C(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = a2;
  v6 = [v11 objectForKeyedSubscript:@"Domain"];
  v7 = [v11 objectForKeyedSubscript:@"Code"];
  v8 = [v7 intValue];
  v9 = [v11 objectForKeyedSubscript:@"UserInfo"];
  v10 = [NSError errorWithDomain:v6 code:v8 userInfo:v9];

  [*(a1 + 32) setObject:v10 forKeyedSubscript:v5];
}

void sub_10002A160(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [v7 userInfo];

    v13 = @"Code";
    +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 code]);
    if (v8)
      v9 = {;
      v16 = v9;
      v14 = @"Domain";
      v10 = [v7 domain];
      v17 = v10;
      v15 = @"UserInfo";
      v11 = [v7 userInfo];
      v18 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v13 count:3];
    }

    else
      v9 = {;
      v16 = v9;
      v14 = @"Domain";
      v10 = [v7 domain];
      v17 = v10;
      v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v13 count:2];
    }

    [*(a1 + 32) setObject:v12 forKeyedSubscript:v5];
  }

  else
  {
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v5];
  }
}

void sub_10002A66C()
{
  sub_100006C08();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Unable to create status directory at %{public}@: %{public}@", v2, 0x16u);
}

void sub_10002A734(id a1)
{
  qword_1000E6838 = os_log_create("com.apple.remotemanagementd", "externalStatusPublisher");

  _objc_release_x1();
}

void sub_10002A7BC(id a1)
{
  v1 = +[RMPersistentController sharedController];
  v5 = [v1 persistentContainer];

  v2 = [v5 newBackgroundContext];
  [v2 setAutomaticallyMergesChangesFromParent:1];
  [v2 setTransactionAuthor:@"ExternalStatusPublisher"];
  v3 = [[RMExternalStatusPublisher alloc] initWithContext:v2];
  v4 = qword_1000E6848;
  qword_1000E6848 = v3;
}

void sub_10002A8EC(uint64_t a1)
{
  v1 = [*(a1 + 32) sharedPublisher];
  [v1 _start];
}

void sub_10002AF24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = [v5 eventKey];
  [v8 setObject:v7 forKeyedSubscript:v9];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [*(a1 + 48) objectForKeyedSubscript:{v15, v21}];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = objc_opt_new();
        }

        v19 = v18;

        v20 = [v19 setByAddingObject:v5];
        [*(a1 + 48) setObject:v20 forKeyedSubscript:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  [*(a1 + 56) addObject:v5];
}

void sub_10002BDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002BDE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002BDF8(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [RMExternalStatusArchiver statusWithStoreIdentifier:v2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id sub_10002C1DC(uint64_t a1)
{
  v2 = +[RMLog externalStatusPublisher];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10002EC94(a1, v2);
  }

  return [*(a1 + 32) publishStatusKeys:*(a1 + 40) storeIdentifier:*(a1 + 48)];
}

void sub_10002C494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002C4B8(void *a1)
{
  v2 = +[RMLog externalStatusPublisher];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10002EE90(a1);
  }

  v4 = a1 + 4;
  v3 = a1[4];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [RMExternalStatusArchiver statusWithStoreIdentifier:v3 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v8 = a1 + 7;
    v7 = a1[7];
    v9 = a1[5];
    v10 = a1[6];
    v11 = *(a1[8] + 8);
    v18 = *(v11 + 40);
    v12 = [v9 _mergeOldStatus:v6 newStatus:v10 changedStatusKeyPaths:v7 error:&v18];
    objc_storeStrong((v11 + 40), v18);
    if (v12)
    {
      v13 = a1[4];
      v14 = *(a1[8] + 8);
      v17 = *(v14 + 40);
      v15 = [RMExternalStatusArchiver persistStatusWithStoreIdentifier:v13 status:v12 error:&v17];
      objc_storeStrong((v14 + 40), v17);
      if (v15)
      {
        v16 = +[RMLog externalStatusPublisher];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          sub_10002EF08(v4, v8);
        }
      }
    }
  }
}

void sub_10002CBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002CBDC(uint64_t a1)
{
  v2 = +[RMSubscribedStatusKeyPath fetchRequest];
  v9 = 0;
  v3 = [v2 execute:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = [v3 valueForKeyPath:@"keyPath"];
    v6 = [NSSet setWithArray:v5];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v5 = +[RMLog externalStatusPublisher];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_10002EFF4();
    }
  }
}

void sub_10002CDFC(uint64_t a1)
{
  v2 = +[RMManagementSource fetchRequest];
  v23 = 0;
  v3 = [v2 execute:&v23];
  v4 = v23;
  v5 = v4;
  if (v3)
  {
    v16 = a1;
    v17 = v4;
    v6 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v3;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
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
          v13 = [v12 predicateStatusKeys];
          if ([v13 length])
          {
            v14 = [v13 componentsSeparatedByString:{@", "}];
          }

          else
          {
            v14 = &__NSArray0__struct;
          }

          v15 = [v12 identifier];
          [v6 setObject:v14 forKeyedSubscript:v15];
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v9);
    }

    [*(v16 + 32) setPredicateStatusKeysByStoreIdentifier:v6];
    v3 = v18;
    v5 = v17;
  }

  else
  {
    v6 = +[RMLog externalStatusPublisher];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10002F05C();
    }
  }
}

void sub_10002D110(uint64_t a1)
{
  v2 = +[RMManagementSource fetchRequest];
  v46 = 0;
  v3 = [v2 execute:&v46];
  v4 = v46;
  if (v3)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v3;
    v40 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v40)
    {
      v35 = v4;
      v36 = v3;
      v37 = v2;
      v39 = *v43;
      v5 = @"keyPath";
      do
      {
        for (i = 0; i != v40; i = i + 1)
        {
          if (*v43 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v42 + 1) + 8 * i);
          v8 = *(a1 + 32);
          v9 = [*(a1 + 40) context];
          v10 = [v7 objectID];
          if (v8)
          {
            v41 = v9;
            v11 = v5;
            v12 = *(a1 + 32);
            v13 = +[RMSubscribedStatusKeyPath fetchRequest];
            v14 = [NSPredicate predicateWithFormat:@"%K == %@", @"managementSource", v10];
            [v13 setPredicate:v14];

            v47 = 0;
            v15 = [v13 execute:&v47];
            v16 = v47;
            if (v15)
            {
              v17 = [NSSet setWithArray:v15];
            }

            else
            {
              v23 = +[RMLog externalStatusPublisher];
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v50 = v10;
                v51 = 2114;
                v52 = v16;
                _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not get subscribed status types from %{public}@: %{public}@", buf, 0x16u);
              }

              v17 = objc_opt_new();
            }

            v24 = v17;

            v25 = [NSPredicate predicateWithFormat:@"%K IN %@", v11, v12];
            v26 = [v24 filteredSetUsingPredicate:v25];

            v5 = v11;
            v9 = v41;
          }

          else
          {
            v18 = +[RMSubscribedStatusKeyPath fetchRequest];
            v19 = [NSPredicate predicateWithFormat:@"%K == %@", @"managementSource", v10];
            [v18 setPredicate:v19];

            v47 = 0;
            v20 = [v18 execute:&v47];
            v21 = v47;
            if (v20)
            {
              v22 = [NSSet setWithArray:v20];
            }

            else
            {
              v27 = +[RMLog externalStatusPublisher];
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v50 = v10;
                v51 = 2114;
                v52 = v21;
                _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Could not get subscribed status types from %{public}@: %{public}@", buf, 0x16u);
              }

              v22 = objc_opt_new();
            }

            v26 = v22;
          }

          v28 = [v26 valueForKeyPath:v5];
          v29 = [v28 mutableCopy];

          v30 = [*(a1 + 40) predicateStatusKeysByStoreIdentifier];
          v31 = [v7 identifier];
          v32 = [v30 objectForKeyedSubscript:v31];
          [v29 addObjectsFromArray:v32];

          if (*(a1 + 32))
          {
            [v29 intersectSet:?];
          }

          if ([v29 count])
          {
            v33 = *(a1 + 48);
            v34 = [v7 identifier];
            [v33 setObject:v29 forKeyedSubscript:v34];
          }
        }

        v40 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v40);
      v3 = v36;
      v2 = v37;
      v4 = v35;
    }
  }

  else
  {
    obj = +[RMLog externalStatusPublisher];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
    {
      sub_10002F05C();
    }
  }
}

void sub_10002D7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002D7E4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
  v10 = [RMModelStatusBase stubObjectForStatusItemType:v7];
  v11 = v10;
  if (v10 && [v10 isArrayValue])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (((v9 != 0) & isKindOfClass) != 1 || ([v9 isEqual:v8] & 1) == 0)
      {
        [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
        v13 = *(a1 + 40);
        v14 = [NSString stringWithFormat:@"%@.%@", @"_metadata", v7];
        [v13 setObject:0 forKeyedSubscript:v14];

LABEL_14:
        [*(a1 + 48) addObject:v7];
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = isKindOfClass;
      v33 = a4;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = v8;
      v19 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v40;
        while (2)
        {
          v22 = 0;
          do
          {
            if (*v40 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = [*(*(&v39 + 1) + 8 * v22) objectForKeyedSubscript:@"identifier"];

            if (!v23)
            {
              v28 = +[RMLog externalStatusPublisher];
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                sub_10002F12C();
              }

              v29 = [RMErrorUtilities createInvalidStatusValueErrorWithKeyPath:v7];
              v30 = *(*(a1 + 64) + 8);
              v31 = *(v30 + 40);
              *(v30 + 40) = v29;

              *v33 = 1;
              goto LABEL_15;
            }

            v22 = v22 + 1;
          }

          while (v20 != v22);
          v20 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v24 = *(a1 + 32);
      v25 = [NSString stringWithFormat:@"%@.%@", @"_metadata", v7];
      v26 = [v24 objectForKeyedSubscript:v25];

      if (v32)
      {

        v26 = 0;
        v9 = 0;
      }

      v27 = *(a1 + 56);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10002DC88;
      v35[3] = &unk_1000D1BF0;
      v36 = *(a1 + 40);
      v37 = v7;
      v38 = *(a1 + 48);
      [v27 _mergeOldArrayValue:v9 oldValueMetadata:v26 newValue:obj completionHandler:v35];

      goto LABEL_15;
    }

    v15 = +[RMLog externalStatusPublisher];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10002F0C4();
    }

LABEL_10:

    v16 = [RMErrorUtilities createInvalidStatusValueErrorWithKeyPath:v7];
    v17 = *(*(a1 + 64) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    *a4 = 1;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = +[RMLog externalStatusPublisher];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10002F194();
    }

    goto LABEL_10;
  }

  if (!v9 || ([v9 isEqual:v8] & 1) == 0)
  {
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
    goto LABEL_14;
  }

LABEL_15:
}

void sub_10002DC88(void *a1, uint64_t a2, void *a3, int a4)
{
  v7 = a1[4];
  v8 = a1[5];
  v9 = a3;
  [v7 setObject:a2 forKeyedSubscript:v8];
  v10 = a1[4];
  v11 = [NSString stringWithFormat:@"%@.%@", @"_metadata", a1[5]];
  [v10 setObject:v9 forKeyedSubscript:v11];

  if (a4)
  {
    v13 = a1[5];
    v12 = a1[6];

    [v12 addObject:v13];
  }
}

void sub_10002E1B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7 && ([v7 isEqualToDictionary:v6] & 1) != 0)
  {
    v9 = [*(a1 + 56) objectForKeyedSubscript:v5];
    [*(a1 + 40) setObject:v9 forKeyedSubscript:v5];
  }

  else
  {
    v10 = *(a1 + 48);
    v12 = @"last-received";
    v13 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [*(a1 + 40) setObject:v11 forKeyedSubscript:v5];

    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  [*(a1 + 64) addObject:v6];
  [*(a1 + 72) setObject:0 forKeyedSubscript:v5];
}

void sub_10002E2F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"removed"];

  if (v7)
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  else
  {
    v8 = *(a1 + 40);
    v10[0] = @"last-received";
    v10[1] = @"removed";
    v11[0] = v8;
    v11[1] = &__kCFBooleanTrue;
    v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v5];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_10002E680(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"last-received"];
  v8 = [v6 objectForKeyedSubscript:@"removed"];

  LODWORD(v6) = [v8 BOOLValue];
  if (v6 && a1[4] && [v7 compare:a1[5]] == 1)
  {
    v9 = a1[6];
    v11[0] = @"identifier";
    v11[1] = @"_removed";
    v12[0] = v5;
    v12[1] = &__kCFBooleanTrue;
    v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    [v9 addObject:v10];
  }
}

void sub_10002EA68(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_10002EB7C()
{
  sub_100006C08();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002EBEC(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 identifier];
  sub_100006C08();
  sub_10002EA88();
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to query status for store: %{public}@ %{public}@", v6, 0x16u);
}

void sub_10002EC94(uint64_t a1, NSObject *a2)
{
  v4 = [*(a1 + 32) identifier];
  v5 = *(a1 + 40);
  sub_100006C08();
  v8 = 2114;
  v9 = v6;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Request %{public}@ to publish: %{public}@", v7, 0x16u);
}

void sub_10002EDB0()
{
  sub_100006C08();
  sub_10002EA88();
  sub_10002EA68(&_mh_execute_header, v0, v1, "Notifying status changed for store: %{public}@ for status: %{public}@");
}

void sub_10002EE20()
{
  sub_100006C08();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002EE90(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_100019828();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10002EF08(void *a1, uint64_t *a2)
{
  v2 = *a2;
  LODWORD(v6) = 138543618;
  *(&v6 + 4) = *a1;
  sub_10002EA88();
  *v7 = v3;
  sub_10002EA68(&_mh_execute_header, v4, v5, "Persisted status for store: %{public}@ changed %{public}@", v6, DWORD2(v6), *&v7[2]);
}

void sub_10002EF84()
{
  sub_100006C08();
  sub_10002EA88();
  sub_10002EA68(&_mh_execute_header, v0, v1, "Notifying predicate status changed for store: %{public}@ for status: %{public}@");
}

void sub_10002F4D0(id a1)
{
  qword_1000E6860 = os_log_create("com.apple.remotemanagementd", "fileConduit");

  _objc_release_x1();
}

void sub_10002F6D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) managementSourceObjectID];
  v3 = [v1 objectWithID:v2];

  v4 = +[RMLog fileConduit];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 bootstrapURI];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Started file conduit for %{public}@", &v6, 0xCu);
  }
}

void sub_10002F890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002F8A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v6 = [v2 objectWithID:v3];

  v4 = [v6 conduitConfig];
  v5 = [v4 state];
  *(*(*(a1 + 48) + 8) + 24) = [v5 errorState];
}

void sub_10002FB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002FB84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v5 = [v2 objectWithID:v3];

  v4 = [v5 enrollmentType] == 1 || objc_msgSend(v5, "enrollmentType") == 3;
  *(*(*(a1 + 48) + 8) + 24) = v4;
}

void sub_10002FD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v9 - 64));
  _Unwind_Resume(a1);
}

uint64_t sub_10002FDB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002FDC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = [v4 bootstrapURI];
  v6 = +[RMLog fileConduit];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Enrolling with URI: %{public}@", buf, 0xCu);
  }

  v7 = *(a1 + 40);
  v25 = 0;
  v8 = [v7 _prepareDirectoryWithURL:v5 error:&v25];
  v9 = v25;
  if (v8)
  {
    v10 = [v4 conduitConfig];
    v11 = [v10 state];

    if (v11)
    {
      v12 = v9;
    }

    else
    {
      v15 = [[RMFileConduitState alloc] initWithContext:*(a1 + 32)];
      v16 = *(a1 + 40);
      v17 = [objc_opt_class() _generateEnrollmentToken];
      [(RMFileConduitState *)v15 setEnrollmentToken:v17];

      [v10 setState:v15];
      v18 = *(a1 + 32);
      v24 = v9;
      v19 = [v18 save:&v24];
      v12 = v24;

      if ((v19 & 1) == 0)
      {
        v20 = +[RMLog fileConduit];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          sub_10003283C();
        }

        [*(a1 + 32) rollback];
        v21 = +[RMErrorUtilities createInternalError];
        v22 = *(*(a1 + 48) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;

        goto LABEL_16;
      }
    }

    v15 = +[RMLog fileConduit];
    if (os_log_type_enabled(&v15->super.super.super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, &v15->super.super.super, OS_LOG_TYPE_DEFAULT, "Enrolled with URI: %{public}@", buf, 0xCu);
    }

LABEL_16:

    goto LABEL_17;
  }

  v13 = +[RMLog fileConduit];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1000327D4();
  }

  v14 = *(*(a1 + 48) + 8);
  v12 = v9;
  v10 = *(v14 + 40);
  *(v14 + 40) = v12;
LABEL_17:
}

void sub_1000304CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v9 - 64));
  _Unwind_Resume(a1);
}

void sub_1000304EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = [v4 identifier];
  v6 = +[RMLog fileConduit];
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
  v10 = +[RMLog fileConduit];
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
      sub_1000328B0();
    }

    [*(a1 + 32) rollback];
    v12 = +[RMErrorUtilities createInternalError];
    v13 = *(*(a1 + 48) + 8);
    v11 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

void sub_100030794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000307AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v10 = [v2 objectWithID:v3];

  if ([v10 enrolled])
  {
    if (![v10 enrollmentType])
    {
      v4 = [v10 authenticationCredential];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [v4 authenticationScheme];
        v6 = [v5 isEqualToString:RMAuthenticationSchemeMAID];

        if (v6)
        {
          v7 = [v4 properties];
          v8 = [v7 objectForKeyedSubscript:RMAuthenticationSchemeMAIDFieldLongLivedToken];
          *(*(*(a1 + 48) + 8) + 24) = v8 != 0;
        }
      }
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return _objc_release_x1();
}

void sub_100030ABC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v13 = 0;
  v7 = [v5 _syncWithManagementSource:v4 onlyIfNeeded:v6 error:&v13];
  v8 = v13;
  v9 = +[RMLog fileConduit];
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100032A20(v10);
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000329B8();
    }

    v11 = *(*(a1 + 48) + 8);
    v12 = v8;
    v10 = *(v11 + 40);
    *(v11 + 40) = v12;
  }

  [*(a1 + 32) reset];
}

void sub_100031984(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(a1 + 32) setMadeChangesDuringSync:1];
  if ([v4 loadState] != 3)
  {
    [v4 setLoadState:3];
    v5 = +[RMLog fileConduit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100032AD8();
    }
  }
}

void sub_100032314(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v8 = [v2 objectWithID:v3];

  v4 = [v8 bootstrapURI];
  v5 = [v4 URLByAppendingPathComponent:@"Status" isDirectory:1];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1000323BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:@"declarations"])
  {
    v7 = [*(*(*(a1 + 32) + 8) + 40) URLByAppendingPathComponent:v5 isDirectory:0];
    v8 = [v7 URLByAppendingPathExtension:@"json"];

    v16 = v5;
    v17 = v6;
    v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = 0;
    v10 = [RMJSONUtilities serializeJSONDictionary:v9 fileURL:v8 error:&v13];
    v11 = v13;

    if ((v10 & 1) == 0)
    {
      v12 = +[RMLog fileConduit];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Could not write declarations status: %{public}@", buf, 0xCu);
      }
    }
  }
}

void sub_1000325F4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_1000326D0(*(a1 + 32), v10);
  }

  else
  {
    v6 = [v10 pathExtension];
    v7 = [v6 length];

    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = [v10 stringByDeletingPathExtension];
      sub_1000326D0(v8, v9);
    }
  }

  [*(a1 + 32) setValue:v5 forKeyPath:v10];
}

void sub_1000326D0(void *a1, void *a2)
{
  v10 = a1;
  v3 = a2;
  v4 = [v10 valueForKeyPath:v3];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = [v3 pathExtension];
    v7 = [v6 length];

    if (v7)
    {
      v8 = [v3 stringByDeletingPathExtension];
      sub_1000326D0(v10, v8);
    }

    v9 = objc_opt_new();
    [v10 setValue:v9 forKeyPath:v3];
  }
}

void sub_100032928(char a1, NSObject *a2)
{
  v2 = &stru_1000D3680;
  if (a1)
  {
    v2 = @" only if needed";
  }

  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Syncing%{public}@...", &v3, 0xCu);
}

void sub_100032E00(id a1)
{
  qword_1000E6870 = os_log_create("com.apple.remotemanagementd", "httpConduit");

  _objc_release_x1();
}

void sub_100032E88(id a1)
{
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v1 = +[RMDevice currentDevice];
  v2 = [v8 objectForInfoDictionaryKey:_kCFBundleShortVersionStringKey];
  v3 = [v1 operatingSystem];
  v4 = [v1 operatingSystemVersion];
  v5 = [v1 operatingSystemBuildVersion];
  v6 = [NSString stringWithFormat:@"%@/%@ (%@) %@/%@", v3, v4, v5, @"RemoteManagementDaemon", v2];
  v7 = qword_1000E6880;
  qword_1000E6880 = v6;
}

void sub_100033254(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  [*(a1 + 40) _startObservers];
  v5 = +[RMLog httpConduit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 bootstrapURI];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Started HTTP conduit for %{public}@", &v7, 0xCu);
  }
}

void sub_100033530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100033548(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v6 = [v2 objectWithID:v3];

  v4 = [v6 conduitConfig];
  v5 = [v4 state];
  *(*(*(a1 + 48) + 8) + 24) = [v5 errorState];
}

void sub_10003380C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100033824(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v5 = [v2 objectWithID:v3];

  v4 = [v5 enrollmentType] == 1 || objc_msgSend(v5, "enrollmentType") == 3;
  *(*(*(a1 + 48) + 8) + 24) = v4;
}

void sub_100033BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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
  _Block_object_dispose((v11 - 144), 8);
  os_activity_scope_leave((v11 - 96));
  _Unwind_Resume(a1);
}

uint64_t sub_100033C38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100033C50(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = [v4 conduitConfig];
  v6 = [v5 state];
  if (v6)
  {
    goto LABEL_4;
  }

  v6 = [[RMHTTPConduitState alloc] initWithContext:*(a1 + 32)];
  v7 = [v4 bootstrapURI];
  [(RMHTTPConduitState *)v6 setBaseURL:v7];

  v8 = *(a1 + 40);
  v9 = [objc_opt_class() _generateEnrollmentToken];
  [(RMHTTPConduitState *)v6 setEnrollmentToken:v9];

  [(RMHTTPConduitState *)v6 setCheckOutOnRemove:1];
  [v5 setState:v6];
  v10 = *(a1 + 32);
  v23 = 0;
  v11 = [v10 save:&v23];
  v12 = v23;
  v13 = v12;
  if (v11)
  {

LABEL_4:
    v14 = [*(a1 + 40) _makeURLRequestWithManagementSource:v4 method:@"POST" endpoint:RMProtocolEndpointEnroll];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = [(RMHTTPConduitState *)v6 enrollmentToken];
    v18 = *(*(a1 + 64) + 8);
    v13 = *(v18 + 40);
    *(v18 + 40) = v17;
    goto LABEL_5;
  }

  v19 = +[RMLog httpConduit];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    sub_10003BC70();
  }

  v20 = +[RMErrorUtilities createInternalError];
  v21 = *(*(a1 + 48) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  [*(a1 + 32) rollback];
LABEL_5:
}

void sub_100033FF4(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v11 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = a1[4];
  if (isKindOfClass)
  {
    [v10 _didReceiveEnrollReferralWithOriginalRequest:a1[5] responsePayload:v11 response:v8 error:v7 completionHandler:a1[6]];
  }

  else
  {
    [v10 _didFinishEnrollingWithResponsePayload:v11 response:v8 error:v7 completionHandler:a1[6]];
  }
}

void sub_1000345B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_100034604(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = [v4 conduitConfig];
  v6 = [v5 state];
  if ([v6 referralCount] < 6)
  {
    v11 = v6;
    [v11 setErrorState:0];
    [v11 setNumberOfConsecutiveAuthErrors:0];
    [v11 setNumberOfConsecutiveErrors:0];
    [v11 setNumberOfConsecutiveFailures:0];
    [v11 setServerRetryAfterDate:0];
    [v11 setLocalRetryAfterDate:0];

    [v11 setReferralBaseURL:*(a1 + 48)];
    [v11 setReferralCount:{objc_msgSend(v11, "referralCount") + 1}];
    v12 = *(a1 + 32);
    v23 = 0;
    v13 = [v12 save:&v23];
    v10 = v23;
    if (v13)
    {
      v14 = [v11 referralBaseURL];
      v15 = v14;
      if (!v14)
      {
        v15 = [v4 bootstrapURI];
      }

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v15);
      if (!v14)
      {
      }

      v16 = [v11 enrollmentToken];
      v17 = *(*(a1 + 72) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;
    }

    else
    {
      v19 = +[RMLog httpConduit];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_10003BE30();
      }

      v20 = +[RMErrorUtilities createInternalError];
      v21 = *(*(a1 + 56) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      [*(a1 + 32) rollback];
    }
  }

  else
  {
    v7 = +[RMLog httpConduit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003BE98();
    }

    v8 = +[RMErrorUtilities createTooManyReferralsError];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void sub_100034A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100034AAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = [v4 conduitConfig];
  v6 = [v5 state];
  [v6 setErrorState:0];
  [v6 setNumberOfConsecutiveAuthErrors:0];
  [v6 setNumberOfConsecutiveErrors:0];
  [v6 setNumberOfConsecutiveFailures:0];
  [v6 setServerRetryAfterDate:0];
  [v6 setLocalRetryAfterDate:0];
  v7 = [*(a1 + 48) responsePushTopic];
  [v6 setPushTopic:v7];

  v8 = [*(a1 + 48) responsePushEnvironment];
  [v6 setPushEnvironment:v8];

  v9 = [*(a1 + 48) responseStatusItems];
  if ([v9 count])
  {
    v10 = [*(a1 + 40) delegate];
    v11 = [NSSet setWithArray:v9];
    [v10 conduitNeedsToSendStatusForKeyPaths:v11];
  }

  v12 = *(a1 + 32);
  v22 = 0;
  v13 = [v12 save:&v22];
  v14 = v22;
  v15 = +[RMLog httpConduit];
  v16 = v15;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = [v4 identifier];
      v18 = [*(a1 + 56) URL];
      *buf = 138543618;
      v24 = v17;
      v25 = 2114;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Enrolled %{public}@: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_10001A138();
    }

    v19 = +[RMErrorUtilities createInternalError];
    v20 = *(*(a1 + 64) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    [*(a1 + 32) rollback];
  }
}

void sub_100034FE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v12 = [v2 objectWithID:v3];

  v4 = [v12 conduitConfig];
  v5 = [v4 state];
  if ([v5 checkOutOnRemove])
  {
    v6 = [*(a1 + 40) _makeURLRequestWithManagementSource:v12 method:@"DELETE" endpoint:RMProtocolEndpointEnrollment];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [v5 enrollmentToken];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_1000350D4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[RMLog httpConduit];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003BFBC();
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = [v6 URL];
    v11 = 138543362;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Unenrolled from URI: %{public}@", &v11, 0xCu);
  }

  [*(a1 + 32) _didFinishUnenrollingToldRemote:v7 == 0 completionHandler:*(a1 + 40)];
}

void sub_100035348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100035360(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  [v4 setEnrolled:0];
  v5 = [v4 conduitConfig];
  v6 = [v5 state];
  [v6 setErrorState:0];
  [v6 setNumberOfConsecutiveAuthErrors:0];
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
    v10 = +[RMLog httpConduit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10001ACEC();
    }

    v11 = +[RMErrorUtilities createInternalError];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    [*(a1 + 32) rollback];
  }
}

void sub_1000357C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  os_activity_scope_leave((v30 - 136));
  _Unwind_Resume(a1);
}

void sub_100035800(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  if (*(a1 + 64) != 1)
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
      v12 = +[RMLog httpConduit];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10003C0E0();
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
    v19 = +[RMLog httpConduit];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_10003C0A4();
    }

LABEL_21:
LABEL_22:
    v5 = [v4 conduitConfig];
    v6 = [v5 state];
    v20 = [v6 enrollmentToken];
    v21 = *(*(a1 + 48) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    v23 = [*(a1 + 40) _makeURLRequestWithManagementSource:v4 method:@"GET" endpoint:RMProtocolEndpointTokens];
    v24 = *(*(a1 + 56) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;

    goto LABEL_23;
  }

LABEL_23:
}

void sub_100035C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100035C90(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = [v4 conduitConfig];
  v6 = [v5 state];
  [v6 setErrorState:0];
  [v6 setNumberOfConsecutiveAuthErrors:0];
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
    v14 = +[RMLog httpConduit];
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

void sub_100035F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100035F58(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v10 = [v2 objectWithID:v3];

  if ([v10 enrolled])
  {
    if (![v10 enrollmentType])
    {
      v4 = [v10 authenticationCredential];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [v4 authenticationScheme];
        v6 = [v5 isEqualToString:RMAuthenticationSchemeMAID];

        if (v6)
        {
          v7 = [v4 properties];
          v8 = [v7 objectForKeyedSubscript:RMAuthenticationSchemeMAIDFieldLongLivedToken];
          *(*(*(a1 + 48) + 8) + 24) = v8 != 0;
        }
      }
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return _objc_release_x1();
}

void sub_10003630C(uint64_t a1, void *a2)
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

void sub_100036390(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 48) + 16))();
  if (!a2)
  {
    dispatch_group_enter(*(a1 + 32));
    v4 = *(a1 + 56);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10003646C;
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

void sub_10003646C(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 48) + 16))();
  if (!a2)
  {
    dispatch_group_enter(*(a1 + 32));
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100036534;
    v5[3] = &unk_1000D1EA8;
    v4 = *(a1 + 40);
    v7 = *(a1 + 48);
    v6 = *(a1 + 32);
    [v4 _fetchPartialObjectsWithCompletionHandler:v5];
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100036534(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void sub_100036578(uint64_t a1)
{
  [*(a1 + 32) context];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003665C;
  v7 = v6[3] = &unk_1000D0F50;
  v2 = v7;
  [v2 performBlockAndWait:v6];
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) madeChangesDuringSync];
  v5 = [RMErrorUtilities createMultipleErrorOrReturnTheSingleErrorWithErrors:*(a1 + 40)];
  (*(v3 + 16))(v3, v4, v5);
}

void sub_1000369B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000369CC(uint64_t a1)
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
    v13 = +[RMLog httpConduit];
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

void sub_100036EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 184), 8);
  os_activity_scope_leave((v32 - 136));
  _Unwind_Resume(a1);
}

void sub_100036EF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  if (*(a1 + 72) == 1)
  {
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
    if (v17)
    {
      v18 = [v6 lastProcessedDeclarationsToken];
      v19 = [v17 isEqualToString:v18];

      if (v19)
      {

        goto LABEL_22;
      }
    }

    v20 = +[RMLog httpConduit];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_10003C3D8();
    }
  }

  v5 = [v4 conduitConfig];
  v6 = [v5 state];
  v21 = [v6 enrollmentToken];
  v22 = *(*(a1 + 48) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  v24 = [v5 lastReceivedPushTimestamp];
  v25 = v24;
  if (!v24)
  {
    v25 = objc_opt_new();
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v25);
  if (!v24)
  {
  }

  v26 = [*(a1 + 40) _makeURLRequestWithManagementSource:v4 method:@"GET" endpoint:RMProtocolEndpointDeclarationItems];
  v27 = *(*(a1 + 64) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v26;

LABEL_22:
}

void sub_100037394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000373B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = [v4 conduitConfig];
  v6 = [v5 state];
  [v6 setErrorState:0];
  [v6 setNumberOfConsecutiveAuthErrors:0];
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
    v26 = +[RMLog httpConduit];
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

void sub_100037A3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [*(a1 + 32) setMadeChangesDuringSync:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 40) deleteObject:v4];
    v5 = +[RMLog httpConduit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10003C55C();
    }

LABEL_7:

    goto LABEL_8;
  }

  if ([v4 loadState] != 3)
  {
    [v4 setLoadState:3];
    v5 = +[RMLog httpConduit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10003C4EC();
    }

    goto LABEL_7;
  }

LABEL_8:
}

void sub_100037BE0(uint64_t a1, uint64_t a2)
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
    v9[2] = sub_100037CD4;
    v9[3] = &unk_1000D1EA8;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v5 _fetchNextObjectOfClass:v6 endpoint:v7 completionHandler:v9];
  }
}

void sub_100037CD4(uint64_t a1, uint64_t a2)
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
    v9[2] = sub_100037DD4;
    v9[3] = &unk_1000D1FC0;
    v10 = 0;
    v8 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = v8;
    [v5 _fetchNextObjectOfClass:v6 endpoint:v7 completionHandler:v9];
  }
}

id sub_100037DD4(void *a1)
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

void sub_100038268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 240), 8);
  os_activity_scope_leave((v35 - 192));
  _Unwind_Resume(a1);
}

void sub_1000382C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = *(a1 + 80);
  v6 = v4;
  v7 = [v5 fetchRequest];
  v8 = [NSPredicate predicateWithFormat:@"(%K == %@) && (%K == %d)", @"managementSource", v6, @"loadState", 0];
  [v7 setPredicate:v8];

  [v7 setFetchLimit:1];
  v27 = 0;
  v9 = [v7 execute:&v27];
  v10 = v27;
  if (!v9)
  {
    v11 = +[RMLog httpConduit];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_10003C6F0();
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

    v19 = [v6 conduitConfig];
    v20 = [v19 state];
    v21 = [v20 enrollmentToken];
    v22 = *(*(a1 + 64) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    v24 = [*(a1 + 40) _makeURLRequestWithManagementSource:v6 method:@"GET" endpoint:v18];
    v25 = *(*(a1 + 72) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;
  }
}

void sub_100038854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100038878(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = [v4 conduitConfig];
  v6 = [v5 state];
  [v6 setErrorState:0];
  [v6 setNumberOfConsecutiveAuthErrors:0];
  [v6 setNumberOfConsecutiveErrors:0];
  [v6 setNumberOfConsecutiveFailures:0];
  [v6 setServerRetryAfterDate:0];
  [v6 setLocalRetryAfterDate:0];
  v7 = [*(a1 + 32) objectWithID:*(a1 + 48)];
  if (v7)
  {
    if (*(a1 + 56))
    {
      v8 = +[RMLog httpConduit];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 56);
        v24 = *(a1 + 64);
        v26 = *(a1 + 48);
        *buf = 138543874;
        v30 = v26;
        v31 = 2114;
        v32 = v24;
        v33 = 2114;
        v34 = v25;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error while processing fetched data for object %{public}@ (%{public}@): %{public}@", buf, 0x20u);
      }

      [v7 failedLoadingWithError:*(a1 + 56)];
    }

    else if (*(a1 + 72))
    {
      v11 = +[RMLog httpConduit];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [*(a1 + 80) URL];
        *buf = 138543362;
        v30 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Fetched from URI: %{public}@", buf, 0xCu);
      }

      v13 = v7;
      v14 = *(a1 + 72);
      v28 = 0;
      v15 = [v13 loadPayload:v14 error:&v28];
      v16 = v28;
      if ((v15 & 1) == 0)
      {
        v17 = +[RMLog httpConduit];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10003C76C();
        }
      }
    }

    else
    {
      [*(a1 + 32) deleteObject:v7];
    }

    v18 = *(a1 + 32);
    v27 = 0;
    v19 = [v18 save:&v27];
    v9 = v27;
    if (v19)
    {
      [*(a1 + 40) setMadeChangesDuringSync:1];
    }

    else
    {
      v20 = +[RMLog httpConduit];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_10003C80C((a1 + 48));
      }

      v21 = +[RMErrorUtilities createInternalError];
      v22 = *(*(a1 + 88) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      [*(a1 + 32) rollback];
    }
  }

  else
  {
    v9 = +[RMLog httpConduit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 48);
      *buf = 138543362;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Object with %{public}@ disappeared while filling in contents.", buf, 0xCu);
    }
  }
}

void sub_100038EDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v12 = [v2 objectWithID:v3];

  v4 = [v12 conduitConfig];
  v5 = [v4 state];
  v6 = [v5 enrollmentToken];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [*(a1 + 40) _makeURLRequestWithManagementSource:v12 method:@"POST" endpoint:RMProtocolEndpointStatus];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_1000391C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000391E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = [v4 conduitConfig];
  v6 = [v5 state];
  [v6 setErrorState:0];
  [v6 setNumberOfConsecutiveAuthErrors:0];
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
    v10 = +[RMLog httpConduit];
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

void sub_100039AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100039AE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = [v4 conduitConfig];
  v6 = [v5 state];
  v7 = [v4 authenticationCredential];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
LABEL_11:
    v16 = +[RMLog httpConduit];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10003CD24(v8, a1);
    }

    v17 = [*(a1 + 48) sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v15 = [v17 componentsJoinedByString:{@", "}];

    v18 = [RMErrorUtilities createUnsupportedAuthenticationSchemeErrorWithScheme:v15];
LABEL_14:
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    goto LABEL_15;
  }

  v8 = [v7 authenticationScheme];
  if (!v8 || ([*(a1 + 48) containsObject:v8] & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = [v6 chosenAuthenticationScheme];

  if (!v9)
  {
    v21 = +[RMLog httpConduit];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_10003CC4C();
    }

    goto LABEL_20;
  }

  v10 = [v6 chosenAuthenticationScheme];
  v11 = [v10 isEqualToString:v8];

  if (!v11)
  {
    v21 = +[RMLog httpConduit];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_10003CAC0();
    }

LABEL_20:

    [v6 setChosenAuthenticationScheme:v8];
LABEL_21:
    v22 = *(a1 + 32);
    v31 = 0;
    v23 = [v22 save:&v31];
    v15 = v31;
    if (v23)
    {
      goto LABEL_15;
    }

    v24 = +[RMLog httpConduit];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_10003CCBC();
    }

    [*(a1 + 32) rollback];
    v18 = +[RMErrorUtilities createInternalError];
    goto LABEL_14;
  }

  if ([v6 numberOfConsecutiveAuthErrors] < 2)
  {
    [v6 setNumberOfConsecutiveAuthErrors:{objc_msgSend(v6, "numberOfConsecutiveAuthErrors") + 1}];
    v25 = +[RMLog httpConduit];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_10003CB5C();
    }

    v26 = [v4 authenticationCredential];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v28 = [v4 authenticationCredential];
      v29 = [v4 accountIdentifier];
      v30 = [v28 updatePropertiesForAccountIdentifier:v29 afterFailure:1];

      if (v30)
      {
        [v4 setAuthenticationCredential:v30];
      }
    }

    goto LABEL_21;
  }

  v12 = +[RMLog httpConduit];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_10003CBCC(v6);
  }

  v13 = +[RMErrorUtilities createTooManyFailedAuthenticationsError];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
LABEL_15:
}

void sub_10003A484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003A49C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v4 = [v2 objectWithID:v3];

  v5 = [v4 conduitConfig];
  v6 = [v5 state];
  [v6 setErrorState:*(a1 + 64)];
  [v6 setNumberOfConsecutiveAuthErrors:0];
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
    v11 = +[RMLog httpConduit];
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

void sub_10003A9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10003AA1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managementSourceObjectID];
  v12 = [v2 objectWithID:v3];

  v4 = [v12 conduitConfig];
  v5 = [v4 state];
  v6 = [v5 chosenAuthenticationScheme];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v12 authenticationCredential];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_10003B110(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[RMLog httpConduit];
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10003D0D4();
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = [v12 allHTTPHeaderFields];
    v15 = [v14 objectForKeyedSubscript:@"X-Apple-Request-UUID"];
    *buf = 138543874;
    v27 = v13;
    v28 = 2114;
    v29 = v12;
    v30 = 2114;
    v31 = v15;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<<<< %{public}@ %{public}@ (%{public}@)", buf, 0x20u);
  }

  [RMHTTPLog logHTTPDetailsForEnrollmentToken:*(a1 + 48) request:*(a1 + 40) response:v8 responseData:v7 responseError:v9];
  if (v9)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v25 = 0;
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    v24 = 0;
    v18 = [v16 _processResponse:v8 data:v7 payloadClassByStatusCode:v17 shouldRetry:&v25 error:&v24];
    v19 = v24;
    if (v25 == 1)
    {
      v20 = +[RMLog httpConduit];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(a1 + 32);
        v22 = *(a1 + 40);
        *buf = 138543618;
        v27 = v21;
        v28 = 2114;
        v29 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Retrying: %{public}@ %{public}@", buf, 0x16u);
      }

      [*(a1 + 56) _resumeTaskForRequest:*(a1 + 40) enrollmentToken:*(a1 + 48) expectedResponseClassByStatusCode:*(a1 + 64) completionHandler:*(a1 + 72)];
    }

    else
    {
      if (v18)
      {
        v23 = 0;
      }

      else
      {
        v23 = v19;
      }

      (*(*(a1 + 72) + 16))(*(a1 + 72), v18, v8, v23);
    }
  }
}

void sub_10003B74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003B764(uint64_t a1)
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

void sub_10003BB90()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003BBCC()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003BCD8()
{
  sub_100006C08();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003BD48()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003BD84()
{
  sub_100006C08();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003BDF4()
{
  sub_100006C14();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003BE98()
{
  sub_100006C14();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003BED4()
{
  sub_100006C08();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003BF44()
{
  sub_100006C14();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003BF80()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003BFBC()
{
  sub_100006C08();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003C02C()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003C068()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003C0A4()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003C0E0()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003C11C()
{
  sub_100006C08();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003C280()
{
  sub_100006C08();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003C2F0()
{
  sub_100006C08();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003C360()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003C39C()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003C3D8()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003C414()
{
  sub_100006C08();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003C4EC()
{
  sub_100006C08();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003C55C()
{
  sub_100006C08();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003C5CC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Fetching next %{public}@...", buf, 0xCu);
}

void sub_10003C624(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "No more %{public}@ objects for %{public}@", buf, 0x16u);
}

void sub_10003C698(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "All %{public}@ downloaded", buf, 0xCu);
}

void sub_10003C6F0()
{
  sub_100006C08();
  sub_10002EA88();
  sub_100019870();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

void sub_10003C76C()
{
  sub_100006C3C();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_100006C08();
  sub_10002EA88();
  sub_100019888();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10003C80C(uint64_t *a1)
{
  v5 = *a1;
  sub_10002EA88();
  sub_100019870();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x16u);
}

void sub_10003C890()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003C8CC()
{
  sub_100006C08();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003C9A4()
{
  sub_100006C08();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003CA14()
{
  sub_100006C08();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003CA84()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003CAC0()
{
  sub_100006C3C();
  v1 = [v0 chosenAuthenticationScheme];
  sub_100006C08();
  sub_10002EA88();
  sub_10003BB58();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10003CB5C()
{
  sub_100006C08();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003CBCC(void *a1)
{
  [a1 numberOfConsecutiveAuthErrors];
  sub_100006C08();
  sub_100019888();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10003CC4C()
{
  sub_100006C08();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003CD24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  sub_100006C08();
  sub_100019870();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x16u);
}

void sub_10003CDA8()
{
  sub_100006C08();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003CE80(void *a1)
{
  v2 = [a1 HTTPMethod];
  v3 = [a1 allHTTPHeaderFields];
  v4 = [v3 objectForKeyedSubscript:@"X-Apple-Request-UUID"];
  sub_10003BB38();
  sub_10003BB58();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_10003CF4C(void *a1)
{
  v2 = [a1 HTTPMethod];
  v3 = [a1 allHTTPHeaderFields];
  v4 = [v3 objectForKeyedSubscript:@"X-Apple-Request-UUID"];
  sub_10003BB38();
  sub_10003BB58();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_10003D018()
{
  sub_100006C3C();
  v1 = [v0 allHTTPHeaderFields];
  v2 = [v1 objectForKeyedSubscript:@"X-Apple-Request-UUID"];
  sub_10003BB38();
  sub_10003BB58();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10003D0D4()
{
  sub_100006C3C();
  v1 = *(v0 + 32);
  v2 = [*(v0 + 40) allHTTPHeaderFields];
  v3 = [v2 objectForKeyedSubscript:@"X-Apple-Request-UUID"];
  sub_10002EA88();
  sub_100019888();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_10003D1AC()
{
  sub_100006C08();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10003D21C()
{
  sub_100006C14();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003D258()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003D294(uint64_t a1, void **a2)
{
  v2 = *a2;
  sub_100006C08();
  sub_100019870();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x16u);
}

void sub_10003D324()
{
  sub_100006C14();
  sub_100019828();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003D360()
{
  sub_100006C14();
  sub_10000FD00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003D448(id a1)
{
  qword_1000E6890 = os_log_create("com.apple.remotemanagementd", "httpconduitstate");

  _objc_release_x1();
}

void sub_10003D73C(id a1)
{
  qword_1000E68A0 = os_log_create("com.apple.remotemanagementd", "httpLogging");

  _objc_release_x1();
}

void sub_10003E140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [NSString stringWithFormat:@"%@: %@", a2, a3];
  [v3 addObject:v4];
}

void sub_10003E1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [NSString stringWithFormat:@"%@: %@", a2, a3];
  [v3 addObject:v4];
}

void sub_10003E358(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create HTTP request log file %@", &v2, 0xCu);
}

void sub_10003E684(id a1)
{
  v1 = [RMInternalStateArchiver alloc];
  v5 = +[RMPersistentController sharedController];
  v2 = [v5 persistentContainer];
  v3 = [(RMInternalStateArchiver *)v1 initWithPersistentContainer:v2];
  v4 = qword_1000E68B0;
  qword_1000E68B0 = v3;
}

void sub_10003ED04(id a1)
{
  qword_1000E68C0 = os_log_create("com.apple.remotemanagementd", "internalStatusPublisher");

  _objc_release_x1();
}

void sub_10003ED8C(id a1)
{
  v1 = +[RMPersistentController sharedController];
  v11 = [v1 persistentContainer];

  v2 = [v11 newBackgroundContext];
  [v2 setAutomaticallyMergesChangesFromParent:1];
  v3 = +[RMInternalStateArchiver sharedArchiver];
  v4 = [v3 deviceStatusByKeyPath];
  v5 = [v3 commandAndDeclarationStatusPersistentHistoryToken];
  v6 = [[RMPersistentHistoryNotifier alloc] initWithPersistentHistoryToken:v5 context:v2];
  v7 = [RMInternalStatusPublisher alloc];
  v8 = +[RMSubscribedStatusKeyPathUpdater sharedUpdater];
  v9 = [(RMInternalStatusPublisher *)v7 initWithInternalDeviceStatusByKeyPath:v4 subscribedStatusKeyPathUpdater:v8 persistentHistoryNotifier:v6 context:v2];
  v10 = qword_1000E68D0;
  qword_1000E68D0 = v9;

  [qword_1000E68D0 setDelegate:v3];
}

void sub_10003F064(uint64_t a1)
{
  v1 = [*(a1 + 32) sharedPublisher];
  [v1 _start];
}

void sub_10003F7CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, id obj)
{
  objc_sync_exit(obj);
  objc_sync_exit(a12);
  _Unwind_Resume(a1);
}

void sub_10003F81C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 internalStatusPublisher:*(a1 + 32) didChangeDeviceStatusByKeyPath:*(a1 + 40)];

  v3 = *(a1 + 48);
  v7 = 0;
  v4 = [v3 save:&v7];
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v6 = +[RMLog internalStatusPublisher];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100048BDC(v5, v6);
    }

    [*(a1 + 48) rollback];
  }
}

void sub_10003FCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003FD10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003FD28(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) identifier];
  v4 = [RMManagementSource fetchRequestWithIdentifier:v3];

  v17 = 0;
  v5 = [v4 execute:&v17];
  v6 = v17;
  if (v5)
  {
    v7 = [v5 firstObject];
    if (v7)
    {
      v8 = [*(a1 + 40) _queryForStatusWithKeyPaths:*(a1 + 48) onBehalfOfManagementSource:v7];
      v9 = *(*(a1 + 72) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    else
    {
      v10 = [*(a1 + 32) identifier];
      v14 = [RMErrorUtilities createManagementSourceNotFoundErrorWithIdentifier:v10];
      v15 = *(*(a1 + 64) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }

    [*(a1 + 56) reset];
  }

  else
  {
    v11 = +[RMLog internalStatusPublisher];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_100048C54(v2, v6, v11);
    }

    v12 = +[RMErrorUtilities createInternalError];
    v13 = *(*(a1 + 64) + 8);
    v7 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

void sub_100040074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100040098(uint64_t a1)
{
  v1 = (a1 + 32);
  v400 = [RMManagementSource fetchRequestWithIdentifier:*(a1 + 32)];
  v506 = 0;
  v399 = [v400 execute:&v506];
  v394 = v506;
  if (v399)
  {
    v2 = [v399 firstObject];
    v390 = v2;
    if (v2)
    {
      v387 = v2;
      v3 = [v387 activations];
      v414 = objc_opt_new();
      v509 = 0u;
      v510 = 0u;
      v507 = 0u;
      v508 = 0u;
      obj = v3;
      v422 = [obj countByEnumeratingWithState:&v507 objects:v511 count:16];
      if (!v422)
      {
        goto LABEL_107;
      }

      v418 = *v508;
      v410 = RMModelStatusManagementDeclarations_Declaration_Valid_unknown;
      v404 = RMModelStatusManagementDeclarations_Declaration_Valid_valid;
      v407 = RMModelStatusManagementDeclarations_Declaration_Valid_invalid;
      while (1)
      {
        v4 = 0;
        do
        {
          if (*v508 != v418)
          {
            v5 = v4;
            objc_enumerationMutation(obj);
            v4 = v5;
          }

          v430 = v4;
          v6 = *(*(&v507 + 1) + 8 * v4);
          if (![v6 loadState])
          {
            goto LABEL_105;
          }

          v446 = v6;
          v438 = v410;
          v442 = objc_opt_new();
          if ([v446 loadState] == 2)
          {
            v7 = v407;

            v434 = [RMModelStatusReason invalidPayloadForDeclaration:v446];
            [v442 addObject:v434];
            v8 = 0;
            v438 = v7;
            goto LABEL_101;
          }

          v9 = v446;
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v10 = [v9 managementSource];
            v11 = [v10 identifier];
            v12 = [v9 identifier];
            v13 = [v9 serverToken];
            v434 = [RMConfigurationStatusArchiver statusForStoreIdentifier:v11 declarationIdentifier:v12 serverToken:v13];
          }

          else
          {
            *&v512 = @"valid";
            v521 = &__kCFBooleanTrue;
            v434 = [NSDictionary dictionaryWithObjects:&v521 forKeys:&v512 count:1];
          }

          if (v434)
          {
            v14 = [v434 objectForKeyedSubscript:@"valid"];
            v15 = [v14 BOOLValue];
            v16 = v404;
            if (!v15)
            {
              v16 = v407;
            }

            v17 = v16;

            v18 = [v434 objectForKeyedSubscript:@"reasons"];
            if (v18)
            {
              [v442 addObjectsFromArray:v18];
            }

            v438 = v17;
          }

          v426 = v9;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v426;
            v20 = [v19 state];
            v21 = v20;
            if (v20)
            {
              v22 = [v20 inactiveReasons];
              v23 = v22;
              v24 = &__NSArray0__struct;
              if (v22)
              {
                v24 = v22;
              }

              v25 = v24;
            }

            else
            {
              v23 = [RMModelStatusReason missingStateForDeclaration:v19];
              v521 = v23;
              v25 = [NSArray arrayWithObjects:&v521 count:1];
            }

            v27 = v25;

            goto LABEL_97;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v490 = v426;
            v26 = [v490 state];
            v482 = v26;
            if (v26)
            {
              v27 = &__NSArray0__struct;
              if (([v26 active] & 1) == 0)
              {
                v498 = objc_opt_new();
                v28 = [v490 configurationReferences];
                v29 = [v28 allObjects];

                v474 = [NSSortDescriptor sortDescriptorWithKey:@"activation.identifier" ascending:1];
                *&v516 = v474;
                v30 = [NSArray arrayWithObjects:&v516 count:1];
                v31 = [v29 sortedArrayUsingDescriptors:v30];

                v514 = 0u;
                v515 = 0u;
                v512 = 0u;
                v513 = 0u;
                v32 = v31;
                v33 = [v32 countByEnumeratingWithState:&v512 objects:&v521 count:16];
                if (v33)
                {
                  v34 = *v513;
                  do
                  {
                    for (i = 0; i != v33; i = i + 1)
                    {
                      if (*v513 != v34)
                      {
                        objc_enumerationMutation(v32);
                      }

                      v36 = *(*(&v512 + 1) + 8 * i);
                      v37 = [v36 activation];
                      if (v37)
                      {
                        v38 = [v36 activation];
                        v39 = [v38 state];
                        v40 = v39;
                        if (v39)
                        {
                          v41 = [v39 inactiveReasons];
                          v42 = v41;
                          v43 = &__NSArray0__struct;
                          if (v41)
                          {
                            v43 = v41;
                          }

                          v44 = v43;
                        }

                        else
                        {
                          v42 = [RMModelStatusReason missingStateForDeclaration:v38];
                          *&v526 = v42;
                          v44 = [NSArray arrayWithObjects:&v526 count:1];
                        }

                        v45 = v44;

                        if ([v45 count])
                        {
                          v46 = [v36 activation];
                          v47 = [RMModelStatusReason activationFailed:v46];
                          [v498 addObject:v47];
                        }
                      }
                    }

                    v33 = [v32 countByEnumeratingWithState:&v512 objects:&v521 count:16];
                  }

                  while (v33);
                }

                if ([v490 loadState] == 4)
                {
                  v48 = [v490 declarationType];
                  v49 = [RMModelStatusReason failedWithUnknownDeclarationType:v48];
                  [v498 addObject:v49];

                  goto LABEL_93;
                }

                if (![v32 count])
                {
                  v48 = [RMModelStatusReason configurationIsNotReferencedByAnActivation:v490];
                  [v498 addObject:v48];
LABEL_93:
                }

                v83 = v498;

                v27 = v83;
LABEL_95:
              }

              goto LABEL_97;
            }

            v83 = [RMModelStatusReason missingStateForDeclaration:v490];
            v521 = v83;
            v27 = [NSArray arrayWithObjects:&v521 count:1];
            goto LABEL_95;
          }

          objc_opt_class();
          v27 = &__NSArray0__struct;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_97;
          }

          v396 = v426;
          v450 = objc_opt_new();
          v50 = [v396 assetReferences];
          v51 = [v50 allObjects];

          v391 = [NSSortDescriptor sortDescriptorWithKey:@"configuration.identifier" ascending:1];
          v520 = v391;
          v52 = [NSArray arrayWithObjects:&v520 count:1];
          v53 = [v51 sortedArrayUsingDescriptors:v52];

          v518 = 0u;
          v519 = 0u;
          v516 = 0u;
          v517 = 0u;
          v454 = v53;
          v466 = [v454 countByEnumeratingWithState:&v516 objects:&v512 count:16];
          if (!v466)
          {
            goto LABEL_85;
          }

          v462 = *v517;
          do
          {
            for (j = 0; j != v466; j = j + 1)
            {
              if (*v517 != v462)
              {
                objc_enumerationMutation(v454);
              }

              v54 = [*(*(&v516 + 1) + 8 * j) configuration];
              v483 = v54;
              v55 = v54;
              if (v54)
              {
                v475 = v54;
                v56 = [v475 state];
                v470 = v56;
                if (v56)
                {
                  v57 = &__NSArray0__struct;
                  if (([v56 active] & 1) == 0)
                  {
                    v499 = objc_opt_new();
                    v58 = [v475 configurationReferences];
                    v59 = [v58 allObjects];

                    v458 = [NSSortDescriptor sortDescriptorWithKey:@"activation.identifier" ascending:1];
                    v530 = v458;
                    v60 = [NSArray arrayWithObjects:&v530 count:1];
                    v61 = [v59 sortedArrayUsingDescriptors:v60];

                    v528 = 0u;
                    v529 = 0u;
                    v526 = 0u;
                    v527 = 0u;
                    v62 = v61;
                    v63 = [v62 countByEnumeratingWithState:&v526 objects:&v521 count:16];
                    if (v63)
                    {
                      v64 = *v527;
                      do
                      {
                        for (k = 0; k != v63; k = k + 1)
                        {
                          if (*v527 != v64)
                          {
                            objc_enumerationMutation(v62);
                          }

                          v66 = *(*(&v526 + 1) + 8 * k);
                          v67 = [v66 activation];
                          if (v67)
                          {
                            v68 = [v66 activation];
                            v69 = [v68 state];
                            v70 = v69;
                            if (v69)
                            {
                              v71 = [v69 inactiveReasons];
                              v72 = v71;
                              v73 = &__NSArray0__struct;
                              if (v71)
                              {
                                v73 = v71;
                              }

                              v74 = v73;
                            }

                            else
                            {
                              v72 = [RMModelStatusReason missingStateForDeclaration:v68];
                              v531 = v72;
                              v74 = [NSArray arrayWithObjects:&v531 count:1];
                            }

                            v75 = v74;

                            if ([v75 count])
                            {
                              v76 = [v66 activation];
                              v77 = [RMModelStatusReason activationFailed:v76];
                              [v499 addObject:v77];
                            }
                          }
                        }

                        v63 = [v62 countByEnumeratingWithState:&v526 objects:&v521 count:16];
                      }

                      while (v63);
                    }

                    if ([v475 loadState] == 4)
                    {
                      v78 = [v475 declarationType];
                      v79 = [RMModelStatusReason failedWithUnknownDeclarationType:v78];
                      [v499 addObject:v79];

                      goto LABEL_77;
                    }

                    if (![v62 count])
                    {
                      v78 = [RMModelStatusReason configurationIsNotReferencedByAnActivation:v475];
                      [v499 addObject:v78];
LABEL_77:
                    }

                    v80 = v499;

                    v57 = v80;
LABEL_79:
                  }

                  if ([v57 count])
                  {
                    v81 = [RMModelStatusReason configurationFailed:v475];
                    [v450 addObject:v81];
                  }

                  v55 = v483;
                  goto LABEL_83;
                }

                v80 = [RMModelStatusReason missingStateForDeclaration:v475];
                v521 = v80;
                v57 = [NSArray arrayWithObjects:&v521 count:1];
                goto LABEL_79;
              }

LABEL_83:
            }

            v466 = [v454 countByEnumeratingWithState:&v516 objects:&v512 count:16];
          }

          while (v466);
LABEL_85:

          if (![v454 count])
          {
            v82 = [RMModelStatusReason assetIsNotReferencedByConfiguration:v396];
            [v450 addObject:v82];
          }

          v27 = v450;

LABEL_97:
          [v442 addObjectsFromArray:v27];

          v84 = v426;
          *&v512 = 0;
          *(&v512 + 1) = &v512;
          *&v513 = 0x2020000000;
          BYTE8(v513) = 0;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v85 = [v84 assetReferences];
            v521 = _NSConcreteStackBlock;
            v522 = 3221225472;
            v523 = sub_100048AB4;
            v524 = &unk_1000D21F0;
            v525 = &v512;
            [v85 enumerateObjectsUsingBlock:&v521];
          }

          else
          {
            v85 = [v84 state];
            v86 = [v85 active];
            *(*(&v512 + 1) + 24) = v86;
          }

          v8 = *(*(&v512 + 1) + 24);
          _Block_object_dispose(&v512, 8);

LABEL_101:
          v87 = [v446 identifier];
          v88 = [v446 serverToken];
          v89 = [NSNumber numberWithBool:v8 & 1];
          if ([v442 count])
          {
            v90 = v442;
          }

          else
          {
            v90 = 0;
          }

          v91 = [RMModelStatusManagementDeclarations_Declaration buildWithIdentifier:v87 serverToken:v88 active:v89 valid:v438 reasons:v90];

          [v414 addObject:v91];
LABEL_105:
          v4 = v430 + 1;
        }

        while ((v430 + 1) != v422);
        v422 = [obj countByEnumeratingWithState:&v507 objects:v511 count:16];
        if (!v422)
        {
LABEL_107:

          v92 = [NSSortDescriptor sortDescriptorWithKey:@"statusIdentifier" ascending:1];
          v93 = [NSSortDescriptor sortDescriptorWithKey:@"statusServerToken" ascending:1];
          v521 = v92;
          v522 = v93;
          v94 = [NSArray arrayWithObjects:&v521 count:2];
          v384 = [v414 sortedArrayUsingDescriptors:v94];

          v95 = [v387 configurations];
          v415 = objc_opt_new();
          v509 = 0u;
          v510 = 0u;
          v507 = 0u;
          v508 = 0u;
          v408 = v95;
          v423 = [v408 countByEnumeratingWithState:&v507 objects:v511 count:16];
          if (!v423)
          {
            goto LABEL_211;
          }

          v419 = *v508;
          v411 = RMModelStatusManagementDeclarations_Declaration_Valid_unknown;
          v401 = RMModelStatusManagementDeclarations_Declaration_Valid_valid;
          v405 = RMModelStatusManagementDeclarations_Declaration_Valid_invalid;
LABEL_109:
          v96 = 0;
          while (1)
          {
            if (*v508 != v419)
            {
              v97 = v96;
              objc_enumerationMutation(v408);
              v96 = v97;
            }

            v431 = v96;
            v98 = *(*(&v507 + 1) + 8 * v96);
            if (![v98 loadState])
            {
              goto LABEL_209;
            }

            v447 = v98;
            v439 = v411;
            v443 = objc_opt_new();
            if ([v447 loadState] == 2)
            {
              v99 = v405;

              v435 = [RMModelStatusReason invalidPayloadForDeclaration:v447];
              [v443 addObject:v435];
              v100 = 0;
              v439 = v99;
              goto LABEL_205;
            }

            v101 = v447;
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              v102 = [v101 managementSource];
              v103 = [v102 identifier];
              v104 = [v101 identifier];
              v105 = [v101 serverToken];
              v435 = [RMConfigurationStatusArchiver statusForStoreIdentifier:v103 declarationIdentifier:v104 serverToken:v105];
            }

            else
            {
              *&v512 = @"valid";
              v521 = &__kCFBooleanTrue;
              v435 = [NSDictionary dictionaryWithObjects:&v521 forKeys:&v512 count:1];
            }

            if (v435)
            {
              v106 = [v435 objectForKeyedSubscript:@"valid"];
              v107 = [v106 BOOLValue];
              v108 = v401;
              if (!v107)
              {
                v108 = v405;
              }

              v109 = v108;

              v110 = [v435 objectForKeyedSubscript:@"reasons"];
              if (v110)
              {
                [v443 addObjectsFromArray:v110];
              }

              v439 = v109;
            }

            v427 = v101;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v111 = v427;
              v112 = [v111 state];
              v113 = v112;
              if (v112)
              {
                v114 = [v112 inactiveReasons];
                v115 = v114;
                v116 = &__NSArray0__struct;
                if (v114)
                {
                  v116 = v114;
                }

                v117 = v116;
              }

              else
              {
                v115 = [RMModelStatusReason missingStateForDeclaration:v111];
                v521 = v115;
                v117 = [NSArray arrayWithObjects:&v521 count:1];
              }

              v119 = v117;

              goto LABEL_201;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v492 = v427;
              v118 = [v492 state];
              v484 = v118;
              if (v118)
              {
                v119 = &__NSArray0__struct;
                if (([v118 active] & 1) == 0)
                {
                  v500 = objc_opt_new();
                  v120 = [v492 configurationReferences];
                  v121 = [v120 allObjects];

                  v476 = [NSSortDescriptor sortDescriptorWithKey:@"activation.identifier" ascending:1];
                  *&v516 = v476;
                  v122 = [NSArray arrayWithObjects:&v516 count:1];
                  v123 = [v121 sortedArrayUsingDescriptors:v122];

                  v514 = 0u;
                  v515 = 0u;
                  v512 = 0u;
                  v513 = 0u;
                  v124 = v123;
                  v125 = [v124 countByEnumeratingWithState:&v512 objects:&v521 count:16];
                  if (v125)
                  {
                    v126 = *v513;
                    do
                    {
                      for (m = 0; m != v125; m = m + 1)
                      {
                        if (*v513 != v126)
                        {
                          objc_enumerationMutation(v124);
                        }

                        v128 = *(*(&v512 + 1) + 8 * m);
                        v129 = [v128 activation];
                        if (v129)
                        {
                          v130 = [v128 activation];
                          v131 = [v130 state];
                          v132 = v131;
                          if (v131)
                          {
                            v133 = [v131 inactiveReasons];
                            v134 = v133;
                            v135 = &__NSArray0__struct;
                            if (v133)
                            {
                              v135 = v133;
                            }

                            v136 = v135;
                          }

                          else
                          {
                            v134 = [RMModelStatusReason missingStateForDeclaration:v130];
                            *&v526 = v134;
                            v136 = [NSArray arrayWithObjects:&v526 count:1];
                          }

                          v137 = v136;

                          if ([v137 count])
                          {
                            v138 = [v128 activation];
                            v139 = [RMModelStatusReason activationFailed:v138];
                            [v500 addObject:v139];
                          }
                        }
                      }

                      v125 = [v124 countByEnumeratingWithState:&v512 objects:&v521 count:16];
                    }

                    while (v125);
                  }

                  if ([v492 loadState] == 4)
                  {
                    v140 = [v492 declarationType];
                    v141 = [RMModelStatusReason failedWithUnknownDeclarationType:v140];
                    [v500 addObject:v141];

                    goto LABEL_197;
                  }

                  if (![v124 count])
                  {
                    v140 = [RMModelStatusReason configurationIsNotReferencedByAnActivation:v492];
                    [v500 addObject:v140];
LABEL_197:
                  }

                  v175 = v500;

                  v119 = v175;
LABEL_199:
                }

                goto LABEL_201;
              }

              v175 = [RMModelStatusReason missingStateForDeclaration:v492];
              v521 = v175;
              v119 = [NSArray arrayWithObjects:&v521 count:1];
              goto LABEL_199;
            }

            objc_opt_class();
            v119 = &__NSArray0__struct;
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_201;
            }

            v392 = v427;
            v451 = objc_opt_new();
            v142 = [v392 assetReferences];
            v143 = [v142 allObjects];

            v388 = [NSSortDescriptor sortDescriptorWithKey:@"configuration.identifier" ascending:1];
            v520 = v388;
            v144 = [NSArray arrayWithObjects:&v520 count:1];
            v145 = [v143 sortedArrayUsingDescriptors:v144];

            v518 = 0u;
            v519 = 0u;
            v516 = 0u;
            v517 = 0u;
            v455 = v145;
            v467 = [v455 countByEnumeratingWithState:&v516 objects:&v512 count:16];
            if (!v467)
            {
              goto LABEL_189;
            }

            v463 = *v517;
            do
            {
              for (n = 0; n != v467; n = n + 1)
              {
                if (*v517 != v463)
                {
                  objc_enumerationMutation(v455);
                }

                v146 = [*(*(&v516 + 1) + 8 * n) configuration];
                v485 = v146;
                v147 = v146;
                if (v146)
                {
                  v477 = v146;
                  v148 = [v477 state];
                  v471 = v148;
                  if (v148)
                  {
                    v149 = &__NSArray0__struct;
                    if (([v148 active] & 1) == 0)
                    {
                      v501 = objc_opt_new();
                      v150 = [v477 configurationReferences];
                      v151 = [v150 allObjects];

                      v459 = [NSSortDescriptor sortDescriptorWithKey:@"activation.identifier" ascending:1];
                      v530 = v459;
                      v152 = [NSArray arrayWithObjects:&v530 count:1];
                      v153 = [v151 sortedArrayUsingDescriptors:v152];

                      v528 = 0u;
                      v529 = 0u;
                      v526 = 0u;
                      v527 = 0u;
                      v154 = v153;
                      v155 = [v154 countByEnumeratingWithState:&v526 objects:&v521 count:16];
                      if (v155)
                      {
                        v156 = *v527;
                        do
                        {
                          for (ii = 0; ii != v155; ii = ii + 1)
                          {
                            if (*v527 != v156)
                            {
                              objc_enumerationMutation(v154);
                            }

                            v158 = *(*(&v526 + 1) + 8 * ii);
                            v159 = [v158 activation];
                            if (v159)
                            {
                              v160 = [v158 activation];
                              v161 = [v160 state];
                              v162 = v161;
                              if (v161)
                              {
                                v163 = [v161 inactiveReasons];
                                v164 = v163;
                                v165 = &__NSArray0__struct;
                                if (v163)
                                {
                                  v165 = v163;
                                }

                                v166 = v165;
                              }

                              else
                              {
                                v164 = [RMModelStatusReason missingStateForDeclaration:v160];
                                v531 = v164;
                                v166 = [NSArray arrayWithObjects:&v531 count:1];
                              }

                              v167 = v166;

                              if ([v167 count])
                              {
                                v168 = [v158 activation];
                                v169 = [RMModelStatusReason activationFailed:v168];
                                [v501 addObject:v169];
                              }
                            }
                          }

                          v155 = [v154 countByEnumeratingWithState:&v526 objects:&v521 count:16];
                        }

                        while (v155);
                      }

                      if ([v477 loadState] == 4)
                      {
                        v170 = [v477 declarationType];
                        v171 = [RMModelStatusReason failedWithUnknownDeclarationType:v170];
                        [v501 addObject:v171];

                        goto LABEL_181;
                      }

                      if (![v154 count])
                      {
                        v170 = [RMModelStatusReason configurationIsNotReferencedByAnActivation:v477];
                        [v501 addObject:v170];
LABEL_181:
                      }

                      v172 = v501;

                      v149 = v172;
LABEL_183:
                    }

                    if ([v149 count])
                    {
                      v173 = [RMModelStatusReason configurationFailed:v477];
                      [v451 addObject:v173];
                    }

                    v147 = v485;
                    goto LABEL_187;
                  }

                  v172 = [RMModelStatusReason missingStateForDeclaration:v477];
                  v521 = v172;
                  v149 = [NSArray arrayWithObjects:&v521 count:1];
                  goto LABEL_183;
                }

LABEL_187:
              }

              v467 = [v455 countByEnumeratingWithState:&v516 objects:&v512 count:16];
            }

            while (v467);
LABEL_189:

            if (![v455 count])
            {
              v174 = [RMModelStatusReason assetIsNotReferencedByConfiguration:v392];
              [v451 addObject:v174];
            }

            v119 = v451;

LABEL_201:
            [v443 addObjectsFromArray:v119];

            v176 = v427;
            *&v512 = 0;
            *(&v512 + 1) = &v512;
            *&v513 = 0x2020000000;
            BYTE8(v513) = 0;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v177 = [v176 assetReferences];
              v521 = _NSConcreteStackBlock;
              v522 = 3221225472;
              v523 = sub_100048AB4;
              v524 = &unk_1000D21F0;
              v525 = &v512;
              [v177 enumerateObjectsUsingBlock:&v521];
            }

            else
            {
              v177 = [v176 state];
              v178 = [v177 active];
              *(*(&v512 + 1) + 24) = v178;
            }

            v100 = *(*(&v512 + 1) + 24);
            _Block_object_dispose(&v512, 8);

LABEL_205:
            v179 = [v447 identifier];
            v180 = [v447 serverToken];
            v181 = [NSNumber numberWithBool:v100 & 1];
            if ([v443 count])
            {
              v182 = v443;
            }

            else
            {
              v182 = 0;
            }

            v183 = [RMModelStatusManagementDeclarations_Declaration buildWithIdentifier:v179 serverToken:v180 active:v181 valid:v439 reasons:v182];

            [v415 addObject:v183];
LABEL_209:
            v96 = v431 + 1;
            if ((v431 + 1) == v423)
            {
              v423 = [v408 countByEnumeratingWithState:&v507 objects:v511 count:16];
              if (v423)
              {
                goto LABEL_109;
              }

LABEL_211:

              v184 = [NSSortDescriptor sortDescriptorWithKey:@"statusIdentifier" ascending:1];
              v185 = [NSSortDescriptor sortDescriptorWithKey:@"statusServerToken" ascending:1];
              v521 = v184;
              v522 = v185;
              v186 = [NSArray arrayWithObjects:&v521 count:2];
              v382 = [v415 sortedArrayUsingDescriptors:v186];

              v187 = [v387 assets];
              v416 = objc_opt_new();
              v509 = 0u;
              v510 = 0u;
              v507 = 0u;
              v508 = 0u;
              v406 = v187;
              v424 = [v406 countByEnumeratingWithState:&v507 objects:v511 count:16];
              if (!v424)
              {
                goto LABEL_315;
              }

              v420 = *v508;
              v412 = RMModelStatusManagementDeclarations_Declaration_Valid_unknown;
              v397 = RMModelStatusManagementDeclarations_Declaration_Valid_valid;
              v402 = RMModelStatusManagementDeclarations_Declaration_Valid_invalid;
              while (2)
              {
                v188 = 0;
LABEL_214:
                if (*v508 != v420)
                {
                  v189 = v188;
                  objc_enumerationMutation(v406);
                  v188 = v189;
                }

                v432 = v188;
                v190 = *(*(&v507 + 1) + 8 * v188);
                if (![v190 loadState])
                {
                  goto LABEL_313;
                }

                v448 = v190;
                v440 = v412;
                v444 = objc_opt_new();
                if ([v448 loadState] == 2)
                {
                  v191 = v402;

                  v436 = [RMModelStatusReason invalidPayloadForDeclaration:v448];
                  [v444 addObject:v436];
                  v192 = 0;
                  v440 = v191;
                  goto LABEL_309;
                }

                v193 = v448;
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  v194 = [v193 managementSource];
                  v195 = [v194 identifier];
                  v196 = [v193 identifier];
                  v197 = [v193 serverToken];
                  v436 = [RMConfigurationStatusArchiver statusForStoreIdentifier:v195 declarationIdentifier:v196 serverToken:v197];
                }

                else
                {
                  *&v512 = @"valid";
                  v521 = &__kCFBooleanTrue;
                  v436 = [NSDictionary dictionaryWithObjects:&v521 forKeys:&v512 count:1];
                }

                if (v436)
                {
                  v198 = [v436 objectForKeyedSubscript:@"valid"];
                  v199 = [v198 BOOLValue];
                  v200 = v397;
                  if (!v199)
                  {
                    v200 = v402;
                  }

                  v201 = v200;

                  v202 = [v436 objectForKeyedSubscript:@"reasons"];
                  if (v202)
                  {
                    [v444 addObjectsFromArray:v202];
                  }

                  v440 = v201;
                }

                v428 = v193;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v203 = v428;
                  v204 = [v203 state];
                  v205 = v204;
                  if (v204)
                  {
                    v206 = [v204 inactiveReasons];
                    v207 = v206;
                    v208 = &__NSArray0__struct;
                    if (v206)
                    {
                      v208 = v206;
                    }

                    v209 = v208;
                  }

                  else
                  {
                    v207 = [RMModelStatusReason missingStateForDeclaration:v203];
                    v521 = v207;
                    v209 = [NSArray arrayWithObjects:&v521 count:1];
                  }

                  v211 = v209;

                  goto LABEL_305;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v494 = v428;
                  v210 = [v494 state];
                  v486 = v210;
                  if (v210)
                  {
                    v211 = &__NSArray0__struct;
                    if (([v210 active] & 1) == 0)
                    {
                      v502 = objc_opt_new();
                      v212 = [v494 configurationReferences];
                      v213 = [v212 allObjects];

                      v478 = [NSSortDescriptor sortDescriptorWithKey:@"activation.identifier" ascending:1];
                      *&v516 = v478;
                      v214 = [NSArray arrayWithObjects:&v516 count:1];
                      v215 = [v213 sortedArrayUsingDescriptors:v214];

                      v514 = 0u;
                      v515 = 0u;
                      v512 = 0u;
                      v513 = 0u;
                      v216 = v215;
                      v217 = [v216 countByEnumeratingWithState:&v512 objects:&v521 count:16];
                      if (v217)
                      {
                        v218 = *v513;
                        do
                        {
                          for (jj = 0; jj != v217; jj = jj + 1)
                          {
                            if (*v513 != v218)
                            {
                              objc_enumerationMutation(v216);
                            }

                            v220 = *(*(&v512 + 1) + 8 * jj);
                            v221 = [v220 activation];
                            if (v221)
                            {
                              v222 = [v220 activation];
                              v223 = [v222 state];
                              v224 = v223;
                              if (v223)
                              {
                                v225 = [v223 inactiveReasons];
                                v226 = v225;
                                v227 = &__NSArray0__struct;
                                if (v225)
                                {
                                  v227 = v225;
                                }

                                v228 = v227;
                              }

                              else
                              {
                                v226 = [RMModelStatusReason missingStateForDeclaration:v222];
                                *&v526 = v226;
                                v228 = [NSArray arrayWithObjects:&v526 count:1];
                              }

                              v229 = v228;

                              if ([v229 count])
                              {
                                v230 = [v220 activation];
                                v231 = [RMModelStatusReason activationFailed:v230];
                                [v502 addObject:v231];
                              }
                            }
                          }

                          v217 = [v216 countByEnumeratingWithState:&v512 objects:&v521 count:16];
                        }

                        while (v217);
                      }

                      if ([v494 loadState] == 4)
                      {
                        v232 = [v494 declarationType];
                        v233 = [RMModelStatusReason failedWithUnknownDeclarationType:v232];
                        [v502 addObject:v233];

                        goto LABEL_301;
                      }

                      if (![v216 count])
                      {
                        v232 = [RMModelStatusReason configurationIsNotReferencedByAnActivation:v494];
                        [v502 addObject:v232];
LABEL_301:
                      }

                      v267 = v502;

                      v211 = v267;
LABEL_303:
                    }

                    goto LABEL_305;
                  }

                  v267 = [RMModelStatusReason missingStateForDeclaration:v494];
                  v521 = v267;
                  v211 = [NSArray arrayWithObjects:&v521 count:1];
                  goto LABEL_303;
                }

                objc_opt_class();
                v211 = &__NSArray0__struct;
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_305;
                }

                v389 = v428;
                v452 = objc_opt_new();
                v234 = [v389 assetReferences];
                v235 = [v234 allObjects];

                v385 = [NSSortDescriptor sortDescriptorWithKey:@"configuration.identifier" ascending:1];
                v520 = v385;
                v236 = [NSArray arrayWithObjects:&v520 count:1];
                v237 = [v235 sortedArrayUsingDescriptors:v236];

                v518 = 0u;
                v519 = 0u;
                v516 = 0u;
                v517 = 0u;
                v456 = v237;
                v468 = [v456 countByEnumeratingWithState:&v516 objects:&v512 count:16];
                if (!v468)
                {
                  goto LABEL_293;
                }

                v464 = *v517;
LABEL_258:
                v495 = 0;
LABEL_259:
                if (*v517 != v464)
                {
                  objc_enumerationMutation(v456);
                }

                v238 = [*(*(&v516 + 1) + 8 * v495) configuration];
                v487 = v238;
                v239 = v238;
                if (v238)
                {
                  v479 = v238;
                  v240 = [v479 state];
                  v472 = v240;
                  if (!v240)
                  {
                    v264 = [RMModelStatusReason missingStateForDeclaration:v479];
                    v521 = v264;
                    v241 = [NSArray arrayWithObjects:&v521 count:1];
                    goto LABEL_287;
                  }

                  v241 = &__NSArray0__struct;
                  if (([v240 active] & 1) == 0)
                  {
                    v503 = objc_opt_new();
                    v242 = [v479 configurationReferences];
                    v243 = [v242 allObjects];

                    v460 = [NSSortDescriptor sortDescriptorWithKey:@"activation.identifier" ascending:1];
                    v530 = v460;
                    v244 = [NSArray arrayWithObjects:&v530 count:1];
                    v245 = [v243 sortedArrayUsingDescriptors:v244];

                    v528 = 0u;
                    v529 = 0u;
                    v526 = 0u;
                    v527 = 0u;
                    v246 = v245;
                    v247 = [v246 countByEnumeratingWithState:&v526 objects:&v521 count:16];
                    if (v247)
                    {
                      v248 = *v527;
                      do
                      {
                        for (kk = 0; kk != v247; kk = kk + 1)
                        {
                          if (*v527 != v248)
                          {
                            objc_enumerationMutation(v246);
                          }

                          v250 = *(*(&v526 + 1) + 8 * kk);
                          v251 = [v250 activation];
                          if (v251)
                          {
                            v252 = [v250 activation];
                            v253 = [v252 state];
                            v254 = v253;
                            if (v253)
                            {
                              v255 = [v253 inactiveReasons];
                              v256 = v255;
                              v257 = &__NSArray0__struct;
                              if (v255)
                              {
                                v257 = v255;
                              }

                              v258 = v257;
                            }

                            else
                            {
                              v256 = [RMModelStatusReason missingStateForDeclaration:v252];
                              v531 = v256;
                              v258 = [NSArray arrayWithObjects:&v531 count:1];
                            }

                            v259 = v258;

                            if ([v259 count])
                            {
                              v260 = [v250 activation];
                              v261 = [RMModelStatusReason activationFailed:v260];
                              [v503 addObject:v261];
                            }
                          }
                        }

                        v247 = [v246 countByEnumeratingWithState:&v526 objects:&v521 count:16];
                      }

                      while (v247);
                    }

                    if ([v479 loadState] == 4)
                    {
                      v262 = [v479 declarationType];
                      v263 = [RMModelStatusReason failedWithUnknownDeclarationType:v262];
                      [v503 addObject:v263];

                      goto LABEL_285;
                    }

                    if (![v246 count])
                    {
                      v262 = [RMModelStatusReason configurationIsNotReferencedByAnActivation:v479];
                      [v503 addObject:v262];
LABEL_285:
                    }

                    v264 = v503;

                    v241 = v264;
LABEL_287:
                  }

                  if ([v241 count])
                  {
                    v265 = [RMModelStatusReason configurationFailed:v479];
                    [v452 addObject:v265];
                  }

                  v239 = v487;
                }

                if (++v495 == v468)
                {
                  v468 = [v456 countByEnumeratingWithState:&v516 objects:&v512 count:16];
                  if (!v468)
                  {
LABEL_293:

                    if (![v456 count])
                    {
                      v266 = [RMModelStatusReason assetIsNotReferencedByConfiguration:v389];
                      [v452 addObject:v266];
                    }

                    v211 = v452;

LABEL_305:
                    [v444 addObjectsFromArray:v211];

                    v268 = v428;
                    *&v512 = 0;
                    *(&v512 + 1) = &v512;
                    *&v513 = 0x2020000000;
                    BYTE8(v513) = 0;
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v269 = [v268 assetReferences];
                      v521 = _NSConcreteStackBlock;
                      v522 = 3221225472;
                      v523 = sub_100048AB4;
                      v524 = &unk_1000D21F0;
                      v525 = &v512;
                      [v269 enumerateObjectsUsingBlock:&v521];
                    }

                    else
                    {
                      v269 = [v268 state];
                      v270 = [v269 active];
                      *(*(&v512 + 1) + 24) = v270;
                    }

                    v192 = *(*(&v512 + 1) + 24);
                    _Block_object_dispose(&v512, 8);

LABEL_309:
                    v271 = [v448 identifier];
                    v272 = [v448 serverToken];
                    v273 = [NSNumber numberWithBool:v192 & 1];
                    if ([v444 count])
                    {
                      v274 = v444;
                    }

                    else
                    {
                      v274 = 0;
                    }

                    v275 = [RMModelStatusManagementDeclarations_Declaration buildWithIdentifier:v271 serverToken:v272 active:v273 valid:v440 reasons:v274];

                    [v416 addObject:v275];
LABEL_313:
                    v188 = v432 + 1;
                    if ((v432 + 1) == v424)
                    {
                      v424 = [v406 countByEnumeratingWithState:&v507 objects:v511 count:16];
                      if (v424)
                      {
                        continue;
                      }

LABEL_315:

                      v276 = [NSSortDescriptor sortDescriptorWithKey:@"statusIdentifier" ascending:1];
                      v277 = [NSSortDescriptor sortDescriptorWithKey:@"statusServerToken" ascending:1];
                      v521 = v276;
                      v522 = v277;
                      v278 = [NSArray arrayWithObjects:&v521 count:2];
                      v381 = [v416 sortedArrayUsingDescriptors:v278];

                      v279 = [v387 management];
                      v417 = objc_opt_new();
                      v509 = 0u;
                      v510 = 0u;
                      v507 = 0u;
                      v508 = 0u;
                      v403 = v279;
                      v425 = [v403 countByEnumeratingWithState:&v507 objects:v511 count:16];
                      if (!v425)
                      {
                        goto LABEL_419;
                      }

                      v421 = *v508;
                      v413 = RMModelStatusManagementDeclarations_Declaration_Valid_unknown;
                      v393 = RMModelStatusManagementDeclarations_Declaration_Valid_valid;
                      v398 = RMModelStatusManagementDeclarations_Declaration_Valid_invalid;
                      while (2)
                      {
                        v280 = 0;
LABEL_318:
                        if (*v508 != v421)
                        {
                          v281 = v280;
                          objc_enumerationMutation(v403);
                          v280 = v281;
                        }

                        v433 = v280;
                        v282 = *(*(&v507 + 1) + 8 * v280);
                        if (![v282 loadState])
                        {
                          goto LABEL_417;
                        }

                        v449 = v282;
                        v441 = v413;
                        v445 = objc_opt_new();
                        if ([v449 loadState] == 2)
                        {
                          v283 = v398;

                          v437 = [RMModelStatusReason invalidPayloadForDeclaration:v449];
                          [v445 addObject:v437];
                          v284 = 0;
                          v441 = v283;
                          goto LABEL_413;
                        }

                        v285 = v449;
                        objc_opt_class();
                        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                        {
                          v286 = [v285 managementSource];
                          v287 = [v286 identifier];
                          v288 = [v285 identifier];
                          v289 = [v285 serverToken];
                          v437 = [RMConfigurationStatusArchiver statusForStoreIdentifier:v287 declarationIdentifier:v288 serverToken:v289];
                        }

                        else
                        {
                          *&v512 = @"valid";
                          v521 = &__kCFBooleanTrue;
                          v437 = [NSDictionary dictionaryWithObjects:&v521 forKeys:&v512 count:1];
                        }

                        if (v437)
                        {
                          v290 = [v437 objectForKeyedSubscript:@"valid"];
                          v291 = [v290 BOOLValue];
                          v292 = v393;
                          if (!v291)
                          {
                            v292 = v398;
                          }

                          v293 = v292;

                          v294 = [v437 objectForKeyedSubscript:@"reasons"];
                          if (v294)
                          {
                            [v445 addObjectsFromArray:v294];
                          }

                          v441 = v293;
                        }

                        v429 = v285;
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v295 = v429;
                          v296 = [v295 state];
                          v297 = v296;
                          if (v296)
                          {
                            v298 = [v296 inactiveReasons];
                            v299 = v298;
                            v300 = &__NSArray0__struct;
                            if (v298)
                            {
                              v300 = v298;
                            }

                            v301 = v300;
                          }

                          else
                          {
                            v299 = [RMModelStatusReason missingStateForDeclaration:v295];
                            v521 = v299;
                            v301 = [NSArray arrayWithObjects:&v521 count:1];
                          }

                          v303 = v301;

                          goto LABEL_409;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v496 = v429;
                          v302 = [v496 state];
                          v488 = v302;
                          if (v302)
                          {
                            v303 = &__NSArray0__struct;
                            if (([v302 active] & 1) == 0)
                            {
                              v504 = objc_opt_new();
                              v304 = [v496 configurationReferences];
                              v305 = [v304 allObjects];

                              v480 = [NSSortDescriptor sortDescriptorWithKey:@"activation.identifier" ascending:1];
                              *&v516 = v480;
                              v306 = [NSArray arrayWithObjects:&v516 count:1];
                              v307 = [v305 sortedArrayUsingDescriptors:v306];

                              v514 = 0u;
                              v515 = 0u;
                              v512 = 0u;
                              v513 = 0u;
                              v308 = v307;
                              v309 = [v308 countByEnumeratingWithState:&v512 objects:&v521 count:16];
                              if (v309)
                              {
                                v310 = *v513;
                                do
                                {
                                  for (mm = 0; mm != v309; mm = mm + 1)
                                  {
                                    if (*v513 != v310)
                                    {
                                      objc_enumerationMutation(v308);
                                    }

                                    v312 = *(*(&v512 + 1) + 8 * mm);
                                    v313 = [v312 activation];
                                    if (v313)
                                    {
                                      v314 = [v312 activation];
                                      v315 = [v314 state];
                                      v316 = v315;
                                      if (v315)
                                      {
                                        v317 = [v315 inactiveReasons];
                                        v318 = v317;
                                        v319 = &__NSArray0__struct;
                                        if (v317)
                                        {
                                          v319 = v317;
                                        }

                                        v320 = v319;
                                      }

                                      else
                                      {
                                        v318 = [RMModelStatusReason missingStateForDeclaration:v314];
                                        *&v526 = v318;
                                        v320 = [NSArray arrayWithObjects:&v526 count:1];
                                      }

                                      v321 = v320;

                                      if ([v321 count])
                                      {
                                        v322 = [v312 activation];
                                        v323 = [RMModelStatusReason activationFailed:v322];
                                        [v504 addObject:v323];
                                      }
                                    }
                                  }

                                  v309 = [v308 countByEnumeratingWithState:&v512 objects:&v521 count:16];
                                }

                                while (v309);
                              }

                              if ([v496 loadState] == 4)
                              {
                                v324 = [v496 declarationType];
                                v325 = [RMModelStatusReason failedWithUnknownDeclarationType:v324];
                                [v504 addObject:v325];

                                goto LABEL_405;
                              }

                              if (![v308 count])
                              {
                                v324 = [RMModelStatusReason configurationIsNotReferencedByAnActivation:v496];
                                [v504 addObject:v324];
LABEL_405:
                              }

                              v359 = v504;

                              v303 = v359;
LABEL_407:
                            }

                            goto LABEL_409;
                          }

                          v359 = [RMModelStatusReason missingStateForDeclaration:v496];
                          v521 = v359;
                          v303 = [NSArray arrayWithObjects:&v521 count:1];
                          goto LABEL_407;
                        }

                        objc_opt_class();
                        v303 = &__NSArray0__struct;
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          goto LABEL_409;
                        }

                        v386 = v429;
                        v453 = objc_opt_new();
                        v326 = [v386 assetReferences];
                        v327 = [v326 allObjects];

                        v383 = [NSSortDescriptor sortDescriptorWithKey:@"configuration.identifier" ascending:1];
                        v520 = v383;
                        v328 = [NSArray arrayWithObjects:&v520 count:1];
                        v329 = [v327 sortedArrayUsingDescriptors:v328];

                        v518 = 0u;
                        v519 = 0u;
                        v516 = 0u;
                        v517 = 0u;
                        v457 = v329;
                        v469 = [v457 countByEnumeratingWithState:&v516 objects:&v512 count:16];
                        if (!v469)
                        {
                          goto LABEL_397;
                        }

                        v465 = *v517;
LABEL_362:
                        v497 = 0;
LABEL_363:
                        if (*v517 != v465)
                        {
                          objc_enumerationMutation(v457);
                        }

                        v330 = [*(*(&v516 + 1) + 8 * v497) configuration];
                        v489 = v330;
                        v331 = v330;
                        if (v330)
                        {
                          v481 = v330;
                          v332 = [v481 state];
                          v473 = v332;
                          if (!v332)
                          {
                            v356 = [RMModelStatusReason missingStateForDeclaration:v481];
                            v521 = v356;
                            v333 = [NSArray arrayWithObjects:&v521 count:1];
                            goto LABEL_391;
                          }

                          v333 = &__NSArray0__struct;
                          if (([v332 active] & 1) == 0)
                          {
                            v505 = objc_opt_new();
                            v334 = [v481 configurationReferences];
                            v335 = [v334 allObjects];

                            v461 = [NSSortDescriptor sortDescriptorWithKey:@"activation.identifier" ascending:1];
                            v530 = v461;
                            v336 = [NSArray arrayWithObjects:&v530 count:1];
                            v337 = [v335 sortedArrayUsingDescriptors:v336];

                            v528 = 0u;
                            v529 = 0u;
                            v526 = 0u;
                            v527 = 0u;
                            v338 = v337;
                            v339 = [v338 countByEnumeratingWithState:&v526 objects:&v521 count:16];
                            if (v339)
                            {
                              v340 = *v527;
                              do
                              {
                                for (nn = 0; nn != v339; nn = nn + 1)
                                {
                                  if (*v527 != v340)
                                  {
                                    objc_enumerationMutation(v338);
                                  }

                                  v342 = *(*(&v526 + 1) + 8 * nn);
                                  v343 = [v342 activation];
                                  if (v343)
                                  {
                                    v344 = [v342 activation];
                                    v345 = [v344 state];
                                    v346 = v345;
                                    if (v345)
                                    {
                                      v347 = [v345 inactiveReasons];
                                      v348 = v347;
                                      v349 = &__NSArray0__struct;
                                      if (v347)
                                      {
                                        v349 = v347;
                                      }

                                      v350 = v349;
                                    }

                                    else
                                    {
                                      v348 = [RMModelStatusReason missingStateForDeclaration:v344];
                                      v531 = v348;
                                      v350 = [NSArray arrayWithObjects:&v531 count:1];
                                    }

                                    v351 = v350;

                                    if ([v351 count])
                                    {
                                      v352 = [v342 activation];
                                      v353 = [RMModelStatusReason activationFailed:v352];
                                      [v505 addObject:v353];
                                    }
                                  }
                                }

                                v339 = [v338 countByEnumeratingWithState:&v526 objects:&v521 count:16];
                              }

                              while (v339);
                            }

                            if ([v481 loadState] == 4)
                            {
                              v354 = [v481 declarationType];
                              v355 = [RMModelStatusReason failedWithUnknownDeclarationType:v354];
                              [v505 addObject:v355];

                              goto LABEL_389;
                            }

                            if (![v338 count])
                            {
                              v354 = [RMModelStatusReason configurationIsNotReferencedByAnActivation:v481];
                              [v505 addObject:v354];
LABEL_389:
                            }

                            v356 = v505;

                            v333 = v356;
LABEL_391:
                          }

                          if ([v333 count])
                          {
                            v357 = [RMModelStatusReason configurationFailed:v481];
                            [v453 addObject:v357];
                          }

                          v331 = v489;
                        }

                        if (++v497 == v469)
                        {
                          v469 = [v457 countByEnumeratingWithState:&v516 objects:&v512 count:16];
                          if (!v469)
                          {
LABEL_397:

                            if (![v457 count])
                            {
                              v358 = [RMModelStatusReason assetIsNotReferencedByConfiguration:v386];
                              [v453 addObject:v358];
                            }

                            v303 = v453;

LABEL_409:
                            [v445 addObjectsFromArray:v303];

                            v360 = v429;
                            *&v512 = 0;
                            *(&v512 + 1) = &v512;
                            *&v513 = 0x2020000000;
                            BYTE8(v513) = 0;
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v361 = [v360 assetReferences];
                              v521 = _NSConcreteStackBlock;
                              v522 = 3221225472;
                              v523 = sub_100048AB4;
                              v524 = &unk_1000D21F0;
                              v525 = &v512;
                              [v361 enumerateObjectsUsingBlock:&v521];
                            }

                            else
                            {
                              v361 = [v360 state];
                              v362 = [v361 active];
                              *(*(&v512 + 1) + 24) = v362;
                            }

                            v284 = *(*(&v512 + 1) + 24);
                            _Block_object_dispose(&v512, 8);

LABEL_413:
                            v363 = [v449 identifier];
                            v364 = [v449 serverToken];
                            v365 = [NSNumber numberWithBool:v284 & 1];
                            if ([v445 count])
                            {
                              v366 = v445;
                            }

                            else
                            {
                              v366 = 0;
                            }

                            v367 = [RMModelStatusManagementDeclarations_Declaration buildWithIdentifier:v363 serverToken:v364 active:v365 valid:v441 reasons:v366];

                            [v417 addObject:v367];
LABEL_417:
                            v280 = v433 + 1;
                            if ((v433 + 1) == v425)
                            {
                              v425 = [v403 countByEnumeratingWithState:&v507 objects:v511 count:16];
                              if (!v425)
                              {
LABEL_419:

                                v368 = [NSSortDescriptor sortDescriptorWithKey:@"statusIdentifier" ascending:1];
                                v369 = [NSSortDescriptor sortDescriptorWithKey:@"statusServerToken" ascending:1];
                                v521 = v368;
                                v522 = v369;
                                v370 = [NSArray arrayWithObjects:&v521 count:2];
                                v371 = [v417 sortedArrayUsingDescriptors:v370];

                                v372 = [RMModelStatusManagementDeclarations buildRequiredOnlyWithActivations:v384 configurations:v382 assets:v381 management:v371];

                                v373 = [v372 serializeWithType:1];

                                v374 = 56;
                                goto LABEL_424;
                              }

                              continue;
                            }

                            goto LABEL_318;
                          }

                          goto LABEL_362;
                        }

                        goto LABEL_363;
                      }
                    }

                    goto LABEL_214;
                  }

                  goto LABEL_258;
                }

                goto LABEL_259;
              }
            }
          }
        }
      }
    }

    v373 = [RMErrorUtilities createManagementSourceNotFoundErrorWithIdentifier:*v1];
    v374 = 48;
LABEL_424:
    v379 = *(*(a1 + v374) + 8);
    v380 = *(v379 + 40);
    *(v379 + 40) = v373;

    [*(a1 + 40) reset];
    v378 = v390;
  }

  else
  {
    v375 = +[RMLog internalStatusPublisher];
    if (os_log_type_enabled(v375, OS_LOG_TYPE_FAULT))
    {
      sub_100048D08(v1, v394, v375);
    }

    v376 = +[RMErrorUtilities createInternalError];
    v377 = *(*(a1 + 48) + 8);
    v378 = *(v377 + 40);
    *(v377 + 40) = v376;
  }
}