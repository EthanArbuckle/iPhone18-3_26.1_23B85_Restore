@interface TILexiconDataHandler
- (BOOL)checkEntitlementForAddEntryStringWithAuditToken:(id *)a3;
- (BOOL)validateBundlePath:(id)a3;
- (void)addContact:(id)a3 toEntries:(id)a4 usingTokenizer:(id)a5;
- (void)addEntryString:(id)a3 forRecentInputIdentifier:(id)a4;
- (void)finishRequestWithEntries:(id)a3 completion:(id)a4;
- (void)requestLexiconForRecentInputIdentifier:(id)a3 completionHandler:(id)a4;
- (void)requestLexiconFromBundlePath:(id)a3 completionHandler:(id)a4;
- (void)requestRemovalOfLexiconForRecentInputIdentifier:(id)a3;
@end

@implementation TILexiconDataHandler

- (BOOL)validateBundlePath:(id)a3
{
  v4 = [NSBundle bundleWithPath:a3];
  v5 = [v4 bundleIdentifier];
  if (v5 && (v6 = v5, [v4 bundleIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", self->_bundleID), v7, v6, v8))
  {
    v9 = [v4 infoDictionary];
    v10 = [v9 objectForKey:@"CFBundlePackageType"];

    if ([v10 isEqualToString:@"XPC!"])
    {
      v11 = [v4 infoDictionary];
      v12 = [v11 objectForKey:@"NSExtension"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 objectForKey:@"NSExtensionPointIdentifier"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 isEqualToString:@"com.apple.keyboard-service"];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)finishRequestWithEntries:(id)a3 completion:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v11 = v5;
    v6 = [a3 mutableCopy];
    v7 = [v6 count];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        [v6 exchangeObjectAtIndex:v9 withObjectAtIndex:arc4random() % v8 + v9];
        ++v9;
        --v8;
      }

      while (v8);
    }

    v10 = [TILexicon lexiconWithEntries:v6];
    v11[2](v11, v10);

    v5 = v11;
  }
}

- (void)addContact:(id)a3 toEntries:(id)a4 usingTokenizer:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 flatten];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

        v14 = [v8 allTokensForString:*(*(&v17 + 1) + 8 * v13)];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100007F84;
        v15[3] = &unk_10001CA68;
        v16 = v7;
        [v14 enumerateObjectsUsingBlock:v15];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)requestLexiconFromBundlePath:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  if ([(TILexiconDataHandler *)self validateBundlePath:a3])
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = sub_100008130;
    v11[4] = sub_100008140;
    v12 = objc_alloc_init(NSMutableArray);
    v7 = +[TITransientLexiconManager sharedInstance];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100008148;
    v8[3] = &unk_10001CAB8;
    v8[4] = self;
    v10 = v11;
    v9 = v6;
    [v7 getOnce:v8];

    _Block_object_dispose(v11, 8);
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

- (void)requestLexiconForRecentInputIdentifier:(id)a3 completionHandler:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (([TIRecentInputs identifierIsSystemIdentifier:v8]& 1) != 0)
  {
    v6 = [TIKeyboardInputManager recentsFilePathForIdentifier:v8];
    v7 = [TIRecentInputs recentInputAtPath:v6];

    v5[2](v5, v7);
  }

  else
  {
    v5[2](v5, 0);
  }
}

- (void)requestRemovalOfLexiconForRecentInputIdentifier:(id)a3
{
  v5 = a3;
  if ([TIRecentInputs identifierIsSystemIdentifier:?])
  {
    v3 = [TIKeyboardInputManager recentsFilePathForIdentifier:v5];
    v4 = +[NSFileManager defaultManager];
    [v4 removeItemAtPath:v3 error:0];
  }
}

- (BOOL)checkEntitlementForAddEntryStringWithAuditToken:(id *)a3
{
  v3 = *&a3->var0[4];
  *cf.val = *a3->var0;
  *&cf.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(0, &cf);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  *cf.val = 0;
  v6 = SecTaskCopyValueForEntitlement(v4, @"com.apple.TextInput.lexicon-source", &cf);
  if (v6)
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    v9 = v8 == CFBooleanGetTypeID() && CFBooleanGetValue(v7) != 0;
    CFRelease(v7);
  }

  else
  {
    if (*cf.val)
    {
      if (TICanLogMessageAtLevel())
      {
        v10 = TIOSLogFacility();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_10000DA50(&cf, v10);
        }
      }

      CFRelease(*cf.val);
    }

    v9 = 0;
  }

  CFRelease(v5);
  return v9;
}

- (void)addEntryString:(id)a3 forRecentInputIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([TIRecentInputs identifierIsSystemIdentifier:v7])
  {
    v8 = +[NSXPCConnection currentConnection];
    v9 = v8;
    if (v8)
    {
      [v8 auditToken];
    }

    else
    {
      memset(v12, 0, sizeof(v12));
    }

    v10 = [(TILexiconDataHandler *)self checkEntitlementForAddEntryStringWithAuditToken:v12];

    if (v10)
    {
      v11 = [TIKeyboardInputManager recentsFilePathForIdentifier:v7];
      [TIRecentInputs storeInput:v6 forSystemIdentifier:v7 atPath:v11];
    }
  }
}

@end