@interface TITypologyProfileOptInManager
+ (id)localizedStringForKey:(id)a3;
- (BOOL)_isProfileInstalledAndUserEnabled;
- (BOOL)devicePasscodeSet;
- (BOOL)iCloudAccountAvailable;
- (BOOL)isTypologyProfileInstalled;
- (TITypologyProfileOptInManager)init;
- (id)notificationDetailsForType:(int64_t)a3;
- (void)_askUserToAllow;
- (void)_launchVPNAndDeviceManagementSettings;
- (void)dismissDialogWithCompletionHandler:(id)a3;
- (void)presentDialogForType:(int64_t)a3 withCompletionHandler:(id)a4;
@end

@implementation TITypologyProfileOptInManager

- (BOOL)_isProfileInstalledAndUserEnabled
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = [v3 BOOLForKey:54];

  v5 = TITypologyDiagnosticExtensionOSLogFacility();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (!v4)
  {
    if (v6)
    {
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s %@", "-[TITypologyProfileOptInManager _isProfileInstalledAndUserEnabled]", @"CustomerTypologyEnabledByDiagnosticExtension is false"];
      *buf = 138412290;
      v50 = v32;
      _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if ([(TITypologyProfileOptInManager *)self isTypologyProfileInstalled])
    {
      v7 = TITypologyProfileStateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22CA55000, v7, OS_LOG_TYPE_DEFAULT, "Profile installed. Checking for elgibility and opt-in.", buf, 2u);
      }

      if ([(TITypologyProfileOptInManager *)self devicePasscodeSet])
      {
        v8 = TITypologyProfileStateLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v9 = "Not eligible for profile (passcode)";
LABEL_18:
          _os_log_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
          goto LABEL_19;
        }

        goto LABEL_19;
      }

      if ([(TITypologyProfileOptInManager *)self iCloudAccountAvailable])
      {
        v8 = TITypologyProfileStateLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v9 = "Not eligible for profile (icloud)";
          goto LABEL_18;
        }

LABEL_19:

        goto LABEL_20;
      }

      v12 = [(TITypologyProfileOptInManager *)self typologyProfileState];

      if (!v12)
      {
        v13 = +[TITypologyProfileState typologyProfileStateFromPersistedState];
        [(TITypologyProfileOptInManager *)self setTypologyProfileState:v13];
      }

      v14 = [(TITypologyProfileOptInManager *)self typologyProfileState];

      if (!v14)
      {
        v15 = [TITypologyProfileState alloc];
        v16 = [MEMORY[0x277CBEAA8] now];
        v17 = [(TITypologyProfileState *)v15 initWithProfileInstallationDate:v16];
        [(TITypologyProfileOptInManager *)self setTypologyProfileState:v17];

        v18 = [(TITypologyProfileOptInManager *)self typologyProfileState];
        [v18 persistState];
      }

      v19 = [(TITypologyProfileOptInManager *)self typologyProfileState];

      if (!v19)
      {
        v8 = TITypologyProfileStateLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22CA55000, v8, OS_LOG_TYPE_ERROR, "Failed to instantiate typology profile state.", buf, 2u);
        }

        goto LABEL_19;
      }

      v20 = [(TITypologyProfileOptInManager *)self typologyProfileState];
      v21 = [v20 userResponse];
      v22 = [v21 isEqualToString:@"Enable"];

      v23 = [(TITypologyProfileOptInManager *)self typologyProfileState];
      v24 = v23;
      if (v22)
      {
        v25 = [v23 userNotificationDate];
        v26 = [v25 dateByAddingTimeInterval:259200.0];

        v5 = [MEMORY[0x277CBEAA8] now];
        v27 = [v26 laterDate:v5];

        v28 = TITypologyProfileStateLog();
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
        LOBYTE(v5) = v27 == v26;
        if (v27 == v26)
        {
          if (v29)
          {
            *buf = 0;
            v30 = "User opted-in.";
            goto LABEL_44;
          }
        }

        else if (v29)
        {
          *buf = 0;
          v30 = "User opted-in, but opt-in has expired.";
LABEL_44:
          _os_log_impl(&dword_22CA55000, v28, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
        }

        goto LABEL_21;
      }

      v33 = [v23 userResponse];
      v34 = [v33 isEqualToString:@"NotNow"];

      v35 = [(TITypologyProfileOptInManager *)self typologyProfileState];
      v36 = v35;
      if (v34)
      {
        v37 = [v35 userNotificationDate];
        v38 = [v37 dateByAddingTimeInterval:600.0];

        v39 = [MEMORY[0x277CBEAA8] now];
        v40 = [v38 earlierDate:v39];

        v41 = TITypologyProfileStateLog();
        v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
        if (v40 == v38)
        {
          if (v42)
          {
            *buf = 0;
            _os_log_impl(&dword_22CA55000, v41, OS_LOG_TYPE_DEFAULT, "User deferred opt-in. Time to ask again.", buf, 2u);
          }

          [(TITypologyProfileOptInManager *)self _askUserToAllow];
        }

        else
        {
          if (v42)
          {
            *buf = 0;
            _os_log_impl(&dword_22CA55000, v41, OS_LOG_TYPE_DEFAULT, "User deferred opt-in. Not time to ask again.", buf, 2u);
          }
        }

        goto LABEL_20;
      }

      v43 = [v35 userResponse];
      v44 = [v43 isEqualToString:@"None"];

      if (v44)
      {
        v45 = TITypologyProfileStateLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22CA55000, v45, OS_LOG_TYPE_DEFAULT, "User has not been asked to opt-in. Asking now.", buf, 2u);
        }

        [(TITypologyProfileOptInManager *)self _askUserToAllow];
        goto LABEL_20;
      }

      v46 = [(TITypologyProfileOptInManager *)self typologyProfileState];
      v47 = [v46 userResponse];
      v48 = [v47 isEqualToString:@"Disabled"];

      if (v48)
      {
        v8 = TITypologyProfileStateLog();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        *buf = 0;
        v9 = "User opted-out.";
        goto LABEL_18;
      }
    }

    else
    {
      v5 = [(TITypologyProfileOptInManager *)self typologyProfileState];

      if (!v5)
      {
        goto LABEL_21;
      }

      [(TITypologyProfileOptInManager *)self setTypologyProfileState:0];
      +[TITypologyProfileState removePersistedState];
    }

LABEL_20:
    LOBYTE(v5) = 0;
    goto LABEL_21;
  }

  if (v6)
  {
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s %@", "-[TITypologyProfileOptInManager _isProfileInstalledAndUserEnabled]", @"CustomerTypologyEnabledByDiagnosticExtension is true"];
    *buf = 138412290;
    v50 = v31;
    _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  LOBYTE(v5) = 1;
LABEL_21:
  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isTypologyProfileInstalled
{
  if (TIGetTypologyEnabledByProfileValue_onceToken != -1)
  {
    dispatch_once(&TIGetTypologyEnabledByProfileValue_onceToken, &__block_literal_global_8766);
  }

  v2 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v3 = [v2 valueForPreferenceKey:@"TypologyEnabledByProfile"];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (void)dismissDialogWithCompletionHandler:(id)a3
{
  v4 = a3;
  v3 = v4;
  TIDispatchAsync();
}

uint64_t __68__TITypologyProfileOptInManager_dismissDialogWithCompletionHandler___block_invoke(uint64_t a1)
{
  if (sNotification)
  {
    CFUserNotificationCancel(sNotification);
    CFRelease(sNotification);
    sNotification = 0;
    (*(sCompletionHandler + 16))(sCompletionHandler, 0);
    v2 = sCompletionHandler;
    sCompletionHandler = 0;
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (id)notificationDetailsForType:(int64_t)a3
{
  if (a3)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v7 = [objc_opt_class() localizedStringForKey:@"TYPOLOGY_PROFILE_OPT_IN_TITLE"];
    v3 = [objc_opt_class() localizedStringForKey:@"TYPOLOGY_PROFILE_OPT_IN_MESSAGE"];
    v4 = [objc_opt_class() localizedStringForKey:@"TYPOLOGY_PROFILE_OPT_IN_ENABLE"];
    v5 = [objc_opt_class() localizedStringForKey:@"TYPOLOGY_PROFILE_OPT_IN_NOT_NOW"];
    v6 = [objc_opt_class() localizedStringForKey:@"TYPOLOGY_PROFILE_OPT_IN_REMOVE_PROFILE"];
  }

  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:v7 forKey:*MEMORY[0x277CBF188]];
  [v8 setObject:v3 forKey:*MEMORY[0x277CBF198]];
  [v8 setObject:v6 forKey:*MEMORY[0x277CBF1E8]];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v8 setObject:v9 forKey:@"DismissOnLock"];

  if (v5)
  {
    [v8 setObject:v5 forKey:*MEMORY[0x277CBF218]];
  }

  if (v4)
  {
    [v8 setObject:v4 forKey:*MEMORY[0x277CBF1C0]];
  }

  v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v8 setObject:v10 forKey:@"SBUserNotificationAllowMenuButtonDismissal"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v8 setObject:v11 forKey:@"SBUserNotificationForcesModalAlertAppearance"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v8 setObject:v12 forKey:@"SBUserNotificationDisplayActionButtonOnLockScreen"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v8 setObject:v13 forKey:*MEMORY[0x277CBF1B0]];

  return v8;
}

- (void)presentDialogForType:(int64_t)a3 withCompletionHandler:(id)a4
{
  v5 = a4;
  v4 = v5;
  TIDispatchAsync();
}

void __76__TITypologyProfileOptInManager_presentDialogForType_withCompletionHandler___block_invoke(uint64_t a1)
{
  if (sNotification)
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    error = 0;
    v4 = [*(a1 + 32) notificationDetailsForType:*(a1 + 48)];
    v5 = *MEMORY[0x277CBECE8];
    sNotification = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, &error, v4);
    v6 = *(a1 + 40);
    if (error)
    {
      v6[2](v6, 0);
    }

    else
    {
      v7 = [v6 copy];
      v8 = sCompletionHandler;
      sCompletionHandler = v7;

      RunLoopSource = CFUserNotificationCreateRunLoopSource(v5, sNotification, _HandleUserNotificationCallBack, 0);
      if (RunLoopSource)
      {
        v10 = RunLoopSource;
        Current = CFRunLoopGetCurrent();
        CFRunLoopAddSource(Current, v10, *MEMORY[0x277CBF048]);
        CFRelease(v10);
      }

      else
      {
        (*(sCompletionHandler + 16))(sCompletionHandler, 0);
        if (sNotification)
        {
          CFUserNotificationCancel(sNotification);
          CFRelease(sNotification);
          sNotification = 0;
        }
      }
    }
  }
}

- (void)_launchVPNAndDeviceManagementSettings
{
  v2 = [NSClassFromString(&cfstr_Lsapplicationw.isa) defaultWorkspace];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=ManagedConfigurationList"];
  v4 = 0;
  [v2 openSensitiveURL:v3 withOptions:0 error:&v4];
}

- (TITypologyProfileOptInManager)init
{
  v6.receiver = self;
  v6.super_class = TITypologyProfileOptInManager;
  v2 = [(TITypologyProfileOptInManager *)&v6 init];
  if (v2)
  {
    v3 = +[TITypologyProfileState typologyProfileStateFromPersistedState];
    typologyProfileState = v2->_typologyProfileState;
    v2->_typologyProfileState = v3;
  }

  return v2;
}

- (void)_askUserToAllow
{
  v3 = TITypologyProfileStateLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEFAULT, "Prompting user to opt-in.", buf, 2u);
  }

  v4 = [TITypologyProfileState alloc];
  v5 = [(TITypologyProfileOptInManager *)self typologyProfileState];
  v6 = [v5 profileInstallationDate];
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [(TITypologyProfileState *)v4 initWithProfileInstallationDate:v6 userNotificationDate:v7 userResponse:@"None"];
  [(TITypologyProfileOptInManager *)self setTypologyProfileState:v8];

  v9 = [(TITypologyProfileOptInManager *)self typologyProfileState];
  [v9 persistState];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__TITypologyProfileOptInManager__askUserToAllow__block_invoke;
  v10[3] = &unk_278730B88;
  v10[4] = self;
  [(TITypologyProfileOptInManager *)self presentDialogForType:0 withCompletionHandler:v10];
}

void __48__TITypologyProfileOptInManager__askUserToAllow__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v3 = TITypologyProfileStateLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        v4 = "Opt-in response: cancel opt-in dialogue.";
        v5 = v17;
LABEL_21:
        _os_log_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
      }

LABEL_22:

      return;
    }

    if (a2 != 1)
    {
      return;
    }

    v6 = TITypologyProfileStateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEFAULT, "Opt-in response: opt-in.", buf, 2u);
    }

    v7 = [TITypologyProfileState alloc];
    v8 = [*(a1 + 32) typologyProfileState];
    v9 = [v8 profileInstallationDate];
    v10 = [*(a1 + 32) typologyProfileState];
    v11 = [v10 userNotificationDate];
    v12 = @"Enable";
LABEL_18:
    v15 = [(TITypologyProfileState *)v7 initWithProfileInstallationDate:v9 userNotificationDate:v11 userResponse:v12];
    [*(a1 + 32) setTypologyProfileState:v15];

    v3 = [*(a1 + 32) typologyProfileState];
    [v3 persistState];
    goto LABEL_22;
  }

  if (a2 != 2)
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        return;
      }

      v3 = TITypologyProfileStateLog();
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v16 = 0;
      v4 = "Opt-in response: unspecified.";
      v5 = &v16;
      goto LABEL_21;
    }

    v14 = TITypologyProfileStateLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_22CA55000, v14, OS_LOG_TYPE_DEFAULT, "Opt-in response: not now.", v19, 2u);
    }

    v7 = [TITypologyProfileState alloc];
    v8 = [*(a1 + 32) typologyProfileState];
    v9 = [v8 profileInstallationDate];
    v10 = [*(a1 + 32) typologyProfileState];
    v11 = [v10 userNotificationDate];
    v12 = @"NotNow";
    goto LABEL_18;
  }

  v13 = TITypologyProfileStateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_22CA55000, v13, OS_LOG_TYPE_DEFAULT, "Opt-in response: go to remove profile.", v18, 2u);
  }

  [*(a1 + 32) _launchVPNAndDeviceManagementSettings];
}

- (BOOL)iCloudAccountAvailable
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 ubiquityIdentityToken];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)devicePasscodeSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getMKBGetDeviceLockStateSymbolLoc_ptr;
  v9 = getMKBGetDeviceLockStateSymbolLoc_ptr;
  if (!getMKBGetDeviceLockStateSymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getMKBGetDeviceLockStateSymbolLoc_block_invoke;
    v5[3] = &unk_278733760;
    v5[4] = &v6;
    __getMKBGetDeviceLockStateSymbolLoc_block_invoke(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    return v2(0) != 3;
  }

  dlerror();
  v4 = abort_report_np();
  return __getMKBGetDeviceLockStateSymbolLoc_block_invoke(v4);
}

+ (id)localizedStringForKey:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Tiassistantset.isa)];
  v5 = MEMORY[0x277CCA8D8];
  v6 = [v4 localizations];
  v7 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v8 = [v5 preferredLocalizationsFromArray:v6 forPreferences:v7];

  if (![v8 count])
  {
    goto LABEL_3;
  }

  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [v4 pathForResource:@"TypologyProfileOptIn" ofType:@"strings" inDirectory:0 forLocalization:v9];

  v11 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v10];
  v12 = [v11 objectForKey:v3];

  if (!v12)
  {
LABEL_3:
    v12 = [v4 localizedStringForKey:v3 value:&stru_283FDFAF8 table:@"TypologyProfileOptIn"];
  }

  return v12;
}

@end