uint64_t AuthenticationServicesAgentMain()
{
  v0 = objc_autoreleasePoolPush();
  WBSSetUpAccessToAppDataContainerWithIdentifier();
  v1 = objc_alloc_init(PublicKeyCredentialManager);
  v2 = [[ASCAgentListener alloc] initWithPublicKeyCredentialManager:v1];
  v3 = qword_100035CE0;
  qword_100035CE0 = v2;

  v4 = [ASAgentAutoFillListener alloc];
  v5 = [qword_100035CE0 signInEventCollector];
  v6 = [v4 initWithPublicKeyCredentialManager:v1 signInEventCollector:v5];
  v7 = qword_100035CE8;
  qword_100035CE8 = v6;

  v8 = objc_alloc_init(_ASAgentCredentialSharingGroupsListener);
  v9 = qword_100035CF0;
  qword_100035CF0 = v8;

  v10 = [[_ASAgentPeriodicMaintenanceActivity alloc] initRegisteringActivityHandler:1];
  v11 = qword_100035CF8;
  qword_100035CF8 = v10;

  v12 = objc_alloc_init(_ASAgentCredentialExchangeListener);
  v13 = qword_100035D00;
  qword_100035D00 = v12;

  v14 = objc_alloc_init(_ASAgentCredentialUpdateListener);
  v15 = qword_100035D08;
  qword_100035D08 = v14;

  v16 = objc_alloc_init(_ASAgentFileVaultRecoveryKeyListener);
  v17 = qword_100035D10;
  qword_100035D10 = v16;

  objc_autoreleasePoolPop(v0);
  WBSRunLoopRunUntilTerminationSignal();
  return 0;
}

void sub_100001F64(id a1)
{
  v1 = sub_10000A644();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    sub_10001FCAC(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_100002090(id a1)
{
  v1 = sub_10000A644();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    sub_10001FD24(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_1000021BC(id a1)
{
  v1 = sub_10000A644();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    sub_10001FD9C(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_100002314(id a1)
{
  v1 = sub_10000A644();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    sub_10001FE14(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_10000235C(id a1)
{
  v1 = sub_10000A644();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    sub_10001FE8C(v1);
  }
}

void sub_1000024A8(id a1)
{
  v1 = sub_10000A644();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    sub_10001FED0(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_1000024F0(id a1)
{
  v1 = sub_10000A644();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    sub_10001FE8C(v1);
  }
}

void sub_1000025E8(id a1)
{
  v1 = sub_10000A644();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    sub_10001FF48(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_1000026EC(id a1)
{
  v1 = sub_10000A644();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    sub_10001FFC0(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_100002854(id a1)
{
  v1 = sub_10000A644();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    sub_100020038(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

id sub_10000289C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 24);
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
    v4 = *(a1 + 40);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;

    v2 = *(a1 + 40);
  }

  v6 = *(v2 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
    v7 = *(a1 + 40);
    v8 = *(v7 + 32);
    *(v7 + 32) = 0;

    v2 = *(a1 + 40);
  }

  result = [*(v2 + 72) cancel];
  *(*(a1 + 40) + 40) = 1;
  return result;
}

void sub_100002B18(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_100002E5C(id a1)
{
  v1 = sub_10000A644();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Exclude credentials matched.", v2, 2u);
  }
}

WebAuthenticationAssertionResponse *__cdecl sub_100002FE0(id a1, _WKWebAuthenticationAssertionResponse *a2)
{
  v2 = a2;
  v3 = [[WebAuthenticationAssertionResponse alloc] initWithWKResponse:v2];

  return v3;
}

void sub_100003038(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 wkResponse];
  (*(v2 + 16))(v2, v3);
}

id sub_100003400(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 48);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v2 = [*(a1 + 40) testOptions];
    v6 = v2 != 0;
  }

  v7 = qword_100035D28;
  v8 = v4;
  if (v7 != -1)
  {
    sub_100020124();
  }

  v9 = &qword_100035D20;
  if (!v6)
  {
    v9 = &qword_100035D18;
  }

  v10 = *v9;
  v11 = [v8 accessGroup];

  v12 = [v10 containsObject:v11];
  if ((v5 & 1) == 0)
  {
  }

  if (v12)
  {
    v28 = sub_100003680(v8);
    [*(a1 + 48) setObject:v8 forKeyedSubscript:v28];
    v13 = [v8 userHandle];
    v27 = [v13 base64EncodedStringWithOptions:0];

    v14 = [v8 group];
    v15 = [*(a1 + 40) relyingPartyIdentifier];
    v26 = [NSURLCredentialStorage safari_customTitleForPasskeyWithUserHandle:v27 relyingPartyID:v15 groupID:v14];

    v16 = [ASCPlatformPublicKeyCredentialLoginChoice alloc];
    v25 = [v8 name];
    v17 = [v8 displayName];
    v18 = [*(a1 + 40) relyingPartyIdentifier];
    v19 = *(a1 + 56);
    v20 = +[WBSOngoingSharingGroupProvider sharedProvider];
    v21 = [v20 cachedGroupWithID:v14];
    v22 = [v21 displayName];
    v23 = [v16 initWithName:v25 displayName:v17 customTitle:v26 identifier:v28 userHandle:v27 relyingPartyIdentifier:v18 publicKeyCredentialOperationUUID:v19 groupID:v14 groupName:v22];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

id sub_100003680(void *a1)
{
  v1 = a1;
  v2 = [v1 credentialID];
  v3 = [v2 base64EncodedStringWithOptions:0];

  v4 = [WBSPublicKeyCredentialIdentifier alloc];
  v5 = [v1 group];

  v6 = [v4 initWithCredentialID:v3 groupID:v5];

  return v6;
}

void sub_100003720(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000037CC;
  v6[3] = &unk_100031390;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_1000037E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 arrayByAddingObjectsFromArray:*(a1 + 40)];
  [v3 didFetchPlatformLoginChoices:v4];

  v5 = [*(a1 + 48) activity];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000038BC;
  block[3] = &unk_100031290;
  v7 = *(a1 + 48);
  v6 = v7.i64[0];
  v9 = vextq_s8(v7, v7, 8uLL);
  os_activity_apply(v5, block);
}

void sub_1000038BC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 56);
  v2 = [*(a1 + 40) sourceApplicationIdentifier];
  [v1 newPasskeysAvailableForApplicationIdentifier:v2];
}

id sub_100003914(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100003680(v3);
  [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  v5 = [ASCSecurityKeyPublicKeyCredentialLoginChoice alloc];
  v6 = [v3 name];
  v7 = [v3 displayName];

  v8 = [v5 initWithName:v6 displayName:v7 identifier:v4 publicKeyCredentialOperationUUID:*(a1 + 40)];

  return v8;
}

void sub_1000039D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100003A84;
  v6[3] = &unk_100031390;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100003C10(uint64_t a1)
{
  v2 = sub_10000A644();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 uuid];
    v6 = *(a1 + 40);
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dismissing operation %{public}@ with result %ld.", &v7, 0x16u);
  }
}

void sub_100003DFC(uint64_t a1)
{
  v2 = sub_10000A644();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 authenticatedLAContext];
    v6 = [*(a1 + 32) uuid];
    v7 = 134218242;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Providing LAContext %p for operation %{public}@.", &v7, 0x16u);
  }
}

void sub_100004000(uint64_t a1)
{
  v2 = sub_10000A644();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 uuid];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Requesting PIN for security key for operation %{public}@.", &v6, 0xCu);
  }
}

void sub_1000041DC(uint64_t a1)
{
  v2 = sub_10000A644();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 uuid];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Requesting New PIN for security key for operation %{public}@.", &v6, 0xCu);
  }
}

uint64_t sub_100004980(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100004998(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [v3 appIDForSecurityKeys];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = [*(a1 + 32) _asToWKCredentialAssertionOptions:v4];

  return v8;
}

void sub_100004A1C(id a1)
{
  v1 = sub_10000A644();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_100020138();
  }
}

void sub_100004A58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  if (v5)
  {
    v8 = v22;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v9 = sub_100004C1C;
    v10 = v5;
  }

  else
  {
    v8 = v21;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v9 = sub_100004CD0;
    v10 = v6;
  }

  v8[2] = v9;
  v8[3] = &unk_100031148;
  v8[4] = v10;
  os_activity_apply(v7, v8);

  v11 = [*(a1 + 32) overrideError];
  v12 = v11;
  if (!v5 && v6 && v11)
  {
    v13 = [*(a1 + 32) activity];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100004D14;
    v18 = &unk_100031290;
    v19 = v6;
    v14 = v12;
    v20 = v14;
    os_activity_apply(v13, &v15);

    v6 = v14;
  }

  [*(a1 + 40) didCompleteAssertionWithCredential:v5 error:{v6, v15, v16, v17, v18}];
}

void sub_100004C1C(uint64_t a1)
{
  v2 = sub_10000A644();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = 138543362;
    v6 = objc_opt_class();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Assertion completed: %{public}@.", &v5, 0xCu);
  }
}

void sub_100004CD0(uint64_t a1)
{
  v2 = sub_10000A644();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10002016C(a1, v2);
  }
}

void sub_100004D14(uint64_t a1)
{
  v2 = sub_10000A644();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 safari_privacyPreservingDescription];
    v6 = [*(a1 + 40) safari_privacyPreservingDescription];
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Replacing error %{public}@ with %{public}@", &v7, 0x16u);
  }
}

void sub_100004DFC(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_1000251C8[v2];
  }

  v4 = [*(a1 + 32) objectAtIndexedSubscript:0];
  v5 = [v4 clientDataHash];

  v6 = *(a1 + 48);
  if (*(a1 + 40))
  {
    [v6 test_getAssertionWithMediationRequirement:v3 clientDataJSON:*(a1 + 56) options:*(a1 + 64) operation:*(a1 + 72) completionHandler:*(a1 + 88)];
  }

  else
  {
    v7 = [v6 _newPanelForOperation:*(a1 + 72)];
    v8 = *(a1 + 64);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100004F60;
    v11[3] = &unk_1000314A0;
    v12 = *(a1 + 80);
    v9 = *(a1 + 56);
    v10 = *(a1 + 48);
    v13 = v9;
    v14 = v10;
    v15 = *(a1 + 32);
    v16 = *(a1 + 88);
    [v7 getAssertionWithMediationRequirement:v3 clientDataHash:v5 options:v8 completionHandler:v11];
  }
}

void sub_100004F60(uint64_t a1, void *a2, void *a3)
{
  v37 = a2;
  v6 = a3;
  if (!v37)
  {
    v3 = 0;
    goto LABEL_10;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v37;
  v10 = v7;
  v11 = v8;
  v12 = [v9 attachment];
  if (v12 < 2)
  {
    v36 = [v9 extensionOutputsCBOR];
    v34 = [ASCPlatformPublicKeyCredentialAssertion alloc];
    v32 = [v9 authenticatorData];
    v13 = [v9 signature];
    v14 = [v9 userHandle];
    v15 = [v9 rawId];
    sub_10000A5B0([v9 attachment]);
    v16 = v6;
    v17 = v11;
    v19 = v18 = v10;
    LOBYTE(v31) = 0;
    v3 = [v34 initWithRelyingPartyIdentifier:v18 authenticatorData:v32 signature:v13 userHandle:v14 rawClientDataJSON:v17 credentialID:v15 extensions:0 attachment:v19 isExternal:v31];

    v10 = v18;
    v11 = v17;
    v6 = v16;

LABEL_8:
    v27 = v36;
    goto LABEL_9;
  }

  if (v12 == 2)
  {
    v36 = [v9 extensionOutputsCBOR];
    v33 = [ASCSecurityKeyPublicKeyCredentialAssertion alloc];
    v20 = [v9 authenticatorData];
    v21 = [v9 signature];
    v22 = [v9 userHandle];
    v23 = [v9 rawId];
    sub_10000A5B0([v9 attachment]);
    v35 = v6;
    v24 = v11;
    v26 = v25 = v10;
    LOBYTE(v31) = 0;
    v3 = [v33 initWithRelyingPartyIdentifier:v25 authenticatorData:v20 signature:v21 userHandle:v22 rawClientDataJSON:v24 credentialID:v23 extensionOutputsCBOR:v36 attachment:v26 appID:v31];

    v10 = v25;
    v11 = v24;
    v6 = v35;

    goto LABEL_8;
  }

  v27 = [v9 extensionOutputsCBOR];
LABEL_9:

  v28 = *(a1 + 48);
  v29 = [*(a1 + 56) objectAtIndexedSubscript:0];
  v30 = [v9 extensionOutputsCBOR];
  [v28 handleExtensionsIfNeededForCredential:v3 withAssertionOptions:v29 webKitExtensionOutputs:v30];

LABEL_10:
  (*(*(a1 + 64) + 16))();
}

void sub_100005238(id a1)
{
  v1 = sub_10000A644();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Not requesting platform credentials.", v2, 2u);
  }
}

void sub_100005298(id a1)
{
  v1 = sub_10000A644();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Platform authenticator not available.", v2, 2u);
  }
}

void sub_100005578(uint64_t a1)
{
  v2 = sub_10000A644();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_100020210(a1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_100005BF8(uint64_t a1)
{
  v2 = sub_10000A644();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Requested AutoFill passkeys for operation %{public}@ after already selecting an assertion. Ignoring.", &v4, 0xCu);
  }
}

void sub_100005F74(uint64_t a1)
{
  v2 = sub_10000A644();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_1000202F0(a1, v2);
  }
}

void sub_1000060E4(uint64_t a1)
{
  v2 = sub_10000A644();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 safari_privacyPreservingDescription];
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to cancel operation %{public}@, override error: %{public}@", &v7, 0x16u);
  }
}

void sub_10000685C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006880(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 48) + 8);
  v4 = a2;
  os_unfair_lock_lock(v3 + 8);
  [*(a1 + 32) addObjectsFromArray:v4];

  os_unfair_lock_unlock((*(*(a1 + 48) + 8) + 32));
  v5 = *(a1 + 40);

  dispatch_group_leave(v5);
}

WBSWebBrowserPasskey *__cdecl sub_1000068F4(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [(NSDictionary *)v2 safari_BOOLForKey:_WKLocalAuthenticatorCredentialSynchronizableKey];
  v4 = [(NSDictionary *)v2 safari_stringForKey:_WKLocalAuthenticatorCredentialGroupKey];
  v5 = [v4 length];

  if ((v3 & 1) != 0 || v5)
  {
    v7 = [(NSDictionary *)v2 safari_stringForKey:_WKLocalAuthenticatorCredentialNameKey];
    v8 = [(NSDictionary *)v2 safari_stringForKey:_WKLocalAuthenticatorCredentialRelyingPartyIDKey];
    v9 = [(NSDictionary *)v2 safari_dataForKey:_WKLocalAuthenticatorCredentialIDKey];
    v10 = [(NSDictionary *)v2 safari_dataForKey:_WKLocalAuthenticatorCredentialUserHandleKey];
    v6 = [[WBSWebBrowserPasskey alloc] initWithName:v7 relyingParty:v8 credentialID:v9 userHandle:v10 customTitle:0 providerName:@"Apple Passwords"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100006A3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = a1;
  os_unfair_lock_lock((*(*(a1 + 48) + 8) + 32));
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v18 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v18)
  {
    v16 = *v23;
    do
    {
      v4 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(v17 + 32);
        v5 = *(*(&v22 + 1) + 8 * v4);
        v19 = [WBSWebBrowserPasskey alloc];
        v20 = [v5 user];
        v6 = [v5 serviceIdentifier];
        v7 = [v5 credentialID];
        v8 = [v7 safari_base64DecodedData];
        v9 = [v5 userHandle];
        v10 = [v9 safari_base64DecodedData];
        v11 = [v5 owningExtensionState];
        v12 = [v11 localizedDisplayName];
        v13 = v6;
        v14 = [v19 initWithName:v20 relyingParty:v6 credentialID:v8 userHandle:v10 customTitle:0 providerName:v12];
        [v21 addObject:v14];

        v4 = v4 + 1;
      }

      while (v18 != v4);
      v18 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v18);
  }

  os_unfair_lock_unlock((*(*(v17 + 48) + 8) + 32));
  dispatch_group_leave(*(v17 + 40));
}

id sub_100006E48(uint64_t a1, void *a2)
{
  v3 = [a2 safari_dataForKey:_WKLocalAuthenticatorCredentialIDKey];
  v4 = [v3 isEqualToData:*(a1 + 32)];

  return v4;
}

void sub_100007538(uint64_t a1, void *a2)
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [v8 relyingPartyIdentifier];
        if ([v9 isEqualToString:*(a1 + 32)])
        {
          v10 = [v8 credentialIdentity];
          v11 = [v10 credentialID];
          v12 = [v11 isEqualToString:*(a1 + 40)];

          if (v12)
          {
            v14 = [*(a1 + 48) assertionOptions];

            v15 = *(a1 + 48);
            if (v14)
            {
              v16 = [v15 assertionOptions];
              v17 = [v16 extensions];

              if (v17)
              {
                v18 = [[ASPasskeyAssertionCredentialExtensionInput alloc] initWithCoreExtensions:v17];
              }

              else
              {
                v18 = 0;
              }

              v20 = [[ASPasskeyCredentialRequest alloc] initWithLoginChoice:v8 assertionExtensionInput:v18];
            }

            else
            {
              v19 = [v15 creationOptions];
              v17 = [v19 extensions];

              if (v17)
              {
                v18 = [[ASPasskeyRegistrationCredentialExtensionInput alloc] initWithCoreExtensions:v17];
              }

              else
              {
                v18 = 0;
              }

              v20 = [[ASPasskeyCredentialRequest alloc] initWithLoginChoice:v8 registrationExtensionInput:v18];
            }

            v21 = v20;

            (*(*(a1 + 56) + 16))();
            goto LABEL_25;
          }
        }

        else
        {
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v13 = sub_10000A644();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_10002044C(a1, v13);
  }

  (*(*(a1 + 56) + 16))();
LABEL_25:
}

NSString *__cdecl sub_100007C50(id a1, ASCPublicKeyCredentialDescriptor *a2)
{
  v2 = [(ASCPublicKeyCredentialDescriptor *)a2 credentialID];
  v3 = [v2 base64EncodedStringWithOptions:0];

  return v3;
}

void sub_100007CA4(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007D70;
  v5[3] = &unk_100031650;
  v8 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = [a2 safari_mapAndFilterObjectsUsingBlock:v5];
  (*(*(a1 + 48) + 16))();
}

id sub_100007D70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 48) == 1 && (v5 = *(a1 + 32), [v3 credentialID], v6 = objc_claimAutoreleasedReturnValue(), LODWORD(v5) = objc_msgSend(v5, "containsObject:", v6), v6, !v5))
  {
    v15 = 0;
  }

  else
  {
    v7 = [ASCPlatformPublicKeyCredentialLoginChoice alloc];
    v8 = [*(a1 + 40) uuid];
    v9 = [*(a1 + 40) assertionOptions];
    v10 = [v9 clientDataHash];
    v11 = [*(a1 + 40) assertionOptions];
    v12 = [v11 userVerificationPreference];
    v13 = [*(a1 + 40) creationOptions];
    v14 = [v13 supportedAlgorithmIdentifiers];
    v15 = [v7 initWithCredentialIdentity:v4 publicKeyCredentialOperationUUID:v8 clientDataHash:v10 userVerificationPreference:v12 supportedAlgorithms:v14];
  }

  return v15;
}

_WKPublicKeyCredentialParameters *__cdecl sub_1000087CC(id a1, NSNumber *a2)
{
  v2 = a2;
  v3 = [[_WKPublicKeyCredentialParameters alloc] initWithAlgorithm:v2];

  return v3;
}

uint64_t sub_100008824(void *a1)
{
  v1 = a1;
  if (([v1 isEqualToString:ASAuthorizationPublicKeyCredentialAttestationKindNone] & 1) == 0)
  {
    if ([v1 isEqualToString:ASAuthorizationPublicKeyCredentialAttestationKindIndirect])
    {
      v2 = 1;
      goto LABEL_9;
    }

    if ([v1 isEqualToString:ASAuthorizationPublicKeyCredentialAttestationKindDirect])
    {
      v2 = 2;
      goto LABEL_9;
    }

    if ([v1 isEqualToString:ASAuthorizationPublicKeyCredentialAttestationKindEnterprise])
    {
      v2 = 3;
      goto LABEL_9;
    }

    v4 = sub_10000A644();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ignoring unknown attestation preference %{public}@", &v5, 0xCu);
    }
  }

  v2 = 0;
LABEL_9:

  return v2;
}

id sub_100008958(void *a1, int a2)
{
  v3 = a1;
  v4 = [_WKPublicKeyCredentialDescriptor alloc];
  v5 = [v3 credentialID];
  v6 = [v4 initWithIdentifier:v5];

  if (a2)
  {
    [v6 setTransports:&off_100031EE0];
  }

  else
  {
    v7 = [v3 transports];
    if ([v7 count])
    {
      v8 = [PublicKeyCredentialManager wkSecurityKeyTransportsFromASTransports:v7];
      [v6 setTransports:v8];
    }
  }

  return v6;
}

uint64_t sub_100008A30(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:ASAuthorizationPublicKeyCredentialUserVerificationPreferenceRequired])
  {
    v2 = 0;
  }

  else
  {
    if (([v1 isEqualToString:ASAuthorizationPublicKeyCredentialUserVerificationPreferencePreferred] & 1) == 0)
    {
      if ([v1 isEqualToString:ASAuthorizationPublicKeyCredentialUserVerificationPreferenceDiscouraged])
      {
        v2 = 2;
        goto LABEL_7;
      }

      v4 = sub_10000A644();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 138543362;
        v6 = v1;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ignoring unknown user verification preference %{public}@", &v5, 0xCu);
      }
    }

    v2 = 1;
  }

LABEL_7:

  return v2;
}

void sub_100009048(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) activity];
  v8 = v7;
  if (v5)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009224;
    block[3] = &unk_100031798;
    block[4] = *(a1 + 48);
    os_activity_apply(v7, block);
  }

  else
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000092C4;
    v19[3] = &unk_100031148;
    v20 = v6;
    os_activity_apply(v8, v19);

    v8 = v20;
  }

  v9 = [*(a1 + 32) overrideError];
  v10 = v9;
  if (!v5 && v6 && v9)
  {
    v11 = [*(a1 + 32) activity];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100009308;
    v16 = &unk_100031290;
    v17 = v6;
    v12 = v10;
    v18 = v12;
    os_activity_apply(v11, &v13);

    v6 = v12;
  }

  [*(a1 + 40) didCompleteRegistrationWithCredential:v5 error:{v6, v13, v14, v15, v16}];
}

void sub_100009224(uint64_t a1)
{
  v2 = sub_10000A644();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed registration: %lu.", &v4, 0xCu);
  }
}

void sub_1000092C4(uint64_t a1)
{
  v2 = sub_10000A644();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100020614(a1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_100009308(uint64_t a1)
{
  v2 = sub_10000A644();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 safari_privacyPreservingDescription];
    v6 = [*(a1 + 40) safari_privacyPreservingDescription];
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Replacing error %{public}@ with %{public}@", &v7, 0x16u);
  }
}

void sub_1000093F0(uint64_t a1)
{
  v2 = [*(a1 + 32) _newPanelForOperation:*(a1 + 40)];
  if (*(a1 + 104))
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  if (*(a1 + 48))
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 56) clientDataHash];
    [v4 test_makeCredentialWithMediationRequirement:v3 clientDataHash:v5 options:*(a1 + 64) testOptions:*(a1 + 48) clientDataJSON:*(a1 + 72) completionHandler:*(a1 + 88)];
  }

  else
  {
    v6 = [*(a1 + 56) clientDataHash];
    v7 = *(a1 + 64);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000955C;
    v10[3] = &unk_1000317E8;
    v16 = *(a1 + 96);
    v11 = *(a1 + 80);
    v8 = *(a1 + 72);
    v9 = *(a1 + 32);
    v12 = v8;
    v13 = v9;
    v14 = *(a1 + 56);
    v15 = *(a1 + 88);
    [v2 makeCredentialWithMediationRequirement:v3 clientDataHash:v6 options:v7 completionHandler:v10];
  }
}

void sub_10000955C(void *a1, void *a2, void *a3)
{
  v26 = a2;
  v6 = a3;
  if (!v26)
  {
    v3 = 0;
    goto LABEL_9;
  }

  v7 = a1[9];
  v8 = a1[4];
  v9 = a1[5];
  v10 = v26;
  v25 = v8;
  v11 = v9;
  v12 = [v10 transports];
  v13 = [PublicKeyCredentialManager asTransportsFromWKTransports:v12];

  v14 = [v10 extensionOutputsCBOR];
  if (v7 == 2)
  {
    v20 = [ASCSecurityKeyPublicKeyCredentialRegistration alloc];
    v16 = [v10 attestationObject];
    v17 = [v10 rawId];
    v18 = sub_10000A5B0([v10 attachment]);
    v19 = [v20 initWithRelyingPartyIdentifier:v25 attestationObject:v16 rawClientDataJSON:v11 credentialID:v17 transports:v13 extensionOutputsCBOR:v14 attachment:v18];
    goto LABEL_7;
  }

  if (v7 == 1)
  {
    v15 = [ASCPlatformPublicKeyCredentialRegistration alloc];
    v16 = [v10 attestationObject];
    v17 = [v10 rawId];
    v18 = sub_10000A5B0([v10 attachment]);
    LOBYTE(v24) = 0;
    v19 = [v15 initWithRelyingPartyIdentifier:v25 attestationObject:v16 rawClientDataJSON:v11 credentialID:v17 transports:v13 extensions:0 attachment:v18 isExternal:v24];
LABEL_7:
    v3 = v19;
  }

  v21 = a1[6];
  v22 = a1[7];
  v23 = [v10 extensionOutputsCBOR];
  [v21 handleExtensionsIfNeededForCredential:v3 withRegistrationOptions:v22 webKitExtensionOutputs:v23];

LABEL_9:
  (*(a1[8] + 16))();
}

void sub_1000098B0(uint64_t a1)
{
  v2 = sub_10000A644();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 uuid];
    v7 = 134218242;
    v8 = v4;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Creating panel %p for %{public}@.", &v7, 0x16u);
  }
}

void sub_100009B6C(uint64_t a1)
{
  v2 = sub_10000A644();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 uuid];
    v6 = *(a1 + 40);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Beginning operation %{public}@ for %{public}@.", &v7, 0x16u);
  }
}

void sub_100009D34(uint64_t a1)
{
  v2 = sub_10000A644();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Tearing down operation %{public}@.", &v4, 0xCu);
  }
}

void sub_10000A520(id a1)
{
  v1 = [NSSet setWithObjects:@"com.apple.webkit.webauthn", 0];
  v2 = qword_100035D18;
  qword_100035D18 = v1;

  qword_100035D20 = [qword_100035D18 safari_mapAndFilterObjectsUsingBlock:&stru_100031870];

  _objc_release_x1();
}

id sub_10000A5B0(id a1)
{
  if (a1 <= 2)
  {
    a1 = **(&off_100031890 + a1);
  }

  return a1;
}

void sub_10000A5F4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10000A628(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_10000A644()
{
  if (qword_100035D38[0] != -1)
  {
    sub_100020754();
  }

  return qword_100035D30;
}

void sub_10000A67C(id a1)
{
  qword_100035D30 = os_log_create("com.apple.AuthenticationServices", "Authorization");

  _objc_release_x1();
}

id sub_10000A9B4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

uint64_t sub_10000AA1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = (a1 + *a4);
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v9;
}

id WebAuthenticationAssertionResponse.init(wkResponse:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWKResponse:a1];

  return v2;
}

{
  v2 = sub_10000B6DC(a1);

  return v2;
}

id WebAuthenticationAssertionResponse.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_10000AE68(uint64_t a1)
{
  v2 = type metadata accessor for WBSKeychainPasskey.Metadata.DataKeys();
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = v67[8];
  __chkstk_darwin(v2);
  v66 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WBSKeychainPasskey.Metadata.StringKeys();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v65 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v57 - v10;
  v12 = type metadata accessor for WBSKeychainPasskey.Metadata();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v63 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v57 - v18;
  __chkstk_darwin(v17);
  v21 = &v57 - v20;
  v22 = a1;
  WBSKeychainPasskey.metadata.getter();
  v61 = v6[13];
  v61(v11, enum case for WBSKeychainPasskey.Metadata.StringKeys.name(_:), v5);
  v62 = WBSKeychainPasskey.Metadata.subscript.getter();
  v24 = v23;
  v25 = v6[1];
  v64 = v5;
  v60 = v25;
  v25(v11, v5);
  v26 = *(v13 + 8);
  v69 = v12;
  (v26)(v21, v12);
  if (v24)
  {
    v59 = v24;
    v27 = v22;
    WBSKeychainPasskey.metadata.getter();
    v29 = v67;
    v28 = v68;
    v30 = v26;
    v31 = v66;
    (v67[13])(v66, enum case for WBSKeychainPasskey.Metadata.DataKeys.userHandle(_:), v68);
    v58 = WBSKeychainPasskey.Metadata.subscript.getter();
    v33 = v32;
    (v29[1])(v31, v28);
    v30(v19, v69);
    v68 = v33;
    if (v33 >> 60 == 15)
    {
      v34 = type metadata accessor for WBSKeychainPasskey();
      (*(*(v34 - 8) + 8))(v27, v34);

      return 0;
    }

    else
    {
      v66 = v30;
      v67 = String._bridgeToObjectiveC()();
      v37 = v63;
      WBSKeychainPasskey.metadata.getter();
      v38 = v64;
      v39 = v65;
      v61(v65, enum case for WBSKeychainPasskey.Metadata.StringKeys.displayName(_:), v64);
      WBSKeychainPasskey.Metadata.subscript.getter();
      v41 = v40;
      v60(v39, v38);
      (v66)(v37, v69);
      if (v41)
      {
      }

      v69 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v42 = String._bridgeToObjectiveC()();

      v43 = v58;
      v44 = v68;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v46 = WBSKeychainPasskey.isSynchronizable.getter();
      WBSKeychainPasskey.group.getter();
      v47 = String._bridgeToObjectiveC()();

      v48 = WBSKeychainPasskey.credentialID.getter();
      v50 = v49;
      v51 = v27;
      v52 = Data._bridgeToObjectiveC()().super.isa;
      sub_10000B954(v48, v50);
      WBSKeychainPasskey.accessGroup.getter();
      v53 = String._bridgeToObjectiveC()();

      v54 = v67;
      v55 = [v69 initWithName:v67 displayName:v42 userHandle:isa synchronizable:v46 & 1 group:v47 credentialID:v52 accessGroup:v53];
      sub_10000B9A8(v43, v44);

      v56 = type metadata accessor for WBSKeychainPasskey();
      (*(*(v56 - 8) + 8))(v51, v56);
      return v55;
    }
  }

  else
  {
    v36 = type metadata accessor for WBSKeychainPasskey();
    (*(*(v36 - 8) + 8))(v22, v36);
    return 0;
  }
}

uint64_t sub_10000B420()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_10000B46C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_10000B4C4()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10000B52C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

id sub_10000B598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = OBJC_IVAR___WebAuthenticationAssertionResponse_wkResponse;
  *&v13[OBJC_IVAR___WebAuthenticationAssertionResponse_wkResponse] = 0;
  v17 = &v13[OBJC_IVAR___WebAuthenticationAssertionResponse_userHandle];
  *v17 = xmmword_100025200;
  v18 = OBJC_IVAR___WebAuthenticationAssertionResponse_laContext;
  *&v13[OBJC_IVAR___WebAuthenticationAssertionResponse_laContext] = 0;
  *&v13[v16] = 0;
  v19 = &v13[OBJC_IVAR___WebAuthenticationAssertionResponse_name];
  *v19 = a1;
  v19[1] = a2;
  v20 = &v13[OBJC_IVAR___WebAuthenticationAssertionResponse_displayName];
  *v20 = a3;
  v20[1] = a4;
  v21 = *v17;
  v22 = *(v17 + 1);
  *v17 = a5;
  *(v17 + 1) = a6;
  sub_10000B9BC(a5, a6);
  sub_10000B9A8(v21, v22);
  v13[OBJC_IVAR___WebAuthenticationAssertionResponse_synchronizable] = a7;
  v23 = &v13[OBJC_IVAR___WebAuthenticationAssertionResponse_group];
  *v23 = a8;
  v23[1] = a9;
  v24 = &v13[OBJC_IVAR___WebAuthenticationAssertionResponse_credentialID];
  *v24 = a10;
  v24[1] = a11;
  v25 = &v13[OBJC_IVAR___WebAuthenticationAssertionResponse_accessGroup];
  *v25 = a12;
  v25[1] = a13;
  v26 = *&v13[v18];
  *&v13[v18] = 0;
  sub_10000B9BC(a10, a11);

  v28.receiver = v13;
  v28.super_class = WebAuthenticationAssertionResponse;
  return objc_msgSendSuper2(&v28, "init");
}

id sub_10000B6DC(void *a1)
{
  v2 = OBJC_IVAR___WebAuthenticationAssertionResponse_wkResponse;
  *&v1[OBJC_IVAR___WebAuthenticationAssertionResponse_wkResponse] = 0;
  v3 = &v1[OBJC_IVAR___WebAuthenticationAssertionResponse_userHandle];
  *&v1[OBJC_IVAR___WebAuthenticationAssertionResponse_userHandle] = xmmword_100025200;
  v4 = OBJC_IVAR___WebAuthenticationAssertionResponse_laContext;
  *&v1[OBJC_IVAR___WebAuthenticationAssertionResponse_laContext] = 0;
  *&v1[v2] = a1;
  v5 = a1;
  v6 = [v5 name];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = &v1[OBJC_IVAR___WebAuthenticationAssertionResponse_name];
  *v10 = v7;
  v10[1] = v9;
  v11 = [v5 displayName];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = &v1[OBJC_IVAR___WebAuthenticationAssertionResponse_displayName];
  *v15 = v12;
  v15[1] = v14;
  v16 = [v5 userHandle];
  if (v16)
  {
    v17 = v16;
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xF000000000000000;
  }

  v21 = *v3;
  v22 = v3[1];
  *v3 = v18;
  v3[1] = v20;
  sub_10000B9A8(v21, v22);
  v23 = [v5 synchronizable];
  v1[OBJC_IVAR___WebAuthenticationAssertionResponse_synchronizable] = v23;
  v24 = [v5 group];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = &v1[OBJC_IVAR___WebAuthenticationAssertionResponse_group];
  *v28 = v25;
  v28[1] = v27;
  v29 = [v5 credentialID];
  v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = &v1[OBJC_IVAR___WebAuthenticationAssertionResponse_credentialID];
  *v33 = v30;
  v33[1] = v32;
  v34 = [v5 accessGroup];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38 = &v1[OBJC_IVAR___WebAuthenticationAssertionResponse_accessGroup];
  *v38 = v35;
  v38[1] = v37;
  v39 = *&v1[v4];
  *&v1[v4] = 0;

  v41.receiver = v1;
  v41.super_class = WebAuthenticationAssertionResponse;
  return objc_msgSendSuper2(&v41, "init");
}

unint64_t type metadata accessor for WebAuthenticationAssertionResponse()
{
  result = qword_100035878;
  if (!qword_100035878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100035878);
  }

  return result;
}

uint64_t sub_10000B954(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000B9A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000B954(a1, a2);
  }

  return a1;
}

uint64_t sub_10000B9BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_10000BA38(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10000BAEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000BB30()
{
  v0 = type metadata accessor for Logger();
  sub_10000BBB4(v0, qword_100036040);
  sub_10000BC18(v0, qword_100036040);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_10000BBB4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000BC18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000BC50()
{
  v0 = type metadata accessor for SymmetricKeySize();
  sub_10000BBB4(v0, qword_100036058);
  sub_10000BC18(v0, qword_100036058);
  return static SymmetricKeySize.bits256.getter();
}

uint64_t sub_10000BC9C()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = type metadata accessor for WBSPasskeyStore();
  v9[0] = sub_10001F88C(0, &qword_100035A90, OS_dispatch_queue_serial_ptr);
  static DispatchQoS.unspecified.getter();
  v11 = &_swiftEmptyArrayStorage;
  sub_100018E68(&qword_100035A98, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_10000D1D4(&qword_100035AA0, &qword_1000254B0);
  sub_10001F9F8(&qword_100035AA8, &qword_100035AA0, &qword_1000254B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v10);
  OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  result = WBSPasskeyStore.__allocating_init(forTesting:queue:)();
  qword_100036070 = result;
  return result;
}

Swift::Int sub_10000BF34()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10000BFA0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void PublicKeyCredentialManager.handleExtensionsIfNeeded(for:options:webKitExtensionOutputs:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v126 = a3;
  v119 = a2;
  v7 = sub_10000D1D4(&qword_1000359C0, &qword_1000253A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v112 = v103 - v9;
  v10 = sub_10000D1D4(&qword_1000359C8, &qword_1000253A8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v120 = v103 - v12;
  v123 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs.PRF();
  v121 = *(v123 - 8);
  v13 = *(v121 + 64);
  __chkstk_darwin(v123);
  v111 = v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.OperationResult();
  v108 = *(v109 - 8);
  v15 = *(v108 + 64);
  __chkstk_darwin(v109);
  v107 = (v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs.LargeBlob.Operation();
  v122 = *(v118 - 8);
  v17 = *(v122 + 64);
  __chkstk_darwin(v118);
  v106 = v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10000D1D4(&qword_1000359D0, &qword_1000253B0);
  v19 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v124 = v103 - v20;
  v21 = sub_10000D1D4(&qword_1000359D8, &qword_1000253B8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v114 = v103 - v23;
  v24 = sub_10000D1D4(&qword_1000359E0, &qword_1000253C0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v113 = v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v125 = v103 - v29;
  __chkstk_darwin(v28);
  v117 = v103 - v30;
  v31 = sub_10000D1D4(&qword_1000359E8, &qword_1000253C8);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v110 = v103 - v33;
  v34 = sub_10000D1D4(&qword_1000359F0, &qword_1000253D0);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = v103 - v36;
  v38 = type metadata accessor for ASCTAPLargeBlobExtensionOutput();
  v105 = *(v38 - 8);
  v39 = *(v105 + 64);
  __chkstk_darwin(v38);
  v41 = v103 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ASCTAPExtensionOutput();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = __chkstk_darwin(v42);
  v47 = v103 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v49 = v103 - v48;
  objc_opt_self();
  v128 = a1;
  v50 = swift_dynamicCastObjCClass();
  v127 = a4;
  v51 = a4 >> 60;
  if (v50 && v51 <= 0xE)
  {
    v52 = v50;
    v53 = type metadata accessor for CBORDecoder();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();
    v57 = v126;
    v56 = v127;
    sub_100018EB0(v126, v127);
    CBORDecoder.init()();
    sub_100018E68(&qword_100035A00, &type metadata accessor for ASCTAPExtensionOutput);
    dispatch thunk of CBORDecoder.decode<A>(_:from:)();

    v62 = ASCTAPExtensionOutput.appID.getter();
    if (v62 == 2)
    {
      (*(v43 + 8))(v49, v42);
      swift_unknownObjectRelease();
      sub_10000B9A8(v57, v56);
    }

    else
    {
      [v52 setAppID:v62 & 1];
      swift_unknownObjectRelease();
      sub_10000B9A8(v57, v56);
      (*(v43 + 8))(v49, v42);
    }

    return;
  }

  objc_opt_self();
  v116 = swift_dynamicCastObjCClass();
  if (!v116)
  {
    return;
  }

  swift_unknownObjectRetain();
  v58 = &PublicKeyCredentialOperation__metaData;
  v104 = [v116 extensions];
  if (!v104)
  {
    v104 = [objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs()) init];
  }

  v103[1] = v4;
  if (v51 <= 0xE)
  {
    v59 = type metadata accessor for CBORDecoder();
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    swift_allocObject();
    sub_10000B9BC(v126, v127);
    CBORDecoder.init()();
    sub_100018E68(&qword_100035A00, &type metadata accessor for ASCTAPExtensionOutput);
    dispatch thunk of CBORDecoder.decode<A>(_:from:)();

    ASCTAPExtensionOutput.largeBlob.getter();
    v63 = v105;
    if ((*(v105 + 48))(v37, 1, v38) == 1)
    {
      (*(v43 + 8))(v47, v42);
      sub_10000B9A8(v126, v127);
      sub_10001FAE8(v37, &qword_1000359F0, &qword_1000253D0);
    }

    else
    {
      (*(v63 + 32))(v41, v37, v38);
      ASCTAPLargeBlobExtensionOutput.toASCAssertion()();
      dispatch thunk of ASCPublicKeyCredentialAssertionExtensionOutputs.largeBlob.setter();
      sub_10000B9A8(v126, v127);
      (*(v63 + 8))(v41, v38);
      (*(v43 + 8))(v47, v42);
    }
  }

  v64 = v119;
  v65 = [v119 relyingPartyIdentifier];
  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v67;

  if (v66 == 0x6F632E656C707061 && v68 == 0xE90000000000006DLL)
  {

    v69 = v121;
    v70 = v118;
    v71 = v117;
    v72 = v125;
  }

  else
  {
    v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v74 = v123;
    v69 = v121;
    v70 = v118;
    v71 = v117;
    v72 = v125;
    if ((v73 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v75 = [v64 extensions];
  v76 = v114;
  dispatch thunk of ASCPublicKeyCredentialAssertionExtensionInputs.largeBlob.getter();

  v77 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs.LargeBlob();
  v78 = 1;
  if (!(*(*(v77 - 8) + 48))(v76, 1, v77))
  {
    ASCPublicKeyCredentialAssertionExtensionInputs.LargeBlob.operation.getter();
    v78 = 0;
  }

  sub_10001FAE8(v76, &qword_1000359D8, &qword_1000253B8);
  v79 = v122;
  v80 = *(v122 + 56);
  v80(v71, v78, 1, v70);
  (*(v79 + 104))(v72, enum case for ASCPublicKeyCredentialAssertionExtensionInputs.LargeBlob.Operation.read(_:), v70);
  v80(v72, 0, 1, v70);
  v81 = *(v115 + 48);
  v82 = v72;
  v83 = v124;
  sub_10001F93C(v71, v124, &qword_1000359E0, &qword_1000253C0);
  sub_10001F93C(v82, v83 + v81, &qword_1000359E0, &qword_1000253C0);
  v84 = *(v79 + 48);
  if (v84(v83, 1, v70) == 1)
  {
    sub_10001FAE8(v82, &qword_1000359E0, &qword_1000253C0);
    v85 = v124;
    sub_10001FAE8(v71, &qword_1000359E0, &qword_1000253C0);
    v86 = v84(v85 + v81, 1, v70);
    v74 = v123;
    if (v86 == 1)
    {
      sub_10001FAE8(v85, &qword_1000359E0, &qword_1000253C0);
      v58 = &PublicKeyCredentialOperation__metaData;
LABEL_28:
      v94 = _sSo26PublicKeyCredentialManagerC27AuthenticationServicesAgentE21appleAccountLargeBlob3for10Foundation4DataVSgSo09ASCPublicbC16AssertionOptionsC_tF_0(v64);
      v95 = v107;
      *v107 = v94;
      v95[1] = v96;
      (*(v108 + 104))(v95, enum case for ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.OperationResult.read(_:), v109);
      v97 = v110;
      ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob.init(result:)();
      v98 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.LargeBlob();
      (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
      dispatch thunk of ASCPublicKeyCredentialAssertionExtensionOutputs.largeBlob.setter();
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v87 = v113;
  sub_10001F93C(v83, v113, &qword_1000359E0, &qword_1000253C0);
  if (v84(v83 + v81, 1, v70) == 1)
  {
    sub_10001FAE8(v125, &qword_1000359E0, &qword_1000253C0);
    v85 = v124;
    sub_10001FAE8(v71, &qword_1000359E0, &qword_1000253C0);
    (*(v122 + 8))(v87, v70);
    v74 = v123;
LABEL_26:
    sub_10001FAE8(v85, &qword_1000359D0, &qword_1000253B0);
    v58 = &PublicKeyCredentialOperation__metaData;
    goto LABEL_29;
  }

  v88 = v122;
  v89 = v83 + v81;
  v90 = v106;
  (*(v122 + 32))(v106, v89, v70);
  sub_100018E68(&qword_1000359F8, &type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs.LargeBlob.Operation);
  v91 = v83;
  v92 = dispatch thunk of static Equatable.== infix(_:_:)();
  v93 = *(v88 + 8);
  v93(v90, v70);
  sub_10001FAE8(v125, &qword_1000359E0, &qword_1000253C0);
  sub_10001FAE8(v71, &qword_1000359E0, &qword_1000253C0);
  v93(v113, v70);
  sub_10001FAE8(v91, &qword_1000359E0, &qword_1000253C0);
  v58 = &PublicKeyCredentialOperation__metaData;
  v74 = v123;
  if (v92)
  {
    goto LABEL_28;
  }

LABEL_29:
  v99 = [v64 v58[52].ivar_lyt];
  v100 = v120;
  dispatch thunk of ASCPublicKeyCredentialAssertionExtensionInputs.prf.getter();

  if ((*(v69 + 48))(v100, 1, v74) == 1)
  {
    sub_10001FAE8(v100, &qword_1000359C8, &qword_1000253A8);
    v101 = v104;
  }

  else
  {
    v102 = v111;
    (*(v69 + 32))(v111, v100, v74);
    sub_10000D220(v116, v112);
    v101 = v104;
    dispatch thunk of ASCPublicKeyCredentialAssertionExtensionOutputs.prf.setter();
    (*(v69 + 8))(v102, v74);
  }

  [v116 setExtensions:v101];
  swift_unknownObjectRelease();
}

{
  v75 = a4;
  v71 = a3;
  v72 = a2;
  v6 = sub_10000D1D4(&qword_100035A08, &qword_1000253D8);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v64 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v63 = &v59 - v10;
  v11 = sub_10000D1D4(&qword_100035A10, &qword_1000253E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v67 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v66 = &v59 - v15;
  v16 = sub_10000D1D4(&qword_100035A18, &qword_1000253E8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v59 - v18;
  v20 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionInputs.PRF();
  v21 = *(v20 - 8);
  v73 = v20;
  v74 = v21;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v68 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000D1D4(&qword_100035A20, &unk_1000253F0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v26 = sub_10000D1D4(&qword_1000359F0, &qword_1000253D0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v59 - v28;
  v30 = type metadata accessor for ASCTAPLargeBlobExtensionOutput();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v59 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ASCTAPExtensionOutput();
  v65 = *(v35 - 8);
  v36 = *(v65 + 64);
  __chkstk_darwin(v35);
  v38 = &v59 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (v39)
  {
    v60 = v31;
    v61 = v4;
    v40 = v39;
    swift_unknownObjectRetain();
    v69 = v40;
    v70 = [v40 extensions];
    if (!v70)
    {
      v70 = [objc_allocWithZone(type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs()) init];
    }

    if (v75 >> 60 != 15)
    {
      v62 = a1;
      v41 = v75;
      v42 = type metadata accessor for CBORDecoder();
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      swift_allocObject();
      sub_10000B9BC(v71, v41);
      CBORDecoder.init()();
      sub_100018E68(&qword_100035A00, &type metadata accessor for ASCTAPExtensionOutput);
      dispatch thunk of CBORDecoder.decode<A>(_:from:)();

      ASCTAPExtensionOutput.largeBlob.getter();
      v45 = v60;
      if ((*(v60 + 48))(v29, 1, v30) == 1)
      {
        (*(v65 + 8))(v38, v35);
        sub_10000B9A8(v71, v75);
        sub_10001FAE8(v29, &qword_1000359F0, &qword_1000253D0);
      }

      else
      {
        (*(v45 + 32))(v34, v29, v30);
        ASCTAPLargeBlobExtensionOutput.toASCRegistration()();
        dispatch thunk of ASCPublicKeyCredentialRegistrationExtensionOutputs.largeBlob.setter();
        sub_10000B9A8(v71, v75);
        (*(v45 + 8))(v34, v30);
        (*(v65 + 8))(v38, v35);
      }

      a1 = v62;
    }

    v46 = [v72 extensions];
    dispatch thunk of ASCPublicKeyCredentialRegistrationExtensionInputs.prf.getter();

    v48 = v73;
    v47 = v74;
    if ((*(v74 + 48))(v19, 1, v73) == 1)
    {
      sub_10001FAE8(v19, &qword_100035A18, &qword_1000253E8);
    }

    else
    {
      v49 = v68;
      (*(v47 + 32))(v68, v19, v48);
      if (ASCPublicKeyCredentialRegistrationExtensionInputs.PRF.shouldCheckForSupport.getter())
      {
        v62 = a1;
        v50 = v67;
        sub_10000E070(v69, v67);
        v51 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF();
        v52 = *(v51 - 8);
        v53 = *(v52 + 48);
        if (v53(v50, 1, v51) == 1)
        {
          v54 = type metadata accessor for SymmetricKey();
          v55 = *(*(v54 - 8) + 56);
          v55(v63, 1, 1, v54);
          v55(v64, 1, 1, v54);
          v47 = v74;
          v56 = v66;
          v57 = v67;
          v49 = v68;
          ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF.init(isSupported:secret1:secret2:)();
          if (v53(v57, 1, v51) != 1)
          {
            sub_10001FAE8(v57, &qword_100035A10, &qword_1000253E0);
          }
        }

        else
        {
          v56 = v66;
          (*(v52 + 32))(v66, v50, v51);
        }

        (*(v52 + 56))(v56, 0, 1, v51);
        v58 = v70;
        dispatch thunk of ASCPublicKeyCredentialRegistrationExtensionOutputs.prf.setter();
        (*(v47 + 8))(v49, v48);
        goto LABEL_19;
      }

      (*(v47 + 8))(v49, v48);
    }

    v58 = v70;
LABEL_19:
    [v69 setExtensions:v58];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10000D1D4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000D220@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000D1D4(&qword_100035C08, &qword_100025598);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v43 - v6;
  v8 = sub_10000D1D4(&qword_100035C10, &qword_1000255A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v43 - v10;
  v47 = sub_10000D1D4(&qword_100035C18, &qword_1000255A8);
  v12 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v14 = &v43 - v13;
  v15 = sub_10000D1D4(&qword_100035A08, &qword_1000253D8);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v46 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v45 = &v43 - v19;
  v20 = type metadata accessor for SymmetricKey();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v43 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v44 = &v43 - v25;
  v26 = [a1 credentialID];
  v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  ASCPublicKeyCredentialAssertionExtensionInputs.PRF.inputValues.getter();
  v30 = ASCPublicKeyCredentialAssertionExtensionInputs.PRF.perCredentialInputValues.getter();
  sub_10001182C(v27, v29, v7, v30, v11);

  sub_10000B954(v27, v29);
  sub_10001FAE8(v7, &qword_100035C08, &qword_100025598);
  v31 = sub_10000D1D4(&qword_100035C20, &qword_1000255B0);
  if ((*(*(v31 - 8) + 48))(v11, 1, v31) == 1)
  {
    sub_10001FAE8(v11, &qword_100035C10, &qword_1000255A0);
    v32 = 1;
  }

  else
  {
    v33 = *(v31 + 48);
    v34 = v47;
    v35 = *(v47 + 48);
    v36 = a2;
    v37 = *(v21 + 32);
    v37(v14, v11, v20);
    sub_10001F8D4(&v11[v33], &v14[v35], &qword_100035A08, &qword_1000253D8);
    v38 = *(v34 + 48);
    v39 = v44;
    v37(v44, v14, v20);
    a2 = v36;
    v40 = v45;
    sub_10001F8D4(&v14[v38], v45, &qword_100035A08, &qword_1000253D8);
    (*(v21 + 16))(v43, v39, v20);
    sub_10001F93C(v40, v46, &qword_100035A08, &qword_1000253D8);
    ASCPublicKeyCredentialAssertionExtensionOutputs.PRF.init(secret1:secret2:)();
    sub_10001FAE8(v40, &qword_100035A08, &qword_1000253D8);
    (*(v21 + 8))(v39, v20);
    v32 = 0;
  }

  v41 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionOutputs.PRF();
  return (*(*(v41 - 8) + 56))(a2, v32, 1, v41);
}

uint64_t sub_10000E070@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_10000D1D4(&qword_100035C08, &qword_100025598);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v43 - v5;
  v7 = sub_10000D1D4(&qword_100035C10, &qword_1000255A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v43 - v9;
  v43 = sub_10000D1D4(&qword_100035C18, &qword_1000255A8);
  v11 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v13 = &v43 - v12;
  v14 = sub_10000D1D4(&qword_100035A08, &qword_1000253D8);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v46 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v45 = &v43 - v19;
  __chkstk_darwin(v18);
  v44 = &v43 - v20;
  v21 = type metadata accessor for SymmetricKey();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [a1 credentialID];
  v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  ASCPublicKeyCredentialRegistrationExtensionInputs.PRF.inputValues.getter();
  v30 = ASCPublicKeyCredentialRegistrationExtensionInputs.PRF.perCredentialInputValues.getter();
  sub_10001182C(v27, v29, v6, v30, v10);

  sub_10000B954(v27, v29);
  sub_10001FAE8(v6, &qword_100035C08, &qword_100025598);
  v31 = sub_10000D1D4(&qword_100035C20, &qword_1000255B0);
  if ((*(*(v31 - 8) + 48))(v10, 1, v31) == 1)
  {
    sub_10001FAE8(v10, &qword_100035C10, &qword_1000255A0);
    v32 = 1;
    v33 = v47;
  }

  else
  {
    v34 = *(v31 + 48);
    v35 = v43;
    v36 = *(v43 + 48);
    v37 = *(v22 + 32);
    v37(v13, v10, v21);
    sub_10001F8D4(&v10[v34], &v13[v36], &qword_100035A08, &qword_1000253D8);
    v38 = *(v35 + 48);
    v37(v25, v13, v21);
    v39 = v44;
    sub_10001F8D4(&v13[v38], v44, &qword_100035A08, &qword_1000253D8);
    v40 = v45;
    (*(v22 + 16))(v45, v25, v21);
    (*(v22 + 56))(v40, 0, 1, v21);
    sub_10001F93C(v39, v46, &qword_100035A08, &qword_1000253D8);
    v33 = v47;
    ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF.init(isSupported:secret1:secret2:)();
    sub_10001FAE8(v39, &qword_100035A08, &qword_1000253D8);
    (*(v22 + 8))(v25, v21);
    v32 = 0;
  }

  v41 = type metadata accessor for ASCPublicKeyCredentialRegistrationExtensionOutputs.PRF();
  return (*(*(v41 - 8) + 56))(v33, v32, 1, v41);
}

void sub_10000E544(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void (*a6)(uint64_t, void *, uint64_t, unint64_t))
{
  if (a5)
  {
    swift_unknownObjectRetain();
    v10 = a4;
    v11 = a1;
    v12 = a5;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    swift_unknownObjectRetain();
    v16 = a4;
    v17 = a1;
    v13 = 0;
    v15 = 0xF000000000000000;
  }

  a6(a3, a4, v13, v15);
  sub_10000B9A8(v13, v15);
  swift_unknownObjectRelease();
}

uint64_t sub_10000E630(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = Data._Representation.subscript.getter();
  v4 = 0;
  return v3 | (v4 << 8);
}

Class sub_10000E6E8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, unint64_t, id))
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = a5(v11, v13, v9);
  v16 = v15;
  sub_10000B954(v11, v13);

  v17.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10000B954(v14, v16);

  return v17.super.isa;
}

uint64_t sub_10000E96C(int a1, void *a2, void *a3, void *a4, void *a5, void *aBlock, void *a7)
{
  v7[3] = a4;
  v7[4] = a7;
  v7[2] = a3;
  v7[5] = _Block_copy(aBlock);
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v7[6] = v18;
  v7[7] = v20;
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v7[8] = v21;
  v7[9] = v23;
  v24 = swift_task_alloc();
  v7[10] = v24;
  *v24 = v7;
  v24[1] = sub_10000EAA4;

  return sub_10001A0B8(v14, v21, v23);
}

uint64_t sub_10000EAA4(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = v5[7];
  v12 = v5[6];
  v13 = v5[5];
  sub_10000B954(v5[8], v5[9]);
  sub_10000B954(v12, v11);
  if (v3)
  {
    v14 = _convertErrorToNSError(_:)();

    (v13)[2](v13, 0, v14);

    _Block_release(v13);
  }

  else
  {
    v13[2](v13, a1, 0);
    _Block_release(v13);
    swift_unknownObjectRelease();
  }

  v15 = *(v10 + 8);

  return v15();
}

uint64_t sub_10000ECE0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = a3 + 56;
  v9 = -1 << *(a3 + 32);
  v10 = v7 & ~v9;
  if (((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  v12 = a2 >> 62;
  if (a1)
  {
    v13 = 0;
  }

  else
  {
    v13 = a2 == 0xC000000000000000;
  }

  v14 = !v13;
  v79 = v14;
  v15 = __OFSUB__(HIDWORD(a1), a1);
  v77 = v15;
  v75 = (a1 >> 32) - a1;
  v76 = a1 >> 32;
  v78 = v11;
  while (1)
  {
    v16 = (*(a3 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || a2 >> 62 != 3;
      if (((v22 | v79) & 1) == 0)
      {
        return 1;
      }

LABEL_37:
      v23 = 0;
      if (v12 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_37;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_147;
      }

      if (v12 <= 1)
      {
        goto LABEL_34;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_146;
      }

      v23 = v23;
      if (v12 <= 1)
      {
LABEL_34:
        v27 = BYTE6(a2);
        if (v12)
        {
          v27 = HIDWORD(a1) - a1;
          if (v77)
          {
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v12 <= 1)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    if (v12 != 2)
    {
      if (!v23)
      {
        return 1;
      }

      goto LABEL_14;
    }

    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_145;
    }

LABEL_40:
    if (v23 != v27)
    {
      goto LABEL_14;
    }

    if (v23 < 1)
    {
      return 1;
    }

    if (v19 > 1)
    {
      break;
    }

    if (!v19)
    {
      *__s1 = v18;
      *&__s1[8] = v17;
      __s1[10] = BYTE2(v17);
      __s1[11] = BYTE3(v17);
      __s1[12] = BYTE4(v17);
      __s1[13] = BYTE5(v17);
      if (!v12)
      {
        goto LABEL_93;
      }

      if (v12 != 1)
      {
        v50 = *(a1 + 16);
        v72 = *(a1 + 24);
        sub_10000B9BC(v18, v17);
        v45 = __DataStorage._bytes.getter();
        if (v45)
        {
          v51 = __DataStorage._offset.getter();
          if (__OFSUB__(v50, v51))
          {
            goto LABEL_162;
          }

          v45 += v50 - v51;
        }

        v26 = __OFSUB__(v72, v50);
        v47 = v72 - v50;
        if (v26)
        {
          goto LABEL_154;
        }

        v48 = __DataStorage._length.getter();
        if (!v45)
        {
          goto LABEL_169;
        }

LABEL_100:
        if (v48 >= v47)
        {
          v43 = v47;
        }

        else
        {
          v43 = v48;
        }

        result = __s1;
        v52 = v45;
        goto LABEL_136;
      }

      if (v76 < a1)
      {
        goto LABEL_151;
      }

      sub_10000B9BC(v18, v17);
      v30 = __DataStorage._bytes.getter();
      if (!v30)
      {
        goto LABEL_172;
      }

      v31 = v30;
      v32 = __DataStorage._offset.getter();
      if (__OFSUB__(a1, v32))
      {
        goto LABEL_157;
      }

      v33 = (a1 - v32 + v31);
      result = __DataStorage._length.getter();
      if (!v33)
      {
        goto LABEL_173;
      }

LABEL_108:
      if (result >= v75)
      {
        v56 = (a1 >> 32) - a1;
      }

      else
      {
        v56 = result;
      }

      v57 = __s1;
      v58 = v33;
      goto LABEL_139;
    }

    if (v18 > v18 >> 32)
    {
      goto LABEL_148;
    }

    sub_10000B9BC(v18, v17);
    v36 = __DataStorage._bytes.getter();
    if (v36)
    {
      v41 = __DataStorage._offset.getter();
      if (__OFSUB__(v18, v41))
      {
        goto LABEL_150;
      }

      v36 += v18 - v41;
    }

    __DataStorage._length.getter();
    v8 = a3 + 56;
    if (v12 == 2)
    {
      v70 = v36;
      v64 = *(a1 + 16);
      v74 = *(a1 + 24);
      v38 = __DataStorage._bytes.getter();
      if (v38)
      {
        v65 = __DataStorage._offset.getter();
        if (__OFSUB__(v64, v65))
        {
          goto LABEL_165;
        }

        v38 += v64 - v65;
      }

      v26 = __OFSUB__(v74, v64);
      v66 = v74 - v64;
      if (v26)
      {
        goto LABEL_160;
      }

      v67 = __DataStorage._length.getter();
      if (v67 >= v66)
      {
        v63 = v66;
      }

      else
      {
        v63 = v67;
      }

      result = v70;
      if (!v70)
      {
        goto LABEL_180;
      }

      if (!v38)
      {
        goto LABEL_179;
      }

LABEL_133:
      if (result == v38)
      {
LABEL_143:
        sub_10000B954(v18, v17);
        return 1;
      }

      v43 = v63;
      goto LABEL_135;
    }

    if (v12 == 1)
    {
      if (v76 < a1)
      {
        goto LABEL_159;
      }

      v38 = __DataStorage._bytes.getter();
      if (v38)
      {
        v42 = __DataStorage._offset.getter();
        if (__OFSUB__(a1, v42))
        {
          goto LABEL_166;
        }

        v38 += a1 - v42;
      }

      result = __DataStorage._length.getter();
      v40 = (a1 >> 32) - a1;
      if (result < v75)
      {
        v40 = result;
      }

      if (!v36)
      {
        goto LABEL_182;
      }

      if (!v38)
      {
        goto LABEL_181;
      }

LABEL_83:
      if (v36 == v38)
      {
        goto LABEL_143;
      }

      v43 = v40;
      result = v36;
LABEL_135:
      v52 = v38;
LABEL_136:
      v68 = memcmp(result, v52, v43);
      sub_10000B954(v18, v17);
      v8 = a3 + 56;
      goto LABEL_140;
    }

    *__s1 = a1;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v36)
    {
      goto LABEL_171;
    }

LABEL_138:
    v58 = __s1;
    v57 = v36;
    v56 = BYTE6(a2);
LABEL_139:
    v68 = memcmp(v57, v58, v56);
    sub_10000B954(v18, v17);
LABEL_140:
    v11 = v78;
    if (!v68)
    {
      return 1;
    }

LABEL_14:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  if (v19 == 2)
  {
    v35 = *(v18 + 16);
    sub_10000B9BC(v18, v17);
    v36 = __DataStorage._bytes.getter();
    if (v36)
    {
      v37 = __DataStorage._offset.getter();
      if (__OFSUB__(v35, v37))
      {
        goto LABEL_149;
      }

      v36 += v35 - v37;
    }

    result = __DataStorage._length.getter();
    v8 = a3 + 56;
    if (v12 == 2)
    {
      v69 = v36;
      v59 = *(a1 + 16);
      v73 = *(a1 + 24);
      v38 = __DataStorage._bytes.getter();
      if (v38)
      {
        v60 = __DataStorage._offset.getter();
        if (__OFSUB__(v59, v60))
        {
          goto LABEL_163;
        }

        v38 += v59 - v60;
      }

      v26 = __OFSUB__(v73, v59);
      v61 = v73 - v59;
      if (v26)
      {
        goto LABEL_158;
      }

      v62 = __DataStorage._length.getter();
      if (v62 >= v61)
      {
        v63 = v61;
      }

      else
      {
        v63 = v62;
      }

      result = v69;
      if (!v69)
      {
        goto LABEL_178;
      }

      if (!v38)
      {
        goto LABEL_177;
      }

      goto LABEL_133;
    }

    if (v12 == 1)
    {
      if (v76 < a1)
      {
        goto LABEL_153;
      }

      v38 = __DataStorage._bytes.getter();
      if (v38)
      {
        v39 = __DataStorage._offset.getter();
        if (__OFSUB__(a1, v39))
        {
          goto LABEL_164;
        }

        v38 += a1 - v39;
      }

      result = __DataStorage._length.getter();
      v40 = (a1 >> 32) - a1;
      if (result < v75)
      {
        v40 = result;
      }

      if (!v36)
      {
        goto LABEL_176;
      }

      if (!v38)
      {
        goto LABEL_175;
      }

      goto LABEL_83;
    }

    *__s1 = a1;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v36)
    {
      goto LABEL_174;
    }

    goto LABEL_138;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v12)
  {
LABEL_93:
    __s2 = a1;
    v81 = a2;
    v82 = BYTE2(a2);
    v83 = BYTE3(a2);
    v84 = BYTE4(a2);
    v85 = BYTE5(a2);
    v49 = memcmp(__s1, &__s2, BYTE6(a2));
    v11 = v78;
    if (!v49)
    {
      return 1;
    }

    goto LABEL_14;
  }

  if (v12 == 2)
  {
    v44 = *(a1 + 16);
    v71 = *(a1 + 24);
    sub_10000B9BC(v18, v17);
    v45 = __DataStorage._bytes.getter();
    if (v45)
    {
      v46 = __DataStorage._offset.getter();
      if (__OFSUB__(v44, v46))
      {
        goto LABEL_161;
      }

      v45 += v44 - v46;
    }

    v26 = __OFSUB__(v71, v44);
    v47 = v71 - v44;
    if (v26)
    {
      goto LABEL_155;
    }

    v48 = __DataStorage._length.getter();
    if (!v45)
    {
      goto LABEL_170;
    }

    goto LABEL_100;
  }

  if (v76 < a1)
  {
    goto LABEL_152;
  }

  sub_10000B9BC(v18, v17);
  v53 = __DataStorage._bytes.getter();
  if (v53)
  {
    v54 = v53;
    v55 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v55))
    {
      goto LABEL_156;
    }

    v33 = (a1 - v55 + v54);
    result = __DataStorage._length.getter();
    if (!v33)
    {
      goto LABEL_168;
    }

    goto LABEL_108;
  }

  __DataStorage._length.getter();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  result = __DataStorage._length.getter();
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
  return result;
}

uint64_t sub_10000F5A8(uint64_t a1, void *a2)
{
  v3 = sub_10001F664((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_10000F60C(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = sub_10000D1D4(&qword_100035B90, &qword_100025528);
  v4 = *(*(v28 - 8) + 64);
  v5 = __chkstk_darwin(v28);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = type metadata accessor for ASCTAPAuthData.Flags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = *(v10 + 16);
  v27 = v2;
  v17(v14, v2, v9);
  v25 = sub_100018E68(&qword_100035B50, &type metadata accessor for ASCTAPAuthData.Flags);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v18 = v28;
  sub_100018E68(&qword_100035B98, &type metadata accessor for ASCTAPAuthData.Flags);
  v26 = a2;
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v18 + 48);
  *v8 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v10 + 32))(&v8[v20], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v21 = v26;
    v17(&v8[v20], v26, v9);
    v17(v14, v21, v9);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v22 = v29;
  sub_10001F8D4(v8, v29, &qword_100035B90, &qword_100025528);
  v23 = *v22;
  (*(v10 + 32))(v30, &v22[*(v18 + 48)], v9);
  return v23;
}

uint64_t sub_10000FAB8(int a1, void *a2, void *a3, void *a4, void *aBlock, void *a6)
{
  v6[3] = a4;
  v6[4] = a6;
  v6[2] = a3;
  v6[5] = _Block_copy(aBlock);
  v11 = a2;
  v12 = a3;
  v13 = a4;
  a6;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v6[6] = v14;
  v6[7] = v16;
  v17 = swift_task_alloc();
  v6[8] = v17;
  *v17 = v6;
  v17[1] = sub_10000FBD8;

  return sub_10001B5D4(v14, v16, v12, v13);
}

uint64_t sub_10000FBD8(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 64);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = v5[5];
  sub_10000B954(v5[6], v5[7]);
  if (v3)
  {
    v12 = _convertErrorToNSError(_:)();

    (v11)[2](v11, 0, v12);

    _Block_release(v11);
  }

  else
  {
    v11[2](v11, a1, 0);
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_10000FF68(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_100010050;

  return sub_10001DB9C(v5, v7);
}

uint64_t sub_100010050()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v8 = *v0;

  sub_10001F88C(0, &qword_100035A78, WBSWebBrowserPasskey_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  (v3)[2](v3, isa);

  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

Swift::Bool __swiftcall PublicKeyCredentialManager.passkeyExists(relyingParty:username:)(Swift::String relyingParty, Swift::String username)
{
  object = username._object;
  countAndFlagsBits = username._countAndFlagsBits;
  v2 = relyingParty._object;
  v3 = relyingParty._countAndFlagsBits;
  v40 = type metadata accessor for WBSKeychainPasskey.Metadata.StringKeys();
  v4 = *(v40 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v40);
  v39 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for WBSKeychainPasskey.Metadata();
  v7 = *(v38 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v38);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WBSKeychainPasskey();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000105AC(v3, v2);
  v37 = v16[2];
  if (v37)
  {
    v17 = 0;
    v35 = v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v32 = enum case for WBSKeychainPasskey.Metadata.StringKeys.name(_:);
    v30 = (v4 + 8);
    v31 = (v4 + 104);
    v18 = (v7 + 8);
    v33 = v12 + 16;
    v34 = (v12 + 8);
    v36 = v16;
    v19 = v39;
    while (v17 < v16[2])
    {
      v20 = v12;
      (*(v12 + 16))(v15, &v35[*(v12 + 72) * v17], v11);
      WBSKeychainPasskey.metadata.getter();
      v21 = v11;
      v22 = v40;
      (*v31)(v19, v32, v40);
      v23 = WBSKeychainPasskey.Metadata.subscript.getter();
      v25 = v24;
      (*v30)(v19, v22);
      (*v18)(v10, v38);
      if (v25)
      {
        if (v23 == countAndFlagsBits && v25 == object)
        {

          (*v34)(v15, v21);
LABEL_13:

          LOBYTE(v16) = 1;
          return v16;
        }

        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v11 = v21;
        (*v34)(v15, v21);
        if (v26)
        {
          goto LABEL_13;
        }
      }

      else
      {
        (*v34)(v15, v21);
        v11 = v21;
      }

      ++v17;
      v16 = v36;
      v12 = v20;
      if (v37 == v17)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    LOBYTE(v16) = 0;
  }

  return v16;
}

void *sub_1000105AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000D1D4(&qword_100035BE8, &qword_100025580);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v59 = &v53 - v6;
  v56 = type metadata accessor for WBSKeychainPasskey();
  v58 = *(v56 - 8);
  v7 = *(v58 + 64);
  __chkstk_darwin(v56);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D1D4(&qword_100035BF0, &qword_100025588);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100025340;
  type metadata accessor for CFString(0);
  v11 = v10;
  *(v9 + 32) = kSecClass;
  *(v9 + 56) = v10;
  *(v9 + 64) = kSecClassKey;
  *(v9 + 120) = v10;
  *(v9 + 88) = v10;
  *(v9 + 96) = kSecAttrSynchronizable;
  *(v9 + 128) = 1;
  *(v9 + 152) = &type metadata for Bool;
  *(v9 + 160) = kSecAttrLabel;
  *(v9 + 184) = v10;
  *(v9 + 192) = a1;
  *(v9 + 200) = a2;
  *(v9 + 248) = v10;
  *(v9 + 216) = &type metadata for String;
  *(v9 + 224) = kSecUseDataProtectionKeychain;
  *(v9 + 256) = 1;
  *(v9 + 312) = v10;
  *(v9 + 280) = &type metadata for Bool;
  *(v9 + 288) = kSecReturnAttributes;
  *(v9 + 320) = 1;
  *(v9 + 376) = v10;
  *(v9 + 344) = &type metadata for Bool;
  *(v9 + 352) = kSecAttrAccessGroup;
  v12 = kSecClass;
  v13 = kSecClassKey;
  v14 = kSecAttrSynchronizable;
  v15 = kSecAttrLabel;

  v16 = kSecUseDataProtectionKeychain;
  v17 = kSecReturnAttributes;
  v18 = kSecAttrAccessGroup;
  v19 = [v60 isForTesting];
  v20 = 0xD000000000000019;
  if (v19)
  {
    v20 = 0xD000000000000021;
    v21 = "com.apple.webkit.webauthn";
  }

  else
  {
    v21 = "Should not be reached";
  }

  *(v9 + 384) = v20;
  *(v9 + 392) = v21 | 0x8000000000000000;
  *(v9 + 408) = &type metadata for String;
  *(v9 + 416) = kSecMatchLimit;
  *(v9 + 472) = v11;
  *(v9 + 440) = v11;
  *(v9 + 448) = kSecMatchLimitAll;
  sub_10001F88C(0, &qword_100035BF8, NSMutableDictionary_ptr);
  v22 = kSecMatchLimit;
  v23 = kSecMatchLimitAll;
  v24 = NSDictionary.init(dictionaryLiteral:)();
  result = 0;
  v25 = SecItemCopyMatching(v24, &result);
  if (v25)
  {
    LODWORD(v26) = v25;
    if (qword_1000357F0 != -1)
    {
      goto LABEL_44;
    }

    goto LABEL_6;
  }

  v31 = v59;
  if (!result || (v62 = result, swift_unknownObjectRetain(), sub_10000D1D4(&qword_100035C00, &qword_100025590), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1000357F0 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000BC18(v46, qword_100036040);
    v28 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v28, v47))
    {
      goto LABEL_40;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138477827;
    swift_beginAccess();
    if (result)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v50 = swift_dynamicCastObjCClass();
      if (v50)
      {
        v51 = v50;
LABEL_38:
        *(v48 + 4) = v50;
        *v49 = v51;
        _os_log_impl(&_mh_execute_header, v28, v47, "Unexpected keychain response: %{private}@", v48, 0xCu);
        sub_10001FAE8(v49, &qword_100035A40, "zT");

LABEL_39:

LABEL_40:

        swift_unknownObjectRelease();
        return &_swiftEmptyArrayStorage;
      }

      swift_unknownObjectRelease();
    }

    v50 = 0;
    v51 = 0;
    goto LABEL_38;
  }

  v32 = v61;
  if (v61 >> 62)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v33 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v56;
  v35 = v57;
  v54 = v24;
  if (v33)
  {
    v36 = 0;
    v37 = v32 & 0xC000000000000001;
    v38 = (v58 + 48);
    v59 = (v58 + 32);
    v60 = (v32 & 0xFFFFFFFFFFFFFF8);
    v26 = &_swiftEmptyArrayStorage;
    v55 = v32 & 0xC000000000000001;
    while (1)
    {
      if (v37)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v24 = (v36 + 1);
        if (__OFADD__(v36, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v36 >= *(v60 + 2))
        {
          goto LABEL_43;
        }

        v39 = *(v32 + 8 * v36 + 32);
        v24 = (v36 + 1);
        if (__OFADD__(v36, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          swift_once();
LABEL_6:
          v27 = type metadata accessor for Logger();
          sub_10000BC18(v27, qword_100036040);
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            *v30 = 67240192;
            *(v30 + 4) = v26;
            _os_log_impl(&_mh_execute_header, v28, v29, "Could not fetch passkey: %{public}d", v30, 8u);
            goto LABEL_39;
          }

          goto LABEL_40;
        }
      }

      WBSKeychainPasskey.init(keychainDictionary:)();
      if ((*v38)(v31, 1, v34) == 1)
      {
        sub_10001FAE8(v31, &qword_100035BE8, &qword_100025580);
      }

      else
      {
        v40 = v33;
        v41 = v32;
        v42 = *v59;
        (*v59)(v35, v31, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_100013D84(0, v26[2] + 1, 1, v26);
        }

        v44 = v26[2];
        v43 = v26[3];
        if (v44 >= v43 >> 1)
        {
          v26 = sub_100013D84(v43 > 1, v44 + 1, 1, v26);
        }

        v26[2] = v44 + 1;
        v35 = v57;
        v45 = v26 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v44;
        v34 = v56;
        v42(v45, v57, v56);
        v32 = v41;
        v33 = v40;
        v37 = v55;
      }

      ++v36;
      if (v24 == v33)
      {
        goto LABEL_35;
      }
    }
  }

  v26 = &_swiftEmptyArrayStorage;
LABEL_35:

  swift_unknownObjectRelease();
  return v26;
}

uint64_t sub_100010EA8(unint64_t a1)
{
  v3 = sub_10000D1D4(&qword_1000359C8, &qword_1000253A8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v51 - v5;
  v7 = sub_10000D1D4(&qword_100035A58, &qword_100025440);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for ASCTAPUserVerificationRequirement();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v67 = &v51 - v17;
  v54 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v19 = &_swiftEmptyArrayStorage;
  if (v18)
  {
    v53 = v10;
    v68 = &_swiftEmptyArrayStorage;
    v10 = (v18 & ~(v18 >> 63));
    v20 = v1;
    v1 = &v68;
    result = sub_100016A88(0, v10, 0);
    if ((v18 & 0x8000000000000000) == 0)
    {
      v52 = v20;
      v22 = a1;
      a1 = 0;
      v19 = v68;
      v65 = v22 & 0xC000000000000001;
      v66 = v22;
      v60 = v22 & 0xFFFFFFFFFFFFFF8;
      v61 = enum case for ASCTAPUserVerificationRequirement.required(_:);
      v64 = (v12 + 104);
      v57 = ASAuthorizationPublicKeyCredentialUserVerificationPreferenceRequired;
      v55 = ASAuthorizationPublicKeyCredentialUserVerificationPreferenceDiscouraged;
      v56 = enum case for ASCTAPUserVerificationRequirement.preferred(_:);
      v62 = v12 + 32;
      v63 = v18;
      v58 = v16;
      v59 = v11;
      while (1)
      {
        if (v65)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((a1 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            v18 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_3;
          }

          if (a1 >= *(v60 + 16))
          {
            goto LABEL_46;
          }

          v23 = *(v66 + 8 * a1 + 32);
        }

        v24 = v23;
        v1 = [v23 extensions];
        dispatch thunk of ASCPublicKeyCredentialAssertionExtensionInputs.prf.getter();

        v25 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs.PRF();
        v26 = (*(*(v25 - 8) + 48))(v6, 1, v25);
        sub_10001FAE8(v6, &qword_1000359C8, &qword_1000253A8);
        if (v26 != 1)
        {
          break;
        }

        v27 = [v24 userVerificationPreference];
        if (v27)
        {
          v1 = v27;
          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;
          if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
          {

LABEL_24:
            v32 = *v64;
LABEL_25:
            v16 = v58;
            v11 = v59;
LABEL_26:
            v33 = v16;
            v34 = v61;
            goto LABEL_27;
          }

          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v36 = v1;

          if (v35)
          {

            goto LABEL_24;
          }

          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;
          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v1 = v41;
          if (v37 == v40 && v39 == v41)
          {

            goto LABEL_24;
          }

          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v32 = *v64;
          if (v44)
          {
            goto LABEL_25;
          }

          v16 = v58;
          v11 = v59;
        }

        else
        {
          v32 = *v64;
        }

        v33 = v16;
        v34 = v56;
LABEL_27:
        v32(v33, v34, v11);

        v68 = v19;
        v43 = v19[2];
        v42 = v19[3];
        v10 = (v43 + 1);
        if (v43 >= v42 >> 1)
        {
          v1 = &v68;
          sub_100016A88(v42 > 1, v43 + 1, 1);
          v19 = v68;
        }

        ++a1;
        v19[2] = v10;
        (*(v12 + 32))(v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v43, v16, v11);
        if (v63 == a1)
        {

          a1 = v66;
          v10 = v53;
          goto LABEL_33;
        }
      }

      v32 = *v64;
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_49;
  }

LABEL_33:
  sub_100011508(v19, v10);

  result = (*(v12 + 48))(v10, 1, v11);
  if (result != 1)
  {
    result = (*(v12 + 32))(v67, v10, v11);
    if (v54)
    {
      v45 = v11;
      result = _CocoaArrayWrapper.endIndex.getter();
      v46 = result;
      if (!result)
      {
        return (*(v12 + 8))(v67, v45);
      }
    }

    else
    {
      v45 = v11;
      v46 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v46)
      {
        return (*(v12 + 8))(v67, v45);
      }
    }

    if (v46 < 1)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v47 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v48 = *(a1 + 8 * v47 + 32);
      }

      v49 = v48;
      ++v47;
      ASCTAPUserVerificationRequirement.rawValue.getter();
      v50 = String._bridgeToObjectiveC()();

      [v49 setUserVerificationPreference:v50];
    }

    while (v46 != v47);
    return (*(v12 + 8))(v67, v45);
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_100011508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ASCTAPUserVerificationRequirement();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        sub_100018E68(&qword_100035A60, &type metadata accessor for ASCTAPUserVerificationRequirement);
        v21 = dispatch thunk of static Comparable.< infix(_:_:)();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_10001182C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v148 = a5;
  v138 = a3;
  v139 = a4;
  v152 = a2;
  v6 = (*(*(sub_10000D1D4(&qword_100035A08, &qword_1000253D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v130 = &v118 - v7;
  v129 = sub_10000D1D4(&qword_100035C28, &qword_1000255B8);
  v8 = (*(*(v129 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v128 = &v118 - v9;
  v10 = (*(*(sub_10000D1D4(&qword_100035C08, &qword_100025598) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v137 = &v118 - v11;
  v12 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues();
  v13 = *(v12 - 8);
  v143 = v12;
  v144 = v13;
  v14 = *(v13 + 64);
  (__chkstk_darwin)();
  v146 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for SymmetricKeySize();
  v135 = *(v136 - 8);
  v16 = *(v135 + 64);
  (__chkstk_darwin)();
  v134 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SymmetricKey();
  v141 = *(v18 - 8);
  v142 = v18;
  v19 = *(v141 + 64);
  v20 = (__chkstk_darwin)();
  v140 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v127 = &v118 - v23;
  __chkstk_darwin(v22);
  v133 = &v118 - v24;
  v147 = type metadata accessor for WBSKeychainPasskey.Metadata();
  v150 = *(v147 - 8);
  v25 = *(v150 + 64);
  v26 = __chkstk_darwin(v147);
  v132 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v118 - v28;
  v151 = type metadata accessor for WBSKeychainPasskey.Metadata.DataKeys();
  v30 = *(v151 - 8);
  v31 = v30[8];
  v32 = __chkstk_darwin(v151);
  v131 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v36 = &v118 - v35;
  __chkstk_darwin(v34);
  v38 = &v118 - v37;
  v39 = sub_10000D1D4(&qword_100035BE8, &qword_100025580);
  v40 = (*(*(v39 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39 - 8);
  v42 = &v118 - v41;
  v43 = type metadata accessor for WBSKeychainPasskey();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  v47 = &v118 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = a1;
  sub_10001274C(0, v42);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    v48 = v148;
    sub_10001FAE8(v42, &qword_100035BE8, &qword_100025580);
    if (qword_1000357F0 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_10000BC18(v49, qword_100036040);
    v50 = v145;
    v51 = v152;
    sub_10000B9BC(v145, v152);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    sub_10000B954(v50, v51);
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v153 = v55;
      *v54 = 141558275;
      *(v54 + 4) = 1752392040;
      *(v54 + 12) = 2081;
      v56 = Data.hexString()();
      v57 = sub_100014068(v56._countAndFlagsBits, v56._object, &v153);

      *(v54 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v52, v53, "Could not find passkey with credentialID %{private,mask.hash}s).", v54, 0x16u);
      sub_10001F5C4(v55);
    }

    v58 = sub_10000D1D4(&qword_100035C20, &qword_1000255B0);
    v59 = *(*(v58 - 8) + 56);
    v60 = v48;
    goto LABEL_23;
  }

  v124 = v36;
  v126 = v44;
  v61 = *(v44 + 32);
  v149 = v43;
  v61(v47, v42, v43);
  v62 = enum case for WBSKeychainPasskey.Metadata.DataKeys.prfCredRandomWithUV(_:);
  v63 = v30[13];
  v64 = v151;
  v63(v38, enum case for WBSKeychainPasskey.Metadata.DataKeys.prfCredRandomWithUV(_:), v151);
  WBSKeychainPasskey.metadata.getter();
  v123 = WBSKeychainPasskey.Metadata.subscript.getter();
  v66 = v65;
  v67 = v150 + 8;
  v68 = v29;
  v69 = v147;
  v120 = *(v150 + 8);
  v120(v68, v147);
  v70 = v30[1];
  v122 = v30 + 1;
  v119 = v70;
  v70(v38, v64);
  v121 = v62;
  v125 = v63;
  if (v66 >> 60 == 15)
  {
    v150 = v67;
    v63(v124, v62, v151);
    if (qword_1000357F8 != -1)
    {
      swift_once();
    }

    v71 = v136;
    v72 = sub_10000BC18(v136, qword_100036058);
    (*(v135 + 16))(v134, v72, v71);
    v73 = v133;
    SymmetricKey.init(size:)();
    SymmetricKey.rawData.getter();
    (*(v141 + 8))(v73, v142);
    v74 = WBSKeychainPasskey.metadata.modify();
    WBSKeychainPasskey.Metadata.subscript.setter();
    v74(&v153, 0);
    v75 = sub_1000190CC();
    v76 = v147;
    if ((v75 & 1) == 0)
    {
      if (qword_1000357F0 != -1)
      {
        swift_once();
      }

      v77 = type metadata accessor for Logger();
      sub_10000BC18(v77, qword_100036040);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();
      v80 = os_log_type_enabled(v78, v79);
      v81 = v148;
      v82 = v126;
      if (v80)
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&_mh_execute_header, v78, v79, "Could not save PRF seeds to keychain.", v83, 2u);
      }

      (*(v82 + 8))(v47, v149);
      v58 = sub_10000D1D4(&qword_100035C20, &qword_1000255B0);
      v59 = *(*(v58 - 8) + 56);
      v60 = v81;
      goto LABEL_23;
    }
  }

  else
  {
    v84 = v66;
    v76 = v69;
    sub_10000B9A8(v123, v84);
  }

  v85 = v76;
  v86 = v139;
  if (v139 && *(v139 + 16) && (v87 = sub_1000146C4(v145, v152, &Data.hash(into:), sub_100015404), (v88 & 1) != 0))
  {
    v89 = v143;
    (*(v144 + 16))(v146, *(v86 + 56) + *(v144 + 72) * v87, v143);
    v90 = v151;
    v91 = v125;
  }

  else
  {
    v92 = v137;
    sub_10001F93C(v138, v137, &qword_100035C08, &qword_100025598);
    v89 = v143;
    v93 = v144;
    v94 = (*(v144 + 48))(v92, 1, v143);
    v90 = v151;
    v91 = v125;
    if (v94 == 1)
    {
      (*(v126 + 8))(v47, v149);
      sub_10001FAE8(v92, &qword_100035C08, &qword_100025598);
      v58 = sub_10000D1D4(&qword_100035C20, &qword_1000255B0);
      v59 = *(*(v58 - 8) + 56);
      v60 = v148;
LABEL_23:
      v95 = 1;
      return v59(v60, v95, 1, v58);
    }

    (*(v93 + 32))(v146, v92, v89);
  }

  v96 = v131;
  v91(v131, v121, v90);
  v97 = v132;
  v152 = v47;
  v98 = v96;
  WBSKeychainPasskey.metadata.getter();
  v99 = WBSKeychainPasskey.Metadata.subscript.getter();
  v101 = v100;
  result = (v120)(v97, v85);
  if (v101 >> 60 != 15)
  {
    v119(v98, v90);
    v153 = v99;
    v154 = v101;
    v103 = v127;
    SymmetricKey.init<A>(data:)();
    v153 = ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.salt1.getter();
    v154 = v104;
    type metadata accessor for SHA256();
    sub_100018E68(&qword_100035B38, &type metadata accessor for SHA256);
    sub_10001F9A4();
    static HMAC.authenticationCode<A>(for:using:)();
    sub_10000B954(v153, v154);
    sub_10001F9F8(&qword_100035C38, &qword_100035C28, &qword_1000255B8);
    SymmetricKey.init<A>(data:)();
    v105 = ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.salt2.getter();
    v107 = v148;
    if (v106 >> 60 == 15)
    {
      v108 = 1;
      v109 = v130;
    }

    else
    {
      v153 = v105;
      v154 = v106;
      v110 = v105;
      v111 = v106;
      static HMAC.authenticationCode<A>(for:using:)();
      v109 = v130;
      SymmetricKey.init<A>(data:)();
      v112 = v111;
      v89 = v143;
      sub_10000B9A8(v110, v112);
      v108 = 0;
    }

    v113 = v149;
    v115 = v141;
    v114 = v142;
    (*(v141 + 8))(v103, v142);
    (*(v144 + 8))(v146, v89);
    (*(v126 + 8))(v152, v113);
    (*(v115 + 56))(v109, v108, 1, v114);
    v116 = sub_10000D1D4(&qword_100035C20, &qword_1000255B0);
    v117 = *(v116 + 48);
    (*(v115 + 32))(v107, v140, v114);
    sub_10001F8D4(v109, v107 + v117, &qword_100035A08, &qword_1000253D8);
    v59 = *(*(v116 - 8) + 56);
    v60 = v107;
    v95 = 0;
    v58 = v116;
    return v59(v60, v95, 1, v58);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001274C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v3 = [objc_opt_self() isCredentialExchangeEnabled];
  sub_10000D1D4(&qword_100035BF0, &qword_100025588);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100025350;
  type metadata accessor for CFString(0);
  *(v4 + 32) = kSecClass;
  *(v4 + 56) = v5;
  *(v4 + 64) = kSecClassKey;
  *(v4 + 120) = v5;
  *(v4 + 88) = v5;
  *(v4 + 96) = kSecAttrSynchronizable;
  *(v4 + 128) = 1;
  *(v4 + 184) = v5;
  *(v4 + 152) = &type metadata for Bool;
  *(v4 + 160) = kSecUseDataProtectionKeychain;
  *(v4 + 192) = 1;
  *(v4 + 248) = v5;
  *(v4 + 216) = &type metadata for Bool;
  *(v4 + 224) = kSecReturnAttributes;
  *(v4 + 256) = 1;
  *(v4 + 312) = v5;
  *(v4 + 280) = &type metadata for Bool;
  *(v4 + 288) = kSecReturnPersistentRef;
  *(v4 + 320) = 1;
  *(v4 + 376) = v5;
  *(v4 + 344) = &type metadata for Bool;
  *(v4 + 352) = kSecAttrAccessGroup;
  v6 = kSecClass;
  v7 = kSecClassKey;
  v8 = kSecAttrSynchronizable;
  v9 = kSecUseDataProtectionKeychain;
  v10 = kSecReturnAttributes;
  v11 = kSecReturnPersistentRef;
  v12 = kSecAttrAccessGroup;
  v13 = [v2 isForTesting];
  v14 = 0xD000000000000019;
  if (v13)
  {
    v14 = 0xD000000000000021;
    v15 = "com.apple.webkit.webauthn";
  }

  else
  {
    v15 = "Should not be reached";
  }

  *(v4 + 408) = &type metadata for String;
  *(v4 + 384) = v14;
  *(v4 + 392) = v15 | 0x8000000000000000;
  sub_10001F88C(0, &qword_100035BF8, NSMutableDictionary_ptr);
  v16 = NSDictionary.init(dictionaryLiteral:)();
  if (v3)
  {
    v17 = kSecAttrAlias;
    if (kSecAttrAlias)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v17 = kSecAttrApplicationLabel;
LABEL_8:
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v16 __swift_setObject:isa forKeyedSubscript:v17];

  if (a1)
  {
    v19 = String._bridgeToObjectiveC()();
    [v16 __swift_setObject:v19 forKeyedSubscript:v12];
  }

  result = 0;
  v20 = v16;
  v21 = SecItemCopyMatching(v20, &result);
  v22 = v21;
  if (v21 == -25300)
  {
    v23 = v3;
  }

  else
  {
    v23 = 0;
  }

  if (v23 != 1)
  {
LABEL_16:

    if (v22)
    {
      if (qword_1000357F0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000BC18(v25, qword_100036040);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_35;
      }

      v28 = swift_slowAlloc();
      *v28 = 67240192;
      *(v28 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v26, v27, "Could not fetch passkey: %{public}d", v28, 8u);
      goto LABEL_34;
    }

    if (result)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        WBSKeychainPasskey.init(keychainDictionary:)();

        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    if (qword_1000357F0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000BC18(v29, qword_100036040);
    v26 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v26, v30))
    {
LABEL_35:

      v35 = type metadata accessor for WBSKeychainPasskey();
      (*(*(v35 - 8) + 56))(a2, 1, 1, v35);
      return swift_unknownObjectRelease();
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138477827;
    swift_beginAccess();
    if (result)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (v33)
      {
        v34 = v33;
LABEL_33:
        *(v31 + 4) = v33;
        *v32 = v34;
        _os_log_impl(&_mh_execute_header, v26, v30, "Unexpected keychain response: %{private}@", v31, 0xCu);
        sub_10001FAE8(v32, &qword_100035A40, "zT");

LABEL_34:

        goto LABEL_35;
      }

      swift_unknownObjectRelease();
    }

    v33 = 0;
    v34 = 0;
    goto LABEL_33;
  }

  if (kSecAttrAlias)
  {
    [(__CFDictionary *)v20 __swift_setObject:0 forKeyedSubscript:?];
    v24 = Data._bridgeToObjectiveC()().super.isa;
    [(__CFDictionary *)v20 __swift_setObject:v24 forKeyedSubscript:kSecAttrApplicationLabel];

    v22 = SecItemCopyMatching(v20, &result);
    goto LABEL_16;
  }

  __break(1u);
  return v21;
}

void sub_100012D1C(unint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a1;
    v7 = qword_1000357F0;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000BC18(v8, qword_100036040);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Received blob", v11, 2u);
    }

    v12 = sub_10000D1D4(&qword_100035CC8, &qword_100025648);
    v52 = v12;
LABEL_13:
    v51[0] = v6;
    v26 = objc_opt_self();
    sub_10001F664(v51, v12);
    v27 = _bridgeAnythingToObjectiveC<A>(_:)();
    v50[0] = 0;
    v28 = [v26 dataWithJSONObject:v27 options:0 error:v50];
    swift_unknownObjectRelease();
    v29 = v50[0];
    if (v28)
    {
      v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = Data.base64EncodedData(options:)();
      v35 = v34;
      sub_10000B954(v30, v32);
      sub_10001F5C4(v51);
      swift_beginAccess();
      v36 = *(a4 + 16);
      v37 = *(a4 + 24);
      *(a4 + 16) = v33;
      *(a4 + 24) = v35;
      sub_10000B9A8(v36, v37);
    }

    else
    {
      v38 = v29;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1000357F0 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_10000BC18(v39, qword_100036040);
      swift_errorRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v50[0] = v43;
        *v42 = 136315138;
        swift_getErrorValue();
        v44 = Error.loggerDescription()();
        v45 = sub_100014068(v44._countAndFlagsBits, v44._object, v50);

        *(v42 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v40, v41, "Unable to verify Apple ID passkey: %s", v42, 0xCu);
        sub_10001F5C4(v43);
      }

      else
      {
      }

      sub_10001F5C4(v51);
    }

    dispatch_group_leave(a3);
    return;
  }

  if (a2)
  {
    swift_errorRetain();
    if (qword_1000357F0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000BC18(v13, qword_100036040);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v50[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = Error.loggerDescription()();
      v19 = sub_100014068(v18._countAndFlagsBits, v18._object, v50);

      *(v16 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "Received error: %s", v16, 0xCu);
      sub_10001F5C4(v17);
    }

    sub_10000D1D4(&qword_100035C90, &qword_100025600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100025360;
    *(inited + 32) = 0xD000000000000017;
    *(inited + 40) = 0x8000000100025130;
    v21 = _convertErrorToNSError(_:)();
    v22 = [v21 description];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *(inited + 48) = v23;
    *(inited + 56) = v25;
    v6 = sub_100018250(inited);
    swift_setDeallocating();
    sub_10001FAE8(inited + 32, &qword_100035C98, qword_100025608);
    v12 = sub_10000D1D4(&qword_100035CC0, &qword_100025640);
    v52 = v12;

    goto LABEL_13;
  }

  if (qword_1000357F0 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_10000BC18(v46, qword_100036040);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Did not receive error", v49, 2u);
  }

  dispatch_group_leave(a3);
}

uint64_t sub_1000133D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_10000D1D4(&qword_100035CB0, &qword_100025630);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_100013484@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_100017CAC(v10, v9, a2, a3);
    if (v6 && v11 < v6)
    {
      if (v8 == 2)
      {
        v14 = *(a2 + 24);
      }
    }

    else
    {
      v12 = sub_100017D60(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v15 = Data._Representation.subscript.getter();
    v17 = v16;
    result = sub_10000B954(a2, a3);
    *a4 = v15;
    a4[1] = v17;
  }

  return result;
}

uint64_t sub_1000135D4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10001FCA8;

  return v7();
}

uint64_t sub_1000136BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000137A4;

  return v8();
}

uint64_t sub_1000137A4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100013898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000D1D4(&qword_100035A70, &qword_100025450);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10001F93C(a3, v25 - v11, &qword_100035A70, &qword_100025450);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10001FAE8(v12, &qword_100035A70, &qword_100025450);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_10001FAE8(a3, &qword_100035A70, &qword_100025450);

    return v23;
  }

LABEL_8:
  sub_10001FAE8(a3, &qword_100035A70, &qword_100025450);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100013B94(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100013C8C;

  return v7(a1);
}

uint64_t sub_100013C8C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t sub_100013D84(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000D1D4(&qword_100035A88, &qword_1000254A8);
  v10 = *(type metadata accessor for WBSKeychainPasskey() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for WBSKeychainPasskey() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100013F5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000D1D4(&qword_100035A48, &qword_100025438);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100014068(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100014134(v11, 0, 0, 1, a1, a2);
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
    sub_10001F4E8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10001F5C4(v11);
  return v7;
}

unint64_t sub_100014134(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100014240(a5, a6);
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

char *sub_100014240(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001428C(a1, a2);
  sub_1000143BC(&off_100031960);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10001428C(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000144A8(v5, 0);
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
        v7 = sub_1000144A8(v10, 0);
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

uint64_t sub_1000143BC(uint64_t result)
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

  result = sub_10001451C(result, v12, 1, v3);
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

void *sub_1000144A8(uint64_t a1, uint64_t a2)
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

  sub_10000D1D4(&qword_100035C88, &qword_1000255F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001451C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000D1D4(&qword_100035C88, &qword_1000255F8);
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

unint64_t sub_100014610(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_100018E68(&qword_100035C78, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000152F8(a1, v4);
}

uint64_t sub_1000146C4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  v8 = *(v4 + 40);
  Hasher.init(_seed:)();
  a3(v12, a1, a2);
  v9 = Hasher._finalize()();

  return a4(a1, a2, v9);
}

unint64_t sub_100014758(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100015C68(a1, v4);
}

Swift::Int sub_10001479C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000D1D4(&qword_100035BE0, &qword_100025578);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_10001F88C(0, &qword_100035BC0, CBOR_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100014C88(v12 + 1, 1);
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

uint64_t sub_1000149C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000D1D4(&qword_100035CB8, &qword_100025638);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100014C88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000D1D4(&qword_100035BE0, &qword_100025578);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
        v24 = v22;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
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

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100014EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000146C4(a3, a4, &String.hash(into:), sub_100015240);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1000149C8(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1000146C4(a3, a4, &String.hash(into:), sub_100015240);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100015D3C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

id sub_1000150C8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100014758(a2);
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
      sub_100014C88(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_100014758(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_10001F88C(0, &qword_100035BC0, CBOR_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_100015EB4();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

unint64_t sub_100015240(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1000152F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100018E68(&qword_100035C78, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

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

uint64_t sub_100015404(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v7 = v3;
  v10 = ~v5;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v74 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v71 = v14;
  __n = BYTE6(a2);
  v69 = a1;
  v70 = HIDWORD(a1) - a1;
  v65 = (a1 >> 32) - a1;
  v66 = a1 >> 32;
  v72 = v10;
  v73 = v3 + 64;
  while (1)
  {
    v15 = (*(v7 + 48) + 16 * v6);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v74) & 1) == 0)
      {
        return v6;
      }

LABEL_36:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_36;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_142;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_141;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_33:
        v26 = __n;
        if (v11)
        {
          v26 = v70;
          if (v71)
          {
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v22)
      {
        return v6;
      }

      goto LABEL_13;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_140;
    }

LABEL_39:
    if (v22 != v26)
    {
      goto LABEL_13;
    }

    if (v22 < 1)
    {
      return v6;
    }

    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_143;
      }

      sub_10000B9BC(v17, v16);
      v35 = __DataStorage._bytes.getter();
      if (v35)
      {
        v40 = __DataStorage._offset.getter();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      __DataStorage._length.getter();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v64 = *(a1 + 24);
        v37 = __DataStorage._bytes.getter();
        if (v37)
        {
          v60 = __DataStorage._offset.getter();
          if (__OFSUB__(v59, v60))
          {
            goto LABEL_160;
          }

          v37 += v59 - v60;
        }

        v25 = __OFSUB__(v64, v59);
        v61 = v64 - v59;
        if (v25)
        {
          goto LABEL_155;
        }

        result = __DataStorage._length.getter();
        if (result >= v61)
        {
          v39 = v61;
        }

        else
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_175;
        }

        if (!v37)
        {
          goto LABEL_174;
        }

        goto LABEL_130;
      }

      if (v11 == 1)
      {
        if (v66 < v69)
        {
          goto LABEL_154;
        }

        v37 = __DataStorage._bytes.getter();
        if (v37)
        {
          v41 = __DataStorage._offset.getter();
          if (__OFSUB__(v69, v41))
          {
            goto LABEL_161;
          }

          v37 += v69 - v41;
        }

        result = __DataStorage._length.getter();
        v39 = v65;
        if (result < v65)
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_177;
        }

        if (!v37)
        {
          goto LABEL_176;
        }

        goto LABEL_130;
      }

      LOWORD(__s1[0]) = a1;
      BYTE2(__s1[0]) = BYTE2(a1);
      BYTE3(__s1[0]) = BYTE3(a1);
      BYTE4(__s1[0]) = v67;
      BYTE5(__s1[0]) = BYTE5(a1);
      BYTE6(__s1[0]) = BYTE6(a1);
      HIBYTE(__s1[0]) = HIBYTE(a1);
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      if (!v35)
      {
        goto LABEL_166;
      }

      goto LABEL_133;
    }

    __s1[0] = v17;
    LOWORD(__s1[1]) = v16;
    BYTE2(__s1[1]) = BYTE2(v16);
    BYTE3(__s1[1]) = BYTE3(v16);
    BYTE4(__s1[1]) = BYTE4(v16);
    BYTE5(__s1[1]) = BYTE5(v16);
    if (!v11)
    {
      goto LABEL_91;
    }

    if (v11 != 1)
    {
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      sub_10000B9BC(v17, v16);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v49 = __DataStorage._offset.getter();
        if (__OFSUB__(v48, v49))
        {
          goto LABEL_157;
        }

        v32 += v48 - v49;
      }

      v25 = __OFSUB__(v47, v48);
      v45 = v47 - v48;
      if (v25)
      {
        goto LABEL_149;
      }

      v46 = __DataStorage._length.getter();
      v7 = v68;
      if (!v32)
      {
        goto LABEL_164;
      }

      goto LABEL_98;
    }

    if (v66 < v69)
    {
      goto LABEL_146;
    }

    sub_10000B9BC(v17, v16);
    v29 = __DataStorage._bytes.getter();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = __DataStorage._offset.getter();
    if (__OFSUB__(v69, v31))
    {
      goto LABEL_152;
    }

    v32 = v69 - v31 + v30;
    result = __DataStorage._length.getter();
    if (!v32)
    {
      goto LABEL_168;
    }

LABEL_105:
    if (result >= v65)
    {
      v50 = v65;
    }

    else
    {
      v50 = result;
    }

LABEL_108:
    v54 = __s1;
    v55 = v32;
LABEL_134:
    v62 = memcmp(v54, v55, v50);
    sub_10000B954(v17, v16);
LABEL_135:
    v10 = v72;
    v4 = v73;
    if (!v62)
    {
      return v6;
    }

LABEL_13:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return v6;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_10000B9BC(v17, v16);
    v35 = __DataStorage._bytes.getter();
    if (v35)
    {
      v36 = __DataStorage._offset.getter();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = __DataStorage._length.getter();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v63 = *(a1 + 24);
      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v57 = __DataStorage._offset.getter();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_158;
        }

        v37 += v56 - v57;
      }

      v25 = __OFSUB__(v63, v56);
      v58 = v63 - v56;
      if (v25)
      {
        goto LABEL_153;
      }

      result = __DataStorage._length.getter();
      if (result >= v58)
      {
        v39 = v58;
      }

      else
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_173;
      }

      if (!v37)
      {
        goto LABEL_172;
      }

      goto LABEL_130;
    }

    if (v11 == 1)
    {
      if (v66 < v69)
      {
        goto LABEL_148;
      }

      v37 = __DataStorage._bytes.getter();
      if (v37)
      {
        v38 = __DataStorage._offset.getter();
        if (__OFSUB__(v69, v38))
        {
          goto LABEL_159;
        }

        v37 += v69 - v38;
      }

      result = __DataStorage._length.getter();
      v39 = v65;
      if (result < v65)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_171;
      }

      if (!v37)
      {
        goto LABEL_170;
      }

LABEL_130:
      if (v35 == v37)
      {
        sub_10000B954(v17, v16);
        return v6;
      }

      v62 = memcmp(v35, v37, v39);
      sub_10000B954(v17, v16);
      v7 = v68;
      goto LABEL_135;
    }

    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v67;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_169;
    }

LABEL_133:
    v55 = __s1;
    v54 = v35;
    v50 = __n;
    goto LABEL_134;
  }

  memset(__s1, 0, 14);
  if (!v11)
  {
LABEL_91:
    __s2 = a1;
    v77 = BYTE2(a1);
    v78 = BYTE3(a1);
    v79 = v67;
    v80 = BYTE5(a1);
    v81 = BYTE6(a1);
    v82 = HIBYTE(a1);
    v83 = a2;
    v84 = BYTE2(a2);
    v85 = BYTE3(a2);
    v86 = BYTE4(a2);
    v87 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, __n))
    {
      return v6;
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    sub_10000B9BC(v17, v16);
    v32 = __DataStorage._bytes.getter();
    if (v32)
    {
      v44 = __DataStorage._offset.getter();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_156;
      }

      v32 += v43 - v44;
    }

    v25 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v25)
    {
      goto LABEL_150;
    }

    v46 = __DataStorage._length.getter();
    v7 = v68;
    if (!v32)
    {
      goto LABEL_165;
    }

LABEL_98:
    if (v46 >= v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v46;
    }

    goto LABEL_108;
  }

  if (v66 < v69)
  {
    goto LABEL_147;
  }

  sub_10000B9BC(v17, v16);
  v51 = __DataStorage._bytes.getter();
  if (v51)
  {
    v52 = v51;
    v53 = __DataStorage._offset.getter();
    if (__OFSUB__(v69, v53))
    {
      goto LABEL_151;
    }

    v32 = v69 - v53 + v52;
    result = __DataStorage._length.getter();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  __DataStorage._length.getter();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = __DataStorage._length.getter();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
  return result;
}

unint64_t sub_100015C68(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10001F88C(0, &qword_100035BC0, CBOR_ptr);
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

void *sub_100015D3C()
{
  v1 = v0;
  sub_10000D1D4(&qword_100035CB8, &qword_100025638);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

id sub_100015EB4()
{
  v1 = v0;
  sub_10000D1D4(&qword_100035BE0, &qword_100025578);
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
        result = v19;
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

_BYTE *sub_100016014@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100019E24(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100019EDC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100019F58(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1000160A8(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_141:
    v75 = *v84;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__s1 = *v84;
    sub_10000B9BC(a2, a3);
    sub_100017014(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v84 = *__s1;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = a3 >> 62;
  if (a2)
  {
    v14 = 0;
  }

  else
  {
    v14 = a3 == 0xC000000000000000;
  }

  v15 = !v14;
  v90 = v15;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v87 = v16;
  v86 = v6;
  v82 = (a2 >> 32) - a2;
  v83 = a2 >> 32;
  v88 = v6 + 56;
  v89 = v12;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || a3 >> 62 != 3;
      if (((v23 | v90) & 1) == 0)
      {
        v77 = 0;
        v78 = 0xC000000000000000;
LABEL_142:
        sub_10000B954(v77, v78);
LABEL_143:
        v79 = *(*(v6 + 48) + 16 * v11);
        *a1 = v79;
        sub_10000B9BC(v79, *(&v79 + 1));
        return 0;
      }

LABEL_36:
      v24 = 0;
      if (v13 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_147;
      }

      if (v13 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_146;
      }

      v24 = v24;
      if (v13 <= 1)
      {
LABEL_33:
        v28 = BYTE6(a3);
        if (v13)
        {
          v28 = HIDWORD(a2) - a2;
          if (v87)
          {
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v13 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v13 != 2)
    {
      if (!v24)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_145;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_140;
    }

    if (v20 > 1)
    {
      break;
    }

    if (v20)
    {
      if (v19 > v19 >> 32)
      {
        goto LABEL_148;
      }

      sub_10000B9BC(v19, v18);
      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v42 = v41;
        v43 = __DataStorage._offset.getter();
        if (__OFSUB__(v19, v43))
        {
          goto LABEL_150;
        }

        v40 = (v19 - v43 + v42);
      }

      else
      {
        v40 = 0;
      }

      __DataStorage._length.getter();
      v12 = v89;
      if (v13 == 2)
      {
        v68 = *(a2 + 16);
        v81 = *(a2 + 24);
        v50 = __DataStorage._bytes.getter();
        if (v50)
        {
          v69 = __DataStorage._offset.getter();
          if (__OFSUB__(v68, v69))
          {
            goto LABEL_164;
          }

          v50 += v68 - v69;
        }

        v27 = __OFSUB__(v81, v68);
        v70 = v81 - v68;
        if (v27)
        {
          goto LABEL_160;
        }

        result = __DataStorage._length.getter();
        if (result >= v70)
        {
          v53 = v70;
        }

        else
        {
          v53 = result;
        }

        if (!v40)
        {
          goto LABEL_176;
        }

        v9 = v88;
        v12 = v89;
        if (!v50)
        {
          goto LABEL_175;
        }
      }

      else
      {
        if (v13 != 1)
        {
          v9 = v88;
          *__s1 = a2;
          *&__s1[8] = a3;
          __s1[10] = BYTE2(a3);
          __s1[11] = BYTE3(a3);
          __s1[12] = BYTE4(a3);
          __s1[13] = BYTE5(a3);
          if (!v40)
          {
            goto LABEL_171;
          }

          goto LABEL_138;
        }

        if (v83 < a2)
        {
          goto LABEL_159;
        }

        v50 = __DataStorage._bytes.getter();
        if (v50)
        {
          v54 = __DataStorage._offset.getter();
          if (__OFSUB__(a2, v54))
          {
            goto LABEL_166;
          }

          v50 += a2 - v54;
        }

        result = __DataStorage._length.getter();
        v53 = (a2 >> 32) - a2;
        if (result < v82)
        {
          v53 = result;
        }

        if (!v40)
        {
          goto LABEL_180;
        }

        v9 = v88;
        if (!v50)
        {
          goto LABEL_179;
        }
      }

      goto LABEL_135;
    }

    *__s1 = v19;
    *&__s1[8] = v18;
    __s1[10] = BYTE2(v18);
    __s1[11] = BYTE3(v18);
    __s1[12] = BYTE4(v18);
    __s1[13] = BYTE5(v18);
    if (!v13)
    {
      goto LABEL_69;
    }

    if (v13 == 1)
    {
      if (v83 < a2)
      {
        goto LABEL_152;
      }

      sub_10000B9BC(v19, v18);
      v31 = __DataStorage._bytes.getter();
      if (!v31)
      {
        goto LABEL_174;
      }

      v32 = v31;
      v33 = __DataStorage._offset.getter();
      if (__OFSUB__(a2, v33))
      {
        goto LABEL_156;
      }

      v34 = (a2 - v33 + v32);
      v35 = __DataStorage._length.getter();
      if (!v34)
      {
        goto LABEL_172;
      }

      goto LABEL_109;
    }

    v56 = *(a2 + 16);
    v55 = *(a2 + 24);
    sub_10000B9BC(v19, v18);
    v46 = __DataStorage._bytes.getter();
    if (v46)
    {
      v57 = __DataStorage._offset.getter();
      if (__OFSUB__(v56, v57))
      {
        goto LABEL_161;
      }

      v46 += v56 - v57;
    }

    v27 = __OFSUB__(v55, v56);
    v48 = v55 - v56;
    if (v27)
    {
      goto LABEL_153;
    }

    v49 = __DataStorage._length.getter();
    v6 = v86;
    if (!v46)
    {
      goto LABEL_170;
    }

LABEL_100:
    if (v49 >= v48)
    {
      v58 = v48;
    }

    else
    {
      v58 = v49;
    }

    v59 = memcmp(__s1, v46, v58);
    sub_10000B954(v19, v18);
    v9 = v88;
    v12 = v89;
    if (!v59)
    {
LABEL_140:
      v77 = a2;
      v78 = a3;
      goto LABEL_142;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  if (v20 == 2)
  {
    v36 = *(v19 + 16);
    sub_10000B9BC(v19, v18);
    v37 = __DataStorage._bytes.getter();
    if (v37)
    {
      v38 = v37;
      v39 = __DataStorage._offset.getter();
      if (__OFSUB__(v36, v39))
      {
        goto LABEL_149;
      }

      v40 = (v36 - v39 + v38);
    }

    else
    {
      v40 = 0;
    }

    __DataStorage._length.getter();
    v12 = v89;
    if (v13 != 2)
    {
      if (v13 == 1)
      {
        if (v83 < a2)
        {
          goto LABEL_155;
        }

        v50 = __DataStorage._bytes.getter();
        if (v50)
        {
          v51 = __DataStorage._offset.getter();
          if (__OFSUB__(a2, v51))
          {
            goto LABEL_165;
          }

          v50 += a2 - v51;
        }

        result = __DataStorage._length.getter();
        v53 = (a2 >> 32) - a2;
        if (result < v82)
        {
          v53 = result;
        }

        if (!v40)
        {
          goto LABEL_178;
        }

        v9 = v88;
        if (!v50)
        {
          goto LABEL_177;
        }

        goto LABEL_135;
      }

      v9 = v88;
      *__s1 = a2;
      *&__s1[8] = a3;
      __s1[10] = BYTE2(a3);
      __s1[11] = BYTE3(a3);
      __s1[12] = BYTE4(a3);
      __s1[13] = BYTE5(a3);
      if (!v40)
      {
        goto LABEL_169;
      }

LABEL_138:
      v73 = __s1;
      v72 = v40;
      v71 = BYTE6(a3);
LABEL_139:
      v74 = memcmp(v72, v73, v71);
      sub_10000B954(v19, v18);
      v6 = v86;
      if (!v74)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v65 = *(a2 + 16);
    v80 = *(a2 + 24);
    v50 = __DataStorage._bytes.getter();
    if (v50)
    {
      v66 = __DataStorage._offset.getter();
      if (__OFSUB__(v65, v66))
      {
        goto LABEL_163;
      }

      v50 += v65 - v66;
    }

    v27 = __OFSUB__(v80, v65);
    v67 = v80 - v65;
    if (v27)
    {
      goto LABEL_158;
    }

    result = __DataStorage._length.getter();
    if (result >= v67)
    {
      v53 = v67;
    }

    else
    {
      v53 = result;
    }

    if (!v40)
    {
      goto LABEL_182;
    }

    v9 = v88;
    v12 = v89;
    if (!v50)
    {
      goto LABEL_181;
    }

LABEL_135:
    if (v40 == v50)
    {
      sub_10000B954(v19, v18);
      sub_10000B954(a2, a3);
      v6 = v86;
      goto LABEL_143;
    }

    v71 = v53;
    v72 = v40;
    v73 = v50;
    goto LABEL_139;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v13)
  {
LABEL_69:
    __s2 = a2;
    v92 = a3;
    v93 = BYTE2(a3);
    v94 = BYTE3(a3);
    v95 = BYTE4(a3);
    v96 = BYTE5(a3);
    if (!memcmp(__s1, &__s2, BYTE6(a3)))
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  if (v13 == 2)
  {
    v45 = *(a2 + 16);
    v44 = *(a2 + 24);
    sub_10000B9BC(v19, v18);
    v46 = __DataStorage._bytes.getter();
    if (v46)
    {
      v47 = __DataStorage._offset.getter();
      if (__OFSUB__(v45, v47))
      {
        goto LABEL_162;
      }

      v46 += v45 - v47;
    }

    v27 = __OFSUB__(v44, v45);
    v48 = v44 - v45;
    if (v27)
    {
      goto LABEL_154;
    }

    v49 = __DataStorage._length.getter();
    v6 = v86;
    if (!v46)
    {
      goto LABEL_173;
    }

    goto LABEL_100;
  }

  if (v83 < a2)
  {
    goto LABEL_151;
  }

  sub_10000B9BC(v19, v18);
  v60 = __DataStorage._bytes.getter();
  if (v60)
  {
    v61 = v60;
    v62 = __DataStorage._offset.getter();
    if (__OFSUB__(a2, v62))
    {
      goto LABEL_157;
    }

    v34 = (a2 - v62 + v61);
    v35 = __DataStorage._length.getter();
    if (!v34)
    {
      goto LABEL_168;
    }

LABEL_109:
    if (v35 >= v82)
    {
      v63 = (a2 >> 32) - a2;
    }

    else
    {
      v63 = v35;
    }

    v64 = memcmp(__s1, v34, v63);
    sub_10000B954(v19, v18);
    v9 = v88;
    if (!v64)
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  __DataStorage._length.getter();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  result = __DataStorage._length.getter();
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
  return result;
}

size_t sub_100016A24(size_t a1, int64_t a2, char a3)
{
  result = sub_100016BD8(a1, a2, a3, *v3, &qword_100035A88, &qword_1000254A8, &type metadata accessor for WBSKeychainPasskey);
  *v3 = result;
  return result;
}

char *sub_100016A68(char *a1, int64_t a2, char a3)
{
  result = sub_100016ACC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100016A88(size_t a1, int64_t a2, char a3)
{
  result = sub_100016BD8(a1, a2, a3, *v3, &qword_100035A68, &qword_100025448, &type metadata accessor for ASCTAPUserVerificationRequirement);
  *v3 = result;
  return result;
}

char *sub_100016ACC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000D1D4(&qword_100035B88, &qword_100025520);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100016BD8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000D1D4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100016DB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000D1D4(&qword_100035B80, &qword_100025518);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100017014(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_143;
  }

  if (a4)
  {
    sub_100016DB4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100017914();
      goto LABEL_143;
    }

    sub_100017A70(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  result = Hasher._finalize()();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  a3 = result & ~v13;
  if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
LABEL_143:
    v71 = *v80;
    *(*v80 + 8 * (a3 >> 6) + 56) |= 1 << a3;
    v72 = (*(v71 + 48) + 16 * a3);
    *v72 = v7;
    v72[1] = a2;
    v73 = *(v71 + 16);
    v30 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (!v30)
    {
      *(v71 + 16) = v74;
      return result;
    }

LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
  }

  v14 = ~v13;
  v15 = a2 >> 62;
  if (v7)
  {
    v16 = 0;
  }

  else
  {
    v16 = a2 == 0xC000000000000000;
  }

  v17 = !v16;
  v84 = v17;
  v79 = v10;
  v18 = __OFSUB__(HIDWORD(v7), v7);
  v81 = v18;
  v77 = (v7 >> 32) - v7;
  v78 = v7 >> 32;
  v82 = v14;
  v83 = v10 + 56;
  while (1)
  {
    v19 = (*(v10 + 48) + 16 * a3);
    v21 = *v19;
    v20 = v19[1];
    v22 = v20 >> 62;
    if (v20 >> 62 == 3)
    {
      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || a2 >> 62 != 3;
      if (((v25 | v84) & 1) == 0)
      {
        goto LABEL_185;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }

    if (v22 > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_32;
      }

      v37 = *(v21 + 16);
      v36 = *(v21 + 24);
      v30 = __OFSUB__(v36, v37);
      v26 = v36 - v37;
      if (v30)
      {
        goto LABEL_147;
      }
    }

    else if (v22)
    {
      LODWORD(v26) = HIDWORD(v21) - v21;
      if (__OFSUB__(HIDWORD(v21), v21))
      {
        goto LABEL_148;
      }

      v26 = v26;
    }

    else
    {
      v26 = BYTE6(v20);
    }

LABEL_33:
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        if (!v26)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v29 = *(v7 + 16);
      v28 = *(v7 + 24);
      v30 = __OFSUB__(v28, v29);
      v27 = v28 - v29;
      if (v30)
      {
        goto LABEL_145;
      }
    }

    else
    {
      v27 = BYTE6(a2);
      if (v15)
      {
        v27 = HIDWORD(v7) - v7;
        if (v81)
        {
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }
      }
    }

    if (v26 == v27)
    {
      break;
    }

LABEL_20:
    a3 = (a3 + 1) & v14;
    if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_143;
    }
  }

  if (v26 < 1)
  {
    goto LABEL_185;
  }

  if (v22 <= 1)
  {
    if (!v22)
    {
      *__s1 = v21;
      *&__s1[8] = v20;
      __s1[10] = BYTE2(v20);
      __s1[11] = BYTE3(v20);
      __s1[12] = BYTE4(v20);
      __s1[13] = BYTE5(v20);
      if (!v15)
      {
        goto LABEL_97;
      }

      if (v15 == 1)
      {
        if (v78 < v7)
        {
          goto LABEL_152;
        }

        sub_10000B9BC(v21, v20);
        v31 = __DataStorage._bytes.getter();
        if (!v31)
        {
          goto LABEL_175;
        }

        v32 = v31;
        v33 = __DataStorage._offset.getter();
        if (__OFSUB__(v7, v33))
        {
          goto LABEL_158;
        }

        v34 = v7 - v33 + v32;
        v35 = __DataStorage._length.getter();
        if (!v34)
        {
          goto LABEL_174;
        }

LABEL_111:
        if (v35 >= v77)
        {
          v56 = (v7 >> 32) - v7;
        }

        else
        {
          v56 = v35;
        }

LABEL_114:
        v60 = __s1;
        v61 = v34;
LABEL_140:
        v70 = memcmp(v60, v61, v56);
        result = sub_10000B954(v21, v20);
LABEL_141:
        v14 = v82;
        v12 = v83;
        if (!v70)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v54 = *(v7 + 16);
      v53 = *(v7 + 24);
      sub_10000B9BC(v21, v20);
      v34 = __DataStorage._bytes.getter();
      if (v34)
      {
        v55 = __DataStorage._offset.getter();
        if (__OFSUB__(v54, v55))
        {
          goto LABEL_162;
        }

        v34 += v54 - v55;
      }

      v30 = __OFSUB__(v53, v54);
      v51 = v53 - v54;
      if (v30)
      {
        goto LABEL_156;
      }

      v52 = __DataStorage._length.getter();
      v10 = v79;
      if (!v34)
      {
        goto LABEL_172;
      }

LABEL_104:
      if (v52 >= v51)
      {
        v56 = v51;
      }

      else
      {
        v56 = v52;
      }

      goto LABEL_114;
    }

    if (v21 > v21 >> 32)
    {
      goto LABEL_149;
    }

    sub_10000B9BC(v21, v20);
    v39 = __DataStorage._bytes.getter();
    if (v39)
    {
      v45 = __DataStorage._offset.getter();
      if (__OFSUB__(v21, v45))
      {
        goto LABEL_151;
      }

      v39 += v21 - v45;
    }

    __DataStorage._length.getter();
    if (v15 == 2)
    {
      v66 = *(v7 + 16);
      v76 = *(v7 + 24);
      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v67 = __DataStorage._offset.getter();
        if (__OFSUB__(v66, v67))
        {
          goto LABEL_166;
        }

        v41 += v66 - v67;
      }

      v30 = __OFSUB__(v76, v66);
      v68 = v76 - v66;
      if (v30)
      {
        goto LABEL_161;
      }

      v69 = __DataStorage._length.getter();
      if (v69 >= v68)
      {
        v44 = v68;
      }

      else
      {
        v44 = v69;
      }

      if (!v39)
      {
        goto LABEL_177;
      }

      if (!v41)
      {
        goto LABEL_176;
      }

      goto LABEL_136;
    }

    if (v15 == 1)
    {
      if (v78 < v7)
      {
        goto LABEL_160;
      }

      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v46 = __DataStorage._offset.getter();
        if (__OFSUB__(v7, v46))
        {
          goto LABEL_167;
        }

        v41 += v7 - v46;
      }

      v47 = __DataStorage._length.getter();
      v44 = (v7 >> 32) - v7;
      if (v47 < v77)
      {
        v44 = v47;
      }

      if (!v39)
      {
        goto LABEL_181;
      }

      if (!v41)
      {
        goto LABEL_180;
      }

      goto LABEL_136;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v39)
    {
      goto LABEL_173;
    }

    goto LABEL_139;
  }

  if (v22 == 2)
  {
    v38 = *(v21 + 16);
    sub_10000B9BC(v21, v20);
    v39 = __DataStorage._bytes.getter();
    if (v39)
    {
      v40 = __DataStorage._offset.getter();
      if (__OFSUB__(v38, v40))
      {
        goto LABEL_150;
      }

      v39 += v38 - v40;
    }

    __DataStorage._length.getter();
    if (v15 == 2)
    {
      v62 = *(v7 + 16);
      v75 = *(v7 + 24);
      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v63 = __DataStorage._offset.getter();
        if (__OFSUB__(v62, v63))
        {
          goto LABEL_164;
        }

        v41 += v62 - v63;
      }

      v30 = __OFSUB__(v75, v62);
      v64 = v75 - v62;
      if (v30)
      {
        goto LABEL_159;
      }

      v65 = __DataStorage._length.getter();
      if (v65 >= v64)
      {
        v44 = v64;
      }

      else
      {
        v44 = v65;
      }

      if (!v39)
      {
        goto LABEL_183;
      }

      if (!v41)
      {
        goto LABEL_182;
      }

      goto LABEL_136;
    }

    if (v15 == 1)
    {
      if (v78 < v7)
      {
        goto LABEL_155;
      }

      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v42 = __DataStorage._offset.getter();
        if (__OFSUB__(v7, v42))
        {
          goto LABEL_165;
        }

        v41 += v7 - v42;
      }

      v43 = __DataStorage._length.getter();
      v44 = (v7 >> 32) - v7;
      if (v43 < v77)
      {
        v44 = v43;
      }

      if (!v39)
      {
        goto LABEL_179;
      }

      if (!v41)
      {
        goto LABEL_178;
      }

LABEL_136:
      if (v39 == v41)
      {
        goto LABEL_184;
      }

      v70 = memcmp(v39, v41, v44);
      result = sub_10000B954(v21, v20);
      v10 = v79;
      goto LABEL_141;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v39)
    {
      goto LABEL_170;
    }

LABEL_139:
    v61 = __s1;
    v60 = v39;
    v56 = BYTE6(a2);
    goto LABEL_140;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v15)
  {
LABEL_97:
    __s2 = v7;
    v86 = a2;
    v87 = BYTE2(a2);
    v88 = BYTE3(a2);
    v89 = BYTE4(a2);
    v90 = BYTE5(a2);
    result = memcmp(__s1, &__s2, BYTE6(a2));
    if (!result)
    {
      goto LABEL_185;
    }

    goto LABEL_20;
  }

  if (v15 == 2)
  {
    v49 = *(v7 + 16);
    v48 = *(v7 + 24);
    sub_10000B9BC(v21, v20);
    v34 = __DataStorage._bytes.getter();
    if (v34)
    {
      v50 = __DataStorage._offset.getter();
      if (__OFSUB__(v49, v50))
      {
        goto LABEL_163;
      }

      v34 += v49 - v50;
    }

    v30 = __OFSUB__(v48, v49);
    v51 = v48 - v49;
    if (v30)
    {
      goto LABEL_154;
    }

    v52 = __DataStorage._length.getter();
    v10 = v79;
    if (!v34)
    {
      goto LABEL_171;
    }

    goto LABEL_104;
  }

  if (v78 < v7)
  {
    goto LABEL_153;
  }

  sub_10000B9BC(v21, v20);
  v57 = __DataStorage._bytes.getter();
  if (v57)
  {
    v58 = v57;
    v59 = __DataStorage._offset.getter();
    if (__OFSUB__(v7, v59))
    {
      goto LABEL_157;
    }

    v34 = v7 - v59 + v58;
    v35 = __DataStorage._length.getter();
    if (!v34)
    {
      goto LABEL_169;
    }

    goto LABEL_111;
  }

  __DataStorage._length.getter();
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __DataStorage._length.getter();
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  sub_10000B954(v21, v20);
LABEL_185:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100017914()
{
  v1 = v0;
  sub_10000D1D4(&qword_100035B80, &qword_100025518);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_10000B9BC(v18, *(&v18 + 1));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_100017A70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000D1D4(&qword_100035B80, &qword_100025518);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      sub_10000B9BC(v19, v20);
      Data.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100017CAC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_100017D60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100017DC4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA256();
      sub_100018E68(&qword_100035B38, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000180DC(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1000180DC(v4, v5);
  }

  type metadata accessor for SHA256();
  sub_100018E68(&qword_100035B38, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_100017FA4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return Data._Representation.append(contentsOf:)();
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000181BC(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return sub_1000181BC(v3, v4);
  }

  return Data._Representation.append(contentsOf:)();
}

uint64_t sub_1000180DC(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_100018E68(&qword_100035B38, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000181BC(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100018250(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000D1D4(&qword_100035CB8, &qword_100025638);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1000146C4(v5, v6, &String.hash(into:), sub_100015240);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_10001838C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000D1D4(&qword_100035CD0, &unk_100025650);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1000146C4(v5, v6, &String.hash(into:), sub_100015240);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t _sSo26PublicKeyCredentialManagerC27AuthenticationServicesAgentE21appleAccountLargeBlob3for10Foundation4DataVSgSo09ASCPublicbC16AssertionOptionsC_tF_0(void *a1)
{
  v2 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs.PRF();
  v59 = *(v2 - 8);
  v3 = *(v59 + 64);
  __chkstk_darwin(v2);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000D1D4(&qword_1000359C8, &qword_1000253A8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v57 - v8;
  v10 = sub_10000D1D4(&qword_100035C08, &qword_100025598);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v57 - v12;
  v14 = type metadata accessor for ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues();
  v60 = *(v14 - 8);
  v15 = *(v60 + 64);
  __chkstk_darwin(v14);
  v58 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000357F0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000BC18(v17, qword_100036040);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Fetching Apple ID passkey token.", v20, 2u);
  }

  v21 = [a1 clientDataHash];
  if (!v21)
  {
    v33 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v33, v36, "Could not find clientDataHash", v37, 2u);
    }

    goto LABEL_17;
  }

  v22 = v21;
  v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = [objc_opt_self() defaultStore];
  if (!v25)
  {
    v25 = [objc_allocWithZone(ACAccountStore) init];
  }

  v61 = v25;
  v26 = [v25 aa_primaryAppleAccount];
  if (!v26 || (v27 = v26, v28 = [v26 aa_altDSID], v27, !v28))
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Could not determine altDSID", v35, 2u);
    }

    sub_10000B954(v62, v24);
LABEL_17:

    return 0;
  }

  v57 = [objc_allocWithZone(AKAppleIDPasskeySetupContext) initWithAltDSID:v28];

  sub_10000D1D4(&qword_100035C90, &qword_100025600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100025370;
  strcpy((inited + 32), "clientDataHash");
  *(inited + 47) = -18;
  *(inited + 48) = Data.base64URLEncodedString(includePadding:)(1);
  *(inited + 64) = 1701869940;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = 0x79656B73736170;
  *(inited + 88) = 0xE700000000000000;
  v30 = sub_100018250(inited);
  swift_setDeallocating();
  sub_10000D1D4(&qword_100035C98, qword_100025608);
  swift_arrayDestroy();
  v31 = [a1 extensions];
  dispatch thunk of ASCPublicKeyCredentialAssertionExtensionInputs.prf.getter();

  v32 = v59;
  if ((*(v59 + 48))(v9, 1, v2))
  {
    sub_10001FAE8(v9, &qword_1000359C8, &qword_1000253A8);
    (*(v60 + 56))(v13, 1, 1, v14);
  }

  else
  {
    (*(v32 + 16))(v5, v9, v2);
    sub_10001FAE8(v9, &qword_1000359C8, &qword_1000253A8);
    ASCPublicKeyCredentialAssertionExtensionInputs.PRF.inputValues.getter();
    (*(v32 + 8))(v5, v2);
    v39 = v60;
    if ((*(v60 + 48))(v13, 1, v14) != 1)
    {
      v51 = v58;
      (*(v39 + 32))(v58, v13, v14);
      v52 = ASCPublicKeyCredentialAssertionExtensionInputs.PRF.InputValues.salt1.getter();
      v54 = v53;
      v55 = Data.base64URLEncodedString(includePadding:)(1);
      sub_10000B954(v52, v54);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v30;
      sub_100014EF0(v55._countAndFlagsBits, v55._object, 0x6E65747845667270, 0xEC0000006E6F6973, isUniquelyReferenced_nonNull_native);
      (*(v39 + 8))(v51, v14);
      goto LABEL_20;
    }
  }

  sub_10001FAE8(v13, &qword_100035C08, &qword_100025598);
LABEL_20:
  sub_10000D1D4(&qword_100035CA0, &qword_100025620);
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_100025360;
  *(v40 + 32) = 6582369;
  *(v40 + 40) = 0xE300000000000000;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v40 + 48) = isa;
  sub_10001838C(v40);
  swift_setDeallocating();
  sub_10001FAE8(v40 + 32, &qword_100035CA8, &qword_100025628);
  sub_10000D1D4(&qword_100035CB0, &qword_100025630);
  v42 = Dictionary._bridgeToObjectiveC()().super.isa;

  v43 = v57;
  [v57 setAppProvidedData:v42];

  v44 = [objc_allocWithZone(AKAppleIDPasskeyController) init];
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_100025200;
  v46 = dispatch_group_create();
  dispatch_group_enter(v46);
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  *(v47 + 24) = v45;
  aBlock[4] = sub_10001FAC8;
  aBlock[5] = v47;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000133D4;
  aBlock[3] = &unk_100031C08;
  v48 = _Block_copy(aBlock);
  v49 = v46;

  [v44 verifyAppleIDPasskeyWithContext:v43 completion:v48];
  _Block_release(v48);
  OS_dispatch_group.wait()();

  sub_10000B954(v62, v24);
  swift_beginAccess();
  v50 = *(v45 + 16);
  sub_100018EB0(v50, *(v45 + 24));

  return v50;
}

uint64_t sub_100018E68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100018EB0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000B9BC(a1, a2);
  }

  return a1;
}

unint64_t sub_100018EC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000D1D4(&qword_100035C80, &qword_1000255F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_10000B9BC(v5, v6);
      result = sub_100014610(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_100018FC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000D1D4(&qword_100035C70, &qword_1000255E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_100018EB0(v5, v6);
      result = sub_100014610(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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