id SUSUILog()
{
  predicate = &SUSUILog___once;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_1);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = SUSUILog___instance;

  return v0;
}

uint64_t SUSUISetupAssistantNeedsToRun()
{
  v1 = 0;
  if (MEMORY[0x28222AAD8])
  {
    v1 = BYSetupAssistantNeedsToRun();
  }

  return v1 & 1;
}

uint64_t SUSUIRequiresAlertPresentationAfterUpdate()
{
  location = objc_alloc_init(SUSUISoftwareUpdateDefaults);
  v4 = 0;
  v2 = 0;
  if (([location needsAlertPresentationAfterOTAUpdate] & 1) != 0 || (v5 = +[SUSUIPreferences sharedInstance](SUSUIPreferences, "sharedInstance"), v4 = 1, LOBYTE(v1) = 0, -[SUSUIPreferences needsAlertPresentationAfterOTAUpdate](v5, "needsAlertPresentationAfterOTAUpdate")))
  {
    LOBYTE(v1) = 0;
    if ((SUSUISetupAssistantNeedsToRun() & 1) == 0)
    {
      v3 = +[SUSUIPreferences sharedInstance];
      v2 = 1;
      v1 = ![(SUSUIPreferences *)v3 preventPostUpdateAlert];
    }
  }

  v7 = v1 & 1;
  if (v2)
  {
    MEMORY[0x277D82BD8](v3);
  }

  if (v4)
  {
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&location, 0);
  return v7 & 1;
}

void SUSUICreateInstallationKeybagWithSecret(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  queue = dispatch_get_global_queue(21, 0);
  v2 = MEMORY[0x277D85DD0];
  v3 = -1073741824;
  v4 = 0;
  v5 = __SUSUICreateInstallationKeybagWithSecret_block_invoke;
  v6 = &unk_279CB3B10;
  v7 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v2);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
}

void __SUSUICreateInstallationKeybagWithSecret_block_invoke(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  if (a1[4])
  {
    v14 = objc_alloc_init(SUSUIControllerClient);
    if (v14)
    {
      if ([v14 createKeybagWithSecret:a1[4]])
      {
        v13 = SUSUILog();
        v12 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v3 = v13;
          v4 = v12;
          __os_log_helper_16_0_0(v11);
          _os_log_impl(&dword_26AC54000, v3, v4, "Successfully created keybag", v11, 2u);
        }

        objc_storeStrong(&v13, 0);
      }

      else
      {
        v10 = SUSUILog();
        v9 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v1 = v10;
          v2 = v9;
          __os_log_helper_16_0_0(v8);
          _os_log_impl(&dword_26AC54000, v1, v2, "Failed to create keybag", v8, 2u);
        }

        objc_storeStrong(&v10, 0);
      }
    }

    objc_storeStrong(&v14, 0);
  }

  else
  {
    location[0] = SUSUILog();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_impl(&dword_26AC54000, log, type, "No secret provided", v15, 2u);
    }

    objc_storeStrong(location, 0);
  }
}

_BYTE *__os_log_helper_16_0_0(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void SUSUICreateInstallationKeybagWithSecretAndHandler(void *a1, void *a2)
{
  location = 0;
  objc_storeStrong(&location, a1);
  v7 = 0;
  objc_storeStrong(&v7, a2);
  queue = dispatch_get_global_queue(21, 0);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __SUSUICreateInstallationKeybagWithSecretAndHandler_block_invoke;
  v4[3] = &unk_279CB3B38;
  v5 = MEMORY[0x277D82BE0](location);
  v6 = MEMORY[0x277D82BE0](v7);
  dispatch_async(queue, v4);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
}

void __SUSUICreateInstallationKeybagWithSecretAndHandler_block_invoke(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  if (!a1[4] && a1[5])
  {
    location[0] = SUSUILog();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_impl(&dword_26AC54000, log, type, "No secret provided", v20, 2u);
    }

    objc_storeStrong(location, 0);
    (*(a1[5] + 16))();
  }

  v19 = objc_alloc_init(SUSUIControllerClient);
  if (v19)
  {
    if ([v19 createKeybagWithSecret:a1[4]])
    {
      v18 = SUSUILog();
      v17 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v18;
        v6 = v17;
        __os_log_helper_16_0_0(v16);
        _os_log_impl(&dword_26AC54000, v5, v6, "Successfully created keybag", v16, 2u);
      }

      objc_storeStrong(&v18, 0);
      if (a1[5])
      {
        (*(a1[5] + 16))();
      }
    }

    else
    {
      v15 = SUSUILog();
      v14 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v3 = v15;
        v4 = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_impl(&dword_26AC54000, v3, v4, "Failed to create keybag", v13, 2u);
      }

      objc_storeStrong(&v15, 0);
      if (a1[5])
      {
        (*(a1[5] + 16))();
      }
    }
  }

  else
  {
    v12 = SUSUILog();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v1 = v12;
      v2 = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_impl(&dword_26AC54000, v1, v2, "Failed to create SUSUIControllerClient", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    if (a1[5])
    {
      (*(a1[5] + 16))();
    }
  }

  objc_storeStrong(&v19, 0);
}

void SUSUIGetPasscodePolicy(id obj)
{
  location = 0;
  objc_storeStrong(&location, obj);
  if (location)
  {
    queue = dispatch_get_global_queue(21, 0);
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __SUSUIGetPasscodePolicy_block_invoke;
    v6 = &unk_279CB3B88;
    v7 = MEMORY[0x277D82BE0](location);
    dispatch_async(queue, &v2);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v7, 0);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  objc_storeStrong(&location, 0);
}

void __SUSUIGetPasscodePolicy_block_invoke(void *a1)
{
  v14[2] = a1;
  v14[1] = a1;
  v14[0] = objc_alloc_init(SUSUIControllerClient);
  if (v14[0])
  {
    v3 = v14[0];
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __SUSUIGetPasscodePolicy_block_invoke_2;
    v12 = &unk_279CB3B60;
    v13 = MEMORY[0x277D82BE0](a1[4]);
    [v3 getPasscodePolicy:&v8];
    objc_storeStrong(&v13, 0);
  }

  else
  {
    oslog = SUSUILog();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v2 = type;
      __os_log_helper_16_0_0(v5);
      _os_log_impl(&dword_26AC54000, log, v2, "Failed to create SUSUIControllerClient, returning NotRequired", v5, 2u);
    }

    objc_storeStrong(&oslog, 0);
    (*(a1[4] + 16))();
  }

  objc_storeStrong(v14, 0);
}

uint64_t __os_log_helper_16_0_1_4_0(uint64_t result, int a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 4;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_0_1_8_0(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 1) = 1;
  *(result + 2) = 0;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_2_1_8_64(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t suPasscodePolicyToSUSUIPasscodePolicyType(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return v2;
}

uint64_t __SUSUIPreferencesChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v7 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v8 = v7;
  block = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = ____SUSUIPreferencesChanged_block_invoke;
  v13 = &__block_descriptor_40_e5_v8__0l;
  v14 = v18;
  dispatch_async(v8, &block);
  return MEMORY[0x277D82BD8](v8);
}

uint64_t __SUSUILog_block_invoke()
{
  v0 = os_log_create(SUSUISubsystem, "Common");
  v1 = SUSUILog___instance;
  SUSUILog___instance = v0;
  return MEMORY[0x277D82BD8](v1);
}

id SUSUILogAuthenticationUI()
{
  predicate = &SUSUILogAuthenticationUI___once;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_3);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = SUSUILogAuthenticationUI___instance;

  return v0;
}

uint64_t __SUSUILogAuthenticationUI_block_invoke()
{
  v0 = os_log_create(SUSUISubsystem, "AuthenticationUI");
  v1 = SUSUILogAuthenticationUI___instance;
  SUSUILogAuthenticationUI___instance = v0;
  return MEMORY[0x277D82BD8](v1);
}

id SUSUILogEmergencyCallUI()
{
  predicate = &SUSUILogEmergencyCallUI___once;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_6);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = SUSUILogEmergencyCallUI___instance;

  return v0;
}

uint64_t __SUSUILogEmergencyCallUI_block_invoke()
{
  v0 = os_log_create(SUSUISubsystem, "EmergencyCall");
  v1 = SUSUILogEmergencyCallUI___instance;
  SUSUILogEmergencyCallUI___instance = v0;
  return MEMORY[0x277D82BD8](v1);
}

id SUSUILogKeybagInterface()
{
  predicate = &SUSUILogKeybagInterface___once;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_9);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = SUSUILogKeybagInterface___instance;

  return v0;
}

uint64_t __SUSUILogKeybagInterface_block_invoke()
{
  v0 = os_log_create(SUSUISubsystem, "Keybag");
  v1 = SUSUILogKeybagInterface___instance;
  SUSUILogKeybagInterface___instance = v0;
  return MEMORY[0x277D82BD8](v1);
}

id SUSUILogPostUpdateAlert()
{
  predicate = &SUSUILogPostUpdateAlert___once;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_12);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = SUSUILogPostUpdateAlert___instance;

  return v0;
}

uint64_t __SUSUILogPostUpdateAlert_block_invoke()
{
  v0 = os_log_create(SUSUISubsystem, "PostUpdateAlert");
  v1 = SUSUILogPostUpdateAlert___instance;
  SUSUILogPostUpdateAlert___instance = v0;
  return MEMORY[0x277D82BD8](v1);
}

id SUSUILogLaggardsUI()
{
  predicate = &SUSUILogLaggardsUI___once;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_15);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = SUSUILogLaggardsUI___instance;

  return v0;
}

uint64_t __SUSUILogLaggardsUI_block_invoke()
{
  v0 = os_log_create(SUSUISubsystem, "LaggardsUI");
  v1 = SUSUILogLaggardsUI___instance;
  SUSUILogLaggardsUI___instance = v0;
  return MEMORY[0x277D82BD8](v1);
}

id SUSUILogExtension()
{
  predicate = &SUSUILogExtension___once;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_18);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = SUSUILogExtension___instance;

  return v0;
}

uint64_t __SUSUILogExtension_block_invoke()
{
  v0 = os_log_create(SUSUISubsystem, "Extension");
  v1 = SUSUILogExtension___instance;
  SUSUILogExtension___instance = v0;
  return MEMORY[0x277D82BD8](v1);
}

uint64_t __os_log_helper_16_2_2_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}