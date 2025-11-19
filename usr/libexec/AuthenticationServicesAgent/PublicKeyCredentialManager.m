@interface PublicKeyCredentialManager
+ (id)asTransportsFromWKTransports:(id)a3;
+ (id)wkSecurityKeyTransportsFromASTransports:(id)a3;
- (BOOL)deleteAllPasskeysForRelyingParty:(id)a3 error:(id *)a4;
- (BOOL)deletePasskeyForRelyingParty:(id)a3 withCredentialID:(id)a4 error:(id *)a5;
- (BOOL)passkeyExistsForRelyingParty:(id)a3 username:(id)a4;
- (id)_allowedCredentialsForAssertionOptions:(id)a3;
- (id)_asToWKCredentialAssertionOptions:(id)a3;
- (id)_asToWKCredentialCreationOptions:(id)a3 forCredentialKind:(unint64_t)a4;
- (id)_createCredentialOfKind:(unint64_t)a3 withOptions:(id)a4 authenticatedLAContext:(id)a5 delegate:(id)a6 webFrameIdentifier:(id)a7 parentActivity:(id)a8 isConditionalRegistration:(BOOL)a9 testOptions:(id)a10;
- (id)_newPanelForOperation:(id)a3;
- (id)_operationForApplicationIdentifierIfExists:(id)a3;
- (id)_operationForPanel:(id)a3;
- (id)_operationForPanelIfExists:(id)a3;
- (id)_operationForUUID:(id)a3;
- (id)_operationForUUIDIfExists:(id)a3;
- (id)_operationForWebFrameIdentifier:(id)a3;
- (id)autoFillOperationUUIDForApplicationIdentifier:(id)a3;
- (id)autoFillOperationUUIDForWebFrameIdentifier:(id)a3;
- (id)autoFillPasskeysForOperationUUID:(id)a3;
- (id)beginAssertionsWithOptions:(id)a3 forProcessWithApplicationIdentifier:(id)a4 delegate:(id)a5 requestStyle:(int64_t)a6 webFrameIdentifier:(id)a7 parentActivity:(id)a8 testOptions:(id)a9;
- (id)browserPasskeysForRelyingParty:(id)a3 testOptions:(id)a4;
- (id)encodeGetAssertionCommandWithOptions:(id)a3 authenticatorUserVerificationAvailability:(unint64_t)a4 authenticatorSupportedExtensions:(id)a5;
- (id)encodeMakeCredentialCommandWithOptions:(id)a3 authenticatorUserVerificationAvailability:(unint64_t)a4 authenticatorSupportedExtensions:(id)a5;
- (id)initForTesting:(BOOL)a3;
- (id)internalErrorToWKErrorIfApplicable:(id)a3;
- (void)_completeAssertionWithExternalPasskeyForOperation:(id)a3 usingCredential:(id)a4;
- (void)_finishAssertionForOperationWithUUID:(id)a3 identifier:(id)a4 authenticatedContext:(id)a5 savedAccountContext:(id)a6;
- (void)_getExternalPasskeyRequestForOperation:(id)a3 relyingPartyIdentifier:(id)a4 credentialID:(id)a5 completionHandler:(id)a6;
- (void)_getPasskeyAssertionRequestParametersForOperation:(id)a3 completionHandler:(id)a4;
- (void)_queryExternalLoginChoicesForOperation:(id)a3 completionHandler:(id)a4;
- (void)_tearDownOperationWithUUID:(id)a3;
- (void)_updateLastUsedDateForPasskeySavedAccountWithAssertion:(id)a3 relyingParty:(id)a4 context:(id)a5;
- (void)assertUsingPlatformCredentialForLoginChoice:(id)a3 authenticatedContext:(id)a4;
- (void)assertUsingSecurityKeyCredentialForLoginChoice:(id)a3;
- (void)cancelOperationIfNecessaryWithUUID:(id)a3 overrideError:(id)a4;
- (void)completeAssertionWithExternalPasskeyForApplicationIdentifier:(id)a3 usingCredential:(id)a4;
- (void)completeAssertionWithExternalPasskeyForUUID:(id)a3 usingCredential:(id)a4;
- (void)completeAssertionWithExternalPasskeyForWebFrameIdentifier:(id)a3 usingCredential:(id)a4;
- (void)computeClientDataIfNeededForAssertionOptions:(id)a3;
- (void)computeClientDataIfNeededForCreationOptions:(id)a3;
- (void)computeUserVerificationForAssertionOptions:(id)a3;
- (void)getExternalPasskeyRequestForApplicationIdentifier:(id)a3 relyingPartyIdentifier:(id)a4 credentialID:(id)a5 completionHandler:(id)a6;
- (void)getExternalPasskeyRequestForWebFrameIdentifier:(id)a3 relyingPartyIdentifier:(id)a4 credentialID:(id)a5 completionHandler:(id)a6;
- (void)getIsPasskeyAssertionRequestRunningForWebFrameIdentifier:(id)a3 orApplicationIdentifier:(id)a4 completionHandler:(id)a5;
- (void)getPasskeyAssertionRequestParametersForApplicationIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getPasskeyAssertionRequestParametersForCABLEWithCompletionHandler:(id)a3;
- (void)getPasskeyAssertionRequestParametersForWebFrameIdentifier:(id)a3 completionHandler:(id)a4;
- (void)operation:(id)a3 selectAssertionResponse:(id)a4 source:(int64_t)a5 completionHandler:(id)a6;
- (void)operation:(id)a3 updateWebAuthenticationPanel:(int64_t)a4;
- (void)panel:(id)a3 dismissWebAuthenticationPanelWithResult:(int64_t)a4;
- (void)panel:(id)a3 requestLAContextForUserVerificationWithCompletionHandler:(id)a4;
- (void)panel:(id)a3 requestNewPINWithMinLength:(unint64_t)a4 completionHandler:(id)a5;
- (void)panel:(id)a3 requestPINWithRemainingRetries:(unint64_t)a4 completionHandler:(id)a5;
- (void)panel:(id)a3 selectAssertionResponse:(id)a4 source:(int64_t)a5 completionHandler:(id)a6;
- (void)panel:(id)a3 updateWebAuthenticationPanel:(int64_t)a4;
- (void)presentCABLESheetForOperationUUID:(id)a3 withCompletionHandler:(id)a4;
- (void)test_getAssertionWithMediationRequirement:(int64_t)a3 clientDataJSON:(NSData *)a4 options:(_WKPublicKeyCredentialRequestOptions *)a5 operation:(PublicKeyCredentialOperation *)a6 completionHandler:(id)a7;
- (void)test_getBrowserPasskeysForRelyingParty:(NSString *)a3 completionHandler:(id)a4;
- (void)test_makeCredentialWithMediationRequirement:(int64_t)a3 clientDataHash:(NSData *)a4 options:(_WKPublicKeyCredentialCreationOptions *)a5 testOptions:(_TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions *)a6 clientDataJSON:(NSData *)a7 completionHandler:(id)a8;
@end

@implementation PublicKeyCredentialManager

- (id)initForTesting:(BOOL)a3
{
  v18.receiver = self;
  v18.super_class = PublicKeyCredentialManager;
  v4 = [(PublicKeyCredentialManager *)&v18 init];
  v5 = v4;
  if (v4)
  {
    v4->_isForTesting = a3;
    v4->_operationsLock._os_unfair_lock_opaque = 0;
    v6 = +[NSMutableDictionary dictionary];
    uuidToOperation = v5->_uuidToOperation;
    v5->_uuidToOperation = v6;

    v8 = +[NSMapTable strongToWeakObjectsMapTable];
    panelToWeakOperation = v5->_panelToWeakOperation;
    v5->_panelToWeakOperation = v8;

    v10 = +[NSMapTable strongToWeakObjectsMapTable];
    applicationIdentifierToWeakOperation = v5->_applicationIdentifierToWeakOperation;
    v5->_applicationIdentifierToWeakOperation = v10;

    v12 = +[NSMapTable strongToWeakObjectsMapTable];
    webFrameIdentifierToWeakOperationForBrowser = v5->_webFrameIdentifierToWeakOperationForBrowser;
    v5->_webFrameIdentifierToWeakOperationForBrowser = v12;

    v14 = +[WBSOngoingSharingGroupProvider sharedProvider];
    v15 = sub_10000A644();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_1000200B0();
    }

    v16 = v5;
  }

  return v5;
}

- (void)panel:(id)a3 updateWebAuthenticationPanel:(int64_t)a4
{
  v6 = [(PublicKeyCredentialManager *)self _operationForPanel:a3];
  if (v6)
  {
    [(PublicKeyCredentialManager *)self operation:v6 updateWebAuthenticationPanel:a4];
  }

  _objc_release_x1();
}

- (void)operation:(id)a3 updateWebAuthenticationPanel:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 delegate];
  v8 = v7;
  if (a4 > 5)
  {
    if (a4 > 8)
    {
      switch(a4)
      {
        case 9:
          v9 = 20;
          goto LABEL_26;
        case 10:
          v9 = 21;
          goto LABEL_26;
        case 11:
          [v7 didEnterCorrectPIN];
          break;
      }
    }

    else
    {
      if (a4 == 6)
      {
        v10 = [v6 activity];
        os_activity_apply(v10, &stru_1000312B0);

        v9 = 7;
        goto LABEL_26;
      }

      if (a4 != 7)
      {
        v9 = 13;
        goto LABEL_26;
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100002EBC;
      v11[3] = &unk_1000312D8;
      v12 = v7;
      [(PublicKeyCredentialManager *)self _queryExternalLoginChoicesForOperation:v6 completionHandler:v11];
    }
  }

  else
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {
        v9 = 9;
      }

      else if (a4 == 4)
      {
        v9 = 8;
      }

      else
      {
        v9 = 6;
      }

      goto LABEL_26;
    }

    switch(a4)
    {
      case 0:
        v9 = 4;
        goto LABEL_26;
      case 1:
        v9 = 5;
        goto LABEL_26;
      case 2:
        v9 = 10;
LABEL_26:
        [v8 didReceiveError:v9];
        break;
    }
  }
}

- (void)panel:(id)a3 selectAssertionResponse:(id)a4 source:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = [(PublicKeyCredentialManager *)self _operationForPanel:a3];
  if (v12)
  {
    v13 = [v10 safari_mapObjectsUsingBlock:&stru_100031318];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100003038;
    v14[3] = &unk_100031340;
    v15 = v11;
    [(PublicKeyCredentialManager *)self operation:v12 selectAssertionResponse:v13 source:a5 completionHandler:v14];
  }

  else
  {
    (*(v11 + 2))(v11, 0);
  }
}

- (void)operation:(id)a3 selectAssertionResponse:(id)a4 source:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 delegate];
  v14 = [v10 uuid];
  if (a5 == 1)
  {
    +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v11 count]);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100003914;
    v28 = v27[3] = &unk_1000313E0;
    v29 = v14;
    v17 = v28;
    v21 = [v11 safari_mapAndFilterObjectsUsingBlock:v27];
    [v10 mergeIdentifiersToAssertionResponses:v17];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_1000039D8;
    v25 = &unk_100031340;
    v26 = v12;
    [v10 setSecurityKeyAssertionSelectionCallback:&v22];
    [v13 didFetchSecurityKeyLoginChoices:{v21, v22, v23, v24, v25}];

    v20 = v28;
    goto LABEL_5;
  }

  if (!a5)
  {
    v15 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v11 count]);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100003400;
    v37[3] = &unk_100031368;
    v37[4] = self;
    v16 = v10;
    v38 = v16;
    v39 = v15;
    v40 = v14;
    v17 = v15;
    v18 = [v11 safari_mapAndFilterObjectsUsingBlock:v37];
    [v16 mergeIdentifiersToAssertionResponses:v17];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100003720;
    v35[3] = &unk_100031340;
    v36 = v12;
    [v16 setPlatformAssertionSelectionCallback:v35];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000037E0;
    v30[3] = &unk_1000313B8;
    v31 = v13;
    v32 = v18;
    v33 = v16;
    v34 = self;
    v19 = v18;
    [(PublicKeyCredentialManager *)self _queryExternalLoginChoicesForOperation:v33 completionHandler:v30];

    v20 = v38;
LABEL_5:
  }
}

- (void)panel:(id)a3 dismissWebAuthenticationPanelWithResult:(int64_t)a4
{
  v6 = a3;
  v7 = [(PublicKeyCredentialManager *)self _operationForPanelIfExists:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 activity];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100003C10;
    v16 = &unk_100031408;
    v10 = v8;
    v17 = v10;
    v18 = a4;
    os_activity_apply(v9, &v13);

    v11 = [v10 uuid];
    [(PublicKeyCredentialManager *)self cancelOperationIfNecessaryWithUUID:v11 overrideError:0];
  }

  else
  {
    v12 = sub_10000A644();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Operation for panel %p already dismissed.", buf, 0xCu);
    }
  }
}

- (void)panel:(id)a3 requestLAContextForUserVerificationWithCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = [(PublicKeyCredentialManager *)self _operationForPanel:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 activity];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003DFC;
    block[3] = &unk_100031148;
    v10 = v8;
    v13 = v10;
    os_activity_apply(v9, block);

    v11 = [v10 authenticatedLAContext];
    v6[2](v6, v11);
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)panel:(id)a3 requestPINWithRemainingRetries:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = [(PublicKeyCredentialManager *)self _operationForPanel:a3];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 activity];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004000;
    block[3] = &unk_100031148;
    v12 = v10;
    v15 = v12;
    os_activity_apply(v11, block);

    v13 = [v12 delegate];
    [v13 requestPINWithRemainingRetries:a4 completionHandler:v8];
  }

  else
  {
    v8[2](v8, &stru_100031CE0);
  }
}

- (void)panel:(id)a3 requestNewPINWithMinLength:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = [(PublicKeyCredentialManager *)self _operationForPanel:a3];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 activity];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000041DC;
    block[3] = &unk_100031148;
    v12 = v10;
    v15 = v12;
    os_activity_apply(v11, block);

    v13 = [v12 delegate];
    [v13 requestNewPINWithMinLength:a4 completionHandler:v8];
  }

  else
  {
    v8[2](v8, &stru_100031CE0);
  }
}

- (id)beginAssertionsWithOptions:(id)a3 forProcessWithApplicationIdentifier:(id)a4 delegate:(id)a5 requestStyle:(int64_t)a6 webFrameIdentifier:(id)a7 parentActivity:(id)a8 testOptions:(id)a9
{
  v14 = a3;
  v47 = a4;
  v50 = a5;
  v48 = a7;
  v49 = a8;
  v51 = a9;
  v52 = v14;
  v15 = [v14 objectAtIndexedSubscript:0];
  [(PublicKeyCredentialManager *)self computeClientDataIfNeededForAssertionOptions:v15];

  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = sub_100004980;
  v78 = sub_100004990;
  v79 = 0;
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_100004998;
  v73[3] = &unk_100031430;
  v73[4] = self;
  v73[5] = &v74;
  v16 = v14;
  v17 = [v14 safari_mapObjectsUsingBlock:v73];
  [(PublicKeyCredentialManager *)self computeUserVerificationForAssertionOptions:v14];
  v18 = [v17 objectAtIndexedSubscript:0];
  v19 = [v18 relyingPartyIdentifier];
  v53 = -[PublicKeyCredentialManager _newOperationWithRelyingPartyIdentifier:delegate:sourceApplicationIdentifier:webFrameIdentifier:shouldRequireUserVerification:parentActivity:testOptions:](self, "_newOperationWithRelyingPartyIdentifier:delegate:sourceApplicationIdentifier:webFrameIdentifier:shouldRequireUserVerification:parentActivity:testOptions:", v19, v50, v47, v48, [v18 userVerification] == 0, v49, v51);
  v20 = [v16 firstObject];
  [v53 setAssertionOptions:v20];
  v46 = v19;

  v21 = +[NSMutableArray array];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v22 = v17;
  v23 = 0;
  v24 = 0;
  v25 = [v22 countByEnumeratingWithState:&v69 objects:v80 count:16];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = *v70;
  do
  {
    for (i = 0; i != v25; i = i + 1)
    {
      if (*v70 != v26)
      {
        objc_enumerationMutation(v22);
      }

      v28 = *(*(&v69 + 1) + 8 * i);
      v29 = [v28 authenticatorAttachment];
      if (v29 == 1)
      {
        v30 = [v28 allowCredentials];
        [v21 safari_addObjectsFromArrayUnlessNil:v30];
        v24 = 1;
      }

      else
      {
        if (v29 != 2)
        {
          continue;
        }

        v30 = [v28 allowCredentials];
        [v21 safari_addObjectsFromArrayUnlessNil:v30];
        v23 = 1;
      }
    }

    v25 = [v22 countByEnumeratingWithState:&v69 objects:v80 count:16];
  }

  while (v25);
LABEL_13:

  [v53 setRequestUsedNonEmptyAllowList:{objc_msgSend(v21, "count") != 0}];
  if (v24)
  {
    v31 = (v24 & v23 & 1) == 0;
  }

  else
  {
    v31 = 2;
  }

  if ((v24 | v23))
  {
    if (v75[5])
    {
      [v18 setExtensionsCBOR:0];
      v32 = objc_alloc_init(_WKAuthenticationExtensionsClientInputs);
      [v32 setAppid:v75[5]];
      [v18 setExtensions:v32];
    }

    [v18 setAuthenticatorAttachment:v31];
    if ([v21 count])
    {
      [v18 setAllowCredentials:v21];
    }

    v33 = [v52 objectAtIndexedSubscript:0];
    v34 = [v33 clientDataJSON];

    [v53 setClientDataJSONForApps:v34];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_100004A58;
    v66[3] = &unk_100031478;
    v35 = v53;
    v67 = v35;
    v36 = v50;
    v68 = v36;
    v37 = objc_retainBlock(v66);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004DFC;
    block[3] = &unk_1000314C8;
    v65 = a6;
    v57 = v52;
    v58 = v51;
    v59 = self;
    v38 = v34;
    v60 = v38;
    v61 = v18;
    v39 = v35;
    v62 = v39;
    v40 = v37;
    v64 = v40;
    v63 = v46;
    dispatch_async(&_dispatch_main_q, block);
    if (v24)
    {
      if ((+[_WKWebAuthenticationPanel isUserVerifyingPlatformAuthenticatorAvailable]& 1) == 0)
      {
        v41 = [v39 activity];
        os_activity_apply(v41, &stru_100031508);

        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_1000052F8;
        v54[3] = &unk_1000312D8;
        v55 = v36;
        [(PublicKeyCredentialManager *)self _queryExternalLoginChoicesForOperation:v39 completionHandler:v54];
      }
    }

    else
    {
      v43 = [v39 activity];
      os_activity_apply(v43, &stru_1000314E8);

      [v36 didFetchPlatformLoginChoices:0];
    }

    v42 = [v39 uuid];
  }

  else
  {
    v38 = [v53 activity];
    os_activity_apply(v38, &stru_100031450);
    v42 = 0;
  }

  _Block_object_dispose(&v74, 8);

  return v42;
}

- (void)assertUsingPlatformCredentialForLoginChoice:(id)a3 authenticatedContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [v7 publicKeyCredentialOperationUUID];
  v8 = [v7 identifier];

  v9 = +[WBSSavedAccountContext defaultContext];
  [(PublicKeyCredentialManager *)self _finishAssertionForOperationWithUUID:v10 identifier:v8 authenticatedContext:v6 savedAccountContext:v9];
}

- (void)_finishAssertionForOperationWithUUID:(id)a3 identifier:(id)a4 authenticatedContext:(id)a5 savedAccountContext:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(PublicKeyCredentialManager *)self _operationForUUID:a3];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 identifiersToAssertionResponses];
    v16 = [v15 objectForKeyedSubscript:v10];

    if (v16)
    {
      v17 = [v14 relyingPartyIdentifier];
      if (([v17 isEqualToString:@"apple.com"] & 1) == 0)
      {
        [(PublicKeyCredentialManager *)self _updateLastUsedDateForPasskeySavedAccountWithAssertion:v16 relyingParty:v17 context:v12];
      }

      [v16 setLaContext:v11];
      [v14 selectPlatformAssertion:v16];
    }

    else
    {
      v18 = [v14 activity];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100005578;
      block[3] = &unk_100031148;
      v20 = v10;
      os_activity_apply(v18, block);
    }
  }
}

- (void)_updateLastUsedDateForPasskeySavedAccountWithAssertion:(id)a3 relyingParty:(id)a4 context:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v13 = +[NSDate now];
  v10 = [v9 userHandle];
  v11 = [v10 base64EncodedStringWithOptions:0];
  v12 = [v9 group];

  [NSURLCredentialStorage safari_setLastUsedDate:v13 forPasskeyWithUserHandle:v11 relyingPartyID:v8 groupID:v12 context:v7];
}

- (id)autoFillOperationUUIDForApplicationIdentifier:(id)a3
{
  if (a3)
  {
    v3 = [(PublicKeyCredentialManager *)self _operationForApplicationIdentifierIfExists:?];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 uuid];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)autoFillOperationUUIDForWebFrameIdentifier:(id)a3
{
  if (a3)
  {
    v3 = [(PublicKeyCredentialManager *)self _operationForWebFrameIdentifier:?];
    v4 = [v3 uuid];
  }

  else
  {
    v5 = sub_10000A644();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100020280(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v4 = 0;
  }

  return v4;
}

- (id)autoFillPasskeysForOperationUUID:(id)a3
{
  v4 = a3;
  v5 = [(PublicKeyCredentialManager *)self _operationForUUIDIfExists:v4];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  if ([v5 hasSelectedAssertion])
  {
    v7 = [v6 activity];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005BF8;
    block[3] = &unk_100031148;
    v44 = v4;
    os_activity_apply(v7, block);

    v8 = [[WBSPair alloc] initWithFirst:&__NSArray0__struct second:0];
    goto LABEL_8;
  }

  v9 = +[ASFeatureManager sharedManager];
  v10 = [v9 isDeviceConfiguredToAllowPasskeys];

  if ((v10 & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = +[SFCredentialProviderExtensionManager sharedManager];
  if ([v11 atLeastOneEnabledExtensionSupportsPasskeys])
  {
    v12 = +[SFAutoFillFeatureManager sharedFeatureManager];
    v13 = [v12 shouldAutoFillPasswordsFromKeychain];

    if ((v13 & 1) == 0)
    {
LABEL_7:
      v8 = [[WBSPair alloc] initWithFirst:&__NSArray0__struct second:0];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v15 = [v6 identifiersToAssertionResponses];
  v16 = [v6 relyingPartyIdentifier];
  v38 = [v6 shouldRequireUserVerification];
  v35 = v6;
  v37 = [v6 requestUsedNonEmptyAllowList];
  v17 = v15;
  v40 = v16;
  v36 = v4;
  v41 = v4;
  v39 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v17 count]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v46;
    do
    {
      v22 = 0;
      v42 = v20;
      do
      {
        if (*v46 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [v18 objectForKeyedSubscript:*(*(&v45 + 1) + 8 * v22)];
        if ([v23 synchronizable])
        {
          v24 = [v23 userHandle];
          v25 = [v24 base64EncodedStringWithOptions:0];

          v26 = [v23 group];
          v27 = [NSURLCredentialStorage safari_customTitleForPasskeyWithUserHandle:v25 relyingPartyID:v40 groupID:v26];

          v28 = [WBSAutoFillPasskey alloc];
          v29 = [v23 name];
          v30 = sub_100003680(v23);
          LOBYTE(v34) = v37;
          v31 = [v28 initWithUsername:v29 customTitle:v27 relyingPartyIdentifier:v40 identifier:v30 operationUUID:v41 shouldRequireUserVerification:v38 requestUsedNonEmptyAllowList:v34];

          [v39 addObject:v31];
          v20 = v42;
        }

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v20);
  }

  v32 = [v39 copy];
  if (+[_ASDevice isCABLEClient])
  {
    v33 = [[WBSPasskeyAutoFillFromNearbyDeviceOptions alloc] initWithOperationUUID:v41];
  }

  else
  {
    v33 = 0;
  }

  v6 = v35;
  v4 = v36;
  v8 = [[WBSPair alloc] initWithFirst:v32 second:v33];

LABEL_8:

  return v8;
}

- (void)presentCABLESheetForOperationUUID:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000A644();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Asked to present caBLE for AutoFill operation %{public}@", &v13, 0xCu);
  }

  v9 = [(PublicKeyCredentialManager *)self _operationForUUIDIfExists:v6];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 delegate];
    [v11 presentCABLESheetWithCompletionHandler:v7];
  }

  else
  {
    v12 = sub_10000A644();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Could not find operation.", &v13, 2u);
    }

    v7[2](v7, 0);
  }
}

- (void)assertUsingSecurityKeyCredentialForLoginChoice:(id)a3
{
  v4 = a3;
  v5 = [v4 publicKeyCredentialOperationUUID];
  v6 = [(PublicKeyCredentialManager *)self _operationForUUID:v5];

  if (v6)
  {
    v7 = [v6 identifiersToAssertionResponses];
    v8 = [v4 identifier];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      [v6 selectSecurityKeyAssertion:v9];
    }

    else
    {
      v10 = [v6 activity];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100005F74;
      block[3] = &unk_100031148;
      v12 = v4;
      os_activity_apply(v10, block);
    }
  }
}

- (void)cancelOperationIfNecessaryWithUUID:(id)a3 overrideError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PublicKeyCredentialManager *)self _operationForUUIDIfExists:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 activity];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000060E4;
    v16 = &unk_100031290;
    v11 = v6;
    v17 = v11;
    v12 = v7;
    v18 = v12;
    os_activity_apply(v10, &v13);

    if (v12)
    {
      [v9 setOverrideError:{v12, v13, v14, v15, v16, v17}];
    }

    [(PublicKeyCredentialManager *)self _tearDownOperationWithUUID:v11, v13, v14, v15, v16];
  }
}

- (id)encodeMakeCredentialCommandWithOptions:(id)a3 authenticatorUserVerificationAvailability:(unint64_t)a4 authenticatorSupportedExtensions:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a4 == 1;
  }

  v11 = [(PublicKeyCredentialManager *)self _asToWKCredentialCreationOptions:v8 forCredentialKind:1];
  v12 = [v8 clientDataJSON];
  if (!v12)
  {
    v13 = [v8 challenge];
    v14 = [v8 relyingPartyIdentifier];
    v15 = [@"https://" stringByAppendingString:v14];
    v12 = [_WKWebAuthenticationPanel getClientDataJSONForAuthenticationType:0 challenge:v13 origin:v15];
  }

  v16 = [v8 clientDataHash];
  if (objc_opt_respondsToSelector())
  {
    if (v16)
    {
      [_WKWebAuthenticationPanel encodeMakeCredentialCommandWithClientDataHash:v16 options:v11 userVerificationAvailability:v10 authenticatorSupportedExtensions:v9];
    }

    else
    {
      [_WKWebAuthenticationPanel encodeMakeCredentialCommandWithClientDataJSON:v12 options:v11 userVerificationAvailability:v10 authenticatorSupportedExtensions:v9];
    }
  }

  else if (v16)
  {
    [_WKWebAuthenticationPanel encodeMakeCredentialCommandWithClientDataHash:v16 options:v11 userVerificationAvailability:v10];
  }

  else
  {
    [_WKWebAuthenticationPanel encodeMakeCredentialCommandWithClientDataJSON:v12 options:v11 userVerificationAvailability:v10];
  }
  v17 = ;
  v18 = v17;
  v19 = [(PublicKeyCredentialManager *)self encodeExtensionsIfNeededForCTAPRegistrationCommand:v17 registrationOptions:v8];

  v20 = [[WBSPair alloc] initWithFirst:v12 second:v19];

  return v20;
}

- (id)encodeGetAssertionCommandWithOptions:(id)a3 authenticatorUserVerificationAvailability:(unint64_t)a4 authenticatorSupportedExtensions:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = a4 == 1;
  }

  v11 = [(PublicKeyCredentialManager *)self _asToWKCredentialAssertionOptions:v8];
  v12 = [v8 clientDataJSON];
  if (!v12)
  {
    v13 = [v8 challenge];
    v14 = [v8 relyingPartyIdentifier];
    v15 = [@"https://" stringByAppendingString:v14];
    v12 = [_WKWebAuthenticationPanel getClientDataJSONForAuthenticationType:1 challenge:v13 origin:v15];
  }

  v16 = [v8 clientDataHash];
  if (objc_opt_respondsToSelector())
  {
    if (v16)
    {
      [_WKWebAuthenticationPanel encodeGetAssertionCommandWithClientDataHash:v16 options:v11 userVerificationAvailability:v10 authenticatorSupportedExtensions:v9];
    }

    else
    {
      [_WKWebAuthenticationPanel encodeGetAssertionCommandWithClientDataJSON:v12 options:v11 userVerificationAvailability:v10 authenticatorSupportedExtensions:v9];
    }
  }

  else if (v16)
  {
    [_WKWebAuthenticationPanel encodeGetAssertionCommandWithClientDataHash:v16 options:v11 userVerificationAvailability:v10];
  }

  else
  {
    [_WKWebAuthenticationPanel encodeGetAssertionCommandWithClientDataJSON:v12 options:v11 userVerificationAvailability:v10];
  }
  v17 = ;
  v18 = v17;
  v19 = [(PublicKeyCredentialManager *)self encodeExtensionsIfNeededForCTAPAssertionCommand:v17 assertionOptions:v8];

  v20 = [[WBSPair alloc] initWithFirst:v12 second:v19];

  return v20;
}

- (id)browserPasskeysForRelyingParty:(id)a3 testOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_group_create();
  v27 = 0;
  v28 = &v27;
  v29 = 0x2810000000;
  v30 = "";
  v31 = 0;
  v9 = +[NSMutableArray array];
  if (v7)
  {
    dispatch_group_enter(v8);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100006880;
    v23[3] = &unk_100031530;
    v26 = &v27;
    v10 = v9;
    v24 = v10;
    v25 = v8;
    [(PublicKeyCredentialManager *)self test_getBrowserPasskeysForRelyingParty:v6 completionHandler:v23];

    v11 = v24;
  }

  else
  {
    v11 = [_WKWebAuthenticationPanel getAllLocalAuthenticatorCredentialsWithRPID:v6];
    os_unfair_lock_lock(v28 + 8);
    v12 = [v11 safari_mapAndFilterObjectsUsingBlock:&stru_100031570];
    v10 = [NSMutableArray arrayWithArray:v12];

    os_unfair_lock_unlock(v28 + 8);
  }

  dispatch_group_enter(v8);
  v32 = v6;
  v13 = [NSArray arrayWithObjects:&v32 count:1];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100006A3C;
  v19[3] = &unk_100031530;
  v22 = &v27;
  v14 = v10;
  v20 = v14;
  v15 = v8;
  v21 = v15;
  [SFSafariCredentialStore getExternalPasskeyCredentialIdentitiesForDomains:v13 completionHandler:v19];

  dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  v16 = v21;
  v17 = v14;

  _Block_object_dispose(&v27, 8);

  return v17;
}

- (BOOL)deletePasskeyForRelyingParty:(id)a3 withCredentialID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [_WKWebAuthenticationPanel getAllLocalAuthenticatorCredentialsWithRPID:v7];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100006E48;
  v18 = &unk_100031598;
  v10 = v8;
  v19 = v10;
  v11 = [v9 safari_containsObjectPassingTest:&v15];
  if (v11)
  {
    [_WKWebAuthenticationPanel deleteLocalAuthenticatorCredentialWithID:v10, v15, v16, v17, v18];
  }

  else
  {
    v12 = sub_10000A644();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100020394();
    }

    v20 = NSLocalizedFailureReasonErrorKey;
    v21 = @"Could not find expected passkey.";
    v13 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1, v15, v16, v17, v18];
    *a5 = [NSError errorWithDomain:ASAuthorizationErrorDomain code:1004 userInfo:v13];
  }

  return v11;
}

- (BOOL)deleteAllPasskeysForRelyingParty:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [_WKWebAuthenticationPanel getAllLocalAuthenticatorCredentialsWithRPID:v5];
  v7 = [v6 count];
  v8 = sub_10000A644();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (!v7)
  {
    if (v9)
    {
      *buf = 138543362;
      v32 = v5;
      v22 = 1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Found no passkeys for %{public}@.", buf, 0xCu);
      goto LABEL_18;
    }

LABEL_17:
    v22 = 1;
    goto LABEL_18;
  }

  if (v9)
  {
    v10 = v8;
    *buf = 134349056;
    v32 = [v6 count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Deleting %{public}ld passkeys.", buf, 0xCu);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    v15 = _WKLocalAuthenticatorCredentialIDKey;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [*(*(&v24 + 1) + 8 * i) safari_dataForKey:{v15, v24}];
        [_WKWebAuthenticationPanel deleteLocalAuthenticatorCredentialWithID:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v13);
  }

  v6 = [_WKWebAuthenticationPanel getAllLocalAuthenticatorCredentialsWithRPID:v5];

  if (![v6 count])
  {
    goto LABEL_17;
  }

  v18 = sub_10000A644();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = v18;
    v20 = [v6 count];
    *buf = 134349056;
    v32 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Could not delete %{public}ld passkeys.", buf, 0xCu);
  }

  v28 = NSLocalizedFailureReasonErrorKey;
  v29 = @"Unable to delete some passkeys.";
  v21 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1, v24];
  *a4 = [NSError errorWithDomain:ASAuthorizationErrorDomain code:1000 userInfo:v21];

  v22 = 0;
LABEL_18:

  return v22;
}

- (void)getExternalPasskeyRequestForWebFrameIdentifier:(id)a3 relyingPartyIdentifier:(id)a4 credentialID:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [[ASGlobalFrameIdentifier alloc] initWithCoreFrameIdentifier:v13];

  v15 = [(PublicKeyCredentialManager *)self _operationForWebFrameIdentifier:v14];

  if (v15)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000072E4;
    v17[3] = &unk_1000315C0;
    v18 = v12;
    [(PublicKeyCredentialManager *)self _getExternalPasskeyRequestForOperation:v15 relyingPartyIdentifier:v10 credentialID:v11 completionHandler:v17];
  }

  else
  {
    v16 = sub_10000A644();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100020418();
    }

    (*(v12 + 2))(v12, 0);
  }
}

- (void)getExternalPasskeyRequestForApplicationIdentifier:(id)a3 relyingPartyIdentifier:(id)a4 credentialID:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(PublicKeyCredentialManager *)self _operationForApplicationIdentifierIfExists:a3];
  if (v13)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000741C;
    v15[3] = &unk_1000315C0;
    v16 = v12;
    [(PublicKeyCredentialManager *)self _getExternalPasskeyRequestForOperation:v13 relyingPartyIdentifier:v10 credentialID:v11 completionHandler:v15];
  }

  else
  {
    v14 = sub_10000A644();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100020418();
    }

    (*(v12 + 2))(v12, 0);
  }
}

- (void)_getExternalPasskeyRequestForOperation:(id)a3 relyingPartyIdentifier:(id)a4 credentialID:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007538;
  v15[3] = &unk_1000315E8;
  v16 = a4;
  v17 = a5;
  v18 = v10;
  v19 = a6;
  v11 = v19;
  v12 = v10;
  v13 = v17;
  v14 = v16;
  [(PublicKeyCredentialManager *)self _queryExternalLoginChoicesForOperation:v12 completionHandler:v15];
}

- (void)completeAssertionWithExternalPasskeyForWebFrameIdentifier:(id)a3 usingCredential:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[ASGlobalFrameIdentifier alloc] initWithCoreFrameIdentifier:v7];

  v9 = [(PublicKeyCredentialManager *)self _operationForWebFrameIdentifier:v8];

  [(PublicKeyCredentialManager *)self _completeAssertionWithExternalPasskeyForOperation:v9 usingCredential:v6];
}

- (void)completeAssertionWithExternalPasskeyForApplicationIdentifier:(id)a3 usingCredential:(id)a4
{
  v6 = a4;
  v7 = [(PublicKeyCredentialManager *)self _operationForApplicationIdentifierIfExists:a3];
  [(PublicKeyCredentialManager *)self _completeAssertionWithExternalPasskeyForOperation:v7 usingCredential:v6];
}

- (void)completeAssertionWithExternalPasskeyForUUID:(id)a3 usingCredential:(id)a4
{
  v6 = a4;
  v7 = [(PublicKeyCredentialManager *)self _operationForUUID:a3];
  [(PublicKeyCredentialManager *)self _completeAssertionWithExternalPasskeyForOperation:v7 usingCredential:v6];
}

- (void)_completeAssertionWithExternalPasskeyForOperation:(id)a3 usingCredential:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 uuid];
  v8 = [NSError safari_errorWithDomain:ASCAuthorizationErrorDomain code:12 privacyPreservingDescription:@"Operation performed with external passkey"];
  [(PublicKeyCredentialManager *)self cancelOperationIfNecessaryWithUUID:v7 overrideError:v8];

  v9 = [v12 clientDataJSONForApps];

  if (v9)
  {
    v10 = [v12 clientDataJSONForApps];
    [v6 setRawClientDataJSON:v10];
  }

  v11 = [v12 delegate];
  [v11 didCompleteAssertionWithCredential:v6 error:0];
}

- (void)_queryExternalLoginChoicesForOperation:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 assertionOptions];

  if (v7)
  {
    v8 = [v5 assertionOptions];
    v9 = [v8 allowedCredentials];
    v10 = [v9 safari_mapObjectsUsingBlock:&stru_100031628];

    v11 = [v10 count] != 0;
    v12 = [v5 relyingPartyIdentifier];
    v21 = v12;
    v13 = [NSArray arrayWithObjects:&v21 count:1];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100007CA4;
    v16[3] = &unk_100031678;
    v20 = v11;
    v17 = v10;
    v18 = v5;
    v19 = v6;
    v14 = v10;
    [SFSafariCredentialStore getExternalPasskeyCredentialIdentitiesForDomains:v13 completionHandler:v16];
  }

  else
  {
    v15 = sub_10000A644();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000204DC();
    }

    (*(v6 + 2))(v6, 0);
  }
}

- (void)getPasskeyAssertionRequestParametersForWebFrameIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[ASGlobalFrameIdentifier alloc] initWithCoreFrameIdentifier:v7];

  v9 = [(PublicKeyCredentialManager *)self _operationForWebFrameIdentifier:v8];

  [(PublicKeyCredentialManager *)self _getPasskeyAssertionRequestParametersForOperation:v9 completionHandler:v6];
}

- (void)getPasskeyAssertionRequestParametersForApplicationIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(PublicKeyCredentialManager *)self _operationForApplicationIdentifierIfExists:a3];
  [(PublicKeyCredentialManager *)self _getPasskeyAssertionRequestParametersForOperation:v7 completionHandler:v6];
}

- (void)getPasskeyAssertionRequestParametersForCABLEWithCompletionHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_operationsLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableDictionary *)self->_uuidToOperation allValues];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 delegate];
        v11 = [v10 isCABLEAuthenticatorRequest];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_operationsLock);
  [(PublicKeyCredentialManager *)self _getPasskeyAssertionRequestParametersForOperation:v6 completionHandler:v4];
}

- (void)getIsPasskeyAssertionRequestRunningForWebFrameIdentifier:(id)a3 orApplicationIdentifier:(id)a4 completionHandler:(id)a5
{
  v11 = a3;
  if (v11)
  {
    v8 = a5;
    v9 = [[ASGlobalFrameIdentifier alloc] initWithCoreFrameIdentifier:v11];
    v10 = [(PublicKeyCredentialManager *)self _operationForWebFrameIdentifier:v9];
    (*(a5 + 2))(v8, v10 != 0);
  }

  else
  {
    v10 = a5;
    v9 = [(PublicKeyCredentialManager *)self _operationForApplicationIdentifierIfExists:a4];
    (*(a5 + 2))(v10, v9 != 0);
  }
}

- (void)_getPasskeyAssertionRequestParametersForOperation:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[SFCredentialProviderExtensionManager sharedManager];
  v8 = [v7 atLeastOneEnabledExtensionSupportsPasskeys];

  if ((v8 & 1) == 0)
  {
    v16 = sub_10000A644();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100020510();
    }

    goto LABEL_10;
  }

  if (!v5)
  {
    v17 = sub_10000A644();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100020578();
    }

LABEL_10:
    v6[2](v6, 0);
    goto LABEL_17;
  }

  v9 = [v5 assertionOptions];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 allowedCredentials];
    v12 = [v11 safari_mapObjectsUsingBlock:&stru_1000316B8];

    v13 = [v5 assertionOptions];
    v14 = [v13 extensions];

    if (v14)
    {
      v15 = [[ASPasskeyAssertionCredentialExtensionInput alloc] initWithCoreExtensions:v14];
    }

    else
    {
      v15 = 0;
    }

    v19 = [ASPasskeyCredentialRequestParameters alloc];
    v20 = [v5 relyingPartyIdentifier];
    v21 = [v10 clientDataHash];
    v22 = [v10 userVerificationPreference];
    v23 = [v19 initWithRelyingPartyIdentifier:v20 clientDataHash:v21 userVerificationPreference:v22 allowedCredentials:v12 extensionInput:v15];

    (v6)[2](v6, v23);
  }

  else
  {
    v18 = sub_10000A644();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100020544();
    }

    v6[2](v6, 0);
  }

LABEL_17:
}

- (id)_asToWKCredentialCreationOptions:(id)a3 forCredentialKind:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 supportedAlgorithmIdentifiers];
  v7 = [v6 safari_mapObjectsUsingBlock:&stru_1000316F8];

  v8 = [v5 relyingPartyIdentifier];
  v9 = [[_WKPublicKeyCredentialRelyingPartyEntity alloc] initWithName:v8];
  [v9 setIdentifier:v8];
  v10 = [_WKPublicKeyCredentialUserEntity alloc];
  v11 = [v5 userName];
  v12 = [v5 userIdentifier];
  v13 = [v5 userDisplayName];
  v14 = [v10 initWithName:v11 identifier:v12 displayName:v13];

  v30 = v7;
  v15 = [[_WKPublicKeyCredentialCreationOptions alloc] initWithRelyingParty:v9 user:v14 publicKeyCredentialParamaters:v7];
  v16 = objc_alloc_init(_WKAuthenticatorSelectionCriteria);
  v17 = v16;
  if (a4 == 1)
  {
    v20 = 1;
    [v16 setAuthenticatorAttachment:1];
    v18 = [v5 attestationPreference];
    if (![v18 length])
    {
      goto LABEL_11;
    }

    v20 = 1;
    if (sub_100008824(v18) != 3)
    {
      goto LABEL_11;
    }

    v19 = 3;
  }

  else
  {
    if (a4 != 2)
    {
      v20 = 0;
      goto LABEL_12;
    }

    [v16 setAuthenticatorAttachment:2];
    v18 = [v5 attestationPreference];
    if (![v18 length])
    {
      v20 = 0;
      goto LABEL_11;
    }

    v19 = sub_100008824(v18);
    v20 = 0;
  }

  [v15 setAttestation:v19];
LABEL_11:

LABEL_12:
  v21 = [v5 residentKeyPreference];
  if (v21 >= 4)
  {
    v23 = sub_10000A644();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1000205AC();
    }

    v22 = 0;
  }

  else
  {
    v22 = qword_1000251E0[v21];
  }

  [v17 setResidentKey:v22];
  v24 = [v5 excludedCredentials];
  if ([v24 count])
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100008948;
    v31[3] = &unk_100031718;
    v32 = v20;
    v25 = [v24 safari_mapObjectsUsingBlock:v31];
    [v15 setExcludeCredentials:v25];
  }

  v26 = [v5 userVerificationPreference];
  if ([v26 length])
  {
    [v17 setUserVerification:sub_100008A30(v26)];
  }

  [v15 setAuthenticatorSelection:v17];
  v27 = [v5 timeout];
  if (v27)
  {
    [v15 setTimeout:v27];
  }

  v28 = [v5 extensionsCBORForWebKit];
  if (v28)
  {
    [v15 setExtensionsCBOR:v28];
  }

  return v15;
}

- (id)_asToWKCredentialAssertionOptions:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_WKPublicKeyCredentialRequestOptions);
  v6 = [v4 relyingPartyIdentifier];
  [v5 setRelyingPartyIdentifier:v6];
  v7 = [v4 credentialKind];
  if (v7 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2 * (v7 == 2);
  }

  [v5 setAuthenticatorAttachment:v8];
  v9 = [(PublicKeyCredentialManager *)self _allowedCredentialsForAssertionOptions:v4];
  if ([v9 count])
  {
    [v5 setAllowCredentials:v9];
  }

  v10 = [v4 userVerificationPreference];
  if ([v10 length])
  {
    [v5 setUserVerification:sub_100008A30(v10)];
  }

  v11 = [v4 timeout];
  if (v11)
  {
    [v5 setTimeout:v11];
  }

  v12 = [v4 extensionsCBORForWebKit];
  if (v12)
  {
    [v5 setExtensionsCBOR:v12];
  }

  return v5;
}

- (id)_allowedCredentialsForAssertionOptions:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = [v3 credentialKind];
  if (v5 == 1)
  {
    v6 = &stru_100031758;
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_6;
    }

    v6 = &stru_100031778;
  }

  v7 = [v3 allowedCredentials];
  v8 = [v7 safari_mapObjectsUsingBlock:v6];
  [v4 addObjectsFromArray:v8];

LABEL_6:

  return v4;
}

- (id)_createCredentialOfKind:(unint64_t)a3 withOptions:(id)a4 authenticatedLAContext:(id)a5 delegate:(id)a6 webFrameIdentifier:(id)a7 parentActivity:(id)a8 isConditionalRegistration:(BOOL)a9 testOptions:(id)a10
{
  v16 = a4;
  v37 = a6;
  v36 = a10;
  v17 = a8;
  v18 = a7;
  v19 = a5;
  [(PublicKeyCredentialManager *)self computeClientDataIfNeededForCreationOptions:v16];
  v20 = [v16 relyingPartyIdentifier];
  v21 = [(PublicKeyCredentialManager *)self _asToWKCredentialCreationOptions:v16 forCredentialKind:a3];
  v22 = [v21 authenticatorSelection];
  v23 = -[PublicKeyCredentialManager _newOperationWithRelyingPartyIdentifier:delegate:sourceApplicationIdentifier:webFrameIdentifier:shouldRequireUserVerification:parentActivity:testOptions:](self, "_newOperationWithRelyingPartyIdentifier:delegate:sourceApplicationIdentifier:webFrameIdentifier:shouldRequireUserVerification:parentActivity:testOptions:", v20, v37, 0, v18, [v22 userVerification] == 0, v17, v36);

  [v23 setAuthenticatedLAContext:v19];
  [v23 setCreationOptions:v16];
  v24 = [v16 clientDataJSON];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100009048;
  v49[3] = &unk_1000317C0;
  v25 = v23;
  v51 = v37;
  v52 = a3;
  v50 = v25;
  v38 = v37;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000093F0;
  block[3] = &unk_100031810;
  block[4] = self;
  v40 = v25;
  v48 = a9;
  v41 = v36;
  v42 = v16;
  v43 = v21;
  v44 = v24;
  v46 = objc_retainBlock(v49);
  v47 = a3;
  v45 = v20;
  v26 = v20;
  v27 = v46;
  v28 = v24;
  v29 = v21;
  v30 = v16;
  v31 = v36;
  v32 = v25;
  dispatch_async(&_dispatch_main_q, block);
  v33 = [v32 uuid];

  return v33;
}

- (id)_newPanelForOperation:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_operationsLock);
  v5 = objc_alloc_init(_WKWebAuthenticationPanel);
  [v5 setDelegate:self];
  [v4 setPanel:v5];
  v6 = [v4 activity];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000098B0;
  v15 = &unk_100031290;
  v7 = v5;
  v16 = v7;
  v17 = v4;
  v8 = v4;
  os_activity_apply(v6, &v12);

  [(NSMapTable *)self->_panelToWeakOperation setObject:v8 forKey:v7, v12, v13, v14, v15];
  os_unfair_lock_unlock(&self->_operationsLock);
  v9 = v17;
  v10 = v7;

  return v10;
}

- (void)_tearDownOperationWithUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_operationsLock);
  v5 = [(NSMutableDictionary *)self->_uuidToOperation objectForKeyedSubscript:v4];
  v6 = [v5 activity];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009D34;
  block[3] = &unk_100031148;
  v9 = v4;
  v7 = v4;
  os_activity_apply(v6, block);

  [v5 tearDownIfNecessary];
  [(NSMutableDictionary *)self->_uuidToOperation setObject:0 forKeyedSubscript:v7];
  os_unfair_lock_unlock(&self->_operationsLock);
}

- (id)_operationForPanelIfExists:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_operationsLock);
  v5 = [(NSMapTable *)self->_panelToWeakOperation objectForKey:v4];

  os_unfair_lock_unlock(&self->_operationsLock);

  return v5;
}

- (id)_operationForPanel:(id)a3
{
  v4 = a3;
  v5 = [(PublicKeyCredentialManager *)self _operationForPanelIfExists:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = sub_10000A644();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_100020684();
    }
  }

  return v6;
}

- (id)_operationForUUIDIfExists:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_operationsLock);
  v5 = [(NSMutableDictionary *)self->_uuidToOperation objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_operationsLock);

  return v5;
}

- (id)_operationForUUID:(id)a3
{
  v4 = a3;
  v5 = [(PublicKeyCredentialManager *)self _operationForUUIDIfExists:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = sub_10000A644();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1000206EC();
    }
  }

  return v6;
}

- (id)_operationForApplicationIdentifierIfExists:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_operationsLock);
  v5 = [(NSMapTable *)self->_applicationIdentifierToWeakOperation objectForKey:v4];

  os_unfair_lock_unlock(&self->_operationsLock);

  return v5;
}

- (id)_operationForWebFrameIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_operationsLock);
  v5 = [(NSMapTable *)self->_webFrameIdentifierToWeakOperationForBrowser objectForKey:v4];

  os_unfair_lock_unlock(&self->_operationsLock);

  return v5;
}

- (void)computeClientDataIfNeededForCreationOptions:(id)a3
{
  v11 = a3;
  v3 = [v11 clientDataJSON];
  if (v3)
  {
    goto LABEL_2;
  }

  v4 = [v11 clientDataHash];

  if (!v4)
  {
    v3 = [v11 challenge];
    v8 = [v11 relyingPartyIdentifier];
    v9 = [@"https://" stringByAppendingString:v8];
    v10 = [_WKWebAuthenticationPanel getClientDataJSONForAuthenticationType:0 challenge:v3 origin:v9];
    [v11 setClientDataJSON:v10];

LABEL_2:
  }

  v5 = [v11 clientDataHash];

  if (!v5)
  {
    v6 = [NSMutableData dataWithLength:32];
    v7 = [v11 clientDataJSON];
    CC_SHA256([v7 bytes], objc_msgSend(v7, "length"), objc_msgSend(v6, "mutableBytes"));
    [v11 setClientDataHash:v6];
  }
}

- (void)computeClientDataIfNeededForAssertionOptions:(id)a3
{
  v11 = a3;
  v3 = [v11 clientDataJSON];
  if (v3)
  {
    goto LABEL_2;
  }

  v4 = [v11 clientDataHash];

  if (!v4)
  {
    v3 = [v11 challenge];
    v8 = [v11 relyingPartyIdentifier];
    v9 = [@"https://" stringByAppendingString:v8];
    v10 = [_WKWebAuthenticationPanel getClientDataJSONForAuthenticationType:1 challenge:v3 origin:v9];
    [v11 setClientDataJSON:v10];

LABEL_2:
  }

  v5 = [v11 clientDataHash];

  if (!v5)
  {
    v6 = [NSMutableData dataWithLength:32];
    v7 = [v11 clientDataJSON];
    CC_SHA256([v7 bytes], objc_msgSend(v7, "length"), objc_msgSend(v6, "mutableBytes"));
    [v11 setClientDataHash:v6];
  }
}

- (id)internalErrorToWKErrorIfApplicable:(id)a3
{
  v3 = a3;
  if ([v3 safari_matchesErrorDomain:ASCAuthorizationErrorDomain andCode:7])
  {
    v7 = NSLocalizedDescriptionKey;
    v8 = @"At least one credential matches an entry of the excludeCredentials list in the platform attached authenticator.";
    v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v5 = [NSError errorWithDomain:WKErrorDomain code:8 userInfo:v4];
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (void)test_makeCredentialWithMediationRequirement:(int64_t)a3 clientDataHash:(NSData *)a4 options:(_WKPublicKeyCredentialCreationOptions *)a5 testOptions:(_TtC26AuthenticationServicesCore31ASCCredentialRequestTestOptions *)a6 clientDataJSON:(NSData *)a7 completionHandler:(id)a8
{
  v15 = sub_10000D1D4(&qword_100035A70, &qword_100025450);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v29 - v17;
  v19 = _Block_copy(a8);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a6;
  v20[6] = a7;
  v20[7] = v19;
  v20[8] = self;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_100025538;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_100025540;
  v23[5] = v22;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = self;
  sub_100013898(0, 0, v18, &unk_100025548, v23);
}

- (void)test_getAssertionWithMediationRequirement:(int64_t)a3 clientDataJSON:(NSData *)a4 options:(_WKPublicKeyCredentialRequestOptions *)a5 operation:(PublicKeyCredentialOperation *)a6 completionHandler:(id)a7
{
  v13 = sub_10000D1D4(&qword_100035A70, &qword_100025450);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v26 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = v17;
  v18[7] = self;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1000254C8;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_1000254D0;
  v21[5] = v20;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = self;
  sub_100013898(0, 0, v16, &unk_1000254D8, v21);
}

- (void)test_getBrowserPasskeysForRelyingParty:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_10000D1D4(&qword_100035A70, &qword_100025450);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100025460;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100025470;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_100013898(0, 0, v10, &unk_100025480, v15);
}

- (BOOL)passkeyExistsForRelyingParty:(id)a3 username:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  LOBYTE(v8) = PublicKeyCredentialManager.passkeyExists(relyingParty:username:)(v12, v13);

  return v8 & 1;
}

+ (id)asTransportsFromWKTransports:(id)a3
{
  sub_10001F88C(0, &qword_100035A28, NSNumber_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10001E4F4(v3);

  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

+ (id)wkSecurityKeyTransportsFromASTransports:(id)a3
{
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10001E990(v3);

  sub_10001F88C(0, &qword_100035A28, NSNumber_ptr);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)computeUserVerificationForAssertionOptions:(id)a3
{
  sub_10001F88C(0, &qword_100035A50, ASCPublicKeyCredentialAssertionOptions_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_100010EA8(v4);
}

@end