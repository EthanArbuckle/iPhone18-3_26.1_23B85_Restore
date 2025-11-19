void SDLogInitIfNeeded()
{
  if (SDLogInitIfNeeded_once != -1)
  {
    dispatch_once(&SDLogInitIfNeeded_once, &__block_literal_global);
  }
}

void __SDLogInitIfNeeded_block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_InitializingSp.isa);
  v0 = os_log_create(SDLoggingSubsystem, kSDLoggingContextFramework);
  v1 = SDLogContextFacilityLocalSRBridge;
  SDLogContextFacilityLocalSRBridge = v0;

  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = _dateFormatter;
  _dateFormatter = v2;

  v4 = _dateFormatter;
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];

  [_dateFormatter setDateFormat:@"yyyyMMdd-HHmmss"];
  v6 = SDLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(SDLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "SDLogInitIfNeeded_block_invoke";
    _os_log_impl(&dword_26B2CF000, v6, OS_LOG_TYPE_DEFAULT, "%s ::: SpeechDetector logging initialized", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}