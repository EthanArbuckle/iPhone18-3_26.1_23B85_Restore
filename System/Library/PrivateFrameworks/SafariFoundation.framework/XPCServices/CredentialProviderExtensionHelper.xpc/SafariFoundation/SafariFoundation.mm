void sub_1000011C4(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001270;
  v5[3] = &unk_10000C300;
  v3 = *(a1 + 40);
  v6 = *(a1 + 32);
  v4 = [a2 safari_filterObjectsUsingBlock:v5];
  (*(v3 + 16))(v3, v4);
}

id sub_100001270(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001310;
  v8[3] = &unk_10000C2D8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 safari_containsObjectPassingTest:v8];

  return v6;
}

id sub_100001310(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 serviceIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void sub_100001AD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_group_create();
  v19 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v18 = *v27;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(&v26 + 1) + 8 * v7) sf_bundleIdentifierForContainingApp];
        dispatch_group_enter(v4);
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        v11 = *(a1 + 48);
        v13 = *(a1 + 64);
        v12 = *(a1 + 72);
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100001D48;
        v23[3] = &unk_10000C350;
        v24 = v19;
        v25 = v4;
        [v9 _fetchCredentialIdentitiesMatchingCriteria:v10 credentialIdentityType:v13 forExtension:v8 connection:v11 accessType:v12 completion:v23];

        v7 = v7 + 1;
      }

      while (v6 != v7);
      v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  v14 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001D88;
  block[3] = &unk_10000C378;
  v15 = *(a1 + 56);
  v21 = v19;
  v22 = v15;
  v16 = v19;
  dispatch_group_notify(v4, v14, block);
}

void sub_100001D48(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addObjectsFromArray:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void sub_100001F04(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = *(a1 + 56);
  if (v4 == 1)
  {
    v5 = +[SFCredentialProviderExtensionManager sharedManager];
    v6 = [v5 extensionSupportsPasswords:v3];

    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }

    v4 = *(a1 + 56);
  }

  if (v4 == 2)
  {
    v7 = +[SFCredentialProviderExtensionManager sharedManager];
    v8 = [v7 extensionSupportsPasskeys:v3];

    if (v8)
    {
      v4 = *(a1 + 56);
      goto LABEL_8;
    }

LABEL_11:
    (*(*(a1 + 48) + 16))();
    goto LABEL_12;
  }

LABEL_8:
  if (v4 == 4)
  {
    v9 = +[SFCredentialProviderExtensionManager sharedManager];
    v10 = [v9 extensionSupportsOneTimeCodes:v3];

    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v11 = [v3 sf_bundleIdentifierForContainingApp];
  v12 = SFCredentialIdentityStoreIdentifierCreateWithApplicationBundleIdentifier();
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000020CC;
  v18[3] = &unk_10000C3C8;
  v19 = v11;
  v20 = v12;
  v15 = *(a1 + 56);
  v21 = *(a1 + 48);
  v16 = v12;
  v17 = v11;
  [v13 _fetchCredentialIdentitiesMatchingCriteria:v14 credentialIdentityType:v15 fromStoreWithIdentifier:v16 forExtension:v3 completion:v18];

LABEL_12:
}

void sub_1000020CC(void *a1, void *a2)
{
  v3 = a2;
  if (a1[4])
  {
    v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:a1[4] allowPlaceholder:0 error:0];
    v5 = [v4 localizedName];
  }

  else
  {
    v5 = 0;
  }

  v6 = [[SFCredentialProviderExtensionState alloc] initWithEnabledState:1 supportsIncrementalUpdates:0 localizedDisplayName:v5 credentialIdentityStoreIdentifier:a1[5] providerBundleID:a1[4]];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) setOwningExtensionState:{v6, v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  (*(a1[6] + 16))();
}

void sub_10000237C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000024AC;
    v9[3] = &unk_10000C518;
    v4 = *(a1 + 56);
    v10 = v3;
    v5 = *(a1 + 32);
    v13 = *(a1 + 64);
    v6 = *(a1 + 40);
    *&v7 = *(a1 + 48);
    *(&v7 + 1) = v4;
    *&v8 = v5;
    *(&v8 + 1) = v6;
    v11 = v8;
    v12 = v7;
    [v10 openAndCheckIntegrity:0 createIfNeeded:0 fallBackToMemoryStoreIfError:0 lockingPolicy:0 completionHandler:v9];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_1000024AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = sub_100005438();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "The identity store database could not be opened", buf, 2u);
      }
    }

    else
    {
      v8 = sub_100005438();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10000585C(a1, v8, a2);
      }
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if ([*(a1 + 40) matchAll])
    {
      v5 = *(a1 + 32);
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_10000293C;
      v47[3] = &unk_10000C438;
      v6 = *(a1 + 64);
      v49 = *(a1 + 72);
      v48 = v6;
      [v5 fetchCredentialIdentitiesWithCompletion:v47];
      v7 = v48;
    }

    else
    {
      *buf = 0;
      v42 = buf;
      v43 = 0x3032000000;
      v44 = sub_100002A60;
      v45 = sub_100002A70;
      v46 = 0;
      v39[0] = 0;
      v39[1] = v39;
      v39[2] = 0x3032000000;
      v39[3] = sub_100002A60;
      v39[4] = sub_100002A70;
      v40 = 0;
      v37[0] = 0;
      v37[1] = v37;
      v37[2] = 0x3032000000;
      v37[3] = sub_100002A60;
      v37[4] = sub_100002A70;
      v38 = 0;
      v9 = dispatch_group_create();
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100002A78;
      v31[3] = &unk_10000C4A0;
      v34 = buf;
      v35 = v39;
      v32 = *(a1 + 48);
      v36 = v37;
      v10 = v9;
      v33 = v10;
      v11 = objc_retainBlock(v31);
      if (*(a1 + 72))
      {
        v12 = +[SFCredentialProviderExtensionManager sharedManager];
        v13 = [v12 extensionSupportsPasswords:*(a1 + 48)];

        if (v13)
        {
          dispatch_group_enter(v10);
          v14 = *(a1 + 32);
          v15 = [*(a1 + 40) domains];
          [v14 fetchPasswordCredentialIdentitiesMatchingDomains:v15 completion:v11];
        }
      }

      if ((*(a1 + 72) & 2) != 0)
      {
        v16 = +[SFCredentialProviderExtensionManager sharedManager];
        v17 = [v16 extensionSupportsPasskeys:*(a1 + 48)];

        if (v17)
        {
          dispatch_group_enter(v10);
          v18 = *(a1 + 32);
          v19 = [*(a1 + 40) domains];
          [v18 fetchPasskeyCredentialIdentitiesMatchingDomains:v19 completion:v11];
        }
      }

      if ((*(a1 + 72) & 4) != 0)
      {
        v20 = +[SFCredentialProviderExtensionManager sharedManager];
        v21 = [v20 extensionSupportsOneTimeCodes:*(a1 + 48)];

        if (v21)
        {
          dispatch_group_enter(v10);
          v22 = *(a1 + 32);
          v23 = [*(a1 + 40) domains];
          [v22 fetchOneTimeCodeCredentialIdentitiesMatchingDomains:v23 completion:v11];
        }
      }

      v24 = *(*(a1 + 56) + 16);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100002BA0;
      v25[3] = &unk_10000C4F0;
      v26 = *(a1 + 32);
      v28 = buf;
      v29 = v39;
      v30 = v37;
      v27 = *(a1 + 64);
      dispatch_group_notify(v10, v24, v25);

      _Block_object_dispose(v37, 8);
      _Block_object_dispose(v39, 8);

      _Block_object_dispose(buf, 8);
      v7 = v46;
    }
  }
}

void sub_10000290C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10000293C(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000029DC;
  v4[3] = &unk_10000C410;
  v4[4] = *(a1 + 40);
  v3 = [a2 safari_filterObjectsUsingBlock:v4];
  (*(*(a1 + 32) + 16))();
}

uint64_t sub_1000029DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    if ([v3 type] == 1)
    {
      goto LABEL_9;
    }

    v5 = *(a1 + 32);
  }

  if ((v5 & 2) != 0)
  {
    if ([v4 type] == 2)
    {
      goto LABEL_9;
    }

    v5 = *(a1 + 32);
  }

  if ((v5 & 4) == 0 || [v4 type] != 4)
  {
    v6 = 0;
    goto LABEL_11;
  }

LABEL_9:
  v6 = 1;
LABEL_11:

  return v6;
}

uint64_t sub_100002A60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002A78(uint64_t a1, void *a2)
{
  obj = [a2 safari_filterObjectsUsingBlock:&stru_10000C478];
  if ([obj count])
  {
    v3 = [obj firstObject];
    v4 = [v3 type];

    if (v4 == 1)
    {
      v5 = 48;
    }

    else if (v4 == 4)
    {
      v6 = +[SFCredentialProviderExtensionManager sharedManager];
      v7 = [v6 extensionSupportsOneTimeCodes:*(a1 + 32)];

      if (!v7)
      {
        goto LABEL_10;
      }

      v5 = 64;
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_10;
      }

      v5 = 56;
    }

    objc_storeStrong((*(*(a1 + v5) + 8) + 40), obj);
  }

LABEL_10:
  dispatch_group_leave(*(a1 + 40));
}

BOOL sub_100002B68(id a1, SFCredentialIdentity *a2)
{
  v2 = [(SFCredentialIdentity *)a2 site];
  v3 = v2 != 0;

  return v3;
}

void sub_100002BA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002C40;
  v4[3] = &unk_10000C4C8;
  v6 = *(a1 + 56);
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 closeWithCompletionHandler:v4];
}

void sub_100002C40(void *a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  if ([*(*(a1[5] + 8) + 40) count])
  {
    [v2 addObjectsFromArray:*(*(a1[5] + 8) + 40)];
  }

  if ([*(*(a1[6] + 8) + 40) count])
  {
    [v2 addObjectsFromArray:*(*(a1[6] + 8) + 40)];
  }

  if ([*(*(a1[7] + 8) + 40) count])
  {
    [v2 addObjectsFromArray:*(*(a1[7] + 8) + 40)];
  }

  (*(a1[4] + 16))();
}

uint64_t sub_100002E9C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_100002EB4()
{
  v0 = [NSString stringWithFormat:@"The calling process is missing the entitlement %@", SFCredentialProviderDeveloperEntitlement];
  v1 = sub_100005330(v0);

  return v1;
}

void sub_100002F28(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002FE0;
  v5[3] = &unk_10000C5E0;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v4 _prepareAndOpenCredentialIdentityStoreForCaller:a2 createIfNeeded:1 completion:v5];
}

void sub_100002FE0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(WBSScopeExitHandler);
  [v10 setHandler:v9];

  if (v7)
  {
    v11 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003114;
    v12[3] = &unk_10000C5B8;
    v13 = v7;
    v15 = *(a1 + 40);
    v14 = v10;
    [v13 replaceCredentialIdentitiesWithIdentities:v11 completion:v12];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100003114(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000031BC;
  v4[3] = &unk_10000C590;
  v7 = a2;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  [v3 closeWithCompletionHandler:v4];
}

void sub_1000031BC(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 0;
  }

  else
  {
    v2 = [NSError errorWithDomain:SFExternalCredentialIdentityStoreErrorDomain code:0 userInfo:0];
  }

  v3 = *(a1 + 48);
  v4 = v2;
  (*(*(a1 + 40) + 16))();
}

void sub_1000032E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 associatedExtensionEnabled])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000033D4;
    v7[3] = &unk_10000C5E0;
    v4 = *(a1 + 32);
    v9 = *(a1 + 40);
    v8 = v3;
    [v4 _prepareAndOpenCredentialIdentityStoreForCaller:v8 createIfNeeded:0 completion:v7];
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = +[SFCredentialProviderExtensionState credentialProviderExtensionWithDisabledState];
    (*(v5 + 16))(v5, v6);
  }
}

void sub_1000033D4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = objc_alloc_init(WBSScopeExitHandler);
  [v8 setHandler:v7];

  if (v6)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100003534;
    v11[3] = &unk_10000C658;
    v12 = v6;
    v15 = *(a1 + 40);
    v13 = *(a1 + 32);
    v14 = v8;
    [v12 fetchStoreEmptyStateWithCompletion:v11];
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = [[SFCredentialProviderExtensionState alloc] initWithEnabledState:objc_msgSend(*(a1 + 32) supportsIncrementalUpdates:{"associatedExtensionEnabled"), 0}];
    (*(v9 + 16))(v9, v10);
  }
}

void sub_100003534(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000035FC;
  v5[3] = &unk_10000C630;
  v8 = *(a1 + 56);
  v6 = *(a1 + 40);
  v9 = a2;
  v7 = *(a1 + 48);
  [v4 closeWithCompletionHandler:v5];
}

void sub_1000035FC(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [[SFCredentialProviderExtensionState alloc] initWithEnabledState:objc_msgSend(*(a1 + 32) supportsIncrementalUpdates:{"associatedExtensionEnabled"), (*(a1 + 56) & 1) == 0}];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_10000380C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100003824(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000038DC;
  v5[3] = &unk_10000C5E0;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v4 _prepareAndOpenCredentialIdentityStoreForCaller:a2 createIfNeeded:1 completion:v5];
}

void sub_1000038DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(WBSScopeExitHandler);
  [v10 setHandler:v9];

  if (v7)
  {
    v11 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003A10;
    v12[3] = &unk_10000C5B8;
    v13 = v7;
    v15 = *(a1 + 40);
    v14 = v10;
    [v13 saveCredentialIdentities:v11 completion:v12];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100003A10(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003AB8;
  v4[3] = &unk_10000C590;
  v7 = a2;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  [v3 closeWithCompletionHandler:v4];
}

void sub_100003AB8(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 0;
  }

  else
  {
    v2 = [NSError errorWithDomain:SFExternalCredentialIdentityStoreErrorDomain code:0 userInfo:0];
  }

  v3 = *(a1 + 48);
  v4 = v2;
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100003CC4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100003CDC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003D94;
  v5[3] = &unk_10000C5E0;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v4 _prepareAndOpenCredentialIdentityStoreForCaller:a2 createIfNeeded:1 completion:v5];
}

void sub_100003D94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(WBSScopeExitHandler);
  [v10 setHandler:v9];

  if (v7)
  {
    v11 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003EC8;
    v12[3] = &unk_10000C5B8;
    v13 = v7;
    v15 = *(a1 + 40);
    v14 = v10;
    [v13 removeCredentialIdentities:v11 completion:v12];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100003EC8(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003F70;
  v4[3] = &unk_10000C590;
  v7 = a2;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  [v3 closeWithCompletionHandler:v4];
}

void sub_100003F70(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 0;
  }

  else
  {
    v2 = [NSError errorWithDomain:SFExternalCredentialIdentityStoreErrorDomain code:0 userInfo:0];
  }

  v3 = *(a1 + 48);
  v4 = v2;
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_10000415C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100004174(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004208;
  v4[3] = &unk_10000C6A8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 _prepareAndOpenCredentialIdentityStoreForCaller:a2 createIfNeeded:1 completion:v4];
}

void sub_100004208(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(WBSScopeExitHandler);
  [v10 setHandler:v9];

  if (v7)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100004334;
    v11[3] = &unk_10000C5B8;
    v12 = v7;
    v14 = *(a1 + 32);
    v13 = v10;
    [v12 removeAllCredentialIdentitiesWithCompletion:v11];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100004334(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000043DC;
  v4[3] = &unk_10000C590;
  v7 = a2;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  [v3 closeWithCompletionHandler:v4];
}

void sub_1000043DC(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 0;
  }

  else
  {
    v2 = [NSError errorWithDomain:SFExternalCredentialIdentityStoreErrorDomain code:0 userInfo:0];
  }

  v3 = *(a1 + 48);
  v4 = v2;
  (*(*(a1 + 40) + 16))();
}

void sub_1000046D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 48);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100004800;
    v7[3] = &unk_10000C748;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v8 = v3;
    [v8 openAndCheckIntegrity:0 createIfNeeded:v4 fallBackToMemoryStoreIfError:0 lockingPolicy:0 completionHandler:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [NSError errorWithDomain:SFExternalCredentialIdentityStoreErrorDomain code:0 userInfo:0];
    (*(v5 + 16))(v5, 0, v6, *(a1 + 40));
  }
}

void sub_100004800(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = sub_100005438();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000059F0();
      }

      v5 = a1[5];
      v6 = SFExternalCredentialIdentityStoreErrorDomain;
      v7 = 0;
    }

    else
    {
      v12 = sub_100005438();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100005A24(a1, v12, a2);
      }

      v7 = 2 * (a2 == 2);
      v5 = a1[5];
      v6 = SFExternalCredentialIdentityStoreErrorDomain;
    }

    v13 = [NSError errorWithDomain:v6 code:v7 userInfo:0];
    (*(v5 + 16))(v5, 0, v13, a1[6]);
  }

  else
  {
    v9 = a1[4];
    v8 = a1[5];
    v10 = a1[6];
    v11 = *(a1[5] + 16);

    v11();
  }
}

void sub_100004BD8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[SFCredentialProviderExtensionManager sharedManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100004CB0;
  v8[3] = &unk_10000C798;
  v9 = v5;
  v10 = *(a1 + 32);
  v11 = a2;
  v7 = v5;
  [v6 getExtensionWithBundleID:v7 completion:v8];
}

void sub_100004CB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  v5 = *(a1 + 32);
  v10 = v3;
  if (v3 && v5)
  {
    v6 = [v3 sf_bundleIdentifierForContainingApp];
    v4 = [v6 isEqualToString:*(a1 + 32)];

    v5 = *(a1 + 32);
  }

  if (v5)
  {
    v7 = SFCredentialIdentityStoreIdentifierCreateWithApplicationBundleIdentifier();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);
  v9 = [XPCCallerInformation callerInformationWithProcessIdentifier:*(a1 + 48) credentialIdentityStoreIdentifier:v7 associatedExtensionEnabled:v4];
  (*(v8 + 16))(v8, v9);
}

void sub_100004D8C(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKey:BKSApplicationStateDisplayIDKey];
  v3 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
}

uint64_t sub_100004F74(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_100005330(void *a1)
{
  v1 = SFExternalCredentialIdentityStoreErrorDomain;
  v6 = NSLocalizedFailureReasonErrorKey;
  v7 = a1;
  v2 = a1;
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = [NSError errorWithDomain:v1 code:0 userInfo:v3];

  return v4;
}

void sub_100005410(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_100005438()
{
  if (qword_100010BC8 != -1)
  {
    sub_100005B18();
  }

  return qword_100010BC0;
}

void sub_100005470(id a1)
{
  qword_100010BC0 = os_log_create("com.apple.SafariShared", "Credentials");

  _objc_release_x1();
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(ServiceDelegate);
  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:v4];
  objc_autoreleasePoolPop(v3);
  [v5 resume];

  return 0;
}

void sub_10000585C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 databaseURL];
  v7 = 134218242;
  v8 = a3;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to open identities store. Error: %ld URL: %{public}@", &v7, 0x16u);
}

void sub_100005A24(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 databaseURL];
  v7 = 134218242;
  v8 = a3;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to open identities store. Error: %ld URL: %{public}@", &v7, 0x16u);
}