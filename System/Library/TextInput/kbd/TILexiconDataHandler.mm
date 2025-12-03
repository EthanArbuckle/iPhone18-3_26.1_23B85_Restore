@interface TILexiconDataHandler
- (BOOL)checkEntitlementForAddEntryStringWithAuditToken:(id *)token;
- (BOOL)validateBundlePath:(id)path;
- (void)addContact:(id)contact toEntries:(id)entries usingTokenizer:(id)tokenizer;
- (void)addEntryString:(id)string forRecentInputIdentifier:(id)identifier;
- (void)finishRequestWithEntries:(id)entries completion:(id)completion;
- (void)requestLexiconForRecentInputIdentifier:(id)identifier completionHandler:(id)handler;
- (void)requestLexiconFromBundlePath:(id)path completionHandler:(id)handler;
- (void)requestRemovalOfLexiconForRecentInputIdentifier:(id)identifier;
@end

@implementation TILexiconDataHandler

- (BOOL)validateBundlePath:(id)path
{
  v4 = [NSBundle bundleWithPath:path];
  bundleIdentifier = [v4 bundleIdentifier];
  if (bundleIdentifier && (v6 = bundleIdentifier, [v4 bundleIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", self->_bundleID), v7, v6, v8))
  {
    infoDictionary = [v4 infoDictionary];
    v10 = [infoDictionary objectForKey:@"CFBundlePackageType"];

    if ([v10 isEqualToString:@"XPC!"])
    {
      infoDictionary2 = [v4 infoDictionary];
      v12 = [infoDictionary2 objectForKey:@"NSExtension"];

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

- (void)finishRequestWithEntries:(id)entries completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v11 = completionCopy;
    v6 = [entries mutableCopy];
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

    completionCopy = v11;
  }
}

- (void)addContact:(id)contact toEntries:(id)entries usingTokenizer:(id)tokenizer
{
  entriesCopy = entries;
  tokenizerCopy = tokenizer;
  flatten = [contact flatten];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [flatten countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(flatten);
        }

        v14 = [tokenizerCopy allTokensForString:*(*(&v17 + 1) + 8 * v13)];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100007F84;
        v15[3] = &unk_10001CA68;
        v16 = entriesCopy;
        [v14 enumerateObjectsUsingBlock:v15];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [flatten countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)requestLexiconFromBundlePath:(id)path completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(TILexiconDataHandler *)self validateBundlePath:path])
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
    v9 = handlerCopy;
    [v7 getOnce:v8];

    _Block_object_dispose(v11, 8);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)requestLexiconForRecentInputIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (([TIRecentInputs identifierIsSystemIdentifier:identifierCopy]& 1) != 0)
  {
    v6 = [TIKeyboardInputManager recentsFilePathForIdentifier:identifierCopy];
    v7 = [TIRecentInputs recentInputAtPath:v6];

    handlerCopy[2](handlerCopy, v7);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)requestRemovalOfLexiconForRecentInputIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([TIRecentInputs identifierIsSystemIdentifier:?])
  {
    v3 = [TIKeyboardInputManager recentsFilePathForIdentifier:identifierCopy];
    v4 = +[NSFileManager defaultManager];
    [v4 removeItemAtPath:v3 error:0];
  }
}

- (BOOL)checkEntitlementForAddEntryStringWithAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  *cf.val = *token->var0;
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

- (void)addEntryString:(id)string forRecentInputIdentifier:(id)identifier
{
  stringCopy = string;
  identifierCopy = identifier;
  if ([TIRecentInputs identifierIsSystemIdentifier:identifierCopy])
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
      v11 = [TIKeyboardInputManager recentsFilePathForIdentifier:identifierCopy];
      [TIRecentInputs storeInput:stringCopy forSystemIdentifier:identifierCopy atPath:v11];
    }
  }
}

@end