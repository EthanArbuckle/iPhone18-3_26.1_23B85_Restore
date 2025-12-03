@interface TITypologyPreferencesEnabledForTesting
- (BOOL)isInternalDeviceWithForcedTypologyLoggingForTesting;
- (BOOL)typologyLoggingEnabled;
- (TITypologyPreferencesEnabledForTesting)initWithOutputPath:(id)path;
- (id)typologyDirectoryURL;
@end

@implementation TITypologyPreferencesEnabledForTesting

- (BOOL)isInternalDeviceWithForcedTypologyLoggingForTesting
{
  if (TI_IS_INTERNAL_INSTALL::once_token != -1)
  {
    dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
  }

  return TI_IS_INTERNAL_INSTALL::is_internal_install;
}

- (id)typologyDirectoryURL
{
  if (TI_IS_INTERNAL_INSTALL::once_token != -1)
  {
    dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
  }

  if (TI_IS_INTERNAL_INSTALL::is_internal_install == 1)
  {
    v3 = MEMORY[0x277CBEBC0];
    outpath = [(TITypologyPreferencesEnabledForTesting *)self outpath];
    v5 = [v3 fileURLWithPath:outpath];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)typologyLoggingEnabled
{
  if (TI_IS_INTERNAL_INSTALL::once_token != -1)
  {
    dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
  }

  return TI_IS_INTERNAL_INSTALL::is_internal_install;
}

- (TITypologyPreferencesEnabledForTesting)initWithOutputPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = TITypologyPreferencesEnabledForTesting;
  v6 = [(TITypologyPreferencesEnabledForTesting *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outpath, path);
  }

  return v7;
}

@end