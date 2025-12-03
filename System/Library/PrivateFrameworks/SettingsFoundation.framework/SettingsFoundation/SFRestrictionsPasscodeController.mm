@interface SFRestrictionsPasscodeController
+ (BOOL)hasHashAndSaltLegacyPassword;
+ (BOOL)legacyRestrictionsInEffect;
+ (BOOL)settingEnabled;
+ (BOOL)validatePIN:(id)n;
+ (id)_generateSalt;
+ (id)_keychainPasswordForRestrictions;
+ (id)hashForHashAndSaltLegacyRestrictions;
+ (id)newHashDataForPassword:(id)password andSalt:(id)salt;
+ (id)pinFromHashAndSaltLegacyPassword;
+ (id)saltForHashAndSaltLegacyRestrictions;
+ (void)_migrateRestrictionsPasscodeIfNeeded;
+ (void)_removeKeychainPasswordForRestrictions;
+ (void)_setKeychainPasswordForRestrictions:(id)restrictions;
+ (void)migrateRestrictionsPasscode;
+ (void)pinFromHashAndSaltLegacyPassword;
+ (void)removePasswordForHashAndSaltLegacyRestrictions;
+ (void)setPIN:(id)n;
+ (void)validateKeychainWithScreenTime;
@end

@implementation SFRestrictionsPasscodeController

+ (void)_migrateRestrictionsPasscodeIfNeeded
{
  if (_migrateRestrictionsPasscodeIfNeeded_onceToken != -1)
  {
    +[SFRestrictionsPasscodeController _migrateRestrictionsPasscodeIfNeeded];
  }
}

uint64_t __72__SFRestrictionsPasscodeController__migrateRestrictionsPasscodeIfNeeded__block_invoke()
{
  +[SFRestrictionsPasscodeController migrateRestrictionsPasscode];

  return +[SFRestrictionsPasscodeController validateKeychainWithScreenTime];
}

+ (void)migrateRestrictionsPasscode
{
  if (SpringBoardPreferenceDomain_once != -1)
  {
    +[SFRestrictionsPasscodeController migrateRestrictionsPasscode];
  }

  v3 = SpringBoardPreferenceDomain_springBoardDomain;
  v4 = CFPreferencesCopyAppValue(@"SBParentalControlsPIN", SpringBoardPreferenceDomain_springBoardDomain);
  _keychainPasswordForRestrictions = [self _keychainPasswordForRestrictions];
  if (_keychainPasswordForRestrictions)
  {
LABEL_10:
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (+[SFRestrictionsPasscodeController hasHashAndSaltLegacyPassword])
  {
    v6 = SFLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[SFRestrictionsPasscodeController migrateRestrictionsPasscode];
    }

    v7 = +[SFRestrictionsPasscodeController pinFromHashAndSaltLegacyPassword];
    if (v7)
    {
      [SFRestrictionsPasscodeController setPIN:v7];
    }

    goto LABEL_10;
  }

  if (v4)
  {
    v8 = SFLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[SFRestrictionsPasscodeController migrateRestrictionsPasscode];
    }

    [SFRestrictionsPasscodeController setPIN:v4];
LABEL_11:
    CFPreferencesSetAppValue(@"SBParentalControlsPIN", 0, v3);
  }

LABEL_12:
  if (+[SFRestrictionsPasscodeController hasHashAndSaltLegacyPassword])
  {
    [self removePasswordForHashAndSaltLegacyRestrictions];
  }
}

+ (void)validateKeychainWithScreenTime
{
  _keychainPasswordForRestrictions = [self _keychainPasswordForRestrictions];
  if (_keychainPasswordForRestrictions)
  {
    v3 = getSTManagementState();
    if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v4 = dispatch_semaphore_create(0);
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __66__SFRestrictionsPasscodeController_validateKeychainWithScreenTime__block_invoke;
      v6[3] = &unk_279BB0810;
      v7 = v4;
      v5 = v4;
      [v3 authenticateRestrictionsPasscode:_keychainPasswordForRestrictions completionHandler:v6];
      dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    }
  }
}

intptr_t __66__SFRestrictionsPasscodeController_validateKeychainWithScreenTime__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = SFLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __66__SFRestrictionsPasscodeController_validateKeychainWithScreenTime__block_invoke_cold_1();
    }
  }

  else
  {
    +[SFRestrictionsPasscodeController _removeKeychainPasswordForRestrictions];
    v3 = SFLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __66__SFRestrictionsPasscodeController_validateKeychainWithScreenTime__block_invoke_cold_2();
    }
  }

  AnalyticsSendEventLazy();
  return dispatch_semaphore_signal(*(a1 + 32));
}

id __66__SFRestrictionsPasscodeController_validateKeychainWithScreenTime__block_invoke_23()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"KeychainMigration";
  v4[0] = &unk_28774C948;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id __66__SFRestrictionsPasscodeController_validateKeychainWithScreenTime__block_invoke_29()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"KeychainMigration";
  v4[0] = &unk_28774C960;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

+ (void)setPIN:(id)n
{
  nCopy = n;
  if (SpringBoardPreferenceDomain_once != -1)
  {
    +[SFRestrictionsPasscodeController migrateRestrictionsPasscode];
  }

  v4 = SpringBoardPreferenceDomain_springBoardDomain;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SBParentalControlsEnabled", SpringBoardPreferenceDomain_springBoardDomain, &keyExistsAndHasValidFormat);
  v6 = keyExistsAndHasValidFormat;
  v7 = getSTManagementState();
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 setRestrictionsPasscode:nCopy completionHandler:&__block_literal_global_41];
    if (nCopy)
    {
      goto LABEL_10;
    }
  }

  else if (nCopy)
  {
    [SFRestrictionsPasscodeController _setKeychainPasswordForRestrictions:nCopy];
    goto LABEL_10;
  }

  +[SFRestrictionsPasscodeController _removeKeychainPasswordForRestrictions];
LABEL_10:
  if (v6)
  {
    v8 = AppBooleanValue == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  if ((((nCopy != 0) ^ v9) & 1) == 0)
  {
    if (nCopy)
    {
      v10 = MEMORY[0x277CBED28];
    }

    else
    {
      v10 = MEMORY[0x277CBED10];
    }

    ADClientAddValueForScalarKey();
    CFPreferencesSetAppValue(@"SBParentalControlsEnabled", *v10, v4);
    CFPreferencesAppSynchronize(v4);
    GSSendAppPreferencesChanged();
  }
}

void __43__SFRestrictionsPasscodeController_setPIN___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = SFLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __43__SFRestrictionsPasscodeController_setPIN___block_invoke_cold_1();
    }
  }
}

+ (BOOL)settingEnabled
{
  +[SFRestrictionsPasscodeController _migrateRestrictionsPasscodeIfNeeded];
  v2 = getSTManagementState();
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0 && ([v2 isRestrictionsPasscodeSet] & 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v4 = +[SFRestrictionsPasscodeController _keychainPasswordForRestrictions];
    if (v4)
    {
      v3 = 1;
    }

    else
    {
      v3 = +[SFRestrictionsPasscodeController legacyRestrictionsInEffect];
    }
  }

  return v3;
}

+ (BOOL)validatePIN:(id)n
{
  nCopy = n;
  +[SFRestrictionsPasscodeController _migrateRestrictionsPasscodeIfNeeded];
  v4 = getSTManagementState();
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v5 = dispatch_semaphore_create(0);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__SFRestrictionsPasscodeController_validatePIN___block_invoke;
    v10[3] = &unk_279BB0858;
    v13 = &v14;
    v11 = nCopy;
    v6 = v5;
    v12 = v6;
    [v4 authenticateRestrictionsPasscode:v11 completionHandler:v10];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    v7 = *(v15 + 24);

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v8 = +[SFRestrictionsPasscodeController _keychainPasswordForRestrictions];
    v7 = [nCopy isEqualToString:v8];
  }

  return v7 & 1;
}

intptr_t __48__SFRestrictionsPasscodeController_validatePIN___block_invoke(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = +[SFRestrictionsPasscodeController _keychainPasswordForRestrictions];
    if (v3)
    {
      v4 = a1[4];
      v5 = +[SFRestrictionsPasscodeController _keychainPasswordForRestrictions];
      *(*(a1[6] + 8) + 24) = [v4 isEqualToString:v5];
    }
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  v6 = a1[5];

  return dispatch_semaphore_signal(v6);
}

+ (void)_removeKeychainPasswordForRestrictions
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (id)_keychainPasswordForRestrictions
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], @"user");
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], @"ParentalControls");
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC558], *MEMORY[0x277CBED28]);
  result = 0;
  v3 = SecItemCopyMatching(Mutable, &result);
  v4 = 0;
  v5 = result;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = result == 0;
  }

  if (!v6)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:result encoding:4];
  }

  CFRelease(Mutable);

  return v4;
}

+ (void)_setKeychainPasswordForRestrictions:(id)restrictions
{
  v3 = [restrictions dataUsingEncoding:4];
  result = 0;
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], @"user");
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], @"ParentalControls");
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBED8], *MEMORY[0x277CDBF18]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC150], MEMORY[0x277CBEC38]);
  v6 = +[SFRestrictionsPasscodeController _keychainPasswordForRestrictions];

  if (v6)
  {
    v7 = CFDictionaryCreateMutable(v4, 0, 0, 0);
    CFDictionaryAddValue(v7, *MEMORY[0x277CDC5E8], v3);
    if (SecItemUpdate(Mutable, v7))
    {
      v8 = SFLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[SFRestrictionsPasscodeController _setKeychainPasswordForRestrictions:];
      }
    }

    CFRelease(v7);
  }

  else
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5E8], v3);
    if (SecItemAdd(Mutable, &result))
    {
      v9 = SFLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[SFRestrictionsPasscodeController _setKeychainPasswordForRestrictions:];
      }
    }
  }

  CFRelease(Mutable);
}

+ (BOOL)hasHashAndSaltLegacyPassword
{
  v2 = +[SFRestrictionsPasscodeController hashForHashAndSaltLegacyRestrictions];
  v3 = v2 != 0;

  return v3;
}

+ (id)pinFromHashAndSaltLegacyPassword
{
  v2 = +[SFRestrictionsPasscodeController hashForHashAndSaltLegacyRestrictions];
  v3 = +[SFRestrictionsPasscodeController saltForHashAndSaltLegacyRestrictions];
  v4 = 0;
  while (1)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04d", v4];
    v6 = [SFRestrictionsPasscodeController newHashDataForPassword:v5 andSalt:v3];
    v7 = [v6 isEqualToData:v2];

    if (v7)
    {
      break;
    }

    v4 = (v4 + 1);
    if (v4 == 10000)
    {
      v8 = SFLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[SFRestrictionsPasscodeController pinFromHashAndSaltLegacyPassword];
      }

      v5 = 0;
      break;
    }
  }

  return v5;
}

+ (BOOL)legacyRestrictionsInEffect
{
  if (SpringBoardPreferenceDomain_once != -1)
  {
    +[SFRestrictionsPasscodeController migrateRestrictionsPasscode];
  }

  v2 = CFPreferencesCopyAppValue(@"SBParentalControlsPIN", SpringBoardPreferenceDomain_springBoardDomain);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = +[SFRestrictionsPasscodeController hasHashAndSaltLegacyPassword];
  }

  return v3;
}

+ (id)_generateSalt
{
  v4 = arc4random();
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:&v4 length:4];

  return v2;
}

+ (id)newHashDataForPassword:(id)password andSalt:(id)salt
{
  saltCopy = salt;
  v6 = [password dataUsingEncoding:4];
  v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:20];
  if (saltCopy && v6)
  {
    SecKeyFromPassphraseDataHMACSHA1();
  }

  return v7;
}

+ (id)saltForHashAndSaltLegacyRestrictions
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.restrictionspassword"];
  v3 = [v2 dataForKey:@"RestrictionsPasswordSalt"];

  return v3;
}

+ (id)hashForHashAndSaltLegacyRestrictions
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.restrictionspassword"];
  v3 = [v2 dataForKey:@"RestrictionsPasswordKey"];

  return v3;
}

+ (void)removePasswordForHashAndSaltLegacyRestrictions
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.restrictionspassword"];
  [v2 removeObjectForKey:@"RestrictionsPasswordKey"];
  [v2 removeObjectForKey:@"RestrictionsPasswordSalt"];
}

void __66__SFRestrictionsPasscodeController_validateKeychainWithScreenTime__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__SFRestrictionsPasscodeController_setPIN___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_setKeychainPasswordForRestrictions:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_setKeychainPasswordForRestrictions:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)pinFromHashAndSaltLegacyPassword
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end