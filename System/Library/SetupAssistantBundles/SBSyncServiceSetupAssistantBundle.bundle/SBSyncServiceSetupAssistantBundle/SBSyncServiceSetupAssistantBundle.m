void sub_F14(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:IDSAuthenticationServerResponseKeyAppleID];
  [*(a1 + 32) objectForKey:IDSAuthenticationServerResponseKeyAuthToken];
  v3 = [*(a1 + 32) objectForKey:IDSAuthenticationServerResponseKeyRealmUserID];
  v4 = [*(a1 + 32) objectForKey:IDSAuthenticationServerResponseKeyProfileID];
  [*(a1 + 32) objectForKey:IDSAuthenticationServerResponseKeyStatus];
  [*(a1 + 32) objectForKey:IDSAuthenticationServerResponseKeyHandles];
  if ([v3 length])
  {
    v4 = v3;
  }

  if (v2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v18 = v2;
      v19 = 2048;
      v20 = v4;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Missing either the appleID [%p] or profileID[%p]", buf, 0x16u);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = IDSParseAuthDictionary();
    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = [v8 objectForKey:IDSAuthenticationDictionaryKeyAppleID];
    if (v10)
    {
      CFDictionarySetValue(v9, kIDSServiceDefaultsAppleIDKey, v10);
    }

    CFDictionarySetValue(v9, kIDSServiceDefaultsAuthorizationIDKey, v4);
    v11 = [objc_msgSend(v8 objectForKey:{IDSAuthenticationDictionaryKeySelfHandle), "objectForKey:", @"uri"}];
    v12 = [v11 length];
    if (v11 && v12)
    {
      CFDictionarySetValue(v9, kIDSServiceDefaultsSelfHandleKey, v11);
    }

    v13 = objc_alloc_init(NSMutableArray);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_122C;
    v16[3] = &unk_4120;
    v16[4] = v13;
    v14 = [objc_msgSend(v8 objectForKey:{IDSAuthenticationDictionaryKeyHandles), "__imArrayByApplyingBlock:", v16}];
    if ([v13 count])
    {
      v15 = [v13 copy];
      if (v15)
      {
        CFDictionarySetValue(v9, kIDSServiceDefaultsInvisibleAliasesKey, v15);
      }
    }

    if ([v14 count])
    {
      if (v14)
      {
        CFDictionarySetValue(v9, kIDSServiceDefaultsVettedAliasesKey, v14);
      }
    }

    IDSiCloudSignIn();
  }
}

id sub_122C(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(a2 objectForKey:{@"uri", "_stripFZIDPrefix"}];
  v5 = [objc_msgSend(a2 objectForKey:{@"status", "intValue"}];
  v6 = [a2 objectForKey:@"is-user-visible"];
  if (v6 && ([v6 BOOLValue] & 1) == 0)
  {
    [*(a1 + 32) addObject:v4];
  }

  if (v5 == 5051)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_12BC(uint64_t a1)
{
  v2 = +[IMRGLog registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "... dispatching completion", buf, 2u);
  }

  if (*(*(a1 + 32) + 8))
  {
    v3 = +[IMRGLog registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "... not dispatching completion, cancelled", v4, 2u);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}