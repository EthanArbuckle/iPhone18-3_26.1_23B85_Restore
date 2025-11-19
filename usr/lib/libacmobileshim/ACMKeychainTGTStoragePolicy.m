@interface ACMKeychainTGTStoragePolicy
- (ACFKeychainManagerProtocol)keychainManager;
- (BOOL)performRemoveTokenWithPrincipal:(id)a3 service:(id)a4;
- (BOOL)performStoreToken:(id)a3 withService:(id)a4;
- (BOOL)removeTokenWithPrincipal:(id)a3;
- (BOOL)storeToken:(id)a3;
- (BOOL)updateToken:(id)a3;
- (id)allTokensWithPrincipal:(id)a3;
- (id)allTokensWithPrincipal:(id)a3 service:(id)a4;
- (id)dictionaryWithSSOToken:(id)a3;
- (id)searchItemWithInfo:(id)a3;
- (id)searchTokenWithPrincipal:(id)a3;
- (id)ssoTokenWithKeychainInfo:(id)a3 realm:(id)a4;
- (id)tokenDataWithDictionary:(id)a3;
- (id)tokenDictionaryWithData:(id)a3;
- (int)storeItemWithInfo:(id)a3;
@end

@implementation ACMKeychainTGTStoragePolicy

- (ACFKeychainManagerProtocol)keychainManager
{
  v2 = +[ACFComponents components];

  return [v2 keychainManager];
}

- (BOOL)storeToken:(id)a3
{
  v5 = [(ACMKeychainTGTStoragePolicy *)self service];

  return [(ACMKeychainTGTStoragePolicy *)self performStoreToken:a3 withService:v5];
}

- (BOOL)updateToken:(id)a3
{
  v5 = [(ACMKeychainTGTStoragePolicy *)self service];

  return [(ACMKeychainTGTStoragePolicy *)self performStoreToken:a3 withService:v5];
}

- (id)searchTokenWithPrincipal:(id)a3
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = [(ACMKeychainTGTStoragePolicy *)self allTokensWithPrincipal:a3];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v12;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v11 + 1) + 8 * i);
      if (!v6 || [objc_msgSend(v6 "creationDate")] == -1)
      {
        v6 = v9;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v5);
  return v6;
}

- (id)allTokensWithPrincipal:(id)a3
{
  v5 = [(ACMKeychainTGTStoragePolicy *)self service];

  return [(ACMKeychainTGTStoragePolicy *)self allTokensWithPrincipal:a3 service:v5];
}

- (id)ssoTokenWithKeychainInfo:(id)a3 realm:(id)a4
{
  v5 = a3;
  [a3 account];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([(ACMSSOToken *)v5 generic], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([(ACMToken *)v5 creationDate], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([(ACMSSOToken *)v5 service], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (qword_2A1EB8F60)
    {
      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACMKeychainTGTStoragePolicy ssoTokenWithKeychainInfo:realm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 68, 0, "Keychain item has unexpected data type");
      }

      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        [(ACMSSOToken *)v5 account];
        v15 = objc_opt_class();
        ACFLog(3, "[ACMKeychainTGTStoragePolicy ssoTokenWithKeychainInfo:realm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 69, 0, "Account of class %@: %@", v15, [(ACMSSOToken *)v5 account]);
      }

      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        [(ACMToken *)v5 creationDate];
        v16 = objc_opt_class();
        ACFLog(3, "[ACMKeychainTGTStoragePolicy ssoTokenWithKeychainInfo:realm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 70, 0, "Creation Date of class %@: %@", v16, [(ACMToken *)v5 creationDate]);
      }

      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        [(ACMSSOToken *)v5 service];
        v17 = objc_opt_class();
        ACFLog(3, "[ACMKeychainTGTStoragePolicy ssoTokenWithKeychainInfo:realm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 71, 0, "Service of class %@: %@", v17, [(ACMSSOToken *)v5 service]);
      }

      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        [(ACMSSOToken *)v5 generic];
        v18 = objc_opt_class();
        ACFLog(3, "[ACMKeychainTGTStoragePolicy ssoTokenWithKeychainInfo:realm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 72, 0, "Generic of class %@", v18);
      }
    }

    return 0;
  }

  if (!v5)
  {
    return v5;
  }

  if (a4 && ![(NSString *)[(ACFPrincipal *)[(ACMToken *)v5 principal] realm] isEqualToString:a4])
  {
    return 0;
  }

  v7 = [(ACMKeychainTGTStoragePolicy *)self tokenDictionaryWithData:[(ACMSSOToken *)v5 generic]];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [(ACMToken *)v5 creationDate];
  v10 = [v8 objectForKey:@"d"];
  if (v10)
  {
    v11 = MEMORY[0x29EDB8DB0];
    [v10 doubleValue];
    v9 = [v11 dateWithTimeIntervalSince1970:v12 / 1000.0];
  }

  v5 = [(ACMToken *)ACMSSOToken tokenWithPrincipal:[(ACMToken *)v5 principal] creationDate:v9 tokenData:0];
  v13 = MEMORY[0x29EDB8DB0];
  [objc_msgSend(v8 objectForKey:{@"e", "doubleValue"}];
  -[ACMToken setExpirationDate:](v5, "setExpirationDate:", [v13 dateWithTimeIntervalSince1970:v14 / 1000.0]);
  -[ACMToken setNonce:](v5, "setNonce:", [v8 objectForKey:@"o"]);
  -[ACMSSOToken setSessionToken:](v5, "setSessionToken:", [v8 objectForKey:@"q"]);
  -[ACMSSOToken setRecentAuthenticationDate:](v5, "setRecentAuthenticationDate:", [v8 objectForKey:@"ACMSSOKeyRecentAuthenticationDate"]);
  -[ACMSSOToken setRecentUnlockDate:](v5, "setRecentUnlockDate:", [v8 objectForKey:@"ACMSSOKeyRecentUnlockDate"]);
  -[ACMSSOToken setPersonID:](v5, "setPersonID:", [v8 objectForKey:@"pid"]);
  if (![(ACMSSOToken *)v5 recentUnlockDate])
  {
    [(ACMSSOToken *)v5 setRecentUnlockDate:[(ACMSSOToken *)v5 recentAuthenticationDate]];
  }

  return v5;
}

- (id)searchItemWithInfo:(id)a3
{
  v4 = [(ACMKeychainTGTStoragePolicy *)self keychainManager];

  return [(ACFKeychainManagerProtocol *)v4 searchItemWithInfo:a3];
}

- (id)allTokensWithPrincipal:(id)a3 service:(id)a4
{
  v23 = *MEMORY[0x29EDCA608];
  v6 = [ACMKeychainTokenInfo keychainTokenInfoWithPrincipal:a3 indicator:a4];
  [(ACFKeychainItemInfo *)v6 setReturnLimit:-1];
  v7 = [(ACMKeychainTGTStoragePolicy *)self searchItemWithInfo:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  if (v7)
  {
    v8 = [MEMORY[0x29EDB8D80] arrayWithObject:v7];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:
  v10 = [MEMORY[0x29EDB8DE8] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = -[ACMKeychainTGTStoragePolicy ssoTokenWithKeychainInfo:realm:](self, "ssoTokenWithKeychainInfo:realm:", *(*(&v18 + 1) + 8 * v14), [a3 realm]);
        if (v15)
        {
          v16 = v15;
          if (qword_2A1EB8F60 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
          {
            ACFLog(7, "[ACMKeychainTGTStoragePolicy allTokensWithPrincipal:service:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 134, 0, "Created SSO Token - %@", v16);
          }

          [v10 addObject:v16];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  if (![v10 count])
  {
    return [MEMORY[0x29EDB8D80] array];
  }

  return v10;
}

- (BOOL)removeTokenWithPrincipal:(id)a3
{
  v5 = [(ACMKeychainTGTStoragePolicy *)self service];

  return [(ACMKeychainTGTStoragePolicy *)self performRemoveTokenWithPrincipal:a3 service:v5];
}

- (BOOL)performRemoveTokenWithPrincipal:(id)a3 service:(id)a4
{
  v27 = *MEMORY[0x29EDCA608];
  v6 = [ACMKeychainTokenInfo keychainTokenInfoWithPrincipal:a3 indicator:a4];
  [(ACFKeychainItemInfo *)v6 setReturnLimit:-1];
  v21 = self;
  v7 = [(ACFKeychainManagerProtocol *)[(ACMKeychainTGTStoragePolicy *)self keychainManager] searchItemWithInfo:v6];
  if (!v7)
  {
    goto LABEL_35;
  }

  v8 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x29EDB8D80] arrayWithObject:v8];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v9)
  {
LABEL_35:
    LOBYTE(v11) = 0;
    return v11 & 1;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v23;
  do
  {
    v13 = 0;
    do
    {
      if (*v23 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v22 + 1) + 8 * v13);
      v15 = +[ACFKeychainItemInfo keychainItemInfo];
      if ([objc_msgSend(a3 "principalString")])
      {
        [v15 setAccount:{objc_msgSend(v14, "account")}];
LABEL_11:
        if (v15)
        {
          [v15 setService:{objc_msgSend(v14, "service")}];
          [v15 setClassCode:{+[ACMKeychainTokenInfo classCode](ACMKeychainTokenInfo, "classCode")}];
          v11 |= [(ACFKeychainManagerProtocol *)[(ACMKeychainTGTStoragePolicy *)v21 keychainManager] removeItemWithInfo:v15];
        }

        goto LABEL_13;
      }

      if ([objc_msgSend(a3 "realm")] && objc_msgSend(objc_msgSend(v14, "account"), "hasSuffix:", objc_msgSend(a3, "realm")))
      {
        v16 = qword_2A1EB8F60;
        [v15 setAccount:{objc_msgSend(v14, "account")}];
        if (v16 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
        {
          ACFLog(7, "[ACMKeychainTGTStoragePolicy performRemoveTokenWithPrincipal:service:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 171, 0, "Found item by realm");
        }

        goto LABEL_11;
      }

      if ([objc_msgSend(a3 "userName")] && objc_msgSend(objc_msgSend(v14, "account"), "hasPrefix:", objc_msgSend(a3, "userName")))
      {
        v17 = qword_2A1EB8F60;
        [v15 setAccount:{objc_msgSend(v14, "account")}];
        if (v17 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
        {
          ACFLog(7, "[ACMKeychainTGTStoragePolicy performRemoveTokenWithPrincipal:service:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 176, 0, "Found item by userName");
        }

        goto LABEL_11;
      }

      if (![objc_msgSend(a3 "userName")] && !objc_msgSend(objc_msgSend(a3, "realm"), "length"))
      {
        v18 = qword_2A1EB8F60;
        [v15 setAccount:{objc_msgSend(v14, "account")}];
        if (v18 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
        {
          ACFLog(7, "[ACMKeychainTGTStoragePolicy performRemoveTokenWithPrincipal:service:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 181, 0, "Found item");
        }

        goto LABEL_11;
      }

      if (qword_2A1EB8F60 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
      {
        ACFLog(7, "[ACMKeychainTGTStoragePolicy performRemoveTokenWithPrincipal:service:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 185, 0, "Did not found item");
      }

LABEL_13:
      ++v13;
    }

    while (v10 != v13);
    v19 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    v10 = v19;
  }

  while (v19);
  return v11 & 1;
}

- (id)dictionaryWithSSOToken:(id)a3
{
  v4 = MEMORY[0x29EDB8E00];
  v5 = MEMORY[0x29EDBA070];
  [objc_msgSend(a3 "expirationDate")];
  v7 = [v5 numberWithLongLong:(v6 * 1000.0)];
  v8 = MEMORY[0x29EDBA070];
  [objc_msgSend(a3 "creationDate")];
  return [v4 dictionaryWithObjectsAndKeys:{v7, @"e", objc_msgSend(v8, "numberWithLongLong:", (v9 * 1000.0)), @"d", objc_msgSend(a3, "nonce"), @"o", objc_msgSend(a3, "sessionToken"), @"q", objc_msgSend(a3, "recentAuthenticationDate"), @"ACMSSOKeyRecentAuthenticationDate", objc_msgSend(a3, "recentUnlockDate"), @"ACMSSOKeyRecentUnlockDate", objc_msgSend(a3, "personID"), @"pid", 0}];
}

- (int)storeItemWithInfo:(id)a3
{
  v5 = [(ACMKeychainTGTStoragePolicy *)self keychainManager];
  v6 = [(ACMKeychainTGTStoragePolicy *)self useSharedStorage];

  return [(ACFKeychainManagerProtocol *)v5 storeItemWithInfo:a3 share:v6 result:0];
}

- (id)tokenDataWithDictionary:(id)a3
{
  if (a3)
  {
    return [MEMORY[0x29EDBA0C0] dataWithPropertyList:a3 format:200 options:0 error:0];
  }

  else
  {
    return 0;
  }
}

- (id)tokenDictionaryWithData:(id)a3
{
  result = [a3 length];
  if (result)
  {
    v5 = MEMORY[0x29EDBA0C0];

    return [v5 propertyListWithData:a3 options:0 format:0 error:0];
  }

  return result;
}

- (BOOL)performStoreToken:(id)a3 withService:(id)a4
{
  v7 = +[ACMKeychainTokenInfo keychainTokenInfoWithPrincipal:indicator:](ACMKeychainTokenInfo, "keychainTokenInfoWithPrincipal:indicator:", [a3 principal], a4);
  -[ACMKeychainTGTStoragePolicy performRemoveTokenWithPrincipal:service:](self, "performRemoveTokenWithPrincipal:service:", +[ACFPrincipal principalWithUserName:realm:](ACFPrincipal, "principalWithUserName:realm:", 0, [objc_msgSend(a3 "principal")]), a4);
  [(ACMKeychainTokenInfo *)v7 setTokenData:[(ACMKeychainTGTStoragePolicy *)self tokenDataWithDictionary:[(ACMKeychainTGTStoragePolicy *)self dictionaryWithSSOToken:a3]]];
  if (![(NSData *)[(ACMKeychainTokenInfo *)v7 tokenData] length])
  {
    if (qword_2A1EB8F60 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACMKeychainTGTStoragePolicy performStoreToken:withService:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 259, 0, "Failed to store token");
    }

    goto LABEL_12;
  }

  -[ACFKeychainItemInfo setCreationDate:](v7, "setCreationDate:", [a3 creationDate]);
  [(ACFKeychainItemInfo *)v7 setSynchronizable:0];
  if (qword_2A1EB8F68 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLogNS(7, "[ACMKeychainTGTStoragePolicy performStoreToken:withService:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 243, 0, @"Token keychain item attributes:", v8, v9, v11);
  }

  [(ACFKeychainItemInfo *)v7 dump];
  if ([(ACMKeychainTGTStoragePolicy *)self storeItemWithInfo:v7])
  {
    if (qword_2A1EB8F60 && (ACFLogSettingsGetLevelMask() & 0x10) != 0)
    {
      ACFLog(4, "[ACMKeychainTGTStoragePolicy performStoreToken:withService:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 252, 0, "Error %d has occurred while trying to store SSO token");
    }

LABEL_12:
    v7 = 0;
  }

  return v7 != 0;
}

@end