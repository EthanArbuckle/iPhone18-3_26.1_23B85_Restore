id Log()
{
  if (Log_onceToken != -1)
  {
    Log_cold_1();
  }

  v1 = Log_log;

  return v1;
}

void sub_22E41FE94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Log_block_invoke()
{
  Log_log = os_log_create("com.apple.seeding", "daemon");

  return MEMORY[0x2821F96F8]();
}

id SDTransactionCreate(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-%s", "com.apple.seeding", a1];
  [v1 UTF8String];
  v2 = os_transaction_create();

  return v2;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_22E424550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id _allowListedXPCServerInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284251B30];
  v1 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v1 forSelector:sel_getCurrentDevice_ argumentIndex:0 ofReply:1];

  v2 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v2 forSelector:sel_enrollDevice_inProgram_completion_ argumentIndex:0 ofReply:0];

  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v3 forSelector:sel_enrollDevice_inProgram_completion_ argumentIndex:1 ofReply:0];

  v4 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v4 forSelector:sel_enrollDevice_inProgram_completion_ argumentIndex:0 ofReply:1];

  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  [v0 setClasses:v7 forSelector:sel_getDevicesForPlatforms_completion_ argumentIndex:0 ofReply:1];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  [v0 setClasses:v11 forSelector:sel_queryProgramsForSystemAccountsWithPlatforms_disableBuildPrefixMatching_language_completion_ argumentIndex:0 ofReply:1];

  v12 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v12 forSelector:sel_isDeviceEnrolledInBetaProgram_completion_ argumentIndex:0 ofReply:0];

  v13 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v13 forSelector:sel_enrolledBetaProgramForDevice_completion_ argumentIndex:0 ofReply:0];

  v14 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v14 forSelector:sel_enrolledBetaProgramForDevice_completion_ argumentIndex:0 ofReply:1];

  v15 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v15 forSelector:sel_unenrollDevice_completion_ argumentIndex:0 ofReply:0];

  v16 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v16 forSelector:sel_canFileFeedbackOnDevice_completion_ argumentIndex:0 ofReply:0];

  v17 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v17 forSelector:sel_getCurrentSeedingAppleIDForDevice_completion_ argumentIndex:0 ofReply:0];

  v18 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v18 forSelector:sel_getCurrentSeedingAppleIDForDevice_completion_ argumentIndex:0 ofReply:1];

  v19 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v19 forSelector:sel_getCurrentSeedingAppleIDForDevice_completion_ argumentIndex:0 ofReply:0];

  v20 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v20 forSelector:sel_getCurrentSeedingAppleIDForDevice_completion_ argumentIndex:0 ofReply:1];

  v21 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v21 forSelector:sel_setAppleAccountIdentifierFromAlternateDSID_forDevice_completion_ argumentIndex:0 ofReply:0];

  v22 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v22 forSelector:sel_setAppleAccountIdentifierFromAlternateDSID_forDevice_completion_ argumentIndex:1 ofReply:0];

  v23 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v23 forSelector:sel_setAppleAccountIdentifierFromAlternateDSID_forDevice_completion_ argumentIndex:0 ofReply:1];

  v24 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v24 forSelector:sel_deleteSeedingAppleAccountForDevice_completion_ argumentIndex:0 ofReply:0];

  v25 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v25 forSelector:sel_deleteSeedingAppleAccountForDevice_completion_ argumentIndex:0 ofReply:1];

  v26 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v26 forSelector:sel_loadMDMConfigurationWithCompletion_ argumentIndex:1 ofReply:1];

  v27 = MEMORY[0x277CBEB98];
  v28 = objc_opt_class();
  v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
  [v0 setClasses:v29 forSelector:sel_configureWithOfferProgramTokens_requireProgramToken_enrollmentPolicy_language_completion_ argumentIndex:0 ofReply:1];

  return v0;
}

id SDMDMConfiguratorErrorWithType(unint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CCA068];
  if (a1 > 4)
  {
    v2 = @"Unknown Error";
  }

  else
  {
    v2 = *(&off_2787CB8E8 + a1);
  }

  v8[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.seeding.mdm-configurator" code:a1 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id SDMDMConfiguratorErrorAddInvalidTokens(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 userInfo];
  v6 = objc_alloc(MEMORY[0x277CBEB38]);
  v7 = v6;
  if (v5)
  {
    v8 = [v3 userInfo];
    v9 = [v7 initWithDictionary:v8];
  }

  else
  {
    v9 = [v6 initWithCapacity:1];
  }

  [v9 setObject:v4 forKeyedSubscript:@"InvalidTokens"];
  v10 = MEMORY[0x277CCA9B8];
  v11 = [v3 domain];
  v12 = [v10 errorWithDomain:v11 code:objc_msgSend(v3 userInfo:{"code"), v9}];

  return v12;
}

uint64_t SDIsSeedProfileIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.applebetasoftware"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.appleseedsoftware"];
  }

  return v2;
}

void *NilIfNSNull(void *a1)
{
  v1 = MEMORY[0x277CBEB68];
  v2 = a1;
  v3 = [v1 null];
  if (v3 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4;

  return v4;
}

void sub_22E42A0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22E42A3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SDPlatformFromString(void *a1)
{
  v1 = [a1 lowercaseString];
  if ([v1 isEqualToString:@"ios"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"macos"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"tvos"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"watchos"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"homepod"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"visionos"])
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SDPlatformsFromCommaSeparatedString(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = [a1 lowercaseString];
  v2 = [v1 componentsSeparatedByString:{@", "}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= SDPlatformFromString(*(*(&v10 + 1) + 8 * i));
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

id SDStringArrayFromPlatforms(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"ios"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"macos"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 addObject:@"tvos"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 addObject:@"watchos"];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  [v3 addObject:@"homepod"];
  if ((a1 & 0x20) != 0)
  {
LABEL_7:
    [v3 addObject:@"visionos"];
  }

LABEL_8:
  v4 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  return v4;
}

id SDStringForPlatform(char a1)
{
  v1 = SDStringArrayFromPlatforms(a1);
  v2 = [v1 componentsJoinedByString:{@", "}];

  return v2;
}

id Log_0()
{
  if (Log_onceToken_0 != -1)
  {
    Log_cold_1_0();
  }

  v1 = Log_handle;

  return v1;
}

uint64_t __Log_block_invoke_0()
{
  Log_handle = os_log_create("com.apple.seeding", "device");

  return MEMORY[0x2821F96F8]();
}

void sub_22E42CFD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 56));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

id Log_1()
{
  if (Log_onceToken_1 != -1)
  {
    Log_cold_1_1();
  }

  v1 = Log_log_0;

  return v1;
}

void sub_22E42D388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E42D668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22E42D970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E42DD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E42E0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E42E3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E42E708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E42EC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E42F0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E42F2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Log_block_invoke_1()
{
  Log_log_0 = os_log_create("com.apple.seeding", "daemon-client");

  return MEMORY[0x2821F96F8]();
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22E432CE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_22E43738C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id SeedingDefaults()
{
  if (SeedingDefaults_onceToken != -1)
  {
    SeedingDefaults_cold_1();
  }

  v1 = SeedingDefaults_defaults;

  return v1;
}

uint64_t __SeedingDefaults_block_invoke()
{
  SeedingDefaults_defaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.seeding"];

  return MEMORY[0x2821F96F8]();
}