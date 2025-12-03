@interface TIRemoteDataHandle
+ (BOOL)shouldAcceptRequestForMeCardWithAuditToken:(id *)token;
+ (id)localDictionaryPath;
+ (id)localizedStringForKey:(id)key;
- (TITextCheckerExemptions)textCheckerExemptions;
- (id)notificationDetailsForType:(int64_t)type;
- (void)addLinguisticAssetsAssertionForLanguage:(id)language assertionID:(id)d region:(id)region clientID:(id)iD withHandler:(id)handler;
- (void)alternativesForText:(id)text completionHandler:(id)handler;
- (void)appendWordToTextCheckerLocalDictionary:(id)dictionary;
- (void)dismissDialogWithCompletionHandler:(id)handler;
- (void)dismissedDataSharingWithResponse:(int64_t)response;
- (void)fetchAssetUpdateStatusForInputModeIdentifier:(id)identifier callback:(id)callback;
- (void)getIsSuggestingStrongPasswordsAvailableWithCompletionHandler:(id)handler;
- (void)ingestSentence:(id)sentence language:(id)language phraseRanges:(id)ranges;
- (void)launchPencilSettings;
- (void)performTrainingForClient:(id)client withCompletionHandler:(id)handler;
- (void)presentDialogForType:(int64_t)type withCompletionHandler:(id)handler;
- (void)removeAllDynamicDictionariesWithCompletionHandler:(id)handler;
- (void)removeLinguisticAssetsAssertionWithIdentifier:(id)identifier forClientID:(id)d withHandler:(id)handler;
- (void)requestLinguisticAssetsForLanguage:(id)language completion:(id)completion;
- (void)requestMeCardWithCompletionHandler:(id)handler;
- (void)requestMeContactWithCompletionHandler:(id)handler;
- (void)requestTextCheckerLocalDictionaryWithCompletionHandler:(id)handler;
- (void)string:(id)string isExemptFromTextCheckerWithCompletionHandler:(id)handler;
- (void)updateAssetForInputModeIdentifier:(id)identifier callback:(id)callback;
- (void)updateForActiveLocaleIdentifiers:(id)identifiers;
- (void)updateKeyboardType:(unint64_t)type appIdentifier:(id)identifier;
@end

@implementation TIRemoteDataHandle

+ (BOOL)shouldAcceptRequestForMeCardWithAuditToken:(id *)token
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
  v6 = SecTaskCopyValueForEntitlement(v4, @"com.apple.TextInput.rdt.me", &cf);
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
          sub_10000DD30(&cf);
        }
      }

      CFRelease(*cf.val);
    }

    v9 = 0;
  }

  CFRelease(v5);
  return v9;
}

- (void)requestLinguisticAssetsForLanguage:(id)language completion:(id)completion
{
  completionCopy = completion;
  languageCopy = language;
  v7 = +[TILinguisticAssetDownloadServer sharedServer];
  [v7 start];

  v8 = +[TILinguisticAssetDownloadServer sharedServer];
  [v8 requestLinguisticAssetsForLanguage:languageCopy completion:completionCopy];
}

- (void)addLinguisticAssetsAssertionForLanguage:(id)language assertionID:(id)d region:(id)region clientID:(id)iD withHandler:(id)handler
{
  handlerCopy = handler;
  iDCopy = iD;
  regionCopy = region;
  dCopy = d;
  languageCopy = language;
  v16 = +[TILinguisticAssetDownloadServer sharedServer];
  [v16 start];

  v17 = +[TILinguisticAssetDownloadServer sharedServer];
  [v17 addLinguisticAssetsAssertionForLanguage:languageCopy assertionID:dCopy region:regionCopy clientID:iDCopy withHandler:handlerCopy];
}

- (void)removeLinguisticAssetsAssertionWithIdentifier:(id)identifier forClientID:(id)d withHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  identifierCopy = identifier;
  v10 = +[TILinguisticAssetDownloadServer sharedServer];
  [v10 removeLinguisticAssetsAssertionWithIdentifier:identifierCopy forClientID:dCopy withHandler:handlerCopy];
}

- (void)fetchAssetUpdateStatusForInputModeIdentifier:(id)identifier callback:(id)callback
{
  callbackCopy = callback;
  identifierCopy = identifier;
  v7 = +[TILinguisticAssetDownloadServer sharedServer];
  [v7 fetchAssetUpdateStatusForInputModeIdentifier:identifierCopy callback:callbackCopy];
}

- (void)updateAssetForInputModeIdentifier:(id)identifier callback:(id)callback
{
  callbackCopy = callback;
  identifierCopy = identifier;
  v7 = +[TILinguisticAssetDownloadServer sharedServer];
  [v7 updateAssetForInputModeIdentifier:identifierCopy callback:callbackCopy];
}

- (void)requestMeCardWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[NSXPCConnection currentConnection];
  v5 = v4;
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v6 = [TIRemoteDataHandle shouldAcceptRequestForMeCardWithAuditToken:v9];

  if (v6)
  {
    v8 = handlerCopy;
    TIGetMeCardAsync();
  }

  else
  {
    if (TICanLogMessageAtLevel())
    {
      v7 = TIOSLogFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_10000DDD8();
      }
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)requestMeContactWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[NSXPCConnection currentConnection];
  v5 = v4;
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v6 = [TIRemoteDataHandle shouldAcceptRequestForMeCardWithAuditToken:v9];

  if (v6)
  {
    v8 = handlerCopy;
    TIGetMeCardAsync();
  }

  else
  {
    if (TICanLogMessageAtLevel())
    {
      v7 = TIOSLogFacility();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_10000DEA0();
      }
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)launchPencilSettings
{
  v3[0] = @"__UnlockDevice";
  v3[1] = @"__PromptUnlockDevice";
  v4[0] = &__kCFBooleanTrue;
  v4[1] = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  sub_10000B180(@"prefs:root=Pencil", v2);
}

- (void)presentDialogForType:(int64_t)type withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    sub_10000DFF0(a2, self);
  }

  v7 = handlerCopy;
  TIDispatchAsync();
}

- (id)notificationDetailsForType:(int64_t)type
{
  if (type == 3)
  {
    v22 = objc_alloc_init(sub_10000BC44());
    dictationDataSharingOptInReminderViewModel = [v22 dictationDataSharingOptInReminderViewModel];
    title = [dictationDataSharingOptInReminderViewModel title];
    message = [dictationDataSharingOptInReminderViewModel message];
    confirmationButtonTitle = [dictationDataSharingOptInReminderViewModel confirmationButtonTitle];

    v19 = 0;
    optOutButtonTitle = 0;
  }

  else if (type == 2)
  {
    v20 = objc_alloc_init(sub_10000BC44());
    dictationDataSharingOptInAlertViewModel = [v20 dictationDataSharingOptInAlertViewModel];
    title = [dictationDataSharingOptInAlertViewModel title];
    message = [dictationDataSharingOptInAlertViewModel message];
    optOutButtonTitle = [dictationDataSharingOptInAlertViewModel optOutButtonTitle];
    confirmationButtonTitle = [dictationDataSharingOptInAlertViewModel optInButtonTitle];

    v19 = 0;
  }

  else if (type)
  {
    title = [objc_opt_class() localizedStringForKey:@"EXTENSION_OPT_IN_TITLE"];
    message = [objc_opt_class() localizedStringForKey:@"EXTENSION_OPT_IN_MESSAGE"];
    optOutButtonTitle = [objc_opt_class() localizedStringForKey:@"EXTENSION_OPT_IN_ADD"];
    v19 = [objc_opt_class() localizedStringForKey:@"DICTATION_OPT_IN_ABOUT"];
    confirmationButtonTitle = [objc_opt_class() localizedStringForKey:@"DICTATION_OPT_IN_NOT_NOW"];
  }

  else
  {
    title = [objc_opt_class() localizedStringForKey:@"DICTATION_OPT_IN_TITLE"];
    v4 = [objc_opt_class() localizedStringForKey:@"DICTATION_OPT_IN_ABOUT"];
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v5 = off_100026648;
    v39 = off_100026648;
    if (!off_100026648)
    {
      v31 = _NSConcreteStackBlock;
      v32 = 3221225472;
      v33 = sub_10000CB18;
      v34 = &unk_10001C838;
      v35 = &v36;
      sub_10000CB18(&v31);
      v5 = v37[3];
    }

    _Block_object_dispose(&v36, 8);
    if (!v5)
    {
      sub_10000E0F0();
    }

    v6 = v5();
    v7 = objc_opt_class();
    if (v6 == 10)
    {
      v8 = @"DICTATION_OPT_IN_MESSAGE_ON_DEVICE_DICTATION_CAPABLE";
    }

    else
    {
      v8 = @"DICTATION_OPT_IN_MESSAGE";
    }

    message = [v7 localizedStringForKey:v8];
    v36 = 0;
    v37 = &v36;
    v38 = 0x2050000000;
    v10 = qword_100026658;
    v39 = qword_100026658;
    if (!qword_100026658)
    {
      v31 = _NSConcreteStackBlock;
      v32 = 3221225472;
      v33 = sub_10000CCB4;
      v34 = &unk_10001C838;
      v35 = &v36;
      sub_10000CCB4(&v31);
      v10 = v37[3];
    }

    v11 = v10;
    _Block_object_dispose(&v36, 8);
    v12 = [v10 bundleWithIdentifier:@"com.apple.onboarding.siri"];
    privacyFlow = [v12 privacyFlow];
    localizedButtonTitle = [privacyFlow localizedButtonTitle];
    v15 = localizedButtonTitle;
    if (localizedButtonTitle)
    {
      v16 = localizedButtonTitle;
    }

    else
    {
      v16 = v4;
    }

    confirmationButtonTitle = v16;

    optOutButtonTitle = [objc_opt_class() localizedStringForKey:@"DICTATION_OPT_IN_ENABLE"];
    v19 = [objc_opt_class() localizedStringForKey:@"DICTATION_OPT_IN_NOT_NOW"];
  }

  v24 = +[NSMutableDictionary dictionary];
  [v24 setObject:title forKey:kCFUserNotificationAlertHeaderKey];
  [v24 setObject:message forKey:kCFUserNotificationAlertMessageKey];
  [v24 setObject:confirmationButtonTitle forKey:kCFUserNotificationDefaultButtonTitleKey];
  v25 = [NSNumber numberWithBool:1];
  [v24 setObject:v25 forKey:@"DismissOnLock"];

  if (v19)
  {
    [v24 setObject:v19 forKey:kCFUserNotificationOtherButtonTitleKey];
  }

  if (optOutButtonTitle)
  {
    [v24 setObject:optOutButtonTitle forKey:kCFUserNotificationAlternateButtonTitleKey];
  }

  v26 = [NSNumber numberWithBool:1];
  [v24 setObject:v26 forKey:@"SBUserNotificationAllowMenuButtonDismissal"];

  v27 = [NSNumber numberWithBool:1];
  [v24 setObject:v27 forKey:@"SBUserNotificationForcesModalAlertAppearance"];

  v28 = [NSNumber numberWithBool:1];
  [v24 setObject:v28 forKey:@"SBUserNotificationDisplayActionButtonOnLockScreen"];

  v29 = [NSNumber numberWithBool:1];
  [v24 setObject:v29 forKey:kCFUserNotificationAlertTopMostKey];

  return v24;
}

- (void)dismissDialogWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v3 = handlerCopy;
  TIDispatchAsync();
}

- (void)dismissedDataSharingWithResponse:(int64_t)response
{
  if (response > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_100012910[response];
  }

  sub_10000BEB4(v4);
  sharedPreferences = [qword_100026620 sharedPreferences];
  [sharedPreferences setSiriDataSharingOptInAlertPresented:1 completion:0];
}

- (void)removeAllDynamicDictionariesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (TICanLogMessageAtLevel())
  {
    v4 = TIOSLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10000E1F4();
    }
  }

  v5 = handlerCopy;
  TIDispatchAsync();
}

- (TITextCheckerExemptions)textCheckerExemptions
{
  textCheckerExemptions = self->_textCheckerExemptions;
  if (!textCheckerExemptions)
  {
    v4 = objc_opt_new();
    v5 = self->_textCheckerExemptions;
    self->_textCheckerExemptions = v4;

    [(TITextCheckerExemptions *)self->_textCheckerExemptions setAssertsObservers:1];
    [(TITextCheckerExemptions *)self->_textCheckerExemptions setAssertsObservers:0];
    textCheckerExemptions = self->_textCheckerExemptions;
  }

  return textCheckerExemptions;
}

- (void)string:(id)string isExemptFromTextCheckerWithCompletionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  if ([stringCopy _looksLikeNumberInput])
  {
    v8 = 0;
  }

  else
  {
    textCheckerExemptions = [(TIRemoteDataHandle *)self textCheckerExemptions];
    v8 = [textCheckerExemptions stringIsExemptFromChecker:stringCopy];
  }

  if (TICanLogMessageAtLevel())
  {
    v10 = TIOSLogFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10000E3BC(v8, stringCopy, v10);
    }
  }

  handlerCopy[2](handlerCopy, v8);
}

+ (id)localDictionaryPath
{
  v2 = +[TIKeyboardInputManager keyboardUserDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"LocalDictionary"];

  return v3;
}

- (void)requestTextCheckerLocalDictionaryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (TICanLogMessageAtLevel())
  {
    v4 = TIOSLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10000E490();
    }
  }

  v5 = +[TIRemoteDataHandle localDictionaryPath];
  v6 = [NSData dataWithContentsOfFile:v5];
  handlerCopy[2](handlerCopy, v6);
}

- (void)appendWordToTextCheckerLocalDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (TICanLogMessageAtLevel())
  {
    v4 = TIOSLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10000E530(dictionaryCopy);
    }
  }

  uTF8String = [dictionaryCopy UTF8String];
  v6 = +[TIRemoteDataHandle localDictionaryPath];
  v7 = fopen([v6 fileSystemRepresentation], "a+");
  if (v7)
  {
    v8 = v7;
    if (dictionaryCopy)
    {
      if (uTF8String)
      {
        v9 = strlen(uTF8String);
        if (v9)
        {
          fwrite(uTF8String, 1uLL, v9, v8);
          fwrite("\n", 1uLL, 1uLL, v8);
          fflush(v8);
          v10 = fileno(v8);
          fsync(v10);
        }
      }
    }

    fclose(v8);
  }
}

+ (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = +[NSLocale _deviceLanguage];
  localizations = [v4 localizations];
  v15 = v5;
  v7 = [NSArray arrayWithObjects:&v15 count:1];
  v8 = [NSBundle preferredLocalizationsFromArray:localizations forPreferences:v7];

  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [v4 localizedStringForKey:keyCopy value:0 table:@"AssistantSettings" localization:v9];
  v11 = v10;
  if (v10 && ([v10 isEqualToString:keyCopy] & 1) == 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = [v4 localizedStringForKey:keyCopy value:&stru_10001CFB8 table:@"AssistantSettings"];
  }

  v13 = v12;

  return v13;
}

- (void)performTrainingForClient:(id)client withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  clientCopy = client;
  v7 = +[TIResponseKitTrainerImpl sharedTrainer];
  [v7 performTrainingForClient:clientCopy withCompletionHandler:handlerCopy];
}

- (void)updateForActiveLocaleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v3 = identifiersCopy;
  TIDispatchAsync();
}

- (void)updateKeyboardType:(unint64_t)type appIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  TIDispatchAsync();
}

- (void)alternativesForText:(id)text completionHandler:(id)handler
{
  textCopy = text;
  handlerCopy = handler;
  v5 = handlerCopy;
  v6 = textCopy;
  TIDispatchAsync();
}

- (void)ingestSentence:(id)sentence language:(id)language phraseRanges:(id)ranges
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000E5D4();
  }
}

- (void)getIsSuggestingStrongPasswordsAvailableWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  (*(handler + 2))(handlerCopy, +[TIAppAutofillManager isSuggestingStrongPasswordsAvailable]);
}

@end