@interface SUScriptSoftwareApplication
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (NSNumber)ratingRank;
- (NSString)ratingSystem;
- (NSString)storeFrontID;
- (SUScriptSoftwareApplication)initWithApplication:(id)a3;
- (id)scriptAttributeKeys;
- (int64_t)launchWithURL:(id)a3 options:(id)a4 suspended:(id)a5;
- (void)checkInAppPurchaseQueueWithAccountID:(id)a3 environment:(id)a4;
- (void)dealloc;
@end

@implementation SUScriptSoftwareApplication

- (SUScriptSoftwareApplication)initWithApplication:(id)a3
{
  v4 = [(SUScriptObject *)self init];
  if (v4)
  {
    v4->_application = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptSoftwareApplication;
  [(SUScriptObject *)&v3 dealloc];
}

- (void)checkInAppPurchaseQueueWithAccountID:(id)a3 environment:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a3 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = 0;
    if (a4)
    {
      if ((isKindOfClass & 1) == 0)
      {
        objc_opt_class();
        v7 = a4;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }
  }

  if (!a3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = objc_alloc_init(MEMORY[0x1E69D49F8]);
    [v10 setBagType:{objc_msgSend(v7, "isEqualToString:", -[SUScriptSoftwareApplication environmentSandbox](self, "environmentSandbox"))}];
    [v10 setUserIdentifier:a3];
    [(SUScriptSoftwareApplication *)self bundleID];
    SSCheckInAppPurchaseQueue();

    return;
  }

LABEL_14:
  v9 = MEMORY[0x1E69E2F88];

  [v9 throwException:@"Invalid argument"];
}

- (int64_t)launchWithURL:(id)a3 options:(id)a4 suspended:(id)a5
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a3 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a4 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a5 = 0;
  }

  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (a4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = MEMORY[0x1E69E2F88];
      goto LABEL_23;
    }
  }

  if (a5 && (objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_21:
    v13 = MEMORY[0x1E69E2F88];
LABEL_23:
    [v13 throwException:@"Invalid argument"];
    return 0;
  }

  v9 = [(SUScriptObject *)self copyJavaScriptContext];
  v10 = [a4 copyArrayOrDictionaryWithContext:v9];
  if (a3)
  {
    a3 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:a3];
  }

  [(ISSoftwareApplication *)self->_application bundleIdentifier];
  [a5 BOOLValue];
  v11 = SBSLaunchApplicationWithIdentifierAndURLAndLaunchOptions();

  if (v9)
  {
    JSGlobalContextRelease(v9);
  }

  return v11;
}

- (NSNumber)ratingRank
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [-[ISSoftwareApplication contentRating](self->_application "contentRating")];

  return [v2 numberWithInteger:v3];
}

- (NSString)ratingSystem
{
  v2 = MEMORY[0x1E69D4918];
  v3 = [-[ISSoftwareApplication contentRating](self->_application "contentRating")];

  return [v2 stringForRatingSystem:v3];
}

- (NSString)storeFrontID
{
  v2 = [(ISSoftwareApplication *)self->_application storeFrontIdentifier];

  return [v2 stringValue];
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_6 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptSoftwareApplication;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_4, 2);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptSoftwareApplication;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptSoftwareApplication;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_6 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_4 = sel_checkInAppPurchaseQueueWithAccountID_environment_;
    unk_1EBF3A830 = @"checkInAppPurchaseQueue";
    qword_1EBF3A838 = sel_launchWithURL_options_suspended_;
    unk_1EBF3A840 = @"launch";
    __KeyMapping_6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"adamID", @"bundleID", @"bundleID", @"bundleShortVersionString", @"bundleShortVersionString", @"bundleVersion", @"bundleVersion", @"dsID", @"dsID", @"ratingRank", @"ratingRank", @"ratingSystem", @"ratingSystem", @"softwareType", @"softwareType", @"storeFrontID", @"storeFrontID", @"versionID", @"versionID", @"ENVIRONMENT_PRODUCTION", @"environmentProduction", @"ENVIRONMENT_SANDBOX", @"environmentSandbox", @"LAUNCH_RESULT_APP_DISABLED", @"launchResultApplicationDisabled", @"LAUNCH_RESULT_APP_NOT_FOUND", @"launchResultApplicationNotFound", @"LAUNCH_RESULT_INVALID_ARGUMENT", @"launchResultInvalidArgument", @"LAUNCH_RESULT_LAUNCH_OR_SUSPEND_IN_PROGRESS", @"launchResultLaunchOrSuspendInProgress", @"LAUNCH_RESULT_LOCKED", @"launchResultLocked", @"LAUNCH_RESULT_LOCKED_OUT", @"launchResultLockedOut", @"LAUNCH_RESULT_SECURITY_POLICY", @"launchResultSecurityPolicy", @"LAUNCH_RESULT_SPRINGBOARD_UNAVAILABLE", @"launchResultSpringBoardUnavailable", @"LAUNCH_RESULT_SUCCESS", @"launchResultSuccess", @"LAUNCH_RESULT_SYNCING", @"launchResultSyncing", @"SOFTWARE_TYPE_NEWSSTAND", @"softwareTypeNewsstand", 0}];
  }
}

@end