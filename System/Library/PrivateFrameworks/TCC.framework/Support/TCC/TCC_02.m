id showBundleForService(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[TCCDPlatform currentPlatform];
  if ([v4 ios_allowRegionalPrompt] && ((v6 = sub_10004DFF0(v3, @"com.apple.private.tcc.allow-or-regional-prompt", v4), v7 = sub_10004DFF0(v3, @"com.apple.private.tcc.allow-or-regional-prompt.overridable", v4), (v6 & 1) != 0) || v7))
  {
    v8 = [v5 isChinaSKUDevice];
  }

  else
  {
    v8 = (sub_10004DFF0(v3, @"com.apple.private.tcc.allow", v4) ^ 1);
  }

  return v8;
}

id sub_10004DFF0(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [a1 entitlements];
  v8 = [v7 objectForKey:v6 ofClass:objc_opt_class()];

  v9 = [v5 name];

  v10 = [v8 containsObject:v9];
  return v10;
}

void sub_10004E098(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  v5 = +[TCCDPlatform currentPlatform];
  v6 = sqlite3_column_int64(a2, 2);
  v7 = sqlite3_column_int64(a2, 9);
  v8 = sqlite3_column_int64(a2, 10);
  v9 = sqlite3_column_int64(a2, 11);
  v10 = [v5 server];
  v11 = [v10 isAccessEntryWithAge:sqlite3_column_int(a2 authorizationValue:5) expiredForService:{v6, v4}];

  if (v11)
  {
    v12 = 0;
    v13 = 1;
    goto LABEL_27;
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  if (!v14)
  {
    v34 = tcc_access_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_10004F7C0();
    }

    goto LABEL_25;
  }

  v15 = xpc_dictionary_create(0, 0, 0);
  v16 = sqlite3_column_int(a2, 1);
  xpc_dictionary_set_uint64(v15, "TCCD_MSG_IDENTITY_TYPE_KEY", v16);
  v17 = sqlite3_column_text(a2, 0);
  xpc_dictionary_set_string(v15, "TCCD_MSG_IDENTITY_ID_KEY", v17);
  v34 = v15;
  if (sqlite3_column_type(a2, 3) == 5)
  {
    xpc_dictionary_set_uint64(v15, "TCCD_MSG_IDENTITY_VERIFIER_TYPE_KEY", 0);
  }

  else
  {
    v18 = sqlite3_column_blob(a2, 3);
    v19 = sqlite3_column_bytes(a2, 3);
    v20 = v18;
    v15 = v34;
    xpc_dictionary_set_data(v14, "code_requirement", v20, v19);
  }

  xpc_dictionary_set_value(v14, "TCC_MSG_REQUEST_AUTHORIZATION_SUBJECT_IDENTITY_DICTIONARY_KEY", v15);
  xpc_dictionary_set_BOOL(v14, "granted", v6 != 0);
  xpc_dictionary_set_uint64(v14, "auth_value", v6);
  xpc_dictionary_set_uint64(v14, "auth_reason", v7);
  xpc_dictionary_set_uint64(v14, "auth_version", v8);
  xpc_dictionary_set_BOOL(v14, "has_prompted_for_allow", (v9 & 0x10) != 0);
  v21 = sqlite3_column_int64(a2, 4);
  xpc_dictionary_set_int64(v14, "last_modified", v21);
  v22 = sqlite3_column_int(a2, 1);
  if (v22 == 2)
  {
    v30 = tcc_access_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10004F634(a2);
    }

    v13 = 0;
    goto LABEL_21;
  }

  if (v22 == 1)
  {
    v29 = sqlite3_column_text(a2, 0);
    xpc_dictionary_set_string(v14, "path", v29);
    goto LABEL_17;
  }

  if (v22)
  {
    v31 = tcc_access_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10004F73C(a2);
    }

    goto LABEL_25;
  }

  v23 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 0)];
  if (!v23)
  {
LABEL_25:
    v12 = 0;
    v13 = 1;
    goto LABEL_26;
  }

  v24 = v23;
  xpc_dictionary_set_string(v14, "bundle_id", [v23 UTF8String]);
  v35 = 0;
  v25 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v24 allowPlaceholder:0 error:&v35];
  v26 = v35;
  if (!v25)
  {
    v33 = tcc_access_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10004F6B8();
    }

    goto LABEL_36;
  }

  if ((showBundleForService(v25, v4) & 1) == 0)
  {
LABEL_36:
    v12 = v14;

    v13 = 0;
    goto LABEL_26;
  }

  v27 = [v25 URL];
  v28 = [v27 absoluteString];
  xpc_dictionary_set_string(v14, "bundle", [v28 UTF8String]);

LABEL_17:
  v13 = 1;
LABEL_21:
  v12 = v14;
LABEL_26:

LABEL_27:
  if (v12)
  {
    v32 = v13 ^ 1;
    if (*(a1 + 56) != 1)
    {
      v32 = 0;
    }

    if ((v32 & 1) == 0)
    {
      xpc_array_append_value(*(*(*(a1 + 48) + 8) + 40), v12);
    }
  }
}

void sub_10004E548(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) name];
  if (sqlite3_bind_text(a2, 1, [v3 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL))
  {
  }

  else
  {
    v4 = sqlite3_bind_text(a2, 2, "kTCCServiceEndpointSecurityClient", -1, 0xFFFFFFFFFFFFFFFFLL);

    if (!v4)
    {
      return;
    }
  }

  _db_error(1);
}

uint64_t sub_10004E5F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 server];
  v7 = [v6 descriptionForMessage:v5];

  v8 = tcc_access_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10004F800(v7, a2, v8);
  }

  return 1;
}

void sub_10004E684(void *a1, sqlite3_stmt *a2)
{
  if (sqlite3_column_type(a2, 0) != 5)
  {
    v4 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 0)];
    v5 = *(a1[4] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 1)];
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 2)];
  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  *(*(a1[7] + 8) + 24) = 1;
}

void sub_10004E780(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) name];
  if (sqlite3_bind_text(a2, 1, [v3 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_text(a2, 2, "kTCCServiceEndpointSecurityClient", -1, 0xFFFFFFFFFFFFFFFFLL))
  {
  }

  else
  {
    v4 = sqlite3_bind_int(a2, 3, 0);

    if (!v4)
    {
      return;
    }
  }

  _db_error(1);
}

void sub_10004E838(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) name];
  if (sqlite3_bind_text(a2, 1, [v3 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_text(a2, 2, "kTCCServiceEndpointSecurityClient", -1, 0xFFFFFFFFFFFFFFFFLL))
  {
  }

  else
  {
    v4 = sqlite3_bind_int(a2, 3, 0);

    if (!v4)
    {
      return;
    }
  }

  _db_error(1);
}

void handle_TCCAccessCopyInformationForServices(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[TCCDAttributionChain alloc] initWithMessage:v4];
  handle_TCCAccessCopyCountInformationForServices_with_attribution_chain(v4, v3, v5);
}

void handle_TCCAccessCopyCountInformationForServices_with_attribution_chain(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = xpc_dictionary_get_array(v5, "services");
  if (xpc_get_type(v8) == &_xpc_type_array)
  {
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_10004EAAC;
    applier[3] = &unk_1000A6900;
    v11 = v5;
    v12 = v6;
    v13 = v7;
    xpc_array_apply(v8, applier);

    v9 = v11;
  }

  else
  {
    v9 = tcc_access_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10004FA7C();
    }
  }
}

uint64_t sub_10004EAAC(xpc_object_t *a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  xpc_dictionary_set_string(a1[4], "service", string_ptr);
  handle_TCCAccessCopyInformation_with_attribution_chain(a1[4], a1[5], a1[6]);
  return 1;
}

void handle_TCCExternalMetrics(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[TCCDAttributionChain alloc] initWithMessage:v4];
  handle_TCCExternalMetrics_with_attribution_chain(v4, v3, v5);
}

void handle_TCCExternalMetrics_with_attribution_chain(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  v7 = [a3 requestingProcess];
  v8 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v6, "function")];
  string = xpc_dictionary_get_string(v6, "TCCD_MSG_METRICS_SERVICE_NAME");

  v10 = +[TCCDPlatform currentPlatform];
  v11 = @"com.apple.private.tcc.external.report";
  if ([v7 BOOLValueForEntitlement:v11])
  {
    v12 = [NSString stringWithUTF8String:string];
    [v10 sendAnalyticsForExternal:v12 withMacBuddyStatus:0 function:v8];

    v13 = "true";
  }

  else
  {
    v14 = tcc_access_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543874;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      v19 = 2114;
      v20 = v11;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ attempted to call %{public}@ without the recommended %{public}@ entitlement", &v15, 0x20u);
    }

    v13 = "false";
  }

  xpc_dictionary_set_string(v5, "result", v13);
}

void handle_TCCCopyIconResourcePathForService(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  xpc_dictionary_get_audit_token();
  memset(buf, 0, 32);
  v5 = [[TCCDProcess alloc] initWithAuditToken:buf responsibleIdentity:0];
  xpc_dictionary_get_int64(v3, "iconForService");
  v6 = xpc_dictionary_get_BOOL(v3, "badgeWithPrivacyHand");
  v7 = TCCAuthPromptIconString();
  v8 = tcc_access_log();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = v7;
      *&buf[12] = 1024;
      *&buf[14] = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#tccIcon TCCCopyIconResourcePathForService: %s(shouldBadge: %d)", buf, 0x12u);
    }

    if (has_private_tcc_entitlement(v3, @"com.apple.private.tcc.icons_for_prompts", 0))
    {
      v10 = [NSString stringWithUTF8String:v7];
      v11 = +[TCCDPlatform currentPlatform];
      v12 = [v11 server];
      v13 = [v12 temporaryDirectory];
      v9 = [TCCDIconGenerator createIconForTCCService:v10 withTempDirectory:v13];

      v14 = +[NSFileManager defaultManager];
      v15 = [v9 path];
      LODWORD(v12) = [v14 fileExistsAtPath:v15];

      if (v12)
      {
        v16 = tcc_access_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v7;
          *&buf[12] = 1024;
          *&buf[14] = v6;
          *&buf[18] = 2112;
          *&buf[20] = v9;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#tccIcon TCCCopyIconResourcePathForService: %s(shouldBadge: %d) service at %@", buf, 0x1Cu);
        }

        v17 = [v9 path];
        xpc_dictionary_set_string(v4, "pathToIconFile", [v17 cStringUsingEncoding:4]);
      }
    }

    else
    {
      v9 = tcc_access_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10004FABC(v5, @"com.apple.private.tcc.icons_for_prompts");
      }
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10004FB58();
  }
}

void handle_TCCIntegrityFlagCheck(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [[TCCDAttributionChain alloc] initWithMessage:v3];
  v6 = [(TCCDAttributionChain *)v5 requestingProcess];
  v7 = [v6 BOOLValueForEntitlement:@"com.apple.private.tcc.flag_manager"];

  if (v7)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004F298;
    v13[3] = &unk_1000A52A8;
    v13[4] = &v14;
    v8 = db_eval("SELECT value FROM integrity_flag WHERE key = 'integrity_flag'", 0, v13);
    if (v8)
    {
      v9 = +[TCCDPlatform currentPlatform];
      v10 = [v9 server];
      v11 = [v10 logHandle];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10004FC84();
      }
    }

    xpc_dictionary_set_BOOL(v4, "success", v8 == 0);
    xpc_dictionary_set_BOOL(v4, "result", *(v15 + 6) != 0);
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v12 = tcc_access_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10004FBC8(v5);
    }

    xpc_dictionary_set_BOOL(v4, "success", 0);
  }
}

void sub_10004F27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004F298(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void handle_TCCIntegrityFlagReset(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[TCCDAttributionChain alloc] initWithMessage:v4];

  v6 = [(TCCDAttributionChain *)v5 requestingProcess];
  v7 = [v6 BOOLValueForEntitlement:@"com.apple.private.tcc.flag_manager"];

  if ((v7 & 1) == 0)
  {
    v12 = tcc_access_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10004FCF4(v5);
    }

    goto LABEL_7;
  }

  v8 = db_eval("INSERT OR REPLACE INTO integrity_flag (key, value) VALUES ('integrity_flag', 0)", 0, 0);
  v9 = v8 == 0;
  if (v8)
  {
    v10 = +[TCCDPlatform currentPlatform];
    v11 = [v10 server];
    v12 = [v11 logHandle];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10004FDAC();
    }

LABEL_7:

    LOBYTE(v9) = 0;
  }

  xpc_dictionary_set_BOOL(v3, "success", v9);
}

void sub_10004F424(void *a1)
{
  v1 = [a1 requestingProcess];
  v7 = [v1 description];
  sub_100008FB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004F4E0()
{
  sub_1000090C4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004F55C(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 136446466;
  *(buf + 4) = "handle_TCCAccessCopyInformation_with_attribution_chain";
  *(buf + 6) = 2048;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}s: returning %zu clients", buf, 0x16u);
}

void sub_10004F5B8()
{
  sub_1000090C4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004F634(sqlite3_stmt *a1)
{
  sqlite3_column_text(a1, 0);
  sub_100008F78();
  sub_100008FB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004F6B8()
{
  sub_100008F78();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to initialize LSApplicationRecord with bundle ID: %{public}@, error: %{public}@", v2, 0x16u);
}

void sub_10004F73C(sqlite3_stmt *a1)
{
  sqlite3_column_int(a1, 1);
  sub_100009078();
  sub_100008FB4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10004F800(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a2;
  v5 = 2114;
  v6 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[%zu] = %{public}@", &v3, 0x16u);
}

void sub_10004F888()
{
  sub_1000090C4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004F904()
{
  sub_1000090C4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004FA00()
{
  sub_1000090C4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10004FABC(uint64_t a1, void *a2)
{
  [a2 cStringUsingEncoding:4];
  sub_100008FB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004FB58()
{
  sub_100009078();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004FBC8(void *a1)
{
  v1 = [a1 requestingProcess];
  sub_100008F78();
  sub_100008FB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10004FC84()
{
  sub_100009078();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004FCF4(void *a1)
{
  v1 = [a1 requestingProcess];
  sub_100008F78();
  sub_100008FB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10004FDAC()
{
  sub_100009078();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10004FEA4(id a1)
{
  qword_1000C1220 = dispatch_queue_create("com.apple.tccd.policy-override", &_dispatch_queue_attr_concurrent);

  _objc_release_x1();
}

void sub_1000501CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000501E4(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      while (2)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        do
        {
          *(*(*(a1 + 64) + 8) + 24) = [v7 _locked_evaluateAccessByIdentity:*(a1 + 48) toService:v8 withIndirectObjectIdentityIdentity:*(a1 + 56) authorizationReason:{*(a1 + 72), v14}];
          if (*(*(*(a1 + 64) + 8) + 24) != 1)
          {
            v10 = +[TCCDPlatform currentPlatform];
            v11 = [v10 server];
            v12 = [v11 logHandle];

            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              v13 = [*(a1 + 48) identifier];
              *buf = 138543874;
              v19 = v7;
              v20 = 2114;
              v21 = v8;
              v22 = 2114;
              v23 = v13;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Override: found override in %{public}@ for %{public}@ and %{public}@", buf, 0x20u);
            }

            goto LABEL_15;
          }

          v9 = [v8 macos_compositionParentService];

          v8 = v9;
        }

        while (v9);
        if (++v6 != v4)
        {
          continue;
        }

        break;
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v24 count:16];
    }

    while (v4);
  }

LABEL_15:
}

void sub_1000504E4(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v16;
    *&v4 = 138412546;
    v14 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = [TCCDPlatform currentPlatform:v14];
        v10 = [v9 server];
        v11 = [v10 logHandle];

        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = *(a1 + 40);
          v13 = *(a1 + 48);
          *buf = v14;
          v20 = v12;
          v21 = 2112;
          v22 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "client: %@ msg: %@", buf, 0x16u);
        }

        [v8 _locked_populatePolicyAuthorizationsForClient:*(a1 + 40) message:*(a1 + 48)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v5);
  }
}

void sub_100050788(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v16;
    *&v4 = 138412546;
    v14 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = [TCCDPlatform currentPlatform:v14];
        v10 = [v9 server];
        v11 = [v10 logHandle];

        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = *(a1 + 40);
          v13 = *(a1 + 48);
          *buf = v14;
          v20 = v12;
          v21 = 2112;
          v22 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "service: %@ msg: %@", buf, 0x16u);
        }

        [v8 _locked_populatePolicyAuthorizationsForService:*(a1 + 40) message:*(a1 + 48) specifiedAuth:*(a1 + 56)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v5);
  }
}

void sub_100050DA8(uint64_t a1)
{
  if (qword_1000C1238 != -1)
  {
    sub_100052CC8();
  }

  v2 = qword_1000C1240;
  if (os_log_type_enabled(qword_1000C1240, OS_LOG_TYPE_DEBUG))
  {
    sub_100052E48(a1, v2);
  }

  [*(a1 + 32) loadPlist];
  [*(a1 + 32) parsePlist];
  access_changed();
}

id sub_100052AB4(uint64_t a1)
{
  result = dispatch_source_get_data(*(a1 + 32));
  if (result)
  {
    v3 = result;
    sleep(3u);
    if (qword_1000C1238 != -1)
    {
      sub_100052CC8();
    }

    v4 = qword_1000C1240;
    if (os_log_type_enabled(qword_1000C1240, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v6 = 134218242;
      v7 = v3;
      v8 = 2114;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Override: watchPlistChanges: reloading (0x%lx): %{public}@", &v6, 0x16u);
    }

    [*(a1 + 48) loadAndParse];
    return [*(a1 + 48) watchPlistChanges];
  }

  return result;
}

uint64_t sub_100052BAC(uint64_t a1)
{
  handle = dispatch_source_get_handle(*(a1 + 32));

  return close(handle);
}

void sub_100052C84(id a1)
{
  qword_1000C1240 = os_log_create("com.apple.TCC", "access");

  _objc_release_x1();
}

void sub_100052D18(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_100010588(&_mh_execute_header, a2, a3, "Override:  found a config file at %{public}@ but could not get a plist from it: %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_100052D90(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_100010588(&_mh_execute_header, a2, a3, "Override: error opening: %{public}@: %@", *v3, *&v3[8], *&v3[16]);
}

void sub_100052E48(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Override: loading policy data for %{public}@", &v3, 0xCu);
}

void sub_100052EC4(void *a1, NSObject *a2)
{
  v3 = [a1 name];
  v4 = 136315394;
  v5 = "[TCCDPolicyOverride _locked_populateGeneralAuthorzationFieldsForService:info:entry:]";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "No coderequirementdata found in %s for %@", &v4, 0x16u);
}

void sub_100053130(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *__error();
  v5 = 138543618;
  v6 = a1;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Override: watchPlistChanges: failed to open(%{public}@, O_EVTONLY): %{darwin.errno}d ", &v5, 0x12u);
}

void sub_100053988(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}@ request specified explicitly assumed identity: %{public}@", &v4, 0x16u);
}

void sub_100053A14(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}@ read client data", &v3, 0xCu);
}

const __CFString *TCCDPromptPolicyResultString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"<Invalid Prompt Policy Result>";
  }

  else
  {
    return off_1000A6AE8[a1];
  }
}

void sub_100053AF8(id a1)
{
  qword_1000C1248 = [NSSet setWithObjects:@"TCCDPlatformMacOS", @"TCCDPlatformIOS", @"TCCDPlatformWatchOS", @"TCCDPlatformTVOS", 0];

  _objc_release_x1();
}

void sub_100053BAC(id a1)
{
  qword_1000C1258 = [NSSet setWithObjects:@"TCCDPlatformIOS", @"TCCDPlatformWatchOS", @"TCCDPlatformTVOS", 0];

  _objc_release_x1();
}

void sub_100053C58(id a1)
{
  qword_1000C1268 = [NSSet setWithObjects:@"TCCDPlatformMacOS", 0];

  _objc_release_x1();
}

void sub_100053CAC(id a1)
{
  qword_1000C1278 = [[TCCDPlatformIOS alloc] initWithName:@"TCCDPlatformIOS"];

  _objc_release_x1();
}

void sub_100053CF4(id a1)
{
  v3[0] = @"com.apple.private.tcc.manager";
  v3[1] = @"com.apple.private.tcc.manager.set-responsible";
  v3[2] = @"com.apple.private.tcc.manager.compute-designated-requirement";
  v3[3] = @"com.apple.private.tcc.manager.compute-indirect-object-identity";
  v3[4] = @"com.apple.private.tcc.manager.service-composition";
  v3[5] = @"com.apple.private.tcc.manager.check-by-audit-token";
  v3[6] = @"com.apple.private.tcc.manager.access.read";
  v3[7] = @"com.apple.private.tcc.manager.access.modify";
  v3[8] = @"com.apple.private.tcc.manager.access.modify.webapp";
  v3[9] = @"com.apple.private.tcc.manager.access.delete";
  v3[10] = @"com.apple.private.tcc.manager.access.report";
  v3[11] = @"com.apple.private.tcc.manager.service-override.modify";
  v3[12] = @"com.apple.private.tcc.manager.expiration.read";
  v3[13] = @"com.apple.private.tcc.manager.expiration.delete";
  v3[14] = @"com.apple.private.tcc.test-manager.service-composition";
  v3[15] = @"com.apple.private.tcc.allow";
  v3[16] = @"com.apple.private.tcc.allow.overridable";
  v3[17] = @"com.apple.private.tcc.allow-or-regional-prompt";
  v3[18] = @"com.apple.private.tcc.allow-or-regional-prompt.overridable";
  v3[19] = @"com.apple.private.tcc.check-allow-on-responsible-process";
  v3[20] = @"com.apple.private.tcc.system";
  v3[21] = @"com.apple.private.tcc.policy-override";
  v3[22] = @"com.apple.private.tcc.allow-prompting";
  v3[23] = @"com.apple.security.personal-information.addressbook";
  v3[24] = @"com.apple.security.personal-information.calendars";
  v3[25] = @"com.apple.security.personal-information.photos-library";
  v3[26] = @"com.apple.security.device.camera";
  v3[27] = @"com.apple.security.device.audio-input";
  v3[28] = @"com.apple.security.automation.apple-events";
  v3[29] = @"com.apple.private.tcc.override-prompt-policy";
  v3[30] = @"com.apple.tcc.delegated-services";
  v3[31] = @"com.apple.developer.on-demand-install-capable";
  v3[32] = @"com.apple.private.attribution.implicitly-assumed-identity";
  v3[33] = @"com.apple.private.attribution.explicitly-assumed-identities";
  v3[34] = @"com.apple.private.tcc.kill-on-assumed-identity-authorization-change";
  v3[35] = @"com.apple.developer.endpoint-security.client";
  v3[36] = @"com.apple.private.tcc.set_client_data";
  v3[37] = @"com.apple.private.tcc.ifdreader";
  v3[38] = @"com.apple.developer.arkit.barcode-detection.allow";
  v3[39] = @"com.apple.private.tcc.external.report";
  v3[40] = @"com.apple.private.tcc.flag_manager";
  v1 = [NSArray arrayWithObjects:v3 count:41];
  v2 = qword_1000C1290;
  qword_1000C1290 = v1;
}

void sub_10005426C(uint64_t a1)
{
  v2 = +[TCCDService allServices];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 validOnPlatformNames];
        v11 = [*(a1 + 32) name];
        v12 = [v10 containsObject:v11];

        if (v12)
        {
          v13 = [v9 name];
          [v3 setObject:v9 forKeyedSubscript:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = [v3 copy];
  [*(a1 + 32) setServicesByName:v14];

  [*(a1 + 32) _configureServices];
}

id sub_100054D8C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = [*(a1 + 32) name];
  [v2 setObject:v3 forKeyedSubscript:@"service"];

  [v2 setObject:*(a1 + 40) forKeyedSubscript:@"API"];
  [v2 setObject:*(a1 + 48) forKeyedSubscript:@"plugin"];

  return v2;
}

void sub_100054E28()
{
  v0 = tcc_access_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_100056054();
  }
}

id sub_10005534C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = [*(a1 + 32) stringForAnalyticsAction:*(a1 + 80)];
  [v2 setObject:v3 forKeyedSubscript:@"action"];

  v4 = [*(a1 + 40) name];
  [v2 setObject:v4 forKeyedSubscript:@"service"];

  v5 = [NSNumber numberWithUnsignedLongLong:*(a1 + 88)];
  [v2 setObject:v5 forKeyedSubscript:@"authorization_value"];

  v6 = [NSNumber numberWithInteger:*(a1 + 96)];
  [v2 setObject:v6 forKeyedSubscript:@"prompt_type"];

  v7 = [*(a1 + 40) authorizationRightStateForValue:*(a1 + 88) reason:0];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 rightDescription];
    [v2 setObject:v9 forKeyedSubscript:@"authorization_right"];
  }

  if (*(a1 + 128) == 1)
  {
    v10 = [*(a1 + 40) authorizationRightStateForValue:*(a1 + 104) reason:0];

    if (v10)
    {
      v11 = [v10 rightDescription];
      [v2 setObject:v11 forKeyedSubscript:@"v1_authorization_right"];

      v8 = v10;
    }

    else
    {
      v8 = 0;
    }
  }

  v12 = [*(a1 + 40) name];
  v13 = [v12 isEqualToString:@"kTCCServiceUserTracking"];

  if ((v13 & 1) == 0)
  {
    v14 = *(a1 + 48);
    if (v14)
    {
      [*(a1 + 32) updateAnalyticsEvent:v2 fromIdentity:v14 keyPrefix:@"subject"];
    }

    v15 = *(a1 + 56);
    if (v15)
    {
      [*(a1 + 32) updateAnalyticsEvent:v2 fromIdentity:v15 keyPrefix:@"indirect_object"];
    }
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    [v2 setObject:v16 forKeyedSubscript:@"request_reason"];
  }

  if (*(a1 + 112))
  {
    v17 = [NSNumber numberWithUnsignedLongLong:?];
    [v2 setObject:v17 forKeyedSubscript:@"desired_auth"];
  }

  v18 = *(a1 + 120);
  if (v18 <= 2)
  {
    [v2 setObject:(&off_1000A6B50)[v18] forKeyedSubscript:@"macbuddy_on"];
  }

  v19 = [*(a1 + 32) server];
  v20 = [v19 logHandle];

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = *(a1 + 72);
    v23 = 138543618;
    v24 = v21;
    v25 = 2114;
    v26 = v2;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Analytics Event sending: %{public}@\n%{public}@", &v23, 0x16u);
  }

  return v2;
}

void sub_100055674()
{
  v0 = tcc_access_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1000560C8();
  }
}

id sub_1000558A4(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  v3 = [v2 logHandle];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Analytics Event sending: %{public}@\n%{public}@", &v8, 0x16u);
  }

  v6 = *(a1 + 48);

  return v6;
}

void sub_10005598C()
{
  v0 = tcc_access_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_10005613C();
  }
}

id sub_100055BBC(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  v3 = [v2 logHandle];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Analytics Event async sending: %{public}@\n%{public}@", &v8, 0x16u);
  }

  v6 = *(a1 + 48);

  return v6;
}

void sub_100055CA4()
{
  v0 = tcc_access_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1000561B0();
  }
}

void sub_100055E44(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100055EB0(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 localizedDescription];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "configurationDictionary:  found a config file at %{public}@ but could not get a plist from it: %{public}@", &v6, 0x16u);
}

void sub_100055F90(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 path];
  v6 = [a2 path];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Identified provisional outer-most app bundle for %@ as %@", &v7, 0x16u);
}

void sub_100056054()
{
  sub_10000921C(__stack_chk_guard);
  sub_100009180();
  sub_100055E44(&_mh_execute_header, v0, v1, "%s: Analytics is not available for Event: %{public}@", v2, v3, v4, v5, 2u);
}

void sub_1000560C8()
{
  sub_10000921C(__stack_chk_guard);
  sub_100009180();
  sub_100055E44(&_mh_execute_header, v0, v1, "%s: Analytics is not available for Event: %{public}@", v2, v3, v4, v5, 2u);
}

void sub_10005613C()
{
  sub_10000921C(__stack_chk_guard);
  sub_100009180();
  sub_100055E44(&_mh_execute_header, v0, v1, "%s: Analytics is not available for Event: %{public}@", v2, v3, v4, v5, 2u);
}

void sub_1000561B0()
{
  sub_10000921C(__stack_chk_guard);
  sub_100009180();
  sub_100055E44(&_mh_execute_header, v0, v1, "%s: Analytics is not available for Event: %{public}@", v2, v3, v4, v5, 2u);
}

uint64_t sub_1000564D0(uint64_t a1)
{
  qword_1000C12C0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000569C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000569DC(uint64_t a1)
{
  if (![*(a1 + 32) migratedDBHandle])
  {
    result = [*(a1 + 32) setupDB];
    if (result)
    {
      goto LABEL_6;
    }
  }

  ppStmt = 0;
  if (sqlite3_prepare_v2([*(a1 + 32) migratedDBHandle], *(a1 + 64), -1, &ppStmt, 0))
  {
LABEL_7:
    result = [*(a1 + 32) handleDBErrorAndForceCrash:0];
LABEL_6:
    *(*(*(a1 + 56) + 8) + 24) = 1;
    return result;
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v4 = sqlite3_step(ppStmt);
    if (v4 != 100)
    {
      break;
    }

    v2 = *(a1 + 48);
LABEL_8:
    (*(v2 + 16))(v2, ppStmt);
  }

  v5 = v4;
  if (v4 != 101)
  {
    v6 = sqlite3_expanded_sql(ppStmt);
    v7 = +[TCCDPlatform currentPlatform];
    v8 = [v7 server];
    v9 = [v8 logHandle];

    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v10)
      {
        sub_100060550(v6, v5, v9);
      }

      sqlite3_free(v6);
      [*(a1 + 32) handleDBErrorAndForceCrash:0];
    }

    else
    {
      if (v10)
      {
        sub_100056F00((a1 + 64), v9);
      }
    }

    sqlite3_finalize(ppStmt);
    goto LABEL_7;
  }

  return sqlite3_finalize(ppStmt);
}

void sub_100056D94(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 136315138;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Migrated database does not exist at %s", &v3, 0xCu);
}

void sub_100056E10(void *a1, NSObject *a2)
{
  if ([a1 migratedDBHandle])
  {
    v4 = sqlite3_errmsg([a1 migratedDBHandle]);
  }

  else
  {
    v4 = "allocation failed";
  }

  v5 = 136446210;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to open database: %{public}s", &v5, 0xCu);
}

void sub_100056F00(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 136446210;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "sqlite3_expanded_sql failed on %{public}s", &v3, 0xCu);
}

void sub_100057720(void *a1, NSObject *a2)
{
  v3 = [a1 error];
  v4 = [v3 localizedDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
}

void sub_100057814(id a1)
{
  qword_1000C12D0 = objc_alloc_init(TCCDEventPublisher);

  _objc_release_x1();
}

void sub_100057A1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100057A4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleEventWithAction:a2 token:a3 descriptor:v7];
}

void sub_100057AC0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleError:a2];
}

void sub_100057DA4(void *a1)
{
  v2 = [[TCCDEventFilter alloc] initWithCriteria:a1[4]];
  v3 = [[TCCDEventSubscriber alloc] initWithToken:a1[6] filter:v2 fromPublisher:a1[5]];
  v4 = a1[6];
  v5 = *(a1[5] + 24);
  v6 = [NSNumber numberWithUnsignedLongLong:v4];
  [v5 setObject:v3 forKeyedSubscript:v6];

  v7 = tcc_events_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Added subscriber %{public}@", &v8, 0xCu);
  }
}

void sub_100057FA8(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_dictionary)
  {
    memset(v17, 0, sizeof(v17));
    xpc_dictionary_get_audit_token();
    v8 = xpc_copy_code_signing_identity_for_token();
    if (v8)
    {
      v9 = [[NSString alloc] initWithBytesNoCopy:v8 length:strlen(v8) encoding:4 freeWhenDone:{1, v17[0], v17[1]}];
    }

    else
    {
      v10 = xpc_copy_description(v3);
      v11 = tcc_events_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100058AA8(a1, v10, v11);
      }

      free(v10);
      v9 = 0;
    }

    v12 = xpc_copy_entitlement_for_token();
    v13 = v12;
    if (v12 && xpc_get_type(v12) == &_xpc_type_BOOL)
    {
      value = xpc_BOOL_get_value(v13);
      (*(*(a1 + 48) + 16))();
      if (value)
      {
        goto LABEL_14;
      }
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }

    [*(a1 + 40) _removeSubscriber:{objc_msgSend(*(a1 + 32), "token", v17[0], v17[1])}];
LABEL_14:

    goto LABEL_15;
  }

  v5 = type;
  v6 = xpc_copy_description(v3);
  v7 = tcc_events_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    name = xpc_type_get_name(v5);
    v16 = *(a1 + 32);
    LODWORD(v17[0]) = 136446722;
    *(v17 + 4) = v6;
    WORD6(v17[0]) = 2082;
    *(v17 + 14) = name;
    WORD3(v17[1]) = 2114;
    *(&v17[1] + 1) = v16;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Received invalid reply %{public}s of type %{public}s from subscriber %{public}@", v17, 0x20u);
  }

  free(v6);
  [*(a1 + 40) _removeSubscriber:{objc_msgSend(*(a1 + 32), "token")}];
LABEL_15:
}

void sub_10005827C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 24);
  v7 = [NSNumber numberWithUnsignedLongLong:v5];
  [v6 removeObjectForKey:v7];

  v8 = tcc_events_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Removed subscriber %{public}@", &v9, 0xCu);
  }
}

void sub_10005870C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[32] == 1)
  {
    v3 = tcc_events_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = [*(*(a1 + 32) + 24) count];
      v6 = *(*(a1 + 32) + 24);
      *buf = 138543874;
      v20 = v4;
      v21 = 2048;
      v22 = v5;
      v23 = 2114;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Publishing %{public}@ to %lu subscribers: %{public}@", buf, 0x20u);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = *(*(a1 + 32) + 24);
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * v11), v14}];
          [v12 publish:*(a1 + 40)];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v13 = *(a1 + 40);

    [v2 _addPendingEvent:v13];
  }
}

void sub_10005896C(uint64_t a1, NSObject *a2)
{
  v3 = 136315138;
  v4 = xpc_strerror();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received error: %s", &v3, 0xCu);
}

void sub_1000589F8(int a1, uint64_t a2, os_log_t log)
{
  v3 = "Add";
  if (a1 == 1)
  {
    v3 = "Remove";
  }

  if (a1 == 2)
  {
    v3 = "Initial Barrier";
  }

  v4 = 136446466;
  v5 = v3;
  v6 = 2048;
  v7 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Received event: action=%{public}s, token=%llu", &v4, 0x16u);
}

void sub_100058AA8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2082;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to copy code signing identity of subscriber %{public}@ from reply: %{public}s", &v4, 0x16u);
}

void sub_100058B34(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Added pending event: %@", &v2, 0xCu);
}

void sub_100058BAC(uint64_t a1, NSObject *a2)
{
  v3 = 138543362;
  v4 = objc_opt_class();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}@ pendingEvents exceeded limit, removed oldest event", &v3, 0xCu);
}

void sub_1000599F0(void *a1)
{
  [a1 pid];
  __error();
  v1 = __error();
  strerror(*v1);
  sub_100008FB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void sub_100059AAC()
{
  sub_10000913C();
  sub_100009068();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100059B20(void *a1)
{
  v1 = [a1 description];
  sub_10000913C();
  sub_100008FB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100059BBC(void *a1)
{
  v1 = [a1 description];
  sub_10000913C();
  sub_100008FB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100059C58(void *a1)
{
  v1 = [a1 description];
  sub_10000913C();
  sub_100008FB4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100059DCC()
{
  sub_100009084();
  sub_100009068();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100059E50()
{
  sub_100009084();
  sub_100009068();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void log_open_file_descriptors()
{
  v0 = tcc_open_fds_log();
  v1 = getpid();
  v2 = proc_pidinfo(v1, 1, 0, 0, 0);
  if (v2 == -1)
  {
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_10005A480(v0, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v3 = v2;
    v4 = malloc_type_malloc(v2, 0x5E30FBC4uLL);
    if (v4)
    {
      v5 = v4;
      v6 = proc_pidinfo(v1, 1, 0, v4, v3);
      if (v6 == -1)
      {
        if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
        {
          sub_10005A410(v0, v31, v32, v33, v34, v35, v36, v37);
        }
      }

      else
      {
        v7 = (v6 >> 3);
        if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67240192;
          *&buf[4] = v7;
          _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "%{public}d open file descriptors", buf, 8u);
        }

        if (v7 >= 1)
        {
          v8 = v5 + 1;
          do
          {
            if (*v8 == 1)
            {
              memcpy(buf, "<path not found>", sizeof(buf));
              fcntl(*(v8 - 1), 50, buf);
              if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
              {
                v9 = *(v8 - 1);
                v10 = *v8;
                v38[0] = 67240706;
                v38[1] = v9;
                v39 = 1026;
                v40 = v10;
                v41 = 2082;
                v42 = buf;
                v11 = v38;
                v12 = v0;
                v13 = "%{public}d|%{public}d : %{public}s";
                v14 = 24;
LABEL_13:
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, v11, v14);
              }
            }

            else if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
            {
              v15 = *(v8 - 1);
              v16 = *v8;
              *buf = 67240448;
              *&buf[4] = v15;
              *&buf[8] = 1026;
              *&buf[10] = v16;
              v11 = buf;
              v12 = v0;
              v13 = "%{public}d|%{public}d";
              v14 = 14;
              goto LABEL_13;
            }

            v8 += 2;
            --v7;
          }

          while (v7);
        }
      }

      free(v5);
    }

    else if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_10005A448(v0, v24, v25, v26, v27, v28, v29, v30);
    }
  }
}

void exhaust_file_descriptors()
{
  v0 = tcc_open_fds_log();
  v1 = getpid();
  v2 = +[TCCDPlatform currentPlatform];
  v3 = [v2 server];
  v4 = [v3 temporaryDirectory];
  v5 = [v4 UTF8String];

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Exhausting available file descriptors by opening files in %{public}s", buf, 0xCu);
  }

  bzero(buf, 0x400uLL);
  if ((snprintf(buf, 0x400uLL, "%s/tccd-%d-%04d", v5, v1, 0) & 0x80000000) == 0)
  {
    v6 = 1;
    do
    {
      if (open(buf, 513, 493) == -1)
      {
        v7 = v0;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = *__error();
          *v10 = 136446722;
          v11 = "exhaust_file_descriptors";
          v12 = 2082;
          v13 = buf;
          v14 = 1024;
          v15 = v9;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s: failed to open temp file at path %{public}s: open() failed with errno %d", v10, 0x1Cu);
        }
      }

      v8 = snprintf(buf, 0x400uLL, "%s/tccd-%d-%04d", v5, v1, v6++);
    }

    while ((v8 & 0x80000000) == 0);
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_10005A4B8(v0);
  }
}

void sub_10005A4B8(os_log_t log)
{
  v1 = 136446210;
  v2 = "exhaust_file_descriptors";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s: failed to format string for temp_file_path", &v1, 0xCu);
}

id sub_10005A67C(uint64_t a1)
{
  v2 = +[TCCDPolicyOverride logHandle];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "MDMPolicyOverride: configuration profile changed; reloading.", v4, 2u);
  }

  return [*(a1 + 32) loadAndParse];
}

void sub_10005ACB8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_10005AD00(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) name];
  if (sqlite3_bind_text(a2, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_text(a2, 2, objc_msgSend(*(a1 + 40), "UTF8String"), -1, 0xFFFFFFFFFFFFFFFFLL))
  {
  }

  else
  {
    v5 = sqlite3_bind_int(a2, 3, *(a1 + 48));

    if (!v5)
    {
      return;
    }
  }

  _db_error(1);
}

uint64_t sub_10005ADD0(uint64_t a1, sqlite3_stmt *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  result = sqlite3_column_int(a2, 0);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10005AE18(uint64_t a1, sqlite3_stmt *a2)
{
  if (!sqlite3_bind_int(a2, 1, *(a1 + 56)))
  {
    v4 = [*(a1 + 32) name];
    if (sqlite3_bind_text(a2, 2, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_text(a2, 3, objc_msgSend(*(a1 + 40), "UTF8String"), -1, 0xFFFFFFFFFFFFFFFFLL))
    {
    }

    else
    {
      v5 = sqlite3_bind_int(a2, 4, *(a1 + 48));

      if (!v5)
      {
        return;
      }
    }
  }

  _db_error(1);
}

void sub_10005AEFC(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) name];
  if (sqlite3_bind_text(a2, 1, [v4 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_text(a2, 2, objc_msgSend(*(a1 + 40), "UTF8String"), -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_int(a2, 3, *(a1 + 56)) || sqlite3_bind_int64(a2, 4, 0) || sqlite3_bind_int64(a2, 5, 6) || sqlite3_bind_int64(a2, 6, 2) || sqlite3_bind_blob(a2, 7, objc_msgSend(*(a1 + 48), "bytes"), objc_msgSend(*(a1 + 48), "length"), 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_null(a2, 8) || sqlite3_bind_text(a2, 9, "UNUSED", -1, 0xFFFFFFFFFFFFFFFFLL))
  {
  }

  else
  {
    v5 = sqlite3_bind_int(a2, 10, *(a1 + 64));

    if (!v5)
    {
      return;
    }
  }

  _db_error(1);
}

void sub_10005B34C(uint64_t a1, sqlite3_stmt *a2)
{
  if (sqlite3_bind_int(a2, 1, *(a1 + 32)))
  {

    _db_error(1);
  }
}

void sub_10005B394(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 0)];
  v5 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 1)];
  v6 = sqlite3_column_int(a2, 2);
  v7 = sqlite3_column_int(a2, 3);
  v8 = [*(a1 + 32) policyAccessByIdentifier];
  v9 = [v8 objectForKeyedSubscript:v5];

  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = [v9 objectForKeyedSubscript:v4];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 objectForKeyedSubscript:@"IdentifierType"];
    if ([v12 isEqualToString:@"bundleID"])
    {
      v13 = v6 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
    }

    else
    {
      v14 = [v11 objectForKeyedSubscript:@"IdentifierType"];
      v15 = [v14 isEqualToString:@"path"];

      if (!v15 || v6 != 1)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_17;
  }

LABEL_9:

LABEL_10:
  v16 = v7 & ~*(a1 + 40);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10005B648;
  v20[3] = &unk_1000A6C30;
  v23 = v16;
  v17 = v4;
  v21 = v17;
  v18 = v5;
  v22 = v18;
  v24 = v6;
  if (db_eval_locked("UPDATE access SET flags = ? WHERE service = ? AND client = ? AND client_type = ?", v20, 0))
  {
    v19 = +[TCCDPolicyOverride logHandle];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v26 = v17;
      v27 = 2114;
      v28 = v18;
      v29 = 1024;
      v30 = v6;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to remove TCCD_ACCESS_ALLOW_STANDARD_USER_TO_SET_SYSTEM_SERVICE flag from database record: serviceName=%{public}@, identifier=%{public}@, identifier_type=%d", buf, 0x1Cu);
    }
  }

LABEL_17:
}

void sub_10005B648(uint64_t a1, sqlite3_stmt *a2)
{
  if (sqlite3_bind_int(a2, 1, *(a1 + 48)) || sqlite3_bind_text(a2, 2, [*(a1 + 32) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_text(a2, 3, objc_msgSend(*(a1 + 40), "UTF8String"), -1, 0xFFFFFFFFFFFFFFFFLL) || sqlite3_bind_int(a2, 4, *(a1 + 52)))
  {

    _db_error(1);
  }
}

void sub_10005B8DC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Skipping MDM policy authorization record with invalid IdentifierType: %{public}@", &v2, 0xCu);
}

void sub_10005BB58(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v8 = *(a1 + 32);
  v6 = (a1 + 32);
  v7 = v8;
  os_unfair_lock_lock(v8 + 6);
  v9 = [v5 copy];
  v10 = *(*v6 + 48);
  *(*v6 + 48) = v9;

  v11 = *v6;
  if (a3)
  {
    *(v11 + 32) = 2;
    v12 = tcc_events_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_10005BFE8(v6, v12);
    }

    [*v6 _publishPendingEvents];
  }

  else
  {
    *(v11 + 32) = 3;
    v13 = tcc_events_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10005BF6C(v6, v13);
    }
  }

  os_unfair_lock_unlock(v7 + 6);
}

void sub_10005BF6C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@ failed entitlement check", &v3, 0xCu);
}

void sub_10005BFE8(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}@ passed entitlement check", &v3, 0xCu);
}

void sub_10005C064(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}@ pendingEvents exceeded limit, removed oldest event", &v2, 0xCu);
}

void sub_10005C9F8(uint64_t a1, void *a2)
{
  v2 = [a2 requestingProcess];
  v3 = [v2 description];
  sub_1000090F4();
  sub_1000091E4(&_mh_execute_header, v4, v5, "'%{public}s' is wrong size in message from %{public}@", v6, v7, v8, v9, v10);
}

void sub_10005CA9C(uint64_t a1, void *a2)
{
  v2 = [a2 requestingProcess];
  v3 = [v2 description];
  sub_1000090F4();
  sub_1000091E4(&_mh_execute_header, v4, v5, "Failed to build 'accessingProcess' from %{public}s in message from <%{public}@>", v6, v7, v8, v9, v10);
}

void sub_10005CB40(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BUNDLE_ATTRIBUTION: attributed bundle creation fails for: %{public}@", &v2, 0xCu);
}

void sub_10005D03C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005D070(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    state64 = 0;
    notify_get_state(a2, &state64);
    v5 = state64;
    v6 = [WeakRetained server];
    v7 = [v6 logHandle];

    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = MKBGetDeviceLockState();
        *buf = 67109120;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Remote Alert: lock state notification with MKB lock state: %d.", buf, 8u);
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Remote Alert: Notified of device unlock.", buf, 2u);
      }

      notify_cancel(a2);
      dispatch_semaphore_signal(*(a1 + 32));
    }
  }
}

void sub_10005DC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_10005DCB8(uint64_t a1)
{
  if ([*(a1 + 32) condition] != 1 || (v2 = objc_msgSend(*(a1 + 32), "persistentStateType"), objc_msgSend(*(a1 + 32), "service"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "name"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "setPersistentStateValue:", db_persistent_state_get_value(v2, v4)), v4, v3, objc_msgSend(*(a1 + 32), "persistentStateValue") >= 1))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v6 = WeakRetained;
      *(*(*(a1 + 40) + 8) + 24) = [WeakRetained _displaySBRemoteAlert:*(a1 + 32)];
      WeakRetained = v6;
    }
  }
}

void sub_10005E5B4(void *a1, NSObject *a2)
{
  v4 = [a1 condition];
  v5 = [a1 configuration];
  v6 = 134218242;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Display Alert: alert condition (%ld) not supported or misconfigured: %{public}@", &v6, 0x16u);
}

void sub_10005E670(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Remote Alert: alert not configured correctly: %{public}@.", &v2, 0xCu);
}

void sub_10005E6E8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Remote Alert: handle: %{public}@, didInvalidateWithError: %{public}@", &v3, 0x16u);
}

void sub_10005E770(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "error attempting to acquire RBSDomainAttribute for prompting clienting with error: %@", &v2, 0xCu);
}

id sub_10005EA80(uint64_t a1)
{
  [*(a1 + 32) setCustomUserInfo:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 display];
}

void sub_10005F084()
{
  sub_100008F78();
  sub_1000105BC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005F0F4(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = a3;
  v6 = [v4 perDeviceMainIdentiferToReplicaIdentifier];
  v7 = [v6 objectForKeyedSubscript:a1];
  v8 = 138412546;
  v9 = a1;
  sub_1000090B4();
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Computed: mainClientIdentifier: %@ -> replicaClientIdentifier: %@", &v8, 0x16u);
}

void sub_10005F1C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[TCCDMainSyncController currentArchiveVersion];
  sub_1000105A8();
  v9 = a2;
  v10 = v6;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unarchived WatchKit data in: %{public}@: version mismatch: %@ vs %@", v8, 0x20u);
}

void sub_10005F2EC()
{
  sub_100008F78();
  sub_1000105BC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005F3C4()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005F400(uint64_t a1, void *a2)
{
  sub_1000105C8(a1, a2);
  v5 = [sub_1000105E4() bundleIdentifier];
  *v3 = 138412290;
  *v2 = v5;
  sub_100010608(&_mh_execute_header, v6, v7, "Known WatchKit application id: %@");
}

void sub_10005F464(uint64_t a1, void *a2)
{
  sub_1000105C8(a1, a2);
  v5 = [sub_1000105E4() bundleIdentifier];
  *v3 = 138412290;
  *v2 = v5;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Recieved WatchKit application id: %@ that has no companion app identifier.", v3, 0xCu);
}

void sub_10005F4D8(void *a1)
{
  v2 = a1;
  [sub_1000105FC() count];
  sub_100008F78();
  sub_1000105F0();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0xCu);
}

void sub_10005F568(void *a1)
{
  v2 = a1;
  [sub_1000105FC() count];
  sub_100008F78();
  sub_1000105F0();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0xCu);
}

void sub_10005F5F8(uint64_t a1, void *a2)
{
  sub_1000105C8(a1, a2);
  v5 = [sub_1000105E4() description];
  *v3 = 138412290;
  *v2 = v5;
  sub_100010608(&_mh_execute_header, v6, v7, "Syncing newly installed WatchKit application with action: %@");
}

void sub_10005F65C()
{
  sub_100008F78();
  sub_100009000();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10005F6D8()
{
  sub_100008F78();
  sub_1000105BC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005F748(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() description];
  sub_100008F78();
  sub_1000105F0();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0xCu);
}

void sub_10005F7E4()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005F820()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005F85C(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() description];
  sub_100008F78();
  sub_1000105F0();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0xCu);
}

void sub_10005F8F8()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005F934()
{
  sub_100009010();
  sub_1000105BC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005F970()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005FAA4()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10005FBDC()
{
  sub_100008F78();
  sub_100009000();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10005FC58()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10005FCC8()
{
  sub_100008F78();
  sub_100009000();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10005FD4C()
{
  sub_100008F78();
  sub_100009000();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10005FDD0()
{
  sub_1000090B4();
  sub_100009000();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_10005FEE0()
{
  sub_1000090B4();
  sub_1000105BC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10005FF60(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = [sub_1000105E4() serviceName];
  v7 = [v2 syncSessionType];
  v8 = off_1000C0A58(v7);
  v9 = [v2 pairedDevice];

  v10 = off_1000C0A50();
  v11 = [v9 valueForProperty:v10];
  sub_1000105A8();
  v15 = v8;
  v16 = v12;
  v17 = v13;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "PairedSync syncCoordinator:beginSyncSession: from coordinator with service name: %@ and sync type: %@ for device: %@", v14, 0x20u);
}

void sub_100060090()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100060100(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [a3 serviceName];
  v8 = [v6 pairedDevice];

  v9 = off_1000C0A50();
  v10 = [v8 valueForProperty:v9];
  v11 = 138412546;
  v12 = v7;
  sub_1000090B4();
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Did receive syncCoordinator:didInvalidateSyncSession: from coordinator with service name: %@ for device: %@", &v11, 0x16u);
}

void sub_100060348()
{
  sub_100009010();
  sub_1000105BC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100060384()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000603C0()
{
  v1[0] = 136446466;
  sub_1000090C4();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%{public}s: Could not find  main client ID for replica client ID: %{public}@", v1, 0x16u);
}

void sub_100060440()
{
  v1[0] = 136446466;
  sub_1000090C4();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%{public}s: no replicaClientIdentifier for syncID for: %{public}@", v1, 0x16u);
}

void sub_100060514()
{
  v0 = +[TCCDPlatform currentPlatform];
  [v0 prepareForAbort];

  _os_crash();
  __break(1u);
}

void sub_100060550(uint64_t a1, int a2, NSObject *a3)
{
  v4 = 136446722;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  v8 = 2080;
  v9 = sqlite3_errstr(a2);
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "sqlite3_step() for %{public}s failed: %d (%s)", &v4, 0x1Cu);
}

void sub_100060680(void *a1, NSObject *a2)
{
  if ([a1 registryDBHandle])
  {
    v4 = sqlite3_errmsg([a1 registryDBHandle]);
  }

  else
  {
    v4 = "allocation failed";
  }

  v5 = 136446210;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to open database: %{public}s", &v5, 0xCu);
}

void sub_100060748(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136446466;
  *&v3[4] = a1;
  *&v3[12] = 1024;
  *&v3[14] = a2;
  sub_1000091A8(&_mh_execute_header, a2, a3, "Failed to create %{public}s (%d)", *v3, *&v3[8], *&v3[16]);
}

void sub_100060834(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136446466;
  *&v3[4] = a1;
  *&v3[12] = 1026;
  *&v3[14] = a2;
  sub_1000091A8(&_mh_execute_header, a2, a3, "Failed to query registry for db at path %{public}s: error %{public}d", *v3, *&v3[8], *&v3[16]);
}

void sub_100060920()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006095C()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100060998()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000609D4()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100060A84(os_log_t log)
{
  v1 = 136446210;
  v2 = "[TCCDSyncSession performRequestAccessAction:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s: Attempt enque a RequestAccessAction while one is already inflight", &v1, 0xCu);
}

void sub_100060B08(os_log_t log)
{
  v1 = 136446210;
  v2 = "[TCCDSyncSession performRequestAccessAction:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s: Unexpected nil messageController", &v1, 0xCu);
}

void sub_100060B8C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 replicaClientIdentifier];
  v5 = [a2 mainClientIdentifier];
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "An error occured during syncing of TCC privacy state from the companion device for '%{public}@' with companion application '%{public}@'.\n Check for error messages from tccd or the companion app on the companion device.", &v6, 0x16u);
}

void sub_100060C5C()
{
  sub_1000091C8(__stack_chk_guard);
  sub_1000090D8();
  sub_100008F90();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x20u);
}

void sub_100060DE4()
{
  sub_1000091C8(__stack_chk_guard);
  sub_10000901C();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100060F08()
{
  sub_1000091C8(__stack_chk_guard);
  sub_10000901C();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100060F98()
{
  sub_1000091C8(__stack_chk_guard);
  sub_1000090D8();
  sub_100008F90();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x20u);
}

void sub_100061170()
{
  sub_100008FC4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100061274()
{
  sub_100008FC4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100061388()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000613C4(void *a1, void *a2)
{
  v4 = a1;
  [sub_1000105FC() maxRetryCount];
  [sub_10001C4F0() retryIntervalSecs];
  [a2 sessionPerMessageTimeoutSecs];
  [a2 eventRetryIntervalSecs];
  sub_10001C544();
  sub_1000091D4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void sub_100061494()
{
  sub_10001C538();
  v2 = v1;
  v3 = [sub_10001C4F0() localizedDescription];
  sub_1000090F4();
  sub_100009030();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100061610()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10006164C(void *a1)
{
  v2 = a1;
  [sub_1000105FC() isMain];
  sub_1000091D4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10006175C()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100061798()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000617D4(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() localizedDescription];
  sub_100008F78();
  sub_10001C44C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000618A0()
{
  sub_100008F78();
  sub_10001C4E4();
  sub_100010588(&_mh_execute_header, v0, v1, "_didPairToDevice: attempt to pair new device (%@) without unpairing the current device (%@).");
}

void sub_100061944(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 pairedDeviceStorageRoot];
  __error();
  v5 = __error();
  strerror(*v5);
  sub_10001C4B4();
  sub_10001C51C();
  sub_100008FB4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
}

void sub_100061A00(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 pairedDeviceStorageRoot];
  __error();
  v5 = __error();
  strerror(*v5);
  sub_10001C4B4();
  sub_10001C51C();
  sub_100008FB4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
}

void sub_100061ABC(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() pairedDeviceStorageRoot];
  sub_100008F78();
  sub_1000091D4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100061B54()
{
  sub_10001C538();
  v2 = v1;
  v3 = [sub_10001C4F0() pairedDeviceStorageRoot];
  sub_10001C4B4();
  sub_10001C4E4();
  sub_10001C45C(&_mh_execute_header, v4, v5, "did pair to new device: %@: %@", v6, v7, v8, v9, v10);
}

void sub_100061BF4()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100061C30(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() pairedDeviceStorageRoot];
  sub_100008F78();
  sub_1000091D4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100061CC8()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100061D04(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() description];
  sub_100008F78();
  sub_1000091D4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100061D9C()
{
  sub_100008F78();
  sub_10001C4D8();
  sub_100010588(&_mh_execute_header, v0, v1, "Sync archive is missing SyncType key: %{public}@, in %{public}@");
}

void sub_100061E0C()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100061E7C()
{
  sub_100008F78();
  sub_10001C4D8();
  sub_100010588(&_mh_execute_header, v0, v1, "Failed to unarchive data in: %{public}@: %{public}@");
}

void sub_100061EEC()
{
  sub_10001C538();
  v2 = v1;
  v3 = [sub_10001C4F0() localizedDescription];
  sub_1000090F4();
  sub_100009030();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100061F8C()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100062070(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() retryBlock];
  v4 = objc_retainBlock(v3);
  sub_100008F78();
  sub_1000091D4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_10006211C()
{
  sub_10001C4CC();
  v2 = v1;
  [sub_10001C4C0() maxRetryCount];
  sub_100008F78();
  sub_100009030();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000621BC()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000621F8()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062234()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062270()
{
  v2 = 136315650;
  sub_10001C47C();
  sub_10001C4FC(&_mh_execute_header, v0, v1, "%s: Sending potential syncAccessUpdate for: %@, %@", v2);
}

void sub_1000623F4()
{
  sub_10001C538();
  v2 = v1;
  sub_10001C4F0();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  sub_10001C4D8();
  sub_100009030();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_1000624B4()
{
  sub_10001C538();
  v2 = v1;
  sub_10001C4F0();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  sub_10001C4D8();
  sub_100009030();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_100062574()
{
  v2 = 136315650;
  sub_10001C47C();
  sub_10001C4FC(&_mh_execute_header, v0, v1, "%s: override access: %@ -> %@", v2);
}

void sub_1000625E8()
{
  v2 = 136315650;
  sub_10001C47C();
  sub_10001C4FC(&_mh_execute_header, v0, v1, "%s: update access: %@ -> %@", v2);
}

void sub_10006265C()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100062698(void *a1, void *a2)
{
  v3 = a1;
  [a2 identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_10001C4C0() retryBlock];
  v5 = objc_retainBlock(v4);
  sub_10001C544();
  sub_100008FB4();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_100062760()
{
  sub_10001C4CC();
  v3 = v2;
  [sub_10001C4C0() identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1000105FC() sessionSyncChanges];
  sub_10001C4B4();
  sub_10001C4E4();
  sub_100009030();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100062818()
{
  sub_10001C4CC();
  v3 = v2;
  [sub_10001C4C0() identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1000105FC() pendingDeltaSyncChanges];
  [v4 count];
  sub_100008F9C();
  sub_10001C45C(&_mh_execute_header, v5, v6, "SYService starting SYSession:%{public}@: with %lu delta sync changes", v7, v8, v9, v10, v11);
}

void sub_1000628C4(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() identifier];
  sub_100008F78();
  sub_10001C44C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10006295C()
{
  sub_10001C4CC();
  v2 = v1;
  v3 = [sub_10001C4C0() identifier];
  sub_100008F78();
  sub_10001C4E4();
  sub_10001C45C(&_mh_execute_header, v4, v5, "SYService starting SYSession:%{public}@: adding changes for reset sync: %@", v6, v7, v8, v9, v10);
}

void sub_1000629FC(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() identifier];
  sub_100008F78();
  sub_10001C44C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100062A94(void *a1)
{
  v3 = a1;
  [sub_1000105FC() identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_10001C4F0() state];
  sub_10001C44C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100062B4C(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() identifier];
  sub_100008F78();
  sub_1000091D4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100062BE4(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() identifier];
  sub_100008F78();
  sub_1000091D4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100062C7C(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() identifier];
  sub_100008F78();
  sub_1000091D4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100062D14()
{
  sub_10001C4CC();
  v4 = v3;
  [sub_10001C4C0() identifier];
  objc_claimAutoreleasedReturnValue();
  v5 = [sub_1000105FC() localizedDescription];
  sub_1000090F4();
  v8 = v6;
  v9 = v0;
  _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "SYService sessionEnded:%{public}@ with error: %{public}@; %{public}@", v7, 0x20u);
}

void sub_100062DD4(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() identifier];
  sub_100008F78();
  sub_10001C44C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100062E6C(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() identifier];
  sub_100008F78();
  sub_10001C44C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100062F04()
{
  sub_10001C4CC();
  v3 = v2;
  v4 = [sub_10001C4C0() identifier];
  [v0 isEqualToString:@"com.apple.identityservices.error"];
  sub_10001C4B4();
  sub_100009030();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100062FD8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [sub_10001C4C0() localizedDescription];
  v6 = [a2 description];

  sub_10001C4B4();
  sub_10001C4E4();
  sub_100008FB4();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x16u);
}

void sub_1000630A4()
{
  sub_10001C4CC();
  v3 = v2;
  [sub_10001C4C0() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1000105FC() UUIDString];
  sub_1000090F4();
  sub_10001C45C(&_mh_execute_header, v5, v6, "SYService willSwitchFromPairingID:%{public}@ toParingID:%{public}@", v7, v8, v9, v10, v11);
}

void sub_10006314C()
{
  sub_10001C4CC();
  v3 = v2;
  [sub_10001C4C0() UUIDString];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1000105FC() UUIDString];
  sub_1000090F4();
  sub_10001C45C(&_mh_execute_header, v5, v6, "SYService didSwitchFromPairingID:%{public}@ toParingID:%{public}@", v7, v8, v9, v10, v11);
}

void sub_10006325C()
{
  sub_10001C4CC();
  v3 = v2;
  [sub_10001C4C0() identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1000105FC() identifier];
  sub_1000090F4();
  sub_10001C45C(&_mh_execute_header, v5, v6, "Will prefer session:%{public}@ over this session: %{public}@", v7, v8, v9, v10, v11);
}

void sub_100063304()
{
  sub_10001C4CC();
  v3 = v2;
  [sub_10001C4C0() identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_1000105FC() count];
  sub_100008F9C();
  sub_10001C45C(&_mh_execute_header, v4, v5, "SYSession:%{public}@; enqueuing %lu changes.", v6, v7, v8, v9, v10);
}

void sub_1000633A0()
{
  sub_10001C4CC();
  v3 = v2;
  [sub_10001C4C0() identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1000105FC() sessionSyncChanges];
  [v4 count];
  sub_100008F9C();
  sub_10001C45C(&_mh_execute_header, v5, v6, "SYSession:%{public}@; unable to enqueue a change; have %lu left", v7, v8, v9, v10, v11);
}

void sub_10006344C(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() identifier];
  sub_100008F78();
  sub_10001C44C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000634E4()
{
  sub_10001C4CC();
  v3 = v2;
  [sub_10001C4C0() identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_1000105FC() count];
  sub_100008F9C();
  sub_10001C45C(&_mh_execute_header, v4, v5, "SYSession:%{public}@; applying %lu changes", v6, v7, v8, v9, v10);
}

void sub_100063580(void *a1, void *a2)
{
  v3 = [a1 identifier];
  if (a2)
  {
    v4 = [a2 localizedDescription];
  }

  else
  {
    v4 = @"<none>";
  }

  sub_10001C4D8();
  sub_100009030();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
  if (a2)
  {
  }
}

void sub_10006364C(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() identifier];
  sub_100008F78();
  sub_1000091D4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000636E4(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() identifier];
  sub_100008F78();
  sub_10001C44C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10006377C(void *a1)
{
  v2 = a1;
  sub_1000105FC();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  sub_100008F78();
  sub_10001C44C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_100063818()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100063888(void *a1)
{
  v2 = a1;
  sub_1000105FC();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  sub_100008F78();
  sub_10001C44C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_100063924()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100063A64(void *a1)
{
  v2 = a1;
  [sub_1000105FC() clientType];
  sub_100026CD4();
  sub_10001C44C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_100063B00()
{
  sub_100009040();
  sub_1000105BC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100063C04(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 serviceIdentifier];
  v10 = [a2 mainClientIdentifier];
  sub_100026CC4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void sub_100063CEC(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() mainClientIdentifier];
  sub_1000090C4();
  sub_10001C44C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100063D90(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() serviceIdentifier];
  sub_1000090C4();
  sub_10001C44C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100063E34(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() messageIdentifier];
  sub_100008F78();
  sub_10001C44C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100063ECC()
{
  sub_100008F78();
  sub_1000105BC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100063F3C()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100063FAC(void *a1)
{
  v2 = a1;
  [sub_1000105FC() clientType];
  sub_100026CD4();
  sub_10001C44C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

void sub_10006404C()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000640BC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 description];
  sub_100008F78();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "setting access value to %{public}@ due to TCCDSyncMainSetAccessAction", v5, 0xCu);
}

void sub_100064264()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000642D4()
{
  sub_1000090C4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100064350()
{
  sub_1000090C4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000643CC()
{
  sub_1000090C4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100064448(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 name];
  sub_100026CC4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_100064528(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() serviceIdentifier];
  sub_100008F78();
  sub_10001C44C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1000645C0()
{
  sub_100009040();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100064644()
{
  sub_100009040();
  sub_1000105BC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000646C8()
{
  sub_100009040();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10006474C()
{
  *v3 = 136446722;
  sub_100026CD4();
  *&v3[7] = v0;
  v3[9] = 2082;
  v4 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%{public}s: unsupported client type %d for client: %{public}s", v3, 0x1Cu);
}

void sub_1000647FC(void *a1, void *a2)
{
  v3 = a1;
  xpc_dictionary_get_string(a2, _xpc_error_key_description);
  sub_100008F78();
  sub_100026CAC(&_mh_execute_header, v3, v4, "service handler: %{public}s", v5);
}

void sub_1000648A4()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064914()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064984()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000649F4()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064A64(void *a1, void *a2)
{
  v3 = a1;
  xpc_dictionary_get_string(a2, _xpc_error_key_description);
  sub_100008F78();
  sub_100026CAC(&_mh_execute_header, v3, v4, "client handler: %{public}s", v5);
}

void sub_100064B0C()
{
  sub_100008F78();
  sub_1000105BC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064B7C(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_100026CAC(&_mh_execute_header, a3, a3, "Failed to retrieve kTCCPhotosAdd record from db for client: %@", a2);
}

void sub_100064BCC(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_100026CAC(&_mh_execute_header, a3, a3, "Client %@ has already prompted for full access to kTCCServicePhotosAdd", a2);
}

void sub_100064C1C(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "client has already prompted for full access, flags: %d", buf, 8u);
}

void sub_100064C64()
{
  sub_100009010();
  sub_1000105BC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100064CA0(void *a1, uint64_t a2, NSObject *a3, void *a4)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_100026CAC(&_mh_execute_header, a3, a3, "Error in setting the title and info for the prompt for service: %@", a2);
}

void sub_100064CF8(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "AUTHREQ_ERROR: Failed to retrieve %@ record from db for client: %@", buf, 0x16u);
}

void sub_100064D7C()
{
  sub_1000090C4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100064DF8()
{
  sub_1000090C4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100064E74()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064EE4()
{
  sub_1000090C4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100064F60(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 name];
  sub_100008F78();
  sub_100026CC4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100065014()
{
  sub_1000090C4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100065090()
{
  sub_1000090C4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10006510C()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006517C()
{
  sub_100008F78();
  sub_1000105BC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000651EC()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006525C()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100065298()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100065308()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100065378()
{
  sub_100008F78();
  v3 = 2082;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "show-alert: Invalid parameters service arg: %{public}s, condition arg: %{public}s", v2, 0x16u);
}

void sub_1000653FC(void *a1)
{
  v2 = a1;
  v3 = [sub_1000105FC() error];
  v4 = [v3 localizedDescription];
  sub_100008F78();
  sub_10001C44C();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_100065528()
{
  sub_1000090C4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000655A4()
{
  sub_100009040();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100065628(void *a1)
{
  v2 = a1;
  v3 = sub_1000105FC();
  xpc_copy_description(v3);
  sub_100009040();
  sub_10001C44C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1000656C8()
{
  sub_1000090C4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100065744()
{
  sub_1000090C4();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000657C0()
{
  sub_100008F78();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000658B0(uint64_t a1, int a2, NSObject *a3)
{
  v5 = [*(a1 + 32) name];
  v6[0] = 67109378;
  v6[1] = a2;
  v7 = 2114;
  v8 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "handle_TCCExpirationCopyInformationForService(): unexpected client_type: %d for query for service %{public}@.", v6, 0x12u);
}

void sub_100065964()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000659A0()
{
  sub_100009010();
  sub_1000105BC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000659DC()
{
  sub_100009010();
  sub_100008F84();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}