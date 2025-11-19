@interface TIRemoteDataHandle
+ (BOOL)shouldAcceptRequestForMeCardWithAuditToken:(id *)a3;
+ (id)localDictionaryPath;
+ (id)localizedStringForKey:(id)a3;
- (TITextCheckerExemptions)textCheckerExemptions;
- (id)notificationDetailsForType:(int64_t)a3;
- (void)addLinguisticAssetsAssertionForLanguage:(id)a3 assertionID:(id)a4 region:(id)a5 clientID:(id)a6 withHandler:(id)a7;
- (void)alternativesForText:(id)a3 completionHandler:(id)a4;
- (void)appendWordToTextCheckerLocalDictionary:(id)a3;
- (void)dismissDialogWithCompletionHandler:(id)a3;
- (void)dismissedDataSharingWithResponse:(int64_t)a3;
- (void)fetchAssetUpdateStatusForInputModeIdentifier:(id)a3 callback:(id)a4;
- (void)getIsSuggestingStrongPasswordsAvailableWithCompletionHandler:(id)a3;
- (void)ingestSentence:(id)a3 language:(id)a4 phraseRanges:(id)a5;
- (void)launchPencilSettings;
- (void)performTrainingForClient:(id)a3 withCompletionHandler:(id)a4;
- (void)presentDialogForType:(int64_t)a3 withCompletionHandler:(id)a4;
- (void)removeAllDynamicDictionariesWithCompletionHandler:(id)a3;
- (void)removeLinguisticAssetsAssertionWithIdentifier:(id)a3 forClientID:(id)a4 withHandler:(id)a5;
- (void)requestLinguisticAssetsForLanguage:(id)a3 completion:(id)a4;
- (void)requestMeCardWithCompletionHandler:(id)a3;
- (void)requestMeContactWithCompletionHandler:(id)a3;
- (void)requestTextCheckerLocalDictionaryWithCompletionHandler:(id)a3;
- (void)string:(id)a3 isExemptFromTextCheckerWithCompletionHandler:(id)a4;
- (void)updateAssetForInputModeIdentifier:(id)a3 callback:(id)a4;
- (void)updateForActiveLocaleIdentifiers:(id)a3;
- (void)updateKeyboardType:(unint64_t)a3 appIdentifier:(id)a4;
@end

@implementation TIRemoteDataHandle

+ (BOOL)shouldAcceptRequestForMeCardWithAuditToken:(id *)a3
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

- (void)requestLinguisticAssetsForLanguage:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[TILinguisticAssetDownloadServer sharedServer];
  [v7 start];

  v8 = +[TILinguisticAssetDownloadServer sharedServer];
  [v8 requestLinguisticAssetsForLanguage:v6 completion:v5];
}

- (void)addLinguisticAssetsAssertionForLanguage:(id)a3 assertionID:(id)a4 region:(id)a5 clientID:(id)a6 withHandler:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = +[TILinguisticAssetDownloadServer sharedServer];
  [v16 start];

  v17 = +[TILinguisticAssetDownloadServer sharedServer];
  [v17 addLinguisticAssetsAssertionForLanguage:v15 assertionID:v14 region:v13 clientID:v12 withHandler:v11];
}

- (void)removeLinguisticAssetsAssertionWithIdentifier:(id)a3 forClientID:(id)a4 withHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[TILinguisticAssetDownloadServer sharedServer];
  [v10 removeLinguisticAssetsAssertionWithIdentifier:v9 forClientID:v8 withHandler:v7];
}

- (void)fetchAssetUpdateStatusForInputModeIdentifier:(id)a3 callback:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[TILinguisticAssetDownloadServer sharedServer];
  [v7 fetchAssetUpdateStatusForInputModeIdentifier:v6 callback:v5];
}

- (void)updateAssetForInputModeIdentifier:(id)a3 callback:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[TILinguisticAssetDownloadServer sharedServer];
  [v7 updateAssetForInputModeIdentifier:v6 callback:v5];
}

- (void)requestMeCardWithCompletionHandler:(id)a3
{
  v3 = a3;
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
    v8 = v3;
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

    (*(v3 + 2))(v3, 0);
  }
}

- (void)requestMeContactWithCompletionHandler:(id)a3
{
  v3 = a3;
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
    v8 = v3;
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

    (*(v3 + 2))(v3, 0);
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

- (void)presentDialogForType:(int64_t)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    sub_10000DFF0(a2, self);
  }

  v7 = v6;
  TIDispatchAsync();
}

- (id)notificationDetailsForType:(int64_t)a3
{
  if (a3 == 3)
  {
    v22 = objc_alloc_init(sub_10000BC44());
    v23 = [v22 dictationDataSharingOptInReminderViewModel];
    v3 = [v23 title];
    v9 = [v23 message];
    v17 = [v23 confirmationButtonTitle];

    v19 = 0;
    v18 = 0;
  }

  else if (a3 == 2)
  {
    v20 = objc_alloc_init(sub_10000BC44());
    v21 = [v20 dictationDataSharingOptInAlertViewModel];
    v3 = [v21 title];
    v9 = [v21 message];
    v18 = [v21 optOutButtonTitle];
    v17 = [v21 optInButtonTitle];

    v19 = 0;
  }

  else if (a3)
  {
    v3 = [objc_opt_class() localizedStringForKey:@"EXTENSION_OPT_IN_TITLE"];
    v9 = [objc_opt_class() localizedStringForKey:@"EXTENSION_OPT_IN_MESSAGE"];
    v18 = [objc_opt_class() localizedStringForKey:@"EXTENSION_OPT_IN_ADD"];
    v19 = [objc_opt_class() localizedStringForKey:@"DICTATION_OPT_IN_ABOUT"];
    v17 = [objc_opt_class() localizedStringForKey:@"DICTATION_OPT_IN_NOT_NOW"];
  }

  else
  {
    v3 = [objc_opt_class() localizedStringForKey:@"DICTATION_OPT_IN_TITLE"];
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

    v9 = [v7 localizedStringForKey:v8];
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
    v13 = [v12 privacyFlow];
    v14 = [v13 localizedButtonTitle];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v4;
    }

    v17 = v16;

    v18 = [objc_opt_class() localizedStringForKey:@"DICTATION_OPT_IN_ENABLE"];
    v19 = [objc_opt_class() localizedStringForKey:@"DICTATION_OPT_IN_NOT_NOW"];
  }

  v24 = +[NSMutableDictionary dictionary];
  [v24 setObject:v3 forKey:kCFUserNotificationAlertHeaderKey];
  [v24 setObject:v9 forKey:kCFUserNotificationAlertMessageKey];
  [v24 setObject:v17 forKey:kCFUserNotificationDefaultButtonTitleKey];
  v25 = [NSNumber numberWithBool:1];
  [v24 setObject:v25 forKey:@"DismissOnLock"];

  if (v19)
  {
    [v24 setObject:v19 forKey:kCFUserNotificationOtherButtonTitleKey];
  }

  if (v18)
  {
    [v24 setObject:v18 forKey:kCFUserNotificationAlternateButtonTitleKey];
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

- (void)dismissDialogWithCompletionHandler:(id)a3
{
  v4 = a3;
  v3 = v4;
  TIDispatchAsync();
}

- (void)dismissedDataSharingWithResponse:(int64_t)a3
{
  if (a3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_100012910[a3];
  }

  sub_10000BEB4(v4);
  v5 = [qword_100026620 sharedPreferences];
  [v5 setSiriDataSharingOptInAlertPresented:1 completion:0];
}

- (void)removeAllDynamicDictionariesWithCompletionHandler:(id)a3
{
  v3 = a3;
  if (TICanLogMessageAtLevel())
  {
    v4 = TIOSLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10000E1F4();
    }
  }

  v5 = v3;
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

- (void)string:(id)a3 isExemptFromTextCheckerWithCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 _looksLikeNumberInput])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(TIRemoteDataHandle *)self textCheckerExemptions];
    v8 = [v9 stringIsExemptFromChecker:v6];
  }

  if (TICanLogMessageAtLevel())
  {
    v10 = TIOSLogFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10000E3BC(v8, v6, v10);
    }
  }

  v7[2](v7, v8);
}

+ (id)localDictionaryPath
{
  v2 = +[TIKeyboardInputManager keyboardUserDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"LocalDictionary"];

  return v3;
}

- (void)requestTextCheckerLocalDictionaryWithCompletionHandler:(id)a3
{
  v3 = a3;
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
  v3[2](v3, v6);
}

- (void)appendWordToTextCheckerLocalDictionary:(id)a3
{
  v3 = a3;
  if (TICanLogMessageAtLevel())
  {
    v4 = TIOSLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_10000E530(v3);
    }
  }

  v5 = [v3 UTF8String];
  v6 = +[TIRemoteDataHandle localDictionaryPath];
  v7 = fopen([v6 fileSystemRepresentation], "a+");
  if (v7)
  {
    v8 = v7;
    if (v3)
    {
      if (v5)
      {
        v9 = strlen(v5);
        if (v9)
        {
          fwrite(v5, 1uLL, v9, v8);
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

+ (id)localizedStringForKey:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = +[NSLocale _deviceLanguage];
  v6 = [v4 localizations];
  v15 = v5;
  v7 = [NSArray arrayWithObjects:&v15 count:1];
  v8 = [NSBundle preferredLocalizationsFromArray:v6 forPreferences:v7];

  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [v4 localizedStringForKey:v3 value:0 table:@"AssistantSettings" localization:v9];
  v11 = v10;
  if (v10 && ([v10 isEqualToString:v3] & 1) == 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = [v4 localizedStringForKey:v3 value:&stru_10001CFB8 table:@"AssistantSettings"];
  }

  v13 = v12;

  return v13;
}

- (void)performTrainingForClient:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[TIResponseKitTrainerImpl sharedTrainer];
  [v7 performTrainingForClient:v6 withCompletionHandler:v5];
}

- (void)updateForActiveLocaleIdentifiers:(id)a3
{
  v4 = a3;
  v3 = v4;
  TIDispatchAsync();
}

- (void)updateKeyboardType:(unint64_t)a3 appIdentifier:(id)a4
{
  v5 = a4;
  v4 = v5;
  TIDispatchAsync();
}

- (void)alternativesForText:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v5 = v8;
  v6 = v7;
  TIDispatchAsync();
}

- (void)ingestSentence:(id)a3 language:(id)a4 phraseRanges:(id)a5
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10000E5D4();
  }
}

- (void)getIsSuggestingStrongPasswordsAvailableWithCompletionHandler:(id)a3
{
  v4 = a3;
  (*(a3 + 2))(v4, +[TIAppAutofillManager isSuggestingStrongPasswordsAvailable]);
}

@end