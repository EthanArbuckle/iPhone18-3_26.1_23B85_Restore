uint64_t WebAppMainEntry(int a1, char **a2)
{
  v10 = *MEMORY[0x277D85DE8];
  getpid();
  if (!sandbox_container_path_for_pid())
  {
    setenv("HOME", __value, 1);
    setenv("CFFIXED_USER_HOME", __value, 1);
    if (__strlcat_chk() >= 0x400)
    {
      exit(1);
    }

    setenv("TMPDIR", __value, 1);
  }

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = UIApplicationMain(a1, a2, v5, &cfstr_Appdelegate.isa);

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

id viewServiceLog()
{
  if (viewServiceLog_onceToken != -1)
  {
    viewServiceLog_cold_1();
  }

  v1 = viewServiceLog_log;

  return v1;
}

uint64_t __viewServiceLog_block_invoke()
{
  viewServiceLog_log = os_log_create("com.apple.mobilesafari", "ViewService");

  return MEMORY[0x2821F96F8]();
}

id getCPSPromiseClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCPSPromiseClass_softClass;
  v7 = getCPSPromiseClass_softClass;
  if (!getCPSPromiseClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCPSPromiseClass_block_invoke;
    v3[3] = &unk_279E74110;
    v3[4] = &v4;
    __getCPSPromiseClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_272C19208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCPSPromiseClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ClipServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ClipServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279E74130;
    v6 = 0;
    ClipServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ClipServicesLibraryCore_frameworkLibrary)
  {
    __getCPSPromiseClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CPSPromise");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCPSPromiseClass_block_invoke_cold_1();
  }

  getCPSPromiseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ClipServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ClipServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id webClipIdentifierFromLaunchURL(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 absoluteString];
  if ([v4 hasPrefix:v3])
  {
    v5 = [v4 substringFromIndex:{objc_msgSend(v3, "length")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __getCPSPromiseClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCPSPromiseClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"WebAppViewController.m" lineNumber:22 description:{@"Unable to find class %s", "CPSPromise"}];

  __break(1u);
}

void __getCPSPromiseClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ClipServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"WebAppViewController.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}