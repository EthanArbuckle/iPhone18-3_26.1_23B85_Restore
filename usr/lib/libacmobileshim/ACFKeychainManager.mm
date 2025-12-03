@interface ACFKeychainManager
- (BOOL)removeItemWithInfo:(id)info;
- (NSString)obtainAccessGroup;
- (id)searchItemWithInfo:(id)info;
- (int)secItemCopyMatchingWithAttributes:(id)attributes result:(id *)result;
- (int)storeItemWithInfo:(id)info share:(BOOL)share result:(id *)result;
- (void)dumpResults:(id)results printAttributes:(BOOL)attributes;
@end

@implementation ACFKeychainManager

- (NSString)obtainAccessGroup
{
  if (qword_2A1EB8F80 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACFKeychainManager obtainAccessGroup]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 27, 0, "Obtaining application access group");
  }

  v3 = [objc_msgSend(MEMORY[0x29EDB9F48] "mainBundle")];
  if (!v3)
  {
    if (qword_2A1EB8F80 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACFKeychainManager obtainAccessGroup]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 71, 0, "Failed to resolve path to Entitlements.plist");
    }

    return [(ACFKeychainManager *)self sharedAccessGroup];
  }

  v4 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:v3];
  v10 = 0;
  v11 = 0;
  v5 = [MEMORY[0x29EDBA0C0] propertyListWithData:v4 options:0 format:&v11 error:&v10];
  if (qword_2A1EB8F80 && v10 && (ACFLogSettingsGetLevelMask() & 8) != 0)
  {
    ACFLog(3, "[ACFKeychainManager obtainAccessGroup]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 50, 0, "Failed to parse Entitlements.plist file with the following error: %@", v10);
  }

  if (!v5)
  {
    return [(ACFKeychainManager *)self sharedAccessGroup];
  }

  v6 = [objc_msgSend(MEMORY[0x29EDB8E00] dictionaryWithDictionary:{v5), "objectForKey:", @"keychain-access-groups"}];
  if (!v6)
  {
    if (qword_2A1EB8F80 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACFKeychainManager obtainAccessGroup]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 65, 0, "Entitlements.plist does not contain %@ entry", @"keychain-access-groups");
    }

    return [(ACFKeychainManager *)self sharedAccessGroup];
  }

  v7 = qword_2A1EB8F80;
  v8 = [v6 objectAtIndex:0];
  if (v7 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACFKeychainManager obtainAccessGroup]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 61, 0, "Access group is %@", v8);
  }

  if (!v8)
  {
    return [(ACFKeychainManager *)self sharedAccessGroup];
  }

  return v8;
}

- (int)secItemCopyMatchingWithAttributes:(id)attributes result:(id *)result
{
  v5 = [attributes mutableCopy];

  return SecItemCopyMatching(v5, result);
}

- (int)storeItemWithInfo:(id)info share:(BOOL)share result:(id *)result
{
  shareCopy = share;
  if (qword_2A1EB8F80 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    v9 = @"NO";
    if (shareCopy)
    {
      v9 = @"YES";
    }

    ACFLog(7, "[ACFKeychainManager storeItemWithInfo:share:result:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 110, 0, "Storing info to keychain for sharing: %@...", v9);
  }

  if (shareCopy)
  {
    [info setAccessGroup:{-[ACFKeychainManager universalAccessGroup](self, "universalAccessGroup")}];
  }

  if (![info accessibleType])
  {
    [info setAccessibleType:*MEMORY[0x29EDBBB88]];
  }

  accessGroup = [info accessGroup];
  if (qword_2A1EB8F88 && accessGroup && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    accessGroup2 = [info accessGroup];
    ACFLogNS(7, "[ACFKeychainManager storeItemWithInfo:share:result:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 129, 0, @"Trying to store item to access group = %@", v12, v13, accessGroup2);
  }

  v14 = -[ACFKeychainManager secAddItemWithAttributes:result:](self, "secAddItemWithAttributes:result:", [info attributes], result);
  v15 = v14;
  switch(v14)
  {
    case -34018:
      goto LABEL_17;
    case 0:
      if (!qword_2A1EB8F80 || (ACFLogSettingsGetLevelMask() & 0x40) == 0)
      {
        goto LABEL_62;
      }

      v17 = 175;
      goto LABEL_31;
    case -25243:
LABEL_17:
      if (shareCopy)
      {
        if (qword_2A1EB8F80)
        {
          if ((ACFLogSettingsGetLevelMask() & 0x40) != 0)
          {
            ACFLog(6, "-[ACFKeychainManager storeItemWithInfo:share:result:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 135, 0, "Failed to add info to %@ access group", [info accessGroup]);
          }

          obtainAccessGroup = [(ACFKeychainManager *)self obtainAccessGroup];
          if (!obtainAccessGroup)
          {
            if ((ACFLogSettingsGetLevelMask() & 0x10) != 0)
            {
              ACFLog(4, "[ACFKeychainManager storeItemWithInfo:share:result:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 139, 0, "Failed to resolve access application group. SSO between applications not available.");
            }

            obtainAccessGroup = 0;
          }
        }

        else
        {
          obtainAccessGroup = [(ACFKeychainManager *)self obtainAccessGroup];
        }

        v18 = qword_2A1EB8F88;
        [info setAccessGroup:obtainAccessGroup];
        if (v18 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
        {
          accessGroup3 = [info accessGroup];
          ACFLogNS(7, "[ACFKeychainManager storeItemWithInfo:share:result:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 143, 0, @"Trying to store item to access group = %@", v20, v21, accessGroup3);
        }

        v22 = -[ACFKeychainManager secAddItemWithAttributes:result:](self, "secAddItemWithAttributes:result:", [info attributes], result);
        v15 = v22;
        v24 = v22 == -25243 || v22 == -34018;
        if (obtainAccessGroup && v24)
        {
          if (qword_2A1EB8F88)
          {
            if ((ACFLogSettingsGetLevelMask() & 0x80) != 0)
            {
              accessGroup4 = [info accessGroup];
              ACFLogNS(7, "[ACFKeychainManager storeItemWithInfo:share:result:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 150, 0, @"Failed to add info to %@ access group", v26, v27, accessGroup4);
            }

            [info setAccessGroup:0];
            if ((ACFLogSettingsGetLevelMask() & 0x80) != 0)
            {
              accessGroup5 = [info accessGroup];
              ACFLogNS(7, "[ACFKeychainManager storeItemWithInfo:share:result:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 152, 0, @"Trying to store item to access group = %@ (without access group)", v29, v30, accessGroup5);
            }
          }

          else
          {
            [info setAccessGroup:0];
          }

          v31 = qword_2A1EB8F80;
          v32 = -[ACFKeychainManager secAddItemWithAttributes:result:](self, "secAddItemWithAttributes:result:", [info attributes], result);
          v15 = v32;
          if (v31 && v32)
          {
            if ((ACFLogSettingsGetLevelMask() & 8) != 0)
            {
              ACFLog(3, "[ACFKeychainManager storeItemWithInfo:share:result:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 157, 0, "Failed to add info to keychain on 3rd attempt with %d error");
            }

            return v15;
          }

          if (v32)
          {
            return v15;
          }

LABEL_62:
          -[ACFKeychainManager setUsedAccessGroup:](self, "setUsedAccessGroup:", [info accessGroup]);
          return 0;
        }

        if (v22)
        {
          if (qword_2A1EB8F80 && (ACFLogSettingsGetLevelMask() & 8) != 0)
          {
            ACFLog(3, "[ACFKeychainManager storeItemWithInfo:share:result:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 162, 0, "Failed to add info to keychain on 2nd attempt with %d error");
          }

          return v15;
        }

        if (!qword_2A1EB8F80 || (ACFLogSettingsGetLevelMask() & 0x40) == 0)
        {
          goto LABEL_62;
        }

        v17 = 166;
LABEL_31:
        ACFLog(6, "-[ACFKeychainManager storeItemWithInfo:share:result:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", v17, 0, "Successfully stored info to access group %@", [info accessGroup]);
        goto LABEL_62;
      }

      break;
  }

  if (qword_2A1EB8F80 && (ACFLogSettingsGetLevelMask() & 8) != 0)
  {
    ACFLog(3, "[ACFKeychainManager storeItemWithInfo:share:result:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 171, 0, "Failed to add info to keychain with %d error with universal access group");
  }

  return v15;
}

- (void)dumpResults:(id)results printAttributes:(BOOL)attributes
{
  v15 = *MEMORY[0x29EDCA608];
  if (results)
  {
    attributesCopy = attributes;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (qword_2A1EB8F80 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
      {
        ACFLog(7, "-[ACFKeychainManager dumpResults:printAttributes:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 201, 0, "FOUND %d ITEMS:", [results count]);
      }

      if (attributesCopy)
      {
        v12 = 0u;
        v13 = 0u;
        v10 = 0u;
        v11 = 0u;
        v6 = [results countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v11;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v11 != v8)
              {
                objc_enumerationMutation(results);
              }

              [*(*(&v10 + 1) + 8 * i) dump];
            }

            v7 = [results countByEnumeratingWithState:&v10 objects:v14 count:16];
          }

          while (v7);
        }
      }
    }

    else
    {
      if (qword_2A1EB8F80 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
      {
        ACFLog(7, "[ACFKeychainManager dumpResults:printAttributes:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 196, 0, "FOUND ITEM:");
      }

      [results dump];
    }
  }

  else if (qword_2A1EB8F80 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "[ACFKeychainManager dumpResults:printAttributes:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 190, 0, "NO ITEMS FOUND");
  }
}

- (BOOL)removeItemWithInfo:(id)info
{
  if (qword_2A1EB8F80 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    ACFLog(7, "-[ACFKeychainManager removeItemWithInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 220, 0, "Deleting items with attributes: %@", [info attributes]);
  }

  if ((ACFLogSettingsGetLevelMask() & 0x80) != 0)
  {
    v5 = [info copy];
    v6 = [info copy];
    [v6 setReturnLimit:-1];
    [(ACFKeychainManager *)self dumpResults:[(ACFKeychainManager *)self searchItemWithInfo:v6]];
  }

  else
  {
    v5 = 0;
  }

  v7 = SecItemDelete([info attributes]);
  v8 = v7;
  if (v7 != -25300 && v7)
  {
    if (qword_2A1EB8F80 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACFKeychainManager removeItemWithInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 236, 0, "Error %d did occur while deliting token", v8);
    }
  }

  else
  {
    if (qword_2A1EB8F80 && (ACFLogSettingsGetLevelMask() & 0x40) != 0)
    {
      ACFLog(6, "[ACFKeychainManager removeItemWithInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 240, 0, "Successfully deleted. Checking presence of item in keychain.");
    }

    if ((ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      [(ACFKeychainManager *)self dumpResults:[(ACFKeychainManager *)self searchItemWithInfo:v5]];
    }
  }

  return !v8 || v8 == -25300;
}

- (id)searchItemWithInfo:(id)info
{
  v20 = *MEMORY[0x29EDCA608];
  if (qword_2A1EB8F98)
  {
    if ((ACFLogSettingsGetLevelMask() & 0x100) != 0)
    {
      ACFProfileStart("[ACFKeychainManager searchItemWithInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 252, 0, "OVERALL");
    }

    [info setReturnAttributes:1];
    v18 = 0;
    if ((ACFLogSettingsGetLevelMask() & 0x100) != 0)
    {
      ACFProfileStart("[ACFKeychainManager searchItemWithInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 258, 0, "SEARCH");
    }
  }

  else
  {
    [info setReturnAttributes:1];
    v18 = 0;
  }

  v5 = -[ACFKeychainManager secItemCopyMatchingWithAttributes:result:](self, "secItemCopyMatchingWithAttributes:result:", [info attributes], &v18);
  if (qword_2A1EB8F90 && (ACFLogSettingsGetLevelMask() & 0x100) != 0)
  {
    ACFProfileEnd("[ACFKeychainManager searchItemWithInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 261, 0, "SEARCH");
  }

  v6 = v18;
  if (v5 == -25300)
  {
    if (qword_2A1EB8F80 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACFKeychainManager searchItemWithInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 273, 0, "Item not found in the keychain");
    }

    goto LABEL_38;
  }

  if (v5)
  {
    if (qword_2A1EB8F80 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "-[ACFKeychainManager searchItemWithInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 269, 0, "Search in keychain failed with error: %@", [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF0] code:v5 userInfo:0]);
    }

    goto LABEL_38;
  }

  if (!v18)
  {
    if (qword_2A1EB8F80)
    {
      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "[ACFKeychainManager searchItemWithInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 282, 0, "Item is not found but API returned errSecSuccess");
      }

      if ((ACFLogSettingsGetLevelMask() & 8) != 0)
      {
        ACFLog(3, "-[ACFKeychainManager searchItemWithInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 283, 0, "Search in keychain failed with error: %@", [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF0] code:-25300 userInfo:0]);
      }
    }

    goto LABEL_38;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [objc_opt_class() keychainItemInfoWithAttributes:v18];
    goto LABEL_39;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_2A1EB8F80 && (ACFLogSettingsGetLevelMask() & 8) != 0)
    {
      ACFLog(3, "[ACFKeychainManager searchItemWithInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 302, 0, "Error while trying to fetch Keychain information");
    }

LABEL_38:
    v7 = 0;
    goto LABEL_39;
  }

  v7 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v18, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v18;
  v9 = [v18 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 addObject:{objc_msgSend(objc_opt_class(), "keychainItemInfoWithAttributes:", *(*(&v14 + 1) + 8 * i))}];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }

LABEL_39:
  if (qword_2A1EB8F90 && (ACFLogSettingsGetLevelMask() & 0x100) != 0)
  {
    ACFProfileEnd("[ACFKeychainManager searchItemWithInfo:]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Framework/SubProjects/Foundation/Sources/ACFKeychainManager.m", 307, 0, "OVERALL");
  }

  return v7;
}

@end