uint64_t sub_26AC66D20()
{
  v1 = sub_26AC86138();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26AC66DA8()
{
  v1 = sub_26AC86138();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26AC66E30()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

id getRUIPageClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getRUIPageClass_softClass;
  v13 = getRUIPageClass_softClass;
  if (!getRUIPageClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getRUIPageClass_block_invoke;
    v6 = &unk_279CB6C90;
    v7 = &v9;
    __getRUIPageClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __os_log_helper_16_2_2_8_66_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_1_8_66(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

_BYTE *__os_log_helper_16_0_0(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

id getAASetupAssistantServiceClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getAASetupAssistantServiceClass_softClass;
  v13 = getAASetupAssistantServiceClass_softClass;
  if (!getAASetupAssistantServiceClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getAASetupAssistantServiceClass_block_invoke;
    v6 = &unk_279CB6C90;
    v7 = &v9;
    __getAASetupAssistantServiceClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __os_log_helper_16_2_2_8_66_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

id getBYLicenseAgreementClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getBYLicenseAgreementClass_softClass;
  v13 = getBYLicenseAgreementClass_softClass;
  if (!getBYLicenseAgreementClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getBYLicenseAgreementClass_block_invoke;
    v6 = &unk_279CB6C90;
    v7 = &v9;
    __getBYLicenseAgreementClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

id getkAAProtocolGenericTermsUIBuddyMLKey()
{
  v2 = getkAAProtocolGenericTermsUIBuddyMLKeySymbolLoc();
  if (!v2)
  {
    dlerror();
    abort_report_np();
  }

  v0 = *v2;

  return v0;
}

void __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  location = (a2 + 40);
  v2 = *(a2 + 40);
  v3 = (a1 + 40);
  *v3 = 0;
  objc_storeStrong(v3, v2);
  objc_storeStrong(location, 0);
}

id getAAGenericTermsUIRequestClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getAAGenericTermsUIRequestClass_softClass;
  v13 = getAAGenericTermsUIRequestClass_softClass;
  if (!getAAGenericTermsUIRequestClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getAAGenericTermsUIRequestClass_block_invoke;
    v6 = &unk_279CB6C90;
    v7 = &v9;
    __getAAGenericTermsUIRequestClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

void sub_26AC6CFC8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id *a11, uint64_t a12, uint64_t a13, id *location)
{
  *(v14 - 56) = a1;
  *(v14 - 60) = a2;
  objc_destroyWeak((v14 - 48));
  _Unwind_Resume(*(v14 - 56));
}

id getRemoteUIControllerClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getRemoteUIControllerClass_softClass;
  v13 = getRemoteUIControllerClass_softClass;
  if (!getRemoteUIControllerClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getRemoteUIControllerClass_block_invoke;
    v6 = &unk_279CB6C90;
    v7 = &v9;
    __getRemoteUIControllerClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

id getAAiCloudTermsAgreeRequestClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getAAiCloudTermsAgreeRequestClass_softClass;
  v13 = getAAiCloudTermsAgreeRequestClass_softClass;
  if (!getAAiCloudTermsAgreeRequestClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getAAiCloudTermsAgreeRequestClass_block_invoke;
    v6 = &unk_279CB6C90;
    v7 = &v9;
    __getAAiCloudTermsAgreeRequestClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

id getAAiCloudTermsDisagreeRequestClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getAAiCloudTermsDisagreeRequestClass_softClass;
  v13 = getAAiCloudTermsDisagreeRequestClass_softClass;
  if (!getAAiCloudTermsDisagreeRequestClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getAAiCloudTermsDisagreeRequestClass_block_invoke;
    v6 = &unk_279CB6C90;
    v7 = &v9;
    __getAAiCloudTermsDisagreeRequestClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

uint64_t __os_log_helper_16_2_2_8_32_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_32_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __os_log_helper_16_2_1_8_32(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __getRUIPageClass_block_invoke(uint64_t a1)
{
  RemoteUILibrary();
  Class = objc_getClass("RUIPage");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getRUIPageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t RemoteUILibrary()
{
  v2 = 0;
  v1 = RemoteUILibraryCore(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

uint64_t RemoteUILibraryCore(uint64_t a1)
{
  v10 = a1;
  v8 = RemoteUILibraryCore_frameworkLibrary;
  v9 = RemoteUILibraryCore_frameworkLibrary;
  if (!RemoteUILibraryCore_frameworkLibrary)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __RemoteUILibraryCore_block_invoke;
    v6 = &__block_descriptor_40_e5_v8__0l;
    v7 = v10;
    __RemoteUILibraryCore_block_invoke(&v2);
  }

  return RemoteUILibraryCore_frameworkLibrary;
}

uint64_t __RemoteUILibraryCore_block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RemoteUILibraryCore_frameworkLibrary = result;
  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __getAASetupAssistantServiceClass_block_invoke(uint64_t a1)
{
  AppleAccountLibrary();
  Class = objc_getClass("AASetupAssistantService");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getAASetupAssistantServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AppleAccountLibrary()
{
  v2 = 0;
  v1 = AppleAccountLibraryCore(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

uint64_t AppleAccountLibraryCore(uint64_t a1)
{
  v10 = a1;
  v8 = AppleAccountLibraryCore_frameworkLibrary;
  v9 = AppleAccountLibraryCore_frameworkLibrary;
  if (!AppleAccountLibraryCore_frameworkLibrary)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __AppleAccountLibraryCore_block_invoke;
    v6 = &__block_descriptor_40_e5_v8__0l;
    v7 = v10;
    __AppleAccountLibraryCore_block_invoke(&v2);
  }

  return AppleAccountLibraryCore_frameworkLibrary;
}

uint64_t __AppleAccountLibraryCore_block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppleAccountLibraryCore_frameworkLibrary = result;
  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __getBYLicenseAgreementClass_block_invoke(uint64_t a1)
{
  SetupAssistantLibrary();
  Class = objc_getClass("BYLicenseAgreement");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getBYLicenseAgreementClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SetupAssistantLibrary()
{
  v2 = 0;
  v1 = SetupAssistantLibraryCore(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

uint64_t SetupAssistantLibraryCore(uint64_t a1)
{
  v10 = a1;
  v8 = SetupAssistantLibraryCore_frameworkLibrary;
  v9 = SetupAssistantLibraryCore_frameworkLibrary;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __SetupAssistantLibraryCore_block_invoke;
    v6 = &__block_descriptor_40_e5_v8__0l;
    v7 = v10;
    __SetupAssistantLibraryCore_block_invoke(&v2);
  }

  return SetupAssistantLibraryCore_frameworkLibrary;
}

uint64_t __SetupAssistantLibraryCore_block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getkAAProtocolGenericTermsUIBuddyMLKeySymbolLoc()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = getkAAProtocolGenericTermsUIBuddyMLKeySymbolLoc_ptr;
  v13 = getkAAProtocolGenericTermsUIBuddyMLKeySymbolLoc_ptr;
  if (!getkAAProtocolGenericTermsUIBuddyMLKeySymbolLoc_ptr)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getkAAProtocolGenericTermsUIBuddyMLKeySymbolLoc_block_invoke;
    v6 = &unk_279CB6C90;
    v7 = &v9;
    __getkAAProtocolGenericTermsUIBuddyMLKeySymbolLoc_block_invoke(&v2);
  }

  v1 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v1;
}

uint64_t __getkAAProtocolGenericTermsUIBuddyMLKeySymbolLoc_block_invoke(uint64_t a1)
{
  v1 = AppleAccountLibrary();
  v2 = dlsym(v1, "kAAProtocolGenericTermsUIBuddyMLKey");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = v2;
  getkAAProtocolGenericTermsUIBuddyMLKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __getAAGenericTermsUIRequestClass_block_invoke(uint64_t a1)
{
  AppleAccountLibrary();
  Class = objc_getClass("AAGenericTermsUIRequest");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getAAGenericTermsUIRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __getRemoteUIControllerClass_block_invoke(uint64_t a1)
{
  RemoteUILibrary();
  Class = objc_getClass("RemoteUIController");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getRemoteUIControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __getAAiCloudTermsAgreeRequestClass_block_invoke(uint64_t a1)
{
  AppleAccountLibrary();
  Class = objc_getClass("AAiCloudTermsAgreeRequest");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getAAiCloudTermsAgreeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __getAAiCloudTermsDisagreeRequestClass_block_invoke(uint64_t a1)
{
  AppleAccountLibrary();
  Class = objc_getClass("AAiCloudTermsDisagreeRequest");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getAAiCloudTermsDisagreeRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __os_log_helper_16_2_2_8_32_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

id _SUSLoggingFacility()
{
  predicate = &_SUSLoggingFacility_onceToken;
  block = 0;
  objc_storeStrong(&block, &__block_literal_global_2);
  if (*predicate != -1)
  {
    dispatch_once(predicate, block);
  }

  objc_storeStrong(&block, 0);
  v0 = _SUSLoggingFacility_oslog;

  return v0;
}

id SUSettingsUserDefaultsEntryTypeToString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = MEMORY[0x277D82BE0](@"number");
    }

    else if (a1 == 2)
    {
      v2 = MEMORY[0x277D82BE0](@"string");
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"BOOL");
  }

  return v2;
}

id sub_26AC7F784()
{
  sub_26AC7FB80();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2803D8630 = result;
  return result;
}

uint64_t *sub_26AC7F7DC()
{
  if (qword_2803D8298 != -1)
  {
    swift_once();
  }

  return &qword_2803D8630;
}

id sub_26AC7F82C()
{
  if (qword_2803D8298 != -1)
  {
    swift_once();
  }

  v0 = qword_2803D8630;

  return v0;
}

uint64_t sub_26AC7F8B8()
{
  v0 = sub_26AC860F8();
  __swift_allocate_value_buffer(v0, qword_2803D8638);
  v1 = __swift_project_value_buffer(v0, qword_2803D8638);
  sub_26AC7FB80();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = [v3 bundlePath];

  sub_26AC86408();
  sub_26AC86108();

  v5 = *MEMORY[0x277CC9118];
  v6 = *(*(v0 - 8) + 104);

  return v6(v1, v5, v0);
}

uint64_t sub_26AC7F9D8()
{
  if (qword_2803D82A0 != -1)
  {
    swift_once();
  }

  v0 = sub_26AC860F8();

  return __swift_project_value_buffer(v0, qword_2803D8638);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26AC7FA74@<X0>(uint64_t a1@<X8>)
{
  if (qword_2803D82A0 != -1)
  {
    swift_once();
  }

  v2 = sub_26AC860F8();
  v3 = __swift_project_value_buffer(v2, qword_2803D8638);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_26AC7FB80()
{
  result = qword_2803D80D0;
  if (!qword_2803D80D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803D80D0);
  }

  return result;
}

uint64_t UserDefaultsBasedComingSoonTip.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D80D8, &unk_26AC8A590);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D80E0, &qword_26AC8A6C0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v13 - v8;
  sub_26AC86228();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x26D6693F0](v9, v5, OpaqueTypeConformance2);
  v13[0] = v5;
  v13[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = sub_26AC86238();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t UserDefaultsBasedComingSoonTip.title.getter()
{
  v0 = [objc_opt_self() sharedDefaults];
  v1 = [v0 comingSoonTipTitle];

  if (v1)
  {
    sub_26AC86408();

    sub_26AC7FED8();
    return sub_26AC863C8();
  }

  else
  {
    sub_26AC863A8();
    return sub_26AC863B8();
  }
}

unint64_t sub_26AC7FED8()
{
  result = qword_2803D80E8;
  if (!qword_2803D80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803D80E8);
  }

  return result;
}

uint64_t UserDefaultsBasedComingSoonTip.message.getter()
{
  v0 = [objc_opt_self() sharedDefaults];
  v1 = [v0 comingSoonTipMessage];

  if (!v1)
  {
    return 0;
  }

  sub_26AC86408();

  sub_26AC7FED8();
  return sub_26AC863C8();
}

uint64_t UserDefaultsBasedComingSoonTip.image.getter()
{
  v0 = [objc_opt_self() sharedDefaults];
  v1 = [v0 comingSoonTipImageSystemName];

  if (v1 && (v2 = [objc_opt_self() systemImageNamed_], v1, v2) && (v3 = objc_msgSend(v2, sel_imageWithRenderingMode_, 2), v2, v3))
  {
    return sub_26AC863D8();
  }

  else
  {
    return 0;
  }
}

uint64_t UserDefaultsBasedComingSoonTip.actions.getter()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D80F0, &qword_26AC8A5A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v2 = &v21 - v1;
  v3 = sub_26AC86138();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v7 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = [objc_opt_self() sharedDefaults];
  v11 = [v10 comingSoonTipLearnMoreLink];

  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  sub_26AC86408();

  sub_26AC86128();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_26AC80414(v2);
    return MEMORY[0x277D84F90];
  }

  v13 = *(v4 + 32);
  v13(v9, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D80F8, &qword_26AC8A5A8);
  v14 = *(sub_26AC86358() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26AC8A580;
  v18._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v18._object = 0xEF4B4E494C5F4552;
  v21 = localizedUIString(_:)(v18);
  (*(v4 + 16))(v7, v9, v3);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  v13((v20 + v19), v7, v3);
  sub_26AC7FED8();
  sub_26AC86348();
  (*(v4 + 8))(v9, v3);
  return v17;
}

uint64_t sub_26AC80414(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D80F0, &qword_26AC8A5A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26AC8047C()
{
  v0 = *(*(sub_26AC86138() - 8) + 80);
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v1 = sub_26AC86118();
    sub_26AC80BA0(MEMORY[0x277D84F90]);
    v2 = sub_26AC863E8();

    [v3 openSensitiveURL:v1 withOptions:v2];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_26AC80590()
{
  result = qword_2803D8100;
  if (!qword_2803D8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803D8100);
  }

  return result;
}

uint64_t sub_26AC8060C()
{
  v0 = [objc_opt_self() sharedDefaults];
  v1 = [v0 comingSoonTipMessage];

  if (!v1)
  {
    return 0;
  }

  sub_26AC86408();

  sub_26AC7FED8();
  return sub_26AC863C8();
}

uint64_t sub_26AC80700()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D80D8, &unk_26AC8A590);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D80E0, &qword_26AC8A6C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_26AC86228();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x26D6693F0](v9, v5, OpaqueTypeConformance2);
  v13[0] = v5;
  v13[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = sub_26AC86238();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t sub_26AC808F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26AC80A1C();
  result = MEMORY[0x26D669340](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for UserDefaultsBasedComingSoonTip(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for UserDefaultsBasedComingSoonTip(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_26AC80A1C()
{
  result = qword_2803D8108;
  if (!qword_2803D8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803D8108);
  }

  return result;
}

unint64_t sub_26AC80A70(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26AC864F8();
  sub_26AC86428();
  v6 = sub_26AC86508();

  return sub_26AC80AE8(a1, a2, v6);
}

unint64_t sub_26AC80AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26AC864E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26AC80BA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D8110, &unk_26AC8A690);
    v3 = sub_26AC864C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_26AC80CB0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_26AC80A70(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26AC80D20(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26AC80CB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D8118, &qword_26AC8A800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_26AC80D20(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

Swift::String __swiftcall localizedUIString(_:)(Swift::String a1)
{
  v1 = *sub_26AC7F7DC();
  v2 = sub_26AC863F8();
  v3 = sub_26AC863F8();
  v4 = sub_26AC863F8();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_26AC86408();
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

Swift::String __swiftcall localizedUIModelString(_:)(Swift::String a1)
{
  v1 = *sub_26AC7F7DC();
  v2 = objc_opt_self();
  v3 = v1;
  v4 = sub_26AC863F8();
  v5 = [v2 modelSpecificLocalizedStringKeyForKey_];

  if (v5)
  {
    v8 = sub_26AC863F8();
    v9 = sub_26AC863F8();
    v10 = [v3 localizedStringForKey:v5 value:v8 table:v9];

    v11 = sub_26AC86408();
    v13 = v12;

    v6 = v11;
    v7 = v13;
  }

  else
  {
    __break(1u);
  }

  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::String __swiftcall localizedUIWAPIString(_:)(Swift::String a1)
{
  v1 = sub_26AC863F8();
  v2 = SFLocalizableWAPIStringKeyForKey();

  if (!v2)
  {
    sub_26AC86408();
    v2 = sub_26AC863F8();
  }

  v3 = *sub_26AC7F7DC();
  v4 = sub_26AC863F8();
  v5 = sub_26AC863F8();
  v6 = [v3 localizedStringForKey:v2 value:v4 table:v5];

  v7 = sub_26AC86408();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::String __swiftcall localizedRsrSupportedUIString(_:isSplatUpdate:)(Swift::String _, Swift::Bool isSplatUpdate)
{
  if (isSplatUpdate)
  {
    MEMORY[0x26D6695E0](_._countAndFlagsBits, _._object);
  }

  else
  {
    sub_26AC86208();
  }

  v2 = *sub_26AC7F7DC();
  v3 = sub_26AC863F8();

  v4 = sub_26AC863F8();
  v5 = sub_26AC863F8();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  v7 = sub_26AC86408();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::String __swiftcall localizedRsrSupportedUIModelString(_:isSplatUpdate:)(Swift::String _, Swift::Bool isSplatUpdate)
{
  v2 = sub_26AC8119C(_._countAndFlagsBits, _._object, isSplatUpdate, localizedUIModelString(_:));
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall localizedRsrSupportedUIWAPIString(_:isSplatUpdate:)(Swift::String _, Swift::Bool isSplatUpdate)
{
  v2 = sub_26AC8119C(_._countAndFlagsBits, _._object, isSplatUpdate, localizedUIWAPIString(_:));
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_26AC8119C(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  v5 = a2;
  if (a3)
  {
    MEMORY[0x26D6695E0](a1, a2);
    v6 = 1599230802;
    v5 = 0xE400000000000000;
  }

  else
  {
    sub_26AC86208();
    v6 = a1;
  }

  v8 = a4(v6, v5);

  return v8;
}

uint64_t MockedComingSoonTip.titleText.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26AC86208();
  return v1;
}

uint64_t MockedComingSoonTip.titleText.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MockedComingSoonTip.messageText.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_26AC86208();
  return v1;
}

uint64_t MockedComingSoonTip.messageText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MockedComingSoonTip.learnMoreLink.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_26AC86208();
  return v1;
}

uint64_t MockedComingSoonTip.learnMoreLink.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MockedComingSoonTip.imageSystemName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_26AC86208();
  return v1;
}

uint64_t MockedComingSoonTip.imageSystemName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_26AC8148C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D8120, &unk_26AC8A6B0);
  __swift_allocate_value_buffer(v0, qword_2803D8650);
  __swift_project_value_buffer(v0, qword_2803D8650);
  return sub_26AC86388();
}

uint64_t sub_26AC81544()
{
  if (qword_2803D83B0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D8120, &unk_26AC8A6B0);

  return __swift_project_value_buffer(v0, qword_2803D8650);
}

uint64_t sub_26AC815B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_2803D83B0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D8120, &unk_26AC8A6B0);
  v3 = __swift_project_value_buffer(v2, qword_2803D8650);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_26AC81680(uint64_t a1)
{
  if (qword_2803D83B0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D8120, &unk_26AC8A6B0);
  v3 = __swift_project_value_buffer(v2, qword_2803D8650);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_26AC81780())()
{
  if (qword_2803D83B0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D8120, &unk_26AC8A6B0);
  __swift_project_value_buffer(v0, qword_2803D8650);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26AC81824()
{
  if (qword_2803D83B0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D8120, &unk_26AC8A6B0);
  __swift_project_value_buffer(v0, qword_2803D8650);
  swift_beginAccess();
  sub_26AC86368();
  swift_endAccess();
  return v2;
}

uint64_t sub_26AC818CC()
{
  if (qword_2803D83B0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D8120, &unk_26AC8A6B0);
  __swift_project_value_buffer(v0, qword_2803D8650);
  swift_beginAccess();
  sub_26AC86378();
  return swift_endAccess();
}

void (*sub_26AC81984(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_2803D83B0 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D8120, &unk_26AC8A6B0);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, qword_2803D8650);
  swift_beginAccess();
  sub_26AC86368();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return sub_26AC81A80;
}

void sub_26AC81A80(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  *(*a1 + 41) = *(*a1 + 40);
  swift_beginAccess();
  sub_26AC86378();
  swift_endAccess();

  free(v1);
}

uint64_t MockedComingSoonTip.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D80D8, &unk_26AC8A590);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D80E0, &qword_26AC8A6C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_26AC86228();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x26D6693F0](v9, v5, OpaqueTypeConformance2);
  v13[0] = v5;
  v13[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = sub_26AC86238();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t MockedComingSoonTip.title.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_26AC7FED8();
  sub_26AC86208();
  return sub_26AC863C8();
}

uint64_t MockedComingSoonTip.message.getter()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_26AC7FED8();
  sub_26AC86208();
  return sub_26AC863C8();
}

uint64_t MockedComingSoonTip.image.getter()
{
  if (*(v0 + 56) && (v1 = *(v0 + 48), v2 = sub_26AC863F8(), v3 = [objc_opt_self() systemImageNamed_], v2, v3) && (v4 = objc_msgSend(v3, sel_imageWithRenderingMode_, 2), v3, v4))
  {
    return sub_26AC863D8();
  }

  else
  {
    return 0;
  }
}

uint64_t MockedComingSoonTip.rules.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D8120, &unk_26AC8A6B0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D8128, &qword_26AC8A6C8);
  v5 = *(sub_26AC86328() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_26AC8A580;
  if (qword_2803D83B0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_2803D8650);
  swift_beginAccess();
  (*(v1 + 16))(v4, v8, v0);
  sub_26AC86338();
  sub_26AC86208();

  v9 = sub_26AC86208();

  return v9;
}

uint64_t sub_26AC82054@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D8140, &qword_26AC8A808);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D8148, &qword_26AC8A810);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13[-v10];
  sub_26AC8302C(&qword_2803D8150, &qword_2803D8148, &qword_26AC8A810);
  sub_26AC860E8();
  v13[15] = 1;
  sub_26AC860D8();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D8158, &qword_26AC8A818);
  a1[4] = sub_26AC82E8C();
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_26AC8302C(&qword_2803D8178, &qword_2803D8140, &qword_26AC8A808);
  sub_26AC860C8();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t MockedComingSoonTip.actions.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D80F0, &qword_26AC8A5A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - v3;
  v5 = sub_26AC86138();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  if (!*(v0 + 40))
  {
    return MEMORY[0x277D84F90];
  }

  v12 = *(v0 + 32);
  sub_26AC86128();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_26AC80414(v4);
    return MEMORY[0x277D84F90];
  }

  v22 = *(v6 + 32);
  v22(v11, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D80F8, &qword_26AC8A5A8);
  v14 = *(sub_26AC86358() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26AC8A580;
  v18._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v18._object = 0xEF4B4E494C5F4552;
  v23 = localizedUIString(_:)(v18);
  (*(v6 + 16))(v9, v11, v5);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = swift_allocObject();
  v22((v20 + v19), v9, v5);
  sub_26AC7FED8();
  sub_26AC86348();
  (*(v6 + 8))(v11, v5);
  return v17;
}

void sub_26AC825C0()
{
  v0 = *(*(sub_26AC86138() - 8) + 80);
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v1 = sub_26AC86118();
    sub_26AC80BA0(MEMORY[0x277D84F90]);
    v2 = sub_26AC863E8();

    [v3 openSensitiveURL:v1 withOptions:v2];
  }

  else
  {
    __break(1u);
  }
}

double sub_26AC826CC@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

uint64_t sub_26AC82714@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

unint64_t sub_26AC8272C()
{
  result = qword_2803D8130;
  if (!qword_2803D8130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803D8130);
  }

  return result;
}

uint64_t sub_26AC82784()
{
  v2 = *v0;
  v3 = v0[1];
  sub_26AC7FED8();
  sub_26AC86208();
  return sub_26AC863C8();
}

uint64_t sub_26AC827D8()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_26AC7FED8();
  sub_26AC86208();
  return sub_26AC863C8();
}

uint64_t sub_26AC82848()
{
  if (*(v0 + 56) && (v1 = *(v0 + 48), v2 = sub_26AC863F8(), v3 = [objc_opt_self() systemImageNamed_], v2, v3) && (v4 = objc_msgSend(v3, sel_imageWithRenderingMode_, 2), v3, v4))
  {
    return sub_26AC863D8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26AC828E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D8120, &unk_26AC8A6B0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D8128, &qword_26AC8A6C8);
  v5 = *(sub_26AC86328() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_26AC8A580;
  if (qword_2803D83B0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_2803D8650);
  swift_beginAccess();
  (*(v1 + 16))(v4, v8, v0);
  sub_26AC86338();
  sub_26AC86208();

  v9 = sub_26AC86208();

  return v9;
}

uint64_t sub_26AC82AFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D80D8, &unk_26AC8A590);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D80E0, &qword_26AC8A6C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_26AC86228();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x26D6693F0](v9, v5, OpaqueTypeConformance2);
  v13[0] = v5;
  v13[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = sub_26AC86238();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t sub_26AC82CF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26AC82DF0();
  result = MEMORY[0x26D669340](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26AC82D48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26AC82D90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26AC82DF0()
{
  result = qword_2803D8138;
  if (!qword_2803D8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803D8138);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26AC82E8C()
{
  result = qword_2803D8160;
  if (!qword_2803D8160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803D8158, &qword_26AC8A818);
    sub_26AC8302C(&qword_2803D8168, &qword_2803D8148, &qword_26AC8A810);
    sub_26AC82F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803D8160);
  }

  return result;
}

unint64_t sub_26AC82F44()
{
  result = qword_2803D8170;
  if (!qword_2803D8170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803D8140, &qword_26AC8A808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803D8170);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26AC8302C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26AC83074()
{
  v0 = sub_26AC86188();
  __swift_allocate_value_buffer(v0, qword_2803D84C8);
  __swift_project_value_buffer(v0, qword_2803D84C8);
  return sub_26AC86178();
}

id sub_26AC830F4()
{
  result = [objc_allocWithZone(type metadata accessor for SUSettingsSwiftTipsManager()) init];
  qword_2803D84E8 = result;
  return result;
}

id SUSettingsSwiftTipsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *sub_26AC83158()
{
  if (qword_2803D84E0 != -1)
  {
    swift_once();
  }

  return &qword_2803D84E8;
}

id static SUSettingsSwiftTipsManager.shared.getter()
{
  if (qword_2803D84E0 != -1)
  {
    swift_once();
  }

  v1 = qword_2803D84E8;

  return v1;
}

unint64_t sub_26AC8328C@<X0>(void *a1@<X8>)
{
  if (*(v1 + OBJC_IVAR___SUSettingsSwiftTipsManager_inManualControl))
  {
    a1[3] = &type metadata for MockedComingSoonTip;
    a1[4] = sub_26AC82DF0();
    v3 = swift_allocObject();
    *a1 = v3;
    v4 = *(v1 + OBJC_IVAR___SUSettingsSwiftTipsManager_mockedComingSoonTip + 16);
    v13[0] = *(v1 + OBJC_IVAR___SUSettingsSwiftTipsManager_mockedComingSoonTip);
    v13[1] = v4;
    v6 = *(v1 + OBJC_IVAR___SUSettingsSwiftTipsManager_mockedComingSoonTip + 48);
    v14 = *(v1 + OBJC_IVAR___SUSettingsSwiftTipsManager_mockedComingSoonTip + 32);
    v5 = v14;
    v15 = v6;
    v3[1] = v13[0];
    v3[2] = v4;
    v3[3] = v5;
    v3[4] = v6;
    return sub_26AC851B4(v13, &v12);
  }

  else if ((*((*MEMORY[0x277D85000] & *v1) + 0x88))())
  {
    a1[3] = &type metadata for UserDefaultsBasedComingSoonTip;
    result = sub_26AC80A1C();
    a1[4] = result;
  }

  else
  {
    v8 = v1 + OBJC_IVAR___SUSettingsSwiftTipsManager_constellationComingSoonTip;
    v10 = *(v1 + OBJC_IVAR___SUSettingsSwiftTipsManager_constellationComingSoonTip);
    v9 = *(v1 + OBJC_IVAR___SUSettingsSwiftTipsManager_constellationComingSoonTip + 8);
    v11 = *(v8 + 2);
    a1[3] = &type metadata for ConstellationComingSoonTip;
    a1[4] = sub_26AC85160();
    *a1 = v10;
    a1[1] = v9;
    a1[2] = v11;

    return sub_26AC86208();
  }

  return result;
}

void sub_26AC83498(char a1)
{
  v2 = sub_26AC862F8();
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = *(v69 + 64);
  MEMORY[0x28223BE20](v2);
  v76 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26AC862C8();
  v74 = *(v5 - 8);
  v75 = v5;
  v6 = *(v74 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_26AC86298();
  v9 = *(v73 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v73);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803D84C0 != -1)
  {
    swift_once();
  }

  v13 = sub_26AC86188();
  v14 = __swift_project_value_buffer(v13, qword_2803D84C8);
  v15 = sub_26AC86168();
  v16 = sub_26AC86458();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v77 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_26AC845FC(0xD000000000000018, 0x800000026AC897E0, &v77);
    *(v17 + 12) = 1024;
    *(v17 + 14) = a1 & 1;
    _os_log_impl(&dword_26AC65000, v15, v16, "%s: Setting up SUSettingsSwiftTipsManager (manual control: %{BOOL}d).", v17, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26D669CC0](v18, -1, -1);
    MEMORY[0x26D669CC0](v17, -1, -1);
  }

  v71 = v14;
  if (a1)
  {
    goto LABEL_9;
  }

  if (qword_2803D84E0 != -1)
  {
    swift_once();
  }

  if ((*((*MEMORY[0x277D85000] & *qword_2803D84E8) + 0x88))())
  {
LABEL_9:
    v19 = sub_26AC86168();
    v20 = sub_26AC86458();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v77 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_26AC845FC(0xD000000000000018, 0x800000026AC897E0, &v77);
      _os_log_impl(&dword_26AC65000, v19, v20, "%s: Resetting the datastore.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x26D669CC0](v22, -1, -1);
      MEMORY[0x26D669CC0](v21, -1, -1);
    }

    sub_26AC86258();
    v23 = a1;
  }

  else
  {
    v23 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D81A0, &qword_26AC8A860);
  v24 = *(sub_26AC86318() - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  *(swift_allocObject() + 16) = xmmword_26AC8A840;
  sub_26AC86288();
  sub_26AC862A8();
  (*(v9 + 8))(v12, v73);
  sub_26AC862B8();
  sub_26AC862D8();
  (*(v74 + 8))(v8, v75);
  v27 = v76;
  sub_26AC862E8();
  sub_26AC86308();
  (*(v69 + 8))(v27, v70);
  sub_26AC86398();

  if (v23)
  {
    *(v72 + OBJC_IVAR___SUSettingsSwiftTipsManager_inManualControl) = 1;
  }

  else
  {
    if (qword_2803D84E0 != -1)
    {
      swift_once();
    }

    if ((*((*MEMORY[0x277D85000] & *qword_2803D84E8) + 0x88))())
    {
      v28 = sub_26AC86168();
      v29 = sub_26AC86458();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v79[0] = v76;
        *v30 = 136316674;
        *(v30 + 4) = sub_26AC845FC(0xD000000000000018, 0x800000026AC897E0, v79);
        *(v30 + 12) = 1024;
        v31 = objc_opt_self();
        v32 = [v31 sharedDefaults];
        v33 = [v32 shouldShowComingSoonTip];

        *(v30 + 14) = v33;
        *(v30 + 18) = 1024;
        v34 = [v31 sharedDefaults];
        v35 = [v34 shouldHideComingSoonTip];

        *(v30 + 20) = v35;
        *(v30 + 24) = 2080;
        v36 = [v31 sharedDefaults];
        v37 = [v36 comingSoonTipTitle];

        if (v37)
        {
          v38 = sub_26AC86408();
          v40 = v39;
        }

        else
        {
          v38 = 0;
          v40 = 0;
        }

        v77 = v38;
        v78 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D81A8, &qword_26AC8A868);
        v41 = sub_26AC86418();
        v43 = sub_26AC845FC(v41, v42, v79);

        *(v30 + 26) = v43;
        *(v30 + 34) = 2080;
        v44 = [v31 sharedDefaults];
        v45 = [v44 comingSoonTipMessage];

        if (v45)
        {
          v46 = sub_26AC86408();
          v48 = v47;
        }

        else
        {
          v46 = 0;
          v48 = 0;
        }

        v77 = v46;
        v78 = v48;
        v49 = sub_26AC86418();
        v51 = sub_26AC845FC(v49, v50, v79);

        *(v30 + 36) = v51;
        *(v30 + 44) = 2080;
        v52 = [v31 sharedDefaults];
        v53 = [v52 comingSoonTipImageSystemName];

        if (v53)
        {
          v54 = sub_26AC86408();
          v56 = v55;
        }

        else
        {
          v54 = 0;
          v56 = 0;
        }

        v77 = v54;
        v78 = v56;
        v57 = sub_26AC86418();
        v59 = sub_26AC845FC(v57, v58, v79);

        *(v30 + 46) = v59;
        *(v30 + 54) = 2080;
        v60 = [v31 sharedDefaults];
        v61 = [v60 comingSoonTipLearnMoreLink];

        if (v61)
        {
          v62 = sub_26AC86408();
          v64 = v63;
        }

        else
        {
          v62 = 0;
          v64 = 0;
        }

        v77 = v62;
        v78 = v64;
        v65 = sub_26AC86418();
        v67 = sub_26AC845FC(v65, v66, v79);

        *(v30 + 56) = v67;
        _os_log_impl(&dword_26AC65000, v28, v29, "%s Overriding the default Coming Soon tip content and returning UserDefaultsBasedComingSoonTip instead.\nForce show: %{BOOL}d\nForce hide: %{BOOL}d\nTitle: %s\nMessage: %s\nImageSystemName: %s\nLearn More URL: %s", v30, 0x40u);
        v68 = v76;
        swift_arrayDestroy();
        MEMORY[0x26D669CC0](v68, -1, -1);
        MEMORY[0x26D669CC0](v30, -1, -1);
      }
    }
  }
}

uint64_t sub_26AC83ECC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (qword_2803D84C0 != -1)
  {
    swift_once();
  }

  v17 = sub_26AC86188();
  __swift_project_value_buffer(v17, qword_2803D84C8);
  sub_26AC86208();
  sub_26AC86208();
  sub_26AC86208();
  sub_26AC86208();
  v18 = sub_26AC86168();
  v19 = sub_26AC86458();

  v38 = v19;
  if (os_log_type_enabled(v18, v19))
  {
    v39 = a1;
    v20 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v41 = v37;
    *v20 = 136316162;
    *(v20 + 4) = sub_26AC845FC(0xD000000000000051, 0x800000026AC89800, &v41);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_26AC845FC(v39, a2, &v41);
    *(v20 + 22) = 2080;
    sub_26AC86208();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D81A8, &qword_26AC8A868);
    v21 = sub_26AC86418();
    v23 = sub_26AC845FC(v21, v22, &v41);

    *(v20 + 24) = v23;
    *(v20 + 32) = 2080;
    sub_26AC86208();
    v24 = sub_26AC86418();
    v26 = sub_26AC845FC(v24, v25, &v41);

    *(v20 + 34) = v26;
    *(v20 + 42) = 2080;
    sub_26AC86208();
    v27 = sub_26AC86418();
    v29 = sub_26AC845FC(v27, v28, &v41);

    *(v20 + 44) = v29;
    _os_log_impl(&dword_26AC65000, v18, v38, "%s: Setting up the Mocked Coming Soon tip with:\n    title: %s\n    content: %s\n    learnMoreLink: %s\n    imageSystemName: %s ", v20, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x26D669CC0](v37, -1, -1);
    v30 = v20;
    a1 = v39;
    MEMORY[0x26D669CC0](v30, -1, -1);
  }

  else
  {
  }

  *(v9 + OBJC_IVAR___SUSettingsSwiftTipsManager_inManualControl) = 1;
  v31 = (v9 + OBJC_IVAR___SUSettingsSwiftTipsManager_mockedComingSoonTip);
  v32 = *(v9 + OBJC_IVAR___SUSettingsSwiftTipsManager_mockedComingSoonTip + 8);
  *v31 = a1;
  v31[1] = a2;
  v33 = v31[3];
  v31[2] = a3;
  v31[3] = a4;
  v34 = v31[5];
  v31[4] = a5;
  v31[5] = a6;
  v35 = v31[7];
  v31[6] = a7;
  v31[7] = a8;
  sub_26AC86208();
  sub_26AC86208();
  sub_26AC86208();
  sub_26AC86208();

  return sub_26AC818CC();
}

id SUSettingsSwiftTipsManager.init()()
{
  sub_26AC85894(&v0[OBJC_IVAR___SUSettingsSwiftTipsManager_constellationComingSoonTip]);
  nullsub_1();
  sub_26AC826CC(&v0[OBJC_IVAR___SUSettingsSwiftTipsManager_mockedComingSoonTip]);
  v0[OBJC_IVAR___SUSettingsSwiftTipsManager_inManualControl] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SUSettingsSwiftTipsManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SUSettingsSwiftTipsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SUSettingsSwiftTipsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_26AC844D0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 superview];
    if (v2)
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      if (ObjectType != sub_26AC8539C(0, &qword_2803D81B8, 0x277D75DA0))
      {
        v5 = v3;
        sub_26AC844D0(v3);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D81B0, &qword_26AC8A870);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_26AC8A850;
        *(inited + 32) = v1;
        v7 = v1;
        sub_26AC84BA4(inited);

        return result;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D81B0, &qword_26AC8A870);
    v9 = swift_allocObject();
    *&result = 1;
    *(v9 + 16) = xmmword_26AC8A850;
    *(v9 + 32) = v1;
  }

  return result;
}

uint64_t sub_26AC845FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_26AC86208();
  v6 = sub_26AC846C8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26AC85448(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26AC846C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26AC847D4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26AC864A8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_26AC847D4(uint64_t a1, unint64_t a2)
{
  v4 = sub_26AC84820(a1, a2);
  sub_26AC84950(&unk_287B73218);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26AC84820(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26AC84A3C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26AC864A8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26AC86448();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26AC84A3C(v10, 0);
        result = sub_26AC86468();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26AC84950(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26AC84AB0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26AC84A3C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D81D8, &unk_26AC8A8D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26AC84AB0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D81D8, &unk_26AC8A8D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_26AC84BA4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_26AC864B8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_26AC864B8();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_26AC84C94(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26AC84D34(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26AC84C94(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_26AC864B8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_26AC86498();
  *v1 = result;
  return result;
}

uint64_t sub_26AC84D34(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26AC864B8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_26AC864B8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26AC853E4();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D81C8, &qword_26AC8A8C8);
            v9 = sub_26AC84EC4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_26AC8539C(0, &qword_2803D81C0, 0x277D75D18);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_26AC84EC4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D669630](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_26AC84F44;
  }

  __break(1u);
  return result;
}

void sub_26AC84F4C()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedDefaults];
  v2 = [v1 shouldShowComingSoonTip];

  if (!v2)
  {
    return;
  }

  v3 = [v0 sharedDefaults];
  v4 = [v3 comingSoonTipTitle];

  if (v4)
  {

    v5 = [v0 sharedDefaults];
    v6 = [v5 comingSoonTipTitle];

    if (!v6)
    {
      __break(1u);
      goto LABEL_17;
    }

    v7 = sub_26AC86408();
    v9 = v8;

    if (v7 || v9 != 0xE000000000000000)
    {
      v10 = sub_26AC864E8();

      if ((v10 & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }
  }

  v11 = [v0 sharedDefaults];
  v12 = [v11 comingSoonTipMessage];

  if (!v12)
  {
    return;
  }

  v13 = [v0 sharedDefaults];
  v14 = [v13 comingSoonTipMessage];

  if (!v14)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v15 = sub_26AC86408();
  v17 = v16;

  if (v15 || v17 != 0xE000000000000000)
  {
    sub_26AC864E8();
  }

  else
  {
  }
}

unint64_t sub_26AC85160()
{
  result = qword_2803D8190;
  if (!qword_2803D8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803D8190);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26AC8539C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_26AC853E4()
{
  result = qword_2803D81D0;
  if (!qword_2803D81D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803D81C8, &qword_26AC8A8C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803D81D0);
  }

  return result;
}

uint64_t sub_26AC85448(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void __swiftcall SUSSoftwareUpdateComingSoonTipCell.createTipView()(UIView *__return_ptr retstr)
{
  v1 = sub_26AC83158();
  v2 = *((*MEMORY[0x277D85000] & **v1) + 0x90);
  v3 = *v1;
  v2(v5);

  v4 = objc_allocWithZone(sub_26AC861E8());
  sub_26AC861F8();
}

uint64_t sub_26AC85640()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26AC86208();
  return v1;
}

uint64_t sub_26AC85670()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  [v0 operatingSystemVersion];
  v1 = v3;

  result = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t ConstellationComingSoonTip.id.getter()
{
  v1 = *(v0 + 16);
  sub_26AC86478();

  v2 = sub_26AC864D8();
  MEMORY[0x26D6695E0](v2);

  MEMORY[0x26D6695E0](0xD000000000000017, 0x800000026AC899C0);
  return 0x77656976657270;
}

uint64_t ConstellationComingSoonTip.image.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_26AC863F8();
  v4 = [objc_opt_self() systemImageNamed_];

  if (v4 && (v5 = [v4 imageWithRenderingMode_], v4, v5))
  {
    return sub_26AC863D8();
  }

  else
  {
    return 0;
  }
}

uint64_t ConstellationComingSoonTip.options.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D81E0, &qword_26AC8A8E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26AC8A580;
  v1 = sub_26AC86268();
  v2 = MEMORY[0x277CE1A00];
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  sub_26AC86278();
  return v0;
}

void sub_26AC85894(void *a1@<X8>)
{
  *a1 = 0x73656C6B72617073;
  a1[1] = 0xE800000000000000;
  v2 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  [v2 operatingSystemVersion];
  v3 = v4;

  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    a1[2] = v3 + 1;
  }
}

unint64_t sub_26AC85924()
{
  result = qword_2803D81E8;
  if (!qword_2803D81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803D81E8);
  }

  return result;
}

uint64_t sub_26AC859A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_26AC863F8();
  v4 = [objc_opt_self() systemImageNamed_];

  if (v4 && (v5 = [v4 imageWithRenderingMode_], v4, v5))
  {
    return sub_26AC863D8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26AC85A3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803D81E0, &qword_26AC8A8E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26AC8A580;
  v1 = sub_26AC86268();
  v2 = MEMORY[0x277CE1A00];
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  sub_26AC86278();
  return v0;
}

uint64_t sub_26AC85AC0@<X0>(uint64_t *a1@<X8>)
{
  result = ConstellationComingSoonTip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26AC85AFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26AC85B44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_26AC85BA4()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2803D8608 = result;
  return result;
}

uint64_t sub_26AC85BF8()
{
  v0 = sub_26AC86158();
  __swift_allocate_value_buffer(v0, qword_2803D8668);
  __swift_project_value_buffer(v0, qword_2803D8668);
  if (qword_2803D8600 != -1)
  {
    swift_once();
  }

  v1 = qword_2803D8608;
  return sub_26AC86148();
}

uint64_t sub_26AC85CE8()
{
  v0 = sub_26AC86158();
  __swift_allocate_value_buffer(v0, qword_2803D8680);
  __swift_project_value_buffer(v0, qword_2803D8680);
  if (qword_2803D8600 != -1)
  {
    swift_once();
  }

  v1 = qword_2803D8608;
  return sub_26AC86148();
}

uint64_t sub_26AC85DD8()
{
  v0 = sub_26AC86158();
  __swift_allocate_value_buffer(v0, qword_2803D8698);
  __swift_project_value_buffer(v0, qword_2803D8698);
  if (qword_2803D8600 != -1)
  {
    swift_once();
  }

  v1 = qword_2803D8608;
  return sub_26AC86148();
}

uint64_t sub_26AC85EC8()
{
  v0 = sub_26AC86158();
  __swift_allocate_value_buffer(v0, qword_2803D86B0);
  __swift_project_value_buffer(v0, qword_2803D86B0);
  if (qword_2803D8600 != -1)
  {
    swift_once();
  }

  v1 = qword_2803D8608;
  return sub_26AC86148();
}

uint64_t sub_26AC85F94(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_26AC86158();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_26AC8600C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26AC86158();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}