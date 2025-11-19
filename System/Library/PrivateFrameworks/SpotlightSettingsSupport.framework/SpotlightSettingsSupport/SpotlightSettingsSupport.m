void sub_26B81C9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSPGetDisabledBundleSetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SearchLibrary();
  result = dlsym(v2, "SPGetDisabledBundleSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSPGetDisabledBundleSetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SearchLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SearchLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SearchLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279D049C8;
    v6 = 0;
    SearchLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SearchLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!SearchLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __SearchLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SearchLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getSPGetDisabledAppSetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SearchLibrary();
  result = dlsym(v2, "SPGetDisabledAppSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSPGetDisabledAppSetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_26B81DBFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_26B81E11C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void *__getSPGetDisabledBundleSetSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = SearchLibrary_0();
  result = dlsym(v2, "SPGetDisabledBundleSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSPGetDisabledBundleSetSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SearchLibrary_0()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SearchLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SearchLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279D04AA0;
    v6 = 0;
    SearchLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = SearchLibraryCore_frameworkLibrary_0;
  v1 = v4[0];
  if (!SearchLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __SearchLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SearchLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getSPGetDisabledAppSetSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = SearchLibrary_0();
  result = dlsym(v2, "SPGetDisabledAppSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSPGetDisabledAppSetSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSPGetDisabledBundleSetSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = SearchLibrary_1();
  result = dlsym(v2, "SPGetDisabledBundleSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSPGetDisabledBundleSetSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SearchLibrary_1()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SearchLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SearchLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279D04B88;
    v6 = 0;
    SearchLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = SearchLibraryCore_frameworkLibrary_1;
  v1 = v4[0];
  if (!SearchLibraryCore_frameworkLibrary_1)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __SearchLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SearchLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getSPGetDisabledDomainSetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SearchLibrary_1();
  result = dlsym(v2, "SPGetDisabledDomainSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSPGetDisabledDomainSetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBSCopyDisplayIdentifiersSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279D04BA0;
    v8 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
    if (SpringBoardServicesLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SBSCopyDisplayIdentifiers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSCopyDisplayIdentifiersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void SpotlightSettingsInitLogging()
{
  if (SpotlightSettingsInitLogging_once != -1)
  {
    SpotlightSettingsInitLogging_cold_1();
  }
}

uint64_t __SpotlightSettingsInitLogging_block_invoke()
{
  spotlightSettingsLogHandles = os_log_create("com.apple.SpotlightSettings", "General");

  return MEMORY[0x2821F96F8]();
}