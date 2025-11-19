@interface TITypologyPreferences
- (BOOL)_typologyLoggingEnabledByInternalPreference;
- (BOOL)_typologyLoggingEnabledByProfile;
- (BOOL)typologyLoggingEnabledByProfile;
- (NSURL)typologyDirectoryURL;
- (TITypologyProfileOptInManaging)typologyProfileOptInManager;
- (int64_t)maxBytesPersistedTypologyRecords;
- (int64_t)maxBytesPersistedTypologyTraceLogs;
@end

@implementation TITypologyPreferences

- (BOOL)_typologyLoggingEnabledByProfile
{
  v2 = [(TITypologyPreferences *)self typologyProfileOptInManager];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isProfileInstalledAndUserEnabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (TITypologyProfileOptInManaging)typologyProfileOptInManager
{
  WeakRetained = objc_loadWeakRetained(&self->_typologyProfileOptInManager);

  return WeakRetained;
}

- (BOOL)_typologyLoggingEnabledByInternalPreference
{
  if (TI_IS_INTERNAL_INSTALL::once_token != -1)
  {
    dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
  }

  if (TI_IS_INTERNAL_INSTALL::is_internal_install != 1)
  {
    return 0;
  }

  v2 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v3 = [v2 BOOLForKey:53];

  return v3;
}

- (int64_t)maxBytesPersistedTypologyTraceLogs
{
  if ([(TITypologyPreferences *)self _typologyLoggingEnabledByProfile])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 0x200000;
  }
}

- (int64_t)maxBytesPersistedTypologyRecords
{
  if ([(TITypologyPreferences *)self _typologyLoggingEnabledByProfile])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return 0x80000;
  }
}

- (NSURL)typologyDirectoryURL
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = TI_KB_USER_DIRECTORY();
  v4 = [(TITypologyPreferences *)self _typologyLoggingEnabledByProfile];
  v5 = MEMORY[0x277CBEBC0];
  if (v4)
  {
    v13[0] = v3;
    v6 = @"TypologyVault";
    v7 = v13;
  }

  else
  {
    v12 = v3;
    v6 = @"Typology";
    v7 = &v12;
  }

  v7[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v9 = [v5 fileURLWithPathComponents:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)typologyLoggingEnabledByProfile
{
  v3 = TI_DEVICE_UNLOCKED_SINCE_BOOT();
  if (v3)
  {

    LOBYTE(v3) = [(TITypologyPreferences *)self _typologyLoggingEnabledByProfile];
  }

  return v3;
}

@end