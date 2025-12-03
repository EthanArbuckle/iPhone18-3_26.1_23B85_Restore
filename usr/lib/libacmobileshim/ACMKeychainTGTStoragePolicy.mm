@interface ACMKeychainTGTStoragePolicy
- (ACFKeychainManagerProtocol)keychainManager;
- (BOOL)performRemoveTokenWithPrincipal:(id)principal service:(id)service;
- (BOOL)performStoreToken:(id)token withService:(id)service;
- (BOOL)removeTokenWithPrincipal:(id)principal;
- (BOOL)storeToken:(id)token;
- (BOOL)updateToken:(id)token;
- (id)allTokensWithPrincipal:(id)principal;
- (id)allTokensWithPrincipal:(id)principal service:(id)service;
- (id)dictionaryWithSSOToken:(id)token;
- (id)searchItemWithInfo:(id)info;
- (id)searchTokenWithPrincipal:(id)principal;
- (id)ssoTokenWithKeychainInfo:(id)info realm:(id)realm;
- (id)tokenDataWithDictionary:(id)dictionary;
- (id)tokenDictionaryWithData:(id)data;
- (int)storeItemWithInfo:(id)info;
@end

@implementation ACMKeychainTGTStoragePolicy

- (ACFKeychainManagerProtocol)keychainManager
{
  v2 = +[ACFComponents components];

  return [v2 keychainManager];
}

- (BOOL)storeToken:(id)token
{
  service = [(ACMKeychainTGTStoragePolicy *)self service];

  return [(ACMKeychainTGTStoragePolicy *)self performStoreToken:token withService:service];
}

- (BOOL)updateToken:(id)token
{
  service = [(ACMKeychainTGTStoragePolicy *)self service];

  return [(ACMKeychainTGTStoragePolicy *)self performStoreToken:token withService:service];
}

- (id)searchTokenWithPrincipal:(id)principal
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = [(ACMKeychainTGTStoragePolicy *)self allTokensWithPrincipal:principal];
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

- (id)allTokensWithPrincipal:(id)principal
{
  service = [(ACMKeychainTGTStoragePolicy *)self service];

  return [(ACMKeychainTGTStoragePolicy *)self allTokensWithPrincipal:principal service:service];
}

- (id)ssoTokenWithKeychainInfo:(id)info realm:(id)realm
{
  infoCopy = info;
  [info account];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([(ACMSSOToken *)infoCopy generic], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([(ACMToken *)infoCopy creationDate], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([(ACMSSOToken *)infoCopy service], objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (qword_2A1EB8F60)
    {
      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACMKeychainTGTStoragePolicy ssoTokenWithKeychainInfo:realm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 68, 0, "Keychain item has unexpected data type");
      }

      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        [(ACMSSOToken *)infoCopy account];
        v15 = objc_opt_class();
        ACFLog(3, "[ACMKeychainTGTStoragePolicy ssoTokenWithKeychainInfo:realm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 69, 0, "Account of class %@: %@", v15, [(ACMSSOToken *)infoCopy account]);
      }

      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        [(ACMToken *)infoCopy creationDate];
        v16 = objc_opt_class();
        ACFLog(3, "[ACMKeychainTGTStoragePolicy ssoTokenWithKeychainInfo:realm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 70, 0, "Creation Date of class %@: %@", v16, [(ACMToken *)infoCopy creationDate]);
      }

      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        [(ACMSSOToken *)infoCopy service];
        v17 = objc_opt_class();
        ACFLog(3, "[ACMKeychainTGTStoragePolicy ssoTokenWithKeychainInfo:realm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 71, 0, "Service of class %@: %@", v17, [(ACMSSOToken *)infoCopy service]);
      }

      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        [(ACMSSOToken *)infoCopy generic];
        v18 = objc_opt_class();
        ACFLog(3, "[ACMKeychainTGTStoragePolicy ssoTokenWithKeychainInfo:realm:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 72, 0, "Generic of class %@", v18);
      }
    }

    return 0;
  }

  if (!infoCopy)
  {
    return infoCopy;
  }

  if (realm && ![(NSString *)[(ACFPrincipal *)[(ACMToken *)infoCopy principal] realm] isEqualToString:realm])
  {
    return 0;
  }

  v7 = [(ACMKeychainTGTStoragePolicy *)self tokenDictionaryWithData:[(ACMSSOToken *)infoCopy generic]];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  creationDate = [(ACMToken *)infoCopy creationDate];
  v10 = [v8 objectForKey:@"d"];
  if (v10)
  {
    v11 = MEMORY[0x29EDB8DB0];
    [v10 doubleValue];
    creationDate = [v11 dateWithTimeIntervalSince1970:v12 / 1000.0];
  }

  infoCopy = [(ACMToken *)ACMSSOToken tokenWithPrincipal:[(ACMToken *)infoCopy principal] creationDate:creationDate tokenData:0];
  v13 = MEMORY[0x29EDB8DB0];
  [objc_msgSend(v8 objectForKey:{@"e", "doubleValue"}];
  -[ACMToken setExpirationDate:](infoCopy, "setExpirationDate:", [v13 dateWithTimeIntervalSince1970:v14 / 1000.0]);
  -[ACMToken setNonce:](infoCopy, "setNonce:", [v8 objectForKey:@"o"]);
  -[ACMSSOToken setSessionToken:](infoCopy, "setSessionToken:", [v8 objectForKey:@"q"]);
  -[ACMSSOToken setRecentAuthenticationDate:](infoCopy, "setRecentAuthenticationDate:", [v8 objectForKey:@"ACMSSOKeyRecentAuthenticationDate"]);
  -[ACMSSOToken setRecentUnlockDate:](infoCopy, "setRecentUnlockDate:", [v8 objectForKey:@"ACMSSOKeyRecentUnlockDate"]);
  -[ACMSSOToken setPersonID:](infoCopy, "setPersonID:", [v8 objectForKey:@"pid"]);
  if (![(ACMSSOToken *)infoCopy recentUnlockDate])
  {
    [(ACMSSOToken *)infoCopy setRecentUnlockDate:[(ACMSSOToken *)infoCopy recentAuthenticationDate]];
  }

  return infoCopy;
}

- (id)searchItemWithInfo:(id)info
{
  keychainManager = [(ACMKeychainTGTStoragePolicy *)self keychainManager];

  return [(ACFKeychainManagerProtocol *)keychainManager searchItemWithInfo:info];
}

- (id)allTokensWithPrincipal:(id)principal service:(id)service
{
  v23 = *MEMORY[0x29EDCA608];
  v6 = [ACMKeychainTokenInfo keychainTokenInfoWithPrincipal:principal indicator:service];
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
  array = [MEMORY[0x29EDB8DE8] array];
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

        v15 = -[ACMKeychainTGTStoragePolicy ssoTokenWithKeychainInfo:realm:](self, "ssoTokenWithKeychainInfo:realm:", *(*(&v18 + 1) + 8 * v14), [principal realm]);
        if (v15)
        {
          v16 = v15;
          if (qword_2A1EB8F60 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
          {
            ACFLog(7, "[ACMKeychainTGTStoragePolicy allTokensWithPrincipal:service:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 134, 0, "Created SSO Token - %@", v16);
          }

          [array addObject:v16];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  if (![array count])
  {
    return [MEMORY[0x29EDB8D80] array];
  }

  return array;
}

- (BOOL)removeTokenWithPrincipal:(id)principal
{
  service = [(ACMKeychainTGTStoragePolicy *)self service];

  return [(ACMKeychainTGTStoragePolicy *)self performRemoveTokenWithPrincipal:principal service:service];
}

- (BOOL)performRemoveTokenWithPrincipal:(id)principal service:(id)service
{
  v27 = *MEMORY[0x29EDCA608];
  v6 = [ACMKeychainTokenInfo keychainTokenInfoWithPrincipal:principal indicator:service];
  [(ACFKeychainItemInfo *)v6 setReturnLimit:-1];
  selfCopy = self;
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
      if ([objc_msgSend(principal "principalString")])
      {
        [v15 setAccount:{objc_msgSend(v14, "account")}];
LABEL_11:
        if (v15)
        {
          [v15 setService:{objc_msgSend(v14, "service")}];
          [v15 setClassCode:{+[ACMKeychainTokenInfo classCode](ACMKeychainTokenInfo, "classCode")}];
          v11 |= [(ACFKeychainManagerProtocol *)[(ACMKeychainTGTStoragePolicy *)selfCopy keychainManager] removeItemWithInfo:v15];
        }

        goto LABEL_13;
      }

      if ([objc_msgSend(principal "realm")] && objc_msgSend(objc_msgSend(v14, "account"), "hasSuffix:", objc_msgSend(principal, "realm")))
      {
        v16 = qword_2A1EB8F60;
        [v15 setAccount:{objc_msgSend(v14, "account")}];
        if (v16 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
        {
          ACFLog(7, "[ACMKeychainTGTStoragePolicy performRemoveTokenWithPrincipal:service:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 171, 0, "Found item by realm");
        }

        goto LABEL_11;
      }

      if ([objc_msgSend(principal "userName")] && objc_msgSend(objc_msgSend(v14, "account"), "hasPrefix:", objc_msgSend(principal, "userName")))
      {
        v17 = qword_2A1EB8F60;
        [v15 setAccount:{objc_msgSend(v14, "account")}];
        if (v17 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
        {
          ACFLog(7, "[ACMKeychainTGTStoragePolicy performRemoveTokenWithPrincipal:service:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 176, 0, "Found item by userName");
        }

        goto LABEL_11;
      }

      if (![objc_msgSend(principal "userName")] && !objc_msgSend(objc_msgSend(principal, "realm"), "length"))
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

- (id)dictionaryWithSSOToken:(id)token
{
  v4 = MEMORY[0x29EDB8E00];
  v5 = MEMORY[0x29EDBA070];
  [objc_msgSend(token "expirationDate")];
  v7 = [v5 numberWithLongLong:(v6 * 1000.0)];
  v8 = MEMORY[0x29EDBA070];
  [objc_msgSend(token "creationDate")];
  return [v4 dictionaryWithObjectsAndKeys:{v7, @"e", objc_msgSend(v8, "numberWithLongLong:", (v9 * 1000.0)), @"d", objc_msgSend(token, "nonce"), @"o", objc_msgSend(token, "sessionToken"), @"q", objc_msgSend(token, "recentAuthenticationDate"), @"ACMSSOKeyRecentAuthenticationDate", objc_msgSend(token, "recentUnlockDate"), @"ACMSSOKeyRecentUnlockDate", objc_msgSend(token, "personID"), @"pid", 0}];
}

- (int)storeItemWithInfo:(id)info
{
  keychainManager = [(ACMKeychainTGTStoragePolicy *)self keychainManager];
  useSharedStorage = [(ACMKeychainTGTStoragePolicy *)self useSharedStorage];

  return [(ACFKeychainManagerProtocol *)keychainManager storeItemWithInfo:info share:useSharedStorage result:0];
}

- (id)tokenDataWithDictionary:(id)dictionary
{
  if (dictionary)
  {
    return [MEMORY[0x29EDBA0C0] dataWithPropertyList:dictionary format:200 options:0 error:0];
  }

  else
  {
    return 0;
  }
}

- (id)tokenDictionaryWithData:(id)data
{
  result = [data length];
  if (result)
  {
    v5 = MEMORY[0x29EDBA0C0];

    return [v5 propertyListWithData:data options:0 format:0 error:0];
  }

  return result;
}

- (BOOL)performStoreToken:(id)token withService:(id)service
{
  v7 = +[ACMKeychainTokenInfo keychainTokenInfoWithPrincipal:indicator:](ACMKeychainTokenInfo, "keychainTokenInfoWithPrincipal:indicator:", [token principal], service);
  -[ACMKeychainTGTStoragePolicy performRemoveTokenWithPrincipal:service:](self, "performRemoveTokenWithPrincipal:service:", +[ACFPrincipal principalWithUserName:realm:](ACFPrincipal, "principalWithUserName:realm:", 0, [objc_msgSend(token "principal")]), service);
  [(ACMKeychainTokenInfo *)v7 setTokenData:[(ACMKeychainTGTStoragePolicy *)self tokenDataWithDictionary:[(ACMKeychainTGTStoragePolicy *)self dictionaryWithSSOToken:token]]];
  if (![(NSData *)[(ACMKeychainTokenInfo *)v7 tokenData] length])
  {
    if (qword_2A1EB8F60 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACMKeychainTGTStoragePolicy performStoreToken:withService:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMKeychainTGTStoragePolicy.m", 259, 0, "Failed to store token");
    }

    goto LABEL_12;
  }

  -[ACFKeychainItemInfo setCreationDate:](v7, "setCreationDate:", [token creationDate]);
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