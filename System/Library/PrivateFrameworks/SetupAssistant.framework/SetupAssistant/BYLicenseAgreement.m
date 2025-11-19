@interface BYLicenseAgreement
+ (unint64_t)versionOfAcceptedAgreement;
+ (unint64_t)versionOfOnDiskAgreement;
+ (void)_clearAcceptedLicenseVersion;
+ (void)recordUserAcceptedAgreementVersion:(unint64_t)a3;
@end

@implementation BYLicenseAgreement

+ (void)_clearAcceptedLicenseVersion
{
  CFPreferencesSetAppValue(@"acceptedSLAVersion", 0, @"com.apple.purplebuddy.notbackedup");

  CFPreferencesAppSynchronize(@"com.apple.purplebuddy.notbackedup");
}

+ (unint64_t)versionOfOnDiskAgreement
{
  if (versionOfOnDiskAgreement_onceToken != -1)
  {
    +[BYLicenseAgreement versionOfOnDiskAgreement];
  }

  return versionOfOnDiskAgreement_version;
}

void __46__BYLicenseAgreement_versionOfOnDiskAgreement__block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getSFLicenseVersionNumberSymbolLoc_ptr;
  v8 = getSFLicenseVersionNumberSymbolLoc_ptr;
  if (!getSFLicenseVersionNumberSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getSFLicenseVersionNumberSymbolLoc_block_invoke;
    v4[3] = &unk_1E7D02730;
    v4[4] = &v5;
    __getSFLicenseVersionNumberSymbolLoc_block_invoke(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v3 = +[BYSiriUtilities deviceSupportsSystemAssistantExperience];
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  v1 = v0();
  if ([v1 hasPrefix:@"EA"])
  {
    v2 = [v1 substringFromIndex:2];

    v1 = v2;
  }

  versionOfOnDiskAgreement_version = [v1 integerValue];
}

+ (unint64_t)versionOfAcceptedAgreement
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"acceptedSLAVersion", @"com.apple.purplebuddy.notbackedup", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    return AppIntegerValue & ~(AppIntegerValue >> 63);
  }

  else
  {
    return 0;
  }
}

+ (void)recordUserAcceptedAgreementVersion:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 versionOfAcceptedAgreement];
  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    v8 = a3;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "SLA: Accepted software license version %llu! Previous version was %llu.", &v7, 0x16u);
  }

  CFPreferencesSetAppValue(@"acceptedSLAVersion", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3], @"com.apple.purplebuddy.notbackedup");
  CFPreferencesAppSynchronize(@"com.apple.purplebuddy.notbackedup");
  v6 = *MEMORY[0x1E69E9840];
}

@end